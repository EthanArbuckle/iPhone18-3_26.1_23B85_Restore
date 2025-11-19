@interface SKStorefront
- (SKStorefront)initWithIdentifier:(id)a3 countryCode:(id)a4;
@end

@implementation SKStorefront

- (SKStorefront)initWithIdentifier:(id)a3 countryCode:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = SKStorefront;
  v9 = [(SKStorefront *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_countryCode, a4);
    objc_storeStrong(&v10->_identifier, a3);
  }

  return v10;
}

@end