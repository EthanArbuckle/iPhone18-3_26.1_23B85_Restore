@interface BCBuyButtonColors
- (BCBuyButtonColors)initWithForegroundColor:(id)color backgroundColor:(id)backgroundColor;
@end

@implementation BCBuyButtonColors

- (BCBuyButtonColors)initWithForegroundColor:(id)color backgroundColor:(id)backgroundColor
{
  colorCopy = color;
  backgroundColorCopy = backgroundColor;
  v12.receiver = self;
  v12.super_class = BCBuyButtonColors;
  v9 = [(BCBuyButtonColors *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_foregroundColor, color);
    objc_storeStrong(&v10->_backgroundColor, backgroundColor);
  }

  return v10;
}

@end