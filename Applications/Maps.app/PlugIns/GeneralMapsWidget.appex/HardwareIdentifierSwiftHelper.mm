@interface HardwareIdentifierSwiftHelper
+ (void)configureGEOServiceTraitsAndClientCapabilitiesHardwareIdentifier;
@end

@implementation HardwareIdentifierSwiftHelper

+ (void)configureGEOServiceTraitsAndClientCapabilitiesHardwareIdentifier
{
  v2 = +[GEOPlatform sharedPlatform];
  hardwareIdentifier = [v2 hardwareIdentifier];

  v3 = +[GEOMapService sharedService];
  [v3 setDefaultTraitsHardwareIdentifier:hardwareIdentifier];

  v4 = +[GEOPlatform sharedPlatform];
  [v4 setClientCapabilitiesHardwareIdentifier:hardwareIdentifier];
}

@end