@interface _WKPublicKeyCredentialEntity
- (_WKPublicKeyCredentialEntity)initWithName:(id)a3;
- (void)dealloc;
@end

@implementation _WKPublicKeyCredentialEntity

- (_WKPublicKeyCredentialEntity)initWithName:(id)a3
{
  v7.receiver = self;
  v7.super_class = _WKPublicKeyCredentialEntity;
  v4 = [(_WKPublicKeyCredentialEntity *)&v7 init];
  v5 = v4;
  if (v4)
  {
    [(_WKPublicKeyCredentialEntity *)v4 setName:a3];
  }

  return v5;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = _WKPublicKeyCredentialEntity;
  [(_WKPublicKeyCredentialEntity *)&v3 dealloc];
}

@end