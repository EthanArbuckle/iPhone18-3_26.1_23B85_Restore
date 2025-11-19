@interface LSApplicationWorkspace
+ (void)crl_openICloudPreferencePane;
+ (void)crl_openSoftwareUpdatePane;
@end

@implementation LSApplicationWorkspace

+ (void)crl_openICloudPreferencePane
{
  v3 = [NSURL URLWithString:@"prefs:root=APPLE_ACCOUNT&path=ICLOUD_SERVICE"];
  v2 = +[LSApplicationWorkspace defaultWorkspace];
  [v2 openSensitiveURL:v3 withOptions:0];
}

+ (void)crl_openSoftwareUpdatePane
{
  v3 = [NSURL URLWithString:@"prefs:root=General&path=SOFTWARE_UPDATE_LINK"];
  v2 = +[LSApplicationWorkspace defaultWorkspace];
  [v2 openSensitiveURL:v3 withOptions:0];
}

@end