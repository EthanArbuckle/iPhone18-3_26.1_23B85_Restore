@interface ABVCardCardDAVParser
- (ABVCardCardDAVParser)initWithData:(id)a3 importOptions:(unint64_t)a4;
- (ABVCardCardDAVParser)initWithData:(id)a3 watchdogTimer:(id)a4 importOptions:(unint64_t)a5;
- (BOOL)_handleUnknownTag:(id)a3 withValue:(id)a4;
- (BOOL)importToGroup:(void *)a3;
- (BOOL)importToGroup:(void *)a3 removeExistingProperties:(BOOL)a4;
- (BOOL)importToPerson:(void *)a3;
- (BOOL)importToPerson:(void *)a3 removeExistingProperties:(BOOL)a4;
- (BOOL)parseUID;
- (void)cleanUpCardState;
- (void)createRecordInSource:(void *)a3 outRecordType:(unsigned int *)a4;
- (void)dealloc;
- (void)noteLackOfValueForImageData;
- (void)noteLackOfValueForProperty:(unsigned int)a3;
@end

@implementation ABVCardCardDAVParser

- (ABVCardCardDAVParser)initWithData:(id)a3 watchdogTimer:(id)a4 importOptions:(unint64_t)a5
{
  v8.receiver = self;
  v8.super_class = ABVCardCardDAVParser;
  v6 = [(ABVCardParser *)&v8 initWithData:a3 watchdogTimer:a4];
  if (v6)
  {
    v6->_unknownAttributes = objc_alloc_init(MEMORY[0x1E695DF90]);
    v6->_importOptions = a5;
  }

  return v6;
}

- (ABVCardCardDAVParser)initWithData:(id)a3 importOptions:(unint64_t)a4
{
  v7 = [ABVCardWatchdogTimer timerWithTimeProvider:objc_alloc_init(_ABVCardTimeProvider)];

  return [(ABVCardCardDAVParser *)self initWithData:a3 watchdogTimer:v7 importOptions:a4];
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
  v3 = [(ABVCardParser *)self parseSingleValue];
  if (v3)
  {
    v4 = [(ABVCardParser *)self _valueSetter];
    [v4 setValue:v3 forProperty:kABPersonExternalUUIDProperty];
  }

  return v3 != 0;
}

- (BOOL)_handleUnknownTag:(id)a3 withValue:(id)a4
{
  if (![a3 compare:@"X-ADDRESSBOOKSERVER-KIND" options:1])
  {
    [-[ABVCardParser _valueSetter](self "_valueSetter")];
  }

  v7 = [(NSMutableDictionary *)self->_unknownAttributes objectForKey:a3];
  if (!v7)
  {
    v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
    [(NSMutableDictionary *)self->_unknownAttributes setObject:v7 forKey:a3];
  }

  [v7 addObject:a4];
  return 1;
}

- (BOOL)importToPerson:(void *)a3 removeExistingProperties:(BOOL)a4
{
  if (a4)
  {
    self->_importOptions |= 1uLL;
  }

  return [(ABVCardCardDAVParser *)self importToPerson:a3];
}

- (BOOL)importToPerson:(void *)a3
{
  v4 = [[ABVCardCardDAVValueSetter alloc] initWithPerson:a3 options:self->_importOptions];
  v5 = [(ABVCardParser *)self importToValueSetter:v4];
  if ([(NSMutableDictionary *)self->_unknownAttributes count])
  {
    v6 = [objc_alloc(MEMORY[0x1E696ACC8]) initRequiringSecureCoding:1];
    [v6 setOutputFormat:200];
    [v6 encodeObject:self->_unknownAttributes forKey:*MEMORY[0x1E696A508]];
    [v6 finishEncoding];
    v7 = [v6 encodedData];
    [(ABVCardCardDAVValueSetter *)v4 setValue:v7 forProperty:kABPersonExternalRepresentationProperty];
  }

  return v5;
}

- (BOOL)importToGroup:(void *)a3 removeExistingProperties:(BOOL)a4
{
  if (a4)
  {
    self->_importOptions |= 1uLL;
  }

  return [(ABVCardCardDAVParser *)self importToGroup:a3];
}

- (BOOL)importToGroup:(void *)a3
{
  v4 = [[ABVCardCardDAVValueSetter alloc] initWithGroup:a3 options:self->_importOptions];
  v5 = [(ABVCardParser *)self importToValueSetter:v4];
  if ([(NSMutableDictionary *)self->_unknownAttributes count])
  {
    v6 = [objc_alloc(MEMORY[0x1E696ACC8]) initRequiringSecureCoding:1];
    [v6 setOutputFormat:200];
    [v6 encodeObject:self->_unknownAttributes forKey:*MEMORY[0x1E696A508]];
    [v6 finishEncoding];
    v7 = [v6 encodedData];
    [(ABVCardCardDAVValueSetter *)v4 setValue:v7 forProperty:kABPersonExternalRepresentationProperty];
  }

  return v5;
}

- (void)createRecordInSource:(void *)a3 outRecordType:(unsigned int *)a4
{
  if (a3)
  {
    v7 = ABPersonCreateInSource(a3);
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
    v12 = [v11 encodedData];
    [(ABVCardCardDAVValueSetter *)v9 setValue:v12 forProperty:kABPersonExternalRepresentationProperty];
  }

  if (v10)
  {
    v13 = [(ABVCardCardDAVValueSetter *)v9 copyParsedRecordWithSource:a3 outRecordType:a4];
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

- (void)noteLackOfValueForProperty:(unsigned int)a3
{
  if (self->_importOptions)
  {
    return;
  }

  v4 = [(ABVCardValueSetter *)self->super._valueSetter valueForProperty:*&a3];
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