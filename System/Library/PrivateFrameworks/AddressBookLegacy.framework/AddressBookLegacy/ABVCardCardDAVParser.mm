@interface ABVCardCardDAVParser
- (ABVCardCardDAVParser)initWithData:(id)data importOptions:(unint64_t)options;
- (ABVCardCardDAVParser)initWithData:(id)data watchdogTimer:(id)timer importOptions:(unint64_t)options;
- (BOOL)_handleUnknownTag:(id)tag withValue:(id)value;
- (BOOL)importToGroup:(void *)group;
- (BOOL)importToGroup:(void *)group removeExistingProperties:(BOOL)properties;
- (BOOL)importToPerson:(void *)person;
- (BOOL)importToPerson:(void *)person removeExistingProperties:(BOOL)properties;
- (BOOL)parseUID;
- (void)cleanUpCardState;
- (void)createRecordInSource:(void *)source outRecordType:(unsigned int *)type;
- (void)dealloc;
- (void)noteLackOfValueForImageData;
- (void)noteLackOfValueForProperty:(unsigned int)property;
@end

@implementation ABVCardCardDAVParser

- (ABVCardCardDAVParser)initWithData:(id)data watchdogTimer:(id)timer importOptions:(unint64_t)options
{
  v8.receiver = self;
  v8.super_class = ABVCardCardDAVParser;
  v6 = [(ABVCardParser *)&v8 initWithData:data watchdogTimer:timer];
  if (v6)
  {
    v6->_unknownAttributes = objc_alloc_init(MEMORY[0x1E695DF90]);
    v6->_importOptions = options;
  }

  return v6;
}

- (ABVCardCardDAVParser)initWithData:(id)data importOptions:(unint64_t)options
{
  v7 = [ABVCardWatchdogTimer timerWithTimeProvider:objc_alloc_init(_ABVCardTimeProvider)];

  return [(ABVCardCardDAVParser *)self initWithData:data watchdogTimer:v7 importOptions:options];
}

- (void)dealloc
{
  self->_lastCropRectChecksum = 0;

  self->super._cropRectChecksum = 0;
  v3.receiver = self;
  v3.super_class = ABVCardCardDAVParser;
  [(ABVCardParser *)&v3 dealloc];
}

- (BOOL)parseUID
{
  parseSingleValue = [(ABVCardParser *)self parseSingleValue];
  if (parseSingleValue)
  {
    _valueSetter = [(ABVCardParser *)self _valueSetter];
    [_valueSetter setValue:parseSingleValue forProperty:kABPersonExternalUUIDProperty];
  }

  return parseSingleValue != 0;
}

- (BOOL)_handleUnknownTag:(id)tag withValue:(id)value
{
  if (![tag compare:@"X-ADDRESSBOOKSERVER-KIND" options:1])
  {
    [-[ABVCardParser _valueSetter](self "_valueSetter")];
  }

  v7 = [(NSMutableDictionary *)self->_unknownAttributes objectForKey:tag];
  if (!v7)
  {
    v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
    [(NSMutableDictionary *)self->_unknownAttributes setObject:v7 forKey:tag];
  }

  [v7 addObject:value];
  return 1;
}

- (BOOL)importToPerson:(void *)person removeExistingProperties:(BOOL)properties
{
  if (properties)
  {
    self->_importOptions |= 1uLL;
  }

  return [(ABVCardCardDAVParser *)self importToPerson:person];
}

- (BOOL)importToPerson:(void *)person
{
  v4 = [[ABVCardCardDAVValueSetter alloc] initWithPerson:person options:self->_importOptions];
  v5 = [(ABVCardParser *)self importToValueSetter:v4];
  if ([(NSMutableDictionary *)self->_unknownAttributes count])
  {
    v6 = [objc_alloc(MEMORY[0x1E696ACC8]) initRequiringSecureCoding:1];
    [v6 setOutputFormat:200];
    [v6 encodeObject:self->_unknownAttributes forKey:*MEMORY[0x1E696A508]];
    [v6 finishEncoding];
    encodedData = [v6 encodedData];
    [(ABVCardCardDAVValueSetter *)v4 setValue:encodedData forProperty:kABPersonExternalRepresentationProperty];
  }

  return v5;
}

- (BOOL)importToGroup:(void *)group removeExistingProperties:(BOOL)properties
{
  if (properties)
  {
    self->_importOptions |= 1uLL;
  }

  return [(ABVCardCardDAVParser *)self importToGroup:group];
}

- (BOOL)importToGroup:(void *)group
{
  v4 = [[ABVCardCardDAVValueSetter alloc] initWithGroup:group options:self->_importOptions];
  v5 = [(ABVCardParser *)self importToValueSetter:v4];
  if ([(NSMutableDictionary *)self->_unknownAttributes count])
  {
    v6 = [objc_alloc(MEMORY[0x1E696ACC8]) initRequiringSecureCoding:1];
    [v6 setOutputFormat:200];
    [v6 encodeObject:self->_unknownAttributes forKey:*MEMORY[0x1E696A508]];
    [v6 finishEncoding];
    encodedData = [v6 encodedData];
    [(ABVCardCardDAVValueSetter *)v4 setValue:encodedData forProperty:kABPersonExternalRepresentationProperty];
  }

  return v5;
}

- (void)createRecordInSource:(void *)source outRecordType:(unsigned int *)type
{
  if (source)
  {
    v7 = ABPersonCreateInSource(source);
  }

  else
  {
    v7 = ABPersonCreate();
  }

  v8 = v7;
  v9 = [(ABVCardPersonValueSetter *)[ABVCardCardDAVValueSetter alloc] initWithPerson:v7];
  v10 = [(ABVCardParser *)self importToValueSetter:v9];
  if ([(NSMutableDictionary *)self->_unknownAttributes count])
  {
    v11 = [objc_alloc(MEMORY[0x1E696ACC8]) initRequiringSecureCoding:1];
    [v11 setOutputFormat:200];
    [v11 encodeObject:self->_unknownAttributes forKey:*MEMORY[0x1E696A508]];
    [v11 finishEncoding];
    encodedData = [v11 encodedData];
    [(ABVCardCardDAVValueSetter *)v9 setValue:encodedData forProperty:kABPersonExternalRepresentationProperty];
  }

  if (v10)
  {
    v13 = [(ABVCardCardDAVValueSetter *)v9 copyParsedRecordWithSource:source outRecordType:type];
  }

  else
  {
    v13 = 0;
  }

  if (v8)
  {
    CFRelease(v8);
  }

  return v13;
}

- (void)noteLackOfValueForProperty:(unsigned int)property
{
  if (self->_importOptions)
  {
    return;
  }

  v4 = [(ABVCardValueSetter *)self->super._valueSetter valueForProperty:*&property];
  if (!v4)
  {
    return;
  }

  v5 = v4;
  v6 = CFGetTypeID(v4);
  if (v6 == CFStringGetTypeID())
  {
    Length = CFStringGetLength(v5);
  }

  else if (v6 == CFDictionaryGetTypeID())
  {
    Length = CFDictionaryGetCount(v5);
  }

  else if (v6 == CFArrayGetTypeID())
  {
    Length = CFArrayGetCount(v5);
  }

  else
  {
    if (v6 != CFSetGetTypeID())
    {
      if (v6 == ABMultiValueGetTypeID() && ABMultiValueGetCount(v5) < 1)
      {
        return;
      }

      goto LABEL_12;
    }

    Length = CFSetGetCount(v5);
  }

  if (Length <= 0)
  {
    return;
  }

LABEL_12:

  [(ABVCardCardDAVParser *)self setLocalRecordHasAdditionalProperties:1];
}

- (void)noteLackOfValueForImageData
{
  valueSetter = self->super._valueSetter;
  if (self->_importOptions)
  {

    [(ABVCardValueSetter *)valueSetter setImageData:0];
  }

  else if ([(ABVCardValueSetter *)valueSetter imageData])
  {

    [(ABVCardCardDAVParser *)self setLocalRecordHasAdditionalProperties:1];
  }
}

- (void)cleanUpCardState
{
  self->_lastCropRectX = self->super._cropRectX;
  self->_lastCropRectY = self->super._cropRectY;
  self->_lastCropRectWidth = self->super._cropRectWidth;
  self->_lastCropRectHeight = self->super._cropRectHeight;

  self->_lastCropRectChecksum = self->super._cropRectChecksum;
  v3.receiver = self;
  v3.super_class = ABVCardCardDAVParser;
  [(ABVCardParser *)&v3 cleanUpCardState];
}

@end