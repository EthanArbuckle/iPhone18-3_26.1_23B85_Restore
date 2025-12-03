@interface MTACircleButton
+ (double)buttonWidthForSize:(unint64_t)size;
- (CGSize)sizeThatFits:(CGSize)fits;
- (MTACircleButton)initWithFrame:(CGRect)frame;
- (double)preferredHorizontalMargin;
- (void)layoutSubviews;
- (void)setHighlighted:(BOOL)highlighted;
@end

@implementation MTACircleButton

+ (double)buttonWidthForSize:(unint64_t)size
{
  v4 = +[UIApplication sharedApplication];
  connectedScenes = [v4 connectedScenes];
  allObjects = [connectedScenes allObjects];

  firstObject = [allObjects firstObject];
  keyWindow = [firstObject keyWindow];

  if (keyWindow)
  {
    traitCollection = [keyWindow traitCollection];
    [traitCollection horizontalSizeClass];
    [keyWindow frame];
    v10 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
    v11 = v10;
    if (size == 1)
    {
      v12 = &qword_10008BD08;
    }

    else
    {
      if (size)
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

- (MTACircleButton)initWithFrame:(CGRect)frame
{
  v23.receiver = self;
  v23.super_class = MTACircleButton;
  v3 = [(MTACircleButton *)&v23 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    v3->_buttonCircleSize = -1;
    v5 = +[UIColor whiteColor];
    [(MTACircleButton *)v4 setTintColor:v5];

    titleLabel = [(MTACircleButton *)v4 titleLabel];
    [titleLabel setTextAlignment:1];

    titleLabel2 = [(MTACircleButton *)v4 titleLabel];
    [titleLabel2 setBaselineAdjustment:1];

    titleLabel3 = [(MTACircleButton *)v4 titleLabel];
    [titleLabel3 setAdjustsFontSizeToFitWidth:1];

    titleLabel4 = [(MTACircleButton *)v4 titleLabel];
    v10 = [NAUITextStyleDescriptor descriptorWithTextStyle:UIFontTextStyleBody];
    descriptorByDisallowingSmallSizes = [v10 descriptorByDisallowingSmallSizes];
    [titleLabel4 naui_setDynamicFontTextStyleDescriptor:descriptorByDisallowingSmallSizes];

    v12 = +[NSMutableArray array];
    titleLabel5 = [(MTACircleButton *)v4 titleLabel];
    [titleLabel5 setTranslatesAutoresizingMaskIntoConstraints:0];

    [(MTACircleButton *)v4 setAutoresizingMask:0];
    v14 = [NSLayoutConstraint constraintWithItem:v4 attribute:7 relatedBy:0 toItem:v4 attribute:8 multiplier:1.0 constant:0.0];
    [v12 addObject:v14];

    titleLabel6 = [(MTACircleButton *)v4 titleLabel];
    v16 = [NSLayoutConstraint constraintWithItem:titleLabel6 attribute:5 relatedBy:0 toItem:v4 attribute:5 multiplier:1.0 constant:8.0];
    [v12 addObject:v16];

    titleLabel7 = [(MTACircleButton *)v4 titleLabel];
    v18 = [NSLayoutConstraint constraintWithItem:titleLabel7 attribute:6 relatedBy:0 toItem:v4 attribute:6 multiplier:1.0 constant:-8.0];
    [v12 addObject:v18];

    titleLabel8 = [(MTACircleButton *)v4 titleLabel];
    v20 = [NSLayoutConstraint constraintWithItem:titleLabel8 attribute:9 relatedBy:0 toItem:v4 attribute:9 multiplier:1.0 constant:-8.0];

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
  layer = [(MTACircleButton *)self layer];
  [layer setCornerRadius:v4];

  layer2 = [(MTACircleButton *)self layer];
  [layer2 setMasksToBounds:1];
}

- (void)setHighlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  v6.receiver = self;
  v6.super_class = MTACircleButton;
  [(MTACircleButton *)&v6 setHighlighted:?];
  v5 = 1.0;
  if (highlightedCopy)
  {
    v5 = 0.75;
  }

  [(MTACircleButton *)self setAlpha:v5];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  v12.receiver = self;
  v12.super_class = MTACircleButton;
  [(MTACircleButton *)&v12 sizeThatFits:fits.width, fits.height];
  v5 = v4;
  v7 = v6;
  titleLabel = [(MTACircleButton *)self titleLabel];
  adjustsFontSizeToFitWidth = [titleLabel adjustsFontSizeToFitWidth];

  if (adjustsFontSizeToFitWidth)
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
  window = [(MTACircleButton *)self window];
  [window frame];
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