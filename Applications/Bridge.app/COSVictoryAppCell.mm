@interface COSVictoryAppCell
- (__CFString)partnerAppBundleIdentifier;
- (id)localizedAppTitle;
- (id)localizedPartnerTitle;
- (id)partnerAppStoreIdentifier;
@end

@implementation COSVictoryAppCell

- (id)localizedAppTitle
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"VICTORY_APP_NAME" value:&stru_10026E598 table:@"VancouverLocalizable-victory"];

  return v3;
}

- (id)localizedPartnerTitle
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"VICTORY_COMPANY_NAME" value:&stru_10026E598 table:@"VancouverLocalizable-victory"];

  return v3;
}

- (id)partnerAppStoreIdentifier
{
  v2 = sub_1000E63CC();

  return [NSNumber numberWithInteger:v2];
}

- (__CFString)partnerAppBundleIdentifier
{
  if (PBIsInternalInstall())
  {
    v0 = +[NSUserDefaults standardUserDefaults];
    v1 = [v0 stringForKey:@"BundleID"];

    if (v1)
    {
      v2 = v1;
      v3 = pbb_bridge_log();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        v5 = 138412290;
        v6 = v2;
        _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "(NRC) Overriding bundleID %@", &v5, 0xCu);
      }
    }

    else
    {
      v2 = @"com.nike.nikeplus-gps";
    }
  }

  else
  {
    v2 = @"com.nike.nikeplus-gps";
  }

  return v2;
}

@end