@interface WKWebAllowDenyPolicyListener
- (WKWebAllowDenyPolicyListener)initWithCompletionHandler:(void *)handler;
@end

@implementation WKWebAllowDenyPolicyListener

- (WKWebAllowDenyPolicyListener)initWithCompletionHandler:(void *)handler
{
  v9.receiver = self;
  v9.super_class = WKWebAllowDenyPolicyListener;
  v4 = [(WKWebAllowDenyPolicyListener *)&v9 init];
  v5 = v4;
  if (v4)
  {
    v6 = *handler;
    *handler = 0;
    ptr = v4->_completionHandler.m_callableWrapper.__ptr_;
    v5->_completionHandler.m_callableWrapper.__ptr_ = v6;
    if (ptr)
    {
      (*(*ptr + 8))(ptr);
    }
  }

  return v5;
}

@end