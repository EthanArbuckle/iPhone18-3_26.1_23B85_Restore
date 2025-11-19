@interface _WKAuthenticatorAssertionResponse
- (_WKAuthenticatorAssertionResponse)initWithClientDataJSON:(id)a3 rawId:(id)a4 extensionOutputsCBOR:(id)a5 authenticatorData:(id)a6 signature:(id)a7 userHandle:(id)a8 attachment:(int64_t)a9;
- (_WKAuthenticatorAssertionResponse)initWithClientDataJSON:(id)a3 rawId:(id)a4 extensions:(void *)a5 authenticatorData:(id)a6 signature:(id)a7 userHandle:(id)a8 attachment:(int64_t)a9;
- (void)dealloc;
@end

@implementation _WKAuthenticatorAssertionResponse

- (_WKAuthenticatorAssertionResponse)initWithClientDataJSON:(id)a3 rawId:(id)a4 extensions:(void *)a5 authenticatorData:(id)a6 signature:(id)a7 userHandle:(id)a8 attachment:(int64_t)a9
{
  v14.receiver = self;
  v14.super_class = _WKAuthenticatorAssertionResponse;
  v12 = [(_WKAuthenticatorResponse *)&v14 initWithClientDataJSON:a3 rawId:a4 extensions:a5 attachment:a9];
  if (v12)
  {
    v12->_authenticatorData = a6;
    v12->_signature = a7;
    v12->_userHandle = a8;
  }

  return v12;
}

- (_WKAuthenticatorAssertionResponse)initWithClientDataJSON:(id)a3 rawId:(id)a4 extensionOutputsCBOR:(id)a5 authenticatorData:(id)a6 signature:(id)a7 userHandle:(id)a8 attachment:(int64_t)a9
{
  v14.receiver = self;
  v14.super_class = _WKAuthenticatorAssertionResponse;
  v12 = [(_WKAuthenticatorResponse *)&v14 initWithClientDataJSON:a3 rawId:a4 extensionOutputsCBOR:a5 attachment:a9];
  if (v12)
  {
    v12->_authenticatorData = a6;
    v12->_signature = a7;
    v12->_userHandle = a8;
  }

  return v12;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = _WKAuthenticatorAssertionResponse;
  [(_WKAuthenticatorResponse *)&v3 dealloc];
}

@end