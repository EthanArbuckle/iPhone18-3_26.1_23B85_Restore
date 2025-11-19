@interface SUINSStringProxy
- (SUINSStringProxy)initWithImplementation:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation SUINSStringProxy

- (SUINSStringProxy)initWithImplementation:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SUINSStringProxy;
  v6 = [(SUINSStringProxy *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->base, a3);
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [SUINSStringProxy allocWithZone:a3];
  v5 = [(SUINSStringImplementation *)self->base copy];
  v6 = [(SUINSStringProxy *)v4 initWithImplementation:v5];

  return v6;
}

@end