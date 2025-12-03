@interface CNSmartPropertyFetcher
- (CNSmartPropertyFetcher)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation CNSmartPropertyFetcher

- (CNSmartPropertyFetcher)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = CNSmartPropertyFetcher;
  return [(CNSmartPropertyFetcher *)&v4 init];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v3 = objc_opt_class();

  return objc_alloc_init(v3);
}

@end