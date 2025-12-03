@interface SUINSMutableStringProxy
- (SUINSMutableStringProxy)initWithImplementation:(id)implementation;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation SUINSMutableStringProxy

- (SUINSMutableStringProxy)initWithImplementation:(id)implementation
{
  implementationCopy = implementation;
  v9.receiver = self;
  v9.super_class = SUINSMutableStringProxy;
  v6 = [(SUINSMutableStringProxy *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->base, implementation);
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [SUINSMutableStringProxy allocWithZone:zone];
  v5 = [(SUINSMutableStringImplementation *)self->base copy];
  v6 = [(SUINSMutableStringProxy *)v4 initWithImplementation:v5];

  return v6;
}

@end