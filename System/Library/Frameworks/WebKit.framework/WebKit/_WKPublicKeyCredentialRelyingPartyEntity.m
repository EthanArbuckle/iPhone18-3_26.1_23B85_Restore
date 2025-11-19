@interface _WKPublicKeyCredentialRelyingPartyEntity
- (_WKPublicKeyCredentialRelyingPartyEntity)initWithName:(id)a3;
- (void)dealloc;
@end

@implementation _WKPublicKeyCredentialRelyingPartyEntity

- (_WKPublicKeyCredentialRelyingPartyEntity)initWithName:(id)a3
{
  v4.receiver = self;
  v4.super_class = _WKPublicKeyCredentialRelyingPartyEntity;
  return [(_WKPublicKeyCredentialEntity *)&v4 initWithName:a3];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = _WKPublicKeyCredentialRelyingPartyEntity;
  [(_WKPublicKeyCredentialEntity *)&v3 dealloc];
}

@end