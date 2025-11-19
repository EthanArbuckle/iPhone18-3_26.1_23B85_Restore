@interface MTACircleButton
+ (double)buttonWidthForSize:(unint64_t)a3;
- (CGSize)sizeThatFits:(CGSize)a3;
- (MTACircleButton)initWithFrame:(CGRect)a3;
- (double)preferredHorizontalMargin;
- (void)layoutSubviews;
- (void)setHighlighted:(BOOL)a3;
@end

@implementation MTACircleButton

+ (double)buttonWidthForSize:(unint64_t)a3
{
  v4 = +[UIApplication sharedApplication];
  v5 = [v4 connectedScenes];
  v6 = [v5 allObjects];

  v7 = [v6 firstObject];
  v8 = [v7 keyWindow];

  if (v8)
  {
    v9 = [v8 traitCollection];
    [v9 horizontalSizeClass];
    [v8 frame];
    v10 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
    v11 = v10;
    if (a3 == 1)
    {
      v12 = &qword_10008BD08;
    }

    else
    {
      if (a3)
      {
LABEL_10:
        MTUIRoundToPixel();
        v15 = v16;

        goto LABEL_11;
      }

      v12 = &qword_10008BD00;
    }

    [v10 _scaledValueForValue:*v12];
    goto LABEL_10;
  }

  v13 = MTLogForCategory();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    sub_1000736B4(v13);
  }

  MTUIRoundToPixel();
  v15 = v14;
LABEL_11:

  return v15;
}

- (MTACircleButton)initWithFrame:(CGRect)a3
{
  v23.receiver = self;
  v23.super_class = MTACircleButton;
  v3 = [(MTACircleButton *)&v23 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v3->_buttonCircleSize = -1;
    v5 = +[UIColor whiteColor];
    [(MTACircleButton *)v4 setTintColor:v5];

    v6 = [(MTACircleButton *)v4 titleLabel];
    [v6 setTextAlignment:1];

    v7 = [(MTACircleButton *)v4 titleLabel];
    [v7 setBaselineAdjustment:1];

    v8 = [(MTACircleButton *)v4 titleLabel];
    [v8 setAdjustsFontSizeToFitWidth:1];

    v9 = [(MTACircleButton *)v4 titleLabel];
    v10 = [NAUITextStyleDescriptor descriptorWithTextStyle:UIFontTextStyleBody];
    v11 = [v10 descriptorByDisallowingSmallSizes];
    [v9 naui_setDynamicFontTextStyleDescriptor:v11];

    v12 = +[NSMutableArray array];
    v13 = [(MTACircleButton *)v4 titleLabel];
    [v13 setTranslatesAutoresizingMaskIntoConstraints:0];

    [(MTACircleButton *)v4 setAutoresizingMask:0];
    v14 = [NSLayoutConstraint constraintWithItem:v4 attribute:7 relatedBy:0 toItem:v4 attribute:8 multiplier:1.0 constant:0.0];
    [v12 addObject:v14];

    v15 = [(MTACircleButton *)v4 titleLabel];
    v16 = [NSLayoutConstraint constraintWithItem:v15 attribute:5 relatedBy:0 toItem:v4 attribute:5 multiplier:1.0 constant:8.0];
    [v12 addObject:v16];

    v17 = [(MTACircleButton *)v4 titleLabel];
    v18 = [NSLayoutConstraint constraintWithItem:v17 attribute:6 relatedBy:0 toItem:v4 attribute:6 multiplier:1.0 constant:-8.0];
    [v12 addObject:v18];

    v19 = [(MTACircleButton *)v4 titleLabel];
    v20 = [NSLayoutConstraint constraintWithItem:v19 attribute:9 relatedBy:0 toItem:v4 attribute:9 multiplier:1.0 constant:-8.0];

    LODWORD(v21) = 1148829696;
    [v20 setPriority:v21];
    [v12 addObject:v20];
    [NSLayoutConstraint activateConstraints:v12];
  }

  return v4;
}

- (void)layoutSubviews
{
  v7.receiver = self;
  v7.super_class = MTACircleButton;
  [(MTACircleButton *)&v7 layoutSubviews];
  [(MTACircleButton *)self bounds];
  v4 = v3 * 0.5;
  v5 = [(MTACircleButton *)self layer];
  [v5 setCornerRadius:v4];

  v6 = [(MTACircleButton *)self layer];
  [v6 setMasksToBounds:1];
}

- (void)setHighlighted:(BOOL)a3
{
  v3 = a3;
  v6.receiver = self;
  v6.super_class = MTACircleButton;
  [(MTACircleButton *)&v6 setHighlighted:?];
  v5 = 1.0;
  if (v3)
  {
    v5 = 0.75;
  }

  [(MTACircleButton *)self setAlpha:v5];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  v12.receiver = self;
  v12.super_class = MTACircleButton;
  [(MTACircleButton *)&v12 sizeThatFits:a3.width, a3.height];
  v5 = v4;
  v7 = v6;
  v8 = [(MTACircleButton *)self titleLabel];
  v9 = [v8 adjustsFontSizeToFitWidth];

  if (v9)
  {
    v10 = v7;
  }

  else
  {
    v10 = v5;
  }

  v11 = v10;
  result.height = v11;
  result.width = v10;
  return result;
}

- (double)preferredHorizontalMargin
{
  v2 = [(MTACircleButton *)self window];
  [v2 frame];
  v4 = v3;
  v6 = v5;

  v7 = MTUIShouldUseLargePadLayout();
  v8 = fmax(v4, v6);
  if (v7)
  {
    return dbl_10008B920[v8 > 1024.0];
  }

  v10 = v8 <= 768.0;
  result = 82.0;
  if (v10)
  {
    return 29.0;
  }

  return result;
}

@end