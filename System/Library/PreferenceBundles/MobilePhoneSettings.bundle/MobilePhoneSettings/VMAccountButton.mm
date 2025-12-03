@interface VMAccountButton
+ (NSCache)imageCache;
+ (id)backgroundImageForSize:(CGSize)size state:(unint64_t)state;
+ (id)backgroundImageNameForSize:(CGSize)size state:(unint64_t)state;
- (CGSize)intrinsicContentSize;
- (VMAccountButton)initWithFrame:(CGRect)frame;
- (double)preferredIntrinsicContentSizeWidth;
- (double)titleLabelFirstBaselineAnchorLayoutConstraintConstant;
- (double)titleLabelLastBaselineAnchorLayoutConstraintConstant;
- (void)commonInit;
- (void)layoutSubviews;
@end

@implementation VMAccountButton

+ (id)backgroundImageNameForSize:(CGSize)size state:(unint64_t)state
{
  v6 = MEMORY[0x277CCACA8];
  v7 = NSStringFromCGSize(size);
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:state];
  v9 = [v6 stringWithFormat:@"<%@ backgroundImage, size=%@, state=%@>", self, v7, v8];

  return v9;
}

+ (id)backgroundImageForSize:(CGSize)size state:(unint64_t)state
{
  height = size.height;
  width = size.width;
  v7 = [self backgroundImageNameForSize:state state:?];
  imageCache = [self imageCache];
  v9 = [imageCache objectForKey:v7];

  if (!v9)
  {
    preferredFormat = [MEMORY[0x277D75568] preferredFormat];
    [preferredFormat setScale:0.0];
    v11 = [objc_alloc(MEMORY[0x277D75560]) initWithSize:preferredFormat format:{width, height}];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __48__VMAccountButton_backgroundImageForSize_state___block_invoke;
    v15[3] = &__block_descriptor_48_e40_v16__0__UIGraphicsImageRendererContext_8l;
    *&v15[4] = width;
    *&v15[5] = height;
    v12 = [v11 imageWithActions:v15];
    imageCache2 = [self imageCache];
    [imageCache2 setObject:v12 forKey:v7];
  }

  return v9;
}

void __48__VMAccountButton_backgroundImageForSize_state___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277D75348] dynamicSecondaryLabelColor];
  [v2 setStroke];

  v5.size.width = *(a1 + 32);
  v5.size.height = *(a1 + 40);
  v5.origin.x = 0.0;
  v5.origin.y = 0.0;
  v6 = CGRectInset(v5, 0.5, 0.5);
  v3 = [MEMORY[0x277D75208] bezierPathWithRoundedRect:v6.origin.x cornerRadius:{v6.origin.y, v6.size.width, v6.size.height, 7.5}];
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

uint64_t __29__VMAccountButton_imageCache__block_invoke()
{
  imageCache_imageCache = objc_alloc_init(MEMORY[0x277CBEA78]);

  return MEMORY[0x2821F96F8]();
}

- (VMAccountButton)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = VMAccountButton;
  v3 = [(VMAccountButton *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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
  titleLabel = [(VMAccountButton *)self titleLabel];
  telephonyUIBodyShortFont = [MEMORY[0x277D74300] telephonyUIBodyShortFont];
  [titleLabel setFont:telephonyUIBodyShortFont];

  [titleLabel setTextAlignment:1];
  dynamicSecondaryLabelColor = [MEMORY[0x277D75348] dynamicSecondaryLabelColor];
  [(VMAccountButton *)self setTitleColor:dynamicSecondaryLabelColor forState:0];
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
  titleLabel = [(VMAccountButton *)self titleLabel];
  font = [titleLabel font];
  fontDescriptor = [font fontDescriptor];
  v5 = [fontDescriptor objectForKey:*MEMORY[0x277D74378]];

  if (v5)
  {
    v6 = [MEMORY[0x277D75520] metricsForTextStyle:v5];
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
  titleLabel = [(VMAccountButton *)self titleLabel];
  font = [titleLabel font];
  fontDescriptor = [font fontDescriptor];
  v5 = [fontDescriptor objectForKey:*MEMORY[0x277D74378]];

  if (v5)
  {
    v6 = [MEMORY[0x277D75520] metricsForTextStyle:v5];
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