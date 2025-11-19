@interface VMAccountButton
+ (NSCache)imageCache;
+ (id)backgroundImageForSize:(CGSize)a3 state:(unint64_t)a4;
+ (id)backgroundImageNameForSize:(CGSize)a3 state:(unint64_t)a4;
- (CGSize)intrinsicContentSize;
- (VMAccountButton)initWithFrame:(CGRect)a3;
- (double)preferredIntrinsicContentSizeWidth;
- (double)titleLabelFirstBaselineAnchorLayoutConstraintConstant;
- (double)titleLabelLastBaselineAnchorLayoutConstraintConstant;
- (void)commonInit;
- (void)layoutSubviews;
@end

@implementation VMAccountButton

+ (id)backgroundImageNameForSize:(CGSize)a3 state:(unint64_t)a4
{
  v6 = NSStringFromCGSize(a3);
  v7 = [NSNumber numberWithUnsignedInteger:a4];
  v8 = [NSString stringWithFormat:@"<%@ backgroundImage, size=%@, state=%@>", a1, v6, v7];

  return v8;
}

+ (id)backgroundImageForSize:(CGSize)a3 state:(unint64_t)a4
{
  height = a3.height;
  width = a3.width;
  v7 = [a1 backgroundImageNameForSize:a4 state:?];
  v8 = [a1 imageCache];
  v9 = [v8 objectForKey:v7];

  if (!v9)
  {
    v10 = +[UIGraphicsImageRendererFormat preferredFormat];
    [v10 setScale:0.0];
    v11 = [[UIGraphicsImageRenderer alloc] initWithSize:v10 format:{width, height}];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = __48__VMAccountButton_backgroundImageForSize_state___block_invoke;
    v15[3] = &__block_descriptor_48_e40_v16__0__UIGraphicsImageRendererContext_8l;
    *&v15[4] = width;
    *&v15[5] = height;
    v12 = [v11 imageWithActions:v15];
    v13 = [a1 imageCache];
    [v13 setObject:v12 forKey:v7];
  }

  return v9;
}

void __48__VMAccountButton_backgroundImageForSize_state___block_invoke(uint64_t a1)
{
  v2 = +[UIColor dynamicSecondaryLabelColor];
  [v2 setStroke];

  v5.size.width = *(a1 + 32);
  v5.size.height = *(a1 + 40);
  v5.origin.x = 0.0;
  v5.origin.y = 0.0;
  v6 = CGRectInset(v5, 0.5, 0.5);
  v3 = [UIBezierPath bezierPathWithRoundedRect:v6.origin.x cornerRadius:v6.origin.y, v6.size.width, v6.size.height, 7.5];
  [v3 stroke];
}

+ (NSCache)imageCache
{
  if (imageCache_onceToken != -1)
  {
    +[VMAccountButton imageCache];
  }

  v3 = imageCache_imageCache;

  return v3;
}

void __29__VMAccountButton_imageCache__block_invoke(id a1)
{
  imageCache_imageCache = objc_alloc_init(NSCache);

  _objc_release_x1();
}

- (VMAccountButton)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = VMAccountButton;
  v3 = [(VMAccountButton *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v3->_preferredIntrinsicContentSizeWidth = 161.0;
    [(VMAccountButton *)v3 commonInit];
  }

  return v4;
}

- (void)commonInit
{
  [(VMAccountButton *)self setContentEdgeInsets:0.0, 16.0, 0.0, 16.0];
  [(VMAccountButton *)self setContentHorizontalAlignment:0];
  v5 = [(VMAccountButton *)self titleLabel];
  v3 = +[UIFont telephonyUIBodyShortFont];
  [v5 setFont:v3];

  [v5 setTextAlignment:1];
  v4 = +[UIColor dynamicSecondaryLabelColor];
  [(VMAccountButton *)self setTitleColor:v4 forState:0];
}

- (double)preferredIntrinsicContentSizeWidth
{
  preferredIntrinsicContentSizeWidth = self->_preferredIntrinsicContentSizeWidth;
  [(VMAccountButton *)self frame];
  if (preferredIntrinsicContentSizeWidth >= v4)
  {
    result = self->_preferredIntrinsicContentSizeWidth;
  }

  else
  {
    [(VMAccountButton *)self frame];
    result = v5;
    self->_preferredIntrinsicContentSizeWidth = v5;
  }

  if (result < 161.0)
  {
    self->_preferredIntrinsicContentSizeWidth = 161.0;
    return 161.0;
  }

  return result;
}

- (CGSize)intrinsicContentSize
{
  [(VMAccountButton *)self titleLabelFirstBaselineAnchorLayoutConstraintConstant];
  v4 = v3;
  [(VMAccountButton *)self titleLabelLastBaselineAnchorLayoutConstraintConstant];
  v6 = v4 + v5;
  [(VMAccountButton *)self preferredIntrinsicContentSizeWidth];
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (void)layoutSubviews
{
  v3 = objc_opt_class();
  [(VMAccountButton *)self frame];
  v6 = [v3 backgroundImageForSize:0 state:{v4, v5}];
  if (v6)
  {
    [(VMAccountButton *)self setBackgroundImage:v6 forState:0];
  }

  v7.receiver = self;
  v7.super_class = VMAccountButton;
  [(VMAccountButton *)&v7 layoutSubviews];
}

- (double)titleLabelFirstBaselineAnchorLayoutConstraintConstant
{
  v2 = [(VMAccountButton *)self titleLabel];
  v3 = [v2 font];
  v4 = [v3 fontDescriptor];
  v5 = [v4 objectForKey:UIFontDescriptorTextStyleAttribute];

  if (v5)
  {
    v6 = [UIFontMetrics metricsForTextStyle:v5];
    [v6 scaledValueForValue:24.0];
    v8 = ceil(v7);
  }

  else
  {
    v8 = 24.0;
  }

  return v8;
}

- (double)titleLabelLastBaselineAnchorLayoutConstraintConstant
{
  v2 = [(VMAccountButton *)self titleLabel];
  v3 = [v2 font];
  v4 = [v3 fontDescriptor];
  v5 = [v4 objectForKey:UIFontDescriptorTextStyleAttribute];

  if (v5)
  {
    v6 = [UIFontMetrics metricsForTextStyle:v5];
    [v6 scaledValueForValue:11.0];
    v8 = ceil(v7);
  }

  else
  {
    v8 = 11.0;
  }

  return v8;
}

@end