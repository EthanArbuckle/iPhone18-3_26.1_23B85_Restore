@interface CAMReviewTransitionButton
- (CAMReviewTransitionButton)initWithFrame:(CGRect)a3;
- (void)configureWithShutterButtonSpec:(CAMShutterButtonSpec *)a3;
@end

@implementation CAMReviewTransitionButton

- (CAMReviewTransitionButton)initWithFrame:(CGRect)a3
{
  v12.receiver = self;
  v12.super_class = CAMReviewTransitionButton;
  v3 = [(CAMReviewTransitionButton *)&v12 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = +[UIColor whiteColor];
    v5 = [v4 CGColor];
    v6 = [(CAMReviewTransitionButton *)v3 layer];
    [v6 setBorderColor:v5];

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

- (void)configureWithShutterButtonSpec:(CAMShutterButtonSpec *)a3
{
  var0 = a3->var0;
  var1 = a3->var1;
  v6 = a3->var0 + var1 * -2.0 + a3->var4 * -2.0;
  [(CAMReviewTransitionButton *)self setBounds:0.0, 0.0, a3->var0, a3->var0];
  v7 = [(CAMReviewTransitionButton *)self layer];
  [v7 setCornerRadius:var0 * 0.5];

  v8 = [(CAMReviewTransitionButton *)self layer];
  [v8 setBorderWidth:var1];

  v11 = [(CAMReviewTransitionButton *)self innerCircle];
  [(CAMReviewTransitionButton *)self bounds];
  UIRectGetCenter();
  [v11 setCenter:?];
  [v11 setBounds:{0.0, 0.0, v6, v6}];
  v9 = [v11 layer];
  [v9 setCornerRadius:v6 * 0.5];

  v10 = [(CAMReviewTransitionButton *)self imageView];
  [v11 center];
  [v10 setCenter:?];
  [v11 bounds];
  [v10 setBounds:?];
}

@end