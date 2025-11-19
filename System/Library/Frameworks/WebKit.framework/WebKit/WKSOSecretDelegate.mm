@interface WKSOSecretDelegate
- (WKSOSecretDelegate)initWithSession:(void *)a3;
- (id).cxx_construct;
- (void)webView:(id)a3 decidePolicyForNavigationAction:(id)a4 decisionHandler:(id)a5;
- (void)webView:(id)a3 didFinishNavigation:(id)a4;
- (void)webViewDidClose:(id)a3;
@end

@implementation WKSOSecretDelegate

- (WKSOSecretDelegate)initWithSession:(void *)a3
{
  v10.receiver = self;
  v10.super_class = WKSOSecretDelegate;
  v4 = [(WKSOSecretDelegate *)&v10 init];
  if (v4)
  {
    v5 = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::NetworkDataTask,(WTF::DestructionThread)1>::controlBlock(a3 + 1);
    v7 = WTF::ThreadSafeWeakPtrControlBlock::weakRef(v5);
    m_ptr = v4->_weakSession.m_controlBlock.m_ptr;
    v4->_weakSession.m_controlBlock.m_ptr = v7;
    if (m_ptr)
    {
      WTF::ThreadSafeWeakPtrControlBlock::weakDeref(m_ptr, v6);
    }

    v4->_weakSession.m_objectOfCorrectType.m_ptr = a3;
    v4->_isFirstNavigation = 1;
  }

  return v4;
}

- (void)webViewDidClose:(id)a3
{
  m_ptr = self->_weakSession.m_controlBlock.m_ptr;
  if (m_ptr)
  {
    WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::LibWebRTCCodecsProxy>(&v6, m_ptr, self->_weakSession.m_objectOfCorrectType.m_ptr);
    v5 = v6;
    if (v6)
    {
      WebKit::PopUpSOAuthorizationSession::close(v6, a3);

      WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::SOAuthorizationSession,(WTF::DestructionThread)2>::deref(v5 + 1);
    }
  }
}

- (void)webView:(id)a3 decidePolicyForNavigationAction:(id)a4 decisionHandler:(id)a5
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

  (*(a5 + 2))(a5, v5);
}

- (void)webView:(id)a3 didFinishNavigation:(id)a4
{
  m_ptr = self->_weakSession.m_controlBlock.m_ptr;
  if (m_ptr)
  {
    WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::LibWebRTCCodecsProxy>(&v7, m_ptr, self->_weakSession.m_objectOfCorrectType.m_ptr);
    v6 = v7;
    if (v7)
    {
      WebKit::PopUpSOAuthorizationSession::close(v7, a3);

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