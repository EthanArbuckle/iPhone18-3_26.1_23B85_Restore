@interface TKTokenKeychainItem
- (void)setName:(id)name;
@end

@implementation TKTokenKeychainItem

- (void)setName:(id)name
{
  nameCopy = name;
  label = [(TKTokenKeychainItem *)self label];

  if (label)
  {
    label2 = [(TKTokenKeychainItem *)self label];
    v6 = [NSString stringWithFormat:@"%@ (%@)", nameCopy, label2];
    [(TKTokenKeychainItem *)self setLabel:v6];
  }

  else
  {
    [(TKTokenKeychainItem *)self setLabel:nameCopy];
  }
}

@end