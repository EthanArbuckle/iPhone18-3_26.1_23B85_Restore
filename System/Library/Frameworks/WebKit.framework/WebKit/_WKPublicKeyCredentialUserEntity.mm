@interface _WKPublicKeyCredentialUserEntity
- (_WKPublicKeyCredentialUserEntity)initWithName:(id)name identifier:(id)identifier displayName:(id)displayName;
- (void)dealloc;
@end

@implementation _WKPublicKeyCredentialUserEntity

- (_WKPublicKeyCredentialUserEntity)initWithName:(id)name identifier:(id)identifier displayName:(id)displayName
{
  v10.receiver = self;
  v10.super_class = _WKPublicKeyCredentialUserEntity;
  v7 = [(_WKPublicKeyCredentialEntity *)&v10 initWithName:name];
  v8 = v7;
  if (v7)
  {
    [(_WKPublicKeyCredentialUserEntity *)v7 setIdentifier:identifier];
    [(_WKPublicKeyCredentialUserEntity *)v8 setDisplayName:displayName];
  }

  return v8;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = _WKPublicKeyCredentialUserEntity;
  [(_WKPublicKeyCredentialEntity *)&v3 dealloc];
}

@end