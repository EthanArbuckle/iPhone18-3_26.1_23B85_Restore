@interface PFXElementReaderInfo
- (PFXElementReaderInfo)initWithElementName:(const char *)a3 elementNamespace:(const char *)a4 mappingClass:(Class)a5;
@end

@implementation PFXElementReaderInfo

- (PFXElementReaderInfo)initWithElementName:(const char *)a3 elementNamespace:(const char *)a4 mappingClass:(Class)a5
{
  if (a3)
  {
    v9.receiver = self;
    v9.super_class = PFXElementReaderInfo;
    result = [(PFXElementReaderInfo *)&v9 init];
    if (result)
    {
      result->mElementName = a3;
      result->mElementNamespace = a4;
      result->mMappingClass = a5;
    }
  }

  else
  {

    return 0;
  }

  return result;
}

@end