@interface _WKAuthenticatorAssertionResponse
- (_WKAuthenticatorAssertionResponse)initWithClientDataJSON:(id)n rawId:(id)id extensionOutputsCBOR:(id)r authenticatorData:(id)data signature:(id)signature userHandle:(id)handle attachment:(int64_t)attachment;
- (_WKAuthenticatorAssertionResponse)initWithClientDataJSON:(id)n rawId:(id)id extensions:(void *)extensions authenticatorData:(id)data signature:(id)signature userHandle:(id)handle attachment:(int64_t)attachment;
- (void)dealloc;
@end

@implementation _WKAuthenticatorAssertionResponse

- (_WKAuthenticatorAssertionResponse)initWithClientDataJSON:(id)n rawId:(id)id extensions:(void *)extensions authenticatorData:(id)data signature:(id)signature userHandle:(id)handle attachment:(int64_t)attachment
{
  v14.receiver = self;
  v14.super_class = _WKAuthenticatorAssertionResponse;
  v12 = [(_WKAuthenticatorResponse *)&v14 initWithClientDataJSON:n rawId:id extensions:extensions attachment:attachment];
  if (v12)
  {
    v12->_authenticatorData = data;
    v12->_signature = signature;
    v12->_userHandle = handle;
  }

  return v12;
}

- (_WKAuthenticatorAssertionResponse)initWithClientDataJSON:(id)n rawId:(id)id extensionOutputsCBOR:(id)r authenticatorData:(id)data signature:(id)signature userHandle:(id)handle attachment:(int64_t)attachment
{
  v14.receiver = self;
  v14.super_class = _WKAuthenticatorAssertionResponse;
  v12 = [(_WKAuthenticatorResponse *)&v14 initWithClientDataJSON:n rawId:id extensionOutputsCBOR:r attachment:attachment];
  if (v12)
  {
    v12->_authenticatorData = data;
    v12->_signature = signature;
    v12->_userHandle = handle;
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