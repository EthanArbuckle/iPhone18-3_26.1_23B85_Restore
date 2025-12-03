@interface UIView(NCScreenCaptureAdditions)
- (void)nc_setScreenCaptureProhibited:()NCScreenCaptureAdditions;
@end

@implementation UIView(NCScreenCaptureAdditions)

- (void)nc_setScreenCaptureProhibited:()NCScreenCaptureAdditions
{
  layer = [self layer];
  v4 = [layer disableUpdateMask] & 0xFFFFFFEDLL;
  if (a3)
  {
    v5 = 18;
  }

  else
  {
    v5 = 0;
  }

  [layer setDisableUpdateMask:v4 | v5];
}

@end