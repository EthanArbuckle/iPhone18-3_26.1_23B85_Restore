@interface NSString
+ (id)at_deviceIconNameForIdentifier:(id)a3;
+ (id)getIconSuffix;
+ (id)sc_deviceIconNameForIdentifier:(id)a3;
+ (id)sc_tvIconNameForDevice:(id)a3 isHome:(BOOL)a4;
@end

@implementation NSString

+ (id)at_deviceIconNameForIdentifier:(id)a3
{
  v3 = a3;
  v4 = +[NSString getIconSuffix];
  v5 = [NSString stringWithFormat:@"%@%@", v3, v4];

  return v5;
}

+ (id)sc_deviceIconNameForIdentifier:(id)a3
{
  v3 = a3;
  v4 = +[NSString getIconSuffix];
  v5 = [NSString stringWithFormat:@"SCATIcon_%@%@", v3, v4];

  return v5;
}

+ (id)sc_tvIconNameForDevice:(id)a3 isHome:(BOOL)a4
{
  if (a4)
  {
    v6 = @"SCATIcon_device_home_tv";
  }

  else
  {
    v6 = [NSString sc_deviceIconNameForIdentifier:a3, v4];
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