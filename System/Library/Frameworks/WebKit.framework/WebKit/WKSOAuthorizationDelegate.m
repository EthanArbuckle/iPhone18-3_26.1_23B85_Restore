@interface WKSOAuthorizationDelegate
- (void)authorization:(id)a3 didCompleteWithError:(id)a4;
- (void)authorization:(id)a3 didCompleteWithHTTPAuthorizationHeaders:(id)a4;
- (void)authorization:(id)a3 didCompleteWithHTTPResponse:(id)a4 httpBody:(id)a5;
- (void)authorization:(id)a3 presentViewController:(id)a4 withCompletion:(id)a5;
- (void)authorizationDidCancel:(id)a3;
- (void)authorizationDidComplete:(id)a3;
- (void)authorizationDidNotHandle:(id)a3;
- (void)setSession:(void *)a3;
@end

@implementation WKSOAuthorizationDelegate

- (void)authorization:(id)a3 presentViewController:(id)a4 withCompletion:(id)a5
{
  v8 = self;
  v25 = *MEMORY[0x1E69E9840];
  v18 = self;
  v9 = qword_1ED640838;
  if (os_log_type_enabled(qword_1ED640838, OS_LOG_TYPE_DEFAULT))
  {
    m_ptr = v8->_session.m_ptr;
    *buf = 134218496;
    v20 = &v18;
    v21 = 2048;
    v22 = a3;
    v23 = 2048;
    v24 = m_ptr;
    _os_log_impl(&dword_19D52D000, v9, OS_LOG_TYPE_DEFAULT, "%p - WKSOAuthorizationDelegate::authorization (authorization = %p, _session = %p)", buf, 0x20u);
    v8 = v18;
  }

  v11 = v8->_session.m_ptr;
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
    if (a4)
    {
      if (v16)
      {
        *buf = 134218240;
        v20 = &v18;
        v21 = 2048;
        v22 = a4;
        _os_log_impl(&dword_19D52D000, v15, OS_LOG_TYPE_DEFAULT, "%p - WKSOAuthorizationDelegate::authorization: presentingViewController %p", buf, 0x16u);
      }

      WebKit::SOAuthorizationSession::presentViewController(v11, a4, a5);
    }

    else
    {
      if (v16)
      {
        *buf = 134217984;
        v20 = &v18;
        _os_log_impl(&dword_19D52D000, v15, OS_LOG_TYPE_DEFAULT, "%p - WKSOAuthorizationDelegate::authorization: No view controller to present, so completing with NO as success state.", buf, 0xCu);
      }

      (*(a5 + 2))(a5, 0, 0);
    }

    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::SOAuthorizationSession,(WTF::DestructionThread)2>::deref((v11 + 8));
  }

  else
  {
    v17 = qword_1ED640838;
    if (os_log_type_enabled(qword_1ED640838, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v20 = &v18;
      _os_log_impl(&dword_19D52D000, v17, OS_LOG_TYPE_DEFAULT, "%p - WKSOAuthorizationDelegate::authorization: No session, so completing with NO as success state.", buf, 0xCu);
    }

    (*(a5 + 2))(a5, 0, 0);
  }
}

- (void)authorizationDidNotHandle:(id)a3
{
  v4 = self;
  v20 = *MEMORY[0x1E69E9840];
  v13 = self;
  v5 = qword_1ED640838;
  if (os_log_type_enabled(qword_1ED640838, OS_LOG_TYPE_DEFAULT))
  {
    m_ptr = v4->_session.m_ptr;
    *buf = 134218496;
    v15 = &v13;
    v16 = 2048;
    v17 = a3;
    v18 = 2048;
    v19 = m_ptr;
    _os_log_impl(&dword_19D52D000, v5, OS_LOG_TYPE_DEFAULT, "%p - WKSOAuthorizationDelegate::authorizationDidNotHandle: (authorization = %p, _session = %p)", buf, 0x20u);
    v4 = v13;
  }

  v7 = v4->_session.m_ptr;
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
      v15 = &v13;
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
      v15 = &v13;
      _os_log_impl(&dword_19D52D000, v12, OS_LOG_TYPE_DEFAULT, "%p - WKSOAuthorizationDelegate::authorizationDidNotHandle: No session, so returning early.", buf, 0xCu);
    }
  }
}

- (void)authorizationDidCancel:(id)a3
{
  v4 = self;
  v20 = *MEMORY[0x1E69E9840];
  v13 = self;
  v5 = qword_1ED640838;
  if (os_log_type_enabled(qword_1ED640838, OS_LOG_TYPE_DEFAULT))
  {
    m_ptr = v4->_session.m_ptr;
    *buf = 134218496;
    v15 = &v13;
    v16 = 2048;
    v17 = a3;
    v18 = 2048;
    v19 = m_ptr;
    _os_log_impl(&dword_19D52D000, v5, OS_LOG_TYPE_DEFAULT, "%p - WKSOAuthorizationDelegate::authorizationDidCancel: (authorization = %p, _session = %p)", buf, 0x20u);
    v4 = v13;
  }

  v7 = v4->_session.m_ptr;
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
      v15 = &v13;
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
      v15 = &v13;
      _os_log_impl(&dword_19D52D000, v12, OS_LOG_TYPE_DEFAULT, "%p - WKSOAuthorizationDelegate::authorizationDidCancel: No session, so returning early.", buf, 0xCu);
    }
  }
}

- (void)authorizationDidComplete:(id)a3
{
  v4 = self;
  v20 = *MEMORY[0x1E69E9840];
  v13 = self;
  v5 = qword_1ED640838;
  if (os_log_type_enabled(qword_1ED640838, OS_LOG_TYPE_DEFAULT))
  {
    m_ptr = v4->_session.m_ptr;
    *buf = 134218496;
    v15 = &v13;
    v16 = 2048;
    v17 = a3;
    v18 = 2048;
    v19 = m_ptr;
    _os_log_impl(&dword_19D52D000, v5, OS_LOG_TYPE_DEFAULT, "%p - WKSOAuthorizationDelegate::authorizationDidComplete: (authorization = %p, _session = %p)", buf, 0x20u);
    v4 = v13;
  }

  v7 = v4->_session.m_ptr;
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
      v15 = &v13;
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
      v15 = &v13;
      _os_log_impl(&dword_19D52D000, v12, OS_LOG_TYPE_DEFAULT, "%p - WKSOAuthorizationDelegate::authorizationDidComplete: No session, so returning early.", buf, 0xCu);
    }
  }
}

- (void)authorization:(id)a3 didCompleteWithHTTPAuthorizationHeaders:(id)a4
{
  v5 = self;
  v21 = *MEMORY[0x1E69E9840];
  v14 = self;
  v6 = qword_1ED640838;
  if (os_log_type_enabled(qword_1ED640838, OS_LOG_TYPE_DEFAULT))
  {
    m_ptr = v5->_session.m_ptr;
    *buf = 134218496;
    v16 = &v14;
    v17 = 2048;
    v18 = a3;
    v19 = 2048;
    v20 = m_ptr;
    _os_log_impl(&dword_19D52D000, v6, OS_LOG_TYPE_DEFAULT, "%p - WKSOAuthorizationDelegate::authorization:didCompleteWithHTTPAuthorizationHeaders: (authorization = %p, _session = %p)", buf, 0x20u);
    v5 = v14;
  }

  v8 = v5->_session.m_ptr;
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
      v16 = &v14;
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
      v16 = &v14;
      _os_log_impl(&dword_19D52D000, v13, OS_LOG_TYPE_DEFAULT, "%p - WKSOAuthorizationDelegate::authorization:didCompleteWithHTTPAuthorizationHeaders: No session, so returning early.", buf, 0xCu);
    }
  }
}

- (void)authorization:(id)a3 didCompleteWithHTTPResponse:(id)a4 httpBody:(id)a5
{
  v8 = self;
  v24 = *MEMORY[0x1E69E9840];
  v17 = self;
  v9 = qword_1ED640838;
  if (os_log_type_enabled(qword_1ED640838, OS_LOG_TYPE_DEFAULT))
  {
    m_ptr = v8->_session.m_ptr;
    *buf = 134218496;
    v19 = &v17;
    v20 = 2048;
    v21 = a3;
    v22 = 2048;
    v23 = m_ptr;
    _os_log_impl(&dword_19D52D000, v9, OS_LOG_TYPE_DEFAULT, "%p - WKSOAuthorizationDelegate::authorization:didCompleteWithHTTPResponse: (authorization = %p, _session = %p)", buf, 0x20u);
    v8 = v17;
  }

  v11 = v8->_session.m_ptr;
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
      v19 = &v17;
      _os_log_impl(&dword_19D52D000, v15, OS_LOG_TYPE_DEFAULT, "%p - WKSOAuthorizationDelegate::authorization:didCompleteWithHTTPResponse: Completing.", buf, 0xCu);
    }

    WebKit::SOAuthorizationSession::complete(v11, a4, a5);
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::SOAuthorizationSession,(WTF::DestructionThread)2>::deref(v11 + 1);
  }

  else
  {
    v16 = qword_1ED640838;
    if (os_log_type_enabled(qword_1ED640838, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v19 = &v17;
      _os_log_impl(&dword_19D52D000, v16, OS_LOG_TYPE_DEFAULT, "%p - WKSOAuthorizationDelegate::authorization:didCompleteWithHTTPResponse: No session, so returning early.", buf, 0xCu);
    }
  }
}

- (void)authorization:(id)a3 didCompleteWithError:(id)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v15 = self;
  v7 = qword_1ED640838;
  if (os_log_type_enabled(qword_1ED640838, OS_LOG_TYPE_DEFAULT))
  {
    m_ptr = self->_session.m_ptr;
    *buf = 134218496;
    v17 = &v15;
    v18 = 2048;
    v19 = a3;
    v20 = 2048;
    v21 = m_ptr;
    _os_log_impl(&dword_19D52D000, v7, OS_LOG_TYPE_DEFAULT, "%p - WKSOAuthorizationDelegate::authorization:didCompleteWithError: (authorization = %p, _session = %p)", buf, 0x20u);
  }

  [a4 code];
  v9 = v15->_session.m_ptr;
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
      v17 = &v15;
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
      v17 = &v15;
      _os_log_impl(&dword_19D52D000, v14, OS_LOG_TYPE_DEFAULT, "%p - WKSOAuthorizationDelegate::authorization:didCompleteWithError: No session, so returning early.", buf, 0xCu);
    }
  }
}

- (void)setSession:(void *)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v13 = self;
  v5 = WTF::RunLoop::mainSingleton(self);
  if (WTF::RunLoop::isCurrent(v5))
  {
    v6 = qword_1ED640838;
    if (os_log_type_enabled(qword_1ED640838, OS_LOG_TYPE_DEFAULT))
    {
      m_ptr = self->_session.m_ptr;
      v8 = *a3;
      *buf = 134218496;
      v15 = &v13;
      v16 = 2048;
      v17 = m_ptr;
      v18 = 2048;
      v19 = v8;
      _os_log_impl(&dword_19D52D000, v6, OS_LOG_TYPE_DEFAULT, "%p - WKSOAuthorizationDelegate::setSession: (existing session = %p, new session = %p)", buf, 0x20u);
    }

    v9 = *a3;
    if (*a3)
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
    v12 = v13->_session.m_ptr;
    v13->_session.m_ptr = v9;
    if (v12)
    {
      WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::SOAuthorizationSession,(WTF::DestructionThread)2>::deref(v12 + 1);
    }

    if (*a3)
    {
      WebKit::SOAuthorizationSession::shouldStart(*a3);
    }
  }

  else
  {
    __break(0xC471u);
  }
}

@end