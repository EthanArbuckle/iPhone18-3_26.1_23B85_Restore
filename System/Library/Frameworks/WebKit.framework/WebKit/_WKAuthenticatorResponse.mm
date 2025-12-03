@interface _WKAuthenticatorResponse
- (_WKAuthenticatorResponse)initWithClientDataJSON:(id)n rawId:(id)id extensionOutputsCBOR:(id)r attachment:(int64_t)attachment;
- (_WKAuthenticatorResponse)initWithClientDataJSON:(id)n rawId:(id)id extensions:(void *)extensions attachment:(int64_t)attachment;
- (void)dealloc;
@end

@implementation _WKAuthenticatorResponse

- (_WKAuthenticatorResponse)initWithClientDataJSON:(id)n rawId:(id)id extensions:(void *)extensions attachment:(int64_t)attachment
{
  v14.receiver = self;
  v14.super_class = _WKAuthenticatorResponse;
  v10 = [(_WKAuthenticatorResponse *)&v14 init];
  if (v10)
  {
    v10->_clientDataJSON = n;
    v10->_rawId = id;
    v11 = *extensions;
    *extensions = 0;
    m_ptr = v10->_extensions.m_ptr;
    v10->_extensions.m_ptr = v11;
    if (m_ptr)
    {
    }

    v10->_attachment = attachment;
  }

  return v10;
}

- (_WKAuthenticatorResponse)initWithClientDataJSON:(id)n rawId:(id)id extensionOutputsCBOR:(id)r attachment:(int64_t)attachment
{
  v12.receiver = self;
  v12.super_class = _WKAuthenticatorResponse;
  v10 = [(_WKAuthenticatorResponse *)&v12 init];
  if (v10)
  {
    v10->_clientDataJSON = n;
    v10->_rawId = id;
    v10->_extensionOutputsCBOR = [r copy];
    v10->_attachment = attachment;
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