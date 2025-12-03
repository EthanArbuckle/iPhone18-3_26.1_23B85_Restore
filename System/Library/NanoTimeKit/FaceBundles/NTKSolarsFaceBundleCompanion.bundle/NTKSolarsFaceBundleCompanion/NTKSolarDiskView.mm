@interface NTKSolarDiskView
- (NTKSolarDiskView)initWithSize:(double)size forDevice:(id)device;
- (void)layoutSubviews;
- (void)setCenter:(CGPoint)center;
@end

@implementation NTKSolarDiskView

- (NTKSolarDiskView)initWithSize:(double)size forDevice:(id)device
{
  deviceCopy = device;
  v42.receiver = self;
  v42.super_class = NTKSolarDiskView;
  v7 = [(NTKSolarDiskView *)&v42 initWithFrame:0.0, 0.0, size, size];
  v8 = v7;
  if (v7)
  {
    layer = [(NTKSolarDiskView *)v7 layer];
    [layer setAllowsGroupBlending:0];

    layer2 = [(NTKSolarDiskView *)v8 layer];
    [layer2 setAllowsGroupOpacity:0];

    [(NTKSolarDiskView *)v8 setDevice:deviceCopy];
    [(NTKSolarDiskView *)v8 frame];
    v12 = v11;
    v14 = v13;
    [deviceCopy screenScale];
    v16 = v15;
    v43.width = v12;
    v43.height = v14;
    UIGraphicsBeginImageContextWithOptions(v43, 0, v16);
    CurrentContext = UIGraphicsGetCurrentContext();
    v18 = +[UIColor whiteColor];
    [v18 setFill];

    v19 = size * 0.243243243;
    v20 = +[UIColor whiteColor];
    cGColor = [v20 CGColor];
    v44.width = CGSizeZero.width;
    v44.height = CGSizeZero.height;
    CGContextSetShadowWithColor(CurrentContext, v44, v19, cGColor);

    [(NTKSolarDiskView *)v8 bounds];
    v47 = CGRectInset(v46, v19, v19);
    CGContextFillEllipseInRect(CurrentContext, v47);
    v22 = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    v23 = [[UIImageView alloc] initWithImage:v22];
    sunUpView = v8->_sunUpView;
    v8->_sunUpView = v23;

    [(UIView *)v8->_sunUpView setContentMode:5];
    [(UIView *)v8->_sunUpView setClipsToBounds:1];
    [(NTKSolarDiskView *)v8 addSubview:v8->_sunUpView];
    [(NTKSolarDiskView *)v8 frame];
    v26 = v25;
    v28 = v27;
    [deviceCopy screenScale];
    v30 = v29;
    v45.width = v26;
    v45.height = v28;
    UIGraphicsBeginImageContextWithOptions(v45, 0, v30);
    v31 = UIGraphicsGetCurrentContext();
    [(NTKSolarDiskView *)v8 bounds];
    v49 = CGRectInset(v48, v19, v19);
    x = v49.origin.x;
    y = v49.origin.y;
    width = v49.size.width;
    height = v49.size.height;
    v36 = +[UIColor whiteColor];
    [v36 setFill];

    v50.origin.x = x;
    v50.origin.y = y;
    v50.size.width = width;
    v50.size.height = height;
    CGContextFillEllipseInRect(v31, v50);
    v37 = +[UIColor blackColor];
    [v37 setFill];

    v51.origin.x = x;
    v51.origin.y = y;
    v51.size.width = width;
    v51.size.height = height;
    v52 = CGRectInset(v51, 1.5, 1.5);
    CGContextFillEllipseInRect(v31, v52);
    v38 = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    v39 = [[UIImageView alloc] initWithImage:v38];
    sunDownView = v8->_sunDownView;
    v8->_sunDownView = v39;

    [(UIView *)v8->_sunDownView setContentMode:6];
    [(UIView *)v8->_sunDownView setClipsToBounds:1];
    [(NTKSolarDiskView *)v8 addSubview:v8->_sunDownView];
  }

  return v8;
}

- (void)setCenter:(CGPoint)center
{
  v4.receiver = self;
  v4.super_class = NTKSolarDiskView;
  [(NTKSolarDiskView *)&v4 setCenter:center.x, center.y];
  [(NTKSolarDiskView *)self setNeedsLayout];
}

- (void)layoutSubviews
{
  v30.receiver = self;
  v30.super_class = NTKSolarDiskView;
  [(NTKSolarDiskView *)&v30 layoutSubviews];
  [(NTKSolarDiskView *)self horizonLine];
  v4 = v3;
  [(NTKSolarDiskView *)self frame];
  v29 = v4 - v5;
  [(NTKSolarDiskView *)self bounds];
  sunUpView = [(NTKSolarDiskView *)self sunUpView];
  height = CGSizeZero.height;
  [sunUpView sizeThatFits:{CGSizeZero.width, height}];
  device = [(NTKSolarDiskView *)self device];
  CLKSizeCenteredInRectForDevice();
  v10 = v9;
  v12 = v11;
  v14 = v13;

  if (v29 - v12 >= 0.0)
  {
    v15 = v29 - v12;
  }

  else
  {
    v15 = 0.0;
  }

  sunUpView2 = [(NTKSolarDiskView *)self sunUpView];
  [sunUpView2 setFrame:{v10, v12, v14, v15}];

  sunDownView = [(NTKSolarDiskView *)self sunDownView];
  [sunDownView sizeThatFits:{CGSizeZero.width, height}];
  device2 = [(NTKSolarDiskView *)self device];
  CLKSizeCenteredInRectForDevice();
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;

  if (v26 - (v29 - v22) >= 0.0)
  {
    v27 = v26 - (v29 - v22);
  }

  else
  {
    v27 = 0.0;
  }

  sunDownView2 = [(NTKSolarDiskView *)self sunDownView];
  [sunDownView2 setFrame:{v20, v29, v24, v27}];
}

@end