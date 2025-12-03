@interface PHBottomBarSupplementalButton
- (CGRect)imageRectForContentRect:(CGRect)rect;
- (CGRect)titleRectForContentRect:(CGRect)rect;
- (CGSize)intrinsicContentSize;
- (PHBottomBarSupplementalButton)initWithAction:(int64_t)action;
- (PHBottomBarSupplementalButton)initWithText:(id)text image:(id)image;
- (void)animationDidStop:(id)stop finished:(BOOL)finished;
- (void)setEnabled:(BOOL)enabled;
- (void)setHighlighted:(BOOL)highlighted;
@end

@implementation PHBottomBarSupplementalButton

- (PHBottomBarSupplementalButton)initWithText:(id)text image:(id)image
{
  textCopy = text;
  imageCopy = image;
  v8 = [(PHBottomBarSupplementalButton *)self initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  v9 = v8;
  if (v8)
  {
    [(PHBottomBarSupplementalButton *)v8 setTitle:textCopy forState:0];
    [(PHBottomBarSupplementalButton *)v9 setImage:imageCopy forState:0];
    v10 = +[UIColor whiteColor];
    [(PHBottomBarSupplementalButton *)v9 setTintColor:v10];

    titleLabel = [(PHBottomBarSupplementalButton *)v9 titleLabel];
    [titleLabel setTextAlignment:1];

    v12 = +[PHBottomBarButton defaultFont];
    titleLabel2 = [(PHBottomBarSupplementalButton *)v9 titleLabel];
    [titleLabel2 setFont:v12];

    titleLabel3 = [(PHBottomBarSupplementalButton *)v9 titleLabel];
    [titleLabel3 setLineBreakMode:4];

    titleLabel4 = [(PHBottomBarSupplementalButton *)v9 titleLabel];
    [titleLabel4 setNumberOfLines:2];
  }

  return v9;
}

- (PHBottomBarSupplementalButton)initWithAction:(int64_t)action
{
  if (action > 10)
  {
    if (action == 11)
    {
      v5 = [UIImage tpImageForSymbolType:14 textStyle:UIFontTextStyleTitle3 scale:-1 isStaticSize:1];
      v6 = [NSBundle bundleForClass:objc_opt_class()];
      v7 = [v6 localizedStringForKey:@"SCREENING_STOP" value:&stru_100361FD0 table:@"BottomBar"];
      v8 = [(PHBottomBarSupplementalButton *)self initWithText:v7 image:v5];
      goto LABEL_12;
    }

    if (action == 13)
    {
      v5 = [UIImage tpImageForSymbolType:39 textStyle:UIFontTextStyleTitle3 scale:-1 isStaticSize:1];
      v6 = [NSBundle bundleForClass:objc_opt_class()];
      v7 = [v6 localizedStringForKey:@"CALL_BACK_LATER" value:&stru_100361FD0 table:@"BottomBar"];
      v8 = [(PHBottomBarSupplementalButton *)self initWithText:v7 image:v5];
      goto LABEL_12;
    }

    if (action != 30)
    {
      goto LABEL_14;
    }

    goto LABEL_9;
  }

  if (action == 9)
  {
LABEL_9:
    v5 = [UIImage tpImageForSymbolType:14 textStyle:UIFontTextStyleTitle3 scale:-1 isStaticSize:1];
    v6 = [NSBundle bundleForClass:objc_opt_class()];
    v7 = [v6 localizedStringForKey:@"SEND_MESSAGE" value:&stru_100361FD0 table:@"BottomBar"];
    v8 = [(PHBottomBarSupplementalButton *)self initWithText:v7 image:v5];
    goto LABEL_12;
  }

  if (action == 10)
  {
    v5 = [UIImage tpImageForSymbolType:14 textStyle:UIFontTextStyleTitle3 scale:-1 isStaticSize:1];
    v6 = [NSBundle bundleForClass:objc_opt_class()];
    v7 = [v6 localizedStringForKey:@"SCREENING_BLOCK" value:&stru_100361FD0 table:@"BottomBar"];
    v8 = [(PHBottomBarSupplementalButton *)self initWithText:v7 image:v5];
LABEL_12:
    self = v8;

    selfCopy = self;
    goto LABEL_13;
  }

LABEL_14:
  v11 = sub_100004F84();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    sub_1002571E4(action, v11);
  }

  selfCopy = 0;
LABEL_13:

  return selfCopy;
}

- (CGSize)intrinsicContentSize
{
  +[PHBottomBarButtonConfiguration defaultHeight];
  v4 = v3;
  image = [(PHBottomBarSupplementalButton *)self image];
  [image size];
  v7 = v6;

  titleLabel = [(PHBottomBarSupplementalButton *)self titleLabel];
  [titleLabel intrinsicContentSize];
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

- (CGRect)imageRectForContentRect:(CGRect)rect
{
  width = rect.size.width;
  v8.receiver = self;
  v8.super_class = PHBottomBarSupplementalButton;
  [(PHBottomBarSupplementalButton *)&v8 imageRectForContentRect:rect.origin.x, rect.origin.y, rect.size.width, rect.size.height];
  v6 = width * 0.5 - v4 * 0.5;
  v7 = 2.0;
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v7;
  result.origin.x = v6;
  return result;
}

- (CGRect)titleRectForContentRect:(CGRect)rect
{
  width = rect.size.width;
  v19.receiver = self;
  v19.super_class = PHBottomBarSupplementalButton;
  [(PHBottomBarSupplementalButton *)&v19 titleRectForContentRect:rect.origin.x, rect.origin.y, rect.size.width, rect.size.height];
  v5 = [(PHBottomBarSupplementalButton *)self imageForState:0];
  [v5 size];
  v7 = v6 + 10.0;

  +[PHBottomBarButtonConfiguration defaultHeight];
  v9 = v8 - v7;
  currentTitle = [(PHBottomBarSupplementalButton *)self currentTitle];
  v20 = NSFontAttributeName;
  v11 = +[PHBottomBarButton defaultFont];
  v21 = v11;
  v12 = [NSDictionary dictionaryWithObjects:&v21 forKeys:&v20 count:1];
  [currentTitle boundingRectWithSize:1 options:v12 attributes:0 context:{width, 3.40282347e38}];
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

- (void)setHighlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  isHighlighted = [(PHBottomBarSupplementalButton *)self isHighlighted];
  v11.receiver = self;
  v11.super_class = PHBottomBarSupplementalButton;
  [(PHBottomBarSupplementalButton *)&v11 setHighlighted:highlightedCopy];
  if (isHighlighted != highlightedCopy)
  {
    if (highlightedCopy)
    {
      layer = [(PHBottomBarSupplementalButton *)self layer];
      [layer removeAllAnimations];

      layer2 = [(PHBottomBarSupplementalButton *)self layer];
      LODWORD(v8) = 1045220557;
      [layer2 setOpacity:v8];
    }

    else
    {
      layer2 = [CABasicAnimation animationWithKeyPath:@"opacity"];
      v9 = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionDefault];
      [layer2 setTimingFunction:v9];

      [layer2 setToValue:&off_10036B010];
      [layer2 setDuration:0.5];
      [layer2 setFillMode:kCAFillModeForwards];
      [layer2 setDelegate:self];
      [layer2 setRemovedOnCompletion:0];
      layer3 = [(PHBottomBarSupplementalButton *)self layer];
      [layer3 addAnimation:layer2 forKey:@"opacityAnimation"];
    }
  }
}

- (void)animationDidStop:(id)stop finished:(BOOL)finished
{
  v5 = [(PHBottomBarSupplementalButton *)self layer:stop];
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

    layer = [(PHBottomBarSupplementalButton *)self layer];
    *&v9 = v7;
    [layer setOpacity:v9];

    layer2 = [(PHBottomBarSupplementalButton *)self layer];
    [layer2 removeAnimationForKey:@"opacityAnimation"];
  }
}

- (void)setEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  isEnabled = [(PHBottomBarSupplementalButton *)self isEnabled];
  v10.receiver = self;
  v10.super_class = PHBottomBarSupplementalButton;
  [(PHBottomBarSupplementalButton *)&v10 setEnabled:enabledCopy];
  if (isEnabled != enabledCopy)
  {
    if (enabledCopy)
    {
      [(PHBottomBarSupplementalButton *)self setAlpha:1.0];
      layer = [(PHBottomBarSupplementalButton *)self layer];
      [layer setCompositingFilter:0];
    }

    else
    {
      [(PHBottomBarSupplementalButton *)self setAlpha:0.0500000007];
      layer2 = [(PHBottomBarSupplementalButton *)self layer];
      [layer2 setAllowsGroupBlending:0];

      layer3 = [(PHBottomBarSupplementalButton *)self layer];
      [layer3 setAllowsGroupOpacity:0];

      layer = [CAFilter filterWithType:kCAFilterOverlayBlendMode];
      layer4 = [(PHBottomBarSupplementalButton *)self layer];
      [layer4 setCompositingFilter:layer];
    }
  }
}

@end