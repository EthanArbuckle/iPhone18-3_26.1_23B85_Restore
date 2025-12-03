@interface SUINSStringProxy
- (SUINSStringProxy)initWithImplementation:(id)implementation;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation SUINSStringProxy

- (SUINSStringProxy)initWithImplementation:(id)implementation
{
  implementationCopy = implementation;
  v9.receiver = self;
  v9.super_class = SUINSStringProxy;
  v6 = [(SUINSStringProxy *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->base, implementation);
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [SUINSStringProxy allocWithZone:zone];
  v5 = [(SUINSStringImplementation *)self->base copy];
  v6 = [(SUINSStringProxy *)v4 initWithImplementation:v5];

  return v6;
}

@end