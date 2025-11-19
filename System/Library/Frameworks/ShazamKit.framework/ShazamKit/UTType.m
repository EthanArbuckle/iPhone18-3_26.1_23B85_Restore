@interface UTType
@end

@implementation UTType

void __51__UTType_SHShazamAdditions__SHSignatureContentType__block_invoke()
{
  v0 = [MEMORY[0x277CE1CB8] typeWithIdentifier:@"com.apple.shazamsignature"];
  v1 = SHSignatureContentType_signatureType;
  SHSignatureContentType_signatureType = v0;
}

void __55__UTType_SHShazamAdditions__SHCustomCatalogContentType__block_invoke()
{
  v0 = [MEMORY[0x277CE1CB8] typeWithIdentifier:@"com.apple.shazamcatalog"];
  v1 = SHCustomCatalogContentType_catalogType;
  SHCustomCatalogContentType_catalogType = v0;
}

@end