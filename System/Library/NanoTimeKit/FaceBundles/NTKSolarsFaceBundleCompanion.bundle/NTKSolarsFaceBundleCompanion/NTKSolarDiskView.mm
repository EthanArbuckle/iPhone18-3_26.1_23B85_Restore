@interface NTKSolarDiskView
- (NTKSolarDiskView)initWithSize:(double)a3 forDevice:(id)a4;
- (void)layoutSubviews;
- (void)setCenter:(CGPoint)a3;
@end

@implementation NTKSolarDiskView

- (NTKSolarDiskView)initWithSize:(double)a3 forDevice:(id)a4
{
  v6 = a4;
  v42.receiver = self;
  v42.super_class = NTKSolarDiskView;
  v7 = [(NTKSolarDiskView *)&v42 initWithFrame:0.0, 0.0, a3, a3];
  v8 = v7;
  if (v7)
  {
    v9 = [(NTKSolarDiskView *)v7 layer];
    [v9 setAllowsGroupBlending:0];

    v10 = [(NTKSolarDiskView *)v8 layer];
    [v10 setAllowsGroupOpacity:0];

    [(NTKSolarDiskView *)v8 setDevice:v6];
    [(NTKSolarDiskView *)v8 frame];
    v12 = v11;
    v14 = v13;
    [v6 screenScale];
    v16 = v15;
    v43.width = v12;
    v43.height = v14;
    UIGraphicsBeginImageContextWithOptions(v43, 0, v16);
    CurrentContext = UIGraphicsGetCurrentContext();
    v18 = +[UIColor whiteColor];
    [v18 setFill];

    v19 = a3 * 0.243243243;
    v20 = +[UIColor whiteColor];
    v21 = [v20 CGColor];
    v44.width = CGSizeZero.width;
    v44.height = CGSizeZero.height;
    CGContextSetShadowWithColor(CurrentContext, v44, v19, v21);

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
    [v6 screenScale];
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

- (void)setCenter:(CGPoint)a3
{
  v4.receiver = self;
  v4.super_class = NTKSolarDiskView;
  [(NTKSolarDiskView *)&v4 setCenter:a3.x, a3.y];
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
  v6 = [(NTKSolarDiskView *)self sunUpView];
  height = CGSizeZero.height;
  [v6 sizeThatFits:{CGSizeZero.width, height}];
  v8 = [(NTKSolarDiskView *)self device];
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

  v16 = [(NTKSolarDiskView *)self sunUpView];
  [v16 setFrame:{v10, v12, v14, v15}];

  v17 = [(NTKSolarDiskView *)self sunDownView];
  [v17 sizeThatFits:{CGSizeZero.width, height}];
  v18 = [(NTKSolarDiskView *)self device];
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

  v28 = [(NTKSolarDiskView *)self sunDownView];
  [v28 setFrame:{v20, v29, v24, v27}];
}

@end