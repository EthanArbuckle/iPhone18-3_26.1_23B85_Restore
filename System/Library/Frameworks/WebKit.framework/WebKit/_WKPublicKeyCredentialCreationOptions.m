@interface _WKPublicKeyCredentialCreationOptions
- (_WKPublicKeyCredentialCreationOptions)initWithRelyingParty:(id)a3 user:(id)a4 publicKeyCredentialParamaters:(id)a5;
- (void)dealloc;
@end

@implementation _WKPublicKeyCredentialCreationOptions

- (_WKPublicKeyCredentialCreationOptions)initWithRelyingParty:(id)a3 user:(id)a4 publicKeyCredentialParamaters:(id)a5
{
  v11.receiver = self;
  v11.super_class = _WKPublicKeyCredentialCreationOptions;
  v8 = [(_WKPublicKeyCredentialCreationOptions *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(_WKPublicKeyCredentialCreationOptions *)v8 setRelyingParty:a3];
    [(_WKPublicKeyCredentialCreationOptions *)v9 setUser:a4];
    [(_WKPublicKeyCredentialCreationOptions *)v9 setPublicKeyCredentialParamaters:a5];
  }

  return v9;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = _WKPublicKeyCredentialCreationOptions;
  [(_WKPublicKeyCredentialCreationOptions *)&v3 dealloc];
}

@end