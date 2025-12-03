@interface ASDRequestOptions
- (ASDRequestOptions)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation ASDRequestOptions

- (id)copyWithZone:(_NSZone *)zone
{
  v3 = [ASDRequestOptions allocWithZone:zone];

  return [(ASDRequestOptions *)v3 init];
}

- (ASDRequestOptions)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = ASDRequestOptions;
  return [(ASDRequestOptions *)&v4 init];
}

@end