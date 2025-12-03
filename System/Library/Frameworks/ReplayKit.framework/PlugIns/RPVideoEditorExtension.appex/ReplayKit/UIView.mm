@interface UIView
+ (id)_srVideoOverlayButtonWithStyle:(int64_t)style;
@end

@implementation UIView

+ (id)_srVideoOverlayButtonWithStyle:(int64_t)style
{
  if (style == 2 || !style && (+[UIDevice currentDevice](UIDevice, "currentDevice"), v4 = objc_claimAutoreleasedReturnValue(), v5 = [v4 _graphicsQuality], v4, v5 == 10))
  {
    v6 = off_100018270;
  }

  else
  {
    v6 = &off_100018278;
  }

  v7 = [objc_alloc(*v6) initWithStyle:style];

  return v7;
}

@end