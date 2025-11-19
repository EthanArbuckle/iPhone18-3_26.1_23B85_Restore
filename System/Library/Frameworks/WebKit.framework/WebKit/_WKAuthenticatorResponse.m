@interface _WKAuthenticatorResponse
- (_WKAuthenticatorResponse)initWithClientDataJSON:(id)a3 rawId:(id)a4 extensionOutputsCBOR:(id)a5 attachment:(int64_t)a6;
- (_WKAuthenticatorResponse)initWithClientDataJSON:(id)a3 rawId:(id)a4 extensions:(void *)a5 attachment:(int64_t)a6;
- (void)dealloc;
@end

@implementation _WKAuthenticatorResponse

- (_WKAuthenticatorResponse)initWithClientDataJSON:(id)a3 rawId:(id)a4 extensions:(void *)a5 attachment:(int64_t)a6
{
  v14.receiver = self;
  v14.super_class = _WKAuthenticatorResponse;
  v10 = [(_WKAuthenticatorResponse *)&v14 init];
  if (v10)
  {
    v10->_clientDataJSON = a3;
    v10->_rawId = a4;
    v11 = *a5;
    *a5 = 0;
    m_ptr = v10->_extensions.m_ptr;
    v10->_extensions.m_ptr = v11;
    if (m_ptr)
    {
    }

    v10->_attachment = a6;
  }

  return v10;
}

- (_WKAuthenticatorResponse)initWithClientDataJSON:(id)a3 rawId:(id)a4 extensionOutputsCBOR:(id)a5 attachment:(int64_t)a6
{
  v12.receiver = self;
  v12.super_class = _WKAuthenticatorResponse;
  v10 = [(_WKAuthenticatorResponse *)&v12 init];
  if (v10)
  {
    v10->_clientDataJSON = a3;
    v10->_rawId = a4;
    v10->_extensionOutputsCBOR = [a5 copy];
    v10->_attachment = a6;
  }

  return v10;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = _WKAuthenticatorResponse;
  [(_WKAuthenticatorResponse *)&v3 dealloc];
}

@end