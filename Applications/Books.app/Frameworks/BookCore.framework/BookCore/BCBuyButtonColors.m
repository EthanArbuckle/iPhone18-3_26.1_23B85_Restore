@interface BCBuyButtonColors
- (BCBuyButtonColors)initWithForegroundColor:(id)a3 backgroundColor:(id)a4;
@end

@implementation BCBuyButtonColors

- (BCBuyButtonColors)initWithForegroundColor:(id)a3 backgroundColor:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = BCBuyButtonColors;
  v9 = [(BCBuyButtonColors *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_foregroundColor, a3);
    objc_storeStrong(&v10->_backgroundColor, a4);
  }

  return v10;
}

@end