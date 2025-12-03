@interface PFXElementReaderInfo
- (PFXElementReaderInfo)initWithElementName:(const char *)name elementNamespace:(const char *)namespace mappingClass:(Class)class;
@end

@implementation PFXElementReaderInfo

- (PFXElementReaderInfo)initWithElementName:(const char *)name elementNamespace:(const char *)namespace mappingClass:(Class)class
{
  if (name)
  {
    v9.receiver = self;
    v9.super_class = PFXElementReaderInfo;
    result = [(PFXElementReaderInfo *)&v9 init];
    if (result)
    {
      result->mElementName = name;
      result->mElementNamespace = namespace;
      result->mMappingClass = class;
    }
  }

  else
  {

    return 0;
  }

  return result;
}

@end