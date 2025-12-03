@interface NSString
+ (id)at_deviceIconNameForIdentifier:(id)identifier;
+ (id)getIconSuffix;
+ (id)sc_deviceIconNameForIdentifier:(id)identifier;
+ (id)sc_tvIconNameForDevice:(id)device isHome:(BOOL)home;
@end

@implementation NSString

+ (id)at_deviceIconNameForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = +[NSString getIconSuffix];
  v5 = [NSString stringWithFormat:@"%@%@", identifierCopy, v4];

  return v5;
}

+ (id)sc_deviceIconNameForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = +[NSString getIconSuffix];
  v5 = [NSString stringWithFormat:@"SCATIcon_%@%@", identifierCopy, v4];

  return v5;
}

+ (id)sc_tvIconNameForDevice:(id)device isHome:(BOOL)home
{
  if (home)
  {
    v6 = @"SCATIcon_device_home_tv";
  }

  else
  {
    v6 = [NSString sc_deviceIconNameForIdentifier:device, v4];
  }

  return v6;
}

+ (id)getIconSuffix
{
  if (AXDeviceHasJindo())
  {
    v2 = @"_DI";
  }

  else if (AXDeviceHasHomeButton())
  {
    v2 = &stru_1001DB590;
  }

  else if (AXDeviceIsPad())
  {
    v2 = @"_NHB_IPAD";
  }

  else
  {
    v2 = @"_NHB";
  }

  return v2;
}

@end