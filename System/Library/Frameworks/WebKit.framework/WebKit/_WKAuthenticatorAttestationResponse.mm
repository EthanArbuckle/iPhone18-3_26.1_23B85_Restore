@interface _WKAuthenticatorAttestationResponse
- (_WKAuthenticatorAttestationResponse)initWithClientDataJSON:(id)n rawId:(id)id extensionOutputsCBOR:(id)r attestationObject:(id)object attachment:(int64_t)attachment transports:(id)transports;
- (_WKAuthenticatorAttestationResponse)initWithClientDataJSON:(id)n rawId:(id)id extensions:(void *)extensions attestationObject:(id)object attachment:(int64_t)attachment transports:(id)transports;
- (void)dealloc;
@end

@implementation _WKAuthenticatorAttestationResponse

- (_WKAuthenticatorAttestationResponse)initWithClientDataJSON:(id)n rawId:(id)id extensions:(void *)extensions attestationObject:(id)object attachment:(int64_t)attachment transports:(id)transports
{
  v12.receiver = self;
  v12.super_class = _WKAuthenticatorAttestationResponse;
  v10 = [(_WKAuthenticatorResponse *)&v12 initWithClientDataJSON:n rawId:id extensions:extensions attachment:attachment];
  if (v10)
  {
    v10->_attestationObject = object;
    v10->_transports = [transports copy];
  }

  return v10;
}

- (_WKAuthenticatorAttestationResponse)initWithClientDataJSON:(id)n rawId:(id)id extensionOutputsCBOR:(id)r attestationObject:(id)object attachment:(int64_t)attachment transports:(id)transports
{
  v12.receiver = self;
  v12.super_class = _WKAuthenticatorAttestationResponse;
  v10 = [(_WKAuthenticatorResponse *)&v12 initWithClientDataJSON:n rawId:id extensionOutputsCBOR:r attachment:attachment];
  if (v10)
  {
    v10->_attestationObject = object;
    v10->_transports = [transports copy];
  }

  return v10;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = _WKAuthenticatorAttestationResponse;
  [(_WKAuthenticatorResponse *)&v3 dealloc];
}

@end