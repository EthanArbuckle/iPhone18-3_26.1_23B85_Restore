@interface NSObject
- (void)tamale_ARImageSensor_swizzled_captureOutput:(id)output willCapturePhotoForResolvedSettings:(id)settings;
@end

@implementation NSObject

- (void)tamale_ARImageSensor_swizzled_captureOutput:(id)output willCapturePhotoForResolvedSettings:(id)settings
{
  v4 = objc_getAssociatedObject(self, self);
  if (v4)
  {
    v7 = v4;
    if (objc_opt_respondsToSelector())
    {
      delegate = [v7 delegate];
      v6 = delegate;
      if (delegate && [delegate conformsToProtocol:&OBJC_PROTOCOL___ARImageSensorDelegate])
      {
        [v6 willCapturePhoto];
      }
    }
  }

  _objc_release_x2();
}

@end