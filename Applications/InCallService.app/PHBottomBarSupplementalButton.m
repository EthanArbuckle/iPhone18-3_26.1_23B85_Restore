@interface PHBottomBarSupplementalButton
- (CGRect)imageRectForContentRect:(CGRect)a3;
- (CGRect)titleRectForContentRect:(CGRect)a3;
- (CGSize)intrinsicContentSize;
- (PHBottomBarSupplementalButton)initWithAction:(int64_t)a3;
- (PHBottomBarSupplementalButton)initWithText:(id)a3 image:(id)a4;
- (void)animationDidStop:(id)a3 finished:(BOOL)a4;
- (void)setEnabled:(BOOL)a3;
- (void)setHighlighted:(BOOL)a3;
@end

@implementation PHBottomBarSupplementalButton

- (PHBottomBarSupplementalButton)initWithText:(id)a3 image:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(PHBottomBarSupplementalButton *)self initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  v9 = v8;
  if (v8)
  {
    [(PHBottomBarSupplementalButton *)v8 setTitle:v6 forState:0];
    [(PHBottomBarSupplementalButton *)v9 setImage:v7 forState:0];
    v10 = +[UIColor whiteColor];
    [(PHBottomBarSupplementalButton *)v9 setTintColor:v10];

    v11 = [(PHBottomBarSupplementalButton *)v9 titleLabel];
    [v11 setTextAlignment:1];

    v12 = +[PHBottomBarButton defaultFont];
    v13 = [(PHBottomBarSupplementalButton *)v9 titleLabel];
    [v13 setFont:v12];

    v14 = [(PHBottomBarSupplementalButton *)v9 titleLabel];
    [v14 setLineBreakMode:4];

    v15 = [(PHBottomBarSupplementalButton *)v9 titleLabel];
    [v15 setNumberOfLines:2];
  }

  return v9;
}

- (PHBottomBarSupplementalButton)initWithAction:(int64_t)a3
{
  if (a3 > 10)
  {
    if (a3 == 11)
    {
      v5 = [UIImage tpImageForSymbolType:14 textStyle:UIFontTextStyleTitle3 scale:-1 isStaticSize:1];
      v6 = [NSBundle bundleForClass:objc_opt_class()];
      v7 = [v6 localizedStringForKey:@"SCREENING_STOP" value:&stru_100361FD0 table:@"BottomBar"];
      v8 = [(PHBottomBarSupplementalButton *)self initWithText:v7 image:v5];
      goto LABEL_12;
    }

    if (a3 == 13)
    {
      v5 = [UIImage tpImageForSymbolType:39 textStyle:UIFontTextStyleTitle3 scale:-1 isStaticSize:1];
      v6 = [NSBundle bundleForClass:objc_opt_class()];
      v7 = [v6 localizedStringForKey:@"CALL_BACK_LATER" value:&stru_100361FD0 table:@"BottomBar"];
      v8 = [(PHBottomBarSupplementalButton *)self initWithText:v7 image:v5];
      goto LABEL_12;
    }

    if (a3 != 30)
    {
      goto LABEL_14;
    }

    goto LABEL_9;
  }

  if (a3 == 9)
  {
LABEL_9:
    v5 = [UIImage tpImageForSymbolType:14 textStyle:UIFontTextStyleTitle3 scale:-1 isStaticSize:1];
    v6 = [NSBundle bundleForClass:objc_opt_class()];
    v7 = [v6 localizedStringForKey:@"SEND_MESSAGE" value:&stru_100361FD0 table:@"BottomBar"];
    v8 = [(PHBottomBarSupplementalButton *)self initWithText:v7 image:v5];
    goto LABEL_12;
  }

  if (a3 == 10)
  {
    v5 = [UIImage tpImageForSymbolType:14 textStyle:UIFontTextStyleTitle3 scale:-1 isStaticSize:1];
    v6 = [NSBundle bundleForClass:objc_opt_class()];
    v7 = [v6 localizedStringForKey:@"SCREENING_BLOCK" value:&stru_100361FD0 table:@"BottomBar"];
    v8 = [(PHBottomBarSupplementalButton *)self initWithText:v7 image:v5];
LABEL_12:
    self = v8;

    v9 = self;
    goto LABEL_13;
  }

LABEL_14:
  v11 = sub_100004F84();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    sub_1002571E4(a3, v11);
  }

  v9 = 0;
LABEL_13:

  return v9;
}

- (CGSize)intrinsicContentSize
{
  +[PHBottomBarButtonConfiguration defaultHeight];
  v4 = v3;
  v5 = [(PHBottomBarSupplementalButton *)self image];
  [v5 size];
  v7 = v6;

  v8 = [(PHBottomBarSupplementalButton *)self titleLabel];
  [v8 intrinsicContentSize];
  v10 = v9;

  if (v7 >= v10)
  {
    v11 = v7;
  }

  else
  {
    v11 = v10;
  }

  if (v4 >= v11)
  {
    v11 = v4;
  }

  v12 = ceil(v11);
  if (v12 <= 100.0)
  {
    v13 = v12;
  }

  else
  {
    v13 = 100.0;
  }

  +[PHBottomBarButtonConfiguration defaultHeight];
  v15 = v14;
  v16 = v13;
  result.height = v15;
  result.width = v16;
  return result;
}

- (CGRect)imageRectForContentRect:(CGRect)a3
{
  width = a3.size.width;
  v8.receiver = self;
  v8.super_class = PHBottomBarSupplementalButton;
  [(PHBottomBarSupplementalButton *)&v8 imageRectForContentRect:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v6 = width * 0.5 - v4 * 0.5;
  v7 = 2.0;
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v7;
  result.origin.x = v6;
  return result;
}

- (CGRect)titleRectForContentRect:(CGRect)a3
{
  width = a3.size.width;
  v19.receiver = self;
  v19.super_class = PHBottomBarSupplementalButton;
  [(PHBottomBarSupplementalButton *)&v19 titleRectForContentRect:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v5 = [(PHBottomBarSupplementalButton *)self imageForState:0];
  [v5 size];
  v7 = v6 + 10.0;

  +[PHBottomBarButtonConfiguration defaultHeight];
  v9 = v8 - v7;
  v10 = [(PHBottomBarSupplementalButton *)self currentTitle];
  v20 = NSFontAttributeName;
  v11 = +[PHBottomBarButton defaultFont];
  v21 = v11;
  v12 = [NSDictionary dictionaryWithObjects:&v21 forKeys:&v20 count:1];
  [v10 boundingRectWithSize:1 options:v12 attributes:0 context:{width, 3.40282347e38}];
  v14 = v13;

  if (v9 >= v14)
  {
    v15 = v14;
  }

  else
  {
    v15 = v9;
  }

  v16 = 0.0;
  v17 = v7;
  v18 = width;
  result.size.height = v15;
  result.size.width = v18;
  result.origin.y = v17;
  result.origin.x = v16;
  return result;
}

- (void)setHighlighted:(BOOL)a3
{
  v3 = a3;
  v5 = [(PHBottomBarSupplementalButton *)self isHighlighted];
  v11.receiver = self;
  v11.super_class = PHBottomBarSupplementalButton;
  [(PHBottomBarSupplementalButton *)&v11 setHighlighted:v3];
  if (v5 != v3)
  {
    if (v3)
    {
      v6 = [(PHBottomBarSupplementalButton *)self layer];
      [v6 removeAllAnimations];

      v7 = [(PHBottomBarSupplementalButton *)self layer];
      LODWORD(v8) = 1045220557;
      [v7 setOpacity:v8];
    }

    else
    {
      v7 = [CABasicAnimation animationWithKeyPath:@"opacity"];
      v9 = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionDefault];
      [v7 setTimingFunction:v9];

      [v7 setToValue:&off_10036B010];
      [v7 setDuration:0.5];
      [v7 setFillMode:kCAFillModeForwards];
      [v7 setDelegate:self];
      [v7 setRemovedOnCompletion:0];
      v10 = [(PHBottomBarSupplementalButton *)self layer];
      [v10 addAnimation:v7 forKey:@"opacityAnimation"];
    }
  }
}

- (void)animationDidStop:(id)a3 finished:(BOOL)a4
{
  v5 = [(PHBottomBarSupplementalButton *)self layer:a3];
  v6 = [v5 animationForKey:@"opacityAnimation"];

  if (v6)
  {
    if ([(PHBottomBarSupplementalButton *)self isHighlighted])
    {
      v7 = 0.2;
    }

    else
    {
      v7 = 1.0;
    }

    v8 = [(PHBottomBarSupplementalButton *)self layer];
    *&v9 = v7;
    [v8 setOpacity:v9];

    v10 = [(PHBottomBarSupplementalButton *)self layer];
    [v10 removeAnimationForKey:@"opacityAnimation"];
  }
}

- (void)setEnabled:(BOOL)a3
{
  v3 = a3;
  v5 = [(PHBottomBarSupplementalButton *)self isEnabled];
  v10.receiver = self;
  v10.super_class = PHBottomBarSupplementalButton;
  [(PHBottomBarSupplementalButton *)&v10 setEnabled:v3];
  if (v5 != v3)
  {
    if (v3)
    {
      [(PHBottomBarSupplementalButton *)self setAlpha:1.0];
      v6 = [(PHBottomBarSupplementalButton *)self layer];
      [v6 setCompositingFilter:0];
    }

    else
    {
      [(PHBottomBarSupplementalButton *)self setAlpha:0.0500000007];
      v7 = [(PHBottomBarSupplementalButton *)self layer];
      [v7 setAllowsGroupBlending:0];

      v8 = [(PHBottomBarSupplementalButton *)self layer];
      [v8 setAllowsGroupOpacity:0];

      v6 = [CAFilter filterWithType:kCAFilterOverlayBlendMode];
      v9 = [(PHBottomBarSupplementalButton *)self layer];
      [v9 setCompositingFilter:v6];
    }
  }
}

@end