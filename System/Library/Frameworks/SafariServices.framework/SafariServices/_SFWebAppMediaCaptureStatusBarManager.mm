@interface _SFWebAppMediaCaptureStatusBarManager
+ (_SFWebAppMediaCaptureStatusBarManager)sharedManager;
- (id)statusString;
- (unint64_t)overrideStyleForAudioOnly:(BOOL)only;
@end

@implementation _SFWebAppMediaCaptureStatusBarManager

+ (_SFWebAppMediaCaptureStatusBarManager)sharedManager
{
  if (sharedManager_onceToken != -1)
  {
    +[_SFWebAppMediaCaptureStatusBarManager sharedManager];
  }

  v3 = sharedManager_sharedInstance;

  return v3;
}

- (id)statusString
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = _WBSLocalizedString();
  simplifiedURLString = [(SFMediaCaptureStatusBarManager *)self simplifiedURLString];
  v6 = [v3 stringWithFormat:v4, simplifiedURLString];

  return v6;
}

- (unint64_t)overrideStyleForAudioOnly:(BOOL)only
{
  if (only)
  {
    return 0x4000000;
  }

  else
  {
    return 0x2000000;
  }
}

@end