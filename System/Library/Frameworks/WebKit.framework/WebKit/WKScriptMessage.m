@interface WKScriptMessage
- (id).cxx_construct;
- (id)_initWithBody:(id)a3 webView:(id)a4 frameInfo:(id)a5 name:(id)a6 world:(id)a7;
@end

@implementation WKScriptMessage

- (id)_initWithBody:(id)a3 webView:(id)a4 frameInfo:(id)a5 name:(id)a6 world:(id)a7
{
  v22.receiver = self;
  v22.super_class = WKScriptMessage;
  v12 = [(WKScriptMessage *)&v22 init];
  if (v12)
  {
    v13 = [a3 copy];
    m_ptr = v12->_body.m_ptr;
    v12->_body.m_ptr = v13;
    if (m_ptr)
    {
    }

    objc_storeWeak(&v12->_webView.m_weakReference, a4);
    if (a5)
    {
      v15 = a5;
    }

    v16 = v12->_frameInfo.m_ptr;
    v12->_frameInfo.m_ptr = a5;
    if (v16)
    {
    }

    v17 = [a6 copy];
    v18 = v12->_name.m_ptr;
    v12->_name.m_ptr = v17;
    if (v18)
    {
    }

    if (a7)
    {
      v19 = a7;
    }

    v20 = v12->_world.m_ptr;
    v12->_world.m_ptr = a7;
    if (v20)
    {
    }
  }

  return v12;
}

- (id).cxx_construct
{
  *(self + 5) = 0;
  *(self + 24) = 0u;
  *(self + 8) = 0u;
  return self;
}

@end