@interface SAUIAppPunchOut
- (id)_convertedPunchout;
@end

@implementation SAUIAppPunchOut

- (id)_convertedPunchout
{
  v3 = objc_alloc_init(SFPunchout);
  v4 = [(SAUIAppPunchOut *)self punchOutName];
  [v3 setName:v4];

  v5 = [(SAUIAppPunchOut *)self punchOutUri];
  v10 = v5;
  v6 = [NSArray arrayWithObjects:&v10 count:1];
  [v3 setUrls:v6];

  v7 = [(SAUIAppPunchOut *)self bundleId];
  if (v7)
  {
    [v3 setBundleIdentifier:v7];
  }

  else
  {
    v8 = +[SiriUIUtilities defaultBrowserBundleIdentifier];
    [v3 setBundleIdentifier:v8];
  }

  return v3;
}

@end