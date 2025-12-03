@interface SAUIAppPunchOut
- (id)_convertedPunchout;
@end

@implementation SAUIAppPunchOut

- (id)_convertedPunchout
{
  v3 = objc_alloc_init(SFPunchout);
  punchOutName = [(SAUIAppPunchOut *)self punchOutName];
  [v3 setName:punchOutName];

  punchOutUri = [(SAUIAppPunchOut *)self punchOutUri];
  v10 = punchOutUri;
  v6 = [NSArray arrayWithObjects:&v10 count:1];
  [v3 setUrls:v6];

  bundleId = [(SAUIAppPunchOut *)self bundleId];
  if (bundleId)
  {
    [v3 setBundleIdentifier:bundleId];
  }

  else
  {
    v8 = +[SiriUIUtilities defaultBrowserBundleIdentifier];
    [v3 setBundleIdentifier:v8];
  }

  return v3;
}

@end