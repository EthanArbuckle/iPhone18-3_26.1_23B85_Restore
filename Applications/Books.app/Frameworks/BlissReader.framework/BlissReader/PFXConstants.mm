@interface PFXConstants
+ (void)initialize;
@end

@implementation PFXConstants

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    objc_opt_class();
    PFXPropValApplePubDoubleParen = [[NSString alloc] initWithFormat:@"-ibooks-%s", "double-paren"];
    PFXPropValApplePubRightParen = [[NSString alloc] initWithFormat:@"-ibooks-%s", "right-paren"];
    v2 = [NSString alloc];
    PFXCommonEpubPackageStringNS = [v2 initWithXmlString:PFXCommonEpubOpfNS[0]];
    v3 = [NSString alloc];
    PFXCommonDublinCoreMetadataStringNS = [v3 initWithXmlString:PFXCommonDublinCoreMetadataNS[0]];
    v4 = [NSString alloc];
    PFXCommonEpubNavigationStringNS = [v4 initWithXmlString:PFXCommonEpubNavigationNS[0]];
    v5 = [NSString alloc];
    PFXCommonApplePubStringNS = [v5 initWithXmlString:PFXCommonApplePubNS[0]];
    v6 = [NSString alloc];
    PFXCommonOEBPSPackageMediaType = [v6 initWithXmlString:PFXCommonOEBPSPackageMediaTypeXmlChars];
  }
}

@end