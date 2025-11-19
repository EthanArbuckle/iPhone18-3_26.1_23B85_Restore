WebKit::BidiScriptAgent *WebKit::BidiScriptAgent::BidiScriptAgent(WebKit::BidiScriptAgent *this, WebKit::WebAutomationSession *a2, Inspector::BackendDispatcher *a3)
{
  *this = &unk_1F10E7478;
  WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(a2 + 6, a2 + 16);
  v6 = *(a2 + 3);
  atomic_fetch_add(v6, 1u);
  *(this + 1) = v6;
  v7 = WTF::fastMalloc(0x20);
  *(this + 2) = Inspector::BidiScriptBackendDispatcher::BidiScriptBackendDispatcher(v7, a3, this);
  return this;
}

void WebKit::BidiScriptAgent::~BidiScriptAgent(WebKit::BidiScriptAgent *this, void *a2)
{
  WebKit::BidiBrowsingContextAgent::~BidiBrowsingContextAgent(this, a2);

  bmalloc::api::tzoneFree(v2, v3);
}

void WebKit::BidiScriptAgent::callFunction(uint64_t a1, uint64_t a2, uint64_t a3, WTF::JSONImpl::ObjectBase **a4, WTF::StringImpl **a5, uint64_t a6, uint64_t a7, uint64_t a8, _BYTE *a9, uint64_t *a10)
{
  v10 = *(a1 + 8);
  if (!v10 || (v11 = *(v10 + 8)) == 0)
  {
    Inspector::Protocol::AutomationHelpers::getEnumConstantValue(5, &v38);
    *v40 = v38;
    v41 = 1;
    WTF::Function<void ()(std::experimental::fundamentals_v3::expected<std::tuple<Inspector::Protocol::BidiScript::EvaluateResultType,WTF::String,WTF::RefPtr<Inspector::Protocol::BidiScript::RemoteValue,WTF::RawPtrTraits<Inspector::Protocol::BidiScript::RemoteValue>,WTF::DefaultRefDerefTraits<Inspector::Protocol::BidiScript::RemoteValue>>,WTF::RefPtr<Inspector::Protocol::BidiScript::ExceptionDetails,WTF::RawPtrTraits<Inspector::Protocol::BidiScript::ExceptionDetails>,WTF::DefaultRefDerefTraits<Inspector::Protocol::BidiScript::ExceptionDetails>>>,WTF::String>)>::operator()(*a10, v40);
    std::experimental::fundamentals_v3::expected<std::tuple<Inspector::Protocol::BidiScript::EvaluateResultType,WTF::String,WTF::RefPtr<Inspector::Protocol::BidiScript::RemoteValue,WTF::RawPtrTraits<Inspector::Protocol::BidiScript::RemoteValue>,WTF::DefaultRefDerefTraits<Inspector::Protocol::BidiScript::RemoteValue>>,WTF::RefPtr<Inspector::Protocol::BidiScript::ExceptionDetails,WTF::RawPtrTraits<Inspector::Protocol::BidiScript::ExceptionDetails>,WTF::DefaultRefDerefTraits<Inspector::Protocol::BidiScript::ExceptionDetails>>>,WTF::String>::~expected(v40, v22);
    return;
  }

  CFRetain(*(v11 - 8));
  v15 = *a4;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  WTF::JSONImpl::ObjectBase::getString(&v31, v15, &v37);
  v18 = v31;
  v39 = 1;
  v31 = 0;
  v19 = v37;
  v37 = 0;
  v38 = v18;
  if (v19 && atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v19, v16);
  }

  WebKit::WebAutomationSession::webPageProxyForHandle((v11 - 16), &v38, v17, &v31);
  v20 = v31;
  v31 = 0;
  if (v20)
  {
    CFRelease(*(v20 + 8));
    if (*a5)
    {
      v37 = *a5;
      *a5 = 0;
    }

    else
    {
      WTF::JSONImpl::Array::create(&v37, v21);
    }

    if ((v39 & 1) == 0)
    {
      __break(1u);
      return;
    }

    v34 = 256;
    v33[0] = a9[1] & *a9;
    v33[1] = 1;
    LOBYTE(v31) = 0;
    v32 = 0;
    v23 = *a10;
    *a10 = 0;
    v24 = WTF::fastMalloc(0x10);
    *v24 = &unk_1F10E74A8;
    v24[1] = v23;
    v30 = v24;
    WebKit::WebAutomationSession::evaluateJavaScriptFunction(v11 - 16, &v38, MEMORY[0x1E696EBA8], a2, &v37, &v34, v33, &v31, &v30);
    v26 = v30;
    v30 = 0;
    if (v26)
    {
      (*(*v26 + 8))(v26);
    }

    v27 = v37;
    v37 = 0;
    if (v27)
    {
      if (*v27 == 1)
      {
        WTF::JSONImpl::Value::operator delete();
      }

      else
      {
        --*v27;
      }
    }
  }

  else
  {
    Inspector::Protocol::AutomationHelpers::getEnumConstantValue(9, &v31);
    *v35 = v31;
    v36 = 1;
    WTF::Function<void ()(std::experimental::fundamentals_v3::expected<std::tuple<Inspector::Protocol::BidiScript::EvaluateResultType,WTF::String,WTF::RefPtr<Inspector::Protocol::BidiScript::RemoteValue,WTF::RawPtrTraits<Inspector::Protocol::BidiScript::RemoteValue>,WTF::DefaultRefDerefTraits<Inspector::Protocol::BidiScript::RemoteValue>>,WTF::RefPtr<Inspector::Protocol::BidiScript::ExceptionDetails,WTF::RawPtrTraits<Inspector::Protocol::BidiScript::ExceptionDetails>,WTF::DefaultRefDerefTraits<Inspector::Protocol::BidiScript::ExceptionDetails>>>,WTF::String>)>::operator()(*a10, v35);
    std::experimental::fundamentals_v3::expected<std::tuple<Inspector::Protocol::BidiScript::EvaluateResultType,WTF::String,WTF::RefPtr<Inspector::Protocol::BidiScript::RemoteValue,WTF::RawPtrTraits<Inspector::Protocol::BidiScript::RemoteValue>,WTF::DefaultRefDerefTraits<Inspector::Protocol::BidiScript::RemoteValue>>,WTF::RefPtr<Inspector::Protocol::BidiScript::ExceptionDetails,WTF::RawPtrTraits<Inspector::Protocol::BidiScript::ExceptionDetails>,WTF::DefaultRefDerefTraits<Inspector::Protocol::BidiScript::ExceptionDetails>>>,WTF::String>::~expected(v35, v29);
  }

  if (v39 == 1)
  {
    v28 = v38;
    v38 = 0;
    if (v28)
    {
      if (atomic_fetch_add_explicit(v28, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v28, v25);
      }
    }
  }

  CFRelease(*(v11 - 8));
}

uint64_t WTF::Function<void ()(std::experimental::fundamentals_v3::expected<std::tuple<Inspector::Protocol::BidiScript::EvaluateResultType,WTF::String,WTF::RefPtr<Inspector::Protocol::BidiScript::RemoteValue,WTF::RawPtrTraits<Inspector::Protocol::BidiScript::RemoteValue>,WTF::DefaultRefDerefTraits<Inspector::Protocol::BidiScript::RemoteValue>>,WTF::RefPtr<Inspector::Protocol::BidiScript::ExceptionDetails,WTF::RawPtrTraits<Inspector::Protocol::BidiScript::ExceptionDetails>,WTF::DefaultRefDerefTraits<Inspector::Protocol::BidiScript::ExceptionDetails>>>,WTF::String>)>::operator()(uint64_t a1, int *a2)
{
  LOBYTE(v8) = 0;
  v11 = -1;
  v2 = *(a2 + 32);
  if (v2 != 255)
  {
    if (*(a2 + 32))
    {
      v4 = &v8;
    }

    else
    {
      v8 = *a2;
      v3 = *(a2 + 2);
      *(a2 + 1) = 0;
      *(a2 + 2) = 0;
      v9 = v3;
      v4 = &v10;
      a2 += 6;
    }

    v5 = *a2;
    *a2 = 0;
    *v4 = v5;
    v11 = v2;
  }

  (*(*a1 + 16))(a1, &v8);
  return std::experimental::fundamentals_v3::expected<std::tuple<Inspector::Protocol::BidiScript::EvaluateResultType,WTF::String,WTF::RefPtr<Inspector::Protocol::BidiScript::RemoteValue,WTF::RawPtrTraits<Inspector::Protocol::BidiScript::RemoteValue>,WTF::DefaultRefDerefTraits<Inspector::Protocol::BidiScript::RemoteValue>>,WTF::RefPtr<Inspector::Protocol::BidiScript::ExceptionDetails,WTF::RawPtrTraits<Inspector::Protocol::BidiScript::ExceptionDetails>,WTF::DefaultRefDerefTraits<Inspector::Protocol::BidiScript::ExceptionDetails>>>,WTF::String>::~expected(&v8, v6);
}

uint64_t std::experimental::fundamentals_v3::expected<std::tuple<Inspector::Protocol::BidiScript::EvaluateResultType,WTF::String,WTF::RefPtr<Inspector::Protocol::BidiScript::RemoteValue,WTF::RawPtrTraits<Inspector::Protocol::BidiScript::RemoteValue>,WTF::DefaultRefDerefTraits<Inspector::Protocol::BidiScript::RemoteValue>>,WTF::RefPtr<Inspector::Protocol::BidiScript::ExceptionDetails,WTF::RawPtrTraits<Inspector::Protocol::BidiScript::ExceptionDetails>,WTF::DefaultRefDerefTraits<Inspector::Protocol::BidiScript::ExceptionDetails>>>,WTF::String>::~expected(uint64_t a1, WTF::StringImpl *a2)
{
  if (*(a1 + 32) == 255)
  {
    goto LABEL_14;
  }

  if (*(a1 + 32))
  {
    v5 = *a1;
    *a1 = 0;
    if (!v5)
    {
      goto LABEL_14;
    }

    goto LABEL_12;
  }

  v3 = *(a1 + 24);
  *(a1 + 24) = 0;
  if (v3)
  {
    if (*v3 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*v3;
    }
  }

  v4 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v4)
  {
    if (*v4 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*v4;
    }
  }

  v5 = *(a1 + 8);
  *(a1 + 8) = 0;
  if (v5)
  {
LABEL_12:
    if (atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v5, a2);
    }
  }

LABEL_14:
  *(a1 + 32) = -1;
  return a1;
}

void WebKit::BidiScriptAgent::evaluate(uint64_t a1, atomic_uint **a2, uint64_t a3, WTF::JSONImpl::ObjectBase **a4, uint64_t a5, uint64_t a6, _BYTE *a7, uint64_t *a8)
{
  v9 = *(a1 + 8);
  if (v9 && (v10 = *(v9 + 8)) != 0)
  {
    CFRetain(*(v10 - 8));
    v14 = *a4;
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    WTF::JSONImpl::ObjectBase::getString(&v33, v14, &v41);
    v17 = v33;
    v43 = 1;
    v33 = 0;
    v18 = v41;
    v41 = 0;
    v42 = v17;
    if (v18 && atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v18, v15);
    }

    WebKit::WebAutomationSession::webPageProxyForHandle((v10 - 16), &v42, v16, &v33);
    v19 = v33;
    v33 = 0;
    if (v19)
    {
      CFRelease(*(v19 + 8));
      v20 = *a2;
      if (*a2)
      {
        atomic_fetch_add_explicit(v20, 2u, memory_order_relaxed);
      }

      v38 = v20;
      WTF::makeString<WTF::ASCIILiteral,WTF::String,WTF::ASCIILiteral>("function() {\n return ", 22, &v38, "; \n}", 5, &v41);
      v22 = v38;
      v38 = 0;
      if (v22 && atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        v22 = WTF::StringImpl::destroy(v22, v21);
      }

      if ((v43 & 1) == 0)
      {
        __break(1u);
        return;
      }

      WTF::JSONImpl::Array::create(&v37, v22);
      v36 = 256;
      v35[0] = a7[1] & *a7;
      v35[1] = 1;
      LOBYTE(v33) = 0;
      v34 = 0;
      v23 = *a8;
      *a8 = 0;
      v24 = WTF::fastMalloc(0x10);
      *v24 = &unk_1F10E74D0;
      v24[1] = v23;
      v32 = v24;
      WebKit::WebAutomationSession::evaluateJavaScriptFunction(v10 - 16, &v42, MEMORY[0x1E696EBA8], &v41, &v37, &v36, v35, &v33, &v32);
      v26 = v32;
      v32 = 0;
      if (v26)
      {
        (*(*v26 + 8))(v26);
      }

      v27 = v37;
      v37 = 0;
      if (v27)
      {
        if (*v27 == 1)
        {
          WTF::JSONImpl::Value::operator delete();
        }

        else
        {
          --*v27;
        }
      }

      v28 = v41;
      v41 = 0;
      if (v28 && atomic_fetch_add_explicit(v28, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v28, v25);
      }
    }

    else
    {
      Inspector::Protocol::AutomationHelpers::getEnumConstantValue(9, &v33);
      *v39 = v33;
      v40 = 1;
      WTF::Function<void ()(std::experimental::fundamentals_v3::expected<std::tuple<Inspector::Protocol::BidiScript::EvaluateResultType,WTF::String,WTF::RefPtr<Inspector::Protocol::BidiScript::RemoteValue,WTF::RawPtrTraits<Inspector::Protocol::BidiScript::RemoteValue>,WTF::DefaultRefDerefTraits<Inspector::Protocol::BidiScript::RemoteValue>>,WTF::RefPtr<Inspector::Protocol::BidiScript::ExceptionDetails,WTF::RawPtrTraits<Inspector::Protocol::BidiScript::ExceptionDetails>,WTF::DefaultRefDerefTraits<Inspector::Protocol::BidiScript::ExceptionDetails>>>,WTF::String>)>::operator()(*a8, v39);
      std::experimental::fundamentals_v3::expected<std::tuple<Inspector::Protocol::BidiScript::EvaluateResultType,WTF::String,WTF::RefPtr<Inspector::Protocol::BidiScript::RemoteValue,WTF::RawPtrTraits<Inspector::Protocol::BidiScript::RemoteValue>,WTF::DefaultRefDerefTraits<Inspector::Protocol::BidiScript::RemoteValue>>,WTF::RefPtr<Inspector::Protocol::BidiScript::ExceptionDetails,WTF::RawPtrTraits<Inspector::Protocol::BidiScript::ExceptionDetails>,WTF::DefaultRefDerefTraits<Inspector::Protocol::BidiScript::ExceptionDetails>>>,WTF::String>::~expected(v39, v31);
    }

    if (v43 == 1)
    {
      v29 = v42;
      v42 = 0;
      if (v29)
      {
        if (atomic_fetch_add_explicit(v29, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v29, v25);
        }
      }
    }

    CFRelease(*(v10 - 8));
  }

  else
  {
    Inspector::Protocol::AutomationHelpers::getEnumConstantValue(5, &v42);
    *v44 = v42;
    v45 = 1;
    WTF::Function<void ()(std::experimental::fundamentals_v3::expected<std::tuple<Inspector::Protocol::BidiScript::EvaluateResultType,WTF::String,WTF::RefPtr<Inspector::Protocol::BidiScript::RemoteValue,WTF::RawPtrTraits<Inspector::Protocol::BidiScript::RemoteValue>,WTF::DefaultRefDerefTraits<Inspector::Protocol::BidiScript::RemoteValue>>,WTF::RefPtr<Inspector::Protocol::BidiScript::ExceptionDetails,WTF::RawPtrTraits<Inspector::Protocol::BidiScript::ExceptionDetails>,WTF::DefaultRefDerefTraits<Inspector::Protocol::BidiScript::ExceptionDetails>>>,WTF::String>)>::operator()(*a8, v44);
    std::experimental::fundamentals_v3::expected<std::tuple<Inspector::Protocol::BidiScript::EvaluateResultType,WTF::String,WTF::RefPtr<Inspector::Protocol::BidiScript::RemoteValue,WTF::RawPtrTraits<Inspector::Protocol::BidiScript::RemoteValue>,WTF::DefaultRefDerefTraits<Inspector::Protocol::BidiScript::RemoteValue>>,WTF::RefPtr<Inspector::Protocol::BidiScript::ExceptionDetails,WTF::RawPtrTraits<Inspector::Protocol::BidiScript::ExceptionDetails>,WTF::DefaultRefDerefTraits<Inspector::Protocol::BidiScript::ExceptionDetails>>>,WTF::String>::~expected(v44, v30);
  }
}

void *WTF::Detail::CallableWrapper<WebKit::BidiScriptAgent::callFunction(WTF::String const&,BOOL,WTF::Ref<WTF::JSONImpl::Object,WTF::RawPtrTraits<WTF::JSONImpl::Object>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Object>> &&,WTF::RefPtr<WTF::JSONImpl::Array,WTF::RawPtrTraits<WTF::RefPtr>,WTF::DefaultRefDerefTraits<WTF::RefPtr>> &&,std::optional<Inspector::Protocol::BidiScript::ResultOwnership> &&,WTF::Ref<WTF::JSONImpl::Object,WTF::RawPtrTraits<WTF::JSONImpl::Object>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Object>> &&<WTF::JSONImpl::Object,WTF::RawPtrTraits<WTF::JSONImpl::Object>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Object>> &&,std::optional<Inspector::Protocol::BidiScript::ResultOwnership> &,WTF::RefPtr<WTF::JSONImpl::Array,WTF::RawPtrTraits<WTF::RefPtr>,WTF::DefaultRefDerefTraits<WTF::RefPtr>> &&<BOOL> &&,WTF::Function<void ()(std::experimental::fundamentals_v3::expected<WTF::RefPtr<WTF::JSONImpl::Array,WTF::RawPtrTraits<WTF::RefPtr>,WTF::DefaultRefDerefTraits<WTF::RefPtr>> &::tuple<Inspector::EvaluateResultType,WTF::String,WTF::Ref<WTF::JSONImpl::Object,WTF::RawPtrTraits<WTF::JSONImpl::Object>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Object>> &&<Inspector::RemoteValue,WTF::RawPtrTraits<std::experimental>,WTF::DefaultRefDerefTraits<std::experimental>>,WTF::Ref<WTF::JSONImpl::Object,WTF::RawPtrTraits<WTF::JSONImpl::Object>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Object>> &&<Inspector::ExceptionDetails,WTF::RawPtrTraits<Inspector::EvaluateResultType>,WTF::DefaultRefDerefTraits<Inspector::EvaluateResultType>>>,WTF::String>)> &&)::$_0,void,WTF::RefPtr<WTF::JSONImpl::Array,WTF::RawPtrTraits<WTF::RefPtr>,WTF::DefaultRefDerefTraits<WTF::RefPtr>> &&<BOOL> &<WTF::String,WTF::String>>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F10E74A8;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::BidiScriptAgent::callFunction(WTF::String const&,BOOL,WTF::Ref<WTF::JSONImpl::Object,WTF::RawPtrTraits<WTF::JSONImpl::Object>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Object>> &&,WTF::RefPtr<WTF::JSONImpl::Array,WTF::RawPtrTraits<WTF::RefPtr>,WTF::DefaultRefDerefTraits<WTF::RefPtr>> &&,std::optional<Inspector::Protocol::BidiScript::ResultOwnership> &&,WTF::Ref<WTF::JSONImpl::Object,WTF::RawPtrTraits<WTF::JSONImpl::Object>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Object>> &&<WTF::JSONImpl::Object,WTF::RawPtrTraits<WTF::JSONImpl::Object>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Object>> &&,std::optional<Inspector::Protocol::BidiScript::ResultOwnership> &,WTF::RefPtr<WTF::JSONImpl::Array,WTF::RawPtrTraits<WTF::RefPtr>,WTF::DefaultRefDerefTraits<WTF::RefPtr>> &&<BOOL> &&,WTF::Function<void ()(std::experimental::fundamentals_v3::expected<WTF::RefPtr<WTF::JSONImpl::Array,WTF::RawPtrTraits<WTF::RefPtr>,WTF::DefaultRefDerefTraits<WTF::RefPtr>> &::tuple<Inspector::EvaluateResultType,WTF::String,WTF::Ref<WTF::JSONImpl::Object,WTF::RawPtrTraits<WTF::JSONImpl::Object>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Object>> &&<Inspector::RemoteValue,WTF::RawPtrTraits<std::experimental>,WTF::DefaultRefDerefTraits<std::experimental>>,WTF::Ref<WTF::JSONImpl::Object,WTF::RawPtrTraits<WTF::JSONImpl::Object>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Object>> &&<Inspector::ExceptionDetails,WTF::RawPtrTraits<Inspector::EvaluateResultType>,WTF::DefaultRefDerefTraits<Inspector::EvaluateResultType>>>,WTF::String>)> &&)::$_0,void,WTF::RefPtr<WTF::JSONImpl::Array,WTF::RawPtrTraits<WTF::RefPtr>,WTF::DefaultRefDerefTraits<WTF::RefPtr>> &&<BOOL> &<WTF::String,WTF::String>>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F10E74A8;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

_DWORD *WTF::Detail::CallableWrapper<WebKit::BidiScriptAgent::callFunction(WTF::String const&,BOOL,WTF::Ref<WTF::JSONImpl::Object,WTF::RawPtrTraits<WTF::JSONImpl::Object>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Object>> &&,WTF::RefPtr<WTF::JSONImpl::Array,WTF::RawPtrTraits<WTF::RefPtr>,WTF::DefaultRefDerefTraits<WTF::RefPtr>> &&,std::optional<Inspector::Protocol::BidiScript::ResultOwnership> &&,WTF::Ref<WTF::JSONImpl::Object,WTF::RawPtrTraits<WTF::JSONImpl::Object>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Object>> &&<WTF::JSONImpl::Object,WTF::RawPtrTraits<WTF::JSONImpl::Object>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Object>> &&,std::optional<Inspector::Protocol::BidiScript::ResultOwnership> &,WTF::RefPtr<WTF::JSONImpl::Array,WTF::RawPtrTraits<WTF::RefPtr>,WTF::DefaultRefDerefTraits<WTF::RefPtr>> &&<BOOL> &&,WTF::Function<void ()(std::experimental::fundamentals_v3::expected<WTF::RefPtr<WTF::JSONImpl::Array,WTF::RawPtrTraits<WTF::RefPtr>,WTF::DefaultRefDerefTraits<WTF::RefPtr>> &::tuple<Inspector::EvaluateResultType,WTF::String,WTF::Ref<WTF::JSONImpl::Object,WTF::RawPtrTraits<WTF::JSONImpl::Object>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Object>> &&<Inspector::RemoteValue,WTF::RawPtrTraits<std::experimental>,WTF::DefaultRefDerefTraits<std::experimental>>,WTF::Ref<WTF::JSONImpl::Object,WTF::RawPtrTraits<WTF::JSONImpl::Object>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Object>> &&<Inspector::ExceptionDetails,WTF::RawPtrTraits<Inspector::EvaluateResultType>,WTF::DefaultRefDerefTraits<Inspector::EvaluateResultType>>>,WTF::String>)> &&)::$_0,void,WTF::RefPtr<WTF::JSONImpl::Array,WTF::RawPtrTraits<WTF::RefPtr>,WTF::DefaultRefDerefTraits<WTF::RefPtr>> &&<BOOL> &<WTF::String,WTF::String>>::call(uint64_t *a1, uint64_t a2)
{
  if (*(a2 + 8))
  {
    v4 = 10;
  }

  else
  {
    v4 = 9;
  }

  WTF::JSONImpl::Object::create(v21, a1);
  v5 = Inspector::Protocol::BidiScript::RemoteValue::Builder<0>::setType(v21);
  if (*(a2 + 8))
  {
    mpark::throw_bad_variant_access(v5);
  }

  v6 = v21[0];
  WTF::JSONImpl::Value::parseJSON();
  if (v23)
  {
    v21[0] = v23;
    v23 = 0;
    Inspector::Protocol::BidiScript::RemoteValue::setValue(v6, v21);
    v7 = v21[0];
    v21[0] = 0;
    if (v7)
    {
      if (*v7 == 1)
      {
        WTF::JSONImpl::Value::operator delete();
      }

      else
      {
        --*v7;
      }
    }

    v16[0] = "placeholder_realm";
    v16[1] = 18;
    LODWORD(v17) = v4;
    std::__tuple_leaf<1ul,WTF::String,false>::__tuple_leaf[abi:sn200100]<WTF::ASCIILiteral,0>(&v18, v16);
    LODWORD(v21[0]) = v17;
    v8 = v18;
    v18 = 0;
    v19 = 0;
    v21[1] = v8;
    v21[2] = v6;
    v20 = 0;
    v21[3] = 0;
    v22 = 0;
    WTF::Function<void ()(std::experimental::fundamentals_v3::expected<std::tuple<Inspector::Protocol::BidiScript::EvaluateResultType,WTF::String,WTF::RefPtr<Inspector::Protocol::BidiScript::RemoteValue,WTF::RawPtrTraits<Inspector::Protocol::BidiScript::RemoteValue>,WTF::DefaultRefDerefTraits<Inspector::Protocol::BidiScript::RemoteValue>>,WTF::RefPtr<Inspector::Protocol::BidiScript::ExceptionDetails,WTF::RawPtrTraits<Inspector::Protocol::BidiScript::ExceptionDetails>,WTF::DefaultRefDerefTraits<Inspector::Protocol::BidiScript::ExceptionDetails>>>,WTF::String>)>::operator()(a1[1], v21);
    std::experimental::fundamentals_v3::expected<std::tuple<Inspector::Protocol::BidiScript::EvaluateResultType,WTF::String,WTF::RefPtr<Inspector::Protocol::BidiScript::RemoteValue,WTF::RawPtrTraits<Inspector::Protocol::BidiScript::RemoteValue>,WTF::DefaultRefDerefTraits<Inspector::Protocol::BidiScript::RemoteValue>>,WTF::RefPtr<Inspector::Protocol::BidiScript::ExceptionDetails,WTF::RawPtrTraits<Inspector::Protocol::BidiScript::ExceptionDetails>,WTF::DefaultRefDerefTraits<Inspector::Protocol::BidiScript::ExceptionDetails>>>,WTF::String>::~expected(v21, v9);
    v11 = v20;
    v20 = 0;
    if (v11)
    {
      if (*v11 == 1)
      {
        WTF::JSONImpl::Value::operator delete();
      }

      else
      {
        --*v11;
      }
    }

    v12 = v19;
    v19 = 0;
    if (v12)
    {
      if (*v12 == 1)
      {
        WTF::JSONImpl::Value::operator delete();
      }

      else
      {
        --*v12;
      }
    }

    v13 = v18;
    v18 = 0;
    if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v13, v10);
    }

    v6 = 0;
  }

  else
  {
    Inspector::Protocol::AutomationHelpers::getEnumConstantValue(5, &v17);
    v21[0] = v17;
    v22 = 1;
    WTF::Function<void ()(std::experimental::fundamentals_v3::expected<std::tuple<Inspector::Protocol::BidiScript::EvaluateResultType,WTF::String,WTF::RefPtr<Inspector::Protocol::BidiScript::RemoteValue,WTF::RawPtrTraits<Inspector::Protocol::BidiScript::RemoteValue>,WTF::DefaultRefDerefTraits<Inspector::Protocol::BidiScript::RemoteValue>>,WTF::RefPtr<Inspector::Protocol::BidiScript::ExceptionDetails,WTF::RawPtrTraits<Inspector::Protocol::BidiScript::ExceptionDetails>,WTF::DefaultRefDerefTraits<Inspector::Protocol::BidiScript::ExceptionDetails>>>,WTF::String>)>::operator()(a1[1], v21);
    std::experimental::fundamentals_v3::expected<std::tuple<Inspector::Protocol::BidiScript::EvaluateResultType,WTF::String,WTF::RefPtr<Inspector::Protocol::BidiScript::RemoteValue,WTF::RawPtrTraits<Inspector::Protocol::BidiScript::RemoteValue>,WTF::DefaultRefDerefTraits<Inspector::Protocol::BidiScript::RemoteValue>>,WTF::RefPtr<Inspector::Protocol::BidiScript::ExceptionDetails,WTF::RawPtrTraits<Inspector::Protocol::BidiScript::ExceptionDetails>,WTF::DefaultRefDerefTraits<Inspector::Protocol::BidiScript::ExceptionDetails>>>,WTF::String>::~expected(v21, v14);
  }

  result = v23;
  v23 = 0;
  if (result)
  {
    if (*result == 1)
    {
      result = WTF::JSONImpl::Value::operator delete();
      if (!v6)
      {
        return result;
      }

      goto LABEL_24;
    }

    --*result;
  }

  if (!v6)
  {
    return result;
  }

LABEL_24:
  if (*v6 == 1)
  {
    return WTF::JSONImpl::Value::operator delete();
  }

  --*v6;
  return result;
}

uint64_t *Inspector::Protocol::BidiScript::RemoteValue::Builder<0>::setType(uint64_t *a1)
{
  v2 = *a1;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  Inspector::Protocol::WebDriverBidiHelpers::getEnumConstantValue(14, &v13);
  WTF::JSONImpl::Value::create(&v15, &v13, v3);
  WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::inlineSet<WTF::String const&,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>((v2 + 16), &v14, &v15, v16);
  if (v16[16] == 1)
  {
    v5 = *(v2 + 36);
    if (v5 == *(v2 + 32))
    {
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::String const&>(v2 + 24, &v14);
    }

    else
    {
      v6 = *(v2 + 24);
      v7 = v14;
      if (v14)
      {
        atomic_fetch_add_explicit(v14, 2u, memory_order_relaxed);
      }

      v8 = *(v2 + 36);
      *(v6 + 8 * v5) = v7;
      *(v2 + 36) = v8 + 1;
    }
  }

  v9 = v15;
  v15 = 0;
  if (v9)
  {
    if (*v9 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*v9;
    }
  }

  v10 = v13;
  v13 = 0;
  if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, v4);
  }

  v11 = v14;
  v14 = 0;
  if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v11, v4);
  }

  return a1;
}

WTF::StringImpl *Inspector::Protocol::BidiScript::RemoteValue::setValue(uint64_t a1, uint64_t *a2)
{
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::inlineSet<WTF::String const&,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>((a1 + 16), &v10, a2, v11);
  if (v11[16] == 1)
  {
    v5 = *(a1 + 36);
    if (v5 == *(a1 + 32))
    {
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::String const&>(a1 + 24, &v10);
    }

    else
    {
      v6 = *(a1 + 24);
      v7 = v10;
      if (v10)
      {
        atomic_fetch_add_explicit(v10, 2u, memory_order_relaxed);
      }

      v8 = *(a1 + 36);
      *(v6 + 8 * v5) = v7;
      *(a1 + 36) = v8 + 1;
    }
  }

  result = v10;
  v10 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v4);
    }
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::BidiScriptAgent::evaluate(WTF::String const&,BOOL,WTF::Ref<WTF::JSONImpl::Object,WTF::RawPtrTraits<WTF::JSONImpl::Object>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Object>> &&,std::optional<Inspector::Protocol::BidiScript::ResultOwnership> &&,WTF::RefPtr<WTF::JSONImpl::Object,WTF::RawPtrTraits<WTF::JSONImpl::Object>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Object>> &&,std::__1<BOOL> &&,WTF::Function<void ()(std::experimental::fundamentals_v3::expected<WTF::Ref<WTF::JSONImpl::Object,WTF::RawPtrTraits<WTF::JSONImpl::Object>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Object>> &&::tuple<Inspector::Protocol::EvaluateResultType,WTF::String,std::optional<Inspector::Protocol::BidiScript::ResultOwnership> &<Inspector::Protocol::RemoteValue,WTF::RawPtrTraits<std::experimental::fundamentals_v3>,WTF::DefaultRefDerefTraits<std::experimental::fundamentals_v3>>,std::optional<Inspector::Protocol::BidiScript::ResultOwnership> &<Inspector::Protocol::ExceptionDetails,WTF::RawPtrTraits<Inspector::Protocol::RemoteValue>,WTF::DefaultRefDerefTraits<Inspector::Protocol::RemoteValue>>>,WTF::String>)> &&)::$_0,void,std::__1<BOOL> &&<WTF::String,WTF::String>>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F10E74D0;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::BidiScriptAgent::evaluate(WTF::String const&,BOOL,WTF::Ref<WTF::JSONImpl::Object,WTF::RawPtrTraits<WTF::JSONImpl::Object>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Object>> &&,std::optional<Inspector::Protocol::BidiScript::ResultOwnership> &&,WTF::RefPtr<WTF::JSONImpl::Object,WTF::RawPtrTraits<WTF::JSONImpl::Object>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Object>> &&,std::__1<BOOL> &&,WTF::Function<void ()(std::experimental::fundamentals_v3::expected<WTF::Ref<WTF::JSONImpl::Object,WTF::RawPtrTraits<WTF::JSONImpl::Object>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Object>> &&::tuple<Inspector::Protocol::EvaluateResultType,WTF::String,std::optional<Inspector::Protocol::BidiScript::ResultOwnership> &<Inspector::Protocol::RemoteValue,WTF::RawPtrTraits<std::experimental::fundamentals_v3>,WTF::DefaultRefDerefTraits<std::experimental::fundamentals_v3>>,std::optional<Inspector::Protocol::BidiScript::ResultOwnership> &<Inspector::Protocol::ExceptionDetails,WTF::RawPtrTraits<Inspector::Protocol::RemoteValue>,WTF::DefaultRefDerefTraits<Inspector::Protocol::RemoteValue>>>,WTF::String>)> &&)::$_0,void,std::__1<BOOL> &&<WTF::String,WTF::String>>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F10E74D0;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

WTF::StringImpl *WTF::Detail::CallableWrapper<WebKit::BidiScriptAgent::evaluate(WTF::String const&,BOOL,WTF::Ref<WTF::JSONImpl::Object,WTF::RawPtrTraits<WTF::JSONImpl::Object>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Object>> &&,std::optional<Inspector::Protocol::BidiScript::ResultOwnership> &&,WTF::RefPtr<WTF::JSONImpl::Object,WTF::RawPtrTraits<WTF::JSONImpl::Object>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Object>> &&,std::__1<BOOL> &&,WTF::Function<void ()(std::experimental::fundamentals_v3::expected<WTF::Ref<WTF::JSONImpl::Object,WTF::RawPtrTraits<WTF::JSONImpl::Object>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Object>> &&::tuple<Inspector::Protocol::EvaluateResultType,WTF::String,std::optional<Inspector::Protocol::BidiScript::ResultOwnership> &<Inspector::Protocol::RemoteValue,WTF::RawPtrTraits<std::experimental::fundamentals_v3>,WTF::DefaultRefDerefTraits<std::experimental::fundamentals_v3>>,std::optional<Inspector::Protocol::BidiScript::ResultOwnership> &<Inspector::Protocol::ExceptionDetails,WTF::RawPtrTraits<Inspector::Protocol::RemoteValue>,WTF::DefaultRefDerefTraits<Inspector::Protocol::RemoteValue>>>,WTF::String>)> &&)::$_0,void,std::__1<BOOL> &&<WTF::String,WTF::String>>::call(uint64_t *a1, WTF::JSONImpl::Value *a2)
{
  if (*(a2 + 8))
  {
    v4 = 10;
  }

  else
  {
    v4 = 9;
  }

  WTF::JSONImpl::Object::create(v19, a1);
  Inspector::Protocol::BidiScript::RemoteValue::Builder<0>::setType(v19);
  v6 = v19[0];
  if (!*(a2 + 8))
  {
    WTF::JSONImpl::Value::create(v19, a2, v5);
    Inspector::Protocol::BidiScript::RemoteValue::setValue(v6, v19);
    v7 = v19[0];
    v19[0] = 0;
    if (v7)
    {
      if (*v7 == 1)
      {
        WTF::JSONImpl::Value::operator delete();
      }

      else
      {
        --*v7;
      }
    }
  }

  v14[0] = "placeholder_realm";
  v14[1] = 18;
  v15 = v4;
  std::__tuple_leaf<1ul,WTF::String,false>::__tuple_leaf[abi:sn200100]<WTF::ASCIILiteral,0>(&v16, v14);
  LODWORD(v19[0]) = v15;
  v8 = v16;
  v16 = 0;
  v17 = 0;
  v19[1] = v8;
  v19[2] = v6;
  v18 = 0;
  v19[3] = 0;
  v20 = 0;
  WTF::Function<void ()(std::experimental::fundamentals_v3::expected<std::tuple<Inspector::Protocol::BidiScript::EvaluateResultType,WTF::String,WTF::RefPtr<Inspector::Protocol::BidiScript::RemoteValue,WTF::RawPtrTraits<Inspector::Protocol::BidiScript::RemoteValue>,WTF::DefaultRefDerefTraits<Inspector::Protocol::BidiScript::RemoteValue>>,WTF::RefPtr<Inspector::Protocol::BidiScript::ExceptionDetails,WTF::RawPtrTraits<Inspector::Protocol::BidiScript::ExceptionDetails>,WTF::DefaultRefDerefTraits<Inspector::Protocol::BidiScript::ExceptionDetails>>>,WTF::String>)>::operator()(a1[1], v19);
  std::experimental::fundamentals_v3::expected<std::tuple<Inspector::Protocol::BidiScript::EvaluateResultType,WTF::String,WTF::RefPtr<Inspector::Protocol::BidiScript::RemoteValue,WTF::RawPtrTraits<Inspector::Protocol::BidiScript::RemoteValue>,WTF::DefaultRefDerefTraits<Inspector::Protocol::BidiScript::RemoteValue>>,WTF::RefPtr<Inspector::Protocol::BidiScript::ExceptionDetails,WTF::RawPtrTraits<Inspector::Protocol::BidiScript::ExceptionDetails>,WTF::DefaultRefDerefTraits<Inspector::Protocol::BidiScript::ExceptionDetails>>>,WTF::String>::~expected(v19, v9);
  v11 = v18;
  v18 = 0;
  if (v11)
  {
    if (*v11 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*v11;
    }
  }

  v12 = v17;
  v17 = 0;
  if (v12)
  {
    if (*v12 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*v12;
    }
  }

  result = v16;
  v16 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v10);
    }
  }

  return result;
}

WebKit::BidiStorageAgent *WebKit::BidiStorageAgent::BidiStorageAgent(WebKit::BidiStorageAgent *this, WebKit::WebAutomationSession *a2, Inspector::BackendDispatcher *a3)
{
  *this = &unk_1F10E74F8;
  WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(a2 + 6, a2 + 16);
  v6 = *(a2 + 3);
  atomic_fetch_add(v6, 1u);
  *(this + 1) = v6;
  v7 = WTF::fastMalloc(0x20);
  *(this + 2) = Inspector::BidiStorageBackendDispatcher::BidiStorageBackendDispatcher(v7, a3, this);
  return this;
}

void WebKit::BidiStorageAgent::~BidiStorageAgent(WebKit::BidiStorageAgent *this, void *a2)
{
  WebKit::BidiBrowsingContextAgent::~BidiBrowsingContextAgent(this, a2);

  bmalloc::api::tzoneFree(v2, v3);
}

void WebKit::BidiStorageAgent::makePartitionKey(uint64_t a1, uint64_t a2, WTF::JSONImpl::ObjectBase **a3)
{
  if (a2 && (v4 = *(a2 + 8)) != 0)
  {
    v6 = CFRetain(*(v4 - 8));
    WTF::JSONImpl::Object::create(&v34, v6);
    v7 = v34;
    v8 = *a3;
    if (*a3)
    {
      WTF::StringImpl::createWithoutCopyingNonEmpty();
      v32[0] = v34;
      WTF::JSONImpl::ObjectBase::getString(&v38, v8, v32);
      v10 = v32[0];
      v32[0] = 0;
      if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v10, v9);
      }

      if (MEMORY[0x19EB01EF0](v38, "context", 7))
      {
        v11 = *a3;
        WTF::StringImpl::createWithoutCopyingNonEmpty();
        v32[0] = v34;
        WTF::JSONImpl::ObjectBase::getString(&v37, v11, v32);
        v14 = v32[0];
        v32[0] = 0;
        if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v14, v12);
        }

        if (v37 && *(v37 + 1))
        {
          WebKit::WebAutomationSession::webPageProxyForHandle((v4 - 16), &v37, v13, &v36);
          v15 = v36;
          if (v36)
          {
            v32[0] = 0;
            WTF::URL::invalidate(v32);
            WebKit::WebPageProxy::currentURL(v36, &v40);
            MEMORY[0x19EB01E00](&v34, v32, &v40, 0);
            v17 = v40;
            v40 = 0;
            if (v17 && atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v17, v16);
            }

            v18 = v32[0];
            v32[0] = 0;
            if (v18 && atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v18, v16);
            }

            if (v35)
            {
              WTF::StringImpl::createWithoutCopyingNonEmpty();
              WTF::JSONImpl::Value::create(&v40, &v34, v19);
              WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::inlineSet<WTF::String const&,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>(v7 + 2, &v39, &v40, v32);
              if (v33 == 1)
              {
                v20 = *(v7 + 9);
                if (v20 == *(v7 + 8))
                {
                  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::String const&>(v7 + 24, &v39);
                }

                else
                {
                  v23 = *(v7 + 3);
                  v24 = v39;
                  if (v39)
                  {
                    atomic_fetch_add_explicit(v39, 2u, memory_order_relaxed);
                  }

                  v25 = *(v7 + 9);
                  *(v23 + 8 * v20) = v24;
                  *(v7 + 9) = v25 + 1;
                }
              }

              v26 = v40;
              v40 = 0;
              if (v26)
              {
                if (*v26 == 1)
                {
                  WTF::JSONImpl::Value::operator delete();
                }

                else
                {
                  --*v26;
                }
              }

              v27 = v39;
              v39 = 0;
              if (v27 && atomic_fetch_add_explicit(v27, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v27, v16);
              }
            }

            v28 = v34;
            v34 = 0;
            if (v28 && atomic_fetch_add_explicit(v28, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v28, v16);
            }
          }

          else
          {
            Inspector::Protocol::AutomationHelpers::getEnumConstantValue(5, &v34);
            *a1 = v34;
            *(a1 + 8) = 1;
          }

          v29 = v36;
          v36 = 0;
          if (v29)
          {
            CFRelease(*(v29 + 1));
          }

          v30 = v37;
          v37 = 0;
          if (v30 && atomic_fetch_add_explicit(v30, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v30, v16);
          }

          if (v15)
          {
            *a1 = v7;
            *(a1 + 8) = 0;
            v7 = 0;
          }
        }

        else
        {
          Inspector::Protocol::AutomationHelpers::getEnumConstantValue(17, &v34);
          *a1 = v34;
          *(a1 + 8) = 1;
          v22 = v37;
          v37 = 0;
          if (v22 && atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v22, v16);
          }
        }
      }

      else
      {
        if (MEMORY[0x19EB01EF0](v38, "storageKey", 10))
        {
          v21 = 5;
        }

        else
        {
          v21 = 17;
        }

        Inspector::Protocol::AutomationHelpers::getEnumConstantValue(v21, &v34);
        *a1 = v34;
        *(a1 + 8) = 1;
      }

      v31 = v38;
      v38 = 0;
      if (v31 && atomic_fetch_add_explicit(v31, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v31, v16);
      }
    }

    else
    {
      Inspector::Protocol::AutomationHelpers::getEnumConstantValue(17, &v34);
      *a1 = v34;
      *(a1 + 8) = 1;
    }

    if (v7)
    {
      if (*v7 == 1)
      {
        WTF::JSONImpl::Value::operator delete();
      }

      else
      {
        --*v7;
      }
    }

    CFRelease(*(v4 - 8));
  }

  else
  {
    Inspector::Protocol::AutomationHelpers::getEnumConstantValue(5, &v34);
    *a1 = v34;
    *(a1 + 8) = 1;
  }
}

void WebKit::BidiStorageAgent::cookieStoreForPartition(uint64_t a1, uint64_t a2, WTF::JSONImpl::ObjectBase **a3)
{
  if (a2 && (v4 = *(a2 + 8)) != 0)
  {
    CFRetain(*(v4 - 8));
    v6 = *a3;
    if (*a3)
    {
      WTF::StringImpl::createWithoutCopyingNonEmpty();
      WTF::JSONImpl::ObjectBase::getString(&v30, v6, &v29);
      v8 = v29;
      v29 = 0;
      if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v8, v7);
      }

      if (MEMORY[0x19EB01EF0](v30, "context", 7))
      {
        v9 = *a3;
        WTF::StringImpl::createWithoutCopyingNonEmpty();
        WTF::JSONImpl::ObjectBase::getString(&v29, v9, &v28);
        v12 = v28;
        v28 = 0;
        if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v12, v10);
        }

        if (v29 && *(v29 + 1))
        {
          WebKit::WebAutomationSession::webPageProxyForHandle((v4 - 16), &v29, v11, &v28);
          if (v28)
          {
            v13 = *(v28 + 51);
            CFRetain(v13[1]);
            v14 = WebKit::WebsiteDataStore::cookieStore(v13);
            CFRetain(*(v14 + 1));
            CFRelease(v13[1]);
            v16 = 0;
          }

          else
          {
            Inspector::Protocol::AutomationHelpers::getEnumConstantValue(5, &v27);
            v14 = v27;
            v16 = 1;
          }

          *a1 = v14;
          *(a1 + 8) = v16;
          v24 = v28;
          v28 = 0;
          if (v24)
          {
            CFRelease(*(v24 + 1));
          }
        }

        else
        {
          Inspector::Protocol::AutomationHelpers::getEnumConstantValue(5, &v28);
          *a1 = v28;
          *(a1 + 8) = 1;
        }

        v25 = v29;
        v29 = 0;
        if (v25 && atomic_fetch_add_explicit(v25, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v25, v15);
        }
      }

      else
      {
        Inspector::Protocol::AutomationHelpers::getEnumConstantValue(5, &v29);
        *a1 = v29;
        *(a1 + 8) = 1;
      }

      v26 = v30;
      v30 = 0;
      if (v26)
      {
        if (atomic_fetch_add_explicit(v26, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v26, v15);
        }
      }
    }

    else
    {
      WTF::StringImpl::createWithoutCopyingNonEmpty();
      WebKit::WebAutomationSession::webPageProxyForHandle((v4 - 16), &v29, v17, &v30);
      v19 = v29;
      v29 = 0;
      if (v19 && atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v19, v18);
      }

      if (v30)
      {
        v20 = *(v30 + 51);
        CFRetain(v20[1]);
        v21 = WebKit::WebsiteDataStore::cookieStore(v20);
        CFRetain(*(v21 + 1));
        CFRelease(v20[1]);
        v22 = 0;
      }

      else
      {
        Inspector::Protocol::AutomationHelpers::getEnumConstantValue(5, &v29);
        v21 = v29;
        v22 = 1;
      }

      *a1 = v21;
      *(a1 + 8) = v22;
      v23 = v30;
      v30 = 0;
      if (v23)
      {
        CFRelease(*(v23 + 1));
      }
    }

    CFRelease(*(v4 - 8));
  }

  else
  {
    Inspector::Protocol::AutomationHelpers::getEnumConstantValue(5, &v30);
    *a1 = v30;
    *(a1 + 8) = 1;
  }
}

void WebKit::BidiStorageAgent::getCookies(uint64_t a1, uint64_t *a2, WTF::JSONImpl::ObjectBase **a3, uint64_t *a4)
{
  v5 = *(a1 + 8);
  if (!v5 || (v6 = *(v5 + 8)) == 0)
  {
    Inspector::Protocol::AutomationHelpers::getEnumConstantValue(5, &v36);
    v38[0] = v36;
    v39 = 1;
    WTF::Function<void ()(std::experimental::fundamentals_v3::expected<std::tuple<WTF::Ref<WTF::JSONImpl::ArrayOf<Inspector::Protocol::BidiStorage::PartialCookie>,WTF::RawPtrTraits<WTF::JSONImpl::ArrayOf<Inspector::Protocol::BidiStorage::PartialCookie>>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::ArrayOf<Inspector::Protocol::BidiStorage::PartialCookie>>>,WTF::Ref<Inspector::Protocol::BidiStorage::PartitionKey,WTF::RawPtrTraits<Inspector::Protocol::BidiStorage::PartitionKey>,WTF::DefaultRefDerefTraits<Inspector::Protocol::BidiStorage::PartitionKey>>>,WTF::String>)>::operator()(*a4, v38);
    std::experimental::fundamentals_v3::expected<std::tuple<WTF::Ref<WTF::JSONImpl::ArrayOf<Inspector::Protocol::BidiStorage::PartialCookie>,WTF::RawPtrTraits<WTF::JSONImpl::ArrayOf<Inspector::Protocol::BidiStorage::PartialCookie>>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::ArrayOf<Inspector::Protocol::BidiStorage::PartialCookie>>>,WTF::Ref<Inspector::Protocol::BidiStorage::PartitionKey,WTF::RawPtrTraits<Inspector::Protocol::BidiStorage::PartitionKey>,WTF::DefaultRefDerefTraits<Inspector::Protocol::BidiStorage::PartitionKey>>>,WTF::String>::~expected(v38, v13);
    return;
  }

  CFRetain(*(v6 - 8));
  v10 = *a3;
  if (*a3)
  {
    ++*v10;
    v35 = v10;
    WebKit::BidiStorageAgent::makePartitionKey(&v36, *(a1 + 8), &v35);
    v35 = 0;
    if (*v10 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*v10;
    }
  }

  else
  {
    v35 = 0;
    WebKit::BidiStorageAgent::makePartitionKey(&v36, *(a1 + 8), &v35);
    v35 = 0;
  }

  if (v37)
  {
    Inspector::Protocol::AutomationHelpers::getEnumConstantValue(5, &v31);
    v33[0] = v31;
    v34 = 1;
    WTF::Function<void ()(std::experimental::fundamentals_v3::expected<std::tuple<WTF::Ref<WTF::JSONImpl::ArrayOf<Inspector::Protocol::BidiStorage::PartialCookie>,WTF::RawPtrTraits<WTF::JSONImpl::ArrayOf<Inspector::Protocol::BidiStorage::PartialCookie>>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::ArrayOf<Inspector::Protocol::BidiStorage::PartialCookie>>>,WTF::Ref<Inspector::Protocol::BidiStorage::PartitionKey,WTF::RawPtrTraits<Inspector::Protocol::BidiStorage::PartitionKey>,WTF::DefaultRefDerefTraits<Inspector::Protocol::BidiStorage::PartitionKey>>>,WTF::String>)>::operator()(*a4, v33);
    std::experimental::fundamentals_v3::expected<std::tuple<WTF::Ref<WTF::JSONImpl::ArrayOf<Inspector::Protocol::BidiStorage::PartialCookie>,WTF::RawPtrTraits<WTF::JSONImpl::ArrayOf<Inspector::Protocol::BidiStorage::PartialCookie>>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::ArrayOf<Inspector::Protocol::BidiStorage::PartialCookie>>>,WTF::Ref<Inspector::Protocol::BidiStorage::PartitionKey,WTF::RawPtrTraits<Inspector::Protocol::BidiStorage::PartitionKey>,WTF::DefaultRefDerefTraits<Inspector::Protocol::BidiStorage::PartitionKey>>>,WTF::String>::~expected(v33, v11);
  }

  else
  {
    v14 = v36;
    ++*v36;
    v15 = *a3;
    if (v15)
    {
      ++*v15;
      v30 = v15;
      WebKit::BidiStorageAgent::cookieStoreForPartition(&v31, *(a1 + 8), &v30);
      v30 = 0;
      if (*v15 == 1)
      {
        WTF::JSONImpl::Value::operator delete();
      }

      else
      {
        --*v15;
      }
    }

    else
    {
      v30 = 0;
      WebKit::BidiStorageAgent::cookieStoreForPartition(&v31, *(a1 + 8), &v30);
      v30 = 0;
    }

    if (v32)
    {
      Inspector::Protocol::AutomationHelpers::getEnumConstantValue(5, &v27);
      v28[0] = v27;
      v29 = 1;
      WTF::Function<void ()(std::experimental::fundamentals_v3::expected<std::tuple<WTF::Ref<WTF::JSONImpl::ArrayOf<Inspector::Protocol::BidiStorage::PartialCookie>,WTF::RawPtrTraits<WTF::JSONImpl::ArrayOf<Inspector::Protocol::BidiStorage::PartialCookie>>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::ArrayOf<Inspector::Protocol::BidiStorage::PartialCookie>>>,WTF::Ref<Inspector::Protocol::BidiStorage::PartitionKey,WTF::RawPtrTraits<Inspector::Protocol::BidiStorage::PartitionKey>,WTF::DefaultRefDerefTraits<Inspector::Protocol::BidiStorage::PartitionKey>>>,WTF::String>)>::operator()(*a4, v28);
      std::experimental::fundamentals_v3::expected<std::tuple<WTF::Ref<WTF::JSONImpl::ArrayOf<Inspector::Protocol::BidiStorage::PartialCookie>,WTF::RawPtrTraits<WTF::JSONImpl::ArrayOf<Inspector::Protocol::BidiStorage::PartialCookie>>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::ArrayOf<Inspector::Protocol::BidiStorage::PartialCookie>>>,WTF::Ref<Inspector::Protocol::BidiStorage::PartitionKey,WTF::RawPtrTraits<Inspector::Protocol::BidiStorage::PartitionKey>,WTF::DefaultRefDerefTraits<Inspector::Protocol::BidiStorage::PartitionKey>>>,WTF::String>::~expected(v28, v16);
      std::experimental::fundamentals_v3::expected<WTF::Ref<API::HTTPCookieStore,WTF::RawPtrTraits<API::HTTPCookieStore>,WTF::DefaultRefDerefTraits<API::HTTPCookieStore>>,WTF::String>::~expected(&v31, v17);
    }

    else
    {
      v18 = v31;
      CFRetain(*(v31 + 8));
      if (*a2)
      {
        v19 = *a4;
        *a4 = 0;
        v20 = *a2;
        *a2 = 0;
        v21 = WTF::fastMalloc(0x20);
        *v21 = &unk_1F10E7530;
        v21[1] = v19;
        v21[2] = v20;
        v21[3] = v14;
        v27 = v21;
        API::HTTPCookieStore::cookies(v18, &v27);
        v22 = v27;
        v27 = 0;
        if (v22)
        {
          (*(*v22 + 8))(v22);
        }

        v14 = 0;
      }

      else
      {
        Inspector::Protocol::AutomationHelpers::getEnumConstantValue(17, &v27);
        v25[0] = v27;
        v26 = 1;
        WTF::Function<void ()(std::experimental::fundamentals_v3::expected<std::tuple<WTF::Ref<WTF::JSONImpl::ArrayOf<Inspector::Protocol::BidiStorage::PartialCookie>,WTF::RawPtrTraits<WTF::JSONImpl::ArrayOf<Inspector::Protocol::BidiStorage::PartialCookie>>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::ArrayOf<Inspector::Protocol::BidiStorage::PartialCookie>>>,WTF::Ref<Inspector::Protocol::BidiStorage::PartitionKey,WTF::RawPtrTraits<Inspector::Protocol::BidiStorage::PartitionKey>,WTF::DefaultRefDerefTraits<Inspector::Protocol::BidiStorage::PartitionKey>>>,WTF::String>)>::operator()(*a4, v25);
        std::experimental::fundamentals_v3::expected<std::tuple<WTF::Ref<WTF::JSONImpl::ArrayOf<Inspector::Protocol::BidiStorage::PartialCookie>,WTF::RawPtrTraits<WTF::JSONImpl::ArrayOf<Inspector::Protocol::BidiStorage::PartialCookie>>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::ArrayOf<Inspector::Protocol::BidiStorage::PartialCookie>>>,WTF::Ref<Inspector::Protocol::BidiStorage::PartitionKey,WTF::RawPtrTraits<Inspector::Protocol::BidiStorage::PartitionKey>,WTF::DefaultRefDerefTraits<Inspector::Protocol::BidiStorage::PartitionKey>>>,WTF::String>::~expected(v25, v23);
      }

      CFRelease(*(v18 + 8));
      std::experimental::fundamentals_v3::expected<WTF::Ref<API::HTTPCookieStore,WTF::RawPtrTraits<API::HTTPCookieStore>,WTF::DefaultRefDerefTraits<API::HTTPCookieStore>>,WTF::String>::~expected(&v31, v24);
      if (!v14)
      {
        goto LABEL_22;
      }
    }

    if (*v14 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*v14;
    }
  }

LABEL_22:
  std::experimental::fundamentals_v3::expected<WTF::Ref<WTF::JSONImpl::ArrayOf<Inspector::Protocol::BidiBrowsingContext::Info>,WTF::RawPtrTraits<WTF::JSONImpl::ArrayOf<Inspector::Protocol::BidiBrowsingContext::Info>>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::ArrayOf<Inspector::Protocol::BidiBrowsingContext::Info>>>,WTF::String>::~expected(&v36, v12);
  CFRelease(*(v6 - 8));
}

uint64_t WTF::Function<void ()(std::experimental::fundamentals_v3::expected<std::tuple<WTF::Ref<WTF::JSONImpl::ArrayOf<Inspector::Protocol::BidiStorage::PartialCookie>,WTF::RawPtrTraits<WTF::JSONImpl::ArrayOf<Inspector::Protocol::BidiStorage::PartialCookie>>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::ArrayOf<Inspector::Protocol::BidiStorage::PartialCookie>>>,WTF::Ref<Inspector::Protocol::BidiStorage::PartitionKey,WTF::RawPtrTraits<Inspector::Protocol::BidiStorage::PartitionKey>,WTF::DefaultRefDerefTraits<Inspector::Protocol::BidiStorage::PartitionKey>>>,WTF::String>)>::operator()(uint64_t a1, uint64_t *a2)
{
  LOBYTE(v7[0]) = 0;
  v8 = -1;
  v2 = *(a2 + 16);
  if (v2 != 255)
  {
    v3 = *a2;
    *a2 = 0;
    v7[0] = v3;
    if (!v2)
    {
      v4 = a2[1];
      a2[1] = 0;
      v7[1] = v4;
    }

    v8 = v2;
  }

  (*(*a1 + 16))(a1, v7);
  return std::experimental::fundamentals_v3::expected<std::tuple<WTF::Ref<WTF::JSONImpl::ArrayOf<Inspector::Protocol::BidiStorage::PartialCookie>,WTF::RawPtrTraits<WTF::JSONImpl::ArrayOf<Inspector::Protocol::BidiStorage::PartialCookie>>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::ArrayOf<Inspector::Protocol::BidiStorage::PartialCookie>>>,WTF::Ref<Inspector::Protocol::BidiStorage::PartitionKey,WTF::RawPtrTraits<Inspector::Protocol::BidiStorage::PartitionKey>,WTF::DefaultRefDerefTraits<Inspector::Protocol::BidiStorage::PartitionKey>>>,WTF::String>::~expected(v7, v5);
}

uint64_t std::experimental::fundamentals_v3::expected<std::tuple<WTF::Ref<WTF::JSONImpl::ArrayOf<Inspector::Protocol::BidiStorage::PartialCookie>,WTF::RawPtrTraits<WTF::JSONImpl::ArrayOf<Inspector::Protocol::BidiStorage::PartialCookie>>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::ArrayOf<Inspector::Protocol::BidiStorage::PartialCookie>>>,WTF::Ref<Inspector::Protocol::BidiStorage::PartitionKey,WTF::RawPtrTraits<Inspector::Protocol::BidiStorage::PartitionKey>,WTF::DefaultRefDerefTraits<Inspector::Protocol::BidiStorage::PartitionKey>>>,WTF::String>::~expected(uint64_t a1, WTF::StringImpl *a2)
{
  if (*(a1 + 16) != 255)
  {
    if (*(a1 + 16))
    {
      v5 = *a1;
      *a1 = 0;
      if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v5, a2);
      }
    }

    else
    {
      v3 = *(a1 + 8);
      *(a1 + 8) = 0;
      if (v3)
      {
        if (*v3 == 1)
        {
          WTF::JSONImpl::Value::operator delete();
        }

        else
        {
          --*v3;
        }
      }

      v4 = *a1;
      *a1 = 0;
      if (v4)
      {
        if (*v4 == 1)
        {
          WTF::JSONImpl::Value::operator delete();
        }

        else
        {
          --*v4;
        }
      }
    }
  }

  *(a1 + 16) = -1;
  return a1;
}

uint64_t std::experimental::fundamentals_v3::expected<WTF::Ref<API::HTTPCookieStore,WTF::RawPtrTraits<API::HTTPCookieStore>,WTF::DefaultRefDerefTraits<API::HTTPCookieStore>>,WTF::String>::~expected(uint64_t a1, WTF::StringImpl *a2)
{
  v3 = *(a1 + 8);
  if (v3 != 255)
  {
    v4 = *a1;
    *a1 = 0;
    if (v3)
    {
      if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v4, a2);
      }
    }

    else if (v4)
    {
      CFRelease(v4[1]);
    }
  }

  *(a1 + 8) = -1;
  return a1;
}

void WebKit::BidiStorageAgent::setCookie(uint64_t a1, WTF::JSONImpl::ObjectBase **a2, WTF::JSONImpl::ObjectBase **a3, uint64_t *a4)
{
  v5 = *(a1 + 8);
  if (!v5 || (v6 = *(v5 + 8)) == 0)
  {
    Inspector::Protocol::AutomationHelpers::getEnumConstantValue(5, v62);
    v91 = v62[0];
    v92 = 1;
    WTF::Function<void ()(std::experimental::fundamentals_v3::expected<WTF::Ref<Inspector::Protocol::BidiStorage::PartitionKey,WTF::RawPtrTraits<Inspector::Protocol::BidiStorage::PartitionKey>,WTF::DefaultRefDerefTraits<Inspector::Protocol::BidiStorage::PartitionKey>>,WTF::String>)>::operator()(*a4, &v91);
    std::experimental::fundamentals_v3::expected<WTF::Ref<WTF::JSONImpl::ArrayOf<Inspector::Protocol::BidiBrowsingContext::Info>,WTF::RawPtrTraits<WTF::JSONImpl::ArrayOf<Inspector::Protocol::BidiBrowsingContext::Info>>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::ArrayOf<Inspector::Protocol::BidiBrowsingContext::Info>>>,WTF::String>::~expected(&v91, v13);
    return;
  }

  CFRetain(*(v6 - 8));
  v10 = *a3;
  if (*a3)
  {
    ++*v10;
    v88 = v10;
    WebKit::BidiStorageAgent::makePartitionKey(&v89, *(a1 + 8), &v88);
    v88 = 0;
    if (*v10 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*v10;
    }
  }

  else
  {
    v88 = 0;
    WebKit::BidiStorageAgent::makePartitionKey(&v89, *(a1 + 8), &v88);
    v88 = 0;
  }

  if (!v90)
  {
    v14 = v89;
    ++*v89;
    v15 = *a3;
    if (v15)
    {
      ++*v15;
      v83 = v15;
      WebKit::BidiStorageAgent::cookieStoreForPartition(&v84, *(a1 + 8), &v83);
      v83 = 0;
      if (*v15 == 1)
      {
        WTF::JSONImpl::Value::operator delete();
      }

      else
      {
        --*v15;
      }
    }

    else
    {
      v83 = 0;
      WebKit::BidiStorageAgent::cookieStoreForPartition(&v84, *(a1 + 8), &v83);
      v83 = 0;
    }

    if (v85)
    {
      Inspector::Protocol::AutomationHelpers::getEnumConstantValue(5, v62);
      v81 = v62[0];
      v82 = 1;
      WTF::Function<void ()(std::experimental::fundamentals_v3::expected<WTF::Ref<Inspector::Protocol::BidiStorage::PartitionKey,WTF::RawPtrTraits<Inspector::Protocol::BidiStorage::PartitionKey>,WTF::DefaultRefDerefTraits<Inspector::Protocol::BidiStorage::PartitionKey>>,WTF::String>)>::operator()(*a4, &v81);
      std::experimental::fundamentals_v3::expected<WTF::Ref<WTF::JSONImpl::ArrayOf<Inspector::Protocol::BidiBrowsingContext::Info>,WTF::RawPtrTraits<WTF::JSONImpl::ArrayOf<Inspector::Protocol::BidiBrowsingContext::Info>>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::ArrayOf<Inspector::Protocol::BidiBrowsingContext::Info>>>,WTF::String>::~expected(&v81, v16);
      std::experimental::fundamentals_v3::expected<WTF::Ref<API::HTTPCookieStore,WTF::RawPtrTraits<API::HTTPCookieStore>,WTF::DefaultRefDerefTraits<API::HTTPCookieStore>>,WTF::String>::~expected(&v84, v17);
LABEL_76:
      if (*v14 == 1)
      {
        WTF::JSONImpl::Value::operator delete();
      }

      else
      {
        --*v14;
      }

      goto LABEL_78;
    }

    v18 = v84;
    CFRetain(*(v84 + 8));
    v19 = *a2;
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    v60.n128_u64[0] = v62[0];
    WTF::JSONImpl::ObjectBase::getString(&v80, v19, &v60);
    v21 = v60.n128_u64[0];
    v60.n128_u64[0] = 0;
    if (v21 && atomic_fetch_add_explicit(v21, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v21, v20);
    }

    v22 = *a2;
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    v60.n128_u64[0] = v62[0];
    WTF::JSONImpl::ObjectBase::getString(&v79, v22, &v60);
    v24 = v60.n128_u64[0];
    v60.n128_u64[0] = 0;
    if (v24 && atomic_fetch_add_explicit(v24, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v24, v23);
    }

    v25 = *a2;
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    v60.n128_u64[0] = v62[0];
    WTF::JSONImpl::ObjectBase::getString(&v78, v25, &v60);
    v27 = v60.n128_u64[0];
    v60.n128_u64[0] = 0;
    if (v27 && atomic_fetch_add_explicit(v27, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v27, v26);
    }

    if (v80 && v80[1])
    {
      if (v79 && v79[1])
      {
        if (v78 && v78[1])
        {
          v66 = 0;
          v67 = 0;
          v68 = 0;
          *v62 = 0u;
          *v63 = 0u;
          v64 = 0u;
          v65 = 0;
          v69 = 0;
          v70[0] = 0;
          WTF::URL::invalidate(v70);
          v70[5] = 0;
          v70[6] = 0;
          v71 = 0;
          v29 = v80;
          if (v80)
          {
            atomic_fetch_add_explicit(v80, 2u, memory_order_relaxed);
          }

          v30 = v62[0];
          v62[0] = v29;
          if (v30 && atomic_fetch_add_explicit(v30, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v30, v28);
          }

          v31 = v79;
          if (v79)
          {
            atomic_fetch_add_explicit(v79, 2u, memory_order_relaxed);
          }

          v32 = v62[1];
          v62[1] = v31;
          if (v32 && atomic_fetch_add_explicit(v32, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v32, v28);
          }

          v33 = v78;
          if (v78)
          {
            atomic_fetch_add_explicit(v78, 2u, memory_order_relaxed);
          }

          v34 = v63[0];
          v63[0] = v33;
          if (v34 && atomic_fetch_add_explicit(v34, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v34, v28);
          }

          v35 = *a2;
          WTF::StringImpl::createWithoutCopyingNonEmpty();
          v61 = v60.n128_u64[0];
          WTF::JSONImpl::ObjectBase::getString(&v60, v35, &v61);
          v37 = v60.n128_u64[0];
          v60.n128_u64[0] = 0;
          v38 = v63[1];
          v63[1] = v37;
          if (v38)
          {
            if (atomic_fetch_add_explicit(v38, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v38, v36);
            }

            v39 = v60.n128_u64[0];
            v60.n128_u64[0] = 0;
            if (v39 && atomic_fetch_add_explicit(v39, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v39, v36);
            }
          }

          v40 = v61;
          v61 = 0;
          if (v40 && atomic_fetch_add_explicit(v40, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v40, v36);
          }

          v41 = *a2;
          WTF::StringImpl::createWithoutCopyingNonEmpty();
          Boolean = WTF::JSONImpl::ObjectBase::getBoolean(v41, &v60);
          v44 = v60.n128_u64[0];
          v60.n128_u64[0] = 0;
          if (v44 && atomic_fetch_add_explicit(v44, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v44, v42);
          }

          HIBYTE(v67) = Boolean & ((Boolean & 0x100) >> 8);
          v45 = *a2;
          WTF::StringImpl::createWithoutCopyingNonEmpty();
          v47 = WTF::JSONImpl::ObjectBase::getBoolean(v45, &v60);
          v48 = v60.n128_u64[0];
          v60.n128_u64[0] = 0;
          if (v48 && atomic_fetch_add_explicit(v48, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v48, v46);
          }

          LOBYTE(v67) = v47 & ((v47 & 0x100) >> 8);
          v60 = 0uLL;
          WTF::Vector<WebCore::Cookie,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::Cookie>(&v60, v62);
          v49 = *a4;
          *a4 = 0;
          v50 = WTF::fastMalloc(0x18);
          *v50 = &unk_1F10E7558;
          *(v50 + 1) = v49;
          *(v50 + 2) = v14;
          v61 = v50;
          API::HTTPCookieStore::setCookies(v18, &v60, &v61);
          if (v61)
          {
            (*(*v61 + 8))(v61);
          }

          WTF::Vector<WebCore::Cookie,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v60, v51);
          WebCore::Cookie::~Cookie(v62, v52);
          v14 = 0;
LABEL_66:
          v56 = v78;
          v78 = 0;
          if (v56 && atomic_fetch_add_explicit(v56, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v56, v53);
          }

          v57 = v79;
          v79 = 0;
          if (v57 && atomic_fetch_add_explicit(v57, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v57, v53);
          }

          v58 = v80;
          v80 = 0;
          if (v58 && atomic_fetch_add_explicit(v58, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v58, v53);
          }

          CFRelease(*(v18 + 8));
          std::experimental::fundamentals_v3::expected<WTF::Ref<API::HTTPCookieStore,WTF::RawPtrTraits<API::HTTPCookieStore>,WTF::DefaultRefDerefTraits<API::HTTPCookieStore>>,WTF::String>::~expected(&v84, v59);
          if (!v14)
          {
            goto LABEL_78;
          }

          goto LABEL_76;
        }

        Inspector::Protocol::AutomationHelpers::getEnumConstantValue(5, v62);
        v72 = v62[0];
        v73 = 1;
        WTF::Function<void ()(std::experimental::fundamentals_v3::expected<WTF::Ref<Inspector::Protocol::BidiStorage::PartitionKey,WTF::RawPtrTraits<Inspector::Protocol::BidiStorage::PartitionKey>,WTF::DefaultRefDerefTraits<Inspector::Protocol::BidiStorage::PartitionKey>>,WTF::String>)>::operator()(*a4, &v72);
        v55 = &v72;
      }

      else
      {
        Inspector::Protocol::AutomationHelpers::getEnumConstantValue(5, v62);
        v74 = v62[0];
        v75 = 1;
        WTF::Function<void ()(std::experimental::fundamentals_v3::expected<WTF::Ref<Inspector::Protocol::BidiStorage::PartitionKey,WTF::RawPtrTraits<Inspector::Protocol::BidiStorage::PartitionKey>,WTF::DefaultRefDerefTraits<Inspector::Protocol::BidiStorage::PartitionKey>>,WTF::String>)>::operator()(*a4, &v74);
        v55 = &v74;
      }
    }

    else
    {
      Inspector::Protocol::AutomationHelpers::getEnumConstantValue(5, v62);
      v76 = v62[0];
      v77 = 1;
      WTF::Function<void ()(std::experimental::fundamentals_v3::expected<WTF::Ref<Inspector::Protocol::BidiStorage::PartitionKey,WTF::RawPtrTraits<Inspector::Protocol::BidiStorage::PartitionKey>,WTF::DefaultRefDerefTraits<Inspector::Protocol::BidiStorage::PartitionKey>>,WTF::String>)>::operator()(*a4, &v76);
      v55 = &v76;
    }

    std::experimental::fundamentals_v3::expected<WTF::Ref<WTF::JSONImpl::ArrayOf<Inspector::Protocol::BidiBrowsingContext::Info>,WTF::RawPtrTraits<WTF::JSONImpl::ArrayOf<Inspector::Protocol::BidiBrowsingContext::Info>>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::ArrayOf<Inspector::Protocol::BidiBrowsingContext::Info>>>,WTF::String>::~expected(v55, v54);
    goto LABEL_66;
  }

  Inspector::Protocol::AutomationHelpers::getEnumConstantValue(5, v62);
  v86 = v62[0];
  v87 = 1;
  WTF::Function<void ()(std::experimental::fundamentals_v3::expected<WTF::Ref<Inspector::Protocol::BidiStorage::PartitionKey,WTF::RawPtrTraits<Inspector::Protocol::BidiStorage::PartitionKey>,WTF::DefaultRefDerefTraits<Inspector::Protocol::BidiStorage::PartitionKey>>,WTF::String>)>::operator()(*a4, &v86);
  std::experimental::fundamentals_v3::expected<WTF::Ref<WTF::JSONImpl::ArrayOf<Inspector::Protocol::BidiBrowsingContext::Info>,WTF::RawPtrTraits<WTF::JSONImpl::ArrayOf<Inspector::Protocol::BidiBrowsingContext::Info>>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::ArrayOf<Inspector::Protocol::BidiBrowsingContext::Info>>>,WTF::String>::~expected(&v86, v11);
LABEL_78:
  std::experimental::fundamentals_v3::expected<WTF::Ref<WTF::JSONImpl::ArrayOf<Inspector::Protocol::BidiBrowsingContext::Info>,WTF::RawPtrTraits<WTF::JSONImpl::ArrayOf<Inspector::Protocol::BidiBrowsingContext::Info>>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::ArrayOf<Inspector::Protocol::BidiBrowsingContext::Info>>>,WTF::String>::~expected(&v89, v12);
  CFRelease(*(v6 - 8));
}

uint64_t WTF::Function<void ()(std::experimental::fundamentals_v3::expected<WTF::Ref<Inspector::Protocol::BidiStorage::PartitionKey,WTF::RawPtrTraits<Inspector::Protocol::BidiStorage::PartitionKey>,WTF::DefaultRefDerefTraits<Inspector::Protocol::BidiStorage::PartitionKey>>,WTF::String>)>::operator()(uint64_t a1, uint64_t *a2)
{
  LOBYTE(v6) = 0;
  v7 = -1;
  v2 = *(a2 + 8);
  if (v2 != 255)
  {
    v3 = *a2;
    *a2 = 0;
    v6 = v3;
    v7 = v2;
  }

  (*(*a1 + 16))(a1, &v6);
  return std::experimental::fundamentals_v3::expected<WTF::Ref<WTF::JSONImpl::ArrayOf<Inspector::Protocol::BidiBrowsingContext::Info>,WTF::RawPtrTraits<WTF::JSONImpl::ArrayOf<Inspector::Protocol::BidiBrowsingContext::Info>>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::ArrayOf<Inspector::Protocol::BidiBrowsingContext::Info>>>,WTF::String>::~expected(&v6, v4);
}

void WebKit::BidiStorageAgent::deleteCookies(uint64_t a1, uint64_t *a2, WTF::JSONImpl::ObjectBase **a3, uint64_t *a4)
{
  v5 = *(a1 + 8);
  if (!v5 || (v6 = *(v5 + 8)) == 0)
  {
    Inspector::Protocol::AutomationHelpers::getEnumConstantValue(5, &v36);
    v38 = v36;
    v39 = 1;
    WTF::Function<void ()(std::experimental::fundamentals_v3::expected<WTF::Ref<Inspector::Protocol::BidiStorage::PartitionKey,WTF::RawPtrTraits<Inspector::Protocol::BidiStorage::PartitionKey>,WTF::DefaultRefDerefTraits<Inspector::Protocol::BidiStorage::PartitionKey>>,WTF::String>)>::operator()(*a4, &v38);
    std::experimental::fundamentals_v3::expected<WTF::Ref<WTF::JSONImpl::ArrayOf<Inspector::Protocol::BidiBrowsingContext::Info>,WTF::RawPtrTraits<WTF::JSONImpl::ArrayOf<Inspector::Protocol::BidiBrowsingContext::Info>>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::ArrayOf<Inspector::Protocol::BidiBrowsingContext::Info>>>,WTF::String>::~expected(&v38, v13);
    return;
  }

  CFRetain(*(v6 - 8));
  v10 = *a3;
  if (*a3)
  {
    ++*v10;
    v35 = v10;
    WebKit::BidiStorageAgent::makePartitionKey(&v36, *(a1 + 8), &v35);
    v35 = 0;
    if (*v10 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*v10;
    }
  }

  else
  {
    v35 = 0;
    WebKit::BidiStorageAgent::makePartitionKey(&v36, *(a1 + 8), &v35);
    v35 = 0;
  }

  if (v37)
  {
    Inspector::Protocol::AutomationHelpers::getEnumConstantValue(5, &v31);
    v33 = v31;
    v34 = 1;
    WTF::Function<void ()(std::experimental::fundamentals_v3::expected<WTF::Ref<Inspector::Protocol::BidiStorage::PartitionKey,WTF::RawPtrTraits<Inspector::Protocol::BidiStorage::PartitionKey>,WTF::DefaultRefDerefTraits<Inspector::Protocol::BidiStorage::PartitionKey>>,WTF::String>)>::operator()(*a4, &v33);
    std::experimental::fundamentals_v3::expected<WTF::Ref<WTF::JSONImpl::ArrayOf<Inspector::Protocol::BidiBrowsingContext::Info>,WTF::RawPtrTraits<WTF::JSONImpl::ArrayOf<Inspector::Protocol::BidiBrowsingContext::Info>>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::ArrayOf<Inspector::Protocol::BidiBrowsingContext::Info>>>,WTF::String>::~expected(&v33, v11);
  }

  else
  {
    v14 = v36;
    ++*v36;
    v15 = *a3;
    if (v15)
    {
      ++*v15;
      v30 = v15;
      WebKit::BidiStorageAgent::cookieStoreForPartition(&v31, *(a1 + 8), &v30);
      v30 = 0;
      if (*v15 == 1)
      {
        WTF::JSONImpl::Value::operator delete();
      }

      else
      {
        --*v15;
      }
    }

    else
    {
      v30 = 0;
      WebKit::BidiStorageAgent::cookieStoreForPartition(&v31, *(a1 + 8), &v30);
      v30 = 0;
    }

    if (v32)
    {
      Inspector::Protocol::AutomationHelpers::getEnumConstantValue(5, &v27);
      v28 = v27;
      v29 = 1;
      WTF::Function<void ()(std::experimental::fundamentals_v3::expected<WTF::Ref<Inspector::Protocol::BidiStorage::PartitionKey,WTF::RawPtrTraits<Inspector::Protocol::BidiStorage::PartitionKey>,WTF::DefaultRefDerefTraits<Inspector::Protocol::BidiStorage::PartitionKey>>,WTF::String>)>::operator()(*a4, &v28);
      std::experimental::fundamentals_v3::expected<WTF::Ref<WTF::JSONImpl::ArrayOf<Inspector::Protocol::BidiBrowsingContext::Info>,WTF::RawPtrTraits<WTF::JSONImpl::ArrayOf<Inspector::Protocol::BidiBrowsingContext::Info>>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::ArrayOf<Inspector::Protocol::BidiBrowsingContext::Info>>>,WTF::String>::~expected(&v28, v16);
      std::experimental::fundamentals_v3::expected<WTF::Ref<API::HTTPCookieStore,WTF::RawPtrTraits<API::HTTPCookieStore>,WTF::DefaultRefDerefTraits<API::HTTPCookieStore>>,WTF::String>::~expected(&v31, v17);
    }

    else
    {
      v18 = v31;
      CFRetain(*(v31 + 8));
      if (*a2)
      {
        v19 = *a4;
        *a4 = 0;
        v20 = *a2;
        *a2 = 0;
        CFRetain(*(v18 + 8));
        v21 = WTF::fastMalloc(0x28);
        *v21 = &unk_1F10E7580;
        v21[1] = v19;
        v21[2] = v20;
        v21[3] = v14;
        v21[4] = v18;
        v27 = v21;
        API::HTTPCookieStore::cookies(v18, &v27);
        v22 = v27;
        v27 = 0;
        if (v22)
        {
          (*(*v22 + 8))(v22);
        }

        v14 = 0;
      }

      else
      {
        Inspector::Protocol::AutomationHelpers::getEnumConstantValue(17, &v27);
        v25 = v27;
        v26 = 1;
        WTF::Function<void ()(std::experimental::fundamentals_v3::expected<WTF::Ref<Inspector::Protocol::BidiStorage::PartitionKey,WTF::RawPtrTraits<Inspector::Protocol::BidiStorage::PartitionKey>,WTF::DefaultRefDerefTraits<Inspector::Protocol::BidiStorage::PartitionKey>>,WTF::String>)>::operator()(*a4, &v25);
        std::experimental::fundamentals_v3::expected<WTF::Ref<WTF::JSONImpl::ArrayOf<Inspector::Protocol::BidiBrowsingContext::Info>,WTF::RawPtrTraits<WTF::JSONImpl::ArrayOf<Inspector::Protocol::BidiBrowsingContext::Info>>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::ArrayOf<Inspector::Protocol::BidiBrowsingContext::Info>>>,WTF::String>::~expected(&v25, v23);
      }

      CFRelease(*(v18 + 8));
      std::experimental::fundamentals_v3::expected<WTF::Ref<API::HTTPCookieStore,WTF::RawPtrTraits<API::HTTPCookieStore>,WTF::DefaultRefDerefTraits<API::HTTPCookieStore>>,WTF::String>::~expected(&v31, v24);
      if (!v14)
      {
        goto LABEL_22;
      }
    }

    if (*v14 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*v14;
    }
  }

LABEL_22:
  std::experimental::fundamentals_v3::expected<WTF::Ref<WTF::JSONImpl::ArrayOf<Inspector::Protocol::BidiBrowsingContext::Info>,WTF::RawPtrTraits<WTF::JSONImpl::ArrayOf<Inspector::Protocol::BidiBrowsingContext::Info>>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::ArrayOf<Inspector::Protocol::BidiBrowsingContext::Info>>>,WTF::String>::~expected(&v36, v12);
  CFRelease(*(v6 - 8));
}

void WebCore::Cookie::~Cookie(WebCore::Cookie *this, void *a2)
{
  v3 = *(this + 15);
  if (v3)
  {
    *(this + 15) = 0;
    *(this + 32) = 0;
    WTF::fastFree(v3, a2);
  }

  v4 = *(this + 10);
  *(this + 10) = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  v5 = *(this + 9);
  *(this + 9) = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, a2);
  }

  v6 = *(this + 4);
  *(this + 4) = 0;
  if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v6, a2);
  }

  v7 = *(this + 3);
  *(this + 3) = 0;
  if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v7, a2);
  }

  v8 = *(this + 2);
  *(this + 2) = 0;
  if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v8, a2);
  }

  v9 = *(this + 1);
  *(this + 1) = 0;
  if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v9, a2);
  }

  v10 = *this;
  *this = 0;
  if (v10)
  {
    if (atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v10, a2);
    }
  }
}

uint64_t WTF::Vector<WebCore::Cookie,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, void *a2)
{
  v3 = *(a1 + 12);
  if (v3)
  {
    v4 = *a1;
    v5 = 144 * v3;
    do
    {
      WebCore::Cookie::~Cookie(v4, a2);
      v4 = (v6 + 144);
      v5 -= 144;
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

void *WTF::Detail::CallableWrapper<WebKit::BidiStorageAgent::getCookies(WTF::RefPtr<WTF::JSONImpl::Object,WTF::RawPtrTraits<WTF::JSONImpl::Object>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Object>> &&,WTF::RefPtr<WTF::JSONImpl::Object,WTF::RawPtrTraits<WTF::JSONImpl::Object>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Object>> &,WTF::Function<void ()(std::experimental::fundamentals_v3::expected<std::tuple<WTF::Ref<WTF::JSONImpl::ArrayOf<Inspector::Protocol::BidiStorage::PartialCookie>,WTF::RawPtrTraits<Inspector::Protocol::BidiStorage::PartialCookie>,WTF::DefaultRefDerefTraits<Inspector::Protocol::BidiStorage::PartialCookie>>,std::tuple<Inspector::Protocol::PartitionKey,WTF::RawPtrTraits<WTF::Ref<WTF::JSONImpl::ArrayOf<Inspector::Protocol::BidiStorage::PartialCookie>,WTF::RawPtrTraits<Inspector::Protocol::BidiStorage::PartialCookie>,WTF::DefaultRefDerefTraits<Inspector::Protocol::BidiStorage::PartialCookie>>>,WTF::DefaultRefDerefTraits<WTF::Ref<WTF::JSONImpl::ArrayOf<Inspector::Protocol::BidiStorage::PartialCookie>,WTF::RawPtrTraits<Inspector::Protocol::BidiStorage::PartialCookie>,WTF::DefaultRefDerefTraits<Inspector::Protocol::BidiStorage::PartialCookie>>>>>,WTF::String>)> &&)::$_0,void,WTF::Vector<WebCore::Cookie,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&>::~CallableWrapper(void *a1)
{
  *a1 = &unk_1F10E7530;
  v2 = a1[3];
  a1[3] = 0;
  if (v2)
  {
    if (*v2 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*v2;
    }
  }

  v3 = a1[2];
  a1[2] = 0;
  if (v3)
  {
    if (*v3 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*v3;
    }
  }

  v4 = a1[1];
  a1[1] = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::BidiStorageAgent::getCookies(WTF::RefPtr<WTF::JSONImpl::Object,WTF::RawPtrTraits<WTF::JSONImpl::Object>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Object>> &&,WTF::RefPtr<WTF::JSONImpl::Object,WTF::RawPtrTraits<WTF::JSONImpl::Object>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Object>> &,WTF::Function<void ()(std::experimental::fundamentals_v3::expected<std::tuple<WTF::Ref<WTF::JSONImpl::ArrayOf<Inspector::Protocol::BidiStorage::PartialCookie>,WTF::RawPtrTraits<Inspector::Protocol::BidiStorage::PartialCookie>,WTF::DefaultRefDerefTraits<Inspector::Protocol::BidiStorage::PartialCookie>>,std::tuple<Inspector::Protocol::PartitionKey,WTF::RawPtrTraits<WTF::Ref<WTF::JSONImpl::ArrayOf<Inspector::Protocol::BidiStorage::PartialCookie>,WTF::RawPtrTraits<Inspector::Protocol::BidiStorage::PartialCookie>,WTF::DefaultRefDerefTraits<Inspector::Protocol::BidiStorage::PartialCookie>>>,WTF::DefaultRefDerefTraits<WTF::Ref<WTF::JSONImpl::ArrayOf<Inspector::Protocol::BidiStorage::PartialCookie>,WTF::RawPtrTraits<Inspector::Protocol::BidiStorage::PartialCookie>,WTF::DefaultRefDerefTraits<Inspector::Protocol::BidiStorage::PartialCookie>>>>>,WTF::String>)> &&)::$_0,void,WTF::Vector<WebCore::Cookie,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F10E7530;
  v3 = *(this + 3);
  *(this + 3) = 0;
  if (v3)
  {
    if (*v3 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*v3;
    }
  }

  v4 = *(this + 2);
  *(this + 2) = 0;
  if (v4)
  {
    if (*v4 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*v4;
    }
  }

  v5 = *(this + 1);
  *(this + 1) = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::BidiStorageAgent::getCookies(WTF::RefPtr<WTF::JSONImpl::Object,WTF::RawPtrTraits<WTF::JSONImpl::Object>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Object>> &&,WTF::RefPtr<WTF::JSONImpl::Object,WTF::RawPtrTraits<WTF::JSONImpl::Object>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Object>> &,WTF::Function<void ()(std::experimental::fundamentals_v3::expected<std::tuple<WTF::Ref<WTF::JSONImpl::ArrayOf<Inspector::Protocol::BidiStorage::PartialCookie>,WTF::RawPtrTraits<Inspector::Protocol::BidiStorage::PartialCookie>,WTF::DefaultRefDerefTraits<Inspector::Protocol::BidiStorage::PartialCookie>>,std::tuple<Inspector::Protocol::PartitionKey,WTF::RawPtrTraits<WTF::Ref<WTF::JSONImpl::ArrayOf<Inspector::Protocol::BidiStorage::PartialCookie>,WTF::RawPtrTraits<Inspector::Protocol::BidiStorage::PartialCookie>,WTF::DefaultRefDerefTraits<Inspector::Protocol::BidiStorage::PartialCookie>>>,WTF::DefaultRefDerefTraits<WTF::Ref<WTF::JSONImpl::ArrayOf<Inspector::Protocol::BidiStorage::PartialCookie>,WTF::RawPtrTraits<Inspector::Protocol::BidiStorage::PartialCookie>,WTF::DefaultRefDerefTraits<Inspector::Protocol::BidiStorage::PartialCookie>>>>>,WTF::String>)> &&)::$_0,void,WTF::Vector<WebCore::Cookie,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&>::call(uint64_t result, uint64_t a2)
{
  v2 = result;
  v98 = 0;
  v99 = 0;
  v3 = *(a2 + 12);
  if (v3)
  {
    if (v3 >= 0x1C71C72)
    {
      __break(0xC471u);
      return result;
    }

    LODWORD(v99) = 144 * v3 / 0x90u;
    v98 = WTF::fastMalloc((144 * v3));
    v5 = *(a2 + 12);
    if (v5)
    {
      v6 = *a2;
      v7 = 144 * v5;
      while (1)
      {
        v8 = v2[2];
        if (!v8)
        {
          v97 = 0;
          v34 = WebKit::cookieMatchesFilter(v6, &v97);
          v97 = 0;
          if (!v34)
          {
            goto LABEL_38;
          }

          goto LABEL_8;
        }

        ++*v8;
        v97 = v8;
        v9 = WebKit::cookieMatchesFilter(v6, &v97);
        v10 = v9;
        v97 = 0;
        if (*v8 == 1)
        {
          break;
        }

        --*v8;
        if (v9)
        {
          goto LABEL_8;
        }

LABEL_38:
        v6 += 144;
        v7 -= 144;
        if (!v7)
        {
          goto LABEL_44;
        }
      }

      WTF::JSONImpl::Value::operator delete();
      if (!v10)
      {
        goto LABEL_38;
      }

LABEL_8:
      v11 = HIDWORD(v99);
      if (HIDWORD(v99) == v99)
      {
        v12 = WTF::Vector<WebCore::Cookie,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v98, HIDWORD(v99) + 1, v6);
        v13 = v12;
        v14 = HIDWORD(v99);
        v15 = v98;
        v16 = *v12;
        if (*v12)
        {
          atomic_fetch_add_explicit(v16, 2u, memory_order_relaxed);
        }

        v17 = v15 + 144 * v14;
        *v17 = v16;
        v18 = *(v12 + 8);
        if (v18)
        {
          atomic_fetch_add_explicit(v18, 2u, memory_order_relaxed);
        }

        *(v17 + 8) = v18;
        v19 = *(v12 + 16);
        if (v19)
        {
          atomic_fetch_add_explicit(v19, 2u, memory_order_relaxed);
        }

        *(v17 + 16) = v19;
        v20 = *(v12 + 24);
        if (v20)
        {
          atomic_fetch_add_explicit(v20, 2u, memory_order_relaxed);
        }

        *(v17 + 24) = v20;
        v21 = *(v12 + 32);
        if (v21)
        {
          atomic_fetch_add_explicit(v21, 2u, memory_order_relaxed);
        }

        *(v17 + 32) = v21;
        v22 = *(v12 + 40);
        *(v17 + 51) = *(v12 + 51);
        *(v17 + 40) = v22;
        v23 = *(v12 + 72);
        if (v23)
        {
          atomic_fetch_add_explicit(v23, 2u, memory_order_relaxed);
        }

        *(v17 + 72) = v23;
        v24 = *(v12 + 80);
        if (!v24)
        {
          goto LABEL_37;
        }
      }

      else
      {
        v25 = v98;
        v26 = *v6;
        if (*v6)
        {
          atomic_fetch_add_explicit(v26, 2u, memory_order_relaxed);
        }

        v17 = v25 + 144 * v11;
        *v17 = v26;
        v27 = *(v6 + 8);
        if (v27)
        {
          atomic_fetch_add_explicit(v27, 2u, memory_order_relaxed);
        }

        *(v17 + 8) = v27;
        v28 = *(v6 + 16);
        if (v28)
        {
          atomic_fetch_add_explicit(v28, 2u, memory_order_relaxed);
        }

        *(v17 + 16) = v28;
        v29 = *(v6 + 24);
        if (v29)
        {
          atomic_fetch_add_explicit(v29, 2u, memory_order_relaxed);
        }

        *(v17 + 24) = v29;
        v30 = *(v6 + 32);
        if (v30)
        {
          atomic_fetch_add_explicit(v30, 2u, memory_order_relaxed);
        }

        *(v17 + 32) = v30;
        v31 = *(v6 + 40);
        *(v17 + 51) = *(v6 + 51);
        *(v17 + 40) = v31;
        v32 = *(v6 + 72);
        if (v32)
        {
          atomic_fetch_add_explicit(v32, 2u, memory_order_relaxed);
        }

        *(v17 + 72) = v32;
        v24 = *(v6 + 80);
        v13 = v6;
        if (!v24)
        {
          goto LABEL_37;
        }
      }

      atomic_fetch_add_explicit(v24, 2u, memory_order_relaxed);
LABEL_37:
      *(v17 + 80) = v24;
      v33 = *(v13 + 88);
      *(v17 + 104) = *(v13 + 104);
      *(v17 + 88) = v33;
      WTF::Vector<unsigned short,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v17 + 120, v13 + 120);
      *(v17 + 136) = *(v13 + 136);
      ++HIDWORD(v99);
      goto LABEL_38;
    }
  }

LABEL_44:
  v35 = WTF::fastMalloc(0x20);
  v36 = WTF::JSONImpl::ArrayBase::ArrayBase(v35);
  if (HIDWORD(v99))
  {
    v37 = 144 * HIDWORD(v99);
    v38 = v98;
    do
    {
      WTF::JSONImpl::Object::create(&v100, v36);
      v39 = v100;
      WTF::StringImpl::createWithoutCopyingNonEmpty();
      WTF::JSONImpl::Value::create(&v102, (v38 + 8), v40);
      WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::inlineSet<WTF::String const&,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>((v39 + 16), &v101, &v102, v103);
      if (v104 == 1)
      {
        v42 = *(v39 + 36);
        if (v42 == *(v39 + 32))
        {
          WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::String const&>(v39 + 24, &v101);
        }

        else
        {
          v43 = *(v39 + 24);
          v44 = v101;
          if (v101)
          {
            atomic_fetch_add_explicit(v101, 2u, memory_order_relaxed);
          }

          v45 = *(v39 + 36);
          *(v43 + 8 * v42) = v44;
          *(v39 + 36) = v45 + 1;
        }
      }

      v46 = v102;
      v102 = 0;
      if (v46)
      {
        if (*v46 == 1)
        {
          WTF::JSONImpl::Value::operator delete();
        }

        else
        {
          --*v46;
        }
      }

      v47 = v101;
      v101 = 0;
      if (v47 && atomic_fetch_add_explicit(v47, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v47, v41);
      }

      v48 = v100;
      WTF::StringImpl::createWithoutCopyingNonEmpty();
      WTF::JSONImpl::Value::create(&v102, v38, v49);
      WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::inlineSet<WTF::String const&,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>((v48 + 16), &v101, &v102, v103);
      if (v104 == 1)
      {
        v51 = *(v48 + 36);
        if (v51 == *(v48 + 32))
        {
          WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::String const&>(v48 + 24, &v101);
        }

        else
        {
          v52 = *(v48 + 24);
          v53 = v101;
          if (v101)
          {
            atomic_fetch_add_explicit(v101, 2u, memory_order_relaxed);
          }

          v54 = *(v48 + 36);
          *(v52 + 8 * v51) = v53;
          *(v48 + 36) = v54 + 1;
        }
      }

      v55 = v102;
      v102 = 0;
      if (v55)
      {
        if (*v55 == 1)
        {
          WTF::JSONImpl::Value::operator delete();
        }

        else
        {
          --*v55;
        }
      }

      v56 = v101;
      v101 = 0;
      if (v56 && atomic_fetch_add_explicit(v56, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v56, v50);
      }

      v57 = v100;
      WTF::StringImpl::createWithoutCopyingNonEmpty();
      WTF::JSONImpl::Value::create(&v102, (v38 + 16), v58);
      WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::inlineSet<WTF::String const&,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>((v57 + 16), &v101, &v102, v103);
      if (v104 == 1)
      {
        v60 = *(v57 + 36);
        if (v60 == *(v57 + 32))
        {
          WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::String const&>(v57 + 24, &v101);
        }

        else
        {
          v61 = *(v57 + 24);
          v62 = v101;
          if (v101)
          {
            atomic_fetch_add_explicit(v101, 2u, memory_order_relaxed);
          }

          v63 = *(v57 + 36);
          *(v61 + 8 * v60) = v62;
          *(v57 + 36) = v63 + 1;
        }
      }

      v64 = v102;
      v102 = 0;
      if (v64)
      {
        if (*v64 == 1)
        {
          WTF::JSONImpl::Value::operator delete();
        }

        else
        {
          --*v64;
        }
      }

      v65 = v101;
      v101 = 0;
      if (v65 && atomic_fetch_add_explicit(v65, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v65, v59);
      }

      v66 = v100;
      WTF::StringImpl::createWithoutCopyingNonEmpty();
      WTF::JSONImpl::Value::create(&v102, (v38 + 24), v67);
      WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::inlineSet<WTF::String const&,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>((v66 + 16), &v101, &v102, v103);
      if (v104 == 1)
      {
        v69 = *(v66 + 36);
        if (v69 == *(v66 + 32))
        {
          WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::String const&>(v66 + 24, &v101);
        }

        else
        {
          v70 = *(v66 + 24);
          v71 = v101;
          if (v101)
          {
            atomic_fetch_add_explicit(v101, 2u, memory_order_relaxed);
          }

          v72 = *(v66 + 36);
          *(v70 + 8 * v69) = v71;
          *(v66 + 36) = v72 + 1;
        }
      }

      v73 = v102;
      v102 = 0;
      if (v73)
      {
        if (*v73 == 1)
        {
          WTF::JSONImpl::Value::operator delete();
        }

        else
        {
          --*v73;
        }
      }

      v74 = v101;
      v101 = 0;
      if (v74 && atomic_fetch_add_explicit(v74, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v74, v68);
      }

      v75 = v38[64];
      WTF::StringImpl::createWithoutCopyingNonEmpty();
      WTF::JSONImpl::Value::create(v75);
      WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::inlineSet<WTF::String const&,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>((v66 + 16), &v101, &v102, v103);
      if (v104 == 1)
      {
        v77 = *(v66 + 36);
        if (v77 == *(v66 + 32))
        {
          WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::String const&>(v66 + 24, &v101);
        }

        else
        {
          v78 = *(v66 + 24);
          v79 = v101;
          if (v101)
          {
            atomic_fetch_add_explicit(v101, 2u, memory_order_relaxed);
          }

          v80 = *(v66 + 36);
          *(v78 + 8 * v77) = v79;
          *(v66 + 36) = v80 + 1;
        }
      }

      v81 = v102;
      v102 = 0;
      if (v81)
      {
        if (*v81 == 1)
        {
          WTF::JSONImpl::Value::operator delete();
        }

        else
        {
          --*v81;
        }
      }

      v82 = v101;
      v101 = 0;
      if (v82 && atomic_fetch_add_explicit(v82, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v82, v76);
      }

      v83 = v38[65];
      WTF::StringImpl::createWithoutCopyingNonEmpty();
      WTF::JSONImpl::Value::create(v83);
      WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::inlineSet<WTF::String const&,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>((v66 + 16), &v101, &v102, v103);
      if (v104 == 1)
      {
        v85 = *(v66 + 36);
        if (v85 == *(v66 + 32))
        {
          WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::String const&>(v66 + 24, &v101);
        }

        else
        {
          v86 = *(v66 + 24);
          v87 = v101;
          if (v101)
          {
            atomic_fetch_add_explicit(v101, 2u, memory_order_relaxed);
          }

          v88 = *(v66 + 36);
          *(v86 + 8 * v85) = v87;
          *(v66 + 36) = v88 + 1;
        }
      }

      v89 = v102;
      v102 = 0;
      if (v89)
      {
        if (*v89 == 1)
        {
          WTF::JSONImpl::Value::operator delete();
        }

        else
        {
          --*v89;
        }
      }

      v36 = v101;
      v101 = 0;
      if (v36 && atomic_fetch_add_explicit(v36, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        v36 = WTF::StringImpl::destroy(v36, v84);
      }

      v90 = *(v35 + 28);
      if (v90 == *(v35 + 24))
      {
        if (v90 + (v90 >> 1) <= v90 + 1)
        {
          v91 = v90 + 1;
        }

        else
        {
          v91 = v90 + (v90 >> 1);
        }

        if (v91 <= 0x10)
        {
          v92 = 16;
        }

        else
        {
          v92 = v91;
        }

        v36 = WTF::Vector<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(v35 + 16, v92);
        v90 = *(v35 + 28);
        v93 = (*(v35 + 16) + 8 * v90);
      }

      else
      {
        v93 = (*(v35 + 16) + 8 * v90);
      }

      *v93 = v66;
      *(v35 + 28) = v90 + 1;
      v38 += 144;
      v37 -= 144;
    }

    while (v37);
  }

  v94 = v2[3];
  ++*v94;
  v103[0] = v35;
  v103[1] = v94;
  v104 = 0;
  WTF::Function<void ()(std::experimental::fundamentals_v3::expected<std::tuple<WTF::Ref<WTF::JSONImpl::ArrayOf<Inspector::Protocol::BidiStorage::PartialCookie>,WTF::RawPtrTraits<WTF::JSONImpl::ArrayOf<Inspector::Protocol::BidiStorage::PartialCookie>>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::ArrayOf<Inspector::Protocol::BidiStorage::PartialCookie>>>,WTF::Ref<Inspector::Protocol::BidiStorage::PartitionKey,WTF::RawPtrTraits<Inspector::Protocol::BidiStorage::PartitionKey>,WTF::DefaultRefDerefTraits<Inspector::Protocol::BidiStorage::PartitionKey>>>,WTF::String>)>::operator()(v2[1], v103);
  std::experimental::fundamentals_v3::expected<std::tuple<WTF::Ref<WTF::JSONImpl::ArrayOf<Inspector::Protocol::BidiStorage::PartialCookie>,WTF::RawPtrTraits<WTF::JSONImpl::ArrayOf<Inspector::Protocol::BidiStorage::PartialCookie>>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::ArrayOf<Inspector::Protocol::BidiStorage::PartialCookie>>>,WTF::Ref<Inspector::Protocol::BidiStorage::PartitionKey,WTF::RawPtrTraits<Inspector::Protocol::BidiStorage::PartitionKey>,WTF::DefaultRefDerefTraits<Inspector::Protocol::BidiStorage::PartitionKey>>>,WTF::String>::~expected(v103, v95);
  return WTF::Vector<WebCore::Cookie,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v98, v96);
}

BOOL WebKit::cookieMatchesFilter(uint64_t a1, WTF::JSONImpl::ObjectBase **a2)
{
  v4 = *a2;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  WTF::JSONImpl::ObjectBase::getString(&v37, v4, &v38);
  v7 = v38;
  v38 = 0;
  if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v7, v5);
  }

  if (v37 && *(v37 + 1) && !WTF::equal(*a1, v37, v6))
  {
    v24 = 0;
    goto LABEL_52;
  }

  v9 = *a2;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v35 = v38;
  WTF::JSONImpl::ObjectBase::getString(&v36, v9, &v35);
  v12 = v35;
  v35 = 0;
  if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v12, v10);
  }

  if (!v36 || !*(v36 + 1) || WTF::equal(*(a1 + 8), v36, v11))
  {
    v13 = *a2;
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    v35 = v38;
    WTF::JSONImpl::ObjectBase::getString(&v38, v13, &v35);
    v16 = v35;
    v35 = 0;
    if (v16 && atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v16, v14);
    }

    if (v38 && *(v38 + 1) && !WTF::equal(*(a1 + 16), v38, v15))
    {
      v24 = 0;
LABEL_46:
      v30 = v38;
      v38 = 0;
      if (v30 && atomic_fetch_add_explicit(v30, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v30, v8);
      }

      goto LABEL_49;
    }

    v17 = *a2;
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    WTF::JSONImpl::ObjectBase::getString(&v35, v17, &v34);
    v20 = v34;
    v34 = 0;
    if (v20 && atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v20, v18);
    }

    if (v35 && *(v35 + 1) && !WTF::equal(*(a1 + 24), v35, v19))
    {
      goto LABEL_29;
    }

    v21 = *a2;
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    Boolean = WTF::JSONImpl::ObjectBase::getBoolean(v21, &v34);
    v23 = v34;
    v34 = 0;
    if (v23 && atomic_fetch_add_explicit(v23, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v23, v8);
      if ((Boolean & 0x100) == 0)
      {
        goto LABEL_34;
      }
    }

    else if ((Boolean & 0x100) == 0)
    {
      goto LABEL_34;
    }

    if (*(a1 + 64) != Boolean)
    {
LABEL_29:
      v24 = 0;
LABEL_43:
      v29 = v35;
      v35 = 0;
      if (v29 && atomic_fetch_add_explicit(v29, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v29, v8);
      }

      goto LABEL_46;
    }

LABEL_34:
    v25 = *a2;
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    v26 = WTF::JSONImpl::ObjectBase::getBoolean(v25, &v34);
    v27 = v34;
    v34 = 0;
    if (v27 && atomic_fetch_add_explicit(v27, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v27, v8);
    }

    v24 = (v26 & 0x100) == 0 || *(a1 + 65) == v26;
    goto LABEL_43;
  }

  v24 = 0;
LABEL_49:
  v31 = v36;
  v36 = 0;
  if (v31 && atomic_fetch_add_explicit(v31, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v31, v8);
  }

LABEL_52:
  v32 = v37;
  v37 = 0;
  if (v32 && atomic_fetch_add_explicit(v32, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v32, v8);
  }

  return v24;
}

uint64_t WTF::Vector<unsigned short,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(uint64_t result, uint64_t a2)
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

  if ((v3 & 0x80000000) == 0)
  {
    v5 = WTF::fastMalloc((2 * v3));
    *(v2 + 8) = v3;
    *v2 = v5;
    memcpy(v5, *a2, 2 * *(a2 + 12));
    return v2;
  }

  __break(0xC471u);
  return result;
}

unint64_t WTF::Vector<WebCore::Cookie,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v3 = a3;
  v5 = *a1;
  if (*a1 > a3 || v5 + 144 * *(a1 + 12) <= a3)
  {
    v10 = *(a1 + 8);
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

    WTF::Vector<WebCore::Cookie,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v12);
  }

  else
  {
    v6 = a3 - v5;
    v7 = *(a1 + 8);
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

    WTF::Vector<WebCore::Cookie,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v9);
    return *a1 + v6;
  }

  return v3;
}

uint64_t WTF::Vector<WebCore::Cookie,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 8) < a2)
  {
    if (a2 >= 0x1C71C72)
    {
      __break(0xC471u);
      JUMPOUT(0x19D68D8E0);
    }

    v3 = *a1;
    v4 = (*a1 + 144 * *(a1 + 12));
    v5 = 144 * a2;
    v6 = WTF::fastMalloc((144 * a2));
    *(a1 + 8) = v5 / 0x90;
    *a1 = v6;
    WTF::VectorMover<false,WebCore::Cookie>::move(v3, v4, v6);
    if (v3)
    {
      if (*a1 == v3)
      {
        *a1 = 0;
        *(a1 + 8) = 0;
      }

      WTF::fastFree(v3, v7);
    }
  }

  return 1;
}

void WTF::VectorMover<false,WebCore::Cookie>::move(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v4 = a1;
    v5 = a3 + 80;
    do
    {
      v6 = *v4;
      *v4 = 0;
      *(v5 - 80) = v6;
      v7 = v4[1];
      v4[1] = 0;
      *(v5 - 72) = v7;
      v8 = v4[2];
      v4[2] = 0;
      *(v5 - 64) = v8;
      v9 = v4[3];
      v4[3] = 0;
      *(v5 - 56) = v9;
      v10 = v4[4];
      v4[4] = 0;
      *(v5 - 48) = v10;
      v11 = *(v4 + 5);
      *(v5 - 29) = *(v4 + 51);
      *(v5 - 40) = v11;
      v12 = v4[9];
      v4[9] = 0;
      *(v5 - 8) = v12;
      WTF::URL::URL(v5, v4 + 10);
      *(v5 + 40) = 0;
      *(v5 + 48) = 0;
      v13 = v5 + 40;
      WTF::VectorBuffer<unsigned short,0ul,WTF::FastMalloc>::adopt(v13, v4 + 30);
      *(v13 + 16) = *(v4 + 136);
      WebCore::Cookie::~Cookie(v4, v14);
      v5 = v13 + 104;
      v4 += 18;
    }

    while (v4 != a2);
  }
}

uint64_t WTF::VectorBuffer<unsigned short,0ul,WTF::FastMalloc>::adopt(uint64_t result, _DWORD *a2)
{
  v2 = *result;
  if (*result)
  {
    *result = 0;
    *(result + 8) = 0;
    v4 = a2;
    v5 = result;
    WTF::fastFree(v2, a2);
    a2 = v4;
    result = v5;
  }

  v3 = *a2;
  *a2 = 0;
  *result = v3;
  LODWORD(v3) = a2[2];
  a2[2] = 0;
  *(result + 8) = v3;
  LODWORD(v3) = a2[3];
  a2[3] = 0;
  *(result + 12) = v3;
  return result;
}

uint64_t WTF::Vector<WebCore::Cookie,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::Cookie>(uint64_t a1, unint64_t a2)
{
  v3 = WTF::Vector<WebCore::Cookie,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(a1, *(a1 + 12) + 1, a2);
  v4 = *a1 + 144 * *(a1 + 12);
  v5 = *v3;
  *v3 = 0;
  *v4 = v5;
  v6 = *(v3 + 8);
  *(v3 + 8) = 0;
  *(v4 + 8) = v6;
  v7 = *(v3 + 16);
  *(v3 + 16) = 0;
  *(v4 + 16) = v7;
  v8 = *(v3 + 24);
  *(v3 + 24) = 0;
  *(v4 + 24) = v8;
  v9 = *(v3 + 32);
  *(v3 + 32) = 0;
  *(v4 + 32) = v9;
  v10 = *(v3 + 51);
  *(v4 + 40) = *(v3 + 40);
  *(v4 + 51) = v10;
  v11 = *(v3 + 72);
  *(v3 + 72) = 0;
  *(v4 + 72) = v11;
  WTF::URL::URL(v4 + 80, (v3 + 80));
  *(v4 + 120) = 0;
  *(v4 + 128) = 0;
  v4 += 120;
  WTF::VectorBuffer<unsigned short,0ul,WTF::FastMalloc>::adopt(v4, (v3 + 120));
  *(v4 + 16) = *(v3 + 136);
  ++*(a1 + 12);
  return 1;
}

void *WTF::Detail::CallableWrapper<WebKit::BidiStorageAgent::setCookie(WTF::Ref<WTF::JSONImpl::Object,WTF::RawPtrTraits<WTF::JSONImpl::Object>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Object>> &&,WTF::RefPtr<WTF::JSONImpl::Object,WTF::RawPtrTraits<WTF::JSONImpl::Object>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Object>> &&,WTF::Function<void ()(std::experimental::fundamentals_v3::expected<WTF::Ref<Inspector::Protocol::BidiStorage::PartitionKey,WTF::RawPtrTraits<Inspector::Protocol>,WTF::DefaultRefDerefTraits<Inspector::Protocol>>,WTF::String>)> &&)::$_0,void>::~CallableWrapper(void *a1)
{
  *a1 = &unk_1F10E7558;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    if (*v2 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*v2;
    }
  }

  v3 = a1[1];
  a1[1] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::BidiStorageAgent::setCookie(WTF::Ref<WTF::JSONImpl::Object,WTF::RawPtrTraits<WTF::JSONImpl::Object>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Object>> &&,WTF::RefPtr<WTF::JSONImpl::Object,WTF::RawPtrTraits<WTF::JSONImpl::Object>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Object>> &&,WTF::Function<void ()(std::experimental::fundamentals_v3::expected<WTF::Ref<Inspector::Protocol::BidiStorage::PartitionKey,WTF::RawPtrTraits<Inspector::Protocol>,WTF::DefaultRefDerefTraits<Inspector::Protocol>>,WTF::String>)> &&)::$_0,void>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F10E7558;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    if (*v3 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*v3;
    }
  }

  v4 = *(this + 1);
  *(this + 1) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::BidiStorageAgent::setCookie(WTF::Ref<WTF::JSONImpl::Object,WTF::RawPtrTraits<WTF::JSONImpl::Object>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Object>> &&,WTF::RefPtr<WTF::JSONImpl::Object,WTF::RawPtrTraits<WTF::JSONImpl::Object>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Object>> &&,WTF::Function<void ()(std::experimental::fundamentals_v3::expected<WTF::Ref<Inspector::Protocol::BidiStorage::PartitionKey,WTF::RawPtrTraits<Inspector::Protocol>,WTF::DefaultRefDerefTraits<Inspector::Protocol>>,WTF::String>)> &&)::$_0,void>::call(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  v5 = v2;
  v6 = 0;
  WTF::Function<void ()(std::experimental::fundamentals_v3::expected<WTF::Ref<Inspector::Protocol::BidiStorage::PartitionKey,WTF::RawPtrTraits<Inspector::Protocol::BidiStorage::PartitionKey>,WTF::DefaultRefDerefTraits<Inspector::Protocol::BidiStorage::PartitionKey>>,WTF::String>)>::operator()(v1, &v5);
  return std::experimental::fundamentals_v3::expected<WTF::Ref<WTF::JSONImpl::ArrayOf<Inspector::Protocol::BidiBrowsingContext::Info>,WTF::RawPtrTraits<WTF::JSONImpl::ArrayOf<Inspector::Protocol::BidiBrowsingContext::Info>>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::ArrayOf<Inspector::Protocol::BidiBrowsingContext::Info>>>,WTF::String>::~expected(&v5, v3);
}

void *WTF::Detail::CallableWrapper<WebKit::BidiStorageAgent::deleteCookies(WTF::RefPtr<WTF::JSONImpl::Object,WTF::RawPtrTraits<WTF::JSONImpl::Object>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Object>> &&,WTF::RefPtr<WTF::JSONImpl::Object,WTF::RawPtrTraits<WTF::JSONImpl::Object>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Object>> &,WTF::Function<void ()(std::experimental::fundamentals_v3::expected<WTF::Ref<Inspector::Protocol::BidiStorage::PartitionKey,WTF::RawPtrTraits<Inspector::Protocol::BidiStorage>,WTF::DefaultRefDerefTraits<Inspector::Protocol::BidiStorage>>,WTF::String>)> &&)::$_0,void,WTF::Vector<WebCore::Cookie,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&>::~CallableWrapper(void *a1)
{
  *a1 = &unk_1F10E7580;
  v2 = a1[4];
  a1[4] = 0;
  if (v2)
  {
    CFRelease(*(v2 + 8));
  }

  v3 = a1[3];
  a1[3] = 0;
  if (v3)
  {
    if (*v3 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*v3;
    }
  }

  v4 = a1[2];
  a1[2] = 0;
  if (v4)
  {
    if (*v4 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*v4;
    }
  }

  v5 = a1[1];
  a1[1] = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::BidiStorageAgent::deleteCookies(WTF::RefPtr<WTF::JSONImpl::Object,WTF::RawPtrTraits<WTF::JSONImpl::Object>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Object>> &&,WTF::RefPtr<WTF::JSONImpl::Object,WTF::RawPtrTraits<WTF::JSONImpl::Object>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Object>> &,WTF::Function<void ()(std::experimental::fundamentals_v3::expected<WTF::Ref<Inspector::Protocol::BidiStorage::PartitionKey,WTF::RawPtrTraits<Inspector::Protocol::BidiStorage>,WTF::DefaultRefDerefTraits<Inspector::Protocol::BidiStorage>>,WTF::String>)> &&)::$_0,void,WTF::Vector<WebCore::Cookie,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F10E7580;
  v3 = *(this + 4);
  *(this + 4) = 0;
  if (v3)
  {
    CFRelease(*(v3 + 8));
  }

  v4 = *(this + 3);
  *(this + 3) = 0;
  if (v4)
  {
    if (*v4 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*v4;
    }
  }

  v5 = *(this + 2);
  *(this + 2) = 0;
  if (v5)
  {
    if (*v5 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*v5;
    }
  }

  v6 = *(this + 1);
  *(this + 1) = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::BidiStorageAgent::deleteCookies(WTF::RefPtr<WTF::JSONImpl::Object,WTF::RawPtrTraits<WTF::JSONImpl::Object>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Object>> &&,WTF::RefPtr<WTF::JSONImpl::Object,WTF::RawPtrTraits<WTF::JSONImpl::Object>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Object>> &,WTF::Function<void ()(std::experimental::fundamentals_v3::expected<WTF::Ref<Inspector::Protocol::BidiStorage::PartitionKey,WTF::RawPtrTraits<Inspector::Protocol::BidiStorage>,WTF::DefaultRefDerefTraits<Inspector::Protocol::BidiStorage>>,WTF::String>)> &&)::$_0,void,WTF::Vector<WebCore::Cookie,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&>::call(uint64_t result, uint64_t a2)
{
  v3 = result;
  v50 = 0;
  v51 = 0;
  v4 = *(a2 + 12);
  if (v4)
  {
    if (v4 >= 0x1C71C72)
    {
      __break(0xC471u);
      return result;
    }

    LODWORD(v51) = 144 * v4 / 0x90u;
    v50 = WTF::fastMalloc((144 * v4));
  }

  if (!v3[2] || (v5 = *(a2 + 12), !v5))
  {
LABEL_54:
    v42 = v3[3];
    ++*v42;
    v46 = v42;
    LOBYTE(v47) = 0;
    WTF::Function<void ()(std::experimental::fundamentals_v3::expected<WTF::Ref<Inspector::Protocol::BidiStorage::PartitionKey,WTF::RawPtrTraits<Inspector::Protocol::BidiStorage::PartitionKey>,WTF::DefaultRefDerefTraits<Inspector::Protocol::BidiStorage::PartitionKey>>,WTF::String>)>::operator()(v3[1], &v46);
    std::experimental::fundamentals_v3::expected<WTF::Ref<WTF::JSONImpl::ArrayOf<Inspector::Protocol::BidiBrowsingContext::Info>,WTF::RawPtrTraits<WTF::JSONImpl::ArrayOf<Inspector::Protocol::BidiBrowsingContext::Info>>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::ArrayOf<Inspector::Protocol::BidiBrowsingContext::Info>>>,WTF::String>::~expected(&v46, v43);
    return WTF::Vector<WebCore::Cookie,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v50, v41);
  }

  v6 = *a2;
  v7 = 144 * v5;
  do
  {
    v8 = v3[2];
    if (v8)
    {
      ++*v8;
      v49 = v8;
      v9 = WebKit::cookieMatchesFilter(v6, &v49);
      v11 = v9;
      v49 = 0;
      if (*v8 != 1)
      {
        --*v8;
        if (!v9)
        {
          goto LABEL_40;
        }

LABEL_10:
        v12 = HIDWORD(v51);
        if (HIDWORD(v51) == v51)
        {
          v13 = WTF::Vector<WebCore::Cookie,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v50, HIDWORD(v51) + 1, v6);
          v14 = v13;
          v15 = HIDWORD(v51);
          v16 = v50;
          v17 = *v13;
          if (*v13)
          {
            atomic_fetch_add_explicit(v17, 2u, memory_order_relaxed);
          }

          v18 = v16 + 144 * v15;
          *v18 = v17;
          v19 = *(v13 + 8);
          if (v19)
          {
            atomic_fetch_add_explicit(v19, 2u, memory_order_relaxed);
          }

          *(v18 + 8) = v19;
          v20 = *(v13 + 16);
          if (v20)
          {
            atomic_fetch_add_explicit(v20, 2u, memory_order_relaxed);
          }

          *(v18 + 16) = v20;
          v21 = *(v13 + 24);
          if (v21)
          {
            atomic_fetch_add_explicit(v21, 2u, memory_order_relaxed);
          }

          *(v18 + 24) = v21;
          v22 = *(v13 + 32);
          if (v22)
          {
            atomic_fetch_add_explicit(v22, 2u, memory_order_relaxed);
          }

          *(v18 + 32) = v22;
          v23 = *(v13 + 40);
          *(v18 + 51) = *(v13 + 51);
          *(v18 + 40) = v23;
          v24 = *(v13 + 72);
          if (v24)
          {
            atomic_fetch_add_explicit(v24, 2u, memory_order_relaxed);
          }

          *(v18 + 72) = v24;
          v25 = *(v13 + 80);
          if (!v25)
          {
            goto LABEL_39;
          }
        }

        else
        {
          v26 = v50;
          v27 = *v6;
          if (*v6)
          {
            atomic_fetch_add_explicit(v27, 2u, memory_order_relaxed);
          }

          v18 = v26 + 144 * v12;
          *v18 = v27;
          v28 = *(v6 + 8);
          if (v28)
          {
            atomic_fetch_add_explicit(v28, 2u, memory_order_relaxed);
          }

          *(v18 + 8) = v28;
          v29 = *(v6 + 16);
          if (v29)
          {
            atomic_fetch_add_explicit(v29, 2u, memory_order_relaxed);
          }

          *(v18 + 16) = v29;
          v30 = *(v6 + 24);
          if (v30)
          {
            atomic_fetch_add_explicit(v30, 2u, memory_order_relaxed);
          }

          *(v18 + 24) = v30;
          v31 = *(v6 + 32);
          if (v31)
          {
            atomic_fetch_add_explicit(v31, 2u, memory_order_relaxed);
          }

          *(v18 + 32) = v31;
          v32 = *(v6 + 40);
          *(v18 + 51) = *(v6 + 51);
          *(v18 + 40) = v32;
          v33 = *(v6 + 72);
          if (v33)
          {
            atomic_fetch_add_explicit(v33, 2u, memory_order_relaxed);
          }

          *(v18 + 72) = v33;
          v25 = *(v6 + 80);
          v14 = v6;
          if (!v25)
          {
            goto LABEL_39;
          }
        }

        atomic_fetch_add_explicit(v25, 2u, memory_order_relaxed);
LABEL_39:
        *(v18 + 80) = v25;
        v34 = *(v14 + 88);
        *(v18 + 104) = *(v14 + 104);
        *(v18 + 88) = v34;
        WTF::Vector<unsigned short,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v18 + 120, v14 + 120);
        *(v18 + 136) = *(v14 + 136);
        ++HIDWORD(v51);
        goto LABEL_40;
      }

      WTF::JSONImpl::Value::operator delete();
      if (v11)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v49 = 0;
      if (WebKit::cookieMatchesFilter(v6, &v49))
      {
        goto LABEL_10;
      }
    }

LABEL_40:
    v6 += 144;
    v7 -= 144;
  }

  while (v7);
  v35 = HIDWORD(v51);
  if (!HIDWORD(v51))
  {
    goto LABEL_54;
  }

  v36 = v3[3];
  v37 = v3[4];
  v3[4] = 0;
  v45 = v36;
  v46 = v50;
  v38 = v51;
  v50 = 0;
  v51 = 0;
  v47 = v38;
  v48 = v35;
  ++*v36;
  v39 = v3[1];
  v3[1] = 0;
  v44 = v39;
  WebKit::deleteCookiesSequentially(v37, &v46, 0, &v45, &v44, v10);
  if (v44)
  {
    (*(*v44 + 8))(v44);
  }

  if (v45)
  {
    if (*v45 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*v45;
    }
  }

  WTF::Vector<WebCore::Cookie,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v46, v40);
  if (v37)
  {
    CFRelease(v37[1]);
  }

  return WTF::Vector<WebCore::Cookie,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v50, v41);
}

void WebKit::deleteCookiesSequentially(CFTypeRef *a1, uint64_t *a2, unint64_t a3, _DWORD **a4, uint64_t *a5, __n128 a6)
{
  v8 = *(a2 + 3);
  if (v8 <= a3)
  {
    v20 = *a4;
    *v20 = **a4 + 1;
    v26 = v20;
    v27 = 0;
    WTF::Function<void ()(std::experimental::fundamentals_v3::expected<WTF::Ref<Inspector::Protocol::BidiStorage::PartitionKey,WTF::RawPtrTraits<Inspector::Protocol::BidiStorage::PartitionKey>,WTF::DefaultRefDerefTraits<Inspector::Protocol::BidiStorage::PartitionKey>>,WTF::String>)>::operator()(*a5, &v26);
    std::experimental::fundamentals_v3::expected<WTF::Ref<WTF::JSONImpl::ArrayOf<Inspector::Protocol::BidiBrowsingContext::Info>,WTF::RawPtrTraits<WTF::JSONImpl::ArrayOf<Inspector::Protocol::BidiBrowsingContext::Info>>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::ArrayOf<Inspector::Protocol::BidiBrowsingContext::Info>>>,WTF::String>::~expected(&v26, v21);
  }

  else
  {
    v12 = *a2;
    v13 = *a2 + 144 * a3;
    if (a1)
    {
      CFRetain(a1[1]);
      v12 = *a2;
      LODWORD(v8) = *(a2 + 3);
    }

    a6.n128_u64[0] = 0;
    v14 = *(a2 + 2);
    *a2 = a6;
    v15 = *a4;
    *a4 = 0;
    v22[2] = a3;
    v23 = v15;
    v16 = *a5;
    *a5 = 0;
    v17 = WTF::fastMalloc(0x38);
    *v17 = &unk_1F10E75A8;
    *(v17 + 8) = a1;
    v22[0] = 0;
    *(v17 + 16) = v12;
    v22[1] = 0;
    *(v17 + 24) = v14;
    *(v17 + 28) = v8;
    *(v17 + 32) = a3;
    *(v17 + 40) = v15;
    *(v17 + 48) = v16;
    v25 = v17;
    API::HTTPCookieStore::deleteCookie(a1, v13, &v25);
    v19 = v25;
    v25 = 0;
    if (v19)
    {
      (*(*v19 + 8))(v19);
    }

    v23 = 0;
    v24 = 0;
    WTF::Vector<WebCore::Cookie,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v22, v18);
  }
}

void *WTF::Detail::CallableWrapper<WebKit::deleteCookiesSequentially(WTF::RefPtr<API::HTTPCookieStore,WTF::RawPtrTraits<API::HTTPCookieStore>,WTF::DefaultRefDerefTraits<API::HTTPCookieStore>>,WTF::Vector<WebCore::Cookie,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,unsigned long,WTF::Ref<Inspector::Protocol::BidiStorage::PartitionKey,WTF::RawPtrTraits<Inspector::Protocol::BidiStorage::PartitionKey>,WTF::DefaultRefDerefTraits<Inspector::Protocol::BidiStorage::PartitionKey>>,WTF::Function<void ()(std::experimental::fundamentals_v3::expected<WTF::Ref<Inspector::Protocol::BidiStorage::PartitionKey,WTF::RawPtrTraits<Inspector::Protocol::BidiStorage::PartitionKey>,WTF::DefaultRefDerefTraits<Inspector::Protocol::BidiStorage::PartitionKey>>,WTF::String>)>)::$_0,void>::~CallableWrapper(void *a1, void *a2)
{
  *a1 = &unk_1F10E75A8;
  v3 = a1[6];
  a1[6] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = a1[5];
  a1[5] = 0;
  if (v4)
  {
    if (*v4 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*v4;
    }
  }

  WTF::Vector<WebCore::Cookie,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector((a1 + 2), a2);
  v5 = a1[1];
  a1[1] = 0;
  if (v5)
  {
    CFRelease(*(v5 + 8));
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::deleteCookiesSequentially(WTF::RefPtr<API::HTTPCookieStore,WTF::RawPtrTraits<API::HTTPCookieStore>,WTF::DefaultRefDerefTraits<API::HTTPCookieStore>>,WTF::Vector<WebCore::Cookie,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,unsigned long,WTF::Ref<Inspector::Protocol::BidiStorage::PartitionKey,WTF::RawPtrTraits<Inspector::Protocol::BidiStorage::PartitionKey>,WTF::DefaultRefDerefTraits<Inspector::Protocol::BidiStorage::PartitionKey>>,WTF::Function<void ()(std::experimental::fundamentals_v3::expected<WTF::Ref<Inspector::Protocol::BidiStorage::PartitionKey,WTF::RawPtrTraits<Inspector::Protocol::BidiStorage::PartitionKey>,WTF::DefaultRefDerefTraits<Inspector::Protocol::BidiStorage::PartitionKey>>,WTF::String>)>)::$_0,void>::~CallableWrapper(WTF *a1, void *a2)
{
  *a1 = &unk_1F10E75A8;
  v3 = *(a1 + 6);
  *(a1 + 6) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(a1 + 5);
  *(a1 + 5) = 0;
  if (v4)
  {
    if (*v4 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*v4;
    }
  }

  WTF::Vector<WebCore::Cookie,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(a1 + 16, a2);
  v6 = *(a1 + 1);
  *(a1 + 1) = 0;
  if (v6)
  {
    CFRelease(*(v6 + 8));
  }

  return WTF::fastFree(a1, v5);
}

void WTF::Detail::CallableWrapper<WebKit::deleteCookiesSequentially(WTF::RefPtr<API::HTTPCookieStore,WTF::RawPtrTraits<API::HTTPCookieStore>,WTF::DefaultRefDerefTraits<API::HTTPCookieStore>>,WTF::Vector<WebCore::Cookie,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,unsigned long,WTF::Ref<Inspector::Protocol::BidiStorage::PartitionKey,WTF::RawPtrTraits<Inspector::Protocol::BidiStorage::PartitionKey>,WTF::DefaultRefDerefTraits<Inspector::Protocol::BidiStorage::PartitionKey>>,WTF::Function<void ()(std::experimental::fundamentals_v3::expected<WTF::Ref<Inspector::Protocol::BidiStorage::PartitionKey,WTF::RawPtrTraits<Inspector::Protocol::BidiStorage::PartitionKey>,WTF::DefaultRefDerefTraits<Inspector::Protocol::BidiStorage::PartitionKey>>,WTF::String>)>)::$_0,void>::call(void *a1, __n128 a2)
{
  v3 = a1[1];
  if (v3)
  {
    CFRetain(v3[1]);
  }

  v10[0] = a1[2];
  a2.n128_u64[0] = a1[3];
  a1[2] = 0;
  a1[3] = 0;
  v10[1] = a2.n128_u64[0];
  v4 = a1[4];
  v5 = a1[5];
  ++*v5;
  v6 = a1[6];
  a1[6] = 0;
  v8 = v6;
  v9 = v5;
  WebKit::deleteCookiesSequentially(v3, v10, v4 + 1, &v9, &v8, a2);
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  if (v9)
  {
    if (*v9 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*v9;
    }
  }

  WTF::Vector<WebCore::Cookie,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v10, v7);
  if (v3)
  {
    CFRelease(v3[1]);
  }
}

void WebKit::BidiUserContext::~BidiUserContext(WebKit::BidiUserContext *this)
{
  v2 = *(this + 1);
  *(this + 1) = 0;
  if (v2)
  {
    CFRelease(*(v2 + 8));
  }

  v3 = *this;
  *this = 0;
  if (v3)
  {
    CFRelease(*(v3 + 8));
  }
}

uint64_t WebKit::BidiUserContext::allPages@<X0>(uint64_t this@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  v3 = *(this + 8);
  v4 = *(v3 + 84);
  if (v4)
  {
    v5 = this;
    v6 = *(v3 + 72);
    v7 = &v6[v4];
    while (1)
    {
      v8 = *v6;
      v9 = (*v6 + 16);
      atomic_fetch_add(v9, 1u);
      WebKit::WebProcessProxy::pages(v8, &v20);
      if (v21)
      {
        break;
      }

LABEL_13:
      this = WTF::Vector<WTF::Ref<WebKit::WebPageProxy,WTF::RawPtrTraits<WebKit::WebPageProxy>,WTF::DefaultRefDerefTraits<WebKit::WebPageProxy>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v20, v10);
      if (v8)
      {
        this = WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v9);
      }

      if (++v6 == v7)
      {
        return this;
      }
    }

    v11 = v20;
    v12 = 8 * v21;
    while (1)
    {
      v13 = *v11;
      CFRetain(*(*v11 + 8));
      v19 = v13;
      if (*(*(v13 + 408) + 24) == *(*v5 + 24))
      {
        v14 = *(a2 + 12);
        if (v14 == *(a2 + 8))
        {
          v15 = WTF::Vector<WTF::Ref<WebKit::WebPageProxy,WTF::RawPtrTraits<WebKit::WebPageProxy>,WTF::DefaultRefDerefTraits<WebKit::WebPageProxy>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(a2, v14 + 1, &v19);
          v14 = *(a2 + 12);
          v16 = *a2;
          v17 = *v15;
          *v15 = 0;
          *(v16 + 8 * v14) = v17;
        }

        else
        {
          v18 = *a2;
          v19 = 0;
          *(v18 + 8 * v14) = v13;
        }

        *(a2 + 12) = v14 + 1;
        v13 = v19;
        v19 = 0;
        if (!v13)
        {
          goto LABEL_12;
        }
      }

      else
      {
        v19 = 0;
      }

      CFRelease(*(v13 + 8));
LABEL_12:
      ++v11;
      v12 -= 8;
      if (!v12)
      {
        goto LABEL_13;
      }
    }
  }

  return this;
}

id WebKit::filterObjects<NSArray>(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (v3)
  {
    v5 = [v3 count];
    if (v5)
    {
      if (v5 == 1)
      {
        v6 = [v3 objectAtIndexedSubscript:0];
        if (v4[2](v4, &unk_1F1184818, v6))
        {
          v7 = [v3 copy];
        }

        else
        {
          v7 = MEMORY[0x1E695E0F0];
        }
      }

      else
      {
        v10[0] = MEMORY[0x1E69E9820];
        v10[1] = 3221225472;
        v10[2] = ___ZN6WebKit13filterObjectsI7NSArrayEEPT_S3_U13block_pointerFbP11objc_objectS5_E_block_invoke;
        v10[3] = &unk_1E76307D8;
        v11 = v4;
        v8 = [v3 indexesOfObjectsPassingTest:v10];
        v7 = [v3 objectsAtIndexes:v8];
      }
    }

    else
    {
      v7 = MEMORY[0x1E695E0F0];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t ___ZN6WebKit13filterObjectsI7NSArrayEEPT_S3_U13block_pointerFbP11objc_objectS5_E_block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = *(a1 + 32);
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  v8 = (*(v6 + 16))(v6, v7, v5);

  return v8;
}

void ___ZN6WebKit13filterObjectsI12NSDictionaryEEPT_S3_U13block_pointerFbP11objc_objectS5_E_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  if ((*(*(a1 + 40) + 16))())
  {
    [*(a1 + 32) setObject:v5 forKeyedSubscript:v6];
  }
}

id WebKit::mapObjects<NSArray>(void *a1, void *a2)
{
  v17[1] = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if (v3)
  {
    v5 = [v3 count];
    if (v5)
    {
      if (v5 == 1)
      {
        v6 = [v3 objectAtIndexedSubscript:0];
        v7 = v4[2](v4, &unk_1F1184818, v6);

        if (v7)
        {
          v17[0] = v7;
          v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];
        }

        else
        {
          v8 = MEMORY[0x1E695E0F0];
        }
      }

      else
      {
        v9 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v3, "count")}];
        v11 = MEMORY[0x1E69E9820];
        v12 = 3221225472;
        v13 = ___ZN6WebKit10mapObjectsI7NSArrayEEPT_S3_U13block_pointerFP11objc_objectS5_S5_E_block_invoke;
        v14 = &unk_1E7630828;
        v16 = v4;
        v7 = v9;
        v15 = v7;
        [v3 enumerateObjectsUsingBlock:&v11];
        v8 = [v7 copy];
      }
    }

    else
    {
      v8 = MEMORY[0x1E695E0F0];
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void ___ZN6WebKit10mapObjectsI7NSArrayEEPT_S3_U13block_pointerFP11objc_objectS5_S5_E_block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v8 = a2;
  v5 = *(a1 + 40);
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  v7 = (*(v5 + 16))(v5, v6, v8);

  if (v7)
  {
    [*(a1 + 32) addObject:v7];
  }
}

id WebKit::mapObjects<NSDictionary>(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (v3)
  {
    if ([v3 count])
    {
      v5 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v3, "count")}];
      v9 = MEMORY[0x1E69E9820];
      v10 = 3221225472;
      v11 = ___ZN6WebKit10mapObjectsI12NSDictionaryEEPT_S3_U13block_pointerFP11objc_objectS5_S5_E_block_invoke;
      v12 = &unk_1E7630800;
      v14 = v4;
      v6 = v5;
      v13 = v6;
      [v3 enumerateKeysAndObjectsUsingBlock:&v9];
      v7 = [v6 copy];
    }

    else
    {
      v7 = MEMORY[0x1E695E0F8];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void ___ZN6WebKit10mapObjectsI12NSDictionaryEEPT_S3_U13block_pointerFP11objc_objectS5_S5_E_block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = (*(*(a1 + 40) + 16))();
  if (v3)
  {
    [*(a1 + 32) setObject:v3 forKeyedSubscript:v4];
  }
}

void *WebKit::objectForKey<NSString>(void *a1, uint64_t a2, int a3)
{
  v4 = [a1 objectForKeyedSubscript:a2];
  v5 = WTF::dynamic_objc_cast<NSString>(v4);

  if (a3 && ![v5 length])
  {
    v6 = 0;
  }

  else
  {
    v6 = v5;
  }

  v7 = v6;

  return v6;
}

id WebKit::objectForKey<NSArray>(void *a1, uint64_t a2, int a3, uint64_t a4)
{
  v6 = [a1 objectForKeyedSubscript:a2];
  v7 = WTF::dynamic_objc_cast<NSArray>(v6);

  if (a3 && ![v7 count])
  {
    v8 = 0;
  }

  else
  {
    v8 = v7;
  }

  v9 = v8;

  if (a4 && v9)
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = ___ZN6WebKit12objectForKeyI7NSArrayEEPT_P12NSDictionaryP11objc_objectbP10objc_class_block_invoke;
    v12[3] = &__block_descriptor_40_e11_B24__0_8_16lu32l8;
    v12[4] = a4;
    v10 = WebKit::filterObjects<NSArray>(v9, v12);

    v9 = v10;
  }

  return v9;
}

id WebKit::objectForKey<NSDictionary>(void *a1, uint64_t a2, int a3, uint64_t a4)
{
  v6 = [a1 objectForKeyedSubscript:a2];
  v7 = WTF::dynamic_objc_cast<NSDictionary>(v6);

  if (a3 && ![v7 count])
  {
    v8 = 0;
  }

  else
  {
    v8 = v7;
  }

  v9 = v8;

  if (a4 && v9)
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = ___ZN6WebKit12objectForKeyI12NSDictionaryEEPT_PS1_P11objc_objectbP10objc_class_block_invoke;
    v15[3] = &__block_descriptor_40_e11_B24__0_8_16lu32l8;
    v15[4] = a4;
    v10 = v9;
    v11 = v15;
    if ([v10 count])
    {
      v12 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v10, "count")}];
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = ___ZN6WebKit13filterObjectsI12NSDictionaryEEPT_S3_U13block_pointerFbP11objc_objectS5_E_block_invoke;
      v16[3] = &unk_1E7630800;
      v18 = v11;
      v13 = v12;
      v17 = v13;
      [v10 enumerateKeysAndObjectsUsingBlock:v16];
      v9 = [v13 copy];
    }

    else
    {
      v9 = MEMORY[0x1E695E0F8];
    }
  }

  return v9;
}

uint64_t WebKit::isValidJSONObject(void *a1, char a2)
{
  v3 = a1;
  if (!v3)
  {
    goto LABEL_5;
  }

  if (a2)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      v4 = 1;
      goto LABEL_10;
    }

    goto LABEL_4;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
LABEL_5:
    v4 = 0;
    goto LABEL_10;
  }

LABEL_4:
  v4 = [MEMORY[0x1E696ACB0] isValidJSONObject:v3];
LABEL_10:

  return v4;
}

id WebKit::parseJSON(void *a1, char a2, uint64_t a3)
{
  v5 = a1;
  if ([v5 length])
  {
    v6 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v5 options:4 * (a2 & 1) error:a3];
    v7 = v6;
    if ((a2 & 1) == 0)
    {
      v8 = WTF::dynamic_objc_cast<NSDictionary>(v6);

      v7 = v8;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

{
  v5 = a1;
  if ([v5 length])
  {
    v6 = [v5 dataUsingEncoding:4];
    v7 = WebKit::parseJSON(v6, a2, a3);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

id WebKit::parseJSON(uint64_t a1, char a2, uint64_t a3)
{
  v5 = WebKit::wrapper<API::Data>(a1);
  v6 = WebKit::parseJSON(v5, a2, a3);

  return v6;
}

uint64_t WebKit::wrapper<API::Data>(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = v1;
  if (v1)
  {
    if ((WTF::ObjCTypeCastTraits<NSData>::isType(v1) & 1) == 0)
    {
      result = 117;
      __break(0xC471u);
      return result;
    }

    v3 = v2;
  }

  return v2;
}

id WebKit::encodeJSONString(void *a1, char a2, void *a3)
{
  v5 = a1;
  v6 = WTF::dynamic_objc_cast<JSValue>(v5);
  v7 = v6;
  if (v6)
  {
    if (a2 & 1) != 0 || ([v6 _isDictionary])
    {
      a3 = [v7 _toJSONString];
    }

    else
    {
      a3 = 0;
    }
  }

  else
  {
    v8 = WebKit::encodeJSONData(v5, a2, a3);
    if (v8)
    {
      a3 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v8 encoding:4];
    }

    if (!v8)
    {
      a3 = 0;
    }
  }

  return a3;
}

id WTF::dynamic_objc_cast<JSValue>(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1 && (isType = WTF::ObjCTypeCastTraits<JSValue>::isType(v1), v2, isType))
  {
    v4 = v2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

{
  v1 = a1;
  v2 = v1;
  if (v1 && (v3 = WTF::ObjCTypeCastTraits<JSValue>::isType<NSObject>(v1), v2, v3))
  {
    v4 = v2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id WebKit::encodeJSONData(void *a1, char a2, uint64_t a3)
{
  v5 = a1;
  v6 = v5;
  if (!v5)
  {
LABEL_9:
    v10 = 0;
    goto LABEL_12;
  }

  v7 = WTF::dynamic_objc_cast<JSValue>(v5);
  v8 = v7;
  if (!v7)
  {
    if (a2 & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      v10 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v6 options:4 * (a2 & 1) error:a3];
      goto LABEL_12;
    }

    goto LABEL_9;
  }

  if (a2 & 1) != 0 || ([v7 _isDictionary])
  {
    v9 = [v8 _toJSONString];
    v10 = [v9 dataUsingEncoding:4];
  }

  else
  {
    v10 = 0;
  }

LABEL_12:

  return v10;
}

WebKit *WebKit::mergeDictionaries(WebKit *this, NSDictionary *a2, NSDictionary *a3)
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = this;
  v5 = a2;
  if ([(NSDictionary *)v5 count])
  {
    if ([(WebKit *)v4 count])
    {
      v6 = [(WebKit *)v4 mutableCopy];
      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      v7 = [(NSDictionary *)v5 allKeys];
      v8 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v8)
      {
        v9 = *v19;
        do
        {
          for (i = 0; i != v8; ++i)
          {
            if (*v19 != v9)
            {
              objc_enumerationMutation(v7);
            }

            v11 = *(*(&v18 + 1) + 8 * i);
            v12 = [(WebKit *)v4 objectForKeyedSubscript:v11];
            v13 = v12 == 0;

            if (v13)
            {
              v14 = [(NSDictionary *)v5 objectForKeyedSubscript:v11];
              [v6 setObject:v14 forKeyedSubscript:v11];
            }
          }

          v8 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
        }

        while (v8);
      }

      v15 = v4;
      v16 = v5;
      v4 = v6;
    }

    else
    {
      v16 = 0;
      v15 = v4;
      v4 = v5;
    }
  }

  else
  {
    v15 = 0;
    v16 = v5;
  }

  return v4;
}

id WebKit::privacyPreservingDescription(WebKit *this, NSError *a2)
{
  v2 = this;
  v3 = [(WebKit *)v2 userInfo];
  v4 = WebKit::objectForKey<NSString>(v3, @"privacyPreservingDescription", 1);

  if (v4)
  {
    goto LABEL_2;
  }

  v8 = [(WebKit *)v2 domain];
  if (![v8 length] || (objc_msgSend(MEMORY[0x1E696ABC0], "userInfoValueProviderForDomain:", v8), v9 = objc_claimAutoreleasedReturnValue(), (v10 = v9) == 0))
  {

LABEL_8:
    v11 = MEMORY[0x1E696ABC0];
    v12 = [(WebKit *)v2 domain];
    v13 = [(WebKit *)v2 code];
    if (v12)
    {
      v14 = v12;
    }

    else
    {
      v14 = &stru_1F1147748;
    }

    v6 = [v11 errorWithDomain:v14 code:v13 userInfo:0];
    v7 = [v6 description];
    v4 = v12;
    goto LABEL_12;
  }

  v4 = (*(v9 + 16))(v9, v2, @"privacyPreservingDescription");

  if (!v4)
  {
    goto LABEL_8;
  }

LABEL_2:
  v5 = MEMORY[0x1E696AEC0];
  v6 = [(WebKit *)v2 domain];
  v7 = [v5 stringWithFormat:@"Error Domain=%@ Code=%ld %@", v6, -[WebKit code](v2, "code"), v4];
LABEL_12:

  return v7;
}

WebKit *WebKit::ensureDirectoryExists(WebKit *this, NSURL *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = this;
  v3 = [(WebKit *)v2 path];
  MEMORY[0x19EB02040](v11, v3);
  AllDirectories = WTF::FileSystemImpl::makeAllDirectories(v11, v4);
  v7 = *v11;
  *v11 = 0;
  if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v7, v5);
  }

  if ((AllDirectories & 1) == 0)
  {
    v8 = qword_1ED640AB8;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v10 = [(WebKit *)v2 absoluteString];
      *v11 = 138477827;
      *&v11[4] = v10;
      _os_log_error_impl(&dword_19D52D000, v8, OS_LOG_TYPE_ERROR, "Failed to create directory: %{private}@", v11, 0xCu);
    }

    v2 = 0;
  }

  return v2;
}

WebKit *WebKit::escapeCharactersInString(WebKit *this, NSString *a2, NSString *a3)
{
  v4 = this;
  v5 = a2;
  if ([(WebKit *)v4 length]&& [(NSString *)v5 length])
  {
    v6 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:v5];
    v7 = [(WebKit *)v4 rangeOfCharacterFromSet:v6];
    v9 = v8;
    if (v8)
    {
      v10 = v7;
      v11 = [(WebKit *)v4 mutableCopy];
      do
      {
        [v11 insertString:@"\" atIndex:v10];
        v12 = v10 + v9;
        if (v12 + 1 >= [v11 length])
        {
          break;
        }

        v10 = [v11 rangeOfCharacterFromSet:v6 options:0 range:{v12 + 1, objc_msgSend(v11, "length") + ~v12}];
        v9 = v13;
      }

      while (v13);

      v4 = v11;
    }
  }

  return v4;
}

void WebKit::callAfterRandomDelay(uint64_t *a1)
{
  v2 = arc4random();
  v3 = (v2 / 4294967300.0 * 400.0 / 1000.0 + 0.1) * 1000.0 * 1000.0 * 1000.0;
  v4 = -9.22337204e18;
  if (v3 > -9.22337204e18)
  {
    v4 = (v2 / 4294967300.0 * 400.0 / 1000.0 + 0.1) * 1000.0 * 1000.0 * 1000.0;
  }

  if (v3 >= 9.22337204e18)
  {
    v5 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v5 = v4;
  }

  v6 = dispatch_time(0, v5);
  v7 = MEMORY[0x1E69E96A0];
  v8 = *a1;
  *a1 = 0;
  v13 = v8;
  WTF::BlockPtrArc<void ()(void)>::fromCallable<WTF::Function<void ()(void)>>(&v13, &aBlock);
  v9 = v13;
  v13 = 0;
  if (v9)
  {
    (*(*v9 + 8))(v9);
  }

  v10 = _Block_copy(aBlock);
  v11 = MEMORY[0x1E69E96A0];
  dispatch_after(v6, MEMORY[0x1E69E96A0], v10);
}

void sub_19D690094(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 8))(a10);
  }

  _Unwind_Resume(a1);
}

id WebKit::toAPI(WebKit *this, const WTF::WallTime *a2)
{
  if (fabs(*this) == INFINITY)
  {
    [MEMORY[0x1E695DF00] distantFuture];
  }

  else
  {
    [MEMORY[0x1E695DF00] dateWithTimeIntervalSince1970:v2];
  }
  v4 = ;

  return v4;
}

double WebKit::toImpl(WebKit *this, NSDate *a2)
{
  v2 = this;
  if (v2)
  {
    v3 = [MEMORY[0x1E695DF00] distantFuture];
    v4 = [(WebKit *)v2 isEqualToDate:v3];

    if ((v4 & 1) == 0)
    {
      [(WebKit *)v2 timeIntervalSince1970];
      v6 = v7;
      goto LABEL_7;
    }

    *&v5 = INFINITY;
  }

  else
  {
    *&v5 = NAN;
  }

  v6 = *&v5;
LABEL_7:

  return v6;
}

id WebKit::toAPI(uint64_t *a1)
{
  v2 = objc_alloc(MEMORY[0x1E695DFA8]);
  if (*a1)
  {
    v3 = *(*a1 - 12);
  }

  else
  {
    v3 = 0;
  }

  v4 = [v2 initWithCapacity:v3];
  v5 = WTF::HashTable<WTF::URL,WTF::URL,WTF::IdentityExtractor,WTF::DefaultHash<WTF::URL>,WTF::HashTraits<WTF::URL>,WTF::HashTraits<WTF::URL>,WTF::FastMalloc>::begin(a1);
  v6 = v5;
  v8 = v7;
  if (*a1)
  {
    v9 = *a1 + 40 * *(*a1 - 4);
  }

  else
  {
    v9 = 0;
  }

  if (v9 != v5)
  {
    do
    {
      WTF::URL::createCFURL(&v16, v6);
      v10 = v16;
      [v4 addObject:v10];

      v11 = v16;
      v16 = 0;

      do
      {
        v6 = (v6 + 40);
        if (v6 == v8)
        {
          break;
        }

        v12 = WTF::HashTraitsEmptyValueChecker<WTF::HashTraits<WTF::URL>,false>::isEmptyValue<WTF::URL>(v6);
        v13 = *v6 == -1 ? 1 : v12;
      }

      while (v13 == 1);
    }

    while (v6 != v9);
  }

  v14 = [v4 copy];

  return v14;
}

id WebKit::toAPI(void **a1)
{
  v2 = objc_alloc(MEMORY[0x1E695DFA8]);
  if (*a1)
  {
    v3 = *(*a1 - 3);
  }

  else
  {
    v3 = 0;
  }

  v4 = [v2 initWithCapacity:v3];
  v5 = WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::begin(a1);
  v6 = v5;
  v8 = v7;
  if (*a1)
  {
    v9 = &(*a1)[*(*a1 - 1)];
  }

  else
  {
    v9 = 0;
  }

  if (v9 != v5)
  {
    do
    {
      v10 = *v6;
      if (*v6)
      {
        atomic_fetch_add_explicit(v10, 2u, memory_order_relaxed);
        MEMORY[0x19EB00B70](&v16, v10);
        if (atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v10, v11);
        }
      }

      else
      {
        v16 = &stru_1F1147748;
      }

      v12 = v16;
      [v4 addObject:v12];

      v13 = v16;
      v16 = 0;

      do
      {
        ++v6;
      }

      while (v6 != v8 && *v6 + 1 <= 1);
    }

    while (v6 != v9);
  }

  v14 = [v4 copy];

  return v14;
}

id WebKit::toAPIArray(void **a1)
{
  v2 = objc_alloc(MEMORY[0x1E695DF70]);
  if (*a1)
  {
    v3 = *(*a1 - 3);
  }

  else
  {
    v3 = 0;
  }

  v4 = [v2 initWithCapacity:v3];
  v5 = WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::begin(a1);
  v6 = v5;
  v8 = v7;
  if (*a1)
  {
    v9 = &(*a1)[*(*a1 - 1)];
  }

  else
  {
    v9 = 0;
  }

  if (v9 != v5)
  {
    do
    {
      v10 = *v6;
      if (*v6)
      {
        atomic_fetch_add_explicit(v10, 2u, memory_order_relaxed);
        MEMORY[0x19EB00B70](&v16, v10);
        if (atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v10, v11);
        }
      }

      else
      {
        v16 = &stru_1F1147748;
      }

      v12 = v16;
      [v4 addObject:v12];

      v13 = v16;
      v16 = 0;

      do
      {
        ++v6;
      }

      while (v6 != v8 && *v6 + 1 <= 1);
    }

    while (v6 != v9);
  }

  v14 = [v4 copy];

  return v14;
}

void WebKit::toImpl(WebKit *this@<X0>, uint64_t *a2@<X8>)
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = this;
  *a2 = 0;
  v5 = WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::computeBestTableSize([(WebKit *)v4 count]);
  v6 = WTF::fastZeroedMalloc((8 * v5 + 16));
  *a2 = v6 + 16;
  *(v6 + 8) = v5 - 1;
  *(v6 + 12) = v5;
  *v6 = 0;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = v4;
  v8 = [(WebKit *)v7 countByEnumeratingWithState:&v16 objects:v21 count:16];
  if (v8)
  {
    v9 = *v17;
    do
    {
      v10 = 0;
      do
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = WTF::dynamic_objc_cast<NSString>(*(*(&v16 + 1) + 8 * v10));
        if (v11)
        {
          MEMORY[0x19EB02040](&v15, v11);
          WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>(a2, &v15, v12, v20);
          v14 = v15;
          v15 = 0;
          if (v14)
          {
            if (atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v14, v13);
            }
          }
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [(WebKit *)v7 countByEnumeratingWithState:&v16 objects:v21 count:16];
    }

    while (v8);
  }
}

void sub_19D690830(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  if (*v11)
  {
    WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(*v11, v14);
  }

  _Unwind_Resume(a1);
}

void WebKit::toDataMap(WebKit *this@<X0>, uint64_t *a2@<X8>)
{
  v65 = *MEMORY[0x1E69E9840];
  v4 = this;
  *a2 = 0;
  v50 = v4;
  v5 = [(WebKit *)v4 count];
  if (v5 <= 1)
  {
    v6 = v5 & 1;
    v7 = 1;
    goto LABEL_5;
  }

  v8 = __clz(v5 - 1);
  if (!v8)
  {
    __break(1u);
  }

  v7 = (1 << -v8);
  v6 = v5;
  if (v5 <= 0x400)
  {
LABEL_5:
    if (3 * v7 > 4 * v6)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (v7 <= 2 * v5)
  {
LABEL_6:
    LODWORD(v7) = 2 * v7;
  }

LABEL_7:
  if (v7 > 0x400)
  {
    v9 = 0.416666667;
  }

  else
  {
    v9 = 0.604166667;
  }

  if (v7 * v9 <= v5)
  {
    LODWORD(v7) = 2 * v7;
  }

  if (v7 <= 8)
  {
    v10 = 8;
  }

  else
  {
    v10 = v7;
  }

  v11 = WTF::fastMalloc((24 * v10 + 16));
  v12 = 16;
  v13 = v10;
  do
  {
    v14 = v11 + v12;
    *v14 = 0;
    *(v14 + 8) = 0;
    *(v14 + 16) = 0;
    v12 += 24;
    --v13;
  }

  while (v13);
  *a2 = v11 + 16;
  *(v11 + 8) = v10 - 1;
  *(v11 + 12) = v10;
  *v11 = 0;
  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v15 = v50;
  v16 = [(WebKit *)v15 countByEnumeratingWithState:&v60 objects:v64 count:16];
  if (v16)
  {
    v17 = *v61;
    v54 = a2;
    v51 = *v61;
    v52 = v15;
    do
    {
      v18 = 0;
      v53 = v16;
      do
      {
        if (*v61 != v17)
        {
          objc_enumerationMutation(v15);
        }

        v19 = *(*(&v60 + 1) + 8 * v18);
        v20 = WTF::dynamic_objc_cast<NSString>(v19);
        MEMORY[0x19EB02040](&v59, v20);

        v22 = v59;
        if (!v59)
        {
          goto LABEL_66;
        }

        if (!*(v59 + 1))
        {
          v59 = 0;
          goto LABEL_64;
        }

        v23 = [(WebKit *)v15 objectForKeyedSubscript:v19];
        v24 = WTF::dynamic_objc_cast<NSString>(v23);
        v58 = v24;
        if (v24)
        {
          WTF::HashMap<WTF::String,mpark::variant<WTF::String,WTF::Ref<API::Data,WTF::RawPtrTraits<API::Data>,WTF::DefaultRefDerefTraits<API::Data>>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<mpark::variant<WTF::String,WTF::Ref<API::Data,WTF::RawPtrTraits<API::Data>,WTF::DefaultRefDerefTraits<API::Data>>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<NSString * {__strong}&>(&v56, a2, &v59, &v58);

          goto LABEL_63;
        }

        v25 = WTF::dynamic_objc_cast<NSData>(v23);
        v26 = v25;
        if (!v25)
        {
          if (WebKit::isValidJSONObject(v23, 1))
          {
            v55 = 0;
            v38 = WebKit::encodeJSONString(v23, 1, &v55);
            v39 = v55;
            v40 = v39;
            v58 = v38;
            if (v38 && !v39)
            {
              WTF::HashMap<WTF::String,mpark::variant<WTF::String,WTF::Ref<API::Data,WTF::RawPtrTraits<API::Data>,WTF::DefaultRefDerefTraits<API::Data>>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<mpark::variant<WTF::String,WTF::Ref<API::Data,WTF::RawPtrTraits<API::Data>,WTF::DefaultRefDerefTraits<API::Data>>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<NSString * {__strong}&>(&v56, a2, &v59, &v58);
            }
          }

          goto LABEL_63;
        }

        API::Data::createWithoutCopying(v25, &v58);
        if (v59 == -1 || !v59)
        {
          __break(0xC471u);
          JUMPOUT(0x19D690D6CLL);
        }

        v29 = *a2;
        if (*a2 || (WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,mpark::variant<WTF::String,WTF::Ref<API::Data,WTF::RawPtrTraits<API::Data>,WTF::DefaultRefDerefTraits<API::Data>>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,mpark::variant<WTF::String,WTF::Ref<API::Data,WTF::RawPtrTraits<API::Data>,WTF::DefaultRefDerefTraits<API::Data>>>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,mpark::variant<WTF::String,WTF::Ref<API::Data,WTF::RawPtrTraits<API::Data>,WTF::DefaultRefDerefTraits<API::Data>>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<mpark::variant<WTF::String,WTF::Ref<API::Data,WTF::RawPtrTraits<API::Data>,WTF::DefaultRefDerefTraits<API::Data>>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::expand(a2, 0), (v29 = *v54) != 0))
        {
          v30 = *(v29 - 8);
        }

        else
        {
          v30 = 0;
        }

        v31 = *(v59 + 4);
        if (v31 < 0x100)
        {
          v32 = WTF::StringImpl::hashSlowCase(v59);
        }

        else
        {
          v32 = v31 >> 8;
        }

        v33 = 0;
        for (i = 1; ; ++i)
        {
          v35 = v32 & v30;
          v36 = (v29 + 24 * (v32 & v30));
          v37 = *v36;
          if (*v36 == -1)
          {
            v33 = v29 + 24 * v35;
            goto LABEL_41;
          }

          if (!v37)
          {
            break;
          }

          if (WTF::equal(v37, v59, v28))
          {
            goto LABEL_60;
          }

LABEL_41:
          v32 = i + v35;
        }

        if (v33)
        {
          v37 = 0;
          *v33 = 0;
          *(v33 + 8) = 0;
          *(v33 + 16) = 0;
          --*(*v54 - 16);
          v36 = v33;
        }

        v41 = v59;
        if (v59)
        {
          atomic_fetch_add_explicit(v59, 2u, memory_order_relaxed);
          v37 = *v36;
        }

        *v36 = v41;
        if (v37 && atomic_fetch_add_explicit(v37, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v37, v27);
        }

        v42 = v58;
        v58 = 0;
        v56 = v42;
        v57 = 1;
        WTF::GenericHashTraits<mpark::variant<WTF::String,WTF::Ref<API::Data,WTF::RawPtrTraits<API::Data>,WTF::DefaultRefDerefTraits<API::Data>>>>::assignToEmpty<mpark::variant<WTF::String,WTF::Ref<API::Data,WTF::RawPtrTraits<API::Data>,WTF::DefaultRefDerefTraits<API::Data>>>,mpark::variant<WTF::String,WTF::Ref<API::Data,WTF::RawPtrTraits<API::Data>,WTF::DefaultRefDerefTraits<API::Data>>>>((v36 + 1), &v56);
        mpark::detail::move_constructor<mpark::detail::traits<WTF::String,WTF::Ref<API::Data,WTF::RawPtrTraits<API::Data>,WTF::DefaultRefDerefTraits<API::Data>>>,(mpark::detail::Trait)1>::~move_constructor(&v56, v43);
        v44 = *v54;
        if (*v54)
        {
          v45 = *(v44 - 12) + 1;
        }

        else
        {
          v45 = 1;
        }

        *(v44 - 12) = v45;
        v46 = (*(v44 - 16) + v45);
        v47 = *(v44 - 4);
        if (v47 > 0x400)
        {
          if (v47 <= 2 * v46)
          {
LABEL_59:
            WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,mpark::variant<WTF::String,WTF::Ref<API::Data,WTF::RawPtrTraits<API::Data>,WTF::DefaultRefDerefTraits<API::Data>>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,mpark::variant<WTF::String,WTF::Ref<API::Data,WTF::RawPtrTraits<API::Data>,WTF::DefaultRefDerefTraits<API::Data>>>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,mpark::variant<WTF::String,WTF::Ref<API::Data,WTF::RawPtrTraits<API::Data>,WTF::DefaultRefDerefTraits<API::Data>>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<mpark::variant<WTF::String,WTF::Ref<API::Data,WTF::RawPtrTraits<API::Data>,WTF::DefaultRefDerefTraits<API::Data>>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::expand(v54, v36);
          }
        }

        else if (3 * v47 <= 4 * v46)
        {
          goto LABEL_59;
        }

LABEL_60:
        v48 = v58;
        v58 = 0;
        if (v48)
        {
          CFRelease(*(v48 + 1));
        }

        v16 = v53;
        a2 = v54;
        v17 = v51;
        v15 = v52;
LABEL_63:

        v22 = v59;
        v59 = 0;
        if (v22)
        {
LABEL_64:
          if (atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v22, v21);
          }
        }

LABEL_66:
        ++v18;
      }

      while (v18 != v16);
      v49 = [(WebKit *)v15 countByEnumeratingWithState:&v60 objects:v64 count:16];
      v16 = v49;
    }

    while (v49);
  }
}

void sub_19D690D90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, WTF::StringImpl *a20)
{
  if (*v20)
  {
    WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,mpark::variant<WTF::String,WTF::Ref<API::Data,WTF::RawPtrTraits<API::Data>,WTF::DefaultRefDerefTraits<API::Data>>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,mpark::variant<WTF::String,WTF::Ref<API::Data,WTF::RawPtrTraits<API::Data>,WTF::DefaultRefDerefTraits<API::Data>>>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,mpark::variant<WTF::String,WTF::Ref<API::Data,WTF::RawPtrTraits<API::Data>,WTF::DefaultRefDerefTraits<API::Data>>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<mpark::variant<WTF::String,WTF::Ref<API::Data,WTF::RawPtrTraits<API::Data>,WTF::DefaultRefDerefTraits<API::Data>>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(*v20, v23);
  }

  _Unwind_Resume(a1);
}

uint64_t WTF::HashMap<WTF::String,mpark::variant<WTF::String,WTF::Ref<API::Data,WTF::RawPtrTraits<API::Data>,WTF::DefaultRefDerefTraits<API::Data>>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<mpark::variant<WTF::String,WTF::Ref<API::Data,WTF::RawPtrTraits<API::Data>,WTF::DefaultRefDerefTraits<API::Data>>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<NSString * {__strong}&>(uint64_t a1, uint64_t *a2, WTF::StringImpl **a3, void *a4)
{
  if (*a3 == -1 || !*a3)
  {
    __break(0xC471u);
    JUMPOUT(0x19D691084);
  }

  v8 = *a2;
  if (*a2 || (WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,mpark::variant<WTF::String,WTF::Ref<API::Data,WTF::RawPtrTraits<API::Data>,WTF::DefaultRefDerefTraits<API::Data>>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,mpark::variant<WTF::String,WTF::Ref<API::Data,WTF::RawPtrTraits<API::Data>,WTF::DefaultRefDerefTraits<API::Data>>>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,mpark::variant<WTF::String,WTF::Ref<API::Data,WTF::RawPtrTraits<API::Data>,WTF::DefaultRefDerefTraits<API::Data>>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<mpark::variant<WTF::String,WTF::Ref<API::Data,WTF::RawPtrTraits<API::Data>,WTF::DefaultRefDerefTraits<API::Data>>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::expand(a2, 0), (v8 = *a2) != 0))
  {
    v9 = *(v8 - 8);
  }

  else
  {
    v9 = 0;
  }

  v10 = *(*a3 + 4);
  v29 = a1;
  v11 = a4;
  if (v10 < 0x100)
  {
    v12 = WTF::StringImpl::hashSlowCase(*a3);
  }

  else
  {
    v12 = v10 >> 8;
  }

  v13 = 0;
  for (i = 1; ; ++i)
  {
    v15 = v12 & v9;
    v16 = (v8 + 24 * (v12 & v9));
    v17 = *v16;
    if (*v16 != -1)
    {
      break;
    }

    v13 = v8 + 24 * v15;
LABEL_14:
    v12 = i + v15;
  }

  if (!v17)
  {
    if (v13)
    {
      *v13 = 0;
      *(v13 + 8) = 0;
      *(v13 + 16) = 0;
      --*(*a2 - 16);
      v16 = v13;
    }

    WTF::String::operator=(v16, a3);
    MEMORY[0x19EB02040](v30, *v11);
    v30[8] = 0;
    WTF::GenericHashTraits<mpark::variant<WTF::String,WTF::Ref<API::Data,WTF::RawPtrTraits<API::Data>,WTF::DefaultRefDerefTraits<API::Data>>>>::assignToEmpty<mpark::variant<WTF::String,WTF::Ref<API::Data,WTF::RawPtrTraits<API::Data>,WTF::DefaultRefDerefTraits<API::Data>>>,mpark::variant<WTF::String,WTF::Ref<API::Data,WTF::RawPtrTraits<API::Data>,WTF::DefaultRefDerefTraits<API::Data>>>>((v16 + 1), v30);
    result = mpark::detail::move_constructor<mpark::detail::traits<WTF::String,WTF::Ref<API::Data,WTF::RawPtrTraits<API::Data>,WTF::DefaultRefDerefTraits<API::Data>>>,(mpark::detail::Trait)1>::~move_constructor(v30, v19);
    v20 = *a2;
    v21 = v29;
    if (*a2)
    {
      v22 = *(v20 - 12) + 1;
    }

    else
    {
      v22 = 1;
    }

    *(v20 - 12) = v22;
    v25 = (*(v20 - 16) + v22);
    v26 = *(v20 - 4);
    if (v26 > 0x400)
    {
      if (v26 <= 2 * v25)
      {
LABEL_24:
        result = WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,mpark::variant<WTF::String,WTF::Ref<API::Data,WTF::RawPtrTraits<API::Data>,WTF::DefaultRefDerefTraits<API::Data>>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,mpark::variant<WTF::String,WTF::Ref<API::Data,WTF::RawPtrTraits<API::Data>,WTF::DefaultRefDerefTraits<API::Data>>>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,mpark::variant<WTF::String,WTF::Ref<API::Data,WTF::RawPtrTraits<API::Data>,WTF::DefaultRefDerefTraits<API::Data>>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<mpark::variant<WTF::String,WTF::Ref<API::Data,WTF::RawPtrTraits<API::Data>,WTF::DefaultRefDerefTraits<API::Data>>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::expand(a2, v16);
        v16 = result;
        v20 = *a2;
        if (*a2)
        {
          LODWORD(v26) = *(v20 - 4);
        }

        else
        {
          LODWORD(v26) = 0;
        }
      }
    }

    else if (3 * v26 <= 4 * v25)
    {
      goto LABEL_24;
    }

    v28 = v20 + 24 * v26;
    v27 = 1;
    goto LABEL_31;
  }

  result = WTF::equal(v17, *a3, a3);
  if (!result)
  {
    goto LABEL_14;
  }

  v23 = *a2;
  if (*a2)
  {
    v24 = *(v23 - 4);
  }

  else
  {
    v24 = 0;
  }

  v21 = v29;
  v27 = 0;
  v28 = v23 + 24 * v24;
LABEL_31:
  *v21 = v16;
  *(v21 + 8) = v28;
  *(v21 + 16) = v27;
  return result;
}

void sub_19D6910A8(_Unwind_Exception *a1, WTF::StringImpl *a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  mpark::detail::move_constructor<mpark::detail::traits<WTF::String,WTF::Ref<API::Data,WTF::RawPtrTraits<API::Data>,WTF::DefaultRefDerefTraits<API::Data>>>,(mpark::detail::Trait)1>::~move_constructor(va, a2);
  _Unwind_Resume(a1);
}

id WTF::dynamic_objc_cast<NSData>(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1 && (isType = WTF::ObjCTypeCastTraits<NSData>::isType(v1), v2, isType))
  {
    v4 = v2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void WTF::BlockPtrArc<void ()(void)>::fromCallable<WTF::Function<void ()(void)>>(uint64_t *a1@<X0>, void **a2@<X8>)
{
  v5 = malloc_type_malloc(0x28uLL, 0x10E004053C0834CuLL);
  *v5 = MEMORY[0x1E69E9818];
  v5[1] = 50331650;
  v5[2] = WTF::BlockPtrArc<void ()(void)>::fromCallable<WTF::Function<void ()(void)>>(WTF::Function<void ()(void)>)::{lambda(void *)#1}::__invoke;
  v5[3] = &WTF::BlockPtrArc<void ()(void)>::fromCallable<WTF::Function<void ()(void)>>(WTF::Function<void ()(void)>)::descriptor;
  v4 = *a1;
  *a1 = 0;
  v5[4] = v4;
  *a2 = _Block_copy(v5);
}

uint64_t WTF::BlockPtrArc<void ()(void)>::fromCallable<WTF::Function<void ()(void)>>(WTF::Function<void ()(void)>)::{lambda(void const*)#1}::__invoke(uint64_t a1)
{
  result = *(a1 + 32);
  *(a1 + 32) = 0;
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(WTF::StringImpl **a1, WTF::StringImpl *a2)
{
  v3 = *(a1 - 1);
  if (v3)
  {
    v4 = a1;
    do
    {
      v5 = *v4;
      if (*v4 != -1)
      {
        *v4 = 0;
        if (v5)
        {
          if (atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v5, a2);
          }
        }
      }

      ++v4;
      --v3;
    }

    while (v3);
  }

  return WTF::fastFree((a1 - 2), a2);
}

uint64_t WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,mpark::variant<WTF::String,WTF::Ref<API::Data,WTF::RawPtrTraits<API::Data>,WTF::DefaultRefDerefTraits<API::Data>>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,mpark::variant<WTF::String,WTF::Ref<API::Data,WTF::RawPtrTraits<API::Data>,WTF::DefaultRefDerefTraits<API::Data>>>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,mpark::variant<WTF::String,WTF::Ref<API::Data,WTF::RawPtrTraits<API::Data>,WTF::DefaultRefDerefTraits<API::Data>>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<mpark::variant<WTF::String,WTF::Ref<API::Data,WTF::RawPtrTraits<API::Data>,WTF::DefaultRefDerefTraits<API::Data>>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(uint64_t a1, WTF::StringImpl *a2)
{
  v3 = *(a1 - 4);
  if (v3)
  {
    v4 = a1 + 8;
    do
    {
      if (*(v4 - 8) != -1)
      {
        mpark::detail::move_constructor<mpark::detail::traits<WTF::String,WTF::Ref<API::Data,WTF::RawPtrTraits<API::Data>,WTF::DefaultRefDerefTraits<API::Data>>>,(mpark::detail::Trait)1>::~move_constructor(v4, a2);
        v5 = *(v4 - 8);
        *(v4 - 8) = 0;
        if (v5)
        {
          if (atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v5, a2);
          }
        }
      }

      v4 += 24;
      --v3;
    }

    while (v3);
  }

  return WTF::fastFree((a1 - 16), a2);
}

uint64_t mpark::detail::move_constructor<mpark::detail::traits<WTF::String,WTF::Ref<API::Data,WTF::RawPtrTraits<API::Data>,WTF::DefaultRefDerefTraits<API::Data>>>,(mpark::detail::Trait)1>::~move_constructor(uint64_t a1, WTF::StringImpl *a2)
{
  v3 = *(a1 + 8);
  if (v3 != 255)
  {
    v4 = *a1;
    *a1 = 0;
    if (v3)
    {
      if (v4)
      {
        CFRelease(v4[1]);
      }
    }

    else if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v4, a2);
    }
  }

  *(a1 + 8) = -1;
  return a1;
}

uint64_t WTF::ObjCTypeCastTraits<NSData>::isType(void *a1)
{
  v1 = a1;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

uint64_t WTF::ObjCTypeCastTraits<JSValue>::isType(void *a1)
{
  v1 = a1;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

WTF **WTF::HashTable<WTF::URL,WTF::URL,WTF::IdentityExtractor,WTF::DefaultHash<WTF::URL>,WTF::HashTraits<WTF::URL>,WTF::HashTraits<WTF::URL>,WTF::FastMalloc>::begin(uint64_t *a1)
{
  v1 = *a1;
  if (!*a1)
  {
    return 0;
  }

  if (*(v1 - 3))
  {
    return WTF::HashTable<WTF::URL,WTF::URL,WTF::IdentityExtractor,WTF::DefaultHash<WTF::URL>,WTF::HashTraits<WTF::URL>,WTF::HashTraits<WTF::URL>,WTF::FastMalloc>::makeConstIterator(a1, v1);
  }

  return &v1[5 * *(v1 - 1)];
}

WTF **WTF::HashTable<WTF::URL,WTF::URL,WTF::IdentityExtractor,WTF::DefaultHash<WTF::URL>,WTF::HashTraits<WTF::URL>,WTF::HashTraits<WTF::URL>,WTF::FastMalloc>::makeConstIterator(uint64_t *a1, WTF **a2)
{
  v2 = a2;
  v3 = *a1;
  if (*a1)
  {
    v4 = *(v3 - 4);
  }

  else
  {
    v4 = 0;
  }

  v5 = (v3 + 40 * v4);
  if (v5 != a2)
  {
    while ((WTF::HashTraitsEmptyValueChecker<WTF::HashTraits<WTF::URL>,false>::isEmptyValue<WTF::URL>(v2) & 1) != 0 || *v2 == -1)
    {
      v2 += 5;
      if (v2 == v5)
      {
        return v5;
      }
    }
  }

  return v2;
}

uint64_t WTF::HashTraitsEmptyValueChecker<WTF::HashTraits<WTF::URL>,false>::isEmptyValue<WTF::URL>(WTF **a1)
{
  WTF::URL::URL(&v7);
  v4 = WTF::equal(*a1, v7, v2);
  v5 = v7;
  v7 = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, v3);
  }

  return v4;
}

void sub_19D691580(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
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

void *WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::begin(void **a1)
{
  result = *a1;
  if (!result)
  {
    return 0;
  }

  v2 = *(result - 1);
  v3 = &result[v2];
  if (!*(result - 3))
  {
    return &result[v2];
  }

  if (v2)
  {
    v4 = 8 * v2;
    while ((*result + 1) <= 1)
    {
      ++result;
      v4 -= 8;
      if (!v4)
      {
        return v3;
      }
    }
  }

  return result;
}

uint64_t WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::computeBestTableSize(uint64_t result)
{
  if (result > 1)
  {
    v4 = __clz(result - 1);
    if (!v4)
    {
      __break(1u);
      return result;
    }

    v2 = (1 << -v4);
    v1 = result;
    if (result > 0x400)
    {
      if (v2 > 2 * result)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else
  {
    v1 = result;
    v2 = 1;
  }

  if (3 * v2 <= 4 * v1)
  {
LABEL_4:
    LODWORD(v2) = 2 * v2;
  }

LABEL_5:
  if (v2 > 0x400)
  {
    v3 = 0.416666667;
  }

  else
  {
    v3 = 0.604166667;
  }

  if (v2 * v3 <= result)
  {
    LODWORD(v2) = 2 * v2;
  }

  if (v2 <= 8)
  {
    return 8;
  }

  else
  {
    return v2;
  }
}

WTF::StringImpl **WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>@<X0>(uint64_t *a1@<X0>, WTF::StringImpl **a2@<X1>, const WTF::StringImpl *a3@<X2>, uint64_t a4@<X8>)
{
  if (*a2 == -1)
  {
    __break(0xC471u);
    JUMPOUT(0x19D69187CLL);
  }

  if (!*a2)
  {
    __break(0xC471u);
    JUMPOUT(0x19D69189CLL);
  }

  v7 = *a1;
  if (*a1 || (WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::expand(a1, 0), (v7 = *a1) != 0))
  {
    v8 = *(v7 - 8);
  }

  else
  {
    v8 = 0;
  }

  v9 = *(*a2 + 4);
  if (v9 < 0x100)
  {
    v10 = WTF::StringImpl::hashSlowCase(*a2);
  }

  else
  {
    v10 = v9 >> 8;
  }

  v11 = 0;
  for (i = 1; ; ++i)
  {
    v13 = v10 & v8;
    v14 = (v7 + 8 * (v10 & v8));
    v15 = *v14;
    if (!*v14)
    {
      if (v11)
      {
        *v11 = 0;
        --*(*a1 - 16);
        v14 = v11;
      }

      v16 = *a2;
      *a2 = 0;
      result = *v14;
      *v14 = v16;
      if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        result = WTF::StringImpl::destroy(result, a2);
      }

      v18 = *a1;
      if (*a1)
      {
        v19 = *(v18 - 12) + 1;
      }

      else
      {
        v19 = 1;
      }

      *(v18 - 12) = v19;
      v20 = (*(v18 - 16) + v19);
      v21 = *(v18 - 4);
      if (v21 > 0x400)
      {
        if (v21 > 2 * v20)
        {
          goto LABEL_17;
        }
      }

      else if (3 * v21 > 4 * v20)
      {
LABEL_17:
        v22 = v18 + 8 * v21;
        v23 = 1;
        goto LABEL_18;
      }

      result = WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::expand(a1, v14);
      v14 = result;
      v18 = *a1;
      if (*a1)
      {
        v21 = *(v18 - 4);
      }

      else
      {
        v21 = 0;
      }

      goto LABEL_17;
    }

    if (v15 == -1)
    {
      v11 = (v7 + 8 * v13);
      goto LABEL_29;
    }

    result = WTF::equal(v15, *a2, a3);
    if (result)
    {
      break;
    }

LABEL_29:
    v10 = i + v13;
  }

  v24 = *a1;
  if (*a1)
  {
    v25 = *(v24 - 4);
  }

  else
  {
    v25 = 0;
  }

  v23 = 0;
  v22 = v24 + 8 * v25;
LABEL_18:
  *a4 = v14;
  *(a4 + 8) = v22;
  *(a4 + 16) = v23;
  return result;
}

WTF::StringImpl **WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::expand(uint64_t *a1, WTF::StringImpl **a2)
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

  return WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::rehash(a1, v5, a2);
}

WTF::StringImpl **WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::rehash(uint64_t *a1, unsigned int a2, WTF::StringImpl **a3)
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

  v9 = WTF::fastZeroedMalloc((8 * a2 + 16));
  *a1 = (v9 + 4);
  v9[2] = a2 - 1;
  v9[3] = a2;
  *v9 = 0;
  v9[1] = v8;
  v11 = 0;
  if (v7)
  {
    v12 = v6;
    v13 = v7;
    do
    {
      if (*v12)
      {
        if (*v12 != -1)
        {
          v14 = WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::lookupForReinsert(a1, v12);
          v15 = *v14;
          *v14 = 0;
          if (v15 && atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v15, v10);
          }

          v16 = *v12;
          *v12 = 0;
          *v14 = v16;
          v17 = *v12;
          *v12 = 0;
          if (v17 && atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v17, v10);
          }

          if (v12 == a3)
          {
            v11 = v14;
          }
        }
      }

      else
      {
        *v12 = 0;
      }

      ++v12;
      --v13;
    }

    while (v13);
  }

  else
  {
    result = 0;
    if (!v6)
    {
      return result;
    }
  }

  WTF::fastFree((v6 - 16), v10);
  return v11;
}

uint64_t WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::lookupForReinsert(uint64_t *a1, WTF::StringImpl **a2)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = *(v2 - 8);
  }

  else
  {
    v3 = 0;
  }

  v4 = *(*a2 + 4);
  if (v4 < 0x100)
  {
    v5 = WTF::StringImpl::hashSlowCase(*a2);
  }

  else
  {
    v5 = v4 >> 8;
  }

  v6 = 0;
  do
  {
    v7 = v5 & v3;
    v5 = ++v6 + v7;
  }

  while (*(v2 + 8 * v7));
  return v2 + 8 * v7;
}

uint64_t WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,mpark::variant<WTF::String,WTF::Ref<API::Data,WTF::RawPtrTraits<API::Data>,WTF::DefaultRefDerefTraits<API::Data>>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,mpark::variant<WTF::String,WTF::Ref<API::Data,WTF::RawPtrTraits<API::Data>,WTF::DefaultRefDerefTraits<API::Data>>>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,mpark::variant<WTF::String,WTF::Ref<API::Data,WTF::RawPtrTraits<API::Data>,WTF::DefaultRefDerefTraits<API::Data>>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<mpark::variant<WTF::String,WTF::Ref<API::Data,WTF::RawPtrTraits<API::Data>,WTF::DefaultRefDerefTraits<API::Data>>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::expand(uint64_t *a1, uint64_t a2)
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

  return WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,mpark::variant<WTF::String,WTF::Ref<API::Data,WTF::RawPtrTraits<API::Data>,WTF::DefaultRefDerefTraits<API::Data>>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,mpark::variant<WTF::String,WTF::Ref<API::Data,WTF::RawPtrTraits<API::Data>,WTF::DefaultRefDerefTraits<API::Data>>>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,mpark::variant<WTF::String,WTF::Ref<API::Data,WTF::RawPtrTraits<API::Data>,WTF::DefaultRefDerefTraits<API::Data>>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<mpark::variant<WTF::String,WTF::Ref<API::Data,WTF::RawPtrTraits<API::Data>,WTF::DefaultRefDerefTraits<API::Data>>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::rehash(a1, v5, a2);
}

uint64_t WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,mpark::variant<WTF::String,WTF::Ref<API::Data,WTF::RawPtrTraits<API::Data>,WTF::DefaultRefDerefTraits<API::Data>>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,mpark::variant<WTF::String,WTF::Ref<API::Data,WTF::RawPtrTraits<API::Data>,WTF::DefaultRefDerefTraits<API::Data>>>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,mpark::variant<WTF::String,WTF::Ref<API::Data,WTF::RawPtrTraits<API::Data>,WTF::DefaultRefDerefTraits<API::Data>>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<mpark::variant<WTF::String,WTF::Ref<API::Data,WTF::RawPtrTraits<API::Data>,WTF::DefaultRefDerefTraits<API::Data>>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::rehash(uint64_t *a1, unsigned int a2, uint64_t a3)
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

  v9 = WTF::fastMalloc((24 * a2 + 16));
  if (a2)
  {
    v11 = a2;
    v12 = v9 + 4;
    do
    {
      *v12 = 0;
      *(v12 + 1) = 0;
      *(v12 + 16) = 0;
      v12 += 6;
      --v11;
    }

    while (v11);
  }

  *a1 = (v9 + 4);
  v9[2] = a2 - 1;
  v9[3] = a2;
  *v9 = 0;
  v9[1] = v8;
  v13 = 0;
  if (v7)
  {
    v14 = v6;
    v15 = v7;
    do
    {
      if (*v14 != -1)
      {
        if (*v14)
        {
          v17 = WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,mpark::variant<WTF::String,WTF::Ref<API::Data,WTF::RawPtrTraits<API::Data>,WTF::DefaultRefDerefTraits<API::Data>>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,mpark::variant<WTF::String,WTF::Ref<API::Data,WTF::RawPtrTraits<API::Data>,WTF::DefaultRefDerefTraits<API::Data>>>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,mpark::variant<WTF::String,WTF::Ref<API::Data,WTF::RawPtrTraits<API::Data>,WTF::DefaultRefDerefTraits<API::Data>>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<mpark::variant<WTF::String,WTF::Ref<API::Data,WTF::RawPtrTraits<API::Data>,WTF::DefaultRefDerefTraits<API::Data>>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::lookupForReinsert(a1, v14);
          mpark::detail::move_constructor<mpark::detail::traits<WTF::String,WTF::Ref<API::Data,WTF::RawPtrTraits<API::Data>,WTF::DefaultRefDerefTraits<API::Data>>>,(mpark::detail::Trait)1>::~move_constructor(v17 + 8, v18);
          v20 = *v17;
          *v17 = 0;
          if (v20 && atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v20, v19);
          }

          v21 = *v14;
          *v14 = 0;
          *v17 = v21;
          *(v17 + 8) = 0;
          *(v17 + 16) = -1;
          v22 = *(v14 + 16);
          if (v22 != 255)
          {
            v23 = *(v14 + 8);
            *(v14 + 8) = 0;
            *(v17 + 8) = v23;
            *(v17 + 16) = v22;
          }

          mpark::detail::move_constructor<mpark::detail::traits<WTF::String,WTF::Ref<API::Data,WTF::RawPtrTraits<API::Data>,WTF::DefaultRefDerefTraits<API::Data>>>,(mpark::detail::Trait)1>::~move_constructor(v14 + 8, v19);
          v24 = *v14;
          *v14 = 0;
          if (v24 && atomic_fetch_add_explicit(v24, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v24, v10);
          }

          if (v14 == a3)
          {
            v13 = v17;
          }
        }

        else
        {
          mpark::detail::move_constructor<mpark::detail::traits<WTF::String,WTF::Ref<API::Data,WTF::RawPtrTraits<API::Data>,WTF::DefaultRefDerefTraits<API::Data>>>,(mpark::detail::Trait)1>::~move_constructor(v14 + 8, v10);
          v16 = *v14;
          *v14 = 0;
          if (v16)
          {
            if (atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v16, v10);
            }
          }
        }
      }

      v14 += 24;
      --v15;
    }

    while (v15);
  }

  else
  {
    result = 0;
    if (!v6)
    {
      return result;
    }
  }

  WTF::fastFree((v6 - 16), v10);
  return v13;
}

uint64_t WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,mpark::variant<WTF::String,WTF::Ref<API::Data,WTF::RawPtrTraits<API::Data>,WTF::DefaultRefDerefTraits<API::Data>>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,mpark::variant<WTF::String,WTF::Ref<API::Data,WTF::RawPtrTraits<API::Data>,WTF::DefaultRefDerefTraits<API::Data>>>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,mpark::variant<WTF::String,WTF::Ref<API::Data,WTF::RawPtrTraits<API::Data>,WTF::DefaultRefDerefTraits<API::Data>>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<mpark::variant<WTF::String,WTF::Ref<API::Data,WTF::RawPtrTraits<API::Data>,WTF::DefaultRefDerefTraits<API::Data>>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::lookupForReinsert(uint64_t *a1, WTF::StringImpl **a2)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = *(v2 - 8);
  }

  else
  {
    v3 = 0;
  }

  v4 = *(*a2 + 4);
  if (v4 < 0x100)
  {
    v5 = WTF::StringImpl::hashSlowCase(*a2);
  }

  else
  {
    v5 = v4 >> 8;
  }

  v6 = 0;
  do
  {
    v7 = v5 & v3;
    v5 = ++v6 + (v5 & v3);
  }

  while (*(v2 + 24 * v7));
  return v2 + 24 * v7;
}

void WTF::GenericHashTraits<mpark::variant<WTF::String,WTF::Ref<API::Data,WTF::RawPtrTraits<API::Data>,WTF::DefaultRefDerefTraits<API::Data>>>>::assignToEmpty<mpark::variant<WTF::String,WTF::Ref<API::Data,WTF::RawPtrTraits<API::Data>,WTF::DefaultRefDerefTraits<API::Data>>>,mpark::variant<WTF::String,WTF::Ref<API::Data,WTF::RawPtrTraits<API::Data>,WTF::DefaultRefDerefTraits<API::Data>>>>(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = *(a2 + 8);
  if (v3 == 255)
  {
    if (v4 == 255)
    {
      return;
    }

LABEL_5:
    v6 = a1;
    _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_10assignmentINS0_6traitsIJN3WTF6StringENS6_3RefIN3API4DataENS6_12RawPtrTraitsISA_EENS6_21DefaultRefDerefTraitsISA_EEEEEEEE14generic_assignINS0_15move_assignmentISG_LNS0_5TraitE1EEEEEvOT_EUlRSM_OT0_E_JRSH_SL_EEEDcmSN_DpOT0_(v4, &v6, a1, a2);
    return;
  }

  if (v4 != 255)
  {
    goto LABEL_5;
  }

  v5 = *a1;
  *a1 = 0;
  if (v3)
  {
    if (v5)
    {
      CFRelease(*(v5 + 1));
    }
  }

  else if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, a2);
  }

  *(a1 + 8) = -1;
}

void _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_10assignmentINS0_6traitsIJN3WTF6StringENS6_3RefIN3API4DataENS6_12RawPtrTraitsISA_EENS6_21DefaultRefDerefTraitsISA_EEEEEEEE14generic_assignINS0_15move_assignmentISG_LNS0_5TraitE1EEEEEvOT_EUlRSM_OT0_E_JRSH_SL_EEEDcmSN_DpOT0_(uint64_t a1, WTF::StringImpl *a2, WTF::StringImpl **a3, WTF::StringImpl **a4)
{
  v5 = *a2;
  v6 = *(*a2 + 8);
  if (a1)
  {
    if (v6 != 255)
    {
      if (v6 == 1)
      {
        v7 = *a4;
        *a4 = 0;
        v8 = *a3;
        *a3 = v7;
        if (v8)
        {
          v9 = *(v8 + 1);

          CFRelease(v9);
        }

        return;
      }

      v12 = *v5;
      *v5 = 0;
      if (v6)
      {
        if (v12)
        {
          CFRelease(v12[1]);
        }
      }

      else if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v12, a2);
      }
    }

    v15 = *a4;
    *a4 = 0;
    *v5 = v15;
    *(v5 + 8) = 1;
    return;
  }

  if (v6 == 255)
  {
LABEL_20:
    v14 = *a4;
    *a4 = 0;
    *v5 = v14;
    *(v5 + 8) = 0;
    return;
  }

  if (*(*a2 + 8))
  {
    v13 = *v5;
    *v5 = 0;
    if (v13)
    {
      CFRelease(v13[1]);
    }

    goto LABEL_20;
  }

  v10 = *a4;
  *a4 = 0;
  v11 = *a3;
  *a3 = v10;
  if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {

    WTF::StringImpl::destroy(v11, a2);
  }
}

uint64_t WebKit::CtapAuthenticator::CtapAuthenticator(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  WebKit::FidoAuthenticator::FidoAuthenticator(a1, a2);
  *a1 = &unk_1F10E75F0;
  fido::AuthenticatorGetInfoResponse::AuthenticatorGetInfoResponse(a1 + 840, a3);
  *(a1 + 1032) = 0;
  *(a1 + 1033) = 0;
  *(a1 + 1040) = 0;
  *(a1 + 1048) = 0;
  WTF::Vector<WTF::Ref<WebKit::AuthenticatorTransportService,WTF::RawPtrTraits<WebKit::AuthenticatorTransportService>,WTF::DefaultRefDerefTraits<WebKit::AuthenticatorTransportService>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(a1 + 1056);
  WTF::Vector<WTF::Ref<WebKit::AuthenticatorTransportService,WTF::RawPtrTraits<WebKit::AuthenticatorTransportService>,WTF::DefaultRefDerefTraits<WebKit::AuthenticatorTransportService>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(a1 + 1072);
  WTF::Vector<WTF::Ref<WebKit::AuthenticatorTransportService,WTF::RawPtrTraits<WebKit::AuthenticatorTransportService>,WTF::DefaultRefDerefTraits<WebKit::AuthenticatorTransportService>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(a1 + 1088);
  return a1;
}

{
  WebKit::CtapAuthenticator::CtapAuthenticator(a1, a2, a3);
  return a1;
}

uint64_t fido::AuthenticatorGetInfoResponse::AuthenticatorGetInfoResponse(uint64_t a1, uint64_t a2)
{
  fido::AuthenticatorGetInfoResponse::AuthenticatorGetInfoResponse(a1, a2);
  return a1;
}

{
  std::set<fido::ProtocolVersion,std::less<fido::ProtocolVersion>,WTF::FastAllocator<fido::ProtocolVersion>>::set[abi:sn200100](a1, a2);
  WTF::Vector<WTF::Ref<WebCore::AuthenticatorAssertionResponse,WTF::RawPtrTraits<WebCore::AuthenticatorAssertionResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorAssertionResponse>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(a1 + 24, (a2 + 24));
  *(a1 + 40) = *(a2 + 40);
  std::optional<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>::optional[abi:sn200100]((a1 + 48), a2 + 48);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 84) = *(a2 + 84);
  std::optional<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>::optional[abi:sn200100]((a1 + 88), a2 + 88);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 120) = *(a2 + 120);
  std::optional<WTF::Vector<WebCore::AuthenticatorTransport,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>::optional[abi:sn200100]((a1 + 128), a2 + 128);
  *(a1 + 152) = *(a2 + 152);
  std::optional<WTF::Vector<WebCore::PublicKeyCredentialParameters,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>::optional[abi:sn200100]((a1 + 160), a2 + 160);
  *(a1 + 184) = *(a2 + 184);
  return a1;
}

fido::PinParameters *WebKit::CtapAuthenticator::makeCredential(WebKit::CtapAuthenticator *this)
{
  v50 = *MEMORY[0x1E69E9840];
  v34 = this;
  oslog = qword_1ED641530;
  v32 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(qword_1ED641530, OS_LOG_TYPE_DEFAULT))
  {
    v2 = oslog;
    v3 = v32;
    WebKit::CtapAuthenticator::aaguidForDebugging(&v30, this);
    WTF::String::utf8();
    v4 = WTF::CString::data(&v31);
    WebKit::FidoAuthenticator::transportForDebugging(&v28, this);
    WTF::String::utf8();
    v5 = WTF::CString::data(&v29);
    __os_log_helper_16_2_3_8_0_8_32_8_32(buf, this, v4, v5);
    _os_log_impl(&dword_19D52D000, v2, v3, "%p [aaguid=%s, transport=%s] - CtapAuthenticator::makeCredential", buf, 0x20u);
    WTF::CString::~CString(&v29);
    v36 = &v28;
    v37 = &v28;
    v40 = &v28;
    v41[1] = &v28;
    v41[0] = 0;
    v48 = &v28;
    v47 = v41;
    v44 = std::exchange[abi:sn200100]<WTF::StringImpl *,decltype(nullptr) &>(&v28);
    if (v44)
    {
      WTF::StringImpl::deref(v44);
    }

    WTF::CString::~CString(&v31);
    v35 = &v30;
    v38 = &v30;
    v39 = &v30;
    v42[1] = &v30;
    v42[0] = 0;
    v46 = &v30;
    v45 = v42;
    v43 = std::exchange[abi:sn200100]<WTF::StringImpl *,decltype(nullptr) &>(&v30);
    if (v43)
    {
      WTF::StringImpl::deref(v43);
    }
  }

  v6 = WebKit::Authenticator::requestData(this);
  std::get<WebCore::PublicKeyCredentialCreationOptions,WebCore::PublicKeyCredentialCreationOptions,WebCore::PublicKeyCredentialRequestOptions>(v6 + 16);
  v27 = v7;
  if (WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::size(v7 + 104) <= 1)
  {
    return WebKit::CtapAuthenticator::continueMakeCredentialAfterCheckExcludedCredentials(this, 0);
  }

  v26 = 1;
  v8 = fido::AuthenticatorGetInfoResponse::maxCredentialIDLength((this + 840));
  if (std::optional<unsigned int>::operator BOOL[abi:sn200100](v8))
  {
    v9 = fido::AuthenticatorGetInfoResponse::maxCredentialCountInList((this + 840));
    if (std::optional<unsigned int>::operator BOOL[abi:sn200100](v9))
    {
      v10 = fido::AuthenticatorGetInfoResponse::maxCredentialCountInList((this + 840));
      std::optional<unsigned int>::operator*[abi:sn200100](v10);
      v26 = *v11;
    }
  }

  WTF::Vector<WebCore::PublicKeyCredentialDescriptor,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v24, v27 + 104);
  v12 = v26;
  v23 = *fido::AuthenticatorGetInfoResponse::maxCredentialIDLength((this + 840));
  WTF::Vector<WTF::Vector<WebCore::PublicKeyCredentialDescriptor,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::operator=(this + 1072, v25);
  WTF::Vector<WTF::Vector<WebCore::PublicKeyCredentialDescriptor,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v25);
  WTF::Vector<WebCore::PublicKeyCredentialDescriptor,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v24);
  if (!WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::size(this + 1072))
  {
    return WebKit::CtapAuthenticator::continueMakeCredentialAfterCheckExcludedCredentials(this, 0);
  }

  *(this + 131) = 0;
  std::optional<fido::PinParameters>::optional[abi:sn200100](v22);
  if (!WTF::Vector<WebCore::PublicKeyCredentialDescriptor,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::isEmpty(this + 1088))
  {
    v20 = 1;
    WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(&v21, this + 1088);
    std::optional<fido::PinParameters>::operator=[abi:sn200100]<fido::PinParameters,void>(v22, &v20);
    fido::PinParameters::~PinParameters(&v20);
  }

  WebKit::Authenticator::requestData(this);
  WTF::Vector<WTF::Vector<WebCore::PublicKeyCredentialDescriptor,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::operator[](this + 1072, *(this + 131));
  std::optional<fido::PinParameters>::optional[abi:sn200100](v18, v22);
  fido::encodeSilentGetAssertion();
  std::optional<fido::PinParameters>::~optional(v18);
  WebKit::FidoAuthenticator::protectedDriver(this, &v17);
  v14 = WTF::RefPtr<API::WebAuthenticationPanel,WTF::RawPtrTraits<API::WebAuthenticationPanel>,WTF::DefaultRefDerefTraits<API::WebAuthenticationPanel>>::get(&v17);
  WTF::WeakPtr<WebKit::AuthenticatorManager,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>::WeakPtr<void>(&v15, this);
  WTF::Function<void ()(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>::Function<WebKit::CtapAuthenticator::makeCredential(void)::$_0,void>(&v16, &v15);
  (*(*v14 + 16))(v14, v19, &v16);
  WTF::Function<void ()(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>::~Function(&v16);
  WebKit::CtapAuthenticator::makeCredential(void)::$_0::~$_0(&v15);
  WTF::Ref<WebKit::CtapDriver,WTF::RawPtrTraits<WebKit::CtapDriver>,WTF::DefaultRefDerefTraits<WebKit::CtapDriver>>::~Ref(&v17);
  WTF::Vector<WebCore::AuthenticatorTransport,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v19);
  return std::optional<fido::PinParameters>::~optional(v22);
}

uint64_t *WebKit::CtapAuthenticator::aaguidForDebugging(WebKit::CtapAuthenticator *this, uint64_t a2)
{
  v8 = this;
  v7 = a2;
  v3 = fido::AuthenticatorGetInfoResponse::aaguid((a2 + 840));
  std::span<unsigned char const,16ul>::span[abi:sn200100]<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(&v5, v3);
  WTF::UUID::UUID(v6, v5);
  return WTF::UUID::toString(this, v6);
}

uint64_t WTF::CString::data(WTF::CStringBuffer **this)
{
  v5[2] = this;
  if (!WTF::RefPtr<WebKit::AuthenticatorPresenterCoordinator,WTF::RawPtrTraits<WebKit::AuthenticatorPresenterCoordinator>,WTF::DefaultRefDerefTraits<WebKit::AuthenticatorPresenterCoordinator>>::operator BOOL(this))
  {
    return 0;
  }

  v5[3] = this;
  v5[4] = this;
  v2 = WTF::CStringBuffer::spanIncludingNullTerminator(*this);
  v5[1] = v3;
  v5[0] = v2;
  return std::span<char const,18446744073709551615ul>::data[abi:sn200100](v5);
}

double __os_log_helper_16_2_3_8_0_8_32_8_32(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *&result = 134218498;
  *a1 = 134218498;
  *(a1 + 4) = a2;
  *(a1 + 12) = 2080;
  *(a1 + 14) = a3;
  *(a1 + 22) = 2080;
  *(a1 + 24) = a4;
  return result;
}

void WTF::CString::~CString(WTF::CString *this)
{
  WTF::CString::~CString(this);
}

{
  v1[1] = this;
  v1[0] = 0;
  v4 = this;
  v3 = v1;
  v2 = std::exchange[abi:sn200100]<WTF::StringImpl *,decltype(nullptr) &>(this);
  if (v2)
  {
    WTF::RefCounted<WTF::CStringBuffer>::deref(v2);
  }
}

void std::optional<unsigned int>::operator*[abi:sn200100](uint64_t a1)
{
  if ((std::__optional_storage_base<unsigned int,false>::has_value[abi:sn200100](a1) & 1) == 0)
  {
    __break(1u);
  }

  std::__to_address[abi:sn200100]<char const>();
}

void WebKit::anonymous namespace::batchesForCredentials(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v30[1] = a1;
  v30[0] = a4;
  v29 = a2;
  v28 = a3;
  v27 = 0;
  WTF::Vector<WTF::Ref<WebKit::AuthenticatorTransportService,WTF::RawPtrTraits<WebKit::AuthenticatorTransportService>,WTF::DefaultRefDerefTraits<WebKit::AuthenticatorTransportService>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(a1);
  v26 = a2;
  v25 = WTF::Vector<WTF::Ref<WebKit::AuthenticatorTransportService,WTF::RawPtrTraits<WebKit::AuthenticatorTransportService>,WTF::DefaultRefDerefTraits<WebKit::AuthenticatorTransportService>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::begin(a2);
  v24 = WTF::Vector<WebCore::PublicKeyCredentialDescriptor,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::end(a2);
  while (v25 != v24)
  {
    WebCore::PublicKeyCredentialDescriptor::PublicKeyCredentialDescriptor(v22, v25);
    v6 = std::optional<unsigned int>::operator BOOL[abi:sn200100](v30);
    v20 = 0;
    v7 = 0;
    if (v6)
    {
      WebCore::BufferSource::BufferSource(v21, &v23);
      v20 = 1;
      v8 = WebCore::BufferSource::length(v21);
      std::optional<unsigned int>::operator*[abi:sn200100](v30);
      v7 = v8 > *v9;
    }

    if (v20)
    {
      WebCore::BufferSource::~BufferSource(v21);
    }

    if (v7)
    {
      v19 = 3;
    }

    else
    {
      if (!WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::size(a1) || (v10 = WTF::Vector<WTF::Vector<WebCore::PublicKeyCredentialDescriptor,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::last(a1), v11 = WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::size(v10), v11 >= v28))
      {
        WTF::Vector<WTF::Ref<WebKit::AuthenticatorTransportService,WTF::RawPtrTraits<WebKit::AuthenticatorTransportService>,WTF::DefaultRefDerefTraits<WebKit::AuthenticatorTransportService>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v18);
        v30[3] = a1;
        v30[2] = v18;
        v33 = a1;
        v32 = v18;
        v35 = a1;
        v34 = v18;
        v12 = WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::size(a1);
        if (v12 == WTF::Vector<WTF::Ref<WebKit::AuthenticatorTransportService,WTF::RawPtrTraits<WebKit::AuthenticatorTransportService>,WTF::DefaultRefDerefTraits<WebKit::AuthenticatorTransportService>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::capacity(a1))
        {
          WTF::Vector<WTF::Vector<WebCore::PublicKeyCredentialDescriptor,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::Vector<WebCore::PublicKeyCredentialDescriptor,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(a1, v34);
        }

        else
        {
          WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::asanSetInitialBufferSizeTo();
          WTF::Vector<WebCore::PublicKeyCredentialParameters,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::end(a1);
          WTF::Vector<WebCore::PublicKeyCredentialDescriptor,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::operator new();
          WTF::Vector<WTF::Ref<WebCore::AuthenticatorAssertionResponse,WTF::RawPtrTraits<WebCore::AuthenticatorAssertionResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorAssertionResponse>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v13, v34);
          ++*(a1 + 12);
        }

        v36 = 1;
        WTF::Vector<WebCore::PublicKeyCredentialDescriptor,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v18);
      }

      v31 = WTF::Vector<WTF::Vector<WebCore::PublicKeyCredentialDescriptor,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::last(a1);
      v30[4] = v22;
      v38 = v31;
      v37 = v22;
      v14 = v31;
      v15 = WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::size(v31);
      if (v15 == WTF::Vector<WTF::Ref<WebKit::AuthenticatorTransportService,WTF::RawPtrTraits<WebKit::AuthenticatorTransportService>,WTF::DefaultRefDerefTraits<WebKit::AuthenticatorTransportService>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::capacity(v14))
      {
        WTF::Vector<WebCore::PublicKeyCredentialDescriptor,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::PublicKeyCredentialDescriptor&>(v14, v37);
      }

      else
      {
        WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::asanSetInitialBufferSizeTo();
        v16 = WTF::Vector<WebCore::PublicKeyCredentialDescriptor,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::end(v14);
        v17 = operator new(40, 0, v16);
        WebCore::PublicKeyCredentialDescriptor::PublicKeyCredentialDescriptor(v17, v37);
        ++*(v14 + 12);
      }

      v39 = 1;
      v19 = 0;
    }

    WebCore::PublicKeyCredentialDescriptor::~PublicKeyCredentialDescriptor(v22);
    v25 = (v25 + 40);
  }
}

uint64_t WTF::Vector<WebCore::PublicKeyCredentialDescriptor,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(uint64_t a1, uint64_t a2)
{
  WTF::Vector<WebCore::PublicKeyCredentialDescriptor,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(a1, a2);
  return a1;
}

{
  v3 = WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::size(a2);
  v4 = WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::size(a2);
  WTF::VectorBuffer<WebCore::PublicKeyCredentialDescriptor,0ul,WTF::FastMalloc>::VectorBuffer(a1, v3, v4);
  WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::size(a2);
  WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::asanSetInitialBufferSizeTo();
  if (WTF::Vector<WTF::Ref<WebKit::AuthenticatorTransportService,WTF::RawPtrTraits<WebKit::AuthenticatorTransportService>,WTF::DefaultRefDerefTraits<WebKit::AuthenticatorTransportService>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::begin(a1))
  {
    v5 = WTF::Vector<WTF::Ref<WebKit::AuthenticatorTransportService,WTF::RawPtrTraits<WebKit::AuthenticatorTransportService>,WTF::DefaultRefDerefTraits<WebKit::AuthenticatorTransportService>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::begin(a2);
    v6 = WTF::Vector<WebCore::PublicKeyCredentialDescriptor,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::end(a2);
    v7 = WTF::Vector<WTF::Ref<WebKit::AuthenticatorTransportService,WTF::RawPtrTraits<WebKit::AuthenticatorTransportService>,WTF::DefaultRefDerefTraits<WebKit::AuthenticatorTransportService>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::begin(a1);
    WTF::VectorTypeOperations<WebCore::PublicKeyCredentialDescriptor>::uninitializedCopy(v5, v6, v7);
  }

  return a1;
}

void WTF::Vector<WTF::Vector<WebCore::PublicKeyCredentialDescriptor,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::operator=(uint64_t a1, uint64_t *a2)
{
  if (*(a1 + 12))
  {
    v3 = WTF::Vector<WTF::Ref<WebKit::AuthenticatorTransportService,WTF::RawPtrTraits<WebKit::AuthenticatorTransportService>,WTF::DefaultRefDerefTraits<WebKit::AuthenticatorTransportService>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::begin(a1);
    v4 = WTF::Vector<WebCore::PublicKeyCredentialParameters,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::end(a1);
    WTF::VectorTypeOperations<WTF::Vector<WebCore::PublicKeyCredentialDescriptor,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>::destruct(v3, v4);
  }

  WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::asanSetBufferSizeToFullCapacity(a1);
  WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::asanSetBufferSizeToFullCapacity(a2);
  WTF::VectorBuffer<unsigned char,0ul,WTF::FastMalloc>::adopt(a1, a2);
  WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::asanSetInitialBufferSizeTo();
  WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::asanSetInitialBufferSizeTo();
}

uint64_t WTF::Vector<WTF::Vector<WebCore::PublicKeyCredentialDescriptor,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1)
{
  WTF::Vector<WTF::Vector<WebCore::PublicKeyCredentialDescriptor,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(a1);
  return a1;
}

{
  if (*(a1 + 12))
  {
    v2 = WTF::Vector<WTF::Ref<WebKit::AuthenticatorTransportService,WTF::RawPtrTraits<WebKit::AuthenticatorTransportService>,WTF::DefaultRefDerefTraits<WebKit::AuthenticatorTransportService>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::begin(a1);
    v3 = WTF::Vector<WebCore::PublicKeyCredentialParameters,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::end(a1);
    WTF::VectorTypeOperations<WTF::Vector<WebCore::PublicKeyCredentialDescriptor,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>::destruct(v2, v3);
  }

  WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::asanSetInitialBufferSizeTo();
  WTF::VectorBuffer<WTF::KeyValuePair<WTF::String,WebCore::AuthenticationExtensionsClientInputs::PRFValues>,0ul,WTF::FastMalloc>::~VectorBuffer(a1);
  return a1;
}

uint64_t WebKit::CtapAuthenticator::continueMakeCredentialAfterCheckExcludedCredentials(WebKit::CtapAuthenticator *this, char a2)
{
  v122 = *MEMORY[0x1E69E9840];
  v77 = this;
  v76 = a2;
  WTF::Vector<WTF::Ref<WebKit::AuthenticatorTransportService,WTF::RawPtrTraits<WebKit::AuthenticatorTransportService>,WTF::DefaultRefDerefTraits<WebKit::AuthenticatorTransportService>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v75);
  v3 = WebKit::Authenticator::requestData(this);
  std::get<WebCore::PublicKeyCredentialCreationOptions,WebCore::PublicKeyCredentialCreationOptions,WebCore::PublicKeyCredentialRequestOptions>(v3 + 16);
  v74 = v4;
  WTF::Vector<WTF::Ref<WebKit::AuthenticatorTransportService,WTF::RawPtrTraits<WebKit::AuthenticatorTransportService>,WTF::DefaultRefDerefTraits<WebKit::AuthenticatorTransportService>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v73);
  if (v76)
  {
    v5 = WTF::Vector<WTF::Vector<WebCore::PublicKeyCredentialDescriptor,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::operator[](this + 1072, *(this + 131));
    WTF::Vector<WebCore::PublicKeyCredentialDescriptor,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::operator=(v73, v5);
  }

  v6 = fido::AuthenticatorGetInfoResponse::options((this + 840));
  v72 = fido::AuthenticatorSupportedOptions::userVerificationAvailability(v6);
  v7 = fido::AuthenticatorGetInfoResponse::options((this + 840));
  v71 = std::__optional_storage_base<WebCore::MediationRequirement,false>::has_value[abi:sn200100](v7) & 1;
  if ((std::optional<WebCore::AuthenticatorSelectionCriteria>::operator BOOL[abi:sn200100](v74 + 120) & 1) == 0 || (std::optional<WebCore::AuthenticatorSelectionCriteria>::operator->[abi:sn200100](v74 + 120), *(v8 + 5)) || WebKit::CtapAuthenticator::isUVSetup(this))
  {
    WTF::Vector<WTF::Ref<WebKit::AuthenticatorTransportService,WTF::RawPtrTraits<WebKit::AuthenticatorTransportService>,WTF::DefaultRefDerefTraits<WebKit::AuthenticatorTransportService>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v69);
    if (*(this + 1033) & 1) != 0 || (v9 = fido::AuthenticatorGetInfoResponse::remainingDiscoverableCredentials((this + 840)), (std::optional<unsigned int>::operator BOOL[abi:sn200100](v9)) && (v10 = fido::AuthenticatorGetInfoResponse::remainingDiscoverableCredentials((this + 840)), (std::optional<unsigned int>::operator BOOL[abi:sn200100](v10) & 1) == 0))
    {
      v11 = std::optional<WebCore::AuthenticatorSelectionCriteria>::operator BOOL[abi:sn200100](v74 + 120);
      v12 = 0;
      if (v11)
      {
        std::optional<WebCore::AuthenticatorSelectionCriteria>::operator->[abi:sn200100](v74 + 120);
        v14 = *(v13 + 4);
        v12 = 1;
        if ((v14 & 1) == 0)
        {
          std::optional<WebCore::AuthenticatorSelectionCriteria>::operator->[abi:sn200100](v74 + 120);
          v68 = 0;
          v12 = std::operator==[abi:sn200100]<WebCore::MediationRequirement,WebCore::MediationRequirement>(v15 + 2, &v68);
        }
      }

      if (v12)
      {
        WebKit::Authenticator::protectedObserver(&v67, this);
        v83 = &v67;
        v119 = &v67;
        (*(*v67 + 48))();
        v84 = &v67;
        v115[1] = &v67;
        v115[0] = 0;
        v118 = &v67;
        v117 = v115;
        v116 = std::exchange[abi:sn200100]<WTF::StringImpl *,decltype(nullptr) &>(&v67);
        if (v116)
        {
          (*(*v116 + 8))();
        }

        v70 = 1;
LABEL_41:
        WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v69, v16);
        goto LABEL_42;
      }

      v71 = 1;
    }

    if (v72 || (std::optional<WebCore::AuthenticatorSelectionCriteria>::operator BOOL[abi:sn200100](v74 + 120) & 1) != 0 && (std::optional<WebCore::AuthenticatorSelectionCriteria>::operator->[abi:sn200100](v74 + 120), *(v17 + 5) == 2) || !WTF::Vector<WebCore::PublicKeyCredentialDescriptor,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::isEmpty(this + 1088))
    {
      v18 = fido::AuthenticatorGetInfoResponse::options((this + 840));
      if (WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::size(v18))
      {
        WebKit::Authenticator::requestData(this);
        std::optional<fido::PinParameters>::optional[abi:sn200100](v57);
        fido::AuthenticatorGetInfoResponse::algorithms((this + 840));
        std::optional<WTF::Vector<WebCore::PublicKeyCredentialDescriptor,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>::optional[abi:sn200100]<WTF::Vector<WebCore::PublicKeyCredentialDescriptor,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,0>(v56, v73);
        fido::encodeMakeCredentialRequestAsCBOR();
        WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::operator=(v75, v58);
        WTF::Vector<WebCore::AuthenticatorTransport,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v58);
        std::optional<WTF::Vector<WebCore::PublicKeyCredentialDescriptor,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>::~optional(v56);
        std::optional<fido::PinParameters>::~optional(v57);
      }

      else
      {
        WebKit::Authenticator::requestData(this);
        v60 = 1;
        WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(&v61, this + 1088);
        std::optional<fido::PinParameters>::optional[abi:sn200100]<fido::PinParameters,0>(v62, &v60);
        fido::AuthenticatorGetInfoResponse::algorithms((this + 840));
        std::optional<WTF::Vector<WebCore::PublicKeyCredentialDescriptor,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>::optional[abi:sn200100]<WTF::Vector<WebCore::PublicKeyCredentialDescriptor,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,0>(v59, v73);
        fido::encodeMakeCredentialRequestAsCBOR();
        WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::operator=(v75, v63);
        WTF::Vector<WebCore::AuthenticatorTransport,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v63);
        std::optional<WTF::Vector<WebCore::PublicKeyCredentialDescriptor,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>::~optional(v59);
        std::optional<fido::PinParameters>::~optional(v62);
        fido::PinParameters::~PinParameters(&v60);
      }
    }

    else
    {
      WebKit::Authenticator::requestData(this);
      std::optional<fido::PinParameters>::optional[abi:sn200100](v65);
      fido::AuthenticatorGetInfoResponse::algorithms((this + 840));
      std::optional<WTF::Vector<WebCore::PublicKeyCredentialDescriptor,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>::optional[abi:sn200100]<WTF::Vector<WebCore::PublicKeyCredentialDescriptor,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,0>(v64, v73);
      fido::encodeMakeCredentialRequestAsCBOR();
      WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::operator=(v75, v66);
      WTF::Vector<WebCore::AuthenticatorTransport,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v66);
      std::optional<WTF::Vector<WebCore::PublicKeyCredentialDescriptor,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>::~optional(v64);
      std::optional<fido::PinParameters>::~optional(v65);
    }

    oslog = qword_1ED641530;
    v54 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(qword_1ED641530, OS_LOG_TYPE_DEFAULT))
    {
      v19 = oslog;
      v20 = v54;
      WebKit::CtapAuthenticator::aaguidForDebugging(&v52, this);
      WTF::String::utf8();
      v21 = WTF::CString::data(&v53);
      WebKit::FidoAuthenticator::transportForDebugging(&v50, this);
      WTF::String::utf8();
      v22 = WTF::CString::data(&v51);
      std::span<unsigned char const,18446744073709551615ul>::span[abi:sn200100]<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &>(v47, v75);
      v46 = 0;
      WTF::OptionSet<WTF::Base64EncodeOption>::OptionSet(&v46);
      WTF::base64EncodeToString(&v48, v47[0], v47[1]);
      WTF::String::utf8();
      v23 = WTF::CString::data(&v49);
      __os_log_helper_16_2_4_8_0_8_32_8_32_8_32(buf, this, v21, v22, v23);
      _os_log_impl(&dword_19D52D000, v19, v20, "%p [aaguid=%s, transport=%s] - CtapAuthenticator::makeCredential: Sending %s", buf, 0x2Au);
      WTF::CString::~CString(&v49);
      v82 = &v48;
      v85 = &v48;
      v94 = &v48;
      v95[1] = &v48;
      v95[0] = 0;
      v114 = &v48;
      v113 = v95;
      v104 = std::exchange[abi:sn200100]<WTF::StringImpl *,decltype(nullptr) &>(&v48);
      if (v104)
      {
        WTF::StringImpl::deref(v104);
      }

      WTF::CString::~CString(&v51);
      v81 = &v50;
      v86 = &v50;
      v93 = &v50;
      v96[1] = &v50;
      v96[0] = 0;
      v112 = &v50;
      v111 = v96;
      v103 = std::exchange[abi:sn200100]<WTF::StringImpl *,decltype(nullptr) &>(&v50);
      if (v103)
      {
        WTF::StringImpl::deref(v103);
      }

      WTF::CString::~CString(&v53);
      v80 = &v52;
      v87 = &v52;
      v92 = &v52;
      v97[1] = &v52;
      v97[0] = 0;
      v110 = &v52;
      v109 = v97;
      v102 = std::exchange[abi:sn200100]<WTF::StringImpl *,decltype(nullptr) &>(&v52);
      if (v102)
      {
        WTF::StringImpl::deref(v102);
      }
    }

    v24 = fido::AuthenticatorGetInfoResponse::maxMsgSize((this + 840));
    if (std::optional<unsigned int>::operator BOOL[abi:sn200100](v24))
    {
      v25 = WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::size(v75);
      v26 = fido::AuthenticatorGetInfoResponse::maxMsgSize((this + 840));
      std::optional<unsigned int>::operator*[abi:sn200100](v26);
      if (v25 >= *v27)
      {
        v45 = qword_1ED641530;
        v44 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(qword_1ED641530, OS_LOG_TYPE_DEFAULT))
        {
          v28 = v45;
          v29 = v44;
          WebKit::CtapAuthenticator::aaguidForDebugging(&v42, this);
          WTF::String::utf8();
          v30 = WTF::CString::data(&v43);
          WebKit::FidoAuthenticator::transportForDebugging(&v40, this);
          WTF::String::utf8();
          v31 = WTF::CString::data(&v41);
          v32 = WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::size(v75);
          v33 = fido::AuthenticatorGetInfoResponse::maxMsgSize((this + 840));
          std::optional<unsigned int>::operator*[abi:sn200100](v33);
          __os_log_helper_16_2_5_8_0_8_32_8_32_8_0_4_0(v120, this, v30, v31, v32, *v34);
          _os_log_impl(&dword_19D52D000, v28, v29, "%p [aaguid=%s, transport=%s] - CtapAuthenticator::CtapAuthenticator::makeCredential cmdSize = %lu maxMsgSize = %u", v120, 0x30u);
          WTF::CString::~CString(&v41);
          v79 = &v40;
          v88 = &v40;
          v91 = &v40;
          v98[1] = &v40;
          v98[0] = 0;
          v108 = &v40;
          v107 = v98;
          v101 = std::exchange[abi:sn200100]<WTF::StringImpl *,decltype(nullptr) &>(&v40);
          if (v101)
          {
            WTF::StringImpl::deref(v101);
          }

          WTF::CString::~CString(&v43);
          v78 = &v42;
          v89 = &v42;
          v90 = &v42;
          v99[1] = &v42;
          v99[0] = 0;
          v106 = &v42;
          v105 = v99;
          v100 = std::exchange[abi:sn200100]<WTF::StringImpl *,decltype(nullptr) &>(&v42);
          if (v100)
          {
            WTF::StringImpl::deref(v100);
          }
        }
      }
    }

    WebKit::FidoAuthenticator::protectedDriver(this, &v39);
    v35 = WTF::RefPtr<API::WebAuthenticationPanel,WTF::RawPtrTraits<API::WebAuthenticationPanel>,WTF::DefaultRefDerefTraits<API::WebAuthenticationPanel>>::get(&v39);
    WTF::WeakPtr<WebKit::AuthenticatorManager,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>::WeakPtr<void>(&v37, this);
    WTF::Function<void ()(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>::Function<WebKit::CtapAuthenticator::continueMakeCredentialAfterCheckExcludedCredentials(BOOL)::$_0,void>(&v38, &v37);
    (*(*v35 + 16))(v35, v75, &v38);
    WTF::Function<void ()(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>::~Function(&v38);
    WebKit::CtapAuthenticator::makeCredential(void)::$_0::~$_0(&v37);
    WTF::Ref<WebKit::CtapDriver,WTF::RawPtrTraits<WebKit::CtapDriver>,WTF::DefaultRefDerefTraits<WebKit::CtapDriver>>::~Ref(&v39);
    v70 = 0;
    goto LABEL_41;
  }

  WebKit::CtapAuthenticator::performAuthenticatorSelectionForSetupPin(this);
  v70 = 1;
LABEL_42:
  WTF::Vector<WebCore::PublicKeyCredentialDescriptor,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v73);
  return WTF::Vector<WebCore::AuthenticatorTransport,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v75);
}

_BYTE *std::optional<fido::PinParameters>::optional[abi:sn200100](_BYTE *a1)
{
  std::optional<fido::PinParameters>::optional[abi:sn200100](a1);
  return a1;
}

{
  std::optional<fido::PinParameters>::optional[abi:sn200100](a1);
  return a1;
}

{
  std::__optional_move_assign_base<fido::PinParameters,false>::__optional_move_assign_base[abi:sn200100](a1);
  return a1;
}

{
  std::__optional_move_assign_base<fido::PinParameters,false>::__optional_move_assign_base[abi:sn200100](a1);
  return a1;
}

uint64_t WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(uint64_t a1, uint64_t a2)
{
  WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(a1, a2);
  return a1;
}

{
  v3 = WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::size(a2);
  v4 = WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::size(a2);
  WTF::VectorBuffer<unsigned char,0ul,WTF::FastMalloc>::VectorBuffer(a1, v3, v4);
  WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::size(a2);
  WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::asanSetInitialBufferSizeTo();
  if (WTF::Vector<WTF::Ref<WebKit::AuthenticatorTransportService,WTF::RawPtrTraits<WebKit::AuthenticatorTransportService>,WTF::DefaultRefDerefTraits<WebKit::AuthenticatorTransportService>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::begin(a1))
  {
    v5 = WTF::Vector<WTF::Ref<WebKit::AuthenticatorTransportService,WTF::RawPtrTraits<WebKit::AuthenticatorTransportService>,WTF::DefaultRefDerefTraits<WebKit::AuthenticatorTransportService>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::begin(a2);
    v6 = WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::end(a2);
    v7 = WTF::Vector<WTF::Ref<WebKit::AuthenticatorTransportService,WTF::RawPtrTraits<WebKit::AuthenticatorTransportService>,WTF::DefaultRefDerefTraits<WebKit::AuthenticatorTransportService>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::begin(a1);
    WTF::VectorTypeOperations<WTF::Ref<WebKit::AuthenticatorTransportService,WTF::RawPtrTraits<WebKit::AuthenticatorTransportService>,WTF::DefaultRefDerefTraits<WebKit::AuthenticatorTransportService>>>::move(v5, v6, v7);
  }

  return a1;
}

_DWORD *std::optional<fido::PinParameters>::operator=[abi:sn200100]<fido::PinParameters,void>(uint64_t a1, uint64_t a2)
{
  if ((std::__optional_storage_base<fido::PinParameters,false>::has_value[abi:sn200100](a1) & 1) == 0)
  {
    return std::__optional_storage_base<fido::PinParameters,false>::__construct[abi:sn200100]<fido::PinParameters>(a1, a2);
  }

  std::__to_address[abi:sn200100]<char const>();
  return fido::PinParameters::operator=(v3, a2);
}

void fido::PinParameters::~PinParameters(fido::PinParameters *this)
{
  fido::PinParameters::~PinParameters(this);
}

{
  WTF::Vector<WebCore::AuthenticatorTransport,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 8);
}

fido::PinParameters *std::optional<fido::PinParameters>::optional[abi:sn200100](fido::PinParameters *a1, uint64_t a2)
{
  std::optional<fido::PinParameters>::optional[abi:sn200100](a1, a2);
  return a1;
}

{
  std::__optional_move_assign_base<fido::PinParameters,false>::__optional_move_assign_base[abi:sn200100](a1, a2);
  return a1;
}

fido::PinParameters *std::optional<fido::PinParameters>::~optional(fido::PinParameters *a1)
{
  std::optional<fido::PinParameters>::~optional(a1);
  return a1;
}

{
  std::__optional_move_assign_base<fido::PinParameters,false>::~__optional_move_assign_base(a1);
  return a1;
}

uint64_t *WTF::Function<void ()(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>::Function<WebKit::CtapAuthenticator::makeCredential(void)::$_0,void>(uint64_t *a1, uint64_t *a2)
{
  WTF::Function<void ()(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>::Function<WebKit::CtapAuthenticator::makeCredential(void)::$_0,void>(a1, a2);
  return a1;
}

{
  v4[2] = a1;
  v4[1] = a2;
  v4[4] = v4;
  v4[3] = a2;
  std::make_unique[abi:sn200100]<WTF::Detail::CallableWrapper<WebKit::CtapAuthenticator::makeCredential(void)::$_0,void,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&>,WebKit::CtapAuthenticator::makeCredential(void)::$_0,0>(v4, a2);
  std::unique_ptr<WTF::Detail::CallableWrapperBase<void>>::unique_ptr[abi:sn200100]<WTF::Detail::CallableWrapper<WTF::RunLoop::Timer::Timer<WebKit::AuthenticatorManager>(WTF::Ref<WTF::RunLoop,WTF::RawPtrTraits<WTF::RunLoop>,WTF::DefaultRefDerefTraits<WTF::RunLoop>> &&,WTF::ASCIILiteral,WebKit::AuthenticatorManager *,void (WTF::ASCIILiteral::*)(void))::{lambda(void)#1},void>,std::default_delete<WTF::RunLoop::Timer::Timer<WebKit::AuthenticatorManager>(WTF::Ref<WTF::RunLoop,WTF::RawPtrTraits<WTF::RunLoop>,WTF::DefaultRefDerefTraits<WTF::RunLoop>> &&,WTF::ASCIILiteral,WebKit::AuthenticatorManager *,void (WTF::ASCIILiteral::*)(void))::{lambda(void)#1}>,void,void>(a1, v4);
  std::unique_ptr<WTF::Detail::CallableWrapper<WebKit::CtapAuthenticator::makeCredential(void)::$_0,void,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&>,std::default_delete<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&>>::~unique_ptr[abi:sn200100](v4);
  return a1;
}

uint64_t *WTF::Function<void ()(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>::~Function(uint64_t *a1)
{
  WTF::Function<void ()(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>::~Function(a1);
  return a1;
}

{
  std::unique_ptr<WTF::Detail::CallableWrapperBase<void,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&>,std::default_delete<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&>>::~unique_ptr[abi:sn200100](a1);
  return a1;
}

uint64_t *WebKit::CtapAuthenticator::makeCredential(void)::$_0::~$_0(uint64_t *a1)
{
  WebKit::CtapAuthenticator::makeCredential(void)::$_0::~$_0(a1);
  return a1;
}

{
  WTF::WeakPtr<WebKit::CtapAuthenticator,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>::~WeakPtr(a1);
  return a1;
}

uint64_t *WTF::Ref<WebKit::CtapDriver,WTF::RawPtrTraits<WebKit::CtapDriver>,WTF::DefaultRefDerefTraits<WebKit::CtapDriver>>::~Ref(uint64_t *a1)
{
  WTF::Ref<WebKit::CtapDriver,WTF::RawPtrTraits<WebKit::CtapDriver>,WTF::DefaultRefDerefTraits<WebKit::CtapDriver>>::~Ref(a1);
  return a1;
}

{
  v4 = a1;
  v5 = a1;
  v2 = 0;
  v7 = a1;
  v6 = &v2;
  v3 = std::exchange[abi:sn200100]<WTF::StringImpl *,decltype(nullptr) &>(a1);
  if (v3)
  {
    v8 = v3;
    WTF::RefCountedAndCanMakeWeakPtr<WebKit::CtapDriver>::deref(v3 + 8);
  }

  return v5;
}

uint64_t WebKit::CtapAuthenticator::continueSilentlyCheckCredentials(WebKit::FidoAuthenticator *a1, uint64_t a2, uint64_t *a3)
{
  v91 = *MEMORY[0x1E69E9840];
  v43 = a1;
  v42 = a2;
  v41 = a3;
  ResponseCode = fido::getResponseCode();
  oslog = qword_1ED641530;
  v38 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(qword_1ED641530, OS_LOG_TYPE_DEFAULT))
  {
    v4 = oslog;
    v5 = v38;
    WebKit::CtapAuthenticator::aaguidForDebugging(&v36, a1);
    WTF::String::utf8();
    v6 = WTF::CString::data(&v37);
    WebKit::FidoAuthenticator::transportForDebugging(&v34, a1);
    WTF::String::utf8();
    v7 = WTF::CString::data(&v35);
    v8 = WTF::enumToUnderlyingType<fido::CtapDeviceResponseCode>(ResponseCode);
    __os_log_helper_16_2_4_8_0_8_32_8_32_4_0(buf, a1, v6, v7, v8);
    _os_log_impl(&dword_19D52D000, v4, v5, "%p [aaguid=%s, transport=%s] - CtapAuthenticator::continueSilentlyCheckCredentials: Got error code: %hhu from authenticator.", buf, 0x26u);
    WTF::CString::~CString(&v35);
    v45 = &v34;
    v57 = &v34;
    v60 = &v34;
    v61[1] = &v34;
    v61[0] = 0;
    v68 = &v34;
    v67 = v61;
    v64 = std::exchange[abi:sn200100]<WTF::StringImpl *,decltype(nullptr) &>(&v34);
    if (v64)
    {
      WTF::StringImpl::deref(v64);
    }

    WTF::CString::~CString(&v37);
    v44 = &v36;
    v58 = &v36;
    v59 = &v36;
    v62[1] = &v36;
    v62[0] = 0;
    v66 = &v36;
    v65 = v62;
    v63 = std::exchange[abi:sn200100]<WTF::StringImpl *,decltype(nullptr) &>(&v36);
    if (v63)
    {
      WTF::StringImpl::deref(v63);
    }
  }

  if (!ResponseCode)
  {
    return WTF::CompletionHandler<void ()(BOOL)>::operator()(v41, 1);
  }

  if (ResponseCode != 46)
  {
    goto LABEL_63;
  }

  v10 = *(a1 + 131) + 1;
  if (v10 >= WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::size(a1 + 1072))
  {
    return WTF::CompletionHandler<void ()(BOOL)>::operator()(v41, 0);
  }

  v11 = ++*(a1 + 131);
  if (v11 >= WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::size(a1 + 1072))
  {
    return WebKit::CtapAuthenticator::continueMakeCredentialAfterCheckExcludedCredentials(a1, 0);
  }

LABEL_63:
  {
    goto LABEL_22;
  }

  if (!WTF::Vector<WebCore::PublicKeyCredentialDescriptor,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::isEmpty(a1 + 1088))
  {
    v12 = WebKit::Authenticator::observer(a1);
    v47 = &v33;
    v46 = v12;
    v70 = &v33;
    v69 = v12;
    v71 = v12;
    if (v12)
    {
      (**v71)();
    }

    v33 = v71;
    if (WTF::RefPtr<WebKit::AuthenticatorPresenterCoordinator,WTF::RawPtrTraits<WebKit::AuthenticatorPresenterCoordinator>,WTF::DefaultRefDerefTraits<WebKit::AuthenticatorPresenterCoordinator>>::operator BOOL(&v33))
    {
      v48 = &v33;
      v76 = &v33;
      v13 = v33;
      (*(*v13 + 48))(v13, v14);
    }

    v49 = &v33;
    v72[1] = &v33;
    v72[0] = 0;
    v75 = &v33;
    v74 = v72;
    v73 = std::exchange[abi:sn200100]<WTF::StringImpl *,decltype(nullptr) &>(&v33);
    if (v73)
    {
      (*(*v73 + 8))();
    }
  }

  result = WebKit::CtapAuthenticator::tryRestartPin(a1, &ResponseCode);
  if ((result & 1) == 0)
  {
LABEL_22:
    WTF::Vector<WTF::Ref<WebKit::AuthenticatorTransportService,WTF::RawPtrTraits<WebKit::AuthenticatorTransportService>,WTF::DefaultRefDerefTraits<WebKit::AuthenticatorTransportService>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v32);
    fido::readCTAPGetAssertionResponse();
    std::optional<fido::PinParameters>::optional[abi:sn200100](v30);
    if (!WTF::Vector<WebCore::PublicKeyCredentialDescriptor,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::isEmpty(a1 + 1088))
    {
      v28 = 1;
      WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(&v29, a1 + 1088);
      std::optional<fido::PinParameters>::operator=[abi:sn200100]<fido::PinParameters,void>(v30, &v28);
      fido::PinParameters::~PinParameters(&v28);
    }

    *&v26 = v32;
    *(&v26 + 1) = a1;
    v27 = v30;
    *&v24 = v32;
    *(&v24 + 1) = a1;
    v25 = v30;
    v55 = WebKit::Authenticator::requestData(a1) + 16;
    v54[7] = &v26;
    v54[6] = &v24;
    v53 = v30;
    v52 = v26;
    v51 = v30;
    v50 = v24;
    v88 = &v52;
    v87 = &v50;
    v86 = v30;
    v85 = v26;
    v84 = v30;
    v83 = v24;
    WTF::Visitor<WebKit::CtapAuthenticator::continueSilentlyCheckCredentials(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WTF::CompletionHandler<void ()(BOOL)> &&)::$_0,WebKit::CtapAuthenticator::continueSilentlyCheckCredentials(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &,WTF::CompletionHandler<void ()(BOOL)>)::$_1>::Visitor(v54, &v85, &v83);
    v89 = v55;
    v82 = v54;
    v81 = v55;
    v80 = 2;
    switch(mpark::variant<WebCore::PublicKeyCredentialCreationOptions,WebCore::PublicKeyCredentialRequestOptions>::index(v55))
    {
      case 0:
        v15 = v82;
        mpark::get<WebCore::PublicKeyCredentialCreationOptions,WebCore::PublicKeyCredentialCreationOptions,WebCore::PublicKeyCredentialRequestOptions>(v81);
        WebKit::CtapAuthenticator::continueSilentlyCheckCredentials(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WTF::CompletionHandler<void ()(BOOL)> &&)::$_0::operator()(v15, v16);
        goto LABEL_58;
      case 1:
        v17 = v82 + 3;
        mpark::get<WebCore::PublicKeyCredentialRequestOptions,WebCore::PublicKeyCredentialCreationOptions,WebCore::PublicKeyCredentialRequestOptions>(v81);
        WebKit::CtapAuthenticator::continueSilentlyCheckCredentials(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WTF::CompletionHandler<void ()(BOOL)> &&)::$_1::operator()(v17, v18);
        goto LABEL_58;
      case 2:
        __break(1u);
        goto LABEL_28;
      case 3:
LABEL_28:
        __break(1u);
        goto LABEL_29;
      case 4:
LABEL_29:
        __break(1u);
        goto LABEL_30;
      case 5:
LABEL_30:
        __break(1u);
        goto LABEL_31;
      case 6:
LABEL_31:
        __break(1u);
        goto LABEL_32;
      case 7:
LABEL_32:
        __break(1u);
        goto LABEL_33;
      case 8:
LABEL_33:
        __break(1u);
        goto LABEL_34;
      case 9:
LABEL_34:
        __break(1u);
        goto LABEL_35;
      case 10:
LABEL_35:
        __break(1u);
        goto LABEL_36;
      case 11:
LABEL_36:
        __break(1u);
        goto LABEL_37;
      case 12:
LABEL_37:
        __break(1u);
        goto LABEL_38;
      case 13:
LABEL_38:
        __break(1u);
        goto LABEL_39;
      case 14:
LABEL_39:
        __break(1u);
        goto LABEL_40;
      case 15:
LABEL_40:
        __break(1u);
        goto LABEL_41;
      case 16:
LABEL_41:
        __break(1u);
        goto LABEL_42;
      case 17:
LABEL_42:
        __break(1u);
        goto LABEL_43;
      case 18:
LABEL_43:
        __break(1u);
        goto LABEL_44;
      case 19:
LABEL_44:
        __break(1u);
        goto LABEL_45;
      case 20:
LABEL_45:
        __break(1u);
        goto LABEL_46;
      case 21:
LABEL_46:
        __break(1u);
        goto LABEL_47;
      case 22:
LABEL_47:
        __break(1u);
        goto LABEL_48;
      case 23:
LABEL_48:
        __break(1u);
        goto LABEL_49;
      case 24:
LABEL_49:
        __break(1u);
        goto LABEL_50;
      case 25:
LABEL_50:
        __break(1u);
        goto LABEL_51;
      case 26:
LABEL_51:
        __break(1u);
        goto LABEL_52;
      case 27:
LABEL_52:
        __break(1u);
        goto LABEL_53;
      case 28:
LABEL_53:
        __break(1u);
        goto LABEL_54;
      case 29:
LABEL_54:
        __break(1u);
        goto LABEL_55;
      case 30:
LABEL_55:
        __break(1u);
        goto LABEL_56;
      case 31:
LABEL_56:
        __break(1u);
        break;
      default:
        break;
    }

    v79 = 2;
    __break(1u);
LABEL_58:
    WebKit::FidoAuthenticator::protectedDriver(a1, &v23);
    v19 = WTF::RefPtr<API::WebAuthenticationPanel,WTF::RawPtrTraits<API::WebAuthenticationPanel>,WTF::DefaultRefDerefTraits<API::WebAuthenticationPanel>>::get(&v23);
    WTF::WeakPtr<WebKit::AuthenticatorManager,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>::WeakPtr<void>(&v20, a1);
    WTF::CompletionHandler<void ()(BOOL)>::CompletionHandler(&v21, v41);
    WTF::Function<void ()(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>::Function<WebKit::CtapAuthenticator::continueSilentlyCheckCredentials(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &,WTF::CompletionHandler<void ()(BOOL)> &&)::$_2,void>(&v22, &v20);
    (*(*v19 + 16))(v19, v32, &v22);
    WTF::Function<void ()(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>::~Function(&v22);
    WebKit::CtapAuthenticator::continueSilentlyCheckCredentials(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WTF::CompletionHandler<void ()(BOOL)> &&)::$_2::~$_2(&v20);
    WTF::Ref<WebKit::CtapDriver,WTF::RawPtrTraits<WebKit::CtapDriver>,WTF::DefaultRefDerefTraits<WebKit::CtapDriver>>::~Ref(&v23);
    std::optional<fido::PinParameters>::~optional(v30);
    v56 = &v31;
    v77[1] = &v31;
    v77[0] = 0;
    v77[3] = &v31;
    v77[2] = v77;
    v78 = std::exchange[abi:sn200100]<WTF::StringImpl *,decltype(nullptr) &>(&v31);
    if (v78)
    {
      WTF::RefCounted<WebCore::AuthenticatorResponse>::deref((v78 + 8));
    }

    return WTF::Vector<WebCore::AuthenticatorTransport,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v32);
  }

  return result;
}

double __os_log_helper_16_2_4_8_0_8_32_8_32_4_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  *&result = 134218754;
  *a1 = 134218754;
  *(a1 + 4) = a2;
  *(a1 + 12) = 2080;
  *(a1 + 14) = a3;
  *(a1 + 22) = 2080;
  *(a1 + 24) = a4;
  *(a1 + 32) = 1024;
  *(a1 + 34) = a5;
  return result;
}

uint64_t *WTF::CompletionHandler<void ()(BOOL)>::operator()(WTF::RefCountedBase *a1, char a2)
{
  v6 = a1;
  v5 = a2;
  WTF::RefCountedBase::applyRefDerefThreadingCheck(a1);
  std::exchange[abi:sn200100]<WTF::Function<void ()(BOOL)>,decltype(nullptr)>(a1, &v4);
  WTF::Function<void ()(BOOL)>::operator()(&v4);
  return WTF::Function<void ()(BOOL)>::~Function(&v4);
}

uint64_t WebKit::anonymous namespace::toStatus(_BYTE *a1)
{
  switch(*a1)
  {
    case 0:
      return 11;
    case 0x31:
      return 4;
    case 0x32:
      return 2;
    case 0x33:
      return 4;
    case 0x34:
      return 3;
    default:
      return 4;
  }
}

uint64_t WebKit::CtapAuthenticator::tryRestartPin(uint64_t a1, _BYTE *a2)
{
  v35 = *MEMORY[0x1E69E9840];
  v18 = a1;
  v17 = a2;
  oslog = qword_1ED641530;
  v15 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(qword_1ED641530, OS_LOG_TYPE_DEFAULT))
  {
    v3 = oslog;
    v4 = v15;
    WebKit::CtapAuthenticator::aaguidForDebugging(&v13, a1);
    WTF::String::utf8();
    v5 = WTF::CString::data(&v14);
    WebKit::FidoAuthenticator::transportForDebugging(&v11, a1);
    WTF::String::utf8();
    v6 = WTF::CString::data(&v12);
    v7 = WTF::enumToUnderlyingType<fido::CtapDeviceResponseCode>(*v17);
    __os_log_helper_16_2_4_8_0_8_32_8_32_4_0(buf, a1, v5, v6, v7);
    _os_log_impl(&dword_19D52D000, v3, v4, "%p [aaguid=%s, transport=%s] - CtapAuthenticator::tryRestartPin: Error code: %hhu", buf, 0x26u);
    WTF::CString::~CString(&v12);
    v21 = &v11;
    v22 = &v11;
    v25 = &v11;
    v26[1] = &v11;
    v26[0] = 0;
    v33 = &v11;
    v32 = v26;
    v29 = std::exchange[abi:sn200100]<WTF::StringImpl *,decltype(nullptr) &>(&v11);
    if (v29)
    {
      WTF::StringImpl::deref(v29);
    }

    WTF::CString::~CString(&v14);
    v20 = &v13;
    v23 = &v13;
    v24 = &v13;
    v27[1] = &v13;
    v27[0] = 0;
    v31 = &v13;
    v30 = v27;
    v28 = std::exchange[abi:sn200100]<WTF::StringImpl *,decltype(nullptr) &>(&v13);
    if (v28)
    {
      WTF::StringImpl::deref(v28);
    }
  }

  v8 = *v17;
  if (v8 == 49 || *v17 == 51 || (v8 - 53) <= 1u)
  {
    v9 = fido::AuthenticatorGetInfoResponse::options((a1 + 840));
    if (WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::size(v9) == 1)
    {
      WebKit::CtapAuthenticator::performAuthenticatorSelectionForSetupPin(a1);
    }

    else
    {
      WebKit::CtapAuthenticator::getRetries(a1);
    }

    v19 = 1;
  }

  else
  {
    v19 = 0;
  }

  return v19 & 1;
}

uint64_t *WTF::CompletionHandler<void ()(BOOL)>::CompletionHandler(uint64_t *a1, uint64_t *a2)
{
  WTF::CompletionHandler<void ()(BOOL)>::CompletionHandler(a1, a2);
  return a1;
}

{
  WTF::Function<void ()(BOOL)>::Function(a1, a2);
  WTF::ThreadLikeAssertion::ThreadLikeAssertion(a1);
  return a1;
}

uint64_t *WTF::Function<void ()(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>::Function<WebKit::CtapAuthenticator::continueSilentlyCheckCredentials(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &,WTF::CompletionHandler<void ()(BOOL)> &&)::$_2,void>(uint64_t *a1, uint64_t *a2)
{
  WTF::Function<void ()(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>::Function<WebKit::CtapAuthenticator::continueSilentlyCheckCredentials(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &,WTF::CompletionHandler<void ()(BOOL)> &&)::$_2,void>(a1, a2);
  return a1;
}

{
  v4[2] = a1;
  v4[1] = a2;
  v4[4] = v4;
  v4[3] = a2;
  std::make_unique[abi:sn200100]<WTF::Detail::CallableWrapper<WebKit::CtapAuthenticator::continueSilentlyCheckCredentials(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WTF::CompletionHandler<void ()(BOOL)> &&)::$_2,void,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &>,WTF::CompletionHandler<void ()(BOOL)> &,0>(v4, a2);
  std::unique_ptr<WTF::Detail::CallableWrapperBase<void>>::unique_ptr[abi:sn200100]<WTF::Detail::CallableWrapper<WTF::RunLoop::Timer::Timer<WebKit::AuthenticatorManager>(WTF::Ref<WTF::RunLoop,WTF::RawPtrTraits<WTF::RunLoop>,WTF::DefaultRefDerefTraits<WTF::RunLoop>> &&,WTF::ASCIILiteral,WebKit::AuthenticatorManager *,void (WTF::ASCIILiteral::*)(void))::{lambda(void)#1},void>,std::default_delete<WTF::RunLoop::Timer::Timer<WebKit::AuthenticatorManager>(WTF::Ref<WTF::RunLoop,WTF::RawPtrTraits<WTF::RunLoop>,WTF::DefaultRefDerefTraits<WTF::RunLoop>> &&,WTF::ASCIILiteral,WebKit::AuthenticatorManager *,void (WTF::ASCIILiteral::*)(void))::{lambda(void)#1}>,void,void>(a1, v4);
  std::unique_ptr<WTF::Detail::CallableWrapper<WebKit::CtapAuthenticator::makeCredential(void)::$_0,void,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&>,std::default_delete<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&>>::~unique_ptr[abi:sn200100](v4);
  return a1;
}

uint64_t *WebKit::CtapAuthenticator::continueSilentlyCheckCredentials(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WTF::CompletionHandler<void ()(BOOL)> &&)::$_2::~$_2(uint64_t *a1)
{
  WebKit::CtapAuthenticator::continueSilentlyCheckCredentials(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WTF::CompletionHandler<void ()(BOOL)> &&)::$_2::~$_2(a1);
  return a1;
}

{
  WTF::CompletionHandler<void ()(BOOL)>::~CompletionHandler((a1 + 1));
  WTF::WeakPtr<WebKit::CtapAuthenticator,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>::~WeakPtr(a1);
  return a1;
}

WTF::RefCountedBase *WTF::Vector<WebCore::PublicKeyCredentialDescriptor,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::operator=(WTF::RefCountedBase *a1, uint64_t a2)
{
  if (a2 == a1)
  {
    return a1;
  }

  v3 = WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::size(a1);
  if (v3 <= WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::size(a2))
  {
    v5 = WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::size(a2);
    if (v5 > WTF::Vector<WTF::Ref<WebKit::AuthenticatorTransportService,WTF::RawPtrTraits<WebKit::AuthenticatorTransportService>,WTF::DefaultRefDerefTraits<WebKit::AuthenticatorTransportService>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::capacity(a1))
    {
      WTF::Vector<WebCore::PublicKeyCredentialDescriptor,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::clear(a1);
      v16 = WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::size(a2);
      WTF::Vector<WebCore::PublicKeyCredentialDescriptor,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v16);
    }
  }

  else
  {
    v4 = WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::size(a2);
    WTF::Vector<WebCore::PublicKeyCredentialDescriptor,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrink(a1, v4);
  }

  WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::size(a2);
  WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::asanSetInitialBufferSizeTo();
  v6 = WTF::Vector<WTF::Ref<WebKit::AuthenticatorTransportService,WTF::RawPtrTraits<WebKit::AuthenticatorTransportService>,WTF::DefaultRefDerefTraits<WebKit::AuthenticatorTransportService>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::begin(a2);
  v7 = WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::size(a1);
  v8 = WTF::Vector<WTF::Ref<WebKit::AuthenticatorTransportService,WTF::RawPtrTraits<WebKit::AuthenticatorTransportService>,WTF::DefaultRefDerefTraits<WebKit::AuthenticatorTransportService>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::begin(a1);
  std::copy_n[abi:sn200100]<WebCore::PublicKeyCredentialDescriptor const*,unsigned long,WebCore::PublicKeyCredentialDescriptor*,0>(v6, v7, v8);
  v9 = WTF::Vector<WTF::Ref<WebKit::AuthenticatorTransportService,WTF::RawPtrTraits<WebKit::AuthenticatorTransportService>,WTF::DefaultRefDerefTraits<WebKit::AuthenticatorTransportService>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::begin(a2);
  v10 = (v9 + 40 * WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::size(a1));
  v11 = WTF::Vector<WebCore::PublicKeyCredentialDescriptor,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::end(a2);
  v12 = WTF::Vector<WebCore::PublicKeyCredentialDescriptor,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::end(a1);
  WTF::VectorTypeOperations<WebCore::PublicKeyCredentialDescriptor>::uninitializedCopy(v10, v11, v12);
  *(a1 + 3) = WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::size(a2);
  return a1;
}

BOOL WebKit::CtapAuthenticator::isUVSetup(WebKit::CtapAuthenticator *this)
{
  v2 = fido::AuthenticatorGetInfoResponse::options((this + 840));
  v3 = WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::size(v2);
  v4 = 1;
  if (v3)
  {
    v5 = fido::AuthenticatorGetInfoResponse::options((this + 840));
    return fido::AuthenticatorSupportedOptions::userVerificationAvailability(v5) == 0;
  }

  return v4;
}

uint64_t *WebKit::CtapAuthenticator::performAuthenticatorSelectionForSetupPin(WebKit::CtapAuthenticator *this)
{
  v49 = *MEMORY[0x1E69E9840];
  v33 = this;
  oslog = qword_1ED641530;
  v31 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(qword_1ED641530, OS_LOG_TYPE_DEFAULT))
  {
    v2 = oslog;
    v3 = v31;
    WebKit::CtapAuthenticator::aaguidForDebugging(&v29, this);
    WTF::String::utf8();
    v4 = WTF::CString::data(&v30);
    WebKit::FidoAuthenticator::transportForDebugging(&v27, this);
    WTF::String::utf8();
    v5 = WTF::CString::data(&v28);
    __os_log_helper_16_2_3_8_0_8_32_8_32(buf, this, v4, v5);
    _os_log_impl(&dword_19D52D000, v2, v3, "%p [aaguid=%s, transport=%s] - CtapAuthenticator::performAuthenticatorSelectionForSetupPin: Requesting gesture for authenticator selection", buf, 0x20u);
    WTF::CString::~CString(&v28);
    v35 = &v27;
    v36 = &v27;
    v39 = &v27;
    v40[1] = &v27;
    v40[0] = 0;
    v47 = &v27;
    v46 = v40;
    v43 = std::exchange[abi:sn200100]<WTF::StringImpl *,decltype(nullptr) &>(&v27);
    if (v43)
    {
      WTF::StringImpl::deref(v43);
    }

    WTF::CString::~CString(&v30);
    v34 = &v29;
    v37 = &v29;
    v38 = &v29;
    v41[1] = &v29;
    v41[0] = 0;
    v45 = &v29;
    v44 = v41;
    v42 = std::exchange[abi:sn200100]<WTF::StringImpl *,decltype(nullptr) &>(&v29);
    if (v42)
    {
      WTF::StringImpl::deref(v42);
    }
  }

  std::__to_address[abi:sn200100]<char const>();
  v26 = 1;
  v7 = std::set<fido::ProtocolVersion,std::less<fido::ProtocolVersion>,WTF::FastAllocator<fido::ProtocolVersion>>::contains[abi:sn200100](v6, &v26);
  v8 = 1;
  if (!v7)
  {
    std::__to_address[abi:sn200100]<char const>();
    v25 = 2;
    v8 = std::set<fido::ProtocolVersion,std::less<fido::ProtocolVersion>,WTF::FastAllocator<fido::ProtocolVersion>>::contains[abi:sn200100](v9, &v25);
  }

  if (v8)
  {
    WebKit::FidoAuthenticator::protectedDriver(this, &v24);
    v10 = WTF::RefPtr<API::WebAuthenticationPanel,WTF::RawPtrTraits<API::WebAuthenticationPanel>,WTF::DefaultRefDerefTraits<API::WebAuthenticationPanel>>::get(&v24);
    fido::encodeEmptyAuthenticatorRequest();
    WTF::WeakPtr<WebKit::AuthenticatorManager,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>::WeakPtr<void>(&v20, this);
    v11 = WebKit::FidoAuthenticator::driver(this);
    WTF::WeakPtr<WebKit::AuthenticatorManager,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>::WeakPtr<void>(&v21, v11);
    WTF::Function<void ()(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>::Function<WebKit::CtapAuthenticator::performAuthenticatorSelectionForSetupPin(void)::$_0,void>(&v22, &v20);
    (*(*v10 + 16))(v10, v23, &v22);
    WTF::Function<void ()(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>::~Function(&v22);
    WebKit::CtapAuthenticator::performAuthenticatorSelectionForSetupPin(void)::$_0::~$_0(&v20);
    WTF::Vector<WebCore::AuthenticatorTransport,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v23);
    return WTF::Ref<WebKit::CtapDriver,WTF::RawPtrTraits<WebKit::CtapDriver>,WTF::DefaultRefDerefTraits<WebKit::CtapDriver>>::~Ref(&v24);
  }

  else
  {
    fido::encodeBogusRequestForAuthenticatorSelection(v19, v8);
    WebKit::FidoAuthenticator::protectedDriver(this, &v18);
    v13 = WTF::RefPtr<API::WebAuthenticationPanel,WTF::RawPtrTraits<API::WebAuthenticationPanel>,WTF::DefaultRefDerefTraits<API::WebAuthenticationPanel>>::get(&v18);
    WTF::WeakPtr<WebKit::AuthenticatorManager,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>::WeakPtr<void>(&v15, this);
    v14 = WebKit::FidoAuthenticator::driver(this);
    WTF::WeakPtr<WebKit::AuthenticatorManager,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>::WeakPtr<void>(&v16, v14);
    WTF::Function<void ()(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>::Function<WebKit::CtapAuthenticator::performAuthenticatorSelectionForSetupPin(void)::$_1,void>(&v17, &v15);
    (*(*v13 + 16))(v13, v19, &v17);
    WTF::Function<void ()(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>::~Function(&v17);
    WebKit::CtapAuthenticator::performAuthenticatorSelectionForSetupPin(void)::$_0::~$_0(&v15);
    WTF::Ref<WebKit::CtapDriver,WTF::RawPtrTraits<WebKit::CtapDriver>,WTF::DefaultRefDerefTraits<WebKit::CtapDriver>>::~Ref(&v18);
    return WTF::Vector<WebCore::AuthenticatorTransport,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v19);
  }
}

uint64_t (***WebKit::Authenticator::protectedObserver(WebKit::Authenticator *this, uint64_t a2))(void)
{
  result = WTF::WeakPtr<WebKit::AuthenticatorManager,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>::get((a2 + 24));
  v4 = result;
  if (result)
  {
    result = (**result)();
  }

  *this = v4;
  return result;
}

uint64_t std::optional<WTF::Vector<WebCore::PublicKeyCredentialDescriptor,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>::optional[abi:sn200100]<WTF::Vector<WebCore::PublicKeyCredentialDescriptor,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,0>(uint64_t a1, uint64_t *a2)
{
  std::optional<WTF::Vector<WebCore::PublicKeyCredentialDescriptor,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>::optional[abi:sn200100]<WTF::Vector<WebCore::PublicKeyCredentialDescriptor,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,0>(a1, a2);
  return a1;
}

{
  _ZNSt3__127__optional_move_assign_baseIN3WTF6VectorIN7WebCore29PublicKeyCredentialDescriptorELm0ENS1_15CrashOnOverflowELm16ENS1_10FastMallocEEELb0EECI2NS_24__optional_destruct_baseIS7_Lb0EEEIJS7_EEENS_10in_place_tEDpOT_(a1, a2);
  return a1;
}

uint64_t std::optional<WTF::Vector<WebCore::PublicKeyCredentialDescriptor,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>::~optional(uint64_t a1)
{
  std::optional<WTF::Vector<WebCore::PublicKeyCredentialDescriptor,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>::~optional(a1);
  return a1;
}

{
  std::__optional_move_assign_base<WTF::Vector<WebCore::PublicKeyCredentialDescriptor,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,false>::~__optional_move_assign_base(a1);
  return a1;
}

uint64_t std::optional<fido::PinParameters>::optional[abi:sn200100]<fido::PinParameters,0>(uint64_t a1, uint64_t a2)
{
  std::optional<fido::PinParameters>::optional[abi:sn200100]<fido::PinParameters,0>(a1, a2);
  return a1;
}

{
  _ZNSt3__127__optional_move_assign_baseIN4fido13PinParametersELb0EECI2NS_24__optional_destruct_baseIS2_Lb0EEEIJS2_EEENS_10in_place_tEDpOT_(a1, a2);
  return a1;
}

void *std::span<unsigned char const,18446744073709551615ul>::span[abi:sn200100]<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &>(void *a1, uint64_t a2)
{
  std::span<unsigned char const,18446744073709551615ul>::span[abi:sn200100]<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &>(a1, a2);
  return a1;
}

{
  std::ranges::__data::__fn::operator()[abi:sn200100]<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &>(&std::ranges::__cpo::data, a2);
  *a1 = v3;
  a1[1] = std::ranges::__size::__fn::operator()[abi:sn200100]<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &>(&std::ranges::__cpo::size, a2);
  return a1;
}

double __os_log_helper_16_2_4_8_0_8_32_8_32_8_32(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *&result = 134218754;
  *a1 = 134218754;
  *(a1 + 4) = a2;
  *(a1 + 12) = 2080;
  *(a1 + 14) = a3;
  *(a1 + 22) = 2080;
  *(a1 + 24) = a4;
  *(a1 + 32) = 2080;
  *(a1 + 34) = a5;
  return result;
}

double __os_log_helper_16_2_5_8_0_8_32_8_32_8_0_4_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  *&result = 134219010;
  *a1 = 134219010;
  *(a1 + 4) = a2;
  *(a1 + 12) = 2080;
  *(a1 + 14) = a3;
  *(a1 + 22) = 2080;
  *(a1 + 24) = a4;
  *(a1 + 32) = 2048;
  *(a1 + 34) = a5;
  *(a1 + 42) = 1024;
  *(a1 + 44) = a6;
  return result;
}

uint64_t *WTF::Function<void ()(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>::Function<WebKit::CtapAuthenticator::continueMakeCredentialAfterCheckExcludedCredentials(BOOL)::$_0,void>(uint64_t *a1, uint64_t *a2)
{
  WTF::Function<void ()(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>::Function<WebKit::CtapAuthenticator::continueMakeCredentialAfterCheckExcludedCredentials(BOOL)::$_0,void>(a1, a2);
  return a1;
}

{
  v4[2] = a1;
  v4[1] = a2;
  v4[4] = v4;
  v4[3] = a2;
  std::make_unique[abi:sn200100]<WTF::Detail::CallableWrapper<WebKit::CtapAuthenticator::continueMakeCredentialAfterCheckExcludedCredentials(BOOL)::$_0,void,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&>,WebKit::CtapAuthenticator::continueMakeCredentialAfterCheckExcludedCredentials(BOOL)::$_0,0>(v4, a2);
  std::unique_ptr<WTF::Detail::CallableWrapperBase<void>>::unique_ptr[abi:sn200100]<WTF::Detail::CallableWrapper<WTF::RunLoop::Timer::Timer<WebKit::AuthenticatorManager>(WTF::Ref<WTF::RunLoop,WTF::RawPtrTraits<WTF::RunLoop>,WTF::DefaultRefDerefTraits<WTF::RunLoop>> &&,WTF::ASCIILiteral,WebKit::AuthenticatorManager *,void (WTF::ASCIILiteral::*)(void))::{lambda(void)#1},void>,std::default_delete<WTF::RunLoop::Timer::Timer<WebKit::AuthenticatorManager>(WTF::Ref<WTF::RunLoop,WTF::RawPtrTraits<WTF::RunLoop>,WTF::DefaultRefDerefTraits<WTF::RunLoop>> &&,WTF::ASCIILiteral,WebKit::AuthenticatorManager *,void (WTF::ASCIILiteral::*)(void))::{lambda(void)#1}>,void,void>(a1, v4);
  std::unique_ptr<WTF::Detail::CallableWrapper<WebKit::CtapAuthenticator::makeCredential(void)::$_0,void,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&>,std::default_delete<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&>>::~unique_ptr[abi:sn200100](v4);
  return a1;
}

uint64_t WebKit::CtapAuthenticator::continueMakeCredentialAfterResponseReceived(_BYTE *a1, uint64_t a2)
{
  v146 = *MEMORY[0x1E69E9840];
  v82 = a1;
  v81 = a2;
  ResponseCode = fido::getResponseCode();
  oslog = qword_1ED641530;
  v78 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(qword_1ED641530, OS_LOG_TYPE_DEFAULT))
  {
    v3 = oslog;
    v4 = v78;
    WebKit::CtapAuthenticator::aaguidForDebugging(&v76, a1);
    WTF::String::utf8();
    v5 = WTF::CString::data(&v77);
    WebKit::FidoAuthenticator::transportForDebugging(&v74, a1);
    WTF::String::utf8();
    v6 = WTF::CString::data(&v75);
    v7 = WTF::enumToUnderlyingType<fido::CtapDeviceResponseCode>(ResponseCode);
    __os_log_helper_16_2_4_8_0_8_32_8_32_4_0(buf, a1, v5, v6, v7);
    _os_log_impl(&dword_19D52D000, v3, v4, "%p [aaguid=%s, transport=%s] - CtapAuthenticator::continueMakeCredentialAfterResponseReceived: Got error code: %hhu from authenticator.", buf, 0x26u);
    WTF::CString::~CString(&v75);
    v87 = &v74;
    v97 = &v74;
    v106 = &v74;
    v107[1] = &v74;
    v107[0] = 0;
    v126 = &v74;
    v125 = v107;
    v116 = std::exchange[abi:sn200100]<WTF::StringImpl *,decltype(nullptr) &>(&v74);
    if (v116)
    {
      WTF::StringImpl::deref(v116);
    }

    WTF::CString::~CString(&v77);
    v86 = &v76;
    v98 = &v76;
    v105 = &v76;
    v108[1] = &v76;
    v108[0] = 0;
    v124 = &v76;
    v123 = v108;
    v115 = std::exchange[abi:sn200100]<WTF::StringImpl *,decltype(nullptr) &>(&v76);
    if (v115)
    {
      WTF::StringImpl::deref(v115);
    }
  }

  WebKit::CtapAuthenticator::transports(v72, a1);
  v8 = WebKit::Authenticator::requestData(a1);
  std::get<WebCore::PublicKeyCredentialCreationOptions,WebCore::PublicKeyCredentialCreationOptions,WebCore::PublicKeyCredentialRequestOptions>(v8 + 16);
  fido::readCTAPMakeCredentialResponse();
  WTF::Vector<WebCore::AuthenticatorTransport,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v72);
  if (WTF::RefPtr<WebKit::WebPageProxy,WTF::RawPtrTraits<WebKit::WebPageProxy>,WTF::DefaultRefDerefTraits<WebKit::WebPageProxy>>::operator!(&v73))
  {
    v71 = qword_1ED641530;
    v70 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(qword_1ED641530, OS_LOG_TYPE_DEFAULT))
    {
      v9 = v71;
      v10 = v70;
      WebKit::CtapAuthenticator::aaguidForDebugging(&v68, a1);
      WTF::String::utf8();
      v11 = WTF::CString::data(&v69);
      WebKit::FidoAuthenticator::transportForDebugging(&v66, a1);
      WTF::String::utf8();
      v12 = WTF::CString::data(&v67);
      std::span<unsigned char const,18446744073709551615ul>::span[abi:sn200100]<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &>(v63, v81);
      v62 = 0;
      WTF::OptionSet<WTF::Base64EncodeOption>::OptionSet(&v62);
      WTF::base64EncodeToString(&v64, v63[0], v63[1]);
      WTF::String::utf8();
      v13 = WTF::CString::data(&v65);
      __os_log_helper_16_2_4_8_0_8_32_8_32_8_32(v144, a1, v11, v12, v13);
      _os_log_impl(&dword_19D52D000, v9, v10, "%p [aaguid=%s, transport=%s] - CtapAuthenticator::makeCredential: Failed to parse response %s", v144, 0x2Au);
      WTF::CString::~CString(&v65);
      v85 = &v64;
      v99 = &v64;
      v104 = &v64;
      v109[1] = &v64;
      v109[0] = 0;
      v122 = &v64;
      v121 = v109;
      v114 = std::exchange[abi:sn200100]<WTF::StringImpl *,decltype(nullptr) &>(&v64);
      if (v114)
      {
        WTF::StringImpl::deref(v114);
      }

      WTF::CString::~CString(&v67);
      v84 = &v66;
      v100 = &v66;
      v103 = &v66;
      v110[1] = &v66;
      v110[0] = 0;
      v120 = &v66;
      v119 = v110;
      v113 = std::exchange[abi:sn200100]<WTF::StringImpl *,decltype(nullptr) &>(&v66);
      if (v113)
      {
        WTF::StringImpl::deref(v113);
      }

      WTF::CString::~CString(&v69);
      v83 = &v68;
      v101 = &v68;
      v102 = &v68;
      v111[1] = &v68;
      v111[0] = 0;
      v118 = &v68;
      v117 = v111;
      v112 = std::exchange[abi:sn200100]<WTF::StringImpl *,decltype(nullptr) &>(&v68);
      if (v112)
      {
        WTF::StringImpl::deref(v112);
      }
    }

    switch(ResponseCode)
    {
      case 0x3Au:
        WebKit::CtapAuthenticator::makeCredential(a1);
        v61 = 1;
        break;
      case 0x19u:
        v58[0] = 8;
        v14 = WTF::StringLiterals::operator"" _s("At least one credential matches an entry of the excludeCredentials list in the authenticator.", 0x5D);
        v57 = v15;
        v56 = v14;
        WTF::String::String(&v59, v14, v15);
        mpark::variant<WTF::Ref<WebCore::AuthenticatorResponse,WTF::RawPtrTraits<WebCore::AuthenticatorResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorResponse>>,WebCore::ExceptionData>::variant<WebCore::ExceptionData,WebCore::ExceptionData,0,0,0,1ul,WebCore::ExceptionData,0>(v60);
        WebKit::Authenticator::receiveRespond(a1, v60);
        mpark::variant<WTF::Ref<WebCore::AuthenticatorResponse,WTF::RawPtrTraits<WebCore::AuthenticatorResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorResponse>>,WebCore::ExceptionData>::~variant(v60);
        WebCore::ExceptionData::~ExceptionData(v58);
        v61 = 1;
        break;
      case 0x28u:
        v16 = WebKit::Authenticator::requestData(a1);
        std::get<WebCore::PublicKeyCredentialCreationOptions,WebCore::PublicKeyCredentialCreationOptions,WebCore::PublicKeyCredentialRequestOptions>(v16 + 16);
        v55 = v17;
        std::optional<WebCore::AuthenticatorSelectionCriteria>::operator->[abi:sn200100](v17 + 120);
        v19 = *(v18 + 4);
        v20 = 1;
        if ((v19 & 1) == 0)
        {
          std::optional<WebCore::AuthenticatorSelectionCriteria>::operator->[abi:sn200100](v55 + 120);
          v54 = 0;
          v20 = std::operator==[abi:sn200100]<WebCore::MediationRequirement,WebCore::MediationRequirement>(v21 + 2, &v54);
        }

        if (v20)
        {
          WebKit::Authenticator::protectedObserver(&v53, a1);
          v91 = &v53;
          v138 = &v53;
          (*(*v53 + 48))();
          v93 = &v53;
          v130[1] = &v53;
          v130[0] = 0;
          v137 = &v53;
          v136 = v130;
          v133 = std::exchange[abi:sn200100]<WTF::StringImpl *,decltype(nullptr) &>(&v53);
          if (v133)
          {
            (*(*v133 + 8))();
          }
        }

        else if ((a1[1033] & 1) == 0)
        {
          a1[1033] = 1;
          WebKit::CtapAuthenticator::makeCredential(a1);
        }

        v61 = 1;
        break;
      default:
        {
          goto LABEL_38;
        }

        if (!WTF::Vector<WebCore::PublicKeyCredentialDescriptor,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::isEmpty((a1 + 1088)))
        {
          v22 = WebKit::Authenticator::observer(a1);
          v89 = &v52;
          v88 = v22;
          v128 = &v52;
          v127 = v22;
          v129 = v22;
          if (v22)
          {
            (**v129)();
          }

          v52 = v129;
          if (WTF::RefPtr<WebKit::AuthenticatorPresenterCoordinator,WTF::RawPtrTraits<WebKit::AuthenticatorPresenterCoordinator>,WTF::DefaultRefDerefTraits<WebKit::AuthenticatorPresenterCoordinator>>::operator BOOL(&v52))
          {
            v90 = &v52;
            v139 = &v52;
            v23 = v52;
            (*(*v23 + 48))(v23, v24);
          }

          v92 = &v52;
          v131[1] = &v52;
          v131[0] = 0;
          v135 = &v52;
          v134 = v131;
          v132 = std::exchange[abi:sn200100]<WTF::StringImpl *,decltype(nullptr) &>(&v52);
          if (v132)
          {
            (*(*v132 + 8))();
          }
        }

        if (WebKit::CtapAuthenticator::tryRestartPin(a1, &ResponseCode))
        {
          v61 = 1;
        }

        else
        {
LABEL_38:
          v49[0] = 24;
          v25 = WTF::StringLiterals::operator"" _s("Unknown internal error. Error code: ", 0x24);
          v48 = v26;
          v47 = v25;
          WTF::makeString<WTF::ASCIILiteral,unsigned char>(&v50, v25, v26, ResponseCode);
          mpark::variant<WTF::Ref<WebCore::AuthenticatorResponse,WTF::RawPtrTraits<WebCore::AuthenticatorResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorResponse>>,WebCore::ExceptionData>::variant<WebCore::ExceptionData,WebCore::ExceptionData,0,0,0,1ul,WebCore::ExceptionData,0>(v51);
          WebKit::Authenticator::receiveRespond(a1, v51);
          mpark::variant<WTF::Ref<WebCore::AuthenticatorResponse,WTF::RawPtrTraits<WebCore::AuthenticatorResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorResponse>>,WebCore::ExceptionData>::~variant(v51);
          WebCore::ExceptionData::~ExceptionData(v49);
          v61 = 1;
        }

        break;
    }
  }

  else
  {
    v27 = WebKit::Authenticator::requestData(a1);
    std::get<WebCore::PublicKeyCredentialCreationOptions,WebCore::PublicKeyCredentialCreationOptions,WebCore::PublicKeyCredentialRequestOptions>(v27 + 16);
    v46 = v28;
    if (std::optional<WebCore::AuthenticationExtensionsClientInputs>::operator BOOL[abi:sn200100](v28 + 136))
    {
      std::optional<WebCore::AuthenticationExtensionsClientInputs>::operator->[abi:sn200100](v46 + 136);
      if (std::optional<WebCore::MediationRequirement>::operator BOOL[abi:sn200100](v29 + 8))
      {
        v95 = &v73;
        v142 = &v73;
        WebCore::AuthenticatorResponse::extensions(v45, v73);
        v30 = fido::AuthenticatorGetInfoResponse::options((a1 + 840));
        v44 = (std::__optional_storage_base<WebCore::MediationRequirement,false>::has_value[abi:sn200100](v30) & 1) == 0;
        v31 = std::optional<WebCore::AuthenticatorSelectionCriteria>::operator BOOL[abi:sn200100](v46 + 120);
        v32 = 0;
        if (v31)
        {
          std::optional<WebCore::AuthenticatorSelectionCriteria>::operator->[abi:sn200100](v46 + 120);
          if ((std::optional<WebCore::MediationRequirement>::operator BOOL[abi:sn200100](v33 + 2) & 1) == 0 || (std::optional<WebCore::AuthenticatorSelectionCriteria>::operator->[abi:sn200100](v46 + 120), v42 = 2, v35 = std::operator!=[abi:sn200100]<WebCore::MediationRequirement,WebCore::MediationRequirement>(v34 + 2, &v42), v32 = 1, !v35))
          {
            std::optional<WebCore::AuthenticatorSelectionCriteria>::operator->[abi:sn200100](v46 + 120);
            v32 = *(v36 + 4);
          }
        }

        v43 = v32 & 1;
        v37 = 0;
        if (v44)
        {
          v37 = 0;
          if (v43)
          {
            v37 = a1[1033] ^ 1;
          }
        }

        v41 = v37 & 1;
        std::optional<WebCore::CredentialPropertiesOutput>::operator=[abi:sn200100]<WebCore::CredentialPropertiesOutput,void>(v45 + 2, &v41);
        v94 = &v73;
        v143 = &v73;
        WebCore::AuthenticatorResponse::setExtensions();
        WebCore::AuthenticationExtensionsClientOutputs::~AuthenticationExtensionsClientOutputs(v45);
      }
    }

    WTF::RefPtr<WebCore::AuthenticatorAttestationResponse,WTF::RawPtrTraits<WebCore::AuthenticatorAttestationResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorAttestationResponse>>::releaseNonNull(&v39, &v73);
    mpark::variant<WTF::Ref<WebCore::AuthenticatorResponse,WTF::RawPtrTraits<WebCore::AuthenticatorResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorResponse>>,WebCore::ExceptionData>::variant<WTF::Ref<WebCore::AuthenticatorAttestationResponse,WTF::RawPtrTraits<WebCore::AuthenticatorAttestationResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorAttestationResponse>>,WTF::Ref<WebCore::AuthenticatorAttestationResponse,WTF::RawPtrTraits<WebCore::AuthenticatorAttestationResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorAttestationResponse>>,0,0,0,0ul,WTF::Ref<WebCore::AuthenticatorResponse,WTF::RawPtrTraits<WebCore::AuthenticatorResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorResponse>>,0>(v40);
    WebKit::Authenticator::receiveRespond(a1, v40);
    mpark::variant<WTF::Ref<WebCore::AuthenticatorResponse,WTF::RawPtrTraits<WebCore::AuthenticatorResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorResponse>>,WebCore::ExceptionData>::~variant(v40);
    WTF::Ref<WebCore::AuthenticatorResponse,WTF::RawPtrTraits<WebCore::AuthenticatorResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorResponse>>::~Ref(&v39);
    v61 = 0;
  }

  v96 = &v73;
  v140[1] = &v73;
  v140[0] = 0;
  v140[3] = &v73;
  v140[2] = v140;
  result = std::exchange[abi:sn200100]<WTF::StringImpl *,decltype(nullptr) &>(&v73);
  v141 = result;
  if (result)
  {
    return WTF::RefCounted<WebCore::AuthenticatorResponse>::deref((v141 + 8));
  }

  return result;
}

uint64_t WebKit::CtapAuthenticator::transports(WebKit::CtapAuthenticator *this, uint64_t a2)
{
  v12 = this;
  v11 = a2;
  v10 = fido::AuthenticatorGetInfoResponse::transports((a2 + 840));
  if (std::optional<WebCore::GlobalFrameIdentifier>::operator BOOL[abi:sn200100](v10))
  {
    std::optional<WebCore::GlobalFrameIdentifier>::operator->[abi:sn200100](v10);
    return WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(this, v4);
  }

  else
  {
    v6 = WebKit::FidoAuthenticator::driver(a2);
    v7 = WebKit::CtapDriver::transport(v6);
    v8 = &v7;
    v9 = 1;
    return WTF::Vector<WebCore::AuthenticatorTransport,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(this, &v7, 1);
  }
}

BOOL WTF::makeString<WTF::ASCIILiteral,unsigned char>(WTF::String *a1, uint64_t a2, uint64_t a3, char a4)
{
  v8 = a1;
  *(&v7 + 1) = a3;
  *&v7 = a2;
  v6 = a4;
  WTF::tryMakeString<WTF::ASCIILiteral,unsigned char>(a1, &v7, &v6);
  result = WTF::operator!(a1);
  if (result)
  {
    __break(0xC471u);
    JUMPOUT(0x19D695560);
  }

  return result;
}

void std::optional<WebCore::AuthenticationExtensionsClientInputs>::operator->[abi:sn200100](uint64_t a1)
{
  if ((std::__optional_storage_base<WebCore::AuthenticationExtensionsClientInputs,false>::has_value[abi:sn200100](a1) & 1) == 0)
  {
    __break(1u);
  }

  std::__to_address[abi:sn200100]<char const>();
}

void std::optional<WebCore::CredentialPropertiesOutput>::operator=[abi:sn200100]<WebCore::CredentialPropertiesOutput,void>(_BYTE *a1, _BYTE *a2)
{
  if (std::__optional_storage_base<WebCore::MediationRequirement,false>::has_value[abi:sn200100](a1))
  {
    std::__to_address[abi:sn200100]<char const>();
    *v3 = *a2;
  }

  else
  {
    std::__optional_storage_base<WebCore::CredentialPropertiesOutput,false>::__construct[abi:sn200100]<WebCore::CredentialPropertiesOutput>(a1, a2);
  }
}

void WebCore::AuthenticationExtensionsClientOutputs::~AuthenticationExtensionsClientOutputs(WebCore::AuthenticationExtensionsClientOutputs *this)
{
  WebCore::AuthenticationExtensionsClientOutputs::~AuthenticationExtensionsClientOutputs(this);
}

{
  std::optional<WebCore::AuthenticationExtensionsClientOutputs::PRFOutputs>::~optional((this + 40));
  std::optional<WebCore::AuthenticationExtensionsClientOutputs::LargeBlobOutputs>::~optional((this + 8));
}

void *WTF::RefPtr<WebCore::AuthenticatorAttestationResponse,WTF::RawPtrTraits<WebCore::AuthenticatorAttestationResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorAttestationResponse>>::releaseNonNull(void *a1, WTF::RefCountedBase **a2)
{
  result = WTF::adoptRef<WebKit::AuthenticatorManager,WTF::RawPtrTraits<WebKit::AuthenticatorManager>,WTF::DefaultRefDerefTraits<WebKit::AuthenticatorManager>>(a1, *a2);
  *a2 = 0;
  return result;
}

uint64_t mpark::variant<WTF::Ref<WebCore::AuthenticatorResponse,WTF::RawPtrTraits<WebCore::AuthenticatorResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorResponse>>,WebCore::ExceptionData>::variant<WTF::Ref<WebCore::AuthenticatorAttestationResponse,WTF::RawPtrTraits<WebCore::AuthenticatorAttestationResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorAttestationResponse>>,WTF::Ref<WebCore::AuthenticatorAttestationResponse,WTF::RawPtrTraits<WebCore::AuthenticatorAttestationResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorAttestationResponse>>,0,0,0,0ul,WTF::Ref<WebCore::AuthenticatorResponse,WTF::RawPtrTraits<WebCore::AuthenticatorResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorResponse>>,0>(uint64_t a1)
{
  mpark::variant<WTF::Ref<WebCore::AuthenticatorResponse,WTF::RawPtrTraits<WebCore::AuthenticatorResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorResponse>>,WebCore::ExceptionData>::variant<WTF::Ref<WebCore::AuthenticatorAttestationResponse,WTF::RawPtrTraits<WebCore::AuthenticatorAttestationResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorAttestationResponse>>,WTF::Ref<WebCore::AuthenticatorAttestationResponse,WTF::RawPtrTraits<WebCore::AuthenticatorAttestationResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorAttestationResponse>>,0,0,0,0ul,WTF::Ref<WebCore::AuthenticatorResponse,WTF::RawPtrTraits<WebCore::AuthenticatorResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorResponse>>,0>(a1);
  return a1;
}

{
  std::__to_address[abi:sn200100]<char const>();
  _ZN5mpark6detail4implIJN3WTF3RefIN7WebCore21AuthenticatorResponseENS2_12RawPtrTraitsIS5_EENS2_21DefaultRefDerefTraitsIS5_EEEENS4_13ExceptionDataEEECI1NS0_4baseILNS0_5TraitE1EJSA_SB_EEEILm0EJNS3_INS4_32AuthenticatorAttestationResponseENS6_ISF_EENS8_ISF_EEEEEEENS_16in_place_index_tIXT_EEEDpOT0_(a1);
  return a1;
}

fido::PinParameters *WebKit::CtapAuthenticator::getAssertion(WebKit::CtapAuthenticator *this)
{
  v50 = *MEMORY[0x1E69E9840];
  v34 = this;
  oslog = qword_1ED641530;
  v32 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(qword_1ED641530, OS_LOG_TYPE_DEFAULT))
  {
    v2 = oslog;
    v3 = v32;
    WebKit::CtapAuthenticator::aaguidForDebugging(&v30, this);
    WTF::String::utf8();
    v4 = WTF::CString::data(&v31);
    WebKit::FidoAuthenticator::transportForDebugging(&v28, this);
    WTF::String::utf8();
    v5 = WTF::CString::data(&v29);
    __os_log_helper_16_2_3_8_0_8_32_8_32(buf, this, v4, v5);
    _os_log_impl(&dword_19D52D000, v2, v3, "%p [aaguid=%s, transport=%s] - CtapAuthenticator::getAssertion", buf, 0x20u);
    WTF::CString::~CString(&v29);
    v36 = &v28;
    v37 = &v28;
    v40 = &v28;
    v41[1] = &v28;
    v41[0] = 0;
    v48 = &v28;
    v47 = v41;
    v44 = std::exchange[abi:sn200100]<WTF::StringImpl *,decltype(nullptr) &>(&v28);
    if (v44)
    {
      WTF::StringImpl::deref(v44);
    }

    WTF::CString::~CString(&v31);
    v35 = &v30;
    v38 = &v30;
    v39 = &v30;
    v42[1] = &v30;
    v42[0] = 0;
    v46 = &v30;
    v45 = v42;
    v43 = std::exchange[abi:sn200100]<WTF::StringImpl *,decltype(nullptr) &>(&v30);
    if (v43)
    {
      WTF::StringImpl::deref(v43);
    }
  }

  v6 = WebKit::Authenticator::requestData(this);
  std::get<WebCore::PublicKeyCredentialRequestOptions,WebCore::PublicKeyCredentialCreationOptions,WebCore::PublicKeyCredentialRequestOptions>(v6 + 16);
  v27 = v7;
  if (WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::size(v7 + 32) <= 1)
  {
    return WebKit::CtapAuthenticator::continueGetAssertionAfterCheckAllowCredentials(this);
  }

  v26 = 1;
  v8 = fido::AuthenticatorGetInfoResponse::maxCredentialIDLength((this + 840));
  if (std::optional<unsigned int>::operator BOOL[abi:sn200100](v8))
  {
    v9 = fido::AuthenticatorGetInfoResponse::maxCredentialCountInList((this + 840));
    if (std::optional<unsigned int>::operator BOOL[abi:sn200100](v9))
    {
      v10 = fido::AuthenticatorGetInfoResponse::maxCredentialCountInList((this + 840));
      std::optional<unsigned int>::operator*[abi:sn200100](v10);
      v26 = *v11;
    }
  }

  WTF::Vector<WebCore::PublicKeyCredentialDescriptor,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v24, v27 + 32);
  v12 = v26;
  v23 = *fido::AuthenticatorGetInfoResponse::maxCredentialIDLength((this + 840));
  WTF::Vector<WTF::Vector<WebCore::PublicKeyCredentialDescriptor,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::operator=(this + 1072, v25);
  WTF::Vector<WTF::Vector<WebCore::PublicKeyCredentialDescriptor,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v25);
  WTF::Vector<WebCore::PublicKeyCredentialDescriptor,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v24);
  if (!WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::size(this + 1072))
  {
    return WebKit::CtapAuthenticator::continueGetAssertionAfterCheckAllowCredentials(this);
  }

  *(this + 131) = 0;
  std::optional<fido::PinParameters>::optional[abi:sn200100](v22);
  if (!WTF::Vector<WebCore::PublicKeyCredentialDescriptor,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::isEmpty(this + 1088))
  {
    v20 = 1;
    WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(&v21, this + 1088);
    std::optional<fido::PinParameters>::operator=[abi:sn200100]<fido::PinParameters,void>(v22, &v20);
    fido::PinParameters::~PinParameters(&v20);
  }

  WebKit::Authenticator::requestData(this);
  WTF::Vector<WTF::Vector<WebCore::PublicKeyCredentialDescriptor,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::operator[](this + 1072, *(this + 131));
  std::optional<fido::PinParameters>::optional[abi:sn200100](v18, v22);
  fido::encodeSilentGetAssertion();
  std::optional<fido::PinParameters>::~optional(v18);
  WebKit::FidoAuthenticator::protectedDriver(this, &v17);
  v14 = WTF::RefPtr<API::WebAuthenticationPanel,WTF::RawPtrTraits<API::WebAuthenticationPanel>,WTF::DefaultRefDerefTraits<API::WebAuthenticationPanel>>::get(&v17);
  WTF::WeakPtr<WebKit::AuthenticatorManager,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>::WeakPtr<void>(&v15, this);
  WTF::Function<void ()(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>::Function<WebKit::CtapAuthenticator::getAssertion(void)::$_0,void>(&v16, &v15);
  (*(*v14 + 16))(v14, v19, &v16);
  WTF::Function<void ()(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>::~Function(&v16);
  WebKit::CtapAuthenticator::makeCredential(void)::$_0::~$_0(&v15);
  WTF::Ref<WebKit::CtapDriver,WTF::RawPtrTraits<WebKit::CtapDriver>,WTF::DefaultRefDerefTraits<WebKit::CtapDriver>>::~Ref(&v17);
  WTF::Vector<WebCore::AuthenticatorTransport,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v19);
  return std::optional<fido::PinParameters>::~optional(v22);
}

uint64_t WebKit::CtapAuthenticator::continueGetAssertionAfterCheckAllowCredentials(WebKit::CtapAuthenticator *this)
{
  v122 = *MEMORY[0x1E69E9840];
  v69 = this;
  WTF::Vector<WTF::Ref<WebKit::AuthenticatorTransportService,WTF::RawPtrTraits<WebKit::AuthenticatorTransportService>,WTF::DefaultRefDerefTraits<WebKit::AuthenticatorTransportService>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v68);
  v2 = WebKit::Authenticator::requestData(this);
  std::get<WebCore::PublicKeyCredentialRequestOptions,WebCore::PublicKeyCredentialCreationOptions,WebCore::PublicKeyCredentialRequestOptions>(v2 + 16);
  v67 = v3;
  v4 = fido::AuthenticatorGetInfoResponse::options((this + 840));
  v66 = fido::AuthenticatorSupportedOptions::userVerificationAvailability(v4);
  WTF::Vector<WTF::Ref<WebKit::AuthenticatorTransportService,WTF::RawPtrTraits<WebKit::AuthenticatorTransportService>,WTF::DefaultRefDerefTraits<WebKit::AuthenticatorTransportService>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v65);
  std::optional<WTF::Vector<WebCore::PublicKeyCredentialDescriptor,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>::optional[abi:sn200100](v64);
  if (WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::size(v67 + 32) > 1)
  {
    v5 = *(this + 131);
    if (v5 < WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::size(this + 1072))
    {
      v6 = WTF::Vector<WTF::Vector<WebCore::PublicKeyCredentialDescriptor,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::operator[](this + 1072, *(this + 131));
      std::optional<WTF::Vector<WebCore::PublicKeyCredentialDescriptor,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>::operator=[abi:sn200100]<WTF::Vector<WebCore::PublicKeyCredentialDescriptor,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>&,void>(v64, v6);
    }
  }

  oslog = qword_1ED641530;
  v62 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(qword_1ED641530, OS_LOG_TYPE_DEFAULT))
  {
    v7 = oslog;
    v8 = v62;
    WebKit::CtapAuthenticator::aaguidForDebugging(&v60, this);
    WTF::String::utf8();
    v9 = WTF::CString::data(&v61);
    WebKit::FidoAuthenticator::transportForDebugging(&v58, this);
    WTF::String::utf8();
    v10 = WTF::CString::data(&v59);
    __os_log_helper_16_2_5_8_0_8_32_8_32_1_0_4_0(buf, this, v9, v10, *(v67 + 48), v66);
    _os_log_impl(&dword_19D52D000, v7, v8, "%p [aaguid=%s, transport=%s] - CtapAuthenticator::getAssertion uv: %hhu internalUvAvailability %d", buf, 0x29u);
    WTF::CString::~CString(&v59);
    v76 = &v58;
    v77 = &v58;
    v90 = &v58;
    v91[1] = &v58;
    v91[0] = 0;
    v118 = &v58;
    v117 = v91;
    v104 = std::exchange[abi:sn200100]<WTF::StringImpl *,decltype(nullptr) &>(&v58);
    if (v104)
    {
      WTF::StringImpl::deref(v104);
    }

    WTF::CString::~CString(&v61);
    v75 = &v60;
    v78 = &v60;
    v89 = &v60;
    v92[1] = &v60;
    v92[0] = 0;
    v116 = &v60;
    v115 = v92;
    v103 = std::exchange[abi:sn200100]<WTF::StringImpl *,decltype(nullptr) &>(&v60);
    if (v103)
    {
      WTF::StringImpl::deref(v103);
    }
  }

  if (v66 || *(v67 + 48) == 2 || !WTF::Vector<WebCore::PublicKeyCredentialDescriptor,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::isEmpty(this + 1088))
  {
    v11 = fido::AuthenticatorGetInfoResponse::options((this + 840));
    if (WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::size(v11) || *(v67 + 48) == 2)
    {
      WebKit::Authenticator::requestData(this);
      std::optional<fido::PinParameters>::optional[abi:sn200100](v50);
      fido::encodeGetAssertionRequestAsCBOR();
      WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::operator=(v68, v51);
      WTF::Vector<WebCore::AuthenticatorTransport,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v51);
      std::optional<fido::PinParameters>::~optional(v50);
    }

    else
    {
      WebKit::Authenticator::requestData(this);
      v52 = 1;
      WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(&v53, this + 1088);
      std::optional<fido::PinParameters>::optional[abi:sn200100]<fido::PinParameters,0>(v54, &v52);
      fido::encodeGetAssertionRequestAsCBOR();
      WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::operator=(v68, v55);
      WTF::Vector<WebCore::AuthenticatorTransport,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v55);
      std::optional<fido::PinParameters>::~optional(v54);
      fido::PinParameters::~PinParameters(&v52);
    }
  }

  else
  {
    WebKit::Authenticator::requestData(this);
    std::optional<fido::PinParameters>::optional[abi:sn200100](v56);
    fido::encodeGetAssertionRequestAsCBOR();
    WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::operator=(v68, v57);
    WTF::Vector<WebCore::AuthenticatorTransport,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v57);
    std::optional<fido::PinParameters>::~optional(v56);
  }

  v12 = fido::AuthenticatorGetInfoResponse::maxMsgSize((this + 840));
  if (std::optional<unsigned int>::operator BOOL[abi:sn200100](v12))
  {
    v13 = WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::size(v68);
    v14 = fido::AuthenticatorGetInfoResponse::maxMsgSize((this + 840));
    std::optional<unsigned int>::operator*[abi:sn200100](v14);
    if (v13 >= *v15)
    {
      v49 = qword_1ED641530;
      v48 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(qword_1ED641530, OS_LOG_TYPE_DEFAULT))
      {
        v16 = v49;
        v17 = v48;
        WebKit::CtapAuthenticator::aaguidForDebugging(&v46, this);
        WTF::String::utf8();
        v18 = WTF::CString::data(&v47);
        WebKit::FidoAuthenticator::transportForDebugging(&v44, this);
        WTF::String::utf8();
        v19 = WTF::CString::data(&v45);
        v20 = WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::size(v68);
        v21 = fido::AuthenticatorGetInfoResponse::maxMsgSize((this + 840));
        std::optional<unsigned int>::operator*[abi:sn200100](v21);
        __os_log_helper_16_2_5_8_0_8_32_8_32_8_0_4_0(v120, this, v18, v19, v20, *v22);
        _os_log_impl(&dword_19D52D000, v16, v17, "%p [aaguid=%s, transport=%s] - CtapAuthenticator::getAssertion cmdSize = %lu maxMsgSize = %u", v120, 0x30u);
        WTF::CString::~CString(&v45);
        v74 = &v44;
        v79 = &v44;
        v88 = &v44;
        v93[1] = &v44;
        v93[0] = 0;
        v114 = &v44;
        v113 = v93;
        v102 = std::exchange[abi:sn200100]<WTF::StringImpl *,decltype(nullptr) &>(&v44);
        if (v102)
        {
          WTF::StringImpl::deref(v102);
        }

        WTF::CString::~CString(&v47);
        v73 = &v46;
        v80 = &v46;
        v87 = &v46;
        v94[1] = &v46;
        v94[0] = 0;
        v112 = &v46;
        v111 = v94;
        v101 = std::exchange[abi:sn200100]<WTF::StringImpl *,decltype(nullptr) &>(&v46);
        if (v101)
        {
          WTF::StringImpl::deref(v101);
        }
      }
    }
  }

  v43 = qword_1ED641530;
  v42 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(qword_1ED641530, OS_LOG_TYPE_DEFAULT))
  {
    v23 = v43;
    v24 = v42;
    WebKit::CtapAuthenticator::aaguidForDebugging(&v40, this);
    WTF::String::utf8();
    v25 = WTF::CString::data(&v41);
    WebKit::FidoAuthenticator::transportForDebugging(&v38, this);
    WTF::String::utf8();
    v26 = WTF::CString::data(&v39);
    std::span<unsigned char const,18446744073709551615ul>::span[abi:sn200100]<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &>(v35, v68);
    v34 = 0;
    WTF::OptionSet<WTF::Base64EncodeOption>::OptionSet(&v34);
    WTF::base64EncodeToString(&v36, v35[0], v35[1]);
    WTF::String::utf8();
    v27 = WTF::CString::data(&v37);
    __os_log_helper_16_2_4_8_0_8_32_8_32_8_32(v119, this, v25, v26, v27);
    _os_log_impl(&dword_19D52D000, v23, v24, "%p [aaguid=%s, transport=%s] - CtapAuthenticator::getAssertion: Sending %s", v119, 0x2Au);
    WTF::CString::~CString(&v37);
    v72 = &v36;
    v81 = &v36;
    v86 = &v36;
    v95[1] = &v36;
    v95[0] = 0;
    v110 = &v36;
    v109 = v95;
    v100 = std::exchange[abi:sn200100]<WTF::StringImpl *,decltype(nullptr) &>(&v36);
    if (v100)
    {
      WTF::StringImpl::deref(v100);
    }

    WTF::CString::~CString(&v39);
    v71 = &v38;
    v82 = &v38;
    v85 = &v38;
    v96[1] = &v38;
    v96[0] = 0;
    v108 = &v38;
    v107 = v96;
    v99 = std::exchange[abi:sn200100]<WTF::StringImpl *,decltype(nullptr) &>(&v38);
    if (v99)
    {
      WTF::StringImpl::deref(v99);
    }

    WTF::CString::~CString(&v41);
    v70 = &v40;
    v83 = &v40;
    v84 = &v40;
    v97[1] = &v40;
    v97[0] = 0;
    v106 = &v40;
    v105 = v97;
    v98 = std::exchange[abi:sn200100]<WTF::StringImpl *,decltype(nullptr) &>(&v40);
    if (v98)
    {
      WTF::StringImpl::deref(v98);
    }
  }

  WebKit::FidoAuthenticator::protectedDriver(this, &v33);
  v28 = WTF::RefPtr<API::WebAuthenticationPanel,WTF::RawPtrTraits<API::WebAuthenticationPanel>,WTF::DefaultRefDerefTraits<API::WebAuthenticationPanel>>::get(&v33);
  WTF::WeakPtr<WebKit::AuthenticatorManager,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>::WeakPtr<void>(&v31, this);
  WTF::Function<void ()(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>::Function<WebKit::CtapAuthenticator::continueGetAssertionAfterCheckAllowCredentials(void)::$_0,void>(&v32, &v31);
  (*(*v28 + 16))(v28, v68, &v32);
  WTF::Function<void ()(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>::~Function(&v32);
  WebKit::CtapAuthenticator::makeCredential(void)::$_0::~$_0(&v31);
  WTF::Ref<WebKit::CtapDriver,WTF::RawPtrTraits<WebKit::CtapDriver>,WTF::DefaultRefDerefTraits<WebKit::CtapDriver>>::~Ref(&v33);
  std::optional<WTF::Vector<WebCore::PublicKeyCredentialDescriptor,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>::~optional(v64);
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v65, v29);
  return WTF::Vector<WebCore::AuthenticatorTransport,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v68);
}

uint64_t *WTF::Function<void ()(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>::Function<WebKit::CtapAuthenticator::getAssertion(void)::$_0,void>(uint64_t *a1, uint64_t *a2)
{
  WTF::Function<void ()(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>::Function<WebKit::CtapAuthenticator::getAssertion(void)::$_0,void>(a1, a2);
  return a1;
}

{
  v4[2] = a1;
  v4[1] = a2;
  v4[4] = v4;
  v4[3] = a2;
  std::make_unique[abi:sn200100]<WTF::Detail::CallableWrapper<WebKit::CtapAuthenticator::getAssertion(void)::$_0,void,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&>,WebKit::CtapAuthenticator::getAssertion(void)::$_0,0>(v4, a2);
  std::unique_ptr<WTF::Detail::CallableWrapperBase<void>>::unique_ptr[abi:sn200100]<WTF::Detail::CallableWrapper<WTF::RunLoop::Timer::Timer<WebKit::AuthenticatorManager>(WTF::Ref<WTF::RunLoop,WTF::RawPtrTraits<WTF::RunLoop>,WTF::DefaultRefDerefTraits<WTF::RunLoop>> &&,WTF::ASCIILiteral,WebKit::AuthenticatorManager *,void (WTF::ASCIILiteral::*)(void))::{lambda(void)#1},void>,std::default_delete<WTF::RunLoop::Timer::Timer<WebKit::AuthenticatorManager>(WTF::Ref<WTF::RunLoop,WTF::RawPtrTraits<WTF::RunLoop>,WTF::DefaultRefDerefTraits<WTF::RunLoop>> &&,WTF::ASCIILiteral,WebKit::AuthenticatorManager *,void (WTF::ASCIILiteral::*)(void))::{lambda(void)#1}>,void,void>(a1, v4);
  std::unique_ptr<WTF::Detail::CallableWrapper<WebKit::CtapAuthenticator::makeCredential(void)::$_0,void,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&>,std::default_delete<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&>>::~unique_ptr[abi:sn200100](v4);
  return a1;
}

_BYTE *std::optional<WTF::Vector<WebCore::PublicKeyCredentialDescriptor,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>::optional[abi:sn200100](_BYTE *a1)
{
  std::optional<WTF::Vector<WebCore::PublicKeyCredentialDescriptor,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>::optional[abi:sn200100](a1);
  return a1;
}

{
  std::__optional_move_assign_base<WTF::Vector<WebCore::PublicKeyCredentialDescriptor,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,false>::__optional_move_assign_base[abi:sn200100](a1);
  return a1;
}

WTF::RefCountedBase *std::optional<WTF::Vector<WebCore::PublicKeyCredentialDescriptor,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>::operator=[abi:sn200100]<WTF::Vector<WebCore::PublicKeyCredentialDescriptor,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>&,void>(uint64_t a1, uint64_t a2)
{
  if ((std::__optional_storage_base<WebCore::BufferSource,false>::has_value[abi:sn200100](a1) & 1) == 0)
  {
    return std::__optional_storage_base<WTF::Vector<WebCore::PublicKeyCredentialDescriptor,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,false>::__construct[abi:sn200100]<WTF::Vector<WebCore::PublicKeyCredentialDescriptor,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>&>(a1, a2);
  }

  std::__to_address[abi:sn200100]<char const>();
  return WTF::Vector<WebCore::PublicKeyCredentialDescriptor,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::operator=(v3, a2);
}

double __os_log_helper_16_2_5_8_0_8_32_8_32_1_0_4_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, int a6)
{
  *&result = 134219010;
  *a1 = 134219010;
  *(a1 + 4) = a2;
  *(a1 + 12) = 2080;
  *(a1 + 14) = a3;
  *(a1 + 22) = 2080;
  *(a1 + 24) = a4;
  *(a1 + 32) = 256;
  *(a1 + 34) = a5;
  *(a1 + 35) = 1024;
  *(a1 + 37) = a6;
  return result;
}

uint64_t *WTF::Function<void ()(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>::Function<WebKit::CtapAuthenticator::continueGetAssertionAfterCheckAllowCredentials(void)::$_0,void>(uint64_t *a1, uint64_t *a2)
{
  WTF::Function<void ()(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>::Function<WebKit::CtapAuthenticator::continueGetAssertionAfterCheckAllowCredentials(void)::$_0,void>(a1, a2);
  return a1;
}

{
  v4[2] = a1;
  v4[1] = a2;
  v4[4] = v4;
  v4[3] = a2;
  std::make_unique[abi:sn200100]<WTF::Detail::CallableWrapper<WebKit::CtapAuthenticator::continueGetAssertionAfterCheckAllowCredentials(void)::$_0,void,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&>,WebKit::CtapAuthenticator::continueGetAssertionAfterCheckAllowCredentials(void)::$_0,0>(v4, a2);
  std::unique_ptr<WTF::Detail::CallableWrapperBase<void>>::unique_ptr[abi:sn200100]<WTF::Detail::CallableWrapper<WTF::RunLoop::Timer::Timer<WebKit::AuthenticatorManager>(WTF::Ref<WTF::RunLoop,WTF::RawPtrTraits<WTF::RunLoop>,WTF::DefaultRefDerefTraits<WTF::RunLoop>> &&,WTF::ASCIILiteral,WebKit::AuthenticatorManager *,void (WTF::ASCIILiteral::*)(void))::{lambda(void)#1},void>,std::default_delete<WTF::RunLoop::Timer::Timer<WebKit::AuthenticatorManager>(WTF::Ref<WTF::RunLoop,WTF::RawPtrTraits<WTF::RunLoop>,WTF::DefaultRefDerefTraits<WTF::RunLoop>> &&,WTF::ASCIILiteral,WebKit::AuthenticatorManager *,void (WTF::ASCIILiteral::*)(void))::{lambda(void)#1}>,void,void>(a1, v4);
  std::unique_ptr<WTF::Detail::CallableWrapper<WebKit::CtapAuthenticator::makeCredential(void)::$_0,void,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&>,std::default_delete<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&>>::~unique_ptr[abi:sn200100](v4);
  return a1;
}

uint64_t WebKit::CtapAuthenticator::continueGetAssertionAfterResponseReceived(uint64_t a1, uint64_t a2)
{
  v229 = *MEMORY[0x1E69E9840];
  v95 = a1;
  v94 = a2;
  fido::readCTAPGetAssertionResponse();
  ResponseCode = fido::getResponseCode();
  oslog = qword_1ED641530;
  v90 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(qword_1ED641530, OS_LOG_TYPE_DEFAULT))
  {
    v3 = oslog;
    v4 = v90;
    WebKit::CtapAuthenticator::aaguidForDebugging(&v88, a1);
    WTF::String::utf8();
    v5 = WTF::CString::data(&v89);
    WebKit::FidoAuthenticator::transportForDebugging(&v86, a1);
    WTF::String::utf8();
    v6 = WTF::CString::data(&v87);
    v7 = WTF::enumToUnderlyingType<fido::CtapDeviceResponseCode>(ResponseCode);
    __os_log_helper_16_2_4_8_0_8_32_8_32_4_0(buf, a1, v5, v6, v7);
    _os_log_impl(&dword_19D52D000, v3, v4, "%p [aaguid=%s, transport=%s] - CtapAuthenticator::continueGetAssertionAfterResponseReceived: errorcode: %hhu", buf, 0x26u);
    WTF::CString::~CString(&v87);
    v107 = &v86;
    v125 = &v86;
    v148 = &v86;
    v149[1] = &v86;
    v149[0] = 0;
    v196 = &v86;
    v195 = v149;
    v172 = std::exchange[abi:sn200100]<WTF::StringImpl *,decltype(nullptr) &>(&v86);
    if (v172)
    {
      WTF::StringImpl::deref(v172);
    }

    WTF::CString::~CString(&v89);
    v106 = &v88;
    v126 = &v88;
    v147 = &v88;
    v150[1] = &v88;
    v150[0] = 0;
    v194 = &v88;
    v193 = v150;
    v171 = std::exchange[abi:sn200100]<WTF::StringImpl *,decltype(nullptr) &>(&v88);
    if (v171)
    {
      WTF::StringImpl::deref(v171);
    }
  }

  if (WTF::RefPtr<WebKit::WebPageProxy,WTF::RawPtrTraits<WebKit::WebPageProxy>,WTF::DefaultRefDerefTraits<WebKit::WebPageProxy>>::operator!(&v93))
  {
    v85 = qword_1ED641530;
    v84 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(qword_1ED641530, OS_LOG_TYPE_DEFAULT))
    {
      v8 = v85;
      v9 = v84;
      WebKit::CtapAuthenticator::aaguidForDebugging(&v82, a1);
      WTF::String::utf8();
      v10 = WTF::CString::data(&v83);
      WebKit::FidoAuthenticator::transportForDebugging(&v80, a1);
      WTF::String::utf8();
      v11 = WTF::CString::data(&v81);
      std::span<unsigned char const,18446744073709551615ul>::span[abi:sn200100]<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &>(v77, v94);
      v76 = 0;
      WTF::OptionSet<WTF::Base64EncodeOption>::OptionSet(&v76);
      WTF::base64EncodeToString(&v78, v77[0], v77[1]);
      WTF::String::utf8();
      v12 = WTF::CString::data(&v79);
      __os_log_helper_16_2_4_8_0_8_32_8_32_8_32(v227, a1, v10, v11, v12);
      _os_log_impl(&dword_19D52D000, v8, v9, "%p [aaguid=%s, transport=%s] - CtapAuthenticator::continueGetAssertionAfterResponseReceived: Failed to parse response %s", v227, 0x2Au);
      WTF::CString::~CString(&v79);
      v105 = &v78;
      v127 = &v78;
      v146 = &v78;
      v151[1] = &v78;
      v151[0] = 0;
      v192 = &v78;
      v191 = v151;
      v170 = std::exchange[abi:sn200100]<WTF::StringImpl *,decltype(nullptr) &>(&v78);
      if (v170)
      {
        WTF::StringImpl::deref(v170);
      }

      WTF::CString::~CString(&v81);
      v104 = &v80;
      v128 = &v80;
      v145 = &v80;
      v152[1] = &v80;
      v152[0] = 0;
      v190 = &v80;
      v189 = v152;
      v169 = std::exchange[abi:sn200100]<WTF::StringImpl *,decltype(nullptr) &>(&v80);
      if (v169)
      {
        WTF::StringImpl::deref(v169);
      }

      WTF::CString::~CString(&v83);
      v103 = &v82;
      v129 = &v82;
      v144 = &v82;
      v153[1] = &v82;
      v153[0] = 0;
      v188 = &v82;
      v187 = v153;
      v168 = std::exchange[abi:sn200100]<WTF::StringImpl *,decltype(nullptr) &>(&v82);
      if (v168)
      {
        WTF::StringImpl::deref(v168);
      }
    }

    if (ResponseCode == 58)
    {
      WebKit::CtapAuthenticator::getAssertion(a1);
      v75 = 1;
    }

    {
      {
        goto LABEL_29;
      }

      if (!WTF::Vector<WebCore::PublicKeyCredentialDescriptor,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::isEmpty(a1 + 1088))
      {
        v13 = WebKit::Authenticator::observer(a1);
        v111 = &v74;
        v110 = v13;
        v198 = &v74;
        v197 = v13;
        v202 = v13;
        if (v13)
        {
          (**v202)();
        }

        v74 = v202;
        if (WTF::RefPtr<WebKit::AuthenticatorPresenterCoordinator,WTF::RawPtrTraits<WebKit::AuthenticatorPresenterCoordinator>,WTF::DefaultRefDerefTraits<WebKit::AuthenticatorPresenterCoordinator>>::operator BOOL(&v74))
        {
          v113 = &v74;
          v211 = &v74;
          v14 = v74;
          (*(*v14 + 48))(v14, v15);
        }

        v115 = &v74;
        v203[1] = &v74;
        v203[0] = 0;
        v210 = &v74;
        v209 = v203;
        v206 = std::exchange[abi:sn200100]<WTF::StringImpl *,decltype(nullptr) &>(&v74);
        if (v206)
        {
          (*(*v206 + 8))();
        }
      }

      if (WebKit::CtapAuthenticator::tryRestartPin(a1, &ResponseCode))
      {
        v75 = 1;
      }

      else
      {
LABEL_29:
        if (ResponseCode == 46)
        {
          v16 = WebKit::Authenticator::observer(a1);
          v109 = &v73;
          v108 = v16;
          v200 = &v73;
          v199 = v16;
          v201 = v16;
          if (v16)
          {
            (**v201)();
          }

          v73 = v201;
          if (WTF::RefPtr<WebKit::AuthenticatorPresenterCoordinator,WTF::RawPtrTraits<WebKit::AuthenticatorPresenterCoordinator>,WTF::DefaultRefDerefTraits<WebKit::AuthenticatorPresenterCoordinator>>::operator BOOL(&v73))
          {
            v112 = &v73;
            v212 = &v73;
            (*v73)[6]();
          }

          v114 = &v73;
          v204[1] = &v73;
          v204[0] = 0;
          v208 = &v73;
          v207 = v204;
          v205 = std::exchange[abi:sn200100]<WTF::StringImpl *,decltype(nullptr) &>(&v73);
          if (v205)
          {
            (*(*v205 + 8))();
          }
        }

        v72 = qword_1ED641530;
        v71 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(qword_1ED641530, OS_LOG_TYPE_DEFAULT))
        {
          v17 = v72;
          v18 = v71;
          WebKit::CtapAuthenticator::aaguidForDebugging(&v69, a1);
          WTF::String::utf8();
          v19 = WTF::CString::data(&v70);
          WebKit::FidoAuthenticator::transportForDebugging(&v67, a1);
          WTF::String::utf8();
          v20 = WTF::CString::data(&v68);
          __os_log_helper_16_2_3_8_0_8_32_8_32(v226, a1, v19, v20);
          _os_log_impl(&dword_19D52D000, v17, v18, "%p [aaguid=%s, transport=%s] - CtapAuthenticator::continueGetAssertionAfterResponseReceived: No credentials found.", v226, 0x20u);
          WTF::CString::~CString(&v68);
          v102 = &v67;
          v130 = &v67;
          v143 = &v67;
          v154[1] = &v67;
          v154[0] = 0;
          v186 = &v67;
          v185 = v154;
          v167 = std::exchange[abi:sn200100]<WTF::StringImpl *,decltype(nullptr) &>(&v67);
          if (v167)
          {
            WTF::StringImpl::deref(v167);
          }

          WTF::CString::~CString(&v70);
          v101 = &v69;
          v131 = &v69;
          v142 = &v69;
          v155[1] = &v69;
          v155[0] = 0;
          v184 = &v69;
          v183 = v155;
          v166 = std::exchange[abi:sn200100]<WTF::StringImpl *,decltype(nullptr) &>(&v69);
          if (v166)
          {
            WTF::StringImpl::deref(v166);
          }
        }

        v64[0] = 24;
        v21 = WTF::StringLiterals::operator"" _s("Unknown internal error. Error code: ", 0x24);
        v63 = v22;
        v62 = v21;
        WTF::makeString<WTF::ASCIILiteral,unsigned char>(&v65, v21, v22, ResponseCode);
        mpark::variant<WTF::Ref<WebCore::AuthenticatorResponse,WTF::RawPtrTraits<WebCore::AuthenticatorResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorResponse>>,WebCore::ExceptionData>::variant<WebCore::ExceptionData,WebCore::ExceptionData,0,0,0,1ul,WebCore::ExceptionData,0>(v66);
        WebKit::Authenticator::receiveRespond(a1, v66);
        mpark::variant<WTF::Ref<WebCore::AuthenticatorResponse,WTF::RawPtrTraits<WebCore::AuthenticatorResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorResponse>>,WebCore::ExceptionData>::~variant(v66);
        WebCore::ExceptionData::~ExceptionData(v64);
        v75 = 1;
      }
    }

    else
    {
      v75 = 1;
    }
  }

  else
  {
    v61 = qword_1ED641530;
    v60 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(qword_1ED641530, OS_LOG_TYPE_DEFAULT))
    {
      v23 = v61;
      v24 = v60;
      WebKit::CtapAuthenticator::aaguidForDebugging(&v58, a1);
      WTF::String::utf8();
      v25 = WTF::CString::data(&v59);
      WebKit::FidoAuthenticator::transportForDebugging(&v56, a1);
      WTF::String::utf8();
      v26 = WTF::CString::data(&v57);
      v120 = &v93;
      v215 = &v93;
      v27 = WebCore::AuthenticatorAssertionResponse::numberOfCredentials(v93);
      __os_log_helper_16_2_4_8_0_8_32_8_32_8_0(v225, a1, v25, v26, v27);
      _os_log_impl(&dword_19D52D000, v23, v24, "%p [aaguid=%s, transport=%s] - CtapAuthenticator::continueGetAssertionAfterResponseReceived: Get %lu credentials back.", v225, 0x2Au);
      WTF::CString::~CString(&v57);
      v100 = &v56;
      v132 = &v56;
      v141 = &v56;
      v156[1] = &v56;
      v156[0] = 0;
      v182 = &v56;
      v181 = v156;
      v165 = std::exchange[abi:sn200100]<WTF::StringImpl *,decltype(nullptr) &>(&v56);
      if (v165)
      {
        WTF::StringImpl::deref(v165);
      }

      WTF::CString::~CString(&v59);
      v99 = &v58;
      v133 = &v58;
      v140 = &v58;
      v157[1] = &v58;
      v157[0] = 0;
      v180 = &v58;
      v179 = v157;
      v164 = std::exchange[abi:sn200100]<WTF::StringImpl *,decltype(nullptr) &>(&v58);
      if (v164)
      {
        WTF::StringImpl::deref(v164);
      }
    }

    v119 = &v93;
    v216 = &v93;
    if (WebCore::AuthenticatorAssertionResponse::numberOfCredentials(v93) > 1)
    {
      v118 = &v93;
      v217 = &v93;
      *(a1 + 1040) = WebCore::AuthenticatorAssertionResponse::numberOfCredentials(v93) - 1;
      v117 = &v93;
      v218 = &v93;
      v28 = WebCore::AuthenticatorAssertionResponse::numberOfCredentials(v93);
      v122 = a1 + 1056;
      v121 = v28;
      WTF::Vector<WTF::Ref<WebKit::AuthenticatorTransportService,WTF::RawPtrTraits<WebKit::AuthenticatorTransportService>,WTF::DefaultRefDerefTraits<WebKit::AuthenticatorTransportService>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveInitialCapacity<(WTF::FailureAction)0>(a1 + 1056, v28);
      WTF::RefPtr<WebCore::AuthenticatorAttestationResponse,WTF::RawPtrTraits<WebCore::AuthenticatorAttestationResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorAttestationResponse>>::releaseNonNull(&v53, &v93);
      v124 = a1 + 1056;
      v123 = &v53;
      v220 = a1 + 1056;
      v219 = &v53;
      v222 = a1 + 1056;
      v221 = &v53;
      v29 = WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::size(a1 + 1056);
      if (v29 == WTF::Vector<WTF::Ref<WebKit::AuthenticatorTransportService,WTF::RawPtrTraits<WebKit::AuthenticatorTransportService>,WTF::DefaultRefDerefTraits<WebKit::AuthenticatorTransportService>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::capacity(a1 + 1056))
      {
        WTF::Vector<WTF::Ref<WebCore::AuthenticatorAssertionResponse,WTF::RawPtrTraits<WebCore::AuthenticatorAssertionResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorAssertionResponse>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::Ref<WebCore::AuthenticatorAssertionResponse,WTF::RawPtrTraits<WebCore::AuthenticatorAssertionResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorAssertionResponse>>>(a1 + 1056, v221);
      }

      else
      {
        WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::asanSetInitialBufferSizeTo();
        v30 = WTF::Vector<WTF::Ref<WebKit::AuthenticatorTransportService,WTF::RawPtrTraits<WebKit::AuthenticatorTransportService>,WTF::DefaultRefDerefTraits<WebKit::AuthenticatorTransportService>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::end(a1 + 1056);
        v31 = operator new(8, 0, v30);
        WTF::RefPtr<WTF::StringImpl,WTF::RawPtrTraits<WTF::StringImpl>,WTF::DefaultRefDerefTraits<WTF::StringImpl>>::RefPtr<WTF::StringImpl,WTF::RawPtrTraits<WTF::StringImpl>>(v31, v221);
        ++*(a1 + 1068);
      }

      v223 = 1;
      WTF::Ref<WebCore::AuthenticatorResponse,WTF::RawPtrTraits<WebCore::AuthenticatorResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorResponse>>::~Ref(&v53);
      fido::encodeEmptyAuthenticatorRequest();
      v51 = qword_1ED641530;
      v50 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(qword_1ED641530, OS_LOG_TYPE_DEFAULT))
      {
        v32 = v51;
        v33 = v50;
        WebKit::CtapAuthenticator::aaguidForDebugging(&v48, a1);
        WTF::String::utf8();
        v34 = WTF::CString::data(&v49);
        WebKit::FidoAuthenticator::transportForDebugging(&v46, a1);
        WTF::String::utf8();
        v35 = WTF::CString::data(&v47);
        std::span<unsigned char const,18446744073709551615ul>::span[abi:sn200100]<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &>(v43, v52);
        v42 = 0;
        WTF::OptionSet<WTF::Base64EncodeOption>::OptionSet(&v42);
        WTF::base64EncodeToString(&v44, v43[0], v43[1]);
        WTF::String::utf8();
        v36 = WTF::CString::data(&v45);
        __os_log_helper_16_2_4_8_0_8_32_8_32_8_32(v224, a1, v34, v35, v36);
        _os_log_impl(&dword_19D52D000, v32, v33, "%p [aaguid=%s, transport=%s] - CtapAuthenticator::continueGetAssertionAfterResponseReceived: Sending %s", v224, 0x2Au);
        WTF::CString::~CString(&v45);
        v98 = &v44;
        v134 = &v44;
        v139 = &v44;
        v158[1] = &v44;
        v158[0] = 0;
        v178 = &v44;
        v177 = v158;
        v163 = std::exchange[abi:sn200100]<WTF::StringImpl *,decltype(nullptr) &>(&v44);
        if (v163)
        {
          WTF::StringImpl::deref(v163);
        }

        WTF::CString::~CString(&v47);
        v97 = &v46;
        v135 = &v46;
        v138 = &v46;
        v159[1] = &v46;
        v159[0] = 0;
        v176 = &v46;
        v175 = v159;
        v162 = std::exchange[abi:sn200100]<WTF::StringImpl *,decltype(nullptr) &>(&v46);
        if (v162)
        {
          WTF::StringImpl::deref(v162);
        }

        WTF::CString::~CString(&v49);
        v96 = &v48;
        v136 = &v48;
        v137 = &v48;
        v160[1] = &v48;
        v160[0] = 0;
        v174 = &v48;
        v173 = v160;
        v161 = std::exchange[abi:sn200100]<WTF::StringImpl *,decltype(nullptr) &>(&v48);
        if (v161)
        {
          WTF::StringImpl::deref(v161);
        }
      }

      WebKit::FidoAuthenticator::protectedDriver(a1, &v41);
      v37 = WTF::RefPtr<API::WebAuthenticationPanel,WTF::RawPtrTraits<API::WebAuthenticationPanel>,WTF::DefaultRefDerefTraits<API::WebAuthenticationPanel>>::get(&v41);
      WTF::WeakPtr<WebKit::AuthenticatorManager,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>::WeakPtr<void>(&v39, a1);
      WTF::Function<void ()(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>::Function<WebKit::CtapAuthenticator::continueGetAssertionAfterResponseReceived(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &)::$_0,void>(&v40, &v39);
      (*(*v37 + 16))(v37, v52, &v40);
      WTF::Function<void ()(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>::~Function(&v40);
      WebKit::CtapAuthenticator::makeCredential(void)::$_0::~$_0(&v39);
      WTF::Ref<WebKit::CtapDriver,WTF::RawPtrTraits<WebKit::CtapDriver>,WTF::DefaultRefDerefTraits<WebKit::CtapDriver>>::~Ref(&v41);
      WTF::Vector<WebCore::AuthenticatorTransport,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v52);
      v75 = 0;
    }

    else
    {
      WTF::RefPtr<WebCore::AuthenticatorAttestationResponse,WTF::RawPtrTraits<WebCore::AuthenticatorAttestationResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorAttestationResponse>>::releaseNonNull(&v54, &v93);
      mpark::variant<WTF::Ref<WebCore::AuthenticatorResponse,WTF::RawPtrTraits<WebCore::AuthenticatorResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorResponse>>,WebCore::ExceptionData>::variant<WTF::Ref<WebCore::AuthenticatorAssertionResponse,WTF::RawPtrTraits<WebCore::AuthenticatorAssertionResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorAssertionResponse>>,WTF::Ref<WebCore::AuthenticatorAssertionResponse,WTF::RawPtrTraits<WebCore::AuthenticatorAssertionResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorAssertionResponse>>,0,0,0,0ul,WTF::Ref<WebCore::AuthenticatorResponse,WTF::RawPtrTraits<WebCore::AuthenticatorResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorResponse>>,0>(v55);
      WebKit::Authenticator::receiveRespond(a1, v55);
      mpark::variant<WTF::Ref<WebCore::AuthenticatorResponse,WTF::RawPtrTraits<WebCore::AuthenticatorResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorResponse>>,WebCore::ExceptionData>::~variant(v55);
      WTF::Ref<WebCore::AuthenticatorResponse,WTF::RawPtrTraits<WebCore::AuthenticatorResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorResponse>>::~Ref(&v54);
      v75 = 1;
    }
  }

  v116 = &v93;
  v213[1] = &v93;
  v213[0] = 0;
  v213[3] = &v93;
  v213[2] = v213;
  result = std::exchange[abi:sn200100]<WTF::StringImpl *,decltype(nullptr) &>(&v93);
  v214 = result;
  if (result)
  {
    return WTF::RefCounted<WebCore::AuthenticatorResponse>::deref((v214 + 8));
  }

  return result;
}

uint64_t WebKit::CtapAuthenticator::tryDowngrade(WebKit::CtapAuthenticator *this)
{
  v100 = *MEMORY[0x1E69E9840];
  v42 = this;
  oslog = qword_1ED641530;
  v40 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(qword_1ED641530, OS_LOG_TYPE_DEFAULT))
  {
    v2 = oslog;
    v3 = v40;
    WebKit::CtapAuthenticator::aaguidForDebugging(&v38, this);
    WTF::String::utf8();
    v4 = WTF::CString::data(&v39);
    WebKit::FidoAuthenticator::transportForDebugging(&v36, this);
    WTF::String::utf8();
    v5 = WTF::CString::data(&v37);
    __os_log_helper_16_2_3_8_0_8_32_8_32(buf, this, v4, v5);
    _os_log_impl(&dword_19D52D000, v2, v3, "%p [aaguid=%s, transport=%s] - CtapAuthenticator::tryDowngrade", buf, 0x20u);
    WTF::CString::~CString(&v37);
    v47 = &v36;
    v56 = &v36;
    v63 = &v36;
    v64[1] = &v36;
    v64[0] = 0;
    v79 = &v36;
    v78 = v64;
    v71 = std::exchange[abi:sn200100]<WTF::StringImpl *,decltype(nullptr) &>(&v36);
    if (v71)
    {
      WTF::StringImpl::deref(v71);
    }

    WTF::CString::~CString(&v39);
    v46 = &v38;
    v57 = &v38;
    v62 = &v38;
    v65[1] = &v38;
    v65[0] = 0;
    v77 = &v38;
    v76 = v65;
    v70 = std::exchange[abi:sn200100]<WTF::StringImpl *,decltype(nullptr) &>(&v38);
    if (v70)
    {
      WTF::StringImpl::deref(v70);
    }
  }

  std::__to_address[abi:sn200100]<char const>();
  v34 = 3;
  v35 = std::set<fido::ProtocolVersion,std::less<fido::ProtocolVersion>,WTF::FastAllocator<fido::ProtocolVersion>>::find[abi:sn200100](v6, &v34);
  std::__to_address[abi:sn200100]<char const>();
  v33 = std::set<fido::ProtocolVersion,std::less<fido::ProtocolVersion>,WTF::FastAllocator<fido::ProtocolVersion>>::end[abi:sn200100]();
  if (std::operator==[abi:sn200100](&v35, &v33))
  {
    v43 = 0;
  }

  else
  {
    v7 = WebKit::Authenticator::observer(this);
    v49 = &v32;
    v48 = v7;
    v81 = &v32;
    v80 = v7;
    v82 = v7;
    if (v7)
    {
      (**v82)();
    }

    v32 = v82;
    if (WTF::RefPtr<WebKit::WebPageProxy,WTF::RawPtrTraits<WebKit::WebPageProxy>,WTF::DefaultRefDerefTraits<WebKit::WebPageProxy>>::operator!(&v32))
    {
      v43 = 0;
      v31 = 1;
    }

    else
    {
      v30 = 0;
      v29 = &v30;
      v28 = &v30;
      v55 = WebKit::Authenticator::requestData(this) + 16;
      v54[3] = &v29;
      v54[2] = &v28;
      v53 = &v30;
      v52 = &v30;
      v96 = &v30;
      v95 = &v30;
      v94 = &v30;
      v93 = &v30;
      WTF::Visitor<WebKit::AuthenticatorManager::initTimeOutTimer(void)::$_0,WebKit::AuthenticatorManager::initTimeOutTimer(void)::$_1>::Visitor(v97, &v30, &v30);
      v54[1] = v97[1];
      v54[0] = v97[0];
      v88 = v55;
      v92 = v54;
      v91 = v55;
      v90 = 2;
      switch(mpark::variant<WebCore::PublicKeyCredentialCreationOptions,WebCore::PublicKeyCredentialRequestOptions>::index(v55))
      {
        case 0:
          v8 = v92;
          mpark::get<WebCore::PublicKeyCredentialCreationOptions,WebCore::PublicKeyCredentialCreationOptions,WebCore::PublicKeyCredentialRequestOptions>(v91);
          WebKit::CtapAuthenticator::tryDowngrade(void)::$_0::operator()(v8, v9);
          goto LABEL_46;
        case 1:
          v10 = (v92 + 1);
          mpark::get<WebCore::PublicKeyCredentialRequestOptions,WebCore::PublicKeyCredentialCreationOptions,WebCore::PublicKeyCredentialRequestOptions>(v91);
          WebKit::CtapAuthenticator::tryDowngrade(void)::$_1::operator()(v10, v11);
          goto LABEL_46;
        case 2:
          __break(1u);
          goto LABEL_16;
        case 3:
LABEL_16:
          __break(1u);
          goto LABEL_17;
        case 4:
LABEL_17:
          __break(1u);
          goto LABEL_18;
        case 5:
LABEL_18:
          __break(1u);
          goto LABEL_19;
        case 6:
LABEL_19:
          __break(1u);
          goto LABEL_20;
        case 7:
LABEL_20:
          __break(1u);
          goto LABEL_21;
        case 8:
LABEL_21:
          __break(1u);
          goto LABEL_22;
        case 9:
LABEL_22:
          __break(1u);
          goto LABEL_23;
        case 10:
LABEL_23:
          __break(1u);
          goto LABEL_24;
        case 11:
LABEL_24:
          __break(1u);
          goto LABEL_25;
        case 12:
LABEL_25:
          __break(1u);
          goto LABEL_26;
        case 13:
LABEL_26:
          __break(1u);
          goto LABEL_27;
        case 14:
LABEL_27:
          __break(1u);
          goto LABEL_28;
        case 15:
LABEL_28:
          __break(1u);
          goto LABEL_29;
        case 16:
LABEL_29:
          __break(1u);
          goto LABEL_30;
        case 17:
LABEL_30:
          __break(1u);
          goto LABEL_31;
        case 18:
LABEL_31:
          __break(1u);
          goto LABEL_32;
        case 19:
LABEL_32:
          __break(1u);
          goto LABEL_33;
        case 20:
LABEL_33:
          __break(1u);
          goto LABEL_34;
        case 21:
LABEL_34:
          __break(1u);
          goto LABEL_35;
        case 22:
LABEL_35:
          __break(1u);
          goto LABEL_36;
        case 23:
LABEL_36:
          __break(1u);
          goto LABEL_37;
        case 24:
LABEL_37:
          __break(1u);
          goto LABEL_38;
        case 25:
LABEL_38:
          __break(1u);
          goto LABEL_39;
        case 26:
LABEL_39:
          __break(1u);
          goto LABEL_40;
        case 27:
LABEL_40:
          __break(1u);
          goto LABEL_41;
        case 28:
LABEL_41:
          __break(1u);
          goto LABEL_42;
        case 29:
LABEL_42:
          __break(1u);
          goto LABEL_43;
        case 30:
LABEL_43:
          __break(1u);
          goto LABEL_44;
        case 31:
LABEL_44:
          __break(1u);
          break;
        default:
          break;
      }

      v89 = 2;
      __break(1u);
LABEL_46:
      if (v30)
      {
        v27 = qword_1ED641530;
        v26 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(qword_1ED641530, OS_LOG_TYPE_DEFAULT))
        {
          v12 = v27;
          v13 = v26;
          WebKit::CtapAuthenticator::aaguidForDebugging(&v24, this);
          WTF::String::utf8();
          v14 = WTF::CString::data(&v25);
          WebKit::FidoAuthenticator::transportForDebugging(&v22, this);
          WTF::String::utf8();
          v15 = WTF::CString::data(&v23);
          __os_log_helper_16_2_3_8_0_8_32_8_32(v98, this, v14, v15);
          _os_log_impl(&dword_19D52D000, v12, v13, "%p [aaguid=%s, transport=%s] - CtapAuthenticator::tryDowngrade: Downgrading to U2F.", v98, 0x20u);
          WTF::CString::~CString(&v23);
          v45 = &v22;
          v58 = &v22;
          v61 = &v22;
          v66[1] = &v22;
          v66[0] = 0;
          v75 = &v22;
          v74 = v66;
          v69 = std::exchange[abi:sn200100]<WTF::StringImpl *,decltype(nullptr) &>(&v22);
          if (v69)
          {
            WTF::StringImpl::deref(v69);
          }

          WTF::CString::~CString(&v25);
          v44 = &v24;
          v59 = &v24;
          v60 = &v24;
          v67[1] = &v24;
          v67[0] = 0;
          v73 = &v24;
          v72 = v67;
          v68 = std::exchange[abi:sn200100]<WTF::StringImpl *,decltype(nullptr) &>(&v24);
          if (v68)
          {
            WTF::StringImpl::deref(v68);
          }
        }

        *(this + 1032) = 1;
        v16 = WebKit::FidoAuthenticator::driver(this);
        WebKit::CtapDriver::setProtocol(v16);
        v50 = &v32;
        v87 = &v32;
        v17 = v32;
        WebKit::FidoAuthenticator::releaseDriver(this, &v19);
        WebKit::U2fAuthenticator::create(&v20, &v19);
        WTF::RefPtr<WTF::StringImpl,WTF::RawPtrTraits<WTF::StringImpl>,WTF::DefaultRefDerefTraits<WTF::StringImpl>>::RefPtr<WTF::StringImpl,WTF::RawPtrTraits<WTF::StringImpl>>(&v21, &v20);
        (*(*v17 + 40))(v17, this, &v21);
        WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>::~Ref(&v21);
        WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>::~Ref(&v20);
        WTF::Ref<WebKit::CtapDriver,WTF::RawPtrTraits<WebKit::CtapDriver>,WTF::DefaultRefDerefTraits<WebKit::CtapDriver>>::~Ref(&v19);
        v43 = 1;
        v31 = 1;
      }

      else
      {
        v43 = 0;
        v31 = 1;
      }
    }

    v51 = &v32;
    v83[1] = &v32;
    v83[0] = 0;
    v86 = &v32;
    v85 = v83;
    v84 = std::exchange[abi:sn200100]<WTF::StringImpl *,decltype(nullptr) &>(&v32);
    if (v84)
    {
      (*(*v84 + 8))();
    }
  }

  return v43 & 1;
}

double __os_log_helper_16_2_4_8_0_8_32_8_32_8_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *&result = 134218754;
  *a1 = 134218754;
  *(a1 + 4) = a2;
  *(a1 + 12) = 2080;
  *(a1 + 14) = a3;
  *(a1 + 22) = 2080;
  *(a1 + 24) = a4;
  *(a1 + 32) = 2048;
  *(a1 + 34) = a5;
  return result;
}

uint64_t mpark::variant<WTF::Ref<WebCore::AuthenticatorResponse,WTF::RawPtrTraits<WebCore::AuthenticatorResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorResponse>>,WebCore::ExceptionData>::variant<WTF::Ref<WebCore::AuthenticatorAssertionResponse,WTF::RawPtrTraits<WebCore::AuthenticatorAssertionResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorAssertionResponse>>,WTF::Ref<WebCore::AuthenticatorAssertionResponse,WTF::RawPtrTraits<WebCore::AuthenticatorAssertionResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorAssertionResponse>>,0,0,0,0ul,WTF::Ref<WebCore::AuthenticatorResponse,WTF::RawPtrTraits<WebCore::AuthenticatorResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorResponse>>,0>(uint64_t a1)
{
  mpark::variant<WTF::Ref<WebCore::AuthenticatorResponse,WTF::RawPtrTraits<WebCore::AuthenticatorResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorResponse>>,WebCore::ExceptionData>::variant<WTF::Ref<WebCore::AuthenticatorAssertionResponse,WTF::RawPtrTraits<WebCore::AuthenticatorAssertionResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorAssertionResponse>>,WTF::Ref<WebCore::AuthenticatorAssertionResponse,WTF::RawPtrTraits<WebCore::AuthenticatorAssertionResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorAssertionResponse>>,0,0,0,0ul,WTF::Ref<WebCore::AuthenticatorResponse,WTF::RawPtrTraits<WebCore::AuthenticatorResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorResponse>>,0>(a1);
  return a1;
}

{
  std::__to_address[abi:sn200100]<char const>();
  _ZN5mpark6detail4implIJN3WTF3RefIN7WebCore21AuthenticatorResponseENS2_12RawPtrTraitsIS5_EENS2_21DefaultRefDerefTraitsIS5_EEEENS4_13ExceptionDataEEECI1NS0_4baseILNS0_5TraitE1EJSA_SB_EEEILm0EJNS3_INS4_30AuthenticatorAssertionResponseENS6_ISF_EENS8_ISF_EEEEEEENS_16in_place_index_tIXT_EEEDpOT0_(a1);
  return a1;
}

uint64_t *WTF::Function<void ()(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>::Function<WebKit::CtapAuthenticator::continueGetAssertionAfterResponseReceived(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &)::$_0,void>(uint64_t *a1, uint64_t *a2)
{
  WTF::Function<void ()(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>::Function<WebKit::CtapAuthenticator::continueGetAssertionAfterResponseReceived(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &)::$_0,void>(a1, a2);
  return a1;
}

{
  v4[2] = a1;
  v4[1] = a2;
  v4[4] = v4;
  v4[3] = a2;
  std::make_unique[abi:sn200100]<WTF::Detail::CallableWrapper<WebKit::CtapAuthenticator::continueGetAssertionAfterResponseReceived(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)::$_0,void,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &>,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,0>(v4, a2);
  std::unique_ptr<WTF::Detail::CallableWrapperBase<void>>::unique_ptr[abi:sn200100]<WTF::Detail::CallableWrapper<WTF::RunLoop::Timer::Timer<WebKit::AuthenticatorManager>(WTF::Ref<WTF::RunLoop,WTF::RawPtrTraits<WTF::RunLoop>,WTF::DefaultRefDerefTraits<WTF::RunLoop>> &&,WTF::ASCIILiteral,WebKit::AuthenticatorManager *,void (WTF::ASCIILiteral::*)(void))::{lambda(void)#1},void>,std::default_delete<WTF::RunLoop::Timer::Timer<WebKit::AuthenticatorManager>(WTF::Ref<WTF::RunLoop,WTF::RawPtrTraits<WTF::RunLoop>,WTF::DefaultRefDerefTraits<WTF::RunLoop>> &&,WTF::ASCIILiteral,WebKit::AuthenticatorManager *,void (WTF::ASCIILiteral::*)(void))::{lambda(void)#1}>,void,void>(a1, v4);
  std::unique_ptr<WTF::Detail::CallableWrapper<WebKit::CtapAuthenticator::makeCredential(void)::$_0,void,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&>,std::default_delete<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&>>::~unique_ptr[abi:sn200100](v4);
  return a1;
}

uint64_t WebKit::CtapAuthenticator::continueGetNextAssertionAfterResponseReceived(uint64_t a1, uint64_t a2)
{
  v180 = *MEMORY[0x1E69E9840];
  v83 = a1;
  v82 = a2;
  ResponseCode = fido::getResponseCode();
  oslog = qword_1ED641530;
  v79 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(qword_1ED641530, OS_LOG_TYPE_DEFAULT))
  {
    v3 = oslog;
    v4 = v79;
    WebKit::CtapAuthenticator::aaguidForDebugging(&v77, a1);
    WTF::String::utf8();
    v5 = WTF::CString::data(&v78);
    WebKit::FidoAuthenticator::transportForDebugging(&v75, a1);
    WTF::String::utf8();
    v6 = WTF::CString::data(&v76);
    v7 = WTF::enumToUnderlyingType<fido::CtapDeviceResponseCode>(ResponseCode);
    __os_log_helper_16_2_4_8_0_8_32_8_32_4_0(buf, a1, v5, v6, v7);
    _os_log_impl(&dword_19D52D000, v3, v4, "%p [aaguid=%s, transport=%s] - CtapAuthenticator::continueGetNextAssertionAfterResponseReceived: errorcode: %hhu", buf, 0x26u);
    WTF::CString::~CString(&v76);
    v93 = &v75;
    v101 = &v75;
    v120 = &v75;
    v121[1] = &v75;
    v121[0] = 0;
    v160 = &v75;
    v159 = v121;
    v140 = std::exchange[abi:sn200100]<WTF::StringImpl *,decltype(nullptr) &>(&v75);
    if (v140)
    {
      WTF::StringImpl::deref(v140);
    }

    WTF::CString::~CString(&v78);
    v92 = &v77;
    v102 = &v77;
    v119 = &v77;
    v122[1] = &v77;
    v122[0] = 0;
    v158 = &v77;
    v157 = v122;
    v139 = std::exchange[abi:sn200100]<WTF::StringImpl *,decltype(nullptr) &>(&v77);
    if (v139)
    {
      WTF::StringImpl::deref(v139);
    }
  }

  fido::readCTAPGetAssertionResponse();
  if (WTF::RefPtr<WebKit::WebPageProxy,WTF::RawPtrTraits<WebKit::WebPageProxy>,WTF::DefaultRefDerefTraits<WebKit::WebPageProxy>>::operator!(&v74))
  {
    v73 = qword_1ED641530;
    v72 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(qword_1ED641530, OS_LOG_TYPE_DEFAULT))
    {
      v8 = v73;
      v9 = v72;
      WebKit::CtapAuthenticator::aaguidForDebugging(&v70, a1);
      WTF::String::utf8();
      v10 = WTF::CString::data(&v71);
      WebKit::FidoAuthenticator::transportForDebugging(&v68, a1);
      WTF::String::utf8();
      v11 = WTF::CString::data(&v69);
      std::span<unsigned char const,18446744073709551615ul>::span[abi:sn200100]<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &>(v65, v82);
      v64 = 0;
      WTF::OptionSet<WTF::Base64EncodeOption>::OptionSet(&v64);
      WTF::base64EncodeToString(&v66, v65[0], v65[1]);
      WTF::String::utf8();
      v12 = WTF::CString::data(&v67);
      __os_log_helper_16_2_4_8_0_8_32_8_32_8_32(v178, a1, v10, v11, v12);
      _os_log_impl(&dword_19D52D000, v8, v9, "%p [aaguid=%s, transport=%s] - CtapAuthenticator::continueGetNextAssertionAfterResponseReceived: Unable to parse response: %s", v178, 0x2Au);
      WTF::CString::~CString(&v67);
      v91 = &v66;
      v103 = &v66;
      v118 = &v66;
      v123[1] = &v66;
      v123[0] = 0;
      v156 = &v66;
      v155 = v123;
      v138 = std::exchange[abi:sn200100]<WTF::StringImpl *,decltype(nullptr) &>(&v66);
      if (v138)
      {
        WTF::StringImpl::deref(v138);
      }

      WTF::CString::~CString(&v69);
      v90 = &v68;
      v104 = &v68;
      v117 = &v68;
      v124[1] = &v68;
      v124[0] = 0;
      v154 = &v68;
      v153 = v124;
      v137 = std::exchange[abi:sn200100]<WTF::StringImpl *,decltype(nullptr) &>(&v68);
      if (v137)
      {
        WTF::StringImpl::deref(v137);
      }

      WTF::CString::~CString(&v71);
      v89 = &v70;
      v105 = &v70;
      v116 = &v70;
      v125[1] = &v70;
      v125[0] = 0;
      v152 = &v70;
      v151 = v125;
      v136 = std::exchange[abi:sn200100]<WTF::StringImpl *,decltype(nullptr) &>(&v70);
      if (v136)
      {
        WTF::StringImpl::deref(v136);
      }
    }

    v61[0] = 24;
    v13 = WTF::StringLiterals::operator"" _s("Unknown internal error. Error code: ", 0x24);
    v60 = v14;
    v59 = v13;
    WTF::makeString<WTF::ASCIILiteral,unsigned char>(&v62, v13, v14, ResponseCode);
    mpark::variant<WTF::Ref<WebCore::AuthenticatorResponse,WTF::RawPtrTraits<WebCore::AuthenticatorResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorResponse>>,WebCore::ExceptionData>::variant<WebCore::ExceptionData,WebCore::ExceptionData,0,0,0,1ul,WebCore::ExceptionData,0>(v63);
    WebKit::Authenticator::receiveRespond(a1, v63);
    mpark::variant<WTF::Ref<WebCore::AuthenticatorResponse,WTF::RawPtrTraits<WebCore::AuthenticatorResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorResponse>>,WebCore::ExceptionData>::~variant(v63);
    WebCore::ExceptionData::~ExceptionData(v61);
    v58 = 1;
  }

  else
  {
    --*(a1 + 1040);
    WTF::RefPtr<WebCore::AuthenticatorAttestationResponse,WTF::RawPtrTraits<WebCore::AuthenticatorAttestationResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorAttestationResponse>>::releaseNonNull(&v57, &v74);
    v100 = a1 + 1056;
    v99 = &v57;
    v172 = a1 + 1056;
    v171 = &v57;
    v174 = a1 + 1056;
    v173 = &v57;
    v15 = a1 + 1056;
    v16 = WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::size(a1 + 1056);
    if (v16 == WTF::Vector<WTF::Ref<WebKit::AuthenticatorTransportService,WTF::RawPtrTraits<WebKit::AuthenticatorTransportService>,WTF::DefaultRefDerefTraits<WebKit::AuthenticatorTransportService>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::capacity(a1 + 1056))
    {
      WTF::Vector<WTF::Ref<WebCore::AuthenticatorAssertionResponse,WTF::RawPtrTraits<WebCore::AuthenticatorAssertionResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorAssertionResponse>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::Ref<WebCore::AuthenticatorAssertionResponse,WTF::RawPtrTraits<WebCore::AuthenticatorAssertionResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorAssertionResponse>>>(v15, v173);
    }

    else
    {
      WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::asanSetInitialBufferSizeTo();
      v17 = WTF::Vector<WTF::Ref<WebKit::AuthenticatorTransportService,WTF::RawPtrTraits<WebKit::AuthenticatorTransportService>,WTF::DefaultRefDerefTraits<WebKit::AuthenticatorTransportService>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::end(v15);
      v18 = operator new(8, 0, v17);
      WTF::RefPtr<WTF::StringImpl,WTF::RawPtrTraits<WTF::StringImpl>,WTF::DefaultRefDerefTraits<WTF::StringImpl>>::RefPtr<WTF::StringImpl,WTF::RawPtrTraits<WTF::StringImpl>>(v18, v173);
      ++*(a1 + 1068);
    }

    v175 = 1;
    WTF::Ref<WebCore::AuthenticatorResponse,WTF::RawPtrTraits<WebCore::AuthenticatorResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorResponse>>::~Ref(&v57);
    v56 = qword_1ED641530;
    v55 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(qword_1ED641530, OS_LOG_TYPE_DEFAULT))
    {
      v19 = v56;
      v20 = v55;
      WebKit::CtapAuthenticator::aaguidForDebugging(&v53, a1);
      WTF::String::utf8();
      v21 = WTF::CString::data(&v54);
      WebKit::FidoAuthenticator::transportForDebugging(&v51, a1);
      WTF::String::utf8();
      v22 = WTF::CString::data(&v52);
      __os_log_helper_16_2_4_8_0_8_32_8_32_8_0(v177, a1, v21, v22, *(a1 + 1040));
      _os_log_impl(&dword_19D52D000, v19, v20, "%p [aaguid=%s, transport=%s] - CtapAuthenticator::continueGetNextAssertionAfterResponseReceived: Remaining responses: %lu", v177, 0x2Au);
      WTF::CString::~CString(&v52);
      v88 = &v51;
      v106 = &v51;
      v115 = &v51;
      v126[1] = &v51;
      v126[0] = 0;
      v150 = &v51;
      v149 = v126;
      v135 = std::exchange[abi:sn200100]<WTF::StringImpl *,decltype(nullptr) &>(&v51);
      if (v135)
      {
        WTF::StringImpl::deref(v135);
      }

      WTF::CString::~CString(&v54);
      v87 = &v53;
      v107 = &v53;
      v114 = &v53;
      v127[1] = &v53;
      v127[0] = 0;
      v148 = &v53;
      v147 = v127;
      v134 = std::exchange[abi:sn200100]<WTF::StringImpl *,decltype(nullptr) &>(&v53);
      if (v134)
      {
        WTF::StringImpl::deref(v134);
      }
    }

    if (*(a1 + 1040))
    {
      fido::encodeEmptyAuthenticatorRequest();
      v44 = qword_1ED641530;
      v43 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(qword_1ED641530, OS_LOG_TYPE_DEFAULT))
      {
        v25 = v44;
        v26 = v43;
        WebKit::CtapAuthenticator::aaguidForDebugging(&v41, a1);
        WTF::String::utf8();
        v27 = WTF::CString::data(&v42);
        WebKit::FidoAuthenticator::transportForDebugging(&v39, a1);
        WTF::String::utf8();
        v28 = WTF::CString::data(&v40);
        std::span<unsigned char const,18446744073709551615ul>::span[abi:sn200100]<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &>(v36, v45);
        v35 = 0;
        WTF::OptionSet<WTF::Base64EncodeOption>::OptionSet(&v35);
        WTF::base64EncodeToString(&v37, v36[0], v36[1]);
        WTF::String::utf8();
        v29 = WTF::CString::data(&v38);
        __os_log_helper_16_2_4_8_0_8_32_8_32_8_32(v176, a1, v27, v28, v29);
        _os_log_impl(&dword_19D52D000, v25, v26, "%p [aaguid=%s, transport=%s] - CtapAuthenticator::continueGetNextAssertionAfterResponseReceived: Sending %s", v176, 0x2Au);
        WTF::CString::~CString(&v38);
        v86 = &v37;
        v108 = &v37;
        v113 = &v37;
        v128[1] = &v37;
        v128[0] = 0;
        v146 = &v37;
        v145 = v128;
        v133 = std::exchange[abi:sn200100]<WTF::StringImpl *,decltype(nullptr) &>(&v37);
        if (v133)
        {
          WTF::StringImpl::deref(v133);
        }

        WTF::CString::~CString(&v40);
        v85 = &v39;
        v109 = &v39;
        v112 = &v39;
        v129[1] = &v39;
        v129[0] = 0;
        v144 = &v39;
        v143 = v129;
        v132 = std::exchange[abi:sn200100]<WTF::StringImpl *,decltype(nullptr) &>(&v39);
        if (v132)
        {
          WTF::StringImpl::deref(v132);
        }

        WTF::CString::~CString(&v42);
        v84 = &v41;
        v110 = &v41;
        v111 = &v41;
        v130[1] = &v41;
        v130[0] = 0;
        v142 = &v41;
        v141 = v130;
        v131 = std::exchange[abi:sn200100]<WTF::StringImpl *,decltype(nullptr) &>(&v41);
        if (v131)
        {
          WTF::StringImpl::deref(v131);
        }
      }

      WebKit::FidoAuthenticator::protectedDriver(a1, &v34);
      v30 = WTF::RefPtr<API::WebAuthenticationPanel,WTF::RawPtrTraits<API::WebAuthenticationPanel>,WTF::DefaultRefDerefTraits<API::WebAuthenticationPanel>>::get(&v34);
      WTF::WeakPtr<WebKit::AuthenticatorManager,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>::WeakPtr<void>(&v32, a1);
      WTF::Function<void ()(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>::Function<WebKit::CtapAuthenticator::continueGetNextAssertionAfterResponseReceived(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &)::$_1,void>(&v33, &v32);
      (*(*v30 + 16))(v30, v45, &v33);
      WTF::Function<void ()(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>::~Function(&v33);
      WebKit::CtapAuthenticator::makeCredential(void)::$_0::~$_0(&v32);
      WTF::Ref<WebKit::CtapDriver,WTF::RawPtrTraits<WebKit::CtapDriver>,WTF::DefaultRefDerefTraits<WebKit::CtapDriver>>::~Ref(&v34);
      WTF::Vector<WebCore::AuthenticatorTransport,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v45);
      v58 = 0;
    }

    else
    {
      v23 = WebKit::Authenticator::observer(a1);
      v95 = &v50;
      v94 = v23;
      v162 = &v50;
      v161 = v23;
      v163 = v23;
      if (v23)
      {
        (**v163)();
      }

      v50 = v163;
      if (WTF::RefPtr<WebKit::AuthenticatorPresenterCoordinator,WTF::RawPtrTraits<WebKit::AuthenticatorPresenterCoordinator>,WTF::DefaultRefDerefTraits<WebKit::AuthenticatorPresenterCoordinator>>::operator BOOL(&v50))
      {
        v96 = &v50;
        v168 = &v50;
        v24 = v50;
        WTF::Vector<WTF::Ref<WebCore::AuthenticatorAssertionResponse,WTF::RawPtrTraits<WebCore::AuthenticatorAssertionResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorAssertionResponse>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v49, a1 + 1056);
        WTF::WeakPtr<WebKit::AuthenticatorManager,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>::WeakPtr<void>(&v47, a1);
        WTF::ThreadLikeAssertion::ThreadLikeAssertion(&v46);
        WTF::CompletionHandler<void ()(WebCore::AuthenticatorAssertionResponse *)>::CompletionHandler<WebKit::CtapAuthenticator::continueGetNextAssertionAfterResponseReceived(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)::$_0,void>(&v48, &v47);
        (*(*v24 + 72))(v24, v49, 1, &v48);
        WTF::CompletionHandler<void ()(WebCore::AuthenticatorAssertionResponse *)>::~CompletionHandler(&v48);
        WTF::ThreadLikeAssertion::~ThreadLikeAssertion(&v46);
        WebKit::CtapAuthenticator::makeCredential(void)::$_0::~$_0(&v47);
        WTF::Vector<WTF::Ref<WebCore::AuthenticatorAssertionResponse,WTF::RawPtrTraits<WebCore::AuthenticatorAssertionResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorAssertionResponse>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v49);
      }

      v97 = &v50;
      v164[1] = &v50;
      v164[0] = 0;
      v167 = &v50;
      v166 = v164;
      v165 = std::exchange[abi:sn200100]<WTF::StringImpl *,decltype(nullptr) &>(&v50);
      if (v165)
      {
        (*(*v165 + 8))();
      }

      v58 = 1;
    }
  }

  v98 = &v74;
  v169[1] = &v74;
  v169[0] = 0;
  v169[3] = &v74;
  v169[2] = v169;
  result = std::exchange[abi:sn200100]<WTF::StringImpl *,decltype(nullptr) &>(&v74);
  v170 = result;
  if (result)
  {
    return WTF::RefCounted<WebCore::AuthenticatorResponse>::deref((v170 + 8));
  }

  return result;
}

uint64_t WTF::Vector<WTF::Ref<WebCore::AuthenticatorAssertionResponse,WTF::RawPtrTraits<WebCore::AuthenticatorAssertionResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorAssertionResponse>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(uint64_t a1, uint64_t a2)
{
  WTF::Vector<WTF::Ref<WebCore::AuthenticatorAssertionResponse,WTF::RawPtrTraits<WebCore::AuthenticatorAssertionResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorAssertionResponse>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(a1, a2);
  return a1;
}

{
  v3 = WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::size(a2);
  v4 = WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::size(a2);
  WTF::VectorBuffer<WTF::Ref<WebCore::AuthenticatorAssertionResponse,WTF::RawPtrTraits<WebCore::AuthenticatorAssertionResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorAssertionResponse>>,0ul,WTF::FastMalloc>::VectorBuffer(a1, v3, v4);
  WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::size(a2);
  WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::asanSetInitialBufferSizeTo();
  if (WTF::Vector<WTF::Ref<WebKit::AuthenticatorTransportService,WTF::RawPtrTraits<WebKit::AuthenticatorTransportService>,WTF::DefaultRefDerefTraits<WebKit::AuthenticatorTransportService>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::begin(a1))
  {
    v5 = WTF::Vector<WTF::Ref<WebKit::AuthenticatorTransportService,WTF::RawPtrTraits<WebKit::AuthenticatorTransportService>,WTF::DefaultRefDerefTraits<WebKit::AuthenticatorTransportService>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::begin(a2);
    v6 = WTF::Vector<WTF::Ref<WebKit::AuthenticatorTransportService,WTF::RawPtrTraits<WebKit::AuthenticatorTransportService>,WTF::DefaultRefDerefTraits<WebKit::AuthenticatorTransportService>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::end(a2);
    v7 = WTF::Vector<WTF::Ref<WebKit::AuthenticatorTransportService,WTF::RawPtrTraits<WebKit::AuthenticatorTransportService>,WTF::DefaultRefDerefTraits<WebKit::AuthenticatorTransportService>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::begin(a1);
    WTF::VectorTypeOperations<WTF::Ref<WebCore::AuthenticatorAssertionResponse,WTF::RawPtrTraits<WebCore::AuthenticatorAssertionResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorAssertionResponse>>>::uninitializedCopy(v5, v6, v7);
  }

  return a1;
}

uint64_t *WTF::CompletionHandler<void ()(WebCore::AuthenticatorAssertionResponse *)>::CompletionHandler<WebKit::CtapAuthenticator::continueGetNextAssertionAfterResponseReceived(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)::$_0,void>(uint64_t *a1, uint64_t *a2)
{
  WTF::CompletionHandler<void ()(WebCore::AuthenticatorAssertionResponse *)>::CompletionHandler<WebKit::CtapAuthenticator::continueGetNextAssertionAfterResponseReceived(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)::$_0,void>(a1, a2);
  return a1;
}

{
  WTF::Function<void ()(WebCore::AuthenticatorAssertionResponse *)>::Function<WebKit::CtapAuthenticator::continueGetNextAssertionAfterResponseReceived(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)::$_0,void>(a1, a2);
  WTF::ThreadLikeAssertion::ThreadLikeAssertion(a1);
  return a1;
}

uint64_t *WTF::Function<void ()(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>::Function<WebKit::CtapAuthenticator::continueGetNextAssertionAfterResponseReceived(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &)::$_1,void>(uint64_t *a1, uint64_t *a2)
{
  WTF::Function<void ()(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>::Function<WebKit::CtapAuthenticator::continueGetNextAssertionAfterResponseReceived(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &)::$_1,void>(a1, a2);
  return a1;
}

{
  v4[2] = a1;
  v4[1] = a2;
  v4[4] = v4;
  v4[3] = a2;
  std::make_unique[abi:sn200100]<WTF::Detail::CallableWrapper<WebKit::CtapAuthenticator::continueGetNextAssertionAfterResponseReceived(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)::$_1,void,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &>,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,0>(v4, a2);
  std::unique_ptr<WTF::Detail::CallableWrapperBase<void>>::unique_ptr[abi:sn200100]<WTF::Detail::CallableWrapper<WTF::RunLoop::Timer::Timer<WebKit::AuthenticatorManager>(WTF::Ref<WTF::RunLoop,WTF::RawPtrTraits<WTF::RunLoop>,WTF::DefaultRefDerefTraits<WTF::RunLoop>> &&,WTF::ASCIILiteral,WebKit::AuthenticatorManager *,void (WTF::ASCIILiteral::*)(void))::{lambda(void)#1},void>,std::default_delete<WTF::RunLoop::Timer::Timer<WebKit::AuthenticatorManager>(WTF::Ref<WTF::RunLoop,WTF::RawPtrTraits<WTF::RunLoop>,WTF::DefaultRefDerefTraits<WTF::RunLoop>> &&,WTF::ASCIILiteral,WebKit::AuthenticatorManager *,void (WTF::ASCIILiteral::*)(void))::{lambda(void)#1}>,void,void>(a1, v4);
  std::unique_ptr<WTF::Detail::CallableWrapper<WebKit::CtapAuthenticator::makeCredential(void)::$_0,void,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&>,std::default_delete<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&>>::~unique_ptr[abi:sn200100](v4);
  return a1;
}

uint64_t WebKit::CtapAuthenticator::getRetries(WebKit::CtapAuthenticator *this)
{
  v46 = *MEMORY[0x1E69E9840];
  v23 = this;
  fido::pin::encodeAsCBOR();
  oslog = qword_1ED641530;
  v20 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(qword_1ED641530, OS_LOG_TYPE_DEFAULT))
  {
    v2 = oslog;
    v3 = v20;
    WebKit::CtapAuthenticator::aaguidForDebugging(&v18, this);
    WTF::String::utf8();
    v4 = WTF::CString::data(&v19);
    WebKit::FidoAuthenticator::transportForDebugging(&v16, this);
    WTF::String::utf8();
    v5 = WTF::CString::data(&v17);
    std::span<unsigned char const,18446744073709551615ul>::span[abi:sn200100]<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &>(v13, v22);
    v12 = 0;
    WTF::OptionSet<WTF::Base64EncodeOption>::OptionSet(&v12);
    WTF::base64EncodeToString(&v14, v13[0], v13[1]);
    WTF::String::utf8();
    v6 = WTF::CString::data(&v15);
    __os_log_helper_16_2_4_8_0_8_32_8_32_8_32(buf, this, v4, v5, v6);
    _os_log_impl(&dword_19D52D000, v2, v3, "%p [aaguid=%s, transport=%s] - CtapAuthenticator::getRetries: Sending %s", buf, 0x2Au);
    WTF::CString::~CString(&v15);
    v26 = &v14;
    v27 = &v14;
    v32 = &v14;
    v33[1] = &v14;
    v33[0] = 0;
    v44 = &v14;
    v43 = v33;
    v38 = std::exchange[abi:sn200100]<WTF::StringImpl *,decltype(nullptr) &>(&v14);
    if (v38)
    {
      WTF::StringImpl::deref(v38);
    }

    WTF::CString::~CString(&v17);
    v25 = &v16;
    v28 = &v16;
    v31 = &v16;
    v34[1] = &v16;
    v34[0] = 0;
    v42 = &v16;
    v41 = v34;
    v37 = std::exchange[abi:sn200100]<WTF::StringImpl *,decltype(nullptr) &>(&v16);
    if (v37)
    {
      WTF::StringImpl::deref(v37);
    }

    WTF::CString::~CString(&v19);
    v24 = &v18;
    v29 = &v18;
    v30 = &v18;
    v35[1] = &v18;
    v35[0] = 0;
    v40 = &v18;
    v39 = v35;
    v36 = std::exchange[abi:sn200100]<WTF::StringImpl *,decltype(nullptr) &>(&v18);
    if (v36)
    {
      WTF::StringImpl::deref(v36);
    }
  }

  WebKit::FidoAuthenticator::protectedDriver(this, &v11);
  v7 = WTF::RefPtr<API::WebAuthenticationPanel,WTF::RawPtrTraits<API::WebAuthenticationPanel>,WTF::DefaultRefDerefTraits<API::WebAuthenticationPanel>>::get(&v11);
  WTF::WeakPtr<WebKit::AuthenticatorManager,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>::WeakPtr<void>(&v9, this);
  WTF::Function<void ()(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>::Function<WebKit::CtapAuthenticator::getRetries(void)::$_0,void>(&v10, &v9);
  (*(*v7 + 16))(v7, v22, &v10);
  WTF::Function<void ()(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>::~Function(&v10);
  WebKit::CtapAuthenticator::makeCredential(void)::$_0::~$_0(&v9);
  WTF::Ref<WebKit::CtapDriver,WTF::RawPtrTraits<WebKit::CtapDriver>,WTF::DefaultRefDerefTraits<WebKit::CtapDriver>>::~Ref(&v11);
  return WTF::Vector<WebCore::AuthenticatorTransport,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v22);
}

uint64_t *WTF::Function<void ()(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>::Function<WebKit::CtapAuthenticator::getRetries(void)::$_0,void>(uint64_t *a1, uint64_t *a2)
{
  WTF::Function<void ()(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>::Function<WebKit::CtapAuthenticator::getRetries(void)::$_0,void>(a1, a2);
  return a1;
}

{
  v4[2] = a1;
  v4[1] = a2;
  v4[4] = v4;
  v4[3] = a2;
  std::make_unique[abi:sn200100]<WTF::Detail::CallableWrapper<WebKit::CtapAuthenticator::getRetries(void)::$_0,void,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&>,WebKit::CtapAuthenticator::getRetries(void)::$_0,0>(v4, a2);
  std::unique_ptr<WTF::Detail::CallableWrapperBase<void>>::unique_ptr[abi:sn200100]<WTF::Detail::CallableWrapper<WTF::RunLoop::Timer::Timer<WebKit::AuthenticatorManager>(WTF::Ref<WTF::RunLoop,WTF::RawPtrTraits<WTF::RunLoop>,WTF::DefaultRefDerefTraits<WTF::RunLoop>> &&,WTF::ASCIILiteral,WebKit::AuthenticatorManager *,void (WTF::ASCIILiteral::*)(void))::{lambda(void)#1},void>,std::default_delete<WTF::RunLoop::Timer::Timer<WebKit::AuthenticatorManager>(WTF::Ref<WTF::RunLoop,WTF::RawPtrTraits<WTF::RunLoop>,WTF::DefaultRefDerefTraits<WTF::RunLoop>> &&,WTF::ASCIILiteral,WebKit::AuthenticatorManager *,void (WTF::ASCIILiteral::*)(void))::{lambda(void)#1}>,void,void>(a1, v4);
  std::unique_ptr<WTF::Detail::CallableWrapper<WebKit::CtapAuthenticator::makeCredential(void)::$_0,void,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&>,std::default_delete<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&>>::~unique_ptr[abi:sn200100](v4);
  return a1;
}

void WebKit::CtapAuthenticator::continueGetKeyAgreementAfterGetRetries(WebKit::FidoAuthenticator *a1, uint64_t a2)
{
  v113 = *MEMORY[0x1E69E9840];
  v58 = a1;
  v57 = a2;
  oslog = qword_1ED641530;
  v55 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(qword_1ED641530, OS_LOG_TYPE_DEFAULT))
  {
    v3 = oslog;
    v4 = v55;
    WebKit::CtapAuthenticator::aaguidForDebugging(&v53, a1);
    WTF::String::utf8();
    v5 = WTF::CString::data(&v54);
    WebKit::FidoAuthenticator::transportForDebugging(&v51, a1);
    WTF::String::utf8();
    v6 = WTF::CString::data(&v52);
    __os_log_helper_16_2_3_8_0_8_32_8_32(buf, a1, v5, v6);
    _os_log_impl(&dword_19D52D000, v3, v4, "%p [aaguid=%s, transport=%s] - CtapAuthenticator::continueGetKeyAgreementAfterGetRetries", buf, 0x20u);
    WTF::CString::~CString(&v52);
    v65 = &v51;
    v66 = &v51;
    v79 = &v51;
    v80[1] = &v51;
    v80[0] = 0;
    v107 = &v51;
    v106 = v80;
    v93 = std::exchange[abi:sn200100]<WTF::StringImpl *,decltype(nullptr) &>(&v51);
    if (v93)
    {
      WTF::StringImpl::deref(v93);
    }

    WTF::CString::~CString(&v54);
    v64 = &v53;
    v67 = &v53;
    v78 = &v53;
    v81[1] = &v53;
    v81[0] = 0;
    v105 = &v53;
    v104 = v81;
    v92 = std::exchange[abi:sn200100]<WTF::StringImpl *,decltype(nullptr) &>(&v53);
    if (v92)
    {
      WTF::StringImpl::deref(v92);
    }
  }

  v7 = fido::pin::RetriesResponse::parse();
  v111 = v8;
  v110 = v7;
  v49 = v7;
  v50 = v8;
  if (std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>::operator BOOL[abi:sn200100](&v49))
  {
    fido::pin::encodeAsCBOR();
    v35 = qword_1ED641530;
    v34 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(qword_1ED641530, OS_LOG_TYPE_DEFAULT))
    {
      v16 = v35;
      v17 = v34;
      WebKit::CtapAuthenticator::aaguidForDebugging(&v32, a1);
      WTF::String::utf8();
      v18 = WTF::CString::data(&v33);
      WebKit::FidoAuthenticator::transportForDebugging(&v30, a1);
      WTF::String::utf8();
      v19 = WTF::CString::data(&v31);
      std::span<unsigned char const,18446744073709551615ul>::span[abi:sn200100]<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &>(v27, v36);
      v26 = 0;
      WTF::OptionSet<WTF::Base64EncodeOption>::OptionSet(&v26);
      WTF::base64EncodeToString(&v28, v27[0], v27[1]);
      WTF::String::utf8();
      v20 = WTF::CString::data(&v29);
      __os_log_helper_16_2_4_8_0_8_32_8_32_8_32(v108, a1, v18, v19, v20);
      _os_log_impl(&dword_19D52D000, v16, v17, "%p [aaguid=%s, transport=%s] - CtapAuthenticator::continueGetKeyAgreementAfterGetRetries: Sending %s", v108, 0x2Au);
      WTF::CString::~CString(&v29);
      v61 = &v28;
      v70 = &v28;
      v75 = &v28;
      v84[1] = &v28;
      v84[0] = 0;
      v99 = &v28;
      v98 = v84;
      v89 = std::exchange[abi:sn200100]<WTF::StringImpl *,decltype(nullptr) &>(&v28);
      if (v89)
      {
        WTF::StringImpl::deref(v89);
      }

      WTF::CString::~CString(&v31);
      v60 = &v30;
      v71 = &v30;
      v74 = &v30;
      v85[1] = &v30;
      v85[0] = 0;
      v97 = &v30;
      v96 = v85;
      v88 = std::exchange[abi:sn200100]<WTF::StringImpl *,decltype(nullptr) &>(&v30);
      if (v88)
      {
        WTF::StringImpl::deref(v88);
      }

      WTF::CString::~CString(&v33);
      v59 = &v32;
      v72 = &v32;
      v73 = &v32;
      v86[1] = &v32;
      v86[0] = 0;
      v95 = &v32;
      v94 = v86;
      v87 = std::exchange[abi:sn200100]<WTF::StringImpl *,decltype(nullptr) &>(&v32);
      if (v87)
      {
        WTF::StringImpl::deref(v87);
      }
    }

    WebKit::FidoAuthenticator::protectedDriver(a1, &v25);
    v21 = WTF::RefPtr<API::WebAuthenticationPanel,WTF::RawPtrTraits<API::WebAuthenticationPanel>,WTF::DefaultRefDerefTraits<API::WebAuthenticationPanel>>::get(&v25);
    WTF::WeakPtr<WebKit::AuthenticatorManager,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>::WeakPtr<void>(v23, a1);
    std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>::operator*[abi:sn200100](&v49);
    v23[1] = *v22;
    WTF::Function<void ()(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>::Function<WebKit::CtapAuthenticator::continueGetKeyAgreementAfterGetRetries(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &)::$_0,void>(&v24, v23);
    (*(*v21 + 16))(v21, v36, &v24);
    WTF::Function<void ()(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>::~Function(&v24);
    WebKit::CtapAuthenticator::makeCredential(void)::$_0::~$_0(v23);
    WTF::Ref<WebKit::CtapDriver,WTF::RawPtrTraits<WebKit::CtapDriver>,WTF::DefaultRefDerefTraits<WebKit::CtapDriver>>::~Ref(&v25);
    WTF::Vector<WebCore::AuthenticatorTransport,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v36);
  }

  else
  {
    ResponseCode = fido::getResponseCode();
    v47 = qword_1ED641530;
    v46 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(qword_1ED641530, OS_LOG_TYPE_DEFAULT))
    {
      v9 = v47;
      v10 = v46;
      WebKit::CtapAuthenticator::aaguidForDebugging(&v44, a1);
      WTF::String::utf8();
      v11 = WTF::CString::data(&v45);
      WebKit::FidoAuthenticator::transportForDebugging(&v42, a1);
      WTF::String::utf8();
      v12 = WTF::CString::data(&v43);
      v13 = WTF::enumToUnderlyingType<fido::CtapDeviceResponseCode>(ResponseCode);
      __os_log_helper_16_2_4_8_0_8_32_8_32_4_0(v109, a1, v11, v12, v13);
      _os_log_impl(&dword_19D52D000, v9, v10, "%p [aaguid=%s, transport=%s] - CtapAuthenticator::continueGetKeyAgreementAfterGetRetries: Error code: %hhu", v109, 0x26u);
      WTF::CString::~CString(&v43);
      v63 = &v42;
      v68 = &v42;
      v77 = &v42;
      v82[1] = &v42;
      v82[0] = 0;
      v103 = &v42;
      v102 = v82;
      v91 = std::exchange[abi:sn200100]<WTF::StringImpl *,decltype(nullptr) &>(&v42);
      if (v91)
      {
        WTF::StringImpl::deref(v91);
      }

      WTF::CString::~CString(&v45);
      v62 = &v44;
      v69 = &v44;
      v76 = &v44;
      v83[1] = &v44;
      v83[0] = 0;
      v101 = &v44;
      v100 = v83;
      v90 = std::exchange[abi:sn200100]<WTF::StringImpl *,decltype(nullptr) &>(&v44);
      if (v90)
      {
        WTF::StringImpl::deref(v90);
      }
    }

    v39[0] = 24;
    v14 = WTF::StringLiterals::operator"" _s("Unknown internal error. Error code: ", 0x24);
    v38 = v15;
    v37 = v14;
    WTF::makeString<WTF::ASCIILiteral,unsigned char>(&v40, v14, v15, ResponseCode);
    mpark::variant<WTF::Ref<WebCore::AuthenticatorResponse,WTF::RawPtrTraits<WebCore::AuthenticatorResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorResponse>>,WebCore::ExceptionData>::variant<WebCore::ExceptionData,WebCore::ExceptionData,0,0,0,1ul,WebCore::ExceptionData,0>(v41);
    WebKit::Authenticator::receiveRespond(a1, v41);
    mpark::variant<WTF::Ref<WebCore::AuthenticatorResponse,WTF::RawPtrTraits<WebCore::AuthenticatorResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorResponse>>,WebCore::ExceptionData>::~variant(v41);
    WebCore::ExceptionData::~ExceptionData(v39);
  }
}