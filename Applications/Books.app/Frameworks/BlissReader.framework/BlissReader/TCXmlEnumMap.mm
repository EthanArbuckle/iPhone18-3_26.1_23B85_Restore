@interface TCXmlEnumMap
- (BOOL)readFromNode:(_xmlNode *)node ns:(const char *)ns name:(const char *)name value:(int64_t *)value;
- (TCXmlEnumMap)initWithDescriptions:(const TCXmlEnumDescription *)descriptions;
- (int64_t)readFromNode:(_xmlNode *)node ns:(const char *)ns name:(const char *)name;
- (int64_t)readFromNode:(_xmlNode *)node ns:(const char *)ns name:(const char *)name def:(int64_t)def;
- (void)dealloc;
@end

@implementation TCXmlEnumMap

- (TCXmlEnumMap)initWithDescriptions:(const TCXmlEnumDescription *)descriptions
{
  self->mNameToValueMap = CFDictionaryCreateMutable(0, 10, &TCXmlStringKeyCallBacks, 0);
  for (i = descriptions->var1; i; ++descriptions)
  {
    CFDictionaryAddValue(self->mNameToValueMap, i, descriptions->var0);
    i = descriptions[1].var1;
  }

  return self;
}

- (void)dealloc
{
  CFRelease(self->mNameToValueMap);
  v3.receiver = self;
  v3.super_class = TCXmlEnumMap;
  [(TCXmlEnumMap *)&v3 dealloc];
}

- (BOOL)readFromNode:(_xmlNode *)node ns:(const char *)ns name:(const char *)name value:(int64_t *)value
{
  NsProp = xmlGetNsProp(node, name, ns);
  if (NsProp)
  {
    value = 0;
    if (CFDictionaryGetValueIfPresent(self->mNameToValueMap, NsProp, &value))
    {
      *value = value;
    }

    else
    {
      free(NsProp);
      [NSException raise:@"TCXmlException" format:@"Attribute %s has bad value: %s", name, NsProp];
    }

    free(NsProp);
  }

  return NsProp != 0;
}

- (int64_t)readFromNode:(_xmlNode *)node ns:(const char *)ns name:(const char *)name
{
  v7 = 0;
  if (![(TCXmlEnumMap *)self readFromNode:node ns:ns name:name value:&v7])
  {
    [NSException raise:@"TCXmlException" format:@"Couldn't find attribute: %s", name];
  }

  return v7;
}

- (int64_t)readFromNode:(_xmlNode *)node ns:(const char *)ns name:(const char *)name def:(int64_t)def
{
  v8 = 0;
  if ([(TCXmlEnumMap *)self readFromNode:node ns:ns name:name value:&v8])
  {
    return v8;
  }

  else
  {
    return def;
  }
}

@end