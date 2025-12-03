@interface CarCardRoundedButton
+ ($3CC2805F0189FCCE51047C0D2B5A52A9)_defaultButtonMetrics;
+ (CarCardRoundedButton)buttonWithType:(int64_t)type;
- ($3CC2805F0189FCCE51047C0D2B5A52A9)buttonMetrics;
- (CGRect)imageRectForContentRect:(CGRect)rect;
- (CGRect)titleRectForContentRect:(CGRect)rect;
- (CarCardRoundedButton)initWithFrame:(CGRect)frame;
- (void)_commonInit;
- (void)layoutSubviews;
- (void)setButtonMetrics:(id *)metrics;
@end

@implementation CarCardRoundedButton

- (void)layoutSubviews
{
  v6.receiver = self;
  v6.super_class = CarCardRoundedButton;
  [(CarFocusableButton *)&v6 layoutSubviews];
  currentImage = [(CarCardRoundedButton *)self currentImage];
  if (currentImage)
  {
    v4 = 4;
  }

  else
  {
    v4 = 1;
  }

  titleLabel = [(CarCardRoundedButton *)self titleLabel];
  [titleLabel setTextAlignment:v4];
}

- ($3CC2805F0189FCCE51047C0D2B5A52A9)buttonMetrics
{
  v3 = *&self[4].var2;
  *&retstr->var0 = *&self[4].var0;
  *&retstr->var2 = v3;
  retstr->var4 = self[4].var4;
  return self;
}

+ (CarCardRoundedButton)buttonWithType:(int64_t)type
{
  v5.receiver = self;
  v5.super_class = &OBJC_METACLASS___CarCardRoundedButton;
  v3 = objc_msgSendSuper2(&v5, "buttonWithType:", type);
  [v3 _commonInit];

  return v3;
}

+ ($3CC2805F0189FCCE51047C0D2B5A52A9)_defaultButtonMetrics
{
  *&retstr->var0 = xmmword_1012133A0;
  *&retstr->var2 = unk_1012133B0;
  retstr->var4 = 36.0;
  return result;
}

- (void)setButtonMetrics:(id *)metrics
{
  var4 = metrics->var4;
  v4 = *&metrics->var2;
  *&self->_buttonMetrics.cornerRadius = *&metrics->var0;
  *&self->_buttonMetrics.secondaryFontSize = v4;
  self->_buttonMetrics.buttonHeight = var4;
  [(CarCardRoundedButton *)self setNeedsLayout];
}

- (CGRect)titleRectForContentRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  currentImage = [(CarCardRoundedButton *)self currentImage];

  currentTitle = [(CarCardRoundedButton *)self currentTitle];
  if (currentTitle)
  {
    v10 = 0;
  }

  else
  {
    currentAttributedTitle = [(CarCardRoundedButton *)self currentAttributedTitle];
    v10 = currentAttributedTitle == 0;
  }

  v31.receiver = self;
  v31.super_class = CarCardRoundedButton;
  [(CarCardRoundedButton *)&v31 titleRectForContentRect:x, y, width, height];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  if (currentImage && !v10)
  {
    v32.origin.x = x;
    v32.origin.y = y;
    v32.size.width = width;
    v32.size.height = height;
    v19 = CGRectGetWidth(v32);
    v33.origin.x = 41.0;
    v33.origin.y = v14;
    v33.size.width = v16;
    v33.size.height = v18;
    v20 = v19 - CGRectGetMinX(v33) + -6.0;
    v34.origin.x = x;
    v34.origin.y = y;
    v34.size.width = width;
    v34.size.height = height;
    v30 = CGRectGetHeight(v34);
    v35.origin.x = 41.0;
    v35.origin.y = v14;
    v35.size.width = v20;
    v35.size.height = v18;
    v21 = v30 - CGRectGetMinY(v35) + -6.0;
    v36.origin.x = x;
    v36.origin.y = y;
    v36.size.width = width;
    v36.size.height = height;
    v22 = CGRectGetHeight(v36);
    v37.origin.x = 41.0;
    v37.origin.y = v14;
    v37.size.width = v20;
    v37.size.height = v21;
    v23 = CGRectGetHeight(v37);
    v12 = sub_100099504(41.0, (v22 - v23) * 0.5, v20, v21, x, y, width, height);
    v14 = v24;
    v16 = v25;
    v18 = v26;
  }

  v27 = v14;
  v28 = v16;
  v29 = v18;
  result.size.height = v29;
  result.size.width = v28;
  result.origin.y = v27;
  result.origin.x = v12;
  return result;
}

- (CGRect)imageRectForContentRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  currentTitle = [(CarCardRoundedButton *)self currentTitle];
  if (currentTitle)
  {
    v9 = 0;
  }

  else
  {
    currentAttributedTitle = [(CarCardRoundedButton *)self currentAttributedTitle];
    v9 = currentAttributedTitle == 0;
  }

  currentImage = [(CarCardRoundedButton *)self currentImage];
  v12 = currentImage;
  if (!currentImage || v9)
  {
    v34.receiver = self;
    v34.super_class = CarCardRoundedButton;
    [(CarCardRoundedButton *)&v34 imageRectForContentRect:x, y, width, height];
  }

  else
  {
    [currentImage size];
    v13 = 0.0;
    if (v14 < 41.0)
    {
      [v12 size];
      v13 = v15 * -0.5 + 20.5;
    }

    [v12 size];
    v17 = v16;
    v19 = v18;
    [(CarCardRoundedButton *)self titleRectForContentRect:x, y, width, height];
    MidY = CGRectGetMidY(v35);
    [v12 size];
    v22 = sub_100099504(v13, MidY + v21 * -0.5, v17, v19, x, y, width, height);
  }

  v26 = v22;
  v27 = v23;
  v28 = v24;
  v29 = v25;

  v30 = v26;
  v31 = v27;
  v32 = v28;
  v33 = v29;
  result.size.height = v33;
  result.size.width = v32;
  result.origin.y = v31;
  result.origin.x = v30;
  return result;
}

- (void)_commonInit
{
  v3 = objc_opt_class();
  if (v3)
  {
    [v3 _defaultButtonMetrics];
  }

  else
  {
    v19 = 0.0;
    v17 = 0u;
    v18 = 0u;
  }

  *&self->_buttonMetrics.cornerRadius = v17;
  *&self->_buttonMetrics.secondaryFontSize = v18;
  self->_buttonMetrics.buttonHeight = v19;
  cornerRadius = self->_buttonMetrics.cornerRadius;
  v5 = [(CarCardRoundedButton *)self layer:v17];
  [v5 setCornerRadius:cornerRadius];

  layer = [(CarCardRoundedButton *)self layer];
  [layer setMasksToBounds:1];

  [(CarCardRoundedButton *)self setContentHorizontalAlignment:0];
  [(CarCardRoundedButton *)self setContentVerticalAlignment:0];
  titleLabel = [(CarCardRoundedButton *)self titleLabel];
  [titleLabel setAccessibilityIdentifier:@"TitleLabel"];

  titleLabel2 = [(CarCardRoundedButton *)self titleLabel];
  [titleLabel2 setTextAlignment:4];

  titleLabel3 = [(CarCardRoundedButton *)self titleLabel];
  v10 = [UIFont systemFontOfSize:15.0 weight:UIFontWeightMedium];
  [titleLabel3 setFont:v10];

  imageView = [(CarCardRoundedButton *)self imageView];
  [imageView setAccessibilityIdentifier:@"ImageView"];

  imageView2 = [(CarCardRoundedButton *)self imageView];
  [imageView2 setContentMode:1];

  [(CarFocusableButton *)self setModifiesBackgroundColor:1];
  [(CarFocusableButton *)self setAdjustsImageWhenDisabled:0];
  [(CarFocusableButton *)self setAdjustsImageWhenHighlighted:0];
  v13 = +[UIColor labelColor];
  [(CarFocusableButton *)self setNonFocusedTintColor:v13];

  v14 = +[UIColor _carSystemFocusLabelColor];
  [(CarFocusableButton *)self setFocusedTintColor:v14];

  v15 = +[UIColor _carSystemQuaternaryColor];
  [(CarFocusableButton *)self setNonFocusedBackgroundColor:v15];

  v16 = +[UIColor _carSystemFocusColor];
  [(CarFocusableButton *)self setFocusedBackgroundColor:v16];
}

- (CarCardRoundedButton)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = CarCardRoundedButton;
  v3 = [(CarFocusableButton *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(CarCardRoundedButton *)v3 _commonInit];
  }

  return v4;
}

@end