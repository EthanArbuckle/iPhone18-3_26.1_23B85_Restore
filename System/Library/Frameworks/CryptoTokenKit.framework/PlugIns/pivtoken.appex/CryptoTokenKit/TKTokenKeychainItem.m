@interface TKTokenKeychainItem
- (void)setName:(id)a3;
@end

@implementation TKTokenKeychainItem

- (void)setName:(id)a3
{
  v7 = a3;
  v4 = [(TKTokenKeychainItem *)self label];

  if (v4)
  {
    v5 = [(TKTokenKeychainItem *)self label];
    v6 = [NSString stringWithFormat:@"%@ (%@)", v7, v5];
    [(TKTokenKeychainItem *)self setLabel:v6];
  }

  else
  {
    [(TKTokenKeychainItem *)self setLabel:v7];
  }
}

@end