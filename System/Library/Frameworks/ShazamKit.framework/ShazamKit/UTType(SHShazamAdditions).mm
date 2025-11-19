@interface UTType(SHShazamAdditions)
+ (id)SHCustomCatalogContentType;
+ (id)SHSignatureContentType;
@end

@implementation UTType(SHShazamAdditions)

+ (id)SHSignatureContentType
{
  if (SHSignatureContentType_onceToken != -1)
  {
    +[UTType(SHShazamAdditions) SHSignatureContentType];
  }

  v1 = SHSignatureContentType_signatureType;

  return v1;
}

+ (id)SHCustomCatalogContentType
{
  if (SHCustomCatalogContentType_onceToken != -1)
  {
    +[UTType(SHShazamAdditions) SHCustomCatalogContentType];
  }

  v1 = SHCustomCatalogContentType_catalogType;

  return v1;
}

@end