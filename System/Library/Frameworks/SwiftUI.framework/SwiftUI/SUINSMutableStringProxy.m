@interface SUINSMutableStringProxy
- (SUINSMutableStringProxy)initWithImplementation:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation SUINSMutableStringProxy

- (SUINSMutableStringProxy)initWithImplementation:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SUINSMutableStringProxy;
  v6 = [(SUINSMutableStringProxy *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->base, a3);
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [SUINSMutableStringProxy allocWithZone:a3];
  v5 = [(SUINSMutableStringImplementation *)self->base copy];
  v6 = [(SUINSMutableStringProxy *)v4 initWithImplementation:v5];

  return v6;
}

@end