void sub_19DCE78C0(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, IPC::Encoder *a12)
{
  if (a11 == 1 && a9)
  {
    (*(*a9 + 8))(a9);
  }

  if (a12)
  {
    IPC::Encoder::~Encoder(a12, a2);
    bmalloc::api::tzoneFree(v13, v14);
  }

  _Unwind_Resume(exception_object);
}

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebPage::GetTextFragmentRanges,WTF::CompletionHandler<void ()(WTF::Vector<WebKit::EditingRange,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&&)>>(WTF::CompletionHandler<void ()(WTF::Vector<WebKit::EditingRange,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&&)> &&,WTF::ThreadLikeAssertion)::{lambda(WTF::CompletionHandler<void ()(WTF::Vector<WebKit::EditingRange,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&&)>,IPC::Decoder)#1},void,WTF::CompletionHandler<void ()(WTF::Vector<WebKit::EditingRange,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&&)>,IPC::Decoder>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F1103C78;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebPage::GetTextFragmentRanges,WTF::CompletionHandler<void ()(WTF::Vector<WebKit::EditingRange,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&&)>>(WTF::CompletionHandler<void ()(WTF::Vector<WebKit::EditingRange,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&&)> &&,WTF::ThreadLikeAssertion)::{lambda(WTF::CompletionHandler<void ()(WTF::Vector<WebKit::EditingRange,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&&)>,IPC::Decoder)#1},void,WTF::CompletionHandler<void ()(WTF::Vector<WebKit::EditingRange,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&&)>,IPC::Decoder>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1103C78;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

__int128 *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebPage::GetTextFragmentRanges,WTF::CompletionHandler<void ()(WTF::Vector<WebKit::EditingRange,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&&)>>(WTF::CompletionHandler<void ()(WTF::Vector<WebKit::EditingRange,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&&)> &&,WTF::ThreadLikeAssertion)::{lambda(WTF::CompletionHandler<void ()(WTF::Vector<WebKit::EditingRange,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&&)>,IPC::Decoder)#1},void,WTF::CompletionHandler<void ()(WTF::Vector<WebKit::EditingRange,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&&)>,IPC::Decoder>::call(uint64_t a1, uint64_t a2, void *a3)
{
  if (!a3 || (v5 = *a3) == 0)
  {
    v16 = (a1 + 8);

    return IPC::Connection::cancelReply<Messages::WebPage::GetTextFragmentRanges,WTF::CompletionHandler<void ()(WTF::Vector<WebKit::EditingRange,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&&)>>(v16);
  }

  v6 = a3[1];
  v7 = ((a3[2] + 7) & 0xFFFFFFFFFFFFFFF8);
  if (v6 < v7 - v5 || v6 - (v7 - v5) <= 7)
  {
    *a3 = 0;
    a3[1] = 0;
    v32 = a3[3];
    if (v32)
    {
      if (v6)
      {
        (*(*v32 + 16))(v32);
        v5 = *a3;
        v6 = a3[1];
        goto LABEL_46;
      }
    }

    else
    {
      v6 = 0;
    }

    v5 = 0;
LABEL_46:
    *a3 = 0;
    a3[1] = 0;
    v33 = a3[3];
    if (v33 && v6)
    {
      (*(*v33 + 16))(v33, v5);
    }

LABEL_47:
    v34 = *a3;
    v35 = a3[1];
    *a3 = 0;
    a3[1] = 0;
    v36 = a3[3];
    if (v36)
    {
      if (v35)
      {
        (*(*v36 + 16))(v36, v34);
        v37 = *a3;
        v38 = a3[1];
        v39 = a3[3];
        *a3 = 0;
        a3[1] = 0;
        if (v39)
        {
          if (v38)
          {
            (*(*v39 + 16))(v39, v37);
          }
        }
      }
    }

    return IPC::Connection::cancelReply<Messages::WebPage::GetTextFragmentRanges,WTF::CompletionHandler<void ()(WTF::Vector<WebKit::EditingRange,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&&)>>((a1 + 8));
  }

  a3[2] = v7 + 8;
  if (!v7)
  {
    goto LABEL_46;
  }

  v9 = *v7;
  v42 = 0;
  v43 = 0;
  if (v9 >= 0x10000)
  {
    while (1)
    {
      result = IPC::Decoder::decode<WebKit::EditingRange>(a3, &v40);
      if ((v41 & 1) == 0)
      {
        goto LABEL_26;
      }

      v18 = HIDWORD(v43);
      if (HIDWORD(v43) == v43)
      {
        result = WTF::Vector<WTF::UUID,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v42, HIDWORD(v43) + 1, &v40);
        v18 = HIDWORD(v43);
        v19 = v42;
        v20 = *result;
      }

      else
      {
        v19 = v42;
        v20 = v40;
      }

      *(v19 + v18) = v20;
      v21 = ++HIDWORD(v43);
      if (!--v9)
      {
        if (v43 <= v21)
        {
          goto LABEL_17;
        }

        v24 = v42;
        if (v21)
        {
          v25 = v42;
          if (v21 >> 28)
          {
            __break(0xC471u);
            return result;
          }

          v26 = v21;
          v27 = 16 * v21;
          v28 = WTF::fastMalloc((16 * v21));
          LODWORD(v43) = v26;
          v42 = v28;
          v24 = v25;
          if (v28 != v25)
          {
            v29 = v27;
            v30 = v25;
            do
            {
              v31 = *v30;
              v30 = (v30 + 16);
              *v28 = v31;
              v28 = (v28 + 16);
              v29 -= 16;
            }

            while (v29);
          }
        }

        if (v24)
        {
          if (v42 == v24)
          {
            v42 = 0;
            LODWORD(v43) = 0;
          }

          WTF::fastFree(v24, v5);
        }

        goto LABEL_17;
      }
    }
  }

  if (v9)
  {
    LODWORD(v43) = v9;
    v42 = WTF::fastMalloc((16 * v9));
    while (1)
    {
      IPC::Decoder::decode<WebKit::EditingRange>(a3, &v40);
      if ((v41 & 1) == 0)
      {
        break;
      }

      v10 = HIDWORD(v43);
      if (HIDWORD(v43) == v43)
      {
        v11 = WTF::Vector<WTF::UUID,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v42, HIDWORD(v43) + 1, &v40);
        v10 = HIDWORD(v43);
        v12 = v42;
        v13 = *v11;
      }

      else
      {
        v12 = v42;
        v13 = v40;
      }

      *(v12 + v10) = v13;
      ++HIDWORD(v43);
      if (!--v9)
      {
        goto LABEL_17;
      }
    }

LABEL_26:
    v15 = 0;
    v14 = 0;
    goto LABEL_27;
  }

LABEL_17:
  v14 = v42;
  v42 = 0;
  v15 = 1;
  HIDWORD(v43) = 0;
LABEL_27:
  v22 = v42;
  if (v42)
  {
    v42 = 0;
    LODWORD(v43) = 0;
    WTF::fastFree(v22, v5);
  }

  if ((v15 & 1) == 0)
  {
    goto LABEL_47;
  }

  WTF::CompletionHandler<void ()(WTF::Vector<WebKit::EditingRange,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&&)>::operator()((a1 + 8));
  result = v14;
  if (v14)
  {
    return WTF::fastFree(v14, v23);
  }

  return result;
}

void sub_19DCE7DE8(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, int a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, WTF *a16, int a17)
{
  if (a16)
  {
    WTF::fastFree(a16, a2);
  }

  _Unwind_Resume(exception_object);
}

void sub_19DCE7E78(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF *a9, int a10)
{
  if (a9)
  {
    WTF::fastFree(a9, a2);
  }

  _Unwind_Resume(exception_object);
}

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebPage::CreateAppHighlightInSelectedRange,WebKit::WebPageProxy::createAppHighlightInSelectedRange(WebCore::CreateNewGroupForHighlight,WebCore::HighlightRequestOriginatedInApp)::$_0>(WebKit::WebPageProxy::createAppHighlightInSelectedRange(WebCore::CreateNewGroupForHighlight,WebCore::HighlightRequestOriginatedInApp)::$_0 &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(void *a1)
{
  *a1 = &unk_1F1103CA0;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    CFRelease(*(v2 + 8));
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebPage::CreateAppHighlightInSelectedRange,WebKit::WebPageProxy::createAppHighlightInSelectedRange(WebCore::CreateNewGroupForHighlight,WebCore::HighlightRequestOriginatedInApp)::$_0>(WebKit::WebPageProxy::createAppHighlightInSelectedRange(WebCore::CreateNewGroupForHighlight,WebCore::HighlightRequestOriginatedInApp)::$_0 &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F1103CA0;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    CFRelease(*(v3 + 8));
  }

  return WTF::fastFree(this, a2);
}

void WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebPage::CreateAppHighlightInSelectedRange,WebKit::WebPageProxy::createAppHighlightInSelectedRange(WebCore::CreateNewGroupForHighlight,WebCore::HighlightRequestOriginatedInApp)::$_0>(WebKit::WebPageProxy::createAppHighlightInSelectedRange(WebCore::CreateNewGroupForHighlight,WebCore::HighlightRequestOriginatedInApp)::$_0 &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::call(uint64_t a1, uint64_t a2, IPC::Decoder *a3)
{
  if (a3 && *a3)
  {
    IPC::ArgumentCoder<WebCore::AppHighlight,void>::decode(a3, v18);
    if (v21)
    {
LABEL_4:
      v13 = v18[0];
      LOBYTE(v14) = 0;
      v15 = 0;
      if (v19 == 1)
      {
        v14 = v18[1];
        v15 = 1;
      }

      v16 = v20;
      v17 = 1;
      std::apply[abi:sn200100]<WebKit::WebPageProxy::createAppHighlightInSelectedRange(WebCore::CreateNewGroupForHighlight,WebCore::HighlightRequestOriginatedInApp)::$_0,std::tuple<WebCore::AppHighlight>>(*(a1 + 8), &v13);
      if (v17)
      {
        if (v15 == 1)
        {
          v6 = v14;
          v14 = 0;
          if (v6)
          {
            if (atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v6, v5);
            }
          }
        }

        v7 = v13;
        v13 = 0;
        if (v7)
        {
          if (atomic_fetch_add(v7 + 2, 0xFFFFFFFF) == 1)
          {
            atomic_store(1u, v7 + 2);
            (*(*v7 + 8))(v7);
          }
        }
      }

      return;
    }

    v9 = *a3;
    v10 = *(a3 + 1);
    *a3 = 0;
    *(a3 + 1) = 0;
    v11 = *(a3 + 3);
    if (v11)
    {
      if (v10)
      {
        (*(*v11 + 16))(v11, v9);
        if (v21)
        {
          goto LABEL_4;
        }

        v12 = *a3;
        v10 = *(a3 + 1);
        v11 = *(a3 + 3);
        goto LABEL_21;
      }
    }

    else
    {
      v10 = 0;
    }

    v12 = 0;
LABEL_21:
    *a3 = 0;
    *(a3 + 1) = 0;
    if (v11 && v10)
    {
      (*(*v11 + 16))(v11, v12);
    }

    IPC::Connection::cancelReply<Messages::WebPage::CreateAppHighlightInSelectedRange,WebKit::WebPageProxy::createAppHighlightInSelectedRange(WebCore::CreateNewGroupForHighlight,WebCore::HighlightRequestOriginatedInApp)::$_0>((a1 + 8));
    return;
  }

  v8 = (a1 + 8);

  IPC::Connection::cancelReply<Messages::WebPage::CreateAppHighlightInSelectedRange,WebKit::WebPageProxy::createAppHighlightInSelectedRange(WebCore::CreateNewGroupForHighlight,WebCore::HighlightRequestOriginatedInApp)::$_0>(v8);
}

void sub_19DCE811C(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10, char a11, uint64_t a12, char a13, unsigned int *a14, WTF::StringImpl *a15, char a16, uint64_t a17, char a18)
{
  if (a18 == 1)
  {
    if (a16 == 1 && a15 && atomic_fetch_add_explicit(a15, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a15, a2);
    }

    if (a14)
    {
      if (atomic_fetch_add(a14 + 2, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, a14 + 2);
        (*(*a14 + 8))(a14);
      }
    }
  }

  _Unwind_Resume(exception_object);
}

unsigned int *IPC::Connection::cancelReply<Messages::WebPage::CreateAppHighlightInSelectedRange,WebKit::WebPageProxy::createAppHighlightInSelectedRange(WebCore::CreateNewGroupForHighlight,WebCore::HighlightRequestOriginatedInApp)::$_0>(WebCore::FragmentedSharedBuffer *a1)
{
  WebCore::FragmentedSharedBuffer::create(v9, a1);
  v5 = v9[0];
  LOBYTE(v6) = 0;
  v7 = 0;
  v8 = 0;
  std::apply[abi:sn200100]<WebKit::WebPageProxy::createAppHighlightInSelectedRange(WebCore::CreateNewGroupForHighlight,WebCore::HighlightRequestOriginatedInApp)::$_0,std::tuple<WebCore::AppHighlight>>(*a1, &v5);
  if (v7 == 1)
  {
    v3 = v6;
    v6 = 0;
    if (v3)
    {
      if (atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v3, v2);
      }
    }
  }

  result = v5;
  v5 = 0;
  if (result)
  {
    if (atomic_fetch_add(result + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, result + 2);
      return (*(*result + 8))(result);
    }
  }

  return result;
}

void sub_19DCE82C0(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, unsigned int *a9, WTF::StringImpl *a10, char a11)
{
  if (a11 == 1 && a10 && atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a10, a2);
  }

  if (a9)
  {
    if (atomic_fetch_add(a9 + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, a9 + 2);
      (*(*a9 + 8))(a9);
    }
  }

  _Unwind_Resume(exception_object);
}

void std::apply[abi:sn200100]<WebKit::WebPageProxy::createAppHighlightInSelectedRange(WebCore::CreateNewGroupForHighlight,WebCore::HighlightRequestOriginatedInApp)::$_0,std::tuple<WebCore::AppHighlight>>(uint64_t a1, uint64_t a2)
{
  v11 = *MEMORY[0x1E69E9840];
  if (*(*a2 + 56))
  {
    v3 = *(a1 + 56);
    if (v3)
    {
      v4 = *(v3 + 8);
      if (v4)
      {
        (*(*v4 + 1712))(v4);
        (*(*v4 + 1856))(v4, a2);
        v6 = *(*v4 + 1720);

        v6(v4);
      }
    }
  }

  else
  {
    v7 = qword_1ED6416C8;
    if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_FAULT))
    {
      v9 = 136446210;
      v10 = "auto WebKit::WebPageProxy::createAppHighlightInSelectedRange(WebCore::CreateNewGroupForHighlight, WebCore::HighlightRequestOriginatedInApp)::(anonymous class)::operator()(WebCore::AppHighlight &&) const";
      _os_log_fault_impl(&dword_19D52D000, v7, OS_LOG_TYPE_FAULT, "/Library/Caches/com.apple.xbs/Sources/WebKit/Source/WebKit/UIProcess/Cocoa/WebPageProxyCocoa.mm 850: Invalid message dispatched %{public}s", &v9, 0xCu);
    }

    v8 = *(*(a1 + 352) + 88);
    if (!v8 || (*(v8 + 94) = 1, IPC::s_shouldCrashOnMessageCheckFailure == 1))
    {
      __break(0xC471u);
      JUMPOUT(0x19DCE8518);
    }
  }
}

void *_ZN3WTF6Detail15CallableWrapperIZZN6WebKit12WebPageProxy23setUpHighlightsObserverEvEUb_E3__8vJEED1Ev(void *a1, void *a2)
{
  v3 = a1[1];
  *a1 = &unk_1F1103CC8;
  a1[1] = 0;
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    WTF::fastFree(v3, a2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZZN6WebKit12WebPageProxy23setUpHighlightsObserverEvEUb_E3__8vJEED0Ev(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1103CC8;
  *(this + 1) = 0;
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    WTF::fastFree(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZZN6WebKit12WebPageProxy23setUpHighlightsObserverEvEUb_E3__8vJEE4callEv(uint64_t result)
{
  v1 = *(result + 8);
  if (v1)
  {
    v2 = *(v1 + 8);
    if (v2)
    {
      v3 = *(result + 16);
      result = WTF::isMainRunLoop(result);
      if ((result & 1) == 0)
      {
        result = 873;
        __break(0xC471u);
        return result;
      }

      if ((*(v2 + 849) & 1) == 0 && *(v2 + 848) == 1)
      {
        v5 = *(v2 + 336);
        atomic_fetch_add((v5 + 16), 1u);
        v6 = *(v2 + 32);
        v7 = IPC::Encoder::operator new(0x238, v4);
        *v7 = 2716;
        *(v7 + 2) = 0;
        *(v7 + 3) = 0;
        *(v7 + 1) = v6;
        *(v7 + 68) = 0;
        *(v7 + 70) = 0;
        *(v7 + 69) = 0;
        IPC::Encoder::encodeHeader(v7);
        v14 = v7;
        v12[0] = v3;
        IPC::Encoder::operator<<<BOOL>(v7, v12);
        v12[0] = 0;
        v13 = 0;
        WebKit::AuxiliaryProcessProxy::sendMessage(v5, &v14, 0, v12, 1);
        if (v13 == 1)
        {
          v9 = *v12;
          *v12 = 0;
          if (v9)
          {
            (*(*v9 + 8))(v9);
          }
        }

        result = v14;
        v14 = 0;
        if (!result)
        {
          if (!v5)
          {
            return result;
          }

          return WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v5 + 16));
        }

        IPC::Encoder::~Encoder(result, v8);
        result = bmalloc::api::tzoneFree(v10, v11);
        if (v5)
        {
          return WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v5 + 16));
        }
      }
    }
  }

  return result;
}

void sub_19DCE8794(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, IPC::Encoder *a12)
{
  if (a11 == 1 && a9)
  {
    (*(*a9 + 8))(a9);
  }

  if (a12)
  {
    IPC::Encoder::~Encoder(a12, a2);
    bmalloc::api::tzoneFree(v15, v16);
  }

  if (v13)
  {
    WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t WebKit::AuxiliaryProcessProxy::sendWithAsyncReply<Messages::WebPage::RequestActiveNowPlayingSessionInfo,WTF::CompletionHandler<void ()(BOOL,WebCore::NowPlayingInfo &&)>>(uint64_t a1, void *a2, uint64_t *a3, uint64_t a4, char a5, int a6)
{
  v11 = IPC::Encoder::operator new(0x238, a2);
  *v11 = 2671;
  *(v11 + 2) = 0;
  *(v11 + 3) = 0;
  *(v11 + 1) = a4;
  *(v11 + 68) = 0;
  *(v11 + 70) = 0;
  *(v11 + 69) = 0;
  IPC::Encoder::encodeHeader(v11);
  v24 = v11;
  v12 = *a3;
  *a3 = 0;
  v13 = WTF::fastMalloc(0x10);
  *v13 = &unk_1F1103CF0;
  v13[1] = v12;
  if (WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
  {
    result = 141;
    __break(0xC471u);
  }

  else
  {
    IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
    v22[0] = v13;
    v22[1] = IdentifierInternal;
    v23 = 1;
    v16 = WebKit::AuxiliaryProcessProxy::sendMessage(a1, &v24, a5, v22, a6);
    if (v23 == 1)
    {
      v17 = v22[0];
      v22[0] = 0;
      if (v17)
      {
        (*(*v17 + 8))(v17);
      }
    }

    v18 = v24;
    v24 = 0;
    if (v18)
    {
      IPC::Encoder::~Encoder(v18, v15);
      bmalloc::api::tzoneFree(v20, v21);
    }

    if (v16)
    {
      return IdentifierInternal;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void sub_19DCE897C(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, IPC::Encoder *a12)
{
  if (a11 == 1 && a9)
  {
    (*(*a9 + 8))(a9);
  }

  if (a12)
  {
    IPC::Encoder::~Encoder(a12, a2);
    bmalloc::api::tzoneFree(v13, v14);
  }

  _Unwind_Resume(exception_object);
}

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebPage::RequestActiveNowPlayingSessionInfo,WTF::CompletionHandler<void ()(BOOL,WebCore::NowPlayingInfo &&)>>(WTF::CompletionHandler<void ()(BOOL,WebCore::NowPlayingInfo &&)> &&,WTF::ThreadLikeAssertion)::{lambda(WTF::CompletionHandler<void ()(BOOL,WebCore::NowPlayingInfo &&)>,IPC::Decoder)#1},void,WTF::CompletionHandler<void ()(BOOL,WebCore::NowPlayingInfo &&)>,IPC::Decoder>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F1103CF0;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebPage::RequestActiveNowPlayingSessionInfo,WTF::CompletionHandler<void ()(BOOL,WebCore::NowPlayingInfo &&)>>(WTF::CompletionHandler<void ()(BOOL,WebCore::NowPlayingInfo &&)> &&,WTF::ThreadLikeAssertion)::{lambda(WTF::CompletionHandler<void ()(BOOL,WebCore::NowPlayingInfo &&)>,IPC::Decoder)#1},void,WTF::CompletionHandler<void ()(BOOL,WebCore::NowPlayingInfo &&)>,IPC::Decoder>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1103CF0;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

void WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebPage::RequestActiveNowPlayingSessionInfo,WTF::CompletionHandler<void ()(BOOL,WebCore::NowPlayingInfo &&)>>(WTF::CompletionHandler<void ()(BOOL,WebCore::NowPlayingInfo &&)> &&,WTF::ThreadLikeAssertion)::{lambda(WTF::CompletionHandler<void ()(BOOL,WebCore::NowPlayingInfo &&)>,IPC::Decoder)#1},void,WTF::CompletionHandler<void ()(BOOL,WebCore::NowPlayingInfo &&)>,IPC::Decoder>::call(uint64_t a1, WTF::StringImpl *a2, WTF::StringImpl **a3)
{
  if (!a3 || (a2 = *a3) == 0)
  {
    v12 = (a1 + 8);

    IPC::Connection::cancelReply<Messages::WebPage::RequestActiveNowPlayingSessionInfo,WTF::CompletionHandler<void ()(BOOL,WebCore::NowPlayingInfo &&)>>(v12, a2);
    return;
  }

  v5 = a3[1];
  v6 = a3[2];
  if (v5 <= v6 - a2)
  {
    *a3 = 0;
    a3[1] = 0;
    v19 = a3[3];
    if (v19)
    {
      if (v5)
      {
        (*(*v19 + 16))(v19);
        a2 = *a3;
        v5 = a3[1];
        goto LABEL_26;
      }
    }

    else
    {
      v5 = 0;
    }

    a2 = 0;
LABEL_26:
    *a3 = 0;
    a3[1] = 0;
    v20 = a3[3];
    if (v20)
    {
      if (v5)
      {
        (*(*v20 + 16))(v20, a2);
        a2 = *a3;
        v5 = a3[1];
        goto LABEL_29;
      }
    }

    else
    {
      v5 = 0;
    }

    a2 = 0;
LABEL_29:
    *a3 = 0;
    a3[1] = 0;
    v21 = a3[3];
    if (v21 && v5)
    {
      (*(*v21 + 16))(v21, a2);
    }

    goto LABEL_16;
  }

  a3[2] = (v6 + 1);
  if (!v6)
  {
    goto LABEL_26;
  }

  if (*v6 >= 2u)
  {
    goto LABEL_29;
  }

  IPC::ArgumentCoder<WebCore::NowPlayingInfo,void>::decode(a3, &v29);
  if ((v36 & 1) == 0)
  {
    v13 = *a3;
    v14 = a3[1];
    *a3 = 0;
    a3[1] = 0;
    v15 = a3[3];
    if (!v15 || !v14 || ((*(*v15 + 16))(v15, v13), (v36 & 1) == 0))
    {
LABEL_16:
      v16 = *a3;
      v17 = a3[1];
      *a3 = 0;
      a3[1] = 0;
      v18 = a3[3];
      if (v18 && v17)
      {
        (*(*v18 + 16))(v18, v16);
      }

      IPC::Connection::cancelReply<Messages::WebPage::RequestActiveNowPlayingSessionInfo,WTF::CompletionHandler<void ()(BOOL,WebCore::NowPlayingInfo &&)>>((a1 + 8), v16);
      return;
    }
  }

  v8 = v30;
  v22[0] = v29;
  v29 = 0u;
  v30 = 0u;
  v22[1] = v8;
  LOBYTE(v23) = 0;
  v25 = 0;
  if (v33 == 1)
  {
    v9 = v31;
    v31 = 0uLL;
    v23 = v9;
    v10 = v32;
    v32 = 0;
    v24 = v10;
    v25 = 1;
  }

  v26 = v34;
  v27[0] = v35[0];
  *(v27 + 11) = *(v35 + 11);
  v28 = 1;
  WebCore::NowPlayingMetadata::~NowPlayingMetadata(&v29, v7);
  WTF::CompletionHandler<void ()(BOOL,WebCore::NowPlayingInfo &&)>::operator()((a1 + 8));
  WebCore::NowPlayingMetadata::~NowPlayingMetadata(v22, v11);
}

void sub_19DCE8DA0(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, char a42)
{
  if (a42 == 1)
  {
    WebCore::NowPlayingMetadata::~NowPlayingMetadata(&a26, a2);
  }

  _Unwind_Resume(exception_object);
}

void IPC::Connection::cancelReply<Messages::WebPage::RequestActiveNowPlayingSessionInfo,WTF::CompletionHandler<void ()(BOOL,WebCore::NowPlayingInfo &&)>>(uint64_t *a1, WTF::StringImpl *a2)
{
  v11 = 0;
  v10 = 0;
  v12 = 0u;
  *v13 = 0x3FF0000000000000;
  v13[8] = 0;
  *&v13[16] = 0;
  *&v13[23] = 0;
  memset(v9, 0, sizeof(v9));
  memset(v4, 0, sizeof(v4));
  v5 = 0;
  v6 = 0;
  *&v8[11] = *&v13[11];
  v7 = 0u;
  *v8 = *v13;
  WebCore::NowPlayingMetadata::~NowPlayingMetadata(v9, a2);
  WTF::CompletionHandler<void ()(BOOL,WebCore::NowPlayingInfo &&)>::operator()(a1);
  WebCore::NowPlayingMetadata::~NowPlayingMetadata(v4, v3);
}

uint64_t WTF::CompletionHandler<void ()(BOOL,WebCore::NowPlayingInfo &&)>::operator()(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  (*(*v1 + 16))(v1);
  v2 = *(*v1 + 8);

  return v2(v1);
}

uint64_t WebKit::AuxiliaryProcessProxy::sendWithAsyncReply<Messages::WebPage::LastNavigationWasAppInitiated,WTF::CompletionHandler<void ()(BOOL)>>(uint64_t a1, void *a2, uint64_t *a3, uint64_t a4, char a5, int a6)
{
  v11 = IPC::Encoder::operator new(0x238, a2);
  *v11 = 2616;
  *(v11 + 2) = 0;
  *(v11 + 3) = 0;
  *(v11 + 1) = a4;
  *(v11 + 68) = 0;
  *(v11 + 70) = 0;
  *(v11 + 69) = 0;
  IPC::Encoder::encodeHeader(v11);
  v24 = v11;
  v12 = *a3;
  *a3 = 0;
  v13 = WTF::fastMalloc(0x10);
  *v13 = &unk_1F1103D18;
  v13[1] = v12;
  if (WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
  {
    result = 141;
    __break(0xC471u);
  }

  else
  {
    IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
    v22[0] = v13;
    v22[1] = IdentifierInternal;
    v23 = 1;
    v16 = WebKit::AuxiliaryProcessProxy::sendMessage(a1, &v24, a5, v22, a6);
    if (v23 == 1)
    {
      v17 = v22[0];
      v22[0] = 0;
      if (v17)
      {
        (*(*v17 + 8))(v17);
      }
    }

    v18 = v24;
    v24 = 0;
    if (v18)
    {
      IPC::Encoder::~Encoder(v18, v15);
      bmalloc::api::tzoneFree(v20, v21);
    }

    if (v16)
    {
      return IdentifierInternal;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void sub_19DCE90B4(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, IPC::Encoder *a12)
{
  if (a11 == 1 && a9)
  {
    (*(*a9 + 8))(a9);
  }

  if (a12)
  {
    IPC::Encoder::~Encoder(a12, a2);
    bmalloc::api::tzoneFree(v13, v14);
  }

  _Unwind_Resume(exception_object);
}

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebPage::LastNavigationWasAppInitiated,WTF::CompletionHandler<void ()(BOOL)>>(WTF::CompletionHandler<void ()(BOOL)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F1103D18;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebPage::LastNavigationWasAppInitiated,WTF::CompletionHandler<void ()(BOOL)>>(WTF::CompletionHandler<void ()(BOOL)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1103D18;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebPage::LastNavigationWasAppInitiated,WTF::CompletionHandler<void ()(BOOL)>>(WTF::CompletionHandler<void ()(BOOL)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::call(uint64_t a1, uint64_t a2, IPC::Decoder *a3)
{
  if (a3 && *a3)
  {
    v4 = IPC::Decoder::decode<std::tuple<BOOL>>(a3);
    v5 = *&v4 & ((v4 & 0x100) >> 8);
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return WTF::CompletionHandler<void ()(BOOL)>::operator()((a1 + 8), v5);
}

uint64_t WebKit::AuxiliaryProcessProxy::send<Messages::WebPage::InsertMultiRepresentationHEIC>(uint64_t a1, uint64_t **a2, uint64_t a3, char a4)
{
  v8 = IPC::Encoder::operator new(0x238, a2);
  *v8 = 2609;
  *(v8 + 2) = 0;
  *(v8 + 3) = 0;
  *(v8 + 1) = a3;
  *(v8 + 68) = 0;
  *(v8 + 70) = 0;
  *(v8 + 69) = 0;
  IPC::Encoder::encodeHeader(v8);
  v18 = v8;
  IPC::ArgumentCoder<std::span<unsigned char const,18446744073709551615ul>,void>::encode<IPC::Encoder>(v8, **a2, (*a2)[1]);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v8, a2[1]);
  LOBYTE(v16) = 0;
  v17 = 0;
  v10 = WebKit::AuxiliaryProcessProxy::sendMessage(a1, &v18, a4, &v16, 1);
  if (v17 == 1)
  {
    v11 = v16;
    v16 = 0;
    if (v11)
    {
      (*(*v11 + 8))(v11);
    }
  }

  v12 = v18;
  v18 = 0;
  if (v12)
  {
    IPC::Encoder::~Encoder(v12, v9);
    bmalloc::api::tzoneFree(v14, v15);
  }

  return v10;
}

void sub_19DCE93BC(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, IPC::Encoder *a12)
{
  if (a11 == 1 && a9)
  {
    (*(*a9 + 8))(a9);
  }

  if (a12)
  {
    IPC::Encoder::~Encoder(a12, a2);
    bmalloc::api::tzoneFree(v13, v14);
  }

  _Unwind_Resume(exception_object);
}

uint64_t WebKit::AuxiliaryProcessProxy::send<Messages::WebPage::ReplaceImageForRemoveBackground>(uint64_t a1, void *a2, uint64_t a3, char a4)
{
  v8 = IPC::Encoder::operator new(0x238, a2);
  *v8 = 2667;
  *(v8 + 2) = 0;
  *(v8 + 3) = 0;
  *(v8 + 1) = a3;
  *(v8 + 68) = 0;
  *(v8 + 70) = 0;
  *(v8 + 69) = 0;
  IPC::Encoder::encodeHeader(v8);
  v18 = v8;
  IPC::ArgumentCoder<WebCore::ElementContext,void>::encode(v8, *a2);
  IPC::VectorArgumentCoder<false,WTF::String,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(v8, a2[1]);
  IPC::ArgumentCoder<std::span<unsigned char const,18446744073709551615ul>,void>::encode<IPC::Encoder>(v8, *a2[2], *(a2[2] + 8));
  LOBYTE(v16) = 0;
  v17 = 0;
  v10 = WebKit::AuxiliaryProcessProxy::sendMessage(a1, &v18, a4, &v16, 1);
  if (v17 == 1)
  {
    v11 = v16;
    v16 = 0;
    if (v11)
    {
      (*(*v11 + 8))(v11);
    }
  }

  v12 = v18;
  v18 = 0;
  if (v12)
  {
    IPC::Encoder::~Encoder(v12, v9);
    bmalloc::api::tzoneFree(v14, v15);
  }

  return v10;
}

void sub_19DCE9540(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, IPC::Encoder *a12)
{
  if (a11 == 1 && a9)
  {
    (*(*a9 + 8))(a9);
  }

  if (a12)
  {
    IPC::Encoder::~Encoder(a12, a2);
    bmalloc::api::tzoneFree(v13, v14);
  }

  _Unwind_Resume(exception_object);
}

void WTF::HashTable<WTF::RefPtr<WebKit::WebPageProxy const,WTF::RawPtrTraits<WebKit::WebPageProxy const>,WTF::DefaultRefDerefTraits<WebKit::WebPageProxy const>>,WTF::RefPtr<WebKit::WebPageProxy const,WTF::RawPtrTraits<WebKit::WebPageProxy const>,WTF::DefaultRefDerefTraits<WebKit::WebPageProxy const>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::RefPtr<WebKit::WebPageProxy const,WTF::RawPtrTraits<WebKit::WebPageProxy const>,WTF::DefaultRefDerefTraits<WebKit::WebPageProxy const>>>,WTF::HashTraits<WTF::RefPtr<WebKit::WebPageProxy const,WTF::RawPtrTraits<WebKit::WebPageProxy const>,WTF::DefaultRefDerefTraits<WebKit::WebPageProxy const>>>,WTF::HashTraits<WTF::RefPtr<WebKit::WebPageProxy const,WTF::RawPtrTraits<WebKit::WebPageProxy const>,WTF::DefaultRefDerefTraits<WebKit::WebPageProxy const>>>,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *a3;
  if (*a3 == -1 || !v3)
  {
    __break(0xC471u);
    JUMPOUT(0x19DCE975CLL);
  }

  v7 = *a2;
  if (!*a2)
  {
    WTF::HashTable<WTF::RefPtr<WebKit::WebPageProxy const,WTF::RawPtrTraits<WebKit::WebPageProxy const>,WTF::DefaultRefDerefTraits<WebKit::WebPageProxy const>>,WTF::RefPtr<WebKit::WebPageProxy const,WTF::RawPtrTraits<WebKit::WebPageProxy const>,WTF::DefaultRefDerefTraits<WebKit::WebPageProxy const>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::RefPtr<WebKit::WebPageProxy const,WTF::RawPtrTraits<WebKit::WebPageProxy const>,WTF::DefaultRefDerefTraits<WebKit::WebPageProxy const>>>,WTF::HashTraits<WTF::RefPtr<WebKit::WebPageProxy const,WTF::RawPtrTraits<WebKit::WebPageProxy const>,WTF::DefaultRefDerefTraits<WebKit::WebPageProxy const>>>,WTF::HashTraits<WTF::RefPtr<WebKit::WebPageProxy const,WTF::RawPtrTraits<WebKit::WebPageProxy const>,WTF::DefaultRefDerefTraits<WebKit::WebPageProxy const>>>,WTF::FastMalloc>::expand(a2, 0);
    v7 = *a2;
    v3 = *a3;
  }

  v8 = *(v7 - 8);
  v9 = (v3 + ~(v3 << 32)) ^ ((v3 + ~(v3 << 32)) >> 22);
  v10 = 9 * ((v9 + ~(v9 << 13)) ^ ((v9 + ~(v9 << 13)) >> 8));
  v11 = (v10 ^ (v10 >> 15)) + ~((v10 ^ (v10 >> 15)) << 27);
  v12 = v8 & ((v11 >> 31) ^ v11);
  v13 = (v7 + 8 * v12);
  v14 = *v13;
  if (*v13)
  {
    v15 = 0;
    v16 = 1;
    do
    {
      if (v14 == v3)
      {
        v20 = 0;
        v21 = v7 + 8 * *(v7 - 4);
        goto LABEL_25;
      }

      if (v14 == -1)
      {
        v15 = v13;
      }

      v12 = (v12 + v16) & v8;
      v13 = (v7 + 8 * v12);
      v14 = *v13;
      ++v16;
    }

    while (*v13);
    if (v15)
    {
      *v15 = 0;
      --*(*a2 - 16);
      v3 = *a3;
      v13 = v15;
    }
  }

  *a3 = 0;
  v17 = *v13;
  *v13 = v3;
  if (v17)
  {
    CFRelease(*(v17 + 8));
  }

  v18 = *a2;
  if (*a2)
  {
    v19 = *(v18 - 12) + 1;
  }

  else
  {
    v19 = 1;
  }

  *(v18 - 12) = v19;
  v22 = (*(v18 - 16) + v19);
  v23 = *(v18 - 4);
  if (v23 > 0x400)
  {
    if (v23 <= 2 * v22)
    {
LABEL_21:
      v13 = WTF::HashTable<WTF::RefPtr<WebKit::WebPageProxy const,WTF::RawPtrTraits<WebKit::WebPageProxy const>,WTF::DefaultRefDerefTraits<WebKit::WebPageProxy const>>,WTF::RefPtr<WebKit::WebPageProxy const,WTF::RawPtrTraits<WebKit::WebPageProxy const>,WTF::DefaultRefDerefTraits<WebKit::WebPageProxy const>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::RefPtr<WebKit::WebPageProxy const,WTF::RawPtrTraits<WebKit::WebPageProxy const>,WTF::DefaultRefDerefTraits<WebKit::WebPageProxy const>>>,WTF::HashTraits<WTF::RefPtr<WebKit::WebPageProxy const,WTF::RawPtrTraits<WebKit::WebPageProxy const>,WTF::DefaultRefDerefTraits<WebKit::WebPageProxy const>>>,WTF::HashTraits<WTF::RefPtr<WebKit::WebPageProxy const,WTF::RawPtrTraits<WebKit::WebPageProxy const>,WTF::DefaultRefDerefTraits<WebKit::WebPageProxy const>>>,WTF::FastMalloc>::expand(a2, v13);
      v18 = *a2;
      if (*a2)
      {
        v23 = *(v18 - 4);
      }

      else
      {
        v23 = 0;
      }
    }
  }

  else if (3 * v23 <= 4 * v22)
  {
    goto LABEL_21;
  }

  v21 = v18 + 8 * v23;
  v20 = 1;
LABEL_25:
  *a1 = v13;
  *(a1 + 8) = v21;
  *(a1 + 16) = v20;
}

void *WTF::HashTable<WTF::RefPtr<WebKit::WebPageProxy const,WTF::RawPtrTraits<WebKit::WebPageProxy const>,WTF::DefaultRefDerefTraits<WebKit::WebPageProxy const>>,WTF::RefPtr<WebKit::WebPageProxy const,WTF::RawPtrTraits<WebKit::WebPageProxy const>,WTF::DefaultRefDerefTraits<WebKit::WebPageProxy const>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::RefPtr<WebKit::WebPageProxy const,WTF::RawPtrTraits<WebKit::WebPageProxy const>,WTF::DefaultRefDerefTraits<WebKit::WebPageProxy const>>>,WTF::HashTraits<WTF::RefPtr<WebKit::WebPageProxy const,WTF::RawPtrTraits<WebKit::WebPageProxy const>,WTF::DefaultRefDerefTraits<WebKit::WebPageProxy const>>>,WTF::HashTraits<WTF::RefPtr<WebKit::WebPageProxy const,WTF::RawPtrTraits<WebKit::WebPageProxy const>,WTF::DefaultRefDerefTraits<WebKit::WebPageProxy const>>>,WTF::FastMalloc>::expand(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  if (*a1)
  {
    v5 = *(v4 - 4);
    v6 = *(v4 - 12);
    if (v5)
    {
      v7 = v5 << (6 * v6 >= (2 * v5));
      goto LABEL_6;
    }
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  v7 = 8;
LABEL_6:
  v8 = WTF::fastZeroedMalloc((8 * v7 + 16));
  *a1 = (v8 + 4);
  v8[2] = v7 - 1;
  v8[3] = v7;
  *v8 = 0;
  v8[1] = v6;
  if (v5)
  {
    v10 = 0;
    v11 = 0;
    do
    {
      v12 = (v4 + 8 * v10);
      v13 = *v12;
      if (*v12 != -1)
      {
        if (v13)
        {
          v14 = *a1;
          if (*a1)
          {
            v15 = *(v14 - 8);
          }

          else
          {
            v15 = 0;
          }

          v16 = (~(v13 << 32) + v13) ^ ((~(v13 << 32) + v13) >> 22);
          v17 = 9 * ((v16 + ~(v16 << 13)) ^ ((v16 + ~(v16 << 13)) >> 8));
          v18 = (v17 ^ (v17 >> 15)) + ~((v17 ^ (v17 >> 15)) << 27);
          v19 = v15 & ((v18 >> 31) ^ v18);
          v20 = 1;
          do
          {
            v21 = v19;
            v22 = *(v14 + 8 * v19);
            v19 = (v19 + v20++) & v15;
          }

          while (v22);
          v23 = (v14 + 8 * v21);
          *v12 = 0;
          *v23 = v13;
          v24 = *v12;
          *v12 = 0;
          if (v24)
          {
            CFRelease(*(v24 + 8));
          }

          if (v12 == a2)
          {
            v11 = v23;
          }
        }

        else
        {
          *v12 = 0;
        }
      }

      ++v10;
    }

    while (v10 != v5);
  }

  else
  {
    v11 = 0;
    result = 0;
    if (!v4)
    {
      return result;
    }
  }

  WTF::fastFree((v4 - 16), v9);
  return v11;
}

IPC::Encoder *WebKit::AuxiliaryProcessProxy::send<Messages::WebPage::SetMediaEnvironment>(uint64_t a1, uint64_t **a2, uint64_t a3)
{
  v6 = IPC::Encoder::operator new(0x238, a2);
  *v6 = 2754;
  *(v6 + 2) = 0;
  *(v6 + 3) = 0;
  *(v6 + 1) = a3;
  *(v6 + 68) = 0;
  *(v6 + 70) = 0;
  *(v6 + 69) = 0;
  IPC::Encoder::encodeHeader(v6);
  v14 = v6;
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v6, *a2);
  LOBYTE(v12) = 0;
  v13 = 0;
  WebKit::AuxiliaryProcessProxy::sendMessage(a1, &v14, 0, &v12, 1);
  if (v13 == 1)
  {
    v8 = v12;
    v12 = 0;
    if (v8)
    {
      (*(*v8 + 8))(v8);
    }
  }

  result = v14;
  v14 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v7);
    return bmalloc::api::tzoneFree(v10, v11);
  }

  return result;
}

void sub_19DCE99F0(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, IPC::Encoder *a12)
{
  if (a11 == 1 && a9)
  {
    (*(*a9 + 8))(a9);
  }

  if (a12)
  {
    IPC::Encoder::~Encoder(a12, a2);
    bmalloc::api::tzoneFree(v13, v14);
  }

  _Unwind_Resume(exception_object);
}

uint64_t WebKit::AuxiliaryProcessProxy::sendWithAsyncReply<Messages::WebPage::WillBeginWritingToolsSession,WTF::CompletionHandler<void ()(WTF::Vector<WebCore::WritingTools::Context,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&)>>(uint64_t a1, void *a2, uint64_t *a3, uint64_t a4, char a5, int a6)
{
  v12 = IPC::Encoder::operator new(0x238, a2);
  *v12 = 2861;
  *(v12 + 2) = 0;
  *(v12 + 3) = 0;
  *(v12 + 1) = a4;
  *(v12 + 68) = 0;
  *(v12 + 70) = 0;
  *(v12 + 69) = 0;
  IPC::Encoder::encodeHeader(v12);
  v26 = v12;
  v13 = *a2;
  if (*(*a2 + 32))
  {
    v27 = 1;
    IPC::Encoder::operator<<<BOOL>(v12, &v27);
    if ((*(v13 + 32) & 1) == 0)
    {
      std::__throw_bad_optional_access[abi:sn200100]();
      goto LABEL_15;
    }

    IPC::ArgumentCoder<WebCore::WritingTools::Session,void>::encode(v12, v13);
  }

  else
  {
    v27 = 0;
    IPC::Encoder::operator<<<BOOL>(v12, &v27);
  }

  v14 = *a3;
  *a3 = 0;
  v15 = WTF::fastMalloc(0x10);
  *v15 = &unk_1F1103D40;
  v15[1] = v14;
  if (WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
  {
LABEL_15:
    result = 141;
    __break(0xC471u);
    return result;
  }

  IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
  v24[0] = v15;
  v24[1] = IdentifierInternal;
  v25 = 1;
  v18 = WebKit::AuxiliaryProcessProxy::sendMessage(a1, &v26, a5, v24, a6);
  if (v25 == 1)
  {
    v19 = v24[0];
    v24[0] = 0;
    if (v19)
    {
      (*(*v19 + 8))(v19);
    }
  }

  v20 = v26;
  v26 = 0;
  if (v20)
  {
    IPC::Encoder::~Encoder(v20, v17);
    bmalloc::api::tzoneFree(v22, v23);
  }

  if (v18)
  {
    return IdentifierInternal;
  }

  else
  {
    return 0;
  }
}

void sub_19DCE9C1C(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, IPC::Encoder *a13)
{
  if (a12 == 1 && a10)
  {
    (*(*a10 + 8))(a10);
  }

  if (a13)
  {
    IPC::Encoder::~Encoder(a13, a2);
    bmalloc::api::tzoneFree(v14, v15);
  }

  _Unwind_Resume(exception_object);
}

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebPage::WillBeginWritingToolsSession,WTF::CompletionHandler<void ()(WTF::Vector<WebCore::WritingTools::Context,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&)>>(WTF::CompletionHandler<void ()(WTF::Vector<WebCore::WritingTools::Context,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F1103D40;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebPage::WillBeginWritingToolsSession,WTF::CompletionHandler<void ()(WTF::Vector<WebCore::WritingTools::Context,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&)>>(WTF::CompletionHandler<void ()(WTF::Vector<WebCore::WritingTools::Context,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1103D40;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebPage::WillBeginWritingToolsSession,WTF::CompletionHandler<void ()(WTF::Vector<WebCore::WritingTools::Context,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&)>>(WTF::CompletionHandler<void ()(WTF::Vector<WebCore::WritingTools::Context,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::call(uint64_t a1, void *a2, IPC::Decoder *a3, __n128 a4, __n128 a5)
{
  if (a3 && *a3)
  {
    IPC::VectorArgumentCoder<false,WebCore::WritingTools::Context,0ul,WTF::CrashOnOverflow,16ul>::decode<IPC::Decoder>(a3, &v20, a5);
    if (v22)
    {
      goto LABEL_4;
    }

    v13 = *a3;
    v14 = *(a3 + 1);
    *a3 = 0;
    *(a3 + 1) = 0;
    v15 = *(a3 + 3);
    if (v15 && v14)
    {
      (*(*v15 + 16))(v15, v13);
      if (v22)
      {
LABEL_4:
        v18[0] = v20;
        v9 = v21;
        v20 = 0;
        v21 = 0;
        v18[1] = v9;
        WTF::Vector<WebCore::WritingTools::Context,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v20, v7);
        v19 = 1;
        WTF::CompletionHandler<void ()(WTF::Vector<WebCore::WritingTools::Context,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&)>::operator()((a1 + 8));
        return WTF::Vector<WebCore::WritingTools::Context,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v18, v10);
      }

      v13 = *a3;
      v16 = *(a3 + 1);
      v17 = *(a3 + 3);
      *a3 = 0;
      *(a3 + 1) = 0;
      if (v17 && v16)
      {
        (*(*v17 + 16))(v17, v13);
      }
    }

    else
    {
      *a3 = 0;
      *(a3 + 1) = 0;
    }

    return IPC::Connection::cancelReply<Messages::WebPage::WillBeginWritingToolsSession,WTF::CompletionHandler<void ()(WTF::Vector<WebCore::WritingTools::Context,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&)>>((a1 + 8), v13, v8);
  }

  v12 = (a1 + 8);

  return IPC::Connection::cancelReply<Messages::WebPage::WillBeginWritingToolsSession,WTF::CompletionHandler<void ()(WTF::Vector<WebCore::WritingTools::Context,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&)>>(v12, a2, a4);
}

void sub_19DCE9F00(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, char a17)
{
  if (a17 == 1)
  {
    WTF::Vector<WebCore::WritingTools::Context,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&a13, a2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t IPC::Connection::cancelReply<Messages::WebPage::WillBeginWritingToolsSession,WTF::CompletionHandler<void ()(WTF::Vector<WebCore::WritingTools::Context,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&)>>(uint64_t *a1, void *a2, __n128 a3)
{
  a3.n128_u64[0] = 0;
  v6 = a3;
  v7 = a3;
  WTF::Vector<WebCore::WritingTools::Context,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v7, a2);
  WTF::CompletionHandler<void ()(WTF::Vector<WebCore::WritingTools::Context,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&)>::operator()(a1);
  return WTF::Vector<WebCore::WritingTools::Context,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v6, v4);
}

uint64_t WTF::CompletionHandler<void ()(WTF::Vector<WebCore::WritingTools::Context,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&)>::operator()(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  (*(*v1 + 16))(v1);
  v2 = *(*v1 + 8);

  return v2(v1);
}

uint64_t WebKit::AuxiliaryProcessProxy::send<Messages::WebPage::DidBeginWritingToolsSession>(uint64_t a1, uint64_t *a2, uint64_t a3, char a4)
{
  v8 = IPC::Encoder::operator new(0x238, a2);
  *v8 = 2494;
  *(v8 + 2) = 0;
  *(v8 + 3) = 0;
  *(v8 + 1) = a3;
  *(v8 + 68) = 0;
  *(v8 + 70) = 0;
  *(v8 + 69) = 0;
  IPC::Encoder::encodeHeader(v8);
  v18 = v8;
  IPC::ArgumentCoder<WebCore::WritingTools::Session,void>::encode(v8, *a2);
  IPC::VectorArgumentCoder<false,WebCore::WritingTools::Context,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebCore::WritingTools::Context,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(v8, a2[1]);
  LOBYTE(v16) = 0;
  v17 = 0;
  v10 = WebKit::AuxiliaryProcessProxy::sendMessage(a1, &v18, a4, &v16, 1);
  if (v17 == 1)
  {
    v11 = v16;
    v16 = 0;
    if (v11)
    {
      (*(*v11 + 8))(v11);
    }
  }

  v12 = v18;
  v18 = 0;
  if (v12)
  {
    IPC::Encoder::~Encoder(v12, v9);
    bmalloc::api::tzoneFree(v14, v15);
  }

  return v10;
}

void sub_19DCEA15C(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, IPC::Encoder *a12)
{
  if (a11 == 1 && a9)
  {
    (*(*a9 + 8))(a9);
  }

  if (a12)
  {
    IPC::Encoder::~Encoder(a12, a2);
    bmalloc::api::tzoneFree(v13, v14);
  }

  _Unwind_Resume(exception_object);
}

uint64_t WebKit::AuxiliaryProcessProxy::sendWithAsyncReply<Messages::WebPage::ProofreadingSessionDidReceiveSuggestions,WTF::CompletionHandler<void ()(void)>>(uint64_t a1, char *a2, uint64_t *a3, uint64_t a4, char a5, int a6)
{
  v12 = IPC::Encoder::operator new(0x238, a2);
  *v12 = 2653;
  *(v12 + 2) = 0;
  *(v12 + 3) = 0;
  *(v12 + 1) = a4;
  *(v12 + 68) = 0;
  *(v12 + 70) = 0;
  *(v12 + 69) = 0;
  IPC::Encoder::encodeHeader(v12);
  v30 = v12;
  IPC::ArgumentCoder<WebCore::WritingTools::Session,void>::encode(v12, *a2);
  v13 = *(a2 + 1);
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v12, *(v13 + 12));
  v14 = *(v13 + 12);
  if (v14)
  {
    v15 = *v13;
    v16 = 48 * v14;
    do
    {
      IPC::ArgumentCoder<WebCore::WritingTools::TextSuggestion,void>::encode(v12, v15);
      v15 += 48;
      v16 -= 48;
    }

    while (v16);
  }

  v17 = *(a2 + 2);
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v12, *v17);
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v12, v17[1]);
  IPC::ArgumentCoder<WebCore::WritingTools::Context,void>::encode(v12, *(a2 + 3));
  IPC::Encoder::operator<<<BOOL &>(v12, a2 + 32);
  v18 = *a3;
  *a3 = 0;
  v19 = WTF::fastMalloc(0x10);
  *v19 = &unk_1F1103D68;
  v19[1] = v18;
  if (WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
  {
    result = 141;
    __break(0xC471u);
  }

  else
  {
    IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
    v28[0] = v19;
    v28[1] = IdentifierInternal;
    v29 = 1;
    v22 = WebKit::AuxiliaryProcessProxy::sendMessage(a1, &v30, a5, v28, a6);
    if (v29 == 1)
    {
      v23 = v28[0];
      v28[0] = 0;
      if (v23)
      {
        (*(*v23 + 8))(v23);
      }
    }

    v24 = v30;
    v30 = 0;
    if (v24)
    {
      IPC::Encoder::~Encoder(v24, v21);
      bmalloc::api::tzoneFree(v26, v27);
    }

    if (v22)
    {
      return IdentifierInternal;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void sub_19DCEA3BC(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, IPC::Encoder *a12)
{
  if (a11 == 1 && a9)
  {
    (*(*a9 + 8))(a9);
  }

  if (a12)
  {
    IPC::Encoder::~Encoder(a12, a2);
    bmalloc::api::tzoneFree(v13, v14);
  }

  _Unwind_Resume(exception_object);
}

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebPage::ProofreadingSessionDidReceiveSuggestions,WTF::CompletionHandler<void ()(void)>>(WTF::CompletionHandler<void ()(void)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F1103D68;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebPage::ProofreadingSessionDidReceiveSuggestions,WTF::CompletionHandler<void ()(void)>>(WTF::CompletionHandler<void ()(void)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1103D68;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WebKit::AuxiliaryProcessProxy::send<Messages::WebPage::ProofreadingSessionDidUpdateStateForSuggestion>(uint64_t a1, char *a2, uint64_t a3, char a4)
{
  v8 = IPC::Encoder::operator new(0x238, a2);
  *v8 = 2654;
  *(v8 + 2) = 0;
  *(v8 + 3) = 0;
  *(v8 + 1) = a3;
  *(v8 + 68) = 0;
  *(v8 + 70) = 0;
  *(v8 + 69) = 0;
  IPC::Encoder::encodeHeader(v8);
  v18 = v8;
  IPC::ArgumentCoder<WebCore::WritingTools::Session,void>::encode(v8, *a2);
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(v8, a2[8]);
  IPC::ArgumentCoder<WebCore::WritingTools::TextSuggestion,void>::encode(v8, *(a2 + 2));
  IPC::ArgumentCoder<WebCore::WritingTools::Context,void>::encode(v8, *(a2 + 3));
  LOBYTE(v16) = 0;
  v17 = 0;
  v10 = WebKit::AuxiliaryProcessProxy::sendMessage(a1, &v18, a4, &v16, 1);
  if (v17 == 1)
  {
    v11 = v16;
    v16 = 0;
    if (v11)
    {
      (*(*v11 + 8))(v11);
    }
  }

  v12 = v18;
  v18 = 0;
  if (v12)
  {
    IPC::Encoder::~Encoder(v12, v9);
    bmalloc::api::tzoneFree(v14, v15);
  }

  return v10;
}

void sub_19DCEA69C(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, IPC::Encoder *a12)
{
  if (a11 == 1 && a9)
  {
    (*(*a9 + 8))(a9);
  }

  if (a12)
  {
    IPC::Encoder::~Encoder(a12, a2);
    bmalloc::api::tzoneFree(v13, v14);
  }

  _Unwind_Resume(exception_object);
}

uint64_t WebKit::AuxiliaryProcessProxy::sendWithAsyncReply<Messages::WebPage::WillEndWritingToolsSession,WTF::CompletionHandler<void ()(void)>>(uint64_t a1, char *a2, uint64_t *a3, uint64_t a4, char a5, int a6)
{
  v12 = IPC::Encoder::operator new(0x238, a2);
  *v12 = 2862;
  *(v12 + 2) = 0;
  *(v12 + 3) = 0;
  *(v12 + 1) = a4;
  *(v12 + 68) = 0;
  *(v12 + 70) = 0;
  *(v12 + 69) = 0;
  IPC::Encoder::encodeHeader(v12);
  v25 = v12;
  IPC::ArgumentCoder<WebCore::WritingTools::Session,void>::encode(v12, *a2);
  IPC::Encoder::operator<<<BOOL &>(v12, a2 + 8);
  v13 = *a3;
  *a3 = 0;
  v14 = WTF::fastMalloc(0x10);
  *v14 = &unk_1F1103D90;
  v14[1] = v13;
  if (WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
  {
    result = 141;
    __break(0xC471u);
  }

  else
  {
    IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
    v23[0] = v14;
    v23[1] = IdentifierInternal;
    v24 = 1;
    v17 = WebKit::AuxiliaryProcessProxy::sendMessage(a1, &v25, a5, v23, a6);
    if (v24 == 1)
    {
      v18 = v23[0];
      v23[0] = 0;
      if (v18)
      {
        (*(*v18 + 8))(v18);
      }
    }

    v19 = v25;
    v25 = 0;
    if (v19)
    {
      IPC::Encoder::~Encoder(v19, v16);
      bmalloc::api::tzoneFree(v21, v22);
    }

    if (v17)
    {
      return IdentifierInternal;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void sub_19DCEA898(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, IPC::Encoder *a12)
{
  if (a11 == 1 && a9)
  {
    (*(*a9 + 8))(a9);
  }

  if (a12)
  {
    IPC::Encoder::~Encoder(a12, a2);
    bmalloc::api::tzoneFree(v13, v14);
  }

  _Unwind_Resume(exception_object);
}

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebPage::WillEndWritingToolsSession,WTF::CompletionHandler<void ()(void)>>(WTF::CompletionHandler<void ()(void)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F1103D90;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebPage::WillEndWritingToolsSession,WTF::CompletionHandler<void ()(void)>>(WTF::CompletionHandler<void ()(void)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1103D90;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WebKit::AuxiliaryProcessProxy::send<Messages::WebPage::DidEndWritingToolsSession>(uint64_t a1, char *a2, uint64_t a3, char a4)
{
  v8 = IPC::Encoder::operator new(0x238, a2);
  *v8 = 2508;
  *(v8 + 2) = 0;
  *(v8 + 3) = 0;
  *(v8 + 1) = a3;
  *(v8 + 68) = 0;
  *(v8 + 70) = 0;
  *(v8 + 69) = 0;
  IPC::Encoder::encodeHeader(v8);
  v18 = v8;
  IPC::ArgumentCoder<WebCore::WritingTools::Session,void>::encode(v8, *a2);
  IPC::Encoder::operator<<<BOOL &>(v8, a2 + 8);
  LOBYTE(v16) = 0;
  v17 = 0;
  v10 = WebKit::AuxiliaryProcessProxy::sendMessage(a1, &v18, a4, &v16, 1);
  if (v17 == 1)
  {
    v11 = v16;
    v16 = 0;
    if (v11)
    {
      (*(*v11 + 8))(v11);
    }
  }

  v12 = v18;
  v18 = 0;
  if (v12)
  {
    IPC::Encoder::~Encoder(v12, v9);
    bmalloc::api::tzoneFree(v14, v15);
  }

  return v10;
}

void sub_19DCEAB5C(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, IPC::Encoder *a12)
{
  if (a11 == 1 && a9)
  {
    (*(*a9 + 8))(a9);
  }

  if (a12)
  {
    IPC::Encoder::~Encoder(a12, a2);
    bmalloc::api::tzoneFree(v13, v14);
  }

  _Unwind_Resume(exception_object);
}

uint64_t WebKit::AuxiliaryProcessProxy::sendWithAsyncReply<Messages::WebPage::CompositionSessionDidReceiveTextWithReplacementRange,WTF::CompletionHandler<void ()(void)>>(uint64_t a1, char *a2, uint64_t *a3, uint64_t a4, char a5, int a6)
{
  v12 = IPC::Encoder::operator new(0x238, a2);
  *v12 = 2470;
  *(v12 + 2) = 0;
  *(v12 + 3) = 0;
  *(v12 + 1) = a4;
  *(v12 + 68) = 0;
  *(v12 + 70) = 0;
  *(v12 + 69) = 0;
  IPC::Encoder::encodeHeader(v12);
  v26 = v12;
  IPC::ArgumentCoder<WebCore::WritingTools::Session,void>::encode(v12, *a2);
  IPC::ArgumentCoder<WebCore::AttributedString,void>::encode(v12, *(a2 + 1));
  v13 = *(a2 + 2);
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v12, *v13);
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v12, v13[1]);
  IPC::ArgumentCoder<WebCore::WritingTools::Context,void>::encode(v12, *(a2 + 3));
  IPC::Encoder::operator<<<BOOL &>(v12, a2 + 32);
  v14 = *a3;
  *a3 = 0;
  v15 = WTF::fastMalloc(0x10);
  *v15 = &unk_1F1103DB8;
  v15[1] = v14;
  if (WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
  {
    result = 141;
    __break(0xC471u);
  }

  else
  {
    IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
    v24[0] = v15;
    v24[1] = IdentifierInternal;
    v25 = 1;
    v18 = WebKit::AuxiliaryProcessProxy::sendMessage(a1, &v26, a5, v24, a6);
    if (v25 == 1)
    {
      v19 = v24[0];
      v24[0] = 0;
      if (v19)
      {
        (*(*v19 + 8))(v19);
      }
    }

    v20 = v26;
    v26 = 0;
    if (v20)
    {
      IPC::Encoder::~Encoder(v20, v17);
      bmalloc::api::tzoneFree(v22, v23);
    }

    if (v18)
    {
      return IdentifierInternal;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void sub_19DCEAD8C(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, IPC::Encoder *a12)
{
  if (a11 == 1 && a9)
  {
    (*(*a9 + 8))(a9);
  }

  if (a12)
  {
    IPC::Encoder::~Encoder(a12, a2);
    bmalloc::api::tzoneFree(v13, v14);
  }

  _Unwind_Resume(exception_object);
}

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebPage::CompositionSessionDidReceiveTextWithReplacementRange,WTF::CompletionHandler<void ()(void)>>(WTF::CompletionHandler<void ()(void)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F1103DB8;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebPage::CompositionSessionDidReceiveTextWithReplacementRange,WTF::CompletionHandler<void ()(void)>>(WTF::CompletionHandler<void ()(void)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1103DB8;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WebKit::AuxiliaryProcessProxy::send<Messages::WebPage::WritingToolsSessionDidReceiveAction>(uint64_t a1, char *a2, uint64_t a3, char a4)
{
  v8 = IPC::Encoder::operator new(0x238, a2);
  *v8 = 2867;
  *(v8 + 2) = 0;
  *(v8 + 3) = 0;
  *(v8 + 1) = a3;
  *(v8 + 68) = 0;
  *(v8 + 70) = 0;
  *(v8 + 69) = 0;
  IPC::Encoder::encodeHeader(v8);
  v18 = v8;
  IPC::ArgumentCoder<WebCore::WritingTools::Session,void>::encode(v8, *a2);
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(v8, a2[8]);
  LOBYTE(v16) = 0;
  v17 = 0;
  v10 = WebKit::AuxiliaryProcessProxy::sendMessage(a1, &v18, a4, &v16, 1);
  if (v17 == 1)
  {
    v11 = v16;
    v16 = 0;
    if (v11)
    {
      (*(*v11 + 8))(v11);
    }
  }

  v12 = v18;
  v18 = 0;
  if (v12)
  {
    IPC::Encoder::~Encoder(v12, v9);
    bmalloc::api::tzoneFree(v14, v15);
  }

  return v10;
}

void sub_19DCEB050(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, IPC::Encoder *a12)
{
  if (a11 == 1 && a9)
  {
    (*(*a9 + 8))(a9);
  }

  if (a12)
  {
    IPC::Encoder::~Encoder(a12, a2);
    bmalloc::api::tzoneFree(v13, v14);
  }

  _Unwind_Resume(exception_object);
}

uint64_t WebKit::AuxiliaryProcessProxy::sendWithAsyncReply<Messages::WebPage::ProofreadingSessionSuggestionTextRectsInRootViewCoordinates,WTF::CompletionHandler<void ()(WTF::Vector<WebCore::FloatRect,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>>(uint64_t a1, void *a2, uint64_t *a3, uint64_t a4, char a5, int a6)
{
  v12 = IPC::Encoder::operator new(0x238, a2);
  *v12 = 2655;
  *(v12 + 2) = 0;
  *(v12 + 3) = 0;
  *(v12 + 1) = a4;
  *(v12 + 68) = 0;
  *(v12 + 70) = 0;
  *(v12 + 69) = 0;
  IPC::Encoder::encodeHeader(v12);
  v26 = v12;
  v13 = *a2;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v12, **a2);
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v12, v13[1]);
  v14 = *a3;
  *a3 = 0;
  v15 = WTF::fastMalloc(0x10);
  *v15 = &unk_1F1103DE0;
  v15[1] = v14;
  if (WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
  {
    result = 141;
    __break(0xC471u);
  }

  else
  {
    IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
    v24[0] = v15;
    v24[1] = IdentifierInternal;
    v25 = 1;
    v18 = WebKit::AuxiliaryProcessProxy::sendMessage(a1, &v26, a5, v24, a6);
    if (v25 == 1)
    {
      v19 = v24[0];
      v24[0] = 0;
      if (v19)
      {
        (*(*v19 + 8))(v19);
      }
    }

    v20 = v26;
    v26 = 0;
    if (v20)
    {
      IPC::Encoder::~Encoder(v20, v17);
      bmalloc::api::tzoneFree(v22, v23);
    }

    if (v18)
    {
      return IdentifierInternal;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void sub_19DCEB250(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, IPC::Encoder *a12)
{
  if (a11 == 1 && a9)
  {
    (*(*a9 + 8))(a9);
  }

  if (a12)
  {
    IPC::Encoder::~Encoder(a12, a2);
    bmalloc::api::tzoneFree(v13, v14);
  }

  _Unwind_Resume(exception_object);
}

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebPage::ProofreadingSessionSuggestionTextRectsInRootViewCoordinates,WTF::CompletionHandler<void ()(WTF::Vector<WebCore::FloatRect,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>>(WTF::CompletionHandler<void ()(WTF::Vector<WebCore::FloatRect,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)> &&,WTF::ThreadLikeAssertion)::{lambda(WTF::CompletionHandler<void ()(WTF::Vector<WebCore::FloatRect,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>,IPC::Decoder)#1},void,WTF::CompletionHandler<void ()(WTF::Vector<WebCore::FloatRect,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>,IPC::Decoder>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F1103DE0;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebPage::ProofreadingSessionSuggestionTextRectsInRootViewCoordinates,WTF::CompletionHandler<void ()(WTF::Vector<WebCore::FloatRect,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>>(WTF::CompletionHandler<void ()(WTF::Vector<WebCore::FloatRect,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)> &&,WTF::ThreadLikeAssertion)::{lambda(WTF::CompletionHandler<void ()(WTF::Vector<WebCore::FloatRect,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>,IPC::Decoder)#1},void,WTF::CompletionHandler<void ()(WTF::Vector<WebCore::FloatRect,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>,IPC::Decoder>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1103DE0;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

WTF *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebPage::ProofreadingSessionSuggestionTextRectsInRootViewCoordinates,WTF::CompletionHandler<void ()(WTF::Vector<WebCore::FloatRect,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>>(WTF::CompletionHandler<void ()(WTF::Vector<WebCore::FloatRect,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)> &&,WTF::ThreadLikeAssertion)::{lambda(WTF::CompletionHandler<void ()(WTF::Vector<WebCore::FloatRect,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>,IPC::Decoder)#1},void,WTF::CompletionHandler<void ()(WTF::Vector<WebCore::FloatRect,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>,IPC::Decoder>::call(uint64_t a1, uint64_t a2, IPC::Decoder *a3)
{
  if (a3 && *a3)
  {
    IPC::Decoder::decode<std::tuple<WTF::Vector<WebCore::FloatRect,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>(a3, &v7);
    if (v9 == 1)
    {
      result = WTF::CompletionHandler<void ()(WTF::Vector<WebCore::FloatRect,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>::operator()((a1 + 8));
      if (v9)
      {
        result = v7;
        if (v7)
        {
          v7 = 0;
          v8 = 0;
          return WTF::fastFree(result, v5);
        }
      }
    }

    else
    {
      return IPC::Connection::cancelReply<Messages::WebPage::ProofreadingSessionSuggestionTextRectsInRootViewCoordinates,WTF::CompletionHandler<void ()(WTF::Vector<WebCore::FloatRect,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>>((a1 + 8));
    }
  }

  else
  {
    v6 = (a1 + 8);

    return IPC::Connection::cancelReply<Messages::WebPage::ProofreadingSessionSuggestionTextRectsInRootViewCoordinates,WTF::CompletionHandler<void ()(WTF::Vector<WebCore::FloatRect,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>>(v6);
  }

  return result;
}

void sub_19DCEB49C(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF *a10, int a11, int a12, char a13)
{
  if (a13 == 1)
  {
    if (a10)
    {
      WTF::fastFree(a10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

WTF *IPC::Connection::cancelReply<Messages::WebPage::ProofreadingSessionSuggestionTextRectsInRootViewCoordinates,WTF::CompletionHandler<void ()(WTF::Vector<WebCore::FloatRect,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>>(uint64_t *a1)
{
  v8 = 0;
  v9 = 0;
  std::__tuple_leaf<0ul,WTF::Vector<WebCore::FloatRect,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,false>::__tuple_leaf[abi:sn200100]<WTF::Vector<WebCore::FloatRect,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,0>(&v6, &v8);
  v3 = v8;
  if (v8)
  {
    v8 = 0;
    LODWORD(v9) = 0;
    WTF::fastFree(v3, v2);
  }

  WTF::CompletionHandler<void ()(WTF::Vector<WebCore::FloatRect,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>::operator()(a1);
  result = v6;
  if (v6)
  {
    v6 = 0;
    v7 = 0;
    return WTF::fastFree(result, v4);
  }

  return result;
}

void sub_19DCEB534(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF *a9, int a10, WTF *a11, int a12)
{
  if (a9)
  {
    WTF::fastFree(a9, a2);
  }

  _Unwind_Resume(exception_object);
}

WTF *IPC::Decoder::decode<std::tuple<WTF::Vector<WebCore::FloatRect,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  result = IPC::ArgumentCoder<std::tuple<WTF::Vector<WebCore::FloatRect,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,void>::decode<IPC::Decoder>(a1, a2);
  if ((*(a2 + 16) & 1) == 0)
  {
    v5 = *a1;
    v6 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    result = *(a1 + 3);
    if (result)
    {
      v7 = v6 == 0;
    }

    else
    {
      v7 = 1;
    }

    if (!v7)
    {
      return (*(*result + 16))(result, v5);
    }
  }

  return result;
}

void sub_19DCEB5DC(_Unwind_Exception *exception_object, void *a2)
{
  if (*(v2 + 16) == 1)
  {
    v4 = *v2;
    if (*v2)
    {
      *v2 = 0;
      *(v2 + 8) = 0;
      WTF::fastFree(v4, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

WTF *IPC::ArgumentCoder<std::tuple<WTF::Vector<WebCore::FloatRect,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,void>::decode<IPC::Decoder>@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  result = IPC::Decoder::decode<WTF::Vector<WebCore::FloatRect,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(a1, &v5);
  if (v7 == 1)
  {
    result = std::__tuple_leaf<0ul,WTF::Vector<WebCore::FloatRect,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,false>::__tuple_leaf[abi:sn200100]<WTF::Vector<WebCore::FloatRect,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,0>(a2, &v5);
    *(a2 + 16) = 1;
    if (v7)
    {
      result = v5;
      if (v5)
      {
        v5 = 0;
        v6 = 0;
        return WTF::fastFree(result, v4);
      }
    }
  }

  else
  {
    *a2 = 0;
    *(a2 + 16) = 0;
  }

  return result;
}

void sub_19DCEB680(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF *a10, int a11, int a12, char a13)
{
  if (a13 == 1)
  {
    if (a10)
    {
      WTF::fastFree(a10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void *std::__tuple_leaf<0ul,WTF::Vector<WebCore::FloatRect,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,false>::__tuple_leaf[abi:sn200100]<WTF::Vector<WebCore::FloatRect,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,0>(void *a1, _DWORD *a2)
{
  *a1 = 0;
  a1[1] = 0;
  WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt(a1, a2);
  return a1;
}

void sub_19DCEB6D8(_Unwind_Exception *exception_object, void *a2)
{
  v4 = *v2;
  if (*v2)
  {
    *v2 = 0;
    *(v2 + 8) = 0;
    WTF::fastFree(v4, a2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t WTF::CompletionHandler<void ()(WTF::Vector<WebCore::FloatRect,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>::operator()(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  (*(*v1 + 16))(v1);
  v2 = *(*v1 + 8);

  return v2(v1);
}

uint64_t WebKit::AuxiliaryProcessProxy::sendWithAsyncReply<Messages::WebPage::UpdateTextVisibilityForActiveWritingToolsSession,WTF::CompletionHandler<void ()(void)>>(uint64_t a1, char *a2, uint64_t *a3, uint64_t a4, char a5, int a6)
{
  v12 = IPC::Encoder::operator new(0x238, a2);
  *v12 = 2847;
  *(v12 + 2) = 0;
  *(v12 + 3) = 0;
  *(v12 + 1) = a4;
  *(v12 + 68) = 0;
  *(v12 + 70) = 0;
  *(v12 + 69) = 0;
  IPC::Encoder::encodeHeader(v12);
  v27 = v12;
  v13 = *a2;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v12, **a2);
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v12, v13[1]);
  IPC::Encoder::operator<<<BOOL &>(v12, a2 + 8);
  v14 = *(a2 + 2);
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v12, v14[1]);
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v12, *v14);
  v15 = *a3;
  *a3 = 0;
  v16 = WTF::fastMalloc(0x10);
  *v16 = &unk_1F1103E08;
  v16[1] = v15;
  if (WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
  {
    result = 141;
    __break(0xC471u);
  }

  else
  {
    IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
    v25[0] = v16;
    v25[1] = IdentifierInternal;
    v26 = 1;
    v19 = WebKit::AuxiliaryProcessProxy::sendMessage(a1, &v27, a5, v25, a6);
    if (v26 == 1)
    {
      v20 = v25[0];
      v25[0] = 0;
      if (v20)
      {
        (*(*v20 + 8))(v20);
      }
    }

    v21 = v27;
    v27 = 0;
    if (v21)
    {
      IPC::Encoder::~Encoder(v21, v18);
      bmalloc::api::tzoneFree(v23, v24);
    }

    if (v19)
    {
      return IdentifierInternal;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void sub_19DCEB970(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, IPC::Encoder *a12)
{
  if (a11 == 1 && a9)
  {
    (*(*a9 + 8))(a9);
  }

  if (a12)
  {
    IPC::Encoder::~Encoder(a12, a2);
    bmalloc::api::tzoneFree(v13, v14);
  }

  _Unwind_Resume(exception_object);
}

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebPage::UpdateTextVisibilityForActiveWritingToolsSession,WTF::CompletionHandler<void ()(void)>>(WTF::CompletionHandler<void ()(void)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F1103E08;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebPage::UpdateTextVisibilityForActiveWritingToolsSession,WTF::CompletionHandler<void ()(void)>>(WTF::CompletionHandler<void ()(void)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1103E08;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WebKit::AuxiliaryProcessProxy::sendWithAsyncReply<Messages::WebPage::TextPreviewDataForActiveWritingToolsSession,WTF::CompletionHandler<void ()(WTF::RefPtr<WebCore::TextIndicator,WTF::RawPtrTraits<WebCore::TextIndicator>,WTF::DefaultRefDerefTraits<WebCore::TextIndicator>> &&)>>(uint64_t a1, void *a2, uint64_t *a3, uint64_t a4, char a5, int a6)
{
  v12 = IPC::Encoder::operator new(0x238, a2);
  *v12 = 2823;
  *(v12 + 2) = 0;
  *(v12 + 3) = 0;
  *(v12 + 1) = a4;
  *(v12 + 68) = 0;
  *(v12 + 70) = 0;
  *(v12 + 69) = 0;
  IPC::Encoder::encodeHeader(v12);
  v26 = v12;
  v13 = *a2;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v12, **a2);
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v12, v13[1]);
  v14 = *a3;
  *a3 = 0;
  v15 = WTF::fastMalloc(0x10);
  *v15 = &unk_1F1103E30;
  v15[1] = v14;
  if (WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
  {
    result = 141;
    __break(0xC471u);
  }

  else
  {
    IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
    v24[0] = v15;
    v24[1] = IdentifierInternal;
    v25 = 1;
    v18 = WebKit::AuxiliaryProcessProxy::sendMessage(a1, &v26, a5, v24, a6);
    if (v25 == 1)
    {
      v19 = v24[0];
      v24[0] = 0;
      if (v19)
      {
        (*(*v19 + 8))(v19);
      }
    }

    v20 = v26;
    v26 = 0;
    if (v20)
    {
      IPC::Encoder::~Encoder(v20, v17);
      bmalloc::api::tzoneFree(v22, v23);
    }

    if (v18)
    {
      return IdentifierInternal;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void sub_19DCEBCC0(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, IPC::Encoder *a12)
{
  if (a11 == 1 && a9)
  {
    (*(*a9 + 8))(a9);
  }

  if (a12)
  {
    IPC::Encoder::~Encoder(a12, a2);
    bmalloc::api::tzoneFree(v13, v14);
  }

  _Unwind_Resume(exception_object);
}

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebPage::TextPreviewDataForActiveWritingToolsSession,WTF::CompletionHandler<void ()(WTF::RefPtr<WebCore::TextIndicator,WTF::RawPtrTraits<WebCore::TextIndicator>,WTF::DefaultRefDerefTraits<WebCore::TextIndicator>> &&)>>(WTF::CompletionHandler<void ()(WTF::RefPtr<WebCore::TextIndicator,WTF::RawPtrTraits<WebCore::TextIndicator>,WTF::DefaultRefDerefTraits<WebCore::TextIndicator>> &&)> &&,WTF::ThreadLikeAssertion)::{lambda(WTF::CompletionHandler<void ()(WTF::RefPtr<WebCore::TextIndicator,WTF::RawPtrTraits<WebCore::TextIndicator>,WTF::DefaultRefDerefTraits<WebCore::TextIndicator>> &&)>,IPC::Decoder)#1},void,WTF::CompletionHandler<void ()(WTF::RefPtr<WebCore::TextIndicator,WTF::RawPtrTraits<WebCore::TextIndicator>,WTF::DefaultRefDerefTraits<WebCore::TextIndicator>> &&)>,IPC::Decoder>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F1103E30;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebPage::TextPreviewDataForActiveWritingToolsSession,WTF::CompletionHandler<void ()(WTF::RefPtr<WebCore::TextIndicator,WTF::RawPtrTraits<WebCore::TextIndicator>,WTF::DefaultRefDerefTraits<WebCore::TextIndicator>> &&)>>(WTF::CompletionHandler<void ()(WTF::RefPtr<WebCore::TextIndicator,WTF::RawPtrTraits<WebCore::TextIndicator>,WTF::DefaultRefDerefTraits<WebCore::TextIndicator>> &&)> &&,WTF::ThreadLikeAssertion)::{lambda(WTF::CompletionHandler<void ()(WTF::RefPtr<WebCore::TextIndicator,WTF::RawPtrTraits<WebCore::TextIndicator>,WTF::DefaultRefDerefTraits<WebCore::TextIndicator>> &&)>,IPC::Decoder)#1},void,WTF::CompletionHandler<void ()(WTF::RefPtr<WebCore::TextIndicator,WTF::RawPtrTraits<WebCore::TextIndicator>,WTF::DefaultRefDerefTraits<WebCore::TextIndicator>> &&)>,IPC::Decoder>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1103E30;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

WebCore::TextIndicator *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebPage::TextPreviewDataForActiveWritingToolsSession,WTF::CompletionHandler<void ()(WTF::RefPtr<WebCore::TextIndicator,WTF::RawPtrTraits<WebCore::TextIndicator>,WTF::DefaultRefDerefTraits<WebCore::TextIndicator>> &&)>>(WTF::CompletionHandler<void ()(WTF::RefPtr<WebCore::TextIndicator,WTF::RawPtrTraits<WebCore::TextIndicator>,WTF::DefaultRefDerefTraits<WebCore::TextIndicator>> &&)> &&,WTF::ThreadLikeAssertion)::{lambda(WTF::CompletionHandler<void ()(WTF::RefPtr<WebCore::TextIndicator,WTF::RawPtrTraits<WebCore::TextIndicator>,WTF::DefaultRefDerefTraits<WebCore::TextIndicator>> &&)>,IPC::Decoder)#1},void,WTF::CompletionHandler<void ()(WTF::RefPtr<WebCore::TextIndicator,WTF::RawPtrTraits<WebCore::TextIndicator>,WTF::DefaultRefDerefTraits<WebCore::TextIndicator>> &&)>,IPC::Decoder>::call(uint64_t a1, uint64_t a2, WTF *a3)
{
  if (a3 && *a3 && (IPC::Decoder::decode<std::tuple<WTF::RefPtr<WebCore::TextIndicator,WTF::RawPtrTraits<WebCore::TextIndicator>,WTF::DefaultRefDerefTraits<WebCore::TextIndicator>>>>(&v5, a3), v6 == 1))
  {
    result = WTF::CompletionHandler<void ()(WTF::RefPtr<WebCore::TextIndicator,WTF::RawPtrTraits<WebCore::TextIndicator>,WTF::DefaultRefDerefTraits<WebCore::TextIndicator>> &&)>::operator()((a1 + 8));
    if (v6)
    {
      result = v5;
      v5 = 0;
      if (result)
      {
        return WTF::RefCounted<WebCore::TextIndicator>::deref(result);
      }
    }
  }

  else
  {

    return IPC::Connection::cancelReply<Messages::WebPage::TextPreviewDataForActiveWritingToolsSession,WTF::CompletionHandler<void ()(WTF::RefPtr<WebCore::TextIndicator,WTF::RawPtrTraits<WebCore::TextIndicator>,WTF::DefaultRefDerefTraits<WebCore::TextIndicator>> &&)>>((a1 + 8));
  }

  return result;
}

void sub_19DCEBF00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, WebCore::TextIndicator *a9, char a10)
{
  if (a10 == 1)
  {
    if (a9)
    {
      WTF::RefCounted<WebCore::TextIndicator>::deref(a9);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_19DCEBF70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WebCore::TextIndicator *a10)
{
  if (a10)
  {
    WTF::RefCounted<WebCore::TextIndicator>::deref(a10);
  }

  _Unwind_Resume(exception_object);
}

WTF *IPC::Decoder::decode<std::tuple<WTF::RefPtr<WebCore::TextIndicator,WTF::RawPtrTraits<WebCore::TextIndicator>,WTF::DefaultRefDerefTraits<WebCore::TextIndicator>>>>(uint64_t a1, WTF *a2)
{
  result = IPC::Decoder::decode<WTF::RefPtr<WebCore::TextIndicator,WTF::RawPtrTraits<WebCore::TextIndicator>,WTF::DefaultRefDerefTraits<WebCore::TextIndicator>>>(a2, &v8);
  if (v9 == 1)
  {
    *a1 = v8;
    *(a1 + 8) = 1;
  }

  else
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    v5 = *a2;
    v6 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    result = *(a2 + 3);
    if (result)
    {
      v7 = v6 == 0;
    }

    else
    {
      v7 = 1;
    }

    if (!v7)
    {
      return (*(*result + 16))(result, v5);
    }
  }

  return result;
}

uint64_t WebKit::AuxiliaryProcessProxy::sendWithAsyncReply<Messages::WebPage::DecorateTextReplacementsForActiveWritingToolsSession,WTF::CompletionHandler<void ()(void)>>(uint64_t a1, void *a2, uint64_t *a3, uint64_t a4, char a5, int a6)
{
  v12 = IPC::Encoder::operator new(0x238, a2);
  *v12 = 2488;
  *(v12 + 2) = 0;
  *(v12 + 3) = 0;
  *(v12 + 1) = a4;
  *(v12 + 68) = 0;
  *(v12 + 70) = 0;
  *(v12 + 69) = 0;
  IPC::Encoder::encodeHeader(v12);
  v26 = v12;
  v13 = *a2;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v12, **a2);
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v12, v13[1]);
  v14 = *a3;
  *a3 = 0;
  v15 = WTF::fastMalloc(0x10);
  *v15 = &unk_1F1103E58;
  v15[1] = v14;
  if (WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
  {
    result = 141;
    __break(0xC471u);
  }

  else
  {
    IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
    v24[0] = v15;
    v24[1] = IdentifierInternal;
    v25 = 1;
    v18 = WebKit::AuxiliaryProcessProxy::sendMessage(a1, &v26, a5, v24, a6);
    if (v25 == 1)
    {
      v19 = v24[0];
      v24[0] = 0;
      if (v19)
      {
        (*(*v19 + 8))(v19);
      }
    }

    v20 = v26;
    v26 = 0;
    if (v20)
    {
      IPC::Encoder::~Encoder(v20, v17);
      bmalloc::api::tzoneFree(v22, v23);
    }

    if (v18)
    {
      return IdentifierInternal;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void sub_19DCEC1C8(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, IPC::Encoder *a12)
{
  if (a11 == 1 && a9)
  {
    (*(*a9 + 8))(a9);
  }

  if (a12)
  {
    IPC::Encoder::~Encoder(a12, a2);
    bmalloc::api::tzoneFree(v13, v14);
  }

  _Unwind_Resume(exception_object);
}

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebPage::DecorateTextReplacementsForActiveWritingToolsSession,WTF::CompletionHandler<void ()(void)>>(WTF::CompletionHandler<void ()(void)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F1103E58;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebPage::DecorateTextReplacementsForActiveWritingToolsSession,WTF::CompletionHandler<void ()(void)>>(WTF::CompletionHandler<void ()(void)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1103E58;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WebKit::AuxiliaryProcessProxy::sendWithAsyncReply<Messages::WebPage::SetSelectionForActiveWritingToolsSession,WTF::CompletionHandler<void ()(void)>>(uint64_t a1, void *a2, uint64_t *a3, uint64_t a4, char a5, int a6)
{
  v12 = IPC::Encoder::operator new(0x238, a2);
  *v12 = 2774;
  *(v12 + 2) = 0;
  *(v12 + 3) = 0;
  *(v12 + 1) = a4;
  *(v12 + 68) = 0;
  *(v12 + 70) = 0;
  *(v12 + 69) = 0;
  IPC::Encoder::encodeHeader(v12);
  v26 = v12;
  v13 = *a2;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v12, **a2);
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v12, v13[1]);
  v14 = *a3;
  *a3 = 0;
  v15 = WTF::fastMalloc(0x10);
  *v15 = &unk_1F1103E80;
  v15[1] = v14;
  if (WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
  {
    result = 141;
    __break(0xC471u);
  }

  else
  {
    IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
    v24[0] = v15;
    v24[1] = IdentifierInternal;
    v25 = 1;
    v18 = WebKit::AuxiliaryProcessProxy::sendMessage(a1, &v26, a5, v24, a6);
    if (v25 == 1)
    {
      v19 = v24[0];
      v24[0] = 0;
      if (v19)
      {
        (*(*v19 + 8))(v19);
      }
    }

    v20 = v26;
    v26 = 0;
    if (v20)
    {
      IPC::Encoder::~Encoder(v20, v17);
      bmalloc::api::tzoneFree(v22, v23);
    }

    if (v18)
    {
      return IdentifierInternal;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void sub_19DCEC518(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, IPC::Encoder *a12)
{
  if (a11 == 1 && a9)
  {
    (*(*a9 + 8))(a9);
  }

  if (a12)
  {
    IPC::Encoder::~Encoder(a12, a2);
    bmalloc::api::tzoneFree(v13, v14);
  }

  _Unwind_Resume(exception_object);
}

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebPage::SetSelectionForActiveWritingToolsSession,WTF::CompletionHandler<void ()(void)>>(WTF::CompletionHandler<void ()(void)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F1103E80;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebPage::SetSelectionForActiveWritingToolsSession,WTF::CompletionHandler<void ()(void)>>(WTF::CompletionHandler<void ()(void)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1103E80;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

_DWORD *WTF::HashTable<WTF::UUID,WTF::KeyValuePair<WTF::UUID,WTF::RefPtr<WebCore::TextIndicator,WTF::RawPtrTraits<WebCore::TextIndicator>,WTF::DefaultRefDerefTraits<WebCore::TextIndicator>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::UUID,WTF::RefPtr<WebCore::TextIndicator,WTF::RawPtrTraits<WebCore::TextIndicator>,WTF::DefaultRefDerefTraits<WebCore::TextIndicator>>>>,WTF::DefaultHash<WTF::UUID>,WTF::HashMap<WTF::UUID,WTF::RefPtr<WebCore::TextIndicator,WTF::RawPtrTraits<WebCore::TextIndicator>,WTF::DefaultRefDerefTraits<WebCore::TextIndicator>>,WTF::DefaultHash<WTF::UUID>,WTF::HashTraits<WTF::UUID>,WTF::HashTraits<WTF::RefPtr<WebCore::TextIndicator,WTF::RawPtrTraits<WebCore::TextIndicator>,WTF::DefaultRefDerefTraits<WebCore::TextIndicator>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::UUID>,WTF::FastMalloc>::expand(uint64_t *a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = *(v2 - 4);
    v4 = *(v2 - 12);
    if (v3)
    {
      v5 = v3 << (6 * v4 >= 2 * v3);
      goto LABEL_6;
    }
  }

  else
  {
    v3 = 0;
    v4 = 0;
  }

  v5 = 8;
LABEL_6:
  v6 = v5;
  result = WTF::fastMalloc(((32 * v5) | 0x10));
  if (v5)
  {
    v9 = result + 4;
    do
    {
      *v9 = 0;
      v9[1] = 0;
      v9[2] = 0;
      v9 += 4;
      --v6;
    }

    while (v6);
  }

  *a1 = (result + 4);
  result[2] = v5 - 1;
  result[3] = v5;
  *result = 0;
  result[1] = v4;
  if (v3)
  {
    v10 = 0;
    v11 = v3;
    while (1)
    {
      v12 = v2 + 32 * v10;
      if (*v12 ^ 1 | *(v12 + 8))
      {
        if (*v12 != 0)
        {
          v14 = *a1;
          if (*a1)
          {
            v15 = *(v14 - 8);
          }

          else
          {
            v15 = 0;
          }

          v16 = WTF::UUIDHash::hash((v2 + 32 * v10), v8);
          v17 = 0;
          do
          {
            v18 = v16 & v15;
            v19 = v14 + 32 * v18;
            v16 = ++v17 + v18;
          }

          while (*v19 != 0);
          v20 = *(v19 + 16);
          *(v19 + 16) = 0;
          if (v20)
          {
            WTF::RefCounted<WebCore::TextIndicator>::deref(v20);
          }

          *v19 = *v12;
          v21 = *(v12 + 16);
          *(v12 + 16) = 0;
          *(v19 + 16) = v21;
          v13 = *(v12 + 16);
          *(v12 + 16) = 0;
          if (!v13)
          {
            goto LABEL_24;
          }

LABEL_23:
          WTF::RefCounted<WebCore::TextIndicator>::deref(v13);
          goto LABEL_24;
        }

        v13 = *(v12 + 16);
        *(v12 + 16) = 0;
        if (v13)
        {
          goto LABEL_23;
        }
      }

LABEL_24:
      if (++v10 == v11)
      {
        goto LABEL_27;
      }
    }
  }

  if (v2)
  {
LABEL_27:

    return WTF::fastFree((v2 - 16), v8);
  }

  return result;
}

uint64_t WTF::UUIDHash::hash(WTF::UUIDHash *this, const UUID *a2)
{
  v7 = 0;
  v8 = 0;
  v2 = *(this + 1);
  v3 = (v2 >> 5) & 0x7FFF800 ^ ((v2 - 1640531527) << 16) ^ (v2 - 1640531527);
  LODWORD(v2) = (v2 >> 37) & 0x7FFF800 ^ ((v3 + WORD2(v2) + (v3 >> 11)) << 16) ^ (v3 + WORD2(v2) + (v3 >> 11));
  LODWORD(v2) = v2 + *this + (v2 >> 11);
  LODWORD(v2) = (*this >> 5) & 0x7FFF800 ^ (v2 << 16) ^ v2;
  LODWORD(v2) = v2 + WORD2(*this) + (v2 >> 11);
  v4 = (*this >> 37) & 0x7FFF800 ^ (v2 << 16) ^ v2;
  v6 = v4 + (v4 >> 11);
  return WTF::SuperFastHash::hash(&v6);
}

uint64_t WTF::HashTable<WTF::UUID,WTF::KeyValuePair<WTF::UUID,WTF::CompletionHandler<void ()(WebCore::TextAnimationRunMode)>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::UUID,WTF::CompletionHandler<void ()(WebCore::TextAnimationRunMode)>>>,WTF::DefaultHash<WTF::UUID>,WTF::HashMap<WTF::UUID,WTF::CompletionHandler<void ()(WebCore::TextAnimationRunMode)>,WTF::DefaultHash<WTF::UUID>,WTF::HashTraits<WTF::UUID>,WTF::HashTraits<WTF::CompletionHandler<void ()(WebCore::TextAnimationRunMode)>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::UUID>,WTF::FastMalloc>::expand(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  if (*a1 && (v4 = *(v3 - 4)) != 0)
  {
    v5 = v4 << (6 * *(v3 - 12) >= (2 * v4));
  }

  else
  {
    v5 = 8;
  }

  return WTF::HashTable<WTF::UUID,WTF::KeyValuePair<WTF::UUID,WTF::CompletionHandler<void ()(WebCore::TextAnimationRunMode)>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::UUID,WTF::CompletionHandler<void ()(WebCore::TextAnimationRunMode)>>>,WTF::DefaultHash<WTF::UUID>,WTF::HashMap<WTF::UUID,WTF::CompletionHandler<void ()(WebCore::TextAnimationRunMode)>,WTF::DefaultHash<WTF::UUID>,WTF::HashTraits<WTF::UUID>,WTF::HashTraits<WTF::CompletionHandler<void ()(WebCore::TextAnimationRunMode)>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::UUID>,WTF::FastMalloc>::rehash(a1, v5, a2);
}

uint64_t WTF::HashTable<WTF::UUID,WTF::KeyValuePair<WTF::UUID,WTF::CompletionHandler<void ()(WebCore::TextAnimationRunMode)>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::UUID,WTF::CompletionHandler<void ()(WebCore::TextAnimationRunMode)>>>,WTF::DefaultHash<WTF::UUID>,WTF::HashMap<WTF::UUID,WTF::CompletionHandler<void ()(WebCore::TextAnimationRunMode)>,WTF::DefaultHash<WTF::UUID>,WTF::HashTraits<WTF::UUID>,WTF::HashTraits<WTF::CompletionHandler<void ()(WebCore::TextAnimationRunMode)>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::UUID>,WTF::FastMalloc>::rehash(uint64_t *a1, unsigned int a2, uint64_t a3)
{
  v6 = *a1;
  if (*a1)
  {
    v7 = *(v6 - 4);
    v8 = *(v6 - 12);
  }

  else
  {
    v7 = 0;
    v8 = 0;
  }

  v9 = a2;
  v10 = WTF::fastMalloc(((32 * a2) | 0x10));
  if (a2)
  {
    v12 = v10 + 4;
    do
    {
      *v12 = 0;
      v12[1] = 0;
      v12[2] = 0;
      v12 += 4;
      --v9;
    }

    while (v9);
  }

  *a1 = (v10 + 4);
  v10[2] = a2 - 1;
  v10[3] = a2;
  *v10 = 0;
  v10[1] = v8;
  if (v7)
  {
    v13 = 0;
    v14 = 0;
    do
    {
      v15 = v6 + 32 * v13;
      if (*v15 ^ 1 | *(v15 + 8))
      {
        if (*v15 == 0)
        {
          v16 = *(v15 + 16);
          *(v15 + 16) = 0;
          if (v16)
          {
            (*(*v16 + 8))(v16);
          }
        }

        else
        {
          v17 = *a1;
          if (*a1)
          {
            v18 = *(v17 - 8);
          }

          else
          {
            v18 = 0;
          }

          v19 = WTF::UUIDHash::hash((v6 + 32 * v13), v11);
          v20 = 0;
          do
          {
            v21 = v19 & v18;
            v22 = v17 + 32 * v21;
            v19 = ++v20 + v21;
          }

          while (*v22 != 0);
          v23 = *(v22 + 16);
          *(v22 + 16) = 0;
          if (v23)
          {
            (*(*v23 + 8))(v23);
          }

          *v22 = *v15;
          v24 = *(v15 + 16);
          *(v15 + 16) = 0;
          *(v22 + 16) = v24;
          v25 = *(v15 + 16);
          *(v15 + 16) = 0;
          if (v25)
          {
            (*(*v25 + 8))(v25);
          }

          if (v15 == a3)
          {
            v14 = v22;
          }
        }
      }

      ++v13;
    }

    while (v13 != v7);
  }

  else
  {
    v14 = 0;
    result = 0;
    if (!v6)
    {
      return result;
    }
  }

  WTF::fastFree((v6 - 16), v11);
  return v14;
}

void *WTF::HashMap<WTF::UUID,WTF::CompletionHandler<void ()(std::optional<WebCore::TextIndicatorData>)>,WTF::DefaultHash<WTF::UUID>,WTF::HashTraits<WTF::UUID>,WTF::HashTraits<WTF::CompletionHandler<void ()(std::optional<WebCore::TextIndicatorData>)>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::take(void *result, uint64_t *a2, void *a3)
{
  v3 = *a2;
  if (*a2)
  {
    v4 = *(v3 - 4);
    if ((v3 + 32 * v4) == a3)
    {
      goto LABEL_12;
    }
  }

  else
  {
    if (!a3)
    {
LABEL_12:
      *result = 0;
      return result;
    }

    LODWORD(v4) = MEMORY[0xFFFFFFFFFFFFFFFC];
  }

  *result = a3[2];
  a3[1] = 0;
  a3[2] = 0;
  *a3 = 1;
  v5 = vadd_s32(*(v3 - 16), 0xFFFFFFFF00000001);
  *(v3 - 16) = v5;
  if (6 * v5.i32[1] < v4 && v4 >= 9)
  {
    return WTF::HashTable<WTF::UUID,WTF::KeyValuePair<WTF::UUID,WTF::CompletionHandler<void ()(std::optional<WebCore::TextIndicatorData>)>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::UUID,WTF::CompletionHandler<void ()(std::optional<WebCore::TextIndicatorData>)>>>,WTF::DefaultHash<WTF::UUID>,WTF::HashMap<WTF::UUID,WTF::CompletionHandler<void ()(std::optional<WebCore::TextIndicatorData>)>,WTF::DefaultHash<WTF::UUID>,WTF::HashTraits<WTF::UUID>,WTF::HashTraits<WTF::CompletionHandler<void ()(std::optional<WebCore::TextIndicatorData>)>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::UUID>,WTF::FastMalloc>::rehash(a2, v4 >> 1, 0);
  }

  return result;
}

void sub_19DCECBFC(_Unwind_Exception *exception_object)
{
  *v1 = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t WTF::HashTable<WTF::UUID,WTF::KeyValuePair<WTF::UUID,WTF::CompletionHandler<void ()(std::optional<WebCore::TextIndicatorData>)>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::UUID,WTF::CompletionHandler<void ()(std::optional<WebCore::TextIndicatorData>)>>>,WTF::DefaultHash<WTF::UUID>,WTF::HashMap<WTF::UUID,WTF::CompletionHandler<void ()(std::optional<WebCore::TextIndicatorData>)>,WTF::DefaultHash<WTF::UUID>,WTF::HashTraits<WTF::UUID>,WTF::HashTraits<WTF::CompletionHandler<void ()(std::optional<WebCore::TextIndicatorData>)>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::UUID>,WTF::FastMalloc>::rehash(uint64_t *a1, unsigned int a2, uint64_t a3)
{
  v6 = *a1;
  if (*a1)
  {
    v7 = *(v6 - 4);
    v8 = *(v6 - 12);
  }

  else
  {
    v7 = 0;
    v8 = 0;
  }

  v9 = a2;
  v10 = WTF::fastMalloc(((32 * a2) | 0x10));
  if (a2)
  {
    v12 = v10 + 4;
    do
    {
      *v12 = 0;
      v12[1] = 0;
      v12[2] = 0;
      v12 += 4;
      --v9;
    }

    while (v9);
  }

  *a1 = (v10 + 4);
  v10[2] = a2 - 1;
  v10[3] = a2;
  *v10 = 0;
  v10[1] = v8;
  if (v7)
  {
    v13 = 0;
    v14 = 0;
    do
    {
      v15 = v6 + 32 * v13;
      if (*v15 ^ 1 | *(v15 + 8))
      {
        if (*v15 == 0)
        {
          v16 = *(v15 + 16);
          *(v15 + 16) = 0;
          if (v16)
          {
            (*(*v16 + 8))(v16);
          }
        }

        else
        {
          v17 = *a1;
          if (*a1)
          {
            v18 = *(v17 - 8);
          }

          else
          {
            v18 = 0;
          }

          v19 = WTF::UUIDHash::hash((v6 + 32 * v13), v11);
          v20 = 0;
          do
          {
            v21 = v19 & v18;
            v22 = v17 + 32 * v21;
            v19 = ++v20 + v21;
          }

          while (*v22 != 0);
          v23 = *(v22 + 16);
          *(v22 + 16) = 0;
          if (v23)
          {
            (*(*v23 + 8))(v23);
          }

          *v22 = *v15;
          v24 = *(v15 + 16);
          *(v15 + 16) = 0;
          *(v22 + 16) = v24;
          v25 = *(v15 + 16);
          *(v15 + 16) = 0;
          if (v25)
          {
            (*(*v25 + 8))(v25);
          }

          if (v15 == a3)
          {
            v14 = v22;
          }
        }
      }

      ++v13;
    }

    while (v13 != v7);
  }

  else
  {
    v14 = 0;
    result = 0;
    if (!v6)
    {
      return result;
    }
  }

  WTF::fastFree((v6 - 16), v11);
  return v14;
}

uint64_t WTF::HashTable<WTF::UUID,WTF::KeyValuePair<WTF::UUID,WTF::CompletionHandler<void ()(std::optional<WebCore::TextIndicatorData>)>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::UUID,WTF::CompletionHandler<void ()(std::optional<WebCore::TextIndicatorData>)>>>,WTF::DefaultHash<WTF::UUID>,WTF::HashMap<WTF::UUID,WTF::CompletionHandler<void ()(std::optional<WebCore::TextIndicatorData>)>,WTF::DefaultHash<WTF::UUID>,WTF::HashTraits<WTF::UUID>,WTF::HashTraits<WTF::CompletionHandler<void ()(std::optional<WebCore::TextIndicatorData>)>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::UUID>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WTF::UUID,WTF::CompletionHandler<void ()(std::optional<WebCore::TextIndicatorData>)>,WTF::DefaultHash<WTF::UUID>,WTF::HashTraits<WTF::UUID>,WTF::HashTraits<WTF::CompletionHandler<void ()(std::optional<WebCore::TextIndicatorData>)>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::UUID>>,(WTF::ShouldValidateKey)1,WTF::UUID>(uint64_t *a1, WTF::UUIDHash *this)
{
  v2 = *a1;
  if (!*a1)
  {
    return 0;
  }

  if (!(*this ^ 1 | *(this + 1)) || *this == 0)
  {
    __break(0xC471u);
    JUMPOUT(0x19DCECF18);
  }

  v5 = *(v2 - 8);
  v6 = WTF::UUIDHash::hash(this, this);
  v7 = *this;
  v8 = *(this + 1);
  v9 = v6 & v5;
  v10 = (v2 + 32 * v9);
  v11 = *v10;
  v12 = v10[1];
  if (v12 == v8 && v11 == v7)
  {
    return v2 + 32 * v9;
  }

  v14 = 1;
  while (v11 | v12)
  {
    v9 = (v9 + v14) & v5;
    v15 = (v2 + 32 * v9);
    v11 = *v15;
    v12 = v15[1];
    v16 = v12 == v8 && v11 == v7;
    ++v14;
    if (v16)
    {
      return v2 + 32 * v9;
    }
  }

  if (*a1)
  {
    return *a1 + 32 * *(*a1 - 4);
  }

  else
  {
    return 0;
  }
}

uint64_t std::__optional_move_base<WebCore::TextIndicatorData,false>::__optional_move_base[abi:sn200100](uint64_t a1, __int128 *a2)
{
  *a1 = 0;
  *(a1 + 136) = 0;
  if (*(a2 + 136) == 1)
  {
    v4 = *a2;
    v5 = a2[2];
    *(a1 + 16) = a2[1];
    *(a1 + 32) = v5;
    *a1 = v4;
    *(a1 + 48) = 0;
    *(a1 + 56) = 0;
    WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt(a1 + 48, a2 + 12);
    *(a1 + 64) = *(a2 + 16);
    v6 = *(a2 + 9);
    *(a2 + 9) = 0;
    *(a1 + 72) = v6;
    v7 = *(a2 + 10);
    *(a2 + 10) = 0;
    *(a1 + 80) = v7;
    v8 = *(a2 + 11);
    *(a2 + 11) = 0;
    *(a1 + 88) = v8;
    *(a1 + 96) = 0;
    if (a1 != a2)
    {
      v9 = *(a2 + 12);
      *(a2 + 12) = 0;
      *(a1 + 96) = v9;
    }

    v10 = *(a2 + 104);
    *(a1 + 113) = *(a2 + 113);
    *(a1 + 104) = v10;
    *(a1 + 136) = 1;
  }

  return a1;
}

void sub_19DCED000(_Unwind_Exception *exception_object, void *a2)
{
  v5 = *v3;
  if (*v3)
  {
    *(v2 + 48) = 0;
    *(v2 + 56) = 0;
    WTF::fastFree(v5, a2);
  }

  if (*(v2 + 136) == 1)
  {
    WebCore::TextIndicatorData::~TextIndicatorData(v2, a2);
  }

  _Unwind_Resume(exception_object);
}

void WTF::HashTable<WTF::UUID,WTF::KeyValuePair<WTF::UUID,WTF::UUID>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::UUID,WTF::UUID>>,WTF::DefaultHash<WTF::UUID>,WTF::HashMap<WTF::UUID,WTF::UUID,WTF::DefaultHash<WTF::UUID>,WTF::HashTraits<WTF::UUID>,WTF::HashTraits<WTF::UUID>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::UUID>,WTF::FastMalloc>::expand(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 && (v2 = *(v1 - 4)) != 0)
  {
    v3 = v2 << (6 * *(v1 - 12) >= (2 * v2));
  }

  else
  {
    v3 = 8;
  }

  WTF::HashTable<WTF::UUID,WTF::KeyValuePair<WTF::UUID,WTF::UUID>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::UUID,WTF::UUID>>,WTF::DefaultHash<WTF::UUID>,WTF::HashMap<WTF::UUID,WTF::UUID,WTF::DefaultHash<WTF::UUID>,WTF::HashTraits<WTF::UUID>,WTF::HashTraits<WTF::UUID>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::UUID>,WTF::FastMalloc>::rehash(a1, v3);
}

void WTF::HashTable<WTF::UUID,WTF::KeyValuePair<WTF::UUID,WTF::UUID>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::UUID,WTF::UUID>>,WTF::DefaultHash<WTF::UUID>,WTF::HashMap<WTF::UUID,WTF::UUID,WTF::DefaultHash<WTF::UUID>,WTF::HashTraits<WTF::UUID>,WTF::HashTraits<WTF::UUID>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::UUID>,WTF::FastMalloc>::rehash(uint64_t *a1, unsigned int a2)
{
  v4 = *a1;
  if (*a1)
  {
    v5 = *(v4 - 4);
    v6 = *(v4 - 12);
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  v7 = WTF::fastMalloc(((32 * a2) | 0x10));
  v9 = v7;
  v10 = v7 + 16;
  if (a2)
  {
    bzero((v7 + 16), 32 * a2);
  }

  *a1 = v10;
  v9[2] = a2 - 1;
  v9[3] = a2;
  *v9 = 0;
  v9[1] = v6;
  if (v5)
  {
    for (i = 0; i != v5; ++i)
    {
      v12 = (v4 + 32 * i);
      if (*v12 >= 2uLL)
      {
        v13 = *a1;
        if (*a1)
        {
          v14 = *(v13 - 8);
        }

        else
        {
          v14 = 0;
        }

        v15 = WTF::UUIDHash::hash((v4 + 32 * i), v8);
        v16 = 0;
        do
        {
          v17 = v15 & v14;
          v18 = (v13 + 32 * v17);
          v15 = ++v16 + v17;
        }

        while (*v18 != 0);
        v19 = v12[1];
        *v18 = *v12;
        v18[1] = v19;
      }
    }
  }

  else if (!v4)
  {
    return;
  }

  WTF::fastFree((v4 - 16), v8);
}

uint64_t *WTF::HashMap<WTF::UUID,WTF::CompletionHandler<void ()(WebCore::TextAnimationRunMode)>,WTF::DefaultHash<WTF::UUID>,WTF::HashTraits<WTF::UUID>,WTF::HashTraits<WTF::CompletionHandler<void ()(WebCore::TextAnimationRunMode)>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::take@<X0>(uint64_t *result@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  if (*result)
  {
    if ((*result + 32 * *(*result - 4)) != a2)
    {
LABEL_3:
      v3 = a2[2];
      a2[2] = 0;
      *a3 = v3;
      return WTF::HashTable<WTF::UUID,WTF::KeyValuePair<WTF::UUID,WTF::CompletionHandler<void ()(WebCore::TextAnimationRunMode)>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::UUID,WTF::CompletionHandler<void ()(WebCore::TextAnimationRunMode)>>>,WTF::DefaultHash<WTF::UUID>,WTF::HashMap<WTF::UUID,WTF::CompletionHandler<void ()(WebCore::TextAnimationRunMode)>,WTF::DefaultHash<WTF::UUID>,WTF::HashTraits<WTF::UUID>,WTF::HashTraits<WTF::CompletionHandler<void ()(WebCore::TextAnimationRunMode)>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::UUID>,WTF::FastMalloc>::remove(result, a2);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  *a3 = 0;
  return result;
}

void sub_19DCED218(_Unwind_Exception *exception_object)
{
  *v1 = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t WTF::HashTable<WTF::UUID,WTF::KeyValuePair<WTF::UUID,WTF::CompletionHandler<void ()(WebCore::TextAnimationRunMode)>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::UUID,WTF::CompletionHandler<void ()(WebCore::TextAnimationRunMode)>>>,WTF::DefaultHash<WTF::UUID>,WTF::HashMap<WTF::UUID,WTF::CompletionHandler<void ()(WebCore::TextAnimationRunMode)>,WTF::DefaultHash<WTF::UUID>,WTF::HashTraits<WTF::UUID>,WTF::HashTraits<WTF::CompletionHandler<void ()(WebCore::TextAnimationRunMode)>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::UUID>,WTF::FastMalloc>::remove(uint64_t *a1, void *a2)
{
  result = a2[2];
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 1;
  if (result)
  {
    result = (*(*result + 8))(result);
  }

  v4 = *a1;
  v5 = vadd_s32(*(*a1 - 16), 0xFFFFFFFF00000001);
  *(v4 - 16) = v5;
  v6 = *(v4 - 4);
  if (6 * v5.i32[1] < v6 && v6 >= 9)
  {

    return WTF::HashTable<WTF::UUID,WTF::KeyValuePair<WTF::UUID,WTF::CompletionHandler<void ()(WebCore::TextAnimationRunMode)>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::UUID,WTF::CompletionHandler<void ()(WebCore::TextAnimationRunMode)>>>,WTF::DefaultHash<WTF::UUID>,WTF::HashMap<WTF::UUID,WTF::CompletionHandler<void ()(WebCore::TextAnimationRunMode)>,WTF::DefaultHash<WTF::UUID>,WTF::HashTraits<WTF::UUID>,WTF::HashTraits<WTF::CompletionHandler<void ()(WebCore::TextAnimationRunMode)>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::UUID>,WTF::FastMalloc>::rehash(a1, v6 >> 1, 0);
  }

  return result;
}

uint64_t WTF::HashTable<WTF::UUID,WTF::KeyValuePair<WTF::UUID,WTF::CompletionHandler<void ()(WebCore::TextAnimationRunMode)>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::UUID,WTF::CompletionHandler<void ()(WebCore::TextAnimationRunMode)>>>,WTF::DefaultHash<WTF::UUID>,WTF::HashMap<WTF::UUID,WTF::CompletionHandler<void ()(WebCore::TextAnimationRunMode)>,WTF::DefaultHash<WTF::UUID>,WTF::HashTraits<WTF::UUID>,WTF::HashTraits<WTF::CompletionHandler<void ()(WebCore::TextAnimationRunMode)>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::UUID>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WTF::UUID,WTF::CompletionHandler<void ()(WebCore::TextAnimationRunMode)>,WTF::DefaultHash<WTF::UUID>,WTF::HashTraits<WTF::UUID>,WTF::HashTraits<WTF::CompletionHandler<void ()(WebCore::TextAnimationRunMode)>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::UUID>>,(WTF::ShouldValidateKey)1,WTF::UUID>(uint64_t *a1, WTF::UUIDHash *this)
{
  v2 = *a1;
  if (!*a1)
  {
    return 0;
  }

  if (!(*this ^ 1 | *(this + 1)) || *this == 0)
  {
    __break(0xC471u);
    JUMPOUT(0x19DCED404);
  }

  v5 = *(v2 - 8);
  v6 = WTF::UUIDHash::hash(this, this);
  v7 = *this;
  v8 = *(this + 1);
  v9 = v6 & v5;
  v10 = (v2 + 32 * v9);
  v11 = *v10;
  v12 = v10[1];
  if (v12 == v8 && v11 == v7)
  {
    return v2 + 32 * v9;
  }

  v14 = 1;
  while (v11 | v12)
  {
    v9 = (v9 + v14) & v5;
    v15 = (v2 + 32 * v9);
    v11 = *v15;
    v12 = v15[1];
    v16 = v12 == v8 && v11 == v7;
    ++v14;
    if (v16)
    {
      return v2 + 32 * v9;
    }
  }

  if (*a1)
  {
    return *a1 + 32 * *(*a1 - 4);
  }

  else
  {
    return 0;
  }
}

uint64_t WTF::HashTable<WTF::UUID,WTF::KeyValuePair<WTF::UUID,WTF::CompletionHandler<void ()(std::optional<WebCore::TextIndicatorData>)>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::UUID,WTF::CompletionHandler<void ()(std::optional<WebCore::TextIndicatorData>)>>>,WTF::DefaultHash<WTF::UUID>,WTF::HashMap<WTF::UUID,WTF::CompletionHandler<void ()(std::optional<WebCore::TextIndicatorData>)>,WTF::DefaultHash<WTF::UUID>,WTF::HashTraits<WTF::UUID>,WTF::HashTraits<WTF::CompletionHandler<void ()(std::optional<WebCore::TextIndicatorData>)>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::UUID>,WTF::FastMalloc>::expand(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  if (*a1 && (v4 = *(v3 - 4)) != 0)
  {
    v5 = v4 << (6 * *(v3 - 12) >= (2 * v4));
  }

  else
  {
    v5 = 8;
  }

  return WTF::HashTable<WTF::UUID,WTF::KeyValuePair<WTF::UUID,WTF::CompletionHandler<void ()(std::optional<WebCore::TextIndicatorData>)>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::UUID,WTF::CompletionHandler<void ()(std::optional<WebCore::TextIndicatorData>)>>>,WTF::DefaultHash<WTF::UUID>,WTF::HashMap<WTF::UUID,WTF::CompletionHandler<void ()(std::optional<WebCore::TextIndicatorData>)>,WTF::DefaultHash<WTF::UUID>,WTF::HashTraits<WTF::UUID>,WTF::HashTraits<WTF::CompletionHandler<void ()(std::optional<WebCore::TextIndicatorData>)>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::UUID>,WTF::FastMalloc>::rehash(a1, v5, a2);
}

uint64_t WTF::HashMap<WTF::UUID,WTF::RefPtr<WebCore::TextIndicator,WTF::RawPtrTraits<WebCore::TextIndicator>,WTF::DefaultRefDerefTraits<WebCore::TextIndicator>>,WTF::DefaultHash<WTF::UUID>,WTF::HashTraits<WTF::UUID>,WTF::HashTraits<WTF::RefPtr<WebCore::TextIndicator,WTF::RawPtrTraits<WebCore::TextIndicator>,WTF::DefaultRefDerefTraits<WebCore::TextIndicator>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::UUID,WTF::RefPtr<WebCore::TextIndicator,WTF::RawPtrTraits<WebCore::TextIndicator>,WTF::DefaultRefDerefTraits<WebCore::TextIndicator>>,WTF::DefaultHash<WTF::UUID>,WTF::HashTraits<WTF::UUID>,WTF::HashTraits<WTF::RefPtr<WebCore::TextIndicator,WTF::RawPtrTraits<WebCore::TextIndicator>,WTF::DefaultRefDerefTraits<WebCore::TextIndicator>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::UUID>>,WTF::UUID>(uint64_t *a1, WTF::UUIDHash *this)
{
  if (!(*this ^ 1 | *(this + 1)) || *this == 0)
  {
    __break(0xC471u);
    JUMPOUT(0x19DCED528);
  }

  v2 = *a1;
  if (*a1)
  {
    v4 = *(v2 - 8);
    v5 = WTF::UUIDHash::hash(this, this);
    v6 = *this;
    v7 = *(this + 1);
    v8 = v5 & v4;
    v9 = (v2 + 32 * v8);
    v10 = *v9;
    v11 = v9[1];
    if (v11 == v7 && v10 == v6)
    {
      return *(v2 + 32 * v8 + 16);
    }

    v13 = 1;
    while (v10 | v11)
    {
      v8 = (v8 + v13) & v4;
      v14 = (v2 + 32 * v8);
      v10 = *v14;
      v11 = v14[1];
      v15 = v11 == v7 && v10 == v6;
      ++v13;
      if (v15)
      {
        return *(v2 + 32 * v8 + 16);
      }
    }
  }

  return 0;
}

uint64_t WebKit::AuxiliaryProcessProxy::sendWithAsyncReply<Messages::WebPage::CreateTextIndicatorForTextAnimationID,WTF::CompletionHandler<void ()(WTF::RefPtr<WebCore::TextIndicator,WTF::RawPtrTraits<WebCore::TextIndicator>,WTF::DefaultRefDerefTraits<WebCore::TextIndicator>> &&)>>(uint64_t a1, void *a2, uint64_t *a3, uint64_t a4, char a5, int a6)
{
  v12 = IPC::Encoder::operator new(0x238, a2);
  *v12 = 2485;
  *(v12 + 2) = 0;
  *(v12 + 3) = 0;
  *(v12 + 1) = a4;
  *(v12 + 68) = 0;
  *(v12 + 70) = 0;
  *(v12 + 69) = 0;
  IPC::Encoder::encodeHeader(v12);
  v26 = v12;
  v13 = *a2;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v12, *(*a2 + 8));
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v12, *v13);
  v14 = *a3;
  *a3 = 0;
  v15 = WTF::fastMalloc(0x10);
  *v15 = &unk_1F1103EA8;
  v15[1] = v14;
  if (WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
  {
    result = 141;
    __break(0xC471u);
  }

  else
  {
    IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
    v24[0] = v15;
    v24[1] = IdentifierInternal;
    v25 = 1;
    v18 = WebKit::AuxiliaryProcessProxy::sendMessage(a1, &v26, a5, v24, a6);
    if (v25 == 1)
    {
      v19 = v24[0];
      v24[0] = 0;
      if (v19)
      {
        (*(*v19 + 8))(v19);
      }
    }

    v20 = v26;
    v26 = 0;
    if (v20)
    {
      IPC::Encoder::~Encoder(v20, v17);
      bmalloc::api::tzoneFree(v22, v23);
    }

    if (v18)
    {
      return IdentifierInternal;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void sub_19DCED6E4(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, IPC::Encoder *a12)
{
  if (a11 == 1 && a9)
  {
    (*(*a9 + 8))(a9);
  }

  if (a12)
  {
    IPC::Encoder::~Encoder(a12, a2);
    bmalloc::api::tzoneFree(v13, v14);
  }

  _Unwind_Resume(exception_object);
}

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebPage::CreateTextIndicatorForTextAnimationID,WTF::CompletionHandler<void ()(WTF::RefPtr<WebCore::TextIndicator,WTF::RawPtrTraits<WebCore::TextIndicator>,WTF::DefaultRefDerefTraits<WebCore::TextIndicator>> &&)>>(WTF::CompletionHandler<void ()(WTF::RefPtr<WebCore::TextIndicator,WTF::RawPtrTraits<WebCore::TextIndicator>,WTF::DefaultRefDerefTraits<WebCore::TextIndicator>> &&)> &&,WTF::ThreadLikeAssertion)::{lambda(WTF::CompletionHandler<void ()(WTF::RefPtr<WebCore::TextIndicator,WTF::RawPtrTraits<WebCore::TextIndicator>,WTF::DefaultRefDerefTraits<WebCore::TextIndicator>> &&)>,IPC::Decoder)#1},void,WTF::CompletionHandler<void ()(WTF::RefPtr<WebCore::TextIndicator,WTF::RawPtrTraits<WebCore::TextIndicator>,WTF::DefaultRefDerefTraits<WebCore::TextIndicator>> &&)>,IPC::Decoder>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F1103EA8;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebPage::CreateTextIndicatorForTextAnimationID,WTF::CompletionHandler<void ()(WTF::RefPtr<WebCore::TextIndicator,WTF::RawPtrTraits<WebCore::TextIndicator>,WTF::DefaultRefDerefTraits<WebCore::TextIndicator>> &&)>>(WTF::CompletionHandler<void ()(WTF::RefPtr<WebCore::TextIndicator,WTF::RawPtrTraits<WebCore::TextIndicator>,WTF::DefaultRefDerefTraits<WebCore::TextIndicator>> &&)> &&,WTF::ThreadLikeAssertion)::{lambda(WTF::CompletionHandler<void ()(WTF::RefPtr<WebCore::TextIndicator,WTF::RawPtrTraits<WebCore::TextIndicator>,WTF::DefaultRefDerefTraits<WebCore::TextIndicator>> &&)>,IPC::Decoder)#1},void,WTF::CompletionHandler<void ()(WTF::RefPtr<WebCore::TextIndicator,WTF::RawPtrTraits<WebCore::TextIndicator>,WTF::DefaultRefDerefTraits<WebCore::TextIndicator>> &&)>,IPC::Decoder>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1103EA8;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

WebCore::TextIndicator *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebPage::CreateTextIndicatorForTextAnimationID,WTF::CompletionHandler<void ()(WTF::RefPtr<WebCore::TextIndicator,WTF::RawPtrTraits<WebCore::TextIndicator>,WTF::DefaultRefDerefTraits<WebCore::TextIndicator>> &&)>>(WTF::CompletionHandler<void ()(WTF::RefPtr<WebCore::TextIndicator,WTF::RawPtrTraits<WebCore::TextIndicator>,WTF::DefaultRefDerefTraits<WebCore::TextIndicator>> &&)> &&,WTF::ThreadLikeAssertion)::{lambda(WTF::CompletionHandler<void ()(WTF::RefPtr<WebCore::TextIndicator,WTF::RawPtrTraits<WebCore::TextIndicator>,WTF::DefaultRefDerefTraits<WebCore::TextIndicator>> &&)>,IPC::Decoder)#1},void,WTF::CompletionHandler<void ()(WTF::RefPtr<WebCore::TextIndicator,WTF::RawPtrTraits<WebCore::TextIndicator>,WTF::DefaultRefDerefTraits<WebCore::TextIndicator>> &&)>,IPC::Decoder>::call(uint64_t a1, uint64_t a2, WTF *a3)
{
  if (a3 && *a3 && (IPC::Decoder::decode<std::tuple<WTF::RefPtr<WebCore::TextIndicator,WTF::RawPtrTraits<WebCore::TextIndicator>,WTF::DefaultRefDerefTraits<WebCore::TextIndicator>>>>(&v5, a3), v6 == 1))
  {
    result = WTF::CompletionHandler<void ()(WTF::RefPtr<WebCore::TextIndicator,WTF::RawPtrTraits<WebCore::TextIndicator>,WTF::DefaultRefDerefTraits<WebCore::TextIndicator>> &&)>::operator()((a1 + 8));
    if (v6)
    {
      result = v5;
      v5 = 0;
      if (result)
      {
        return WTF::RefCounted<WebCore::TextIndicator>::deref(result);
      }
    }
  }

  else
  {

    return IPC::Connection::cancelReply<Messages::WebPage::CreateTextIndicatorForTextAnimationID,WTF::CompletionHandler<void ()(WTF::RefPtr<WebCore::TextIndicator,WTF::RawPtrTraits<WebCore::TextIndicator>,WTF::DefaultRefDerefTraits<WebCore::TextIndicator>> &&)>>((a1 + 8));
  }

  return result;
}

void sub_19DCED924(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, WebCore::TextIndicator *a9, char a10)
{
  if (a10 == 1)
  {
    if (a9)
    {
      WTF::RefCounted<WebCore::TextIndicator>::deref(a9);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_19DCED994(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WebCore::TextIndicator *a10)
{
  if (a10)
  {
    WTF::RefCounted<WebCore::TextIndicator>::deref(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t WebKit::AuxiliaryProcessProxy::sendWithAsyncReply<Messages::WebPage::UpdateUnderlyingTextVisibilityForTextAnimationID,WTF::CompletionHandler<void ()(void)>>(uint64_t a1, char *a2, uint64_t *a3, uint64_t a4, char a5, int a6)
{
  v12 = IPC::Encoder::operator new(0x238, a2);
  *v12 = 2848;
  *(v12 + 2) = 0;
  *(v12 + 3) = 0;
  *(v12 + 1) = a4;
  *(v12 + 68) = 0;
  *(v12 + 70) = 0;
  *(v12 + 69) = 0;
  IPC::Encoder::encodeHeader(v12);
  v26 = v12;
  v13 = *a2;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v12, *(*a2 + 8));
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v12, *v13);
  IPC::Encoder::operator<<<BOOL &>(v12, a2 + 8);
  v14 = *a3;
  *a3 = 0;
  v15 = WTF::fastMalloc(0x10);
  *v15 = &unk_1F1103ED0;
  v15[1] = v14;
  if (WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
  {
    result = 141;
    __break(0xC471u);
  }

  else
  {
    IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
    v24[0] = v15;
    v24[1] = IdentifierInternal;
    v25 = 1;
    v18 = WebKit::AuxiliaryProcessProxy::sendMessage(a1, &v26, a5, v24, a6);
    if (v25 == 1)
    {
      v19 = v24[0];
      v24[0] = 0;
      if (v19)
      {
        (*(*v19 + 8))(v19);
      }
    }

    v20 = v26;
    v26 = 0;
    if (v20)
    {
      IPC::Encoder::~Encoder(v20, v17);
      bmalloc::api::tzoneFree(v22, v23);
    }

    if (v18)
    {
      return IdentifierInternal;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void sub_19DCEDB58(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, IPC::Encoder *a12)
{
  if (a11 == 1 && a9)
  {
    (*(*a9 + 8))(a9);
  }

  if (a12)
  {
    IPC::Encoder::~Encoder(a12, a2);
    bmalloc::api::tzoneFree(v13, v14);
  }

  _Unwind_Resume(exception_object);
}

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebPage::UpdateUnderlyingTextVisibilityForTextAnimationID,WTF::CompletionHandler<void ()(void)>>(WTF::CompletionHandler<void ()(void)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F1103ED0;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebPage::UpdateUnderlyingTextVisibilityForTextAnimationID,WTF::CompletionHandler<void ()(void)>>(WTF::CompletionHandler<void ()(void)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1103ED0;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WebKit::AuxiliaryProcessProxy::send<Messages::WebPage::IntelligenceTextAnimationsDidComplete>(uint64_t a1, void *a2, uint64_t a3, char a4)
{
  v7 = IPC::Encoder::operator new(0x238, a2);
  *v7 = 2614;
  *(v7 + 2) = 0;
  *(v7 + 3) = 0;
  *(v7 + 1) = a3;
  *(v7 + 68) = 0;
  *(v7 + 70) = 0;
  *(v7 + 69) = 0;
  IPC::Encoder::encodeHeader(v7);
  v17 = v7;
  LOBYTE(v15) = 0;
  v16 = 0;
  v9 = WebKit::AuxiliaryProcessProxy::sendMessage(a1, &v17, a4, &v15, 1);
  if (v16 == 1)
  {
    v10 = v15;
    v15 = 0;
    if (v10)
    {
      (*(*v10 + 8))(v10);
    }
  }

  v11 = v17;
  v17 = 0;
  if (v11)
  {
    IPC::Encoder::~Encoder(v11, v8);
    bmalloc::api::tzoneFree(v13, v14);
  }

  return v9;
}

void sub_19DCEDDF8(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, IPC::Encoder *a12)
{
  if (a11 == 1 && a9)
  {
    (*(*a9 + 8))(a9);
  }

  if (a12)
  {
    IPC::Encoder::~Encoder(a12, a2);
    bmalloc::api::tzoneFree(v13, v14);
  }

  _Unwind_Resume(exception_object);
}

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebPage::CreateTextIndicatorForElementWithID,WTF::CompletionHandler<void ()(std::optional<WebCore::TextIndicatorData> &&)>>(WTF::CompletionHandler<void ()(std::optional<WebCore::TextIndicatorData> &&)> &&,WTF::ThreadLikeAssertion)::{lambda(WTF::CompletionHandler<void ()(std::optional<WebCore::TextIndicatorData> &&)>,IPC::Decoder)#1},void,WTF::CompletionHandler<void ()(std::optional<WebCore::TextIndicatorData> &&)>,IPC::Decoder>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F1103EF8;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebPage::CreateTextIndicatorForElementWithID,WTF::CompletionHandler<void ()(std::optional<WebCore::TextIndicatorData> &&)>>(WTF::CompletionHandler<void ()(std::optional<WebCore::TextIndicatorData> &&)> &&,WTF::ThreadLikeAssertion)::{lambda(WTF::CompletionHandler<void ()(std::optional<WebCore::TextIndicatorData> &&)>,IPC::Decoder)#1},void,WTF::CompletionHandler<void ()(std::optional<WebCore::TextIndicatorData> &&)>,IPC::Decoder>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1103EF8;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

WTF *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebPage::CreateTextIndicatorForElementWithID,WTF::CompletionHandler<void ()(std::optional<WebCore::TextIndicatorData> &&)>>(WTF::CompletionHandler<void ()(std::optional<WebCore::TextIndicatorData> &&)> &&,WTF::ThreadLikeAssertion)::{lambda(WTF::CompletionHandler<void ()(std::optional<WebCore::TextIndicatorData> &&)>,IPC::Decoder)#1},void,WTF::CompletionHandler<void ()(std::optional<WebCore::TextIndicatorData> &&)>,IPC::Decoder>::call(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (a3 && *a3)
  {
    IPC::ArgumentCoder<std::tuple<std::optional<WebCore::TextIndicatorData>>,void>::decode<IPC::Decoder>(a3, v15);
    if (v23 & 1) != 0 || (v11 = *a3, v12 = a3[1], *a3 = 0, a3[1] = 0, (v13 = a3[3]) != 0) && v12 && ((*(*v13 + 16))(v13, v11), (v23))
    {
      result = WTF::CompletionHandler<void ()(std::optional<WebCore::TextIndicatorData> &&)>::operator()((a1 + 8));
      if ((v23 & 1) != 0 && v22 == 1)
      {
        if ((v21 & 0x8000000000000) != 0)
        {
          v14 = (v21 & 0xFFFFFFFFFFFFLL);
          if (atomic_fetch_add((v21 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
          {
            atomic_store(1u, v14);
            WTF::fastFree(v14, v6);
          }
        }

        v7 = v20;
        v20 = 0;
        if (v7)
        {
          if (v7[4] == 1)
          {
            (*(*v7 + 8))(v7);
          }

          else
          {
            --v7[4];
          }
        }

        v8 = v19;
        v19 = 0;
        if (v8)
        {
          if (v8[4] == 1)
          {
            (*(*v8 + 8))(v8);
          }

          else
          {
            --v8[4];
          }
        }

        v9 = v18;
        v18 = 0;
        if (v9)
        {
          if (v9[4] == 1)
          {
            (*(*v9 + 8))(v9);
          }

          else
          {
            --v9[4];
          }
        }

        result = v16;
        if (v16)
        {
          v16 = 0;
          v17 = 0;
          return WTF::fastFree(result, v6);
        }
      }
    }

    else
    {
      return IPC::Connection::cancelReply<Messages::WebPage::CreateTextIndicatorForElementWithID,WTF::CompletionHandler<void ()(std::optional<WebCore::TextIndicatorData> &&)>>((a1 + 8));
    }
  }

  else
  {
    v10 = (a1 + 8);

    return IPC::Connection::cancelReply<Messages::WebPage::CreateTextIndicatorForElementWithID,WTF::CompletionHandler<void ()(std::optional<WebCore::TextIndicatorData> &&)>>(v10);
  }

  return result;
}

void sub_19DCEE12C(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, WTF *a16, int a17, uint64_t a18, _DWORD *a19, _DWORD *a20, _DWORD *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, int a28, __int16 a29, char a30, char a31)
{
  if (a29 == 1 && a27 == 1)
  {
    if ((a22 & 0x8000000000000) != 0)
    {
      v32 = (a22 & 0xFFFFFFFFFFFFLL);
      if (atomic_fetch_add((a22 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v32);
        WTF::fastFree(v32, a2);
      }
    }

    if (a21)
    {
      if (a21[4] == 1)
      {
        (*(*a21 + 8))(a21);
      }

      else
      {
        --a21[4];
      }
    }

    if (a20)
    {
      if (a20[4] == 1)
      {
        (*(*a20 + 8))(a20);
      }

      else
      {
        --a20[4];
      }
    }

    if (a19)
    {
      if (a19[4] == 1)
      {
        (*(*a19 + 8))(a19);
      }

      else
      {
        --a19[4];
      }
    }

    if (a16)
    {
      WTF::fastFree(a16, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

WTF *IPC::Connection::cancelReply<Messages::WebPage::CreateTextIndicatorForElementWithID,WTF::CompletionHandler<void ()(std::optional<WebCore::TextIndicatorData> &&)>>(uint64_t *a1)
{
  LOBYTE(v22[0]) = 0;
  v29 = 0;
  std::__optional_move_base<WebCore::TextIndicatorData,false>::__optional_move_base[abi:sn200100](&v14, v22);
  if (v29 == 1)
  {
    if ((v28 & 0x8000000000000) != 0)
    {
      v12 = (v28 & 0xFFFFFFFFFFFFLL);
      if (atomic_fetch_add((v28 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v12);
        WTF::fastFree(v12, v2);
      }
    }

    v3 = v27;
    v27 = 0;
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

    v4 = v26;
    v26 = 0;
    if (v4)
    {
      if (v4[4] == 1)
      {
        (*(*v4 + 8))(v4);
      }

      else
      {
        --v4[4];
      }
    }

    v5 = v25;
    v25 = 0;
    if (v5)
    {
      if (v5[4] == 1)
      {
        (*(*v5 + 8))(v5);
      }

      else
      {
        --v5[4];
      }
    }

    v6 = v23;
    if (v23)
    {
      v23 = 0;
      v24 = 0;
      WTF::fastFree(v6, v2);
    }
  }

  result = WTF::CompletionHandler<void ()(std::optional<WebCore::TextIndicatorData> &&)>::operator()(a1);
  if (v21 == 1)
  {
    if ((v20 & 0x8000000000000) != 0)
    {
      v13 = (v20 & 0xFFFFFFFFFFFFLL);
      if (atomic_fetch_add((v20 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v13);
        WTF::fastFree(v13, v8);
      }
    }

    v9 = v19;
    v19 = 0;
    if (v9)
    {
      if (v9[4] == 1)
      {
        (*(*v9 + 8))(v9);
      }

      else
      {
        --v9[4];
      }
    }

    v10 = v18;
    v18 = 0;
    if (v10)
    {
      if (v10[4] == 1)
      {
        (*(*v10 + 8))(v10);
      }

      else
      {
        --v10[4];
      }
    }

    v11 = v17;
    v17 = 0;
    if (v11)
    {
      if (v11[4] == 1)
      {
        (*(*v11 + 8))(v11);
      }

      else
      {
        --v11[4];
      }
    }

    result = v15;
    if (v15)
    {
      v15 = 0;
      v16 = 0;
      return WTF::fastFree(result, v8);
    }
  }

  return result;
}

void sub_19DCEE4CC(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, WTF *a15, int a16, uint64_t a17, _DWORD *a18, _DWORD *a19, _DWORD *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, WTF *a33, int a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, char a44)
{
  if (a26 == 1)
  {
    if ((a21 & 0x8000000000000) != 0)
    {
      v45 = (a21 & 0xFFFFFFFFFFFFLL);
      if (atomic_fetch_add((a21 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v45);
        WTF::fastFree(v45, a2);
      }
    }

    if (a20)
    {
      if (a20[4] == 1)
      {
        (*(*a20 + 8))(a20);
      }

      else
      {
        --a20[4];
      }
    }

    if (a19)
    {
      if (a19[4] == 1)
      {
        (*(*a19 + 8))(a19);
      }

      else
      {
        --a19[4];
      }
    }

    if (a18)
    {
      if (a18[4] == 1)
      {
        (*(*a18 + 8))(a18);
      }

      else
      {
        --a18[4];
      }
    }

    if (a15)
    {
      WTF::fastFree(a15, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

WTF *IPC::Decoder::decode<std::optional<WebCore::TextIndicatorData>>@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = IPC::ArgumentCoder<std::optional<WebCore::TextIndicatorData>,void>::decode<IPC::Decoder>(a1, a2);
  if ((*(a2 + 144) & 1) == 0)
  {
    v5 = *a1;
    v6 = a1[1];
    *a1 = 0;
    a1[1] = 0;
    result = a1[3];
    if (result)
    {
      v7 = v6 == 0;
    }

    else
    {
      v7 = 1;
    }

    if (!v7)
    {
      return (*(*result + 16))(result, v5);
    }
  }

  return result;
}

void sub_19DCEE774(_Unwind_Exception *exception_object, void *a2)
{
  if (*(v2 + 144) == 1 && *(v2 + 136) == 1)
  {
    WebCore::TextIndicatorData::~TextIndicatorData(v2, a2);
  }

  _Unwind_Resume(exception_object);
}

void *WTF::Detail::CallableWrapper<WebKit::WebPageProxy::setTextIndicatorFromFrame(WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::TextIndicatorData const&,WebCore::TextIndicatorLifetime)::$_0,void,std::optional<WebCore::FloatRect>>::~CallableWrapper(void *a1, void *a2)
{
  *a1 = &unk_1F1103F20;
  WebCore::TextIndicatorData::~TextIndicatorData((a1 + 2), a2);
  v4 = a1[1];
  a1[1] = 0;
  if (v4 && atomic_fetch_add(v4, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v4);
    WTF::fastFree(v4, v3);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebPageProxy::setTextIndicatorFromFrame(WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::TextIndicatorData const&,WebCore::TextIndicatorLifetime)::$_0,void,std::optional<WebCore::FloatRect>>::~CallableWrapper(void *a1, void *a2)
{
  *a1 = &unk_1F1103F20;
  WebCore::TextIndicatorData::~TextIndicatorData((a1 + 2), a2);
  v4 = a1[1];
  a1[1] = 0;
  if (v4 && atomic_fetch_add(v4, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v4);
    WTF::fastFree(v4, v3);
  }

  return WTF::fastFree(a1, v3);
}

void WTF::Detail::CallableWrapper<WebKit::WebPageProxy::setTextIndicatorFromFrame(WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::TextIndicatorData const&,WebCore::TextIndicatorLifetime)::$_0,void,std::optional<WebCore::FloatRect>>::call(uint64_t a1, __int128 *a2)
{
  v31 = *a2;
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = *(v2 + 8);
    if (v3)
    {
      v5 = *(a2 + 16);
      CFRetain(*(v3 - 8));
      if (v5)
      {
        *(a1 + 32) = v31;
        v6 = *(v3 + 40);
        if (v6)
        {
          v7 = *(v6 + 8);
          if (v7)
          {
            v8 = *(a1 + 152);
            (*(*v7 + 1712))(v7);
            v9 = (*(*v7 + 784))(v7);
            v10 = v9;
            if (v9)
            {
              v11 = v9;
            }

            [*(v3 + 304) removeFromSuperlayer];
            v12 = *(v3 + 304);
            *(v3 + 304) = 0;
            if (v12)
            {
            }

            WTF::RunLoop::TimerBase::stop((v3 + 248));
            WebCore::TextIndicator::create(&v32, (a1 + 16), v13);
            v14 = v32;
            *&v32 = 0;
            v15 = *(v3 + 296);
            *(v3 + 296) = v14;
            if (v15)
            {
              WTF::RefCounted<WebCore::TextIndicator>::deref(v15);
              v30 = v32;
              *&v32 = 0;
              if (v30)
              {
                WTF::RefCounted<WebCore::TextIndicator>::deref(v30);
              }
            }

            v32 = *(*(v3 + 296) + 24);
            WebCore::FloatRect::operator CGRect();
            v17 = v16;
            v19 = v18;
            v21 = v20;
            v23 = v22;
            v24 = objc_alloc(MEMORY[0x1E69E21C8]);
            v25 = *(v3 + 296);
            if (v25)
            {
              ++*v25;
            }

            *&v32 = v25;
            v26 = [v24 initWithFrame:&v32 textIndicator:v17 margin:v19 offset:{v21, v23, *MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8), *MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)}];
            v27 = *(v3 + 304);
            *(v3 + 304) = v26;
            if (v27)
            {
            }

            v28 = v32;
            *&v32 = 0;
            if (v28)
            {
              WTF::RefCounted<WebCore::TextIndicator>::deref(v28);
            }

            [v10 addSublayer:*(v3 + 304)];
            if (*(*(v3 + 296) + 112))
            {
              [*(v3 + 304) present];
            }

            if (v8 == 1)
            {
              WTF::RunLoop::TimerBase::start();
            }

            if (v10)
            {
            }

            (*(*v7 + 1720))(v7);
          }
        }
      }

      v29 = *(v3 - 8);

      CFRelease(v29);
    }
  }
}

void sub_19DCEEB1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, WebCore::TextIndicator *a11)
{
  if (a11)
  {
    WTF::RefCounted<WebCore::TextIndicator>::deref(a11);
  }

  if (v12)
  {
  }

  (*(*v11 + 1720))(v11);
  CFRelease(*(v13 - 8));
  _Unwind_Resume(a1);
}

void *WTF::Detail::CallableWrapper<WebKit::WebPageProxy::updateTextIndicatorFromFrame(WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::TextIndicatorData const&)::$_0,void,std::optional<WebCore::FloatRect>>::~CallableWrapper(void *a1, void *a2)
{
  *a1 = &unk_1F1103F48;
  WebCore::TextIndicatorData::~TextIndicatorData((a1 + 2), a2);
  v4 = a1[1];
  a1[1] = 0;
  if (v4 && atomic_fetch_add(v4, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v4);
    WTF::fastFree(v4, v3);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebPageProxy::updateTextIndicatorFromFrame(WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::TextIndicatorData const&)::$_0,void,std::optional<WebCore::FloatRect>>::~CallableWrapper(void *a1, void *a2)
{
  *a1 = &unk_1F1103F48;
  WebCore::TextIndicatorData::~TextIndicatorData((a1 + 2), a2);
  v4 = a1[1];
  a1[1] = 0;
  if (v4 && atomic_fetch_add(v4, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v4);
    WTF::fastFree(v4, v3);
  }

  return WTF::fastFree(a1, v3);
}

void WTF::Detail::CallableWrapper<WebKit::WebPageProxy::updateTextIndicatorFromFrame(WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::TextIndicatorData const&)::$_0,void,std::optional<WebCore::FloatRect>>::call(uint64_t a1, __int128 *a2)
{
  v21 = *a2;
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = *(v2 + 8);
    if (v3)
    {
      v5 = *(a2 + 16);
      CFRetain(*(v3 - 8));
      if (v5)
      {
        *(a1 + 32) = v21;
        v6 = *(v3 + 296);
        if (v6)
        {
          v7 = *(v3 + 304);
          if (v7)
          {
            v24 = *(v6 + 24);
            WebCore::FloatRect::operator CGRect();
            v9 = v8;
            v11 = v10;
            v13 = v12;
            v15 = v14;
            WebCore::TextIndicator::create(&v22, (a1 + 16), v16);
            v17 = v22;
            v22 = 0;
            v23 = v17;
            [v7 updateWithFrame:&v23 textIndicator:1 margin:v9 offset:v11 updatingIndicator:{v13, v15, *MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8), *MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)}];
            v18 = v23;
            v23 = 0;
            if (v18)
            {
              WTF::RefCounted<WebCore::TextIndicator>::deref(v18);
            }

            v19 = v22;
            v22 = 0;
            if (v19)
            {
              WTF::RefCounted<WebCore::TextIndicator>::deref(v19);
            }
          }
        }
      }

      v20 = *(v3 - 8);

      CFRelease(v20);
    }
  }
}

void sub_19DCEEDC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, WebCore::TextIndicator *a11, WebCore::TextIndicator *a12)
{
  if (a12)
  {
    WTF::RefCounted<WebCore::TextIndicator>::deref(a12);
  }

  if (a11)
  {
    WTF::RefCounted<WebCore::TextIndicator>::deref(a11);
  }

  CFRelease(*(v12 - 8));
  _Unwind_Resume(a1);
}

uint64_t WebKit::AuxiliaryProcessProxy::sendWithAsyncReply<Messages::WebPage::StartPlayingPredominantVideo,WTF::CompletionHandler<void ()(BOOL)>>(uint64_t a1, void *a2, uint64_t *a3, uint64_t a4, char a5, int a6)
{
  v11 = IPC::Encoder::operator new(0x238, a2);
  *v11 = 2804;
  *(v11 + 2) = 0;
  *(v11 + 3) = 0;
  *(v11 + 1) = a4;
  *(v11 + 68) = 0;
  *(v11 + 70) = 0;
  *(v11 + 69) = 0;
  IPC::Encoder::encodeHeader(v11);
  v24 = v11;
  v12 = *a3;
  *a3 = 0;
  v13 = WTF::fastMalloc(0x10);
  *v13 = &unk_1F1103F70;
  v13[1] = v12;
  if (WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
  {
    result = 141;
    __break(0xC471u);
  }

  else
  {
    IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
    v22[0] = v13;
    v22[1] = IdentifierInternal;
    v23 = 1;
    v16 = WebKit::AuxiliaryProcessProxy::sendMessage(a1, &v24, a5, v22, a6);
    if (v23 == 1)
    {
      v17 = v22[0];
      v22[0] = 0;
      if (v17)
      {
        (*(*v17 + 8))(v17);
      }
    }

    v18 = v24;
    v24 = 0;
    if (v18)
    {
      IPC::Encoder::~Encoder(v18, v15);
      bmalloc::api::tzoneFree(v20, v21);
    }

    if (v16)
    {
      return IdentifierInternal;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void sub_19DCEEF78(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, IPC::Encoder *a12)
{
  if (a11 == 1 && a9)
  {
    (*(*a9 + 8))(a9);
  }

  if (a12)
  {
    IPC::Encoder::~Encoder(a12, a2);
    bmalloc::api::tzoneFree(v13, v14);
  }

  _Unwind_Resume(exception_object);
}

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebPage::StartPlayingPredominantVideo,WTF::CompletionHandler<void ()(BOOL)>>(WTF::CompletionHandler<void ()(BOOL)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F1103F70;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebPage::StartPlayingPredominantVideo,WTF::CompletionHandler<void ()(BOOL)>>(WTF::CompletionHandler<void ()(BOOL)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1103F70;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebPage::StartPlayingPredominantVideo,WTF::CompletionHandler<void ()(BOOL)>>(WTF::CompletionHandler<void ()(BOOL)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::call(uint64_t a1, uint64_t a2, IPC::Decoder *a3)
{
  if (a3 && *a3)
  {
    v4 = IPC::Decoder::decode<std::tuple<BOOL>>(a3);
    v5 = *&v4 & ((v4 & 0x100) >> 8);
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return WTF::CompletionHandler<void ()(BOOL)>::operator()((a1 + 8), v5);
}

void *WTF::Detail::CallableWrapper<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebPage::GetInformationFromImageData,WebKit::WebPageProxy::getInformationFromImageData(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<std::pair<WTF::String,WTF::Vector<WebCore::IntSize,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::String::ImageDecodingError> &&)> &&)::$_0>(WebKit::WebPageProxy::getInformationFromImageData(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<std::pair<WTF::String,WTF::Vector<WebCore::IntSize,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::String::ImageDecodingError> &&)> &&)::$_0 &&,WTF::ThreadLikeAssertion)::{lambda(WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<std::pair<WTF::String,WTF::Vector<WebCore::IntSize,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::String::ImageDecodingError> &&)> &,WebKit::WebPageProxy::getInformationFromImageData(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<std::pair<WTF::String,WTF::Vector<WebCore::IntSize,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::String::ImageDecodingError> &&)> &&)::$_0)#1},void,WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<std::pair<WTF::String,WTF::Vector<WebCore::IntSize,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::String::ImageDecodingError> &&)> &,WebKit::WebPageProxy::getInformationFromImageData(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<std::pair<WTF::String,WTF::Vector<WebCore::IntSize,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::String::ImageDecodingError> &&)> &&)::$_0>::~CallableWrapper(void *a1)
{
  *a1 = &unk_1F1103F98;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = a1[1];
  a1[1] = 0;
  if (v3)
  {
    v4 = *v3;
    v5 = *(v3 + 8) - 1;
    *(v3 + 8) = v5;
    if (v4)
    {
      v6 = *v4;
      if (!*v4)
      {
        return a1;
      }

      v7 = *(v3 + 16);
      *(v3 + 16) = 1;
      (*(*v6 + 16))(v6, 0);
      *(v3 + 16) = v7;
      if (*v3)
      {
        return a1;
      }

      v5 = *(v3 + 8);
    }

    if (!v5)
    {
      MEMORY[0x19EB14CF0](v3, 0x1020C40545B2139);
    }
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebPage::GetInformationFromImageData,WebKit::WebPageProxy::getInformationFromImageData(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<std::pair<WTF::String,WTF::Vector<WebCore::IntSize,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::String::ImageDecodingError> &&)> &&)::$_0>(WebKit::WebPageProxy::getInformationFromImageData(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<std::pair<WTF::String,WTF::Vector<WebCore::IntSize,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::String::ImageDecodingError> &&)> &&)::$_0 &&,WTF::ThreadLikeAssertion)::{lambda(WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<std::pair<WTF::String,WTF::Vector<WebCore::IntSize,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::String::ImageDecodingError> &&)> &,WebKit::WebPageProxy::getInformationFromImageData(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<std::pair<WTF::String,WTF::Vector<WebCore::IntSize,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::String::ImageDecodingError> &&)> &&)::$_0)#1},void,WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<std::pair<WTF::String,WTF::Vector<WebCore::IntSize,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::String::ImageDecodingError> &&)> &,WebKit::WebPageProxy::getInformationFromImageData(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<std::pair<WTF::String,WTF::Vector<WebCore::IntSize,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::String::ImageDecodingError> &&)> &&)::$_0>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F1103F98;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 1);
  *(this + 1) = 0;
  if (v4)
  {
    v5 = *v4;
    v6 = *(v4 + 8) - 1;
    *(v4 + 8) = v6;
    if (v5)
    {
      v7 = *v5;
      if (!*v5)
      {
        goto LABEL_10;
      }

      v8 = *(v4 + 16);
      *(v4 + 16) = 1;
      (*(*v7 + 16))(v7, 0);
      *(v4 + 16) = v8;
      if (*v4)
      {
        goto LABEL_10;
      }

      v6 = *(v4 + 8);
    }

    if (!v6)
    {
      MEMORY[0x19EB14CF0](v4, 0x1020C40545B2139);
    }
  }

LABEL_10:

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebPage::GetInformationFromImageData,WebKit::WebPageProxy::getInformationFromImageData(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<std::pair<WTF::String,WTF::Vector<WebCore::IntSize,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::String::ImageDecodingError> &&)> &&)::$_0>(WebKit::WebPageProxy::getInformationFromImageData(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<std::pair<WTF::String,WTF::Vector<WebCore::IntSize,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::String::ImageDecodingError> &&)> &&)::$_0 &&,WTF::ThreadLikeAssertion)::{lambda(WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<std::pair<WTF::String,WTF::Vector<WebCore::IntSize,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::String::ImageDecodingError> &&)> &,WebKit::WebPageProxy::getInformationFromImageData(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<std::pair<WTF::String,WTF::Vector<WebCore::IntSize,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::String::ImageDecodingError> &&)> &&)::$_0)#1},void,WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<std::pair<WTF::String,WTF::Vector<WebCore::IntSize,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::String::ImageDecodingError> &&)> &,WebKit::WebPageProxy::getInformationFromImageData(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<std::pair<WTF::String,WTF::Vector<WebCore::IntSize,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::String::ImageDecodingError> &&)> &&)::$_0>::call(uint64_t a1, uint64_t a2, IPC::Decoder *a3)
{
  if (a3)
  {
    v5 = *a3;
    if (*a3)
    {
      v6 = *(a3 + 1);
      v7 = *(a3 + 2);
      if (v6 > v7 - v5)
      {
        v8 = v7 + 1;
        *(a3 + 2) = v7 + 1;
        if (v7)
        {
          if (*v7 >= 2u)
          {
            goto LABEL_52;
          }

          if (*v7)
          {
            IPC::Decoder::decode<WTF::String>(a3, &v48);
            if (v49 == 1)
            {
              v9 = IPC::VectorArgumentCoder<false,WebCore::IntSize,0ul,WTF::CrashOnOverflow,16ul>::decode<IPC::Decoder>(a3, v46);
              if (v47 & 1) != 0 || (v10 = *a3, v19 = *(a3 + 1), *a3 = 0, *(a3 + 1) = 0, (v20 = *(a3 + 3)) != 0) && v19 && (v9 = (*(*v20 + 16))(v20, v10), (v47))
              {
                if (v49)
                {
                  v42 = v48;
                  v43 = v46[0];
                  v44 = v46[1];
                  v45 = 1;
                  std::pair<WTF::String,WTF::Vector<WebCore::IntSize,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>::pair[abi:sn200100](v39, &v42);
                  v40 = 0;
                  v41 = 1;
                  if (v45)
                  {
                    v13 = v43;
                    if (v43)
                    {
                      v43 = 0;
                      LODWORD(v44) = 0;
                      WTF::fastFree(v13, v12);
                    }

                    v14 = v42;
                    v42 = 0;
                    if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
                    {
                      WTF::StringImpl::destroy(v14, v12);
                    }
                  }

LABEL_16:
                  if (v41)
                  {
                    goto LABEL_25;
                  }

                  goto LABEL_54;
                }

                __break(1u);
                goto LABEL_36;
              }

              if (v49)
              {
                v21 = v48;
                v48 = 0;
                if (v21)
                {
                  if (atomic_fetch_add_explicit(v21, 0xFFFFFFFE, memory_order_relaxed) == 2)
                  {
                    WTF::StringImpl::destroy(v21, v10);
                  }
                }
              }
            }

            v10 = *a3;
            v11 = *(a3 + 1);
            *a3 = 0;
            *(a3 + 1) = 0;
            v9 = *(a3 + 3);
            if (!v9)
            {
LABEL_34:
              LOBYTE(v39[0]) = 0;
              v41 = 0;
              goto LABEL_16;
            }

LABEL_36:
            if (v11)
            {
              (*(*v9 + 16))(v9, v10);
            }

            goto LABEL_34;
          }

          if (v6 <= v8 - v5)
          {
            v24 = 0;
            v25 = 0;
            *a3 = 0;
            *(a3 + 1) = 0;
            v26 = *(a3 + 3);
            if (v26)
            {
              (*(*v26 + 16))(v26);
              v25 = *a3;
              v24 = *(a3 + 1);
            }
          }

          else
          {
            *(a3 + 2) = v7 + 2;
            if (v7 != -1)
            {
              if (*v8 < 3u)
              {
                LOBYTE(v39[0]) = *v8;
                v40 = 1;
                v41 = 1;
                goto LABEL_25;
              }

              goto LABEL_52;
            }

            v24 = v6;
            v25 = v5;
          }

          *a3 = 0;
          *(a3 + 1) = 0;
          v27 = *(a3 + 3);
          if (v27 && v24)
          {
            (*(*v27 + 16))(v27, v25, v24);
            goto LABEL_74;
          }

          goto LABEL_50;
        }

LABEL_44:
        *a3 = 0;
        *(a3 + 1) = 0;
        v23 = *(a3 + 3);
        if (v23)
        {
          if (v6)
          {
            (*(*v23 + 16))(v23, v5);
LABEL_74:
            v5 = *a3;
            v6 = *(a3 + 1);
LABEL_52:
            *a3 = 0;
            *(a3 + 1) = 0;
            v28 = *(a3 + 3);
            if (v28 && v6)
            {
              (*(*v28 + 16))(v28, v5);
            }

            LOBYTE(v39[0]) = 0;
            v41 = 0;
LABEL_54:
            v29 = *a3;
            v30 = *(a3 + 1);
            *a3 = 0;
            *(a3 + 1) = 0;
            v31 = *(a3 + 3);
            if (!v31 || !v30 || ((*(*v31 + 16))(v31, v29), (v41 & 1) == 0))
            {
              v18 = 0;
              v37[0] = 0;
              v38 = 0;
              goto LABEL_56;
            }

LABEL_25:
            mpark::detail::move_constructor<mpark::detail::traits<std::pair<WTF::String,WTF::Vector<WebCore::IntSize,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WebCore::ImageDecodingError>,(mpark::detail::Trait)1>::move_constructor(v37, v39);
            v38 = 1;
            if ((v41 & 1) == 0)
            {
LABEL_58:
              mpark::detail::move_constructor<mpark::detail::traits<std::pair<WTF::String,WTF::Vector<WebCore::IntSize,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WebCore::ImageDecodingError>,(mpark::detail::Trait)1>::move_constructor(v39, v37);
              WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<std::pair<WTF::String,WTF::Vector<WebCore::IntSize,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WebCore::ImageDecodingError> &&)>::operator()((a1 + 16));
              result = std::experimental::fundamentals_v3::expected<std::pair<WTF::String,WTF::Vector<WebCore::IntSize,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WebCore::ImageDecodingError>::~expected(v39, v35);
              if (v38)
              {
                return std::experimental::fundamentals_v3::expected<std::pair<WTF::String,WTF::Vector<WebCore::IntSize,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WebCore::ImageDecodingError>::~expected(v37, v36);
              }

              return result;
            }

            std::experimental::fundamentals_v3::expected<std::pair<WTF::String,WTF::Vector<WebCore::IntSize,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WebCore::ImageDecodingError>::~expected(v39, v17);
            v18 = v38;
            if (v38)
            {
LABEL_57:
              if ((v18 & 1) == 0)
              {
                return IPC::Connection::cancelReply<Messages::WebPage::GetInformationFromImageData,WebKit::WebPageProxy::getInformationFromImageData(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<std::pair<WTF::String,WTF::Vector<WebCore::IntSize,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::String::ImageDecodingError> &&)> &&)::$_0>(a1 + 8);
              }

              goto LABEL_58;
            }

LABEL_56:
            v32 = *a3;
            v33 = *(a3 + 1);
            *a3 = 0;
            *(a3 + 1) = 0;
            v34 = *(a3 + 3);
            if (v34 && v33)
            {
              (*(*v34 + 16))(v34, v32);
              v18 = v38;
            }

            goto LABEL_57;
          }

LABEL_51:
          v5 = 0;
          goto LABEL_52;
        }

LABEL_50:
        v6 = 0;
        goto LABEL_51;
      }

      *a3 = 0;
      *(a3 + 1) = 0;
      v22 = *(a3 + 3);
      if (v22)
      {
        if (v6)
        {
          (*(*v22 + 16))(v22);
          v5 = *a3;
          v6 = *(a3 + 1);
          goto LABEL_44;
        }
      }

      else
      {
        v6 = 0;
      }

      v5 = 0;
      goto LABEL_44;
    }
  }

  v15 = a1 + 8;

  return IPC::Connection::cancelReply<Messages::WebPage::GetInformationFromImageData,WebKit::WebPageProxy::getInformationFromImageData(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<std::pair<WTF::String,WTF::Vector<WebCore::IntSize,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::String::ImageDecodingError> &&)> &&)::$_0>(v15);
}

void sub_19DCEF808(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, WTF *a24, int a25, int a26, char a27)
{
  if (*(v27 - 56) == 1)
  {
    v29 = *(v27 - 72);
    if (v29)
    {
      *(v27 - 72) = 0;
      *(v27 - 64) = 0;
      WTF::fastFree(v29, a2);
    }
  }

  if (*(v27 - 40) == 1)
  {
    v30 = *(v27 - 48);
    *(v27 - 48) = 0;
    if (v30)
    {
      if (atomic_fetch_add_explicit(v30, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v30, a2);
      }
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t IPC::Connection::cancelReply<Messages::WebPage::GetInformationFromImageData,WebKit::WebPageProxy::getInformationFromImageData(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<std::pair<WTF::String,WTF::Vector<WebCore::IntSize,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::String::ImageDecodingError> &&)> &&)::$_0>(uint64_t a1)
{
  v7[0] = 0;
  v7[24] = 1;
  mpark::detail::move_constructor<mpark::detail::traits<std::pair<WTF::String,WTF::Vector<WebCore::IntSize,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WebCore::ImageDecodingError>,(mpark::detail::Trait)1>::move_constructor(v6, v7);
  std::experimental::fundamentals_v3::expected<std::pair<WTF::String,WTF::Vector<WebCore::IntSize,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WebCore::ImageDecodingError>::~expected(v7, v2);
  mpark::detail::move_constructor<mpark::detail::traits<std::pair<WTF::String,WTF::Vector<WebCore::IntSize,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WebCore::ImageDecodingError>,(mpark::detail::Trait)1>::move_constructor(v7, v6);
  WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<std::pair<WTF::String,WTF::Vector<WebCore::IntSize,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WebCore::ImageDecodingError> &&)>::operator()((a1 + 8));
  std::experimental::fundamentals_v3::expected<std::pair<WTF::String,WTF::Vector<WebCore::IntSize,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WebCore::ImageDecodingError>::~expected(v7, v3);
  return std::experimental::fundamentals_v3::expected<std::pair<WTF::String,WTF::Vector<WebCore::IntSize,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WebCore::ImageDecodingError>::~expected(v6, v4);
}

void sub_19DCEF958(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  std::experimental::fundamentals_v3::expected<std::pair<WTF::String,WTF::Vector<WebCore::IntSize,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WebCore::ImageDecodingError>::~expected(&a13, a2);
  std::experimental::fundamentals_v3::expected<std::pair<WTF::String,WTF::Vector<WebCore::IntSize,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WebCore::ImageDecodingError>::~expected(&a9, v14);
  _Unwind_Resume(a1);
}

uint64_t WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<std::pair<WTF::String,WTF::Vector<WebCore::IntSize,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WebCore::ImageDecodingError> &&)>::operator()(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  (*(*v1 + 16))(v1);
  v2 = *(*v1 + 8);

  return v2(v1);
}

uint64_t WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = *(a2 + 12);
  *result = 0;
  *(result + 8) = 0;
  *(result + 12) = v3;
  if (!v3)
  {
    return v2;
  }

  if (!(v3 >> 30))
  {
    v5 = WTF::fastMalloc((4 * v3));
    *(v2 + 8) = v3;
    *v2 = v5;
    memcpy(v5, *a2, 4 * *(a2 + 12));
    return v2;
  }

  __break(0xC471u);
  return result;
}

void *WTF::Detail::CallableWrapper<WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebPage::CreateBitmapsFromImageData,WebKit::WebPageProxy::createIconDataFromImageData(WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>> &&,WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,WTF::CompletionHandler<void ()(WTF::RefPtr<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>> &&)> &&)::$_0>(WebKit::WebPageProxy::createIconDataFromImageData(WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>> &&,WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,WTF::CompletionHandler<void ()(WTF::RefPtr<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>> &&)> &&)::$_0 &&,WTF::ThreadLikeAssertion)::{lambda(WTF::CompletionHandler<void ()(WTF::RefPtr<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>> &&)> &,WebKit::WebPageProxy::createIconDataFromImageData(WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>> &&,WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,WTF::CompletionHandler<void ()(WTF::RefPtr<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>> &&)> &&)::$_0)#1},void,WTF::CompletionHandler<void ()(WTF::RefPtr<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>> &&)> &,WebKit::WebPageProxy::createIconDataFromImageData(WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>> &&,WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,WTF::CompletionHandler<void ()(WTF::RefPtr<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>> &&)> &&)::$_0>::~CallableWrapper(void *a1)
{
  *a1 = &unk_1F1103FC0;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = a1[1];
  a1[1] = 0;
  if (v3)
  {
    v4 = *v3;
    v5 = *(v3 + 8) - 1;
    *(v3 + 8) = v5;
    if (v4)
    {
      v6 = *v4;
      if (!*v4)
      {
        return a1;
      }

      v7 = *(v3 + 16);
      *(v3 + 16) = 1;
      (*(*v6 + 16))(v6, 0);
      *(v3 + 16) = v7;
      if (*v3)
      {
        return a1;
      }

      v5 = *(v3 + 8);
    }

    if (!v5)
    {
      MEMORY[0x19EB14CF0](v3, 0x1020C40545B2139);
    }
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebPage::CreateBitmapsFromImageData,WebKit::WebPageProxy::createIconDataFromImageData(WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>> &&,WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,WTF::CompletionHandler<void ()(WTF::RefPtr<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>> &&)> &&)::$_0>(WebKit::WebPageProxy::createIconDataFromImageData(WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>> &&,WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,WTF::CompletionHandler<void ()(WTF::RefPtr<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>> &&)> &&)::$_0 &&,WTF::ThreadLikeAssertion)::{lambda(WTF::CompletionHandler<void ()(WTF::RefPtr<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>> &&)> &,WebKit::WebPageProxy::createIconDataFromImageData(WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>> &&,WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,WTF::CompletionHandler<void ()(WTF::RefPtr<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>> &&)> &&)::$_0)#1},void,WTF::CompletionHandler<void ()(WTF::RefPtr<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>> &&)> &,WebKit::WebPageProxy::createIconDataFromImageData(WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>> &&,WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,WTF::CompletionHandler<void ()(WTF::RefPtr<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>> &&)> &&)::$_0>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F1103FC0;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 1);
  *(this + 1) = 0;
  if (v4)
  {
    v5 = *v4;
    v6 = *(v4 + 8) - 1;
    *(v4 + 8) = v6;
    if (v5)
    {
      v7 = *v5;
      if (!*v5)
      {
        goto LABEL_10;
      }

      v8 = *(v4 + 16);
      *(v4 + 16) = 1;
      (*(*v7 + 16))(v7, 0);
      *(v4 + 16) = v8;
      if (*v4)
      {
        goto LABEL_10;
      }

      v6 = *(v4 + 8);
    }

    if (!v6)
    {
      MEMORY[0x19EB14CF0](v4, 0x1020C40545B2139);
    }
  }

LABEL_10:

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebPage::CreateBitmapsFromImageData,WebKit::WebPageProxy::createIconDataFromImageData(WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>> &&,WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,WTF::CompletionHandler<void ()(WTF::RefPtr<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>> &&)> &&)::$_0>(WebKit::WebPageProxy::createIconDataFromImageData(WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>> &&,WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,WTF::CompletionHandler<void ()(WTF::RefPtr<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>> &&)> &&)::$_0 &&,WTF::ThreadLikeAssertion)::{lambda(WTF::CompletionHandler<void ()(WTF::RefPtr<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>> &&)> &,WebKit::WebPageProxy::createIconDataFromImageData(WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>> &&,WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,WTF::CompletionHandler<void ()(WTF::RefPtr<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>> &&)> &&)::$_0)#1},void,WTF::CompletionHandler<void ()(WTF::RefPtr<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>> &&)> &,WebKit::WebPageProxy::createIconDataFromImageData(WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>> &&,WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,WTF::CompletionHandler<void ()(WTF::RefPtr<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>> &&)> &&)::$_0>::call(uint64_t a1, void *a2, uint64_t *a3, __n128 a4)
{
  if (!a3 || (a2 = *a3) == 0)
  {
    v22 = a1 + 8;

    return IPC::Connection::cancelReply<Messages::WebPage::CreateBitmapsFromImageData,WebKit::WebPageProxy::createIconDataFromImageData(WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>> &&,WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,WTF::CompletionHandler<void ()(WTF::RefPtr<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>> &&)> &&)::$_0>(v22, a2, a4);
  }

  v6 = a3[1];
  v7 = ((a3[2] + 7) & 0xFFFFFFFFFFFFFFF8);
  if (v6 < v7 - a2 || v6 - (v7 - a2) <= 7)
  {
    *a3 = 0;
    a3[1] = 0;
    v36 = a3[3];
    if (v36)
    {
      if (v6)
      {
        (*(*v36 + 16))(v36);
        a2 = *a3;
        v6 = a3[1];
        goto LABEL_52;
      }
    }

    else
    {
      v6 = 0;
    }

    a2 = 0;
LABEL_52:
    *a3 = 0;
    a3[1] = 0;
    v37 = a3[3];
    if (v37 && v6)
    {
      (*(*v37 + 16))(v37, a2);
    }

LABEL_34:
    v31 = *a3;
    v32 = a3[1];
    *a3 = 0;
    a3[1] = 0;
    v33 = a3[3];
    if (v33)
    {
      if (v32)
      {
        (*(*v33 + 16))(v33, v31);
        v34 = *a3;
        v32 = a3[1];
        v33 = a3[3];
        goto LABEL_37;
      }
    }

    else
    {
      v32 = 0;
    }

    v34 = 0;
LABEL_37:
    *a3 = 0;
    a3[1] = 0;
    if (v33)
    {
      if (v32)
      {
        (*(*v33 + 16))(v33, v34);
      }
    }

    return IPC::Connection::cancelReply<Messages::WebPage::CreateBitmapsFromImageData,WebKit::WebPageProxy::createIconDataFromImageData(WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>> &&,WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,WTF::CompletionHandler<void ()(WTF::RefPtr<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>> &&)> &&)::$_0>(a1 + 8, v34, a4);
  }

  a3[2] = (v7 + 8);
  if (!v7)
  {
    goto LABEL_52;
  }

  v9 = *v7;
  v45 = 0uLL;
  if (v9 < 0x20000)
  {
    if (!v9)
    {
      goto LABEL_20;
    }

    v45.n128_u32[2] = v9;
    v45.n128_u64[0] = WTF::fastMalloc((8 * v9));
    while (1)
    {
      IPC::Decoder::decode<WTF::Ref<WebCore::ShareableBitmap,WTF::RawPtrTraits<WebCore::ShareableBitmap>,WTF::DefaultRefDerefTraits<WebCore::ShareableBitmap>>>(&v43, a3);
      if ((v44 & 1) == 0)
      {
        goto LABEL_33;
      }

      v10 = v45.n128_u32[3];
      if (v45.n128_u32[3] != v45.n128_u32[2])
      {
        break;
      }

      v11 = WTF::Vector<WTF::Ref<WebCore::ApplePayError,WTF::RawPtrTraits<WebCore::ApplePayError>,WTF::DefaultRefDerefTraits<WebCore::ApplePayError>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v45, v45.n128_u32[3] + 1, &v43);
      v12 = v45.n128_u32[3];
      v13 = v45.n128_u32[3] + 1;
      v14 = v45.n128_u64[0];
      v15 = *v11;
      *v11 = 0;
      *(v14 + 8 * v12) = v15;
      v45.n128_u32[3] = v13;
      if (v44)
      {
        goto LABEL_17;
      }

LABEL_19:
      if (!--v9)
      {
        goto LABEL_20;
      }
    }

    v16 = v43;
    v43 = 0;
    *(v45.n128_u64[0] + 8 * v45.n128_u32[3]) = v16;
    v45.n128_u32[3] = v10 + 1;
LABEL_17:
    v17 = v43;
    v43 = 0;
    if (v17)
    {
      WTF::ThreadSafeRefCounted<WebCore::ShareableBitmap,(WTF::DestructionThread)0>::deref(v17, a2);
    }

    goto LABEL_19;
  }

  do
  {
    IPC::Decoder::decode<WTF::Ref<WebCore::ShareableBitmap,WTF::RawPtrTraits<WebCore::ShareableBitmap>,WTF::DefaultRefDerefTraits<WebCore::ShareableBitmap>>>(&v43, a3);
    if ((v44 & 1) == 0)
    {
LABEL_33:
      WTF::Vector<WTF::Ref<WebCore::ShareableBitmap,WTF::RawPtrTraits<WebCore::ShareableBitmap>,WTF::DefaultRefDerefTraits<WebCore::ShareableBitmap>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v45, a2);
      goto LABEL_34;
    }

    v23 = v45.n128_u32[3];
    if (v45.n128_u32[3] == v45.n128_u32[2])
    {
      v24 = WTF::Vector<WTF::Ref<WebCore::ApplePayError,WTF::RawPtrTraits<WebCore::ApplePayError>,WTF::DefaultRefDerefTraits<WebCore::ApplePayError>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v45, v45.n128_u32[3] + 1, &v43);
      v25 = v45.n128_u32[3];
      v26 = v45.n128_u32[3] + 1;
      v27 = v45.n128_u64[0];
      v28 = *v24;
      *v24 = 0;
      *(v27 + 8 * v25) = v28;
      v45.n128_u32[3] = v26;
      if ((v44 & 1) == 0)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v29 = v43;
      v43 = 0;
      *(v45.n128_u64[0] + 8 * v45.n128_u32[3]) = v29;
      v45.n128_u32[3] = v23 + 1;
    }

    v30 = v43;
    v43 = 0;
    if (v30)
    {
      WTF::ThreadSafeRefCounted<WebCore::ShareableBitmap,(WTF::DestructionThread)0>::deref(v30, a2);
    }

LABEL_31:
    --v9;
  }

  while (v9);
  if (v45.n128_u32[2] > v45.n128_u32[3])
  {
    v35 = v45.n128_u64[0];
    if (v45.n128_u32[3])
    {
      v45.n128_u32[2] = v45.n128_u32[3];
      v45.n128_u64[0] = WTF::fastRealloc(v45.n128_u64[0], (8 * v45.n128_u32[3]));
    }

    else if (v45.n128_u64[0])
    {
      v45.n128_u64[0] = 0;
      v45.n128_u32[2] = 0;
      WTF::fastFree(v35, a2);
    }
  }

LABEL_20:
  a4.n128_u64[0] = 0;
  v18 = v45;
  v38 = a4;
  v45 = a4;
  v42 = 1;
  WTF::Vector<WTF::Ref<WebCore::ShareableBitmap,WTF::RawPtrTraits<WebCore::ShareableBitmap>,WTF::DefaultRefDerefTraits<WebCore::ShareableBitmap>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v45, a2);
  v41 = v38;
  v39 = v18;
  WTF::Vector<WTF::Ref<WebCore::ShareableBitmap,WTF::RawPtrTraits<WebCore::ShareableBitmap>,WTF::DefaultRefDerefTraits<WebCore::ShareableBitmap>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v41, v19);
  v40 = 1;
  result = std::apply[abi:sn200100]<WebKit::WebPageProxy::createIconDataFromImageData(WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>> &&,WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,WTF::CompletionHandler<void ()(WTF::RefPtr<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>> &&)> &&)::$_0,std::tuple<WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>> &&<WTF::Ref<WebCore::ShareableBitmap,WTF::RawPtrTraits<WTF::CompletionHandler<void ()(WTF::RefPtr<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>> &&)> &&>,WTF::DefaultRefDerefTraits<WTF::CompletionHandler<void ()(WTF::RefPtr<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>> &&)> &&>>,0ul,WTF::Vector,16ul,WTF::CrashOnOverflow>>>(a1 + 8, &v39);
  if (v40)
  {
    return WTF::Vector<WTF::Ref<WebCore::ShareableBitmap,WTF::RawPtrTraits<WebCore::ShareableBitmap>,WTF::DefaultRefDerefTraits<WebCore::ShareableBitmap>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v39, v21);
  }

  return result;
}

void sub_19DCF0040(_Unwind_Exception *a1, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, WTF *a17, char a18)
{
  if (a18 == 1)
  {
    if (a17)
    {
      WTF::ThreadSafeRefCounted<WebCore::ShareableBitmap,(WTF::DestructionThread)0>::deref(a17, a2);
    }
  }

  WTF::Vector<WTF::Ref<WebCore::ShareableBitmap,WTF::RawPtrTraits<WebCore::ShareableBitmap>,WTF::DefaultRefDerefTraits<WebCore::ShareableBitmap>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v18 - 64, a2);
  _Unwind_Resume(a1);
}

uint64_t IPC::Connection::cancelReply<Messages::WebPage::CreateBitmapsFromImageData,WebKit::WebPageProxy::createIconDataFromImageData(WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>> &&,WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,WTF::CompletionHandler<void ()(WTF::RefPtr<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>> &&)> &&)::$_0>(uint64_t a1, void *a2, __n128 a3)
{
  a3.n128_u64[0] = 0;
  v6 = a3;
  v7 = a3;
  WTF::Vector<WTF::Ref<WebCore::ShareableBitmap,WTF::RawPtrTraits<WebCore::ShareableBitmap>,WTF::DefaultRefDerefTraits<WebCore::ShareableBitmap>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v7, a2);
  std::apply[abi:sn200100]<WebKit::WebPageProxy::createIconDataFromImageData(WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>> &&,WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,WTF::CompletionHandler<void ()(WTF::RefPtr<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>> &&)> &&)::$_0,std::tuple<WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>> &&<WTF::Ref<WebCore::ShareableBitmap,WTF::RawPtrTraits<WTF::CompletionHandler<void ()(WTF::RefPtr<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>> &&)> &&>,WTF::DefaultRefDerefTraits<WTF::CompletionHandler<void ()(WTF::RefPtr<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>> &&)> &&>>,0ul,WTF::Vector,16ul,WTF::CrashOnOverflow>>>(a1, &v6);
  return WTF::Vector<WTF::Ref<WebCore::ShareableBitmap,WTF::RawPtrTraits<WebCore::ShareableBitmap>,WTF::DefaultRefDerefTraits<WebCore::ShareableBitmap>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v6, v4);
}

uint64_t std::apply[abi:sn200100]<WebKit::WebPageProxy::createIconDataFromImageData(WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>> &&,WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,WTF::CompletionHandler<void ()(WTF::RefPtr<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>> &&)> &&)::$_0,std::tuple<WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>> &&<WTF::Ref<WebCore::ShareableBitmap,WTF::RawPtrTraits<WTF::CompletionHandler<void ()(WTF::RefPtr<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>> &&)> &&>,WTF::DefaultRefDerefTraits<WTF::CompletionHandler<void ()(WTF::RefPtr<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>> &&)> &&>>,0ul,WTF::Vector,16ul,WTF::CrashOnOverflow>>>(uint64_t a1, uint64_t *a2)
{
  v8 = *a2;
  v3 = *(a2 + 2);
  v4 = *(a2 + 3);
  *a2 = 0;
  a2[1] = 0;
  v9 = v3;
  v10 = v4;
  if (v4)
  {
    WebCore::createIconDataFromBitmaps();
    WTF::CompletionHandler<void ()(WTF::RefPtr<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>> &&)>::operator()((a1 + 8));
  }

  else
  {
    v11 = 0;
    WTF::CompletionHandler<void ()(WTF::RefPtr<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>> &&)>::operator()((a1 + 8));
  }

  v6 = v11;
  v11 = 0;
  if (v6 && atomic_fetch_add(v6 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v6 + 2);
    (*(*v6 + 8))(v6);
  }

  return WTF::Vector<WTF::Ref<WebCore::ShareableBitmap,WTF::RawPtrTraits<WebCore::ShareableBitmap>,WTF::DefaultRefDerefTraits<WebCore::ShareableBitmap>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v8, v5);
}

void sub_19DCF01C0(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, unsigned int *a12)
{
  v13 = a12;
  a12 = 0;
  if (v13)
  {
    if (atomic_fetch_add(v13 + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v13 + 2);
      (*(*v13 + 8))(v13);
    }
  }

  WTF::Vector<WTF::Ref<WebCore::ShareableBitmap,WTF::RawPtrTraits<WebCore::ShareableBitmap>,WTF::DefaultRefDerefTraits<WebCore::ShareableBitmap>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&a10, a2);
  _Unwind_Resume(a1);
}

void IPC::Decoder::decode<WTF::Ref<WebCore::ShareableBitmap,WTF::RawPtrTraits<WebCore::ShareableBitmap>,WTF::DefaultRefDerefTraits<WebCore::ShareableBitmap>>>(_BYTE *a1, uint64_t *a2)
{
  IPC::ArgumentCoder<WebCore::ShareableBitmap,void>::decode(a2, a1);
  if ((a1[8] & 1) == 0)
  {
    v4 = *a2;
    v5 = a2[1];
    *a2 = 0;
    a2[1] = 0;
    v6 = a2[3];
    if (v6)
    {
      v7 = v5 == 0;
    }

    else
    {
      v7 = 1;
    }

    if (!v7)
    {
      (*(*v6 + 16))(v6, v4);
    }
  }
}

void sub_19DCF02A0(_Unwind_Exception *exception_object, void *a2)
{
  if (*(v2 + 8) == 1)
  {
    v4 = *v2;
    *v2 = 0;
    if (v4)
    {
      WTF::ThreadSafeRefCounted<WebCore::ShareableBitmap,(WTF::DestructionThread)0>::deref(v4, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t WTF::Vector<WTF::Ref<WebCore::ShareableBitmap,WTF::RawPtrTraits<WebCore::ShareableBitmap>,WTF::DefaultRefDerefTraits<WebCore::ShareableBitmap>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, void *a2)
{
  v3 = *(a1 + 12);
  if (v3)
  {
    v4 = *a1;
    v5 = 8 * v3;
    do
    {
      v6 = *v4;
      *v4 = 0;
      if (v6)
      {
        WTF::ThreadSafeRefCounted<WebCore::ShareableBitmap,(WTF::DestructionThread)0>::deref(v6, a2);
      }

      ++v4;
      v5 -= 8;
    }

    while (v5);
  }

  v7 = *a1;
  if (*a1)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    WTF::fastFree(v7, a2);
  }

  return a1;
}

uint64_t WTF::CompletionHandler<void ()(WTF::RefPtr<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>> &&)>::operator()(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  (*(*v1 + 16))(v1);
  v2 = *(*v1 + 8);

  return v2(v1);
}

void *WTF::Detail::CallableWrapper<std::optional<WebCore::FloatSize><void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebPage::DecodeImageData,WebKit::WebPageProxy::decodeImageData(WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>> &&,std::optional<WebCore::FloatSize>,WTF::CompletionHandler<void ()(WTF::RefPtr<WebCore::ShareableBitmap,WTF::RawPtrTraits<WTF::RefPtr>,WTF::DefaultRefDerefTraits<WTF::RefPtr>> &&)> &&)::$_0>(WebKit::WebPageProxy::decodeImageData(WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>> &&,std::optional<WebCore::FloatSize>,WTF::CompletionHandler<void ()(WTF::RefPtr<WebCore::ShareableBitmap,WTF::RawPtrTraits<WTF::RefPtr>,WTF::DefaultRefDerefTraits<WTF::RefPtr>> &&)> &&)::$_0 &&,WTF::ThreadLikeAssertion)::{lambda(WTF::CompletionHandler<void ()(WTF::RefPtr<WebCore::ShareableBitmap,WTF::RawPtrTraits<WTF::RefPtr>,WTF::DefaultRefDerefTraits<WTF::RefPtr>> &&)> &,WebKit::WebPageProxy::decodeImageData(WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>> &&,std::optional<WebCore::FloatSize>,WTF::CompletionHandler<void ()(WTF::RefPtr<WebCore::ShareableBitmap,WTF::RawPtrTraits<WTF::RefPtr>,WTF::DefaultRefDerefTraits<WTF::RefPtr>> &&)> &&)::$_0)#1},void,WTF::CompletionHandler<void ()(WTF::RefPtr<WebCore::ShareableBitmap,WTF::RawPtrTraits<WTF::RefPtr>,WTF::DefaultRefDerefTraits<WTF::RefPtr>> &&)> &,WebKit::WebPageProxy::decodeImageData(WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>> &&,std::optional<WebCore::FloatSize>,WTF::CompletionHandler<void ()(WTF::RefPtr<WebCore::ShareableBitmap,WTF::RawPtrTraits<WTF::RefPtr>,WTF::DefaultRefDerefTraits<WTF::RefPtr>> &&)> &&)::$_0>::~CallableWrapper(void *a1)
{
  *a1 = &unk_1F1103FE8;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = a1[1];
  a1[1] = 0;
  if (v3)
  {
    v4 = *v3;
    v5 = *(v3 + 8) - 1;
    *(v3 + 8) = v5;
    if (v4)
    {
      v6 = *v4;
      if (!*v4)
      {
        return a1;
      }

      v7 = *(v3 + 16);
      *(v3 + 16) = 1;
      (*(*v6 + 16))(v6, 0);
      *(v3 + 16) = v7;
      if (*v3)
      {
        return a1;
      }

      v5 = *(v3 + 8);
    }

    if (!v5)
    {
      MEMORY[0x19EB14CF0](v3, 0x1020C40545B2139);
    }
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<std::optional<WebCore::FloatSize><void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebPage::DecodeImageData,WebKit::WebPageProxy::decodeImageData(WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>> &&,std::optional<WebCore::FloatSize>,WTF::CompletionHandler<void ()(WTF::RefPtr<WebCore::ShareableBitmap,WTF::RawPtrTraits<WTF::RefPtr>,WTF::DefaultRefDerefTraits<WTF::RefPtr>> &&)> &&)::$_0>(WebKit::WebPageProxy::decodeImageData(WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>> &&,std::optional<WebCore::FloatSize>,WTF::CompletionHandler<void ()(WTF::RefPtr<WebCore::ShareableBitmap,WTF::RawPtrTraits<WTF::RefPtr>,WTF::DefaultRefDerefTraits<WTF::RefPtr>> &&)> &&)::$_0 &&,WTF::ThreadLikeAssertion)::{lambda(WTF::CompletionHandler<void ()(WTF::RefPtr<WebCore::ShareableBitmap,WTF::RawPtrTraits<WTF::RefPtr>,WTF::DefaultRefDerefTraits<WTF::RefPtr>> &&)> &,WebKit::WebPageProxy::decodeImageData(WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>> &&,std::optional<WebCore::FloatSize>,WTF::CompletionHandler<void ()(WTF::RefPtr<WebCore::ShareableBitmap,WTF::RawPtrTraits<WTF::RefPtr>,WTF::DefaultRefDerefTraits<WTF::RefPtr>> &&)> &&)::$_0)#1},void,WTF::CompletionHandler<void ()(WTF::RefPtr<WebCore::ShareableBitmap,WTF::RawPtrTraits<WTF::RefPtr>,WTF::DefaultRefDerefTraits<WTF::RefPtr>> &&)> &,WebKit::WebPageProxy::decodeImageData(WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>> &&,std::optional<WebCore::FloatSize>,WTF::CompletionHandler<void ()(WTF::RefPtr<WebCore::ShareableBitmap,WTF::RawPtrTraits<WTF::RefPtr>,WTF::DefaultRefDerefTraits<WTF::RefPtr>> &&)> &&)::$_0>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F1103FE8;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 1);
  *(this + 1) = 0;
  if (v4)
  {
    v5 = *v4;
    v6 = *(v4 + 8) - 1;
    *(v4 + 8) = v6;
    if (v5)
    {
      v7 = *v5;
      if (!*v5)
      {
        goto LABEL_10;
      }

      v8 = *(v4 + 16);
      *(v4 + 16) = 1;
      (*(*v7 + 16))(v7, 0);
      *(v4 + 16) = v8;
      if (*v4)
      {
        goto LABEL_10;
      }

      v6 = *(v4 + 8);
    }

    if (!v6)
    {
      MEMORY[0x19EB14CF0](v4, 0x1020C40545B2139);
    }
  }

LABEL_10:

  return WTF::fastFree(this, a2);
}

WTF *WTF::Detail::CallableWrapper<std::optional<WebCore::FloatSize><void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebPage::DecodeImageData,WebKit::WebPageProxy::decodeImageData(WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>> &&,std::optional<WebCore::FloatSize>,WTF::CompletionHandler<void ()(WTF::RefPtr<WebCore::ShareableBitmap,WTF::RawPtrTraits<WTF::RefPtr>,WTF::DefaultRefDerefTraits<WTF::RefPtr>> &&)> &&)::$_0>(WebKit::WebPageProxy::decodeImageData(WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>> &&,std::optional<WebCore::FloatSize>,WTF::CompletionHandler<void ()(WTF::RefPtr<WebCore::ShareableBitmap,WTF::RawPtrTraits<WTF::RefPtr>,WTF::DefaultRefDerefTraits<WTF::RefPtr>> &&)> &&)::$_0 &&,WTF::ThreadLikeAssertion)::{lambda(WTF::CompletionHandler<void ()(WTF::RefPtr<WebCore::ShareableBitmap,WTF::RawPtrTraits<WTF::RefPtr>,WTF::DefaultRefDerefTraits<WTF::RefPtr>> &&)> &,WebKit::WebPageProxy::decodeImageData(WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>> &&,std::optional<WebCore::FloatSize>,WTF::CompletionHandler<void ()(WTF::RefPtr<WebCore::ShareableBitmap,WTF::RawPtrTraits<WTF::RefPtr>,WTF::DefaultRefDerefTraits<WTF::RefPtr>> &&)> &&)::$_0)#1},void,WTF::CompletionHandler<void ()(WTF::RefPtr<WebCore::ShareableBitmap,WTF::RawPtrTraits<WTF::RefPtr>,WTF::DefaultRefDerefTraits<WTF::RefPtr>> &&)> &,WebKit::WebPageProxy::decodeImageData(WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>> &&,std::optional<WebCore::FloatSize>,WTF::CompletionHandler<void ()(WTF::RefPtr<WebCore::ShareableBitmap,WTF::RawPtrTraits<WTF::RefPtr>,WTF::DefaultRefDerefTraits<WTF::RefPtr>> &&)> &&)::$_0>::call(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (a3 && *a3)
  {
    IPC::Decoder::decode<WTF::RefPtr<WebCore::ShareableBitmap,WTF::RawPtrTraits<WebCore::ShareableBitmap>,WTF::DefaultRefDerefTraits<WebCore::ShareableBitmap>>>(a3, &v11);
    if (v12)
    {
      WTF::CompletionHandler<void ()(WTF::RefPtr<WebCore::ShareableBitmap,WTF::RawPtrTraits<WebCore::ShareableBitmap>,WTF::DefaultRefDerefTraits<WebCore::ShareableBitmap>> &&)>::operator()((a1 + 16));
      result = v11;
      v11 = 0;
      if (result)
      {
        return WTF::ThreadSafeRefCounted<WebCore::ShareableBitmap,(WTF::DestructionThread)0>::deref(result, v5);
      }
    }

    else
    {
      v8 = *a3;
      v9 = a3[1];
      *a3 = 0;
      a3[1] = 0;
      v10 = a3[3];
      if (v10 && v9)
      {
        (*(*v10 + 16))(v10, v8);
      }

      return IPC::Connection::cancelReply<Messages::WebPage::DecodeImageData,WebKit::WebPageProxy::decodeImageData(WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>> &&,std::optional<WebCore::FloatSize>,WTF::CompletionHandler<void ()(WTF::RefPtr<WebCore::ShareableBitmap,WTF::RawPtrTraits<WTF::RefPtr>,WTF::DefaultRefDerefTraits<WTF::RefPtr>> &&)> &&)::$_0>(a1 + 8);
    }
  }

  else
  {
    v7 = a1 + 8;

    return IPC::Connection::cancelReply<Messages::WebPage::DecodeImageData,WebKit::WebPageProxy::decodeImageData(WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>> &&,std::optional<WebCore::FloatSize>,WTF::CompletionHandler<void ()(WTF::RefPtr<WebCore::ShareableBitmap,WTF::RawPtrTraits<WTF::RefPtr>,WTF::DefaultRefDerefTraits<WTF::RefPtr>> &&)> &&)::$_0>(v7);
  }

  return result;
}

void sub_19DCF06E4(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF *a9)
{
  if (a9)
  {
    WTF::ThreadSafeRefCounted<WebCore::ShareableBitmap,(WTF::DestructionThread)0>::deref(a9, a2);
  }

  _Unwind_Resume(exception_object);
}

void sub_19DCF0744(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF *a10)
{
  if (a10)
  {
    WTF::ThreadSafeRefCounted<WebCore::ShareableBitmap,(WTF::DestructionThread)0>::deref(a10, a2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t WTF::CompletionHandler<void ()(WTF::RefPtr<WebCore::ShareableBitmap,WTF::RawPtrTraits<WebCore::ShareableBitmap>,WTF::DefaultRefDerefTraits<WebCore::ShareableBitmap>> &&)>::operator()(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  (*(*v1 + 16))(v1);
  v2 = *(*v1 + 8);

  return v2(v1);
}

uint64_t WTF::Detail::CallableWrapper<WTF::ThreadSafeRefCounted<WebKit::WebPageProxy::getWebArchiveData(WTF::CompletionHandler<void ()(API::Data *)> &&)::WebArchvieCallbackAggregator,(WTF::DestructionThread)2>::deref(void)::{lambda(void)#1},void>::call(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  if (v2)
  {
    if (v2[2])
    {
      WebKit::WebPageProxy::getWebArchiveData(WTF::CompletionHandler<void ()(API::Data *)> &&)::WebArchvieCallbackAggregator::completeFrameArchive(&v7, v2, v2[1]);
      v3 = v2[2];
      v2[2] = 0;
      (*(*v3 + 16))(v3, &v7);
      (*(*v3 + 8))(v3);
      v4 = v7;
      v7 = 0;
      if (v4)
      {
        if (v4[2] == 1)
        {
          (*(*v4 + 8))(v4);
        }

        else
        {
          --v4[2];
        }
      }
    }

    v5 = v2[3];
    if (v5)
    {
      WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::LegacyWebArchive,WTF::RawPtrTraits<WebCore::LegacyWebArchive>,WTF::DefaultRefDerefTraits<WebCore::LegacyWebArchive>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::LegacyWebArchive,WTF::RawPtrTraits<WebCore::LegacyWebArchive>,WTF::DefaultRefDerefTraits<WebCore::LegacyWebArchive>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::LegacyWebArchive,WTF::RawPtrTraits<WebCore::LegacyWebArchive>,WTF::DefaultRefDerefTraits<WebCore::LegacyWebArchive>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebCore::LegacyWebArchive,WTF::RawPtrTraits<WebCore::LegacyWebArchive>,WTF::DefaultRefDerefTraits<WebCore::LegacyWebArchive>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::deallocateTable(v5, a2);
    }

    v6 = v2[2];
    v2[2] = 0;
    if (v6)
    {
      (*(*v6 + 8))(v6);
    }

    return WTF::fastFree(v2, a2);
  }

  return result;
}

void sub_19DCF0944(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, _DWORD *a10)
{
  v12 = v11;
  (*(*v12 + 8))(v12);
  if (a10)
  {
    if (a10[2] == 1)
    {
      (*(*a10 + 8))(a10);
    }

    else
    {
      --a10[2];
    }
  }

  v15 = *(v10 + 24);
  if (v15)
  {
    WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::LegacyWebArchive,WTF::RawPtrTraits<WebCore::LegacyWebArchive>,WTF::DefaultRefDerefTraits<WebCore::LegacyWebArchive>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::LegacyWebArchive,WTF::RawPtrTraits<WebCore::LegacyWebArchive>,WTF::DefaultRefDerefTraits<WebCore::LegacyWebArchive>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::LegacyWebArchive,WTF::RawPtrTraits<WebCore::LegacyWebArchive>,WTF::DefaultRefDerefTraits<WebCore::LegacyWebArchive>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebCore::LegacyWebArchive,WTF::RawPtrTraits<WebCore::LegacyWebArchive>,WTF::DefaultRefDerefTraits<WebCore::LegacyWebArchive>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::deallocateTable(v15, v14);
  }

  v16 = *(v10 + 16);
  *(v10 + 16) = 0;
  if (v16)
  {
    (*(*v16 + 8))(v16);
  }

  _Unwind_Resume(a1);
}

uint64_t WebKit::WebPageProxy::getWebArchiveData(WTF::CompletionHandler<void ()(API::Data *)> &&)::WebArchvieCallbackAggregator::completeFrameArchive(void *a1, uint64_t a2, uint64_t a3)
{
  result = a2 + 24;
  v5 = *(a2 + 24);
  if (!v5)
  {
    goto LABEL_11;
  }

  if (a3 == -1 || !a3)
  {
    __break(0xC471u);
    JUMPOUT(0x19DCF0C78);
  }

  v7 = *(v5 - 8);
  v8 = (~(a3 << 32) + a3) ^ ((~(a3 << 32) + a3) >> 22);
  v9 = 9 * ((v8 + ~(v8 << 13)) ^ ((v8 + ~(v8 << 13)) >> 8));
  v10 = (v9 ^ (v9 >> 15)) + ~((v9 ^ (v9 >> 15)) << 27);
  v11 = v7 & ((v10 >> 31) ^ v10);
  v12 = *(v5 + 16 * v11);
  if (v12 != a3)
  {
    v13 = 1;
    while (v12)
    {
      v11 = (v11 + v13) & v7;
      v12 = *(v5 + 16 * v11);
      ++v13;
      if (v12 == a3)
      {
        goto LABEL_10;
      }
    }

    v11 = *(v5 - 4);
  }

LABEL_10:
  if (v11 == *(v5 - 4))
  {
LABEL_11:
    *a1 = 0;
    return result;
  }

  v14 = (v5 + 16 * v11);
  v15 = v14[1];
  if (v15)
  {
    v14[1] = 0;
    v5 = *result;
    *a1 = v15;
    if (!v5)
    {
      goto LABEL_18;
    }
  }

  else
  {
    *a1 = 0;
  }

  v5 += 16 * *(v5 - 4);
  if (v5 != v14)
  {
LABEL_18:
    if (v5 != v14)
    {
      *v14 = -1;
      v14[1] = 0;
      v16 = *result;
      v17 = vadd_s32(*(*result - 16), 0xFFFFFFFF00000001);
      *(v16 - 16) = v17;
      v18 = *(v16 - 4);
      if (6 * v17.i32[1] < v18 && v18 >= 9)
      {
        result = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::LegacyWebArchive,WTF::RawPtrTraits<WebCore::LegacyWebArchive>,WTF::DefaultRefDerefTraits<WebCore::LegacyWebArchive>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::LegacyWebArchive,WTF::RawPtrTraits<WebCore::LegacyWebArchive>,WTF::DefaultRefDerefTraits<WebCore::LegacyWebArchive>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::LegacyWebArchive,WTF::RawPtrTraits<WebCore::LegacyWebArchive>,WTF::DefaultRefDerefTraits<WebCore::LegacyWebArchive>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebCore::LegacyWebArchive,WTF::RawPtrTraits<WebCore::LegacyWebArchive>,WTF::DefaultRefDerefTraits<WebCore::LegacyWebArchive>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(result, v18 >> 1, 0);
      }
    }
  }

  if (v15)
  {
    result = WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(&v29, v15 + 56);
    v21 = v29;
    if (v31)
    {
      v22 = 8 * v31;
      do
      {
        result = WebKit::WebPageProxy::getWebArchiveData(WTF::CompletionHandler<void ()(API::Data *)> &&)::WebArchvieCallbackAggregator::completeFrameArchive(&v28, a2, *v21);
        v23 = v28;
        if (v28)
        {
          v27 = v28;
          v24 = *(v15 + 52);
          if (v24 == *(v15 + 48))
          {
            v25 = WTF::Vector<WTF::Ref<WebCore::ApplePayError,WTF::RawPtrTraits<WebCore::ApplePayError>,WTF::DefaultRefDerefTraits<WebCore::ApplePayError>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(v15 + 40, v24 + 1, &v27);
            v24 = *(v15 + 52);
            v26 = (*(v15 + 40) + 8 * v24);
            v23 = *v25;
          }

          else
          {
            v26 = (*(v15 + 40) + 8 * v24);
            v25 = &v27;
          }

          *v25 = 0;
          *v26 = v23;
          *(v15 + 52) = v24 + 1;
          result = v27;
          v27 = 0;
          if (result)
          {
            if (*(result + 8) == 1)
            {
              result = (*(*result + 8))(result);
            }

            else
            {
              --*(result + 8);
            }
          }
        }

        v21 = (v21 + 8);
        v22 -= 8;
      }

      while (v22);
      v21 = v29;
    }

    if (v21)
    {
      v29 = 0;
      v30 = 0;
      return WTF::fastFree(v21, v20);
    }
  }

  return result;
}

void sub_19DCF0C9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF *a11, int a12)
{
  *v12 = 0;
  if (v13)
  {
    if (v13[2] == 1)
    {
      (*(*v13 + 8))(v13);
    }

    else
    {
      --v13[2];
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t *WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::LegacyWebArchive,WTF::RawPtrTraits<WebCore::LegacyWebArchive>,WTF::DefaultRefDerefTraits<WebCore::LegacyWebArchive>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::LegacyWebArchive,WTF::RawPtrTraits<WebCore::LegacyWebArchive>,WTF::DefaultRefDerefTraits<WebCore::LegacyWebArchive>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::LegacyWebArchive,WTF::RawPtrTraits<WebCore::LegacyWebArchive>,WTF::DefaultRefDerefTraits<WebCore::LegacyWebArchive>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebCore::LegacyWebArchive,WTF::RawPtrTraits<WebCore::LegacyWebArchive>,WTF::DefaultRefDerefTraits<WebCore::LegacyWebArchive>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(uint64_t *a1, unsigned int a2, uint64_t *a3)
{
  v6 = *a1;
  if (*a1)
  {
    v7 = *(v6 - 4);
    v8 = *(v6 - 12);
  }

  else
  {
    v7 = 0;
    v8 = 0;
  }

  v9 = WTF::fastZeroedMalloc((16 * a2 + 16));
  *a1 = (v9 + 4);
  v9[2] = a2 - 1;
  v9[3] = a2;
  *v9 = 0;
  v9[1] = v8;
  if (v7)
  {
    v11 = 0;
    v12 = 0;
    do
    {
      v13 = (v6 + 16 * v11);
      v14 = *v13;
      if (*v13 != -1)
      {
        if (v14)
        {
          v16 = *a1;
          if (*a1)
          {
            v17 = *(v16 - 8);
          }

          else
          {
            v17 = 0;
          }

          v18 = (v14 + ~(v14 << 32)) ^ ((v14 + ~(v14 << 32)) >> 22);
          v19 = 9 * ((v18 + ~(v18 << 13)) ^ ((v18 + ~(v18 << 13)) >> 8));
          v20 = (v19 ^ (v19 >> 15)) + ~((v19 ^ (v19 >> 15)) << 27);
          v21 = v17 & ((v20 >> 31) ^ v20);
          v22 = 1;
          do
          {
            v23 = v21;
            v24 = *(v16 + 16 * v21);
            v21 = (v21 + v22++) & v17;
          }

          while (v24);
          v25 = (v16 + 16 * v23);
          v26 = v25[1];
          v25[1] = 0;
          if (v26)
          {
            if (v26[2] == 1)
            {
              (*(*v26 + 8))(v26);
            }

            else
            {
              --v26[2];
            }
          }

          *v25 = *v13;
          v27 = v13[1];
          v13[1] = 0;
          v25[1] = v27;
          v28 = v13[1];
          v13[1] = 0;
          if (v28)
          {
            if (v28[2] == 1)
            {
              (*(*v28 + 8))(v28);
            }

            else
            {
              --v28[2];
            }
          }

          if (v13 == a3)
          {
            v12 = v25;
          }
        }

        else
        {
          v15 = v13[1];
          v13[1] = 0;
          if (v15)
          {
            if (v15[2] == 1)
            {
              (*(*v15 + 8))(v15);
            }

            else
            {
              --v15[2];
            }
          }
        }
      }

      ++v11;
    }

    while (v11 != v7);
  }

  else
  {
    v12 = 0;
    result = 0;
    if (!v6)
    {
      return result;
    }
  }

  WTF::fastFree((v6 - 16), v10);
  return v12;
}

uint64_t WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::LegacyWebArchive,WTF::RawPtrTraits<WebCore::LegacyWebArchive>,WTF::DefaultRefDerefTraits<WebCore::LegacyWebArchive>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::LegacyWebArchive,WTF::RawPtrTraits<WebCore::LegacyWebArchive>,WTF::DefaultRefDerefTraits<WebCore::LegacyWebArchive>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::LegacyWebArchive,WTF::RawPtrTraits<WebCore::LegacyWebArchive>,WTF::DefaultRefDerefTraits<WebCore::LegacyWebArchive>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebCore::LegacyWebArchive,WTF::RawPtrTraits<WebCore::LegacyWebArchive>,WTF::DefaultRefDerefTraits<WebCore::LegacyWebArchive>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::deallocateTable(uint64_t a1, void *a2)
{
  v3 = *(a1 - 4);
  if (v3)
  {
    v4 = (a1 + 8);
    do
    {
      if (*(v4 - 1) != -1)
      {
        v5 = *v4;
        *v4 = 0;
        if (v5)
        {
          if (v5[2] == 1)
          {
            (*(*v5 + 8))(v5);
          }

          else
          {
            --v5[2];
          }
        }
      }

      v4 += 2;
      --v3;
    }

    while (v3);
  }

  return WTF::fastFree((a1 - 16), a2);
}

void *WTF::Detail::CallableWrapper<WebKit::WebPageProxy::getWebArchiveData(WTF::CompletionHandler<void ()(API::Data *)> &&)::$_0,void,WTF::RefPtr<WebCore::LegacyWebArchive,WTF::RawPtrTraits<WebCore>,WTF::DefaultRefDerefTraits<WebCore>> &&>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F1104038;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebPageProxy::getWebArchiveData(WTF::CompletionHandler<void ()(API::Data *)> &&)::$_0,void,WTF::RefPtr<WebCore::LegacyWebArchive,WTF::RawPtrTraits<WebCore>,WTF::DefaultRefDerefTraits<WebCore>> &&>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1104038;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

void WTF::Detail::CallableWrapper<WebKit::WebPageProxy::getWebArchiveData(WTF::CompletionHandler<void ()(API::Data *)> &&)::$_0,void,WTF::RefPtr<WebCore::LegacyWebArchive,WTF::RawPtrTraits<WebCore>,WTF::DefaultRefDerefTraits<WebCore>> &&>::call(uint64_t a1, WebCore::LegacyWebArchive **a2)
{
  v3 = *a2;
  *a2 = 0;
  if (v3)
  {
    WebCore::LegacyWebArchive::rawDataRepresentation(&theData, v3);
    v4 = theData;
    if (theData)
    {
      BytePtr = CFDataGetBytePtr(theData);
      Length = CFDataGetLength(v4);
      if (Length < 0)
      {
        __break(0xC471u);
        return;
      }

      API::Data::create(Length, BytePtr, &v10);
      WTF::CompletionHandler<void ()(API::Data *)>::operator()((a1 + 8));
      v7 = v10;
      v10 = 0;
      if (v7)
      {
        CFRelease(*(v7 + 1));
      }
    }

    else
    {
      WTF::CompletionHandler<void ()(API::Data *)>::operator()((a1 + 8));
    }

    v9 = theData;
    theData = 0;
    if (v9)
    {
      CFRelease(v9);
    }

    if (*(v3 + 2) == 1)
    {
      (*(*v3 + 8))(v3);
    }

    else
    {
      --*(v3 + 2);
    }
  }

  else
  {
    v8 = (a1 + 8);

    WTF::CompletionHandler<void ()(API::Data *)>::operator()(v8);
  }
}

void sub_19DCF1248(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }

  if (v10[2] == 1)
  {
    (*(*v10 + 8))(v10);
  }

  else
  {
    --v10[2];
  }

  _Unwind_Resume(exception_object);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebPageProxy::getWebArchiveData(WTF::CompletionHandler<void ()(API::Data *)> &&)::$_1,void,WebKit::WebProcessProxy &,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>::call(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = **(a1 + 8);
  atomic_fetch_add(v5, 1u);
  v6 = IPC::Encoder::operator new(0x238, a2);
  *v6 = 2593;
  *(v6 + 2) = 0;
  *(v6 + 3) = 0;
  *(v6 + 1) = a3;
  *(v6 + 68) = 0;
  *(v6 + 70) = 0;
  *(v6 + 69) = 0;
  IPC::Encoder::encodeHeader(v6);
  v18 = v6;
  v15 = 0;
  v7 = WTF::fastMalloc(0x10);
  *v7 = &unk_1F1104088;
  *(v7 + 8) = v5;
  v16[0] = 0;
  WTF::Ref<WebKit::WebPageProxy::getWebArchiveData(WTF::CompletionHandler<void ()(API::Data *)> &&)::WebArchvieCallbackAggregator,WTF::RawPtrTraits<WTF::CompletionHandler<void ()(API::Data *)> &&>,WTF::DefaultRefDerefTraits<WTF::CompletionHandler<void ()(API::Data *)> &&>>::~Ref(v16);
  if (WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
  {
    result = 141;
    __break(0xC471u);
  }

  else
  {
    IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
    v16[0] = v7;
    v16[1] = IdentifierInternal;
    v17 = 1;
    WebKit::AuxiliaryProcessProxy::sendMessage(a2, &v18, 0, v16, 1);
    if (v17 == 1)
    {
      v10 = v16[0];
      v16[0] = 0;
      if (v10)
      {
        (*(*v10 + 8))(v10);
      }
    }

    v11 = v18;
    v18 = 0;
    if (v11)
    {
      IPC::Encoder::~Encoder(v11, v9);
      bmalloc::api::tzoneFree(v13, v14);
    }

    return WTF::Ref<WebKit::WebPageProxy::getWebArchiveData(WTF::CompletionHandler<void ()(API::Data *)> &&)::WebArchvieCallbackAggregator,WTF::RawPtrTraits<WTF::CompletionHandler<void ()(API::Data *)> &&>,WTF::DefaultRefDerefTraits<WTF::CompletionHandler<void ()(API::Data *)> &&>>::~Ref(&v15);
  }

  return result;
}

void sub_19DCF1438(_Unwind_Exception *a1, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, unsigned int *a10, uint64_t a11, uint64_t a12, char a13, IPC::Encoder *a14)
{
  if (a13 == 1)
  {
    v15 = a11;
    a11 = 0;
    if (v15)
    {
      (*(*v15 + 8))(v15);
    }
  }

  v16 = a14;
  a14 = 0;
  if (v16)
  {
    IPC::Encoder::~Encoder(v16, a2);
    bmalloc::api::tzoneFree(v17, v18);
  }

  WTF::Ref<WebKit::WebPageProxy::getWebArchiveData(WTF::CompletionHandler<void ()(API::Data *)> &&)::WebArchvieCallbackAggregator,WTF::RawPtrTraits<WTF::CompletionHandler<void ()(API::Data *)> &&>,WTF::DefaultRefDerefTraits<WTF::CompletionHandler<void ()(API::Data *)> &&>>::~Ref(&a10);
  _Unwind_Resume(a1);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC10Connection31makeAsyncReplyCompletionHandlerIN8Messages7WebPage14GetWebArchivesEZZN6WebKit12WebPageProxy17getWebArchiveDataEONS_17CompletionHandlerIFvPN3API4DataEEEEENK3__1clINS8_15WebProcessProxyENS_23ObjectIdentifierGenericIN7WebCore18PageIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEEEDaRT_T0_EUlOSR_E_EENSA_IFvPS3_PNS2_7DecoderEEEEOST_NS_19ThreadLikeAssertionEEUlSW_SY_E_vJSW_SY_EED1Ev(uint64_t a1)
{
  *a1 = &unk_1F1104088;
  WTF::Ref<WebKit::WebPageProxy::getWebArchiveData(WTF::CompletionHandler<void ()(API::Data *)> &&)::WebArchvieCallbackAggregator,WTF::RawPtrTraits<WTF::CompletionHandler<void ()(API::Data *)> &&>,WTF::DefaultRefDerefTraits<WTF::CompletionHandler<void ()(API::Data *)> &&>>::~Ref((a1 + 8));
  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC10Connection31makeAsyncReplyCompletionHandlerIN8Messages7WebPage14GetWebArchivesEZZN6WebKit12WebPageProxy17getWebArchiveDataEONS_17CompletionHandlerIFvPN3API4DataEEEEENK3__1clINS8_15WebProcessProxyENS_23ObjectIdentifierGenericIN7WebCore18PageIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEEEDaRT_T0_EUlOSR_E_EENSA_IFvPS3_PNS2_7DecoderEEEEOST_NS_19ThreadLikeAssertionEEUlSW_SY_E_vJSW_SY_EED0Ev(unsigned int **a1)
{
  *a1 = &unk_1F1104088;
  WTF::Ref<WebKit::WebPageProxy::getWebArchiveData(WTF::CompletionHandler<void ()(API::Data *)> &&)::WebArchvieCallbackAggregator,WTF::RawPtrTraits<WTF::CompletionHandler<void ()(API::Data *)> &&>,WTF::DefaultRefDerefTraits<WTF::CompletionHandler<void ()(API::Data *)> &&>>::~Ref(a1 + 1);

  return WTF::fastFree(a1, v2);
}

uint64_t *_ZN3WTF6Detail15CallableWrapperIZN3IPC10Connection31makeAsyncReplyCompletionHandlerIN8Messages7WebPage14GetWebArchivesEZZN6WebKit12WebPageProxy17getWebArchiveDataEONS_17CompletionHandlerIFvPN3API4DataEEEEENK3__1clINS8_15WebProcessProxyENS_23ObjectIdentifierGenericIN7WebCore18PageIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEEEDaRT_T0_EUlOSR_E_EENSA_IFvPS3_PNS2_7DecoderEEEEOST_NS_19ThreadLikeAssertionEEUlSW_SY_E_vJSW_SY_EE4callESW_SY_(uint64_t *result, uint64_t a2, IPC::Decoder *a3)
{
  if (!a3)
  {
    return result;
  }

  v4 = *a3;
  if (!*a3)
  {
    return result;
  }

  v5 = *(a3 + 1);
  v6 = ((*(a3 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
  if (v5 >= v6 - v4 && v5 - (v6 - v4) > 3)
  {
    *(a3 + 2) = v6 + 4;
    if (v6)
    {
      v8 = *v6;
      v52 = 0;
      if (!v8)
      {
        return result;
      }

      v9 = result;
      while (1)
      {
        v50 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
        v51 = v10;
        if ((v10 & 1) == 0)
        {
          goto LABEL_76;
        }

        IPC::ArgumentCoder<WebCore::LegacyWebArchive,void>::decode(a3, &v48);
        if ((v49 & 1) == 0)
        {
          v10 = *a3;
          v12 = *(a3 + 1);
          *a3 = 0;
          *(a3 + 1) = 0;
          v13 = *(a3 + 3);
          if (!v13)
          {
            goto LABEL_76;
          }

          if (!v12)
          {
            goto LABEL_76;
          }

          (*(*v13 + 16))(v13, v10);
          if ((v49 & 1) == 0)
          {
            goto LABEL_76;
          }
        }

        v11 = v51;
        if ((v51 & 1) == 0)
        {
          break;
        }

        if ((v50 - 1) > 0xFFFFFFFFFFFFFFFDLL)
        {
          goto LABEL_73;
        }

        result = WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::LegacyWebArchive,WTF::RawPtrTraits<WebCore::LegacyWebArchive>,WTF::DefaultRefDerefTraits<WebCore::LegacyWebArchive>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebCore::LegacyWebArchive,WTF::RawPtrTraits<WebCore::LegacyWebArchive>,WTF::DefaultRefDerefTraits<WebCore::LegacyWebArchive>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<WTF::Ref<WebCore::LegacyWebArchive,WTF::RawPtrTraits<WebCore::LegacyWebArchive>,WTF::DefaultRefDerefTraits<WebCore::LegacyWebArchive>>>(&v52, &v50, &v48, v47);
        v11 = v49;
        if ((v47[16] & 1) == 0)
        {
          goto LABEL_72;
        }

        if (v49)
        {
          result = v48;
          v48 = 0;
          if (result)
          {
            if (*(result + 2) == 1)
            {
              result = (*(*result + 8))(result);
            }

            else
            {
              --*(result + 2);
            }
          }
        }

        if (!--v8)
        {
          v14 = v52;
          if (!v52)
          {
            return result;
          }

          v15 = *(v52 - 1);
          v16 = &v52[2 * v15];
          if (*(v52 - 3))
          {
            if (v15)
            {
              v17 = 16 * v15;
              v18 = v52;
              while ((*v18 + 1) <= 1)
              {
                v18 += 2;
                v17 -= 16;
                if (!v17)
                {
                  goto LABEL_33;
                }
              }
            }

            else
            {
              v15 = 0;
              v18 = v52;
            }
          }

          else
          {
LABEL_33:
            v18 = &v52[2 * v15];
          }

          v19 = &v52[2 * v15];
          if (v19 == v18)
          {
            return WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::LegacyWebArchive,WTF::RawPtrTraits<WebCore::LegacyWebArchive>,WTF::DefaultRefDerefTraits<WebCore::LegacyWebArchive>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::LegacyWebArchive,WTF::RawPtrTraits<WebCore::LegacyWebArchive>,WTF::DefaultRefDerefTraits<WebCore::LegacyWebArchive>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::LegacyWebArchive,WTF::RawPtrTraits<WebCore::LegacyWebArchive>,WTF::DefaultRefDerefTraits<WebCore::LegacyWebArchive>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebCore::LegacyWebArchive,WTF::RawPtrTraits<WebCore::LegacyWebArchive>,WTF::DefaultRefDerefTraits<WebCore::LegacyWebArchive>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::deallocateTable(v14, v10);
          }

          v20 = v9[1];
          while (2)
          {
            v21 = *v18;
            if (*v18 == -1)
            {
              __break(0xC471u);
              JUMPOUT(0x19DCF1A6CLL);
            }

            if (!v21)
            {
              __break(0xC471u);
              JUMPOUT(0x19DCF1A8CLL);
            }

            v22 = *(v20 + 24);
            if (!v22)
            {
              WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::LegacyWebArchive,WTF::RawPtrTraits<WebCore::LegacyWebArchive>,WTF::DefaultRefDerefTraits<WebCore::LegacyWebArchive>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::LegacyWebArchive,WTF::RawPtrTraits<WebCore::LegacyWebArchive>,WTF::DefaultRefDerefTraits<WebCore::LegacyWebArchive>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::LegacyWebArchive,WTF::RawPtrTraits<WebCore::LegacyWebArchive>,WTF::DefaultRefDerefTraits<WebCore::LegacyWebArchive>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebCore::LegacyWebArchive,WTF::RawPtrTraits<WebCore::LegacyWebArchive>,WTF::DefaultRefDerefTraits<WebCore::LegacyWebArchive>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand((v20 + 24), 0);
              v22 = *(v20 + 24);
              v21 = *v18;
            }

            v23 = *(v22 - 8);
            v24 = (v21 + ~(v21 << 32)) ^ ((v21 + ~(v21 << 32)) >> 22);
            v25 = 9 * ((v24 + ~(v24 << 13)) ^ ((v24 + ~(v24 << 13)) >> 8));
            v26 = (v25 ^ (v25 >> 15)) + ~((v25 ^ (v25 >> 15)) << 27);
            v27 = v23 & ((v26 >> 31) ^ v26);
            v28 = (v22 + 16 * v27);
            v29 = *v28;
            if (*v28)
            {
              v30 = 0;
              v31 = 1;
              while (v29 != v21)
              {
                if (v29 == -1)
                {
                  v30 = v28;
                }

                v27 = (v27 + v31) & v23;
                v28 = (v22 + 16 * v27);
                v29 = *v28;
                ++v31;
                if (!*v28)
                {
                  if (v30)
                  {
                    *v30 = 0;
                    v30[1] = 0;
                    --*(*(v20 + 24) - 16);
                    v21 = *v18;
                    v28 = v30;
                  }

                  goto LABEL_49;
                }
              }

              v36 = v18[1];
              v18[1] = 0;
              v37 = v28[1];
              v28[1] = v36;
              if (v37)
              {
                if (v37[2] == 1)
                {
                  (*(*v37 + 8))(v37);
                }

                else
                {
                  --v37[2];
                }
              }

              do
              {
LABEL_61:
                v18 += 2;
              }

              while (v18 != v16 && (*v18 + 1) <= 1);
              if (v18 == v19)
              {
                return WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::LegacyWebArchive,WTF::RawPtrTraits<WebCore::LegacyWebArchive>,WTF::DefaultRefDerefTraits<WebCore::LegacyWebArchive>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::LegacyWebArchive,WTF::RawPtrTraits<WebCore::LegacyWebArchive>,WTF::DefaultRefDerefTraits<WebCore::LegacyWebArchive>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::LegacyWebArchive,WTF::RawPtrTraits<WebCore::LegacyWebArchive>,WTF::DefaultRefDerefTraits<WebCore::LegacyWebArchive>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebCore::LegacyWebArchive,WTF::RawPtrTraits<WebCore::LegacyWebArchive>,WTF::DefaultRefDerefTraits<WebCore::LegacyWebArchive>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::deallocateTable(v14, v10);
              }

              continue;
            }

            break;
          }

LABEL_49:
          *v28 = v21;
          v32 = v18[1];
          v18[1] = 0;
          v33 = v28[1];
          v28[1] = v32;
          if (v33)
          {
            if (v33[2] == 1)
            {
              (*(*v33 + 8))(v33);
            }

            else
            {
              --v33[2];
            }
          }

          v34 = *(v20 + 24);
          if (v34)
          {
            v35 = *(v34 - 12) + 1;
          }

          else
          {
            v35 = 1;
          }

          *(v34 - 12) = v35;
          v38 = (*(v34 - 16) + v35);
          v39 = *(v34 - 4);
          if (v39 > 0x400)
          {
            if (v39 > 2 * v38)
            {
              goto LABEL_61;
            }
          }

          else if (3 * v39 > 4 * v38)
          {
            goto LABEL_61;
          }

          WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::LegacyWebArchive,WTF::RawPtrTraits<WebCore::LegacyWebArchive>,WTF::DefaultRefDerefTraits<WebCore::LegacyWebArchive>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::LegacyWebArchive,WTF::RawPtrTraits<WebCore::LegacyWebArchive>,WTF::DefaultRefDerefTraits<WebCore::LegacyWebArchive>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::LegacyWebArchive,WTF::RawPtrTraits<WebCore::LegacyWebArchive>,WTF::DefaultRefDerefTraits<WebCore::LegacyWebArchive>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebCore::LegacyWebArchive,WTF::RawPtrTraits<WebCore::LegacyWebArchive>,WTF::DefaultRefDerefTraits<WebCore::LegacyWebArchive>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand((v20 + 24), v28);
          goto LABEL_61;
        }
      }

      __break(1u);
LABEL_72:
      if (v11)
      {
LABEL_73:
        v40 = v48;
        v48 = 0;
        if (v40)
        {
          if (*(v40 + 2) == 1)
          {
            (*(*v40 + 8))(v40);
          }

          else
          {
            --*(v40 + 2);
          }
        }
      }

LABEL_76:
      if (v52)
      {
        WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::LegacyWebArchive,WTF::RawPtrTraits<WebCore::LegacyWebArchive>,WTF::DefaultRefDerefTraits<WebCore::LegacyWebArchive>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::LegacyWebArchive,WTF::RawPtrTraits<WebCore::LegacyWebArchive>,WTF::DefaultRefDerefTraits<WebCore::LegacyWebArchive>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::LegacyWebArchive,WTF::RawPtrTraits<WebCore::LegacyWebArchive>,WTF::DefaultRefDerefTraits<WebCore::LegacyWebArchive>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebCore::LegacyWebArchive,WTF::RawPtrTraits<WebCore::LegacyWebArchive>,WTF::DefaultRefDerefTraits<WebCore::LegacyWebArchive>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::deallocateTable(v52, v10);
      }

      goto LABEL_78;
    }
  }

  else
  {
    *a3 = 0;
    *(a3 + 1) = 0;
    v45 = *(a3 + 3);
    if (v45)
    {
      if (v5)
      {
        (*(*v45 + 16))(v45);
        v4 = *a3;
        v5 = *(a3 + 1);
        goto LABEL_87;
      }
    }

    else
    {
      v5 = 0;
    }

    v4 = 0;
  }

LABEL_87:
  *a3 = 0;
  *(a3 + 1) = 0;
  v46 = *(a3 + 3);
  if (v46 && v5)
  {
    (*(*v46 + 16))(v46, v4);
  }

LABEL_78:
  v41 = *a3;
  v42 = *(a3 + 1);
  *a3 = 0;
  *(a3 + 1) = 0;
  result = *(a3 + 3);
  if (result)
  {
    if (v42)
    {
      (*(*result + 16))(result, v41);
      v43 = *a3;
      v44 = *(a3 + 1);
      result = *(a3 + 3);
      *a3 = 0;
      *(a3 + 1) = 0;
      if (result)
      {
        if (v44)
        {
          return (*(*result + 16))(result, v43);
        }
      }
    }
  }

  return result;
}

void sub_19DCF1AC0(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, _DWORD *a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  if (a13 == 1 && a12)
  {
    if (a12[2] == 1)
    {
      (*(*a12 + 8))(a12);
    }

    else
    {
      --a12[2];
    }
  }

  if (a16)
  {
    WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::LegacyWebArchive,WTF::RawPtrTraits<WebCore::LegacyWebArchive>,WTF::DefaultRefDerefTraits<WebCore::LegacyWebArchive>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::LegacyWebArchive,WTF::RawPtrTraits<WebCore::LegacyWebArchive>,WTF::DefaultRefDerefTraits<WebCore::LegacyWebArchive>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::LegacyWebArchive,WTF::RawPtrTraits<WebCore::LegacyWebArchive>,WTF::DefaultRefDerefTraits<WebCore::LegacyWebArchive>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebCore::LegacyWebArchive,WTF::RawPtrTraits<WebCore::LegacyWebArchive>,WTF::DefaultRefDerefTraits<WebCore::LegacyWebArchive>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::deallocateTable(a16, a2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::LegacyWebArchive,WTF::RawPtrTraits<WebCore::LegacyWebArchive>,WTF::DefaultRefDerefTraits<WebCore::LegacyWebArchive>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebCore::LegacyWebArchive,WTF::RawPtrTraits<WebCore::LegacyWebArchive>,WTF::DefaultRefDerefTraits<WebCore::LegacyWebArchive>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<WTF::Ref<WebCore::LegacyWebArchive,WTF::RawPtrTraits<WebCore::LegacyWebArchive>,WTF::DefaultRefDerefTraits<WebCore::LegacyWebArchive>>>@<X0>(uint64_t *result@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v24 = a3;
  v5 = *a2;
  if (*a2 == -1 || !v5)
  {
    __break(0xC471u);
    JUMPOUT(0x19DCF1D04);
  }

  v7 = result;
  v8 = *result;
  if (!*result)
  {
    result = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::LegacyWebArchive,WTF::RawPtrTraits<WebCore::LegacyWebArchive>,WTF::DefaultRefDerefTraits<WebCore::LegacyWebArchive>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::LegacyWebArchive,WTF::RawPtrTraits<WebCore::LegacyWebArchive>,WTF::DefaultRefDerefTraits<WebCore::LegacyWebArchive>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::LegacyWebArchive,WTF::RawPtrTraits<WebCore::LegacyWebArchive>,WTF::DefaultRefDerefTraits<WebCore::LegacyWebArchive>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebCore::LegacyWebArchive,WTF::RawPtrTraits<WebCore::LegacyWebArchive>,WTF::DefaultRefDerefTraits<WebCore::LegacyWebArchive>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(result, 0);
    v8 = *v7;
    v5 = *a2;
  }

  v9 = *(v8 - 8);
  v10 = (v5 + ~(v5 << 32)) ^ ((v5 + ~(v5 << 32)) >> 22);
  v11 = 9 * ((v10 + ~(v10 << 13)) ^ ((v10 + ~(v10 << 13)) >> 8));
  v12 = (v11 ^ (v11 >> 15)) + ~((v11 ^ (v11 >> 15)) << 27);
  v13 = v9 & ((v12 >> 31) ^ v12);
  v14 = (v8 + 16 * v13);
  v15 = *v14;
  if (*v14)
  {
    v16 = 0;
    v17 = 1;
    do
    {
      if (v15 == v5)
      {
        v20 = 0;
        v21 = v8 + 16 * *(v8 - 4);
        goto LABEL_23;
      }

      if (v15 == -1)
      {
        v16 = v14;
      }

      v13 = (v13 + v17) & v9;
      v14 = (v8 + 16 * v13);
      v15 = *v14;
      ++v17;
    }

    while (*v14);
    if (v16)
    {
      *v16 = 0;
      v16[1] = 0;
      --*(*v7 - 16);
      v14 = v16;
    }
  }

  result = WTF::HashMapTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::LegacyWebArchive,WTF::RawPtrTraits<WebCore::LegacyWebArchive>,WTF::DefaultRefDerefTraits<WebCore::LegacyWebArchive>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebCore::LegacyWebArchive,WTF::RawPtrTraits<WebCore::LegacyWebArchive>,WTF::DefaultRefDerefTraits<WebCore::LegacyWebArchive>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>::translate<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::LegacyWebArchive,WTF::RawPtrTraits<WebCore::LegacyWebArchive>,WTF::DefaultRefDerefTraits<WebCore::LegacyWebArchive>>>,WTF::HashTableAddResult<WTF::HashTableIterator<WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::LegacyWebArchive,WTF::RawPtrTraits<WebCore::LegacyWebArchive>,WTF::DefaultRefDerefTraits<WebCore::LegacyWebArchive>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::LegacyWebArchive,WTF::RawPtrTraits<WebCore::LegacyWebArchive>,WTF::DefaultRefDerefTraits<WebCore::LegacyWebArchive>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::LegacyWebArchive,WTF::RawPtrTraits<WebCore::LegacyWebArchive>,WTF::DefaultRefDerefTraits<WebCore::LegacyWebArchive>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebCore::LegacyWebArchive,WTF::RawPtrTraits<WebCore::LegacyWebArchive>,WTF::DefaultRefDerefTraits<WebCore::LegacyWebArchive>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>,WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::LegacyWebArchive,WTF::RawPtrTraits<WebCore::LegacyWebArchive>,WTF::DefaultRefDerefTraits<WebCore::LegacyWebArchive>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::LegacyWebArchive,WTF::RawPtrTraits<WebCore::LegacyWebArchive>,WTF::DefaultRefDerefTraits<WebCore::LegacyWebArchive>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::LegacyWebArchive,WTF::RawPtrTraits<WebCore::LegacyWebArchive>,WTF::DefaultRefDerefTraits<WebCore::LegacyWebArchive>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebCore::LegacyWebArchive,WTF::RawPtrTraits<WebCore::LegacyWebArchive>,WTF::DefaultRefDerefTraits<WebCore::LegacyWebArchive>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>> WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::LegacyWebArchive,WTF::RawPtrTraits<WebCore::LegacyWebArchive>,WTF::DefaultRefDerefTraits<WebCore::LegacyWebArchive>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebCore::LegacyWebArchive,WTF::RawPtrTraits<WebCore::LegacyWebArchive>,WTF::DefaultRefDerefTraits<WebCore::LegacyWebArchive>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineAdd<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::LegacyWebArchive,WTF::RawPtrTraits<WebCore::LegacyWebArchive>,WTF::DefaultRefDerefTraits<WebCore::LegacyWebArchive>>>(WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long> &&,WTF::Ref<WebCore::LegacyWebArchive,WTF::RawPtrTraits<WebCore::LegacyWebArchive>,WTF::DefaultRefDerefTraits<WebCore::LegacyWebArchive>> &&)::{lambda(void)#1}>( v14,  a2,  &v24);
  v18 = *v7;
  if (*v7)
  {
    v19 = *(v18 - 12) + 1;
  }

  else
  {
    v19 = 1;
  }

  *(v18 - 12) = v19;
  v22 = (*(v18 - 16) + v19);
  v23 = *(v18 - 4);
  if (v23 > 0x400)
  {
    if (v23 <= 2 * v22)
    {
LABEL_19:
      result = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::LegacyWebArchive,WTF::RawPtrTraits<WebCore::LegacyWebArchive>,WTF::DefaultRefDerefTraits<WebCore::LegacyWebArchive>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::LegacyWebArchive,WTF::RawPtrTraits<WebCore::LegacyWebArchive>,WTF::DefaultRefDerefTraits<WebCore::LegacyWebArchive>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::LegacyWebArchive,WTF::RawPtrTraits<WebCore::LegacyWebArchive>,WTF::DefaultRefDerefTraits<WebCore::LegacyWebArchive>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebCore::LegacyWebArchive,WTF::RawPtrTraits<WebCore::LegacyWebArchive>,WTF::DefaultRefDerefTraits<WebCore::LegacyWebArchive>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(v7, v14);
      v14 = result;
      v18 = *v7;
      if (*v7)
      {
        v23 = *(v18 - 4);
      }

      else
      {
        v23 = 0;
      }
    }
  }

  else if (3 * v23 <= 4 * v22)
  {
    goto LABEL_19;
  }

  v21 = v18 + 16 * v23;
  v20 = 1;
LABEL_23:
  *a4 = v14;
  *(a4 + 8) = v21;
  *(a4 + 16) = v20;
  return result;
}

uint64_t *WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::LegacyWebArchive,WTF::RawPtrTraits<WebCore::LegacyWebArchive>,WTF::DefaultRefDerefTraits<WebCore::LegacyWebArchive>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::LegacyWebArchive,WTF::RawPtrTraits<WebCore::LegacyWebArchive>,WTF::DefaultRefDerefTraits<WebCore::LegacyWebArchive>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::LegacyWebArchive,WTF::RawPtrTraits<WebCore::LegacyWebArchive>,WTF::DefaultRefDerefTraits<WebCore::LegacyWebArchive>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebCore::LegacyWebArchive,WTF::RawPtrTraits<WebCore::LegacyWebArchive>,WTF::DefaultRefDerefTraits<WebCore::LegacyWebArchive>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  if (*a1 && (v4 = *(v3 - 4)) != 0)
  {
    v5 = v4 << (6 * *(v3 - 12) >= (2 * v4));
  }

  else
  {
    v5 = 8;
  }

  return WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::LegacyWebArchive,WTF::RawPtrTraits<WebCore::LegacyWebArchive>,WTF::DefaultRefDerefTraits<WebCore::LegacyWebArchive>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::LegacyWebArchive,WTF::RawPtrTraits<WebCore::LegacyWebArchive>,WTF::DefaultRefDerefTraits<WebCore::LegacyWebArchive>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::LegacyWebArchive,WTF::RawPtrTraits<WebCore::LegacyWebArchive>,WTF::DefaultRefDerefTraits<WebCore::LegacyWebArchive>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebCore::LegacyWebArchive,WTF::RawPtrTraits<WebCore::LegacyWebArchive>,WTF::DefaultRefDerefTraits<WebCore::LegacyWebArchive>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(a1, v5, a2);
}

_DWORD *WTF::HashMapTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::LegacyWebArchive,WTF::RawPtrTraits<WebCore::LegacyWebArchive>,WTF::DefaultRefDerefTraits<WebCore::LegacyWebArchive>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebCore::LegacyWebArchive,WTF::RawPtrTraits<WebCore::LegacyWebArchive>,WTF::DefaultRefDerefTraits<WebCore::LegacyWebArchive>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>::translate<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::LegacyWebArchive,WTF::RawPtrTraits<WebCore::LegacyWebArchive>,WTF::DefaultRefDerefTraits<WebCore::LegacyWebArchive>>>,WTF::HashTableAddResult<WTF::HashTableIterator<WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::LegacyWebArchive,WTF::RawPtrTraits<WebCore::LegacyWebArchive>,WTF::DefaultRefDerefTraits<WebCore::LegacyWebArchive>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::LegacyWebArchive,WTF::RawPtrTraits<WebCore::LegacyWebArchive>,WTF::DefaultRefDerefTraits<WebCore::LegacyWebArchive>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::LegacyWebArchive,WTF::RawPtrTraits<WebCore::LegacyWebArchive>,WTF::DefaultRefDerefTraits<WebCore::LegacyWebArchive>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebCore::LegacyWebArchive,WTF::RawPtrTraits<WebCore::LegacyWebArchive>,WTF::DefaultRefDerefTraits<WebCore::LegacyWebArchive>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>,WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::LegacyWebArchive,WTF::RawPtrTraits<WebCore::LegacyWebArchive>,WTF::DefaultRefDerefTraits<WebCore::LegacyWebArchive>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::LegacyWebArchive,WTF::RawPtrTraits<WebCore::LegacyWebArchive>,WTF::DefaultRefDerefTraits<WebCore::LegacyWebArchive>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::LegacyWebArchive,WTF::RawPtrTraits<WebCore::LegacyWebArchive>,WTF::DefaultRefDerefTraits<WebCore::LegacyWebArchive>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebCore::LegacyWebArchive,WTF::RawPtrTraits<WebCore::LegacyWebArchive>,WTF::DefaultRefDerefTraits<WebCore::LegacyWebArchive>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>> WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::LegacyWebArchive,WTF::RawPtrTraits<WebCore::LegacyWebArchive>,WTF::DefaultRefDerefTraits<WebCore::LegacyWebArchive>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebCore::LegacyWebArchive,WTF::RawPtrTraits<WebCore::LegacyWebArchive>,WTF::DefaultRefDerefTraits<WebCore::LegacyWebArchive>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineAdd<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::LegacyWebArchive,WTF::RawPtrTraits<WebCore::LegacyWebArchive>,WTF::DefaultRefDerefTraits<WebCore::LegacyWebArchive>>>(WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long> &&,WTF::Ref<WebCore::LegacyWebArchive,WTF::RawPtrTraits<WebCore::LegacyWebArchive>,WTF::DefaultRefDerefTraits<WebCore::LegacyWebArchive>> &&)::{lambda(void)#1}>(void *a1, void *a2, uint64_t **a3)
{
  *a1 = *a2;
  v4 = **a3;
  **a3 = 0;
  result = a1[1];
  a1[1] = v4;
  if (result)
  {
    if (result[2] == 1)
    {
      return (*(*result + 8))();
    }

    else
    {
      --result[2];
    }
  }

  return result;
}

void WebKit::AuthenticationManager::~AuthenticationManager(WebKit::AuthenticationManager *this, void *a2)
{
  *this = &unk_1F1104298;
  *(this + 1) = &unk_1F11042E0;
  v3 = *(this + 4);
  if (v3)
  {
    v4 = *(v3 - 4);
    if (v4)
    {
      v5 = (v3 + 8);
      do
      {
        if (*(v5 - 1) != -1)
        {
          std::unique_ptr<WebKit::AuthenticationManager::Challenge>::reset[abi:sn200100](v5, 0);
        }

        v5 += 2;
        --v4;
      }

      while (v4);
    }

    WTF::fastFree((v3 - 16), a2);
  }

  v6 = *(this + 3);
  *(this + 3) = 0;
  if (v6 && atomic_fetch_add(v6, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v6);
    WTF::fastFree(v6, a2);
  }

  *(this + 1) = &unk_1F10EA5E0;
  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::~WeakPtrFactory(this + 2, a2);
}

{
  WebKit::AuthenticationManager::~AuthenticationManager(this, a2);

  bmalloc::api::tzoneFree(v2, v3);
}

void non-virtual thunk toWebKit::AuthenticationManager::~AuthenticationManager(WebKit::AuthenticationManager *this, void *a2)
{
  WebKit::AuthenticationManager::~AuthenticationManager((this - 8), a2);
}

{
  WebKit::AuthenticationManager::~AuthenticationManager((this - 8), a2);

  bmalloc::api::tzoneFree(v2, v3);
}

uint64_t WebKit::AuthenticationManager::ref(uint64_t this)
{
  v1 = *(*(this + 24) + 8);
  if (v1)
  {
    atomic_fetch_add((v1 + 144), 1u);
  }

  else
  {
    this = 92;
    __break(0xC471u);
  }

  return this;
}

uint64_t non-virtual thunk toWebKit::AuthenticationManager::ref(uint64_t this)
{
  v1 = *(*(this + 16) + 8);
  if (v1)
  {
    atomic_fetch_add((v1 + 144), 1u);
  }

  else
  {
    this = 92;
    __break(0xC471u);
  }

  return this;
}

uint64_t WebKit::AuthenticationManager::deref(WebKit::AuthenticationManager *this)
{
  result = *(*(this + 3) + 8);
  if (result)
  {
    if (atomic_fetch_add((result + 144), 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, (result + 144));
      return (*(*result + 24))();
    }
  }

  else
  {
    result = 92;
    __break(0xC471u);
  }

  return result;
}

uint64_t WebKit::AuthenticationManager::shouldCoalesceChallenge(uint64_t a1, uint64_t a2, char a3, uint64_t a4, WebCore::AuthenticationChallengeBase *this)
{
  if (*(WebCore::AuthenticationChallengeBase::protectionSpace(this) + 21) == 8)
  {
    return 0;
  }

  v10 = WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::WallTime>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::WallTime>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::WallTime,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::WallTime>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::begin((a1 + 32));
  v11 = v10;
  v13 = v12;
  v14 = *(a1 + 32);
  v15 = v14 ? v14 + 16 * *(v14 - 4) : 0;
  if (v15 == v10)
  {
    return 0;
  }

  while (1)
  {
    if (*v11 != a4 && (a3 & 1) != 0)
    {
      v16 = *v11[1];
      if (v16 && v16 == a2)
      {
        v18 = WebCore::AuthenticationChallengeBase::protectionSpace(this);
        v19 = WebCore::AuthenticationChallengeBase::protectionSpace((v11[1] + 8));
        if (WebCore::ProtectionSpaceBase::compare(v18, v19, v20))
        {
          break;
        }
      }
    }

    do
    {
      v11 += 2;
    }

    while (v11 != v13 && (*v11 + 1) <= 1);
    if (v11 == v15)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t WebKit::AuthenticationManager::didReceiveAuthenticationChallenge(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __n128 *a5, WebCore::AuthenticationChallengeBase *a6, char a7, uint64_t *a8)
{
  v43 = *MEMORY[0x1E69E9840];
  v36 = a4;
  v37 = a2;
  v35 = a3;
  if ((a4 & 1) == 0)
  {
    WebCore::CredentialBase::CredentialBase(&v28);
    cf = 0;
    v23 = *a8;
    *a8 = 0;
    (*(*v23 + 16))(v23, 1, &v28);
    (*(*v23 + 8))(v23);
    v24 = cf;
    cf = 0;
    if (v24)
    {
      CFRelease(v24);
    }

    v25 = v29;
    v29 = 0;
    if (v25 && atomic_fetch_add_explicit(v25, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v25, v21);
    }

    result = v28;
    v28 = 0;
    if (result)
    {
      goto LABEL_24;
    }

    return result;
  }

  v14 = WTF::fastMalloc(0x1C8);
  v38 = WebKit::AuthenticationManager::Challenge::Challenge(v14, a3, 1, a6, a8);
  IdentifierInternal = WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>::generateIdentifierInternal();
  WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::AuthenticationChallengeIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::UniqueRef<WebKit::AuthenticationManager::Challenge>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::AuthenticationChallengeIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::AuthenticationChallengeIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::UniqueRef<WebKit::AuthenticationManager::Challenge>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineSet<WTF::ObjectIdentifierGeneric<WebKit::AuthenticationChallengeIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long> const&,WTF::UniqueRef<WebKit::AuthenticationManager::Challenge>>((a1 + 32), &IdentifierInternal, &v38, &v28);
  v15 = IdentifierInternal;
  v34 = IdentifierInternal;
  std::unique_ptr<WebKit::AuthenticationManager::Challenge>::reset[abi:sn200100](&v38, 0);
  result = WebKit::AuthenticationManager::shouldCoalesceChallenge(a1, a3, 1, v15, a6);
  if (result)
  {
    return result;
  }

  LOBYTE(IdentifierInternal) = 0;
  v42 = 0;
  if (a5)
  {
    result = std::optional<WebCore::SecurityOriginData>::operator=[abi:sn200100]<WebCore::SecurityOriginData const&,void>(&IdentifierInternal, a5);
  }

  v17 = *(*(a1 + 24) + 8);
  if (!v17)
  {
    result = 103;
    __break(0xC471u);
    goto LABEL_28;
  }

  atomic_fetch_add((v17 + 144), 1u);
  if ((v36 & 1) == 0)
  {
LABEL_28:
    __break(1u);
    return result;
  }

  v28 = &v37;
  v29 = &v35;
  p_IdentifierInternal = &IdentifierInternal;
  cf = a6;
  v32[0] = a7;
  v33 = &v34;
  v18 = (*(*(v17 + 24) + 56))(v17 + 24);
  v20 = IPC::Encoder::operator new(0x238, v19);
  *v20 = 534;
  *(v20 + 2) = 0;
  *(v20 + 3) = 0;
  *(v20 + 1) = v18;
  *(v20 + 68) = 0;
  *(v20 + 70) = 0;
  *(v20 + 69) = 0;
  IPC::Encoder::encodeHeader(v20);
  v38 = v20;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v20, v37);
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v20, v35);
  IPC::ArgumentCoder<std::optional<WebCore::SecurityOriginData>,void>::encode<IPC::Encoder,std::optional<WebCore::SecurityOriginData> const&>(v20, &IdentifierInternal);
  IPC::ArgumentCoder<WebCore::AuthenticationChallenge,void>::encode(v20, a6);
  IPC::Encoder::operator<<<BOOL &>(v20, v32);
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v20, *v33);
  (*(*(v17 + 24) + 32))(v17 + 24, &v38, 0);
  result = v38;
  v38 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v21);
    result = bmalloc::api::tzoneFree(v26, v27);
  }

  if (atomic_fetch_add((v17 + 144), 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, (v17 + 144));
    result = (*(*v17 + 24))(v17);
  }

  if (v42 == 1 && !v41)
  {
    v22 = v40;
    v40 = 0;
    if (v22 && atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v22, v21);
    }

    result = IdentifierInternal;
    IdentifierInternal = 0;
    if (result)
    {
LABEL_24:
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(result, v21);
      }
    }
  }

  return result;
}

unsigned __int8 *std::optional<WebCore::SecurityOriginData>::operator=[abi:sn200100]<WebCore::SecurityOriginData const&,void>(unsigned __int8 *a1, __n128 *a2)
{
  if (a1[32] == 1)
  {
    mpark::detail::assignment<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>>::generic_assign<mpark::detail::copy_assignment<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1> const&>(a1, a2);
  }

  else
  {
    mpark::detail::move_assignment<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::move_assignment(a1, a2);
    a1[32] = 1;
  }

  return a1;
}

uint64_t WebKit::AuthenticationManager::didReceiveAuthenticationChallenge(uint64_t a1, uint64_t a2, WebCore::AuthenticationChallengeBase *a3, uint64_t *a4)
{
  v8 = WTF::fastMalloc(0x1C8);
  v17 = WebKit::AuthenticationManager::Challenge::Challenge(v8, 0, 0, a3, a4);
  IdentifierInternal = WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>::generateIdentifierInternal();
  WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::AuthenticationChallengeIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::UniqueRef<WebKit::AuthenticationManager::Challenge>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::AuthenticationChallengeIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::AuthenticationChallengeIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::UniqueRef<WebKit::AuthenticationManager::Challenge>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineSet<WTF::ObjectIdentifierGeneric<WebKit::AuthenticationChallengeIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long> const&,WTF::UniqueRef<WebKit::AuthenticationManager::Challenge>>((a1 + 32), &IdentifierInternal, &v17, v18);
  v9 = IdentifierInternal;
  std::unique_ptr<WebKit::AuthenticationManager::Challenge>::reset[abi:sn200100](&v17, 0);
  result = WebKit::AuthenticationManager::shouldCoalesceChallenge(a1, 0, 0, v9, a3);
  if ((result & 1) == 0)
  {
    v11 = (*(*a2 + 56))(a2);
    v13 = IPC::Encoder::operator new(0x238, v12);
    *v13 = 12;
    *(v13 + 2) = 0;
    *(v13 + 3) = 0;
    *(v13 + 1) = v11;
    *(v13 + 68) = 0;
    *(v13 + 70) = 0;
    *(v13 + 69) = 0;
    IPC::Encoder::encodeHeader(v13);
    v18[0] = v13;
    IPC::ArgumentCoder<WebCore::AuthenticationChallenge,void>::encode(v13, a3);
    IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v13, v9);
    (*(*a2 + 32))(a2, v18, 0);
    result = v18[0];
    v18[0] = 0;
    if (result)
    {
      IPC::Encoder::~Encoder(result, v14);
      return bmalloc::api::tzoneFree(v15, v16);
    }
  }

  return result;
}

uint64_t WebKit::AuthenticationManager::completeAuthenticationChallenge(uint64_t result, WTF::StringImpl *a2, uint64_t a3, uint64_t a4)
{
  v52 = a2;
  if (a2 == -1)
  {
    __break(0xC471u);
    JUMPOUT(0x19DCF2A80);
  }

  if (!a2)
  {
    __break(0xC471u);
    goto LABEL_51;
  }

  v4 = result;
  v5 = *(result + 32);
  if (!v5)
  {
    return result;
  }

  v8 = *(v5 - 8);
  v9 = (a2 + ~(a2 << 32)) ^ ((a2 + ~(a2 << 32)) >> 22);
  v10 = 9 * ((v9 + ~(v9 << 13)) ^ ((v9 + ~(v9 << 13)) >> 8));
  v11 = (v10 ^ (v10 >> 15)) + ~((v10 ^ (v10 >> 15)) << 27);
  v12 = v8 & ((v11 >> 31) ^ v11);
  v13 = *(v5 + 16 * v12);
  if (v13 == a2)
  {
LABEL_8:
    v15 = *(v5 + 16 * v12 + 8);
    v50 = 0;
    v51 = 0;
    if (!v15)
    {
      return result;
    }

    v16 = WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::AttributedStringTextTableBlockIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v50, 1uLL, &v52);
    v17 = HIDWORD(v51);
    v18 = v50;
    *(v50 + HIDWORD(v51)) = *v16;
    v19 = v17 + 1;
    HIDWORD(v51) = v17 + 1;
    result = WebCore::AuthenticationChallengeBase::protectionSpace((v15 + 1));
    if (*(result + 21) != 8)
    {
      result = WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::WallTime>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::WallTime>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::WallTime,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::WallTime>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::begin((v4 + 32));
      v21 = result;
      v22 = v20;
      v23 = *(v4 + 32);
      v24 = v23 ? v23 + 16 * *(v23 - 4) : 0;
      if (v24 != result)
      {
        do
        {
          if (*v21 != v52)
          {
            v25 = **(v21 + 8);
            v26 = v25 != 0;
            v27 = *v15 != 0;
            v28 = v25 == *v15;
            if (!v26 || !v27)
            {
              v28 = v26 ^ v27 ^ 1;
            }

            if (v28 == 1)
            {
              v29 = WebCore::AuthenticationChallengeBase::protectionSpace((v15 + 1));
              v30 = WebCore::AuthenticationChallengeBase::protectionSpace((*(v21 + 8) + 8));
              result = WebCore::ProtectionSpaceBase::compare(v29, v30, v31);
              if (result)
              {
                if (v19 == v51)
                {
                  result = WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::AttributedStringTextTableBlockIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v50, v19 + 1, v21);
                  v19 = HIDWORD(v51);
                  v18 = v50;
                  v32 = (v50 + 8 * HIDWORD(v51));
                }

                else
                {
                  v32 = (v18 + 8 * v19);
                  result = v21;
                }

                *v32 = *result;
                HIDWORD(v51) = ++v19;
              }
            }
          }

          do
          {
            v21 += 16;
          }

          while (v21 != v22 && (*v21 + 1) <= 1);
        }

        while (v21 != v24);
        v18 = v50;
      }
    }

    if (!v19)
    {
LABEL_44:
      if (v18)
      {
        return WTF::fastFree(v18, v20);
      }

      return result;
    }

    v33 = v18;
    while (1)
    {
      v34 = *v33;
      if (*v33 == -1)
      {
        break;
      }

      if (!v34)
      {
        __break(0xC471u);
        JUMPOUT(0x19DCF2A60);
      }

      v35 = *(v4 + 32);
      v36 = *(v35 - 8);
      v37 = (v34 + ~(v34 << 32)) ^ ((v34 + ~(v34 << 32)) >> 22);
      v38 = 9 * ((v37 + ~(v37 << 13)) ^ ((v37 + ~(v37 << 13)) >> 8));
      v39 = (v38 ^ (v38 >> 15)) + ~((v38 ^ (v38 >> 15)) << 27);
      v40 = v36 & ((v39 >> 31) ^ v39);
      v41 = *(v35 + 16 * v40);
      if (v41 != v34)
      {
        v42 = 1;
        while (v41)
        {
          v40 = (v40 + v42) & v36;
          v41 = *(v35 + 16 * v40);
          ++v42;
          if (v41 == v34)
          {
            goto LABEL_37;
          }
        }

        v40 = *(v35 - 4);
      }

LABEL_37:
      v43 = (v35 + 16 * v40);
      v44 = v43[1];
      *++v43 = 0;
      v52 = v44;
      *(v35 + 16 * v40) = -1;
      std::unique_ptr<WebKit::AuthenticationManager::Challenge>::reset[abi:sn200100](v43, 0);
      v45 = *(v4 + 32);
      v46 = vadd_s32(*(v45 - 16), 0xFFFFFFFF00000001);
      *(v45 - 16) = v46;
      v47 = *(v45 - 4);
      if (6 * v46.i32[1] < v47 && v47 >= 9)
      {
        WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::AuthenticationChallengeIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::AuthenticationChallengeIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::UniqueRef<WebKit::AuthenticationManager::Challenge>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::AuthenticationChallengeIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::UniqueRef<WebKit::AuthenticationManager::Challenge>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::AuthenticationChallengeIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::AuthenticationChallengeIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::UniqueRef<WebKit::AuthenticationManager::Challenge>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::AuthenticationChallengeIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::AuthenticationChallengeIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::UniqueRef<WebKit::AuthenticationManager::Challenge>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::AuthenticationChallengeIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash((v4 + 32), v47 >> 1, 0);
      }

      v49 = *(v52 + 56);
      *(v52 + 56) = 0;
      (*(*v49 + 16))(v49, a3, a4);
      (*(*v49 + 8))(v49);
      result = std::unique_ptr<WebKit::AuthenticationManager::Challenge>::reset[abi:sn200100](&v52, 0);
      v33 = (v33 + 8);
      if (v33 == (v18 + 8 * v19))
      {
        goto LABEL_44;
      }
    }

    __break(0xC471u);
LABEL_51:
    JUMPOUT(0x19DCF2A40);
  }

  v14 = 1;
  while (v13)
  {
    v12 = (v12 + v14) & v8;
    v13 = *(v5 + 16 * v12);
    ++v14;
    if (v13 == a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t WebKit::AuthenticationManager::negotiatedLegacyTLS(uint64_t a1, uint64_t a2)
{
  v2 = *(*(a1 + 24) + 8);
  if (v2)
  {
    atomic_fetch_add((v2 + 144), 1u);
    v4 = (*(*(v2 + 24) + 56))(v2 + 24);
    v6 = IPC::Encoder::operator new(0x238, v5);
    *v6 = 545;
    *(v6 + 2) = 0;
    *(v6 + 3) = 0;
    *(v6 + 1) = v4;
    *(v6 + 68) = 0;
    *(v6 + 70) = 0;
    *(v6 + 69) = 0;
    IPC::Encoder::encodeHeader(v6);
    v11 = v6;
    IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v6, a2);
    (*(*(v2 + 24) + 32))(v2 + 24, &v11, 0);
    result = v11;
    v11 = 0;
    if (result)
    {
      IPC::Encoder::~Encoder(result, v7);
      result = bmalloc::api::tzoneFree(v9, v10);
    }

    if (atomic_fetch_add((v2 + 144), 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, (v2 + 144));
      return (*(*v2 + 24))(v2);
    }
  }

  else
  {
    result = 103;
    __break(0xC471u);
  }

  return result;
}

WTF::StringBuilder *WTF::StringBuilder::append<WTF::ASCIILiteral,WTF::String,WTF::ASCIILiteral>(WTF::StringBuilder *a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  v4 = *(a2 + 8);
  v5 = v4 != 0;
  v6 = (v4 - 1);
  if (!v5)
  {
    v6 = 0;
  }

  v13[0] = *a2;
  v13[1] = v6;
  if (v6 >> 31)
  {
    goto LABEL_8;
  }

  v7 = *a3;
  v8 = *(a4 + 8);
  v5 = v8 != 0;
  v9 = (v8 - 1);
  if (!v5)
  {
    v9 = 0;
  }

  v11[0] = *a4;
  v11[1] = v9;
  v12 = v7;
  if (v9 >> 31)
  {
LABEL_8:
    __break(0xC471u);
    JUMPOUT(0x19DCF2C90);
  }

  return WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>(a1, v13, &v12, v11);
}

uint64_t WTF::StringBuilder::append(uint64_t this, unsigned __int8 a2)
{
  v2 = *(this + 8);
  if (!v2)
  {
    return WTF::StringBuilder::append();
  }

  v3 = *(this + 16);
  if (v3 >= *(v2 + 4) || *this)
  {
    return WTF::StringBuilder::append();
  }

  v4 = *(v2 + 16);
  v5 = *(v2 + 8);
  *(this + 16) = v3 + 1;
  if ((v4 & 4) != 0)
  {
    *(v5 + v3) = a2;
  }

  else
  {
    *(v5 + 2 * v3) = a2;
  }

  return this;
}

unint64_t WebKit::OperatingDate::fromWallTime(WTF *a1, double a2)
{
  v2 = a2 * 1000.0;
  v3 = WTF::msToYear(a1, a2 * 1000.0);
  v4 = v3;
  HIDWORD(v6) = -1030792151 * v3 + 85899344;
  LODWORD(v6) = HIDWORD(v6);
  v5 = v6 >> 4;
  LODWORD(v6) = HIDWORD(v6);
  v7 = (v6 >> 2) > 0x28F5C28;
  v8 = v5 < 0xA3D70B || v7;
  if ((v3 & 3) != 0)
  {
    v9 = 0;
  }

  else
  {
    v9 = v8;
  }

  v10 = WTF::dayInYear(v3, v2);
  v11 = WTF::monthFromDayInYear(v10, v9);
  WTF::dayInMonthFromDayInYear(v10, v9);
  return v4 | (v11 << 32);
}

uint64_t WTF::msToYear(WTF *this, double a2)
{
  result = (floor(a2 / 3.1556952e10) + 1970.0);
  *&v3 = result + -1.0;
  v4 = floor(*&v3 * 0.25) + -492.0;
  v5 = vaddq_f64(vrndmq_f64(vdivq_f64(vdupq_lane_s64(v3, 0), xmmword_19E703AD0)), xmmword_19E703AE0);
  v6 = 365.0;
  v7 = (v5.f64[0] + v4 + (result + -1970.0) * 365.0 - v5.f64[1]) * 86400000.0;
  if (v7 > a2)
  {
    return (result - 1);
  }

  if ((result & 3) == 0)
  {
    HIDWORD(v9) = -1030792151 * result + 85899344;
    LODWORD(v9) = HIDWORD(v9);
    v8 = v9 >> 4;
    LODWORD(v9) = HIDWORD(v9);
    v10 = (v9 >> 2) <= 0x28F5C28 && v8 >= 0xA3D70B;
    v6 = 365.0;
    if (!v10)
    {
      v6 = 366.0;
    }
  }

  if (v7 + v6 * 86400000.0 <= a2)
  {
    return (result + 1);
  }

  return result;
}

uint64_t WTF::dayInYear(WTF *this, double a2)
{
  *&v2 = this + -1.0;
  v3 = floor(*&v2 * 0.25);
  v4 = vaddq_f64(vrndmq_f64(vdivq_f64(vdupq_lane_s64(v2, 0), xmmword_19E703AD0)), xmmword_19E703AE0);
  return (floor(a2 / 86400000.0) - (v4.f64[0] + v3 + -492.0 + (this + -1970.0) * 365.0 - v4.f64[1]));
}

uint64_t WTF::monthFromDayInYear(WTF *this, int a2)
{
  if (this < 31)
  {
    return 0;
  }

  if (a2)
  {
    v2 = 60;
  }

  else
  {
    v2 = 59;
  }

  if (v2 > this)
  {
    return 1;
  }

  if (v2 + 31 > this)
  {
    return 2;
  }

  if (v2 + 61 > this)
  {
    return 3;
  }

  if (v2 + 92 > this)
  {
    return 4;
  }

  if (v2 + 122 > this)
  {
    return 5;
  }

  if (v2 + 153 > this)
  {
    return 6;
  }

  if (v2 + 184 > this)
  {
    return 7;
  }

  if (v2 + 214 > this)
  {
    return 8;
  }

  if (v2 + 245 > this)
  {
    return 9;
  }

  if (v2 + 275 > this)
  {
    return 10;
  }

  return 11;
}

uint64_t WTF::dayInMonthFromDayInYear(WTF *this, int a2)
{
  if (this <= 30)
  {
    return (this + 1);
  }

  if (a2)
  {
    v2 = 59;
  }

  else
  {
    v2 = 58;
  }

  if (v2 >= this)
  {
    v2 = 30;
  }

  else if (v2 + 31 < this)
  {
    if (v2 + 61 >= this)
    {
      v2 += 31;
    }

    else if (v2 + 92 >= this)
    {
      v2 += 61;
    }

    else
    {
      v3 = v2 + 122;
      if (v2 + 122 >= this)
      {
        v2 += 92;
      }

      else
      {
        v4 = v2 + 153;
        v5 = v2 + 184;
        v6 = v2 + 214;
        v7 = v2 + 245;
        v2 += 275;
        if (v2 >= this)
        {
          v2 = v7;
        }

        if (v7 >= this)
        {
          v2 = v6;
        }

        if (v6 >= this)
        {
          v2 = v5;
        }

        if (v5 >= this)
        {
          v2 = v4;
        }

        if (v4 >= this)
        {
          v2 = v3;
        }
      }
    }
  }

  return this - v2;
}

double WebKit::OperatingDate::secondsSinceEpoch(WebKit::OperatingDate *this)
{
  v1 = *(this + 1);
  v2 = v1 / 12 + *this;
  v3 = v1 % 12;
  v4 = v2 + (v3 >> 31);
  v5 = 1;
  HIDWORD(v7) = -1030792151 * v4 + 85899344;
  LODWORD(v7) = HIDWORD(v7);
  v6 = v7 >> 4;
  LODWORD(v7) = HIDWORD(v7);
  v8 = (v7 >> 2) > 0x28F5C28;
  if (v6 >= 0xA3D70B)
  {
    v5 = v8;
  }

  if ((v4 & 3) != 0)
  {
    v5 = 0;
  }

  *&v9 = v4 + -1.0;
  v10 = floor(*&v9 * 0.25) + -492.0 + (v4 + -1970.0) * 365.0;
  v11 = vaddq_f64(vrndmq_f64(vdivq_f64(vdupq_lane_s64(v9, 0), xmmword_19E703AD0)), xmmword_19E703AE0);
  v12 = v11.f64[0] + v10 - v11.f64[1];
  v13 = v3 + 12;
  if (v3 >= 0)
  {
    v13 = v3;
  }

  return (floor(v12) + (*(this + 2) + *(MEMORY[0x1E696EBB0] + 48 * v5 + 4 * v13) - 1)) * 86400.0;
}

uint64_t WebKit::ResourceLoadStatisticsStore::ResourceLoadStatisticsStore(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  v31 = *MEMORY[0x1E69E9840];
  *(a1 + 96) = 0;
  *(a1 + 104) = 1;
  WTF::FileSystemImpl::pathByAppendingComponent();
  WebKit::DatabaseUtilities::DatabaseUtilities(a1, buf);
  v12 = *buf;
  *buf = 0;
  if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v12, v11);
  }

  *a1 = &unk_1F1104328;
  *(a1 + 112) = a2;
  atomic_fetch_add((a2 + 8), 1u);
  while (1)
  {
    v13 = *(a3 + 32);
    if ((v13 & 1) == 0)
    {
      break;
    }

    v22 = *(a3 + 32);
    atomic_compare_exchange_strong_explicit((a3 + 32), &v22, v13 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v22 == v13)
    {
      goto LABEL_5;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*(a3 + 32));
LABEL_5:
  *(a1 + 120) = a3;
  *(a1 + 128) = &unk_1F110D4F0;
  *(a1 + 136) = 1;
  *(a1 + 144) = xmmword_19E703AF0;
  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  *(a1 + 176) = xmmword_19E703B00;
  *(a1 + 192) = vdupq_n_s64(0x4122750000000000uLL);
  *(a1 + 208) = xmmword_19E703B10;
  *(a1 + 224) = 10;
  *(a1 + 232) = 1;
  *(a1 + 280) = 0;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  MEMORY[0x19EB01DD0](buf, &v23, 0);
  WebCore::RegistrableDomain::RegistrableDomain((a1 + 288), buf);
  v15 = *buf;
  *buf = 0;
  if (v15 && atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v15, v14);
  }

  v16 = v23;
  v23 = 0;
  if (v16 && atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v16, v14);
  }

  *(a1 + 632) = 0u;
  *(a1 + 648) = 0u;
  *(a1 + 600) = 0u;
  *(a1 + 616) = 0u;
  *(a1 + 568) = 0u;
  *(a1 + 584) = 0u;
  *(a1 + 536) = 0u;
  *(a1 + 552) = 0u;
  *(a1 + 504) = 0u;
  *(a1 + 520) = 0u;
  *(a1 + 472) = 0u;
  *(a1 + 488) = 0u;
  *(a1 + 440) = 0u;
  *(a1 + 456) = 0u;
  *(a1 + 408) = 0u;
  *(a1 + 424) = 0u;
  *(a1 + 376) = 0u;
  *(a1 + 392) = 0u;
  *(a1 + 344) = 0u;
  *(a1 + 360) = 0u;
  *(a1 + 312) = 0u;
  *(a1 + 328) = 0u;
  *(a1 + 296) = 0u;
  *(a1 + 664) = a6;
  *(a1 + 672) = 0;
  *(a1 + 676) = 0;
  *(a1 + 688) = 0;
  *(a1 + 692) = 0;
  *(a1 + 704) = 0;
  *(a1 + 708) = 0;
  *(a1 + 715) = 0;
  *(a1 + 723) = a4;
  *(a1 + 724) = 0;
  WebKit::ResourceLoadStatisticsStore::openAndUpdateSchemaIfNecessary(a1, v14);
  WebKit::DatabaseUtilities::enableForeignKeys(a1);
  if ((WebCore::SQLiteDatabase::turnOnIncrementalAutoVacuum((a1 + 16)) & 1) == 0)
  {
    v18 = qword_1ED641148;
    if (os_log_type_enabled(qword_1ED641148, OS_LOG_TYPE_ERROR))
    {
      v19 = *(a1 + 664);
      Error = WebCore::SQLiteDatabase::lastError((a1 + 16));
      ErrorMsg = WebCore::SQLiteDatabase::lastErrorMsg((a1 + 16));
      *buf = 134218755;
      *&buf[4] = a1;
      v25 = 2048;
      v26 = v19;
      v27 = 1024;
      v28 = Error;
      v29 = 2081;
      v30 = ErrorMsg;
      _os_log_error_impl(&dword_19D52D000, v18, OS_LOG_TYPE_ERROR, "%p - [sessionID=%llu, error=%d, message=%{private}s] - ResourceLoadStatisticsStore::ResourceLoadStatisticsStore: failed to turn on auto vacuum", buf, 0x26u);
    }
  }

  WebKit::ResourceLoadStatisticsStore::includeTodayAsOperatingDateIfNecessary(a1);
  if ((byte_1ED6425D2 & 1) == 0)
  {
    *&dword_1ED6425E8 = 0;
    qword_1ED6425E0 = 0;
    byte_1ED6425D2 = 1;
  }

  WTF::WeakHashSet<WebKit::ResourceLoadStatisticsStore,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::add<WebKit::ResourceLoadStatisticsStore>(buf, a1);
  return a1;
}

uint64_t WebKit::ResourceLoadStatisticsStore::openAndUpdateSchemaIfNecessary(WebKit::ResourceLoadStatisticsStore *this, const WTF::String *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  *(this + 727) = WebKit::DatabaseUtilities::openDatabaseAndCreateSchemaIfNecessary(this, a2);
  WebKit::ResourceLoadStatisticsStore::addMissingTablesIfNecessary(this);
  WebKit::DatabaseUtilities::columnsForTable(this, "ObservedDomains", 16, &v11);
  if (WebKit::vectorEqualsArray<WTF::String,WTF::ASCIILiteral,12ul>(&v11, &off_1E7632640) && WebKit::DatabaseUtilities::addMissingColumnToTable(this, "ObservedDomains", 16, "mostRecentWebPushInteractionTime REAL DEFAULT 0.0 NOT NULL", 59))
  {
    *buf = "mostRecentWebPushInteractionTime";
    *&buf[8] = 33;
    v5 = v13;
    if (v13 == v12)
    {
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::ASCIILiteral>(&v11, buf);
    }

    else
    {
      v9 = v11;
      WTF::StringImpl::createWithoutCopyingNonEmpty();
      *(v9 + 8 * v5) = v14;
      ++v13;
    }
  }

  if (WebKit::vectorEqualsArray<WTF::String,WTF::ASCIILiteral,13ul>(&v11, &off_1E7632700))
  {
    WebKit::ResourceLoadStatisticsStore::migrateDataToPCMDatabaseIfNecessary(this);
    WebKit::DatabaseUtilities::migrateDataToNewTablesIfNecessary(this);
  }

  else
  {
    WebKit::DatabaseUtilities::close(this);
    v6 = qword_1ED641148;
    if (os_log_type_enabled(qword_1ED641148, OS_LOG_TYPE_ERROR))
    {
      v10 = *(this + 83);
      *buf = 134218240;
      *&buf[4] = this;
      *&buf[12] = 2048;
      *&buf[14] = v10;
      _os_log_error_impl(&dword_19D52D000, v6, OS_LOG_TYPE_ERROR, "%p - [sessionID=%llu] - ResourceLoadStatisticsStore::openAndUpdateSchemaIfNecessary: failed at scheme check, will create new database", buf, 0x16u);
    }

    WTF::FileSystemImpl::deleteFile((this + 8), v7);
    *(this + 727) = WebKit::DatabaseUtilities::openDatabaseAndCreateSchemaIfNecessary(this, v8);
  }

  return WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v11, v3);
}

_BYTE *WebKit::ResourceLoadStatisticsStore::includeTodayAsOperatingDateIfNecessary(WebKit::ResourceLoadStatisticsStore *this)
{
  v29 = *MEMORY[0x1E69E9840];
  v2 = qword_1ED641148;
  v3 = os_log_type_enabled(qword_1ED641148, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    v4 = *(this + 83);
    *buf = 134217984;
    v22 = v4;
    _os_log_impl(&dword_19D52D000, v2, OS_LOG_TYPE_DEFAULT, "ResourceLoadStatisticsStore::includeTodayAsOperatingDateIfNecessary: sessionID=%llu", buf, 0xCu);
  }

  v19 = WebKit::OperatingDate::today(v3, *(this + 82));
  v20 = v5;
  if (!*(this + 168) || (result = WebKit::operator<=>(&v19, (this + 708)), (result + 1) >= 2u))
  {
    WebKit::DatabaseUtilities::beginTransactionIfNecessary(this, v18);
    if (*(this + 168) - 29 >= 1)
    {
      WebCore::SQLiteDatabase::prepareStatement();
      if (v17)
      {
        goto LABEL_22;
      }

      v6 = WebCore::SQLiteStatement::bindInt(v16);
      if (v6)
      {
        goto LABEL_22;
      }

      if (v17)
      {
        goto LABEL_31;
      }

      if (WebCore::SQLiteStatement::step(v16) != 101)
      {
LABEL_22:
        v7 = qword_1ED641148;
        if (!os_log_type_enabled(qword_1ED641148, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_15;
        }

        v9 = *(this + 83);
        Error = WebCore::SQLiteDatabase::lastError((this + 16));
        ErrorMsg = WebCore::SQLiteDatabase::lastErrorMsg((this + 16));
        *buf = 134218755;
        v22 = this;
        v23 = 2048;
        v24 = v9;
        v25 = 1024;
        v26 = Error;
        v27 = 2081;
        v28 = ErrorMsg;
        v12 = "%p - [sessionID=%llu, error=%d, message=%{private}s] - ResourceLoadStatisticsStore::includeTodayAsOperatingDateIfNecessary: failed to step deleteLeastRecentOperatingDateStatement";
        goto LABEL_30;
      }

      if (!v17)
      {
        WebCore::SQLiteStatement::~SQLiteStatement(v16);
      }
    }

    WebCore::SQLiteDatabase::prepareStatement();
    if (v17)
    {
      goto LABEL_14;
    }

    v6 = WebCore::SQLiteStatement::bindInt(v16);
    if (v6)
    {
      goto LABEL_14;
    }

    if (v17)
    {
      goto LABEL_31;
    }

    v6 = WebCore::SQLiteStatement::bindInt(v16);
    if (v6)
    {
      goto LABEL_14;
    }

    if (v17)
    {
      goto LABEL_31;
    }

    v6 = WebCore::SQLiteStatement::bindInt(v16);
    if (v6)
    {
LABEL_14:
      v7 = qword_1ED641148;
      if (!os_log_type_enabled(qword_1ED641148, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_15;
      }

      v13 = *(this + 83);
      v14 = WebCore::SQLiteDatabase::lastError((this + 16));
      v15 = WebCore::SQLiteDatabase::lastErrorMsg((this + 16));
      *buf = 134218755;
      v22 = this;
      v23 = 2048;
      v24 = v13;
      v25 = 1024;
      v26 = v14;
      v27 = 2081;
      v28 = v15;
      v12 = "%p - [sessionID=%llu, error=%d, message=%{private}s] - ResourceLoadStatisticsStore::includeTodayAsOperatingDateIfNecessary: failed to step insertOperatingDateStatement";
LABEL_30:
      _os_log_error_impl(&dword_19D52D000, v7, OS_LOG_TYPE_ERROR, v12, buf, 0x26u);
      goto LABEL_15;
    }

    if (!v17)
    {
      if (WebCore::SQLiteStatement::step(v16) == 101)
      {
        WebKit::ResourceLoadStatisticsStore::updateOperatingDatesParameters(this);
LABEL_15:
        if (!v17)
        {
          WebCore::SQLiteStatement::~SQLiteStatement(v16);
        }

        return WTF::ScopeExit<WTF::Function<void ()(void)>>::~ScopeExit(v18);
      }

      goto LABEL_14;
    }

LABEL_31:
    mpark::throw_bad_variant_access(v6);
  }

  return result;
}

unsigned int *WTF::WeakHashSet<WebKit::ResourceLoadStatisticsStore,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::add<WebKit::ResourceLoadStatisticsStore>(uint64_t a1, unsigned int *a2)
{
  if (++dword_1ED6425E8 > dword_1ED6425EC)
  {
    _ZN3WTF9HashTableINS_3RefINS_18DefaultWeakPtrImplENS_12RawPtrTraitsIS2_EENS_21DefaultRefDerefTraitsIS2_EEEES7_NS_17IdentityExtractorENS_11DefaultHashIS7_EENS_10HashTraitsIS7_EESC_NS_10FastMallocEE8removeIfIZNS_11WeakHashSetIN6WebKit27ResourceLoadStatisticsStoreES2_LNS_32EnableWeakPtrThreadingAssertionsE1EE20removeNullReferencesEvEUlRT_E_EEbRKSL_(a1, a2);
    v4 = 0;
    dword_1ED6425E8 = 0;
    if (qword_1ED6425E0 && (v4 = *(qword_1ED6425E0 - 12), v4 > 0x7FFFFFFE))
    {
      v5 = -2;
    }

    else
    {
      v5 = 2 * v4;
    }

    dword_1ED6425EC = v5;
  }

  WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(a2 + 24, a2);
  v6 = *(a2 + 12);
  atomic_fetch_add(v6, 1u);
  v9 = v6;
  WTF::HashTable<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>(&qword_1ED6425E0, &v9, a1);
  result = v9;
  v9 = 0;
  if (result)
  {
    if (atomic_fetch_add(result, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, result);
      return WTF::fastFree(result, v7);
    }
  }

  return result;
}

void WebKit::ResourceLoadStatisticsStore::~ResourceLoadStatisticsStore(WebKit::ResourceLoadStatisticsStore *this)
{
  v2 = WebKit::DatabaseUtilities::close(this);
  if (byte_1ED6425D2)
  {
    if (++dword_1ED6425E8 <= dword_1ED6425EC)
    {
      goto LABEL_8;
    }
  }

  else
  {
    *&dword_1ED6425E8 = 1;
    qword_1ED6425E0 = 0;
    byte_1ED6425D2 = 1;
  }

  _ZN3WTF9HashTableINS_3RefINS_18DefaultWeakPtrImplENS_12RawPtrTraitsIS2_EENS_21DefaultRefDerefTraitsIS2_EEEES7_NS_17IdentityExtractorENS_11DefaultHashIS7_EENS_10HashTraitsIS7_EESC_NS_10FastMallocEE8removeIfIZNS_11WeakHashSetIN6WebKit27ResourceLoadStatisticsStoreES2_LNS_32EnableWeakPtrThreadingAssertionsE1EE20removeNullReferencesEvEUlRT_E_EEbRKSL_(v2, v3);
  v4 = 0;
  dword_1ED6425E8 = 0;
  if (qword_1ED6425E0 && (v4 = *(qword_1ED6425E0 - 12), v4 > 0x7FFFFFFE))
  {
    v5 = -2;
  }

  else
  {
    v5 = 2 * v4;
  }

  dword_1ED6425EC = v5;
LABEL_8:
  v6 = *(this + 12);
  if (v6 && *(v6 + 8))
  {
    v62 = *(this + 12);
    v7 = WTF::HashTable<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::FastMalloc>::find<WTF::HashSetTranslator<WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>>,(WTF::ShouldValidateKey)1,WTF::DefaultWeakPtrImpl const*>(&qword_1ED6425E0, &v62);
    v3 = v7;
    if (qword_1ED6425E0)
    {
      v8 = qword_1ED6425E0 + 8 * *(qword_1ED6425E0 - 4);
      if (v8 == v7)
      {
        goto LABEL_17;
      }
    }

    else
    {
      if (!v7)
      {
        goto LABEL_17;
      }

      v8 = 0;
    }

    if (v8 != v7)
    {
      WTF::HashTable<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::FastMalloc>::remove(&qword_1ED6425E0, v7);
    }
  }

LABEL_17:
  WTF::Vector<WTF::CompletionHandler<void ()(void)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 640, v3);
  v10 = *(this + 79);
  *(this + 79) = 0;
  if (v10)
  {
    WebCore::SQLiteStatement::operator delete(v10);
  }

  v11 = *(this + 78);
  *(this + 78) = 0;
  if (v11)
  {
    WebCore::SQLiteStatement::operator delete(v11);
  }

  v12 = *(this + 77);
  *(this + 77) = 0;
  if (v12)
  {
    WebCore::SQLiteStatement::operator delete(v12);
  }

  v13 = *(this + 76);
  *(this + 76) = 0;
  if (v13)
  {
    WebCore::SQLiteStatement::operator delete(v13);
  }

  v14 = *(this + 75);
  *(this + 75) = 0;
  if (v14)
  {
    WebCore::SQLiteStatement::operator delete(v14);
  }

  v15 = *(this + 74);
  *(this + 74) = 0;
  if (v15)
  {
    WebCore::SQLiteStatement::operator delete(v15);
  }

  v16 = *(this + 73);
  *(this + 73) = 0;
  if (v16)
  {
    WebCore::SQLiteStatement::operator delete(v16);
  }

  v17 = *(this + 72);
  *(this + 72) = 0;
  if (v17)
  {
    WebCore::SQLiteStatement::operator delete(v17);
  }

  v18 = *(this + 71);
  *(this + 71) = 0;
  if (v18)
  {
    WebCore::SQLiteStatement::operator delete(v18);
  }

  v19 = *(this + 70);
  *(this + 70) = 0;
  if (v19)
  {
    WebCore::SQLiteStatement::operator delete(v19);
  }

  v20 = *(this + 69);
  *(this + 69) = 0;
  if (v20)
  {
    WebCore::SQLiteStatement::operator delete(v20);
  }

  v21 = *(this + 68);
  *(this + 68) = 0;
  if (v21)
  {
    WebCore::SQLiteStatement::operator delete(v21);
  }

  v22 = *(this + 67);
  *(this + 67) = 0;
  if (v22)
  {
    WebCore::SQLiteStatement::operator delete(v22);
  }

  v23 = *(this + 66);
  *(this + 66) = 0;
  if (v23)
  {
    WebCore::SQLiteStatement::operator delete(v23);
  }

  v24 = *(this + 65);
  *(this + 65) = 0;
  if (v24)
  {
    WebCore::SQLiteStatement::operator delete(v24);
  }

  v25 = *(this + 64);
  *(this + 64) = 0;
  if (v25)
  {
    WebCore::SQLiteStatement::operator delete(v25);
  }

  v26 = *(this + 63);
  *(this + 63) = 0;
  if (v26)
  {
    WebCore::SQLiteStatement::operator delete(v26);
  }

  v27 = *(this + 62);
  *(this + 62) = 0;
  if (v27)
  {
    WebCore::SQLiteStatement::operator delete(v27);
  }

  v28 = *(this + 61);
  *(this + 61) = 0;
  if (v28)
  {
    WebCore::SQLiteStatement::operator delete(v28);
  }

  v29 = *(this + 60);
  *(this + 60) = 0;
  if (v29)
  {
    WebCore::SQLiteStatement::operator delete(v29);
  }

  v30 = *(this + 59);
  *(this + 59) = 0;
  if (v30)
  {
    WebCore::SQLiteStatement::operator delete(v30);
  }

  v31 = *(this + 58);
  *(this + 58) = 0;
  if (v31)
  {
    WebCore::SQLiteStatement::operator delete(v31);
  }

  v32 = *(this + 57);
  *(this + 57) = 0;
  if (v32)
  {
    WebCore::SQLiteStatement::operator delete(v32);
  }

  v33 = *(this + 56);
  *(this + 56) = 0;
  if (v33)
  {
    WebCore::SQLiteStatement::operator delete(v33);
  }

  v34 = *(this + 55);
  *(this + 55) = 0;
  if (v34)
  {
    WebCore::SQLiteStatement::operator delete(v34);
  }

  v35 = *(this + 54);
  *(this + 54) = 0;
  if (v35)
  {
    WebCore::SQLiteStatement::operator delete(v35);
  }

  v36 = *(this + 53);
  *(this + 53) = 0;
  if (v36)
  {
    WebCore::SQLiteStatement::operator delete(v36);
  }

  v37 = *(this + 52);
  *(this + 52) = 0;
  if (v37)
  {
    WebCore::SQLiteStatement::operator delete(v37);
  }

  v38 = *(this + 51);
  *(this + 51) = 0;
  if (v38)
  {
    WebCore::SQLiteStatement::operator delete(v38);
  }

  v39 = *(this + 50);
  *(this + 50) = 0;
  if (v39)
  {
    WebCore::SQLiteStatement::operator delete(v39);
  }

  v40 = *(this + 49);
  *(this + 49) = 0;
  if (v40)
  {
    WebCore::SQLiteStatement::operator delete(v40);
  }

  v41 = *(this + 48);
  *(this + 48) = 0;
  if (v41)
  {
    WebCore::SQLiteStatement::operator delete(v41);
  }

  v42 = *(this + 47);
  *(this + 47) = 0;
  if (v42)
  {
    WebCore::SQLiteStatement::operator delete(v42);
  }

  v43 = *(this + 46);
  *(this + 46) = 0;
  if (v43)
  {
    WebCore::SQLiteStatement::operator delete(v43);
  }

  v44 = *(this + 45);
  *(this + 45) = 0;
  if (v44)
  {
    WebCore::SQLiteStatement::operator delete(v44);
  }

  v45 = *(this + 44);
  *(this + 44) = 0;
  if (v45)
  {
    WebCore::SQLiteStatement::operator delete(v45);
  }

  v46 = *(this + 43);
  *(this + 43) = 0;
  if (v46)
  {
    WebCore::SQLiteStatement::operator delete(v46);
  }

  v47 = *(this + 42);
  *(this + 42) = 0;
  if (v47)
  {
    WebCore::SQLiteStatement::operator delete(v47);
  }

  v48 = *(this + 41);
  *(this + 41) = 0;
  if (v48)
  {
    WebCore::SQLiteStatement::operator delete(v48);
  }

  v49 = *(this + 40);
  if (v49)
  {
    WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v49, v9);
  }

  v50 = *(this + 39);
  if (v50)
  {
    WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v50, v9);
  }

  v51 = *(this + 38);
  if (v51)
  {
    WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v51, v9);
  }

  v52 = *(this + 37);
  *(this + 37) = 0;
  if (v52 && atomic_fetch_add_explicit(v52, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v52, v9);
  }

  v53 = *(this + 36);
  *(this + 36) = 0;
  if (v53 && atomic_fetch_add_explicit(v53, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v53, v9);
  }

  v54 = *(this + 31);
  *(this + 31) = 0;
  if (v54 && atomic_fetch_add_explicit(v54, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v54, v9);
  }

  v55 = *(this + 15);
  *(this + 15) = 0;
  if (v55)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WTF::SerialFunctionDispatcher,(WTF::DestructionThread)0>::deref((v55 + 32));
  }

  v56 = *(this + 14);
  *(this + 14) = 0;
  if (v56)
  {
    v57 = (v56 + 8);
    if (!atomic_load(v57))
    {
LABEL_122:
      __break(0xC471u);
      JUMPOUT(0x19DCF41C0);
    }

    atomic_fetch_add(v57, 0xFFFFFFFF);
  }

  WebKit::DatabaseUtilities::~DatabaseUtilities(this);
  if (*(this + 26) != 1)
  {
    goto LABEL_122;
  }

  v60 = *(this + 12);
  if (v60)
  {
    *(v60 + 8) = 0;
    v61 = *(this + 12);
    *(this + 12) = 0;
    if (v61)
    {
      if (atomic_fetch_add(v61, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v61);
        WTF::fastFree(v61, v59);
      }
    }
  }
}

{
  WebKit::ResourceLoadStatisticsStore::~ResourceLoadStatisticsStore(this);

  bmalloc::api::tzoneFree(v1, v2);
}

WTF::StringImpl *WebKit::domainsToString(WTF::StringImpl **a1, uint64_t a2)
{
  v26 = 0;
  v27 = 0;
  v28 = 0;
  v29 = 1;
  v4 = *(a2 + 12);
  if (v4)
  {
    v5 = *a2;
    v6 = 8 * v4;
    do
    {
      if (v28)
      {
        v7 = ", ";
      }

      else
      {
        v7 = "";
      }

      if (v28)
      {
        v8 = 3;
      }

      else
      {
        v8 = 1;
      }

      v24 = v7;
      v25 = v8;
      v22 = "(all data)";
      v23 = 11;
      WTF::StringBuilder::append<WTF::ASCIILiteral,WTF::String,WTF::ASCIILiteral>(&v26, &v24, v5++, &v22);
      v6 -= 8;
    }

    while (v6);
  }

  v9 = *(a2 + 28);
  if (v9)
  {
    v10 = *(a2 + 16);
    v11 = 8 * v9;
    do
    {
      if (v28)
      {
        v12 = ", ";
      }

      else
      {
        v12 = "";
      }

      if (v28)
      {
        v13 = 3;
      }

      else
      {
        v13 = 1;
      }

      v24 = v12;
      v25 = v13;
      v22 = "(all but HttpOnly cookies)";
      v23 = 27;
      WTF::StringBuilder::append<WTF::ASCIILiteral,WTF::String,WTF::ASCIILiteral>(&v26, &v24, v10++, &v22);
      v11 -= 8;
    }

    while (v11);
  }

  v14 = *(a2 + 44);
  if (v14)
  {
    v15 = *(a2 + 32);
    v16 = 8 * v14;
    do
    {
      if (v28)
      {
        v17 = ", ";
      }

      else
      {
        v17 = "";
      }

      if (v28)
      {
        v18 = 3;
      }

      else
      {
        v18 = 1;
      }

      v24 = v17;
      v25 = v18;
      v22 = "(all but cookies)";
      v23 = 18;
      WTF::StringBuilder::append<WTF::ASCIILiteral,WTF::String,WTF::ASCIILiteral>(&v26, &v24, v15++, &v22);
      v16 -= 8;
    }

    while (v16);
  }

  v19 = v26;
  if (v26 || (WTF::StringBuilder::shrinkToFit(&v26), WTF::StringBuilder::reifyString(&v26), (v19 = v26) != 0))
  {
    atomic_fetch_add_explicit(v19, 2u, memory_order_relaxed);
  }

  *a1 = v19;
  v20 = v27;
  v27 = 0;
  if (v20 && atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v20, a2);
  }

  result = v26;
  v26 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, a2);
    }
  }

  return result;
}

uint64_t WebKit::ResourceLoadStatisticsStore::debugBroadcastConsoleMessage(WTF::RunLoop *a1, char a2, uint64_t a3)
{
  v6 = WTF::RunLoop::mainSingleton(a1);
  result = WTF::RunLoop::isCurrent(v6);
  if (result)
  {
    v8 = *(a1 + 14);
    if (!v8)
    {
      goto LABEL_17;
    }

    v9 = *(v8 + 16);
    if (v9)
    {
      v10 = *(v9 + 8);
      if (v10)
      {
        ++*(v10 + 16);
        result = WebKit::NetworkProcess::broadcastConsoleMessage(*(v10 + 32), *(v10 + 24), 13, a2, a3);
        v11 = *(v10 + 16);
        if (v11)
        {
          *(v10 + 16) = v11 - 1;
          return result;
        }

LABEL_17:
        __break(0xC471u);
        JUMPOUT(0x19DCF45A4);
      }
    }
  }

  else
  {
    WTF::RunLoop::mainSingleton(result);
    v12 = *(a1 + 14);
    if (!v12)
    {
      __break(0xC471u);
      JUMPOUT(0x19DCF45C4);
    }

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
        goto LABEL_10;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v12);
LABEL_10:
    LOBYTE(v16) = 13;
    HIBYTE(v16) = a2;
    WTF::String::isolatedCopy();
    v15 = WTF::fastMalloc(0x20);
    *v15 = &unk_1F1104860;
    *(v15 + 8) = v12;
    *(v15 + 16) = v16;
    v18 = v15;
    *(v15 + 24) = v17;
    WTF::RunLoop::dispatch();
    if (v18)
    {
      (*(*v18 + 8))(v18);
    }

    return 0;
  }

  return result;
}

void *WTF::Function<void ()(void)>::Function<WebKit::ResourceLoadStatisticsStore::removeDataRecords(WTF::CompletionHandler<void ()(void)> &&)::$_0,void>(void *a1, uint64_t *a2)
{
  v4 = WTF::fastMalloc(0x68);
  v5 = *a2;
  *a2 = 0;
  *v4 = &unk_1F1104518;
  v4[1] = v5;
  v4[3] = 0;
  v4[2] = 0;
  WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt((v4 + 2), a2 + 2);
  v4[5] = 0;
  v4[4] = 0;
  WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt((v4 + 4), a2 + 6);
  v4[7] = 0;
  v4[6] = 0;
  WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt((v4 + 6), a2 + 10);
  v4[9] = 0;
  v4[8] = 0;
  WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt((v4 + 8), a2 + 14);
  v6 = a2[9];
  a2[9] = 0;
  v4[10] = v6;
  v7 = a2[10];
  a2[10] = 0;
  v4[11] = v7;
  v8 = a2[11];
  a2[11] = 0;
  v4[12] = v8;
  *a1 = v4;
  return a1;
}

uint64_t WebKit::ResourceLoadStatisticsStore::removeDataRecords(WTF::CompletionHandler<void ()(void)> &&)::$_0::~$_0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 88);
  *(a1 + 88) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WTF::SerialFunctionDispatcher,(WTF::DestructionThread)0>::deref((v3 + 32));
  }

  v4 = *(a1 + 80);
  *(a1 + 80) = 0;
  if (v4 && atomic_fetch_add(v4, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v4);
    WTF::fastFree(v4, a2);
  }

  v5 = *(a1 + 72);
  *(a1 + 72) = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(a1 + 56, a2);
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(a1 + 40, v6);
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(a1 + 24, v7);
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(a1 + 8, v8);
  v9 = *a1;
  *a1 = 0;
  if (v9)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::WebResourceLoadStatisticsStore,(WTF::DestructionThread)1>::deref(v9);
  }

  return a1;
}

uint64_t WebKit::ResourceLoadStatisticsStore::grandfatherExistingWebsiteData(uint64_t a1, uint64_t *a2)
{
  WTF::RunLoop::mainSingleton(a1);
  WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded((a1 + 96), a1);
  v4 = *(a1 + 96);
  atomic_fetch_add(v4, 1u);
  v5 = *a2;
  *a2 = 0;
  *&v16 = v4;
  *(&v16 + 1) = v5;
  v6 = *(a1 + 120);
  while (1)
  {
    v7 = *(v6 + 32);
    if ((v7 & 1) == 0)
    {
      break;
    }

    v15 = *(v6 + 32);
    atomic_compare_exchange_strong_explicit((v6 + 32), &v15, v7 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v15 == v7)
    {
      goto LABEL_4;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*(v6 + 32));
LABEL_4:
  *&v17 = v6;
  v8 = *(a1 + 112);
  if (v8)
  {
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
        goto LABEL_7;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v8);
LABEL_7:
    v11 = WTF::fastMalloc(0x28);
    *v11 = &unk_1F11045B8;
    v11[1] = v4;
    v11[2] = v5;
    v11[3] = v6;
    v16 = 0u;
    v17 = 0u;
    v11[4] = v8;
    v18 = v11;
    WTF::RunLoop::dispatch();
    v13 = v18;
    v18 = 0;
    if (v13)
    {
      (*(*v13 + 8))(v13);
    }

    return WebKit::ResourceLoadStatisticsStore::grandfatherExistingWebsiteData(WTF::CompletionHandler<void ()(void)> &&)::$_0::~$_0(&v16, v12);
  }

  else
  {
    result = 114;
    __break(0xC471u);
  }

  return result;
}

uint64_t WebKit::ResourceLoadStatisticsStore::grandfatherExistingWebsiteData(WTF::CompletionHandler<void ()(void)> &&)::$_0::~$_0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 24);
  *(a1 + 24) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::WebResourceLoadStatisticsStore,(WTF::DestructionThread)1>::deref(v3);
  }

  v4 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v4)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WTF::SerialFunctionDispatcher,(WTF::DestructionThread)0>::deref((v4 + 32));
  }

  v5 = *(a1 + 8);
  *(a1 + 8) = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  v6 = *a1;
  *a1 = 0;
  if (v6 && atomic_fetch_add(v6, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v6);
    WTF::fastFree(v6, a2);
  }

  return a1;
}

unsigned int *WebKit::ResourceLoadStatisticsStore::scheduleStatisticsProcessingRequestIfNecessary(WebKit::ResourceLoadStatisticsStore *this)
{
  v2 = *(this + 33) + 1;
  *(this + 33) = v2;
  *(this + 34) = v2;
  *(this + 280) = 1;
  result = WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(this + 24, this);
  v4 = *(this + 12);
  atomic_fetch_add(v4, 1u);
  if (*(this + 280))
  {
    v5 = *(this + 34);
    v6 = WTF::fastMalloc(0x18);
    *v6 = &unk_1F1104658;
    v6[1] = v4;
    v6[2] = v5;
    v7 = v6;
    WTF::SuspendableWorkQueue::dispatchAfter();
    result = v7;
    if (v7)
    {
      return (*(*v7 + 8))(v7);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t WebKit::ResourceLoadStatisticsStore::updateCacheMaxAgeCap(atomic_ullong **this)
{
  WTF::RunLoop::mainSingleton(this);
  v2 = this[14];
  if (v2)
  {
    while (1)
    {
      v3 = *v2;
      if ((*v2 & 1) == 0)
      {
        break;
      }

      v4 = *v2;
      atomic_compare_exchange_strong_explicit(v2, &v4, v3 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v4 == v3)
      {
        goto LABEL_4;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v2);
LABEL_4:
    v5 = this[24];
    v6 = WTF::fastMalloc(0x18);
    *v6 = &unk_1F11046A8;
    v6[1] = v2;
    v6[2] = v5;
    v8 = v6;
    WTF::RunLoop::dispatch();
    result = v8;
    if (v8)
    {
      return (*(*v8 + 8))(v8);
    }
  }

  else
  {
    result = 114;
    __break(0xC471u);
  }

  return result;
}

uint64_t WebKit::ResourceLoadStatisticsStore::updateClientSideCookiesAgeCap(WebKit::ResourceLoadStatisticsStore *this)
{
  v2 = *(this + 26);
  WTF::RunLoop::mainSingleton(this);
  v3 = *(this + 14);
  if (v3)
  {
    while (1)
    {
      v4 = *v3;
      if ((*v3 & 1) == 0)
      {
        break;
      }

      v5 = *v3;
      atomic_compare_exchange_strong_explicit(v3, &v5, v4 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v5 == v4)
      {
        goto LABEL_4;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v3);
LABEL_4:
    v6 = WTF::fastMalloc(0x18);
    *v6 = &unk_1F11046F8;
    v6[1] = v3;
    v6[2] = v2;
    v8 = v6;
    WTF::RunLoop::dispatch();
    result = v8;
    if (v8)
    {
      return (*(*v8 + 8))(v8);
    }
  }

  else
  {
    result = 114;
    __break(0xC471u);
  }

  return result;
}

uint64_t WebKit::ResourceLoadStatisticsStore::didCreateNetworkProcess(atomic_ullong **this)
{
  v2 = WTF::fastMalloc(0x10);
  *v2 = &unk_1F1104838;
  v4 = v2;
  WebKit::ResourceLoadStatisticsStore::updateCookieBlocking(this, &v4);
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  WebKit::ResourceLoadStatisticsStore::updateCacheMaxAgeCap(this);

  return WebKit::ResourceLoadStatisticsStore::updateClientSideCookiesAgeCap(this);
}

uint64_t WebKit::ResourceLoadStatisticsStore::debugLogDomainsInBatches(WTF::RunLoop *a1, atomic_uint ***a2)
{
  v79 = *MEMORY[0x1E69E9840];
  v72 = 0;
  v73 = 0;
  v4 = *(a2 + 3);
  if (v4)
  {
    v5 = *a2;
    if (v4 <= 0x10)
    {
      v6 = 16;
    }

    else
    {
      v6 = *(a2 + 3);
    }

    WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(&v72, v6);
    if (v4 < HIDWORD(v73))
    {
      __break(0xC471u);
      JUMPOUT(0x19DCF5470);
    }

    v7 = &v72[HIDWORD(v73)];
    v8 = 8 * v4;
    do
    {
      v9 = *v5;
      if (*v5)
      {
        atomic_fetch_add_explicit(v9, 2u, memory_order_relaxed);
      }

      *v7++ = v9;
      ++v5;
      v8 -= 8;
    }

    while (v8);
    HIDWORD(v73) = v4;
  }

  v10 = *(a2 + 7);
  if (v10)
  {
    v11 = a2[2];
    v12 = v10 + v4;
    if (v10 + v4 > v73)
    {
      if (v73 + (v73 >> 1) <= v73 + 1)
      {
        v13 = v73 + 1;
      }

      else
      {
        v13 = v73 + (v73 >> 1);
      }

      if (v13 <= v12)
      {
        v13 = v10 + v4;
      }

      v14 = v13 <= 0x10 ? 16 : v13;
      WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(&v72, v14);
      v4 = HIDWORD(v73);
      if (v12 < HIDWORD(v73))
      {
        __break(0xC471u);
LABEL_115:
        JUMPOUT(0x19DCF5468);
      }
    }

    v15 = &v72[v4];
    v16 = 8 * v10;
    do
    {
      v17 = *v11;
      if (*v11)
      {
        atomic_fetch_add_explicit(v17, 2u, memory_order_relaxed);
      }

      *v15++ = v17;
      ++v11;
      v16 -= 8;
    }

    while (v16);
    HIDWORD(v73) = v12;
    LODWORD(v4) = v12;
  }

  if (!v4)
  {
    return WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v72, a2);
  }

  WebKit::domainsToString(&v71, v72, v4);
  v18 = v71;
  if (v71)
  {
    v19 = *(v71 + 1);
    if (v19 < 0)
    {
      goto LABEL_112;
    }
  }

  else
  {
    v19 = 0;
  }

  v20 = __OFADD__(v19, 2);
  v21 = v19 + 2;
  if (v20)
  {
    goto LABEL_112;
  }

  v20 = __OFADD__(v21, 6);
  v22 = v21 + 6;
  if (v20)
  {
    goto LABEL_112;
  }

  v20 = __OFADD__(v22, 41);
  v23 = v22 + 41;
  if (v20)
  {
    goto LABEL_112;
  }

  v24 = v23 + 6;
  if (__OFADD__(v23, 6))
  {
    goto LABEL_112;
  }

  if (!v71 || (*(v71 + 16) & 4) != 0)
  {
    WTF::tryFastCompactMalloc((v24 + 20));
    v26 = *buf;
    if (*buf)
    {
      *(*buf + 26) = *"Applying cross-site tracking restrictions";
      *v26 = 2;
      *(v26 + 4) = v24;
      *(v26 + 8) = v26 + 20;
      *(v26 + 16) = 0x5054495B00000004;
      *(v26 + 24) = 8285;
      qmemcpy((v26 + 42), "ite tracking restrictions to: [", 31);
      *buf = v18;
      v25 = WTF::StringTypeAdapter<WTF::StringImpl *,void>::writeTo<unsigned char>(buf, (v26 + 73));
      v37 = *buf;
      if (!*buf || (v37 = *(*buf + 4), v24 - 53 >= v37))
      {
        *(v26 + 73 + v37) = 11869;
        goto LABEL_54;
      }

LABEL_108:
      __break(1u);
      goto LABEL_109;
    }

    goto LABEL_112;
  }

  if (v24 > 0x7FFFFFEF || (v25 = WTF::tryFastCompactMalloc((2 * v24 + 20)), (v26 = *buf) == 0))
  {
LABEL_112:
    __break(0xC471u);
    goto LABEL_115;
  }

  **buf = 2;
  *(v26 + 4) = v24;
  *(v26 + 8) = v26 + 20;
  *(v26 + 16) = 0;
  v27 = "[ITP] ";
  for (i = 20; i != 32; i += 2)
  {
    v29 = *v27++;
    *(v26 + i) = v29;
  }

  if (v24 < 6)
  {
    goto LABEL_108;
  }

  v30 = "Applying cross-site tracking restrictions";
  for (j = 32; j != 114; j += 2)
  {
    v32 = *v30++;
    *(v26 + j) = v32;
  }

  if (v24 - 6 < 0x29)
  {
    goto LABEL_108;
  }

  v33 = " to: [";
  for (k = 114; k != 126; k += 2)
  {
    v35 = *v33++;
    *(v26 + k) = v35;
  }

  if (v24 - 47 <= 5)
  {
    goto LABEL_108;
  }

  *buf = v18;
  v25 = WTF::StringTypeAdapter<WTF::StringImpl *,void>::writeTo<char16_t>(buf, (v26 + 126));
  v36 = *buf;
  if (*buf)
  {
    v36 = *(*buf + 4);
    if (v24 - 53 < v36)
    {
      goto LABEL_108;
    }
  }

  *(v26 + 126 + 2 * v36) = 3014749;
LABEL_54:
  *buf = v26;
  WebKit::ResourceLoadStatisticsStore::debugBroadcastConsoleMessage(a1, 4, buf);
  v39 = *buf;
  *buf = 0;
  if (v39 && atomic_fetch_add_explicit(v39, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v39, v38);
  }

  v71 = 0;
  if (v18 && atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v18, v38);
  }

  v40 = HIDWORD(v73);
  if (HIDWORD(v73) <= 0x32)
  {
    v41 = qword_1ED640B30;
    if (!os_log_type_enabled(qword_1ED640B30, OS_LOG_TYPE_INFO))
    {
      return WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v72, a2);
    }

    WebKit::domainsToString(&v70, v72, v40);
    WTF::String::utf8();
    if (v68)
    {
      v42 = v68 + 16;
    }

    else
    {
      v42 = 0;
    }

    *buf = 136446466;
    *&buf[4] = "Applying cross-site tracking restrictions";
    v75 = 2082;
    *v76 = v42;
    _os_log_impl(&dword_19D52D000, v41, OS_LOG_TYPE_INFO, "ResourceLoadStatisticsStore: %{public}s to: %{public}s.", buf, 0x16u);
    v25 = v68;
    v68 = 0;
    if (!v25)
    {
      goto LABEL_68;
    }

    if (*v25 != 1)
    {
      --*v25;
LABEL_68:
      v43 = v70;
      v70 = 0;
      if (v43 && atomic_fetch_add_explicit(v43, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v43, a2);
      }

      return WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v72, a2);
    }

LABEL_109:
    WTF::fastFree(v25, a2);
    goto LABEL_68;
  }

  v69 = 50;
  v68 = WTF::fastMalloc(0x190);
  if (HIDWORD(v73))
  {
    v45 = vcvtps_u32_f32(HIDWORD(v73) / 50.0);
    v46 = v72;
    v47 = 8 * HIDWORD(v73);
    v48 = 1;
    do
    {
      v49 = HIDWORD(v69);
      if (HIDWORD(v69) == 50)
      {
        v50 = qword_1ED640B30;
        v51 = os_log_type_enabled(qword_1ED640B30, OS_LOG_TYPE_INFO);
        v52 = v68;
        if (v51)
        {
          WebKit::domainsToString(&v67, v68, 0x32u);
          WTF::String::utf8();
          if (v70)
          {
            v53 = v70 + 16;
          }

          else
          {
            v53 = 0;
          }

          *buf = 136446978;
          *&buf[4] = "Applying cross-site tracking restrictions";
          v75 = 1024;
          *v76 = v48;
          *&v76[4] = 1024;
          *&v76[6] = v45;
          v77 = 2082;
          v78 = v53;
          _os_log_impl(&dword_19D52D000, v50, OS_LOG_TYPE_INFO, "ResourceLoadStatisticsStore: %{public}s to (%d of %u): %{public}s.", buf, 0x22u);
          v55 = v70;
          v70 = 0;
          if (v55)
          {
            if (*v55 == 1)
            {
              WTF::fastFree(v55, v54);
            }

            else
            {
              --*v55;
            }
          }

          v56 = v67;
          v67 = 0;
          if (v56 && atomic_fetch_add_explicit(v56, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v56, v54);
          }

          v57 = HIDWORD(v69);
          v52 = v68;
        }

        else
        {
          v57 = 50;
        }

        WTF::VectorDestructor<true,WTF::String>::destruct(v52, (v52 + 8 * v57));
        v49 = 0;
        HIDWORD(v69) = 0;
        ++v48;
      }

      if (v49 == v69)
      {
        WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::RegistrableDomain&>(&v68, v46);
      }

      else
      {
        v58 = v68;
        v59 = *v46;
        v60 = v49;
        if (*v46)
        {
          atomic_fetch_add_explicit(v59, 2u, memory_order_relaxed);
          v60 = HIDWORD(v69);
        }

        *(v58 + v49) = v59;
        HIDWORD(v69) = v60 + 1;
      }

      ++v46;
      v47 -= 8;
    }

    while (v47);
    v61 = HIDWORD(v69);
    if (HIDWORD(v69))
    {
      v62 = qword_1ED640B30;
      if (os_log_type_enabled(qword_1ED640B30, OS_LOG_TYPE_INFO))
      {
        WebKit::domainsToString(&v67, v68, v61);
        WTF::String::utf8();
        if (v70)
        {
          v63 = v70 + 16;
        }

        else
        {
          v63 = 0;
        }

        *buf = 136446978;
        *&buf[4] = "Applying cross-site tracking restrictions";
        v75 = 1024;
        *v76 = v48;
        *&v76[4] = 1024;
        *&v76[6] = v45;
        v77 = 2082;
        v78 = v63;
        _os_log_impl(&dword_19D52D000, v62, OS_LOG_TYPE_INFO, "ResourceLoadStatisticsStore: %{public}s to (%d of %u): %{public}s.", buf, 0x22u);
        v64 = v70;
        v70 = 0;
        if (v64)
        {
          if (*v64 == 1)
          {
            WTF::fastFree(v64, v44);
          }

          else
          {
            --*v64;
          }
        }

        v65 = v67;
        v67 = 0;
        if (v65 && atomic_fetch_add_explicit(v65, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v65, v44);
        }
      }
    }
  }

  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v68, v44);
  return WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v72, a2);
}