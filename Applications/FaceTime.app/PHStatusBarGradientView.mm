@interface PHStatusBarGradientView
- (PHStatusBarGradientView)initWithFrame:(CGRect)frame;
- (void)drawRect:(CGRect)rect;
@end

@implementation PHStatusBarGradientView

- (PHStatusBarGradientView)initWithFrame:(CGRect)frame
{
  v7.receiver = self;
  v7.super_class = PHStatusBarGradientView;
  v3 = [(PHStatusBarGradientView *)&v7 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(PHStatusBarGradientView *)v3 setUserInteractionEnabled:0];
    v5 = +[UIColor clearColor];
    [(PHStatusBarGradientView *)v4 setBackgroundColor:v5];
  }

  return v4;
}

- (void)drawRect:(CGRect)rect
{
  CurrentContext = UIGraphicsGetCurrentContext();
  v7 = xmmword_1000D6C20;
  v8 = *algn_1000D6C30;
  DeviceGray = CGColorSpaceCreateDeviceGray();
  v6 = CGGradientCreateWithColorComponents(DeviceGray, &v7, 0, 2uLL);
  [(PHStatusBarGradientView *)self bounds:v7];
  v9.x = 0.0;
  v9.y = 0.0;
  v10.x = 0.0;
  CGContextDrawLinearGradient(CurrentContext, v6, v9, v10, 0);
  CFRelease(DeviceGray);
  CFRelease(v6);
}

@end