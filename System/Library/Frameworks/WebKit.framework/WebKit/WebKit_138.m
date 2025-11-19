void sub_19DD4BBE4(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, WTF::StringImpl *a10, WTF::StringImpl *a11, uint64_t a12)
{
  v14 = *(v12 - 136);
  *(v12 - 136) = 0;
  if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v14, a2);
  }

  if (a11 && atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a11, a2);
  }

  MEMORY[0x19EB09310](&a12);
  v16 = *(v12 - 216);
  *(v12 - 216) = 0;
  if (v16)
  {
    if (atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v16, v15);
    }
  }

  WTF::Vector<WTF::Ref<WebCore::SecurityOrigin,WTF::RawPtrTraits<WebCore::SecurityOrigin>,WTF::DefaultRefDerefTraits<WebCore::SecurityOrigin>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v12 - 176, v15);
  _Unwind_Resume(a1);
}

uint64_t WebKit::NavigationSOAuthorizationSession::ref(uint64_t this)
{
  while (1)
  {
    v1 = *(this + 8);
    if ((v1 & 1) == 0)
    {
      break;
    }

    v2 = *(this + 8);
    atomic_compare_exchange_strong_explicit((this + 8), &v2, v1 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v2 == v1)
    {
      return this;
    }
  }

  return WTF::ThreadSafeWeakPtrControlBlock::strongRef(*(this + 8));
}

uint64_t non-virtual thunk toWebKit::NavigationSOAuthorizationSession::ref(uint64_t this)
{
  while (1)
  {
    v1 = *(this - 56);
    if ((v1 & 1) == 0)
    {
      break;
    }

    v2 = *(this - 56);
    atomic_compare_exchange_strong_explicit((this - 56), &v2, v1 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v2 == v1)
    {
      return this;
    }
  }

  return WTF::ThreadSafeWeakPtrControlBlock::strongRef(*(this - 56));
}

void WebKit::RedirectSOAuthorizationSession::~RedirectSOAuthorizationSession(WebKit::RedirectSOAuthorizationSession *this, WTF::StringImpl *a2)
{
  WebKit::NavigationSOAuthorizationSession::~NavigationSOAuthorizationSession(this, a2);

  WTF::fastFree(v2, v3);
}

void non-virtual thunk toWebKit::RedirectSOAuthorizationSession::~RedirectSOAuthorizationSession(WebKit::RedirectSOAuthorizationSession *this, WTF::StringImpl *a2)
{
  WebKit::NavigationSOAuthorizationSession::~NavigationSOAuthorizationSession((this - 64), a2);
}

{
  WebKit::NavigationSOAuthorizationSession::~NavigationSOAuthorizationSession((this - 64), a2);

  WTF::fastFree(v2, v3);
}

uint64_t WebKit::SubFrameSOAuthorizationSession::ref(uint64_t this)
{
  while (1)
  {
    v1 = *(this + 8);
    if ((v1 & 1) == 0)
    {
      break;
    }

    v2 = *(this + 8);
    atomic_compare_exchange_strong_explicit((this + 8), &v2, v1 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v2 == v1)
    {
      return this;
    }
  }

  return WTF::ThreadSafeWeakPtrControlBlock::strongRef(*(this + 8));
}

uint64_t non-virtual thunk toWebKit::SubFrameSOAuthorizationSession::ref(uint64_t this)
{
  while (1)
  {
    v1 = *(this - 56);
    if ((v1 & 1) == 0)
    {
      break;
    }

    v2 = *(this - 56);
    atomic_compare_exchange_strong_explicit((this - 56), &v2, v1 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v2 == v1)
    {
      return this;
    }
  }

  return WTF::ThreadSafeWeakPtrControlBlock::strongRef(*(this - 56));
}

{
  while (1)
  {
    v1 = *(this - 88);
    if ((v1 & 1) == 0)
    {
      break;
    }

    v2 = *(this - 88);
    atomic_compare_exchange_strong_explicit((this - 88), &v2, v1 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v2 == v1)
    {
      return this;
    }
  }

  return WTF::ThreadSafeWeakPtrControlBlock::strongRef(*(this - 88));
}

atomic_ullong *non-virtual thunk toWebKit::SubFrameSOAuthorizationSession::deref(atomic_ullong *this)
{
  return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::SOAuthorizationSession,(WTF::DestructionThread)2>::deref(this - 7);
}

{
  return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::SOAuthorizationSession,(WTF::DestructionThread)2>::deref(this - 11);
}

uint64_t WTF::BlockPtr<void ()(BOOL)>::fromCallable<WebKit::SOAuthorizationCoordinator::canAuthorize(WTF::URL const&,WTF::CompletionHandler<void ()(BOOL)> &&)::$_0>(WebKit::SOAuthorizationCoordinator::canAuthorize(WTF::URL const&,WTF::CompletionHandler<void ()(BOOL)> &&)::$_0)::{lambda(void const*)#1}::__invoke(uint64_t a1)
{
  result = *(a1 + 32);
  *(a1 + 32) = 0;
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t WTF::BlockPtr<void ()(BOOL)>::fromCallable<WebKit::SOAuthorizationCoordinator::canAuthorize(WTF::URL const&,WTF::CompletionHandler<void ()(BOOL)> &&)::$_0>(WebKit::SOAuthorizationCoordinator::canAuthorize(WTF::URL const&,WTF::CompletionHandler<void ()(BOOL)> &&)::$_0)::{lambda(void *,BOOL)#1}::__invoke(uint64_t a1, char a2)
{
  v3 = *(a1 + 32);
  *(a1 + 32) = 0;
  v4 = WTF::fastMalloc(0x18);
  *v4 = &unk_1F1106E98;
  *(v4 + 8) = v3;
  *(v4 + 16) = a2;
  v6 = v4;
  WTF::ensureOnMainRunLoop();
  result = v6;
  if (v6)
  {
    return (*(*v6 + 8))(v6);
  }

  return result;
}

void sub_19DD4C004(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 8))(a10);
  }

  _Unwind_Resume(exception_object);
}

void *WTF::Detail::CallableWrapper<WebKit::SOAuthorizationCoordinator::canAuthorize(WTF::URL const&,WTF::CompletionHandler<void ()(BOOL)> &&)::$_0::operator()(BOOL)::{lambda(void)#1},void>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F1106E98;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::SOAuthorizationCoordinator::canAuthorize(WTF::URL const&,WTF::CompletionHandler<void ()(BOOL)> &&)::$_0::operator()(BOOL)::{lambda(void)#1},void>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1106E98;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

atomic_uchar *WTF::BlockPtr<void ()(SOAuthorizationHints *,NSError *)>::fromCallable<WebKit::SOAuthorizationSession::start(void)::$_0>(WebKit::SOAuthorizationSession::start(void)::$_0)::{lambda(void const*)#1}::__invoke(uint64_t a1, void *a2)
{
  result = *(a1 + 40);
  *(a1 + 40) = 0;
  if (result)
  {
    return WTF::ThreadSafeWeakPtrControlBlock::weakDeref(result, a2);
  }

  return result;
}

void WTF::BlockPtr<void ()(SOAuthorizationHints *,NSError *)>::fromCallable<WebKit::SOAuthorizationSession::start(void)::$_0>(WebKit::SOAuthorizationSession::start(void)::$_0)::{lambda(void *,SOAuthorizationHints *,NSError *)#1}::__invoke(uint64_t a1, void *a2, void *a3)
{
  v59 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 40);
  if (v4)
  {
    WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::LibWebRTCCodecsProxy>(&v50, v4, *(a1 + 32));
    v6 = v50;
    if (v50)
    {
      v7 = qword_1ED640838;
      if (!os_log_type_enabled(qword_1ED640838, OS_LOG_TYPE_DEFAULT))
      {
LABEL_25:
        v14 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
        if (a2 && !a3)
        {
          if (!v14)
          {
            goto LABEL_69;
          }

          v15 = *(v6 + 48);
          if (*(v6 + 48))
          {
            if (v15 == 2)
            {
              v16 = "SubFrame";
            }

            else if (v15 == 1)
            {
              v16 = "PopUp";
            }

            else
            {
              v16 = 0;
            }
          }

          else
          {
            v16 = "Redirect";
          }

          v21 = *(v6 + 16);
          if (v21 > 1)
          {
            if (v21 == 2)
            {
              v22 = "Waiting";
              goto LABEL_68;
            }

            if (v21 == 3)
            {
              v22 = "Completed";
              goto LABEL_68;
            }
          }

          else
          {
            if (!*(v6 + 16))
            {
              v22 = "Idle";
              goto LABEL_68;
            }

            if (v21 == 1)
            {
              v22 = "Active";
LABEL_68:
              *buf = 134218498;
              *&buf[4] = v6;
              v53 = 2080;
              v54 = v16;
              v55 = 2080;
              v56 = v22;
              _os_log_impl(&dword_19D52D000, v7, OS_LOG_TYPE_DEFAULT, "%p - [InitiatingAction=%s][State=%s] SOAuthorizationSession::start (getAuthorizationHintsWithURL completion handler): Receive SOAuthorizationHints.", buf, 0x20u);
LABEL_69:
              MEMORY[0x19EB02040](&v49, [a2 localizedExtensionBundleDisplayName]);
              v23 = qword_1ED640838;
              if (!os_log_type_enabled(qword_1ED640838, OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_93;
              }

              v24 = *(v6 + 48);
              if (*(v6 + 48))
              {
                if (v24 == 2)
                {
                  v25 = "SubFrame";
                }

                else if (v24 == 1)
                {
                  v25 = "PopUp";
                }

                else
                {
                  v25 = 0;
                }
              }

              else
              {
                v25 = "Redirect";
              }

              v26 = *(v6 + 16);
              if (v26 > 1)
              {
                if (v26 != 2)
                {
                  if (v26 == 3)
                  {
                    v27 = "Completed";
                    goto LABEL_87;
                  }

                  goto LABEL_84;
                }

                v27 = "Waiting";
              }

              else
              {
                if (*(v6 + 16))
                {
                  if (v26 == 1)
                  {
                    v27 = "Active";
                    goto LABEL_87;
                  }

LABEL_84:
                  v27 = 0;
                  goto LABEL_87;
                }

                v27 = "Idle";
              }

LABEL_87:
              WTF::String::utf8();
              if (v51)
              {
                v28 = v51 + 16;
              }

              else
              {
                v28 = 0;
              }

              *buf = 134218754;
              *&buf[4] = v6;
              v53 = 2080;
              v54 = v25;
              v55 = 2080;
              v56 = v27;
              v57 = 2080;
              v58 = v28;
              _os_log_impl(&dword_19D52D000, v23, OS_LOG_TYPE_DEFAULT, "%p - [InitiatingAction=%s][State=%s] SOAuthorizationSession::continueStartAfterGetAuthorizationHints: (hints=%s)", buf, 0x2Au);
              v30 = v51;
              v51 = 0;
              if (v30)
              {
                if (*v30 == 1)
                {
                  WTF::fastFree(v30, v29);
                }

                else
                {
                  --*v30;
                }
              }

LABEL_93:
              v31 = *(v6 + 40);
              if (v31)
              {
                v32 = *(v31 + 8);
                if (v32)
                {
                  CFRetain(*(v32 - 8));
                  v33 = qword_1ED640838;
                  if (!os_log_type_enabled(qword_1ED640838, OS_LOG_TYPE_DEFAULT))
                  {
LABEL_133:
                    v44 = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::NetworkDataTask,(WTF::DestructionThread)1>::controlBlock((v6 + 8));
                    v45 = WTF::ThreadSafeWeakPtrControlBlock::weakRef(v44);
                    v46 = WTF::fastMalloc(0x18);
                    *v46 = &unk_1F1106F80;
                    v46[1] = v6;
                    v46[2] = v45;
                    *buf = v46;
                    (*(**(v32 + 72) + 368))();
                    v47 = *buf;
                    *buf = 0;
                    if (v47)
                    {
                      (*(*v47 + 8))(v47);
                    }

                    CFRelease(*(v32 - 8));
                    goto LABEL_136;
                  }

                  v34 = *(v6 + 48);
                  if (*(v6 + 48))
                  {
                    if (v34 == 2)
                    {
                      v35 = "SubFrame";
                    }

                    else if (v34 == 1)
                    {
                      v35 = "PopUp";
                    }

                    else
                    {
                      v35 = 0;
                    }
                  }

                  else
                  {
                    v35 = "Redirect";
                  }

                  v42 = *(v6 + 16);
                  if (v42 > 1)
                  {
                    if (v42 == 2)
                    {
                      v43 = "Waiting";
                      goto LABEL_132;
                    }

                    if (v42 == 3)
                    {
                      v43 = "Completed";
                      goto LABEL_132;
                    }
                  }

                  else
                  {
                    if (!*(v6 + 16))
                    {
                      v43 = "Idle";
                      goto LABEL_132;
                    }

                    if (v42 == 1)
                    {
                      v43 = "Active";
LABEL_132:
                      *buf = 134218498;
                      *&buf[4] = v6;
                      v53 = 2080;
                      v54 = v35;
                      v55 = 2080;
                      v56 = v43;
                      _os_log_impl(&dword_19D52D000, v33, OS_LOG_TYPE_DEFAULT, "%p - [InitiatingAction=%s][State=%s] SOAuthorizationSession::continueStartAfterGetAuthorizationHints: Checking page for policy choice.", buf, 0x20u);
                      goto LABEL_133;
                    }
                  }

                  v43 = 0;
                  goto LABEL_132;
                }
              }

              v36 = qword_1ED640838;
              if (!os_log_type_enabled(qword_1ED640838, OS_LOG_TYPE_DEFAULT))
              {
LABEL_136:
                v48 = v49;
                v49 = 0;
                if (v48)
                {
                  if (atomic_fetch_add_explicit(v48, 0xFFFFFFFE, memory_order_relaxed) == 2)
                  {
                    WTF::StringImpl::destroy(v48, v37);
                  }
                }

                goto LABEL_139;
              }

              v38 = *(v6 + 48);
              if (*(v6 + 48))
              {
                if (v38 == 2)
                {
                  v39 = "SubFrame";
                }

                else if (v38 == 1)
                {
                  v39 = "PopUp";
                }

                else
                {
                  v39 = 0;
                }
              }

              else
              {
                v39 = "Redirect";
              }

              v40 = *(v6 + 16);
              if (v40 > 1)
              {
                if (v40 == 2)
                {
                  v41 = "Waiting";
                  goto LABEL_118;
                }

                if (v40 == 3)
                {
                  v41 = "Completed";
                  goto LABEL_118;
                }
              }

              else
              {
                if (!*(v6 + 16))
                {
                  v41 = "Idle";
                  goto LABEL_118;
                }

                if (v40 == 1)
                {
                  v41 = "Active";
LABEL_118:
                  *buf = 134218498;
                  *&buf[4] = v6;
                  v53 = 2080;
                  v54 = v39;
                  v55 = 2080;
                  v56 = v41;
                  _os_log_impl(&dword_19D52D000, v36, OS_LOG_TYPE_DEFAULT, "%p - [InitiatingAction=%s][State=%s] SOAuthorizationSession::continueStartAfterGetAuthorizationHints: Early return due to null m_page", buf, 0x20u);
                  goto LABEL_136;
                }
              }

              v41 = 0;
              goto LABEL_118;
            }
          }

          v22 = 0;
          goto LABEL_68;
        }

        if (!v14)
        {
LABEL_139:
          WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::SOAuthorizationSession,(WTF::DestructionThread)2>::deref((v6 + 8));
          return;
        }

        v17 = *(v6 + 48);
        if (*(v6 + 48))
        {
          if (v17 == 2)
          {
            v18 = "SubFrame";
          }

          else if (v17 == 1)
          {
            v18 = "PopUp";
          }

          else
          {
            v18 = 0;
          }
        }

        else
        {
          v18 = "Redirect";
        }

        v19 = *(v6 + 16);
        if (v19 > 1)
        {
          if (v19 == 2)
          {
            v20 = "Waiting";
            goto LABEL_65;
          }

          if (v19 == 3)
          {
            v20 = "Completed";
            goto LABEL_65;
          }
        }

        else
        {
          if (!*(v6 + 16))
          {
            v20 = "Idle";
            goto LABEL_65;
          }

          if (v19 == 1)
          {
            v20 = "Active";
LABEL_65:
            *buf = 134218498;
            *&buf[4] = v6;
            v53 = 2080;
            v54 = v18;
            v55 = 2080;
            v56 = v20;
            _os_log_impl(&dword_19D52D000, v7, OS_LOG_TYPE_DEFAULT, "%p - [InitiatingAction=%s][State=%s] SOAuthorizationSession::start (getAuthorizationHintsWithURL completion handler): Returning early due to error or lack of hints.", buf, 0x20u);
            goto LABEL_139;
          }
        }

        v20 = 0;
        goto LABEL_65;
      }

      v8 = *(v6 + 48);
      if (*(v6 + 48))
      {
        if (v8 == 2)
        {
          v9 = "SubFrame";
        }

        else if (v8 == 1)
        {
          v9 = "PopUp";
        }

        else
        {
          v9 = 0;
        }
      }

      else
      {
        v9 = "Redirect";
      }

      v11 = *(v6 + 16);
      if (v11 > 1)
      {
        if (v11 == 2)
        {
          v12 = "Waiting";
          if (!a3)
          {
            goto LABEL_21;
          }

          goto LABEL_23;
        }

        if (v11 == 3)
        {
          v12 = "Completed";
          if (a3)
          {
            goto LABEL_23;
          }

LABEL_21:
          v13 = 0;
LABEL_24:
          *buf = 134218754;
          *&buf[4] = v6;
          v53 = 2080;
          v54 = v9;
          v55 = 2080;
          v56 = v12;
          v57 = 2048;
          v58 = v13;
          _os_log_impl(&dword_19D52D000, v7, OS_LOG_TYPE_DEFAULT, "%p - [InitiatingAction=%s][State=%s] SOAuthorizationSession::start: Receive SOAuthorizationHints (error=%ld)", buf, 0x2Au);
          v7 = qword_1ED640838;
          goto LABEL_25;
        }
      }

      else
      {
        if (!*(v6 + 16))
        {
          v12 = "Idle";
          if (!a3)
          {
            goto LABEL_21;
          }

          goto LABEL_23;
        }

        if (v11 == 1)
        {
          v12 = "Active";
          if (!a3)
          {
            goto LABEL_21;
          }

LABEL_23:
          v13 = [a3 code];
          goto LABEL_24;
        }
      }

      v12 = 0;
      if (a3)
      {
        goto LABEL_23;
      }

      goto LABEL_21;
    }
  }

  v10 = qword_1ED640838;
  if (os_log_type_enabled(qword_1ED640838, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_19D52D000, v10, OS_LOG_TYPE_ERROR, "SOAuthorizationSession::start (getAuthorizationHintsWithURL completion handler): Returning early because weakThis is now null.", buf, 2u);
  }
}

void sub_19DD4C9B0(_Unwind_Exception *a1, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  if (v10)
  {
    WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v10, a2);
  }

  CFRelease(*(v11 - 8));
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, v14);
    }
  }

  WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::SOAuthorizationSession,(WTF::DestructionThread)2>::deref((v12 + 8));
  _Unwind_Resume(a1);
}

atomic_ullong *WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::SOAuthorizationSession,(WTF::DestructionThread)2>::deref(atomic_ullong *result)
{
  v1 = result;
  while (1)
  {
    v2 = *result;
    if ((*result & 1) == 0)
    {
      break;
    }

    v3 = *result;
    atomic_compare_exchange_strong_explicit(result, &v3, v2 - 2, memory_order_relaxed, memory_order_relaxed);
    if (v3 == v2)
    {
      if (v2 == 3)
      {
        v4 = WTF::fastMalloc(0x10);
        *v4 = &unk_1F1106EE0;
        v4[1] = v1;
        v6 = v4;
        WTF::ensureOnMainRunLoop();
        result = v6;
        if (v6)
        {
          return (*(*v6 + 8))(v6);
        }
      }

      return result;
    }
  }

  v5 = *result;

  return WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebKit::SOAuthorizationSession,(WTF::DestructionThread)2>(v5);
}

void sub_19DD4CAF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 8))(a10);
  }

  _Unwind_Resume(exception_object);
}

atomic_uchar *WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebKit::SOAuthorizationSession,(WTF::DestructionThread)2>(atomic_uchar *this)
{
  v1 = this;
  v2 = 0;
  atomic_compare_exchange_strong_explicit(this, &v2, 1u, memory_order_acquire, memory_order_acquire);
  if (v2)
  {
    this = MEMORY[0x19EB01E30](this);
  }

  v3 = *(v1 + 1) - 1;
  *(v1 + 1) = v3;
  if (v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = *(v1 + 3);
    ++*(v1 + 2);
    *(v1 + 3) = 0;
  }

  v5 = 1;
  atomic_compare_exchange_strong_explicit(v1, &v5, 0, memory_order_release, memory_order_relaxed);
  if (v5 == 1)
  {
    if (v3)
    {
      return this;
    }
  }

  else
  {
    v7 = v3;
    this = WTF::Lock::unlockSlow(v1);
    if (v7)
    {
      return this;
    }
  }

  v6 = WTF::fastMalloc(0x18);
  *v6 = &unk_1F1106F08;
  *(v6 + 1) = v1;
  *(v6 + 2) = v4;
  v8 = v6;
  WTF::ensureOnMainRunLoop();
  this = v8;
  if (v8)
  {
    return (*(*v8 + 8))(v8);
  }

  return this;
}

void sub_19DD4CC30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 8))(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t WTF::Detail::CallableWrapper<void WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebKit::SOAuthorizationSession,(WTF::DestructionThread)2>(void)::{lambda(void)#1},void>::call(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  result = *(a1 + 16);
  if (result)
  {
    result = (*(*result + 8))(result);
  }

  v4 = 0;
  v5 = 1;
  atomic_compare_exchange_strong_explicit(v3, &v4, 1u, memory_order_acquire, memory_order_acquire);
  if (v4)
  {
    result = MEMORY[0x19EB01E30](v3);
  }

  v6 = *(v3 + 16) - 1;
  *(v3 + 16) = v6;
  atomic_compare_exchange_strong_explicit(v3, &v5, 0, memory_order_release, memory_order_relaxed);
  if (v5 == 1)
  {
    if (v6)
    {
      return result;
    }
  }

  else
  {
    v7 = v6;
    result = WTF::Lock::unlockSlow(v3);
    if (v7)
    {
      return result;
    }
  }

  return WTF::fastFree(v3, a2);
}

uint64_t mpark::detail::move_constructor<mpark::detail::traits<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String>,(mpark::detail::Trait)1>::~move_constructor(uint64_t a1, WTF::StringImpl *a2)
{
  v3 = *(a1 + 16);
  if (v3 != 255)
  {
    v4 = *a1;
    if (v3)
    {
      *a1 = 0;
      if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v4, a2);
      }
    }

    else if (v4)
    {
      *a1 = 0;
      *(a1 + 8) = 0;
      WTF::fastFree(v4, a2);
    }
  }

  *(a1 + 16) = -1;
  return a1;
}

uint64_t mpark::detail::move_constructor<mpark::detail::traits<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String>,(mpark::detail::Trait)1>::move_constructor(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 16) = -1;
  v3 = *(a2 + 16);
  if (v3 != 255)
  {
    if (*(a2 + 16))
    {
      v5 = *a2;
      *a2 = 0;
      *a1 = v5;
    }

    else
    {
      *a1 = 0;
      *(a1 + 8) = 0;
      WTF::VectorBuffer<unsigned char,0ul,WTF::FastMalloc>::adopt(a1, a2);
      LOBYTE(v3) = *(a2 + 16);
    }

    *(a1 + 16) = v3;
  }

  return a1;
}

void sub_19DD4CE38(_Unwind_Exception *a1, void *a2)
{
  v4 = *v2;
  if (*v2)
  {
    *v2 = 0;
    *(v2 + 8) = 0;
    WTF::fastFree(v4, a2);
  }

  mpark::detail::move_constructor<mpark::detail::traits<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String>,(mpark::detail::Trait)1>::~move_constructor(v2, a2);
  _Unwind_Resume(a1);
}

void *WTF::Detail::CallableWrapper<WebKit::SOAuthorizationCoordinator::tryAuthorize(WTF::Ref<API::NavigationAction,WTF::RawPtrTraits<API::NavigationAction>,WTF::DefaultRefDerefTraits<API::NavigationAction>> &&,WebKit::WebPageProxy &,WTF::Function<void ()(BOOL)> &&)::$_0,void,BOOL>::~CallableWrapper(void *a1)
{
  *a1 = &unk_1F1106F30;
  v2 = a1[4];
  a1[4] = 0;
  if (v2)
  {
  }

  v3 = a1[3];
  a1[3] = 0;
  if (v3)
  {
    CFRelease(*(v3 + 8));
  }

  v4 = a1[2];
  a1[2] = 0;
  if (v4)
  {
    CFRelease(*(v4 + 8));
  }

  v5 = a1[1];
  a1[1] = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::SOAuthorizationCoordinator::tryAuthorize(WTF::Ref<API::NavigationAction,WTF::RawPtrTraits<API::NavigationAction>,WTF::DefaultRefDerefTraits<API::NavigationAction>> &&,WebKit::WebPageProxy &,WTF::Function<void ()(BOOL)> &&)::$_0,void,BOOL>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F1106F30;
  v3 = *(this + 4);
  *(this + 4) = 0;
  if (v3)
  {
  }

  v4 = *(this + 3);
  *(this + 3) = 0;
  if (v4)
  {
    CFRelease(*(v4 + 8));
  }

  v5 = *(this + 2);
  *(this + 2) = 0;
  if (v5)
  {
    CFRelease(*(v5 + 8));
  }

  v6 = *(this + 1);
  *(this + 1) = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  return WTF::fastFree(this, a2);
}

void WTF::Detail::CallableWrapper<WebKit::SOAuthorizationCoordinator::tryAuthorize(WTF::Ref<API::NavigationAction,WTF::RawPtrTraits<API::NavigationAction>,WTF::DefaultRefDerefTraits<API::NavigationAction>> &&,WebKit::WebPageProxy &,WTF::Function<void ()(BOOL)> &&)::$_0,void,BOOL>::call(void *a1, char a2)
{
  if (a2)
  {
    v3 = *(a1[2] + 24);
    if (!v3 || (CFRetain(*(v3 + 8)), (*(v3 + 16) & 1) != 0))
    {
      v4 = a1[4];
      if (v4)
      {
        v5 = v4;
      }

      v6 = a1[3];
      v7 = a1[1];
      a1[1] = 0;
      *buf = v7;
      v8 = WTF::fastMalloc(0x60);
      if (v4)
      {
        v9 = v4;
        v10 = v4;
      }

      WebKit::NavigationSOAuthorizationSession::NavigationSOAuthorizationSession(v8, v4, a1 + 2, v6, 0, buf);
      if (v4)
      {
      }

      *v8 = &unk_1F1106C78;
      *(v8 + 64) = &unk_1F1106CE0;
      if (v4)
      {
      }

      v11 = *buf;
      if (!*buf)
      {
        goto LABEL_13;
      }

      goto LABEL_38;
    }

    v15 = *(a1[3] + 424);
    if (v15)
    {
      v16 = MEMORY[0x1E698DCE0];
      WTF::URL::createCFURL(buf, (v15 + 64));
      v17 = [v16 isURLFromAppleOwnedDomain:*buf];
      v18 = v17;
      v19 = *buf;
      *buf = 0;
      if (v19)
      {

        if (v18)
        {
LABEL_25:
          v4 = a1[4];
          if (v4)
          {
            v20 = v4;
          }

          v21 = a1[3];
          v22 = a1[1];
          a1[1] = 0;
          v31 = v22;
          API::FrameHandle::create(*(v3 + 264), 1, &v30);
          v23 = *(v30 + 2);
          v8 = WTF::fastMalloc(0x98);
          if (v4)
          {
            v24 = v4;
            v25 = v4;
          }

          WebKit::NavigationSOAuthorizationSession::NavigationSOAuthorizationSession(v8, v4, a1 + 2, v21, 2, &v31);
          if (v4)
          {
          }

          *(v8 + 104) = 0;
          *v8 = &unk_1F1106D60;
          *(v8 + 64) = &unk_1F1106DD0;
          *(v8 + 96) = &unk_1F1106E08;
          *(v8 + 112) = v23;
          *(v8 + 120) = 0u;
          *(v8 + 136) = 0u;
          v26 = WebKit::WebFrameProxy::webFrame(v23, v23 != 0);
          if (v26)
          {
            v27 = v26;
            CFRetain(*(v26 + 8));
            WTF::WeakHashSet<WebKit::FrameLoadStateObserver,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::add<WebKit::FrameLoadStateObserver>(v27 + 224, (v8 + 96), buf);
            CFRelease(*(v27 + 8));
          }

          if (v4)
          {
          }

          v28 = v30;
          v30 = 0;
          if (v28)
          {
            CFRelease(*(v28 + 1));
          }

          v11 = v31;
          if (!v31)
          {
LABEL_13:
            if (!v4)
            {
              goto LABEL_15;
            }

            goto LABEL_14;
          }

LABEL_38:
          (*(*v11 + 8))(v11);
          if (!v4)
          {
LABEL_15:
            v12 = a1[4];
            *buf = v8;
            [v12 setSession:{buf, v30}];
            v13 = *buf;
            *buf = 0;
            if (v13)
            {
              WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::SOAuthorizationSession,(WTF::DestructionThread)2>::deref((v13 + 8));
            }

            if (!v3)
            {
              return;
            }

LABEL_44:
            CFRelease(*(v3 + 8));
            return;
          }

LABEL_14:

          goto LABEL_15;
        }
      }

      else if (v17)
      {
        goto LABEL_25;
      }
    }

    v29 = qword_1ED640838;
    if (os_log_type_enabled(qword_1ED640838, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_19D52D000, v29, OS_LOG_TYPE_ERROR, "SOAuthorizationCoordinator::tryAuthorize: Attempting to perform subframe navigation for non-Apple authorization URL.", buf, 2u);
    }

    (*(*a1[1] + 16))(a1[1], 0);
    goto LABEL_44;
  }

  v14 = qword_1ED640838;
  if (os_log_type_enabled(qword_1ED640838, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19D52D000, v14, OS_LOG_TYPE_DEFAULT, "SOAuthorizationCoordinator::tryAuthorize: The requested URL is not registered for AppSSO handling. No further action needed.", buf, 2u);
  }

  (*(*a1[1] + 16))(a1[1], 0);
}

void sub_19DD4D39C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  WTF::fastFree(v10, v14);
  if (a9)
  {
    CFRelease(*(a9 + 8));
  }

  if (a10)
  {
    (*(*a10 + 8))(a10);
  }

  if (v11)
  {
  }

  CFRelease(*(v12 + 8));
  _Unwind_Resume(a1);
}

void *WTF::Detail::CallableWrapper<WebKit::SOAuthorizationCoordinator::tryAuthorize(WTF::Ref<API::PageConfiguration,WTF::RawPtrTraits<API::PageConfiguration>,WTF::DefaultRefDerefTraits<API::PageConfiguration>> &&,WTF::Ref<API::NavigationAction,WTF::RawPtrTraits<WTF::Ref<API::PageConfiguration,WTF::RawPtrTraits<API::PageConfiguration>,WTF::DefaultRefDerefTraits<API::PageConfiguration>> &&>,WTF::DefaultRefDerefTraits<WTF::Ref<API::PageConfiguration,WTF::RawPtrTraits<API::PageConfiguration>,WTF::DefaultRefDerefTraits<API::PageConfiguration>> &&>> &&,WebKit::WebPageProxy &,WTF::CompletionHandler<void ()(WTF::RefPtr<WTF::Ref<API::NavigationAction,WTF::RawPtrTraits<WTF::Ref<API::PageConfiguration,WTF::RawPtrTraits<API::PageConfiguration>,WTF::DefaultRefDerefTraits<API::PageConfiguration>> &&>,WTF::DefaultRefDerefTraits<WTF::Ref<API::PageConfiguration,WTF::RawPtrTraits<API::PageConfiguration>,WTF::DefaultRefDerefTraits<API::PageConfiguration>> &&>> &,WTF::RawPtrTraits<WTF::Ref<API::NavigationAction,WTF::RawPtrTraits<WTF::Ref<API::PageConfiguration,WTF::RawPtrTraits<API::PageConfiguration>,WTF::DefaultRefDerefTraits<API::PageConfiguration>> &&>,WTF::DefaultRefDerefTraits<WTF::Ref<API::PageConfiguration,WTF::RawPtrTraits<API::PageConfiguration>,WTF::DefaultRefDerefTraits<API::PageConfiguration>> &&>> &>,WTF::DefaultRefDerefTraits<WTF::Ref<API::NavigationAction,WTF::RawPtrTraits<WTF::Ref<API::PageConfiguration,WTF::RawPtrTraits<API::PageConfiguration>,WTF::DefaultRefDerefTraits<API::PageConfiguration>> &&>,WTF::DefaultRefDerefTraits<WTF::Ref<API::PageConfiguration,WTF::RawPtrTraits<API::PageConfiguration>,WTF::DefaultRefDerefTraits<API::PageConfiguration>> &&>> &>> &&)> &&,WTF::Function<void ()(WTF::Ref<API::NavigationAction,WTF::RawPtrTraits<WTF::Ref<API::PageConfiguration,WTF::RawPtrTraits<API::PageConfiguration>,WTF::DefaultRefDerefTraits<API::PageConfiguration>> &&>,WTF::DefaultRefDerefTraits<WTF::Ref<API::PageConfiguration,WTF::RawPtrTraits<API::PageConfiguration>,WTF::DefaultRefDerefTraits<API::PageConfiguration>> &&>>,WTF::RefPtr<WTF::Ref<API::NavigationAction,WTF::RawPtrTraits<WTF::Ref<API::PageConfiguration,WTF::RawPtrTraits<API::PageConfiguration>,WTF::DefaultRefDerefTraits<API::PageConfiguration>> &&>,WTF::DefaultRefDerefTraits<WTF::Ref<API::PageConfiguration,WTF::RawPtrTraits<API::PageConfiguration>,WTF::DefaultRefDerefTraits<API::PageConfiguration>> &&>> &,WTF::RawPtrTraits<WTF::Ref<API::NavigationAction,WTF::RawPtrTraits<WTF::Ref<API::PageConfiguration,WTF::RawPtrTraits<API::PageConfiguration>,WTF::DefaultRefDerefTraits<API::PageConfiguration>> &&>,WTF::DefaultRefDerefTraits<WTF::Ref<API::PageConfiguration,WTF::RawPtrTraits<API::PageConfiguration>,WTF::DefaultRefDerefTraits<API::PageConfiguration>> &&>> &>,WTF::DefaultRefDerefTraits<WTF::Ref<API::NavigationAction,WTF::RawPtrTraits<WTF::Ref<API::PageConfiguration,WTF::RawPtrTraits<API::PageConfiguration>,WTF::DefaultRefDerefTraits<API::PageConfiguration>> &&>,WTF::DefaultRefDerefTraits<WTF::Ref<API::PageConfiguration,WTF::RawPtrTraits<API::PageConfiguration>,WTF::DefaultRefDerefTraits<API::PageConfiguration>> &&>> &>> &&)> &&)::$_0,void,BOOL>::~CallableWrapper(void *a1)
{
  *a1 = &unk_1F1106F58;
  v2 = a1[6];
  a1[6] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = a1[5];
  a1[5] = 0;
  if (v3)
  {
  }

  v4 = a1[4];
  a1[4] = 0;
  if (v4)
  {
    CFRelease(*(v4 + 8));
  }

  v5 = a1[3];
  a1[3] = 0;
  if (v5)
  {
    CFRelease(*(v5 + 8));
  }

  v6 = a1[2];
  a1[2] = 0;
  if (v6)
  {
    CFRelease(*(v6 + 8));
  }

  v7 = a1[1];
  a1[1] = 0;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::SOAuthorizationCoordinator::tryAuthorize(WTF::Ref<API::PageConfiguration,WTF::RawPtrTraits<API::PageConfiguration>,WTF::DefaultRefDerefTraits<API::PageConfiguration>> &&,WTF::Ref<API::NavigationAction,WTF::RawPtrTraits<WTF::Ref<API::PageConfiguration,WTF::RawPtrTraits<API::PageConfiguration>,WTF::DefaultRefDerefTraits<API::PageConfiguration>> &&>,WTF::DefaultRefDerefTraits<WTF::Ref<API::PageConfiguration,WTF::RawPtrTraits<API::PageConfiguration>,WTF::DefaultRefDerefTraits<API::PageConfiguration>> &&>> &&,WebKit::WebPageProxy &,WTF::CompletionHandler<void ()(WTF::RefPtr<WTF::Ref<API::NavigationAction,WTF::RawPtrTraits<WTF::Ref<API::PageConfiguration,WTF::RawPtrTraits<API::PageConfiguration>,WTF::DefaultRefDerefTraits<API::PageConfiguration>> &&>,WTF::DefaultRefDerefTraits<WTF::Ref<API::PageConfiguration,WTF::RawPtrTraits<API::PageConfiguration>,WTF::DefaultRefDerefTraits<API::PageConfiguration>> &&>> &,WTF::RawPtrTraits<WTF::Ref<API::NavigationAction,WTF::RawPtrTraits<WTF::Ref<API::PageConfiguration,WTF::RawPtrTraits<API::PageConfiguration>,WTF::DefaultRefDerefTraits<API::PageConfiguration>> &&>,WTF::DefaultRefDerefTraits<WTF::Ref<API::PageConfiguration,WTF::RawPtrTraits<API::PageConfiguration>,WTF::DefaultRefDerefTraits<API::PageConfiguration>> &&>> &>,WTF::DefaultRefDerefTraits<WTF::Ref<API::NavigationAction,WTF::RawPtrTraits<WTF::Ref<API::PageConfiguration,WTF::RawPtrTraits<API::PageConfiguration>,WTF::DefaultRefDerefTraits<API::PageConfiguration>> &&>,WTF::DefaultRefDerefTraits<WTF::Ref<API::PageConfiguration,WTF::RawPtrTraits<API::PageConfiguration>,WTF::DefaultRefDerefTraits<API::PageConfiguration>> &&>> &>> &&)> &&,WTF::Function<void ()(WTF::Ref<API::NavigationAction,WTF::RawPtrTraits<WTF::Ref<API::PageConfiguration,WTF::RawPtrTraits<API::PageConfiguration>,WTF::DefaultRefDerefTraits<API::PageConfiguration>> &&>,WTF::DefaultRefDerefTraits<WTF::Ref<API::PageConfiguration,WTF::RawPtrTraits<API::PageConfiguration>,WTF::DefaultRefDerefTraits<API::PageConfiguration>> &&>>,WTF::RefPtr<WTF::Ref<API::NavigationAction,WTF::RawPtrTraits<WTF::Ref<API::PageConfiguration,WTF::RawPtrTraits<API::PageConfiguration>,WTF::DefaultRefDerefTraits<API::PageConfiguration>> &&>,WTF::DefaultRefDerefTraits<WTF::Ref<API::PageConfiguration,WTF::RawPtrTraits<API::PageConfiguration>,WTF::DefaultRefDerefTraits<API::PageConfiguration>> &&>> &,WTF::RawPtrTraits<WTF::Ref<API::NavigationAction,WTF::RawPtrTraits<WTF::Ref<API::PageConfiguration,WTF::RawPtrTraits<API::PageConfiguration>,WTF::DefaultRefDerefTraits<API::PageConfiguration>> &&>,WTF::DefaultRefDerefTraits<WTF::Ref<API::PageConfiguration,WTF::RawPtrTraits<API::PageConfiguration>,WTF::DefaultRefDerefTraits<API::PageConfiguration>> &&>> &>,WTF::DefaultRefDerefTraits<WTF::Ref<API::NavigationAction,WTF::RawPtrTraits<WTF::Ref<API::PageConfiguration,WTF::RawPtrTraits<API::PageConfiguration>,WTF::DefaultRefDerefTraits<API::PageConfiguration>> &&>,WTF::DefaultRefDerefTraits<WTF::Ref<API::PageConfiguration,WTF::RawPtrTraits<API::PageConfiguration>,WTF::DefaultRefDerefTraits<API::PageConfiguration>> &&>> &>> &&)> &&)::$_0,void,BOOL>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F1106F58;
  v3 = *(this + 6);
  *(this + 6) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 5);
  *(this + 5) = 0;
  if (v4)
  {
  }

  v5 = *(this + 4);
  *(this + 4) = 0;
  if (v5)
  {
    CFRelease(*(v5 + 8));
  }

  v6 = *(this + 3);
  *(this + 3) = 0;
  if (v6)
  {
    CFRelease(*(v6 + 8));
  }

  v7 = *(this + 2);
  *(this + 2) = 0;
  if (v7)
  {
    CFRelease(*(v7 + 8));
  }

  v8 = *(this + 1);
  *(this + 1) = 0;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  return WTF::fastFree(this, a2);
}

atomic_ullong *WTF::Detail::CallableWrapper<WebKit::SOAuthorizationCoordinator::tryAuthorize(WTF::Ref<API::PageConfiguration,WTF::RawPtrTraits<API::PageConfiguration>,WTF::DefaultRefDerefTraits<API::PageConfiguration>> &&,WTF::Ref<API::NavigationAction,WTF::RawPtrTraits<WTF::Ref<API::PageConfiguration,WTF::RawPtrTraits<API::PageConfiguration>,WTF::DefaultRefDerefTraits<API::PageConfiguration>> &&>,WTF::DefaultRefDerefTraits<WTF::Ref<API::PageConfiguration,WTF::RawPtrTraits<API::PageConfiguration>,WTF::DefaultRefDerefTraits<API::PageConfiguration>> &&>> &&,WebKit::WebPageProxy &,WTF::CompletionHandler<void ()(WTF::RefPtr<WTF::Ref<API::NavigationAction,WTF::RawPtrTraits<WTF::Ref<API::PageConfiguration,WTF::RawPtrTraits<API::PageConfiguration>,WTF::DefaultRefDerefTraits<API::PageConfiguration>> &&>,WTF::DefaultRefDerefTraits<WTF::Ref<API::PageConfiguration,WTF::RawPtrTraits<API::PageConfiguration>,WTF::DefaultRefDerefTraits<API::PageConfiguration>> &&>> &,WTF::RawPtrTraits<WTF::Ref<API::NavigationAction,WTF::RawPtrTraits<WTF::Ref<API::PageConfiguration,WTF::RawPtrTraits<API::PageConfiguration>,WTF::DefaultRefDerefTraits<API::PageConfiguration>> &&>,WTF::DefaultRefDerefTraits<WTF::Ref<API::PageConfiguration,WTF::RawPtrTraits<API::PageConfiguration>,WTF::DefaultRefDerefTraits<API::PageConfiguration>> &&>> &>,WTF::DefaultRefDerefTraits<WTF::Ref<API::NavigationAction,WTF::RawPtrTraits<WTF::Ref<API::PageConfiguration,WTF::RawPtrTraits<API::PageConfiguration>,WTF::DefaultRefDerefTraits<API::PageConfiguration>> &&>,WTF::DefaultRefDerefTraits<WTF::Ref<API::PageConfiguration,WTF::RawPtrTraits<API::PageConfiguration>,WTF::DefaultRefDerefTraits<API::PageConfiguration>> &&>> &>> &&)> &&,WTF::Function<void ()(WTF::Ref<API::NavigationAction,WTF::RawPtrTraits<WTF::Ref<API::PageConfiguration,WTF::RawPtrTraits<API::PageConfiguration>,WTF::DefaultRefDerefTraits<API::PageConfiguration>> &&>,WTF::DefaultRefDerefTraits<WTF::Ref<API::PageConfiguration,WTF::RawPtrTraits<API::PageConfiguration>,WTF::DefaultRefDerefTraits<API::PageConfiguration>> &&>>,WTF::RefPtr<WTF::Ref<API::NavigationAction,WTF::RawPtrTraits<WTF::Ref<API::PageConfiguration,WTF::RawPtrTraits<API::PageConfiguration>,WTF::DefaultRefDerefTraits<API::PageConfiguration>> &&>,WTF::DefaultRefDerefTraits<WTF::Ref<API::PageConfiguration,WTF::RawPtrTraits<API::PageConfiguration>,WTF::DefaultRefDerefTraits<API::PageConfiguration>> &&>> &,WTF::RawPtrTraits<WTF::Ref<API::NavigationAction,WTF::RawPtrTraits<WTF::Ref<API::PageConfiguration,WTF::RawPtrTraits<API::PageConfiguration>,WTF::DefaultRefDerefTraits<API::PageConfiguration>> &&>,WTF::DefaultRefDerefTraits<WTF::Ref<API::PageConfiguration,WTF::RawPtrTraits<API::PageConfiguration>,WTF::DefaultRefDerefTraits<API::PageConfiguration>> &&>> &>,WTF::DefaultRefDerefTraits<WTF::Ref<API::NavigationAction,WTF::RawPtrTraits<WTF::Ref<API::PageConfiguration,WTF::RawPtrTraits<API::PageConfiguration>,WTF::DefaultRefDerefTraits<API::PageConfiguration>> &&>,WTF::DefaultRefDerefTraits<WTF::Ref<API::PageConfiguration,WTF::RawPtrTraits<API::PageConfiguration>,WTF::DefaultRefDerefTraits<API::PageConfiguration>> &&>> &>> &&)> &&)::$_0,void,BOOL>::call(void *a1, char a2)
{
  if (a2)
  {
    v3 = a1[5];
    if (v3)
    {
      v4 = v3;
    }

    v5 = a1[4];
    v6 = WTF::fastMalloc(0x68);
    if (v3)
    {
      v7 = v3;
      *v16 = v3;
      v8 = v3;
    }

    else
    {
      *v16 = 0;
    }

    WebKit::SOAuthorizationSession::SOAuthorizationSession(v6, v16, a1 + 2, v5, 1);
    if (v3)
    {
    }

    *v6 = &unk_1F1106C30;
    v11 = a1[3];
    a1[3] = 0;
    v6[8] = v11;
    v12 = a1[6];
    a1[6] = 0;
    v6[9] = v12;
    v13 = a1[1];
    a1[1] = 0;
    v6[11] = 0;
    v6[12] = 0;
    v6[10] = v13;
    if (v3)
    {
    }

    v14 = a1[5];
    *v16 = v6;
    result = [v14 setSession:v16];
    v15 = *v16;
    *v16 = 0;
    if (v15)
    {
      return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::SOAuthorizationSession,(WTF::DestructionThread)2>::deref((v15 + 8));
    }
  }

  else
  {
    v9 = qword_1ED640838;
    if (os_log_type_enabled(qword_1ED640838, OS_LOG_TYPE_ERROR))
    {
      *v16 = 0;
      _os_log_error_impl(&dword_19D52D000, v9, OS_LOG_TYPE_ERROR, "SOAuthorizationCoordinator::tryAuthorize (2): Attempting to perform subframe navigation.", v16, 2u);
    }

    return (*(*a1[1] + 16))(a1[1], a1 + 2, a1 + 6);
  }

  return result;
}

void sub_19DD4D8C8(_Unwind_Exception *a1)
{
  WTF::fastFree(v1, v4);
  if (v2)
  {
  }

  _Unwind_Resume(a1);
}

void *WTF::Detail::CallableWrapper<WebKit::SOAuthorizationSession::continueStartAfterGetAuthorizationHints(WTF::String const&)::$_0,void,WebKit::SOAuthorizationLoadPolicy>::~CallableWrapper(void *a1, void *a2)
{
  *a1 = &unk_1F1106F80;
  v3 = a1[2];
  a1[2] = 0;
  if (v3)
  {
    WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v3, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::SOAuthorizationSession::continueStartAfterGetAuthorizationHints(WTF::String const&)::$_0,void,WebKit::SOAuthorizationLoadPolicy>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F1106F80;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

void WTF::Detail::CallableWrapper<WebKit::SOAuthorizationSession::continueStartAfterGetAuthorizationHints(WTF::String const&)::$_0,void,WebKit::SOAuthorizationLoadPolicy>::call(uint64_t a1, int a2)
{
  v74 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 16);
  if (v3)
  {
    WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::LibWebRTCCodecsProxy>(&v60, v3, *(a1 + 8));
    v4 = v60;
    if (v60)
    {
      v5 = qword_1ED640838;
      v6 = os_log_type_enabled(qword_1ED640838, OS_LOG_TYPE_DEFAULT);
      if (a2)
      {
        if (!v6)
        {
LABEL_39:
          WebKit::SOAuthorizationSession::fallBackToWebPath(v4);
          goto LABEL_101;
        }

        v8 = *(v4 + 48);
        if (*(v4 + 48))
        {
          if (v8 == 2)
          {
            v9 = "SubFrame";
          }

          else if (v8 == 1)
          {
            v9 = "PopUp";
          }

          else
          {
            v9 = 0;
          }
        }

        else
        {
          v9 = "Redirect";
        }

        v12 = *(v4 + 16);
        if (v12 > 1)
        {
          if (v12 == 2)
          {
            v13 = "Waiting";
            goto LABEL_38;
          }

          if (v12 == 3)
          {
            v13 = "Completed";
            goto LABEL_38;
          }
        }

        else
        {
          if (!*(v4 + 16))
          {
            v13 = "Idle";
            goto LABEL_38;
          }

          if (v12 == 1)
          {
            v13 = "Active";
LABEL_38:
            *buf = 134218498;
            *&buf[4] = v4;
            v64 = 2080;
            v65 = v9;
            v66 = 2080;
            v67 = v13;
            _os_log_impl(&dword_19D52D000, v5, OS_LOG_TYPE_DEFAULT, "%p - [InitiatingAction=%s][State=%s] SOAuthorizationSession::continueStartAfterDecidePolicy: Receive SOAuthorizationLoadPolicy::Ignore. Falling back to web path.", buf, 0x20u);
            goto LABEL_39;
          }
        }

        v13 = 0;
        goto LABEL_38;
      }

      if (!v6)
      {
LABEL_43:
        v16 = *(v4 + 24);
        if (v16)
        {
          v17 = *(v4 + 40);
          if (v17)
          {
            if (*(v17 + 8))
            {
              v18 = *(v4 + 32);
              if (v18)
              {
                v19 = *MEMORY[0x1E696EBA8];
                if (*MEMORY[0x1E696EBA8])
                {
                  atomic_fetch_add_explicit(v19, 2u, memory_order_relaxed);
                  v18 = *(v4 + 32);
                }

                v20 = *(v18 + 16);
                if (v20)
                {
                  v6 = WebCore::SecurityOriginData::securityOrigin(buf, (v20 + 224));
                  v21 = *buf;
                  if (*buf)
                  {
                    atomic_fetch_add(*buf, 1u);
                    v22 = *buf;
                    *buf = 0;
                    if (v22)
                    {
                      WTF::ThreadSafeRefCounted<WebCore::SecurityOrigin,(WTF::DestructionThread)0>::deref(v22, v7);
                    }

                    if (*(v21 + 32) != 1)
                    {
                      WebCore::SecurityOrigin::toString(buf, v21);
                      v23 = *buf;
                      *buf = 0;
                      if (v19)
                      {
                        if (atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
                        {
                          WTF::StringImpl::destroy(v19, v7);
                        }

                        v24 = *buf;
                        *buf = 0;
                        if (v24 && atomic_fetch_add_explicit(v24, 0xFFFFFFFE, memory_order_relaxed) == 2)
                        {
                          WTF::StringImpl::destroy(v24, v7);
                        }
                      }

                      v19 = v23;
                    }

                    v6 = WTF::ThreadSafeRefCounted<WebCore::SecurityOrigin,(WTF::DestructionThread)0>::deref(v21, v7);
                  }
                }

                if (*(v4 + 48) == 2)
                {
                  v25 = *(v4 + 40);
                  if (!v25)
                  {
                    goto LABEL_146;
                  }

                  v26 = *(v25 + 8);
                  if (!v26)
                  {
                    goto LABEL_146;
                  }

                  v27 = *(v26 + 408);
                  if (v27)
                  {
                    WebCore::SecurityOrigin::create(v62, (v27 + 64), v7);
                    WebCore::SecurityOrigin::toString(buf, v62[0]);
                    v29 = *buf;
                    *buf = 0;
                    if (v19)
                    {
                      if (atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
                      {
                        WTF::StringImpl::destroy(v19, v28);
                      }

                      v30 = *buf;
                      *buf = 0;
                      if (v30 && atomic_fetch_add_explicit(v30, 0xFFFFFFFE, memory_order_relaxed) == 2)
                      {
                        WTF::StringImpl::destroy(v30, v28);
                      }
                    }

                    v6 = v62[0];
                    v62[0] = 0;
                    if (v6)
                    {
                      v6 = WTF::ThreadSafeRefCounted<WebCore::SecurityOrigin,(WTF::DestructionThread)0>::deref(v6, v28);
                    }

                    v19 = v29;
                  }
                }

                v61[0] = PAL::get_AppSSO_SOAuthorizationOptionUserActionInitiated(v6);
                v62[0] = [MEMORY[0x1E696AD98] numberWithBool:*(*(v4 + 32) + 288) != 0];
                v61[1] = PAL::get_AppSSO_SOAuthorizationOptionInitiatorOrigin(v62[0]);
                if (v19)
                {
                  atomic_fetch_add_explicit(v19, 2u, memory_order_relaxed);
                  v31 = MEMORY[0x19EB00B70](buf, v19);
                  if (atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
                  {
                    v31 = WTF::StringImpl::destroy(v19, v32);
                  }
                }

                else
                {
                  *buf = &stru_1F1147748;
                  v31 = &stru_1F1147748;
                }

                v62[1] = *buf;
                v61[2] = PAL::get_AppSSO_SOAuthorizationOptionInitiatingAction(v31);
                v62[2] = [MEMORY[0x1E696AD98] numberWithInteger:*(v4 + 48)];
                v41 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v62 forKeys:v61 count:3];
                v42 = v41;
                if (v41)
                {
                  v43 = v41;
                }

                v44 = *buf;
                *buf = 0;
                if (v44)
                {
                }

                v45 = *(v4 + 40);
                if (v45)
                {
                  v46 = *(v45 + 8);
                  if (v46)
                  {
                    WeakRetained = objc_loadWeakRetained((*(v46 + 16) + 2248));
                    v48 = [WeakRetained UIDelegate];
                    if (objc_opt_respondsToSelector())
                    {
                      v49 = [v48 _hostSceneIdentifierForWebView:WeakRetained];
                      if (v49)
                      {
                        v50 = [v42 mutableCopy];
                        [v50 setObject:v49 forKeyedSubscript:@"callerSceneIdentifier"];
                        if (v42)
                        {
                        }

                        v42 = v50;
                      }
                    }

                    [*(v4 + 24) setAuthorizationOptions:v42];
                    v51 = WebCore::ResourceRequest::nsURLRequest();
                    v52 = v51;
                    if (v51)
                    {
                      v53 = v51;
                    }

                    v54 = qword_1ED640838;
                    if (!os_log_type_enabled(qword_1ED640838, OS_LOG_TYPE_DEFAULT))
                    {
                      goto LABEL_137;
                    }

                    v55 = *(v4 + 48);
                    if (*(v4 + 48))
                    {
                      if (v55 == 2)
                      {
                        v56 = "SubFrame";
                      }

                      else if (v55 == 1)
                      {
                        v56 = "PopUp";
                      }

                      else
                      {
                        v56 = 0;
                      }
                    }

                    else
                    {
                      v56 = "Redirect";
                    }

                    v57 = *(v4 + 16);
                    if (v57 > 1)
                    {
                      if (v57 == 2)
                      {
                        v58 = "Waiting";
                        goto LABEL_136;
                      }

                      if (v57 == 3)
                      {
                        v58 = "Completed";
                        goto LABEL_136;
                      }
                    }

                    else
                    {
                      if (!*(v4 + 16))
                      {
                        v58 = "Idle";
                        goto LABEL_136;
                      }

                      if (v57 == 1)
                      {
                        v58 = "Active";
LABEL_136:
                        *buf = 134218498;
                        *&buf[4] = v4;
                        v64 = 2080;
                        v65 = v56;
                        v66 = 2080;
                        v67 = v58;
                        _os_log_impl(&dword_19D52D000, v54, OS_LOG_TYPE_DEFAULT, "%p - [InitiatingAction=%s][State=%s] SOAuthorizationSession::continueStartAfterGetAuthorizationHints: Beginning authorization with AppSSO.", buf, 0x20u);
LABEL_137:
                        [*(v4 + 24) beginAuthorizationWithURL:objc_msgSend(v52 httpHeaders:"URL") httpBody:{objc_msgSend(v52, "allHTTPHeaderFields"), objc_msgSend(v52, "HTTPBody")}];
                        if (v52)
                        {
                        }

                        if (WeakRetained)
                        {
                        }

                        if (v42)
                        {
                        }

                        if (v19 && atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
                        {
                          WTF::StringImpl::destroy(v19, v59);
                        }

                        goto LABEL_101;
                      }
                    }

                    v58 = 0;
                    goto LABEL_136;
                  }
                }

LABEL_146:
                __break(0xC471u);
                JUMPOUT(0x19DD4E1F8);
              }
            }
          }
        }

        v33 = qword_1ED640838;
        if (!os_log_type_enabled(qword_1ED640838, OS_LOG_TYPE_DEFAULT))
        {
LABEL_101:
          if (v60)
          {
            WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::SOAuthorizationSession,(WTF::DestructionThread)2>::deref((v60 + 8));
          }

          return;
        }

        v34 = *(v4 + 48);
        if (*(v4 + 48))
        {
          if (v34 == 2)
          {
            v35 = "SubFrame";
          }

          else if (v34 == 1)
          {
            v35 = "PopUp";
          }

          else
          {
            v35 = 0;
          }
        }

        else
        {
          v35 = "Redirect";
        }

        v36 = *(v4 + 16);
        if (v36 > 1)
        {
          if (v36 == 2)
          {
            v37 = "Waiting";
            goto LABEL_96;
          }

          if (v36 == 3)
          {
            v37 = "Completed";
            goto LABEL_96;
          }
        }

        else
        {
          if (!*(v4 + 16))
          {
            v37 = "Idle";
            goto LABEL_96;
          }

          if (v36 == 1)
          {
            v37 = "Active";
LABEL_96:
            v38 = *(v4 + 40);
            if (v38)
            {
              v39 = *(v38 + 8);
              if (v39)
              {
                v38 = v39 - 16;
              }

              else
              {
                v38 = 0;
              }
            }

            v40 = *(v4 + 32);
            *buf = 134219266;
            *&buf[4] = v4;
            v64 = 2080;
            v65 = v35;
            v66 = 2080;
            v67 = v37;
            v68 = 1024;
            v69 = v16 != 0;
            v70 = 2048;
            v71 = v38;
            v72 = 2048;
            v73 = v40;
            _os_log_impl(&dword_19D52D000, v33, OS_LOG_TYPE_DEFAULT, "%p - [InitiatingAction=%s][State=%s] SOAuthorizationSession::continueStartAfterGetAuthorizationHints: Early return m_soAuthorization=%d, m_page=%p, navigationAction=%p.", buf, 0x3Au);
            goto LABEL_101;
          }
        }

        v37 = 0;
        goto LABEL_96;
      }

      v10 = *(v4 + 48);
      if (*(v4 + 48))
      {
        if (v10 == 2)
        {
          v11 = "SubFrame";
        }

        else if (v10 == 1)
        {
          v11 = "PopUp";
        }

        else
        {
          v11 = 0;
        }
      }

      else
      {
        v11 = "Redirect";
      }

      v14 = *(v4 + 16);
      if (v14 > 1)
      {
        if (v14 == 2)
        {
          v15 = "Waiting";
          goto LABEL_42;
        }

        if (v14 == 3)
        {
          v15 = "Completed";
          goto LABEL_42;
        }
      }

      else
      {
        if (!*(v4 + 16))
        {
          v15 = "Idle";
          goto LABEL_42;
        }

        if (v14 == 1)
        {
          v15 = "Active";
LABEL_42:
          *buf = 134218498;
          *&buf[4] = v4;
          v64 = 2080;
          v65 = v11;
          v66 = 2080;
          v67 = v15;
          _os_log_impl(&dword_19D52D000, v5, OS_LOG_TYPE_DEFAULT, "%p - [InitiatingAction=%s][State=%s] SOAuthorizationSession::continueStartAfterDecidePolicy: Receive SOAuthorizationLoadPolicy::Allow", buf, 0x20u);
          goto LABEL_43;
        }
      }

      v15 = 0;
      goto LABEL_42;
    }
  }
}

void sub_19DD4E21C(_Unwind_Exception *a1, WTF::StringImpl *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (v13)
  {

    if (!v12)
    {
LABEL_6:
      if (!v11)
      {
LABEL_8:
        if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v10, a2);
        }

        if (a10)
        {
          WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::SOAuthorizationSession,(WTF::DestructionThread)2>::deref((a10 + 8));
        }

        _Unwind_Resume(a1);
      }

LABEL_7:

      goto LABEL_8;
    }
  }

  else if (!v12)
  {
    goto LABEL_6;
  }

  if (!v11)
  {
    goto LABEL_8;
  }

  goto LABEL_7;
}

void *WTF::Detail::CallableWrapper<WebKit::SOAuthorizationSession::complete(NSHTTPURLResponse *,NSData *)::$_0,void>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F1106FA8;
  v3 = a1[36];
  a1[36] = 0;
  if (v3)
  {
  }

  v4 = a1[34];
  a1[34] = 0;
  if (v4)
  {
  }

  WebCore::ResourceResponseBase::~ResourceResponseBase((a1 + 3), a2);
  v6 = a1[2];
  a1[2] = 0;
  if (v6)
  {
    WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v6, v5);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::SOAuthorizationSession::complete(NSHTTPURLResponse *,NSData *)::$_0,void>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F1106FA8;
  v3 = a1[36];
  a1[36] = 0;
  if (v3)
  {
  }

  v4 = a1[34];
  a1[34] = 0;
  if (v4)
  {
  }

  WebCore::ResourceResponseBase::~ResourceResponseBase((a1 + 3), a2);
  v6 = a1[2];
  a1[2] = 0;
  if (v6)
  {
    WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v6, v5);
  }

  return WTF::fastFree(a1, v5);
}

atomic_ullong *WTF::Detail::CallableWrapper<WebKit::SOAuthorizationSession::complete(NSHTTPURLResponse *,NSData *)::$_0,void>::call(atomic_ullong *result)
{
  v16 = *MEMORY[0x1E69E9840];
  v1 = result[2];
  if (v1)
  {
    v2 = result;
    result = WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::LibWebRTCCodecsProxy>(&v9, v1, result[1]);
    v3 = v9;
    if (v9)
    {
      v4 = qword_1ED640838;
      if (!os_log_type_enabled(qword_1ED640838, OS_LOG_TYPE_DEFAULT))
      {
LABEL_22:
        (*(*v3 + 40))(v3, v2 + 3, v2[36]);
        return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::SOAuthorizationSession,(WTF::DestructionThread)2>::deref((v3 + 8));
      }

      v5 = *(v3 + 48);
      if (*(v3 + 48))
      {
        if (v5 == 2)
        {
          v6 = "SubFrame";
        }

        else if (v5 == 1)
        {
          v6 = "PopUp";
        }

        else
        {
          v6 = 0;
        }
      }

      else
      {
        v6 = "Redirect";
      }

      v7 = *(v3 + 16);
      if (v7 > 1)
      {
        if (v7 == 2)
        {
          v8 = "Waiting";
          goto LABEL_21;
        }

        if (v7 == 3)
        {
          v8 = "Completed";
          goto LABEL_21;
        }
      }

      else
      {
        if (!*(v3 + 16))
        {
          v8 = "Idle";
          goto LABEL_21;
        }

        if (v7 == 1)
        {
          v8 = "Active";
LABEL_21:
          *buf = 134218498;
          v11 = v3;
          v12 = 2080;
          v13 = v6;
          v14 = 2080;
          v15 = v8;
          _os_log_impl(&dword_19D52D000, v4, OS_LOG_TYPE_DEFAULT, "%p - [InitiatingAction=%s][State=%s] SOAuthorizationSession::complete: Cookies are set.", buf, 0x20u);
          goto LABEL_22;
        }
      }

      v8 = 0;
      goto LABEL_21;
    }
  }

  return result;
}

WTF::StringImpl *WTF::VectorTypeOperations<std::pair<WTF::URL,mpark::variant<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String>>>::destruct(WTF::StringImpl *result, WTF::StringImpl *a2)
{
  if (a2)
  {
    v2 = a2 << 6;
    v3 = result + 40;
    do
    {
      mpark::detail::move_constructor<mpark::detail::traits<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String>,(mpark::detail::Trait)1>::~move_constructor(v3, a2);
      result = *(v3 - 40);
      *(v3 - 40) = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          result = WTF::StringImpl::destroy(result, a2);
        }
      }

      v3 += 64;
      v2 -= 64;
    }

    while (v2);
  }

  return result;
}

uint64_t std::pair<WTF::URL,mpark::variant<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String>>::pair[abi:sn200100](uint64_t a1, uint64_t *a2)
{
  WTF::URL::URL(a1, a2);
  mpark::detail::move_constructor<mpark::detail::traits<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String>,(mpark::detail::Trait)1>::move_constructor(v4 + 40, (a2 + 5));
  return a1;
}

void sub_19DD4E690(_Unwind_Exception *exception_object, WTF::StringImpl *a2)
{
  v4 = *v2;
  *v2 = 0;
  if (v4)
  {
    if (atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v4, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

WTF::StringImpl *WTF::VectorMover<false,std::pair<WTF::URL,mpark::variant<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String>>>::move(WTF::StringImpl *result, uint64_t *a2, uint64_t a3)
{
  if (result != a2)
  {
    v5 = result;
    do
    {
      std::pair<WTF::URL,mpark::variant<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String>>::pair[abi:sn200100](a3, v5);
      mpark::detail::move_constructor<mpark::detail::traits<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String>,(mpark::detail::Trait)1>::~move_constructor((v5 + 5), v6);
      result = *v5;
      *v5 = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          result = WTF::StringImpl::destroy(result, v7);
        }
      }

      a3 += 64;
      v5 += 8;
    }

    while (v5 != a2);
  }

  return result;
}

void WebKit::PCM::Database::~Database(WebKit::PCM::Database *this)
{
  *this = &unk_1F1106FD0;
  WebKit::DatabaseUtilities::close(this);
  if ((byte_1ED642691 & 1) == 0)
  {
    *&dword_1ED6426A8 = 1;
    qword_1ED6426A0 = 0;
    byte_1ED642691 = 1;
    goto LABEL_15;
  }

  if (++dword_1ED6426A8 > dword_1ED6426AC)
  {
    v3 = qword_1ED6426A0;
    if (qword_1ED6426A0)
    {
      v4 = *(qword_1ED6426A0 - 4);
      if (!v4)
      {
LABEL_16:
        v10 = *(v3 - 4);
        if (6 * *(v3 - 12) < v10 && v10 > 8)
        {
          WTF::HashTable<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::FastMalloc>::shrinkToBestSize(&qword_1ED6426A0);
          v3 = qword_1ED6426A0;
          dword_1ED6426A8 = 0;
          if (!qword_1ED6426A0)
          {
            goto LABEL_23;
          }
        }

        else
        {
          dword_1ED6426A8 = 0;
        }

        LODWORD(v3) = *(v3 - 12);
        if (v3 > 0x7FFFFFFE)
        {
          v12 = -2;
          goto LABEL_25;
        }

LABEL_23:
        v12 = 2 * v3;
LABEL_25:
        dword_1ED6426AC = v12;
        goto LABEL_26;
      }

      v5 = 0;
      v6 = 8 * v4;
      v7 = qword_1ED6426A0 - 8;
      do
      {
        v8 = *(v7 + v6);
        if ((v8 + 1) >= 2 && !*(v8 + 8))
        {
          *(v7 + v6) = 0;
          if (atomic_fetch_add(v8, 0xFFFFFFFF) == 1)
          {
            atomic_store(1u, v8);
            WTF::fastFree(v8, v2);
          }

          *(v7 + v6) = -1;
          ++v5;
        }

        v6 -= 8;
      }

      while (v6);
      v3 = qword_1ED6426A0;
      if (v5)
      {
        v9 = *(qword_1ED6426A0 - 12) - v5;
        *(qword_1ED6426A0 - 16) += v5;
        *(v3 - 12) = v9;
        goto LABEL_16;
      }

      if (qword_1ED6426A0)
      {
        goto LABEL_16;
      }
    }

LABEL_15:
    LODWORD(v3) = 0;
    dword_1ED6426A8 = 0;
    goto LABEL_23;
  }

LABEL_26:
  v13 = *(this + 12);
  if (v13 && *(v13 + 8))
  {
    v32 = *(this + 12);
    v14 = WTF::HashTable<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::FastMalloc>::find<WTF::HashSetTranslator<WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>>,(WTF::ShouldValidateKey)1,WTF::DefaultWeakPtrImpl const*>(&qword_1ED6426A0, &v32);
    v2 = v14;
    if (qword_1ED6426A0)
    {
      v15 = qword_1ED6426A0 + 8 * *(qword_1ED6426A0 - 4);
      if (v15 == v14)
      {
        goto LABEL_35;
      }
    }

    else
    {
      if (!v14)
      {
        goto LABEL_35;
      }

      v15 = 0;
    }

    if (v15 != v14)
    {
      WTF::HashTable<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::FastMalloc>::remove(&qword_1ED6426A0, v14);
    }
  }

LABEL_35:
  v16 = *(this + 27);
  *(this + 27) = 0;
  if (v16)
  {
    WebCore::SQLiteStatement::operator delete(v16);
  }

  v17 = *(this + 26);
  *(this + 26) = 0;
  if (v17)
  {
    WebCore::SQLiteStatement::operator delete(v17);
  }

  v18 = *(this + 25);
  *(this + 25) = 0;
  if (v18)
  {
    WebCore::SQLiteStatement::operator delete(v18);
  }

  v19 = *(this + 24);
  *(this + 24) = 0;
  if (v19)
  {
    WebCore::SQLiteStatement::operator delete(v19);
  }

  v20 = *(this + 23);
  *(this + 23) = 0;
  if (v20)
  {
    WebCore::SQLiteStatement::operator delete(v20);
  }

  v21 = *(this + 22);
  *(this + 22) = 0;
  if (v21)
  {
    WebCore::SQLiteStatement::operator delete(v21);
  }

  v22 = *(this + 21);
  *(this + 21) = 0;
  if (v22)
  {
    WebCore::SQLiteStatement::operator delete(v22);
  }

  v23 = *(this + 20);
  *(this + 20) = 0;
  if (v23)
  {
    WebCore::SQLiteStatement::operator delete(v23);
  }

  v24 = *(this + 19);
  *(this + 19) = 0;
  if (v24)
  {
    WebCore::SQLiteStatement::operator delete(v24);
  }

  v25 = *(this + 18);
  *(this + 18) = 0;
  if (v25)
  {
    WebCore::SQLiteStatement::operator delete(v25);
  }

  v26 = *(this + 17);
  *(this + 17) = 0;
  if (v26)
  {
    WebCore::SQLiteStatement::operator delete(v26);
  }

  v27 = *(this + 16);
  *(this + 16) = 0;
  if (v27)
  {
    WebCore::SQLiteStatement::operator delete(v27);
  }

  v28 = *(this + 15);
  *(this + 15) = 0;
  if (v28)
  {
    WebCore::SQLiteStatement::operator delete(v28);
  }

  v29 = *(this + 14);
  *(this + 14) = 0;
  if (v29)
  {
    WebCore::SQLiteStatement::operator delete(v29);
  }

  if (*(this + 26) == 1)
  {
    v30 = *(this + 12);
    if (v30)
    {
      *(v30 + 8) = 0;
      v31 = *(this + 12);
      *(this + 12) = 0;
      if (v31)
      {
        if (atomic_fetch_add(v31, 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, v31);
          WTF::fastFree(v31, v2);
        }
      }
    }

    WebKit::DatabaseUtilities::~DatabaseUtilities(this);
  }

  else
  {
    __break(0xC471u);
  }
}

{
  WebKit::PCM::Database::~Database(this);

  bmalloc::api::tzoneFree(v1, v2);
}

uint64_t *WebKit::PCM::Database::expectedTableAndIndexQueries(WebKit::PCM::Database *this)
{
  v37[4] = *MEMORY[0x1E69E9840];
  if ((_MergedGlobals_76 & 1) == 0)
  {
    v30[0] = "PCMObservedDomains";
    v30[1] = 19;
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    v27 = v35[0];
    LOBYTE(v28) = 0;
    v29 = 0;
    WTF::KeyValuePair<WTF::String,std::pair<WTF::String,std::optional<WTF::String>>>::KeyValuePair<WTF::ASCIILiteral,std::pair<WTF::String,std::optional<WTF::String>>>(v35, v30, &v27);
    v26[0] = "UnattributedPrivateClickMeasurement";
    v26[1] = 36;
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    v2 = v31;
    WebKit::DatabaseUtilities::stripIndexQueryToMatchStoredValue("CREATE UNIQUE INDEX IF NOT EXISTS UnattributedPrivateClickMeasurement_sourceSiteDomainID_destinationSiteDomainID_sourceApplicationBundleID on UnattributedPrivateClickMeasurement(sourceSiteDomainID, destinationSiteDomainID, sourceApplicationBundleID)", &v22);
    v23 = v2;
    v24 = v22;
    v25 = 1;
    WTF::KeyValuePair<WTF::String,std::pair<WTF::String,std::optional<WTF::String>>>::KeyValuePair<WTF::ASCIILiteral,std::pair<WTF::String,std::optional<WTF::String>>>(&v36, v26, &v23);
    v21[0] = "AttributedPrivateClickMeasurement";
    v21[1] = 34;
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    v3 = v31;
    WebKit::DatabaseUtilities::stripIndexQueryToMatchStoredValue("CREATE UNIQUE INDEX IF NOT EXISTS AttributedPrivateClickMeasurement_sourceSiteDomainID_destinationSiteDomainID_sourceApplicationBundleID on AttributedPrivateClickMeasurement(sourceSiteDomainID, destinationSiteDomainID, sourceApplicationBundleID)", &v17);
    v18 = v3;
    v19 = v17;
    v20 = 1;
    WTF::KeyValuePair<WTF::String,std::pair<WTF::String,std::optional<WTF::String>>>::KeyValuePair<WTF::ASCIILiteral,std::pair<WTF::String,std::optional<WTF::String>>>(v37, v21, &v18);
    WTF::HashMap<WTF::String,std::pair<WTF::String,std::optional<WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<std::pair<WTF::String,std::optional<WTF::String>>>,WTF::MemoryCompactLookupOnlyRobinHoodHashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::HashMap(&v31, v35, 3);
    v5 = 0;
    qword_1ED6426B0 = v31;
    dword_1ED6426C0 = v33;
    byte_1ED6426C4 = v34;
    v6 = v32;
    v31 = 0;
    v32 = 0;
    qword_1ED6426B8 = v6;
    v33 = 0;
    v34 = 0;
    do
    {
      v7 = &v35[v5];
      if (LOBYTE(v37[v5 + 3]) == 1)
      {
        v8 = v7[10];
        v7[10] = 0;
        if (v8)
        {
          if (atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v8, v4);
          }
        }
      }

      v9 = v7[9];
      v7[9] = 0;
      if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v9, v4);
      }

      v10 = v7[8];
      v7[8] = 0;
      if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v10, v4);
      }

      v5 -= 4;
    }

    while (v5 != -12);
    if (v20 == 1)
    {
      v11 = v19;
      v19 = 0;
      if (v11)
      {
        if (atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v11, v4);
        }
      }
    }

    v12 = v18;
    v18 = 0;
    if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v12, v4);
    }

    if (v25 == 1)
    {
      v13 = v24;
      v24 = 0;
      if (v13)
      {
        if (atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v13, v4);
        }
      }
    }

    v14 = v23;
    v23 = 0;
    if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v14, v4);
    }

    if (v29 == 1)
    {
      v15 = v28;
      v28 = 0;
      if (v15)
      {
        if (atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v15, v4);
        }
      }
    }

    v16 = v27;
    v27 = 0;
    if (v16 && atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v16, v4);
    }

    _MergedGlobals_76 = 1;
  }

  return &qword_1ED6426B0;
}

void *WebKit::PCM::Database::interruptAllDatabases(WebKit::PCM::Database *this)
{
  if ((byte_1ED642691 & 1) == 0)
  {
    *&dword_1ED6426A8 = 0;
    qword_1ED6426A0 = 0;
    byte_1ED642691 = 1;
  }

  v16 = &qword_1ED6426A0;
  v17 = WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::begin(&qword_1ED6426A0);
  v18 = v1;
  v2 = qword_1ED6426A0;
  if (qword_1ED6426A0)
  {
    v3 = *(qword_1ED6426A0 - 4);
    v4 = qword_1ED6426A0 + 8 * v3;
    v19 = v4;
    v20 = v4;
    WTF::WeakHashSet<WebKit::RemoteLayerBackingStore,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::WeakHashSetConstIterator::skipEmptyBuckets(&v16);
  }

  else
  {
    v19 = 0;
    v20 = 0;
    WTF::WeakHashSet<WebKit::RemoteLayerBackingStore,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::WeakHashSetConstIterator::skipEmptyBuckets(&v16);
    v4 = 0;
    v3 = 0;
  }

  v11 = &qword_1ED6426A0;
  v12 = v4;
  v13 = v4;
  v14 = v4;
  v15 = v2 + 8 * v3;
  result = WTF::WeakHashSet<WebKit::RemoteLayerBackingStore,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::WeakHashSetConstIterator::skipEmptyBuckets(&v11);
  v6 = v17;
  v7 = v12;
  while (v6 != v7)
  {
    v8 = *(*v6 + 8);
    v9 = *(v8 + 104);
    *(v8 + 104) = v9 + 1;
    if (*(v8 + 24))
    {
      WebCore::SQLiteDatabase::interrupt();
      v9 = *(v8 + 104) - 1;
    }

    if (v9)
    {
      *(v8 + 104) = v9;
    }

    else
    {
      (*(*v8 + 64))(v8);
    }

    v10 = v6 + 1;
    v17 = v6 + 1;
    if (v6 + 1 != v18)
    {
      do
      {
        if ((*v10 + 1) > 1)
        {
          break;
        }

        ++v10;
      }

      while (v10 != v18);
      v17 = v10;
    }

    result = WTF::WeakHashSet<WebKit::RemoteLayerBackingStore,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::WeakHashSetConstIterator::skipEmptyBuckets(&v16);
    v6 = v17;
    ++*(v16 + 2);
  }

  return result;
}

uint64_t WebKit::PCM::Database::createUniqueIndices(WebKit::PCM::Database *this)
{
  result = WebCore::SQLiteDatabase::executeCommand();
  if (result)
  {

    return WebCore::SQLiteDatabase::executeCommand();
  }

  return result;
}

uint64_t WebKit::PCM::Database::createSchema(WebKit::PCM::Database *this)
{
  if (!WebCore::SQLiteDatabase::executeCommand() || !WebCore::SQLiteDatabase::executeCommand() || !WebCore::SQLiteDatabase::executeCommand() || !WebCore::SQLiteDatabase::executeCommand())
  {
    return 0;
  }

  return WebCore::SQLiteDatabase::executeCommand();
}

_BYTE *WebKit::PCM::Database::insertPrivateClickMeasurement(uint64_t a1, uint64_t a2, int a3)
{
  v28 = *MEMORY[0x1E69E9840];
  WebKit::DatabaseUtilities::beginTransactionIfNecessary(a1, v23);
  v8 = WebKit::PCM::Database::ensureDomainID(a1, (a2 + 8));
  v9 = WebKit::PCM::Database::ensureDomainID(a1, (a2 + 16));
  if (!HIDWORD(v8) || !HIDWORD(v9))
  {
    return WTF::ScopeExit<WTF::Function<void ()(void)>>::~ScopeExit(v23);
  }

  if (a3)
  {
    if (*(a2 + 200))
    {
      v10 = *(a2 + 192);
    }

    else
    {
      v10 = -1.0;
    }

    if (*(a2 + 184) && *(a2 + 176) == 1)
    {
      v11 = *(a2 + 152);
      if (v11)
      {
        atomic_fetch_add_explicit(v11, 2u, memory_order_relaxed);
      }

      v3 = *(a2 + 160);
      if (v3)
      {
        atomic_fetch_add_explicit(v3, 2u, memory_order_relaxed);
      }

      v4 = *(a2 + 168);
      if (v4)
      {
        atomic_fetch_add_explicit(v4, 2u, memory_order_relaxed);
      }

      v12 = 1;
    }

    else
    {
      v11 = 0;
      v12 = 0;
    }

    if (*(a2 + 216))
    {
      v15 = *(a2 + 208);
    }

    else
    {
      v15 = -1.0;
    }

    WebCore::SQLiteDatabase::prepareStatement();
    if (v22)
    {
      goto LABEL_74;
    }

    v13 = WebCore::SQLiteStatement::bindInt(v21);
    if (v13)
    {
      goto LABEL_74;
    }

    if (!v22)
    {
      v13 = WebCore::SQLiteStatement::bindInt(v21);
      if (v13)
      {
        goto LABEL_74;
      }

      if (!v22)
      {
        v13 = WebCore::SQLiteStatement::bindInt(v21);
        if (v13)
        {
          goto LABEL_74;
        }

        if (!v22)
        {
          v13 = WebCore::SQLiteStatement::bindInt(v21);
          if (v13)
          {
            goto LABEL_74;
          }

          if (!v22)
          {
            v13 = WebCore::SQLiteStatement::bindInt(v21);
            if (v13)
            {
              goto LABEL_74;
            }

            if (!v22)
            {
              v13 = WebCore::SQLiteStatement::bindDouble(v21, *(a2 + 24));
              if (v13)
              {
                goto LABEL_74;
              }

              if (!v22)
              {
                v13 = WebCore::SQLiteStatement::bindDouble(v21, v10);
                if (v13)
                {
                  goto LABEL_74;
                }

                if (!v22)
                {
                  v13 = WebCore::SQLiteStatement::bindText();
                  if (v13)
                  {
                    goto LABEL_74;
                  }

                  if (!v22)
                  {
                    v13 = WebCore::SQLiteStatement::bindText();
                    if (v13)
                    {
                      goto LABEL_74;
                    }

                    if (!v22)
                    {
                      v13 = WebCore::SQLiteStatement::bindText();
                      if (v13)
                      {
                        goto LABEL_74;
                      }

                      if (!v22)
                      {
                        v13 = WebCore::SQLiteStatement::bindDouble(v21, v15);
                        if (v13)
                        {
                          goto LABEL_74;
                        }

                        if (!v22)
                        {
                          v13 = WebCore::SQLiteStatement::bindText();
                          if (v13)
                          {
                            goto LABEL_74;
                          }

                          if (!v22)
                          {
                            v13 = WebCore::SQLiteStatement::bindText();
                            if (v13)
                            {
                              goto LABEL_74;
                            }

                            if (!v22)
                            {
                              v13 = WebCore::SQLiteStatement::bindText();
                              if (v13)
                              {
                                goto LABEL_74;
                              }

                              if (!v22)
                              {
                                v13 = WebCore::SQLiteStatement::bindText();
                                if (v13)
                                {
                                  goto LABEL_74;
                                }

                                if (!v22)
                                {
                                  if (WebCore::SQLiteStatement::step(v21) == 101)
                                  {
LABEL_76:
                                    if (!v22)
                                    {
                                      WebCore::SQLiteStatement::~SQLiteStatement(v21);
                                    }

                                    if (v12)
                                    {
                                      if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
                                      {
                                        WTF::StringImpl::destroy(v4, v16);
                                      }

                                      if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
                                      {
                                        WTF::StringImpl::destroy(v3, v16);
                                      }

                                      if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
                                      {
                                        WTF::StringImpl::destroy(v11, v16);
                                      }
                                    }

                                    return WTF::ScopeExit<WTF::Function<void ()(void)>>::~ScopeExit(v23);
                                  }

LABEL_74:
                                  v17 = qword_1ED640FE0;
                                  if (os_log_type_enabled(qword_1ED640FE0, OS_LOG_TYPE_ERROR))
                                  {
                                    ErrorMsg = WebCore::SQLiteDatabase::lastErrorMsg((a1 + 16));
                                    *buf = 134218243;
                                    v25 = a1;
                                    v26 = 2081;
                                    v27 = ErrorMsg;
                                    _os_log_error_impl(&dword_19D52D000, v17, OS_LOG_TYPE_ERROR, "%p - Database::insertPrivateClickMeasurement insertAttributedPrivateClickMeasurementQuery, error message: %{private}s", buf, 0x16u);
                                  }

                                  goto LABEL_76;
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

LABEL_89:
    mpark::throw_bad_variant_access(v13);
  }

  WebCore::SQLiteDatabase::prepareStatement();
  if (v22)
  {
    goto LABEL_34;
  }

  v13 = WebCore::SQLiteStatement::bindInt(v21);
  if (v13)
  {
    goto LABEL_34;
  }

  if (v22)
  {
    goto LABEL_89;
  }

  v13 = WebCore::SQLiteStatement::bindInt(v21);
  if (v13)
  {
    goto LABEL_34;
  }

  if (v22)
  {
    goto LABEL_89;
  }

  v13 = WebCore::SQLiteStatement::bindInt(v21);
  if (v13)
  {
    goto LABEL_34;
  }

  if (v22)
  {
    goto LABEL_89;
  }

  v13 = WebCore::SQLiteStatement::bindDouble(v21, *(a2 + 24));
  if (v13)
  {
    goto LABEL_34;
  }

  if (v22)
  {
    goto LABEL_89;
  }

  v13 = WebCore::SQLiteStatement::bindText();
  if (v13)
  {
    goto LABEL_34;
  }

  if (v22)
  {
    goto LABEL_89;
  }

  v13 = WebCore::SQLiteStatement::bindText();
  if (v13)
  {
    goto LABEL_34;
  }

  if (v22)
  {
    goto LABEL_89;
  }

  v13 = WebCore::SQLiteStatement::bindText();
  if (v13)
  {
    goto LABEL_34;
  }

  if (v22)
  {
    goto LABEL_89;
  }

  v13 = WebCore::SQLiteStatement::bindText();
  if (v13)
  {
    goto LABEL_34;
  }

  if (v22)
  {
    goto LABEL_89;
  }

  if (WebCore::SQLiteStatement::step(v21) != 101)
  {
LABEL_34:
    v14 = qword_1ED640FE0;
    if (os_log_type_enabled(qword_1ED640FE0, OS_LOG_TYPE_ERROR))
    {
      v20 = WebCore::SQLiteDatabase::lastErrorMsg((a1 + 16));
      *buf = 134218243;
      v25 = a1;
      v26 = 2081;
      v27 = v20;
      _os_log_error_impl(&dword_19D52D000, v14, OS_LOG_TYPE_ERROR, "%p - Database::insertPrivateClickMeasurement insertUnattributedPrivateClickMeasurementQuery, error message: %{private}s", buf, 0x16u);
    }
  }

  if (!v22)
  {
    WebCore::SQLiteStatement::~SQLiteStatement(v21);
  }

  return WTF::ScopeExit<WTF::Function<void ()(void)>>::~ScopeExit(v23);
}

unint64_t WebKit::PCM::Database::ensureDomainID(WebCore::SQLiteStatement **this, const WebCore::RegistrableDomain *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = WebKit::PCM::Database::domainID(this, a2);
  v5 = v4 >> 8;
  v6 = HIDWORD(v4);
  if ((v4 & 0x100000000) == 0)
  {
    WebKit::DatabaseUtilities::scopedStatement(this, this + 27, "insertObservedDomain", &v14);
    if (v14 && !WebCore::SQLiteStatement::bindText())
    {
      if (WebCore::SQLiteStatement::step(v14) == 101)
      {
        v10 = WebKit::PCM::Database::domainID(this, a2);
        v7 = v10;
        v5 = v10 >> 8;
        v6 = HIDWORD(v10);
        goto LABEL_7;
      }

      v8 = qword_1ED640FE0;
      if (!os_log_type_enabled(qword_1ED640FE0, OS_LOG_TYPE_ERROR))
      {
LABEL_6:
        LOBYTE(v6) = 0;
        v7 = 0;
LABEL_7:
        MEMORY[0x19EB0CD50](&v14);
        return v7 | (v6 << 32) | ((v5 & 0xFFFFFF) << 8);
      }

      ErrorMsg = WebCore::SQLiteDatabase::lastErrorMsg((this + 2));
      *buf = 134218243;
      v16 = this;
      v17 = 2081;
      v18 = ErrorMsg;
      v12 = "%p - Database::ensureDomainID failed to commit, error message: %{private}s";
    }

    else
    {
      v8 = qword_1ED640FE0;
      if (!os_log_type_enabled(qword_1ED640FE0, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_6;
      }

      v13 = WebCore::SQLiteDatabase::lastErrorMsg((this + 2));
      *buf = 134218243;
      v16 = this;
      v17 = 2081;
      v18 = v13;
      v12 = "%p - Database::ensureDomainID failed to bind, error message: %{private}s";
    }

    _os_log_error_impl(&dword_19D52D000, v8, OS_LOG_TYPE_ERROR, v12, buf, 0x16u);
    goto LABEL_6;
  }

  v7 = v4;
  return v7 | (v6 << 32) | ((v5 & 0xFFFFFF) << 8);
}

uint64_t WebKit::PCM::Database::domainID(WebCore::SQLiteStatement **this, const WebCore::RegistrableDomain *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  WebKit::DatabaseUtilities::scopedStatement(this, this + 25, "domainID", &v10);
  if (v10 && !WebCore::SQLiteStatement::bindText())
  {
    if (WebCore::SQLiteStatement::step(v10) == 100)
    {
      v8 = WebCore::SQLiteStatement::columnInt(v10);
      v6 = v8 & 0xFFFFFF00;
      v4 = v8;
      v5 = 0x100000000;
      goto LABEL_6;
    }
  }

  else
  {
    v3 = qword_1ED640FE0;
    if (os_log_type_enabled(qword_1ED640FE0, OS_LOG_TYPE_ERROR))
    {
      ErrorMsg = WebCore::SQLiteDatabase::lastErrorMsg((this + 2));
      *buf = 134218243;
      v12 = this;
      v13 = 2081;
      v14 = ErrorMsg;
      _os_log_error_impl(&dword_19D52D000, v3, OS_LOG_TYPE_ERROR, "%p - Database::domainIDFromString failed. Error message: %{private}s", buf, 0x16u);
    }
  }

  v4 = 0;
  v5 = 0;
  v6 = 0;
LABEL_6:
  MEMORY[0x19EB0CD50](&v10);
  return v5 | v6 | v4;
}

uint64_t WebKit::PCM::Database::clearExpiredPrivateClickMeasurement(WebCore::SQLiteStatement **this)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = WTF::WallTime::now(this);
  v4 = v3;
  WebCore::PrivateClickMeasurement::maxAge(v2);
  v6 = v5;
  WebKit::DatabaseUtilities::scopedStatement(this, this + 21, "clearExpiredPrivateClickMeasurement", &v10);
  if (!v10 || WebCore::SQLiteStatement::bindDouble(v10, v4 - v6) || WebCore::SQLiteStatement::step(v10) != 101)
  {
    v7 = qword_1ED640FE0;
    if (os_log_type_enabled(qword_1ED640FE0, OS_LOG_TYPE_ERROR))
    {
      ErrorMsg = WebCore::SQLiteDatabase::lastErrorMsg((this + 2));
      *buf = 134218243;
      v12 = this;
      v13 = 2081;
      v14 = ErrorMsg;
      _os_log_error_impl(&dword_19D52D000, v7, OS_LOG_TYPE_ERROR, "%p - Database::clearExpiredPrivateClickMeasurement, error message: %{private}s", buf, 0x16u);
    }
  }

  return MEMORY[0x19EB0CD50](&v10);
}

void WTF::makeString<WTF::ASCIILiteral,unsigned char,WTF::ASCIILiteral,unsigned char,WTF::ASCIILiteral>(void *a1, _BYTE *a2, uint64_t a3, unsigned int a4, unsigned int a5, _BYTE *a6, uint64_t a7)
{
  if (a3)
  {
    v7 = a3 - 1;
  }

  else
  {
    v7 = 0;
  }

  if (v7 >> 31)
  {
    __break(0xC471u);
    JUMPOUT(0x19DD4FFA8);
  }

  if (a7)
  {
    v8 = a7 - 1;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8 >> 31;
  if (v8 >> 31)
  {
    __break(0xC471u);
    goto LABEL_46;
  }

  v11 = a5;
  v12 = a4;
  v15 = a4;
  do
  {
    LODWORD(v9) = v9 + 1;
    v16 = v15 > 9;
    v15 /= 0xAu;
  }

  while (v16);
  v17 = 0;
  v18 = a5;
  do
  {
    ++v17;
    v16 = v18 > 9;
    v18 /= 0xAu;
  }

  while (v16);
  if (((v17 | v8) & 0x80000000) != 0)
  {
    goto LABEL_43;
  }

  v19 = __OFADD__(v17, v8);
  v20 = v17 + v8;
  if (v19)
  {
    goto LABEL_43;
  }

  v19 = __OFADD__(v20, 17);
  v21 = v20 + 17;
  v22 = v19;
  if ((v9 & 0x80000000) != 0)
  {
    goto LABEL_43;
  }

  if (v22)
  {
    goto LABEL_43;
  }

  v19 = __OFADD__(v9, v21);
  v23 = v9 + v21;
  if (v19)
  {
    goto LABEL_43;
  }

  v24 = (v7 + v23);
  if (__OFADD__(v7, v23))
  {
    goto LABEL_43;
  }

  if (!v24)
  {
    v25 = MEMORY[0x1E696EB88];
    atomic_fetch_add_explicit(MEMORY[0x1E696EB88], 2u, memory_order_relaxed);
    goto LABEL_39;
  }

  if ((v24 & 0x80000000) != 0 || (WTF::tryFastCompactMalloc((v24 + 20)), (v25 = v37) == 0))
  {
LABEL_43:
    *a1 = 0;
    __break(0xC471u);
    goto LABEL_47;
  }

  v26 = (v37 + 20);
  *v37 = 2;
  *(v37 + 4) = v24;
  *(v37 + 8) = v37 + 20;
  *(v37 + 16) = 4;
  if (v7)
  {
    if (v7 == 1)
    {
      *v26 = *a2;
    }

    else
    {
      memcpy((v37 + 20), a2, v7);
    }
  }

  v27 = v24 - v7;
  if (v24 < v7)
  {
    goto LABEL_46;
  }

  v28 = &v26[v7];
  v38 = v12;
  WTF::StringTypeAdapter<unsigned char,void>::writeTo<unsigned char>(&v38, v28, v27);
  LODWORD(v29) = 0;
  v30 = v38;
  do
  {
    v29 = (v29 + 1);
    v16 = v30 > 9;
    v30 /= 0xAu;
  }

  while (v16);
  if (v27 < v29)
  {
    goto LABEL_46;
  }

  v31 = v27 - v29;
  v32 = v28 + v29;
  *v32 = *"' and priority: '";
  *(v32 + 16) = 39;
  if (v31 <= 0x10)
  {
    goto LABEL_46;
  }

  v33 = v31 - 17;
  v34 = v32 + 17;
  v39 = v11;
  WTF::StringTypeAdapter<unsigned char,void>::writeTo<unsigned char>(&v39, v32 + 17, v31 - 17);
  LODWORD(v35) = 0;
  v36 = v39;
  do
  {
    v35 = (v35 + 1);
    v16 = v36 > 9;
    v36 /= 0xAu;
  }

  while (v16);
  if (v33 < v35)
  {
LABEL_46:
    __break(1u);
LABEL_47:
    JUMPOUT(0x19DD4FF88);
  }

  if (v8)
  {
    if (v8 == 1)
    {
      *(v34 + v35) = *a6;
    }

    else
    {
      memcpy((v34 + v35), a6, v8);
    }
  }

LABEL_39:
  *a1 = v25;
}

WTF::StringImpl *WebKit::PCM::Database::attributionToStringForTesting(WebKit::PCM::Database *this, const WebCore::PrivateClickMeasurement *a2)
{
  v4 = *(a2 + 1);
  if (v4)
  {
    atomic_fetch_add_explicit(v4, 2u, memory_order_relaxed);
  }

  v5 = *(a2 + 2);
  if (v5)
  {
    atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed);
  }

  LODWORD(v6) = *a2;
  v131 = 0;
  v132 = 0;
  v133 = 0;
  v134 = 1;
  if (!v4)
  {
    goto LABEL_168;
  }

  v7 = *(v4 + 4);
  if (!v5)
  {
    goto LABEL_169;
  }

LABEL_7:
  for (i = *(v5 + 4); ; i = 0)
  {
    v9 = 0;
    v10 = v6;
    do
    {
      ++v9;
      v11 = v10 > 9;
      v10 /= 0xAu;
    }

    while (v11);
    v12 = __CFADD__(v9, 12);
    v13 = v9 + 12;
    if (v12)
    {
      v13 = -1;
    }

    v12 = __CFADD__(i, v13);
    v14 = i + v13;
    if (v12)
    {
      v14 = -1;
    }

    v12 = __CFADD__(v14, 20);
    v15 = v14 + 20;
    if (v12)
    {
      v15 = -1;
    }

    v12 = __CFADD__(v7, v15);
    v16 = v7 + v15;
    if (v12)
    {
      v16 = -1;
    }

    v12 = __CFADD__(v16, 13);
    v17 = v16 + 13;
    v18 = v12 ? 0xFFFFFFFFLL : v17;
    if ((!v4 || (*(v4 + 16) & 4) != 0) && (!v5 || (*(v5 + 16) & 4) != 0))
    {
      v40 = MEMORY[0x19EB01170](&v131, v18);
      if (v40)
      {
        qmemcpy(v40, "Source site: ", 13);
        if (v41 <= 0xC)
        {
          goto LABEL_167;
        }

        v42 = v41 - 13;
        v43 = v40 + 13;
        v136 = v4;
        WTF::StringTypeAdapter<WTF::StringImpl *,void>::writeTo<unsigned char>(&v136, v40 + 13);
        v44 = v136;
        if (v136)
        {
          v44 = *(v136 + 4);
          if (v42 < v44)
          {
            goto LABEL_167;
          }
        }

        v45 = v42 - v44;
        v46 = &v43[v44];
        *v46 = *"\nAttribute on site: ";
        *(v46 + 4) = 540697972;
        if (v45 <= 0x13)
        {
          goto LABEL_167;
        }

        v47 = v45 - 20;
        v48 = v46 + 20;
        v130[0] = v5;
        WTF::StringTypeAdapter<WTF::StringImpl *,void>::writeTo<unsigned char>(v130, v46 + 20);
        v49 = v130[0];
        if (v130[0])
        {
          v49 = *(v130[0] + 4);
          if (v47 < v49)
          {
            goto LABEL_167;
          }
        }

        v50 = v47 - v49;
        v51 = &v48[v49];
        *v51 = *"\nSource ID: ";
        *(v51 + 2) = 540689481;
        if (v50 <= 0xB)
        {
          goto LABEL_167;
        }

        LOBYTE(v135) = v6;
        v21.n128_f64[0] = WTF::StringTypeAdapter<unsigned char,void>::writeTo<unsigned char>(&v135, (v51 + 12), v50 - 12);
      }
    }

    else
    {
      v19 = WTF::StringBuilder::extendBufferForAppendingWithUpconvert(&v131);
      if (v19)
      {
        v22 = v19;
        v23 = 0;
        v24 = "Source site: ";
        do
        {
          v25 = *v24++;
          *(v19 + v23) = v25;
          v23 += 2;
        }

        while (v23 != 26);
        if (v20 <= 0xC)
        {
          goto LABEL_167;
        }

        v26 = v20 - 13;
        v136 = v4;
        WTF::StringTypeAdapter<WTF::StringImpl *,void>::writeTo<char16_t>(&v136, (v19 + 26));
        if (v136)
        {
          v27 = *(v136 + 4);
          if (v26 < v27)
          {
            goto LABEL_167;
          }
        }

        else
        {
          v27 = 0;
        }

        v28 = 0;
        v29 = v22 + 26 + 2 * v27;
        v30 = "\nAttribute on site: ";
        do
        {
          v31 = *v30++;
          *(v29 + v28) = v31;
          v28 += 2;
        }

        while (v28 != 40);
        if (v26 - v27 <= 0x13)
        {
          goto LABEL_167;
        }

        v32 = v29 + 40;
        v33 = v26 - v27 - 20;
        v130[0] = v5;
        WTF::StringTypeAdapter<WTF::StringImpl *,void>::writeTo<char16_t>(v130, (v29 + 40));
        v34 = v130[0];
        if (v130[0])
        {
          v34 = *(v130[0] + 4);
          if (v33 < v34)
          {
            goto LABEL_167;
          }
        }

        v35 = 0;
        v36 = v32 + 2 * v34;
        v37 = "\nSource ID: ";
        do
        {
          v38 = *v37++;
          *(2 * v27 + 2 * v34 + v22 + 66 + v35) = v38;
          v35 += 2;
        }

        while (v35 != 24);
        v39 = v33 - v34;
        if (v39 <= 0xB)
        {
          goto LABEL_167;
        }

        LOBYTE(v135) = v6;
        v21.n128_f64[0] = WTF::StringTypeAdapter<unsigned char,void>::writeTo<char16_t>(&v135, v36 + 24, v39 - 12);
      }
    }

    if (*(a2 + 184) != 1)
    {
      goto LABEL_141;
    }

    v52 = 0;
    v53 = *(a2 + 56);
    LODWORD(v6) = *(a2 + 57);
    v54 = *(a2 + 200);
    v55 = v53;
    do
    {
      ++v52;
      v11 = v55 > 9;
      v55 /= 0xAu;
    }

    while (v11);
    v56 = 0;
    v57 = *(a2 + 57);
    do
    {
      ++v56;
      v11 = v57 > 9;
      v57 /= 0xAu;
    }

    while (v11);
    v12 = __CFADD__(v56, 59);
    v58 = v56 + 59;
    if (v12)
    {
      v58 = -1;
    }

    v12 = __CFADD__(v52, v58);
    v59 = v52 + v58;
    if (v12)
    {
      v59 = -1;
    }

    v12 = __CFADD__(v59, 27);
    v60 = v59 + 27;
    if (v12)
    {
      v60 = -1;
    }

    v12 = __CFADD__(v133, v60);
    v61 = v133 + v60;
    v62 = v12 ? 0xFFFFFFFFLL : v61;
    if (((v63 = v132) != 0 || (v63 = v131) != 0) && (*(v63 + 16) & 4) == 0)
    {
      v64 = WTF::StringBuilder::extendBufferForAppendingWithUpconvert(&v131);
      if (v64)
      {
        v66 = 0;
        v67 = "\nAttribution trigger data: ";
        do
        {
          v68 = *v67++;
          *&v64[v66] = v68;
          v66 += 2;
        }

        while (v66 != 54);
        if (v65 <= 0x1A)
        {
          goto LABEL_167;
        }

        v69 = v64 + 54;
        v70 = v65 - 27;
        LOBYTE(v136) = v53;
        WTF::StringTypeAdapter<unsigned char,void>::writeTo<char16_t>(&v136, (v64 + 54), v65 - 27);
        LODWORD(v71) = 0;
        v72 = v136;
        do
        {
          v71 = (v71 + 1);
          v11 = v72 > 9;
          v72 /= 0xAu;
        }

        while (v11);
        if (v70 < v71)
        {
          goto LABEL_167;
        }

        v73 = 0;
        v74 = &v69[2 * v71];
        v75 = "\nAttribution priority: ";
        do
        {
          v76 = *v75++;
          *&v74[v73] = v76;
          v73 += 2;
        }

        while (v73 != 46);
        v77 = v70 - v71;
        if (v77 <= 0x16)
        {
          goto LABEL_167;
        }

        v78 = v77 - 23;
        LOBYTE(v130[0]) = v6;
        WTF::StringTypeAdapter<unsigned char,void>::writeTo<char16_t>(v130, (v74 + 46), v77 - 23);
        v79 = 0;
        v80 = LOBYTE(v130[0]);
        do
        {
          ++v79;
          v11 = v80 > 9;
          v80 /= 0xAu;
        }

        while (v11);
        if (v78 < v79)
        {
          goto LABEL_167;
        }

        v81 = &v74[2 * v79];
        v82 = 46;
        v83 = "\nAttribution earliest time to send: ";
        do
        {
          v84 = *v83++;
          *&v81[v82] = v84;
          v82 += 2;
        }

        while (v82 != 118);
      }
    }

    else
    {
      v64 = MEMORY[0x19EB01170](&v131, v62, v21);
      if (v64)
      {
        qmemcpy(v64, "\nAttribution trigger data: ", 27);
        if (v85 <= 0x1A)
        {
          goto LABEL_167;
        }

        v86 = v85 - 27;
        v87 = v64 + 27;
        LOBYTE(v136) = v53;
        WTF::StringTypeAdapter<unsigned char,void>::writeTo<unsigned char>(&v136, (v64 + 27), v85 - 27);
        LODWORD(v88) = 0;
        v89 = v136;
        do
        {
          v88 = (v88 + 1);
          v11 = v89 > 9;
          v89 /= 0xAu;
        }

        while (v11);
        if (v86 < v88)
        {
          goto LABEL_167;
        }

        v90 = v86 - v88;
        v91 = &v87[v88];
        qmemcpy(v91, "\nAttribution priority: ", 23);
        if (v90 <= 0x16)
        {
          goto LABEL_167;
        }

        v92 = v90 - 23;
        v93 = v91 + 23;
        LOBYTE(v130[0]) = v6;
        WTF::StringTypeAdapter<unsigned char,void>::writeTo<unsigned char>(v130, (v91 + 23), v90 - 23);
        LODWORD(v94) = 0;
        v95 = LOBYTE(v130[0]);
        do
        {
          v94 = (v94 + 1);
          v11 = v95 > 9;
          v95 /= 0xAu;
        }

        while (v11);
        if (v92 < v94)
        {
          goto LABEL_167;
        }

        qmemcpy(&v93[v94], "\nAttribution earliest time to send: ", 36);
      }
    }

    if (v54)
    {
      WTF::WallTime::now(v64);
    }

    WTF::StringBuilder::append();
    WTF::StringBuilder::append();
    if ((*(a2 + 184) & 1) == 0)
    {
      goto LABEL_167;
    }

    if ((*(a2 + 176) & 1) == 0)
    {
LABEL_141:
      WTF::StringBuilder::append();
      goto LABEL_142;
    }

    v97 = *(a2 + 19);
    v96 = *(a2 + 20);
    v98 = *(a2 + 21);
    if (v97)
    {
      v99 = *(v97 + 4);
      if (v96)
      {
        goto LABEL_106;
      }
    }

    else
    {
      v99 = 0;
      if (v96)
      {
LABEL_106:
        v100 = *(v96 + 4);
        goto LABEL_107;
      }
    }

    v100 = 0;
LABEL_107:
    if (v98)
    {
      v101 = *(v98 + 4);
    }

    else
    {
      v101 = 0;
    }

    v12 = __CFADD__(v101, 6);
    v102 = v101 + 6;
    if (v12)
    {
      v102 = -1;
    }

    v12 = __CFADD__(v100, v102);
    v103 = v100 + v102;
    if (v12)
    {
      v103 = -1;
    }

    v12 = __CFADD__(v103, 12);
    v104 = v103 + 12;
    if (v12)
    {
      v104 = -1;
    }

    v12 = __CFADD__(v99, v104);
    v105 = v99 + v104;
    if (v12)
    {
      v105 = -1;
    }

    v12 = __CFADD__(v105, 8);
    v106 = v105 + 8;
    if (v12)
    {
      v106 = -1;
    }

    v12 = __CFADD__(v133, v106);
    v107 = v133 + v106;
    v108 = v12 ? 0xFFFFFFFFLL : v107;
    if (((v109 = v132) == 0 && (v109 = v131) == 0 || (*(v109 + 16) & 4) != 0) && (!v97 || (*(v97 + 16) & 4) != 0) && (!v96 || (*(v96 + 16) & 4) != 0) && (!v98 || (*(v98 + 16) & 4) != 0))
    {
      break;
    }

    v110 = WTF::StringBuilder::extendBufferForAppendingWithUpconvert(&v131);
    if (!v110)
    {
      goto LABEL_142;
    }

    v112 = 0;
    v113 = "\ntoken: ";
    do
    {
      v114 = *v113++;
      *(v110 + v112) = v114;
      v112 += 2;
    }

    while (v112 != 16);
    if (v111 > 7)
    {
      WTF::stringTypeAdapterAccumulator<char16_t,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>>((v110 + 16), v111 - 8, v97, "\nsignature: ", 0xCuLL, v96, "\nkey: ", 6uLL, v98);
      goto LABEL_142;
    }

LABEL_167:
    __break(1u);
LABEL_168:
    v7 = 0;
    if (v5)
    {
      goto LABEL_7;
    }

LABEL_169:
    ;
  }

  v119 = MEMORY[0x19EB01170](&v131, v108);
  if (!v119)
  {
    goto LABEL_142;
  }

  *v119 = 0x203A6E656B6F740ALL;
  if (v120 <= 7)
  {
    goto LABEL_167;
  }

  v6 = v120 - 8;
  v121 = v119 + 8;
  v135 = v97;
  WTF::StringTypeAdapter<WTF::StringImpl *,void>::writeTo<unsigned char>(&v135, (v119 + 8));
  v122 = v135;
  if (v135)
  {
    v122 = *(v135 + 4);
    if (v6 < v122)
    {
      goto LABEL_167;
    }
  }

  v123 = v6 - v122;
  v124 = v122 + v121;
  *v124 = *"\nsignature: ";
  *(v124 + 8) = 540697970;
  if (v123 <= 0xB)
  {
    goto LABEL_167;
  }

  v125 = v123 - 12;
  v126 = v124 + 12;
  v136 = v96;
  WTF::StringTypeAdapter<WTF::StringImpl *,void>::writeTo<unsigned char>(&v136, (v124 + 12));
  v127 = v136;
  if (v136)
  {
    v127 = *(v136 + 4);
    if (v125 < v127)
    {
      goto LABEL_167;
    }
  }

  v128 = v125 - v127;
  v129 = v126 + v127;
  *(v129 + 4) = 8250;
  *v129 = 2036689674;
  if (v128 <= 5)
  {
    goto LABEL_167;
  }

  v130[0] = v98;
  WTF::StringTypeAdapter<WTF::StringImpl *,void>::writeTo<unsigned char>(v130, (v129 + 6));
LABEL_142:
  v130[0] = "\nApplication bundle identifier: ";
  v130[1] = 33;
  LOBYTE(v136) = 10;
  WTF::StringBuilder::append<WTF::ASCIILiteral,WTF::String,char>(&v131, v130, a2 + 38, &v136);
  v116 = v131;
  if (v131 || (WTF::StringBuilder::shrinkToFit(&v131), WTF::StringBuilder::reifyString(&v131), (v116 = v131) != 0))
  {
    atomic_fetch_add_explicit(v116, 2u, memory_order_relaxed);
  }

  *this = v116;
  v117 = v132;
  v132 = 0;
  if (v117 && atomic_fetch_add_explicit(v117, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v117, v115);
  }

  result = v131;
  v131 = 0;
  if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    result = WTF::StringImpl::destroy(result, v115);
    if (v5)
    {
      goto LABEL_151;
    }
  }

  else if (v5)
  {
LABEL_151:
    if (atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      result = WTF::StringImpl::destroy(v5, v115);
    }
  }

  if (v4)
  {
    if (atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(v4, v115);
    }
  }

  return result;
}

char *WTF::StringBuilder::append<WTF::ASCIILiteral,WTF::ASCIILiteral>(WTF::StringBuilder *a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 8);
  v4 = v3 != 0;
  v5 = (v3 - 1);
  if (!v4)
  {
    v5 = 0;
  }

  v10[0] = *a2;
  v10[1] = v5;
  if (v5 >> 31)
  {
    goto LABEL_8;
  }

  v6 = *(a3 + 8);
  v4 = v6 != 0;
  v7 = (v6 - 1);
  if (!v4)
  {
    v7 = 0;
  }

  v9[0] = *a3;
  v9[1] = v7;
  if (v7 >> 31)
  {
LABEL_8:
    __break(0xC471u);
    JUMPOUT(0x19DD509E8);
  }

  return WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>(a1, v10, v9);
}

unint64_t WebKit::PCM::Database::clearPrivateClickMeasurement(WebCore::SQLiteStatement **this, const WebCore::RegistrableDomain *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  if (*(a2 + 8) == 1)
  {
    result = WebKit::PCM::Database::domainID(this, a2);
    if (!HIDWORD(result))
    {
      return result;
    }

    WTF::String::number(result);
  }

  else
  {
    WTF::StringImpl::createWithoutCopyingNonEmpty();
  }

  v4 = *buf;
  WebKit::DatabaseUtilities::beginTransactionIfNecessary(this, v9);
  WebKit::DatabaseUtilities::scopedStatement(this, this + 20, "clearPrivateClickMeasurement", &v8);
  if (!v8 || WebCore::SQLiteStatement::bindText() || WebCore::SQLiteStatement::step(v8) != 101)
  {
    v5 = qword_1ED640FE0;
    if (os_log_type_enabled(qword_1ED640FE0, OS_LOG_TYPE_ERROR))
    {
      ErrorMsg = WebCore::SQLiteDatabase::lastErrorMsg((this + 2));
      *buf = 134218243;
      *&buf[4] = this;
      v11 = 2081;
      v12 = ErrorMsg;
      _os_log_error_impl(&dword_19D52D000, v5, OS_LOG_TYPE_ERROR, "%p - ResourceLoadStatisticsStore::clearPrivateClickMeasurement clearAllPrivateClickMeasurementScopedStatement, error message: %{private}s", buf, 0x16u);
    }
  }

  MEMORY[0x19EB0CD50](&v8);
  result = WTF::ScopeExit<WTF::Function<void ()(void)>>::~ScopeExit(v9);
  if (v4)
  {
    if (atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(v4, v6);
    }
  }

  return result;
}

uint64_t WebKit::PCM::Database::getDomainStringFromDomainID@<X0>(WebCore::SQLiteStatement **this@<X0>, atomic_uint **a2@<X8>)
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = *MEMORY[0x1E696EBA8];
  if (*MEMORY[0x1E696EBA8])
  {
    atomic_fetch_add_explicit(v4, 2u, memory_order_relaxed);
  }

  *a2 = v4;
  WebKit::DatabaseUtilities::scopedStatement(this, this + 26, "getDomainStringFromDomainID", &v12);
  if (v12 && !WebCore::SQLiteStatement::bindInt(v12))
  {
    if (WebCore::SQLiteStatement::step(v12) == 100)
    {
      WebCore::SQLiteStatement::columnText(this[26]);
      v8 = *buf;
      *buf = 0;
      *a2 = v8;
      if (v4)
      {
        if (atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v4, v7);
          v10 = *buf;
          *buf = 0;
          if (v10)
          {
            if (atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v10, v9);
            }
          }
        }
      }
    }
  }

  else
  {
    v5 = qword_1ED640FE0;
    if (os_log_type_enabled(qword_1ED640FE0, OS_LOG_TYPE_ERROR))
    {
      ErrorMsg = WebCore::SQLiteDatabase::lastErrorMsg((this + 2));
      *buf = 134218243;
      *&buf[4] = this;
      v14 = 2081;
      v15 = ErrorMsg;
      _os_log_error_impl(&dword_19D52D000, v5, OS_LOG_TYPE_ERROR, "%p - Database::getDomainStringFromDomainID. Statement failed to prepare or bind, error message: %{private}s", buf, 0x16u);
    }
  }

  return MEMORY[0x19EB0CD50](&v12);
}

void WebKit::PCM::Database::destroyStatements(WebKit::PCM::Database *this)
{
  v2 = *(this + 14);
  *(this + 14) = 0;
  if (v2)
  {
    WebCore::SQLiteStatement::operator delete(v2);
  }

  v3 = *(this + 15);
  *(this + 15) = 0;
  if (v3)
  {
    WebCore::SQLiteStatement::operator delete(v3);
  }

  v4 = *(this + 16);
  *(this + 16) = 0;
  if (v4)
  {
    WebCore::SQLiteStatement::operator delete(v4);
  }

  v5 = *(this + 17);
  *(this + 17) = 0;
  if (v5)
  {
    WebCore::SQLiteStatement::operator delete(v5);
  }

  v6 = *(this + 18);
  *(this + 18) = 0;
  if (v6)
  {
    WebCore::SQLiteStatement::operator delete(v6);
  }

  v7 = *(this + 19);
  *(this + 19) = 0;
  if (v7)
  {
    WebCore::SQLiteStatement::operator delete(v7);
  }

  v8 = *(this + 20);
  *(this + 20) = 0;
  if (v8)
  {
    WebCore::SQLiteStatement::operator delete(v8);
  }

  v9 = *(this + 21);
  *(this + 21) = 0;
  if (v9)
  {
    WebCore::SQLiteStatement::operator delete(v9);
  }

  v10 = *(this + 22);
  *(this + 22) = 0;
  if (v10)
  {
    WebCore::SQLiteStatement::operator delete(v10);
  }

  v11 = *(this + 23);
  *(this + 23) = 0;
  if (v11)
  {
    WebCore::SQLiteStatement::operator delete(v11);
  }

  v12 = *(this + 24);
  *(this + 24) = 0;
  if (v12)
  {
    WebCore::SQLiteStatement::operator delete(v12);
  }

  v13 = *(this + 25);
  *(this + 25) = 0;
  if (v13)
  {
    WebCore::SQLiteStatement::operator delete(v13);
  }

  v14 = *(this + 26);
  *(this + 26) = 0;
  if (v14)
  {
    WebCore::SQLiteStatement::operator delete(v14);
  }

  v15 = *(this + 27);
  *(this + 27) = 0;
  if (v15)
  {

    WebCore::SQLiteStatement::operator delete(v15);
  }
}

void WebKit::PCM::EphemeralStore::~EphemeralStore(WebKit::PCM::EphemeralStore *this, WTF::StringImpl *a2)
{
  *this = &unk_1F1107028;
  if (*(this + 328) == 1)
  {
    WebCore::PrivateClickMeasurement::~PrivateClickMeasurement((this + 16), a2);
  }
}

{
  *this = &unk_1F1107028;
  if (*(this + 328) == 1)
  {
    WebCore::PrivateClickMeasurement::~PrivateClickMeasurement((this + 16), a2);
  }

  WTF::fastFree(this, a2);
}

uint64_t WebKit::PCM::EphemeralStore::insertPrivateClickMeasurement(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  std::optional<WebCore::PrivateClickMeasurement>::operator=[abi:sn200100]<WebCore::PrivateClickMeasurement,void>(a1 + 16, a2);
  v5 = *a4;
  *a4 = 0;
  (*(*v5 + 16))(v5);
  v6 = *(*v5 + 8);

  return v6(v5);
}

void WebKit::PCM::EphemeralStore::markAllUnattributedPrivateClickMeasurementAsExpiredForTesting(WebKit::PCM::EphemeralStore *this, WTF::StringImpl *a2)
{
  if (*(this + 328) == 1 && (*(this + 200) & 1) == 0)
  {
    WebCore::PrivateClickMeasurement::~PrivateClickMeasurement((this + 16), a2);
    *(this + 328) = 0;
  }
}

uint64_t WebKit::PCM::EphemeralStore::attributePrivateClickMeasurement(uint64_t a1, const WTF::StringImpl **a2, const WTF::StringImpl *a3, const WTF::StringImpl **a4, uint64_t a5, uint64_t a6, uint64_t *a7)
{
  v21[0] = 0;
  v21[1] = 0;
  if ((*(a1 + 328) & 1) == 0)
  {
    goto LABEL_11;
  }

  result = WTF::equal(*(a1 + 24), *a2, a3);
  if (!result)
  {
    goto LABEL_11;
  }

  if ((*(a1 + 328) & 1) == 0)
  {
    goto LABEL_13;
  }

  result = WTF::equal(*(a1 + 32), *a3, v12);
  if ((result & 1) == 0)
  {
    goto LABEL_11;
  }

  v14 = *a4;
  if (*a4 && *(v14 + 1))
  {
    if ((*(a1 + 328) & 1) == 0)
    {
      goto LABEL_13;
    }

    result = WTF::equal(*(a1 + 320), v14, v13);
    if ((result & 1) == 0)
    {
LABEL_11:
      LOBYTE(v19[0]) = 0;
      v20 = 0;
      goto LABEL_12;
    }
  }

  if (*(a1 + 328))
  {
    WebCore::PrivateClickMeasurement::attributeAndGetEarliestTimeToSend();
    v19[0] = v17;
    v19[1] = v18;
    v20 = 1;
LABEL_12:
    v15 = *a7;
    *a7 = 0;
    (*(*v15 + 16))(v15, v19, v21);
    (*(*v15 + 8))(v15);
    return WTF::Vector<WebKit::PCM::DebugInfo::Message,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v21, v16);
  }

LABEL_13:
  __break(1u);
  return result;
}

WTF::StringImpl *WebKit::PCM::EphemeralStore::privateClickMeasurementToStringForTesting(uint64_t a1, uint64_t *a2)
{
  if ((*(a1 + 328) & 1) == 0)
  {
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    WTF::CompletionHandler<void ()(WTF::String)>::operator()(a2, &v44);
    result = v44;
    v44 = 0;
    if (!result)
    {
      return result;
    }

    goto LABEL_44;
  }

  v40 = 0;
  v41 = 0;
  v42 = 0;
  v43 = 1;
  WTF::StringBuilder::append();
  v21 = "SourceSite: ";
  v22 = 13;
  if ((*(a1 + 328) & 1) == 0 || (v38 = "\n", v39 = 2, WTF::StringBuilder::append<WTF::ASCIILiteral,WTF::String,WTF::ASCIILiteral>(&v40, &v21, (a1 + 24), &v38), v21 = "DestinationSite: ", v22 = 18, (*(a1 + 328) & 1) == 0) || (v38 = "\n", v39 = 2, WTF::StringBuilder::append<WTF::ASCIILiteral,WTF::String,WTF::ASCIILiteral>(&v40, &v21, (a1 + 32), &v38), (*(a1 + 328) & 1) == 0) || (WTF::StringBuilder::append<WTF::ASCIILiteral,unsigned char,WTF::ASCIILiteral>(&v40, "SourceID: ", 11, *(a1 + 16), "\n", 2), (*(a1 + 328) & 1) == 0))
  {
    __break(1u);
LABEL_48:
    v18 = *(a1 + 80);
    if (v18)
    {
      atomic_fetch_add_explicit(v18, 2u, memory_order_relaxed);
    }

    v22 = v18;
    v23 = 1;
    goto LABEL_8;
  }

  if (*(a1 + 200) != 1)
  {
    goto LABEL_32;
  }

  LOWORD(v21) = *(a1 + 72);
  BYTE2(v21) = *(a1 + 74);
  LOBYTE(v22) = 0;
  v23 = 0;
  if (*(a1 + 88) == 1)
  {
    goto LABEL_48;
  }

LABEL_8:
  LOBYTE(v24) = 0;
  v25 = 0;
  if (*(a1 + 104) == 1)
  {
    v4 = *(a1 + 96);
    if (v4)
    {
      atomic_fetch_add_explicit(v4, 2u, memory_order_relaxed);
    }

    v24 = v4;
    v25 = 1;
  }

  LOBYTE(v26) = 0;
  v27 = 0;
  if (*(a1 + 120) == 1)
  {
    v19 = *(a1 + 112);
    if (v19)
    {
      atomic_fetch_add_explicit(v19, 2u, memory_order_relaxed);
    }

    v26 = v19;
    v27 = 1;
  }

  LOBYTE(v28) = 0;
  v32 = 0;
  if (*(a1 + 160) == 1)
  {
    v5 = *(a1 + 128);
    v28 = v5;
    if (v5)
    {
      CFRetain(v5);
    }

    v6 = *(a1 + 136);
    v29 = v6;
    if (v6)
    {
      CFRetain(v6);
    }

    v7 = *(a1 + 144);
    v30 = v7;
    if (v7)
    {
      CFRetain(v7);
    }

    v8 = *(a1 + 152);
    if (v8)
    {
      atomic_fetch_add_explicit(v8, 2u, memory_order_relaxed);
    }

    v31 = v8;
    v32 = 1;
  }

  LOBYTE(v33) = 0;
  v36 = 0;
  if (*(a1 + 192) == 1)
  {
    v9 = *(a1 + 168);
    if (v9)
    {
      atomic_fetch_add_explicit(v9, 2u, memory_order_relaxed);
    }

    v33 = v9;
    v10 = *(a1 + 176);
    if (v10)
    {
      atomic_fetch_add_explicit(v10, 2u, memory_order_relaxed);
    }

    v34 = v10;
    v11 = *(a1 + 184);
    if (v11)
    {
      atomic_fetch_add_explicit(v11, 2u, memory_order_relaxed);
    }

    v35 = v11;
    v36 = 1;
  }

  v37 = 1;
  WTF::StringBuilder::append<WTF::ASCIILiteral,unsigned char,WTF::ASCIILiteral>(&v40, "Trigger data: ", 15, v21, "\n", 2);
  WTF::StringBuilder::append<WTF::ASCIILiteral,unsigned char,WTF::ASCIILiteral>(&v40, "Trigger priority: ", 19, BYTE1(v21), "\n", 2);
  WebCore::PCM::AttributionTriggerData::~AttributionTriggerData(&v21, v12);
LABEL_32:
  v13 = v40;
  if (v40 || (WTF::StringBuilder::shrinkToFit(&v40), WTF::StringBuilder::reifyString(&v40), (v13 = v40) != 0))
  {
    atomic_fetch_add_explicit(v13, 2u, memory_order_relaxed);
  }

  v20 = v13;
  WTF::CompletionHandler<void ()(WTF::String)>::operator()(a2, &v20);
  v15 = v20;
  v20 = 0;
  if (v15 && atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v15, v14);
  }

  v16 = v41;
  v41 = 0;
  if (v16 && atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v16, v14);
  }

  result = v40;
  v40 = 0;
  if (result)
  {
LABEL_44:
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v14);
    }
  }

  return result;
}

void WTF::StringBuilder::append<WTF::ASCIILiteral,unsigned char,WTF::ASCIILiteral>(WTF::StringBuilder *a1, int8x16_t *a2, uint64_t a3, unsigned __int8 a4, int8x16_t *a5, uint64_t a6)
{
  if (a3)
  {
    v6 = a3 - 1;
  }

  else
  {
    v6 = 0;
  }

  if (v6 >> 31)
  {
    __break(0xC471u);
    goto LABEL_50;
  }

  if (a6)
  {
    v7 = a6 - 1;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7 >> 31;
  if (v7 >> 31)
  {
    __break(0xC471u);
    goto LABEL_49;
  }

  v12 = a4;
  do
  {
    LODWORD(v8) = v8 + 1;
    v13 = v12 > 9;
    v12 /= 0xAu;
  }

  while (v13);
  v14 = *(a1 + 1);
  if ((v14 || (v14 = *a1) != 0) && (*(v14 + 16) & 4) == 0)
  {
    v15 = WTF::StringBuilder::extendBufferForAppendingWithUpconvert(a1);
    if (!v15)
    {
      return;
    }

    v17 = &v15[2 * v6];
    if (v6 >= 0x40)
    {
      v18 = v15;
      v15 += 2 * (v6 & 0x7FFFFFC0);
      v19 = 0uLL;
      do
      {
        v52.val[0] = *a2;
        v20 = a2[1];
        v54.val[0] = a2[2];
        v21 = a2[3];
        a2 += 4;
        v22 = v21;
        v54.val[1] = 0uLL;
        v56.val[0] = v20;
        v52.val[1] = 0uLL;
        v23 = v18;
        vst2q_s8(v23, v52);
        v23 += 32;
        v56.val[1] = 0uLL;
        vst2q_s8(v23, v56);
        v24 = v18 + 64;
        vst2q_s8(v24, v54);
        v25 = v18 + 96;
        vst2q_s8(v25, *(&v19 - 1));
        v18 += 128;
      }

      while (v18 != v15);
    }

    while (v15 != v17)
    {
      v26 = a2->u8[0];
      a2 = (a2 + 1);
      *v15 = v26;
      v15 += 2;
    }

    v27 = v16 >= v6;
    v28 = v16 - v6;
    if (v27)
    {
      v51 = a4;
      WTF::StringTypeAdapter<unsigned char,void>::writeTo<char16_t>(&v51, v17, v28);
      LODWORD(v29) = 0;
      v30 = v51;
      do
      {
        v29 = (v29 + 1);
        v13 = v30 > 9;
        v30 /= 0xAu;
      }

      while (v13);
      if (v28 >= v29)
      {
        v31 = (v17 + 2 * v29);
        v32 = &v31[2 * v7];
        if (v7 >= 0x40)
        {
          v33 = &v31[2 * (v7 & 0x7FFFFFC0)];
          v34 = 0uLL;
          do
          {
            v53.val[0] = *a5;
            v35 = a5[1];
            v55.val[0] = a5[2];
            v36 = a5[3];
            a5 += 4;
            v37 = v36;
            v55.val[1] = 0uLL;
            v57.val[0] = v35;
            v53.val[1] = 0uLL;
            v38 = v31;
            vst2q_s8(v38, v53);
            v38 += 32;
            v57.val[1] = 0uLL;
            vst2q_s8(v38, v57);
            v39 = v31 + 64;
            vst2q_s8(v39, v55);
            v40 = v31 + 96;
            vst2q_s8(v40, *(&v34 - 1));
            v31 += 128;
          }

          while (v31 != v33);
          v31 = v33;
        }

        while (v31 != v32)
        {
          v41 = a5->u8[0];
          a5 = (a5 + 1);
          *v31 = v41;
          v31 += 2;
        }

        return;
      }
    }

    goto LABEL_49;
  }

  v42 = MEMORY[0x19EB01170]();
  if (!v42)
  {
    return;
  }

  v44 = v42;
  v45 = v43;
  if (v6)
  {
    if (v6 == 1)
    {
      *v42 = a2->i8[0];
    }

    else
    {
      memcpy(v42, a2, v6);
    }
  }

  v46 = v45 - v6;
  if (v45 < v6)
  {
    goto LABEL_49;
  }

  v47 = &v44[v6];
  v50 = a4;
  WTF::StringTypeAdapter<unsigned char,void>::writeTo<unsigned char>(&v50, v47, v46);
  LODWORD(v48) = 0;
  v49 = v50;
  do
  {
    v48 = (v48 + 1);
    v13 = v49 > 9;
    v49 /= 0xAu;
  }

  while (v13);
  if (v46 < v48)
  {
LABEL_49:
    __break(1u);
LABEL_50:
    JUMPOUT(0x19DD51804);
  }

  if (v7)
  {
    if (v7 == 1)
    {
      *(v47 + v48) = a5->i8[0];
    }

    else
    {
      memcpy((v47 + v48), a5, v7);
    }
  }
}

void WebKit::PCM::EphemeralStore::allAttributedPrivateClickMeasurement(_BYTE *a1, uint64_t *a2)
{
  v11[39] = *MEMORY[0x1E69E9840];
  if (a1[328] == 1 && a1[200] == 1)
  {
    WebCore::PrivateClickMeasurement::PrivateClickMeasurement(v11, (a1 + 16));
    v9 = 1;
    v8 = WTF::fastMalloc(0x138);
    WebCore::PrivateClickMeasurement::PrivateClickMeasurement(v8, v11);
    v10 = 1;
    v3 = *a2;
    *a2 = 0;
    (*(*v3 + 16))(v3, &v8);
    (*(*v3 + 8))(v3);
    WTF::Vector<WebCore::PrivateClickMeasurement,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v8, v4);
    WebCore::PrivateClickMeasurement::~PrivateClickMeasurement(v11, v5);
  }

  else
  {
    v11[0] = 0;
    v11[1] = 0;
    v6 = *a2;
    *a2 = 0;
    (*(*v6 + 16))(v6, v11);
    (*(*v6 + 8))(v6);
    WTF::Vector<WebCore::PrivateClickMeasurement,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v11, v7);
  }
}

uint64_t WebKit::PCM::EphemeralStore::markAttributedPrivateClickMeasurementsAsExpiredForTesting(_BYTE *a1, WTF::StringImpl *a2)
{
  if (a1[328] == 1 && a1[200] == 1)
  {
    WebCore::PrivateClickMeasurement::~PrivateClickMeasurement((a1 + 16), a2);
    a1[328] = 0;
  }

  v4 = *a2;
  *a2 = 0;
  (*(*v4 + 16))(v4);
  v5 = *(*v4 + 8);

  return v5(v4);
}

void WebKit::PCM::EphemeralStore::clearExpiredPrivateClickMeasurement(WebKit::PCM::EphemeralStore *this)
{
  if (*(this + 328) == 1)
  {
    v2 = WTF::WallTime::now(this);
    if (*(this + 328))
    {
      v4 = v3 - *(this + 5);
      WebCore::PrivateClickMeasurement::maxAge(v2);
      if (v4 > v6 && *(this + 328) == 1)
      {
        WebCore::PrivateClickMeasurement::~PrivateClickMeasurement((this + 16), v5);
        *(this + 328) = 0;
      }
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t WebKit::PCM::EphemeralStore::clearPrivateClickMeasurement(uint64_t a1, WTF::StringImpl *a2)
{
  if (*(a1 + 328) == 1)
  {
    WebCore::PrivateClickMeasurement::~PrivateClickMeasurement((a1 + 16), a2);
    *(a1 + 328) = 0;
  }

  v4 = *a2;
  *a2 = 0;
  (*(*v4 + 16))(v4);
  v5 = *(*v4 + 8);

  return v5(v4);
}

uint64_t WebKit::PCM::EphemeralStore::clearPrivateClickMeasurementForRegistrableDomain(uint64_t a1, const WTF::StringImpl **a2, const WTF::StringImpl *a3)
{
  if (*(a1 + 328) == 1)
  {
    result = WTF::equal(*(a1 + 24), *a2, a3);
    if (result)
    {
      goto LABEL_5;
    }

    if ((*(a1 + 328) & 1) == 0)
    {
      __break(1u);
      return result;
    }

    if (WTF::equal(*(a1 + 32), *a2, v8))
    {
LABEL_5:
      if (*(a1 + 328) == 1)
      {
        WebCore::PrivateClickMeasurement::~PrivateClickMeasurement((a1 + 16), v7);
        *(a1 + 328) = 0;
      }
    }
  }

  v9 = *a3;
  *a3 = 0;
  (*(*v9 + 16))(v9);
  v10 = *(*v9 + 8);

  return v10(v9);
}

void WebKit::PCM::EphemeralStore::clearSentAttribution(uint64_t a1, WTF::StringImpl *a2, char a3)
{
  v4 = *(a2 + 200);
  v5 = *(a2 + 216);
  if (a3)
  {
    if (*(a2 + 216))
    {
      v5 = 0;
    }

    if (*(a2 + 200) & 1) != 0 || (v5)
    {
LABEL_6:
      *(a2 + 200) = v4;
      *(a2 + 216) = v5;
      v6 = a1 + 16;

      std::optional<WebCore::PrivateClickMeasurement>::operator=[abi:sn200100]<WebCore::PrivateClickMeasurement,void>(v6, a2);
      return;
    }
  }

  else
  {
    if (*(a2 + 200))
    {
      v4 = 0;
    }

    if (*(a2 + 216))
    {
      goto LABEL_6;
    }
  }

  if (*(a1 + 328) == 1)
  {
    WebCore::PrivateClickMeasurement::~PrivateClickMeasurement((a1 + 16), a2);
    *(a1 + 328) = 0;
  }
}

uint64_t WebKit::PCM::EphemeralStore::close(uint64_t a1, WTF::StringImpl *a2)
{
  if (*(a1 + 328) == 1)
  {
    WebCore::PrivateClickMeasurement::~PrivateClickMeasurement((a1 + 16), a2);
    *(a1 + 328) = 0;
  }

  v4 = *a2;
  *a2 = 0;
  (*(*v4 + 16))(v4);
  v5 = *(*v4 + 8);

  return v5(v4);
}

uint64_t WebKit::PrivateClickMeasurementManager::create@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = WebKit::PrivateClickMeasurementManager::operator new(0x178, a2);
  result = WebKit::PrivateClickMeasurementManager::PrivateClickMeasurementManager(v6, a1, a2);
  *a3 = result;
  return result;
}

uint64_t WebKit::PrivateClickMeasurementManager::operator new(WebKit::PrivateClickMeasurementManager *this, void *a2)
{
  if (this == 376 && WebKit::PrivateClickMeasurementManager::s_heapRef)
  {
    return bmalloc::api::tzoneAllocateNonCompact(WebKit::PrivateClickMeasurementManager::s_heapRef, a2);
  }

  else
  {
    return WebKit::PrivateClickMeasurementManager::operatorNewSlow(this);
  }
}

uint64_t WebKit::PrivateClickMeasurementManager::PrivateClickMeasurementManager(uint64_t a1, uint64_t *a2, atomic_uint **a3)
{
  *(a1 + 8) = 1;
  *(a1 + 16) = 0;
  *a1 = &unk_1F11070A0;
  v6 = WTF::RunLoop::mainSingleton(a1);
  v7 = v6;
  while (1)
  {
    v8 = *(v6 + 8);
    if ((v8 & 1) == 0)
    {
      break;
    }

    v13 = *(v6 + 8);
    atomic_compare_exchange_strong_explicit((v6 + 8), &v13, v8 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v13 == v8)
    {
      goto LABEL_4;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*(v6 + 8));
LABEL_4:
  v14 = v7;
  WTF::RunLoop::Timer::Timer<WebKit::PrivateClickMeasurementManager>((a1 + 24), &v14, a1);
  v9 = v14;
  v14 = 0;
  if (v9)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WTF::SerialFunctionDispatcher,(WTF::DestructionThread)0>::deref((v9 + 8));
  }

  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 168) = 0;
  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  v10 = *a3;
  if (*a3)
  {
    atomic_fetch_add_explicit(v10, 2u, memory_order_relaxed);
  }

  v11 = *a2;
  *a2 = 0;
  *(a1 + 200) = v10;
  *(a1 + 208) = v11;
  *(a1 + 216) = 0;
  *(a1 + 296) = 0;
  *(a1 + 304) = 0;
  *(a1 + 368) = 0;
  if (((*(*v11 + 48))(v11) & 1) == 0)
  {
    WTF::RunLoop::TimerBase::start();
  }

  return a1;
}

uint64_t WebKit::PrivateClickMeasurementManager::firePendingAttributionRequests(WebKit::PrivateClickMeasurementManager *this)
{
  result = (*(**(this + 26) + 24))(*(this + 26));
  if (result)
  {
    WebKit::PrivateClickMeasurementManager::initializeStore(this);
    v3 = *(this + 24);
    atomic_fetch_add(v3 + 2, 1u);
    WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(this + 4, this);
    v4 = *(this + 2);
    atomic_fetch_add(v4, 1u);
    v5 = WTF::fastMalloc(0x10);
    *v5 = &unk_1F11074D0;
    v5[1] = v4;
    v6 = v5;
    (*(*v3 + 56))(v3, &v6);
    result = v6;
    v6 = 0;
    if (result)
    {
      result = (*(*result + 8))(result);
    }

    if (atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v3 + 2);
      return (*(*v3 + 8))(v3);
    }
  }

  return result;
}

uint64_t WTF::RunLoop::Timer::Timer<WebKit::PrivateClickMeasurementManager>(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = WTF::fastMalloc(0x20);
  *v5 = &unk_1F1107278;
  v5[1] = a3;
  v5[2] = WebKit::PrivateClickMeasurementManager::firePendingAttributionRequests;
  v5[3] = 0;
  result = WTF::RunLoop::TimerBase::TimerBase();
  *a1 = &unk_1F10E6DC8;
  a1[5] = v5;
  return result;
}

void WebKit::PrivateClickMeasurementManager::~PrivateClickMeasurementManager(WebKit::PrivateClickMeasurementManager *this, WTF::StringImpl *a2)
{
  *this = &unk_1F11070A0;
  v3 = *(this + 24);
  if (v3)
  {
    atomic_fetch_add(v3 + 2, 1u);
    v11 = WTF::fastMalloc(0x10);
    *v11 = &unk_1F11072A0;
    v13 = v11;
    (*(*v3 + 96))(v3, &v13);
    v12 = v13;
    v13 = 0;
    if (v12)
    {
      (*(*v12 + 8))(v12);
    }

    if (atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v3 + 2);
      (*(*v3 + 8))(v3);
    }
  }

  if (*(this + 368) == 1)
  {
    WebCore::ServiceWorkerRoutePattern::~ServiceWorkerRoutePattern((this + 304), a2);
  }

  std::optional<WebKit::PrivateClickMeasurementManager::AttributionReportTestConfig>::~optional(this + 216, a2);
  v5 = *(this + 26);
  *(this + 26) = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  v6 = *(this + 25);
  *(this + 25) = 0;
  if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v6, v4);
  }

  v7 = *(this + 24);
  *(this + 24) = 0;
  if (v7 && atomic_fetch_add(v7 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v7 + 2);
    (*(*v7 + 8))(v7);
  }

  std::optional<WTF::String>::~optional(this + 176, v4);
  std::optional<WTF::URL>::~optional(this + 128, v8);
  std::optional<WTF::URL>::~optional(this + 80, v9);
  WTF::RunLoop::Timer::~Timer((this + 24));
  WTF::WeakPtrFactory<WebKit::SessionSet,WTF::DefaultWeakPtrImpl>::~WeakPtrFactory(this + 2, v10);
  if (*(this + 2) != 1)
  {
    __break(0xC471u);
  }
}

{
  WebKit::PrivateClickMeasurementManager::~PrivateClickMeasurementManager(this, a2);

  bmalloc::api::tzoneFree(v2, v3);
}

uint64_t WebKit::PrivateClickMeasurementManager::storeUnattributed(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if ((*(**(a1 + 208) + 24))(*(a1 + 208)))
  {
    if ((*(**(a1 + 208) + 24))(*(a1 + 208)))
    {
      WebKit::PrivateClickMeasurementManager::initializeStore(a1);
      v7 = *(a1 + 192);
      atomic_fetch_add(v7 + 2, 1u);
      (*(*v7 + 64))(v7);
      if (atomic_fetch_add(v7 + 2, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v7 + 2);
        (*(*v7 + 8))(v7);
      }
    }

    if (*(a1 + 184) == 1)
    {
      WebCore::PrivateClickMeasurement::setSourceApplicationBundleIDForTesting(a2, (a1 + 176));
    }

    if (*(a2 + 232) == 1)
    {
      v8 = *(a2 + 224);
      if (v8)
      {
        atomic_fetch_add_explicit(v8, 2u, memory_order_relaxed);
        if (atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v8, v6);
        }
      }

      WebCore::PrivateClickMeasurement::PrivateClickMeasurement(v19, a2);
      WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded((a1 + 16), a1);
      v9 = *(a1 + 16);
      atomic_fetch_add(v9, 1u);
      v10 = WTF::fastMalloc(0x10);
      *v10 = &unk_1F11072C8;
      v10[1] = v9;
      v18 = v10;
      WebKit::PrivateClickMeasurementManager::getTokenPublicKey(a1, v19, 0, 1, &v18);
      if (v18)
      {
        (*(*v18 + 8))(v18);
      }

      WebCore::PrivateClickMeasurement::~PrivateClickMeasurement(v19, v11);
    }

    v12 = *(a1 + 208);
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    (*(*v12 + 16))(v12, 0, v19);
    v14 = v19[0];
    v19[0] = 0;
    if (v14)
    {
      if (atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v14, v13);
      }
    }

    return WebKit::PrivateClickMeasurementManager::insertPrivateClickMeasurement(a1, a2, a3);
  }

  else
  {
    v16 = *a3;
    *a3 = 0;
    (*(*v16 + 16))(v16);
    v17 = *(*v16 + 8);

    return v17(v16);
  }
}

WTF::StringImpl *WebKit::PrivateClickMeasurementManager::getTokenPublicKey(uint64_t a1, uint64_t a2, char a3, int a4, uint64_t *a5)
{
  result = (*(**(a1 + 208) + 24))(*(a1 + 208));
  if (!result)
  {
    return result;
  }

  v59 = 0;
  WTF::URL::invalidate(&v59);
  if (*(a1 + 120) == 1)
  {
    if ((a3 & 1) == 0)
    {
      v12 = *(a1 + 80);
      if (v12)
      {
        atomic_fetch_add_explicit(v12, 2u, memory_order_relaxed);
      }

      result = v59;
      v59 = v12;
      if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        result = WTF::StringImpl::destroy(result, v11);
      }

      a4 = 0;
      v60 = *(a1 + 88);
      v61 = *(a1 + 104);
LABEL_20:
      if (!v59)
      {
        return result;
      }

      if (*(v59 + 1) && (v60 & 1) != 0)
      {
        v14 = (*(**(a1 + 208) + 32))(*(a1 + 208));
        v15 = qword_1ED640FE0;
        if (os_log_type_enabled(qword_1ED640FE0, OS_LOG_TYPE_INFO))
        {
          LOWORD(v43) = 0;
          _os_log_impl(&dword_19D52D000, v15, OS_LOG_TYPE_INFO, "About to fire a token public key request.", &v43, 2u);
        }

        v16 = *(a1 + 208);
        WTF::StringImpl::createWithoutCopyingNonEmpty();
        (*(*v16 + 16))(v16, 0, &v43);
        v18 = v43;
        v43 = 0;
        if (v18 && atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v18, v17);
        }

        v58 = 0;
        WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded((a1 + 16), a1);
        v19 = *(a1 + 16);
        atomic_fetch_add(v19, 1u);
        v43 = v19;
        v44[0] = *a2;
        v20 = *(a2 + 8);
        *(a2 + 8) = 0;
        *(a2 + 16) = 0;
        v21 = *(a2 + 24);
        *&v44[8] = v20;
        *&v44[24] = v21;
        *&v44[33] = *(a2 + 33);
        v45[0] = 0;
        v46 = 0;
        if (*(a2 + 184) == 1)
        {
          std::__optional_storage_base<WebCore::PCM::AttributionTriggerData,false>::__construct[abi:sn200100]<WebCore::PCM::AttributionTriggerData>(v45, a2 + 56);
        }

        v22 = *(a2 + 208);
        v47 = *(a2 + 192);
        v48 = v22;
        LOBYTE(v49) = 0;
        v50 = 0;
        if (*(a2 + 232) == 1)
        {
          v23 = *(a2 + 224);
          *(a2 + 224) = 0;
          v49 = v23;
          v50 = 1;
        }

        v24 = *(a2 + 256);
        v51 = *(a2 + 240);
        *(a2 + 240) = 0u;
        *(a2 + 256) = 0u;
        v52 = v24;
        LOBYTE(v53) = 0;
        v55 = 0;
        if (*(a2 + 296) == 1)
        {
          v25 = *(a2 + 272);
          *(a2 + 272) = 0;
          *(a2 + 280) = 0;
          v53 = v25;
          v26 = *(a2 + 288);
          *(a2 + 288) = 0;
          v54 = v26;
          v55 = 1;
        }

        v27 = *(a2 + 304);
        *(a2 + 304) = 0;
        v28 = *a5;
        *a5 = 0;
        *&v56 = v27;
        *(&v56 + 1) = v28;
        v29 = WTF::fastMalloc(0x150);
        *v29 = &unk_1F11072F0;
        *(v29 + 8) = v43;
        *(v29 + 16) = v44[0];
        *(v29 + 24) = *&v44[8];
        v30 = *&v44[16];
        v43 = 0;
        *&v44[8] = 0;
        *&v44[16] = 0;
        *(v29 + 32) = v30;
        v31 = *&v44[24];
        *(v29 + 49) = *&v44[33];
        *(v29 + 40) = v31;
        *(v29 + 72) = 0;
        *(v29 + 200) = 0;
        if (v46 == 1)
        {
          std::__optional_storage_base<WebCore::PCM::AttributionTriggerData,false>::__construct[abi:sn200100]<WebCore::PCM::AttributionTriggerData>(v29 + 72, v45);
        }

        v32 = v48;
        *(v29 + 208) = v47;
        *(v29 + 224) = v32;
        *(v29 + 240) = 0;
        *(v29 + 248) = 0;
        if (v50 == 1)
        {
          v33 = v49;
          v49 = 0;
          *(v29 + 240) = v33;
          *(v29 + 248) = 1;
        }

        *(v29 + 256) = v51;
        v34 = *(&v51 + 1);
        v51 = 0u;
        *(v29 + 264) = v34;
        *(v29 + 272) = v52;
        v35 = *(&v52 + 1);
        v52 = 0u;
        *(v29 + 280) = v35;
        *(v29 + 288) = 0;
        *(v29 + 312) = 0;
        if (v55 == 1)
        {
          *(v29 + 288) = v53;
          v36 = *(&v53 + 1);
          v53 = 0uLL;
          *(v29 + 296) = v36;
          v37 = v54;
          v54 = 0;
          *(v29 + 304) = v37;
          *(v29 + 312) = 1;
        }

        *(v29 + 320) = v56;
        v56 = 0uLL;
        v57 = v29;
        WebKit::PCM::NetworkLoader::start(&v59, &v58, a4 | v14, &v57);
        v39 = v57;
        v57 = 0;
        if (v39)
        {
          (*(*v39 + 8))(v39);
        }

        v40 = *(&v56 + 1);
        *(&v56 + 1) = 0;
        if (v40)
        {
          (*(*v40 + 8))(v40);
        }

        WebCore::PrivateClickMeasurement::~PrivateClickMeasurement(v44, v38);
        v41 = v43;
        v43 = 0;
        if (v41 && atomic_fetch_add(v41, 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, v41);
          WTF::fastFree(v41, v11);
        }

        v42 = v58;
        v58 = 0;
        if (v42)
        {
          if (*v42 == 1)
          {
            WTF::JSONImpl::Value::operator delete();
          }

          else
          {
            --*v42;
          }
        }
      }
    }
  }

  else
  {
    WebCore::PrivateClickMeasurement::tokenPublicKeyURL(&v43, a2);
    if (v44[32] == 1)
    {
      v13 = v43;
      if (v43)
      {
        atomic_fetch_add_explicit(v43, 2u, memory_order_relaxed);
      }

      result = v59;
      v59 = v13;
      if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        result = WTF::StringImpl::destroy(result, v11);
      }

      v60 = *v44;
      v61 = *&v44[16];
      if (v44[32] == 1)
      {
        result = v43;
        v43 = 0;
        if (result)
        {
          if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            result = WTF::StringImpl::destroy(result, v11);
          }
        }
      }

      goto LABEL_20;
    }
  }

  result = v59;
  v59 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v11);
    }
  }

  return result;
}

uint64_t WebKit::PrivateClickMeasurementManager::insertPrivateClickMeasurement(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WebKit::PrivateClickMeasurementManager::initializeStore(a1);
  v6 = *(a1 + 192);
  atomic_fetch_add(v6 + 2, 1u);
  result = (*(*v6 + 16))(v6, a2, 0, a3);
  if (atomic_fetch_add(v6 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v6 + 2);
    v8 = *(*v6 + 8);

    return v8(v6);
  }

  return result;
}

uint64_t WebKit::PrivateClickMeasurementManager::configureForTokenSigning(uint64_t result, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  *a2 = 1;
  if (*(result + 168) == 1)
  {
    v5 = result;
    WTF::URL::operator=(a3, result + 128);
    result = (*(**(v5 + 208) + 32))(*(v5 + 208));
    if ((result & 1) == 0)
    {
      *a2 = 0;
    }
  }

  else if (*(a4 + 40) == 1)
  {

    return WTF::URL::operator=(a3, a4);
  }

  return result;
}

WTF::StringImpl *WebKit::PrivateClickMeasurementManager::getSignatureBase64URLFromTokenSignatureResponse(_BYTE *a1, uint64_t a2, atomic_uint *a3, WTF::JSONImpl::ObjectBase *a4)
{
  if (a3)
  {
    v6 = *(a2 + 208);
    atomic_fetch_add_explicit(a3, 2u, memory_order_relaxed);
    v18 = a3;
    WTF::makeString<WTF::ASCIILiteral,WTF::String,WTF::ASCIILiteral>("[Private Click Measurement] Received error: '", 46, &v18, "' for token signing request.", 29, &v19);
    (*(*v6 + 16))(v6, 2, &v19);
    v8 = v19;
    v19 = 0;
    if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v8, v7);
    }

    result = v18;
    v18 = 0;
    if (!result)
    {
      goto LABEL_17;
    }

    goto LABEL_6;
  }

  if (!a4)
  {
    v12 = *(a2 + 208);
    v19 = "[Private Click Measurement] JSON response is empty for token signing request.";
    v20 = 78;
    WTF::tryMakeString<WTF::ASCIILiteral>(&v19, &v17);
    if (v17)
    {
      (*(*v12 + 16))(v12, 2, &v17);
      result = v17;
      v17 = 0;
      if (!result)
      {
LABEL_17:
        *a1 = 0;
        a1[8] = 0;
        return result;
      }

LABEL_6:
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        result = WTF::StringImpl::destroy(result, v7);
      }

      goto LABEL_17;
    }

    __break(0xC471u);
LABEL_28:
    JUMPOUT(0x19DD52FDCLL);
  }

  WTF::StringImpl::createWithoutCopyingNonEmpty();
  WTF::JSONImpl::ObjectBase::getString(&v17, a4, &v19);
  result = v19;
  v19 = 0;
  if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    result = WTF::StringImpl::destroy(result, v11);
  }

  if (v17 && *(v17 + 1))
  {
    *a1 = v17;
    a1[8] = 1;
    return result;
  }

  v13 = *(a2 + 208);
  v19 = "[Private Click Measurement] JSON response doesn't have the key 'unlinkable_token' for token signing request.";
  v20 = 109;
  WTF::tryMakeString<WTF::ASCIILiteral>(&v19, &v16);
  if (!v16)
  {
    __break(0xC471u);
    goto LABEL_28;
  }

  (*(*v13 + 16))(v13, 2, &v16);
  v15 = v16;
  v16 = 0;
  if (v15 && atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v15, v14);
  }

  *a1 = 0;
  a1[8] = 0;
  result = v17;
  v17 = 0;
  if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    return WTF::StringImpl::destroy(result, v14);
  }

  return result;
}

uint64_t WebKit::PrivateClickMeasurementManager::migratePrivateClickMeasurementFromLegacyStorage(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WebKit::PrivateClickMeasurementManager::initializeStore(a1);
  v6 = *(a1 + 192);
  atomic_fetch_add(v6 + 2, 1u);
  v7 = WTF::fastMalloc(0x10);
  *v7 = &unk_1F11073B8;
  v9 = v7;
  (*(*v6 + 16))(v6, a2, a3, &v9);
  result = v9;
  v9 = 0;
  if (result)
  {
    result = (*(*result + 8))(result);
  }

  if (atomic_fetch_add(v6 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v6 + 2);
    return (*(*v6 + 8))(v6);
  }

  return result;
}

WTF::StringImpl *WebKit::PrivateClickMeasurementManager::setDebugModeIsEnabled(WebKit::PrivateClickMeasurementManager *this)
{
  v1 = *(this + 26);
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  (*(*v1 + 16))(v1, 4, &v4);
  result = v4;
  v4 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v2);
    }
  }

  return result;
}

void WebKit::PrivateClickMeasurementManager::handleAttribution(uint64_t a1, uint64_t a2, WTF::URL *a3, atomic_uint **a4, WTF::URL *a5, uint64_t a6)
{
  if (!(*(**(a1 + 208) + 24))(*(a1 + 208)))
  {
    return;
  }

  v12 = WTF::URL::host(a3);
  if ((WebCore::RegistrableDomain::matches(a4, v12, v13 & 0xFFFFFFFFFFLL) & 1) == 0)
  {
    v17 = *(a1 + 208);
    goto LABEL_8;
  }

  v14 = WTF::URL::host(a5);
  if (WebCore::RegistrableDomain::matches(a4, v14, v15 & 0xFFFFFFFFFFLL))
  {
    if (*(a2 + 16))
    {
      v16 = *(a2 + 8);
      if (v16)
      {
        atomic_fetch_add_explicit(v16, 2u, memory_order_relaxed);
      }

      goto LABEL_16;
    }

    v17 = *(a1 + 208);
LABEL_8:
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    (*(*v17 + 16))(v17, 1, buf);
    goto LABEL_9;
  }

  if (*(a2 + 16))
  {
    v17 = *(a1 + 208);
    goto LABEL_8;
  }

  v16 = *a4;
  *a4 = 0;
LABEL_16:
  v20 = *(a1 + 208);
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  (*(*v20 + 16))(v20, 0, buf);
  v22 = *buf;
  *buf = 0;
  if (v22 && atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v22, v21);
  }

  if (*(a2 + 32) == 1)
  {
    LOWORD(v81) = *a2;
    BYTE2(v81) = *(a2 + 2);
    LOBYTE(v82) = 0;
    v83 = 0;
    if (*(a2 + 16) == 1)
    {
      v71 = *(a2 + 8);
      if (v71)
      {
        atomic_fetch_add_explicit(v71, 2u, memory_order_relaxed);
        v72 = *(a2 + 32);
        v82 = v71;
        v83 = 1;
        LOBYTE(v84) = 0;
        v85 = 0;
        if ((v72 & 1) == 0)
        {
          goto LABEL_25;
        }

        goto LABEL_22;
      }

      v82 = 0;
      v83 = 1;
    }

    LOBYTE(v84) = 0;
    v85 = 0;
LABEL_22:
    v23 = *(a2 + 24);
    if (v23)
    {
      atomic_fetch_add_explicit(v23, 2u, memory_order_relaxed);
    }

    v84 = v23;
    v85 = 1;
LABEL_25:
    LOBYTE(v86) = 0;
    v87 = 0;
    if (*(a2 + 48) == 1)
    {
      v73 = *(a2 + 40);
      if (v73)
      {
        atomic_fetch_add_explicit(v73, 2u, memory_order_relaxed);
      }

      v86 = v73;
      v87 = 1;
    }

    LOBYTE(v88) = 0;
    v90 = 0;
    if (*(a2 + 88) == 1)
    {
      v24 = *(a2 + 56);
      *&v88 = v24;
      if (v24)
      {
        CFRetain(v24);
      }

      v25 = *(a2 + 64);
      *(&v88 + 1) = v25;
      if (v25)
      {
        CFRetain(v25);
      }

      v26 = *(a2 + 72);
      *&v89 = v26;
      if (v26)
      {
        CFRetain(v26);
      }

      v27 = *(a2 + 80);
      if (v27)
      {
        atomic_fetch_add_explicit(v27, 2u, memory_order_relaxed);
      }

      *(&v89 + 1) = v27;
      v90 = 1;
    }

    LOBYTE(v91) = 0;
    v93 = 0;
    if (*(a2 + 120) == 1)
    {
      v28 = *(a2 + 96);
      if (v28)
      {
        atomic_fetch_add_explicit(v28, 2u, memory_order_relaxed);
      }

      *&v91 = v28;
      v29 = *(a2 + 104);
      if (v29)
      {
        atomic_fetch_add_explicit(v29, 2u, memory_order_relaxed);
      }

      *(&v91 + 1) = v29;
      v30 = *(a2 + 112);
      if (v30)
      {
        atomic_fetch_add_explicit(v30, 2u, memory_order_relaxed);
      }

      v92 = v30;
      v93 = 1;
    }

    WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded((a1 + 16), a1);
    v31 = *(a1 + 16);
    atomic_fetch_add(v31, 1u);
    v79 = v31;
    WebCore::RegistrableDomain::RegistrableDomain(v80, a5);
    WTF::String::isolatedCopy();
    v32 = WTF::fastMalloc(0x28);
    *v32 = &unk_1F11073E0;
    *(v32 + 8) = v79;
    *(v32 + 16) = v16;
    *(v32 + 24) = v80[0];
    v33 = v80[1];
    *v80 = 0u;
    *(v32 + 32) = v33;
    if ((*(**(a1 + 208) + 24))(*(a1 + 208)))
    {
      v109 = 0;
      WTF::URL::invalidate(&v109);
      v35 = *(a1 + 120);
      if (v35 == 1)
      {
        v36 = *(a1 + 80);
        if (v36)
        {
          atomic_fetch_add_explicit(v36, 2u, memory_order_relaxed);
        }

        v37 = v109;
        v109 = v36;
        if (v37 && atomic_fetch_add_explicit(v37, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v37, v34);
        }

        v38 = *(a1 + 104);
        v110 = *(a1 + 88);
        v111 = v38;
      }

      else
      {
        WebCore::PCM::AttributionTriggerData::tokenPublicKeyURL(buf, &v81);
        if (v97 != 1)
        {
          goto LABEL_105;
        }

        v65 = *buf;
        if (*buf)
        {
          atomic_fetch_add_explicit(*buf, 2u, memory_order_relaxed);
        }

        v66 = v109;
        v109 = v65;
        if (v66 && atomic_fetch_add_explicit(v66, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v66, v34);
        }

        v110 = v95;
        v111 = v96;
        if (v97 == 1)
        {
          v67 = *buf;
          *buf = 0;
          if (v67)
          {
            if (atomic_fetch_add_explicit(v67, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v67, v34);
            }
          }
        }
      }

      if (v109)
      {
        if (v109[1] && (v110 & 1) != 0)
        {
          v78 = (*(**(a1 + 208) + 32))(*(a1 + 208));
          v39 = qword_1ED640FE0;
          if (os_log_type_enabled(qword_1ED640FE0, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_19D52D000, v39, OS_LOG_TYPE_INFO, "About to fire a token public key request.", buf, 2u);
          }

          v40 = *(a1 + 208);
          WTF::StringImpl::createWithoutCopyingNonEmpty();
          v108 = *buf;
          (*(*v40 + 16))(v40, 0, &v108);
          v42 = v108;
          v108 = 0;
          if (v42 && atomic_fetch_add_explicit(v42, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v42, v41);
          }

          v108 = 0;
          WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded((a1 + 16), a1);
          v43 = *(a1 + 16);
          atomic_fetch_add(v43, 1u);
          *buf = v43;
          LOWORD(v95) = v81;
          BYTE2(v95) = BYTE2(v81);
          BYTE8(v95) = 0;
          LOBYTE(v96) = 0;
          v44 = v83;
          if (v83 == 1)
          {
            v74 = v82;
            v82 = 0;
            *(&v95 + 1) = v74;
            LOBYTE(v96) = 1;
          }

          BYTE8(v96) = 0;
          v97 = 0;
          v45 = v85;
          if (v85 == 1)
          {
            v46 = v84;
            v84 = 0;
            *(&v96 + 1) = v46;
            v97 = 1;
          }

          LOBYTE(v98) = 0;
          v99 = 0;
          v47 = v87;
          if (v87 == 1)
          {
            v75 = v86;
            v86 = 0;
            v98 = v75;
            v99 = 1;
          }

          LOBYTE(v100) = 0;
          v102 = 0;
          v48 = v90;
          if (v90 == 1)
          {
            v49 = v88;
            v88 = 0u;
            v50 = v89;
            v89 = 0u;
            v100 = v49;
            v101 = v50;
            v102 = 1;
          }

          LOBYTE(v103) = 0;
          v105 = 0;
          v51 = v93;
          if (v93 == 1)
          {
            v52 = v91;
            v91 = 0uLL;
            v103 = v52;
            v53 = v92;
            v92 = 0;
            v104 = v53;
            v105 = 1;
          }

          v106 = v32;
          v54 = WTF::fastMalloc(0x98);
          *v54 = &unk_1F1107318;
          *(v54 + 8) = v43;
          *buf = 0;
          *(v54 + 16) = v95;
          *(v54 + 18) = BYTE2(v95);
          *(v54 + 24) = 0;
          *(v54 + 32) = 0;
          if (v44)
          {
            v76 = *(&v95 + 1);
            *(&v95 + 1) = 0;
            *(v54 + 24) = v76;
            *(v54 + 32) = 1;
          }

          *(v54 + 40) = 0;
          *(v54 + 48) = 0;
          if (v45)
          {
            v55 = *(&v96 + 1);
            *(&v96 + 1) = 0;
            *(v54 + 40) = v55;
            *(v54 + 48) = 1;
          }

          *(v54 + 56) = 0;
          *(v54 + 64) = 0;
          if (v47)
          {
            v77 = v98;
            v98 = 0;
            *(v54 + 56) = v77;
            *(v54 + 64) = 1;
          }

          *(v54 + 72) = 0;
          *(v54 + 104) = 0;
          if (v48)
          {
            *(v54 + 72) = v100;
            *(v54 + 88) = v101;
            v56 = *(&v101 + 1);
            v100 = 0u;
            v101 = 0u;
            *(v54 + 96) = v56;
            *(v54 + 104) = 1;
          }

          *(v54 + 112) = 0;
          *(v54 + 136) = 0;
          if (v51)
          {
            *(v54 + 112) = v103;
            v57 = *(&v103 + 1);
            v103 = 0uLL;
            *(v54 + 120) = v57;
            v58 = v104;
            v104 = 0;
            *(v54 + 128) = v58;
            *(v54 + 136) = 1;
          }

          *(v54 + 144) = v32;
          v107 = v54;
          WebKit::PCM::NetworkLoader::start(&v109, &v108, v78 | v35 ^ 1, &v107);
          v60 = v107;
          v107 = 0;
          if (v60)
          {
            (*(*v60 + 8))(v60);
          }

          v106 = 0;
          WebCore::PCM::AttributionTriggerData::~AttributionTriggerData(&v95, v59);
          v61 = *buf;
          *buf = 0;
          if (v61 && atomic_fetch_add(v61, 0xFFFFFFFF) == 1)
          {
            atomic_store(1u, v61);
            WTF::fastFree(v61, v34);
          }

          v62 = v108;
          v108 = 0;
          if (v62)
          {
            if (*v62 == 1)
            {
              WTF::JSONImpl::Value::operator delete();
            }

            else
            {
              --*v62;
            }
          }

          v32 = 0;
        }

LABEL_105:
        v68 = v109;
        v109 = 0;
        if (v68 && atomic_fetch_add_explicit(v68, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v68, v34);
        }

        if (!v32)
        {
          goto LABEL_110;
        }
      }
    }

    (*(*v32 + 8))(v32);
LABEL_110:
    v69 = v80[1];
    v80[1] = 0;
    if (v69 && atomic_fetch_add_explicit(v69, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v69, v34);
    }

    v70 = v80[0];
    v80[0] = 0;
    if (v70)
    {
      if (atomic_fetch_add_explicit(v70, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v70, v34);
      }
    }

    WebCore::PCM::AttributionTriggerData::~AttributionTriggerData(&v81, v34);
    return;
  }

  *buf = v16;
  WebCore::RegistrableDomain::RegistrableDomain(&v81, a5);
  if (*(a1 + 184))
  {
    v63 = a1 + 176;
  }

  else
  {
    v63 = a6;
  }

  WebKit::PrivateClickMeasurementManager::attribute(a1, buf, &v81, a2, v63);
  v64 = v81;
  v81 = 0;
  if (v64 && atomic_fetch_add_explicit(v64, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v64, v18);
  }

LABEL_9:
  v19 = *buf;
  *buf = 0;
  if (v19 && atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v19, v18);
  }
}

uint64_t WebKit::PrivateClickMeasurementManager::attribute(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = (*(**(a1 + 208) + 24))(*(a1 + 208));
  if (result)
  {
    WebKit::PrivateClickMeasurementManager::initializeStore(a1);
    v11 = *(a1 + 192);
    atomic_fetch_add(v11 + 2, 1u);
    v12 = *(a1 + 72);
    WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded((a1 + 16), a1);
    v13 = *(a1 + 16);
    atomic_fetch_add(v13, 1u);
    v14 = WTF::fastMalloc(0x10);
    *v14 = &unk_1F1107408;
    v14[1] = v13;
    v15 = v14;
    (*(*v11 + 24))(v11, a2, a3, a5, a4, v12, &v15);
    result = v15;
    v15 = 0;
    if (result)
    {
      result = (*(*result + 8))(result);
    }

    if (atomic_fetch_add(v11 + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v11 + 2);
      return (*(*v11 + 8))(v11);
    }
  }

  return result;
}

WTF::StringImpl *WebKit::PrivateClickMeasurementManager::setPrivateClickMeasurementAppBundleIDForTesting(WTF::StringImpl *result, WTF::StringImpl *a2)
{
  v2 = *a2;
  if (!*a2 || !*(v2 + 4))
  {
    return std::__optional_destruct_base<WTF::String,false>::reset[abi:sn200100]((result + 176), a2);
  }

  v3 = *(result + 184);
  *a2 = 0;
  if (v3 == 1)
  {
    v4 = *(result + 22);
    *(result + 22) = v2;
    if (v4)
    {
      if (atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(v4, a2);
      }
    }
  }

  else
  {
    *(result + 22) = v2;
    *(result + 184) = 1;
  }

  return result;
}

WTF::StringImpl *WebKit::PrivateClickMeasurementManager::fireConversionRequestImpl(uint64_t a1, WebCore::PrivateClickMeasurement *a2, char a3)
{
  v29 = 0;
  WTF::URL::invalidate(&v29);
  if (a3)
  {
    if (*(a1 + 296) != 1)
    {
      WebCore::PrivateClickMeasurement::attributionReportClickDestinationURL(buf, a2);
      goto LABEL_13;
    }

    v6 = *(a1 + 256);
    if (v6)
    {
      atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed);
    }

    *buf = v6;
    v7 = *(a1 + 264);
    v8 = *(a1 + 280);
  }

  else
  {
    if (*(a1 + 296) != 1)
    {
      WebCore::PrivateClickMeasurement::attributionReportClickSourceURL(buf, a2);
      goto LABEL_13;
    }

    v9 = *(a1 + 216);
    if (v9)
    {
      atomic_fetch_add_explicit(v9, 2u, memory_order_relaxed);
    }

    *buf = v9;
    v7 = *(a1 + 224);
    v8 = *(a1 + 240);
  }

  v27 = v7;
  v28 = v8;
LABEL_13:
  WTF::URL::operator=(&v29, buf);
  v11 = *buf;
  *buf = 0;
  if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v11, v10);
  }

  result = v29;
  if (v29)
  {
    if (!*(v29 + 1) || (v30 & 1) == 0)
    {
      v29 = 0;
LABEL_20:
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(result, v10);
      }

      return result;
    }

    v13 = (*(**(a1 + 208) + 32))(*(a1 + 208));
    v14 = qword_1ED640FE0;
    if (os_log_type_enabled(qword_1ED640FE0, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19D52D000, v14, OS_LOG_TYPE_INFO, "About to fire an attribution request.", buf, 2u);
    }

    v15 = *(a1 + 208);
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    (*(*v15 + 16))(v15, 0, buf);
    v17 = *buf;
    *buf = 0;
    if (v17 && atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v17, v16);
    }

    WebCore::PrivateClickMeasurement::attributionReportJSON(&v25, a2);
    v18 = v25;
    v25 = 0;
    *buf = v18;
    WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded((a1 + 16), a1);
    v19 = *(a1 + 16);
    atomic_fetch_add(v19, 1u);
    v20 = WTF::fastMalloc(0x10);
    *v20 = &unk_1F11074A8;
    v20[1] = v19;
    v24 = v20;
    WebKit::PCM::NetworkLoader::start(&v29, buf, v13, &v24);
    v21 = v24;
    v24 = 0;
    if (v21)
    {
      (*(*v21 + 8))(v21);
    }

    v22 = *buf;
    *buf = 0;
    if (v22)
    {
      if (*v22 == 1)
      {
        WTF::JSONImpl::Value::operator delete();
      }

      else
      {
        --*v22;
      }
    }

    v23 = v25;
    v25 = 0;
    if (v23)
    {
      if (*v23 == 1)
      {
        WTF::JSONImpl::Value::operator delete();
      }

      else
      {
        --*v23;
      }
    }

    result = v29;
    v29 = 0;
    if (result)
    {
      goto LABEL_20;
    }
  }

  return result;
}

double WebKit::PrivateClickMeasurementManager::randomlyBetweenFifteenAndThirtyMinutes(WebKit::PrivateClickMeasurementManager *this)
{
  result = 0.0;
  if ((*(this + 72) & 1) == 0)
  {
    v2 = (*(**(this + 26) + 32))(*(this + 26), 0.0);
    result = 10.0;
    if ((v2 & 1) == 0)
    {
      return (WTF::cryptographicallyRandomNumber<unsigned int>() % 0x384 + 900);
    }
  }

  return result;
}

uint64_t WebKit::PrivateClickMeasurementManager::clear(uint64_t a1, atomic_uint **a2)
{
  WTF::RunLoop::TimerBase::stop((a1 + 24));
  std::__optional_destruct_base<WTF::String,false>::reset[abi:sn200100]((a1 + 176), v4);
  if (((*(**(a1 + 208) + 24))(*(a1 + 208)) & 1) == 0)
  {
    v7 = *a2;
    *a2 = 0;
    (*(*v7 + 16))(v7);
    v8 = *(*v7 + 8);
    v9 = v7;

    return v8(v9);
  }

  WebKit::PrivateClickMeasurementManager::initializeStore(a1);
  v5 = *(a1 + 192);
  atomic_fetch_add(v5 + 2, 1u);
  result = (*(*v5 + 72))(v5, a2);
  if (atomic_fetch_add(v5 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v5 + 2);
    v8 = *(*v5 + 8);
    v9 = v5;

    return v8(v9);
  }

  return result;
}

uint64_t WebKit::PrivateClickMeasurementManager::clearForRegistrableDomain(uint64_t a1, uint64_t a2, atomic_uint **a3)
{
  if (((*(**(a1 + 208) + 24))(*(a1 + 208)) & 1) == 0)
  {
    v8 = *a3;
    *a3 = 0;
    (*(*v8 + 16))(v8);
    v9 = *(*v8 + 8);
    v10 = v8;

    return v9(v10);
  }

  WebKit::PrivateClickMeasurementManager::initializeStore(a1);
  v6 = *(a1 + 192);
  atomic_fetch_add(v6 + 2, 1u);
  result = (*(*v6 + 80))(v6, a2, a3);
  if (atomic_fetch_add(v6 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v6 + 2);
    v9 = *(*v6 + 8);
    v10 = v6;

    return v9(v10);
  }

  return result;
}

WTF::StringImpl *WebKit::PrivateClickMeasurementManager::toStringForTesting(uint64_t a1, uint64_t *a2)
{
  if ((*(**(a1 + 208) + 24))(*(a1 + 208)))
  {
    WebKit::PrivateClickMeasurementManager::initializeStore(a1);
    v4 = *(a1 + 192);
    atomic_fetch_add(v4 + 2, 1u);
    result = (*(*v4 + 32))(v4, a2);
    if (atomic_fetch_add(v4 + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v4 + 2);
      v6 = *(*v4 + 8);

      return v6(v4);
    }
  }

  else
  {
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    WTF::CompletionHandler<void ()(WTF::String)>::operator()(a2, &v8);
    result = v8;
    v8 = 0;
    if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v7);
    }
  }

  return result;
}

uint64_t WebKit::PrivateClickMeasurementManager::setTokenPublicKeyURLForTesting(uint64_t result, uint64_t *a2)
{
  if (*a2)
  {
    if (*(*a2 + 4))
    {
      return std::optional<WTF::URL>::operator=[abi:sn200100]<WTF::URL,void>(result + 80, a2);
    }
  }

  return result;
}

uint64_t std::optional<WTF::URL>::operator=[abi:sn200100]<WTF::URL,void>(uint64_t a1, uint64_t *a2)
{
  if (*(a1 + 40) == 1)
  {
    WTF::URL::operator=(a1, a2);
  }

  else
  {
    WTF::URL::URL(a1, a2);
    *(a1 + 40) = 1;
  }

  return a1;
}

void WebKit::PrivateClickMeasurementManager::setTokenSignatureURLForTesting(uint64_t a1, uint64_t *a2)
{
  if (*a2 && *(*a2 + 4))
  {
    v4 = a1 + 128;

    std::optional<WTF::URL>::operator=[abi:sn200100]<WTF::URL,void>(v4, a2);
  }

  else
  {
    v9 = v2;
    v10 = v3;
    LOBYTE(v7) = 0;
    v8 = 0;
    std::__optional_storage_base<WTF::URL,false>::__assign_from[abi:sn200100]<std::__optional_move_assign_base<WTF::URL,false>>(a1 + 128, &v7);
    if (v8 == 1)
    {
      v6 = v7;
      v7 = 0;
      if (v6)
      {
        if (atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v6, v5);
        }
      }
    }
  }
}

WTF::StringImpl *WebKit::PrivateClickMeasurementManager::setAttributionReportURLsForTesting(WTF::StringImpl *result, uint64_t *a2, uint64_t *a3)
{
  v3 = result;
  if (*a2 && *(*a2 + 4) && *a3 && *(*a3 + 4))
  {
    WTF::URL::URL(v9, a2);
    WTF::URL::URL(v10, a3);
    v5 = v3 + 216;
    if (*(v3 + 296) == 1)
    {
      WTF::URL::operator=(v5, v9);
      WTF::URL::operator=(v3 + 256, v10);
    }

    else
    {
      WTF::URL::URL(v5, v9);
      WTF::URL::URL(v3 + 256, v10);
      *(v3 + 296) = 1;
    }

    v8 = v10[0];
    v10[0] = 0;
    if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v8, v6);
    }

    result = v9[0];
    v9[0] = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(result, v6);
      }
    }
  }

  else if (*(result + 296) == 1)
  {
    v7 = *(result + 32);
    *(v3 + 32) = 0;
    if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v7, a2);
    }

    result = *(v3 + 27);
    *(v3 + 27) = 0;
    if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      result = WTF::StringImpl::destroy(result, a2);
    }

    *(v3 + 296) = 0;
  }

  return result;
}

uint64_t WebKit::PrivateClickMeasurementManager::markAllUnattributedAsExpiredForTesting(WebKit::PrivateClickMeasurementManager *this)
{
  result = (*(**(this + 26) + 24))(*(this + 26));
  if (result)
  {
    WebKit::PrivateClickMeasurementManager::initializeStore(this);
    v3 = *(this + 24);
    atomic_fetch_add(v3 + 2, 1u);
    result = (*(*v3 + 40))(v3);
    if (atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v3 + 2);
      v4 = *(*v3 + 8);

      return v4(v3);
    }
  }

  return result;
}

void WebKit::PrivateClickMeasurementManager::setPCMFraudPreventionValuesForTesting(uint64_t a1, WTF::StringImpl *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v5 = *a2;
  if (!*a2 || !*(v5 + 4) || !*a3 || !*(*a3 + 4) || !*a4 || !*(*a4 + 4) || !*a5 || !*(*a5 + 4))
  {
    return;
  }

  *a2 = 0;
  v7 = *a3;
  *a3 = 0;
  v8 = *a4;
  *a4 = 0;
  v9 = *a5;
  *a5 = 0;
  v10 = MEMORY[0x1E696EBA8];
  v11 = *MEMORY[0x1E696EBA8];
  if (*MEMORY[0x1E696EBA8])
  {
    atomic_fetch_add_explicit(v11, 2u, memory_order_relaxed);
    v12 = *v10;
    if (*v10)
    {
      atomic_fetch_add_explicit(v12, 2u, memory_order_relaxed);
      v13 = *v10;
      if (*v10)
      {
        atomic_fetch_add_explicit(v13, 2u, memory_order_relaxed);
        v14 = *v10;
        *(&v27 + 1) = v13;
        if (v14)
        {
          atomic_fetch_add_explicit(v14, 2u, memory_order_relaxed);
        }
      }

      else
      {
        v14 = 0;
      }

      goto LABEL_16;
    }
  }

  else
  {
    *(&v26 + 1) = 0;
  }

  v13 = 0;
  v12 = 0;
  v14 = 0;
  *&v27 = 0;
LABEL_16:
  v15 = *(a1 + 368);
  v28 = v14;
  v24 = 0;
  if (v15 == 1)
  {
    v16 = *(a1 + 304);
    *(a1 + 304) = v5;
    if (v16 && atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v16, a2);
    }

    *&v25 = 0;
    v17 = *(a1 + 312);
    *(a1 + 312) = v7;
    if (v17 && atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v17, a2);
    }

    *(&v25 + 1) = 0;
    v18 = *(a1 + 320);
    *(a1 + 320) = v8;
    if (v18 && atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v18, a2);
    }

    *&v26 = 0;
    v19 = *(a1 + 328);
    *(a1 + 328) = v9;
    if (v19 && atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v19, a2);
    }

    *(&v26 + 1) = 0;
    v20 = *(a1 + 336);
    *(a1 + 336) = v11;
    if (v20 && atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v20, a2);
    }

    *&v27 = 0;
    v21 = *(a1 + 344);
    *(a1 + 344) = v12;
    if (v21 && atomic_fetch_add_explicit(v21, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v21, a2);
    }

    *(&v27 + 1) = 0;
    v22 = *(a1 + 352);
    *(a1 + 352) = v13;
    if (v22 && atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v22, a2);
    }

    v28 = 0;
    v23 = *(a1 + 360);
    *(a1 + 360) = v14;
    if (v23)
    {
      if (atomic_fetch_add_explicit(v23, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v23, a2);
      }
    }
  }

  else
  {
    *(a1 + 304) = v5;
    *(a1 + 312) = v7;
    v25 = 0u;
    *(a1 + 320) = v8;
    *(a1 + 328) = v9;
    v26 = 0u;
    *(a1 + 336) = v11;
    *(a1 + 344) = v12;
    v27 = 0u;
    v28 = 0;
    *(a1 + 352) = v13;
    *(a1 + 360) = v14;
    *(a1 + 368) = 1;
  }

  WebCore::ServiceWorkerRoutePattern::~ServiceWorkerRoutePattern(&v24, a2);
}

uint64_t WebKit::PrivateClickMeasurementManager::markAttributedPrivateClickMeasurementsAsExpiredForTesting(uint64_t a1, atomic_uint **a2)
{
  if (((*(**(a1 + 208) + 24))(*(a1 + 208)) & 1) == 0)
  {
    v6 = *a2;
    *a2 = 0;
    (*(*v6 + 16))(v6);
    v7 = *(*v6 + 8);
    v8 = v6;

    return v7(v8);
  }

  WebKit::PrivateClickMeasurementManager::initializeStore(a1);
  v4 = *(a1 + 192);
  atomic_fetch_add(v4 + 2, 1u);
  result = (*(*v4 + 48))(v4, a2);
  if (atomic_fetch_add(v4 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v4 + 2);
    v7 = *(*v4 + 8);
    v8 = v4;

    return v7(v8);
  }

  return result;
}

uint64_t WebKit::PrivateClickMeasurementManager::initializeStore(uint64_t this)
{
  if (*(this + 192))
  {
    return this;
  }

  v1 = this;
  if ((*(**(this + 208) + 40))(*(this + 208)))
  {
    v2 = WTF::fastMalloc(0x150);
    *(v2 + 8) = 1;
    *v2 = &unk_1F1107028;
    *(v2 + 16) = 0;
    *(v2 + 328) = 0;
    this = *(v1 + 192);
    *(v1 + 192) = v2;
    if (!this)
    {
      return this;
    }

    goto LABEL_11;
  }

  v3 = WTF::fastMalloc(0x20);
  *(v3 + 8) = 1;
  *v3 = &unk_1F1107200;
  *(v3 + 16) = 0;
  WebKit::PCM::sharedWorkQueue((v3 + 24));
  v4 = *(v1 + 200);
  if (v4)
  {
    if (*(v4 + 4))
    {
      atomic_fetch_add((v3 + 8), 1u);
      WTF::String::isolatedCopy();
      v5 = WTF::fastMalloc(0x20);
      *v5 = &unk_1F1107700;
      v5[1] = v3;
      v5[2] = v3;
      v5[3] = v7;
      v8 = v5;
      WTF::SuspendableWorkQueue::dispatch();
      if (v8)
      {
        (*(*v8 + 8))(v8);
      }
    }
  }

  this = *(v1 + 192);
  *(v1 + 192) = v3;
  if (this)
  {
LABEL_11:
    if (atomic_fetch_add((this + 8), 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, (this + 8));
      v6 = *(*this + 8);

      return v6();
    }
  }

  return this;
}

uint64_t WebKit::PrivateClickMeasurementManager::destroyStoreForTesting(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 192);
  if (v3)
  {
    atomic_fetch_add(v3 + 2, 1u);
    WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded((a1 + 16), a1);
    v8 = *(a1 + 16);
    atomic_fetch_add(v8, 1u);
    v9 = *a2;
    *a2 = 0;
    v10 = WTF::fastMalloc(0x18);
    *v10 = &unk_1F11074F8;
    v10[1] = v8;
    v10[2] = v9;
    v11 = v10;
    (*(*v3 + 96))(v3, &v11);
    result = v11;
    v11 = 0;
    if (result)
    {
      result = (*(*result + 8))(result);
    }

    if (atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v3 + 2);
      return (*(*v3 + 8))(v3);
    }
  }

  else
  {
    v4 = *a2;
    *a2 = 0;
    (*(*v4 + 16))(v4);
    v5 = *(*v4 + 8);

    return v5(v4);
  }

  return result;
}

void *WebKit::PCM::initializePCMStorageInDirectory(atomic_uint **this, const WTF::String *a2)
{
  v3 = WebKit::PCM::DaemonClient::operator new(0x10, a2);
  *v3 = &unk_1F1106828;
  v3[1] = 0;
  v10 = v3;
  v5 = WebKit::PrivateClickMeasurementManager::operator new(0x178, v4);
  v6 = WebKit::PrivateClickMeasurementManager::PrivateClickMeasurementManager(v5, &v10, this);
  {
    v7 = WebKit::PCM::managerPointer(void)::manager;
    WebKit::PCM::managerPointer(void)::manager = v6;
    if (v7)
    {
      if (v7[2] == 1)
      {
        (*(*v7 + 8))(v7);
      }

      else
      {
        --v7[2];
      }
    }
  }

  else
  {
    WebKit::PCM::managerPointer(void)::manager = v6;
  }

  result = v10;
  if (v10)
  {
    v9 = *(*v10 + 8);

    return v9();
  }

  return result;
}

void WebKit::PCM::decodeMessageAndSendToManager(WebKit::Daemon::Connection *a1, WTF::StringImpl *a2, WTF::StringImpl *a3, unint64_t a4, uint64_t *a5)
{
  v7 = &v140;
  v8 = &v121;
  switch(a2)
  {
    case 0:
      v97 = a3;
      v98 = a4;
      LOBYTE(v140) = 0;
      v152 = 0;
      WebKit::Daemon::Coder<WebCore::PrivateClickMeasurement,void>::decode(&v97, a2, &v121);
      if (v138 == 1)
      {
        WebCore::PrivateClickMeasurement::PrivateClickMeasurement(&cf, &v121);
        v119 = 1;
        if (v138)
        {
          goto LABEL_220;
        }

        goto LABEL_4;
      }

      return;
    case 1:
      v88 = a3;
      v89 = a4;
      v90 = 0;
      LOBYTE(cf) = 0;
      v118 = 0;
      WebKit::Daemon::Coder<WebCore::PCM::AttributionTriggerData,void>::decode(&v88, &v140);
      if (v151 == 1)
      {
        WebKit::Daemon::Coder<WTF::URL,void>::decode<WebKit::Daemon::Decoder>(&v91, &v88);
        if (v94 == 1)
        {
          WebKit::Daemon::Coder<WebCore::RegistrableDomain,void>::decode(&v88, &v95);
          if (v96 == 1)
          {
            WebKit::Daemon::Coder<WTF::URL,void>::decode<WebKit::Daemon::Decoder>(&v97, &v88);
            if (v100 == 1)
            {
              WebKit::Daemon::Coder<WTF::String,void>::decode<WebKit::Daemon::Decoder>(&v88, &v101);
              if (v102 == 1)
              {
                if ((v151 & 1) == 0 || (v94 & 1) == 0 || (v100 & 1) == 0)
                {
                  goto LABEL_219;
                }

                LOWORD(v121) = v140;
                BYTE2(v121) = BYTE2(v140);
                LOBYTE(v122) = 0;
                BYTE8(v122) = 0;
                if (BYTE8(v141) == 1)
                {
                  v86 = v141;
                  *&v141 = 0;
                  *&v122 = v86;
                  BYTE8(v122) = 1;
                }

                LOBYTE(v123) = 0;
                BYTE8(v123) = 0;
                if (BYTE8(v142) == 1)
                {
                  v30 = v142;
                  *&v142 = 0;
                  *&v123 = v30;
                  BYTE8(v123) = 1;
                }

                LOBYTE(v124) = 0;
                v125[0] = 0;
                if (v144 == 1)
                {
                  v87 = v143;
                  v143 = 0;
                  v124 = v87;
                  v125[0] = 1;
                }

                v125[8] = 0;
                v126 = 0;
                if (v147 == 1)
                {
                  v31 = v145;
                  v145 = 0u;
                  *&v125[8] = v31;
                  v32 = v146;
                  v146 = 0u;
                  *&v125[24] = v32;
                  v126 = v147;
                }

                LOBYTE(v127) = 0;
                v129 = 0;
                if (v150 == 1)
                {
                  v33 = v148;
                  v148 = 0uLL;
                  v127 = v33;
                  v34 = v149;
                  v149 = 0;
                  v128 = v34;
                  v129 = 1;
                }

                v35 = v91;
                v91 = 0;
                v131 = v92;
                v132 = v93;
                LODWORD(v92) = v92 & 0xFFFFFFFE;
                v36 = v95;
                v95 = 0;
                v130 = v35;
                *&v133 = v36;
                v37 = v97;
                v97 = 0;
                v134 = v98;
                v135 = v99;
                *(&v133 + 1) = v37;
                v136 = v101;
                v137 = 1;
              }

              else
              {
                LOBYTE(v121) = 0;
                v137 = 0;
                if (v100)
                {
                  v57 = v97;
                  v97 = 0;
                  if (v57)
                  {
                    if (atomic_fetch_add_explicit(v57, 0xFFFFFFFE, memory_order_relaxed) == 2)
                    {
                      WTF::StringImpl::destroy(v57, v9);
                    }
                  }
                }
              }
            }

            else
            {
              LOBYTE(v121) = 0;
              v137 = 0;
            }

            v58 = v95;
            if (v95 && atomic_fetch_add_explicit(v95, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v58, v9);
            }
          }

          else
          {
            LOBYTE(v121) = 0;
            v137 = 0;
          }

          if (v94)
          {
            v59 = v91;
            v91 = 0;
            if (v59)
            {
              if (atomic_fetch_add_explicit(v59, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v59, v9);
              }
            }
          }
        }

        else
        {
          LOBYTE(v121) = 0;
          v137 = 0;
        }

        if (v151)
        {
          WebCore::PCM::AttributionTriggerData::~AttributionTriggerData(&v140, v9);
        }
      }

      else
      {
        LOBYTE(v121) = 0;
        v137 = 0;
      }

      if (v118 == v137)
      {
        if (v118)
        {
          LOWORD(cf) = v121;
          BYTE2(cf) = BYTE2(v121);
          std::__optional_storage_base<WebCore::RegistrableDomain,false>::__assign_from[abi:sn200100]<std::__optional_move_assign_base<WebCore::RegistrableDomain,false>>(&v104, &v122);
          std::__optional_storage_base<WebCore::RegistrableDomain,false>::__assign_from[abi:sn200100]<std::__optional_move_assign_base<WebCore::RegistrableDomain,false>>(&v105, &v123);
          std::__optional_storage_base<WebCore::RegistrableDomain,false>::__assign_from[abi:sn200100]<std::__optional_move_assign_base<WebCore::RegistrableDomain,false>>(&v106, &v124);
          std::__optional_storage_base<WebCore::PCM::DestinationUnlinkableToken,false>::__assign_from[abi:sn200100]<std::__optional_move_assign_base<WebCore::PCM::DestinationUnlinkableToken,false>>(v108, &v125[8]);
          std::__optional_storage_base<WebCore::PCM::DestinationSecretToken,false>::__assign_from[abi:sn200100]<std::__optional_move_assign_base<WebCore::PCM::DestinationSecretToken,false>>(&v110, &v127);
          WTF::URL::operator=(&v113, &v130);
          v61 = v133;
          *&v133 = 0;
          v62 = *&v116[0];
          *&v116[0] = v61;
          if (v62 && atomic_fetch_add_explicit(v62, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v62, v60);
          }

          WTF::URL::operator=(v116 + 8, &v133 + 8);
          v63 = v136;
          v136 = 0;
          v64 = v117;
          v117 = v63;
          if (v64 && atomic_fetch_add_explicit(v64, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v64, v9);
          }
        }
      }

      else if (v118)
      {
        v65 = v117;
        v117 = 0;
        if (v65 && atomic_fetch_add_explicit(v65, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v65, v9);
        }

        v66 = *(&v116[0] + 1);
        *(&v116[0] + 1) = 0;
        if (v66 && atomic_fetch_add_explicit(v66, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v66, v9);
        }

        v67 = *&v116[0];
        *&v116[0] = 0;
        if (v67 && atomic_fetch_add_explicit(v67, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v67, v9);
        }

        v68 = v113;
        v113 = 0;
        if (v68 && atomic_fetch_add_explicit(v68, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v68, v9);
        }

        WebCore::PCM::AttributionTriggerData::~AttributionTriggerData(&cf, v9);
        v118 = 0;
      }

      else
      {
        LOWORD(cf) = v121;
        BYTE2(cf) = BYTE2(v121);
        LOBYTE(v104) = 0;
        BYTE8(v104) = 0;
        if (BYTE8(v122) == 1)
        {
          v84 = v122;
          *&v122 = 0;
          *&v104 = v84;
          BYTE8(v104) = 1;
        }

        LOBYTE(v105) = 0;
        BYTE8(v105) = 0;
        if (BYTE8(v123) == 1)
        {
          v69 = v123;
          *&v123 = 0;
          *&v105 = v69;
          BYTE8(v105) = 1;
        }

        LOBYTE(v106) = 0;
        v107 = 0;
        if (v125[0] == 1)
        {
          v85 = v124;
          v124 = 0;
          v106 = v85;
          v107 = 1;
        }

        LOBYTE(v108[0]) = 0;
        v109 = 0;
        if (v126 == 1)
        {
          v70 = *&v125[8];
          memset(&v125[8], 0, 32);
          v108[0] = v70;
          v108[1] = *&v125[24];
          v109 = v126;
        }

        LOBYTE(v110) = 0;
        v112 = 0;
        if (v129 == 1)
        {
          v71 = v127;
          v127 = 0uLL;
          v110 = v71;
          v72 = v128;
          v128 = 0;
          v111 = v72;
          v112 = 1;
        }

        v114 = v131;
        v115 = v132;
        LODWORD(v131) = v131 & 0xFFFFFFFE;
        v116[0] = v133;
        v73 = v130;
        v74 = v136;
        v130 = 0;
        v133 = 0uLL;
        v116[1] = v134;
        v116[2] = v135;
        LODWORD(v134) = v134 & 0xFFFFFFFE;
        v136 = 0;
        v113 = v73;
        v117 = v74;
        v118 = 1;
      }

      if (v137 == 1)
      {
        v75 = v136;
        v136 = 0;
        if (v75 && atomic_fetch_add_explicit(v75, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v75, v9);
        }

        v76 = *(&v133 + 1);
        *(&v133 + 1) = 0;
        if (v76 && atomic_fetch_add_explicit(v76, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v76, v9);
        }

        v77 = v133;
        *&v133 = 0;
        if (v77 && atomic_fetch_add_explicit(v77, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v77, v9);
        }

        v78 = v130;
        v130 = 0;
        if (v78 && atomic_fetch_add_explicit(v78, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v78, v9);
        }

        WebCore::PCM::AttributionTriggerData::~AttributionTriggerData(&v121, v9);
      }

      if (v118 == 1)
      {
        (*(*WebKit::PCM::managerPointer(void)::manager + 24))(WebKit::PCM::managerPointer(void)::manager, &cf, &v113, v116, v116 + 8, &v117);
        if (v118)
        {
          v80 = v117;
          v117 = 0;
          if (v80 && atomic_fetch_add_explicit(v80, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v80, v79);
          }

          v81 = *(&v116[0] + 1);
          *(&v116[0] + 1) = 0;
          if (v81 && atomic_fetch_add_explicit(v81, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v81, v79);
          }

          v82 = *&v116[0];
          *&v116[0] = 0;
          if (v82 && atomic_fetch_add_explicit(v82, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v82, v79);
          }

          v83 = v113;
          v113 = 0;
          if (v83 && atomic_fetch_add_explicit(v83, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v83, v79);
          }

          WebCore::PCM::AttributionTriggerData::~AttributionTriggerData(&cf, v79);
        }
      }

      return;
    case 2:
      v21 = *a5;
      *a5 = 0;
      v22 = WTF::fastMalloc(0x10);
      *v22 = &unk_1F1107548;
      *(v22 + 1) = v21;
      v121 = v22;
      (*(*WebKit::PCM::managerPointer(void)::manager + 32))(WebKit::PCM::managerPointer(void)::manager, &v121);
      goto LABEL_27;
    case 3:
      v121 = a3;
      v122 = a4;
      WebKit::Daemon::Coder<WebCore::RegistrableDomain,void>::decode(&v121, &cf);
      if (v104)
      {
        LOBYTE(v104) = 1;
        v25 = *a5;
        *a5 = 0;
        v26 = WTF::fastMalloc(0x10);
        *v26 = &unk_1F1107570;
        *(v26 + 1) = v25;
        v140 = v26;
        (*(*WebKit::PCM::managerPointer(void)::manager + 40))(WebKit::PCM::managerPointer(void)::manager, &cf, &v140);
        v27 = v140;
        v140 = 0;
        if (v27)
        {
          (*(*v27 + 8))(v27);
        }

        if (v104)
        {
          v28 = cf;
          cf = 0;
          if (v28)
          {
            goto LABEL_140;
          }
        }
      }

      return;
    case 4:
      v97 = a3;
      v98 = a4;
      LOBYTE(cf) = 0;
      v120 = 0;
      WebKit::Daemon::Coder<WebCore::PrivateClickMeasurement,void>::decode(&v97, a2, &v140);
      if (v152 != 1)
      {
        return;
      }

      if (v98 == *(&v98 + 1))
      {
        LOBYTE(v121) = 0;
        v139 = 0;
LABEL_21:
        WebCore::PrivateClickMeasurement::~PrivateClickMeasurement(&v140, v9);
        if (!v139)
        {
          return;
        }

        goto LABEL_104;
      }

      if (v98 < *(&v98 + 1))
      {
        goto LABEL_219;
      }

      v49 = *(v97 + (*(&v98 + 1))++);
      WebCore::PrivateClickMeasurement::PrivateClickMeasurement(&v121, &v140);
      v138 = v49;
      v139 = 1;
      if (v152)
      {
        goto LABEL_21;
      }

LABEL_104:
      WebCore::PrivateClickMeasurement::PrivateClickMeasurement(&cf, &v121);
      v51 = v138;
      v119 = v138;
      v120 = 1;
      if ((v139 & 1) == 0)
      {
        goto LABEL_107;
      }

      WebCore::PrivateClickMeasurement::~PrivateClickMeasurement(&v121, v50);
      if (v120)
      {
        v51 = v119;
LABEL_107:
        (*(*WebKit::PCM::managerPointer(void)::manager + 48))(WebKit::PCM::managerPointer(void)::manager, &cf, v51 & 1);
        if (v120)
        {
          p_cf = &cf;
LABEL_109:
          WebCore::PrivateClickMeasurement::~PrivateClickMeasurement(p_cf, v13);
        }
      }

      return;
    case 5:
      if (a4)
      {
        v39 = *a3;
        {
          v40 = qword_1EB01DB30 != 0;
        }

        else
        {
          v40 = 0;
          WebKit::PCM::DaemonConnectionSet::singleton(void)::set = 0;
          qword_1EB01DB30 = 0;
        }

        WebKit::PCM::DaemonConnectionSet::setConnectedNetworkProcessHasDebugModeEnabled(&WebKit::PCM::DaemonConnectionSet::singleton(void)::set, a1, v39 & 1);
        if (v40 != (qword_1EB01DB30 != 0))
        {
          v41 = WebKit::PCM::managerPointer(void)::manager;

          WebKit::PrivateClickMeasurementManager::setDebugModeIsEnabled(v41);
        }
      }

      return;
    case 6:
      v44 = *a5;
      *a5 = 0;
      v45 = WTF::fastMalloc(0x10);
      *v45 = &unk_1F1107598;
      *(v45 + 1) = v44;
      v121 = v45;
      (*(*WebKit::PCM::managerPointer(void)::manager + 64))(WebKit::PCM::managerPointer(void)::manager, &v121);
      v23 = v121;
      v121 = 0;
      if (v23)
      {
        goto LABEL_28;
      }

      return;
    case 7:
      if (a4)
      {
        v29 = *(*WebKit::PCM::managerPointer(void)::manager + 72);

        v29();
      }

      return;
    case 8:
      cf = a3;
      v104 = a4;
      LOBYTE(v121) = 0;
      LOBYTE(v124) = 0;
      WebKit::Daemon::Decoder::operator>><std::tuple<WTF::URL>>(&cf, &v121);
      if (v124 != 1)
      {
        return;
      }

      (*(*WebKit::PCM::managerPointer(void)::manager + 80))(WebKit::PCM::managerPointer(void)::manager, &v121);
      goto LABEL_89;
    case 9:
      cf = a3;
      v104 = a4;
      LOBYTE(v121) = 0;
      LOBYTE(v124) = 0;
      WebKit::Daemon::Decoder::operator>><std::tuple<WTF::URL>>(&cf, &v121);
      if (v124 != 1)
      {
        return;
      }

      (*(*WebKit::PCM::managerPointer(void)::manager + 88))(WebKit::PCM::managerPointer(void)::manager, &v121);
LABEL_89:
      if ((v124 & 1) == 0)
      {
        return;
      }

      goto LABEL_139;
    case 10:
      v97 = a3;
      v98 = a4;
      WebKit::Daemon::Coder<WTF::URL,void>::decode<WebKit::Daemon::Decoder>(&v140, &v97);
      if (v143 != 1)
      {
        return;
      }

      WebKit::Daemon::Coder<WTF::URL,void>::decode<WebKit::Daemon::Decoder>(&cf, &v97);
      if (v106 != 1)
      {
        if (v143)
        {
          v28 = v140;
          v140 = 0;
          if (v28)
          {
            goto LABEL_140;
          }
        }

        return;
      }

      if ((v143 & 1) == 0)
      {
        goto LABEL_219;
      }

      v122 = v141;
      v123 = v142;
      v121 = v140;
      v124 = cf;
      *v125 = v104;
      *&v125[16] = v105;
      v125[32] = 1;
      (*(*WebKit::PCM::managerPointer(void)::manager + 96))(WebKit::PCM::managerPointer(void)::manager, &v121, &v124);
      if ((v125[32] & 1) == 0)
      {
        return;
      }

      v46 = v124;
      v124 = 0;
      if (!v46)
      {
        goto LABEL_139;
      }

      goto LABEL_137;
    case 11:
      v18 = *(*WebKit::PCM::managerPointer(void)::manager + 104);

      goto LABEL_14;
    case 12:
      v19 = *a5;
      *a5 = 0;
      v20 = WTF::fastMalloc(0x10);
      *v20 = &unk_1F11075C0;
      *(v20 + 1) = v19;
      v121 = v20;
      (*(*WebKit::PCM::managerPointer(void)::manager + 112))(WebKit::PCM::managerPointer(void)::manager, &v121);
      goto LABEL_27;
    case 13:
      cf = a3;
      v104 = a4;
      LOBYTE(v121) = 0;
      WebKit::Daemon::Coder<WTF::String,void>::decode<WebKit::Daemon::Decoder>(&cf, &v88);
      if ((v89 & 1) == 0)
      {
        return;
      }

      WebKit::Daemon::Coder<WTF::String,void>::decode<WebKit::Daemon::Decoder>(&cf, &v91);
      if (v92 != 1)
      {
        v43 = 0;
        v42 = 0;
        goto LABEL_124;
      }

      WebKit::Daemon::Coder<WTF::String,void>::decode<WebKit::Daemon::Decoder>(&cf, &v97);
      if (v98 != 1)
      {
        goto LABEL_119;
      }

      WebKit::Daemon::Coder<WTF::String,void>::decode<WebKit::Daemon::Decoder>(&cf, &v140);
      if (v141 != 1)
      {
        if (v98)
        {
          v52 = v97;
          v97 = 0;
          if (v52)
          {
            if (atomic_fetch_add_explicit(v52, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v52, v9);
            }
          }
        }

LABEL_119:
        v43 = 0;
        v42 = 0;
LABEL_120:
        if (v92)
        {
          v53 = v91;
          v91 = 0;
          if (v53)
          {
            if (atomic_fetch_add_explicit(v53, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v53, v9);
            }
          }
        }

LABEL_124:
        if (v89)
        {
          v54 = v88;
          v88 = 0;
          if (v54)
          {
            if (atomic_fetch_add_explicit(v54, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v54, v9);
            }
          }
        }

        if (v43)
        {
          v121 = v42;
          *&v122 = v5;
          *(&v122 + 1) = v7;
          *&v123 = v8;
          BYTE8(v123) = 1;
          (*(*WebKit::PCM::managerPointer(void)::manager + 120))(WebKit::PCM::managerPointer(void)::manager, &v121, &v122, &v122 + 8, &v123);
          if (BYTE8(v123))
          {
            v55 = v123;
            *&v123 = 0;
            if (v55 && atomic_fetch_add_explicit(v55, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v55, v9);
            }

            v56 = *(&v122 + 1);
            *(&v122 + 1) = 0;
            if (v56 && atomic_fetch_add_explicit(v56, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v56, v9);
            }

            v46 = v122;
            *&v122 = 0;
            if (v46)
            {
LABEL_137:
              if (atomic_fetch_add_explicit(v46, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v46, v9);
              }
            }

LABEL_139:
            v28 = v121;
            v121 = 0;
            if (v28)
            {
LABEL_140:
              if (atomic_fetch_add_explicit(v28, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v28, v9);
              }
            }
          }
        }

        return;
      }

      if (v89 & 1) != 0 && (v92 & 1) != 0 && (v98)
      {
        v42 = v88;
        v88 = 0;
        v5 = v91;
        v91 = 0;
        v7 = v97;
        v43 = 1;
        v8 = v140;
        goto LABEL_120;
      }

      do
      {
LABEL_219:
        __break(1u);
LABEL_220:
        WebCore::PrivateClickMeasurement::~PrivateClickMeasurement(&v121, v9);
        if (!v119)
        {
          return;
        }

LABEL_4:
        WebCore::PrivateClickMeasurement::PrivateClickMeasurement(&v140, &cf);
        v152 = 1;
        if (v119)
        {
          WebCore::PrivateClickMeasurement::~PrivateClickMeasurement(&cf, v10);
          if ((v152 & 1) == 0)
          {
            return;
          }
        }

        v11 = *a5;
        *a5 = 0;
        v12 = WTF::fastMalloc(0x10);
        *v12 = &unk_1F1107520;
        *(v12 + 1) = v11;
        v121 = v12;
      }

      while ((v152 & 1) == 0);
      (*(*WebKit::PCM::managerPointer(void)::manager + 16))(WebKit::PCM::managerPointer(void)::manager, &v140, &v121);
      v14 = v121;
      v121 = 0;
      if (v14)
      {
        (*(*v14 + 8))(v14);
      }

      if (v152)
      {
        p_cf = &v140;
        goto LABEL_109;
      }

      return;
    case 14:
      v18 = *(*WebKit::PCM::managerPointer(void)::manager + 128);

LABEL_14:
      v18();
      return;
    case 15:
      v121 = a3;
      v122 = a4;
      LOBYTE(v97) = 0;
      LOBYTE(v98) = 0;
      WebKit::Daemon::Coder<WTF::String,void>::decode<WebKit::Daemon::Decoder>(&v121, &cf);
      if (v104)
      {
        v140 = cf;
        v24 = 1;
      }

      else
      {
        v24 = 0;
        LOBYTE(v140) = 0;
      }

      LOBYTE(v141) = v24;
      std::__optional_storage_base<WebCore::RegistrableDomain,false>::__assign_from[abi:sn200100]<std::__optional_move_assign_base<WebCore::RegistrableDomain,false>>(&v97, &v140);
      if (v141 == 1)
      {
        v48 = v140;
        v140 = 0;
        if (v48)
        {
          if (atomic_fetch_add_explicit(v48, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v48, v47);
          }
        }
      }

      if (v98 == 1)
      {
        (*(*WebKit::PCM::managerPointer(void)::manager + 136))(WebKit::PCM::managerPointer(void)::manager, &v97);
        if (v98)
        {
          v28 = v97;
          v97 = 0;
          if (v28)
          {
            goto LABEL_140;
          }
        }
      }

      return;
    case 16:
      v16 = *a5;
      *a5 = 0;
      v17 = WTF::fastMalloc(0x10);
      *v17 = &unk_1F11075E8;
      *(v17 + 1) = v16;
      v121 = v17;
      (*(*WebKit::PCM::managerPointer(void)::manager + 144))(WebKit::PCM::managerPointer(void)::manager, &v121);
LABEL_27:
      v23 = v121;
      v121 = 0;
      if (v23)
      {
LABEL_28:
        (*(*v23 + 8))(v23);
      }

      return;
    case 17:
      v121 = a3;
      v122 = a4;
      WebKit::Daemon::Coder<WebCore::CertificateInfo,void>::decode(&v121, &cf);
      if (v104)
      {
        LOBYTE(v104) = 1;
        (*(*WebKit::PCM::managerPointer(void)::manager + 152))(WebKit::PCM::managerPointer(void)::manager, &cf);
        if (v104)
        {
          v38 = cf;
          cf = 0;
          if (v38)
          {
            CFRelease(v38);
          }
        }
      }

      return;
    default:
      return;
  }
}

WebKit::PCM::ManagerProxy *WebKit::PCM::ManagerProxy::create@<X0>(WebKit::PCM::ManagerProxy *this@<X0>, const WTF::String *a2@<X1>, WebKit::PCM::ManagerProxy **a3@<X8>)
{
  v7 = WebKit::PCM::ManagerProxy::operator new(0x18, a2);
  result = WebKit::PCM::ManagerProxy::ManagerProxy(v7, this, a2);
  *a3 = result;
  return result;
}

uint64_t WebKit::PCM::ManagerProxy::operator new(WebKit::PCM::ManagerProxy *this, void *a2)
{
  if (WebKit::PCM::ManagerProxy::s_heapRef)
  {
    return bmalloc::api::tzoneAllocateNonCompact(WebKit::PCM::ManagerProxy::s_heapRef, a2);
  }

  else
  {
    return WebKit::PCM::ManagerProxy::operatorNewSlow(0x18);
  }
}

WebKit::PCM::ManagerProxy *WebKit::PCM::ManagerProxy::ManagerProxy(WebKit::PCM::ManagerProxy *this, const WTF::String *a2, WebKit::NetworkSession *a3)
{
  *(this + 2) = 1;
  *this = &unk_1F1107150;
  WTF::String::utf8();
  WebKit::PCM::Connection::create(&v8, a3, this + 2);
  v6 = v8;
  v8 = 0;
  if (v6)
  {
    if (*v6 == 1)
    {
      WTF::fastFree(v6, v5);
    }

    else
    {
      --*v6;
    }
  }

  return this;
}

WTF *WebKit::PCM::ManagerProxy::storeUnattributed(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v15 = 0;
  v16 = 0;
  WebKit::Daemon::Coder<WebCore::PrivateClickMeasurement,void>::encode(&v15, a2);
  v5 = *(a1 + 16);
  WebKit::Daemon::Encoder::takeBuffer(&v15, &v13);
  v6 = *a3;
  *a3 = 0;
  v7 = WTF::fastMalloc(0x10);
  *v7 = &unk_1F1107610;
  v7[1] = v6;
  v12 = v7;
  WebKit::Daemon::ConnectionToMachService<WebKit::PCM::ConnectionTraits>::sendWithReply(v5, 0, &v13, &v12);
  v9 = v12;
  v12 = 0;
  if (v9)
  {
    (*(*v9 + 8))(v9);
  }

  v10 = v13;
  if (v13)
  {
    v13 = 0;
    v14 = 0;
    WTF::fastFree(v10, v8);
  }

  result = v15;
  if (v15)
  {
    v15 = 0;
    LODWORD(v16) = 0;
    return WTF::fastFree(result, v8);
  }

  return result;
}

WTF *WebKit::PCM::ManagerProxy::handleAttribution(uint64_t a1, char *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  v17 = 0;
  v18 = 0;
  WebKit::Daemon::Coder<WebCore::PCM::AttributionTriggerData,void>::encode(&v17, a2);
  WebKit::Daemon::Coder<WTF::String,void>::encode<WebKit::Daemon::Encoder>(&v17, a3);
  WebKit::Daemon::Coder<WTF::String,void>::encode<WebKit::Daemon::Encoder>(&v17, a4);
  WebKit::Daemon::Coder<WTF::String,void>::encode<WebKit::Daemon::Encoder>(&v17, a5);
  WebKit::Daemon::Coder<WTF::String,void>::encode<WebKit::Daemon::Encoder>(&v17, a6);
  v11 = *(a1 + 16);
  WebKit::Daemon::Encoder::takeBuffer(&v17, &v15);
  WebKit::Daemon::ConnectionToMachService<WebKit::PCM::ConnectionTraits>::send(v11, 1, &v15);
  v13 = v15;
  if (v15)
  {
    v15 = 0;
    v16 = 0;
    WTF::fastFree(v13, v12);
  }

  result = v17;
  if (v17)
  {
    v17 = 0;
    LODWORD(v18) = 0;
    return WTF::fastFree(result, v12);
  }

  return result;
}

WTF *WebKit::PCM::ManagerProxy::clear(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 16);
  v13 = 0;
  v14 = 0;
  WebKit::Daemon::Encoder::takeBuffer(&v13, &v11);
  v4 = *a2;
  *a2 = 0;
  v5 = WTF::fastMalloc(0x10);
  *v5 = &unk_1F1107638;
  v5[1] = v4;
  v10 = v5;
  WebKit::Daemon::ConnectionToMachService<WebKit::PCM::ConnectionTraits>::sendWithReply(v3, 2, &v11, &v10);
  v7 = v10;
  v10 = 0;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  v8 = v11;
  if (v11)
  {
    v11 = 0;
    v12 = 0;
    WTF::fastFree(v8, v6);
  }

  result = v13;
  if (v13)
  {
    v13 = 0;
    LODWORD(v14) = 0;
    return WTF::fastFree(result, v6);
  }

  return result;
}

WTF *WebKit::PCM::ManagerProxy::clearForRegistrableDomain(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v15 = 0;
  v16 = 0;
  WebKit::Daemon::Coder<WTF::String,void>::encode<WebKit::Daemon::Encoder>(&v15, a2);
  v5 = *(a1 + 16);
  WebKit::Daemon::Encoder::takeBuffer(&v15, &v13);
  v6 = *a3;
  *a3 = 0;
  v7 = WTF::fastMalloc(0x10);
  *v7 = &unk_1F1107660;
  v7[1] = v6;
  v12 = v7;
  WebKit::Daemon::ConnectionToMachService<WebKit::PCM::ConnectionTraits>::sendWithReply(v5, 3, &v13, &v12);
  v9 = v12;
  v12 = 0;
  if (v9)
  {
    (*(*v9 + 8))(v9);
  }

  v10 = v13;
  if (v13)
  {
    v13 = 0;
    v14 = 0;
    WTF::fastFree(v10, v8);
  }

  result = v15;
  if (v15)
  {
    v15 = 0;
    LODWORD(v16) = 0;
    return WTF::fastFree(result, v8);
  }

  return result;
}

WTF *WebKit::PCM::ManagerProxy::setDebugModeIsEnabled(WebKit::PCM::ManagerProxy *this, char a2)
{
  v9 = 0;
  v10 = 0;
  LOBYTE(v7) = a2;
  WebKit::Daemon::Encoder::encodeFixedLengthData(&v9, &v7, 1uLL);
  v3 = *(this + 2);
  WebKit::Daemon::Encoder::takeBuffer(&v9, &v7);
  WebKit::Daemon::ConnectionToMachService<WebKit::PCM::ConnectionTraits>::send(v3, 5, &v7);
  v5 = v7;
  if (v7)
  {
    v7 = 0;
    v8 = 0;
    WTF::fastFree(v5, v4);
  }

  result = v9;
  if (v9)
  {
    v9 = 0;
    LODWORD(v10) = 0;
    return WTF::fastFree(result, v4);
  }

  return result;
}

WTF *WebKit::PCM::ManagerProxy::migratePrivateClickMeasurementFromLegacyStorage(uint64_t a1, uint64_t a2, char a3)
{
  v11 = 0;
  v12 = 0;
  WebKit::Daemon::Coder<WebCore::PrivateClickMeasurement,void>::encode(&v11, a2);
  LOBYTE(v9) = a3;
  WebKit::Daemon::Encoder::encodeFixedLengthData(&v11, &v9, 1uLL);
  v5 = *(a1 + 16);
  WebKit::Daemon::Encoder::takeBuffer(&v11, &v9);
  WebKit::Daemon::ConnectionToMachService<WebKit::PCM::ConnectionTraits>::send(v5, 4, &v9);
  v7 = v9;
  if (v9)
  {
    v9 = 0;
    v10 = 0;
    WTF::fastFree(v7, v6);
  }

  result = v11;
  if (v11)
  {
    v11 = 0;
    LODWORD(v12) = 0;
    return WTF::fastFree(result, v6);
  }

  return result;
}

WTF *WebKit::PCM::ManagerProxy::toStringForTesting(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 16);
  v13 = 0;
  v14 = 0;
  WebKit::Daemon::Encoder::takeBuffer(&v13, &v11);
  v4 = *a2;
  *a2 = 0;
  v5 = WTF::fastMalloc(0x10);
  *v5 = &unk_1F1107688;
  v5[1] = v4;
  v10 = v5;
  WebKit::Daemon::ConnectionToMachService<WebKit::PCM::ConnectionTraits>::sendWithReply(v3, 6, &v11, &v10);
  v7 = v10;
  v10 = 0;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  v8 = v11;
  if (v11)
  {
    v11 = 0;
    v12 = 0;
    WTF::fastFree(v8, v6);
  }

  result = v13;
  if (v13)
  {
    v13 = 0;
    LODWORD(v14) = 0;
    return WTF::fastFree(result, v6);
  }

  return result;
}

WTF *WebKit::PCM::ManagerProxy::setOverrideTimerForTesting(WebKit::PCM::ManagerProxy *this, char a2)
{
  v9 = 0;
  v10 = 0;
  LOBYTE(v7) = a2;
  WebKit::Daemon::Encoder::encodeFixedLengthData(&v9, &v7, 1uLL);
  v3 = *(this + 2);
  WebKit::Daemon::Encoder::takeBuffer(&v9, &v7);
  WebKit::Daemon::ConnectionToMachService<WebKit::PCM::ConnectionTraits>::send(v3, 7, &v7);
  v5 = v7;
  if (v7)
  {
    v7 = 0;
    v8 = 0;
    WTF::fastFree(v5, v4);
  }

  result = v9;
  if (v9)
  {
    v9 = 0;
    LODWORD(v10) = 0;
    return WTF::fastFree(result, v4);
  }

  return result;
}

WTF *WebKit::PCM::ManagerProxy::setTokenPublicKeyURLForTesting(uint64_t a1, uint64_t *a2)
{
  v9 = 0;
  v10 = 0;
  WebKit::Daemon::Coder<WTF::String,void>::encode<WebKit::Daemon::Encoder>(&v9, a2);
  v3 = *(a1 + 16);
  WebKit::Daemon::Encoder::takeBuffer(&v9, &v7);
  WebKit::Daemon::ConnectionToMachService<WebKit::PCM::ConnectionTraits>::send(v3, 8, &v7);
  v5 = v7;
  if (v7)
  {
    v7 = 0;
    v8 = 0;
    WTF::fastFree(v5, v4);
  }

  result = v9;
  if (v9)
  {
    v9 = 0;
    LODWORD(v10) = 0;
    return WTF::fastFree(result, v4);
  }

  return result;
}

WTF *WebKit::PCM::ManagerProxy::setTokenSignatureURLForTesting(uint64_t a1, uint64_t *a2)
{
  v9 = 0;
  v10 = 0;
  WebKit::Daemon::Coder<WTF::String,void>::encode<WebKit::Daemon::Encoder>(&v9, a2);
  v3 = *(a1 + 16);
  WebKit::Daemon::Encoder::takeBuffer(&v9, &v7);
  WebKit::Daemon::ConnectionToMachService<WebKit::PCM::ConnectionTraits>::send(v3, 9, &v7);
  v5 = v7;
  if (v7)
  {
    v7 = 0;
    v8 = 0;
    WTF::fastFree(v5, v4);
  }

  result = v9;
  if (v9)
  {
    v9 = 0;
    LODWORD(v10) = 0;
    return WTF::fastFree(result, v4);
  }

  return result;
}

WTF *WebKit::PCM::ManagerProxy::setAttributionReportURLsForTesting(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v11 = 0;
  v12 = 0;
  WebKit::Daemon::Coder<WTF::String,void>::encode<WebKit::Daemon::Encoder>(&v11, a2);
  WebKit::Daemon::Coder<WTF::String,void>::encode<WebKit::Daemon::Encoder>(&v11, a3);
  v5 = *(a1 + 16);
  WebKit::Daemon::Encoder::takeBuffer(&v11, &v9);
  WebKit::Daemon::ConnectionToMachService<WebKit::PCM::ConnectionTraits>::send(v5, 10, &v9);
  v7 = v9;
  if (v9)
  {
    v9 = 0;
    v10 = 0;
    WTF::fastFree(v7, v6);
  }

  result = v11;
  if (v11)
  {
    v11 = 0;
    LODWORD(v12) = 0;
    return WTF::fastFree(result, v6);
  }

  return result;
}

WTF *WebKit::PCM::ManagerProxy::markAllUnattributedAsExpiredForTesting(WebKit::PCM::ManagerProxy *this)
{
  v1 = *(this + 2);
  v7 = 0;
  v8 = 0;
  WebKit::Daemon::Encoder::takeBuffer(&v7, &v5);
  WebKit::Daemon::ConnectionToMachService<WebKit::PCM::ConnectionTraits>::send(v1, 11, &v5);
  v3 = v5;
  if (v5)
  {
    v5 = 0;
    v6 = 0;
    WTF::fastFree(v3, v2);
  }

  result = v7;
  if (v7)
  {
    v7 = 0;
    LODWORD(v8) = 0;
    return WTF::fastFree(result, v2);
  }

  return result;
}

WTF *WebKit::PCM::ManagerProxy::markAttributedPrivateClickMeasurementsAsExpiredForTesting(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 16);
  v13 = 0;
  v14 = 0;
  WebKit::Daemon::Encoder::takeBuffer(&v13, &v11);
  v4 = *a2;
  *a2 = 0;
  v5 = WTF::fastMalloc(0x10);
  *v5 = &unk_1F11076B0;
  v5[1] = v4;
  v10 = v5;
  WebKit::Daemon::ConnectionToMachService<WebKit::PCM::ConnectionTraits>::sendWithReply(v3, 12, &v11, &v10);
  v7 = v10;
  v10 = 0;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  v8 = v11;
  if (v11)
  {
    v11 = 0;
    v12 = 0;
    WTF::fastFree(v8, v6);
  }

  result = v13;
  if (v13)
  {
    v13 = 0;
    LODWORD(v14) = 0;
    return WTF::fastFree(result, v6);
  }

  return result;
}

WTF *WebKit::PCM::ManagerProxy::setPCMFraudPreventionValuesForTesting(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v15 = 0;
  v16 = 0;
  WebKit::Daemon::Coder<WTF::String,void>::encode<WebKit::Daemon::Encoder>(&v15, a2);
  WebKit::Daemon::Coder<WTF::String,void>::encode<WebKit::Daemon::Encoder>(&v15, a3);
  WebKit::Daemon::Coder<WTF::String,void>::encode<WebKit::Daemon::Encoder>(&v15, a4);
  WebKit::Daemon::Coder<WTF::String,void>::encode<WebKit::Daemon::Encoder>(&v15, a5);
  v9 = *(a1 + 16);
  WebKit::Daemon::Encoder::takeBuffer(&v15, &v13);
  WebKit::Daemon::ConnectionToMachService<WebKit::PCM::ConnectionTraits>::send(v9, 13, &v13);
  v11 = v13;
  if (v13)
  {
    v13 = 0;
    v14 = 0;
    WTF::fastFree(v11, v10);
  }

  result = v15;
  if (v15)
  {
    v15 = 0;
    LODWORD(v16) = 0;
    return WTF::fastFree(result, v10);
  }

  return result;
}

WTF *WebKit::PCM::ManagerProxy::startTimerImmediatelyForTesting(WebKit::PCM::ManagerProxy *this)
{
  v1 = *(this + 2);
  v7 = 0;
  v8 = 0;
  WebKit::Daemon::Encoder::takeBuffer(&v7, &v5);
  WebKit::Daemon::ConnectionToMachService<WebKit::PCM::ConnectionTraits>::send(v1, 14, &v5);
  v3 = v5;
  if (v5)
  {
    v5 = 0;
    v6 = 0;
    WTF::fastFree(v3, v2);
  }

  result = v7;
  if (v7)
  {
    v7 = 0;
    LODWORD(v8) = 0;
    return WTF::fastFree(result, v2);
  }

  return result;
}

WTF *WebKit::PCM::ManagerProxy::setPrivateClickMeasurementAppBundleIDForTesting(uint64_t a1, uint64_t *a2)
{
  v9 = 0;
  v10 = 0;
  WebKit::Daemon::Coder<WTF::String,void>::encode<WebKit::Daemon::Encoder>(&v9, a2);
  v3 = *(a1 + 16);
  WebKit::Daemon::Encoder::takeBuffer(&v9, &v7);
  WebKit::Daemon::ConnectionToMachService<WebKit::PCM::ConnectionTraits>::send(v3, 15, &v7);
  v5 = v7;
  if (v7)
  {
    v7 = 0;
    v8 = 0;
    WTF::fastFree(v5, v4);
  }

  result = v9;
  if (v9)
  {
    v9 = 0;
    LODWORD(v10) = 0;
    return WTF::fastFree(result, v4);
  }

  return result;
}

WTF *WebKit::PCM::ManagerProxy::destroyStoreForTesting(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 16);
  v13 = 0;
  v14 = 0;
  WebKit::Daemon::Encoder::takeBuffer(&v13, &v11);
  v4 = *a2;
  *a2 = 0;
  v5 = WTF::fastMalloc(0x10);
  *v5 = &unk_1F11076D8;
  v5[1] = v4;
  v10 = v5;
  WebKit::Daemon::ConnectionToMachService<WebKit::PCM::ConnectionTraits>::sendWithReply(v3, 16, &v11, &v10);
  v7 = v10;
  v10 = 0;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  v8 = v11;
  if (v11)
  {
    v11 = 0;
    v12 = 0;
    WTF::fastFree(v8, v6);
  }

  result = v13;
  if (v13)
  {
    v13 = 0;
    LODWORD(v14) = 0;
    return WTF::fastFree(result, v6);
  }

  return result;
}

WTF *WebKit::PCM::ManagerProxy::allowTLSCertificateChainForLocalPCMTesting(WebKit::PCM::ManagerProxy *this, const WebCore::CertificateInfo *a2)
{
  v9 = 0;
  v10 = 0;
  WebKit::Daemon::Coder<WebCore::CertificateInfo,void>::encode(&v9);
  v3 = *(this + 2);
  WebKit::Daemon::Encoder::takeBuffer(&v9, &v7);
  WebKit::Daemon::ConnectionToMachService<WebKit::PCM::ConnectionTraits>::send(v3, 17, &v7);
  v5 = v7;
  if (v7)
  {
    v7 = 0;
    v8 = 0;
    WTF::fastFree(v5, v4);
  }

  result = v9;
  if (v9)
  {
    v9 = 0;
    LODWORD(v10) = 0;
    return WTF::fastFree(result, v4);
  }

  return result;
}

uint64_t WebKit::PCM::PersistentStore::prepareForProcessToSuspend()
{
  WebKit::PCM::sharedWorkQueue(&v4);
  v0 = WTF::fastMalloc(0x10);
  *v0 = &unk_1F10EB420;
  v0[1] = WebKit::PCM::Database::interruptAllDatabases;
  v3 = v0;
  WTF::SuspendableWorkQueue::suspend();
  result = v3;
  if (v3)
  {
    result = (*(*v3 + 8))(v3);
  }

  v2 = v4;
  v4 = 0;
  if (v2)
  {
    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WTF::SerialFunctionDispatcher,(WTF::DestructionThread)0>::deref((v2 + 32));
  }

  return result;
}

uint64_t *WebKit::PCM::sharedWorkQueue@<X0>(void *a1@<X8>)
{
  {
    v3 = a1;
    WTF::SuspendableWorkQueue::create();
    a1 = v3;
    WebKit::PCM::sharedWorkQueue(void)::queue = v4;
  }

  return WTF::Ref<WTF::SuspendableWorkQueue,WTF::RawPtrTraits<WTF::SuspendableWorkQueue>,WTF::DefaultRefDerefTraits<WTF::SuspendableWorkQueue>>::copyRef(&WebKit::PCM::sharedWorkQueue(void)::queue, a1);
}

uint64_t WebKit::PCM::PersistentStore::processDidResume(WebKit::PCM::PersistentStore *this)
{
  WebKit::PCM::sharedWorkQueue(&v3);
  result = WTF::SuspendableWorkQueue::resume(v3);
  v2 = v3;
  v3 = 0;
  if (v2)
  {
    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WTF::SerialFunctionDispatcher,(WTF::DestructionThread)0>::deref(v2 + 4);
  }

  return result;
}

void WebKit::PCM::PersistentStore::~PersistentStore(WebKit::PCM::PersistentStore *this)
{
  *this = &unk_1F1107200;
  v2 = *(this + 3);
  *(this + 3) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WTF::SerialFunctionDispatcher,(WTF::DestructionThread)0>::deref((v2 + 32));
  }

  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    if (v3[26] == 1)
    {
      (*(*v3 + 64))(v3);
    }

    else
    {
      --v3[26];
    }
  }
}

{
  WebKit::PCM::PersistentStore::~PersistentStore(this);

  WTF::fastFree(v1, v2);
}

uint64_t WebKit::PCM::PersistentStore::insertPrivateClickMeasurement(uint64_t a1, char *a2, char a3, uint64_t *a4)
{
  atomic_fetch_add((a1 + 8), 1u);
  v31[0] = *a2;
  v7 = *(a2 + 8);
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  v32 = v7;
  v33[0] = *(a2 + 24);
  *(v33 + 9) = *(a2 + 33);
  v34[0] = 0;
  v35 = 0;
  if (a2[184] == 1)
  {
    std::__optional_storage_base<WebCore::PCM::AttributionTriggerData,false>::__construct[abi:sn200100]<WebCore::PCM::AttributionTriggerData>(v34, (a2 + 56));
  }

  v8 = *(a2 + 13);
  v36 = *(a2 + 12);
  v37 = v8;
  LOBYTE(v38) = 0;
  v39 = 0;
  if (a2[232] == 1)
  {
    v9 = *(a2 + 28);
    *(a2 + 28) = 0;
    v38 = v9;
    v39 = 1;
  }

  v10 = *(a2 + 15);
  v11 = *(a2 + 16);
  *(a2 + 15) = 0u;
  *(a2 + 16) = 0u;
  v40 = v10;
  v41 = v11;
  LOBYTE(v42) = 0;
  v44 = 0;
  if (a2[296] == 1)
  {
    v12 = *(a2 + 17);
    *(a2 + 34) = 0;
    *(a2 + 35) = 0;
    v42 = v12;
    v13 = *(a2 + 36);
    *(a2 + 36) = 0;
    v43 = v13;
    v44 = 1;
  }

  v14 = *(a2 + 38);
  *(a2 + 38) = 0;
  v45 = v14;
  v46 = a3;
  v15 = *a4;
  *a4 = 0;
  v47 = v15;
  v16 = WTF::fastMalloc(0x160);
  *v16 = &unk_1F1107728;
  *(v16 + 8) = a1;
  *(v16 + 16) = a1;
  *(v16 + 24) = v31[0];
  *(v16 + 32) = v32;
  v17 = *(&v32 + 1);
  v32 = 0uLL;
  *(v16 + 40) = v17;
  v18 = v33[0];
  *(v16 + 57) = *(v33 + 9);
  *(v16 + 48) = v18;
  *(v16 + 80) = 0;
  *(v16 + 208) = 0;
  if (v35 == 1)
  {
    std::__optional_storage_base<WebCore::PCM::AttributionTriggerData,false>::__construct[abi:sn200100]<WebCore::PCM::AttributionTriggerData>(v16 + 80, v34);
  }

  v19 = v36;
  *(v16 + 232) = v37;
  *(v16 + 216) = v19;
  *(v16 + 248) = 0;
  *(v16 + 256) = 0;
  if (v39 == 1)
  {
    v20 = v38;
    v38 = 0;
    *(v16 + 248) = v20;
    *(v16 + 256) = 1;
  }

  *(v16 + 264) = v40;
  *(v16 + 280) = v41;
  v21 = *(&v41 + 1);
  v40 = 0u;
  v41 = 0u;
  *(v16 + 288) = v21;
  *(v16 + 296) = 0;
  *(v16 + 320) = 0;
  if (v44 == 1)
  {
    *(v16 + 296) = v42;
    v22 = *(&v42 + 1);
    v42 = 0uLL;
    *(v16 + 304) = v22;
    v23 = v43;
    v43 = 0;
    *(v16 + 312) = v23;
    *(v16 + 320) = 1;
  }

  *(v16 + 328) = v45;
  *(v16 + 336) = v46;
  v24 = v47;
  v45 = 0;
  v47 = 0;
  *(v16 + 344) = v24;
  v48 = v16;
  WTF::SuspendableWorkQueue::dispatch();
  v26 = v48;
  v48 = 0;
  if (v26)
  {
    (*(*v26 + 8))(v26);
  }

  v27 = v47;
  v47 = 0;
  if (v27)
  {
    (*(*v27 + 8))(v27);
  }

  WebCore::PrivateClickMeasurement::~PrivateClickMeasurement(v31, v25);
  return 0;
}

uint64_t WebKit::PCM::PersistentStore::markAllUnattributedPrivateClickMeasurementAsExpiredForTesting(atomic_uint *this)
{
  atomic_fetch_add(this + 2, 1u);
  v2 = WTF::fastMalloc(0x18);
  *v2 = &unk_1F1107750;
  v2[1] = this;
  v2[2] = this;
  v4 = v2;
  WTF::SuspendableWorkQueue::dispatch();
  result = v4;
  if (v4)
  {
    return (*(*v4 + 8))(v4);
  }

  return result;
}

void *WebKit::PCM::PersistentStore::attributePrivateClickMeasurement(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int16 *a5, char a6, uint64_t *a7)
{
  v31 = a1;
  *&v32 = a1;
  atomic_fetch_add((a1 + 8), 1u);
  WebCore::RegistrableDomain::isolatedCopy(&v50);
  *(&v32 + 1) = v50;
  WebCore::RegistrableDomain::isolatedCopy(&v50);
  *&v33 = v50;
  WTF::String::isolatedCopy();
  v34 = *a5;
  v35 = *(a5 + 2);
  LOBYTE(v36) = 0;
  v37 = 0;
  if (*(a5 + 16) == 1)
  {
    v27 = *(a5 + 1);
    *(a5 + 1) = 0;
    v36 = v27;
    v37 = 1;
  }

  LOBYTE(v38) = 0;
  v39 = 0;
  if (*(a5 + 32) == 1)
  {
    v10 = *(a5 + 3);
    *(a5 + 3) = 0;
    v38 = v10;
    v39 = 1;
  }

  LOBYTE(v40) = 0;
  v41 = 0;
  if (*(a5 + 48) == 1)
  {
    v28 = *(a5 + 5);
    *(a5 + 5) = 0;
    v40 = v28;
    v41 = 1;
  }

  LOBYTE(v42) = 0;
  v44 = 0;
  if (*(a5 + 88) == 1)
  {
    v11 = *(a5 + 28);
    *(a5 + 28) = 0u;
    v12 = *(a5 + 36);
    *(a5 + 36) = 0u;
    v42 = v11;
    v43 = v12;
    v44 = 1;
  }

  LOBYTE(v45) = 0;
  v47 = 0;
  if (*(a5 + 120) == 1)
  {
    v13 = *(a5 + 6);
    *(a5 + 12) = 0;
    *(a5 + 13) = 0;
    v45 = v13;
    v14 = *(a5 + 14);
    *(a5 + 14) = 0;
    v46 = v14;
    v47 = 1;
  }

  v48 = a6;
  v15 = *a7;
  *a7 = 0;
  v49 = v15;
  v16 = WTF::fastMalloc(0xC0);
  *v16 = &unk_1F1107778;
  *(v16 + 8) = v31;
  *(v16 + 16) = v32;
  v17 = *(&v32 + 1);
  v32 = 0u;
  *(v16 + 24) = v17;
  *(v16 + 32) = v33;
  v18 = *(&v33 + 1);
  v33 = 0u;
  *(v16 + 40) = v18;
  *(v16 + 48) = v34;
  *(v16 + 50) = v35;
  *(v16 + 56) = 0;
  *(v16 + 64) = 0;
  if (v37 == 1)
  {
    v29 = v36;
    v36 = 0;
    *(v16 + 56) = v29;
    *(v16 + 64) = 1;
  }

  *(v16 + 72) = 0;
  *(v16 + 80) = 0;
  if (v39 == 1)
  {
    v19 = v38;
    v38 = 0;
    *(v16 + 72) = v19;
    *(v16 + 80) = 1;
  }

  *(v16 + 88) = 0;
  *(v16 + 96) = 0;
  if (v41 == 1)
  {
    v30 = v40;
    v40 = 0;
    *(v16 + 88) = v30;
    *(v16 + 96) = 1;
  }

  *(v16 + 104) = 0;
  *(v16 + 136) = 0;
  if (v44 == 1)
  {
    *(v16 + 104) = v42;
    *(v16 + 120) = v43;
    v20 = *(&v43 + 1);
    v42 = 0uLL;
    v43 = 0uLL;
    *(v16 + 128) = v20;
    *(v16 + 136) = 1;
  }

  *(v16 + 144) = 0;
  *(v16 + 168) = 0;
  if (v47 == 1)
  {
    *(v16 + 144) = v45;
    v21 = *(&v45 + 1);
    v45 = 0uLL;
    *(v16 + 152) = v21;
    v22 = v46;
    v46 = 0;
    *(v16 + 160) = v22;
    *(v16 + 168) = 1;
  }

  *(v16 + 176) = v48;
  v23 = v49;
  v49 = 0;
  *(v16 + 184) = v23;
  v50 = v16;
  WTF::SuspendableWorkQueue::dispatch();
  v25 = v50;
  v50 = 0;
  if (v25)
  {
    (*(*v25 + 8))(v25);
  }

  return WebKit::PCM::PersistentStore::attributePrivateClickMeasurement(WebCore::PCM::SourceSite &&,WebCore::PCM::AttributionDestinationSite &&,WTF::String const&,WebCore::PCM::AttributionTriggerData &&,WebCore::PrivateClickMeasurement::IsRunningLayoutTest,WebCore::PCM::AttributionDestinationSite &::CompletionHandler<void ()(std::optional<WebCore::PCM::AttributionSecondsUntilSendData> &&,WebKit::PCM::DebugInfo &&)> &&)::$_0::~$_0(&v31, v24);
}

void *WebKit::PCM::PersistentStore::attributePrivateClickMeasurement(WebCore::PCM::SourceSite &&,WebCore::PCM::AttributionDestinationSite &&,WTF::String const&,WebCore::PCM::AttributionTriggerData &&,WebCore::PrivateClickMeasurement::IsRunningLayoutTest,WebCore::PCM::AttributionDestinationSite &::CompletionHandler<void ()(std::optional<WebCore::PCM::AttributionSecondsUntilSendData> &&,WebKit::PCM::DebugInfo &&)> &&)::$_0::~$_0(void *a1, WTF::StringImpl *a2)
{
  v3 = a1[22];
  a1[22] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  WebCore::PCM::AttributionTriggerData::~AttributionTriggerData((a1 + 5), a2);
  v5 = a1[4];
  a1[4] = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, v4);
  }

  v6 = a1[3];
  a1[3] = 0;
  if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v6, v4);
  }

  v7 = a1[2];
  a1[2] = 0;
  if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v7, v4);
  }

  v8 = a1[1];
  a1[1] = 0;
  if (v8 && atomic_fetch_add(v8 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v8 + 2);
    (*(*v8 + 8))(v8);
  }

  return a1;
}

uint64_t WebKit::PCM::PersistentStore::privateClickMeasurementToStringForTesting(uint64_t a1, uint64_t *a2)
{
  atomic_fetch_add((a1 + 8), 1u);
  v3 = *a2;
  *a2 = 0;
  v4 = WTF::fastMalloc(0x20);
  *v4 = &unk_1F11077F0;
  v4[1] = a1;
  v4[2] = a1;
  v4[3] = v3;
  v6 = v4;
  WTF::SuspendableWorkQueue::dispatch();
  result = v6;
  if (v6)
  {
    return (*(*v6 + 8))(v6);
  }

  return result;
}

uint64_t WebKit::PCM::PersistentStore::allAttributedPrivateClickMeasurement(uint64_t a1, uint64_t *a2)
{
  atomic_fetch_add((a1 + 8), 1u);
  v3 = *a2;
  *a2 = 0;
  v4 = WTF::fastMalloc(0x20);
  *v4 = &unk_1F1107840;
  v4[1] = a1;
  v4[2] = a1;
  v4[3] = v3;
  v6 = v4;
  WTF::SuspendableWorkQueue::dispatch();
  result = v6;
  if (v6)
  {
    return (*(*v6 + 8))(v6);
  }

  return result;
}

uint64_t WebKit::PCM::PersistentStore::markAttributedPrivateClickMeasurementsAsExpiredForTesting(uint64_t a1, uint64_t *a2)
{
  atomic_fetch_add((a1 + 8), 1u);
  v3 = *a2;
  *a2 = 0;
  v4 = WTF::fastMalloc(0x20);
  *v4 = &unk_1F1107890;
  v4[1] = a1;
  v4[2] = a1;
  v4[3] = v3;
  v6 = v4;
  WTF::SuspendableWorkQueue::dispatch();
  result = v6;
  if (v6)
  {
    return (*(*v6 + 8))(v6);
  }

  return result;
}

uint64_t WebKit::PCM::PersistentStore::clearPrivateClickMeasurement(uint64_t a1, uint64_t *a2)
{
  atomic_fetch_add((a1 + 8), 1u);
  v3 = *a2;
  *a2 = 0;
  v4 = WTF::fastMalloc(0x20);
  *v4 = &unk_1F11078B8;
  v4[1] = a1;
  v4[2] = a1;
  v4[3] = v3;
  v6 = v4;
  WTF::SuspendableWorkQueue::dispatch();
  result = v6;
  if (v6)
  {
    return (*(*v6 + 8))(v6);
  }

  return result;
}

uint64_t WebKit::PCM::PersistentStore::clearPrivateClickMeasurementForRegistrableDomain(uint64_t a1, uint64_t a2, WTF::StringImpl **a3)
{
  atomic_fetch_add((a1 + 8), 1u);
  WebCore::RegistrableDomain::isolatedCopy(v14);
  v4 = *a3;
  *a3 = 0;
  v14[1] = v4;
  v5 = WTF::fastMalloc(0x28);
  *v5 = &unk_1F11078E0;
  *(v5 + 8) = a1;
  *(v5 + 16) = a1;
  v6 = *v14;
  v14[0] = 0;
  v14[1] = 0;
  *(v5 + 24) = v6;
  v15 = v5;
  WTF::SuspendableWorkQueue::dispatch();
  v8 = v15;
  v15 = 0;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  v9 = v14[1];
  v14[1] = 0;
  if (v9)
  {
    (*(*v9 + 8))(v9);
  }

  v10 = v14[0];
  v14[0] = 0;
  if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, v7);
  }

  return 0;
}

uint64_t WebKit::PCM::PersistentStore::clearExpiredPrivateClickMeasurement(atomic_uint *this)
{
  atomic_fetch_add(this + 2, 1u);
  v2 = WTF::fastMalloc(0x18);
  *v2 = &unk_1F1107908;
  v2[1] = this;
  v2[2] = this;
  v4 = v2;
  WTF::SuspendableWorkQueue::dispatch();
  result = v4;
  if (v4)
  {
    return (*(*v4 + 8))(v4);
  }

  return result;
}

uint64_t WebKit::PCM::PersistentStore::clearSentAttribution(uint64_t a1, uint64_t a2, char a3)
{
  atomic_fetch_add((a1 + 8), 1u);
  WebCore::PrivateClickMeasurement::isolatedCopy();
  v34 = a3;
  v4 = WTF::fastMalloc(0x158);
  *v4 = &unk_1F1107930;
  *(v4 + 8) = a1;
  *(v4 + 16) = a1;
  *(v4 + 24) = v18;
  *(v4 + 32) = v19;
  v5 = v20;
  v19 = 0;
  v20 = 0;
  *(v4 + 40) = v5;
  v6 = v21[0];
  *(v4 + 57) = *(v21 + 9);
  *(v4 + 48) = v6;
  *(v4 + 80) = 0;
  *(v4 + 208) = 0;
  if (v22[128] == 1)
  {
    std::__optional_storage_base<WebCore::PCM::AttributionTriggerData,false>::__construct[abi:sn200100]<WebCore::PCM::AttributionTriggerData>(v4 + 80, v22);
  }

  v7 = v23;
  *(v4 + 232) = v24;
  *(v4 + 216) = v7;
  *(v4 + 248) = 0;
  *(v4 + 256) = 0;
  if (v26 == 1)
  {
    v8 = v25;
    v25 = 0;
    *(v4 + 248) = v8;
    *(v4 + 256) = 1;
  }

  *(v4 + 264) = v27;
  *(v4 + 280) = v28;
  v9 = *(&v28 + 1);
  v27 = 0u;
  v28 = 0u;
  *(v4 + 288) = v9;
  *(v4 + 296) = 0;
  *(v4 + 320) = 0;
  if (v32 == 1)
  {
    *(v4 + 296) = v29;
    v10 = v30;
    v29 = 0;
    v30 = 0;
    *(v4 + 304) = v10;
    v11 = v31;
    v31 = 0;
    *(v4 + 312) = v11;
    *(v4 + 320) = 1;
  }

  v12 = v33;
  v33 = 0;
  *(v4 + 328) = v12;
  *(v4 + 336) = v34;
  v35 = v4;
  WTF::SuspendableWorkQueue::dispatch();
  v14 = v35;
  v35 = 0;
  if (v14)
  {
    (*(*v14 + 8))(v14);
  }

  WebCore::PrivateClickMeasurement::~PrivateClickMeasurement(&v18, v13);
  return 0;
}

uint64_t WebKit::PCM::PersistentStore::close(uint64_t a1, uint64_t *a2)
{
  atomic_fetch_add((a1 + 8), 1u);
  v3 = *a2;
  *a2 = 0;
  v4 = WTF::fastMalloc(0x20);
  *v4 = &unk_1F1107958;
  v4[1] = a1;
  v4[2] = a1;
  v4[3] = v3;
  v6 = v4;
  WTF::SuspendableWorkQueue::dispatch();
  result = v6;
  if (v6)
  {
    return (*(*v6 + 8))(v6);
  }

  return result;
}

void WebKit::PCM::ManagerProxy::~ManagerProxy(WebKit::PCM::ManagerProxy *this)
{
  *this = &unk_1F1107150;
  v2 = *(this + 2);
  *(this + 2) = 0;
  if (v2)
  {
    if (v2[4] == 1)
    {
      (*(*v2 + 8))(v2);
    }

    else
    {
      --v2[4];
    }
  }

  if (*(this + 2) != 1)
  {
    __break(0xC471u);
  }
}

void WebKit::PCM::ManagerProxy::~ManagerProxy(WebKit::PCM::ManagerProxy *this, void *a2)
{
  *this = &unk_1F1107150;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    if (v3[4] == 1)
    {
      (*(*v3 + 8))(v3);
    }

    else
    {
      --v3[4];
    }
  }

  if (*(this + 2) == 1)
  {

    bmalloc::api::tzoneFree(this, a2);
  }

  else
  {
    __break(0xC471u);
  }
}

unsigned int *WTF::Vector<WebKit::PCM::DebugInfo::Message,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(unsigned int *a1, WTF::StringImpl *a2)
{
  v3 = a1[3];
  if (v3)
  {
    v4 = 16 * v3;
    v5 = (*a1 + 8);
    do
    {
      v6 = *v5;
      *v5 = 0;
      if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v6, a2);
      }

      v5 += 2;
      v4 -= 16;
    }

    while (v4);
  }

  v7 = *a1;
  if (*a1)
  {
    *a1 = 0;
    a1[2] = 0;
    WTF::fastFree(v7, a2);
  }

  return a1;
}

uint64_t std::optional<WebKit::PrivateClickMeasurementManager::AttributionReportTestConfig>::~optional(uint64_t a1, WTF::StringImpl *a2)
{
  if (*(a1 + 80) == 1)
  {
    v4 = *(a1 + 40);
    *(a1 + 40) = 0;
    if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v4, a2);
    }

    v5 = *a1;
    *a1 = 0;
    if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v5, a2);
    }
  }

  return a1;
}

unint64_t WTF::Vector<WebKit::PCM::DebugInfo::Message,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(unsigned int *a1, unint64_t a2, unint64_t a3)
{
  v3 = a3;
  v5 = *a1;
  if (*a1 > a3 || v5 + 16 * a1[3] <= a3)
  {
    v10 = a1[2];
    if (v10 + (v10 >> 1) <= v10 + 1)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = v10 + (v10 >> 1);
    }

    if (v11 <= a2)
    {
      v11 = a2;
    }

    if (v11 <= 0x10)
    {
      v12 = 16;
    }

    else
    {
      v12 = v11;
    }

    WTF::Vector<WebKit::PCM::DebugInfo::Message,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v12);
  }

  else
  {
    v6 = a3 - v5;
    v7 = a1[2];
    if (v7 + (v7 >> 1) <= v7 + 1)
    {
      v8 = v7 + 1;
    }

    else
    {
      v8 = v7 + (v7 >> 1);
    }

    if (v8 <= a2)
    {
      v8 = a2;
    }

    if (v8 <= 0x10)
    {
      v9 = 16;
    }

    else
    {
      v9 = v8;
    }

    WTF::Vector<WebKit::PCM::DebugInfo::Message,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v9);
    return *a1 + v6;
  }

  return v3;
}

unsigned int *WTF::Vector<WebKit::PCM::DebugInfo::Message,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(unsigned int *result, unint64_t a2)
{
  if (result[2] < a2)
  {
    v2 = a2;
    if (a2 >> 28)
    {
      __break(0xC471u);
    }

    else
    {
      v3 = result;
      v4 = *result;
      v5 = result[3];
      result = WTF::fastMalloc((16 * a2));
      v3[2] = v2;
      *v3 = result;
      if (v5)
      {
        v7 = result;
        v8 = v4;
        do
        {
          *v7 = *v8;
          v9 = v8[1];
          v8[1] = 0;
          *(v7 + 1) = v9;
          result = v8[1];
          v8[1] = 0;
          if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            result = WTF::StringImpl::destroy(result, v6);
          }

          v7 += 4;
          v8 += 2;
        }

        while (v8 != (v4 + 16 * v5));
      }

      if (v4)
      {
        if (*v3 == v4)
        {
          *v3 = 0;
          v3[2] = 0;
        }

        return WTF::fastFree(v4, v6);
      }
    }
  }

  return result;
}

char *WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>(WTF::StringBuilder *a1, int8x16_t **a2, int8x16_t **a3)
{
  v9 = *(a1 + 1);
  if ((v9 || (v9 = *a1) != 0) && (*(v9 + 16) & 4) == 0)
  {
    result = WTF::StringBuilder::extendBufferForAppendingWithUpconvert(a1);
    if (result)
    {
      v13 = *a2;
      v12 = a2[1];
      v14 = *a3;
      v15 = a3[1];
      if (v12 < 0x40)
      {
        v16 = result;
      }

      else
      {
        v16 = &result[2 * (v12 & 0x7FFFFFFFFFFFFFC0)];
        v17 = 0uLL;
        v18 = result;
        do
        {
          v38.val[0] = *v13;
          v19 = v13[1];
          v40.val[0] = v13[2];
          v20 = v13[3];
          v13 += 4;
          v21 = v20;
          v40.val[1] = 0uLL;
          v42.val[0] = v19;
          v38.val[1] = 0uLL;
          v22 = v18;
          vst2q_s8(v22, v38);
          v22 += 32;
          v42.val[1] = 0uLL;
          vst2q_s8(v22, v42);
          v23 = v18 + 64;
          vst2q_s8(v23, v40);
          v24 = v18 + 96;
          vst2q_s8(v24, *(&v17 - 1));
          v18 += 128;
        }

        while (v18 != v16);
      }

      while (v16 != &result[2 * v12])
      {
        v25 = v13->u8[0];
        v13 = (v13 + 1);
        *v16 = v25;
        v16 += 2;
      }

      if (v11 < v12)
      {
        do
        {
          __break(1u);
LABEL_31:
          *v3 = v11->i8[0];
LABEL_13:
          ;
        }

        while (v6 < v5);
        if (a3)
        {
          if (a3 == 1)
          {
            v3[v5] = v4->i8[0];
          }

          else
          {

            return memcpy(&v3[v5], v4, a3);
          }
        }
      }

      else
      {
        v26 = &result[2 * v12];
        v27 = &v26[2 * v15];
        if (v15 >= 0x40)
        {
          v28 = &v26[2 * (v15 & 0x7FFFFFFFFFFFFFC0)];
          v29 = 0uLL;
          do
          {
            v39.val[0] = *v14;
            v30 = v14[1];
            v41.val[0] = v14[2];
            v31 = v14[3];
            v14 += 4;
            v32 = v31;
            v41.val[1] = 0uLL;
            v43.val[0] = v30;
            v39.val[1] = 0uLL;
            v33 = v26;
            vst2q_s8(v33, v39);
            v33 += 32;
            v43.val[1] = 0uLL;
            vst2q_s8(v33, v43);
            v34 = v26 + 64;
            vst2q_s8(v34, v41);
            v35 = v26 + 96;
            vst2q_s8(v35, *(&v29 - 1));
            v26 += 128;
          }

          while (v26 != v28);
          v26 = v28;
        }

        while (v26 != v27)
        {
          v36 = v14->u8[0];
          v14 = (v14 + 1);
          *v26 = v36;
          v26 += 2;
        }
      }
    }
  }

  else
  {
    result = MEMORY[0x19EB01170]();
    if (result)
    {
      v3 = result;
      v6 = v11;
      v5 = a2[1];
      v4 = *a3;
      a3 = a3[1];
      if (v5)
      {
        v11 = *a2;
        if (v5 == 1)
        {
          goto LABEL_31;
        }

        result = memcpy(result, v11, a2[1]);
      }

      goto LABEL_13;
    }
  }

  return result;
}