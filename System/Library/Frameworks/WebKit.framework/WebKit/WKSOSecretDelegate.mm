@interface WKSOSecretDelegate
- (WKSOSecretDelegate)initWithSession:(void *)session;
- (id).cxx_construct;
- (void)webView:(id)view decidePolicyForNavigationAction:(id)action decisionHandler:(id)handler;
- (void)webView:(id)view didFinishNavigation:(id)navigation;
- (void)webViewDidClose:(id)close;
@end

@implementation WKSOSecretDelegate

- (WKSOSecretDelegate)initWithSession:(void *)session
{
  v10.receiver = self;
  v10.super_class = WKSOSecretDelegate;
  v4 = [(WKSOSecretDelegate *)&v10 init];
  if (v4)
  {
    v5 = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::NetworkDataTask,(WTF::DestructionThread)1>::controlBlock(session + 1);
    v7 = WTF::ThreadSafeWeakPtrControlBlock::weakRef(v5);
    m_ptr = v4->_weakSession.m_controlBlock.m_ptr;
    v4->_weakSession.m_controlBlock.m_ptr = v7;
    if (m_ptr)
    {
      WTF::ThreadSafeWeakPtrControlBlock::weakDeref(m_ptr, v6);
    }

    v4->_weakSession.m_objectOfCorrectType.m_ptr = session;
    v4->_isFirstNavigation = 1;
  }

  return v4;
}

- (void)webViewDidClose:(id)close
{
  m_ptr = self->_weakSession.m_controlBlock.m_ptr;
  if (m_ptr)
  {
    WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::LibWebRTCCodecsProxy>(&v6, m_ptr, self->_weakSession.m_objectOfCorrectType.m_ptr);
    v5 = v6;
    if (v6)
    {
      WebKit::PopUpSOAuthorizationSession::close(v6, close);

      WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::SOAuthorizationSession,(WTF::DestructionThread)2>::deref(v5 + 1);
    }
  }
}

- (void)webView:(id)view decidePolicyForNavigationAction:(id)action decisionHandler:(id)handler
{
  if (self->_isFirstNavigation)
  {
    v5 = 0;
    self->_isFirstNavigation = 0;
  }

  else
  {
    v5 = 3;
  }

  (*(handler + 2))(handler, v5);
}

- (void)webView:(id)view didFinishNavigation:(id)navigation
{
  m_ptr = self->_weakSession.m_controlBlock.m_ptr;
  if (m_ptr)
  {
    WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::LibWebRTCCodecsProxy>(&v7, m_ptr, self->_weakSession.m_objectOfCorrectType.m_ptr);
    v6 = v7;
    if (v7)
    {
      WebKit::PopUpSOAuthorizationSession::close(v7, view);

      WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::SOAuthorizationSession,(WTF::DestructionThread)2>::deref(v6 + 1);
    }
  }
}

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  return self;
}

@end