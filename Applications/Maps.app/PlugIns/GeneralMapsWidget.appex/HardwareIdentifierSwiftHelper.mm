@interface HardwareIdentifierSwiftHelper
+ (void)configureGEOServiceTraitsAndClientCapabilitiesHardwareIdentifier;
@end

@implementation HardwareIdentifierSwiftHelper

+ (void)configureGEOServiceTraitsAndClientCapabilitiesHardwareIdentifier
{
  v2 = +[GEOPlatform sharedPlatform];
  v5 = [v2 hardwareIdentifier];

  v3 = +[GEOMapService sharedService];
  [v3 setDefaultTraitsHardwareIdentifier:v5];

  v4 = +[GEOPlatform sharedPlatform];
  [v4 setClientCapabilitiesHardwareIdentifier:v5];
}

@end