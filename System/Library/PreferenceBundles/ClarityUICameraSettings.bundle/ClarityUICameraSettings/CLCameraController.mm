@interface CLCameraController
- (id)isCapturePhotosEnabled:(id)enabled;
- (id)isCaptureSelfieEnabled:(id)enabled;
- (id)isCaptureSelfieVideoEnabled:(id)enabled;
- (id)isCaptureVideosEnabled:(id)enabled;
- (id)specifiers;
- (void)setCapturePhotosEnabled:(id)enabled specifier:(id)specifier;
- (void)setCaptureSelfieEnabled:(id)enabled specifier:(id)specifier;
- (void)setCaptureSelfieVideoEnabled:(id)enabled specifier:(id)specifier;
- (void)setCaptureVideosEnabled:(id)enabled specifier:(id)specifier;
@end

@implementation CLCameraController

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    v5 = [(CLCameraController *)self loadSpecifiersFromPlistName:@"CLCameraController" target:self];
    v6 = [v5 copy];
    v7 = *&self->PSListController_opaque[v3];
    *&self->PSListController_opaque[v3] = v6;

    v4 = *&self->PSListController_opaque[v3];
  }

  return v4;
}

- (id)isCapturePhotosEnabled:(id)enabled
{
  v3 = +[CLFCameraSettings sharedInstance];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 allowPhotoCapture]);

  return v4;
}

- (void)setCapturePhotosEnabled:(id)enabled specifier:(id)specifier
{
  bOOLValue = [enabled BOOLValue];
  v5 = +[CLFCameraSettings sharedInstance];
  [v5 setAllowPhotoCapture:bOOLValue];
}

- (id)isCaptureVideosEnabled:(id)enabled
{
  v3 = +[CLFCameraSettings sharedInstance];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 allowVideoCapture]);

  return v4;
}

- (void)setCaptureVideosEnabled:(id)enabled specifier:(id)specifier
{
  bOOLValue = [enabled BOOLValue];
  v5 = +[CLFCameraSettings sharedInstance];
  [v5 setAllowVideoCapture:bOOLValue];
}

- (id)isCaptureSelfieEnabled:(id)enabled
{
  v3 = +[CLFCameraSettings sharedInstance];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 allowSelfieCapture]);

  return v4;
}

- (void)setCaptureSelfieEnabled:(id)enabled specifier:(id)specifier
{
  bOOLValue = [enabled BOOLValue];
  v5 = +[CLFCameraSettings sharedInstance];
  [v5 setAllowSelfieCapture:bOOLValue];
}

- (id)isCaptureSelfieVideoEnabled:(id)enabled
{
  v3 = +[CLFCameraSettings sharedInstance];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 allowSelfieVideoCapture]);

  return v4;
}

- (void)setCaptureSelfieVideoEnabled:(id)enabled specifier:(id)specifier
{
  bOOLValue = [enabled BOOLValue];
  v5 = +[CLFCameraSettings sharedInstance];
  [v5 setAllowSelfieVideoCapture:bOOLValue];
}

@end