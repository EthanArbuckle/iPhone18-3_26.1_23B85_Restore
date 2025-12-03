@interface WKScriptMessage
- (id).cxx_construct;
- (id)_initWithBody:(id)body webView:(id)view frameInfo:(id)info name:(id)name world:(id)world;
@end

@implementation WKScriptMessage

- (id)_initWithBody:(id)body webView:(id)view frameInfo:(id)info name:(id)name world:(id)world
{
  v22.receiver = self;
  v22.super_class = WKScriptMessage;
  v12 = [(WKScriptMessage *)&v22 init];
  if (v12)
  {
    v13 = [body copy];
    m_ptr = v12->_body.m_ptr;
    v12->_body.m_ptr = v13;
    if (m_ptr)
    {
    }

    objc_storeWeak(&v12->_webView.m_weakReference, view);
    if (info)
    {
      infoCopy = info;
    }

    v16 = v12->_frameInfo.m_ptr;
    v12->_frameInfo.m_ptr = info;
    if (v16)
    {
    }

    v17 = [name copy];
    v18 = v12->_name.m_ptr;
    v12->_name.m_ptr = v17;
    if (v18)
    {
    }

    if (world)
    {
      worldCopy = world;
    }

    v20 = v12->_world.m_ptr;
    v12->_world.m_ptr = world;
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