@interface _WKPublicKeyCredentialRequestOptions
- (_WKPublicKeyCredentialRequestOptions)init;
- (void)dealloc;
@end

@implementation _WKPublicKeyCredentialRequestOptions

- (_WKPublicKeyCredentialRequestOptions)init
{
  v5.receiver = self;
  v5.super_class = _WKPublicKeyCredentialRequestOptions;
  v2 = [(_WKPublicKeyCredentialRequestOptions *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(_WKPublicKeyCredentialRequestOptions *)v2 setUserVerification:1];
    [(_WKPublicKeyCredentialRequestOptions *)v3 setAuthenticatorAttachment:0];
  }

  return v3;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = _WKPublicKeyCredentialRequestOptions;
  [(_WKPublicKeyCredentialRequestOptions *)&v3 dealloc];
}

@end