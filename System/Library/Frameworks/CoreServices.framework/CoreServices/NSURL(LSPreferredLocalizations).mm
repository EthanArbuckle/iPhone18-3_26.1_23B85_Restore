@interface NSURL(LSPreferredLocalizations)
- (id)ls_preferredLocalizations;
- (void)ls_setPreferredLocalizations:()LSPreferredLocalizations;
@end

@implementation NSURL(LSPreferredLocalizations)

- (id)ls_preferredLocalizations
{
  if ([__LSDefaultsGetSharedInstance() isServer])
  {
    v4 = 0;
    [a1 getResourceValue:&v4 forKey:@"com.apple.launchservices.preferredLocalizations" error:0];
    v2 = v4;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (void)ls_setPreferredLocalizations:()LSPreferredLocalizations
{
  v4 = a3;
  if ([__LSDefaultsGetSharedInstance() isServer])
  {
    [a1 setTemporaryResourceValue:v4 forKey:@"com.apple.launchservices.preferredLocalizations"];
  }
}

@end