void sub_19DE7E6D0(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11, uint64_t a12, uint64_t a13, void *a14, char a15)
{
  if (a15 == 1)
  {
    if (a14)
    {
    }

    if (a11)
    {
      if (atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(a11, a2);
      }
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_19DE7E788(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11, uint64_t a12, uint64_t a13, void *a14)
{
  if (a14)
  {
  }

  if (a11)
  {
    if (atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a11, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t WebKit::AuxiliaryProcessProxy::send<Messages::WebPage::HandleAutocorrectionContextRequest>(uint64_t a1, void *a2, uint64_t a3, char a4)
{
  v7 = IPC::Encoder::operator new(0x238, a2);
  *v7 = 2597;
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

void sub_19DE7E8AC(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, IPC::Encoder *a12)
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

uint64_t WebKit::AuxiliaryProcessProxy::send<Messages::WebPage::ClearSelectionAfterTappingSelectionHighlightIfNeeded>(uint64_t a1, float **a2, uint64_t a3, char a4)
{
  v8 = IPC::Encoder::operator new(0x238, a2);
  *v8 = 2464;
  *(v8 + 2) = 0;
  *(v8 + 3) = 0;
  *(v8 + 1) = a3;
  *(v8 + 68) = 0;
  *(v8 + 70) = 0;
  *(v8 + 69) = 0;
  IPC::Encoder::encodeHeader(v8);
  v18 = v8;
  IPC::ArgumentCoder<WebCore::FloatPoint,void>::encode(v8, *a2);
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

void sub_19DE7EA10(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, IPC::Encoder *a12)
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

uint64_t WebKit::AuxiliaryProcessProxy::sendWithAsyncReply<Messages::WebPage::GetSelectionContext,WTF::CompletionHandler<void ()(WTF::String const&,WTF::String const&,WTF::String const&)>>(uint64_t a1, void *a2, uint64_t *a3, uint64_t a4, char a5, int a6)
{
  v11 = IPC::Encoder::operator new(0x238, a2);
  *v11 = 2586;
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
  *v13 = &unk_1F110DED0;
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

void sub_19DE7EBE8(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, IPC::Encoder *a12)
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

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebPage::GetSelectionContext,WTF::CompletionHandler<void ()(WTF::String const&,WTF::String const&,WTF::String const&)>>(WTF::CompletionHandler<void ()(WTF::String const&,WTF::String const&,WTF::String const&)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F110DED0;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebPage::GetSelectionContext,WTF::CompletionHandler<void ()(WTF::String const&,WTF::String const&,WTF::String const&)>>(WTF::CompletionHandler<void ()(WTF::String const&,WTF::String const&,WTF::String const&)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F110DED0;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

WTF::StringImpl *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebPage::GetSelectionContext,WTF::CompletionHandler<void ()(WTF::String const&,WTF::String const&,WTF::String const&)>>(WTF::CompletionHandler<void ()(WTF::String const&,WTF::String const&,WTF::String const&)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::call(uint64_t a1, uint64_t a2, IPC::Decoder *a3)
{
  if (a3 && *a3)
  {
    IPC::ArgumentCoder<std::tuple<WTF::String,WTF::String,WTF::String>,void>::decode<IPC::Decoder>(a3, &v13);
    if (v16 & 1) != 0 || (v10 = *a3, v11 = *(a3 + 1), *a3 = 0, *(a3 + 1) = 0, (v12 = *(a3 + 3)) != 0) && v11 && ((*(*v12 + 16))(v12, v10), (v16))
    {
      result = WTF::CompletionHandler<void ()(WTF::String const&,WTF::String const&,WTF::String const&)>::operator()((a1 + 8));
      if (v16)
      {
        v7 = v15;
        v15 = 0;
        if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v7, v6);
        }

        v8 = v14;
        v14 = 0;
        if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v8, v6);
        }

        result = v13;
        v13 = 0;
        if (result)
        {
          if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            return WTF::StringImpl::destroy(result, v6);
          }
        }
      }
    }

    else
    {
      return IPC::Connection::cancelReply<Messages::WebPage::GetSelectionContext,WTF::CompletionHandler<void ()(WTF::String const&,WTF::String const&,WTF::String const&)>>((a1 + 8));
    }
  }

  else
  {
    v9 = (a1 + 8);

    return IPC::Connection::cancelReply<Messages::WebPage::GetSelectionContext,WTF::CompletionHandler<void ()(WTF::String const&,WTF::String const&,WTF::String const&)>>(v9);
  }

  return result;
}

void sub_19DE7EED4(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, WTF::StringImpl *a10, WTF::StringImpl *a11, char a12)
{
  if (a12 == 1)
  {
    if (a11 && atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a11, a2);
    }

    if (a10 && atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }

    if (a9)
    {
      if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(a9, a2);
      }
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_19DE7EFF0(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10, WTF::StringImpl *a11, WTF::StringImpl *a12)
{
  if (a12 && atomic_fetch_add_explicit(a12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a12, a2);
  }

  if (a11 && atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a11, a2);
  }

  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t WebKit::AuxiliaryProcessProxy::send<Messages::WebPage::HandleTwoFingerTapAtPoint>(uint64_t a1, int **a2, uint64_t a3, char a4)
{
  v8 = IPC::Encoder::operator new(0x238, a2);
  *v8 = 2599;
  *(v8 + 2) = 0;
  *(v8 + 3) = 0;
  *(v8 + 1) = a3;
  *(v8 + 68) = 0;
  *(v8 + 70) = 0;
  *(v8 + 69) = 0;
  IPC::Encoder::encodeHeader(v8);
  v18 = v8;
  IPC::ArgumentCoder<WebCore::IntPoint,void>::encode(v8, *a2);
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(v8, *a2[1]);
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v8, *a2[2]);
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

void sub_19DE7F17C(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, IPC::Encoder *a12)
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

uint64_t WebKit::AuxiliaryProcessProxy::sendWithAsyncReply<Messages::WebPage::SelectWithTwoTouches,WTF::CompletionHandler<void ()(WebCore::IntPoint const&,WebKit::GestureType,WebKit::GestureRecognizerState,WTF::OptionSet<WebKit::SelectionFlags>)>>(uint64_t a1, int **a2, uint64_t *a3, uint64_t a4, char a5, int a6)
{
  v12 = IPC::Encoder::operator new(0x238, a2);
  *v12 = 2707;
  *(v12 + 2) = 0;
  *(v12 + 3) = 0;
  *(v12 + 1) = a4;
  *(v12 + 68) = 0;
  *(v12 + 70) = 0;
  *(v12 + 69) = 0;
  IPC::Encoder::encodeHeader(v12);
  v25 = v12;
  IPC::ArgumentCoder<WebCore::IntPoint,void>::encode(v12, *a2);
  IPC::ArgumentCoder<WebCore::IntPoint,void>::encode(v12, a2[1]);
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(v12, *(a2 + 16));
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(v12, *(a2 + 17));
  v13 = *a3;
  *a3 = 0;
  v14 = WTF::fastMalloc(0x10);
  *v14 = &unk_1F110DEF8;
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

void sub_19DE7F390(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, IPC::Encoder *a12)
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

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebPage::SelectWithTwoTouches,WTF::CompletionHandler<void ()(WebCore::IntPoint const&,WebKit::GestureType,WebKit::GestureRecognizerState,WTF::OptionSet<WebKit::SelectionFlags>)>>(WTF::CompletionHandler<void ()(WebCore::IntPoint const&,WebKit::GestureType,WebKit::GestureRecognizerState,WTF::OptionSet<WebKit::SelectionFlags>)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F110DEF8;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebPage::SelectWithTwoTouches,WTF::CompletionHandler<void ()(WebCore::IntPoint const&,WebKit::GestureType,WebKit::GestureRecognizerState,WTF::OptionSet<WebKit::SelectionFlags>)>>(WTF::CompletionHandler<void ()(WebCore::IntPoint const&,WebKit::GestureType,WebKit::GestureRecognizerState,WTF::OptionSet<WebKit::SelectionFlags>)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F110DEF8;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebPage::SelectWithTwoTouches,WTF::CompletionHandler<void ()(WebCore::IntPoint const&,WebKit::GestureType,WebKit::GestureRecognizerState,WTF::OptionSet<WebKit::SelectionFlags>)>>(WTF::CompletionHandler<void ()(WebCore::IntPoint const&,WebKit::GestureType,WebKit::GestureRecognizerState,WTF::OptionSet<WebKit::SelectionFlags>)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::call(uint64_t a1, uint64_t a2, IPC::Decoder *a3)
{
  if (a3 && *a3 && (v10 = IPC::Decoder::decode<std::tuple<WebCore::IntPoint,WebKit::GestureType,WebKit::GestureRecognizerState,WTF::OptionSet<WebKit::SelectionFlags>>>(a3), v11 = v4, v12 = BYTE4(v4), (v4 & 0x100000000) != 0))
  {
    v8 = BYTE2(v4);
    v7 = BYTE1(v4);
    v5 = (a1 + 8);
    v6 = v4;
  }

  else
  {
    v10 = 0;
    v11 = 0;
    v5 = (a1 + 8);
    v6 = 0;
    v7 = 0;
    v8 = 0;
  }

  return WTF::CompletionHandler<void ()(WebCore::IntPoint const&,WebKit::GestureType,WebKit::GestureRecognizerState,WTF::OptionSet<WebKit::SelectionFlags>)>::operator()(v5, &v10, v6, v7, v8);
}

uint64_t WebKit::AuxiliaryProcessProxy::send<Messages::WebPage::RequestPositionInformation>(uint64_t a1, void *a2, uint64_t a3, char a4)
{
  v8 = IPC::Encoder::operator new(0x238, a2);
  *v8 = 2683;
  *(v8 + 2) = 0;
  *(v8 + 3) = 0;
  *(v8 + 1) = a3;
  *(v8 + 68) = 0;
  *(v8 + 70) = 0;
  *(v8 + 69) = 0;
  IPC::Encoder::encodeHeader(v8);
  v18 = v8;
  IPC::ArgumentCoder<WebKit::InteractionInformationRequest,void>::encode(v8, *a2);
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

void sub_19DE7F6C4(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, IPC::Encoder *a12)
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

uint64_t WebKit::AuxiliaryProcessProxy::send<Messages::WebPage::StartInteractionWithElementContextOrPosition>(uint64_t a1, int **a2, uint64_t a3, char a4)
{
  v8 = IPC::Encoder::operator new(0x238, a2);
  *v8 = 2802;
  *(v8 + 2) = 0;
  *(v8 + 3) = 0;
  *(v8 + 1) = a3;
  *(v8 + 68) = 0;
  *(v8 + 70) = 0;
  *(v8 + 69) = 0;
  IPC::Encoder::encodeHeader(v8);
  v18 = v8;
  IPC::ArgumentCoder<std::optional<WebCore::ElementContext>,void>::encode<IPC::Encoder,std::optional<WebCore::ElementContext> const&>(v8, *a2);
  IPC::ArgumentCoder<WebCore::IntPoint,void>::encode(v8, a2[1]);
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

void sub_19DE7F838(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, IPC::Encoder *a12)
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

uint64_t WebKit::AuxiliaryProcessProxy::send<Messages::WebPage::StopInteraction>(uint64_t a1, void *a2, uint64_t a3, char a4)
{
  v7 = IPC::Encoder::operator new(0x238, a2);
  *v7 = 2807;
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

void sub_19DE7F988(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, IPC::Encoder *a12)
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

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebPage::PerformActionOnElement,WebKit::WebPageProxy::performActionOnElement(unsigned int)::$_0>(WebKit::WebPageProxy::performActionOnElement(unsigned int)::$_0 &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F110DF20;
  v3 = a1[2];
  a1[2] = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, a2);
  }

  v4 = a1[1];
  a1[1] = 0;
  if (v4 && atomic_fetch_add(v4, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v4);
    WTF::fastFree(v4, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebPage::PerformActionOnElement,WebKit::WebPageProxy::performActionOnElement(unsigned int)::$_0>(WebKit::WebPageProxy::performActionOnElement(unsigned int)::$_0 &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(WTF *this, WTF::StringImpl *a2)
{
  *this = &unk_1F110DF20;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, a2);
  }

  v4 = *(this + 1);
  *(this + 1) = 0;
  if (v4 && atomic_fetch_add(v4, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v4);
    WTF::fastFree(v4, a2);
  }

  return WTF::fastFree(this, a2);
}

WTF::StringImpl **WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebPage::PerformActionOnElement,WebKit::WebPageProxy::performActionOnElement(unsigned int)::$_0>(WebKit::WebPageProxy::performActionOnElement(unsigned int)::$_0 &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::call(WTF::StringImpl **result, uint64_t a2, const WTF::StringImpl *a3)
{
  v3 = result[1];
  if (v3)
  {
    v4 = *(v3 + 1);
    if (v4)
    {
      result = WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashTraits<WTF::String>,WTF::DefaultHash<WTF::String>>,(WTF::ShouldValidateKey)1,WTF::String>((v4 + 1160), result + 2, a3);
      v5 = *(v4 + 1160);
      if (v5)
      {
        v6 = (v5 + 8 * *(v5 - 4));
        if (v6 == result)
        {
          return result;
        }
      }

      else
      {
        if (!result)
        {
          return result;
        }

        v6 = 0;
      }

      if (v6 != result)
      {

        return WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::remove((v4 + 1160), result);
      }
    }
  }

  return result;
}

uint64_t WebKit::AuxiliaryProcessProxy::send<Messages::WebPage::PerformActionOnElements>(uint64_t a1, uint64_t *a2, uint64_t a3, char a4)
{
  v8 = IPC::Encoder::operator new(0x238, a2);
  *v8 = 2641;
  *(v8 + 2) = 0;
  *(v8 + 3) = 0;
  *(v8 + 1) = a3;
  *(v8 + 68) = 0;
  *(v8 + 70) = 0;
  *(v8 + 69) = 0;
  IPC::Encoder::encodeHeader(v8);
  v18 = v8;
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v8, *a2);
  IPC::VectorArgumentCoder<false,WebCore::ElementContext,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebCore::ElementContext,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(v8, a2[1]);
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

void sub_19DE7FCAC(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, IPC::Encoder *a12)
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

uint64_t WebKit::AuxiliaryProcessProxy::send<Messages::WebPage::ApplicationDidFinishSnapshottingAfterEnteringBackground>(uint64_t a1, void *a2, uint64_t a3, char a4)
{
  v7 = IPC::Encoder::operator new(0x238, a2);
  *v7 = 2438;
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

void sub_19DE7FDFC(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, IPC::Encoder *a12)
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

uint64_t WebKit::AuxiliaryProcessProxy::send<Messages::WebPage::ApplicationWillResignActive>(uint64_t a1, void *a2, uint64_t a3, char a4)
{
  v7 = IPC::Encoder::operator new(0x238, a2);
  *v7 = 2441;
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

void sub_19DE7FF48(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, IPC::Encoder *a12)
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

uint64_t WebKit::AuxiliaryProcessProxy::send<Messages::WebPage::ApplicationDidBecomeActive>(uint64_t a1, void *a2, uint64_t a3, char a4)
{
  v7 = IPC::Encoder::operator new(0x238, a2);
  *v7 = 2435;
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

void sub_19DE80094(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, IPC::Encoder *a12)
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

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebPage::ExtendSelection,WebKit::WebPageProxy::extendSelection(WebCore::TextGranularity,WTF::CompletionHandler<void ()(void)> &&)::$_0>(WebKit::WebPageProxy::extendSelection(WebCore::TextGranularity,WTF::CompletionHandler<void ()(void)> &&)::$_0 &&,WTF::ThreadLikeAssertion)::{lambda(WebKit::WebPageProxy::extendSelection(WebCore::TextGranularity,WTF::CompletionHandler<void ()(void)> &&)::$_0,IPC::Decoder)#1},void,WebKit::WebPageProxy::extendSelection(WebCore::TextGranularity,WTF::CompletionHandler<void ()(void)> &&)::$_0,IPC::Decoder>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F110DF48;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebPage::ExtendSelection,WebKit::WebPageProxy::extendSelection(WebCore::TextGranularity,WTF::CompletionHandler<void ()(void)> &&)::$_0>(WebKit::WebPageProxy::extendSelection(WebCore::TextGranularity,WTF::CompletionHandler<void ()(void)> &&)::$_0 &&,WTF::ThreadLikeAssertion)::{lambda(WebKit::WebPageProxy::extendSelection(WebCore::TextGranularity,WTF::CompletionHandler<void ()(void)> &&)::$_0,IPC::Decoder)#1},void,WebKit::WebPageProxy::extendSelection(WebCore::TextGranularity,WTF::CompletionHandler<void ()(void)> &&)::$_0,IPC::Decoder>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F110DF48;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebPage::ExtendSelection,WebKit::WebPageProxy::extendSelection(WebCore::TextGranularity,WTF::CompletionHandler<void ()(void)> &&)::$_0>(WebKit::WebPageProxy::extendSelection(WebCore::TextGranularity,WTF::CompletionHandler<void ()(void)> &&)::$_0 &&,WTF::ThreadLikeAssertion)::{lambda(WebKit::WebPageProxy::extendSelection(WebCore::TextGranularity,WTF::CompletionHandler<void ()(void)> &&)::$_0,IPC::Decoder)#1},void,WebKit::WebPageProxy::extendSelection(WebCore::TextGranularity,WTF::CompletionHandler<void ()(void)> &&)::$_0,IPC::Decoder>::call(uint64_t result)
{
  if (*(result + 8))
  {
    return WTF::CompletionHandler<void ()(void)>::operator()((result + 8));
  }

  return result;
}

uint64_t WebKit::AuxiliaryProcessProxy::send<Messages::WebPage::SelectWordBackward>(uint64_t a1, void *a2, uint64_t a3, char a4)
{
  v7 = IPC::Encoder::operator new(0x238, a2);
  *v7 = 2708;
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

void sub_19DE802EC(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, IPC::Encoder *a12)
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

uint64_t WebKit::AuxiliaryProcessProxy::sendWithAsyncReply<Messages::WebPage::ExtendSelectionForReplacement,WTF::CompletionHandler<void ()(void)>>(uint64_t a1, void *a2, uint64_t *a3, uint64_t a4, char a5, int a6)
{
  v11 = IPC::Encoder::operator new(0x238, a2);
  *v11 = 2548;
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
  *v13 = &unk_1F110DF70;
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

void sub_19DE804C0(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, IPC::Encoder *a12)
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

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebPage::ExtendSelectionForReplacement,WTF::CompletionHandler<void ()(void)>>(WTF::CompletionHandler<void ()(void)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F110DF70;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebPage::ExtendSelectionForReplacement,WTF::CompletionHandler<void ()(void)>>(WTF::CompletionHandler<void ()(void)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F110DF70;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WebKit::AuxiliaryProcessProxy::sendWithAsyncReply<Messages::WebPage::GetRectsForGranularityWithSelectionOffset,WTF::CompletionHandler<void ()(WTF::Vector<WebCore::SelectionGeometry,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&)>>(uint64_t a1, int *a2, uint64_t *a3, uint64_t a4, char a5, int a6)
{
  v12 = IPC::Encoder::operator new(0x238, a2);
  *v12 = 2580;
  *(v12 + 2) = 0;
  *(v12 + 3) = 0;
  *(v12 + 1) = a4;
  *(v12 + 68) = 0;
  *(v12 + 70) = 0;
  *(v12 + 69) = 0;
  IPC::Encoder::encodeHeader(v12);
  v25 = v12;
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(v12, *a2);
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v12, a2[1]);
  v13 = *a3;
  *a3 = 0;
  v14 = WTF::fastMalloc(0x10);
  *v14 = &unk_1F110DF98;
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

void sub_19DE80808(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, IPC::Encoder *a12)
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

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebPage::GetRectsForGranularityWithSelectionOffset,WTF::CompletionHandler<void ()(WTF::Vector<WebCore::SelectionGeometry,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&)>>(WTF::CompletionHandler<void ()(WTF::Vector<WebCore::SelectionGeometry,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F110DF98;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebPage::GetRectsForGranularityWithSelectionOffset,WTF::CompletionHandler<void ()(WTF::Vector<WebCore::SelectionGeometry,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&)>>(WTF::CompletionHandler<void ()(WTF::Vector<WebCore::SelectionGeometry,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F110DF98;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

WTF *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebPage::GetRectsForGranularityWithSelectionOffset,WTF::CompletionHandler<void ()(WTF::Vector<WebCore::SelectionGeometry,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&)>>(WTF::CompletionHandler<void ()(WTF::Vector<WebCore::SelectionGeometry,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::call(uint64_t a1, uint64_t a2, IPC::Decoder *a3)
{
  if (a3 && *a3)
  {
    IPC::Decoder::decode<std::tuple<WTF::Vector<WebCore::SelectionGeometry,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>(&v7, a3);
    if (v9 == 1)
    {
      result = WTF::CompletionHandler<void ()(WTF::Vector<WebCore::SelectionGeometry,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&)>::operator()((a1 + 8));
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
      return IPC::Connection::cancelReply<Messages::WebPage::GetRectsForGranularityWithSelectionOffset,WTF::CompletionHandler<void ()(WTF::Vector<WebCore::SelectionGeometry,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&)>>((a1 + 8));
    }
  }

  else
  {
    v6 = (a1 + 8);

    return IPC::Connection::cancelReply<Messages::WebPage::GetRectsForGranularityWithSelectionOffset,WTF::CompletionHandler<void ()(WTF::Vector<WebCore::SelectionGeometry,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&)>>(v6);
  }

  return result;
}

void sub_19DE80A54(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF *a10, int a11, int a12, char a13)
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

WTF *IPC::Connection::cancelReply<Messages::WebPage::GetRectsForGranularityWithSelectionOffset,WTF::CompletionHandler<void ()(WTF::Vector<WebCore::SelectionGeometry,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&)>>(uint64_t *a1)
{
  v8 = 0;
  v9 = 0;
  std::__tuple_leaf<0ul,WTF::Vector<WebCore::SelectionGeometry,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,false>::__tuple_leaf[abi:sn200100]<WTF::Vector<WebCore::SelectionGeometry,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,0>(&v6, &v8);
  v3 = v8;
  if (v8)
  {
    v8 = 0;
    LODWORD(v9) = 0;
    WTF::fastFree(v3, v2);
  }

  WTF::CompletionHandler<void ()(WTF::Vector<WebCore::SelectionGeometry,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&)>::operator()(a1);
  result = v6;
  if (v6)
  {
    v6 = 0;
    v7 = 0;
    return WTF::fastFree(result, v4);
  }

  return result;
}

void sub_19DE80AF8(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF *a9, int a10, WTF *a11, int a12)
{
  if (a9)
  {
    WTF::fastFree(a9, a2);
  }

  _Unwind_Resume(exception_object);
}

WTF *IPC::Decoder::decode<std::tuple<WTF::Vector<WebCore::SelectionGeometry,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>(uint64_t a1, IPC::Decoder *a2)
{
  IPC::Decoder::decode<WTF::Vector<WebCore::SelectionGeometry,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(a2, &v9);
  if (v11 == 1)
  {
    result = std::__tuple_leaf<0ul,WTF::Vector<WebCore::SelectionGeometry,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,false>::__tuple_leaf[abi:sn200100]<WTF::Vector<WebCore::SelectionGeometry,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,0>(a1, &v9);
    *(a1 + 16) = 1;
    if ((v11 & 1) == 0)
    {
      return result;
    }

    result = v9;
    if (!v9)
    {
      return result;
    }

    v9 = 0;
    v10 = 0;
    result = WTF::fastFree(result, v5);
    if (*(a1 + 16))
    {
      return result;
    }
  }

  else
  {
    *a1 = 0;
    *(a1 + 16) = 0;
  }

  v6 = *a2;
  v7 = *(a2 + 1);
  *a2 = 0;
  *(a2 + 1) = 0;
  result = *(a2 + 3);
  if (result)
  {
    v8 = v7 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (!v8)
  {
    return (*(*result + 16))(result, v6);
  }

  return result;
}

void sub_19DE80BFC(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF *a10, int a11, int a12, char a13)
{
  if (*(v13 + 16) == 1)
  {
    v15 = *v13;
    if (*v13)
    {
      *v13 = 0;
      *(v13 + 8) = 0;
      WTF::fastFree(v15, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void *std::__tuple_leaf<0ul,WTF::Vector<WebCore::SelectionGeometry,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,false>::__tuple_leaf[abi:sn200100]<WTF::Vector<WebCore::SelectionGeometry,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,0>(void *a1, _DWORD *a2)
{
  *a1 = 0;
  a1[1] = 0;
  WTF::VectorBuffer<unsigned short,0ul,WTF::FastMalloc>::adopt(a1, a2);
  return a1;
}

void sub_19DE80C7C(_Unwind_Exception *exception_object, void *a2)
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

uint64_t WebKit::AuxiliaryProcessProxy::sendWithAsyncReply<Messages::WebPage::GetRectsAtSelectionOffsetWithText,WTF::CompletionHandler<void ()(WTF::Vector<WebCore::SelectionGeometry,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&)>>(uint64_t a1, uint64_t **a2, uint64_t *a3, uint64_t a4, char a5, int a6)
{
  v12 = IPC::Encoder::operator new(0x238, a2);
  *v12 = 2579;
  *(v12 + 2) = 0;
  *(v12 + 3) = 0;
  *(v12 + 1) = a4;
  *(v12 + 68) = 0;
  *(v12 + 70) = 0;
  *(v12 + 69) = 0;
  IPC::Encoder::encodeHeader(v12);
  v25 = v12;
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v12, *a2);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v12, a2[1]);
  v13 = *a3;
  *a3 = 0;
  v14 = WTF::fastMalloc(0x10);
  *v14 = &unk_1F110DFC0;
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

void sub_19DE80E34(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, IPC::Encoder *a12)
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

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebPage::GetRectsAtSelectionOffsetWithText,WTF::CompletionHandler<void ()(WTF::Vector<WebCore::SelectionGeometry,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&)>>(WTF::CompletionHandler<void ()(WTF::Vector<WebCore::SelectionGeometry,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F110DFC0;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebPage::GetRectsAtSelectionOffsetWithText,WTF::CompletionHandler<void ()(WTF::Vector<WebCore::SelectionGeometry,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&)>>(WTF::CompletionHandler<void ()(WTF::Vector<WebCore::SelectionGeometry,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F110DFC0;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

WTF *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebPage::GetRectsAtSelectionOffsetWithText,WTF::CompletionHandler<void ()(WTF::Vector<WebCore::SelectionGeometry,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&)>>(WTF::CompletionHandler<void ()(WTF::Vector<WebCore::SelectionGeometry,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::call(uint64_t a1, uint64_t a2, IPC::Decoder *a3)
{
  if (a3 && *a3)
  {
    IPC::Decoder::decode<std::tuple<WTF::Vector<WebCore::SelectionGeometry,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>(&v7, a3);
    if (v9 == 1)
    {
      result = WTF::CompletionHandler<void ()(WTF::Vector<WebCore::SelectionGeometry,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&)>::operator()((a1 + 8));
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
      return IPC::Connection::cancelReply<Messages::WebPage::GetRectsAtSelectionOffsetWithText,WTF::CompletionHandler<void ()(WTF::Vector<WebCore::SelectionGeometry,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&)>>((a1 + 8));
    }
  }

  else
  {
    v6 = (a1 + 8);

    return IPC::Connection::cancelReply<Messages::WebPage::GetRectsAtSelectionOffsetWithText,WTF::CompletionHandler<void ()(WTF::Vector<WebCore::SelectionGeometry,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&)>>(v6);
  }

  return result;
}

void sub_19DE81080(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF *a10, int a11, int a12, char a13)
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

WTF *IPC::Connection::cancelReply<Messages::WebPage::GetRectsAtSelectionOffsetWithText,WTF::CompletionHandler<void ()(WTF::Vector<WebCore::SelectionGeometry,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&)>>(uint64_t *a1)
{
  v8 = 0;
  v9 = 0;
  std::__tuple_leaf<0ul,WTF::Vector<WebCore::SelectionGeometry,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,false>::__tuple_leaf[abi:sn200100]<WTF::Vector<WebCore::SelectionGeometry,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,0>(&v6, &v8);
  v3 = v8;
  if (v8)
  {
    v8 = 0;
    LODWORD(v9) = 0;
    WTF::fastFree(v3, v2);
  }

  WTF::CompletionHandler<void ()(WTF::Vector<WebCore::SelectionGeometry,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&)>::operator()(a1);
  result = v6;
  if (v6)
  {
    v6 = 0;
    v7 = 0;
    return WTF::fastFree(result, v4);
  }

  return result;
}

void sub_19DE81124(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF *a9, int a10, WTF *a11, int a12)
{
  if (a9)
  {
    WTF::fastFree(a9, a2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t WebKit::AuxiliaryProcessProxy::send<Messages::WebPage::StoreSelectionForAccessibility>(uint64_t a1, void *a2, uint64_t a3, char a4)
{
  v8 = IPC::Encoder::operator new(0x238, a2);
  *v8 = 2812;
  *(v8 + 2) = 0;
  *(v8 + 3) = 0;
  *(v8 + 1) = a3;
  *(v8 + 68) = 0;
  *(v8 + 70) = 0;
  *(v8 + 69) = 0;
  IPC::Encoder::encodeHeader(v8);
  v18 = v8;
  IPC::Encoder::operator<<<BOOL &>(v8, a2);
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

void sub_19DE81260(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, IPC::Encoder *a12)
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

uint64_t WebKit::AuxiliaryProcessProxy::send<Messages::WebPage::StartAutoscrollAtPosition>(uint64_t a1, float **a2, uint64_t a3, char a4)
{
  v8 = IPC::Encoder::operator new(0x238, a2);
  *v8 = 2799;
  *(v8 + 2) = 0;
  *(v8 + 3) = 0;
  *(v8 + 1) = a3;
  *(v8 + 68) = 0;
  *(v8 + 70) = 0;
  *(v8 + 69) = 0;
  IPC::Encoder::encodeHeader(v8);
  v18 = v8;
  IPC::ArgumentCoder<WebCore::FloatPoint,void>::encode(v8, *a2);
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

void sub_19DE813C8(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, IPC::Encoder *a12)
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

uint64_t WebKit::AuxiliaryProcessProxy::send<Messages::WebPage::CancelAutoscroll>(uint64_t a1, void *a2, uint64_t a3, char a4)
{
  v7 = IPC::Encoder::operator new(0x238, a2);
  *v7 = 2450;
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

void sub_19DE81518(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, IPC::Encoder *a12)
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

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebPage::MoveSelectionByOffset,WebKit::WebPageProxy::moveSelectionByOffset(int,WTF::CompletionHandler<void ()(void)> &&)::$_0>(WebKit::WebPageProxy::moveSelectionByOffset(int,WTF::CompletionHandler<void ()(void)> &&)::$_0 &&,WTF::ThreadLikeAssertion)::{lambda(WebKit::WebPageProxy::moveSelectionByOffset(int,WTF::CompletionHandler<void ()(void)> &&)::$_0,IPC::Decoder)#1},void,WebKit::WebPageProxy::moveSelectionByOffset(int,WTF::CompletionHandler<void ()(void)> &&)::$_0,IPC::Decoder>::~CallableWrapper(void *a1, void *a2)
{
  *a1 = &unk_1F110DFE8;
  v3 = a1[2];
  a1[2] = 0;
  if (v3)
  {
    WTF::RefCounted<WebKit::ProcessThrottlerActivity>::deref((v3 + 8), a2);
  }

  v4 = a1[1];
  a1[1] = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebPage::MoveSelectionByOffset,WebKit::WebPageProxy::moveSelectionByOffset(int,WTF::CompletionHandler<void ()(void)> &&)::$_0>(WebKit::WebPageProxy::moveSelectionByOffset(int,WTF::CompletionHandler<void ()(void)> &&)::$_0 &&,WTF::ThreadLikeAssertion)::{lambda(WebKit::WebPageProxy::moveSelectionByOffset(int,WTF::CompletionHandler<void ()(void)> &&)::$_0,IPC::Decoder)#1},void,WebKit::WebPageProxy::moveSelectionByOffset(int,WTF::CompletionHandler<void ()(void)> &&)::$_0,IPC::Decoder>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F110DFE8;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::RefCounted<WebKit::ProcessThrottlerActivity>::deref((v3 + 8), a2);
  }

  v4 = *(this + 1);
  *(this + 1) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WebKit::AuxiliaryProcessProxy::send<Messages::WebPage::WillStartUserTriggeredZooming>(uint64_t a1, void *a2, uint64_t a3, char a4)
{
  v7 = IPC::Encoder::operator new(0x238, a2);
  *v7 = 2864;
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

void sub_19DE8178C(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, IPC::Encoder *a12)
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

uint64_t WebKit::AuxiliaryProcessProxy::send<Messages::WebPage::DidEndUserTriggeredZooming>(uint64_t a1, void *a2, uint64_t a3, char a4)
{
  v7 = IPC::Encoder::operator new(0x238, a2);
  *v7 = 2507;
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

void sub_19DE818D8(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, IPC::Encoder *a12)
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

void *WTF::Detail::CallableWrapper<WebKit::WebPageProxy::potentialTapAtPosition(std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::FloatPoint const&,BOOL,WTF::ObjectIdentifierGeneric<WebKit::TapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>)::$_0,void,std::optional<WebCore::RemoteUserInputEventData> &&>::~CallableWrapper(void *a1, void *a2)
{
  v3 = a1[1];
  *a1 = &unk_1F110E010;
  a1[1] = 0;
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    WTF::fastFree(v3, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebPageProxy::potentialTapAtPosition(std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::FloatPoint const&,BOOL,WTF::ObjectIdentifierGeneric<WebKit::TapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>)::$_0,void,std::optional<WebCore::RemoteUserInputEventData> &&>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F110E010;
  *(this + 1) = 0;
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    WTF::fastFree(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

void WTF::Detail::CallableWrapper<WebKit::WebPageProxy::potentialTapAtPosition(std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::FloatPoint const&,BOOL,WTF::ObjectIdentifierGeneric<WebKit::TapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>)::$_0,void,std::optional<WebCore::RemoteUserInputEventData> &&>::call(uint64_t a1, __int128 *a2)
{
  v5 = *a2;
  v6 = *(a2 + 2);
  if (v6)
  {
    v3 = *(a1 + 8);
    if (v3)
    {
      v4 = *(v3 + 8);
      if (v4)
      {
        CFRetain(*(v4 - 8));
        WebCore::FloatPoint::FloatPoint(v7, &v5 + 1);
        WebKit::WebPageProxy::potentialTapAtPosition(v4 - 16, v5, 1, v7, *(a1 + 16), *(a1 + 24));
        CFRelease(*(v4 - 8));
      }
    }
  }
}

void *WTF::Detail::CallableWrapper<WebKit::WebPageProxy::commitPotentialTap(std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::OptionSet<WebKit::WebEventModifier>,WebCore::ProcessQualified<WebKit::MonotonicObjectIdentifier<WebKit::TransactionIDType>>,unsigned int)::$_0,void,std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>&&>::~CallableWrapper(void *a1, void *a2)
{
  v3 = a1[1];
  *a1 = &unk_1F110E038;
  a1[1] = 0;
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    WTF::fastFree(v3, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebPageProxy::commitPotentialTap(std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::OptionSet<WebKit::WebEventModifier>,WebCore::ProcessQualified<WebKit::MonotonicObjectIdentifier<WebKit::TransactionIDType>>,unsigned int)::$_0,void,std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>&&>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F110E038;
  *(this + 1) = 0;
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    WTF::fastFree(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

void WTF::Detail::CallableWrapper<WebKit::WebPageProxy::commitPotentialTap(std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::OptionSet<WebKit::WebEventModifier>,WebCore::ProcessQualified<WebKit::MonotonicObjectIdentifier<WebKit::TransactionIDType>>,unsigned int)::$_0,void,std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>&&>::call(uint64_t a1, uint64_t *a2)
{
  v2 = a2[1];
  if (v2)
  {
    v4 = *(a1 + 8);
    if (v4)
    {
      v5 = *(v4 + 8);
      if (v5)
      {
        v6 = *a2;
        CFRetain(*(v5 - 8));
        WebKit::WebPageProxy::commitPotentialTap(v5 - 16, v6, v2, *(a1 + 16), *(a1 + 24), *(a1 + 32), *(a1 + 40));
        v7 = *(v5 - 8);

        CFRelease(v7);
      }
    }
  }
}

uint64_t WebKit::AuxiliaryProcessProxy::send<Messages::WebPage::CancelPotentialTap>(uint64_t a1, void *a2, uint64_t a3, char a4)
{
  v7 = IPC::Encoder::operator new(0x238, a2);
  *v7 = 2452;
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

void sub_19DE81D2C(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, IPC::Encoder *a12)
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

uint64_t WebKit::AuxiliaryProcessProxy::send<Messages::WebPage::TapHighlightAtPosition>(uint64_t a1, float **a2, uint64_t a3, char a4)
{
  v8 = IPC::Encoder::operator new(0x238, a2);
  *v8 = 2821;
  *(v8 + 2) = 0;
  *(v8 + 3) = 0;
  *(v8 + 1) = a3;
  *(v8 + 68) = 0;
  *(v8 + 70) = 0;
  *(v8 + 69) = 0;
  IPC::Encoder::encodeHeader(v8);
  v18 = v8;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v8, **a2);
  IPC::ArgumentCoder<WebCore::FloatPoint,void>::encode(v8, a2[1]);
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

void sub_19DE81EA0(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, IPC::Encoder *a12)
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

uint64_t WebKit::AuxiliaryProcessProxy::send<Messages::WebPage::AttemptSyntheticClick>(uint64_t a1, int **a2, uint64_t a3, char a4)
{
  v8 = IPC::Encoder::operator new(0x238, a2);
  *v8 = 2443;
  *(v8 + 2) = 0;
  *(v8 + 3) = 0;
  *(v8 + 1) = a3;
  *(v8 + 68) = 0;
  *(v8 + 70) = 0;
  *(v8 + 69) = 0;
  IPC::Encoder::encodeHeader(v8);
  v18 = v8;
  IPC::ArgumentCoder<WebCore::IntPoint,void>::encode(v8, *a2);
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(v8, *a2[1]);
  IPC::ArgumentCoder<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardFrameItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,void>::encode(v8, a2[2]);
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

void sub_19DE82024(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, IPC::Encoder *a12)
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

uint64_t WebKit::AuxiliaryProcessProxy::send<Messages::WebPage::DidRecognizeLongPress>(uint64_t a1, void *a2, uint64_t a3, char a4)
{
  v7 = IPC::Encoder::operator new(0x238, a2);
  *v7 = 2514;
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

void sub_19DE82174(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, IPC::Encoder *a12)
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

uint64_t WebKit::AuxiliaryProcessProxy::send<Messages::WebPage::HandleDoubleTapForDoubleClickAtPoint>(uint64_t a1, int **a2, uint64_t a3, char a4)
{
  v8 = IPC::Encoder::operator new(0x238, a2);
  *v8 = 2598;
  *(v8 + 2) = 0;
  *(v8 + 3) = 0;
  *(v8 + 1) = a3;
  *(v8 + 68) = 0;
  *(v8 + 70) = 0;
  *(v8 + 69) = 0;
  IPC::Encoder::encodeHeader(v8);
  v18 = v8;
  IPC::ArgumentCoder<WebCore::IntPoint,void>::encode(v8, *a2);
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(v8, *a2[1]);
  IPC::ArgumentCoder<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardFrameItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,void>::encode(v8, a2[2]);
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

void sub_19DE822F4(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, IPC::Encoder *a12)
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

uint64_t WebKit::AuxiliaryProcessProxy::send<Messages::WebPage::InspectorNodeSearchMovedToPosition>(uint64_t a1, float **a2, uint64_t a3, char a4)
{
  v8 = IPC::Encoder::operator new(0x238, a2);
  *v8 = 2613;
  *(v8 + 2) = 0;
  *(v8 + 3) = 0;
  *(v8 + 1) = a3;
  *(v8 + 68) = 0;
  *(v8 + 70) = 0;
  *(v8 + 69) = 0;
  IPC::Encoder::encodeHeader(v8);
  v18 = v8;
  IPC::ArgumentCoder<WebCore::FloatPoint,void>::encode(v8, *a2);
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

void sub_19DE8245C(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, IPC::Encoder *a12)
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

uint64_t WebKit::AuxiliaryProcessProxy::send<Messages::WebPage::InspectorNodeSearchEndedAtPosition>(uint64_t a1, float **a2, uint64_t a3, char a4)
{
  v8 = IPC::Encoder::operator new(0x238, a2);
  *v8 = 2612;
  *(v8 + 2) = 0;
  *(v8 + 3) = 0;
  *(v8 + 1) = a3;
  *(v8 + 68) = 0;
  *(v8 + 70) = 0;
  *(v8 + 69) = 0;
  IPC::Encoder::encodeHeader(v8);
  v18 = v8;
  IPC::ArgumentCoder<WebCore::FloatPoint,void>::encode(v8, *a2);
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

void sub_19DE825C4(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, IPC::Encoder *a12)
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

uint64_t WebKit::AuxiliaryProcessProxy::send<Messages::WebPage::BlurFocusedElement>(uint64_t a1, void *a2, uint64_t a3, char a4)
{
  v7 = IPC::Encoder::operator new(0x238, a2);
  *v7 = 2448;
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

void sub_19DE82714(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, IPC::Encoder *a12)
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

uint64_t WebKit::AuxiliaryProcessProxy::send<Messages::WebPage::SetIsShowingInputViewForFocusedElement>(uint64_t a1, void *a2, uint64_t a3, char a4)
{
  v8 = IPC::Encoder::operator new(0x238, a2);
  *v8 = 2745;
  *(v8 + 2) = 0;
  *(v8 + 3) = 0;
  *(v8 + 1) = a3;
  *(v8 + 68) = 0;
  *(v8 + 70) = 0;
  *(v8 + 69) = 0;
  IPC::Encoder::encodeHeader(v8);
  v18 = v8;
  IPC::Encoder::operator<<<BOOL &>(v8, a2);
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

void sub_19DE82878(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, IPC::Encoder *a12)
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

uint64_t WebKit::AuxiliaryProcessProxy::send<Messages::WebPage::DidReleaseAllTouchPoints>(uint64_t a1, void *a2, uint64_t a3, char a4)
{
  v7 = IPC::Encoder::operator new(0x238, a2);
  *v7 = 2515;
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

void sub_19DE829C8(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, IPC::Encoder *a12)
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

uint64_t WebKit::AuxiliaryProcessProxy::send<Messages::WebPage::AutofillLoginCredentials>(uint64_t a1, uint64_t **a2, uint64_t a3, char a4)
{
  v8 = IPC::Encoder::operator new(0x238, a2);
  *v8 = 2444;
  *(v8 + 2) = 0;
  *(v8 + 3) = 0;
  *(v8 + 1) = a3;
  *(v8 + 68) = 0;
  *(v8 + 70) = 0;
  *(v8 + 69) = 0;
  IPC::Encoder::encodeHeader(v8);
  v18 = v8;
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v8, *a2);
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

void sub_19DE82B38(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, IPC::Encoder *a12)
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

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebPage::FocusNextFocusedElement,WebKit::WebPageProxy::focusNextFocusedElement(BOOL,WTF::CompletionHandler<void ()(void)> &&)::$_0>(WebKit::WebPageProxy::focusNextFocusedElement(BOOL,WTF::CompletionHandler<void ()(void)> &&)::$_0 &&,WTF::ThreadLikeAssertion)::{lambda(WebKit::WebPageProxy::focusNextFocusedElement(BOOL,WTF::CompletionHandler<void ()(void)> &&)::$_0,IPC::Decoder)#1},void,WebKit::WebPageProxy::focusNextFocusedElement(BOOL,WTF::CompletionHandler<void ()(void)> &&)::$_0,IPC::Decoder>::~CallableWrapper(void *a1, void *a2)
{
  *a1 = &unk_1F110E060;
  v3 = a1[2];
  a1[2] = 0;
  if (v3)
  {
    WTF::RefCounted<WebKit::ProcessThrottlerActivity>::deref((v3 + 8), a2);
  }

  v4 = a1[1];
  a1[1] = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebPage::FocusNextFocusedElement,WebKit::WebPageProxy::focusNextFocusedElement(BOOL,WTF::CompletionHandler<void ()(void)> &&)::$_0>(WebKit::WebPageProxy::focusNextFocusedElement(BOOL,WTF::CompletionHandler<void ()(void)> &&)::$_0 &&,WTF::ThreadLikeAssertion)::{lambda(WebKit::WebPageProxy::focusNextFocusedElement(BOOL,WTF::CompletionHandler<void ()(void)> &&)::$_0,IPC::Decoder)#1},void,WebKit::WebPageProxy::focusNextFocusedElement(BOOL,WTF::CompletionHandler<void ()(void)> &&)::$_0,IPC::Decoder>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F110E060;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::RefCounted<WebKit::ProcessThrottlerActivity>::deref((v3 + 8), a2);
  }

  v4 = *(this + 1);
  *(this + 1) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WebKit::AuxiliaryProcessProxy::send<Messages::WebPage::SetFocusedElementValue>(uint64_t a1, uint64_t **a2, uint64_t a3, char a4)
{
  v8 = IPC::Encoder::operator new(0x238, a2);
  *v8 = 2737;
  *(v8 + 2) = 0;
  *(v8 + 3) = 0;
  *(v8 + 1) = a3;
  *(v8 + 68) = 0;
  *(v8 + 70) = 0;
  *(v8 + 69) = 0;
  IPC::Encoder::encodeHeader(v8);
  v18 = v8;
  IPC::ArgumentCoder<WebCore::ElementContext,void>::encode(v8, *a2);
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

void sub_19DE82DD0(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, IPC::Encoder *a12)
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

uint64_t WebKit::AuxiliaryProcessProxy::send<Messages::WebPage::SetFocusedElementSelectedIndex>(uint64_t a1, void *a2, uint64_t a3, char a4)
{
  v8 = IPC::Encoder::operator new(0x238, a2);
  *v8 = 2736;
  *(v8 + 2) = 0;
  *(v8 + 3) = 0;
  *(v8 + 1) = a3;
  *(v8 + 68) = 0;
  *(v8 + 70) = 0;
  *(v8 + 69) = 0;
  IPC::Encoder::encodeHeader(v8);
  v18 = v8;
  IPC::ArgumentCoder<WebCore::ElementContext,void>::encode(v8, *a2);
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v8, *(a2 + 2));
  IPC::Encoder::operator<<<BOOL &>(v8, a2 + 12);
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

void sub_19DE82F50(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, IPC::Encoder *a12)
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

uint64_t WebKit::AuxiliaryProcessProxy::send<Messages::WebPage::GenerateSyntheticEditingCommand>(uint64_t a1, _BYTE *a2, uint64_t a3, char a4)
{
  v8 = IPC::Encoder::operator new(0x238, a2);
  *v8 = 2564;
  *(v8 + 2) = 0;
  *(v8 + 3) = 0;
  *(v8 + 1) = a3;
  *(v8 + 68) = 0;
  *(v8 + 70) = 0;
  *(v8 + 69) = 0;
  IPC::Encoder::encodeHeader(v8);
  v18 = v8;
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(v8, *a2);
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

void sub_19DE830B8(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, IPC::Encoder *a12)
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

uint64_t WebKit::AuxiliaryProcessProxy::send<Messages::WebPage::HardwareKeyboardAvailabilityChanged>(uint64_t a1, char **a2, uint64_t a3, char a4)
{
  v8 = IPC::Encoder::operator new(0x238, a2);
  *v8 = 2601;
  *(v8 + 2) = 0;
  *(v8 + 3) = 0;
  *(v8 + 1) = a3;
  *(v8 + 68) = 0;
  *(v8 + 70) = 0;
  *(v8 + 69) = 0;
  IPC::Encoder::encodeHeader(v8);
  v18 = v8;
  IPC::ArgumentCoder<WebKit::HardwareKeyboardState,void>::encode(v8, *a2);
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

void sub_19DE83220(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, IPC::Encoder *a12)
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

uint64_t WebKit::AuxiliaryProcessProxy::sendWithAsyncReply<Messages::WebPage::RequestEvasionRectsAboveSelection,WTF::CompletionHandler<void ()(WTF::Vector<WebCore::FloatRect,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&)>>(uint64_t a1, void *a2, uint64_t *a3, uint64_t a4, char a5, int a6)
{
  v11 = IPC::Encoder::operator new(0x238, a2);
  *v11 = 2678;
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
  *v13 = &unk_1F110E088;
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

void sub_19DE833F8(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, IPC::Encoder *a12)
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

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebPage::RequestEvasionRectsAboveSelection,WTF::CompletionHandler<void ()(WTF::Vector<WebCore::FloatRect,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&)>>(WTF::CompletionHandler<void ()(WTF::Vector<WebCore::FloatRect,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F110E088;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebPage::RequestEvasionRectsAboveSelection,WTF::CompletionHandler<void ()(WTF::Vector<WebCore::FloatRect,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&)>>(WTF::CompletionHandler<void ()(WTF::Vector<WebCore::FloatRect,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F110E088;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

WTF *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebPage::RequestEvasionRectsAboveSelection,WTF::CompletionHandler<void ()(WTF::Vector<WebCore::FloatRect,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&)>>(WTF::CompletionHandler<void ()(WTF::Vector<WebCore::FloatRect,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::call(uint64_t a1, uint64_t a2, IPC::Decoder *a3)
{
  if (a3 && *a3)
  {
    IPC::Decoder::decode<std::tuple<WTF::Vector<WebCore::FloatRect,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>(a3, &v7);
    if (v9 == 1)
    {
      result = WTF::CompletionHandler<void ()(WTF::Vector<WebCore::FloatRect,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&)>::operator()((a1 + 8));
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
      return IPC::Connection::cancelReply<Messages::WebPage::RequestEvasionRectsAboveSelection,WTF::CompletionHandler<void ()(WTF::Vector<WebCore::FloatRect,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&)>>((a1 + 8));
    }
  }

  else
  {
    v6 = (a1 + 8);

    return IPC::Connection::cancelReply<Messages::WebPage::RequestEvasionRectsAboveSelection,WTF::CompletionHandler<void ()(WTF::Vector<WebCore::FloatRect,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&)>>(v6);
  }

  return result;
}

void sub_19DE8363C(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF *a10, int a11, int a12, char a13)
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

WTF *IPC::Connection::cancelReply<Messages::WebPage::RequestEvasionRectsAboveSelection,WTF::CompletionHandler<void ()(WTF::Vector<WebCore::FloatRect,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&)>>(uint64_t *a1)
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

  WTF::CompletionHandler<void ()(WTF::Vector<WebCore::FloatRect,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&)>::operator()(a1);
  result = v6;
  if (v6)
  {
    v6 = 0;
    v7 = 0;
    return WTF::fastFree(result, v4);
  }

  return result;
}

void sub_19DE836D4(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF *a9, int a10, WTF *a11, int a12)
{
  if (a9)
  {
    WTF::fastFree(a9, a2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t WebKit::AuxiliaryProcessProxy::sendWithAsyncReply<Messages::WebPage::UpdateSelectionWithDelta,WTF::CompletionHandler<void ()(void)>>(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4, char a5, int a6)
{
  v12 = IPC::Encoder::operator new(0x238, a2);
  *v12 = 2843;
  *(v12 + 2) = 0;
  *(v12 + 3) = 0;
  *(v12 + 1) = a4;
  *(v12 + 68) = 0;
  *(v12 + 70) = 0;
  *(v12 + 69) = 0;
  IPC::Encoder::encodeHeader(v12);
  v25 = v12;
  IPC::ArgumentCoder<API::Int64,void>::encode(v12, *a2);
  IPC::ArgumentCoder<API::Int64,void>::encode(v12, a2[1]);
  v13 = *a3;
  *a3 = 0;
  v14 = WTF::fastMalloc(0x10);
  *v14 = &unk_1F110E0B0;
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

void sub_19DE838A0(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, IPC::Encoder *a12)
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

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebPage::UpdateSelectionWithDelta,WTF::CompletionHandler<void ()(void)>>(WTF::CompletionHandler<void ()(void)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F110E0B0;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebPage::UpdateSelectionWithDelta,WTF::CompletionHandler<void ()(void)>>(WTF::CompletionHandler<void ()(void)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F110E0B0;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WebKit::AuxiliaryProcessProxy::sendWithAsyncReply<Messages::WebPage::RequestDocumentEditingContext,WTF::CompletionHandler<void ()(WebKit::DocumentEditingContext &&)>>(uint64_t a1, void *a2, uint64_t *a3, uint64_t a4, char a5, int a6)
{
  v12 = IPC::Encoder::operator new(0x238, a2);
  *v12 = 2676;
  *(v12 + 2) = 0;
  *(v12 + 3) = 0;
  *(v12 + 1) = a4;
  *(v12 + 68) = 0;
  *(v12 + 70) = 0;
  *(v12 + 69) = 0;
  IPC::Encoder::encodeHeader(v12);
  v25 = v12;
  IPC::ArgumentCoder<WebKit::DocumentEditingContextRequest,void>::encode(v12, *a2);
  v13 = *a3;
  *a3 = 0;
  v14 = WTF::fastMalloc(0x10);
  *v14 = &unk_1F110E0D8;
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

void sub_19DE83BE0(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, IPC::Encoder *a12)
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

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebPage::RequestDocumentEditingContext,WTF::CompletionHandler<void ()(WebKit::DocumentEditingContext &&)>>(WTF::CompletionHandler<void ()(WebKit::DocumentEditingContext &&)> &&,WTF::ThreadLikeAssertion)::{lambda(WTF::CompletionHandler<void ()(WebKit::DocumentEditingContext &&)>,IPC::Decoder)#1},void,WTF::CompletionHandler<void ()(WebKit::DocumentEditingContext &&)>,IPC::Decoder>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F110E0D8;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebPage::RequestDocumentEditingContext,WTF::CompletionHandler<void ()(WebKit::DocumentEditingContext &&)>>(WTF::CompletionHandler<void ()(WebKit::DocumentEditingContext &&)> &&,WTF::ThreadLikeAssertion)::{lambda(WTF::CompletionHandler<void ()(WebKit::DocumentEditingContext &&)>,IPC::Decoder)#1},void,WTF::CompletionHandler<void ()(WebKit::DocumentEditingContext &&)>,IPC::Decoder>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F110E0D8;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebPage::RequestDocumentEditingContext,WTF::CompletionHandler<void ()(WebKit::DocumentEditingContext &&)>>(WTF::CompletionHandler<void ()(WebKit::DocumentEditingContext &&)> &&,WTF::ThreadLikeAssertion)::{lambda(WTF::CompletionHandler<void ()(WebKit::DocumentEditingContext &&)>,IPC::Decoder)#1},void,WTF::CompletionHandler<void ()(WebKit::DocumentEditingContext &&)>,IPC::Decoder>::call(uint64_t a1, uint64_t a2, IPC::Decoder *a3)
{
  if (a3 && *a3)
  {
    IPC::ArgumentCoder<WebKit::DocumentEditingContext,void>::decode(a3, v29);
    if (v38 & 1) != 0 || (v13 = *a3, v14 = *(a3 + 1), *a3 = 0, *(a3 + 1) = 0, (v15 = *(a3 + 3)) != 0) && v14 && ((*(*v15 + 16))(v15, v13), (v38))
    {
      WebKit::DocumentEditingContext::DocumentEditingContext(v19, v29);
      v28 = 1;
      if ((v38 & 1) == 0)
      {
        goto LABEL_10;
      }

      v6 = v36;
      if (v36)
      {
        v36 = 0;
        v37 = 0;
        WTF::fastFree(v6, v5);
      }

      v7 = v34;
      if (v34)
      {
        v34 = 0;
        v35 = 0;
        WTF::fastFree(v7, v5);
      }

      MEMORY[0x19EB065D0](&v33);
      MEMORY[0x19EB065D0](&v32);
      MEMORY[0x19EB065D0](&v31);
      MEMORY[0x19EB065D0](&v30);
      MEMORY[0x19EB065D0](v29);
      if (v28)
      {
LABEL_10:
        result = WTF::CompletionHandler<void ()(WebKit::DocumentEditingContext &&)>::operator()((a1 + 8));
        if (v28)
        {
          v10 = v26;
          if (v26)
          {
            v26 = 0;
            v27 = 0;
            WTF::fastFree(v10, v9);
          }

          v11 = v24;
          if (v24)
          {
            v24 = 0;
            v25 = 0;
            WTF::fastFree(v11, v9);
          }

          MEMORY[0x19EB065D0](&v23);
          MEMORY[0x19EB065D0](&v22);
          MEMORY[0x19EB065D0](&v21);
          MEMORY[0x19EB065D0](&v20);
          return MEMORY[0x19EB065D0](v19);
        }

        return result;
      }
    }

    else
    {
      v19[0] = 0;
      v28 = 0;
    }

    v16 = *a3;
    v17 = *(a3 + 1);
    *a3 = 0;
    *(a3 + 1) = 0;
    v18 = *(a3 + 3);
    if (!v18)
    {
      return IPC::Connection::cancelReply<Messages::WebPage::RequestDocumentEditingContext,WTF::CompletionHandler<void ()(WebKit::DocumentEditingContext &&)>>((a1 + 8));
    }

    if (!v17)
    {
      return IPC::Connection::cancelReply<Messages::WebPage::RequestDocumentEditingContext,WTF::CompletionHandler<void ()(WebKit::DocumentEditingContext &&)>>((a1 + 8));
    }

    (*(*v18 + 16))(v18, v16);
    if ((v28 & 1) == 0)
    {
      return IPC::Connection::cancelReply<Messages::WebPage::RequestDocumentEditingContext,WTF::CompletionHandler<void ()(WebKit::DocumentEditingContext &&)>>((a1 + 8));
    }

    goto LABEL_10;
  }

  v12 = (a1 + 8);

  return IPC::Connection::cancelReply<Messages::WebPage::RequestDocumentEditingContext,WTF::CompletionHandler<void ()(WebKit::DocumentEditingContext &&)>>(v12);
}

void sub_19DE83F80(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, WTF *a36, int a37, WTF *a38, int a39, int a40, char a41)
{
  if (a41 == 1)
  {
    v42 = a38;
    if (a38)
    {
      a38 = 0;
      a39 = 0;
      WTF::fastFree(v42, a2);
    }

    v43 = a36;
    if (a36)
    {
      a36 = 0;
      a37 = 0;
      WTF::fastFree(v43, a2);
    }

    MEMORY[0x19EB065D0](&a29);
    MEMORY[0x19EB065D0](&a24);
    MEMORY[0x19EB065D0](&a19);
    MEMORY[0x19EB065D0](&a14);
    MEMORY[0x19EB065D0](&a9);
  }

  _Unwind_Resume(a1);
}

uint64_t IPC::Connection::cancelReply<Messages::WebPage::RequestDocumentEditingContext,WTF::CompletionHandler<void ()(WebKit::DocumentEditingContext &&)>>(uint64_t *a1)
{
  WebCore::AttributedString::AttributedString(v18);
  WebCore::AttributedString::AttributedString(v19);
  WebCore::AttributedString::AttributedString(v20);
  WebCore::AttributedString::AttributedString(v21);
  WebCore::AttributedString::AttributedString(v22);
  v24 = 0u;
  v23 = 0u;
  *&v22[40] = 0u;
  WebKit::DocumentEditingContext::DocumentEditingContext(v9, v18);
  v3 = v24;
  if (v24)
  {
    *&v24 = 0;
    DWORD2(v24) = 0;
    WTF::fastFree(v3, v2);
  }

  v4 = v23;
  if (v23)
  {
    *&v23 = 0;
    DWORD2(v23) = 0;
    WTF::fastFree(v4, v2);
  }

  MEMORY[0x19EB065D0](v22);
  MEMORY[0x19EB065D0](v21);
  MEMORY[0x19EB065D0](v20);
  MEMORY[0x19EB065D0](v19);
  MEMORY[0x19EB065D0](v18);
  WTF::CompletionHandler<void ()(WebKit::DocumentEditingContext &&)>::operator()(a1);
  v6 = v16;
  if (v16)
  {
    v16 = 0;
    v17 = 0;
    WTF::fastFree(v6, v5);
  }

  v7 = v14;
  if (v14)
  {
    v14 = 0;
    v15 = 0;
    WTF::fastFree(v7, v5);
  }

  MEMORY[0x19EB065D0](&v13);
  MEMORY[0x19EB065D0](&v12);
  MEMORY[0x19EB065D0](&v11);
  MEMORY[0x19EB065D0](&v10);
  return MEMORY[0x19EB065D0](v9);
}

void sub_19DE84184(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, WTF *a36, int a37, WTF *a38, int a39)
{
  v40 = a38;
  if (a38)
  {
    a38 = 0;
    a39 = 0;
    WTF::fastFree(v40, a2);
  }

  v41 = a36;
  if (a36)
  {
    a36 = 0;
    a37 = 0;
    WTF::fastFree(v41, a2);
  }

  MEMORY[0x19EB065D0](&a29);
  MEMORY[0x19EB065D0](&a24);
  MEMORY[0x19EB065D0](&a19);
  MEMORY[0x19EB065D0](&a14);
  MEMORY[0x19EB065D0](&a9);
  _Unwind_Resume(a1);
}

void *WTF::Detail::CallableWrapper<WebKit::WebPageProxy::requestDragStart(std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::IntPoint const&,WebCore::IntPoint const&,WTF::OptionSet<WebCore::DragSourceAction>,WTF::CompletionHandler<void ()(BOOL)> &&)::$_0,void,WebKit::DragInitiationResult &&>::~CallableWrapper(void *a1, void *a2)
{
  *a1 = &unk_1F110E100;
  v3 = a1[3];
  a1[3] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = a1[1];
  a1[1] = 0;
  if (v4 && atomic_fetch_add(v4, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v4);
    WTF::fastFree(v4, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebPageProxy::requestDragStart(std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::IntPoint const&,WebCore::IntPoint const&,WTF::OptionSet<WebCore::DragSourceAction>,WTF::CompletionHandler<void ()(BOOL)> &&)::$_0,void,WebKit::DragInitiationResult &&>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F110E100;
  v3 = *(this + 3);
  *(this + 3) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 1);
  *(this + 1) = 0;
  if (v4 && atomic_fetch_add(v4, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v4);
    WTF::fastFree(v4, a2);
  }

  return WTF::fastFree(this, a2);
}

void WTF::Detail::CallableWrapper<WebKit::WebPageProxy::requestDragStart(std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::IntPoint const&,WebCore::IntPoint const&,WTF::OptionSet<WebCore::DragSourceAction>,WTF::CompletionHandler<void ()(BOOL)> &&)::$_0,void,WebKit::DragInitiationResult &&>::call(uint64_t a1, __int128 *a2)
{
  v3 = a2[1];
  v8 = *a2;
  v9 = v3;
  if (BYTE8(v3) == 1)
  {
    v6 = *(a1 + 8);
    if (v6)
    {
      v7 = *(v6 + 8);
      if (v7)
      {
        CFRetain(*(v7 - 8));
        WebKit::WebPageProxy::requestDragStart(v7 - 16, v8, 1, &v8 + 8, &v9, *(a1 + 16), (a1 + 24));
        CFRelease(*(v7 - 8));
        return;
      }
    }

    v5 = (a1 + 24);
    v4 = 0;
  }

  else
  {
    if (BYTE8(v3))
    {
      mpark::throw_bad_variant_access(a1);
    }

    v4 = v8;
    v5 = (a1 + 24);
  }

  WTF::CompletionHandler<void ()(BOOL)>::operator()(v5, v4);
}

void *WTF::Detail::CallableWrapper<WebKit::WebPageProxy::requestAdditionalItemsForDragSession(std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::IntPoint const&,WebCore::IntPoint const&,WTF::OptionSet<WebCore::DragSourceAction>,WTF::CompletionHandler<void ()(BOOL)> &&)::$_0,void,WebKit::DragInitiationResult &&>::~CallableWrapper(void *a1, void *a2)
{
  *a1 = &unk_1F110E128;
  v3 = a1[3];
  a1[3] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = a1[1];
  a1[1] = 0;
  if (v4 && atomic_fetch_add(v4, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v4);
    WTF::fastFree(v4, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebPageProxy::requestAdditionalItemsForDragSession(std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::IntPoint const&,WebCore::IntPoint const&,WTF::OptionSet<WebCore::DragSourceAction>,WTF::CompletionHandler<void ()(BOOL)> &&)::$_0,void,WebKit::DragInitiationResult &&>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F110E128;
  v3 = *(this + 3);
  *(this + 3) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 1);
  *(this + 1) = 0;
  if (v4 && atomic_fetch_add(v4, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v4);
    WTF::fastFree(v4, a2);
  }

  return WTF::fastFree(this, a2);
}

void WTF::Detail::CallableWrapper<WebKit::WebPageProxy::requestAdditionalItemsForDragSession(std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::IntPoint const&,WebCore::IntPoint const&,WTF::OptionSet<WebCore::DragSourceAction>,WTF::CompletionHandler<void ()(BOOL)> &&)::$_0,void,WebKit::DragInitiationResult &&>::call(uint64_t a1, __int128 *a2)
{
  v3 = a2[1];
  v8 = *a2;
  v9 = v3;
  if (BYTE8(v3) == 1)
  {
    v6 = *(a1 + 8);
    if (v6)
    {
      v7 = *(v6 + 8);
      if (v7)
      {
        CFRetain(*(v7 - 8));
        WebKit::WebPageProxy::requestAdditionalItemsForDragSession(v7 - 16, v8, 1, &v8 + 8, &v9, *(a1 + 16), (a1 + 24));
        CFRelease(*(v7 - 8));
        return;
      }
    }

    v5 = (a1 + 24);
    v4 = 0;
  }

  else
  {
    if (BYTE8(v3))
    {
      mpark::throw_bad_variant_access(a1);
    }

    v4 = v8;
    v5 = (a1 + 24);
  }

  WTF::CompletionHandler<void ()(BOOL)>::operator()(v5, v4);
}

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebPage::InsertDroppedImagePlaceholders,WTF::CompletionHandler<void ()(WTF::Vector<WebCore::IntRect,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,std::optional<WebCore::TextIndicatorData>)>>(WTF::CompletionHandler<void ()(WTF::Vector<WebCore::IntRect,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,std::optional<WebCore::TextIndicatorData>)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F110E150;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebPage::InsertDroppedImagePlaceholders,WTF::CompletionHandler<void ()(WTF::Vector<WebCore::IntRect,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,std::optional<WebCore::TextIndicatorData>)>>(WTF::CompletionHandler<void ()(WTF::Vector<WebCore::IntRect,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,std::optional<WebCore::TextIndicatorData>)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F110E150;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

WTF *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebPage::InsertDroppedImagePlaceholders,WTF::CompletionHandler<void ()(WTF::Vector<WebCore::IntRect,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,std::optional<WebCore::TextIndicatorData>)>>(WTF::CompletionHandler<void ()(WTF::Vector<WebCore::IntRect,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,std::optional<WebCore::TextIndicatorData>)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::call(uint64_t a1, uint64_t a2, IPC::Decoder *a3)
{
  if (a3 && *a3)
  {
    IPC::Decoder::decode<WTF::Vector<WebCore::IntRect,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(a3, &v33);
    if (v35 == 1)
    {
      IPC::Decoder::decode<std::optional<WebCore::TextIndicatorData>>(a3, v36);
      if (v44 == 1)
      {
        v6 = v35;
        if ((v35 & 1) == 0)
        {
          __break(1u);
          goto LABEL_55;
        }

        _ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1EEEEJN3WTF6VectorIN7WebCore7IntRectELm0ENS3_15CrashOnOverflowELm16ENS3_10FastMallocEEENS_8optionalINS5_17TextIndicatorDataEEEEEC2B8sn200100IJLm0ELm1EEJS9_SC_EJEJEJS9_SC_EEENS1_IJXspT_EEEENS_13__tuple_typesIJDpT0_EEENS1_IJXspT1_EEEENSG_IJDpT2_EEEDpOT3_(&v23, &v33, v36);
        v32 = 1;
        if ((v44 & 1) != 0 && v43 == 1)
        {
          if ((v42 & 0x8000000000000) != 0)
          {
            v22 = (v42 & 0xFFFFFFFFFFFFLL);
            if (atomic_fetch_add((v42 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
            {
              atomic_store(1u, v22);
              WTF::fastFree(v22, v5);
            }
          }

          v7 = v41;
          v41 = 0;
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

          v8 = v40;
          v40 = 0;
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

          v9 = v39;
          v39 = 0;
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

          v10 = v37;
          if (v37)
          {
            v37 = 0;
            v38 = 0;
            WTF::fastFree(v10, v5);
          }
        }
      }

      else
      {
        LOBYTE(v23) = 0;
        v32 = 0;
      }

      if (v35)
      {
        v13 = v33;
        if (v33)
        {
          v33 = 0;
          v34 = 0;
          WTF::fastFree(v13, v5);
        }
      }
    }

    else
    {
      LOBYTE(v23) = 0;
      v32 = 0;
    }

    if ((v32 & 1) == 0)
    {
      v18 = *a3;
      v19 = *(a3 + 1);
      *a3 = 0;
      *(a3 + 1) = 0;
      v20 = *(a3 + 3);
      if (!v20)
      {
        return IPC::Connection::cancelReply<Messages::WebPage::InsertDroppedImagePlaceholders,WTF::CompletionHandler<void ()(WTF::Vector<WebCore::IntRect,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,std::optional<WebCore::TextIndicatorData>)>>((a1 + 8));
      }

      if (!v19)
      {
        return IPC::Connection::cancelReply<Messages::WebPage::InsertDroppedImagePlaceholders,WTF::CompletionHandler<void ()(WTF::Vector<WebCore::IntRect,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,std::optional<WebCore::TextIndicatorData>)>>((a1 + 8));
      }

      (*(*v20 + 16))(v20, v18);
      if ((v32 & 1) == 0)
      {
        return IPC::Connection::cancelReply<Messages::WebPage::InsertDroppedImagePlaceholders,WTF::CompletionHandler<void ()(WTF::Vector<WebCore::IntRect,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,std::optional<WebCore::TextIndicatorData>)>>((a1 + 8));
      }
    }

    result = std::apply[abi:sn200100]<WTF::CompletionHandler<void ()(WTF::Vector<WebCore::IntRect,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,std::optional<WebCore::TextIndicatorData>)>,std::tuple<WTF::Vector<WebCore::IntRect,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,std::optional<WebCore::TextIndicatorData>>>((a1 + 8), &v23);
    if (v32)
    {
      if (v31 != 1)
      {
LABEL_43:
        result = v23;
        if (v23)
        {
          v23 = 0;
          v24 = 0;
          return WTF::fastFree(result, v5);
        }

        return result;
      }

      v6 = v30;
      if ((v30 & 0x8000000000000) == 0)
      {
LABEL_32:
        v14 = v29;
        v29 = 0;
        if (v14)
        {
          if (v14[4] == 1)
          {
            (*(*v14 + 8))(v14);
          }

          else
          {
            --v14[4];
          }
        }

        v15 = v28;
        v28 = 0;
        if (v15)
        {
          if (v15[4] == 1)
          {
            (*(*v15 + 8))(v15);
          }

          else
          {
            --v15[4];
          }
        }

        v16 = v27;
        v27 = 0;
        if (v16)
        {
          if (v16[4] == 1)
          {
            (*(*v16 + 8))(v16);
          }

          else
          {
            --v16[4];
          }
        }

        v17 = v25;
        if (v25)
        {
          v25 = 0;
          v26 = 0;
          WTF::fastFree(v17, v5);
        }

        goto LABEL_43;
      }

LABEL_55:
      v21 = (v6 & 0xFFFFFFFFFFFFLL);
      if (atomic_fetch_add((v6 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v21);
        WTF::fastFree(v21, v5);
      }

      goto LABEL_32;
    }
  }

  else
  {
    v11 = (a1 + 8);

    return IPC::Connection::cancelReply<Messages::WebPage::InsertDroppedImagePlaceholders,WTF::CompletionHandler<void ()(WTF::Vector<WebCore::IntRect,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,std::optional<WebCore::TextIndicatorData>)>>(v11);
  }

  return result;
}

void sub_19DE84B20(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF *a10, int a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, WTF *a18, int a19, uint64_t a20, _DWORD *a21, _DWORD *a22, _DWORD *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, int a35, int a36, char a37)
{
  if (a31 == 1)
  {
    if (a29 == 1)
    {
      if ((a24 & 0x8000000000000) != 0)
      {
        v38 = (a24 & 0xFFFFFFFFFFFFLL);
        if (atomic_fetch_add((a24 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, v38);
          WTF::fastFree(v38, a2);
        }
      }

      if (a23)
      {
        if (a23[4] == 1)
        {
          (*(*a23 + 8))(a23);
        }

        else
        {
          --a23[4];
        }
      }

      if (a22)
      {
        if (a22[4] == 1)
        {
          (*(*a22 + 8))(a22);
        }

        else
        {
          --a22[4];
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

      if (a18)
      {
        WTF::fastFree(a18, a2);
      }
    }

    if (a10)
    {
      WTF::fastFree(a10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

WTF *IPC::Connection::cancelReply<Messages::WebPage::InsertDroppedImagePlaceholders,WTF::CompletionHandler<void ()(WTF::Vector<WebCore::IntRect,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,std::optional<WebCore::TextIndicatorData>)>>(uint64_t *a1)
{
  v33 = 0;
  v34 = 0;
  LOBYTE(v25[0]) = 0;
  v32 = 0;
  _ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1EEEEJN3WTF6VectorIN7WebCore7IntRectELm0ENS3_15CrashOnOverflowELm16ENS3_10FastMallocEEENS_8optionalINS5_17TextIndicatorDataEEEEEC2B8sn200100IJLm0ELm1EEJS9_SC_EJEJEJS9_SC_EEENS1_IJXspT_EEEENS_13__tuple_typesIJDpT0_EEENS1_IJXspT1_EEEENSG_IJDpT2_EEEDpOT3_(&v16, &v33, v25);
  if (v32 == 1)
  {
    if ((v31 & 0x8000000000000) != 0)
    {
      v14 = (v31 & 0xFFFFFFFFFFFFLL);
      if (atomic_fetch_add((v31 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v14);
        WTF::fastFree(v14, v2);
      }
    }

    v3 = v30;
    v30 = 0;
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

    v4 = v29;
    v29 = 0;
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

    v5 = v28;
    v28 = 0;
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

    v6 = v26;
    if (v26)
    {
      v26 = 0;
      v27 = 0;
      WTF::fastFree(v6, v2);
    }
  }

  v7 = v33;
  if (v33)
  {
    v33 = 0;
    LODWORD(v34) = 0;
    WTF::fastFree(v7, v2);
  }

  std::apply[abi:sn200100]<WTF::CompletionHandler<void ()(WTF::Vector<WebCore::IntRect,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,std::optional<WebCore::TextIndicatorData>)>,std::tuple<WTF::Vector<WebCore::IntRect,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,std::optional<WebCore::TextIndicatorData>>>(a1, &v16);
  if (v24 == 1)
  {
    if ((v23 & 0x8000000000000) != 0)
    {
      v15 = (v23 & 0xFFFFFFFFFFFFLL);
      if (atomic_fetch_add((v23 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v15);
        WTF::fastFree(v15, v8);
      }
    }

    v9 = v22;
    v22 = 0;
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

    v10 = v21;
    v21 = 0;
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

    v11 = v20;
    v20 = 0;
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

    v12 = v18;
    if (v18)
    {
      v18 = 0;
      v19 = 0;
      WTF::fastFree(v12, v8);
    }
  }

  result = v16;
  if (v16)
  {
    v16 = 0;
    v17 = 0;
    return WTF::fastFree(result, v8);
  }

  return result;
}

void sub_19DE85050(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF *a9, int a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, WTF *a17, int a18, uint64_t a19, _DWORD *a20, _DWORD *a21, _DWORD *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, WTF *a35, int a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, char a46)
{
  if (a28 == 1)
  {
    if ((a23 & 0x8000000000000) != 0)
    {
      v47 = (a23 & 0xFFFFFFFFFFFFLL);
      if (atomic_fetch_add((a23 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v47);
        WTF::fastFree(v47, a2);
      }
    }

    if (a22)
    {
      if (a22[4] == 1)
      {
        (*(*a22 + 8))(a22);
      }

      else
      {
        --a22[4];
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

    if (a17)
    {
      WTF::fastFree(a17, a2);
    }
  }

  if (a9)
  {
    WTF::fastFree(a9, a2);
  }

  _Unwind_Resume(exception_object);
}

WTF *std::apply[abi:sn200100]<WTF::CompletionHandler<void ()(WTF::Vector<WebCore::IntRect,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,std::optional<WebCore::TextIndicatorData>)>,std::tuple<WTF::Vector<WebCore::IntRect,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,std::optional<WebCore::TextIndicatorData>>>(uint64_t *a1, uint64_t a2)
{
  std::__optional_move_base<WebCore::TextIndicatorData,false>::__optional_move_base[abi:sn200100](v10, (a2 + 16));
  result = WTF::CompletionHandler<void ()(WTF::Vector<WebCore::IntRect,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,std::optional<WebCore::TextIndicatorData>)>::operator()(a1, a2, v10);
  if (v17 == 1)
  {
    if ((v16 & 0x8000000000000) != 0)
    {
      v9 = (v16 & 0xFFFFFFFFFFFFLL);
      if (atomic_fetch_add((v16 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v9);
        WTF::fastFree(v9, v5);
      }
    }

    v6 = v15;
    v15 = 0;
    if (v6)
    {
      if (v6[4] == 1)
      {
        (*(*v6 + 8))(v6);
      }

      else
      {
        --v6[4];
      }
    }

    v7 = v14;
    v14 = 0;
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

    v8 = v13;
    v13 = 0;
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

    result = v11;
    if (v11)
    {
      v11 = 0;
      v12 = 0;
      return WTF::fastFree(result, v5);
    }
  }

  return result;
}

void sub_19DE8540C(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, WTF *a15, int a16, uint64_t a17, _DWORD *a18, _DWORD *a19, _DWORD *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  if (a26 == 1)
  {
    if ((a21 & 0x8000000000000) != 0)
    {
      v27 = (a21 & 0xFFFFFFFFFFFFLL);
      if (atomic_fetch_add((a21 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v27);
        WTF::fastFree(v27, a2);
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

WTF *IPC::Decoder::decode<WTF::Vector<WebCore::IntRect,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  result = IPC::VectorArgumentCoder<false,WebCore::IntRect,0ul,WTF::CrashOnOverflow,16ul>::decode<IPC::Decoder>(a1, a2);
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

void sub_19DE8559C(_Unwind_Exception *exception_object, void *a2)
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

WTF *IPC::VectorArgumentCoder<false,WebCore::IntRect,0ul,WTF::CrashOnOverflow,16ul>::decode<IPC::Decoder>@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 1);
  v5 = ((*(a1 + 2) + 7) & 0xFFFFFFFFFFFFFFF8);
  v6 = *a1;
  v7 = v5 - *a1;
  v8 = v4 >= v7;
  v9 = v4 - v7;
  if (!v8 || v9 <= 7)
  {
    *a1 = 0;
    *(a1 + 1) = 0;
    v24 = *(a1 + 3);
    if (v24)
    {
      if (v4)
      {
        (*(*v24 + 16))(v24);
        v4 = *(a1 + 1);
      }
    }

    else
    {
      v4 = 0;
    }

    goto LABEL_30;
  }

  *(a1 + 2) = v5 + 1;
  if (!v5)
  {
LABEL_30:
    *a1 = 0;
    *(a1 + 1) = 0;
    result = *(a1 + 3);
    if (result)
    {
      if (v4)
      {
        result = (*(*result + 16))(result);
      }
    }

    *a2 = 0;
    *(a2 + 16) = 0;
    return result;
  }

  v11 = *v5;
  v27 = 0;
  v28 = 0;
  if (v11 >= 0x10000)
  {
    while (1)
    {
      IPC::Decoder::decode<WebCore::IntRect>(a1, &v25);
      if ((v26 & 1) == 0)
      {
        break;
      }

      v18 = HIDWORD(v28);
      if (HIDWORD(v28) == v28)
      {
        v19 = WTF::Vector<WTF::UUID,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v27, HIDWORD(v28) + 1, &v25);
        v18 = HIDWORD(v28);
        v20 = v27;
        v21 = *v19;
      }

      else
      {
        v20 = v27;
        v21 = v25;
      }

      *(v20 + v18) = v21;
      v22 = ++HIDWORD(v28);
      if (!--v11)
      {
        WTF::Vector<WTF::UUID,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(&v27, v22);
        v16 = HIDWORD(v28);
        goto LABEL_17;
      }
    }
  }

  else
  {
    if (!v11)
    {
      v16 = 0;
LABEL_17:
      v17 = v27;
      v27 = 0;
      *a2 = v17;
      HIDWORD(v28) = 0;
      *(a2 + 8) = v28;
      *(a2 + 12) = v16;
      *(a2 + 16) = 1;
      goto LABEL_24;
    }

    LODWORD(v28) = v11;
    v27 = WTF::fastMalloc((16 * v11));
    while (1)
    {
      IPC::Decoder::decode<WebCore::IntRect>(a1, &v25);
      if ((v26 & 1) == 0)
      {
        break;
      }

      v12 = HIDWORD(v28);
      if (HIDWORD(v28) == v28)
      {
        v13 = WTF::Vector<WTF::UUID,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v27, HIDWORD(v28) + 1, &v25);
        v12 = HIDWORD(v28);
        v14 = v27;
        v15 = *v13;
      }

      else
      {
        v14 = v27;
        v15 = v25;
      }

      *(v14 + v12) = v15;
      v16 = ++HIDWORD(v28);
      if (!--v11)
      {
        goto LABEL_17;
      }
    }
  }

  *a2 = 0;
  *(a2 + 16) = 0;
LABEL_24:
  result = v27;
  if (v27)
  {
    v27 = 0;
    LODWORD(v28) = 0;
    return WTF::fastFree(result, v6);
  }

  return result;
}

void sub_19DE857EC(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, WTF *a13, int a14)
{
  if (a13)
  {
    WTF::fastFree(a13, a2);
  }

  _Unwind_Resume(exception_object);
}

void *_ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1EEEEJN3WTF6VectorIN7WebCore7IntRectELm0ENS3_15CrashOnOverflowELm16ENS3_10FastMallocEEENS_8optionalINS5_17TextIndicatorDataEEEEEC2B8sn200100IJLm0ELm1EEJS9_SC_EJEJEJS9_SC_EEENS1_IJXspT_EEEENS_13__tuple_typesIJDpT0_EEENS1_IJXspT1_EEEENSG_IJDpT2_EEEDpOT3_(void *a1, _DWORD *a2, __int128 *a3)
{
  *a1 = 0;
  a1[1] = 0;
  WTF::VectorBuffer<WebCore::HTTPHeaderField,0ul,WTF::FastMalloc>::adopt(a1, a2);
  std::__optional_move_base<WebCore::TextIndicatorData,false>::__optional_move_base[abi:sn200100]((a1 + 2), a3);
  return a1;
}

void sub_19DE85850(_Unwind_Exception *exception_object, void *a2)
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

WTF *WTF::Function<void ()(WTF::Vector<WebCore::IntRect,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,std::optional<WebCore::TextIndicatorData>)>::operator()(uint64_t *a1, uint64_t a2, __int128 *a3)
{
  v4 = *a1;
  std::__optional_move_base<WebCore::TextIndicatorData,false>::__optional_move_base[abi:sn200100](v11, a3);
  result = (*(*v4 + 16))(v4, a2, v11);
  if (v18 == 1)
  {
    if ((v17 & 0x8000000000000) != 0)
    {
      v10 = (v17 & 0xFFFFFFFFFFFFLL);
      if (atomic_fetch_add((v17 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v10);
        WTF::fastFree(v10, v6);
      }
    }

    v7 = v16;
    v16 = 0;
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

    v8 = v15;
    v15 = 0;
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

    v9 = v14;
    v14 = 0;
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

    result = v12;
    if (v12)
    {
      v12 = 0;
      v13 = 0;
      return WTF::fastFree(result, v6);
    }
  }

  return result;
}

void sub_19DE859F0(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, WTF *a15, int a16, uint64_t a17, _DWORD *a18, _DWORD *a19, _DWORD *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  if (a26 == 1)
  {
    if ((a21 & 0x8000000000000) != 0)
    {
      v27 = (a21 & 0xFFFFFFFFFFFFLL);
      if (atomic_fetch_add((a21 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v27);
        WTF::fastFree(v27, a2);
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

uint64_t WebKit::AuxiliaryProcessProxy::send<Messages::WebPage::DidConcludeDrop>(uint64_t a1, void *a2, uint64_t a3, char a4)
{
  v7 = IPC::Encoder::operator new(0x238, a2);
  *v7 = 2503;
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

void sub_19DE85BF8(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, IPC::Encoder *a12)
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

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(WTF::String const&)>,void,WTF::String const&>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F110E178;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(WTF::String const&)>,void,WTF::String const&>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F110E178;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Vector<WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(uint64_t result, uint64_t a2)
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

  if (!(v3 >> 29))
  {
    v5 = WTF::fastMalloc((8 * v3));
    *(v2 + 8) = v3;
    *v2 = v5;
    v6 = *(a2 + 12);
    if (v6)
    {
      v7 = *a2;
      v8 = 8 * v6;
      do
      {
        v5 = WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::HashTable(v5, v7++) + 1;
        v8 -= 8;
      }

      while (v8);
    }

    return v2;
  }

  __break(0xC471u);
  return result;
}

void sub_19DE85DD4(_Unwind_Exception *exception_object, void *a2)
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

uint64_t WebKit::AuxiliaryProcessProxy::sendWithAsyncReply<Messages::WebPage::TextInputContextsInRect,WTF::CompletionHandler<void ()(WTF::Vector<WebCore::ElementContext,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&)>>(uint64_t a1, float **a2, uint64_t *a3, uint64_t a4, char a5, int a6)
{
  v12 = IPC::Encoder::operator new(0x238, a2);
  *v12 = 2822;
  *(v12 + 2) = 0;
  *(v12 + 3) = 0;
  *(v12 + 1) = a4;
  *(v12 + 68) = 0;
  *(v12 + 70) = 0;
  *(v12 + 69) = 0;
  IPC::Encoder::encodeHeader(v12);
  v25 = v12;
  IPC::ArgumentCoder<WebCore::FloatRect,void>::encode(v12, *a2);
  v13 = *a3;
  *a3 = 0;
  v14 = WTF::fastMalloc(0x10);
  *v14 = &unk_1F110E1A0;
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

void sub_19DE85F7C(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, IPC::Encoder *a12)
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

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebPage::TextInputContextsInRect,WTF::CompletionHandler<void ()(WTF::Vector<WebCore::ElementContext,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&)>>(WTF::CompletionHandler<void ()(WTF::Vector<WebCore::ElementContext,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F110E1A0;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebPage::TextInputContextsInRect,WTF::CompletionHandler<void ()(WTF::Vector<WebCore::ElementContext,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&)>>(WTF::CompletionHandler<void ()(WTF::Vector<WebCore::ElementContext,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F110E1A0;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebPage::TextInputContextsInRect,WTF::CompletionHandler<void ()(WTF::Vector<WebCore::ElementContext,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&)>>(WTF::CompletionHandler<void ()(WTF::Vector<WebCore::ElementContext,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::call(uint64_t a1, uint64_t a2, IPC::Decoder *a3)
{
  if (a3 && *a3)
  {
    IPC::VectorArgumentCoder<false,WebCore::ElementContext,0ul,WTF::CrashOnOverflow,16ul>::decode<IPC::Decoder>(a3, &v15);
    if (v16)
    {
      goto LABEL_4;
    }

    v8 = *a3;
    v9 = *(a3 + 1);
    *a3 = 0;
    *(a3 + 1) = 0;
    v10 = *(a3 + 3);
    if (v10 && v9)
    {
      (*(*v10 + 16))(v10, v8);
      if (v16)
      {
LABEL_4:
        v14 = v15;
        WTF::CompletionHandler<void ()(WTF::Vector<WebCore::ElementContext,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&)>::operator()((a1 + 8));
        result = v14;
        if (v14)
        {
          return WTF::fastFree(v14, v5);
        }

        return result;
      }

      v11 = *a3;
      v12 = *(a3 + 1);
      v13 = *(a3 + 3);
      *a3 = 0;
      *(a3 + 1) = 0;
      if (v13 && v12)
      {
        (*(*v13 + 16))(v13, v11);
      }
    }

    else
    {
      *a3 = 0;
      *(a3 + 1) = 0;
    }

    return IPC::Connection::cancelReply<Messages::WebPage::TextInputContextsInRect,WTF::CompletionHandler<void ()(WTF::Vector<WebCore::ElementContext,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&)>>((a1 + 8));
  }

  v7 = (a1 + 8);

  return IPC::Connection::cancelReply<Messages::WebPage::TextInputContextsInRect,WTF::CompletionHandler<void ()(WTF::Vector<WebCore::ElementContext,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&)>>(v7);
}

void sub_19DE86260(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF *a9, int a10, int a11, char a12, WTF *a13, int a14, int a15, char a16)
{
  if (a16 == 1)
  {
    if (a13)
    {
      WTF::fastFree(a13, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_19DE862F4(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF *a9, int a10)
{
  if (a9)
  {
    WTF::fastFree(a9, a2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t WebKit::AuxiliaryProcessProxy::sendWithAsyncReply<Messages::WebPage::FocusTextInputContextAndPlaceCaret,WTF::CompletionHandler<void ()(BOOL)>>(uint64_t a1, int **a2, uint64_t *a3, uint64_t a4, char a5, int a6)
{
  v12 = IPC::Encoder::operator new(0x238, a2);
  *v12 = 2559;
  *(v12 + 2) = 0;
  *(v12 + 3) = 0;
  *(v12 + 1) = a4;
  *(v12 + 68) = 0;
  *(v12 + 70) = 0;
  *(v12 + 69) = 0;
  IPC::Encoder::encodeHeader(v12);
  v25 = v12;
  IPC::ArgumentCoder<WebCore::ElementContext,void>::encode(v12, *a2);
  IPC::ArgumentCoder<WebCore::IntPoint,void>::encode(v12, a2[1]);
  v13 = *a3;
  *a3 = 0;
  v14 = WTF::fastMalloc(0x10);
  *v14 = &unk_1F110E1C8;
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

void sub_19DE864A8(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, IPC::Encoder *a12)
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

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebPage::FocusTextInputContextAndPlaceCaret,WTF::CompletionHandler<void ()(BOOL)>>(WTF::CompletionHandler<void ()(BOOL)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F110E1C8;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebPage::FocusTextInputContextAndPlaceCaret,WTF::CompletionHandler<void ()(BOOL)>>(WTF::CompletionHandler<void ()(BOOL)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F110E1C8;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebPage::FocusTextInputContextAndPlaceCaret,WTF::CompletionHandler<void ()(BOOL)>>(WTF::CompletionHandler<void ()(BOOL)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::call(uint64_t a1, uint64_t a2, IPC::Decoder *a3)
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

uint64_t WebKit::AuxiliaryProcessProxy::send<Messages::WebPage::SetShouldRevealCurrentSelectionAfterInsertion>(uint64_t a1, void *a2, uint64_t a3, char a4)
{
  v8 = IPC::Encoder::operator new(0x238, a2);
  *v8 = 2776;
  *(v8 + 2) = 0;
  *(v8 + 3) = 0;
  *(v8 + 1) = a3;
  *(v8 + 68) = 0;
  *(v8 + 70) = 0;
  *(v8 + 69) = 0;
  IPC::Encoder::encodeHeader(v8);
  v18 = v8;
  IPC::Encoder::operator<<<BOOL &>(v8, a2);
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

void sub_19DE867A8(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, IPC::Encoder *a12)
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

void *WTF::Detail::CallableWrapper<WebKit::WebPageProxy::willOpenAppLink(void)::$_0,void>::~CallableWrapper(void *a1, void *a2)
{
  v3 = a1[1];
  *a1 = &unk_1F110E1F0;
  a1[1] = 0;
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    WTF::fastFree(v3, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebPageProxy::willOpenAppLink(void)::$_0,void>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F110E1F0;
  *(this + 1) = 0;
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    WTF::fastFree(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

void WTF::Detail::CallableWrapper<WebKit::WebPageProxy::willOpenAppLink(void)::$_0,void>::call(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1)
  {
    v2 = *(v1 + 8);
    if (v2)
    {
      CFRetain(*(v2 - 8));
      WebKit::WebPageProxy::dropOpeningAppLinkActivity((v2 - 16), v3);
      v4 = *(v2 - 8);

      CFRelease(v4);
    }
  }
}

uint64_t WebKit::AuxiliaryProcessProxy::sendWithAsyncReply<Messages::WebPage::ShouldDismissKeyboardAfterTapAtPoint,WTF::CompletionHandler<void ()(BOOL)>>(uint64_t a1, float **a2, uint64_t *a3, uint64_t a4, char a5, int a6)
{
  v12 = IPC::Encoder::operator new(0x238, a2);
  *v12 = 2795;
  *(v12 + 2) = 0;
  *(v12 + 3) = 0;
  *(v12 + 1) = a4;
  *(v12 + 68) = 0;
  *(v12 + 70) = 0;
  *(v12 + 69) = 0;
  IPC::Encoder::encodeHeader(v12);
  v25 = v12;
  IPC::ArgumentCoder<WebCore::FloatPoint,void>::encode(v12, *a2);
  v13 = *a3;
  *a3 = 0;
  v14 = WTF::fastMalloc(0x10);
  *v14 = &unk_1F110E218;
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

void sub_19DE86AD0(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, IPC::Encoder *a12)
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

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebPage::ShouldDismissKeyboardAfterTapAtPoint,WTF::CompletionHandler<void ()(BOOL)>>(WTF::CompletionHandler<void ()(BOOL)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F110E218;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebPage::ShouldDismissKeyboardAfterTapAtPoint,WTF::CompletionHandler<void ()(BOOL)>>(WTF::CompletionHandler<void ()(BOOL)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F110E218;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebPage::ShouldDismissKeyboardAfterTapAtPoint,WTF::CompletionHandler<void ()(BOOL)>>(WTF::CompletionHandler<void ()(BOOL)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::call(uint64_t a1, uint64_t a2, IPC::Decoder *a3)
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

uint64_t WebKit::AuxiliaryProcessProxy::send<Messages::WebPage::WillBeginContextMenuInteraction>(uint64_t a1, void *a2, uint64_t a3, char a4)
{
  v7 = IPC::Encoder::operator new(0x238, a2);
  *v7 = 2860;
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

void sub_19DE86DB8(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, IPC::Encoder *a12)
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

uint64_t WebKit::AuxiliaryProcessProxy::send<Messages::WebPage::DidEndContextMenuInteraction>(uint64_t a1, void *a2, uint64_t a3, char a4)
{
  v7 = IPC::Encoder::operator new(0x238, a2);
  *v7 = 2505;
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

void sub_19DE86F04(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, IPC::Encoder *a12)
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

WTF::StringImpl *WebKit::blockedError@<X0>(WebKit *this@<X0>, uint64_t a2@<X8>)
{
  {
    atomic_fetch_add_explicit(API::Error::webKitErrorDomain(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    API::Error::webKitErrorDomain(void)::webKitErrorDomainString = API::Error::webKitErrorDomain(void)::$_0::operator() const(void)::impl;
  }

  v4 = WebCore::ResourceRequestBase::url(this);
  WebCore::localizedString(&v12, @"Not allowed to use restricted network port", v5);
  v7 = API::Error::webKitErrorDomain(void)::webKitErrorDomainString;
  if (API::Error::webKitErrorDomain(void)::webKitErrorDomainString)
  {
    atomic_fetch_add_explicit(API::Error::webKitErrorDomain(void)::webKitErrorDomainString, 2u, memory_order_relaxed);
  }

  *a2 = v7;
  v8 = *v4;
  if (*v4)
  {
    atomic_fetch_add_explicit(v8, 2u, memory_order_relaxed);
  }

  *(a2 + 8) = v8;
  v9 = *(v4 + 24);
  *(a2 + 16) = *(v4 + 8);
  *(a2 + 32) = v9;
  v10 = v12;
  if (v12)
  {
    atomic_fetch_add_explicit(v12, 2u, memory_order_relaxed);
    result = v12;
  }

  else
  {
    result = 0;
  }

  *(a2 + 48) = v10;
  *(a2 + 56) = 103;
  *(a2 + 60) = 1;
  *(a2 + 64) = 0;
  *(a2 + 72) = 1;
  v12 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v6);
    }
  }

  return result;
}

WTF::StringImpl *WebKit::blockedByContentBlockerError@<X0>(WebKit *this@<X0>, uint64_t a2@<X8>)
{
  {
    atomic_fetch_add_explicit(API::Error::webKitErrorDomain(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    API::Error::webKitErrorDomain(void)::webKitErrorDomainString = API::Error::webKitErrorDomain(void)::$_0::operator() const(void)::impl;
  }

  v4 = WebCore::ResourceRequestBase::url(this);
  WebCore::localizedString(&v12, @"The URL was blocked by a content blocker", v5);
  v7 = API::Error::webKitErrorDomain(void)::webKitErrorDomainString;
  if (API::Error::webKitErrorDomain(void)::webKitErrorDomainString)
  {
    atomic_fetch_add_explicit(API::Error::webKitErrorDomain(void)::webKitErrorDomainString, 2u, memory_order_relaxed);
  }

  *a2 = v7;
  v8 = *v4;
  if (*v4)
  {
    atomic_fetch_add_explicit(v8, 2u, memory_order_relaxed);
  }

  *(a2 + 8) = v8;
  v9 = *(v4 + 24);
  *(a2 + 16) = *(v4 + 8);
  *(a2 + 32) = v9;
  v10 = v12;
  if (v12)
  {
    atomic_fetch_add_explicit(v12, 2u, memory_order_relaxed);
    result = v12;
  }

  else
  {
    result = 0;
  }

  *(a2 + 48) = v10;
  *(a2 + 56) = 104;
  *(a2 + 60) = 1;
  *(a2 + 64) = 0;
  *(a2 + 72) = 1;
  v12 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v6);
    }
  }

  return result;
}

WTF::StringImpl *WebKit::cannotShowURLError@<X0>(WebKit *this@<X0>, uint64_t a2@<X8>)
{
  {
    atomic_fetch_add_explicit(API::Error::webKitErrorDomain(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    API::Error::webKitErrorDomain(void)::webKitErrorDomainString = API::Error::webKitErrorDomain(void)::$_0::operator() const(void)::impl;
  }

  v4 = WebCore::ResourceRequestBase::url(this);
  WebCore::localizedString(&v12, @"The URL can’t be shown", v5);
  v7 = API::Error::webKitErrorDomain(void)::webKitErrorDomainString;
  if (API::Error::webKitErrorDomain(void)::webKitErrorDomainString)
  {
    atomic_fetch_add_explicit(API::Error::webKitErrorDomain(void)::webKitErrorDomainString, 2u, memory_order_relaxed);
  }

  *a2 = v7;
  v8 = *v4;
  if (*v4)
  {
    atomic_fetch_add_explicit(v8, 2u, memory_order_relaxed);
  }

  *(a2 + 8) = v8;
  v9 = *(v4 + 24);
  *(a2 + 16) = *(v4 + 8);
  *(a2 + 32) = v9;
  v10 = v12;
  if (v12)
  {
    atomic_fetch_add_explicit(v12, 2u, memory_order_relaxed);
    result = v12;
  }

  else
  {
    result = 0;
  }

  *(a2 + 48) = v10;
  *(a2 + 56) = 101;
  *(a2 + 60) = 1;
  *(a2 + 64) = 0;
  *(a2 + 72) = 1;
  v12 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v6);
    }
  }

  return result;
}

WTF::StringImpl *WebKit::wasBlockedByRestrictionsError@<X0>(WebKit *this@<X0>, uint64_t a2@<X8>)
{
  {
    atomic_fetch_add_explicit(API::Error::webKitErrorDomain(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    API::Error::webKitErrorDomain(void)::webKitErrorDomainString = API::Error::webKitErrorDomain(void)::$_0::operator() const(void)::impl;
  }

  v4 = WebCore::ResourceRequestBase::url(this);
  WebCore::localizedString(&v12, @"The URL was blocked by device restrictions", v5);
  v7 = API::Error::webKitErrorDomain(void)::webKitErrorDomainString;
  if (API::Error::webKitErrorDomain(void)::webKitErrorDomainString)
  {
    atomic_fetch_add_explicit(API::Error::webKitErrorDomain(void)::webKitErrorDomainString, 2u, memory_order_relaxed);
  }

  *a2 = v7;
  v8 = *v4;
  if (*v4)
  {
    atomic_fetch_add_explicit(v8, 2u, memory_order_relaxed);
  }

  *(a2 + 8) = v8;
  v9 = *(v4 + 24);
  *(a2 + 16) = *(v4 + 8);
  *(a2 + 32) = v9;
  v10 = v12;
  if (v12)
  {
    atomic_fetch_add_explicit(v12, 2u, memory_order_relaxed);
    result = v12;
  }

  else
  {
    result = 0;
  }

  *(a2 + 48) = v10;
  *(a2 + 56) = 106;
  *(a2 + 60) = 1;
  *(a2 + 64) = 0;
  *(a2 + 72) = 1;
  v12 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v6);
    }
  }

  return result;
}

WTF::StringImpl *WebKit::interruptedForPolicyChangeError@<X0>(WebKit *this@<X0>, uint64_t a2@<X8>)
{
  {
    atomic_fetch_add_explicit(API::Error::webKitErrorDomain(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    API::Error::webKitErrorDomain(void)::webKitErrorDomainString = API::Error::webKitErrorDomain(void)::$_0::operator() const(void)::impl;
  }

  v4 = WebCore::ResourceRequestBase::url(this);
  WebCore::localizedString(&v12, @"Frame load interrupted", v5);
  v7 = API::Error::webKitErrorDomain(void)::webKitErrorDomainString;
  if (API::Error::webKitErrorDomain(void)::webKitErrorDomainString)
  {
    atomic_fetch_add_explicit(API::Error::webKitErrorDomain(void)::webKitErrorDomainString, 2u, memory_order_relaxed);
  }

  *a2 = v7;
  v8 = *v4;
  if (*v4)
  {
    atomic_fetch_add_explicit(v8, 2u, memory_order_relaxed);
  }

  *(a2 + 8) = v8;
  v9 = *(v4 + 24);
  *(a2 + 16) = *(v4 + 8);
  *(a2 + 32) = v9;
  v10 = v12;
  if (v12)
  {
    atomic_fetch_add_explicit(v12, 2u, memory_order_relaxed);
    result = v12;
  }

  else
  {
    result = 0;
  }

  *(a2 + 48) = v10;
  *(a2 + 56) = 102;
  *(a2 + 60) = 1;
  *(a2 + 64) = 0;
  *(a2 + 72) = 1;
  v12 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v6);
    }
  }

  return result;
}

WTF::StringImpl *WebKit::ftpDisabledError@<X0>(WebKit *this@<X0>, uint64_t a2@<X8>)
{
  v5 = *(MEMORY[0x1E69E26C8] + 8);
  if (v5)
  {
    if (v5 == 1)
    {
      v6 = MEMORY[0x1E696EB88];
      atomic_fetch_add_explicit(MEMORY[0x1E696EB88], 2u, memory_order_relaxed);
    }

    else
    {
      WTF::StringImpl::createWithoutCopyingNonEmpty();
      v6 = v12;
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = WebCore::ResourceRequestBase::url(this);
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  result = v12;
  if (v6)
  {
    atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed);
  }

  *a2 = v6;
  v10 = *v7;
  if (*v7)
  {
    atomic_fetch_add_explicit(v10, 2u, memory_order_relaxed);
  }

  *(a2 + 8) = v10;
  v11 = *(v7 + 24);
  *(a2 + 16) = *(v7 + 8);
  *(a2 + 32) = v11;
  if (!v12)
  {
    *(a2 + 48) = 0;
    *(a2 + 56) = 0;
    *(a2 + 60) = 2;
    *(a2 + 64) = 0;
    *(a2 + 72) = 1;
    if (!v6)
    {
      return result;
    }

    goto LABEL_14;
  }

  atomic_fetch_add_explicit(v12, 2u, memory_order_relaxed);
  *(a2 + 48) = v12;
  *(a2 + 56) = 0;
  *(a2 + 60) = 2;
  *(a2 + 64) = 0;
  *(a2 + 72) = 1;
  if (atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    result = WTF::StringImpl::destroy(v12, v8);
  }

  if (v6)
  {
LABEL_14:
    if (atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(v6, v8);
    }
  }

  return result;
}

WTF::StringImpl *WebKit::failedCustomProtocolSyncLoad@<X0>(WebKit *this@<X0>, uint64_t a2@<X8>)
{
  v5 = *(MEMORY[0x1E69E26C8] + 8);
  if (v5)
  {
    if (v5 == 1)
    {
      v6 = MEMORY[0x1E696EB88];
      atomic_fetch_add_explicit(MEMORY[0x1E696EB88], 2u, memory_order_relaxed);
    }

    else
    {
      WTF::StringImpl::createWithoutCopyingNonEmpty();
      v6 = v14;
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = WebCore::ResourceRequestBase::url(this);
  WebCore::localizedString(&v14, @"Error handling synchronous load with custom protocol", v8);
  if (v6)
  {
    atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed);
  }

  *a2 = v6;
  v10 = *v7;
  if (*v7)
  {
    atomic_fetch_add_explicit(v10, 2u, memory_order_relaxed);
  }

  *(a2 + 8) = v10;
  v11 = *(v7 + 24);
  *(a2 + 16) = *(v7 + 8);
  *(a2 + 32) = v11;
  v12 = v14;
  if (v14)
  {
    atomic_fetch_add_explicit(v14, 2u, memory_order_relaxed);
    result = v14;
  }

  else
  {
    result = 0;
  }

  *(a2 + 48) = v12;
  *(a2 + 56) = 0;
  *(a2 + 60) = 1;
  *(a2 + 64) = 0;
  *(a2 + 72) = 1;
  v14 = 0;
  if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    result = WTF::StringImpl::destroy(result, v9);
    if (!v6)
    {
      return result;
    }
  }

  else if (!v6)
  {
    return result;
  }

  if (atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    return WTF::StringImpl::destroy(v6, v9);
  }

  return result;
}

WTF::StringImpl *WebKit::blockedByContentFilterError@<X0>(WebKit *this@<X0>, uint64_t a2@<X8>)
{
  {
    atomic_fetch_add_explicit(API::Error::webKitErrorDomain(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    API::Error::webKitErrorDomain(void)::webKitErrorDomainString = API::Error::webKitErrorDomain(void)::$_0::operator() const(void)::impl;
  }

  v4 = WebCore::ResourceRequestBase::url(this);
  WebCore::localizedString(&v12, @"The URL was blocked by a content filter", v5);
  v7 = API::Error::webKitErrorDomain(void)::webKitErrorDomainString;
  if (API::Error::webKitErrorDomain(void)::webKitErrorDomainString)
  {
    atomic_fetch_add_explicit(API::Error::webKitErrorDomain(void)::webKitErrorDomainString, 2u, memory_order_relaxed);
  }

  *a2 = v7;
  v8 = *v4;
  if (*v4)
  {
    atomic_fetch_add_explicit(v8, 2u, memory_order_relaxed);
  }

  *(a2 + 8) = v8;
  v9 = *(v4 + 24);
  *(a2 + 16) = *(v4 + 8);
  *(a2 + 32) = v9;
  v10 = v12;
  if (v12)
  {
    atomic_fetch_add_explicit(v12, 2u, memory_order_relaxed);
    result = v12;
  }

  else
  {
    result = 0;
  }

  *(a2 + 48) = v10;
  *(a2 + 56) = 105;
  *(a2 + 60) = 1;
  *(a2 + 64) = 0;
  *(a2 + 72) = 1;
  v12 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v6);
    }
  }

  return result;
}

WTF::StringImpl *WebKit::cannotShowMIMETypeError@<X0>(WebKit *this@<X0>, uint64_t a2@<X8>)
{
  {
    atomic_fetch_add_explicit(API::Error::webKitErrorDomain(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    API::Error::webKitErrorDomain(void)::webKitErrorDomainString = API::Error::webKitErrorDomain(void)::$_0::operator() const(void)::impl;
  }

  v4 = WebCore::ResourceResponseBase::url(this);
  WebCore::localizedString(&v12, @"Content with specified MIME type can’t be shown", v5);
  v7 = API::Error::webKitErrorDomain(void)::webKitErrorDomainString;
  if (API::Error::webKitErrorDomain(void)::webKitErrorDomainString)
  {
    atomic_fetch_add_explicit(API::Error::webKitErrorDomain(void)::webKitErrorDomainString, 2u, memory_order_relaxed);
  }

  *a2 = v7;
  v8 = *v4;
  if (*v4)
  {
    atomic_fetch_add_explicit(v8, 2u, memory_order_relaxed);
  }

  *(a2 + 8) = v8;
  v9 = *(v4 + 24);
  *(a2 + 16) = *(v4 + 8);
  *(a2 + 32) = v9;
  v10 = v12;
  if (v12)
  {
    atomic_fetch_add_explicit(v12, 2u, memory_order_relaxed);
    result = v12;
  }

  else
  {
    result = 0;
  }

  *(a2 + 48) = v10;
  *(a2 + 56) = 100;
  *(a2 + 60) = 1;
  *(a2 + 64) = 0;
  *(a2 + 72) = 1;
  v12 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v6);
    }
  }

  return result;
}

WTF::StringImpl *WebKit::pluginWillHandleLoadError@<X0>(WebKit *this@<X0>, uint64_t a2@<X8>)
{
  v5 = API::Error::webKitPluginErrorDomain(this);
  v6 = WebCore::ResourceResponseBase::url(this);
  WebCore::localizedString(&v14, @"Plug-in handled load", v7);
  v9 = *v5;
  if (*v5)
  {
    atomic_fetch_add_explicit(v9, 2u, memory_order_relaxed);
  }

  *a2 = v9;
  v10 = *v6;
  if (*v6)
  {
    atomic_fetch_add_explicit(v10, 2u, memory_order_relaxed);
  }

  *(a2 + 8) = v10;
  v11 = *(v6 + 24);
  *(a2 + 16) = *(v6 + 8);
  *(a2 + 32) = v11;
  v12 = v14;
  if (v14)
  {
    atomic_fetch_add_explicit(v14, 2u, memory_order_relaxed);
    result = v14;
  }

  else
  {
    result = 0;
  }

  *(a2 + 48) = v12;
  *(a2 + 56) = 204;
  *(a2 + 60) = 1;
  *(a2 + 64) = 0;
  *(a2 + 72) = 1;
  v14 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v8);
    }
  }

  return result;
}

WTF::StringImpl *WebKit::httpsUpgradeRedirectLoopError@<X0>(WebKit *this@<X0>, uint64_t a2@<X8>)
{
  {
    atomic_fetch_add_explicit(API::Error::webKitErrorDomain(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    API::Error::webKitErrorDomain(void)::webKitErrorDomainString = API::Error::webKitErrorDomain(void)::$_0::operator() const(void)::impl;
  }

  v4 = WebCore::ResourceRequestBase::url(this);
  WebCore::localizedString(&v12, @"HTTPS Upgrade redirect loop detected", v5);
  v7 = API::Error::webKitErrorDomain(void)::webKitErrorDomainString;
  if (API::Error::webKitErrorDomain(void)::webKitErrorDomainString)
  {
    atomic_fetch_add_explicit(API::Error::webKitErrorDomain(void)::webKitErrorDomainString, 2u, memory_order_relaxed);
  }

  *a2 = v7;
  v8 = *v4;
  if (*v4)
  {
    atomic_fetch_add_explicit(v8, 2u, memory_order_relaxed);
  }

  *(a2 + 8) = v8;
  v9 = *(v4 + 24);
  *(a2 + 16) = *(v4 + 8);
  *(a2 + 32) = v9;
  v10 = v12;
  if (v12)
  {
    atomic_fetch_add_explicit(v12, 2u, memory_order_relaxed);
    result = v12;
  }

  else
  {
    result = 0;
  }

  *(a2 + 48) = v10;
  *(a2 + 56) = 304;
  *(a2 + 60) = 1;
  *(a2 + 64) = 0;
  *(a2 + 72) = 1;
  v12 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v6);
    }
  }

  return result;
}

WTF::StringImpl *WebKit::httpNavigationWithHTTPSOnlyError@<X0>(WebKit *this@<X0>, uint64_t a2@<X8>)
{
  {
    atomic_fetch_add_explicit(API::Error::webKitErrorDomain(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    API::Error::webKitErrorDomain(void)::webKitErrorDomainString = API::Error::webKitErrorDomain(void)::$_0::operator() const(void)::impl;
  }

  v4 = WebCore::ResourceRequestBase::url(this);
  WebCore::localizedString(&v12, @"Navigation failed because the request was for an HTTP URL with HTTPS-Only enabled", v5);
  v7 = API::Error::webKitErrorDomain(void)::webKitErrorDomainString;
  if (API::Error::webKitErrorDomain(void)::webKitErrorDomainString)
  {
    atomic_fetch_add_explicit(API::Error::webKitErrorDomain(void)::webKitErrorDomainString, 2u, memory_order_relaxed);
  }

  *a2 = v7;
  v8 = *v4;
  if (*v4)
  {
    atomic_fetch_add_explicit(v8, 2u, memory_order_relaxed);
  }

  *(a2 + 8) = v8;
  v9 = *(v4 + 24);
  *(a2 + 16) = *(v4 + 8);
  *(a2 + 32) = v9;
  v10 = v12;
  if (v12)
  {
    atomic_fetch_add_explicit(v12, 2u, memory_order_relaxed);
    result = v12;
  }

  else
  {
    result = 0;
  }

  *(a2 + 48) = v10;
  *(a2 + 56) = 305;
  *(a2 + 60) = 1;
  *(a2 + 64) = 0;
  *(a2 + 72) = 1;
  v12 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v6);
    }
  }

  return result;
}

uint64_t WebKit::kit(uint64_t result)
{
  if (result >= 3 && result != -2)
  {
    __break(0xC471u);
    JUMPOUT(0x19DE87BF8);
  }

  return result;
}

uint64_t WebKit::platform(unsigned int a1)
{
  if (a1 < 0xF)
  {
    return byte_19E703E08[a1];
  }

  result = 127;
  __break(0xC471u);
  return result;
}

WTF::StringImpl *WebKit::platform@<X0>(uint64_t *__return_ptr a1@<X8>, WebKit *this@<X0>)
{
  v22 = *MEMORY[0x1E69E9840];
  WebKit::WebKit2PlatformMouseEvent::WebKit2PlatformMouseEvent(v14, this);
  v4 = v14[1];
  *a1 = v14[0];
  *(a1 + 1) = v4;
  v5 = v14[3];
  *(a1 + 2) = v14[2];
  *(a1 + 3) = v5;
  v6 = v14[5];
  *(a1 + 4) = v14[4];
  *(a1 + 5) = v6;
  *(a1 + 24) = v15;
  *(a1 + 60) = v18;
  v7 = v17;
  a1[13] = v16;
  a1[14] = v7;
  v16 = 0;
  a1[16] = v19;
  v8 = v20;
  v19 = 0;
  v20 = 0;
  a1[17] = v8;
  v9 = v21;
  v21 = 0u;
  *(a1 + 9) = v9;
  WTF::Vector<WebCore::PlatformMouseEvent,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v21, v10);
  WTF::Vector<WebCore::PlatformMouseEvent,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v19, v11);
  result = v16;
  v16 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v12);
    }
  }

  return result;
}

WTF *WebKit::platform@<X0>(uint64_t *__return_ptr a1@<X8>, WebKit *this@<X0>)
{
  v12[7] = *MEMORY[0x1E69E9840];
  WebKit::WebKit2PlatformTouchEvent::WebKit2PlatformTouchEvent(v8, this);
  WebCore::PlatformTouchEvent::PlatformTouchEvent(a1, v8);
  WTF::Vector<WebCore::PlatformTouchEvent,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v12, v4);
  WTF::Vector<WebCore::PlatformTouchEvent,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v11, v5);
  result = v9;
  if (v9)
  {
    v9 = 0;
    v10 = 0;
    return WTF::fastFree(result, v6);
  }

  return result;
}

unint64_t WebKit::WebFoundTextRange::hash(WebKit::WebFoundTextRange *this)
{
  if (*(this + 32) == 1)
  {

    return WebKit::WebFoundTextRange::PDFData::hash(this);
  }

  else
  {
    if (*(this + 32))
    {
      mpark::throw_bad_variant_access(this);
    }

    return (0xD7862706ELL * (277951225 * *this + 95187966 * *(this + 2))) >> 4;
  }
}

BOOL WebKit::WebFoundTextRange::operator==(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[5];
  v3 = a2[5];
  v4 = (v2 & v3) == -1;
  if (v2 != -1 && v3 != -1)
  {
    v6 = *(a1 + 32);
    v7 = *(a2 + 32);
    if (v6 == 255 || v7 != v6)
    {
      if (v2 != v3 || v7 != v6)
      {
        return 0;
      }

      return a1[6] == a2[6];
    }

    v10 = *a1;
    v11 = *a2;
    if (!*(a1 + 32))
    {
      if (v2 != v3 || v10 != v11 || a1[1] != a2[1])
      {
        return 0;
      }

      return a1[6] == a2[6];
    }

    if (v10 != v11 || a1[1] != a2[1] || a1[2] != a2[2])
    {
      return 0;
    }

    v4 = 0;
    if (v2 == v3 && a1[3] == a2[3])
    {
      return a1[6] == a2[6];
    }
  }

  return v4;
}

WebKit::WebKit2PlatformMouseEvent *WebKit::WebKit2PlatformMouseEvent::WebKit2PlatformMouseEvent(WebKit::WebKit2PlatformMouseEvent *this, const WebKit::WebMouseEvent *a2)
{
  v45[3] = *MEMORY[0x1E69E9840];
  *this = 0;
  *(this + 4) = 5;
  *(this + 16) = 0;
  *(this + 32) = 0;
  *(this + 24) = 254;
  *(this + 11) = 0;
  *(this + 52) = 0u;
  *(this + 68) = 0u;
  *(this + 24) = 1;
  v4 = *WebCore::mousePointerEventType(this);
  if (v4)
  {
    atomic_fetch_add_explicit(v4, 2u, memory_order_relaxed);
  }

  *(this + 13) = v4;
  *(this + 14) = 0;
  *(this + 60) = 0;
  *(this + 8) = 0u;
  v5 = (this + 128);
  *(this + 9) = 0u;
  *(this + 8) = WebKit::platform(*(a2 + 12));
  *(this + 9) = *(a2 + 13) & 0x12 | (8 * (*(a2 + 13) & 1)) | ((*(a2 + 13) & 4) != 0) | (*(a2 + 13) >> 1) & 4;
  *this = *(a2 + 2);
  v6 = *(a2 + 5);
  v7 = *(this + 32);
  *(this + 2) = *(a2 + 4);
  *(this + 3) = v6;
  if ((v7 & 1) == 0)
  {
    *(this + 32) = 1;
  }

  v8 = *(a2 + 48);
  if (v8 >= 3 && v8 != 254)
  {
    __break(0xC471u);
LABEL_50:
    JUMPOUT(0x19DE883B0);
  }

  *(this + 48) = v8;
  *(this + 60) = *(a2 + 25);
  *(this + 52) = *(a2 + 52);
  *(this + 68) = *(a2 + 17) | (*(a2 + 18) << 32);
  *(this + 76) = *(a2 + 10);
  *(this + 60) = *(a2 + 60);
  *(this + 28) = *(a2 + 22);
  v9 = *(a2 + 12);
  if (v9 <= 1)
  {
    if (*(a2 + 12))
    {
LABEL_12:
      v10 = 0.0;
      goto LABEL_15;
    }

    v10 = 1.0;
  }

  else
  {
    if (v9 - 2 >= 2)
    {
      if (v9 == 4)
      {
        v10 = 2.0;
        goto LABEL_15;
      }

      goto LABEL_12;
    }

    v10 = *(a2 + 12);
  }

LABEL_15:
  *(this + 11) = v10;
  WTF::Vector<WebKit::WebMouseEvent,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(&v38, a2 + 16);
  v40 = 0;
  v41 = 0;
  if (!v39)
  {
    goto LABEL_23;
  }

  if (v39 >= 0x199999A)
  {
    __break(0xC471u);
    goto LABEL_50;
  }

  v12 = 160 * v39;
  v13 = WTF::fastMalloc((160 * v39));
  LODWORD(v41) = v12 / 0xA0;
  v40 = v13;
  if (v39)
  {
    v14 = v38;
    v15 = 160 * v39;
    do
    {
      WebKit::platform(v42, v14, v11);
      WTF::Vector<WebCore::PlatformMouseEvent,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::unsafeAppendWithoutCapacityCheck(&v40, v42);
      WTF::Vector<WebCore::PlatformMouseEvent,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v45, v16);
      WTF::Vector<WebCore::PlatformMouseEvent,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v44, v17);
      v18 = v43;
      v43 = 0;
      if (v18 && atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v18, v11);
      }

      v14 = (v14 + 160);
      v15 -= 160;
    }

    while (v15);
  }

LABEL_23:
  v19 = *(this + 35);
  if (v19)
  {
    WTF::VectorDestructor<true,WebCore::PlatformMouseEvent>::destruct(*v5, (*v5 + 160 * v19));
  }

  v20 = *v5;
  if (*v5)
  {
    *(this + 16) = 0;
    *(this + 34) = 0;
    WTF::fastFree(v20, v11);
  }

  *(this + 16) = v40;
  v21 = v41;
  v40 = 0;
  v41 = 0;
  *(this + 17) = v21;
  WTF::Vector<WebCore::PlatformMouseEvent,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v40, v11);
  WTF::Vector<WebKit::WebMouseEvent,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v38, v22);
  WTF::Vector<WebKit::WebMouseEvent,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(&v38, a2 + 18);
  v40 = 0;
  v41 = 0;
  if (v39)
  {
    if (v39 >= 0x199999A)
    {
      __break(0xC471u);
      JUMPOUT(0x19DE883B8);
    }

    v24 = 160 * v39;
    v25 = WTF::fastMalloc((160 * v39));
    LODWORD(v41) = v24 / 0xA0;
    v40 = v25;
    if (v39)
    {
      v26 = v38;
      v27 = 160 * v39;
      do
      {
        WebKit::platform(v42, v26, v23);
        WTF::Vector<WebCore::PlatformMouseEvent,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::unsafeAppendWithoutCapacityCheck(&v40, v42);
        WTF::Vector<WebCore::PlatformMouseEvent,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v45, v28);
        WTF::Vector<WebCore::PlatformMouseEvent,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v44, v29);
        v30 = v43;
        v43 = 0;
        if (v30 && atomic_fetch_add_explicit(v30, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v30, v23);
        }

        v26 = (v26 + 160);
        v27 -= 160;
      }

      while (v27);
    }
  }

  v31 = *(this + 39);
  if (v31)
  {
    WTF::VectorDestructor<true,WebCore::PlatformMouseEvent>::destruct(*(this + 18), (*(this + 18) + 160 * v31));
  }

  v32 = *(this + 18);
  if (v32)
  {
    *(this + 18) = 0;
    *(this + 38) = 0;
    WTF::fastFree(v32, v23);
  }

  *(this + 18) = v40;
  v33 = v41;
  v40 = 0;
  v41 = 0;
  *(this + 19) = v33;
  WTF::Vector<WebCore::PlatformMouseEvent,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v40, v23);
  WTF::Vector<WebKit::WebMouseEvent,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v38, v34);
  *(this + 29) = 0;
  v35 = *(a2 + 13) & 1;
  *(this + 29) = v35;
  v36 = *(a2 + 13);
  if ((v36 & 2) == 0)
  {
    if ((*(a2 + 13) & 4) == 0)
    {
      goto LABEL_41;
    }

LABEL_45:
    v35 |= 4u;
    *(this + 29) = v35;
    if ((*(a2 + 13) & 8) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_42;
  }

  v35 |= 2u;
  *(this + 29) = v35;
  v36 = *(a2 + 13);
  if ((v36 & 4) != 0)
  {
    goto LABEL_45;
  }

LABEL_41:
  if ((v36 & 8) != 0)
  {
LABEL_42:
    *(this + 29) = v35 | 8;
  }

LABEL_43:
  *(this + 24) = *(a2 + 27);
  WTF::String::operator=(this + 13, a2 + 14);
  return this;
}

WTF *WTF::Vector<WebCore::PlatformMouseEvent,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::unsafeAppendWithoutCapacityCheck(uint64_t a1, __int128 *a2)
{
  v4 = *a1 + 160 * *(a1 + 12);
  v5 = *a2;
  v6 = a2[2];
  *(v4 + 16) = a2[1];
  *(v4 + 32) = v6;
  *v4 = v5;
  v7 = a2[3];
  v8 = a2[4];
  v9 = a2[5];
  *(v4 + 96) = *(a2 + 24);
  *(v4 + 64) = v8;
  *(v4 + 80) = v9;
  *(v4 + 48) = v7;
  v10 = *(a2 + 13);
  *(a2 + 13) = 0;
  *(v4 + 104) = v10;
  v11 = *(a2 + 14);
  *(v4 + 120) = *(a2 + 60);
  *(v4 + 112) = v11;
  *(v4 + 136) = 0;
  *(v4 + 128) = 0;
  WTF::VectorBuffer<WebCore::HTTPHeaderField,0ul,WTF::FastMalloc>::adopt(v4 + 128, a2 + 32);
  *(v4 + 144) = 0;
  *(v4 + 152) = 0;
  result = WTF::VectorBuffer<WebCore::HTTPHeaderField,0ul,WTF::FastMalloc>::adopt(v4 + 144, a2 + 36);
  ++*(a1 + 12);
  return result;
}

WTF::StringImpl *WTF::VectorDestructor<true,WebCore::PlatformMouseEvent>::destruct(WTF::StringImpl *result, WTF::StringImpl *a2)
{
  if (result != a2)
  {
    v3 = result + 144;
    do
    {
      WTF::Vector<WebCore::PlatformMouseEvent,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v3, a2);
      WTF::Vector<WebCore::PlatformMouseEvent,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v3 - 16, v4);
      result = *(v3 - 40);
      *(v3 - 40) = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          result = WTF::StringImpl::destroy(result, a2);
        }
      }

      v5 = (v3 + 16);
      v3 += 160;
    }

    while (v5 != a2);
  }

  return result;
}

uint64_t WTF::Vector<WebCore::PlatformMouseEvent,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, void *a2)
{
  v3 = *(a1 + 12);
  if (v3)
  {
    WTF::VectorDestructor<true,WebCore::PlatformMouseEvent>::destruct(*a1, *a1 + 160 * v3);
  }

  v4 = *a1;
  if (*a1)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    WTF::fastFree(v4, a2);
  }

  return a1;
}

WebKit::WebKit2PlatformWheelEvent *WebKit::WebKit2PlatformWheelEvent::WebKit2PlatformWheelEvent(WebKit::WebKit2PlatformWheelEvent *this, const WebKit::WebWheelEvent *a2)
{
  *this = 0;
  *(this + 4) = 12;
  *(this + 16) = 0;
  *(this + 32) = 0;
  *(this + 24) = 1;
  *(this + 50) = 0;
  *(this + 12) = 0;
  *(this + 104) = 0;
  *(this + 112) = 0;
  *(this + 15) = 0;
  *(this + 29) = 0;
  *(this + 52) = 0u;
  *(this + 68) = 0u;
  *(this + 78) = 0u;
  *(this + 8) = WebKit::platform(*(a2 + 12));
  *(this + 9) = *(a2 + 13) & 0x12 | (8 * (*(a2 + 13) & 1)) | ((*(a2 + 13) & 4) != 0) | (*(a2 + 13) >> 1) & 4;
  *this = *(a2 + 2);
  *(this + 52) = *(a2 + 6);
  *(this + 60) = *(a2 + 7);
  *(this + 17) = *(a2 + 16);
  *(this + 18) = *(a2 + 17);
  *(this + 19) = *(a2 + 18);
  *(this + 20) = *(a2 + 19);
  *(this + 48) = *(a2 + 80) != 0;
  *(this + 49) = *(a2 + 93);
  v4 = *(a2 + 22);
  *(this + 92) = *(a2 + 21);
  *(this + 93) = v4;
  *(this + 12) = *(a2 + 12);
  v5 = *(a2 + 28);
  *(this + 13) = *(a2 + 13);
  *(this + 112) = v5;
  *(this + 29) = *(a2 + 29);
  *(this + 15) = *(a2 + 15);
  return this;
}

WebKit::WebKit2PlatformKeyboardEvent *WebKit::WebKit2PlatformKeyboardEvent::WebKit2PlatformKeyboardEvent(WebKit::WebKit2PlatformKeyboardEvent *this, const WebKit::WebKeyboardEvent *a2)
{
  *this = 0;
  *(this + 4) = 1;
  *(this + 16) = 0;
  *(this + 32) = 0;
  *(this + 24) = 0;
  *(this + 50) = 0;
  *(this + 13) = 0;
  *(this + 86) = 0u;
  *(this + 72) = 0u;
  v4 = (this + 72);
  *(this + 56) = 0u;
  v5 = (this + 56);
  *(this + 8) = WebKit::platform(*(a2 + 12));
  *(this + 9) = *(a2 + 13) & 0x12 | (8 * (*(a2 + 13) & 1)) | ((*(a2 + 13) & 4) != 0) | (*(a2 + 13) >> 1) & 4;
  *this = *(a2 + 2);
  WTF::String::operator=(v5, a2 + 6);
  WTF::String::operator=(this + 8, a2 + 7);
  WTF::String::operator=(v4, a2 + 8);
  WTF::String::operator=(this + 10, a2 + 9);
  WTF::String::operator=(this + 11, a2 + 10);
  *(this + 24) = *(a2 + 22);
  *(this + 101) = *(a2 + 100);
  *(this + 48) = *(a2 + 101);
  *(this + 49) = *(a2 + 51);
  v6 = *(a2 + 5);
  v7 = *(this + 32);
  *(this + 2) = *(a2 + 4);
  *(this + 3) = v6;
  if ((v7 & 1) == 0)
  {
    *(this + 32) = 1;
  }

  return this;
}

WebKit::WebKit2PlatformTouchEvent *WebKit::WebKit2PlatformTouchEvent::WebKit2PlatformTouchEvent(WebKit::WebKit2PlatformTouchEvent *this, const WebKit::WebTouchEvent *a2)
{
  v59[7] = *MEMORY[0x1E69E9840];
  *this = 0;
  *(this + 4) = 0;
  *(this + 16) = 0;
  *(this + 32) = 0;
  *(this + 3) = 0u;
  v4 = (this + 48);
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 104) = 1;
  *(this + 116) = 0;
  *(this + 108) = 0;
  *(this + 8) = WebKit::platform(*(a2 + 12));
  *(this + 9) = *(a2 + 13) & 0x12 | (8 * (*(a2 + 13) & 1)) | ((*(a2 + 13) & 4) != 0) | (*(a2 + 13) >> 1) & 4;
  *this = *(a2 + 2);
  v7 = *(a2 + 15);
  if (v7)
  {
    if (v7 >= 0x2E8BA2F)
    {
      __break(0xC471u);
      JUMPOUT(0x19DE88BA4);
    }

    v8 = 88 * v7;
    v9 = WTF::fastMalloc((88 * v7));
    v10 = v9;
    v11 = v8 / 0x58;
    v12 = *(a2 + 15);
    if (v12)
    {
      v13 = *(a2 + 6);
      v14 = v13 + 80 * v12;
      v15 = v9 + 48;
      v16 = (80 * v12 - 80) / 0x50 + 1;
      do
      {
        if ((*(v13 + 20) - 1) > 3u)
        {
          v17 = 3;
        }

        else
        {
          v17 = dword_19E703E20[(*(v13 + 20) - 1)];
        }

        v6 = *(v13 + 4);
        v18 = *(v13 + 72);
        v19 = *(v13 + 24);
        v20 = *(v13 + 40);
        v21 = *(v13 + 56);
        *(v15 - 48) = *v13;
        *(v15 - 44) = v6;
        *(v15 - 28) = 1;
        *(v15 - 24) = v17;
        *(v15 - 16) = v19;
        *v15 = v20;
        v13 += 80;
        *(v15 + 16) = v21;
        *(v15 + 32) = v18;
        v15 += 88;
      }

      while (v13 != v14);
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v16 = 0;
    v11 = 0;
    v10 = 0;
  }

  v22 = *v4;
  if (*v4)
  {
    *(this + 6) = 0;
    *(this + 14) = 0;
    WTF::fastFree(v22, v5);
  }

  *(this + 6) = v10;
  *(this + 14) = v11;
  *(this + 15) = v16;
  v23 = *(a2 + 19);
  if (v23)
  {
    if (v23 >> 25)
    {
      __break(0xC471u);
      JUMPOUT(0x19DE88BACLL);
    }

    v24 = WTF::fastMalloc((v23 << 7));
    v25 = v24;
    v26 = *(a2 + 19);
    if (v26)
    {
      v27 = 0;
      v28 = *(a2 + 8);
      v29 = v26 << 7;
      v30 = v24;
      do
      {
        WebKit::platform(v55, v28, v5);
        WebCore::PlatformTouchEvent::PlatformTouchEvent(v30, v55);
        HIDWORD(v54) = ++v27;
        WTF::Vector<WebCore::PlatformTouchEvent,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v59, v31);
        WTF::Vector<WebCore::PlatformTouchEvent,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v58, v32);
        v33 = v56;
        if (v56)
        {
          v56 = 0;
          v57 = 0;
          WTF::fastFree(v33, v5);
        }

        v28 = (v28 + 128);
        v30 += 128;
        v29 -= 128;
      }

      while (v29);
    }

    else
    {
      v27 = 0;
    }
  }

  else
  {
    v27 = 0;
    v25 = 0;
  }

  v34 = *(this + 19);
  if (v34)
  {
    WTF::VectorDestructor<true,WebCore::PlatformTouchEvent>::destruct(*(this + 8), (*(this + 8) + (v34 << 7)));
  }

  v35 = *(this + 8);
  if (v35)
  {
    *(this + 8) = 0;
    *(this + 18) = 0;
    WTF::fastFree(v35, v5);
  }

  *&v6 = 0;
  v54 = v6;
  *(this + 8) = v25;
  *(this + 18) = v23;
  *(this + 19) = v27;
  WTF::Vector<WebCore::PlatformTouchEvent,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v54, v5);
  v38 = *(a2 + 23);
  if (v38)
  {
    if (v38 >> 25)
    {
      __break(0xC471u);
      JUMPOUT(0x19DE88BB4);
    }

    v39 = WTF::fastMalloc((v38 << 7));
    v40 = v39;
    v41 = *(a2 + 23);
    if (v41)
    {
      v42 = 0;
      v43 = *(a2 + 10);
      v44 = v41 << 7;
      v45 = v39;
      do
      {
        WebKit::platform(v55, v43, v36);
        WebCore::PlatformTouchEvent::PlatformTouchEvent(v45, v55);
        HIDWORD(v54) = ++v42;
        WTF::Vector<WebCore::PlatformTouchEvent,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v59, v46);
        WTF::Vector<WebCore::PlatformTouchEvent,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v58, v47);
        v48 = v56;
        if (v56)
        {
          v56 = 0;
          v57 = 0;
          WTF::fastFree(v48, v36);
        }

        v43 = (v43 + 128);
        v45 += 128;
        v44 -= 128;
      }

      while (v44);
    }

    else
    {
      v42 = 0;
    }
  }

  else
  {
    v42 = 0;
    v40 = 0;
  }

  v49 = *(this + 23);
  if (v49)
  {
    WTF::VectorDestructor<true,WebCore::PlatformTouchEvent>::destruct(*(this + 10), (*(this + 10) + (v49 << 7)));
  }

  v50 = *(this + 10);
  if (v50)
  {
    *(this + 10) = 0;
    *(this + 22) = 0;
    WTF::fastFree(v50, v36);
  }

  *&v37 = 0;
  v54 = v37;
  *(this + 10) = v40;
  *(this + 22) = v38;
  *(this + 23) = v42;
  WTF::Vector<WebCore::PlatformTouchEvent,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v54, v36);
  *(this + 12) = *(a2 + 108);
  *(this + 104) = *(a2 + 104);
  *(this + 105) = *(a2 + 106);
  *(this + 106) = *(a2 + 105);
  *(this + 108) = *(a2 + 12);
  *(this + 116) = *(a2 + 12);
  v51 = *(a2 + 5);
  v52 = *(this + 32);
  *(this + 2) = *(a2 + 4);
  *(this + 3) = v51;
  if ((v52 & 1) == 0)
  {
    *(this + 32) = 1;
  }

  return this;
}

WTF *WTF::VectorDestructor<true,WebCore::PlatformTouchEvent>::destruct(WTF *result, WTF *a2)
{
  if (result != a2)
  {
    v3 = result + 80;
    do
    {
      WTF::Vector<WebCore::PlatformTouchEvent,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v3, a2);
      WTF::Vector<WebCore::PlatformTouchEvent,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v3 - 16, v4);
      result = *(v3 - 32);
      if (result)
      {
        *(v3 - 32) = 0;
        *(v3 - 24) = 0;
        result = WTF::fastFree(result, a2);
      }

      v5 = (v3 + 48);
      v3 += 128;
    }

    while (v5 != a2);
  }

  return result;
}

uint64_t WTF::Vector<WebCore::PlatformTouchEvent,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, void *a2)
{
  v3 = *(a1 + 12);
  if (v3)
  {
    WTF::VectorDestructor<true,WebCore::PlatformTouchEvent>::destruct(*a1, *a1 + (v3 << 7));
  }

  v4 = *a1;
  if (*a1)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    WTF::fastFree(v4, a2);
  }

  return a1;
}

uint64_t WebCore::PlatformTouchEvent::PlatformTouchEvent(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  v5 = *(a2 + 9);
  *a1 = *a2;
  *(a1 + 8) = v4;
  *(a1 + 9) = 0;
  *(a1 + 16) = 0;
  v6 = a1 + 16;
  *(a1 + 32) = 0;
  if ((v5 & 0xF) != 0)
  {
    *(a1 + 9) = v5 & 0xF;
  }

  WTF::Vector<WebCore::PlatformTouchPoint,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(a1 + 48, (a2 + 48));
  WTF::Vector<WebCore::PlatformTouchEvent,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(a1 + 64, (a2 + 64));
  WTF::Vector<WebCore::PlatformTouchEvent,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(a1 + 80, (a2 + 80));
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 105) = *(a2 + 105);
  *(a1 + 108) = *(a2 + 108);
  *(a1 + 116) = *(a2 + 116);
  v7 = *(a2 + 16);
  *(v6 + 16) = *(a2 + 32);
  *v6 = v7;
  return a1;
}

uint64_t WTF::Vector<WebCore::PlatformTouchPoint,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(uint64_t result, uint64_t *a2)
{
  v2 = result;
  v3 = *(a2 + 3);
  *result = 0;
  *(result + 8) = 0;
  *(result + 12) = v3;
  if (!v3)
  {
    return v2;
  }

  if (v3 < 0x2E8BA2F)
  {
    v5 = 88 * v3;
    v6 = WTF::fastMalloc((88 * v3));
    *(v2 + 8) = v5 / 0x58;
    *v2 = v6;
    v7 = *(a2 + 3);
    if (v7)
    {
      v8 = *a2;
      v9 = 88 * v7;
      do
      {
        v10 = *(v8 + 16);
        *v6 = *v8;
        *(v6 + 16) = v10;
        v11 = *(v8 + 32);
        v12 = *(v8 + 48);
        v13 = *(v8 + 64);
        *(v6 + 80) = *(v8 + 80);
        *(v6 + 48) = v12;
        *(v6 + 64) = v13;
        *(v6 + 32) = v11;
        v6 += 88;
        v8 += 88;
        v9 -= 88;
      }

      while (v9);
    }

    return v2;
  }

  __break(0xC471u);
  return result;
}

uint64_t WTF::Vector<WebCore::PlatformTouchEvent,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(uint64_t result, uint64_t *a2)
{
  v2 = result;
  v3 = *(a2 + 3);
  *result = 0;
  *(result + 8) = 0;
  *(result + 12) = v3;
  if (!v3)
  {
    return v2;
  }

  if (!(v3 >> 25))
  {
    v5 = WTF::fastMalloc((v3 << 7));
    *(v2 + 8) = v3;
    *v2 = v5;
    v6 = *(a2 + 3);
    if (v6)
    {
      v7 = *a2;
      v8 = v6 << 7;
      do
      {
        WebCore::PlatformTouchEvent::PlatformTouchEvent();
        v7 += 128;
        v8 -= 128;
      }

      while (v8);
    }

    return v2;
  }

  __break(0xC471u);
  return result;
}

uint64_t WebKit::WebScreenOrientationManagerProxy::platformShouldRejectLockRequest@<X0>(char *a1@<X8>)
{
  result = [objc_msgSend(MEMORY[0x1E69DC668] "sharedApplication")];
  if (result)
  {
    result = WTF::StringImpl::createWithoutCopyingNonEmpty();
    v4 = 1;
    v5 = 6;
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  *a1 = v5;
  a1[16] = v4;
  return result;
}

void sub_19DE89120(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22)
{
  _Block_object_dispose(&a16, 8);
  v23 = a22;
  a22 = 0;
  if (v23)
  {
  }

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__8(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(a2 + 48) = 0;
  *(result + 48) = v2;
  return result;
}

void __Block_byref_object_dispose__8(uint64_t a1)
{
  v1 = *(a1 + 48);
  *(a1 + 48) = 0;
  if (v1)
  {
  }
}

void sub_19DE89668(_Unwind_Exception *exception_object)
{
  if (v1)
  {
  }

  _Unwind_Resume(exception_object);
}

void *__copy_helper_block_e8_32c72_ZTSKZ59__WKDatePickerPopoverController_dismissDatePickerAnimated__E3__1(void *result, uint64_t a2)
{
  v2 = *(a2 + 32);
  result[4] = v2;
  if (v2)
  {
    return v2;
  }

  return result;
}

void __destroy_helper_block_e8_32c72_ZTSKZ59__WKDatePickerPopoverController_dismissDatePickerAnimated__E3__1(uint64_t a1)
{
  v1 = *(a1 + 32);
  *(a1 + 32) = 0;
  if (v1)
  {
  }
}

void sub_19DE8A194(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10, uint64_t a11)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_19DE8AE54(_Unwind_Exception *exception_object)
{
  if (v2)
  {
  }

  if (v1)
  {
  }

  _Unwind_Resume(exception_object);
}

void sub_19DE8AF78(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_19DE8B1BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  if (a14)
  {
  }

  _Unwind_Resume(a1);
}

void *__copy_helper_block_e8_32c51_ZTSKZ38__WKDateTimePicker_showDateTimePicker_E3__3(void *result, uint64_t a2)
{
  v2 = *(a2 + 32);
  result[4] = v2;
  if (v2)
  {
    return v2;
  }

  return result;
}

void __destroy_helper_block_e8_32c51_ZTSKZ38__WKDateTimePicker_showDateTimePicker_E3__3(uint64_t a1)
{
  v1 = *(a1 + 32);
  *(a1 + 32) = 0;
  if (v1)
  {
  }
}

void sub_19DE8B3EC(_Unwind_Exception *exception_object)
{
  *v1 = 0;
  if (v2)
  {
  }

  _Unwind_Resume(exception_object);
}

void sub_19DE8B4C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void sub_19DE8B5D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void sub_19DE8BA60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void sub_19DE8BC48(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (v12)
  {
  }

  _Unwind_Resume(exception_object);
}

void sub_19DE8BDD4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  if (a12)
  {
  }

  _Unwind_Resume(exception_object);
}

uint64_t WTF::dynamic_objc_cast<WKDateTimePicker>(uint64_t result)
{
  if (result)
  {
    v1 = result;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      return v1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void sub_19DE8C3B0(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, id location)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_19DE8C6D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, id location)
{
  _Block_release(v11);
  objc_destroyWeak(&a9);
  if (v12)
  {
  }

  _Unwind_Resume(a1);
}

void sub_19DE8CD68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }

  if (v19)
  {
  }

  _Unwind_Resume(exception_object);
}

void sub_19DE8D0AC(_Unwind_Exception *a1, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, WTF::StringImpl *a19)
{
  if ((v20 & 1) == 0)
  {
    CFRelease(*(v19 + 8));
  }

  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&a17, a2);
  _Unwind_Resume(a1);
}

WTF::StringImpl *WebKit::toStrings@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  *a2 = 0;
  if (*a1)
  {
    v4 = *(*a1 - 3);
  }

  else
  {
    v4 = 0;
  }

  WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>::reserveInitialCapacity(a2, v4);
  result = WTF::HashTable<WTF::Ref<WebKit::WebProcessProxy,WTF::RawPtrTraits<WebKit::WebProcessProxy>,WTF::DefaultRefDerefTraits<WebKit::WebProcessProxy>>,WTF::Ref<WebKit::WebProcessProxy,WTF::RawPtrTraits<WebKit::WebProcessProxy>,WTF::DefaultRefDerefTraits<WebKit::WebProcessProxy>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WebKit::WebProcessProxy,WTF::RawPtrTraits<WebKit::WebProcessProxy>,WTF::DefaultRefDerefTraits<WebKit::WebProcessProxy>>>,WTF::HashTraits<WTF::Ref<WebKit::WebProcessProxy,WTF::RawPtrTraits<WebKit::WebProcessProxy>,WTF::DefaultRefDerefTraits<WebKit::WebProcessProxy>>>,WTF::HashTraits<WTF::Ref<WebKit::WebProcessProxy,WTF::RawPtrTraits<WebKit::WebProcessProxy>,WTF::DefaultRefDerefTraits<WebKit::WebProcessProxy>>>,WTF::FastMalloc>::begin(a1);
  v6 = result;
  v8 = v7;
  if (*a1)
  {
    v9 = &(*a1)[*(*a1 - 1)];
  }

  else
  {
    v9 = 0;
  }

  if (v9 != result)
  {
    v10 = MEMORY[0x1E696EBA0];
    do
    {
      WebKit::WebExtensionMatchPattern::stringWithScheme(*v6, v10, &v14);
      WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>(a2, &v14, v11, &v13);
      result = v14;
      v14 = 0;
      if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        result = WTF::StringImpl::destroy(result, v12);
      }

      do
      {
        v6 = (v6 + 8);
      }

      while (v6 != v8 && (*v6 + 1) <= 1);
    }

    while (v6 != v9);
  }

  return result;
}

uint64_t WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>::reserveInitialCapacity(void *a1, uint64_t a2)
{
  v3 = WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::computeBestTableSize(a2);
  result = WTF::fastZeroedMalloc((8 * v3 + 16));
  *a1 = result + 16;
  *(result + 8) = v3 - 1;
  *(result + 12) = v3;
  *result = 0;
  return result;
}

void WebKit::toPatterns(void **a1@<X0>, uint64_t *a2@<X8>)
{
  if (*a1)
  {
    v4 = *(*a1 - 3);
  }

  else
  {
    v4 = 0;
  }

  v5 = WTF::HashTable<Inspector::Protocol::Automation::VirtualKey,WTF::KeyValuePair<Inspector::Protocol::Automation::VirtualKey,Inspector::Protocol::Automation::VirtualKey>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<Inspector::Protocol::Automation::VirtualKey,Inspector::Protocol::Automation::VirtualKey>>,WTF::IntHash<Inspector::Protocol::Automation::VirtualKey>,WTF::HashMap<Inspector::Protocol::Automation::VirtualKey,Inspector::Protocol::Automation::VirtualKey,WTF::IntHash<Inspector::Protocol::Automation::VirtualKey>,WTF::StrongEnumHashTraits<Inspector::Protocol::Automation::VirtualKey>,WTF::HashTraits<Inspector::Protocol::Automation::VirtualKey>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::StrongEnumHashTraits<Inspector::Protocol::Automation::VirtualKey>,WTF::FastMalloc>::computeBestTableSize(v4);
  v6 = WTF::fastZeroedMalloc((8 * v5 + 16));
  *a2 = v6 + 16;
  *(v6 + 8) = v5 - 1;
  *(v6 + 12) = v5;
  *v6 = 0;
  v7 = WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::begin(a1);
  v9 = v7;
  v11 = v10;
  if (*a1)
  {
    v12 = &(*a1)[*(*a1 - 1)];
  }

  else
  {
    v12 = 0;
  }

  if (v12 != v7)
  {
    do
    {
      WebKit::WebExtensionMatchPattern::getOrCreate(v9, v8, &v16);
      v13 = v16;
      CFRetain(*(v16 + 8));
      v17 = v13;
      WTF::HashTable<WTF::Ref<WebKit::WebExtensionMatchPattern,WTF::RawPtrTraits<WebKit::WebExtensionMatchPattern>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionMatchPattern>>,WTF::Ref<WebKit::WebExtensionMatchPattern,WTF::RawPtrTraits<WebKit::WebExtensionMatchPattern>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionMatchPattern>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WebKit::WebExtensionMatchPattern,WTF::RawPtrTraits<WebKit::WebExtensionMatchPattern>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionMatchPattern>>>,WTF::HashTraits<WTF::Ref<WebKit::WebExtensionMatchPattern,WTF::RawPtrTraits<WebKit::WebExtensionMatchPattern>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionMatchPattern>>>,WTF::HashTraits<WTF::Ref<WebKit::WebExtensionMatchPattern,WTF::RawPtrTraits<WebKit::WebExtensionMatchPattern>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionMatchPattern>>>,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>(a2, &v17, v15);
      v14 = v17;
      v17 = 0;
      if (v14)
      {
        CFRelease(*(v14 + 8));
      }

      CFRelease(*(v13 + 8));
      do
      {
        ++v9;
      }

      while (v9 != v11 && *v9 + 1 <= 1);
    }

    while (v9 != v12);
  }
}

uint64_t WebKit::WebExtensionStorageSQLiteStore::getValuesForKeys(atomic_ullong *a1, uint64_t *a2, uint64_t *a3)
{
  v6 = a1[9];
  v7 = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::NetworkDataTask,(WTF::DestructionThread)1>::controlBlock(a1 + 1);
  v20 = WTF::ThreadSafeWeakPtrControlBlock::weakRef(v7);
  v8 = a1[2];
  if (v8)
  {
    atomic_fetch_add_explicit(v8, 2u, memory_order_relaxed);
  }

  v18 = v8;
  WTF::String::isolatedCopy();
  v22 = 0;
  v23 = 0;
  _ZN3WTF6MapperIZNS_21CrossThreadCopierBaseILb0ELb0ENS_6VectorINS_6StringELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEE4copyERKS6_EUlRT_E_S6_S9_vE3mapERS6_S9_RKSC_(&v22, a2);
  v9 = *a3;
  *a3 = 0;
  v24 = v9;
  v10 = WTF::fastMalloc(0x38);
  *v10 = &unk_1F111E610;
  v10[1] = a1;
  v10[2] = v20;
  v10[3] = v21;
  v11 = v22;
  v22 = 0;
  v10[4] = v11;
  v10[5] = v23;
  v12 = v24;
  v23 = 0;
  v24 = 0;
  v10[6] = v12;
  v25 = v10;
  (*(*v6 + 48))(v6, &v25);
  v14 = v25;
  v25 = 0;
  if (v14)
  {
    (*(*v14 + 8))(v14);
  }

  v15 = v24;
  v24 = 0;
  if (v15)
  {
    (*(*v15 + 8))(v15);
  }

  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v22, v13);
  result = v18;
  if (v18)
  {
    if (atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(v18, v16);
    }
  }

  return result;
}

uint64_t WebKit::WebExtensionStorageSQLiteStore::getStorageSizeForKeys(atomic_ullong *a1, uint64_t *a2, uint64_t *a3)
{
  v6 = a1[9];
  while (1)
  {
    v7 = a1[1];
    if ((v7 & 1) == 0)
    {
      break;
    }

    v8 = a1[1];
    atomic_compare_exchange_strong_explicit(a1 + 1, &v8, v7 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v8 == v7)
    {
      goto LABEL_6;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(a1[1]);
LABEL_6:
  v9 = a1[2];
  if (v9)
  {
    atomic_fetch_add_explicit(v9, 2u, memory_order_relaxed);
  }

  v19 = v9;
  WTF::String::isolatedCopy();
  v21 = 0;
  v22 = 0;
  _ZN3WTF6MapperIZNS_21CrossThreadCopierBaseILb0ELb0ENS_6VectorINS_6StringELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEE4copyERKS6_EUlRT_E_S6_S9_vE3mapERS6_S9_RKSC_(&v21, a2);
  v10 = *a3;
  *a3 = 0;
  v23 = v10;
  v11 = WTF::fastMalloc(0x30);
  *v11 = &unk_1F111E660;
  v11[1] = a1;
  v11[2] = v20;
  v11[3] = v21;
  v12 = v22;
  v21 = 0;
  v22 = 0;
  v11[4] = v12;
  v13 = v23;
  v23 = 0;
  v24 = v11;
  v11[5] = v13;
  (*(*v6 + 48))(v6, &v24);
  v15 = v24;
  v24 = 0;
  if (v15)
  {
    (*(*v15 + 8))(v15);
  }

  v16 = v23;
  v23 = 0;
  if (v16)
  {
    (*(*v16 + 8))(v16);
  }

  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v21, v14);
  result = v19;
  if (v19)
  {
    if (atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(v19, v17);
    }
  }

  return result;
}

atomic_uint *WebKit::WebExtensionStorageSQLiteStore::getKeysAndValuesFromRowIterator(uint64_t *a1, WebKit::WebExtensionSQLiteRowEnumerator **a2)
{
  *a1 = 0;
  result = WebKit::WebExtensionSQLiteRowEnumerator::next(*a2, a2, &v28);
  v5 = v28;
  if (!v28)
  {
    return result;
  }

  do
  {
    while (2)
    {
      WebKit::WebExtensionSQLiteRow::getString(v5, 0, &v27);
      WebKit::WebExtensionSQLiteRow::getString(v5, 1, &v26);
      v29 = &v26;
      if (v27 == -1 || !v27)
      {
        __break(0xC471u);
        JUMPOUT(0x19E100E38);
      }

      v7 = *a1;
      if (*a1 || (WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::expand(a1, 0), (v7 = *a1) != 0))
      {
        v8 = *(v7 - 8);
      }

      else
      {
        v8 = 0;
      }

      v9 = *(v27 + 4);
      if (v9 < 0x100)
      {
        v10 = WTF::StringImpl::hashSlowCase(v27);
      }

      else
      {
        v10 = v9 >> 8;
      }

      v11 = 0;
      for (i = 1; ; ++i)
      {
        v13 = v10 & v8;
        v14 = (v7 + 16 * (v10 & v8));
        v15 = *v14;
        if (*v14 == -1)
        {
          v11 = (v7 + 16 * v13);
          goto LABEL_15;
        }

        if (!v15)
        {
          if (v11)
          {
            *v11 = 0;
            v11[1] = 0;
            --*(*a1 - 16);
            v14 = v11;
          }

          WTF::HashMapTranslator<WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::String>>::translate<WTF::String const&,WTF::KeyValuePair<WTF::String,WTF::String>,WTF::HashTableAddResult<WTF::HashTableIterator<WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>,WTF::String,WTF::KeyValuePair<WTF::String,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>>> WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineAdd<WTF::String const&,WTF::String&>(WTF::String const&,WTF::String&)::{lambda(void)#1}>(v14, &v27, &v29);
          v17 = *a1;
          if (*a1)
          {
            v18 = *(v17 - 12) + 1;
          }

          else
          {
            v18 = 1;
          }

          *(v17 - 12) = v18;
          v21 = (*(v17 - 16) + v18);
          v22 = *(v17 - 4);
          if (v22 > 0x400)
          {
            if (v22 > 2 * v21)
            {
              goto LABEL_29;
            }
          }

          else if (3 * v22 > 4 * v21)
          {
            goto LABEL_29;
          }

          WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::expand(a1, v14);
          goto LABEL_29;
        }

        if (WTF::equal(v15, v27, v6))
        {
          break;
        }

LABEL_15:
        v10 = i + v13;
      }

      v19 = v26;
      if (v26)
      {
        atomic_fetch_add_explicit(v26, 2u, memory_order_relaxed);
      }

      v20 = v14[1];
      v14[1] = v19;
      if (v20 && atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v20, v16);
      }

LABEL_29:
      WebKit::WebExtensionSQLiteRowEnumerator::next(*a2, v16, &v29);
      v24 = v28;
      v5 = v29;
      v28 = v29;
      if (v24)
      {
        WTF::RefCounted<WebKit::WebExtensionSQLiteRow>::deref(v24, v23);
      }

      v25 = v26;
      v26 = 0;
      if (v25 && atomic_fetch_add_explicit(v25, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v25, v23);
      }

      result = v27;
      v27 = 0;
      if (!result || atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) != 2)
      {
        if (!v5)
        {
          return result;
        }

        continue;
      }

      break;
    }

    result = WTF::StringImpl::destroy(result, v23);
  }

  while (v5);
  return result;
}

uint64_t WebKit::WebExtensionStorageSQLiteStore::getAllKeysWithErrorMessage(WebKit::WebExtensionStorageSQLiteStore *this, WebKit::WebExtensionSQLiteDatabase **a2, WTF::String *a3)
{
  result = WebKit::WebExtensionSQLiteStore::openDatabaseIfNecessary(a2, a3, 0);
  *this = 0;
  *(this + 1) = 0;
  if (result)
  {
    v6 = a2[8];
    *v6 += 2;
    v23 = v6;
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    WebKit::SQLiteDatabaseFetch<>(&v23, &v22, &v24);
    v8 = v24;
    v24 = 0;
    v9 = v22;
    v22 = 0;
    if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v9, v7);
    }

    v10 = v23;
    v23 = 0;
    if (v10)
    {
      WTF::RefCounted<WebKit::WebExtensionSQLiteDatabase>::deref(v10, v7);
    }

    result = WTF::RefCounted<WebKit::WebExtensionSQLiteDatabase>::deref(v6, v7);
    if (v8)
    {
      WebKit::WebExtensionSQLiteRowEnumerator::next(v8, v11, &v24);
      v13 = v24;
      if (v24)
      {
        do
        {
          WebKit::WebExtensionSQLiteRow::getString(v13, 0, &v22);
          v15 = *(this + 3);
          if (v15 == *(this + 2))
          {
            v21 = WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(this, v15 + 1, &v22);
            v15 = *(this + 3);
            v16 = *this;
            v17 = *v21;
            *v21 = 0;
          }

          else
          {
            v16 = *this;
            v17 = v22;
            v22 = 0;
          }

          *(v16 + 8 * v15) = v17;
          *(this + 3) = v15 + 1;
          v18 = v22;
          v22 = 0;
          if (v18)
          {
            if (atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v18, v14);
            }
          }

          WebKit::WebExtensionSQLiteRowEnumerator::next(v8, v14, &v22);
          v19 = v22;
          WTF::RefCounted<WebKit::WebExtensionSQLiteRow>::deref(v13, v20);
          v13 = v19;
        }

        while (v19);
      }

      return WTF::RefCounted<WebKit::WebExtensionSQLiteRowEnumerator>::deref(v8, v12);
    }
  }

  return result;
}

uint64_t WebKit::WebExtensionStorageSQLiteStore::getValuesForKeysWithErrorMessage(uint64_t *a1, WebKit::WebExtensionSQLiteDatabase **this, uint64_t a3, WTF::String *a4)
{
  result = WebKit::WebExtensionSQLiteStore::openDatabaseIfNecessary(this, a4, 0);
  if ((result & 1) == 0)
  {
    goto LABEL_12;
  }

  v8 = this[8];
  *v8 += 2;
  v22 = v8;
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(&v18, a3);
  WebKit::rowFilterStringFromRowKeys(&v20, v18, v19);
  WTF::makeString<WTF::ASCIILiteral,WTF::String,WTF::ASCIILiteral>("SELECT * FROM extension_storage WHERE key in (", 47, &v20, ")", 2, &v21);
  WebKit::SQLiteDatabaseFetch<>(&v22, &v21, &v23);
  v10 = v23;
  v23 = 0;
  v11 = v21;
  v21 = 0;
  if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v11, v9);
  }

  v12 = v20;
  v20 = 0;
  if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v12, v9);
  }

  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v18, v9);
  v14 = v22;
  v22 = 0;
  if (v14)
  {
    WTF::RefCounted<WebKit::WebExtensionSQLiteDatabase>::deref(v14, v13);
  }

  result = WTF::RefCounted<WebKit::WebExtensionSQLiteDatabase>::deref(v8, v13);
  if (v10)
  {
    ++*v10;
    v17 = v10;
    WebKit::WebExtensionStorageSQLiteStore::getKeysAndValuesFromRowIterator(a1, &v17);
    WTF::RefCounted<WebKit::WebExtensionSQLiteRowEnumerator>::deref(v10, v15);
    return WTF::RefCounted<WebKit::WebExtensionSQLiteRowEnumerator>::deref(v10, v16);
  }

  else
  {
LABEL_12:
    *a1 = 0;
  }

  return result;
}

uint64_t WebKit::rowFilterStringFromRowKeys(uint64_t a1, atomic_uint **a2, unsigned int a3)
{
  v20 = 0;
  v21 = 0;
  if (a3)
  {
    for (i = 8 * a3; i; i -= 8)
    {
      v5 = *a2;
      if (*a2)
      {
        atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed);
        WTF::StringImpl::replace();
        v6 = v22;
        if (v22)
        {
          v7 = 0;
          atomic_fetch_add_explicit(v22, 2u, memory_order_relaxed);
          goto LABEL_8;
        }
      }

      else
      {
        v6 = 0;
      }

      v7 = 1;
LABEL_8:
      v19 = v6;
      WTF::makeString<WTF::ASCIILiteral,WTF::String,WTF::ASCIILiteral>("'", 2, &v19, "'", 2, &v22);
      LODWORD(v9) = HIDWORD(v21);
      if (HIDWORD(v21) == v21)
      {
        v13 = WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v20, HIDWORD(v21) + 1, &v22);
        v9 = HIDWORD(v21);
        v14 = v20;
        v15 = *v13;
        *v13 = 0;
        *(v14 + 8 * v9) = v15;
      }

      else
      {
        v10 = v22;
        v22 = 0;
        *(v20 + 8 * HIDWORD(v21)) = v10;
      }

      HIDWORD(v21) = v9 + 1;
      v11 = v22;
      v22 = 0;
      if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v11, v8);
      }

      v12 = v19;
      v19 = 0;
      if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v12, v8);
        if ((v7 & 1) == 0)
        {
LABEL_16:
          if (atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v6, v8);
          }
        }
      }

      else if ((v7 & 1) == 0)
      {
        goto LABEL_16;
      }

      if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v5, v8);
      }

      ++a2;
    }
  }

  WTF::StringImpl::createWithoutCopyingNonEmpty();
  WTF::makeStringByJoining();
  v17 = v22;
  v22 = 0;
  if (v17 && atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v17, v16);
  }

  return WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v20, v16);
}

uint64_t WebKit::WebExtensionStorageSQLiteStore::createFreshDatabaseSchema(WebKit::WebExtensionStorageSQLiteStore *this)
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = *(this + 8);
  *v2 += 2;
  v16 = v2;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v4 = WebKit::SQLiteDatabaseExecute<>(&v16, buf);
  v5 = *buf;
  *buf = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, v3);
  }

  v6 = v16;
  v16 = 0;
  if (v6)
  {
    WTF::RefCounted<WebKit::WebExtensionSQLiteDatabase>::deref(v6, v3);
  }

  WTF::RefCounted<WebKit::WebExtensionSQLiteDatabase>::deref(v2, v3);
  if (v4 != 101)
  {
    v7 = qword_1ED640AB8;
    if (os_log_type_enabled(qword_1ED640AB8, OS_LOG_TYPE_ERROR))
    {
      v9 = *(this + 2);
      if (v9)
      {
        atomic_fetch_add_explicit(v9, 2u, memory_order_relaxed);
      }

      v14 = v9;
      WTF::String::utf8();
      if (v15)
      {
        v10 = v15 + 16;
      }

      else
      {
        v10 = 0;
      }

      v11 = *(*(this + 8) + 56);
      if (v11)
      {
        ++*v11;
      }

      v12 = v11 + 16;
      *buf = 136315650;
      if (!v11)
      {
        v12 = 0;
      }

      *&buf[4] = v10;
      v18 = 2080;
      v19 = v12;
      v20 = 1024;
      v21 = v4;
      _os_log_error_impl(&dword_19D52D000, v7, OS_LOG_TYPE_ERROR, "Failed to create the extension_storage table for extension %s: %s (%d)", buf, 0x1Cu);
      if (v11)
      {
        if (*v11 == 1)
        {
          WTF::fastFree(v11, v13);
        }

        else
        {
          --*v11;
        }
      }

      if (v15)
      {
        if (*v15 == 1)
        {
          WTF::fastFree(v15, v13);
        }

        else
        {
          --*v15;
        }
      }

      if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v14, v13);
      }
    }
  }

  return v4;
}

uint64_t WebKit::WebExtensionStorageSQLiteStore::resetDatabaseSchema(WebKit::WebExtensionStorageSQLiteStore *this)
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = *(this + 8);
  *v2 += 2;
  v16 = v2;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v4 = WebKit::SQLiteDatabaseExecute<>(&v16, buf);
  v5 = *buf;
  *buf = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, v3);
  }

  v6 = v16;
  v16 = 0;
  if (v6)
  {
    WTF::RefCounted<WebKit::WebExtensionSQLiteDatabase>::deref(v6, v3);
  }

  WTF::RefCounted<WebKit::WebExtensionSQLiteDatabase>::deref(v2, v3);
  if (v4 != 101)
  {
    v7 = qword_1ED640AB8;
    if (os_log_type_enabled(qword_1ED640AB8, OS_LOG_TYPE_ERROR))
    {
      v9 = *(this + 2);
      if (v9)
      {
        atomic_fetch_add_explicit(v9, 2u, memory_order_relaxed);
      }

      v14 = v9;
      WTF::String::utf8();
      if (v15)
      {
        v10 = v15 + 16;
      }

      else
      {
        v10 = 0;
      }

      v11 = *(*(this + 8) + 56);
      if (v11)
      {
        ++*v11;
      }

      v12 = v11 + 16;
      *buf = 136315650;
      if (!v11)
      {
        v12 = 0;
      }

      *&buf[4] = v10;
      v18 = 2080;
      v19 = v12;
      v20 = 1024;
      v21 = v4;
      _os_log_error_impl(&dword_19D52D000, v7, OS_LOG_TYPE_ERROR, "Failed to reset database schema for extension %s: %s (%d)", buf, 0x1Cu);
      if (v11)
      {
        if (*v11 == 1)
        {
          WTF::fastFree(v11, v13);
        }

        else
        {
          --*v11;
        }
      }

      if (v15)
      {
        if (*v15 == 1)
        {
          WTF::fastFree(v15, v13);
        }

        else
        {
          --*v15;
        }
      }

      if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v14, v13);
      }
    }
  }

  return v4;
}

BOOL WebKit::WebExtensionStorageSQLiteStore::isDatabaseEmpty(WebKit::WebExtensionStorageSQLiteStore *this)
{
  v1 = *(this + 8);
  *v1 += 2;
  v14 = v1;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  WebKit::SQLiteDatabaseFetch<>(&v14, &v13, &v15);
  v3 = v15;
  v15 = 0;
  v4 = v13;
  v13 = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, v2);
  }

  v5 = v14;
  v14 = 0;
  if (v5)
  {
    WTF::RefCounted<WebKit::WebExtensionSQLiteDatabase>::deref(v5, v2);
  }

  WTF::RefCounted<WebKit::WebExtensionSQLiteDatabase>::deref(v1, v2);
  WebKit::WebExtensionSQLiteRowEnumerator::next(v3, v6, &v15);
  v8 = v15;
  if (!v15)
  {
    v10 = 1;
    if (!v3)
    {
      return v10;
    }

    goto LABEL_8;
  }

  v9 = *(*(v15 + 1) + 16);
  ++*v9;
  WTF::RefCounted<WebKit::WebExtensionSQLiteDatabase>::deref(v9, v7);
  v10 = sqlite3_column_int64(v8[2], 0) == 0;
  WTF::RefCounted<WebKit::WebExtensionSQLiteRow>::deref(v8, v11);
  if (v3)
  {
LABEL_8:
    WTF::RefCounted<WebKit::WebExtensionSQLiteRowEnumerator>::deref(v3, v7);
  }

  return v10;
}

WTF::StringImpl *WebKit::WebExtensionStorageSQLiteStore::databaseURL@<X0>(WebKit::WebExtensionStorageSQLiteStore *this@<X0>, WTF::URL *a2@<X8>)
{
  if (*(this + 80) == 1)
  {

    return WebKit::WebExtensionSQLiteDatabase::inMemoryDatabaseURL(a2);
  }

  v14 = 0;
  v5 = *(this + 81);
  if (v5 == 1)
  {
LABEL_12:
    WTF::StringImpl::createWithoutCopyingNonEmpty();
LABEL_13:
    v6 = *(this + 3);
    if (v6)
    {
      atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed);
      atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed);
    }

    v11 = v6;
    v13[0] = "/";
    v13[1] = 2;
    result = WTF::tryMakeString<WTF::String,WTF::ASCIILiteral>(&v11, v13, &v12);
    if (!v12)
    {
      __break(0xC471u);
      return result;
    }

    MEMORY[0x19EB01DD0](v13, &v12, 0);
    MEMORY[0x19EB01E00](a2, v13, &v14, 0);
    v8 = v13[0];
    v13[0] = 0;
    if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v8, v7);
    }

    v9 = v12;
    v12 = 0;
    if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v9, v7);
    }

    v10 = v11;
    v11 = 0;
    if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v10, v7);
      if (v6)
      {
LABEL_25:
        if (atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v6, v7);
        }
      }
    }

    else if (v6)
    {
      goto LABEL_25;
    }

    result = v14;
    v14 = 0;
    if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v7);
    }

    return result;
  }

  if (v5 != 2)
  {
    if (v5 != 4)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  *a2 = 0;

  return WTF::URL::invalidate(a2);
}

BOOL WebKit::WebExtensionContext::isStorageMessageAllowed(WebKit::WebExtensionContext *this, IPC::Decoder *a2)
{
  v2 = *(this + 10);
  if (!v2 || !*(v2 + 8))
  {
    return 0;
  }

  WTF::StringImpl::createWithoutCopyingNonEmpty();
  if ((WebKit::WebExtensionContext::permissionState(this, &v10, 0, 2) & 0xFFFFFFFE) == 2)
  {
    v5 = 1;
  }

  else
  {
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    v5 = (WebKit::WebExtensionContext::permissionState(this, &v9, 0, 2) & 0xFFFFFFFE) == 2;
    v6 = v9;
    v9 = 0;
    if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v6, v4);
    }
  }

  v7 = v10;
  v10 = 0;
  if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v7, v4);
  }

  return v5;
}

WTF::StringImpl *WebKit::WebExtensionContext::storageGet(char *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t *a5)
{
  if (a3 == 4 || a3 == 2 || a3 == 1)
  {
    WTF::StringImpl::createWithoutCopyingNonEmpty();
  }

  else
  {
    v21 = 0;
  }

  WTF::makeString<WTF::ASCIILiteral,WTF::String,WTF::ASCIILiteral>("browser.storage.", 17, &v21, ".get()", 7, &v22);
  v10 = v21;
  v21 = 0;
  if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, v9);
  }

  WebKit::WebExtensionContext::storageForType(a1, a3, &v20);
  v11 = v20;
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v19, a4);
  v12 = v22;
  if (v22)
  {
    atomic_fetch_add_explicit(v22, 2u, memory_order_relaxed);
  }

  v13 = *a5;
  *a5 = 0;
  v14 = WTF::fastMalloc(0x18);
  *v14 = &unk_1F111E868;
  v14[1] = v12;
  v14[2] = v13;
  v18 = v14;
  WebKit::WebExtensionStorageSQLiteStore::getValuesForKeys(v11, v19, &v18);
  if (v18)
  {
    (*(*v18 + 8))(v18);
  }

  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v19, v15);
  if (v11)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::WebExtensionSQLiteStore,(WTF::DestructionThread)0>::deref(v11 + 1, v16);
  }

  result = v22;
  v22 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v16);
    }
  }

  return result;
}

WTF::StringImpl *WebKit::WebExtensionContext::storageGetKeys(char *a1, uint64_t a2, void *a3, uint64_t *a4)
{
  if (a3 == 4 || a3 == 2 || a3 == 1)
  {
    WTF::StringImpl::createWithoutCopyingNonEmpty();
  }

  else
  {
    v28 = 0;
  }

  WTF::makeString<WTF::ASCIILiteral,WTF::String,WTF::ASCIILiteral>("browser.storage.", 17, &v28, ".getKeys()", 11, &v29);
  v8 = v28;
  v28 = 0;
  if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v8, v7);
  }

  WebKit::WebExtensionContext::storageForType(a1, a3, &v27);
  v9 = v27;
  v10 = v29;
  if (v29)
  {
    atomic_fetch_add_explicit(v29, 2u, memory_order_relaxed);
  }

  v11 = *a4;
  *a4 = 0;
  v12 = WTF::fastMalloc(0x18);
  *v12 = &unk_1F111E890;
  *(v12 + 1) = v10;
  *(v12 + 2) = v11;
  v13 = v9[9];
  v31 = v9;
  v14 = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::NetworkDataTask,(WTF::DestructionThread)1>::controlBlock(v9 + 1);
  v32 = WTF::ThreadSafeWeakPtrControlBlock::weakRef(v14);
  v15 = v9[2];
  if (v15)
  {
    atomic_fetch_add_explicit(v15, 2u, memory_order_relaxed);
  }

  v30 = v15;
  WTF::String::isolatedCopy();
  v33[1] = v12;
  v16 = WTF::fastMalloc(0x28);
  v17 = v31;
  *v16 = &unk_1F111E5C0;
  *(v16 + 8) = v17;
  *(v16 + 16) = v32;
  v18 = *v33;
  v31 = 0;
  v32 = 0;
  v33[0] = 0;
  v33[1] = 0;
  *(v16 + 24) = v18;
  v34 = v16;
  (*(*v13 + 48))(v13, &v34);
  v20 = v34;
  v34 = 0;
  if (v20)
  {
    (*(*v20 + 8))(v20);
  }

  v21 = v33[1];
  v33[1] = 0;
  if (v21)
  {
    (*(*v21 + 8))(v21);
  }

  v22 = v33[0];
  v33[0] = 0;
  if (v22 && atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v22, v19);
  }

  v23 = v32;
  v32 = 0;
  if (v23)
  {
    WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v23, v19);
  }

  v24 = v30;
  v30 = 0;
  if (v24 && atomic_fetch_add_explicit(v24, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v24, v19);
  }

  WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::WebExtensionSQLiteStore,(WTF::DestructionThread)0>::deref(v9 + 1, v19);
  result = v29;
  v29 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v25);
    }
  }

  return result;
}

WTF::StringImpl *WebKit::WebExtensionContext::storageGetBytesInUse(char *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t *a5)
{
  if (a3 == 4 || a3 == 2 || a3 == 1)
  {
    WTF::StringImpl::createWithoutCopyingNonEmpty();
  }

  else
  {
    v21 = 0;
  }

  WTF::makeString<WTF::ASCIILiteral,WTF::String,WTF::ASCIILiteral>("browser.storage.", 17, &v21, ".getBytesInUse()", 17, &v22);
  v10 = v21;
  v21 = 0;
  if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, v9);
  }

  WebKit::WebExtensionContext::storageForType(a1, a3, &v20);
  v11 = v20;
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v19, a4);
  v12 = v22;
  if (v22)
  {
    atomic_fetch_add_explicit(v22, 2u, memory_order_relaxed);
  }

  v13 = *a5;
  *a5 = 0;
  v14 = WTF::fastMalloc(0x18);
  *v14 = &unk_1F111E8B8;
  v14[1] = v12;
  v14[2] = v13;
  v18 = v14;
  WebKit::WebExtensionStorageSQLiteStore::getStorageSizeForKeys(v11, v19, &v18);
  if (v18)
  {
    (*(*v18 + 8))(v18);
  }

  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v19, v15);
  if (v11)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::WebExtensionSQLiteStore,(WTF::DestructionThread)0>::deref(v11 + 1, v16);
  }

  result = v22;
  v22 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v16);
    }
  }

  return result;
}

WTF::StringImpl *WebKit::WebExtensionContext::storageSet(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, void *a5)
{
  v6 = a3;
  if (a3 == 4 || a3 == 2 || a3 == 1)
  {
    WTF::StringImpl::createWithoutCopyingNonEmpty();
  }

  else
  {
    v62 = 0;
  }

  WTF::makeString<WTF::ASCIILiteral,WTF::String,WTF::ASCIILiteral>("browser.storage.", 17, &v62, ".set()", 7, &v63);
  v9 = v62;
  v62 = 0;
  if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v9, v8);
  }

  v61 = 0;
  WTF::JSONImpl::Value::parseJSON();
  v10 = v68[0];
  v11 = *(v68[0] + 4);
  if (v11 < 5)
  {
    goto LABEL_10;
  }

  if (v11 != 5)
  {
    if (v11 == 6)
    {
LABEL_10:
      v68[0] = 0;
      goto LABEL_11;
    }

    goto LABEL_108;
  }

  v28 = *v68[0];
  v29 = *v68[0] + 1;
  *v68[0] = v29;
  v58 = v6;
  v56 = a5;
  v57 = a1;
  if (!v28)
  {
    WTF::JSONImpl::Value::operator delete();
    v10 = 0;
    v55 = *(v68[0] + 4);
    if (v55 < 5 || v55 == 6)
    {
      goto LABEL_40;
    }

    if (v55 == 5)
    {
      v29 = *v68[0] + 1;
      v10 = v68[0];
      goto LABEL_39;
    }

LABEL_108:
    __break(0xC471u);
    JUMPOUT(0x19E1026B0);
  }

  *v10 = v28;
LABEL_39:
  *v10 = v29;
LABEL_40:
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(&v64, (v10 + 6));
  if (!HIDWORD(v65))
  {
    goto LABEL_94;
  }

  v31 = v64;
  v32 = (v64 + 8 * HIDWORD(v65));
  do
  {
    v33 = v68[0];
    v34 = *(v68[0] + 4);
    if (v34 < 5 || v34 == 6)
    {
      v33 = 0;
    }

    else
    {
      if (v34 != 5)
      {
        __break(0xC471u);
        JUMPOUT(0x19E1027BCLL);
      }

      ++*v68[0];
    }

    WTF::JSONImpl::ObjectBase::getString(&v67, v33, v31);
    if (*v31 == -1)
    {
      __break(0xC471u);
      JUMPOUT(0x19E10277CLL);
    }

    if (!*v31)
    {
      __break(0xC471u);
      JUMPOUT(0x19E10279CLL);
    }

    v37 = v61;
    if (v61 || (WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::expand(&v61, 0), (v37 = v61) != 0))
    {
      v38 = *(v37 - 2);
    }

    else
    {
      v38 = 0;
    }

    v39 = *(*v31 + 16);
    if (v39 < 0x100)
    {
      v40 = WTF::StringImpl::hashSlowCase(*v31);
    }

    else
    {
      v40 = v39 >> 8;
    }

    v41 = 0;
    for (i = 1; ; ++i)
    {
      v43 = v40 & v38;
      v44 = &v37[2 * (v40 & v38)];
      v45 = *v44;
      if (*v44 == -1)
      {
        v41 = &v37[2 * v43];
        goto LABEL_61;
      }

      if (!v45)
      {
        if (v41)
        {
          *v41 = 0;
          v41[1] = 0;
          --*(v61 - 4);
          v44 = v41;
        }

        WTF::GenericHashTraits<WebCore::RegistrableDomain>::assignToEmpty<WebCore::RegistrableDomain,WebCore::RegistrableDomain const&>(v44, v31);
        v46 = v67;
        v67 = 0;
        v47 = v44[1];
        v44[1] = v46;
        if (v47 && atomic_fetch_add_explicit(v47, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v47, v30);
        }

        v48 = v61;
        if (v61)
        {
          v49 = *(v61 - 3) + 1;
        }

        else
        {
          v49 = 1;
        }

        *(v61 - 3) = v49;
        v52 = (*(v48 - 4) + v49);
        v53 = *(v48 - 1);
        if (v53 > 0x400)
        {
          if (v53 > 2 * v52)
          {
            goto LABEL_78;
          }
        }

        else if (3 * v53 > 4 * v52)
        {
          goto LABEL_78;
        }

        WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::expand(&v61, v44);
        goto LABEL_78;
      }

      if (WTF::equal(v45, *v31, v36))
      {
        break;
      }

LABEL_61:
      v40 = i + v43;
    }

    v50 = v67;
    v67 = 0;
    v51 = v44[1];
    v44[1] = v50;
    if (v51 && atomic_fetch_add_explicit(v51, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v51, v30);
    }

LABEL_78:
    v54 = v67;
    v67 = 0;
    if (v54 && atomic_fetch_add_explicit(v54, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v54, v30);
      if (v33)
      {
        goto LABEL_81;
      }
    }

    else if (v33)
    {
LABEL_81:
      if (*v33 == 1)
      {
        WTF::JSONImpl::Value::operator delete();
      }

      else
      {
        --*v33;
      }
    }

    v31 = (v31 + 8);
  }

  while (v31 != v32);
LABEL_94:
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v64, v30);
  v6 = v58;
  a5 = v56;
  a1 = v57;
  if (v10)
  {
    if (*v10 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*v10;
    }
  }

  v10 = v68[0];
  v68[0] = 0;
  if (v10)
  {
LABEL_11:
    if (*v10 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*v10;
    }
  }

  WebKit::WebExtensionContext::storageForType(a1, v6, &v60);
  v12 = v60;
  WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::HashTable(&v59, &v61);
  CFRetain(*(a1 + 8));
  v13 = v63;
  if (v63)
  {
    atomic_fetch_add_explicit(v63, 2u, memory_order_relaxed);
  }

  v14 = v61;
  v61 = 0;
  v15 = *a5;
  *a5 = 0;
  v16 = WTF::fastMalloc(0x38);
  *v16 = &unk_1F111E8E0;
  *(v16 + 8) = a1;
  *(v16 + 16) = a1;
  *(v16 + 24) = v13;
  *(v16 + 32) = v6;
  *(v16 + 40) = v14;
  *(v16 + 48) = v15;
  v68[0] = 0;
  v68[1] = 0;
  v17 = (v12 + 1);
  v64 = v12;
  while (1)
  {
    v18 = *v17;
    if ((*v17 & 1) == 0)
    {
      break;
    }

    v19 = *v17;
    atomic_compare_exchange_strong_explicit(v17, &v19, v18 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v19 == v18)
    {
      goto LABEL_20;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v17);
LABEL_20:
  v65 = v12;
  WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::HashTable(&v66, &v59);
  *(&v66 + 1) = v16;
  v20 = WTF::fastMalloc(0x28);
  *v20 = &unk_1F111E700;
  *(v20 + 8) = v64;
  *(v20 + 16) = v65;
  v21 = v66;
  v65 = 0;
  v66 = 0uLL;
  v67 = v20;
  *(v20 + 24) = v21;
  WebKit::WebExtensionStorageSQLiteStore::getStorageSizeForKeys(v12, v68, &v67);
  if (v67)
  {
    (*(*v67 + 8))(v67);
  }

  v23 = *(&v66 + 1);
  *(&v66 + 1) = 0;
  if (v23)
  {
    (*(*v23 + 8))(v23);
  }

  if (v66)
  {
    WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v66, v22);
  }

  v24 = v65;
  v65 = 0;
  if (v24)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::WebExtensionSQLiteStore,(WTF::DestructionThread)0>::deref(v24 + 1, v22);
  }

  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v68, v22);
  if (v59)
  {
    WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v59, v25);
  }

  WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::WebExtensionSQLiteStore,(WTF::DestructionThread)0>::deref(v12 + 1, v25);
  if (v61)
  {
    WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v61, v26);
  }

  result = v63;
  v63 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v26);
    }
  }

  return result;
}

WTF::StringImpl *WebKit::WebExtensionContext::storageRemove(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t *a5)
{
  if (a3 == 4 || a3 == 2 || a3 == 1)
  {
    WTF::StringImpl::createWithoutCopyingNonEmpty();
  }

  else
  {
    v28 = 0;
  }

  WTF::makeString<WTF::ASCIILiteral,WTF::String,WTF::ASCIILiteral>("browser.storage.", 17, &v28, ".remove()", 10, &v29);
  v10 = v28;
  v28 = 0;
  if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, v9);
  }

  WebKit::WebExtensionContext::storageForType(a1, a3, &v27);
  v11 = v27;
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v26, a4);
  CFRetain(*(a1 + 8));
  v12 = v29;
  if (v29)
  {
    atomic_fetch_add_explicit(v29, 2u, memory_order_relaxed);
  }

  v21 = v12;
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v22, a4);
  v23 = a3;
  v13 = *a5;
  *a5 = 0;
  v24 = v13;
  v14 = WTF::fastMalloc(0x40);
  *v14 = &unk_1F111E930;
  *(v14 + 8) = a1;
  *(v14 + 16) = a1;
  *(v14 + 24) = v21;
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v14 + 32, v22);
  *(v14 + 48) = v23;
  v15 = v24;
  v24 = 0;
  v25 = v14;
  *(v14 + 56) = v15;
  WebKit::WebExtensionStorageSQLiteStore::getValuesForKeys(v11, v26, &v25);
  if (v25)
  {
    (*(*v25 + 8))(v25);
  }

  v17 = v24;
  v24 = 0;
  if (v17)
  {
    (*(*v17 + 8))(v17);
  }

  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v22, v16);
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v26, v18);
  if (v11)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::WebExtensionSQLiteStore,(WTF::DestructionThread)0>::deref(v11 + 1, v19);
  }

  result = v29;
  v29 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v19);
    }
  }

  return result;
}

WTF::StringImpl *WebKit::WebExtensionContext::storageClear(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4)
{
  if (a3 == 4 || a3 == 2 || a3 == 1)
  {
    WTF::StringImpl::createWithoutCopyingNonEmpty();
  }

  else
  {
    v19 = 0;
  }

  WTF::makeString<WTF::ASCIILiteral,WTF::String,WTF::ASCIILiteral>("browser.storage.", 17, &v19, ".clear()", 9, &v20);
  v8 = v19;
  v19 = 0;
  if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v8, v7);
  }

  WebKit::WebExtensionContext::storageForType(a1, a3, &v18);
  v9 = v18;
  v17[0] = 0;
  v17[1] = 0;
  CFRetain(*(a1 + 8));
  v10 = v20;
  if (v20)
  {
    atomic_fetch_add_explicit(v20, 2u, memory_order_relaxed);
  }

  v11 = *a4;
  *a4 = 0;
  v12 = WTF::fastMalloc(0x30);
  *v12 = &unk_1F111E980;
  *(v12 + 8) = a1;
  *(v12 + 16) = a1;
  *(v12 + 24) = v10;
  *(v12 + 32) = a3;
  *(v12 + 40) = v11;
  v16 = v12;
  WebKit::WebExtensionStorageSQLiteStore::getValuesForKeys(v9, v17, &v16);
  if (v16)
  {
    (*(*v16 + 8))(v16);
  }

  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v17, v13);
  if (v9)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::WebExtensionSQLiteStore,(WTF::DestructionThread)0>::deref(v9 + 1, v14);
  }

  result = v20;
  v20 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v14);
    }
  }

  return result;
}

WTF::StringImpl *WebKit::WebExtensionContext::storageSetAccessLevel(WebKit::WebExtensionContext *a1, uint64_t a2, uint64_t a3, int a4, uint64_t *a5)
{
  WebKit::WebExtensionContext::setSessionStorageAllowedInContentScripts(a1, a4 == 1);
  LOBYTE(v9) = 0;
  v10 = 0;
  v6 = *a5;
  *a5 = 0;
  (*(*v6 + 16))(v6, &v9);
  result = (*(*v6 + 8))(v6);
  if (v10 == 1)
  {
    result = v9;
    v9 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(result, v8);
      }
    }
  }

  return result;
}

WTF::JSONImpl::Object *WebKit::WebExtensionContext::fireStorageChangedEventIfNeeded(WTF::JSONImpl::Object *result, uint64_t *a2, uint64_t *a3, char a4)
{
  v9 = result;
  v93 = a4;
  if (*a2 && *(*a2 - 12) || *a3 && *(*a3 - 12))
  {
    WTF::JSONImpl::Object::create(v94, result);
    v10 = v94[0];
    v11 = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::begin(a3);
    v13 = v11;
    v15 = v14;
    v85 = v9;
    if (*a3)
    {
      v16 = *a3 + 16 * *(*a3 - 4);
    }

    else
    {
      v16 = 0;
    }

    if (v16 != v11)
    {
      v4 = 2;
      do
      {
        v17 = *v13;
        if (*v13)
        {
          atomic_fetch_add_explicit(v17, 2u, memory_order_relaxed);
        }

        v91 = v17;
        v18 = v13[1];
        if (v18)
        {
          atomic_fetch_add_explicit(v18, 2u, memory_order_relaxed);
        }

        v92 = v18;
        WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::String>>,WTF::String>(a2, &v91, v12, &v90);
        if (!v90 || !*(v90 + 1) || (WTF::equal(v90, v92, v19) & 1) == 0)
        {
          v21 = v92;
          if (v92)
          {
            v21 = *(v92 + 1);
            v22 = ((*(v92 + 4) >> 2) & 1) << 32;
          }

          else
          {
            v22 = 0x100000000;
          }

          v5 = v21 | v5 & 0xFFFFFF0000000000 | v22;
          WTF::JSONImpl::Value::parseJSON();
          v23 = v90;
          if (v90)
          {
            v23 = *(v90 + 1);
            v24 = ((*(v90 + 4) >> 2) & 1) << 32;
          }

          else
          {
            v24 = 0x100000000;
          }

          v6 = v23 | v6 & 0xFFFFFF0000000000 | v24;
          v25 = WTF::JSONImpl::Value::parseJSON();
          WTF::JSONImpl::Object::create(v94, v25);
          v26 = v94[0];
          if (v88)
          {
            WTF::StringImpl::createWithoutCopyingNonEmpty();
            v87 = v94[0];
            v27 = v88;
            ++*v88;
            v86 = v27;
            WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::inlineSet<WTF::String const&,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>(v26 + 2, &v87, &v86, v94);
            if (v95 == 1)
            {
              v29 = *(v26 + 9);
              if (v29 == *(v26 + 8))
              {
                WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::String const&>((v26 + 24), &v87);
              }

              else
              {
                v30 = *(v26 + 3);
                v31 = v87;
                if (v87)
                {
                  atomic_fetch_add_explicit(v87, 2u, memory_order_relaxed);
                }

                v32 = *(v26 + 9);
                *(v30 + 8 * v29) = v31;
                *(v26 + 9) = v32 + 1;
              }
            }

            v33 = v86;
            v86 = 0;
            if (v33)
            {
              if (*v33 == 1)
              {
                WTF::JSONImpl::Value::operator delete();
              }

              else
              {
                --*v33;
              }
            }

            v34 = v87;
            v87 = 0;
            if (v34 && atomic_fetch_add_explicit(v34, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v34, v28);
            }
          }

          WTF::StringImpl::createWithoutCopyingNonEmpty();
          v87 = v94[0];
          v35 = v89;
          ++*v89;
          v86 = v35;
          WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::inlineSet<WTF::String const&,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>(v26 + 2, &v87, &v86, v94);
          if (v95 == 1)
          {
            v37 = *(v26 + 9);
            if (v37 == *(v26 + 8))
            {
              WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::String const&>((v26 + 24), &v87);
            }

            else
            {
              v38 = *(v26 + 3);
              v39 = v87;
              if (v87)
              {
                atomic_fetch_add_explicit(v87, 2u, memory_order_relaxed);
              }

              v40 = *(v26 + 9);
              *(v38 + 8 * v37) = v39;
              *(v26 + 9) = v40 + 1;
            }
          }

          v41 = v86;
          v86 = 0;
          if (v41)
          {
            if (*v41 == 1)
            {
              WTF::JSONImpl::Value::operator delete();
            }

            else
            {
              --*v41;
            }
          }

          v42 = v87;
          v87 = 0;
          if (v42 && atomic_fetch_add_explicit(v42, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v42, v36);
          }

          ++*v26;
          v87 = v26;
          WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::inlineSet<WTF::String const&,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>(v10 + 2, &v91, &v87, v94);
          if (v95 == 1)
          {
            v43 = *(v10 + 9);
            if (v43 == *(v10 + 8))
            {
              WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::String const&>((v10 + 24), &v91);
            }

            else
            {
              v44 = *(v10 + 3);
              v45 = v91;
              if (v91)
              {
                atomic_fetch_add_explicit(v91, 2u, memory_order_relaxed);
              }

              v46 = *(v10 + 9);
              *(v44 + 8 * v43) = v45;
              *(v10 + 9) = v46 + 1;
            }
          }

          v47 = v87;
          v87 = 0;
          if (v47)
          {
            if (*v47 == 1)
            {
              WTF::JSONImpl::Value::operator delete();
            }

            else
            {
              --*v47;
            }
          }

          if (*v26 == 1)
          {
            WTF::JSONImpl::Value::operator delete();
          }

          else
          {
            --*v26;
          }

          v48 = v88;
          v88 = 0;
          if (v48)
          {
            if (*v48 == 1)
            {
              WTF::JSONImpl::Value::operator delete();
            }

            else
            {
              --*v48;
            }
          }

          v49 = v89;
          v89 = 0;
          if (v49)
          {
            if (*v49 == 1)
            {
              WTF::JSONImpl::Value::operator delete();
            }

            else
            {
              --*v49;
            }
          }
        }

        v50 = v90;
        v90 = 0;
        if (v50 && atomic_fetch_add_explicit(v50, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v50, v20);
        }

        v51 = v92;
        v92 = 0;
        if (v51 && atomic_fetch_add_explicit(v51, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v51, v20);
        }

        v52 = v91;
        v91 = 0;
        if (v52 && atomic_fetch_add_explicit(v52, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v52, v20);
        }

        do
        {
          v13 += 2;
        }

        while (v13 != v15 && *v13 + 1 <= 1);
      }

      while (v13 != v16);
    }

    result = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::begin(a2);
    v53 = result;
    v55 = v54;
    if (*a2)
    {
      v56 = *a2 + 16 * *(*a2 - 4);
    }

    else
    {
      v56 = 0;
    }

    if (v56 != result)
    {
      do
      {
        v57 = *v53;
        if (*v53)
        {
          atomic_fetch_add_explicit(v57, 2u, memory_order_relaxed);
        }

        v91 = v57;
        v58 = v53[1];
        if (v58)
        {
          atomic_fetch_add_explicit(v58, 2u, memory_order_relaxed);
        }

        v92 = v58;
        if (!*a3 || (result = WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::lookup<WTF::IdentityHashTranslator<WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::String>>,(WTF::ShouldValidateKey)1,WTF::String>(a3, &v91)) == 0)
        {
          WTF::JSONImpl::Object::create(v94, result);
          v59 = v94[0];
          WTF::StringImpl::createWithoutCopyingNonEmpty();
          v90 = v94[0];
          v60 = v92;
          if (v92)
          {
            v60 = *(v92 + 1);
            v61 = ((*(v92 + 4) >> 2) & 1) << 32;
          }

          else
          {
            v61 = 0x100000000;
          }

          v4 = v60 | v4 & 0xFFFFFF0000000000 | v61;
          WTF::JSONImpl::Value::parseJSON();
          v62 = v88;
          ++*v88;
          v89 = v62;
          WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::inlineSet<WTF::String const&,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>(v59 + 2, &v90, &v89, v94);
          if (v95 == 1)
          {
            v64 = *(v59 + 9);
            if (v64 == *(v59 + 8))
            {
              WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::String const&>((v59 + 24), &v90);
            }

            else
            {
              v65 = *(v59 + 3);
              v66 = v90;
              if (v90)
              {
                atomic_fetch_add_explicit(v90, 2u, memory_order_relaxed);
              }

              v67 = *(v59 + 9);
              *(v65 + 8 * v64) = v66;
              *(v59 + 9) = v67 + 1;
            }
          }

          v68 = v89;
          v89 = 0;
          if (v68)
          {
            if (*v68 == 1)
            {
              WTF::JSONImpl::Value::operator delete();
            }

            else
            {
              --*v68;
            }
          }

          v69 = v88;
          v88 = 0;
          if (v69)
          {
            if (*v69 == 1)
            {
              WTF::JSONImpl::Value::operator delete();
            }

            else
            {
              --*v69;
            }
          }

          v70 = v90;
          v90 = 0;
          if (v70 && atomic_fetch_add_explicit(v70, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v70, v63);
          }

          ++*v59;
          v90 = v59;
          WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::inlineSet<WTF::String const&,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>(v10 + 2, &v91, &v90, v94);
          if (v95 == 1)
          {
            v72 = *(v10 + 9);
            if (v72 == *(v10 + 8))
            {
              WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::String const&>((v10 + 24), &v91);
            }

            else
            {
              v73 = *(v10 + 3);
              v74 = v91;
              if (v91)
              {
                atomic_fetch_add_explicit(v91, 2u, memory_order_relaxed);
              }

              v75 = *(v10 + 9);
              *(v73 + 8 * v72) = v74;
              *(v10 + 9) = v75 + 1;
            }
          }

          v76 = v90;
          v90 = 0;
          if (v76)
          {
            if (*v76 == 1)
            {
              WTF::JSONImpl::Value::operator delete();
            }

            else
            {
              --*v76;
            }
          }

          if (*v59 == 1)
          {
            WTF::JSONImpl::Value::operator delete();
          }

          else
          {
            --*v59;
          }
        }

        v77 = v92;
        v92 = 0;
        if (v77 && atomic_fetch_add_explicit(v77, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v77, v71);
        }

        result = v91;
        v91 = 0;
        if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          result = WTF::StringImpl::destroy(result, v71);
        }

        do
        {
          v53 += 2;
        }

        while (v53 != v55 && *v53 + 1 <= 1);
      }

      while (v53 != v56);
    }

    v78 = *(v10 + 2);
    if (v78 && *(v78 - 12))
    {
      WTF::JSONImpl::Value::toJSONString(&v90, v10);
      LOBYTE(v89) = 1;
      v94[0] = &v90;
      v94[1] = &v93;
      v95 = &v89;
      WebKit::WebExtensionContext::processes(v85, 31, 1, &v91);
      WebKit::WebExtensionContext::sendToProcesses<Messages::WebExtensionContextProxy::DispatchStorageChangedEvent>(v85, &v91, v94);
      if (v91)
      {
        WTF::HashTable<WTF::Ref<WebKit::WebProcessProxy,WTF::RawPtrTraits<WebKit::WebProcessProxy>,WTF::DefaultRefDerefTraits<WebKit::WebProcessProxy>>,WTF::Ref<WebKit::WebProcessProxy,WTF::RawPtrTraits<WebKit::WebProcessProxy>,WTF::DefaultRefDerefTraits<WebKit::WebProcessProxy>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WebKit::WebProcessProxy,WTF::RawPtrTraits<WebKit::WebProcessProxy>,WTF::DefaultRefDerefTraits<WebKit::WebProcessProxy>>>,WTF::HashTraits<WTF::Ref<WebKit::WebProcessProxy,WTF::RawPtrTraits<WebKit::WebProcessProxy>,WTF::DefaultRefDerefTraits<WebKit::WebProcessProxy>>>,WTF::HashTraits<WTF::Ref<WebKit::WebProcessProxy,WTF::RawPtrTraits<WebKit::WebProcessProxy>,WTF::DefaultRefDerefTraits<WebKit::WebProcessProxy>>>,WTF::FastMalloc>::deallocateTable(v91, v79);
      }

      LOBYTE(v89) = 31;
      WTF::HashSet<WebKit::WebExtensionEventListenerType,WTF::DefaultHash<WebKit::WebExtensionEventListenerType>,WTF::HashTraits<WebKit::WebExtensionEventListenerType>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>::HashSet(v94, &v89, 1);
      CFRetain(*(v85 + 8));
      v80 = v90;
      if (v90)
      {
        atomic_fetch_add_explicit(v90, 2u, memory_order_relaxed);
      }

      v81 = v93;
      v82 = WTF::fastMalloc(0x28);
      *v82 = &unk_1F111E9D0;
      *(v82 + 8) = v85;
      *(v82 + 16) = v85;
      *(v82 + 24) = v80;
      *(v82 + 32) = v81;
      v91 = v82;
      WebKit::WebExtensionContext::wakeUpBackgroundContentIfNecessaryToFireEvents(v85, v94, &v91);
      v84 = v91;
      v91 = 0;
      if (v84)
      {
        (*(*v84 + 8))(v84);
      }

      if (v94[0])
      {
        WTF::fastFree((v94[0] - 16), v83);
      }

      result = v90;
      v90 = 0;
      if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        result = WTF::StringImpl::destroy(result, v83);
      }
    }

    if (*v10 == 1)
    {
      return WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*v10;
    }
  }

  return result;
}