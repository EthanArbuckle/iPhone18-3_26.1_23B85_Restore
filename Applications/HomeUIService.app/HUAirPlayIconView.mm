@interface HUAirPlayIconView
- (CGSize)intrinsicContentSize;
- (HUAirPlayIconView)initWithFrame:(CGRect)frame;
- (void)defineBorderWithRadius:(double)radius borderWidth:(double)width borderColor:(id)color;
- (void)layoutSubviews;
@end

@implementation HUAirPlayIconView

- (HUAirPlayIconView)initWithFrame:(CGRect)frame
{
  v11.receiver = self;
  v11.super_class = HUAirPlayIconView;
  v3 = [(HUAirPlayIconView *)&v11 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    airplayImageBackgroundView = v3->_airplayImageBackgroundView;
    v3->_airplayImageBackgroundView = v4;

    v6 = +[UIColor systemBlueColor];
    [(UIView *)v3->_airplayImageBackgroundView setBackgroundColor:v6];

    v7 = +[UIImage hu_smallAirPlayAudioImage];
    v8 = [[UIImageView alloc] initWithImage:v7];
    airplayImageView = v3->_airplayImageView;
    v3->_airplayImageView = v8;

    [(UIImageView *)v3->_airplayImageView setContentMode:2];
    [(HUAirPlayIconView *)v3 addSubview:v3->_airplayImageBackgroundView];
    [(HUAirPlayIconView *)v3 addSubview:v3->_airplayImageView];
  }

  return v3;
}

- (void)layoutSubviews
{
  v18.receiver = self;
  v18.super_class = HUAirPlayIconView;
  [(HUAirPlayIconView *)&v18 layoutSubviews];
  [(HUAirPlayIconView *)self bounds];
  MidX = CGRectGetMidX(v19);
  [(HUAirPlayIconView *)self bounds];
  MidY = CGRectGetMidY(v20);
  [(HUAirPlayIconView *)self bounds];
  v6 = v5;
  [(HUAirPlayIconView *)self bounds];
  v8 = v7;
  airplayImageBackgroundView = [(HUAirPlayIconView *)self airplayImageBackgroundView];
  [airplayImageBackgroundView setBounds:{0.0, 0.0, v6, v8}];

  airplayImageBackgroundView2 = [(HUAirPlayIconView *)self airplayImageBackgroundView];
  [airplayImageBackgroundView2 setCenter:{MidX, MidY}];

  [(HUAirPlayIconView *)self bounds];
  v12 = v11 * 0.55;
  [(HUAirPlayIconView *)self bounds];
  v14 = v13 * 0.55;
  airplayImageView = [(HUAirPlayIconView *)self airplayImageView];
  [airplayImageView setBounds:{0.0, 0.0, v12, v14}];

  airplayImageView2 = [(HUAirPlayIconView *)self airplayImageView];
  [airplayImageView2 setCenter:{MidX, MidY}];

  v17 = +[UIColor systemWhiteColor];
  [(HUAirPlayIconView *)self defineBorderWithRadius:v17 borderWidth:17.0 borderColor:4.0];
}

- (CGSize)intrinsicContentSize
{
  v2 = 34.0;
  v3 = 34.0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)defineBorderWithRadius:(double)radius borderWidth:(double)width borderColor:(id)color
{
  [(HUAirPlayIconView *)self bounds];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v24 = [UIBezierPath bezierPathWithRoundedRect:"bezierPathWithRoundedRect:byRoundingCorners:cornerRadii:" byRoundingCorners:-1 cornerRadii:?];
  v16 = +[CAShapeLayer layer];
  [v16 setFrame:{v9, v11, v13, v15}];
  v17 = v24;
  [v16 setPath:{objc_msgSend(v24, "CGPath")}];
  layer = [(HUAirPlayIconView *)self layer];
  [layer setMask:v16];

  radius = [UIBezierPath bezierPathWithRoundedRect:-1 byRoundingCorners:v9 cornerRadii:v11, v13, v15, radius, radius];
  v20 = +[CAShapeLayer layer];
  [v20 setFrame:{v9, v11, v13, v15}];
  [v20 setPath:{objc_msgSend(radius, "CGPath")}];
  v21 = +[UIColor whiteColor];
  [v20 setStrokeColor:{objc_msgSend(v21, "CGColor")}];

  v22 = +[UIColor clearColor];
  [v20 setFillColor:{objc_msgSend(v22, "CGColor")}];

  [v20 setLineWidth:width];
  layer2 = [(HUAirPlayIconView *)self layer];
  [layer2 addSublayer:v20];
}

@end