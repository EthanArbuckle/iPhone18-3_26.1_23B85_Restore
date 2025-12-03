@interface WKSOAuthorizationDelegate
- (void)authorization:(id)authorization didCompleteWithError:(id)error;
- (void)authorization:(id)authorization didCompleteWithHTTPAuthorizationHeaders:(id)headers;
- (void)authorization:(id)authorization didCompleteWithHTTPResponse:(id)response httpBody:(id)body;
- (void)authorization:(id)authorization presentViewController:(id)controller withCompletion:(id)completion;
- (void)authorizationDidCancel:(id)cancel;
- (void)authorizationDidComplete:(id)complete;
- (void)authorizationDidNotHandle:(id)handle;
- (void)setSession:(void *)session;
@end

@implementation WKSOAuthorizationDelegate

- (void)authorization:(id)authorization presentViewController:(id)controller withCompletion:(id)completion
{
  selfCopy = self;
  v25 = *MEMORY[0x1E69E9840];
  selfCopy2 = self;
  v9 = qword_1ED640838;
  if (os_log_type_enabled(qword_1ED640838, OS_LOG_TYPE_DEFAULT))
  {
    m_ptr = selfCopy->_session.m_ptr;
    *buf = 134218496;
    v20 = &selfCopy2;
    v21 = 2048;
    controllerCopy = authorization;
    v23 = 2048;
    v24 = m_ptr;
    _os_log_impl(&dword_19D52D000, v9, OS_LOG_TYPE_DEFAULT, "%p - WKSOAuthorizationDelegate::authorization (authorization = %p, _session = %p)", buf, 0x20u);
    selfCopy = selfCopy2;
  }

  v11 = selfCopy->_session.m_ptr;
  if (v11)
  {
    v12 = (v11 + 8);
    while (1)
    {
      v13 = *v12;
      if ((*v12 & 1) == 0)
      {
        break;
      }

      v14 = *v12;
      atomic_compare_exchange_strong_explicit(v12, &v14, v13 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v14 == v13)
      {
        goto LABEL_9;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v12);
LABEL_9:
    v15 = qword_1ED640838;
    v16 = os_log_type_enabled(qword_1ED640838, OS_LOG_TYPE_DEFAULT);
    if (controller)
    {
      if (v16)
      {
        *buf = 134218240;
        v20 = &selfCopy2;
        v21 = 2048;
        controllerCopy = controller;
        _os_log_impl(&dword_19D52D000, v15, OS_LOG_TYPE_DEFAULT, "%p - WKSOAuthorizationDelegate::authorization: presentingViewController %p", buf, 0x16u);
      }

      WebKit::SOAuthorizationSession::presentViewController(v11, controller, completion);
    }

    else
    {
      if (v16)
      {
        *buf = 134217984;
        v20 = &selfCopy2;
        _os_log_impl(&dword_19D52D000, v15, OS_LOG_TYPE_DEFAULT, "%p - WKSOAuthorizationDelegate::authorization: No view controller to present, so completing with NO as success state.", buf, 0xCu);
      }

      (*(completion + 2))(completion, 0, 0);
    }

    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::SOAuthorizationSession,(WTF::DestructionThread)2>::deref((v11 + 8));
  }

  else
  {
    v17 = qword_1ED640838;
    if (os_log_type_enabled(qword_1ED640838, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v20 = &selfCopy2;
      _os_log_impl(&dword_19D52D000, v17, OS_LOG_TYPE_DEFAULT, "%p - WKSOAuthorizationDelegate::authorization: No session, so completing with NO as success state.", buf, 0xCu);
    }

    (*(completion + 2))(completion, 0, 0);
  }
}

- (void)authorizationDidNotHandle:(id)handle
{
  selfCopy = self;
  v20 = *MEMORY[0x1E69E9840];
  selfCopy2 = self;
  v5 = qword_1ED640838;
  if (os_log_type_enabled(qword_1ED640838, OS_LOG_TYPE_DEFAULT))
  {
    m_ptr = selfCopy->_session.m_ptr;
    *buf = 134218496;
    v15 = &selfCopy2;
    v16 = 2048;
    handleCopy = handle;
    v18 = 2048;
    v19 = m_ptr;
    _os_log_impl(&dword_19D52D000, v5, OS_LOG_TYPE_DEFAULT, "%p - WKSOAuthorizationDelegate::authorizationDidNotHandle: (authorization = %p, _session = %p)", buf, 0x20u);
    selfCopy = selfCopy2;
  }

  v7 = selfCopy->_session.m_ptr;
  if (v7)
  {
    v8 = v7 + 1;
    while (1)
    {
      v9 = *v8;
      if ((*v8 & 1) == 0)
      {
        break;
      }

      v10 = *v8;
      atomic_compare_exchange_strong_explicit(v8, &v10, v9 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v10 == v9)
      {
        goto LABEL_9;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v8);
LABEL_9:
    v11 = qword_1ED640838;
    if (os_log_type_enabled(qword_1ED640838, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v15 = &selfCopy2;
      _os_log_impl(&dword_19D52D000, v11, OS_LOG_TYPE_DEFAULT, "%p - WKSOAuthorizationDelegate::authorizationDidNotHandle: Falling back to web path.", buf, 0xCu);
    }

    WebKit::SOAuthorizationSession::fallBackToWebPath(v7);
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::SOAuthorizationSession,(WTF::DestructionThread)2>::deref(v7 + 1);
  }

  else
  {
    v12 = qword_1ED640838;
    if (os_log_type_enabled(qword_1ED640838, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v15 = &selfCopy2;
      _os_log_impl(&dword_19D52D000, v12, OS_LOG_TYPE_DEFAULT, "%p - WKSOAuthorizationDelegate::authorizationDidNotHandle: No session, so returning early.", buf, 0xCu);
    }
  }
}

- (void)authorizationDidCancel:(id)cancel
{
  selfCopy = self;
  v20 = *MEMORY[0x1E69E9840];
  selfCopy2 = self;
  v5 = qword_1ED640838;
  if (os_log_type_enabled(qword_1ED640838, OS_LOG_TYPE_DEFAULT))
  {
    m_ptr = selfCopy->_session.m_ptr;
    *buf = 134218496;
    v15 = &selfCopy2;
    v16 = 2048;
    cancelCopy = cancel;
    v18 = 2048;
    v19 = m_ptr;
    _os_log_impl(&dword_19D52D000, v5, OS_LOG_TYPE_DEFAULT, "%p - WKSOAuthorizationDelegate::authorizationDidCancel: (authorization = %p, _session = %p)", buf, 0x20u);
    selfCopy = selfCopy2;
  }

  v7 = selfCopy->_session.m_ptr;
  if (v7)
  {
    v8 = v7 + 1;
    while (1)
    {
      v9 = *v8;
      if ((*v8 & 1) == 0)
      {
        break;
      }

      v10 = *v8;
      atomic_compare_exchange_strong_explicit(v8, &v10, v9 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v10 == v9)
      {
        goto LABEL_9;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v8);
LABEL_9:
    v11 = qword_1ED640838;
    if (os_log_type_enabled(qword_1ED640838, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v15 = &selfCopy2;
      _os_log_impl(&dword_19D52D000, v11, OS_LOG_TYPE_DEFAULT, "%p - WKSOAuthorizationDelegate::authorizationDidCancel: Aborting session.", buf, 0xCu);
    }

    WebKit::SOAuthorizationSession::abort(v7);
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::SOAuthorizationSession,(WTF::DestructionThread)2>::deref(v7 + 1);
  }

  else
  {
    v12 = qword_1ED640838;
    if (os_log_type_enabled(qword_1ED640838, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v15 = &selfCopy2;
      _os_log_impl(&dword_19D52D000, v12, OS_LOG_TYPE_DEFAULT, "%p - WKSOAuthorizationDelegate::authorizationDidCancel: No session, so returning early.", buf, 0xCu);
    }
  }
}

- (void)authorizationDidComplete:(id)complete
{
  selfCopy = self;
  v20 = *MEMORY[0x1E69E9840];
  selfCopy2 = self;
  v5 = qword_1ED640838;
  if (os_log_type_enabled(qword_1ED640838, OS_LOG_TYPE_DEFAULT))
  {
    m_ptr = selfCopy->_session.m_ptr;
    *buf = 134218496;
    v15 = &selfCopy2;
    v16 = 2048;
    completeCopy = complete;
    v18 = 2048;
    v19 = m_ptr;
    _os_log_impl(&dword_19D52D000, v5, OS_LOG_TYPE_DEFAULT, "%p - WKSOAuthorizationDelegate::authorizationDidComplete: (authorization = %p, _session = %p)", buf, 0x20u);
    selfCopy = selfCopy2;
  }

  v7 = selfCopy->_session.m_ptr;
  if (v7)
  {
    v8 = v7 + 1;
    while (1)
    {
      v9 = *v8;
      if ((*v8 & 1) == 0)
      {
        break;
      }

      v10 = *v8;
      atomic_compare_exchange_strong_explicit(v8, &v10, v9 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v10 == v9)
      {
        goto LABEL_9;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v8);
LABEL_9:
    v11 = qword_1ED640838;
    if (os_log_type_enabled(qword_1ED640838, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v15 = &selfCopy2;
      _os_log_impl(&dword_19D52D000, v11, OS_LOG_TYPE_DEFAULT, "%p - WKSOAuthorizationDelegate::authorizationDidComplete: Falling back to web path.", buf, 0xCu);
    }

    WebKit::SOAuthorizationSession::fallBackToWebPath(v7);
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::SOAuthorizationSession,(WTF::DestructionThread)2>::deref(v7 + 1);
  }

  else
  {
    v12 = qword_1ED640838;
    if (os_log_type_enabled(qword_1ED640838, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v15 = &selfCopy2;
      _os_log_impl(&dword_19D52D000, v12, OS_LOG_TYPE_DEFAULT, "%p - WKSOAuthorizationDelegate::authorizationDidComplete: No session, so returning early.", buf, 0xCu);
    }
  }
}

- (void)authorization:(id)authorization didCompleteWithHTTPAuthorizationHeaders:(id)headers
{
  selfCopy = self;
  v21 = *MEMORY[0x1E69E9840];
  selfCopy2 = self;
  v6 = qword_1ED640838;
  if (os_log_type_enabled(qword_1ED640838, OS_LOG_TYPE_DEFAULT))
  {
    m_ptr = selfCopy->_session.m_ptr;
    *buf = 134218496;
    v16 = &selfCopy2;
    v17 = 2048;
    authorizationCopy = authorization;
    v19 = 2048;
    v20 = m_ptr;
    _os_log_impl(&dword_19D52D000, v6, OS_LOG_TYPE_DEFAULT, "%p - WKSOAuthorizationDelegate::authorization:didCompleteWithHTTPAuthorizationHeaders: (authorization = %p, _session = %p)", buf, 0x20u);
    selfCopy = selfCopy2;
  }

  v8 = selfCopy->_session.m_ptr;
  if (v8)
  {
    v9 = v8 + 1;
    while (1)
    {
      v10 = *v9;
      if ((*v9 & 1) == 0)
      {
        break;
      }

      v11 = *v9;
      atomic_compare_exchange_strong_explicit(v9, &v11, v10 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v11 == v10)
      {
        goto LABEL_9;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v9);
LABEL_9:
    v12 = qword_1ED640838;
    if (os_log_type_enabled(qword_1ED640838, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v16 = &selfCopy2;
      _os_log_impl(&dword_19D52D000, v12, OS_LOG_TYPE_DEFAULT, "%p - WKSOAuthorizationDelegate::authorization:didCompleteWithHTTPAuthorizationHeaders: Falling back to web path.", buf, 0xCu);
    }

    WebKit::SOAuthorizationSession::fallBackToWebPath(v8);
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::SOAuthorizationSession,(WTF::DestructionThread)2>::deref(v8 + 1);
  }

  else
  {
    v13 = qword_1ED640838;
    if (os_log_type_enabled(qword_1ED640838, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v16 = &selfCopy2;
      _os_log_impl(&dword_19D52D000, v13, OS_LOG_TYPE_DEFAULT, "%p - WKSOAuthorizationDelegate::authorization:didCompleteWithHTTPAuthorizationHeaders: No session, so returning early.", buf, 0xCu);
    }
  }
}

- (void)authorization:(id)authorization didCompleteWithHTTPResponse:(id)response httpBody:(id)body
{
  selfCopy = self;
  v24 = *MEMORY[0x1E69E9840];
  selfCopy2 = self;
  v9 = qword_1ED640838;
  if (os_log_type_enabled(qword_1ED640838, OS_LOG_TYPE_DEFAULT))
  {
    m_ptr = selfCopy->_session.m_ptr;
    *buf = 134218496;
    v19 = &selfCopy2;
    v20 = 2048;
    authorizationCopy = authorization;
    v22 = 2048;
    v23 = m_ptr;
    _os_log_impl(&dword_19D52D000, v9, OS_LOG_TYPE_DEFAULT, "%p - WKSOAuthorizationDelegate::authorization:didCompleteWithHTTPResponse: (authorization = %p, _session = %p)", buf, 0x20u);
    selfCopy = selfCopy2;
  }

  v11 = selfCopy->_session.m_ptr;
  if (v11)
  {
    v12 = v11 + 1;
    while (1)
    {
      v13 = *v12;
      if ((*v12 & 1) == 0)
      {
        break;
      }

      v14 = *v12;
      atomic_compare_exchange_strong_explicit(v12, &v14, v13 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v14 == v13)
      {
        goto LABEL_9;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v12);
LABEL_9:
    v15 = qword_1ED640838;
    if (os_log_type_enabled(qword_1ED640838, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v19 = &selfCopy2;
      _os_log_impl(&dword_19D52D000, v15, OS_LOG_TYPE_DEFAULT, "%p - WKSOAuthorizationDelegate::authorization:didCompleteWithHTTPResponse: Completing.", buf, 0xCu);
    }

    WebKit::SOAuthorizationSession::complete(v11, response, body);
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::SOAuthorizationSession,(WTF::DestructionThread)2>::deref(v11 + 1);
  }

  else
  {
    v16 = qword_1ED640838;
    if (os_log_type_enabled(qword_1ED640838, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v19 = &selfCopy2;
      _os_log_impl(&dword_19D52D000, v16, OS_LOG_TYPE_DEFAULT, "%p - WKSOAuthorizationDelegate::authorization:didCompleteWithHTTPResponse: No session, so returning early.", buf, 0xCu);
    }
  }
}

- (void)authorization:(id)authorization didCompleteWithError:(id)error
{
  v22 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  v7 = qword_1ED640838;
  if (os_log_type_enabled(qword_1ED640838, OS_LOG_TYPE_DEFAULT))
  {
    m_ptr = self->_session.m_ptr;
    *buf = 134218496;
    v17 = &selfCopy;
    v18 = 2048;
    authorizationCopy = authorization;
    v20 = 2048;
    v21 = m_ptr;
    _os_log_impl(&dword_19D52D000, v7, OS_LOG_TYPE_DEFAULT, "%p - WKSOAuthorizationDelegate::authorization:didCompleteWithError: (authorization = %p, _session = %p)", buf, 0x20u);
  }

  [error code];
  v9 = selfCopy->_session.m_ptr;
  if (v9)
  {
    v10 = v9 + 1;
    while (1)
    {
      v11 = *v10;
      if ((*v10 & 1) == 0)
      {
        break;
      }

      v12 = *v10;
      atomic_compare_exchange_strong_explicit(v10, &v12, v11 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v12 == v11)
      {
        goto LABEL_9;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v10);
LABEL_9:
    v13 = qword_1ED640838;
    if (os_log_type_enabled(qword_1ED640838, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v17 = &selfCopy;
      _os_log_impl(&dword_19D52D000, v13, OS_LOG_TYPE_DEFAULT, "%p - WKSOAuthorizationDelegate::authorization:didCompleteWithError: Falling back to web path.", buf, 0xCu);
    }

    WebKit::SOAuthorizationSession::fallBackToWebPath(v9);
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::SOAuthorizationSession,(WTF::DestructionThread)2>::deref(v9 + 1);
  }

  else
  {
    v14 = qword_1ED640838;
    if (os_log_type_enabled(qword_1ED640838, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v17 = &selfCopy;
      _os_log_impl(&dword_19D52D000, v14, OS_LOG_TYPE_DEFAULT, "%p - WKSOAuthorizationDelegate::authorization:didCompleteWithError: No session, so returning early.", buf, 0xCu);
    }
  }
}

- (void)setSession:(void *)session
{
  v20 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  v5 = WTF::RunLoop::mainSingleton(self);
  if (WTF::RunLoop::isCurrent(v5))
  {
    v6 = qword_1ED640838;
    if (os_log_type_enabled(qword_1ED640838, OS_LOG_TYPE_DEFAULT))
    {
      m_ptr = self->_session.m_ptr;
      v8 = *session;
      *buf = 134218496;
      v15 = &selfCopy;
      v16 = 2048;
      v17 = m_ptr;
      v18 = 2048;
      v19 = v8;
      _os_log_impl(&dword_19D52D000, v6, OS_LOG_TYPE_DEFAULT, "%p - WKSOAuthorizationDelegate::setSession: (existing session = %p, new session = %p)", buf, 0x20u);
    }

    v9 = *session;
    if (*session)
    {
      while (1)
      {
        v10 = *(v9 + 1);
        if ((v10 & 1) == 0)
        {
          break;
        }

        v11 = *(v9 + 1);
        atomic_compare_exchange_strong_explicit(v9 + 1, &v11, v10 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v11 == v10)
        {
          goto LABEL_9;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*(v9 + 1));
    }

LABEL_9:
    v12 = selfCopy->_session.m_ptr;
    selfCopy->_session.m_ptr = v9;
    if (v12)
    {
      WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::SOAuthorizationSession,(WTF::DestructionThread)2>::deref(v12 + 1);
    }

    if (*session)
    {
      WebKit::SOAuthorizationSession::shouldStart(*session);
    }
  }

  else
  {
    __break(0xC471u);
  }
}

@end