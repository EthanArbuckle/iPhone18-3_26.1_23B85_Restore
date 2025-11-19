@interface BCBuyButtonConfiguration
- (BCBuyButtonConfiguration)init;
@end

@implementation BCBuyButtonConfiguration

- (BCBuyButtonConfiguration)init
{
  v7.receiver = self;
  v7.super_class = BCBuyButtonConfiguration;
  v2 = [(BCBuyButtonConfiguration *)&v7 init];
  v3 = v2;
  if (v2)
  {
    buyString = v2->_buyString;
    v2->_buyString = &stru_2D2930;

    v5 = +[UIColor clearColor];
    v3->_backgroundColor = CGColorRetain([v5 CGColor]);
  }

  return v3;
}

@end