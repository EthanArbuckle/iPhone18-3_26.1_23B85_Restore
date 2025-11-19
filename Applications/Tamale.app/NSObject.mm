@interface NSObject
- (void)tamale_ARImageSensor_swizzled_captureOutput:(id)a3 willCapturePhotoForResolvedSettings:(id)a4;
@end

@implementation NSObject

- (void)tamale_ARImageSensor_swizzled_captureOutput:(id)a3 willCapturePhotoForResolvedSettings:(id)a4
{
  v4 = objc_getAssociatedObject(self, self);
  if (v4)
  {
    v7 = v4;
    if (objc_opt_respondsToSelector())
    {
      v5 = [v7 delegate];
      v6 = v5;
      if (v5 && [v5 conformsToProtocol:&OBJC_PROTOCOL___ARImageSensorDelegate])
      {
        [v6 willCapturePhoto];
      }
    }
  }

  _objc_release_x2();
}

@end