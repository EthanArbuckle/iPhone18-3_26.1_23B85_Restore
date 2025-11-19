@interface UIView
+ (id)_srVideoOverlayButtonWithStyle:(int64_t)a3;
@end

@implementation UIView

+ (id)_srVideoOverlayButtonWithStyle:(int64_t)a3
{
  if (a3 == 2 || !a3 && (+[UIDevice currentDevice](UIDevice, "currentDevice"), v4 = objc_claimAutoreleasedReturnValue(), v5 = [v4 _graphicsQuality], v4, v5 == 10))
  {
    v6 = off_100018270;
  }

  else
  {
    v6 = &off_100018278;
  }

  v7 = [objc_alloc(*v6) initWithStyle:a3];

  return v7;
}

@end