@interface ASCICloudKeychainLoginChoice
- (ASCICloudKeychainLoginChoice)initWithCoder:(id)a3;
- (BOOL)isEqual:(id)a3;
@end

@implementation ASCICloudKeychainLoginChoice

- (BOOL)isEqual:(id)a3
{
  v3 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (ASCICloudKeychainLoginChoice)initWithCoder:(id)a3
{
  v4.receiver = self;
  v4.super_class = ASCICloudKeychainLoginChoice;
  return [(ASCICloudKeychainLoginChoice *)&v4 init];
}

@end