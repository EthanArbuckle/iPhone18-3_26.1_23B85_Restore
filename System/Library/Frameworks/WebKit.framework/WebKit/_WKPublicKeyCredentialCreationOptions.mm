@interface _WKPublicKeyCredentialCreationOptions
- (_WKPublicKeyCredentialCreationOptions)initWithRelyingParty:(id)party user:(id)user publicKeyCredentialParamaters:(id)paramaters;
- (void)dealloc;
@end

@implementation _WKPublicKeyCredentialCreationOptions

- (_WKPublicKeyCredentialCreationOptions)initWithRelyingParty:(id)party user:(id)user publicKeyCredentialParamaters:(id)paramaters
{
  v11.receiver = self;
  v11.super_class = _WKPublicKeyCredentialCreationOptions;
  v8 = [(_WKPublicKeyCredentialCreationOptions *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(_WKPublicKeyCredentialCreationOptions *)v8 setRelyingParty:party];
    [(_WKPublicKeyCredentialCreationOptions *)v9 setUser:user];
    [(_WKPublicKeyCredentialCreationOptions *)v9 setPublicKeyCredentialParamaters:paramaters];
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