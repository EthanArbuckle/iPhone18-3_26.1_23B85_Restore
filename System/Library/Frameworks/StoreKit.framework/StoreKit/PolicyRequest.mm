@interface PolicyRequest
- (PolicyRequest)init;
- (PolicyRequest)initWithCoder:(id)coder;
@end

@implementation PolicyRequest

- (PolicyRequest)init
{
  v3.receiver = self;
  v3.super_class = PolicyRequest;
  return [(PolicyRequest *)&v3 init];
}

- (PolicyRequest)initWithCoder:(id)coder
{
  v4 = objc_alloc_init(PolicyRequest);

  return v4;
}

@end