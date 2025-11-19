@interface COSMLCaptureDisclosureController
+ (unint64_t)disclosureState;
+ (void)setUserAcceptedDisclosure:(BOOL)a3;
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

+ (void)setUserAcceptedDisclosure:(BOOL)a3
{
  v3 = [NSNumber numberWithInt:!a3];

  CFPreferencesSetAppValue(@"COSMLCaptureDenied", v3, @"com.apple.Bridge");
}

@end