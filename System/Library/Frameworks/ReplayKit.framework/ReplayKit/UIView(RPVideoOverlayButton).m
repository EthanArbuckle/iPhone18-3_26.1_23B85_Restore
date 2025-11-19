@interface UIView(RPVideoOverlayButton)
+ (id)_srVideoOverlayButtonWithStyle:()RPVideoOverlayButton;
@end

@implementation UIView(RPVideoOverlayButton)

+ (id)_srVideoOverlayButtonWithStyle:()RPVideoOverlayButton
{
  if (a3 == 2 || !a3 && ([MEMORY[0x277D75418] currentDevice], v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "_graphicsQuality"), v4, v5 == 10))
  {
    v6 = off_278B61738;
  }

  else
  {
    v6 = off_278B61740;
  }

  v7 = [objc_alloc(*v6) initWithStyle:a3];

  return v7;
}

@end