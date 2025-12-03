@interface SKStorefront
- (SKStorefront)initWithIdentifier:(id)identifier countryCode:(id)code;
@end

@implementation SKStorefront

- (SKStorefront)initWithIdentifier:(id)identifier countryCode:(id)code
{
  identifierCopy = identifier;
  codeCopy = code;
  v12.receiver = self;
  v12.super_class = SKStorefront;
  v9 = [(SKStorefront *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_countryCode, code);
    objc_storeStrong(&v10->_identifier, identifier);
  }

  return v10;
}

@end