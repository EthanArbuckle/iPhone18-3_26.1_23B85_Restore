@interface NTKSiderealSolarContainerView
- (NTKSiderealSolarContainerView)initWithFrame:(CGRect)frame orbitDiameter:(double)diameter device:(id)device;
- (double)poseForDayDiskBloomImage;
- (double)poseForDayDiskImage;
- (double)poseForDayGnomonImage;
- (double)poseForNightDiskImage;
- (double)poseForNightGnomonImage;
- (double)poseForNightRingImage;
- (id)_dayPathGlowImage;
- (id)_diskGlow;
- (id)_newGnomonView;
- (id)_solarSun;
- (void)setSolarDayProgress:(double)progress;
@end

@implementation NTKSiderealSolarContainerView

- (NTKSiderealSolarContainerView)initWithFrame:(CGRect)frame orbitDiameter:(double)diameter device:(id)device
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  deviceCopy = device;
  v79.receiver = self;
  v79.super_class = NTKSiderealSolarContainerView;
  height = [(NTKSiderealSolarContainerView *)&v79 initWithFrame:x, y, width, height];
  v14 = height;
  if (height)
  {
    objc_storeStrong(&height->_device, device);
    v14->_orbitDiameter = diameter;
    v77 = 0u;
    v78 = 0u;
    v75 = 0u;
    v76 = 0u;
    sub_D7BC(v14->_device, &v75);
    v15 = +[NTKSiderealColorManager sharedInstance];
    colorManager = v14->_colorManager;
    v14->_colorManager = v15;

    v17 = [UIView alloc];
    [(NTKSiderealSolarContainerView *)v14 bounds];
    v18 = [v17 initWithFrame:?];
    nightContainerView = v14->_nightContainerView;
    v14->_nightContainerView = v18;

    [(NTKSiderealSolarContainerView *)v14 addSubview:v14->_nightContainerView];
    v20 = [UIView alloc];
    [(NTKSiderealSolarContainerView *)v14 bounds];
    v21 = [v20 initWithFrame:?];
    nightAccessoryContainerView = v14->_nightAccessoryContainerView;
    v14->_nightAccessoryContainerView = v21;

    [(UIView *)v14->_nightContainerView addSubview:v14->_nightAccessoryContainerView];
    _newGnomonView = [(NTKSiderealSolarContainerView *)v14 _newGnomonView];
    nightDiskGnomon = v14->_nightDiskGnomon;
    v14->_nightDiskGnomon = _newGnomonView;

    v25 = v14->_nightDiskGnomon;
    SRGB = CGColorCreateSRGB(1.0, 1.0, 1.0, 0.0);
    v81[0] = SRGB;
    v27 = CGColorCreateSRGB(0.498039216, 0.498039216, 1.0, 0.75);
    v81[1] = v27;
    v28 = CGColorCreateSRGB(1.0, 1.0, 1.0, 0.0);
    v81[2] = v28;
    v29 = [NSArray arrayWithObjects:v81 count:3];
    [(CAGradientLayer *)v25 setColors:v29];

    layer = [(UIView *)v14->_nightAccessoryContainerView layer];
    [layer addSublayer:v14->_nightDiskGnomon];

    v31 = [UIView alloc];
    v32 = *&v76;
    v33 = *&v76 + -1.0;
    v34 = [v31 initWithFrame:{0.0, 0.0, *&v76 + -1.0, *&v76 + -1.0}];
    nightDisk = v14->_nightDisk;
    v14->_nightDisk = v34;

    layer2 = [(UIView *)v14->_nightDisk layer];
    [layer2 setCornerRadius:v33 * 0.5];

    v37 = v14->_nightDisk;
    v38 = +[UIColor whiteColor];
    [(UIView *)v37 setBackgroundColor:v38];

    [(UIView *)v14->_nightContainerView addSubview:v14->_nightDisk];
    v39 = objc_opt_new();
    v40 = +[UIColor whiteColor];
    [v39 setStrokeColor:{objc_msgSend(v40, "CGColor")}];

    v41 = +[UIColor clearColor];
    [v39 setFillColor:{objc_msgSend(v41, "CGColor")}];

    [v39 setLineWidth:*(&v76 + 1)];
    v42 = [UIBezierPath bezierPathWithOvalInRect:0.0, 0.0, v32, v32];
    [v39 setPath:{objc_msgSend(v42, "CGPath")}];

    v43 = [[UIView alloc] initWithFrame:{0.0, 0.0, v32, v32}];
    nightRing = v14->_nightRing;
    v14->_nightRing = v43;

    [(UIView *)v14->_nightRing setBackgroundColor:0];
    layer3 = [(UIView *)v14->_nightRing layer];
    [layer3 addSublayer:v39];

    [(UIView *)v14->_nightContainerView addSubview:v14->_nightRing];
    v46 = [UIView alloc];
    [(NTKSiderealSolarContainerView *)v14 bounds];
    v47 = [v46 initWithFrame:?];
    dayContainerView = v14->_dayContainerView;
    v14->_dayContainerView = v47;

    [(NTKSiderealSolarContainerView *)v14 addSubview:v14->_dayContainerView];
    v49 = [UIView alloc];
    [(NTKSiderealSolarContainerView *)v14 bounds];
    v50 = [v49 initWithFrame:?];
    dayAccessoryContainerView = v14->_dayAccessoryContainerView;
    v14->_dayAccessoryContainerView = v50;

    [(UIView *)v14->_dayContainerView addSubview:v14->_dayAccessoryContainerView];
    _newGnomonView2 = [(NTKSiderealSolarContainerView *)v14 _newGnomonView];
    dayDiskGnomon = v14->_dayDiskGnomon;
    v14->_dayDiskGnomon = _newGnomonView2;

    v54 = v14->_dayDiskGnomon;
    v55 = CGColorCreateSRGB(1.0, 1.0, 1.0, 0.0);
    v80[0] = v55;
    v56 = CGColorCreateSRGB(0.8, 0.941176471, 1.0, 1.0);
    v80[1] = v56;
    v57 = CGColorCreateSRGB(1.0, 1.0, 1.0, 0.0);
    v80[2] = v57;
    v58 = [NSArray arrayWithObjects:v80 count:3];
    [(CAGradientLayer *)v54 setColors:v58];

    layer4 = [(UIView *)v14->_dayAccessoryContainerView layer];
    [layer4 addSublayer:v14->_dayDiskGnomon];

    v60 = [UIImageView alloc];
    _dayPathGlowImage = [(NTKSiderealSolarContainerView *)v14 _dayPathGlowImage];
    v62 = [v60 initWithImage:_dayPathGlowImage];
    dayPathGlow = v14->_dayPathGlow;
    v14->_dayPathGlow = v62;

    [(UIImageView *)v14->_dayPathGlow setContentMode:1];
    [(NTKSiderealSolarContainerView *)v14 bounds];
    CLKRectGetCenter();
    [(UIImageView *)v14->_dayPathGlow setCenter:?];
    [(UIView *)v14->_dayAccessoryContainerView addSubview:v14->_dayPathGlow];
    v64 = [UIImageView alloc];
    _diskGlow = [(NTKSiderealSolarContainerView *)v14 _diskGlow];
    v66 = [v64 initWithImage:_diskGlow];
    dayDiskBloom = v14->_dayDiskBloom;
    v14->_dayDiskBloom = v66;

    [(UIView *)v14->_dayAccessoryContainerView addSubview:v14->_dayDiskBloom];
    v68 = [UIView alloc];
    v69 = *&v75;
    v70 = [v68 initWithFrame:{0.0, 0.0, *&v75, *&v75}];
    dayDisk = v14->_dayDisk;
    v14->_dayDisk = v70;

    v72 = [[UIImageView alloc] initWithFrame:{0.0, 0.0, v69, v69}];
    _solarSun = [(NTKSiderealSolarContainerView *)v14 _solarSun];
    [v72 setImage:_solarSun];

    [(UIView *)v14->_dayDisk addSubview:v72];
    [(UIView *)v14->_dayContainerView insertSubview:v14->_dayDisk aboveSubview:v14->_dayAccessoryContainerView];
  }

  return v14;
}

- (id)_dayPathGlowImage
{
  *v17 = 0u;
  memset(v16, 0, sizeof(v16));
  sub_D7BC(self->_device, v16);
  v2 = +[CAGradientLayer layer];
  v3 = v17[0];
  [v2 setBounds:{0.0, 0.0, v17[0], v17[0]}];
  [v2 setType:kCAGradientLayerConic];
  v4 = +[UIColor whiteColor];
  v18[0] = [v4 CGColor];
  v5 = [UIColor colorWithWhite:1.0 alpha:0.0];
  v18[1] = [v5 CGColor];
  v6 = [UIColor colorWithWhite:1.0 alpha:0.0];
  v18[2] = [v6 CGColor];
  v7 = +[UIColor whiteColor];
  v18[3] = [v7 CGColor];
  v8 = [NSArray arrayWithObjects:v18 count:4];
  [v2 setColors:v8];

  [v2 setLocations:&off_2DF98];
  [v2 setStartPoint:{0.5, 0.5}];
  [v2 setEndPoint:{0.5, 0.0}];
  v9 = v3 * 0.5;
  [v2 setCornerRadius:v9];
  v10 = [UIBezierPath bezierPathWithArcCenter:1 radius:v9 startAngle:v9 endAngle:v9 + -0.5 clockwise:0.0, 6.28318531];
  v11 = +[CAShapeLayer layer];
  [v2 bounds];
  [v11 setFrame:?];
  [v11 setCornerRadius:v9];
  [v11 setPath:{objc_msgSend(v10, "CGPath")}];
  v12 = +[UIColor whiteColor];
  [v11 setStrokeColor:{objc_msgSend(v12, "CGColor")}];

  [v11 setLineWidth:1.0];
  v13 = +[UIColor clearColor];
  [v11 setFillColor:{objc_msgSend(v13, "CGColor")}];

  [v2 setMask:v11];
  [v2 size];
  UIGraphicsBeginImageContextWithOptions(v20, 0, 0.0);
  [v2 renderInContext:UIGraphicsGetCurrentContext()];
  v14 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v14;
}

- (id)_diskGlow
{
  v17 = 0u;
  memset(v16, 0, sizeof(v16));
  sub_D7BC(self->_device, v16);
  v2 = +[CAGradientLayer layer];
  [v2 setFrame:{0.0, 0.0, *(&v17 + 1), *(&v17 + 1)}];
  [v2 setType:kCAGradientLayerRadial];
  v15 = +[UIColor whiteColor];
  v18[0] = [v15 CGColor];
  v14 = [UIColor colorWithWhite:1.0 alpha:0.862745];
  v18[1] = [v14 CGColor];
  v3 = [UIColor colorWithWhite:1.0 alpha:0.67451];
  v18[2] = [v3 CGColor];
  v4 = [UIColor colorWithWhite:1.0 alpha:0.411765];
  v18[3] = [v4 CGColor];
  v5 = [UIColor colorWithWhite:1.0 alpha:0.278431];
  v18[4] = [v5 CGColor];
  v6 = [UIColor colorWithWhite:1.0 alpha:0.184314];
  v18[5] = [v6 CGColor];
  v7 = [UIColor colorWithWhite:1.0 alpha:0.117647];
  v18[6] = [v7 CGColor];
  v8 = [UIColor colorWithWhite:1.0 alpha:0.0588235];
  v18[7] = [v8 CGColor];
  v9 = [UIColor colorWithWhite:1.0 alpha:0.0156863];
  v18[8] = [v9 CGColor];
  v10 = [UIColor colorWithWhite:1.0 alpha:0.0];
  v18[9] = [v10 CGColor];
  v11 = [NSArray arrayWithObjects:v18 count:10];
  [v2 setColors:v11];

  [v2 setLocations:&off_2DFB0];
  [v2 setStartPoint:{0.5, 0.5}];
  [v2 setEndPoint:{0.0, 0.0}];
  [v2 size];
  UIGraphicsBeginImageContextWithOptions(v20, 0, 0.0);
  [v2 renderInContext:UIGraphicsGetCurrentContext()];
  v12 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v12;
}

- (id)_solarSun
{
  memset(v9, 0, sizeof(v9));
  sub_D7BC(self->_device, v9);
  v2 = +[CAGradientLayer layer];
  [v2 setFrame:{0.0, 0.0, *v9, *v9}];
  [v2 setType:kCAGradientLayerRadial];
  v3 = +[UIColor whiteColor];
  v10[0] = [v3 CGColor];
  v4 = +[UIColor whiteColor];
  v10[1] = [v4 CGColor];
  v5 = [UIColor colorWithWhite:1.0 alpha:0.0];
  v10[2] = [v5 CGColor];
  v6 = [NSArray arrayWithObjects:v10 count:3];
  [v2 setColors:v6];

  [v2 setLocations:&off_2DFC8];
  [v2 setStartPoint:{0.5, 0.5}];
  [v2 setEndPoint:{0.0, 0.0}];
  [v2 size];
  UIGraphicsBeginImageContextWithOptions(v12, 0, 0.0);
  [v2 renderInContext:UIGraphicsGetCurrentContext()];
  v7 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v7;
}

- (double)poseForDayGnomonImage
{
  [(CAGradientLayer *)self->_dayDiskGnomon setHidden:0];
  [(UIImageView *)self->_dayPathGlow setHidden:0];
  [(UIImageView *)self->_dayDiskBloom setHidden:1];
  [(UIView *)self->_dayDisk setHidden:1];
  [(CAGradientLayer *)self->_dayDiskGnomon bounds];
  return v3;
}

- (double)poseForDayDiskBloomImage
{
  [(CAGradientLayer *)self->_dayDiskGnomon setHidden:1];
  [(UIImageView *)self->_dayPathGlow setHidden:1];
  [(UIImageView *)self->_dayDiskBloom setHidden:0];
  [(UIView *)self->_dayDisk setHidden:1];
  [(UIImageView *)self->_dayDiskBloom bounds];
  return v3;
}

- (double)poseForDayDiskImage
{
  [(CAGradientLayer *)self->_dayDiskGnomon setHidden:1];
  [(UIImageView *)self->_dayPathGlow setHidden:1];
  [(UIImageView *)self->_dayDiskBloom setHidden:1];
  [(UIView *)self->_dayDisk setHidden:0];
  [(UIView *)self->_dayDisk bounds];
  return v3;
}

- (double)poseForNightGnomonImage
{
  [(CAGradientLayer *)self->_nightDiskGnomon setHidden:0];
  [(UIView *)self->_nightDisk setHidden:1];
  [(UIView *)self->_nightRing setHidden:1];
  [(CAGradientLayer *)self->_nightDiskGnomon bounds];
  return v3;
}

- (double)poseForNightDiskImage
{
  [(CAGradientLayer *)self->_nightDiskGnomon setHidden:1];
  [(UIView *)self->_nightDisk setHidden:0];
  [(UIView *)self->_nightRing setHidden:1];
  nightDisk = self->_nightDisk;
  v4 = +[UIColor whiteColor];
  [(UIView *)nightDisk setBackgroundColor:v4];

  [(UIView *)self->_nightDisk bounds];
  return v5 + 2.0;
}

- (double)poseForNightRingImage
{
  [(CAGradientLayer *)self->_nightDiskGnomon setHidden:1];
  [(UIView *)self->_nightDisk setHidden:1];
  [(UIView *)self->_nightRing setHidden:0];
  [(UIView *)self->_nightDisk bounds];
  return v3 + 2.0;
}

- (void)setSolarDayProgress:(double)progress
{
  CLKDegreesToRadians();
  v5 = v4;
  v6 = v4 + 1.57079633;
  orbitDiameter = self->_orbitDiameter;
  [(NTKSiderealSolarContainerView *)self bounds];
  CLKRectGetCenter();
  NTKPointOnCircle();
  v9 = v8;
  v11 = v10;
  [(UIView *)self->_nightDisk setCenter:?];
  [(UIView *)self->_nightRing setCenter:v9, v11];
  [(UIView *)self->_dayDisk setCenter:v9, v11];
  [(UIImageView *)self->_dayDiskBloom setCenter:v9, v11];
  memset(&v21, 0, sizeof(v21));
  CATransform3DMakeRotation(&v21, v6, 0.0, 0.0, 1.0);
  +[CATransaction begin];
  [CATransaction setValue:kCFBooleanTrue forKey:kCATransactionDisableActions];
  dayPathGlow = self->_dayPathGlow;
  CGAffineTransformMakeRotation(&v15, v5 + 3.14159265);
  [(UIImageView *)dayPathGlow setTransform:&v15];
  dayDiskGnomon = self->_dayDiskGnomon;
  v17 = *&v21.m31;
  v18 = *&v21.m33;
  v19 = *&v21.m41;
  v20 = *&v21.m43;
  *&v15.a = *&v21.m11;
  *&v15.c = *&v21.m13;
  *&v15.tx = *&v21.m21;
  v16 = *&v21.m23;
  [(CAGradientLayer *)dayDiskGnomon setTransform:&v15];
  nightDiskGnomon = self->_nightDiskGnomon;
  v17 = *&v21.m31;
  v18 = *&v21.m33;
  v19 = *&v21.m41;
  v20 = *&v21.m43;
  *&v15.a = *&v21.m11;
  *&v15.c = *&v21.m13;
  *&v15.tx = *&v21.m21;
  v16 = *&v21.m23;
  [(CAGradientLayer *)nightDiskGnomon setTransform:&v15];
  +[CATransaction commit];
}

- (id)_newGnomonView
{
  v6 = 0u;
  v7 = 0u;
  memset(v5, 0, sizeof(v5));
  sub_D7BC(self->_device, v5);
  v3 = +[CAGradientLayer layer];
  [v3 setFrame:{0.0, 0.0, v6}];
  [(NTKSiderealSolarContainerView *)self bounds];
  CLKRectGetCenter();
  [v3 setPosition:?];
  [v3 setAnchorPoint:{0.0, 0.5}];
  [v3 setStartPoint:{0.0, 0.5}];
  [v3 setEndPoint:{1.0, 0.5}];
  [v3 setType:kCAGradientLayerAxial];
  [v3 setLocations:&off_2DFE0];
  return v3;
}

@end