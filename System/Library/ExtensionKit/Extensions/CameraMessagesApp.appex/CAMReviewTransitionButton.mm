@interface CAMReviewTransitionButton
- (CAMReviewTransitionButton)initWithFrame:(CGRect)frame;
- (void)configureWithShutterButtonSpec:(CAMShutterButtonSpec *)spec;
@end

@implementation CAMReviewTransitionButton

- (CAMReviewTransitionButton)initWithFrame:(CGRect)frame
{
  v12.receiver = self;
  v12.super_class = CAMReviewTransitionButton;
  v3 = [(CAMReviewTransitionButton *)&v12 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = +[UIColor whiteColor];
    cGColor = [v4 CGColor];
    layer = [(CAMReviewTransitionButton *)v3 layer];
    [layer setBorderColor:cGColor];

    v7 = objc_alloc_init(UIView);
    innerCircle = v3->_innerCircle;
    v3->_innerCircle = v7;

    [(CAMReviewTransitionButton *)v3 addSubview:v3->_innerCircle];
    v9 = objc_alloc_init(UIImageView);
    imageView = v3->_imageView;
    v3->_imageView = v9;

    [(CAMReviewTransitionButton *)v3 addSubview:v3->_imageView];
  }

  return v3;
}

- (void)configureWithShutterButtonSpec:(CAMShutterButtonSpec *)spec
{
  var0 = spec->var0;
  var1 = spec->var1;
  v6 = spec->var0 + var1 * -2.0 + spec->var4 * -2.0;
  [(CAMReviewTransitionButton *)self setBounds:0.0, 0.0, spec->var0, spec->var0];
  layer = [(CAMReviewTransitionButton *)self layer];
  [layer setCornerRadius:var0 * 0.5];

  layer2 = [(CAMReviewTransitionButton *)self layer];
  [layer2 setBorderWidth:var1];

  innerCircle = [(CAMReviewTransitionButton *)self innerCircle];
  [(CAMReviewTransitionButton *)self bounds];
  UIRectGetCenter();
  [innerCircle setCenter:?];
  [innerCircle setBounds:{0.0, 0.0, v6, v6}];
  layer3 = [innerCircle layer];
  [layer3 setCornerRadius:v6 * 0.5];

  imageView = [(CAMReviewTransitionButton *)self imageView];
  [innerCircle center];
  [imageView setCenter:?];
  [innerCircle bounds];
  [imageView setBounds:?];
}

@end