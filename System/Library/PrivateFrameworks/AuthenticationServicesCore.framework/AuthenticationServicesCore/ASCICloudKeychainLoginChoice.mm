@interface ASCICloudKeychainLoginChoice
- (ASCICloudKeychainLoginChoice)initWithCoder:(id)coder;
- (BOOL)isEqual:(id)equal;
@end

@implementation ASCICloudKeychainLoginChoice

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (ASCICloudKeychainLoginChoice)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = ASCICloudKeychainLoginChoice;
  return [(ASCICloudKeychainLoginChoice *)&v4 init];
}

@end