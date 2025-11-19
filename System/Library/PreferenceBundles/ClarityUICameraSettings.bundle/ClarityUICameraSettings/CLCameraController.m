@interface CLCameraController
- (id)isCapturePhotosEnabled:(id)a3;
- (id)isCaptureSelfieEnabled:(id)a3;
- (id)isCaptureSelfieVideoEnabled:(id)a3;
- (id)isCaptureVideosEnabled:(id)a3;
- (id)specifiers;
- (void)setCapturePhotosEnabled:(id)a3 specifier:(id)a4;
- (void)setCaptureSelfieEnabled:(id)a3 specifier:(id)a4;
- (void)setCaptureSelfieVideoEnabled:(id)a3 specifier:(id)a4;
- (void)setCaptureVideosEnabled:(id)a3 specifier:(id)a4;
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

- (id)isCapturePhotosEnabled:(id)a3
{
  v3 = +[CLFCameraSettings sharedInstance];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 allowPhotoCapture]);

  return v4;
}

- (void)setCapturePhotosEnabled:(id)a3 specifier:(id)a4
{
  v4 = [a3 BOOLValue];
  v5 = +[CLFCameraSettings sharedInstance];
  [v5 setAllowPhotoCapture:v4];
}

- (id)isCaptureVideosEnabled:(id)a3
{
  v3 = +[CLFCameraSettings sharedInstance];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 allowVideoCapture]);

  return v4;
}

- (void)setCaptureVideosEnabled:(id)a3 specifier:(id)a4
{
  v4 = [a3 BOOLValue];
  v5 = +[CLFCameraSettings sharedInstance];
  [v5 setAllowVideoCapture:v4];
}

- (id)isCaptureSelfieEnabled:(id)a3
{
  v3 = +[CLFCameraSettings sharedInstance];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 allowSelfieCapture]);

  return v4;
}

- (void)setCaptureSelfieEnabled:(id)a3 specifier:(id)a4
{
  v4 = [a3 BOOLValue];
  v5 = +[CLFCameraSettings sharedInstance];
  [v5 setAllowSelfieCapture:v4];
}

- (id)isCaptureSelfieVideoEnabled:(id)a3
{
  v3 = +[CLFCameraSettings sharedInstance];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 allowSelfieVideoCapture]);

  return v4;
}

- (void)setCaptureSelfieVideoEnabled:(id)a3 specifier:(id)a4
{
  v4 = [a3 BOOLValue];
  v5 = +[CLFCameraSettings sharedInstance];
  [v5 setAllowSelfieVideoCapture:v4];
}

@end