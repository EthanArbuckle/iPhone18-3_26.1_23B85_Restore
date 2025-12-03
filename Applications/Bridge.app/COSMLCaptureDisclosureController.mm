@interface COSMLCaptureDisclosureController
+ (unint64_t)disclosureState;
+ (void)setUserAcceptedDisclosure:(BOOL)disclosure;
@end

@implementation COSMLCaptureDisclosureController

+ (unint64_t)disclosureState
{
  keyExistsAndHasValidFormat = 0;
  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"COSMLCaptureDenied", @"com.apple.Bridge", &keyExistsAndHasValidFormat);
  v3 = 1;
  if (AppBooleanValue)
  {
    v3 = 2;
  }

  if (keyExistsAndHasValidFormat)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

+ (void)setUserAcceptedDisclosure:(BOOL)disclosure
{
  v3 = [NSNumber numberWithInt:!disclosure];

  CFPreferencesSetAppValue(@"COSMLCaptureDenied", v3, @"com.apple.Bridge");
}

@end