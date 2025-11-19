@interface UIView(NCScreenCaptureAdditions)
- (void)nc_setScreenCaptureProhibited:()NCScreenCaptureAdditions;
@end

@implementation UIView(NCScreenCaptureAdditions)

- (void)nc_setScreenCaptureProhibited:()NCScreenCaptureAdditions
{
  v6 = [a1 layer];
  v4 = [v6 disableUpdateMask] & 0xFFFFFFEDLL;
  if (a3)
  {
    v5 = 18;
  }

  else
  {
    v5 = 0;
  }

  [v6 setDisableUpdateMask:v4 | v5];
}

@end