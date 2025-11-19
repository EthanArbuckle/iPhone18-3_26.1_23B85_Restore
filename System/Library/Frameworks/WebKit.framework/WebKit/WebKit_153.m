void sub_19DE11A34(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  if (atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v17, a2);
  }

  if (v16)
  {
  }

  _Unwind_Resume(exception_object);
}

void WebKit::LocalConnection::getExistingCredentials(atomic_uint **a1@<X1>, void *a2@<X8>)
{
  v23[7] = *MEMORY[0x1E69E9840];
  v4 = *MEMORY[0x1E697B020];
  v5 = *MEMORY[0x1E697AEB0];
  v22[0] = *MEMORY[0x1E697AFF8];
  v22[1] = v5;
  v6 = *MEMORY[0x1E697AEB8];
  v23[0] = v4;
  v23[1] = v6;
  v7 = *MEMORY[0x1E697ABD0];
  v23[2] = @"com.apple.webkit.webauthn";
  v8 = *MEMORY[0x1E697ADC8];
  v22[2] = v7;
  v22[3] = v8;
  v9 = *a1;
  if (*a1)
  {
    atomic_fetch_add_explicit(v9, 2u, memory_order_relaxed);
    MEMORY[0x19EB00B70](&cf, v9);
    if (atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v9, v10);
    }
  }

  else
  {
    cf = &stru_1F1147748;
    v11 = &stru_1F1147748;
  }

  v12 = *MEMORY[0x1E697B260];
  v22[4] = *MEMORY[0x1E697B310];
  v22[5] = v12;
  v22[6] = *MEMORY[0x1E697B390];
  v23[3] = cf;
  v23[4] = MEMORY[0x1E695E118];
  v23[5] = *MEMORY[0x1E697B268];
  v23[6] = MEMORY[0x1E695E118];
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:v22 count:{7, cf}];
  v14 = v13;
  if (v13)
  {
    v15 = v13;
  }

  v16 = cf;
  cf = 0;
  if (v16)
  {
  }

  cf = 0;
  v17 = SecItemCopyMatching(v14, &cf);
  if (v17 != -25300 && v17)
  {
    *a2 = 0;
    if (!v14)
    {
      return;
    }

    goto LABEL_16;
  }

  v18 = WTF::checked_cf_cast<__CFArray const*>(cf);
  v19 = [v18 sortedArrayUsingComparator:&__block_literal_global_23];
  *a2 = v19;
  if (v19)
  {
    v20 = v19;
  }

  if (v18)
  {
  }

  if (v14)
  {
LABEL_16:
  }
}

void sub_19DE11CBC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  if (v9)
  {
  }

  _Unwind_Resume(exception_object);
}

uint64_t WTF::checked_cf_cast<__CFArray const*>(CFTypeRef cf)
{
  if (!cf)
  {
    return cf;
  }

  v2 = CFGetTypeID(cf);
  if (v2 == CFArrayGetTypeID())
  {
    return cf;
  }

  result = 72;
  __break(0xC471u);
  return result;
}

uint64_t ___ZN6WebKit15LocalConnection22getExistingCredentialsERKN3WTF6StringE_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *MEMORY[0x1E697ADD0];
  v5 = [a3 objectForKeyedSubscript:*MEMORY[0x1E697ADD0]];
  v6 = [a2 objectForKeyedSubscript:v4];

  return [v5 compare:v6];
}

uint64_t *WebKit::LocalService::create@<X0>(WebKit::LocalService *this@<X0>, WebKit::AuthenticatorTransportServiceObserver *a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = WebKit::LocalService::operator new(0x20, a2);
  *v5 = &unk_1F10E8570;
  *(v5 + 8) = 0;
  result = WTF::WeakPtrFactory<WebKit::AuthenticatorObserver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(this + 1, this);
  v7 = *(this + 1);
  atomic_fetch_add(v7, 1u);
  *(v5 + 16) = v7;
  *(v5 + 24) = 1;
  *v5 = &unk_1F110B730;
  *a3 = v5;
  return result;
}

uint64_t WebKit::LocalService::operator new(WebKit::LocalService *this, void *a2)
{
  if (this == 32 && WebKit::LocalService::s_heapRef)
  {
    return bmalloc::api::tzoneAllocateNonCompact(WebKit::LocalService::s_heapRef, a2);
  }

  else
  {
    return WebKit::LocalService::operatorNewSlow(this);
  }
}

uint64_t WebKit::LocalService::isAvailable(WebKit::LocalService *this)
{
  v1 = [WebKit::getASCWebKitSPISupportClass[0](this) shouldUseAlternateCredentialStore];
  if ((v1 & 1) == 0)
  {
    v3 = [objc_alloc(WebKit::getLAContextClass(v1)) init];
    v6 = 0;
    v4 = [v3 canEvaluatePolicy:1 error:&v6];
    if (v6)
    {
      v4 = 0;
    }

    if ((v4 & 1) != 0 || [v6 code] == -8)
    {
      v2 = 1;
      if (!v3)
      {
        return v2;
      }
    }

    else
    {
      v2 = 0;
      if (!v3)
      {
        return v2;
      }
    }

    return v2;
  }

  return 1;
}

void sub_19DE11F48(_Unwind_Exception *exception_object)
{
  if (v1)
  {
  }

  _Unwind_Resume(exception_object);
}

uint64_t WebKit::LocalService::startDiscoveryInternal(WebKit::LocalService *this)
{
  result = (*(*this + 56))(this);
  if (result)
  {
    v3 = *(this + 2);
    if (v3)
    {
      v4 = *(v3 + 8);
      if (v4)
      {
        (**v4)(v4);
        (*(*this + 64))(&v10, this);
        v5 = WebKit::LocalAuthenticator::create(&v10, &v11);
        v6 = v11;
        v11 = 0;
        v12 = v6;
        (*(*v4 + 32))(v4, &v12, v5);
        v7 = v12;
        v12 = 0;
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

        v8 = v11;
        v11 = 0;
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

        v9 = v10;
        v10 = 0;
        if (v9)
        {
          if (v9[2] == 1)
          {
            (*(*v9 + 8))(v9);
          }

          else
          {
            --v9[2];
          }
        }

        return (*(*v4 + 8))(v4);
      }
    }
  }

  return result;
}

void sub_19DE12144(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, _DWORD *a10, _DWORD *a11, _DWORD *a12)
{
  if (a12)
  {
    if (a12[4] == 1)
    {
      (*(*a12 + 8))(a12);
    }

    else
    {
      --a12[4];
    }
  }

  if (a11)
  {
    if (a11[4] == 1)
    {
      (*(*a11 + 8))(a11);
    }

    else
    {
      --a11[4];
    }
  }

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

  (*(*v12 + 8))(v12);
  _Unwind_Resume(a1);
}

double WebKit::LocalAuthenticator::create@<D0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = WTF::fastMalloc(0x370);
  *(v4 + 8) = 0;
  *(v4 + 16) = 1;
  *(v4 + 344) = 0;
  *(v4 + 352) = 0;
  *(v4 + 360) = 0;
  *(v4 + 368) = 0;
  *(v4 + 384) = 0;
  *(v4 + 400) = 0;
  *(v4 + 752) = 0;
  *(v4 + 792) = 0;
  *(v4 + 824) = 0;
  result = 0.0;
  *(v4 + 768) = 0u;
  *(v4 + 784) = 0;
  *(v4 + 40) = 0u;
  *(v4 + 56) = 0u;
  *(v4 + 72) = 0u;
  *(v4 + 88) = 0u;
  *(v4 + 104) = 0u;
  *(v4 + 120) = 0u;
  *(v4 + 136) = 0u;
  *(v4 + 152) = 0u;
  *(v4 + 168) = 0u;
  *(v4 + 184) = 0u;
  *(v4 + 200) = 0u;
  *(v4 + 216) = 0u;
  *(v4 + 232) = 0u;
  *(v4 + 24) = 0u;
  *(v4 + 248) = 0u;
  *(v4 + 264) = 0u;
  *(v4 + 280) = 0u;
  *(v4 + 296) = 0u;
  *(v4 + 312) = 0u;
  *(v4 + 321) = 0u;
  *v4 = &unk_1F110B698;
  *(v4 + 832) = 0;
  v6 = *a1;
  *a1 = 0;
  *(v4 + 840) = v6;
  *(v4 + 848) = 0;
  *(v4 + 864) = 0;
  *(v4 + 856) = 0;
  *a2 = v4;
  return result;
}

uint64_t WebKit::LocalService::createLocalConnection@<X0>(void *a1@<X1>, void *a2@<X8>)
{
  if (WebKit::LocalConnection::s_heapRef)
  {
    result = bmalloc::api::tzoneAllocateNonCompact(WebKit::LocalConnection::s_heapRef, a1);
  }

  else
  {
    result = WebKit::LocalConnection::operatorNewSlow(0);
  }

  *(result + 8) = 1;
  *result = &unk_1F110B6C8;
  *(result + 16) = 0;
  *a2 = result;
  return result;
}

uint64_t WebKit::NfcConnection::create@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = WTF::fastMalloc(0x58);
  result = WebKit::NfcConnection::NfcConnection(v6, a1, a2);
  *a3 = v6;
  return result;
}

uint64_t WebKit::NfcConnection::NfcConnection(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  v5 = *a2;
  *a2 = 0;
  *(a1 + 16) = v5;
  *(a1 + 24) = [[WKNFReaderSessionDelegate alloc] initWithConnection:a1];
  v6 = WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded((a3 + 8), a3);
  v7 = *(a3 + 8);
  atomic_fetch_add(v7, 1u);
  *(a1 + 32) = v7;
  v8 = WTF::RunLoop::mainSingleton(v6);
  v9 = v8;
  while (1)
  {
    v10 = *(v8 + 8);
    if ((v10 & 1) == 0)
    {
      break;
    }

    v11 = *(v8 + 8);
    atomic_compare_exchange_strong_explicit((v8 + 8), &v11, v10 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v11 == v10)
    {
      goto LABEL_6;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*(v8 + 8));
LABEL_6:
  v15 = v9;
  v12 = WTF::fastMalloc(0x20);
  *v12 = &unk_1F110BA10;
  v12[1] = a1;
  v12[2] = WebKit::NfcConnection::startPolling;
  v12[3] = 0;
  WTF::RunLoop::TimerBase::TimerBase();
  *(a1 + 40) = &unk_1F10E6DC8;
  *(a1 + 80) = v12;
  v13 = v15;
  v15 = 0;
  if (v13)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WTF::SerialFunctionDispatcher,(WTF::DestructionThread)0>::deref((v13 + 8));
  }

  [*(a1 + 16) setDelegate:*(a1 + 24)];
  v15 = 0;
  [*(a1 + 16) startPollingWithError:&v15];
  return a1;
}

void sub_19DE12578(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v12 = v11;
  (*(*v12 + 8))(v12);
  if (a10)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WTF::SerialFunctionDispatcher,(WTF::DestructionThread)0>::deref((a10 + 8));
  }

  v15 = *(v10 + 32);
  *(v10 + 32) = 0;
  if (v15 && atomic_fetch_add(v15, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v15);
    WTF::fastFree(v15, v14);
  }

  v16 = *(v10 + 24);
  *(v10 + 24) = 0;
  if (v16)
  {
  }

  v17 = *(v10 + 16);
  *(v10 + 16) = 0;
  if (v17)
  {
  }

  if (*(v10 + 8) == 1)
  {
    WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::~WeakPtrFactory(v10, v14);
    _Unwind_Resume(a1);
  }

  __break(0xC471u);
}

void WebKit::NfcConnection::~NfcConnection(id *this)
{
  [this[2] disconnectTag];
  [this[2] stopPolling];
  [this[2] endSession];
  this[5] = &unk_1F10E6DC8;
  v2 = this[10];
  this[10] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  WTF::RunLoop::TimerBase::~TimerBase((this + 5));
  v4 = this[4];
  this[4] = 0;
  if (v4 && atomic_fetch_add(v4, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v4);
    WTF::fastFree(v4, v3);
  }

  v5 = this[3];
  this[3] = 0;
  if (v5)
  {
  }

  v6 = this[2];
  this[2] = 0;
  if (v6)
  {
  }

  if (*(this + 2) == 1)
  {

    WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::~WeakPtrFactory(this, v3);
  }

  else
  {
    __break(0xC471u);
  }
}

void sub_19DE127FC(_Unwind_Exception *a1)
{
  *(v1 + 40) = &unk_1F10E6DC8;
  v3 = *(v1 + 80);
  *(v1 + 80) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  WTF::RunLoop::TimerBase::~TimerBase((v1 + 40));
  v5 = *(v1 + 32);
  *(v1 + 32) = 0;
  if (v5 && atomic_fetch_add(v5, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v5);
    WTF::fastFree(v5, v4);
  }

  v6 = *(v1 + 24);
  *(v1 + 24) = 0;
  if (v6)
  {
  }

  v7 = *(v1 + 16);
  *(v1 + 16) = 0;
  if (v7)
  {
  }

  if (*(v1 + 8) == 1)
  {
    WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::~WeakPtrFactory(v1, v4);
    _Unwind_Resume(a1);
  }

  __break(0xC471u);
}

void WebKit::NfcConnection::transact(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(a1 + 16);
  v5 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:*a2 length:*(a2 + 12)];
  v9 = [v4 transceive:v5];
  if (v9)
  {
    v6 = v9;
  }

  if (v5)
  {
  }

  if (v9)
  {
    v7 = [v9 bytes];
    v8 = [v9 length];
  }

  else
  {
    v7 = 0;
    v8 = 0;
  }

  WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector<unsigned char const,18446744073709551615ul>(a3, v7, v8);
  if (v9)
  {
  }
}

void sub_19DE129BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

WebKit::NfcService *WebKit::NfcService::create@<X0>(WebKit::NfcService *this@<X0>, WebKit::NfcService **a2@<X8>)
{
  v5 = WebKit::FidoService::operatorNewSlow(0x60);
  result = WebKit::NfcService::NfcService(v5, this);
  *a2 = v5;
  return result;
}

WebKit::NfcService *WebKit::NfcService::NfcService(WebKit::NfcService *this, WebKit::AuthenticatorTransportServiceObserver *a2)
{
  *this = &unk_1F10E8570;
  *(this + 1) = 0;
  v4 = WTF::WeakPtrFactory<WebKit::AuthenticatorObserver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(a2 + 1, a2);
  v5 = *(a2 + 1);
  atomic_fetch_add(v5, 1u);
  *(this + 2) = v5;
  *(this + 6) = 1;
  *this = &unk_1F110B788;
  *(this + 4) = 0;
  *(this + 5) = 0;
  v6 = WTF::RunLoop::mainSingleton(v4);
  v7 = v6;
  while (1)
  {
    v8 = *(v6 + 8);
    if ((v8 & 1) == 0)
    {
      break;
    }

    v9 = *(v6 + 8);
    atomic_compare_exchange_strong_explicit((v6 + 8), &v9, v8 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v9 == v8)
    {
      goto LABEL_6;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*(v6 + 8));
LABEL_6:
  v10 = WTF::fastMalloc(0x20);
  *v10 = &unk_1F110BA38;
  v10[1] = this;
  v10[2] = WebKit::NfcService::platformStartDiscovery;
  v10[3] = 0;
  WTF::RunLoop::TimerBase::TimerBase();
  *(this + 6) = &unk_1F10E6DC8;
  *(this + 11) = v10;
  if (v7)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WTF::SerialFunctionDispatcher,(WTF::DestructionThread)0>::deref((v7 + 8));
  }

  return this;
}

void sub_19DE12BC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  (*(*v12 + 8))(v12);
  if (a10)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WTF::SerialFunctionDispatcher,(WTF::DestructionThread)0>::deref((a10 + 8));
  }

  v15 = *(v10 + 40);
  *(v10 + 40) = 0;
  if (v15)
  {
    WTF::RefCounted<WebKit::NfcConnection>::deref((v15 + 8));
  }

  *v10 = v11;
  v16 = *(v10 + 32);
  if (v16)
  {
    WTF::HashTable<WTF::Ref<WebKit::CtapDriver,WTF::RawPtrTraits<WebKit::CtapDriver>,WTF::DefaultRefDerefTraits<WebKit::CtapDriver>>,WTF::Ref<WebKit::CtapDriver,WTF::RawPtrTraits<WebKit::CtapDriver>,WTF::DefaultRefDerefTraits<WebKit::CtapDriver>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WebKit::CtapDriver,WTF::RawPtrTraits<WebKit::CtapDriver>,WTF::DefaultRefDerefTraits<WebKit::CtapDriver>>>,WTF::HashTraits<WTF::Ref<WebKit::CtapDriver,WTF::RawPtrTraits<WebKit::CtapDriver>,WTF::DefaultRefDerefTraits<WebKit::CtapDriver>>>,WTF::HashTraits<WTF::Ref<WebKit::CtapDriver,WTF::RawPtrTraits<WebKit::CtapDriver>,WTF::DefaultRefDerefTraits<WebKit::CtapDriver>>>,WTF::FastMalloc>::deallocateTable(v16, v14);
  }

  if (*(v10 + 24) == 1)
  {
    WebKit::AuthenticatorTransportService::~AuthenticatorTransportService(v10);
    _Unwind_Resume(a1);
  }

  __break(0xC471u);
}

void WebKit::NfcService::~NfcService(WebKit::NfcService *this)
{
  *this = &unk_1F110B788;
  v2 = (this + 48);
  *(this + 6) = &unk_1F10E6DC8;
  v3 = *(this + 11);
  *(this + 11) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  WTF::RunLoop::TimerBase::~TimerBase(v2);
  v5 = *(this + 5);
  *(this + 5) = 0;
  if (v5)
  {
    WTF::RefCounted<WebKit::NfcConnection>::deref((v5 + 8));
  }

  *this = &unk_1F10E85B8;
  v6 = *(this + 4);
  if (v6)
  {
    WTF::HashTable<WTF::Ref<WebKit::CtapDriver,WTF::RawPtrTraits<WebKit::CtapDriver>,WTF::DefaultRefDerefTraits<WebKit::CtapDriver>>,WTF::Ref<WebKit::CtapDriver,WTF::RawPtrTraits<WebKit::CtapDriver>,WTF::DefaultRefDerefTraits<WebKit::CtapDriver>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WebKit::CtapDriver,WTF::RawPtrTraits<WebKit::CtapDriver>,WTF::DefaultRefDerefTraits<WebKit::CtapDriver>>>,WTF::HashTraits<WTF::Ref<WebKit::CtapDriver,WTF::RawPtrTraits<WebKit::CtapDriver>,WTF::DefaultRefDerefTraits<WebKit::CtapDriver>>>,WTF::HashTraits<WTF::Ref<WebKit::CtapDriver,WTF::RawPtrTraits<WebKit::CtapDriver>,WTF::DefaultRefDerefTraits<WebKit::CtapDriver>>>,WTF::FastMalloc>::deallocateTable(v6, v4);
  }

  if (*(this + 6) == 1)
  {

    WebKit::AuthenticatorTransportService::~AuthenticatorTransportService(this);
  }

  else
  {
    __break(0xC471u);
  }
}

{
  WebKit::NfcService::~NfcService(this);

  bmalloc::api::tzoneFree(v1, v2);
}

uint64_t WebKit::NfcService::isAvailable(WebKit::NfcService *this)
{
  v1 = [WebKit::getNFHardwareManagerClass(this) sharedHardwareManager];

  return [v1 areFeaturesSupported:1 outError:0];
}

uint64_t WebKit::NfcService::restartDiscoveryInternal(WebKit::NfcService *this)
{
  v1 = *(this + 5);
  if (v1)
  {
    ++*(v1 + 8);
    [*(v1 + 16) disconnectTag];
    [*(v1 + 16) stopPolling];
    [*(v1 + 16) endSession];
    WTF::RefCounted<WebKit::NfcConnection>::deref((v1 + 8));
  }

  return WTF::RunLoop::TimerBase::start();
}

void WebKit::NfcService::platformStartDiscovery(WebKit::NfcService *this)
{
  if ([objc_msgSend(WebKit::getNFHardwareManagerClass(this) "sharedHardwareManager")])
  {
    WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(this + 2, this);
    v2 = *(this + 1);
    atomic_fetch_add(v2, 1u);
    v3 = malloc_type_malloc(0x28uLL, 0x10E004053C0834CuLL);
    *v3 = MEMORY[0x1E69E9818];
    *(v3 + 1) = 50331650;
    *(v3 + 2) = WTF::BlockPtr<void ()(NFReaderSession *,NSError *)>::fromCallable<WebKit::NfcService::platformStartDiscovery(void)::$_0>(WebKit::NfcService::platformStartDiscovery(void)::$_0)::{lambda(void *,NFReaderSession *,NSError *)#1}::__invoke;
    *(v3 + 3) = &WTF::BlockPtr<void ()(NFReaderSession *,NSError *)>::fromCallable<WebKit::NfcService::platformStartDiscovery(void)::$_0>(WebKit::NfcService::platformStartDiscovery(void)::$_0)::descriptor;
    *(v3 + 4) = v2;
    [objc_msgSend(WebKit::getNFHardwareManagerClass(v3) "sharedHardwareManager")];

    _Block_release(v3);
  }
}

void sub_19DE12FC4(_Unwind_Exception *exception_object, void *a2)
{
  if (v2)
  {
    if (atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v2);
      WTF::fastFree(v2, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_19DE13348(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  if (a9)
  {
    (*(*a9 + 8))(a9);
  }

  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  _Block_release(0);
  _Unwind_Resume(a1);
}

void sub_19DE13600(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  if (a9)
  {
    (*(*a9 + 8))(a9);
  }

  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  _Block_release(0);
  _Unwind_Resume(a1);
}

void sub_19DE1379C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 8))(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_19DE139F0(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (v10)
  {
    if (atomic_fetch_add(v10, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v10);
      WTF::fastFree(v10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void WebKit::LocalAuthenticator::~LocalAuthenticator(WebKit::LocalAuthenticator *this)
{
  v2 = *(this + 108);
  *(this + 108) = 0;
  if (v2)
  {
  }

  WTF::Vector<WTF::Ref<WebCore::AuthenticatorAssertionResponse,WTF::RawPtrTraits<WebCore::AuthenticatorAssertionResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorAssertionResponse>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 848);
  v3 = *(this + 105);
  *(this + 105) = 0;
  if (v3)
  {
    if (v3[2] == 1)
    {
      (*(*v3 + 8))(v3);
    }

    else
    {
      --v3[2];
    }
  }

  WebKit::Authenticator::~Authenticator(this);
}

{
  v2 = *(this + 108);
  *(this + 108) = 0;
  if (v2)
  {
  }

  WTF::Vector<WTF::Ref<WebCore::AuthenticatorAssertionResponse,WTF::RawPtrTraits<WebCore::AuthenticatorAssertionResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorAssertionResponse>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 848);
  v3 = *(this + 105);
  *(this + 105) = 0;
  if (v3)
  {
    if (v3[2] == 1)
    {
      (*(*v3 + 8))(v3);
    }

    else
    {
      --v3[2];
    }
  }

  WebKit::Authenticator::~Authenticator(this);

  WTF::fastFree(v4, v5);
}

_DWORD *WebKit::LocalService::deref(_DWORD *this)
{
  if (this[6] == 1)
  {
    return (*(*this + 24))();
  }

  --this[6];
  return this;
}

void WebKit::LocalService::~LocalService(WebKit::LocalService *this)
{
  if (*(this + 6) == 1)
  {
    WebKit::AuthenticatorTransportService::~AuthenticatorTransportService(this);
  }

  else
  {
    __break(0xC471u);
  }
}

{
  if (*(this + 6) == 1)
  {
    WebKit::AuthenticatorTransportService::~AuthenticatorTransportService(this);

    bmalloc::api::tzoneFree(v2, v3);
  }

  else
  {
    __break(0xC471u);
  }
}

uint64_t WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::RetainPtr<_WKSmartCardSlotStateObserver>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::RetainPtr<_WKSmartCardSlotStateObserver>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::RetainPtr<_WKSmartCardSlotStateObserver>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::RetainPtr<_WKSmartCardSlotStateObserver>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(uint64_t a1, WTF::StringImpl *a2)
{
  v3 = *(a1 - 4);
  if (v3)
  {
    v4 = a1;
    do
    {
      v5 = *v4;
      if (*v4 != -1)
      {
        v6 = *(v4 + 8);
        *(v4 + 8) = 0;
        if (v6)
        {

          v5 = *v4;
        }

        *v4 = 0;
        if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v5, a2);
        }
      }

      v4 += 16;
      --v3;
    }

    while (v3);
  }

  return WTF::fastFree((a1 - 16), a2);
}

_DWORD *WTF::BlockPtr<void ()(TKSmartCardSlot *)>::fromCallable<WebKit::CcidService::updateSlots(NSArray *)::$_0>(WebKit::CcidService::updateSlots(NSArray *)::$_0)::{lambda(void const*)#1}::__invoke(uint64_t a1, WTF::StringImpl *a2)
{
  v3 = *(a1 + 48);
  *(a1 + 48) = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, a2);
  }

  result = *(a1 + 40);
  *(a1 + 40) = 0;
  if (result)
  {
    if (result[6] == 1)
    {
      v5 = *(*result + 24);

      return v5();
    }

    else
    {
      --result[6];
    }
  }

  return result;
}

void WTF::BlockPtr<void ()(TKSmartCardSlot *)>::fromCallable<WebKit::CcidService::updateSlots(NSArray *)::$_0>(WebKit::CcidService::updateSlots(NSArray *)::$_0)::{lambda(void *,TKSmartCardSlot *)#1}::__invoke(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v5 = [_WKSmartCardSlotStateObserver alloc];
  if (v4)
  {
    WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded((v4 + 8), v4);
    v6 = *(v4 + 8);
    if (v6)
    {
      atomic_fetch_add(v6, 1u);
    }
  }

  else
  {
    v6 = 0;
  }

  v31 = a2;
  v32 = v6;
  if (a2)
  {
    v7 = a2;
  }

  v10 = [(_WKSmartCardSlotStateObserver *)v5 initWithService:&v32 slot:&v31];
  v11 = v31;
  v31 = 0;
  if (v11)
  {
  }

  v12 = v32;
  v32 = 0;
  if (v12 && atomic_fetch_add(v12, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v12);
    WTF::fastFree(v12, v8);
  }

  v15 = *(a1 + 48);
  v14 = (a1 + 48);
  v13 = v15;
  if (v15 == -1 || !v13)
  {
    __break(0xC471u);
    JUMPOUT(0x19DE14004);
  }

  v16 = *(v4 + 104);
  if (v16 || (WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::RetainPtr<_WKSmartCardSlotStateObserver>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::RetainPtr<_WKSmartCardSlotStateObserver>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::RetainPtr<_WKSmartCardSlotStateObserver>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::RetainPtr<_WKSmartCardSlotStateObserver>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::expand((v4 + 104)), (v16 = *(v4 + 104)) != 0))
  {
    v17 = *(v16 - 8);
  }

  else
  {
    v17 = 0;
  }

  v18 = *(*v14 + 4);
  if (v18 < 0x100)
  {
    v19 = WTF::StringImpl::hashSlowCase(*v14);
  }

  else
  {
    v19 = v18 >> 8;
  }

  v20 = 0;
  for (i = 1; ; ++i)
  {
    v22 = v19 & v17;
    v23 = (v16 + 16 * (v19 & v17));
    v24 = *v23;
    if (*v23 == -1)
    {
      v20 = (v16 + 16 * v22);
      goto LABEL_25;
    }

    if (!v24)
    {
      break;
    }

    if (WTF::equal(v24, *v14, v9))
    {
      goto LABEL_38;
    }

LABEL_25:
    v19 = i + v22;
  }

  if (v20)
  {
    *v20 = 0;
    v20[1] = 0;
    --*(*(v4 + 104) - 16);
    v23 = v20;
  }

  WTF::String::operator=(v23, v14);
  if (v10)
  {
    v25 = v10;
  }

  v26 = v23[1];
  v23[1] = v10;
  if (v26)
  {
  }

  v27 = *(v4 + 104);
  if (v27)
  {
    v28 = *(v27 - 12) + 1;
  }

  else
  {
    v28 = 1;
  }

  *(v27 - 12) = v28;
  v29 = (*(v27 - 16) + v28);
  v30 = *(v27 - 4);
  if (v30 > 0x400)
  {
    if (v30 <= 2 * v29)
    {
LABEL_37:
      WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::RetainPtr<_WKSmartCardSlotStateObserver>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::RetainPtr<_WKSmartCardSlotStateObserver>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::RetainPtr<_WKSmartCardSlotStateObserver>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::RetainPtr<_WKSmartCardSlotStateObserver>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::expand((v4 + 104));
    }
  }

  else if (3 * v30 <= 4 * v29)
  {
    goto LABEL_37;
  }

LABEL_38:
  [a2 addObserver:v10 forKeyPath:@"state" options:5 context:{0, v31, v32}];
  if (v10)
  {
  }
}

void sub_19DE14028(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF *a10)
{
  if (a10)
  {
    if (atomic_fetch_add(a10, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, a10);
      WTF::fastFree(a10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

_DWORD *WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::RetainPtr<_WKSmartCardSlotStateObserver>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::RetainPtr<_WKSmartCardSlotStateObserver>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::RetainPtr<_WKSmartCardSlotStateObserver>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::RetainPtr<_WKSmartCardSlotStateObserver>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::expand(uint64_t *a1)
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

  return WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::RetainPtr<_WKSmartCardSlotStateObserver>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::RetainPtr<_WKSmartCardSlotStateObserver>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::RetainPtr<_WKSmartCardSlotStateObserver>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::RetainPtr<_WKSmartCardSlotStateObserver>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::rehash(a1, v3);
}

_DWORD *WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::RetainPtr<_WKSmartCardSlotStateObserver>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::RetainPtr<_WKSmartCardSlotStateObserver>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::RetainPtr<_WKSmartCardSlotStateObserver>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::RetainPtr<_WKSmartCardSlotStateObserver>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::rehash(uint64_t *a1, unsigned int a2)
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

  result = WTF::fastZeroedMalloc((16 * a2 + 16));
  *a1 = (result + 4);
  result[2] = a2 - 1;
  result[3] = a2;
  *result = 0;
  result[1] = v6;
  if (v5)
  {
    v9 = 0;
    while (1)
    {
      v10 = v4 + 16 * v9;
      v11 = *v10;
      if (*v10 != -1)
      {
        if (v11)
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

          v15 = *(v11 + 4);
          if (v15 < 0x100)
          {
            v16 = WTF::StringImpl::hashSlowCase(v11);
          }

          else
          {
            v16 = v15 >> 8;
          }

          v17 = 0;
          do
          {
            v18 = v16 & v14;
            v16 = ++v17 + v18;
          }

          while (*(v13 + 16 * v18));
          v19 = v13 + 16 * v18;
          v20 = *(v19 + 8);
          *(v19 + 8) = 0;
          if (v20)
          {

            v21 = *v19;
            *v19 = 0;
            if (v21 && atomic_fetch_add_explicit(v21, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v21, v8);
            }
          }

          else
          {
            *v19 = 0;
          }

          v22 = *v10;
          *v10 = 0;
          *v19 = v22;
          v23 = *(v10 + 8);
          *(v10 + 8) = 0;
          *(v19 + 8) = v23;
          v24 = *(v10 + 8);
          *(v10 + 8) = 0;
          if (v24)
          {
          }

          v11 = *v10;
          *v10 = 0;
          if (!v11 || atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) != 2)
          {
            goto LABEL_30;
          }
        }

        else
        {
          v12 = *(v10 + 8);
          *(v10 + 8) = 0;
          if (v12)
          {

            v11 = *v10;
          }

          *v10 = 0;
          if (!v11 || atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) != 2)
          {
            goto LABEL_30;
          }
        }

        WTF::StringImpl::destroy(v11, v8);
      }

LABEL_30:
      if (++v9 == v5)
      {
        goto LABEL_34;
      }
    }
  }

  if (v4)
  {
LABEL_34:

    return WTF::fastFree((v4 - 16), v8);
  }

  return result;
}

uint64_t WebCore::BufferSource::span(WebCore::BufferSource *this)
{
  if (*(this + 8) == 255)
  {
    mpark::throw_bad_variant_access(this);
  }

  v1 = *this;
  if (!*(this + 8))
  {
    if (v1)
    {
      v2 = JSC::ArrayBufferView::baseAddress(*this);
      JSC::ArrayBufferView::byteLength(v1);
      return v2;
    }

    return 0;
  }

  if (!v1)
  {
    return 0;
  }

  return JSC::ArrayBuffer::span(*this);
}

uint64_t std::__optional_copy_base<WebCore::AuthenticationExtensionsClientInputs::LargeBlobInputs,false>::__optional_copy_base[abi:sn200100](uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 40) = 0;
  if (*(a2 + 40) == 1)
  {
    v3 = *a2;
    if (*a2)
    {
      atomic_fetch_add_explicit(v3, 2u, memory_order_relaxed);
    }

    *a1 = v3;
    *(a1 + 8) = *(a2 + 8);
    std::__optional_copy_base<WebCore::BufferSource,false>::__optional_copy_base[abi:sn200100]((a1 + 16), a2 + 16);
    *(a1 + 40) = 1;
  }

  return a1;
}

void sub_19DE14390(_Unwind_Exception *exception_object, WTF::StringImpl *a2)
{
  v4 = *v2;
  *v2 = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  if (*(v2 + 40) == 1)
  {
    if (*(v2 + 32) == 1)
    {
      mpark::detail::copy_constructor<mpark::detail::traits<WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>,WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>>,(mpark::detail::Trait)1>::~copy_constructor(v2 + 16);
    }

    v5 = *v2;
    *v2 = 0;
    if (v5)
    {
      if (atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v5, a2);
      }
    }
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::__optional_copy_base<WebCore::BufferSource,false>::__optional_copy_base[abi:sn200100](_BYTE *result, uint64_t a2)
{
  *result = 0;
  result[16] = 0;
  if (*(a2 + 16) == 1)
  {
    result[8] = -1;
    v2 = *(a2 + 8);
    if (v2 != 255)
    {
      v3 = *a2;
      if (*a2)
      {
        if (*(a2 + 8))
        {
          v4 = 2;
        }

        else
        {
          v4 = 1;
        }

        *v3 += v4;
      }

      *result = v3;
      result[8] = v2;
    }

    result[16] = 1;
  }

  return result;
}

uint64_t WTF::CompletionHandler<void ()(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,std::optional<WebCore::ExceptionData>)>::operator()(uint64_t *a1, uint64_t a2, char *a3)
{
  v3 = *a1;
  *a1 = 0;
  if (a3[16])
  {
    v4 = *a3;
    v5 = *(a3 + 1);
    *(a3 + 1) = 0;
    v9[0] = v4;
    v10 = v5;
    v11 = 1;
  }

  else
  {
    v9[0] = 0;
    v11 = 0;
  }

  (*(*v3 + 16))(v3, a2, v9);
  if (v11 == 1)
  {
    v7 = v10;
    v10 = 0;
    if (v7)
    {
      if (atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v7, v6);
      }
    }
  }

  return (*(*v3 + 8))(v3);
}

void sub_19DE14534(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11, char a12)
{
  if (a12 == 1 && a11 && atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a11, a2);
  }

  (*(*v12 + 8))(v12);
  _Unwind_Resume(a1);
}

unint64_t WTF::Vector<cbor::CBORValue,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v3 = a3;
  v5 = *a1;
  if (*a1 > a3 || v5 + 32 * *(a1 + 12) <= a3)
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

    WTF::Vector<cbor::CBORValue,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v12);
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

    WTF::Vector<cbor::CBORValue,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v9);
    return *a1 + v6;
  }

  return v3;
}

void WTF::Vector<cbor::CBORValue,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 8) < a2)
  {
    v2 = a2;
    if (a2 >> 27)
    {
      __break(0xC471u);
    }

    else
    {
      v4 = *a1;
      v5 = *(a1 + 12);
      v6 = WTF::fastMalloc((32 * a2));
      *(a1 + 8) = v2;
      *a1 = v6;
      if (v5)
      {
        v8 = v6;
        v9 = 32 * v5;
        v10 = v4;
        do
        {
          cbor::CBORValue::CBORValue();
          cbor::CBORValue::~CBORValue(v10);
          v8 += 32;
          v10 = (v10 + 32);
          v9 -= 32;
        }

        while (v9);
      }

      if (v4)
      {
        if (*a1 == v4)
        {
          *a1 = 0;
          *(a1 + 8) = 0;
        }

        WTF::fastFree(v4, v7);
      }
    }
  }
}

uint64_t WTF::Vector<cbor::CBORValue,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, void *a2)
{
  v3 = *(a1 + 12);
  if (v3)
  {
    v4 = *a1;
    v5 = 32 * v3;
    do
    {
      cbor::CBORValue::~CBORValue(v4);
      v4 = (v6 + 32);
      v5 -= 32;
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

uint64_t std::__optional_destruct_base<WebCore::ExceptionData,false>::reset[abi:sn200100](uint64_t result, WTF::StringImpl *a2)
{
  if (*(result + 16) == 1)
  {
    v2 = result;
    result = *(result + 8);
    *(v2 + 8) = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        result = WTF::StringImpl::destroy(result, a2);
      }
    }

    *(v2 + 16) = 0;
  }

  return result;
}

uint64_t std::__optional_copy_base<WebCore::AuthenticationExtensionsClientInputs,false>::__optional_copy_base[abi:sn200100](uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 144) = 0;
  if (*(a2 + 144) == 1)
  {
    v4 = *a2;
    if (*a2)
    {
      atomic_fetch_add_explicit(v4, 2u, memory_order_relaxed);
    }

    *a1 = v4;
    *(a1 + 8) = *(a2 + 8);
    std::__optional_copy_base<WebCore::AuthenticationExtensionsClientInputs::LargeBlobInputs,false>::__optional_copy_base[abi:sn200100](a1 + 16, a2 + 16);
    std::__optional_copy_base<WebCore::AuthenticationExtensionsClientInputs::PRFInputs,false>::__optional_copy_base[abi:sn200100]((a1 + 64), a2 + 64);
    *(a1 + 144) = 1;
  }

  return a1;
}

void sub_19DE14848(_Unwind_Exception *exception_object, WTF::StringImpl *a2)
{
  if (*(v2 + 56) == 1)
  {
    if (*(v2 + 48) == 1)
    {
      mpark::detail::copy_constructor<mpark::detail::traits<WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>,WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>>,(mpark::detail::Trait)1>::~copy_constructor(v2 + 32);
    }

    v4 = *(v2 + 16);
    *(v2 + 16) = 0;
    if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v4, a2);
    }
  }

  v5 = *v2;
  *v2 = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, a2);
  }

  if (*(v2 + 144) == 1)
  {
    if (*(v2 + 136) == 1)
    {
      if (*(v2 + 128) == 1)
      {
        WTF::Vector<WTF::KeyValuePair<WTF::String,WebCore::AuthenticationExtensionsClientInputs::PRFValues>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v2 + 112);
      }

      if (*(v2 + 104) == 1)
      {
        if (*(v2 + 96) == 1)
        {
          mpark::detail::copy_constructor<mpark::detail::traits<WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>,WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>>,(mpark::detail::Trait)1>::~copy_constructor(v2 + 80);
        }

        mpark::detail::copy_constructor<mpark::detail::traits<WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>,WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>>,(mpark::detail::Trait)1>::~copy_constructor(v2 + 64);
      }
    }

    if (*(v2 + 56) == 1)
    {
      if (*(v2 + 48) == 1)
      {
        mpark::detail::copy_constructor<mpark::detail::traits<WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>,WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>>,(mpark::detail::Trait)1>::~copy_constructor(v2 + 32);
      }

      v6 = *(v2 + 16);
      *(v2 + 16) = 0;
      if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v6, a2);
      }
    }

    v7 = *v2;
    *v2 = 0;
    if (v7)
    {
      if (atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v7, a2);
      }
    }
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::__optional_copy_base<WebCore::AuthenticationExtensionsClientInputs::PRFInputs,false>::__optional_copy_base[abi:sn200100](_BYTE *a1, uint64_t a2)
{
  *a1 = 0;
  a1[72] = 0;
  if (*(a2 + 72) == 1)
  {
    std::__optional_copy_base<WebCore::AuthenticationExtensionsClientInputs::PRFValues,false>::__optional_copy_base[abi:sn200100](a1, a2);
    std::__optional_copy_base<WTF::Vector<WTF::KeyValuePair<WTF::String,WebCore::AuthenticationExtensionsClientInputs::PRFValues>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,false>::__optional_copy_base[abi:sn200100](a1 + 48, a2 + 48);
    a1[72] = 1;
  }

  return a1;
}

void sub_19DE149C8(_Unwind_Exception *exception_object)
{
  if (v1[40] == 1)
  {
    if (v1[32] == 1)
    {
      mpark::detail::copy_constructor<mpark::detail::traits<WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>,WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>>,(mpark::detail::Trait)1>::~copy_constructor((v1 + 16));
    }

    mpark::detail::copy_constructor<mpark::detail::traits<WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>,WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>>,(mpark::detail::Trait)1>::~copy_constructor(v1);
  }

  if (v1[72] == 1)
  {
    if (v1[64] == 1)
    {
      WTF::Vector<WTF::KeyValuePair<WTF::String,WebCore::AuthenticationExtensionsClientInputs::PRFValues>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector((v1 + 48));
    }

    if (v1[40] == 1)
    {
      if (v1[32] == 1)
      {
        mpark::detail::copy_constructor<mpark::detail::traits<WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>,WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>>,(mpark::detail::Trait)1>::~copy_constructor((v1 + 16));
      }

      mpark::detail::copy_constructor<mpark::detail::traits<WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>,WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>>,(mpark::detail::Trait)1>::~copy_constructor(v1);
    }
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::__optional_copy_base<WebCore::AuthenticationExtensionsClientInputs::PRFValues,false>::__optional_copy_base[abi:sn200100](_BYTE *a1, uint64_t a2)
{
  *a1 = 0;
  a1[40] = 0;
  if (*(a2 + 40) == 1)
  {
    *a1 = 0;
    a1[8] = -1;
    v3 = *(a2 + 8);
    if (v3 != 255)
    {
      v4 = *a2;
      if (*a2)
      {
        if (*(a2 + 8))
        {
          v5 = 2;
        }

        else
        {
          v5 = 1;
        }

        *v4 += v5;
      }

      *a1 = v4;
      a1[8] = v3;
    }

    std::__optional_copy_base<WebCore::BufferSource,false>::__optional_copy_base[abi:sn200100](a1 + 16, a2 + 16);
    a1[40] = 1;
  }

  return a1;
}

void sub_19DE14AD8(_Unwind_Exception *a1)
{
  mpark::detail::copy_constructor<mpark::detail::traits<WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>,WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>>,(mpark::detail::Trait)1>::~copy_constructor(v1);
  if (*(v1 + 40))
  {
    if (*(v1 + 32) == 1)
    {
      mpark::detail::copy_constructor<mpark::detail::traits<WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>,WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>>,(mpark::detail::Trait)1>::~copy_constructor(v1 + 16);
    }

    mpark::detail::copy_constructor<mpark::detail::traits<WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>,WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>>,(mpark::detail::Trait)1>::~copy_constructor(v1);
  }

  _Unwind_Resume(a1);
}

_BYTE *std::__optional_copy_base<WTF::Vector<WTF::KeyValuePair<WTF::String,WebCore::AuthenticationExtensionsClientInputs::PRFValues>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,false>::__optional_copy_base[abi:sn200100](_BYTE *a1, uint64_t a2)
{
  *a1 = 0;
  a1[16] = 0;
  if (*(a2 + 16) == 1)
  {
    WTF::Vector<WTF::KeyValuePair<WTF::String,WebCore::AuthenticationExtensionsClientInputs::PRFValues>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(a1, a2);
    a1[16] = 1;
  }

  return a1;
}

void sub_19DE14B58(_Unwind_Exception *exception_object)
{
  if (*(v1 + 16) == 1)
  {
    WTF::Vector<WTF::KeyValuePair<WTF::String,WebCore::AuthenticationExtensionsClientInputs::PRFValues>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t WTF::Vector<WTF::KeyValuePair<WTF::String,WebCore::AuthenticationExtensionsClientInputs::PRFValues>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(uint64_t result, uint64_t *a2)
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

  if (v3 < 0x5555556)
  {
    v5 = 48 * v3;
    v6 = WTF::fastMalloc((48 * v3));
    *(v2 + 8) = v5 / 0x30;
    *v2 = v6;
    v7 = *(a2 + 3);
    if (v7)
    {
      v8 = v6;
      v9 = 0;
      v10 = *a2;
      v11 = v10 + 48 * v7;
      do
      {
        v12 = v10 + v9;
        v13 = *(v10 + v9);
        if (v13)
        {
          atomic_fetch_add_explicit(v13, 2u, memory_order_relaxed);
        }

        v14 = v8 + v9;
        *v14 = v13;
        *(v14 + 8) = 0;
        *(v14 + 16) = -1;
        v15 = *(v12 + 16);
        if (v15 != 255)
        {
          v16 = *(v10 + v9 + 8);
          if (v16)
          {
            if (*(v12 + 16))
            {
              v17 = 2;
            }

            else
            {
              v17 = 1;
            }

            *v16 += v17;
          }

          *(v14 + 8) = v16;
          *(v14 + 16) = v15;
        }

        std::__optional_copy_base<WebCore::BufferSource,false>::__optional_copy_base[abi:sn200100]((v14 + 24), v10 + v9 + 24);
        v9 += 48;
      }

      while (v12 + 48 != v11);
    }

    return v2;
  }

  __break(0xC471u);
  return result;
}

void sub_19DE14CB0(_Unwind_Exception *a1)
{
  v5 = (v2 + v3);
  mpark::detail::copy_constructor<mpark::detail::traits<WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>,WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>>,(mpark::detail::Trait)1>::~copy_constructor((v5 + 1));
  v7 = *v5;
  *v5 = 0;
  if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v7, v6);
  }

  v8 = *v1;
  if (*v1)
  {
    *v1 = 0;
    *(v1 + 8) = 0;
    WTF::fastFree(v8, v6);
  }

  _Unwind_Resume(a1);
}

WebCore::PublicKeyCredentialCreationOptions *WebCore::PublicKeyCredentialCreationOptions::PublicKeyCredentialCreationOptions(WebCore::PublicKeyCredentialCreationOptions *this, atomic_uint **a2)
{
  v4 = *a2;
  if (*a2)
  {
    atomic_fetch_add_explicit(v4, 2u, memory_order_relaxed);
  }

  *this = v4;
  v5 = a2[1];
  if (v5)
  {
    atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed);
  }

  *(this + 1) = v5;
  v6 = a2[2];
  if (v6)
  {
    atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed);
  }

  *(this + 2) = v6;
  v7 = a2[3];
  if (v7)
  {
    atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed);
  }

  *(this + 3) = v7;
  v8 = a2[4];
  if (v8)
  {
    atomic_fetch_add_explicit(v8, 2u, memory_order_relaxed);
  }

  *(this + 40) = 0;
  *(this + 4) = v8;
  *(this + 48) = -1;
  v9 = *(a2 + 48);
  if (v9 != 255)
  {
    v10 = a2[5];
    if (v10)
    {
      if (*(a2 + 48))
      {
        v11 = 2;
      }

      else
      {
        v11 = 1;
      }

      *v10 += v11;
    }

    *(this + 5) = v10;
    *(this + 48) = v9;
  }

  v12 = a2[7];
  if (v12)
  {
    atomic_fetch_add_explicit(v12, 2u, memory_order_relaxed);
  }

  *(this + 64) = 0;
  *(this + 7) = v12;
  *(this + 72) = -1;
  v13 = *(a2 + 72);
  if (v13 != 255)
  {
    v14 = a2[8];
    if (v14)
    {
      if (*(a2 + 72))
      {
        v15 = 2;
      }

      else
      {
        v15 = 1;
      }

      *v14 += v15;
    }

    *(this + 8) = v14;
    *(this + 72) = v13;
  }

  WTF::Vector<WebCore::LinearTimingFunction::Point,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(this + 80, (a2 + 10));
  *(this + 12) = a2[12];
  WTF::Vector<WebCore::PublicKeyCredentialDescriptor,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(this + 104, (a2 + 13));
  v16 = a2[15];
  *(this + 128) = *(a2 + 128);
  *(this + 15) = v16;
  std::__optional_copy_base<WebCore::AuthenticationExtensionsClientInputs,false>::__optional_copy_base[abi:sn200100](this + 136, (a2 + 17));
  return this;
}

void sub_19DE14E68(_Unwind_Exception *a1)
{
  WTF::Vector<WebCore::PublicKeyCredentialDescriptor,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v1 + 104);
  v6 = *(v1 + 80);
  if (v6)
  {
    *(v1 + 80) = 0;
    *(v1 + 88) = 0;
    WTF::fastFree(v6, v5);
  }

  mpark::detail::copy_constructor<mpark::detail::traits<WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>,WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>>,(mpark::detail::Trait)1>::~copy_constructor(v3);
  v8 = *(v1 + 56);
  *(v1 + 56) = 0;
  if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v8, v7);
  }

  mpark::detail::copy_constructor<mpark::detail::traits<WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>,WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>>,(mpark::detail::Trait)1>::~copy_constructor(v2);
  v10 = *(v1 + 32);
  *(v1 + 32) = 0;
  if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, v9);
  }

  v11 = *(v1 + 24);
  *(v1 + 24) = 0;
  if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v11, v9);
  }

  v12 = *(v1 + 16);
  *(v1 + 16) = 0;
  if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v12, v9);
  }

  v13 = *(v1 + 8);
  *(v1 + 8) = 0;
  if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v13, v9);
  }

  v14 = *v1;
  *v1 = 0;
  if (v14)
  {
    if (atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v14, v9);
    }
  }

  _Unwind_Resume(a1);
}

void WTF::BlockPtr<void ()(NSDictionary *,NSError *)>::fromCallable<WebKit::LocalConnection::verifyUser(WTF::String const&,WebCore::ClientDataType,__SecAccessControl *,WebCore::UserVerificationRequirement,WTF::CompletionHandler<void ()(WebKit::LocalConnection::UserVerification,LAContext *)> &&)::$_0>(WebKit::LocalConnection::verifyUser(WTF::String const&,WebCore::ClientDataType,__SecAccessControl *,WebCore::UserVerificationRequirement,WTF::CompletionHandler<void ()(WebKit::LocalConnection::UserVerification,LAContext *)> &&)::$_0)::{lambda(void const*)#1}::__invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  *(a1 + 40) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(a1 + 32);
  *(a1 + 32) = 0;
  if (v3)
  {
  }
}

uint64_t WTF::BlockPtr<void ()(NSDictionary *,NSError *)>::fromCallable<WebKit::LocalConnection::verifyUser(WTF::String const&,WebCore::ClientDataType,__SecAccessControl *,WebCore::UserVerificationRequirement,WTF::CompletionHandler<void ()(WebKit::LocalConnection::UserVerification,LAContext *)> &&)::$_0>(WebKit::LocalConnection::verifyUser(WTF::String const&,WebCore::ClientDataType,__SecAccessControl *,WebCore::UserVerificationRequirement,WTF::CompletionHandler<void ()(WebKit::LocalConnection::UserVerification,LAContext *)> &&)::$_0)::{lambda(void *,NSDictionary *,NSError *)#1}::__invoke(uint64_t a1, void *a2, void *a3)
{
  if (a3)
  {
    v5 = 2 * ([a3 code] == -2);
  }

  else
  {
    v5 = 1;
  }

  v6 = [a2 objectForKeyedSubscript:@"UserPresence"];
  WTF::RunLoop::mainSingleton(v6);
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  v9 = WTF::fastMalloc(0x20);
  *v9 = &unk_1F110B818;
  *(v9 + 8) = v7;
  if (v6)
  {
    v10 = 3;
  }

  else
  {
    v10 = v5;
  }

  *(v9 + 16) = v10;
  *(v9 + 24) = v8;
  v12 = v9;
  WTF::RunLoop::dispatch();
  result = v12;
  if (v12)
  {
    return (*(*v12 + 8))(v12);
  }

  return result;
}

void sub_19DE150E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 8))(a10);
  }

  _Unwind_Resume(exception_object);
}

void *WTF::Detail::CallableWrapper<WebKit::LocalConnection::verifyUser(WTF::String const&,WebCore::ClientDataType,__SecAccessControl *,WebCore::UserVerificationRequirement,WTF::CompletionHandler<void ()(WebKit::LocalConnection::UserVerification,LAContext *)> &&)::$_0::operator()(NSDictionary *,NSError *)::{lambda(void)#1},void>::~CallableWrapper(void *a1)
{
  *a1 = &unk_1F110B818;
  v2 = a1[3];
  a1[3] = 0;
  if (v2)
  {
  }

  v3 = a1[1];
  a1[1] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::LocalConnection::verifyUser(WTF::String const&,WebCore::ClientDataType,__SecAccessControl *,WebCore::UserVerificationRequirement,WTF::CompletionHandler<void ()(WebKit::LocalConnection::UserVerification,LAContext *)> &&)::$_0::operator()(NSDictionary *,NSError *)::{lambda(void)#1},void>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F110B818;
  v3 = *(this + 3);
  *(this + 3) = 0;
  if (v3)
  {
  }

  v4 = *(this + 1);
  *(this + 1) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::CompletionHandler<void ()(WebKit::LocalConnection::UserVerification,LAContext *)>::operator()(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  (*(*v1 + 16))(v1);
  v2 = *(*v1 + 8);

  return v2(v1);
}

uint64_t WTF::BlockPtr<void ()(NSDictionary *,NSError *)>::fromCallable<WebKit::LocalConnection::verifyUser(__SecAccessControl *,LAContext *,WTF::CompletionHandler<void ()(WebKit::LocalConnection::UserVerification)> &&)::$_0>(WebKit::LocalConnection::verifyUser(__SecAccessControl *,LAContext *,WTF::CompletionHandler<void ()(WebKit::LocalConnection::UserVerification)> &&)::$_0)::{lambda(void const*)#1}::__invoke(uint64_t a1)
{
  result = *(a1 + 32);
  *(a1 + 32) = 0;
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t WTF::BlockPtr<void ()(NSDictionary *,NSError *)>::fromCallable<WebKit::LocalConnection::verifyUser(__SecAccessControl *,LAContext *,WTF::CompletionHandler<void ()(WebKit::LocalConnection::UserVerification)> &&)::$_0>(WebKit::LocalConnection::verifyUser(__SecAccessControl *,LAContext *,WTF::CompletionHandler<void ()(WebKit::LocalConnection::UserVerification)> &&)::$_0)::{lambda(void *,NSDictionary *,NSError *)#1}::__invoke(uint64_t a1, void *a2, void *a3)
{
  if (a3)
  {
    v5 = 2 * ([a3 code] == -2);
  }

  else
  {
    v5 = 1;
  }

  v6 = [a2 objectForKeyedSubscript:@"UserPresence"];
  WTF::RunLoop::mainSingleton(v6);
  v7 = *(a1 + 32);
  *(a1 + 32) = 0;
  v8 = WTF::fastMalloc(0x18);
  *v8 = &unk_1F110B860;
  *(v8 + 8) = v7;
  if (v6)
  {
    v9 = 3;
  }

  else
  {
    v9 = v5;
  }

  *(v8 + 16) = v9;
  v11 = v8;
  WTF::RunLoop::dispatch();
  result = v11;
  if (v11)
  {
    return (*(*v11 + 8))(v11);
  }

  return result;
}

void sub_19DE15460(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 8))(a10);
  }

  _Unwind_Resume(exception_object);
}

void *WTF::Detail::CallableWrapper<WebKit::LocalConnection::verifyUser(__SecAccessControl *,LAContext *,WTF::CompletionHandler<void ()(WebKit::LocalConnection::UserVerification)> &&)::$_0::operator()(NSDictionary *,NSError *)::{lambda(void)#1},void>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F110B860;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::LocalConnection::verifyUser(__SecAccessControl *,LAContext *,WTF::CompletionHandler<void ()(WebKit::LocalConnection::UserVerification)> &&)::$_0::operator()(NSDictionary *,NSError *)::{lambda(void)#1},void>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F110B860;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::CompletionHandler<void ()(WebKit::LocalConnection::UserVerification)>::operator()(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  (*(*v1 + 16))(v1);
  v2 = *(*v1 + 8);

  return v2(v1);
}

unsigned int *WTF::BlockPtr<void ()(NFReaderSession *,NSError *)>::fromCallable<WebKit::NfcService::platformStartDiscovery(void)::$_0>(WebKit::NfcService::platformStartDiscovery(void)::$_0)::{lambda(void const*)#1}::__invoke(uint64_t a1, void *a2)
{
  result = *(a1 + 32);
  *(a1 + 32) = 0;
  if (result)
  {
    if (atomic_fetch_add(result, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, result);
      return WTF::fastFree(result, a2);
    }
  }

  return result;
}

WTF::RunLoop *WTF::BlockPtr<void ()(NFReaderSession *,NSError *)>::fromCallable<WebKit::NfcService::platformStartDiscovery(void)::$_0>(WebKit::NfcService::platformStartDiscovery(void)::$_0)::{lambda(void *,NFReaderSession *,NSError *)#1}::__invoke(WTF::RunLoop *result, void *a2, uint64_t a3)
{
  if (!a3)
  {
    v4 = result;
    WTF::RunLoop::mainSingleton(result);
    v5 = *(v4 + 4);
    *(v4 + 4) = 0;
    if (a2)
    {
      v6 = a2;
    }

    v7 = WTF::fastMalloc(0x18);
    *v7 = &unk_1F110B8A8;
    *(v7 + 1) = v5;
    *(v7 + 2) = a2;
    v8 = v7;
    WTF::RunLoop::dispatch();
    result = v8;
    if (v8)
    {
      return (*(*v8 + 8))(v8);
    }
  }

  return result;
}

void sub_19DE15760(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (v10)
  {
    if (atomic_fetch_add(v10, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v10);
      WTF::fastFree(v10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void *WTF::Detail::CallableWrapper<WebKit::NfcService::platformStartDiscovery(void)::$_0::operator()(NFReaderSession *,NSError *)::{lambda(void)#1},void>::~CallableWrapper(void *a1, void *a2)
{
  *a1 = &unk_1F110B8A8;
  v3 = a1[2];
  a1[2] = 0;
  if (v3)
  {
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

uint64_t WTF::Detail::CallableWrapper<WebKit::NfcService::platformStartDiscovery(void)::$_0::operator()(NFReaderSession *,NSError *)::{lambda(void)#1},void>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F110B8A8;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
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

uint64_t WTF::Detail::CallableWrapper<WebKit::NfcService::platformStartDiscovery(void)::$_0::operator()(NFReaderSession *,NSError *)::{lambda(void)#1},void>::call(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 && (v2 = *(v1 + 8)) != 0)
  {
    ++*(v2 + 24);
    result = WebKit::NfcConnection::create((a1 + 16), v2, &v7);
    v4 = *(v2 + 40);
    *(v2 + 40) = v7;
    if (v4)
    {
      result = WTF::RefCounted<WebKit::NfcConnection>::deref((v4 + 8));
    }

    if (*(v2 + 24) == 1)
    {
      v6 = *(*v2 + 24);

      return v6(v2);
    }

    else
    {
      --*(v2 + 24);
    }
  }

  else
  {
    v5 = *(a1 + 16);

    return [v5 endSession];
  }

  return result;
}

void sub_19DE159C0(_Unwind_Exception *exception_object)
{
  if (v1[6] == 1)
  {
    (*(*v1 + 24))(v1);
  }

  else
  {
    --v1[6];
  }

  _Unwind_Resume(exception_object);
}

uint64_t WTF::Detail::CallableWrapper<WTF::RunLoop::Timer::Timer<WebKit::CcidService>(WTF::Ref<WTF::RunLoop,WTF::RawPtrTraits<WTF::RunLoop>,WTF::DefaultRefDerefTraits<WTF::RunLoop>> &&,WTF::ASCIILiteral,WebKit::CcidService *,void (WTF::ASCIILiteral::*)(void))::{lambda(void)#1},void>::call(void *a1)
{
  v1 = a1[1];
  if (v1)
  {
    ++v1[6];
  }

  v2 = a1[2];
  v3 = a1[3];
  v4 = (v1 + (v3 >> 1));
  if (v3)
  {
    v2 = *(*v4 + v2);
  }

  result = v2(v4);
  if (v1)
  {
    if (v1[6] == 1)
    {
      v6 = *(*v1 + 24);

      return v6(v1);
    }

    else
    {
      --v1[6];
    }
  }

  return result;
}

void sub_19DE15AD8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    if (v1[6] == 1)
    {
      (*(*v1 + 24))(v1);
    }

    else
    {
      --v1[6];
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::RetainPtr<_WKSmartCardSlotStateObserver>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::RetainPtr<_WKSmartCardSlotStateObserver>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::RetainPtr<_WKSmartCardSlotStateObserver>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::RetainPtr<_WKSmartCardSlotStateObserver>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WTF::String,WTF::RetainPtr<_WKSmartCardSlotStateObserver>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::RetainPtr<_WKSmartCardSlotStateObserver>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::String>>,(WTF::ShouldValidateKey)1,WTF::String>(uint64_t *a1, const WTF::StringImpl **a2, const WTF::StringImpl *a3)
{
  v3 = *a1;
  if (!*a1)
  {
    return 0;
  }

  v6 = *a2;
  if (*a2 == -1 || !v6)
  {
    __break(0xC471u);
    JUMPOUT(0x19DE15BFCLL);
  }

  v7 = *(v3 - 8);
  v8 = *(v6 + 4);
  if (v8 < 0x100)
  {
    v9 = WTF::StringImpl::hashSlowCase(v6);
  }

  else
  {
    v9 = v8 >> 8;
  }

  for (i = 0; ; v9 = i + v11)
  {
    v11 = v9 & v7;
    v12 = *(v3 + 16 * v11);
    if (v12 == -1)
    {
      goto LABEL_10;
    }

    if (!v12)
    {
      break;
    }

    if (WTF::equal(v12, *a2, a3))
    {
      return v3 + 16 * v11;
    }

LABEL_10:
    ++i;
  }

  if (!*a1)
  {
    return 0;
  }

  return *a1 + 16 * *(*a1 - 4);
}

void sub_19DE1617C(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, WTF::StringImpl **a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, WTF::StringImpl **a22)
{
  if (a12)
  {
    WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(a12, a2);
  }

  if (a22)
  {
    WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(a22, a2);
  }

  _Unwind_Resume(exception_object);
}

void *WTF::Detail::CallableWrapper<WebKit::LocalAuthenticator::makeCredential(void)::$_2,void,LAContext *>::~CallableWrapper(void *a1, void *a2)
{
  v3 = a1[1];
  *a1 = &unk_1F110B948;
  a1[1] = 0;
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    WTF::fastFree(v3, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::LocalAuthenticator::makeCredential(void)::$_2,void,LAContext *>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F110B948;
  *(this + 1) = 0;
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    WTF::fastFree(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

void WTF::Detail::CallableWrapper<WebKit::LocalAuthenticator::makeCredential(void)::$_2,void,LAContext *>::call(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = *(v2 + 8);
    if (v3)
    {
      ++*(v3 + 16);
      *(v3 + 832) = 5;
      error = 0;
      v5 = SecAccessControlCreateWithFlags(0, *MEMORY[0x1E697AC18], 0x40000001uLL, &error);
      v6 = v5;
      v7 = error;
      if (error)
      {
        v18[0] = 24;
        MEMORY[0x19EB02040](&v17, [(__CFError *)error localizedDescription]);
        v21[0] = "Couldn't create access control: ";
        v21[1] = 33;
        WTF::tryMakeString<WTF::ASCIILiteral,WTF::String>(v21, &v17, &v19);
        if (!v19)
        {
          __break(0xC471u);
          return;
        }

        WebKit::LocalAuthenticator::receiveException(v3, v18, 5);
        v9 = v19;
        v19 = 0;
        if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v9, v8);
        }

        v10 = v17;
        v17 = 0;
        if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v10, v8);
        }

        CFRelease(v7);
      }

      else
      {
        if (v5)
        {
          CFRetain(v5);
        }

        if (a2)
        {
          v11 = a2;
        }

        WTF::WeakPtrFactory<WebKit::AuthenticatorObserver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded((v3 + 8), v3);
        v12 = *(v3 + 8);
        atomic_fetch_add(v12, 1u);
        v13 = *(v3 + 840);
        v14 = WTF::fastMalloc(0x20);
        *v14 = &unk_1F110B970;
        v14[1] = v6;
        v14[2] = a2;
        v14[3] = v12;
        v21[0] = v14;
        (*(*v13 + 32))(v13, v6, a2, v21);
        v15 = v21[0];
        v21[0] = 0;
        if (v15)
        {
          (*(*v15 + 8))(v15);
        }
      }

      if (v6)
      {
        CFRelease(v6);
      }

      if (*(v3 + 16) == 1)
      {
        v16 = *(*v3 + 8);

        v16(v3);
      }

      else
      {
        --*(v3 + 16);
      }
    }
  }
}

void sub_19DE166BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, uint64_t a10, WTF::StringImpl *a11, uint64_t a12, uint64_t a13)
{
  if (v14)
  {
    CFRelease(v14);
    CFRelease(v14);
  }

  if (v13[4] == 1)
  {
    (*(*v13 + 8))(v13);
  }

  else
  {
    --v13[4];
  }

  _Unwind_Resume(exception_object);
}

void *WTF::Detail::CallableWrapper<WebKit::LocalAuthenticator::continueMakeCredentialAfterReceivingLAContext(LAContext *)::$_0,void,WebKit::LocalConnection::UserVerification>::~CallableWrapper(void *a1, void *a2)
{
  *a1 = &unk_1F110B970;
  v3 = a1[3];
  a1[3] = 0;
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    WTF::fastFree(v3, a2);
  }

  v4 = a1[2];
  a1[2] = 0;
  if (v4)
  {
  }

  v5 = a1[1];
  a1[1] = 0;
  if (v5)
  {
    CFRelease(v5);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::LocalAuthenticator::continueMakeCredentialAfterReceivingLAContext(LAContext *)::$_0,void,WebKit::LocalConnection::UserVerification>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F110B970;
  v3 = *(this + 3);
  *(this + 3) = 0;
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    WTF::fastFree(v3, a2);
  }

  v4 = *(this + 2);
  *(this + 2) = 0;
  if (v4)
  {
  }

  v5 = *(this + 1);
  *(this + 1) = 0;
  if (v5)
  {
    CFRelease(v5);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::LocalAuthenticator::continueMakeCredentialAfterReceivingLAContext(LAContext *)::$_0,void,WebKit::LocalConnection::UserVerification>::call(uint64_t a1, int a2)
{
  v170[3] = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 24);
  if (!v6)
  {
    return a1;
  }

  v7 = *(v6 + 8);
  if (!v7)
  {
    return a1;
  }

  ++*(v7 + 16);
  v8 = *(a1 + 8);
  v9 = *(a1 + 16);
  *(v7 + 832) = 2;
  if (*(v7 + 336))
  {
    mpark::throw_bad_variant_access(a1);
  }

  a1 = WebKit::LocalAuthenticator::validateUserVerification(v7, a2);
  if (!a1)
  {
    goto LABEL_127;
  }

  v141[0] = 0;
  v141[1] = 0;
  v140 = v141;
  cbor::CBORValue::CBORValue(&buf, (v7 + 88));
  cbor::CBORValue::CBORValue();
  error = v149;
  std::__tree<std::__value_type<cbor::CBORValue,cbor::CBORValue>,std::__map_value_compare<cbor::CBORValue,std::__value_type<cbor::CBORValue,cbor::CBORValue>,cbor::CBORValue::CTAPLess,true>,WTF::FastAllocator<std::__value_type<cbor::CBORValue,cbor::CBORValue>>>::__emplace_unique_key_args<cbor::CBORValue,std::piecewise_construct_t const&,std::tuple<cbor::CBORValue&&>,std::tuple<>>(&v140, v149);
  cbor::CBORValue::operator=();
  cbor::CBORValue::~CBORValue(v149);
  cbor::CBORValue::~CBORValue(&buf);
  cbor::CBORValue::CBORValue(&buf, (v7 + 72));
  cbor::CBORValue::CBORValue();
  error = v149;
  std::__tree<std::__value_type<cbor::CBORValue,cbor::CBORValue>,std::__map_value_compare<cbor::CBORValue,std::__value_type<cbor::CBORValue,cbor::CBORValue>,cbor::CBORValue::CTAPLess,true>,WTF::FastAllocator<std::__value_type<cbor::CBORValue,cbor::CBORValue>>>::__emplace_unique_key_args<cbor::CBORValue,std::piecewise_construct_t const&,std::tuple<cbor::CBORValue&&>,std::tuple<>>(&v140, v149);
  cbor::CBORValue::operator=();
  cbor::CBORValue::~CBORValue(v149);
  cbor::CBORValue::~CBORValue(&buf);
  cbor::CBORValue::CBORValue(&buf, (v7 + 104));
  v10 = v149;
  cbor::CBORValue::CBORValue();
  error = v149;
  std::__tree<std::__value_type<cbor::CBORValue,cbor::CBORValue>,std::__map_value_compare<cbor::CBORValue,std::__value_type<cbor::CBORValue,cbor::CBORValue>,cbor::CBORValue::CTAPLess,true>,WTF::FastAllocator<std::__value_type<cbor::CBORValue,cbor::CBORValue>>>::__emplace_unique_key_args<cbor::CBORValue,std::piecewise_construct_t const&,std::tuple<cbor::CBORValue&&>,std::tuple<>>(&v140, v149);
  cbor::CBORValue::operator=();
  cbor::CBORValue::~CBORValue(v149);
  cbor::CBORValue::~CBORValue(&buf);
  cbor::CBORValue::CBORValue();
  cbor::CBORWriter::write();
  cbor::CBORValue::~CBORValue(&buf);
  if ((v139 & 1) == 0)
  {
    __break(1u);
LABEL_184:
    v122 = [(__CFError *)v3 localizedDescription];
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v122;
    _os_log_error_impl(&dword_19D52D000, v9, OS_LOG_TYPE_ERROR, "Couldn't generate attestation signature: %@", &buf, 0xCu);
LABEL_96:
    v149[0] = 0;
    v149[1] = 0;
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    v78 = buf;
    LOBYTE(buf) = 24;
    *(&buf + 1) = v78;
    LOBYTE(v167) = 1;
    WTF::CompletionHandler<void ()(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,std::optional<WebCore::ExceptionData>)>::operator()(&v128, v149, &buf);
    if (v167 == 1)
    {
      v80 = *(&buf + 1);
      if (*(&buf + 1))
      {
        if (atomic_fetch_add_explicit(*(&buf + 1), 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v80, v79);
        }
      }
    }

    v81 = v149[0];
    if (v149[0])
    {
      v149[0] = 0;
      LODWORD(v149[1]) = 0;
      WTF::fastFree(v81, v79);
    }

    v82 = v3;
LABEL_103:
    CFRelease(v82);
    goto LABEL_104;
  }

  v10 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:v136 length:v138];
  (*(**(v7 + 840) + 40))(&key);
  if (!key)
  {
    LOBYTE(buf) = 24;
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    *(&buf + 1) = v149[0];
    WebKit::LocalAuthenticator::receiveException(v7, &buf, 5);
    v17 = *(&buf + 1);
    if (*(&buf + 1) && atomic_fetch_add_explicit(*(&buf + 1), 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v17, v16);
    }

    goto LABEL_121;
  }

  v11 = SecKeyCopyPublicKey(key);
  error = 0;
  v8 = SecKeyCopyExternalRepresentation(v11, &error);
  v12 = error;
  if (error)
  {
    LOBYTE(v149[0]) = 24;
    MEMORY[0x19EB02040](&v144, [(__CFError *)error localizedDescription]);
    *&buf = "Couldn't export the public key: ";
    *(&buf + 1) = 33;
    WTF::tryMakeString<WTF::ASCIILiteral,WTF::String>(&buf, &v144, &v149[1]);
    if (!v149[1])
    {
      __break(0xC471u);
      JUMPOUT(0x19DE17CBCLL);
    }

    WebKit::LocalAuthenticator::receiveException(v7, v149, 5);
    v14 = v149[1];
    v149[1] = 0;
    if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v14, v13);
    }

    v15 = v144;
    v144 = 0;
    if (v15 && atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v15, v13);
    }

    CFRelease(v12);
    if (v11)
    {
      CFRelease(v11);
    }

    if (v8)
    {
LABEL_120:
      CFRelease(v8);
    }

    goto LABEL_121;
  }

  if (v11)
  {
    CFRelease(v11);
  }

  if (v8)
  {
    v18 = v8;
  }

  v134 = 0uLL;
  PAL::CryptoDigest::create();
  if (v8)
  {
    [(__CFData *)v8 bytes];
    [(__CFData *)v8 length];
  }

  PAL::CryptoDigest::addBytes();
  PAL::CryptoDigest::computeHash(&buf, v149[0]);
  v134 = buf;
  v19 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:buf length:HIDWORD(buf)];
  v20 = *(v7 + 864);
  *(v7 + 864) = v19;
  if (v20)
  {
  }

  v21 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v22 = *MEMORY[0x1E697AFF8];
  v165[0] = *MEMORY[0x1E697B020];
  v23 = *MEMORY[0x1E697ADC8];
  v164[0] = v22;
  v164[1] = v23;
  v24 = *(v7 + 64);
  if (v24)
  {
    atomic_fetch_add_explicit(v24, 2u, memory_order_relaxed);
    MEMORY[0x19EB00B70](&buf, v24);
    if (atomic_fetch_add_explicit(v24, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v24, v25);
    }
  }

  else
  {
    *&buf = &stru_1F1147748;
    v26 = &stru_1F1147748;
  }

  v27 = *MEMORY[0x1E697AC40];
  v28 = *(v7 + 864);
  v165[1] = buf;
  v165[2] = v28;
  v29 = *MEMORY[0x1E697B390];
  v164[2] = v27;
  v164[3] = v29;
  v30 = MEMORY[0x1E695E118];
  v165[3] = MEMORY[0x1E695E118];
  v31 = [v21 setDictionary:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v165, v164, 4)}];
  v32 = buf;
  *&buf = 0;
  if (v32)
  {
  }

  v33 = WebKit::getASCWebKitSPISupportClass[0](v31);
  if (v33 && [WebKit::getASCWebKitSPISupportClass[0](v33) shouldUseAlternateCredentialStore])
  {
    [v21 setObject:MEMORY[0x1E695E118] forKey:*MEMORY[0x1E697AEB0]];
  }

  v34 = *(v7 + 864);
  v162 = *MEMORY[0x1E697AC38];
  v163 = v34;
  SecItemUpdate(v21, [MEMORY[0x1E695DF20] dictionaryWithObjects:&v163 forKeys:&v162 count:1]);
  if (v21)
  {
  }

  v35 = v149[0];
  v149[0] = 0;
  if (v35)
  {
    PAL::CryptoDigest::~CryptoDigest(v35);
    bmalloc::api::tzoneFree(v36, v37);
  }

  *&buf = 0;
  *(&buf + 1) = 0x2000000000;
  v38 = WTF::fastMalloc(0x20);
  DWORD2(buf) = 32;
  *&buf = v38;
  [(__CFData *)v8 getBytes:v38 range:1, 32];
  v149[0] = 0;
  v149[1] = 0x2000000000;
  v39 = WTF::fastMalloc(0x20);
  LODWORD(v149[1]) = 32;
  v149[0] = v39;
  [(__CFData *)v8 getBytes:v39 range:33, 32];
  WebCore::encodeES256PublicKeyAsCBOR();
  v132 = error;
  v133 = v147;
  v41 = v149[0];
  if (v149[0])
  {
    v149[0] = 0;
    LODWORD(v149[1]) = 0;
    WTF::fastFree(v41, v40);
  }

  v42 = buf;
  if (buf)
  {
    *&buf = 0;
    DWORD2(buf) = 0;
    v42 = WTF::fastFree(v42, v40);
  }

  v43 = WebKit::getASCWebKitSPISupportClass[0](v42);
  if (v43)
  {
    [WebKit::getASCWebKitSPISupportClass[0](v43) shouldUseAlternateCredentialStore];
  }

  if ((_MergedGlobals_83 & 1) == 0)
  {
    qword_1ED642760 = 0;
    *&dword_1ED642768 = 0x1000000000;
    v123 = WTF::fastMalloc(0x10);
    dword_1ED642768 = 16;
    qword_1ED642760 = v123;
    *v123 = xmmword_19E703CA0;
    _MergedGlobals_83 = 1;
  }

  v44 = dword_1ED64276C;
  v149[0] = 0;
  LODWORD(v149[1]) = 0;
  HIDWORD(v149[1]) = dword_1ED64276C;
  if (dword_1ED64276C)
  {
    v45 = WTF::fastMalloc(dword_1ED64276C);
    LODWORD(v149[1]) = v44;
    v149[0] = v45;
    memcpy(v45, qword_1ED642760, dword_1ED64276C);
  }

  WebCore::buildAttestedCredentialData();
  WebCore::buildAuthData();
  v47 = buf;
  if (buf)
  {
    *&buf = 0;
    DWORD2(buf) = 0;
    WTF::fastFree(v47, v46);
  }

  v48 = v149[0];
  if (v149[0])
  {
    v149[0] = 0;
    LODWORD(v149[1]) = 0;
    WTF::fastFree(v48, v46);
  }

  if (*(v7 + 176) != 3)
  {
    v57 = *MEMORY[0x1E696EBA8];
    if (*MEMORY[0x1E696EBA8])
    {
      atomic_fetch_add_explicit(v57, 2u, memory_order_relaxed);
    }

    error = v57;
    *(&buf + 1) = 0;
    v167 = 0;
    *&buf = &buf + 8;
    LOBYTE(v144) = 0;
    WebCore::buildAttestationObject();
    std::__tree<std::__value_type<cbor::CBORValue,cbor::CBORValue>,std::__map_value_compare<cbor::CBORValue,std::__value_type<cbor::CBORValue,cbor::CBORValue>,cbor::CBORValue::CTAPLess,true>,WTF::FastAllocator<std::__value_type<cbor::CBORValue,cbor::CBORValue>>>::destroy(&buf, *(&buf + 1));
    v59 = error;
    error = 0;
    if (v59 && atomic_fetch_add_explicit(v59, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v59, v58);
    }

    LOBYTE(buf) = 0;
    LOBYTE(v167) = 0;
    WebKit::LocalAuthenticator::finishMakeCredential(v7, &v134, v149, &buf);
    if (v167 == 1)
    {
      v60 = *(&buf + 1);
      *(&buf + 1) = 0;
      if (v60)
      {
        if (atomic_fetch_add_explicit(v60, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v60, v16);
        }
      }
    }

    v61 = v149[0];
    if (v149[0])
    {
      v149[0] = 0;
      LODWORD(v149[1]) = 0;
      WTF::fastFree(v61, v16);
    }

    goto LABEL_112;
  }

  v49 = v134;
  v134 = 0uLL;
  WTF::WeakPtrFactory<WebKit::AuthenticatorObserver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded((v7 + 8), v7);
  v50 = *(v7 + 8);
  atomic_fetch_add(v50, 1u);
  v51 = WTF::fastMalloc(0x20);
  *v51 = &unk_1F110B998;
  *(v51 + 8) = v49;
  *(v51 + 24) = v50;
  v128 = v51;
  v52 = [MEMORY[0x1E695DF88] dataWithBytes:v129 length:v131];
  [v52 replaceBytesInRange:37 withBytes:{16, &enterpriseAAGUID}];
  v53 = [v52 appendBytes:*(v7 + 32) length:*(v7 + 44)];
  v54 = WebKit::getASCWebKitSPISupportClass[0](v53);
  v55 = *(v7 + 64);
  if (v55)
  {
    atomic_fetch_add_explicit(v55, 2u, memory_order_relaxed);
    MEMORY[0x19EB00B70](&buf, v55);
    if (atomic_fetch_add_explicit(v55, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v55, v56);
    }
  }

  else
  {
    *&buf = &stru_1F1147748;
    v62 = &stru_1F1147748;
  }

  v63 = [v54 entepriseAttestationIdentityPersistentReferenceForRelyingParty:buf];
  v64 = buf;
  *&buf = 0;
  if (v64)
  {
  }

  if (!v63)
  {
LABEL_79:
    v149[0] = 0;
    v149[1] = 0;
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    v70 = buf;
    LOBYTE(buf) = 24;
    *(&buf + 1) = v70;
    LOBYTE(v167) = 1;
    WTF::CompletionHandler<void ()(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,std::optional<WebCore::ExceptionData>)>::operator()(&v128, v149, &buf);
    if (v167 == 1)
    {
      v71 = *(&buf + 1);
      if (*(&buf + 1))
      {
        if (atomic_fetch_add_explicit(*(&buf + 1), 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v71, v16);
        }
      }
    }

    v72 = v149[0];
    if (v149[0])
    {
      v149[0] = 0;
      LODWORD(v149[1]) = 0;
      WTF::fastFree(v72, v16);
    }

    goto LABEL_110;
  }

  v65 = *MEMORY[0x1E697B010];
  v66 = *MEMORY[0x1E697B3C8];
  v169[0] = v22;
  v169[1] = v66;
  v170[0] = v65;
  v170[1] = v63;
  v169[2] = *MEMORY[0x1E697B328];
  v170[2] = v30;
  v67 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v170 forKeys:v169 count:3];
  result[0] = 0;
  v68 = SecItemCopyMatching(v67, result);
  if (v68)
  {
    v69 = qword_1ED641530;
    if (os_log_type_enabled(qword_1ED641530, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 67109120;
      DWORD1(buf) = v68;
      _os_log_error_impl(&dword_19D52D000, v69, OS_LOG_TYPE_ERROR, "Couldn't find attestation certificate: %d", &buf, 8u);
    }

    goto LABEL_79;
  }

  v2 = result[0];
  privateKeyRef = 0;
  v73 = SecIdentityCopyPrivateKey(result[0], &privateKeyRef);
  if (v73)
  {
    v74 = qword_1ED641530;
    if (os_log_type_enabled(qword_1ED641530, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 67109120;
      DWORD1(buf) = v73;
      _os_log_error_impl(&dword_19D52D000, v74, OS_LOG_TYPE_ERROR, "Couldn't access attestation signing key: %d", &buf, 8u);
    }

    v149[0] = 0;
    v149[1] = 0;
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    v75 = buf;
    LOBYTE(buf) = 24;
    *(&buf + 1) = v75;
    LOBYTE(v167) = 1;
    WTF::CompletionHandler<void ()(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,std::optional<WebCore::ExceptionData>)>::operator()(&v128, v149, &buf);
    if (v167 == 1)
    {
      v76 = *(&buf + 1);
      if (*(&buf + 1))
      {
        if (atomic_fetch_add_explicit(*(&buf + 1), 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v76, v16);
        }
      }
    }

    v77 = v149[0];
    if (v149[0])
    {
      v149[0] = 0;
      LODWORD(v149[1]) = 0;
      WTF::fastFree(v77, v16);
    }

    goto LABEL_108;
  }

  v4 = privateKeyRef;
  v159 = 0;
  v5 = SecKeyCreateSignature(privateKeyRef, *MEMORY[0x1E697B128], v52, &v159);
  v3 = v159;
  if (v159)
  {
    v9 = qword_1ED641530;
    if (!os_log_type_enabled(qword_1ED641530, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_96;
    }

    goto LABEL_184;
  }

  certificateRef = 0;
  v89 = SecIdentityCopyCertificate(result[0], &certificateRef);
  if (v89)
  {
    v90 = qword_1ED641530;
    if (os_log_type_enabled(qword_1ED641530, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 67109120;
      DWORD1(buf) = v89;
      _os_log_error_impl(&dword_19D52D000, v90, OS_LOG_TYPE_ERROR, "Couldn't access attestation certificate: %d", &buf, 8u);
    }

    v149[0] = 0;
    v149[1] = 0;
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    v91 = buf;
    LOBYTE(buf) = 24;
    *(&buf + 1) = v91;
    LOBYTE(v167) = 1;
    WTF::CompletionHandler<void ()(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,std::optional<WebCore::ExceptionData>)>::operator()(&v128, v149, &buf);
    if (v167 == 1)
    {
      v92 = *(&buf + 1);
      if (*(&buf + 1))
      {
        if (atomic_fetch_add_explicit(*(&buf + 1), 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v92, v16);
        }
      }
    }

    v93 = v149[0];
    if (v149[0])
    {
      v149[0] = 0;
      LODWORD(v149[1]) = 0;
      WTF::fastFree(v93, v16);
    }

    goto LABEL_104;
  }

  v125 = certificateRef;
  v126 = v4;
  v168 = certificateRef;
  v127 = v2;
  v124 = v5;
  v94 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v168 count:1];
  BasicX509 = SecPolicyCreateBasicX509();
  trust = 0;
  SecTrustCreateWithCertificates(v94, BasicX509, &trust);
  v96 = SecTrustCopyCertificateChain(trust);
  v156[0] = 0;
  v156[1] = 0;
  v154 = 0;
  v155 = v156;
  v153 = 0;
  *v149 = 0u;
  v150 = 0u;
  v151 = 0u;
  v152 = 0u;
  v97 = [(__CFArray *)v96 countByEnumeratingWithState:v149 objects:&buf count:16];
  if (!v97)
  {
    goto LABEL_165;
  }

  v98 = *v150;
  do
  {
    v99 = 0;
    do
    {
      if (*v150 != v98)
      {
        objc_enumerationMutation(v96);
      }

      v100 = SecCertificateCopyData(*(v149[1] + v99));
      v101 = v100;
      if (v100)
      {
        v102 = [(__CFData *)v100 bytes];
        v103 = [(__CFData *)v101 length];
        v104 = v103;
        v144 = 0;
        LODWORD(v145) = 0;
        HIDWORD(v145) = v103;
        if (v103)
        {
          if (HIDWORD(v103))
          {
            goto LABEL_189;
          }

          v105 = WTF::fastMalloc(v103);
          LODWORD(v145) = v104;
          v144 = v105;
          do
          {
            v106 = *v102++;
            *v105 = v106;
            v105 = (v105 + 1);
            --v104;
          }

          while (v104);
        }
      }

      else
      {
        v144 = 0;
        v145 = 0;
      }

      cbor::CBORValue::CBORValue();
      if (HIDWORD(v154) == v154)
      {
        WTF::Vector<cbor::CBORValue,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v153, HIDWORD(v154) + 1, &error);
      }

      cbor::CBORValue::CBORValue();
      ++HIDWORD(v154);
      cbor::CBORValue::~CBORValue(&error);
      v108 = v144;
      if (v144)
      {
        v144 = 0;
        LODWORD(v145) = 0;
        WTF::fastFree(v108, v107);
        if (!v101)
        {
          goto LABEL_159;
        }
      }

      else if (!v101)
      {
        goto LABEL_159;
      }

      CFRelease(v101);
LABEL_159:
      ++v99;
    }

    while (v99 != v97);
    v109 = [(__CFArray *)v96 countByEnumeratingWithState:v149 objects:&buf count:16];
    v97 = v109;
  }

  while (v109);
LABEL_165:
  cbor::CBORValue::CBORValue();
  v4 = v126;
  v2 = v127;
  v5 = v124;
  cbor::CBORValue::CBORValue(&v144, "x5c");
  v142 = &v144;
  std::__tree<std::__value_type<cbor::CBORValue,cbor::CBORValue>,std::__map_value_compare<cbor::CBORValue,std::__value_type<cbor::CBORValue,cbor::CBORValue>,cbor::CBORValue::CTAPLess,true>,WTF::FastAllocator<std::__value_type<cbor::CBORValue,cbor::CBORValue>>>::__emplace_unique_key_args<cbor::CBORValue,std::piecewise_construct_t const&,std::tuple<cbor::CBORValue&&>,std::tuple<>>(&v155, &v144);
  cbor::CBORValue::operator=();
  cbor::CBORValue::~CBORValue(&v144);
  cbor::CBORValue::~CBORValue(&error);
  cbor::CBORValue::CBORValue(&error);
  cbor::CBORValue::CBORValue(&v144, "alg");
  v142 = &v144;
  std::__tree<std::__value_type<cbor::CBORValue,cbor::CBORValue>,std::__map_value_compare<cbor::CBORValue,std::__value_type<cbor::CBORValue,cbor::CBORValue>,cbor::CBORValue::CTAPLess,true>,WTF::FastAllocator<std::__value_type<cbor::CBORValue,cbor::CBORValue>>>::__emplace_unique_key_args<cbor::CBORValue,std::piecewise_construct_t const&,std::tuple<cbor::CBORValue&&>,std::tuple<>>(&v155, &v144);
  cbor::CBORValue::operator=();
  cbor::CBORValue::~CBORValue(&v144);
  cbor::CBORValue::~CBORValue(&error);
  if (v124)
  {
    v110 = [(__CFData *)v124 bytes];
    v111 = [(__CFData *)v124 length];
    v112 = v111;
    v142 = 0;
    LODWORD(v143) = 0;
    HIDWORD(v143) = v111;
    if (v111)
    {
      if (HIDWORD(v111))
      {
LABEL_189:
        __break(0xC471u);
        JUMPOUT(0x19DE17CB4);
      }

      v113 = WTF::fastMalloc(v111);
      LODWORD(v143) = v112;
      v142 = v113;
      do
      {
        v114 = *v110++;
        *v113 = v114;
        v113 = (v113 + 1);
        --v112;
      }

      while (v112);
    }
  }

  else
  {
    v142 = 0;
    v143 = 0;
  }

  cbor::CBORValue::CBORValue();
  cbor::CBORValue::CBORValue(&v144, "sig");
  result[2] = &v144;
  std::__tree<std::__value_type<cbor::CBORValue,cbor::CBORValue>,std::__map_value_compare<cbor::CBORValue,std::__value_type<cbor::CBORValue,cbor::CBORValue>,cbor::CBORValue::CTAPLess,true>,WTF::FastAllocator<std::__value_type<cbor::CBORValue,cbor::CBORValue>>>::__emplace_unique_key_args<cbor::CBORValue,std::piecewise_construct_t const&,std::tuple<cbor::CBORValue&&>,std::tuple<>>(&v155, &v144);
  cbor::CBORValue::operator=();
  cbor::CBORValue::~CBORValue(&v144);
  cbor::CBORValue::~CBORValue(&error);
  v116 = v142;
  if (v142)
  {
    v142 = 0;
    LODWORD(v143) = 0;
    WTF::fastFree(v116, v115);
  }

  WTF::Vector<cbor::CBORValue,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v153, v115);
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v153 = error;
  WebCore::buildAttestationObject();
  v118 = v153;
  v153 = 0;
  if (v118 && atomic_fetch_add_explicit(v118, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v118, v117);
  }

  LOBYTE(error) = 0;
  v148 = 0;
  WTF::CompletionHandler<void ()(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,std::optional<WebCore::ExceptionData>)>::operator()(&v128, &v144, &error);
  if (v148 == 1)
  {
    v120 = v147;
    if (v147)
    {
      if (atomic_fetch_add_explicit(v147, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v120, v119);
      }
    }
  }

  v121 = v144;
  if (v144)
  {
    v144 = 0;
    LODWORD(v145) = 0;
    WTF::fastFree(v121, v119);
  }

  std::__tree<std::__value_type<cbor::CBORValue,cbor::CBORValue>,std::__map_value_compare<cbor::CBORValue,std::__value_type<cbor::CBORValue,cbor::CBORValue>,cbor::CBORValue::CTAPLess,true>,WTF::FastAllocator<std::__value_type<cbor::CBORValue,cbor::CBORValue>>>::destroy(&v155, v156[0]);
  v82 = v125;
  if (v125)
  {
    goto LABEL_103;
  }

LABEL_104:
  if (v5)
  {
    CFRelease(v5);
  }

  if (v4)
  {
    CFRelease(v4);
  }

LABEL_108:
  if (v2)
  {
    CFRelease(v2);
  }

LABEL_110:
  if (v128)
  {
    (*(*v128 + 8))(v128);
  }

LABEL_112:
  v83 = v129;
  if (v129)
  {
    v129 = 0;
    v130 = 0;
    WTF::fastFree(v83, v16);
  }

  v84 = v132;
  if (v132)
  {
    v132 = 0;
    LODWORD(v133) = 0;
    WTF::fastFree(v84, v16);
  }

  v85 = v134;
  if (v134)
  {
    *&v134 = 0;
    DWORD2(v134) = 0;
    WTF::fastFree(v85, v16);
  }

  if (v8)
  {

    goto LABEL_120;
  }

LABEL_121:
  v86 = key;
  key = 0;
  if (v86)
  {
    CFRelease(v86);
  }

  if (v10)
  {
  }

  if (v139 == 1)
  {
    v87 = v136;
    if (v136)
    {
      v136 = 0;
      v137 = 0;
      WTF::fastFree(v87, v16);
    }
  }

  a1 = std::__tree<std::__value_type<cbor::CBORValue,cbor::CBORValue>,std::__map_value_compare<cbor::CBORValue,std::__value_type<cbor::CBORValue,cbor::CBORValue>,cbor::CBORValue::CTAPLess,true>,WTF::FastAllocator<std::__value_type<cbor::CBORValue,cbor::CBORValue>>>::destroy(&v140, v141[0]);
LABEL_127:
  if (*(v7 + 16) == 1)
  {
    v88 = *(*v7 + 8);

    return v88(v7);
  }

  else
  {
    --*(v7 + 16);
  }

  return a1;
}

void sub_19DE17CC8(_Unwind_Exception *a1, WTF::StringImpl *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, CFTypeRef a10, CFTypeRef cf, CFTypeRef a12, CFTypeRef a13, uint64_t a14, uint64_t a15, WTF *a16, uint64_t a17, WTF *a18, uint64_t a19, WTF *a20, uint64_t a21, CFTypeRef a22, WTF *a23, uint64_t a24, char a25, int a26, __int16 a27, uint64_t a28, uint64_t a29, WTF *a30, uint64_t a31, WTF::StringImpl *a32, int a33, uint64_t a34, uint64_t a35, WTF::StringImpl *a36, WTF::StringImpl *a37, char a38, uint64_t a39, PAL::CryptoDigest *a40, WTF::StringImpl *a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, WTF::StringImpl *a48, uint64_t a49, char a50, uint64_t a51)
{
  if (a38 == 1)
  {
    v55 = a37;
    a37 = 0;
    if (v55)
    {
      if (atomic_fetch_add_explicit(v55, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v55, a2);
      }
    }
  }

  v56 = a32;
  if (a32)
  {
    a32 = 0;
    a33 = 0;
    WTF::fastFree(v56, a2);
  }

  std::__tree<std::__value_type<cbor::CBORValue,cbor::CBORValue>,std::__map_value_compare<cbor::CBORValue,std::__value_type<cbor::CBORValue,cbor::CBORValue>,cbor::CBORValue::CTAPLess,true>,WTF::FastAllocator<std::__value_type<cbor::CBORValue,cbor::CBORValue>>>::destroy(&a50, a51);
  if (cf)
  {
    CFRelease(cf);
  }

  if (a10)
  {
    CFRelease(a10);
  }

  if (a12)
  {
    CFRelease(a12);
  }

  if (a13)
  {
    CFRelease(a13);
  }

  if (a15)
  {
    (*(*a15 + 8))(a15);
  }

  if (a16)
  {
    WTF::fastFree(a16, v57);
  }

  if (a18)
  {
    WTF::fastFree(a18, v57);
  }

  if (a20)
  {
    WTF::fastFree(a20, v57);
  }

  if (v53)
  {

    CFRelease(v53);
  }

  if (a22)
  {
    CFRelease(a22);
  }

  if (v52)
  {
  }

  if (a25 == 1 && a23)
  {
    WTF::fastFree(a23, v57);
  }

  std::__tree<std::__value_type<cbor::CBORValue,cbor::CBORValue>,std::__map_value_compare<cbor::CBORValue,std::__value_type<cbor::CBORValue,cbor::CBORValue>,cbor::CBORValue::CTAPLess,true>,WTF::FastAllocator<std::__value_type<cbor::CBORValue,cbor::CBORValue>>>::destroy(&a27, a28);
  if (v51[4] == 1)
  {
    (*(*v51 + 8))(v51);
  }

  else
  {
    --v51[4];
  }

  _Unwind_Resume(a1);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::LocalAuthenticator::continueMakeCredentialAfterUserVerification(__SecAccessControl *,WebKit::LocalConnection::UserVerification,LAContext *)::$_0,void,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,std::optional<WebCore::ExceptionData>>::~CallableWrapper(uint64_t a1, void *a2)
{
  *a1 = &unk_1F110B998;
  v3 = *(a1 + 24);
  *(a1 + 24) = 0;
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    WTF::fastFree(v3, a2);
  }

  v4 = *(a1 + 8);
  if (v4)
  {
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    WTF::fastFree(v4, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::LocalAuthenticator::continueMakeCredentialAfterUserVerification(__SecAccessControl *,WebKit::LocalConnection::UserVerification,LAContext *)::$_0,void,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,std::optional<WebCore::ExceptionData>>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F110B998;
  v3 = *(this + 3);
  *(this + 3) = 0;
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    WTF::fastFree(v3, a2);
  }

  v4 = *(this + 1);
  if (v4)
  {
    *(this + 1) = 0;
    *(this + 4) = 0;
    WTF::fastFree(v4, a2);
  }

  return WTF::fastFree(this, a2);
}

WTF *WTF::Detail::CallableWrapper<WebKit::LocalAuthenticator::continueMakeCredentialAfterUserVerification(__SecAccessControl *,WebKit::LocalConnection::UserVerification,LAContext *)::$_0,void,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,std::optional<WebCore::ExceptionData>>::call(WTF *result, WTF::StringImpl *a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4 == 1)
  {
    v3 = *(a3 + 8);
    *(a3 + 8) = 0;
  }

  v5 = *(result + 3);
  if (v5)
  {
    v6 = *(v5 + 8);
    if (v6)
    {
      v8[0] = 0;
      v10 = 0;
      result = WebKit::LocalAuthenticator::finishMakeCredential(v6, result + 8, a2, v8);
      if (v10 == 1)
      {
        result = v9;
        v9 = 0;
        if (result)
        {
          if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            result = WTF::StringImpl::destroy(result, a2);
          }
        }
      }
    }
  }

  if (v4)
  {
    v7 = v3 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    return WTF::StringImpl::destroy(v3, a2);
  }

  return result;
}

void sub_19DE18624(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11, char a12)
{
  if (a12 == 1 && a11 && atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a11, a2);
  }

  if (v13 && v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v12, a2);
  }

  _Unwind_Resume(exception_object);
}

unsigned int *WTF::Vector<WTF::Ref<WebCore::AuthenticatorAssertionResponse,WTF::RawPtrTraits<WebCore::AuthenticatorAssertionResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorAssertionResponse>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(unsigned int *result, unint64_t a2)
{
  if (result[2] > a2)
  {
    v3 = result;
    v4 = result[3];
    if (v4 > a2)
    {
      result = WTF::VectorDestructor<true,WTF::Ref<WebCore::AuthenticatorAssertionResponse,WTF::RawPtrTraits<WebCore::AuthenticatorAssertionResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorAssertionResponse>>>::destruct((*result + 8 * a2), (*result + 8 * v4));
      v3[3] = a2;
      LODWORD(v4) = a2;
    }

    v5 = *v3;
    if (a2)
    {
      if (v3[2])
      {
        v3[2] = a2;
        result = WTF::fastRealloc(v5, (8 * a2));
        *v3 = result;
        return result;
      }

      if (a2 >> 29)
      {
        __break(0xC471u);
        return result;
      }

      result = WTF::fastMalloc((8 * a2));
      v3[2] = a2;
      *v3 = result;
      if (result != v5)
      {
        result = memcpy(result, v5, 8 * v4);
      }
    }

    if (v5)
    {
      if (*v3 == v5)
      {
        *v3 = 0;
        v3[2] = 0;
      }

      return WTF::fastFree(v5, a2);
    }
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::LocalAuthenticator::getAssertion(void)::$_1,void,WebCore::AuthenticatorAssertionResponse *>::~CallableWrapper(void *a1, void *a2)
{
  v3 = a1[1];
  *a1 = &unk_1F110B9C0;
  a1[1] = 0;
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    WTF::fastFree(v3, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::LocalAuthenticator::getAssertion(void)::$_1,void,WebCore::AuthenticatorAssertionResponse *>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F110B9C0;
  *(this + 1) = 0;
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    WTF::fastFree(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

void WTF::Detail::CallableWrapper<WebKit::LocalAuthenticator::getAssertion(void)::$_1,void,WebCore::AuthenticatorAssertionResponse *>::call(WTF::RunLoop *a1, uint64_t a2)
{
  v4 = WTF::RunLoop::mainSingleton(a1);
  if ((WTF::RunLoop::isCurrent(v4) & 1) == 0)
  {
    goto LABEL_27;
  }

  v5 = *(a1 + 1);
  if (!v5)
  {
    return;
  }

  v6 = *(v5 + 8);
  if (!v6)
  {
    return;
  }

  v7 = *(v6 + 16);
  *(v6 + 16) = v7 + 1;
  v8 = *(v6 + 860);
  if (v8)
  {
    v9 = 0;
    while (1)
    {
      v10 = *(*(v6 + 848) + 8 * v9);
      if (v10 == a2)
      {
        break;
      }

      if (v8 == ++v9)
      {
        goto LABEL_21;
      }
    }

    if (v9 < v8)
    {
      ++*(v10 + 8);
      *(v6 + 832) = 4;
      v11 = *(v10 + 184);
      if (v11)
      {
        CFRetain(*(v10 + 184));
      }

      v12 = *(v10 + 192);
      if (v12)
      {
        v13 = v12;
      }

      WTF::WeakPtrFactory<WebKit::AuthenticatorObserver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded((v6 + 8), v6);
      v14 = *(v6 + 8);
      atomic_fetch_add(v14, 1u);
      v15 = *(v6 + 840);
      v16 = WTF::fastMalloc(0x18);
      *v16 = &unk_1F110B9E8;
      v16[1] = v14;
      v16[2] = v10;
      v19 = v16;
      (*(*v15 + 32))(v15, v11, v12, &v19);
      v17 = v19;
      v19 = 0;
      if (v17)
      {
        (*(*v17 + 8))(v17);
      }

      if (v12)
      {
      }

      if (v11)
      {
        CFRelease(v11);
      }

      v7 = *(v6 + 16) - 1;
      goto LABEL_21;
    }

LABEL_27:
    __break(0xC471u);
    JUMPOUT(0x19DE18A58);
  }

LABEL_21:
  if (v7)
  {
    *(v6 + 16) = v7;
  }

  else
  {
    v18 = *(*v6 + 8);

    v18(v6);
  }
}

void sub_19DE18A64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (v11)
  {
    CFRelease(v11);
  }

  if (v12)
  {
    if (v12[2] == 1)
    {
      (*(*v12 + 8))(v12);
    }

    else
    {
      --v12[2];
    }
  }

  if (v10[4] == 1)
  {
    (*(*v10 + 8))(v10);
  }

  else
  {
    --v10[4];
  }

  _Unwind_Resume(exception_object);
}

void *WTF::Detail::CallableWrapper<WebKit::LocalAuthenticator::continueGetAssertionAfterResponseSelected(WTF::Ref<WebCore::AuthenticatorAssertionResponse,WTF::RawPtrTraits<WebCore::AuthenticatorAssertionResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorAssertionResponse>> &&)::$_0,void,WebKit::LocalConnection::UserVerification>::~CallableWrapper(void *a1, void *a2)
{
  *a1 = &unk_1F110B9E8;
  v3 = a1[2];
  a1[2] = 0;
  if (v3)
  {
    if (v3[2] == 1)
    {
      (*(*v3 + 8))(v3);
    }

    else
    {
      --v3[2];
    }
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

uint64_t WTF::Detail::CallableWrapper<WebKit::LocalAuthenticator::continueGetAssertionAfterResponseSelected(WTF::Ref<WebCore::AuthenticatorAssertionResponse,WTF::RawPtrTraits<WebCore::AuthenticatorAssertionResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorAssertionResponse>> &&)::$_0,void,WebKit::LocalConnection::UserVerification>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F110B9E8;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    if (v3[2] == 1)
    {
      (*(*v3 + 8))(v3);
    }

    else
    {
      --v3[2];
    }
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

void WTF::Detail::CallableWrapper<WebKit::LocalAuthenticator::continueGetAssertionAfterResponseSelected(WTF::Ref<WebCore::AuthenticatorAssertionResponse,WTF::RawPtrTraits<WebCore::AuthenticatorAssertionResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorAssertionResponse>> &&)::$_0,void,WebKit::LocalConnection::UserVerification>::call(uint64_t a1, int a2)
{
  v96 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 8);
  if (!v2)
  {
    return;
  }

  v3 = *(v2 + 8);
  if (!v3)
  {
    return;
  }

  ++*(v3 + 16);
  v5 = *(*(a1 + 16) + 192);
  *(v3 + 832) = 2;
  v6 = WebKit::LocalAuthenticator::validateUserVerification(v3, a2);
  if (v6)
  {
    if (*(v3 + 336) != 1)
    {
      mpark::throw_bad_variant_access(v6);
    }

    LOBYTE(v76) = 0;
    v77 = -1;
    v7 = *(v3 + 56);
    if (v7 != 255)
    {
      v8 = *(v3 + 48);
      if (v8)
      {
        if (*(v3 + 56))
        {
          v9 = 2;
        }

        else
        {
          v9 = 1;
        }

        *v8 += v9;
      }

      v76 = v8;
      v77 = v7;
    }

    v10 = *(v3 + 72);
    v78 = *(v3 + 64);
    if (v10)
    {
      atomic_fetch_add_explicit(v10, 2u, memory_order_relaxed);
    }

    v79 = v10;
    WTF::Vector<WebCore::PublicKeyCredentialDescriptor,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v80, v3 + 80);
    v80[16] = *(v3 + 96);
    std::__optional_copy_base<WebCore::AuthenticationExtensionsClientInputs,false>::__optional_copy_base[abi:sn200100](v81, v3 + 104);
    v81[76] = *(v3 + 256);
    v92 = 0;
    v93 = 0;
    WebCore::buildAuthData();
    v12 = v92;
    if (v92)
    {
      v92 = 0;
      LODWORD(v93) = 0;
      WTF::fastFree(v12, v11);
    }

    v13 = JSC::ArrayBuffer::span(*(*(a1 + 16) + 16));
    v67 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:v13 length:v14];
    shouldUseAlternateKeychainAttribute = WebKit::shouldUseAlternateKeychainAttribute(v67);
    v16 = *MEMORY[0x1E697AFF8];
    v17 = *MEMORY[0x1E697B020];
    v18 = *MEMORY[0x1E697AEB0];
    v91[0] = *MEMORY[0x1E697AFF8];
    v91[1] = v18;
    v19 = *MEMORY[0x1E697AEB8];
    v66 = v17;
    v92 = v17;
    v93 = v19;
    v20 = *MEMORY[0x1E697B390];
    v91[2] = *MEMORY[0x1E697B328];
    v91[3] = v20;
    v94 = MEMORY[0x1E695E118];
    v95 = MEMORY[0x1E695E118];
    v21 = [objc_msgSend(MEMORY[0x1E695DF20] dictionaryWithObjects:&v92 forKeys:v91 count:{4), "mutableCopy"}];
    v22 = *MEMORY[0x1E697AC38];
    v23 = *MEMORY[0x1E697AC40];
    if (shouldUseAlternateKeychainAttribute)
    {
      v24 = *MEMORY[0x1E697AC38];
    }

    else
    {
      v24 = *MEMORY[0x1E697AC40];
    }

    query = v21;
    [(__CFDictionary *)v21 setObject:v67 forKeyedSubscript:v24];
    if (v5)
    {
      [(__CFDictionary *)query setObject:v5 forKeyedSubscript:*MEMORY[0x1E697B378]];
    }

    result = 0;
    v25 = SecItemCopyMatching(query, &result);
    if (v25 == -25300)
    {
      v26 = shouldUseAlternateKeychainAttribute;
    }

    else
    {
      v26 = 0;
    }

    if (v26 == 1)
    {
      [(__CFDictionary *)query setObject:0 forKeyedSubscript:v22];
      [(__CFDictionary *)query setObject:v67 forKeyedSubscript:v23];
      v25 = SecItemCopyMatching(query, &result);
    }

    if (v25)
    {
      LOBYTE(v87) = 24;
      *&buf = "Couldn't get the private key reference: ";
      *(&buf + 1) = 41;
      LODWORD(error[0]) = v25;
      WTF::tryMakeString<WTF::ASCIILiteral,int>(&buf, error, v88);
      v27 = v67;
      if (v88[0])
      {
        WebKit::LocalAuthenticator::receiveException(v3, &v87, 5);
        v29 = v88[0];
        v88[0] = 0;
        if (v29 && atomic_fetch_add_explicit(v29, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v29, v28);
        }

        v30 = qword_1ED641530;
        if (!os_log_type_enabled(qword_1ED641530, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_32;
        }

        LODWORD(buf) = 67109120;
        DWORD1(buf) = v25;
        v46 = "Couldn't get the private key reference: %d";
        v47 = v30;
LABEL_93:
        _os_log_error_impl(&dword_19D52D000, v47, OS_LOG_TYPE_ERROR, v46, &buf, 8u);
LABEL_32:
        v32 = 0;
        goto LABEL_33;
      }
    }

    else
    {
      if (result)
      {
        cf = result;
        v35 = [objc_alloc(MEMORY[0x1E695DF88]) initWithBytes:v73 length:v75];
        [v35 appendBytes:*(v3 + 32) length:*(v3 + 44)];
        error[0] = 0;
        Signature = SecKeyCreateSignature(result, *MEMORY[0x1E697B128], v35, error);
        v36 = error[0];
        if (!error[0])
        {
          if (v35)
          {
          }

          CFRelease(cf);
          if (query)
          {
          }

          v49 = WebKit::shouldUseAlternateKeychainAttribute(v48);
          v33 = objc_alloc_init(MEMORY[0x1E695DF90]);
          v87 = v16;
          v88[0] = v18;
          *&buf = v66;
          *(&buf + 1) = v19;
          v88[1] = v20;
          v90 = MEMORY[0x1E695E118];
          -[__CFDictionary setDictionary:](v33, "setDictionary:", [MEMORY[0x1E695DF20] dictionaryWithObjects:&buf forKeys:&v87 count:3]);
          if (v49)
          {
            v50 = v22;
          }

          else
          {
            v50 = v23;
          }

          v27 = v67;
          [(__CFDictionary *)v33 setObject:v67 forKey:v50];
          v85 = v22;
          v86 = v67;
          v51 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v86 forKeys:&v85 count:1];
          v52 = SecItemUpdate(v33, v51);
          if (v52 == -25300)
          {
            v53 = v49;
          }

          else
          {
            v53 = 0;
          }

          if (v53 == 1)
          {
            [(__CFDictionary *)v33 removeObjectForKey:v22];
            [(__CFDictionary *)v33 setObject:v67 forKey:v23];
            v52 = SecItemUpdate(v33, v51);
          }

          if (v52)
          {
            v54 = qword_1ED641530;
            if (os_log_type_enabled(qword_1ED641530, OS_LOG_TYPE_ERROR))
            {
              LODWORD(result) = 67109120;
              HIDWORD(result) = v52;
              _os_log_error_impl(&dword_19D52D000, v54, OS_LOG_TYPE_ERROR, "Couldn't update the Keychain item: %d", &result, 8u);
            }
          }

          WebCore::AuthenticatorAssertionResponse::setAuthenticatorData();
          v55 = *(a1 + 16);
          if (Signature)
          {
            [(__CFData *)Signature bytes];
            [(__CFData *)Signature length];
          }

          JSC::ArrayBuffer::create();
          v56 = result;
          result = 0;
          v57 = *(v55 + 128);
          *(v55 + 128) = v56;
          if (v57)
          {
            WTF::DeferrableRefCounted<JSC::ArrayBuffer>::deref(v57);
            v58 = result;
            result = 0;
            if (v58)
            {
              WTF::DeferrableRefCounted<JSC::ArrayBuffer>::deref(v58);
            }
          }

          v59 = *(a1 + 16);
          ++*(v59 + 2);
          v71 = v59;
          v72 = 1;
          v32 = Signature;
          WebKit::LocalAuthenticator::processClientExtensions(&result, v3, &v71);
          mpark::variant<WTF::Ref<WebCore::AuthenticatorAttestationResponse,WTF::RawPtrTraits<WebCore::AuthenticatorAttestationResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorAttestationResponse>>,WTF::Ref<WebCore::AuthenticatorAssertionResponse,WTF::RawPtrTraits<WebCore::AuthenticatorAssertionResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorAssertionResponse>>>::~variant(&v71);
          if (v84 == 1)
          {
            WebKit::LocalAuthenticator::receiveException(v3, &result, 5);
            if (v84)
            {
              v60 = v83;
              if (v83)
              {
                if (atomic_fetch_add_explicit(v83, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v60, v31);
                }
              }
            }
          }

          else
          {
            v61 = *(a1 + 16);
            *(a1 + 16) = 0;
            error[0] = v61;
            v70 = 0;
            WebKit::Authenticator::receiveRespond(v3, error);
            mpark::variant<WTF::Ref<WebCore::AuthenticatorResponse,WTF::RawPtrTraits<WebCore::AuthenticatorResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorResponse>>,WebCore::ExceptionData>::~variant(error);
          }

          goto LABEL_34;
        }

        v37 = qword_1ED641530;
        v38 = os_log_type_enabled(qword_1ED641530, OS_LOG_TYPE_ERROR);
        v39 = v36;
        v27 = v67;
        v32 = Signature;
        if (v38)
        {
          v62 = [(__CFError *)v36 localizedDescription];
          LODWORD(buf) = 138412290;
          *(&buf + 4) = v62;
          _os_log_error_impl(&dword_19D52D000, v37, OS_LOG_TYPE_ERROR, "Couldn't generate signature: %@", &buf, 0xCu);
          v39 = error[0];
        }

        LOBYTE(v87) = 24;
        MEMORY[0x19EB02040](&v71, [(__CFError *)v39 localizedDescription]);
        *&buf = "Couldn't generate the signature: ";
        *(&buf + 1) = 34;
        WTF::tryMakeString<WTF::ASCIILiteral,WTF::String>(&buf, &v71, v88);
        if (!v88[0])
        {
          __break(0xC471u);
          JUMPOUT(0x19DE19620);
        }

        WebKit::LocalAuthenticator::receiveException(v3, &v87, 5);
        v41 = v88[0];
        v88[0] = 0;
        if (v41 && atomic_fetch_add_explicit(v41, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v41, v40);
        }

        v42 = v71;
        v71 = 0;
        if (v42 && atomic_fetch_add_explicit(v42, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v42, v40);
        }

        CFRelease(v36);
        if (v35)
        {
        }

        CFRelease(cf);
LABEL_33:
        v33 = query;
LABEL_34:
        if (v33)
        {
        }

        if (v27)
        {
        }

        if (v32)
        {
          CFRelease(v32);
        }

        v34 = v73;
        if (v73)
        {
          v73 = 0;
          v74 = 0;
          WTF::fastFree(v34, v31);
        }

        WebCore::PublicKeyCredentialRequestOptions::~PublicKeyCredentialRequestOptions(&v76);
        goto LABEL_43;
      }

      LOBYTE(v87) = 24;
      *&buf = "privateKeyRef is null. status:";
      *(&buf + 1) = 31;
      LODWORD(error[0]) = 0;
      WTF::tryMakeString<WTF::ASCIILiteral,int>(&buf, error, v88);
      v27 = v67;
      if (v88[0])
      {
        WebKit::LocalAuthenticator::receiveException(v3, &v87, 5);
        v44 = v88[0];
        v88[0] = 0;
        if (v44 && atomic_fetch_add_explicit(v44, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v44, v43);
        }

        v45 = qword_1ED641530;
        if (!os_log_type_enabled(qword_1ED641530, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_32;
        }

        *&buf = 67109120;
        v46 = "privateKeyRef is null. status: %d";
        v47 = v45;
        goto LABEL_93;
      }
    }

    __break(0xC471u);
    JUMPOUT(0x19DE19618);
  }

LABEL_43:
  if (*(v3 + 16) == 1)
  {
    v63 = *(*v3 + 8);

    v63(v3);
  }

  else
  {
    --*(v3 + 16);
  }
}

void sub_19DE1962C(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, CFTypeRef a10, CFTypeRef cf, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, WTF::StringImpl *a18, uint64_t a19, WTF *a20, int a21, int a22, char a23, uint64_t a24, uint64_t a25, WTF::StringImpl *a26)
{
  if (*(v28 - 240))
  {
    v30 = *(v28 - 248);
    if (v30)
    {
      if (atomic_fetch_add_explicit(v30, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v30, a2);
      }
    }
  }

  if (v27)
  {
  }

  if (a13)
  {
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (a20)
  {
    WTF::fastFree(a20, a2);
  }

  WebCore::PublicKeyCredentialRequestOptions::~PublicKeyCredentialRequestOptions(&a23);
  if (v26[4] == 1)
  {
    (*(*v26 + 8))(v26);
  }

  else
  {
    --v26[4];
  }

  _Unwind_Resume(a1);
}

id *WTF::RefCounted<WebKit::NfcConnection>::deref(id *result)
{
  if (*result == 1)
  {
    WebKit::NfcConnection::~NfcConnection(result - 1);

    return WTF::fastFree(v2, v3);
  }

  else
  {
    --*result;
  }

  return result;
}

id *WTF::Detail::CallableWrapper<WTF::RunLoop::Timer::Timer<WebKit::NfcConnection>(WTF::Ref<WTF::RunLoop,WTF::RawPtrTraits<WTF::RunLoop>,WTF::DefaultRefDerefTraits<WTF::RunLoop>> &&,WTF::ASCIILiteral,WebKit::NfcConnection *,void (WTF::ASCIILiteral::*)(void))::{lambda(void)#1},void>::call(void *a1)
{
  v1 = a1[1];
  if (v1)
  {
    ++*(v1 + 8);
  }

  v2 = a1[2];
  v3 = a1[3];
  v4 = (v1 + (v3 >> 1));
  if (v3)
  {
    v2 = *(*v4 + v2);
  }

  result = v2(v4);
  if (v1)
  {

    return WTF::RefCounted<WebKit::NfcConnection>::deref((v1 + 8));
  }

  return result;
}

void sub_19DE19930(_Unwind_Exception *exception_object)
{
  v2 = v1;
  if (v2)
  {
    WTF::RefCounted<WebKit::NfcConnection>::deref((v2 + 8));
  }

  _Unwind_Resume(exception_object);
}

uint64_t WTF::Detail::CallableWrapper<WTF::RunLoop::Timer::Timer<WebKit::NfcService>(WTF::Ref<WTF::RunLoop,WTF::RawPtrTraits<WTF::RunLoop>,WTF::DefaultRefDerefTraits<WTF::RunLoop>> &&,WTF::ASCIILiteral,WebKit::NfcService *,void (WTF::ASCIILiteral::*)(void))::{lambda(void)#1},void>::call(void *a1)
{
  v1 = a1[1];
  if (v1)
  {
    ++v1[6];
  }

  v2 = a1[2];
  v3 = a1[3];
  v4 = (v1 + (v3 >> 1));
  if (v3)
  {
    v2 = *(*v4 + v2);
  }

  result = v2(v4);
  if (v1)
  {
    if (v1[6] == 1)
    {
      v6 = *(*v1 + 24);

      return v6(v1);
    }

    else
    {
      --v1[6];
    }
  }

  return result;
}

void sub_19DE19A1C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    if (v1[6] == 1)
    {
      (*(*v1 + 24))(v1);
    }

    else
    {
      --v1[6];
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_19DE1A960(_Unwind_Exception *exception_object)
{
  if (v2)
  {
  }

  if (v1[6] == 1)
  {
    (*(*v1 + 24))(v1);
  }

  else
  {
    --v1[6];
  }

  _Unwind_Resume(exception_object);
}

uint64_t WebKit::OriginQuotaManager::operator new(WebKit::OriginQuotaManager *this, void *a2)
{
  if (WebKit::OriginQuotaManager::s_heapRef)
  {
    return bmalloc::api::tzoneAllocateNonCompact(WebKit::OriginQuotaManager::s_heapRef, a2);
  }

  else
  {
    return WebKit::OriginQuotaManager::operatorNewSlow(0x98);
  }
}

__n128 WebKit::OriginQuotaManager::OriginQuotaManager(uint64_t a1, __int128 *a2, uint64_t *a3)
{
  *a1 = 3;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0;
  v3 = *a2;
  *(a1 + 88) = *a2;
  *(a1 + 104) = v3;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  v4 = *a3;
  *a3 = 0;
  *(a1 + 128) = v4;
  result = a2[1];
  *(a2 + 2) = 0;
  *(a2 + 3) = 0;
  *(a1 + 136) = result;
  return result;
}

unint64_t WebKit::OriginQuotaManager::usage(WebKit::OriginQuotaManager *this)
{
  v2 = *(this + 10);
  if (v2)
  {
    return *(this + 11) - v2;
  }

  if (*(this + 120) == 1)
  {
    result = *(this + 14);
  }

  else
  {
    result = (*(**(this + 16) + 16))(*(this + 16));
    *(this + 14) = result;
    *(this + 120) = 1;
  }

  if (*(this + 11) < result)
  {
    return *(this + 11);
  }

  return result;
}

uint64_t WebKit::OriginQuotaManager::requestSpace(uint64_t this, uint64_t a2, uint64_t *a3)
{
  v4 = this;
  v5 = *a3;
  *a3 = 0;
  v7 = *(this + 8);
  v6 = *(this + 16);
  if (v7)
  {
    if (v6 + 1 != v7)
    {
      goto LABEL_29;
    }

    LODWORD(v8) = *(this + 32);
    goto LABEL_9;
  }

  v8 = *(this + 32);
  if (!v6)
  {
    if (v8)
    {
      v6 = 0;
      goto LABEL_29;
    }

LABEL_9:
    v9 = v8;
    v10 = (v8 >> 2) + v8;
    if (v10 >= 0xAAAAAAA)
    {
LABEL_37:
      __break(0xC471u);
      return this;
    }

    v11 = *(this + 24);
    if (v10 <= 0xF)
    {
      v10 = 15;
    }

    v12 = 24 * v10 + 24;
    this = WTF::fastMalloc((24 * v10 + 24));
    *(v4 + 32) = v12 / 0x18;
    *(v4 + 24) = this;
    v13 = *(v4 + 8);
    v14 = *(v4 + 16);
    v15 = v14 - v13;
    if (v14 >= v13)
    {
      if (v9 < v13)
      {
        goto LABEL_36;
      }

      if (v15 == -1)
      {
        v15 = v9 - v13;
      }

      else if (v9 - v13 < v15)
      {
        goto LABEL_36;
      }

      if (v13 > v12 / 0x18)
      {
LABEL_36:
        __break(1u);
        goto LABEL_37;
      }

      this = WTF::VectorMover<false,WebKit::OriginQuotaManager::Request>::move(v11 + 24 * v13, v11 + 3 * v13 + 3 * v15, (this + 24 * v13));
      if (!v11)
      {
        goto LABEL_28;
      }
    }

    else
    {
      if (v14 > v9)
      {
        goto LABEL_36;
      }

      this = WTF::VectorMover<false,WebKit::OriginQuotaManager::Request>::move(v11, v11 + 3 * v14, this);
      v16 = *(v4 + 8);
      if (v9 < v16)
      {
        goto LABEL_36;
      }

      v17 = *(v4 + 32);
      if (v17 < v9 - v16)
      {
        goto LABEL_36;
      }

      v18 = v17 - (v9 - v16);
      this = WTF::VectorMover<false,WebKit::OriginQuotaManager::Request>::move(v11 + 24 * v16, v11 + 3 * v9, (*(v4 + 24) + 24 * v18));
      *(v4 + 8) = v18;
      if (!v11)
      {
        goto LABEL_28;
      }
    }

    if (*(v4 + 24) == v11)
    {
      *(v4 + 24) = 0;
      *(v4 + 32) = 0;
    }

    this = WTF::fastFree(v11, v19);
LABEL_28:
    v6 = *(v4 + 16);
    goto LABEL_29;
  }

  if (v6 == v8 - 1)
  {
    goto LABEL_9;
  }

LABEL_29:
  if (v6 >= *(v4 + 32))
  {
    goto LABEL_36;
  }

  v20 = (*(v4 + 24) + 24 * v6);
  *v20 = a2;
  v20[1] = v5;
  v20[2] = 0;
  v21 = *(v4 + 16);
  if (v21 == *(v4 + 32) - 1)
  {
    v22 = 0;
  }

  else
  {
    v22 = v21 + 1;
  }

  *(v4 + 16) = v22;

  return WebKit::OriginQuotaManager::handleRequests(v4);
}

uint64_t WebKit::OriginQuotaManager::handleRequests(uint64_t this)
{
  if (*(this + 64))
  {
    return this;
  }

  v1 = this;
  v2 = *(this + 72);
  *(this + 72) = 1;
  v3 = *(this + 8);
  if (v3 == *(this + 16))
  {
LABEL_30:
    *(v1 + 72) = v2;
    return this;
  }

  LOBYTE(v4) = 0;
  while (1)
  {
    v5 = *(v1 + 32);
    if (v3 >= v5)
    {
      break;
    }

    v6 = (*(v1 + 24) + 24 * v3);
    v8 = *v6;
    v7 = v6[1];
    v9 = v6[2];
    v6[1] = 0;
    if (v3 == v5 - 1)
    {
      v10 = 0;
    }

    else
    {
      v10 = v3 + 1;
    }

    *(v1 + 8) = v10;
    *(v1 + 40) = v8;
    if (v4)
    {
      v11 = *(v1 + 48);
      *(v1 + 48) = v7;
      if (v11)
      {
        (*(*v11 + 8))(v11);
        v12 = *(v1 + 64);
        *(v1 + 56) = v9;
        if ((v12 & 1) == 0)
        {
          break;
        }
      }

      else
      {
        *(v1 + 56) = v9;
      }
    }

    else
    {
      *(v1 + 48) = v7;
      *(v1 + 56) = v9;
      *(v1 + 64) = 1;
    }

    if (WebKit::OriginQuotaManager::grantWithCurrentQuota(v1, *(v1 + 40)))
    {
      if ((*(v1 + 64) & 1) == 0)
      {
        break;
      }

      v13 = *(v1 + 48);
      *(v1 + 48) = 0;
      (*(*v13 + 16))(v13, 1);
LABEL_25:
      this = (*(*v13 + 8))(v13);
      v4 = *(v1 + 64);
      if (v4 == 1)
      {
        this = *(v1 + 48);
        *(v1 + 48) = 0;
        if (this)
        {
          this = (*(*this + 8))(this);
        }

        LOBYTE(v4) = 0;
        *(v1 + 64) = 0;
      }

      goto LABEL_29;
    }

    if (!*(v1 + 136))
    {
      if ((*(v1 + 64) & 1) == 0)
      {
        break;
      }

      v13 = *(v1 + 48);
      *(v1 + 48) = 0;
      (*(*v13 + 16))(v13, 0);
      goto LABEL_25;
    }

    IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
    if ((*(v1 + 64) & 1) == 0)
    {
      break;
    }

    *(v1 + 56) = IdentifierInternal;
    if (!IdentifierInternal)
    {
      goto LABEL_33;
    }

    if ((*(v1 + 120) & 1) == 0)
    {
      break;
    }

    this = (*(**(v1 + 136) + 16))(*(v1 + 136), IdentifierInternal, *(v1 + 88), *(v1 + 112), *(v1 + 40));
    LOBYTE(v4) = *(v1 + 64);
    if (v4)
    {
      goto LABEL_30;
    }

LABEL_29:
    v3 = *(v1 + 8);
    if (v3 == *(v1 + 16))
    {
      goto LABEL_30;
    }
  }

  __break(1u);
LABEL_33:
  this = 158;
  __break(0xC471u);
  return this;
}

uint64_t WebKit::OriginQuotaManager::grantWithCurrentQuota(WebKit::OriginQuotaManager *this, unint64_t a2)
{
  v4 = *(this + 10);
  v5 = v4 >= a2;
  v6 = v4 - a2;
  if (!v5)
  {
    v7 = *(this + 120);
    v8 = (*(**(this + 16) + 16))(*(this + 16));
    *(this + 14) = v8;
    *(this + 120) = 1;
    v9 = *(this + 11);
    if ((v7 & 1) == 0)
    {
      if (v9 <= v9 / 0xA * (v8 / (v9 / 0xA)) + v9 / 0xA)
      {
        v9 = v9 / 0xA * (v8 / (v9 / 0xA)) + v9 / 0xA;
      }

      *(this + 11) = v9;
    }

    v5 = v9 >= v8;
    v10 = v9 - v8;
    if (!v5)
    {
      v10 = 0;
    }

    *(this + 10) = v10;
    v5 = v10 >= a2;
    v6 = v10 - a2;
    if (!v5)
    {
      return 0;
    }
  }

  *(this + 10) = v6;
  v12 = *(this + 18);
  if (v12)
  {
    (*(*v12 + 16))(v12, a2);
  }

  return 1;
}

uint64_t WebKit::OriginQuotaManager::didIncreaseQuota(uint64_t this, uint64_t a2, uint64_t a3, char a4)
{
  if (*(this + 64) == 1)
  {
    v4 = this;
    v5 = *(this + 56);
    if (v5 && v5 == a2)
    {
      if (a4)
      {
        *(this + 80) = 0;
        *(this + 88) = a3;
      }

      this = WebKit::OriginQuotaManager::grantWithCurrentQuota(this, *(this + 40));
      if (*(v4 + 64))
      {
        v7 = *(v4 + 48);
        *(v4 + 48) = 0;
        (*(*v7 + 16))(v7, this);
        this = (*(*v7 + 8))(v7);
        if (*(v4 + 64) == 1)
        {
          this = *(v4 + 48);
          *(v4 + 48) = 0;
          if (this)
          {
            this = (*(*this + 8))(this);
          }

          *(v4 + 64) = 0;
        }

        if ((*(v4 + 72) & 1) == 0)
        {

          return WebKit::OriginQuotaManager::handleRequests(v4);
        }
      }

      else
      {
        __break(1u);
      }
    }
  }

  return this;
}

uint64_t WebKit::OriginQuotaManager::updateParametersForTesting(uint64_t a1, uint64_t a2)
{
  *(a1 + 88) = *a2;
  v4 = *(a2 + 16);
  *(a2 + 16) = 0;
  v5 = *(a1 + 136);
  *(a1 + 136) = v4;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  v6 = *(a2 + 24);
  *(a2 + 24) = 0;
  result = *(a1 + 144);
  *(a1 + 144) = v6;
  if (result)
  {
    result = (*(*result + 8))(result);
  }

  *(a1 + 104) = *(a1 + 88);
  *(a1 + 80) = 0;
  if (*(a1 + 120) == 1)
  {
    *(a1 + 120) = 0;
  }

  return result;
}

unint64_t WebKit::OriginQuotaManager::reportedQuota(WebKit::OriginQuotaManager *this)
{
  v2 = (this + 96);
  if (*(this + 12))
  {
    v3 = WebKit::OriginQuotaManager::usage(this);
    v4 = *(this + 11);
    v5 = *(this + 12);
    v6 = this + 88;
    for (i = v5; v3 + v3 > i && v5 < v4; i = v5)
    {
      v5 = (i + i);
      *v2 = v5;
    }

    if (v5 >= v4)
    {
      v8 = v6;
    }

    else
    {
      v8 = v2;
    }
  }

  else
  {
    v8 = (this + 88);
  }

  return *v8;
}

uint64_t WebKit::OriginStorageManager::StorageBucket::StorageBucket(uint64_t result, atomic_uint *a2, atomic_uint **a3, atomic_uint **a4, atomic_uint **a5, atomic_uint **a6, char a7)
{
  if (a2)
  {
    atomic_fetch_add_explicit(a2, 2u, memory_order_relaxed);
  }

  *result = a2;
  v7 = *a3;
  if (*a3)
  {
    atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed);
  }

  *(result + 8) = v7;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = 0;
  v8 = *a4;
  if (*a4)
  {
    atomic_fetch_add_explicit(v8, 2u, memory_order_relaxed);
  }

  *(result + 40) = v8;
  *(result + 48) = 0;
  *(result + 56) = 0;
  *(result + 64) = 0;
  v9 = *a5;
  if (*a5)
  {
    atomic_fetch_add_explicit(v9, 2u, memory_order_relaxed);
  }

  *(result + 80) = 0;
  *(result + 88) = 0;
  *(result + 72) = v9;
  v10 = *a6;
  if (*a6)
  {
    atomic_fetch_add_explicit(v10, 2u, memory_order_relaxed);
  }

  *(result + 96) = v10;
  *(result + 104) = 0;
  *(result + 112) = a7;
  *(result + 120) = 0;
  *(result + 128) = 0;
  return result;
}

_DWORD *WebKit::OriginStorageManager::StorageBucket::connectionClosed(void *a1, uint64_t a2)
{
  v4 = a1[3];
  if (v4)
  {
    v10 = (v4 + 8);
    ++*(v4 + 8);
    WebKit::FileSystemStorageManager::connectionClosed(v4, a2);
    WTF::RefCounted<WebKit::FileSystemStorageManager>::deref(v10);
  }

  v5 = a1[4];
  if (v5)
  {
    WebKit::LocalStorageManager::connectionClosed(v5, a2);
  }

  v6 = a1[7];
  if (v6)
  {
    WebKit::SessionStorageManager::connectionClosed(*(v6 + 8), a2);
  }

  result = a1[11];
  if (result)
  {
    v8 = result + 2;
    ++result[2];
    WebKit::CacheStorageManager::connectionClosed(result, a2);

    return WTF::RefCounted<WebKit::CacheStorageManager>::deref(v8, v9);
  }

  return result;
}

uint64_t WebKit::SessionStorageManager::connectionClosed(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v3 = *(result - 4);
    v4 = (result + 16 * v3);
    if (*(result - 12))
    {
      if (v3)
      {
        v5 = 16 * v3;
        v6 = result;
        while ((*v6 + 1) <= 1)
        {
          v6 += 2;
          v5 -= 16;
          if (!v5)
          {
            v6 = v4;
            goto LABEL_13;
          }
        }
      }

      else
      {
        v6 = result;
      }

      goto LABEL_13;
    }
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  v6 = v4;
  v4 = (result + 16 * v3);
  if (!result)
  {
    v7 = 0;
    goto LABEL_14;
  }

LABEL_13:
  v7 = (result + 16 * *(result - 4));
LABEL_14:
  while (v6 != v7)
  {
    v8 = v6[1];
    v9 = v8 + 104;
    ++*(v8 + 104);
    WebKit::StorageAreaBase::removeListener(v8, a2);
    result = WTF::RefCounted<WebKit::MemoryStorageArea>::deref(v9, v10);
    do
    {
      v6 += 2;
    }

    while (v6 != v4 && (*v6 + 1) <= 1);
  }

  return result;
}

uint64_t WebKit::OriginStorageManager::StorageBucket::toStorageType(uint64_t a1, int a2)
{
  if (a2 < 0x4000)
  {
    if (a2 == 16)
    {
      v2 = 1;
      v3 = 2;
      return v3 | (v2 << 8);
    }

    if (a2 != 32)
    {
      if (a2 == 128)
      {
        v2 = 1;
        v3 = 3;
        return v3 | (v2 << 8);
      }

LABEL_14:
      v3 = 0;
      v2 = 0;
      return v3 | (v2 << 8);
    }

    v3 = 1;
LABEL_18:
    v2 = 1;
    return v3 | (v2 << 8);
  }

  if (a2 >= 0x80000)
  {
    if (a2 != 0x80000)
    {
      if (a2 == 0x100000)
      {
        v2 = 1;
        v3 = 5;
        return v3 | (v2 << 8);
      }

      goto LABEL_14;
    }

    v3 = 0;
    goto LABEL_18;
  }

  if (a2 == 0x4000)
  {
    v2 = 1;
    v3 = 6;
    return v3 | (v2 << 8);
  }

  if (a2 != 0x8000)
  {
    goto LABEL_14;
  }

  v2 = 1;
  v3 = 4;
  return v3 | (v2 << 8);
}

uint64_t WebKit::OriginStorageManager::StorageBucket::toStorageIdentifier(uint64_t result, int a2)
{
  v2 = result;
  if (a2 > 1)
  {
    if (a2 <= 6)
    {
      goto LABEL_3;
    }
  }

  else if (a2 <= 1)
  {
LABEL_3:
    result = WTF::StringImpl::createWithoutCopyingNonEmpty();
    v3 = v4;
    goto LABEL_4;
  }

  v3 = *MEMORY[0x1E696EBA8];
  if (*MEMORY[0x1E696EBA8])
  {
    atomic_fetch_add_explicit(v3, 2u, memory_order_relaxed);
  }

LABEL_4:
  *v2 = v3;
  return result;
}

uint64_t WebKit::OriginStorageManager::StorageBucket::typeStoragePath@<X0>(uint64_t a1@<X0>, int a2@<W1>, atomic_uint **a3@<X8>)
{
  result = WebKit::OriginStorageManager::StorageBucket::toStorageIdentifier(&v9, a2);
  if (*a1)
  {
    if (*(*a1 + 4))
    {
      v7 = v9;
      if (v9)
      {
        if (*(v9 + 1))
        {
          result = WTF::FileSystemImpl::pathByAppendingComponent();
LABEL_6:
          if (atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {

            return WTF::StringImpl::destroy(v7, v6);
          }

          return result;
        }
      }
    }
  }

  v8 = *MEMORY[0x1E696EBA8];
  if (*MEMORY[0x1E696EBA8])
  {
    atomic_fetch_add_explicit(v8, 2u, memory_order_relaxed);
  }

  *a3 = v8;
  v7 = v9;
  if (v9)
  {
    goto LABEL_6;
  }

  return result;
}

uint64_t WebKit::OriginStorageManager::StorageBucket::fileSystemStorageManager(uint64_t a1, atomic_uint *volatile *a2, uint64_t *a3)
{
  result = *(a1 + 24);
  if (!result)
  {
    WebKit::OriginStorageManager::StorageBucket::typeStoragePath(a1, 0, &v10);
    WebKit::FileSystemStorageManager::create(&v10, a2, a3, &v11);
    v8 = *(a1 + 24);
    *(a1 + 24) = v11;
    if (v8)
    {
      WTF::RefCounted<WebKit::FileSystemStorageManager>::deref((v8 + 8));
    }

    v9 = v10;
    v10 = 0;
    if (v9)
    {
      if (atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v9, v7);
      }
    }

    return *(a1 + 24);
  }

  return result;
}

WebKit::LocalStorageManager *WebKit::OriginStorageManager::StorageBucket::localStorageManager(WebKit::OriginStorageManager::StorageBucket *this, atomic_uint *a2)
{
  v4 = (this + 32);
  result = *(this + 4);
  if (!result)
  {
    v6 = WebKit::OriginStorageManager::StorageBucket::resolvedLocalStoragePath(this, &v11);
    v8 = WebKit::LocalStorageManager::operator new(v6, v7);
    WebKit::LocalStorageManager::LocalStorageManager(v8, &v11, a2);
    std::unique_ptr<WebKit::LocalStorageManager>::reset[abi:sn200100](v4, v8);
    v10 = v11;
    v11 = 0;
    if (v10)
    {
      if (atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v10, v9);
      }
    }

    return *v4;
  }

  return result;
}

WTF::StringImpl *WebKit::OriginStorageManager::StorageBucket::resolvedLocalStoragePath@<X0>(WTF::StringImpl *this@<X0>, atomic_uint **a2@<X8>)
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = (this + 48);
  v3 = *(this + 6);
  if (v3)
  {
    goto LABEL_18;
  }

  v5 = this;
  if (!*(this + 112))
  {
    v11 = (this + 40);
    goto LABEL_16;
  }

  if (!*this || !*(*this + 4))
  {
    v11 = MEMORY[0x1E696EBA8];
LABEL_16:
    this = WTF::String::operator=(this + 6, v11);
    goto LABEL_17;
  }

  WebKit::OriginStorageManager::StorageBucket::typeStoragePath(this, 1, &v20);
  WebKit::LocalStorageManager::localStorageFilePath(&v20, &v19);
  v7 = *(v5 + 5);
  if (v7 && *(v7 + 4) && (WTF::FileSystemImpl::fileExists(&v19, v6) & 1) == 0 && WTF::FileSystemImpl::fileExists((v5 + 40), v8))
  {
    v12 = qword_1ED641350;
    if (os_log_type_enabled(qword_1ED641350, OS_LOG_TYPE_DEFAULT))
    {
      WTF::String::utf8();
      v14 = v18 ? v18 + 16 : 0;
      *buf = 134218242;
      v22 = v5;
      v23 = 2082;
      v24 = v14;
      _os_log_impl(&dword_19D52D000, v12, OS_LOG_TYPE_DEFAULT, "%p - StorageBucket::resolvedLocalStoragePath New path '%{public}s'", buf, 0x16u);
      if (v18)
      {
        if (*v18 == 1)
        {
          WTF::fastFree(v18, v13);
        }

        else
        {
          --*v18;
        }
      }
    }

    WTF::FileSystemImpl::makeAllDirectories(&v20, v13);
    if ((WebCore::SQLiteFileSystem::moveDatabaseFile((v5 + 40), &v19, v15) & 1) == 0 && (WTF::FileSystemImpl::fileExists(&v19, v16) & 1) == 0)
    {
      v17 = qword_1ED641350;
      if (os_log_type_enabled(qword_1ED641350, OS_LOG_TYPE_ERROR))
      {
        *buf = 134217984;
        v22 = v5;
        _os_log_error_impl(&dword_19D52D000, v17, OS_LOG_TYPE_ERROR, "%p - StorageBucket::resolvedLocalStoragePath Fails to migrate file to new path", buf, 0xCu);
      }
    }
  }

  WTF::String::operator=(v4, &v19);
  v10 = v19;
  v19 = 0;
  if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, v9);
  }

  this = v20;
  v20 = 0;
  if (this && atomic_fetch_add_explicit(this, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    this = WTF::StringImpl::destroy(this, v9);
  }

LABEL_17:
  v3 = *v4;
  if (*v4)
  {
LABEL_18:
    atomic_fetch_add_explicit(v3, 2u, memory_order_relaxed);
  }

  *a2 = v3;
  return this;
}

uint64_t WebKit::OriginStorageManager::StorageBucket::sessionStorageManager(WebKit::OriginStorageManager::StorageBucket *this, WebKit::StorageAreaRegistry *a2)
{
  v3 = this + 56;
  result = *(this + 7);
  if (!result)
  {
    v5 = WebKit::SessionStorageManager::operator new(0x18, a2);
    *v5 = a2;
    atomic_fetch_add(a2, 1u);
    v5[1] = 0;
    v5[2] = 0;
    v6 = 0;
    std::unique_ptr<WebKit::SessionStorageManager>::reset[abi:sn200100](v3, v5);
    std::unique_ptr<WebKit::SessionStorageManager>::reset[abi:sn200100](&v6, 0);
    return *v3;
  }

  return result;
}

WebKit::IDBStorageManager *WebKit::OriginStorageManager::StorageBucket::idbStorageManager(uint64_t a1, atomic_uint *a2, uint64_t *a3)
{
  v4 = (a1 + 64);
  v3 = *(a1 + 64);
  if (!v3)
  {
    WebKit::OriginStorageManager::StorageBucket::resolvedIDBStoragePath(a1, &v14);
    v8 = WebKit::IDBStorageManager::operator new(0x30, v7);
    *v8 = &unk_1F110AA00;
    *(v8 + 1) = 0;
    v9 = v14;
    if (v14)
    {
      atomic_fetch_add_explicit(v14, 2u, memory_order_relaxed);
    }

    *(v8 + 2) = v9;
    *(v8 + 3) = a2;
    atomic_fetch_add(a2, 1u);
    v10 = *a3;
    *a3 = 0;
    *(v8 + 4) = v10;
    *(v8 + 5) = 0;
    std::unique_ptr<WebKit::IDBStorageManager>::reset[abi:sn200100](v4, v8);
    v12 = v14;
    if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v12, v11);
    }

    return *v4;
  }

  return v3;
}

char *WebKit::OriginStorageManager::StorageBucket::resolvedIDBStoragePath@<X0>(char *this@<X0>, atomic_uint **a2@<X8>)
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = (this + 80);
  v3 = *(this + 10);
  if (v3)
  {
    goto LABEL_18;
  }

  v5 = this;
  if (this[112])
  {
    WebKit::OriginStorageManager::StorageBucket::typeStoragePath(this, 3, &v18);
    if ((WebKit::IDBStorageManager::migrateOriginData((v5 + 72), &v18, v6) & 1) == 0 && WTF::FileSystemImpl::fileExists(&v18, v7))
    {
      WTF::FileSystemImpl::listDirectory(&v16, (v5 + 72), v7);
      WTF::FileSystemImpl::listDirectory(&v14, &v18, v8);
      v9 = qword_1ED641350;
      if (os_log_type_enabled(qword_1ED641350, OS_LOG_TYPE_ERROR))
      {
        *buf = 134218496;
        v20 = v5;
        v21 = 2048;
        v22 = v15;
        v23 = 2048;
        v24 = v17;
        _os_log_error_impl(&dword_19D52D000, v9, OS_LOG_TYPE_ERROR, "%p - StorageBucket::resolvedLocalStoragePath Fails to migrate all databases to new path: %zu migrated, %zu left", buf, 0x20u);
      }

      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v14, v10);
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v16, v11);
    }

    v12 = v18;
    if (v18)
    {
      atomic_fetch_add_explicit(v18, 2u, memory_order_relaxed);
    }

    v13 = *v4;
    *v4 = v12;
    if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v13, v7);
    }

    this = v18;
    v18 = 0;
    if (this && atomic_fetch_add_explicit(this, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      this = WTF::StringImpl::destroy(this, v7);
    }
  }

  else
  {
    this = WTF::String::operator=(this + 10, this + 9);
  }

  v3 = *v4;
  if (*v4)
  {
LABEL_18:
    atomic_fetch_add_explicit(v3, 2u, memory_order_relaxed);
  }

  *a2 = v3;
  return this;
}

uint64_t WebKit::OriginStorageManager::StorageBucket::cacheStorageManager(WebKit::OriginStorageManager::StorageBucket *this, atomic_uint *a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v32 = *MEMORY[0x1E69E9840];
  result = *(this + 11);
  if (result)
  {
    return result;
  }

  LOBYTE(v25[0]) = 0;
  v31 = 0;
  if (*(this + 112) <= 1u)
  {
    v27 = -1;
    LODWORD(v10) = *(a3 + 24);
    if (*(a3 + 24))
    {
      if (v10 == 255)
      {
LABEL_10:
        LOBYTE(v28) = 0;
        v30 = -1;
        LODWORD(v12) = *(a3 + 56);
        if (*(a3 + 56))
        {
          if (v12 == 255)
          {
            goto LABEL_17;
          }

          v28 = *(a3 + 32);
        }

        else
        {
          v13 = *(a3 + 32);
          if (v13)
          {
            atomic_fetch_add_explicit(v13, 2u, memory_order_relaxed);
          }

          *&v28 = v13;
          v12 = *(a3 + 40);
          if (v12)
          {
            atomic_fetch_add_explicit(v12, 2u, memory_order_relaxed);
          }

          *(&v28 + 1) = v12;
          v29 = *(a3 + 48);
          LOBYTE(v12) = *(a3 + 56);
        }

        v30 = v12;
LABEL_17:
        v31 = 1;
        goto LABEL_18;
      }

      *v25 = *a3;
    }

    else
    {
      v11 = *a3;
      if (*a3)
      {
        atomic_fetch_add_explicit(v11, 2u, memory_order_relaxed);
      }

      v25[0] = v11;
      v10 = *(a3 + 8);
      if (v10)
      {
        atomic_fetch_add_explicit(v10, 2u, memory_order_relaxed);
      }

      v25[1] = v10;
      v26 = *(a3 + 16);
      LOBYTE(v10) = *(a3 + 24);
    }

    v27 = v10;
    goto LABEL_10;
  }

LABEL_18:
  WebKit::OriginStorageManager::StorageBucket::resolvedCacheStoragePath(this, &v24);
  v15 = WebKit::CacheStorageManager::operator new(0xA8, v14);
  v16 = WebKit::CacheStorageManager::CacheStorageManager(v15, &v24, a2, v25, a4, a5);
  v18 = *(this + 11);
  *(this + 11) = v16;
  if (v18)
  {
    WTF::RefCounted<WebKit::CacheStorageManager>::deref((v18 + 8), v17);
  }

  v19 = v24;
  if (v24 && atomic_fetch_add_explicit(v24, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v19, v17);
  }

  if (v31 == 1)
  {
    if (!v30)
    {
      v20 = *(&v28 + 1);
      *(&v28 + 1) = 0;
      if (v20 && atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v20, v17);
      }

      v21 = v28;
      *&v28 = 0;
      if (v21 && atomic_fetch_add_explicit(v21, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v21, v17);
      }
    }

    v30 = -1;
    if (!v27)
    {
      v22 = v25[1];
      v25[1] = 0;
      if (v22 && atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v22, v17);
      }

      v23 = v25[0];
      v25[0] = 0;
      if (v23)
      {
        if (atomic_fetch_add_explicit(v23, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v23, v17);
        }
      }
    }
  }

  return *(this + 11);
}

uint64_t WebKit::OriginStorageManager::StorageBucket::resolvedCacheStoragePath@<X0>(uint64_t this@<X0>, atomic_uint **a2@<X8>)
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = (this + 104);
  v3 = *(this + 104);
  if (v3)
  {
    goto LABEL_5;
  }

  v5 = this;
  v6 = *(this + 112);
  if (v6 >= 2)
  {
    if (v6 != 2)
    {
      v3 = 0;
      goto LABEL_6;
    }

    WebKit::OriginStorageManager::StorageBucket::typeStoragePath(this, 4, buf);
    v8 = *buf;
    *buf = 0;
    this = *(v5 + 104);
    *(v5 + 104) = v8;
    if (this)
    {
      if (atomic_fetch_add_explicit(this, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(this, v7);
      }

      this = *buf;
      *buf = 0;
      if (this && atomic_fetch_add_explicit(this, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        this = WTF::StringImpl::destroy(this, v7);
      }

      v8 = *v4;
    }

    if (v8)
    {
      if (v8[1])
      {
        v9 = *(v5 + 96);
        if (v9)
        {
          if (*(v9 + 4))
          {
            this = WTF::FileSystemImpl::fileExists(v4, v7);
            if ((this & 1) == 0)
            {
              this = WTF::FileSystemImpl::fileExists((v5 + 96), v10);
              if (this)
              {
                v11 = qword_1ED641350;
                if (os_log_type_enabled(qword_1ED641350, OS_LOG_TYPE_DEFAULT))
                {
                  WTF::String::utf8();
                  if (v15)
                  {
                    v13 = v15 + 16;
                  }

                  else
                  {
                    v13 = 0;
                  }

                  *buf = 134218242;
                  *&buf[4] = v5;
                  v17 = 2082;
                  v18 = v13;
                  _os_log_impl(&dword_19D52D000, v11, OS_LOG_TYPE_DEFAULT, "%p - StorageBucket::resolvedCacheStoragePath New path '%{public}s'", buf, 0x16u);
                  if (v15)
                  {
                    if (*v15 == 1)
                    {
                      WTF::fastFree(v15, v14);
                    }

                    else
                    {
                      --*v15;
                    }
                  }
                }

                this = WTF::FileSystemImpl::moveFile((v5 + 96), v4, v12);
              }
            }
          }
        }
      }
    }
  }

  else
  {
    this = WTF::String::operator=((this + 104), (this + 96));
  }

  v3 = *v4;
  if (*v4)
  {
LABEL_5:
    atomic_fetch_add_explicit(v3, 2u, memory_order_relaxed);
  }

LABEL_6:
  *a2 = v3;
  return this;
}

uint64_t WebKit::OriginStorageManager::StorageBucket::backgroundFetchManager(WebKit::OriginStorageManager::StorageBucket *this, uint64_t *a2, uint64_t *a3)
{
  result = *(this + 15);
  if (!result)
  {
    WebKit::OriginStorageManager::StorageBucket::resolvedBackgroundFetchStoragePath(this, &v13);
    v8 = WebKit::BackgroundFetchStoreManager::operator new(0x38, v7);
    StoreManager = WebKit::BackgroundFetchStoreManager::BackgroundFetchStoreManager(v8, &v13, a2, a3);
    v11 = *(this + 15);
    *(this + 15) = StoreManager;
    if (v11)
    {
      WTF::RefCounted<WebKit::BackgroundFetchStoreManager>::deref((v11 + 8), v10);
    }

    v12 = v13;
    if (v13)
    {
      if (atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v12, v10);
      }
    }

    return *(this + 15);
  }

  return result;
}

WTF::StringImpl *WebKit::OriginStorageManager::StorageBucket::resolvedBackgroundFetchStoragePath@<X0>(WTF::StringImpl *this@<X0>, WTF::StringImpl **a2@<X8>)
{
  v3 = *(this + 13);
  if (v3)
  {
    goto LABEL_2;
  }

  v4 = this;
  WebKit::OriginStorageManager::StorageBucket::typeStoragePath(this, 5, &v6);
  v3 = v6;
  v6 = 0;
  this = *(v4 + 13);
  *(v4 + 13) = v3;
  if (this)
  {
    if (atomic_fetch_add_explicit(this, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(this, v5);
    }

    this = v6;
    v6 = 0;
    if (this && atomic_fetch_add_explicit(this, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      this = WTF::StringImpl::destroy(this, v5);
    }

    v3 = *(v4 + 13);
  }

  if (v3)
  {
LABEL_2:
    atomic_fetch_add_explicit(v3, 2u, memory_order_relaxed);
  }

  *a2 = v3;
  return this;
}

uint64_t WebKit::OriginStorageManager::StorageBucket::serviceWorkerStorageManager(WebKit::OriginStorageManager::StorageBucket *this)
{
  if (*(this + 112) <= 1u)
  {
    result = 270;
    __break(0xC471u);
  }

  else
  {
    v11[3] = v1;
    v11[4] = v2;
    v4 = (this + 128);
    v3 = *(this + 16);
    if (!v3)
    {
      WebKit::OriginStorageManager::StorageBucket::resolvedPath(this, 0x4000, v11);
      v6 = WebKit::ServiceWorkerStorageManager::operator new(0x10, v5);
      v7 = v11[0];
      if (v11[0])
      {
        atomic_fetch_add_explicit(v11[0], 2u, memory_order_relaxed);
      }

      *v6 = v7;
      *(v6 + 1) = 0;
      std::unique_ptr<WebKit::ServiceWorkerStorageManager>::reset[abi:sn200100](v4, v6);
      v9 = v11[0];
      v11[0] = 0;
      if (v9)
      {
        if (atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v9, v8);
        }
      }

      return *v4;
    }

    return v3;
  }

  return result;
}

uint64_t WebKit::OriginStorageManager::StorageBucket::resolvedPath@<X0>(char *a1@<X0>, int a2@<W1>, atomic_uint **a3@<X8>)
{
  result = WebKit::OriginStorageManager::StorageBucket::toStorageType(a1, a2);
  if (result <= 0xFFu)
  {
    *a3 = 0;
    return result;
  }

  if (result > 2u)
  {
    if (result <= 4u)
    {
      if (result == 3)
      {

        return WebKit::OriginStorageManager::StorageBucket::resolvedIDBStoragePath(a1, a3);
      }

      if (result == 4)
      {

        return WebKit::OriginStorageManager::StorageBucket::resolvedCacheStoragePath(a1, a3);
      }

LABEL_28:
      result = 616;
      __break(0xC471u);
      return result;
    }

    if (result == 5)
    {

      return WebKit::OriginStorageManager::StorageBucket::resolvedBackgroundFetchStoragePath(a1, a3);
    }

    if (result != 6)
    {
      goto LABEL_28;
    }

    goto LABEL_25;
  }

  if (!result)
  {
LABEL_25:

    return WebKit::OriginStorageManager::StorageBucket::typeStoragePath(a1, result, a3);
  }

  if (result != 1)
  {
    if (result != 2)
    {
      goto LABEL_28;
    }

    goto LABEL_25;
  }

  return WebKit::OriginStorageManager::StorageBucket::resolvedLocalStoragePath(a1, a3);
}

BOOL WebKit::OriginStorageManager::StorageBucket::isActive(WebKit::OriginStorageManager::StorageBucket *this, WTF::StringImpl *a2)
{
  v3 = *(this + 3);
  if (v3)
  {
    ++*(v3 + 8);
    v12 = *(v3 + 48);
    if (v12)
    {
      if (*(v12 - 12))
      {
        v8 = 1;
LABEL_24:
        WTF::RefCounted<WebKit::FileSystemStorageManager>::deref((v3 + 8));
        return v8;
      }
    }
  }

  v4 = *(this + 4);
  if (v4 && WebKit::LocalStorageManager::isActive(v4) || (v5 = *(this + 7)) != 0 && (WebKit::SessionStorageManager::isActive(v5) & 1) != 0 || (v6 = *(this + 8)) != 0 && (v7 = *(v6 + 40)) != 0 && *(v7 - 12))
  {
    v8 = 1;
  }

  else
  {
    v9 = *(this + 11);
    if (v9)
    {
      v10 = (v9 + 8);
      ++*(v9 + 8);
      v11 = *(v9 + 112);
      if (v11 && *(v11 - 12))
      {
        v8 = 1;
      }

      else
      {
        v13 = *(v9 + 120);
        if (v13)
        {
          v8 = *(v13 - 12) != 0;
        }

        else
        {
          v8 = 0;
        }
      }

      WTF::RefCounted<WebKit::CacheStorageManager>::deref(v10, a2);
    }

    else
    {
      v8 = 0;
    }
  }

  if (v3)
  {
    goto LABEL_24;
  }

  return v8;
}

uint64_t WebKit::SessionStorageManager::isActive(WebKit::SessionStorageManager *this)
{
  v2 = WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::WallTime>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::WallTime>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::WallTime,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::WallTime>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::begin(this + 1);
  v4 = *(this + 1);
  if (v4)
  {
    v4 += 2 * *(v4 - 1);
  }

  while (1)
  {
    if (v2 == v4)
    {
      return 0;
    }

    v5 = *(v2[1] + 96);
    if (v5)
    {
      if (*(v5 - 12))
      {
        break;
      }
    }

    do
    {
      v2 += 2;
    }

    while (v2 != v3 && (*v2 + 1) <= 1);
  }

  return 1;
}

BOOL WebKit::OriginStorageManager::StorageBucket::hasDataInMemory(WebKit::OriginStorageManager::StorageBucket *this, WTF::StringImpl *a2)
{
  v3 = *(this + 4);
  if (!v3 || !WebKit::LocalStorageManager::hasDataInMemory(v3, a2))
  {
    v4 = *(this + 7);
    if (!v4 || !WebKit::SessionStorageManager::hasDataInMemory(v4))
    {
      v5 = *(this + 8);
      if (!v5 || (WebKit::IDBStorageManager::hasDataInMemory(v5) & 1) == 0)
      {
        v7 = *(this + 11);
        if (!v7)
        {
          return 0;
        }

        v8 = (v7 + 8);
        ++*(v7 + 8);
        v9 = *(v7 + 56);
        if (!v9 || !*(v9 + 4))
        {
          if (*(v7 + 100))
          {
            v6 = 1;
            goto LABEL_17;
          }

          v10 = *(v7 + 104);
          if (v10)
          {
            v6 = *(v10 - 12) != 0;
            goto LABEL_17;
          }
        }

        v6 = 0;
LABEL_17:
        WTF::RefCounted<WebKit::CacheStorageManager>::deref(v8, a2);
        return v6;
      }
    }
  }

  return 1;
}

BOOL WebKit::SessionStorageManager::hasDataInMemory(WebKit::SessionStorageManager *this)
{
  v2 = WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::WallTime>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::WallTime>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::WallTime,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::WallTime>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::begin(this + 1);
  v3 = v2;
  v5 = v4;
  v6 = *(this + 1);
  if (v6)
  {
    v7 = (v6 + 16 * *(v6 - 4));
  }

  else
  {
    v7 = 0;
  }

  if (v2 == v7)
  {
    return 0;
  }

  do
  {
    v9 = WebCore::StorageMap::length((v3[1] + 112));
    result = v9 != 0;
    if (v9)
    {
      break;
    }

    do
    {
      v3 += 2;
    }

    while (v3 != v5 && (*v3 + 1) <= 1);
  }

  while (v3 != v7);
  return result;
}

uint64_t WebKit::OriginStorageManager::StorageBucket::fetchDataTypesInList@<X0>(WTF::StringImpl *a1@<X0>, unsigned int a2@<W1>, int a3@<W2>, uint64_t *a4@<X8>)
{
  v6 = a2;
  WebKit::OriginStorageManager::StorageBucket::fetchDataTypesInListFromDisk(a1, a2, a3, a4);
  result = WebKit::OriginStorageManager::StorageBucket::fetchDataTypesInListFromMemory(a1, v6);
  if (result)
  {
    v8 = result;
    do
    {
      v10 = 0;
      v11 = v8 & -v8;
      result = WTF::HashMap<WebKit::WebsiteDataType,unsigned long long,WTF::IntHash<WebKit::WebsiteDataType>,WTF::StrongEnumHashTraits<WebKit::WebsiteDataType>,WTF::HashTraits<unsigned long long>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<int>(a4, &v11, &v10, &v9);
      v8 &= v8 - 1;
    }

    while (v8);
  }

  return result;
}

WTF::StringImpl *WebKit::OriginStorageManager::StorageBucket::fetchDataTypesInListFromDisk@<X0>(WTF::StringImpl *this@<X0>, int a2@<W1>, int a3@<W2>, uint64_t *a4@<X8>)
{
  v5 = a2;
  v6 = this;
  *a4 = 0;
  if ((a2 & 0x80000) == 0)
  {
    goto LABEL_11;
  }

  WebKit::OriginStorageManager::StorageBucket::typeStoragePath(this, 0, &v33);
  WTF::FileSystemImpl::listDirectory(&v31, &v33, v8);
  if (v32)
  {
    v30 = 0;
    if (a3)
    {
      v10 = WTF::FileSystemImpl::directorySize(&v33, v9);
      if (v11)
      {
        v12 = v10;
      }

      else
      {
        v12 = 0;
      }

      v30 = v12;
    }

    v29 = 0x80000;
    WTF::HashMap<WebKit::WebsiteDataType,unsigned long long,WTF::IntHash<WebKit::WebsiteDataType>,WTF::StrongEnumHashTraits<WebKit::WebsiteDataType>,WTF::HashTraits<unsigned long long>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<unsigned long long &>(v28, a4, &v29, &v30);
  }

  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v31, v9);
  this = v33;
  v33 = 0;
  if (this && atomic_fetch_add_explicit(this, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    this = WTF::StringImpl::destroy(this, v13);
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_20;
    }
  }

  else
  {
LABEL_11:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_20;
    }
  }

  WebKit::OriginStorageManager::StorageBucket::resolvedLocalStoragePath(v6, &v31);
  if (WTF::FileSystemImpl::fileExists(&v31, v14))
  {
    v33 = 0;
    if (a3)
    {
      v33 = WebCore::SQLiteFileSystem::databaseFileSize(&v31, v15);
    }

    LODWORD(v30) = 32;
    WTF::HashMap<WebKit::WebsiteDataType,unsigned long long,WTF::IntHash<WebKit::WebsiteDataType>,WTF::StrongEnumHashTraits<WebKit::WebsiteDataType>,WTF::HashTraits<unsigned long long>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<unsigned long long &>(v28, a4, &v30, &v33);
  }

  this = v31;
  v31 = 0;
  if (this && atomic_fetch_add_explicit(this, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    this = WTF::StringImpl::destroy(this, v15);
  }

  if ((v5 & 0x80) == 0)
  {
    goto LABEL_30;
  }

LABEL_20:
  WebKit::OriginStorageManager::StorageBucket::resolvedIDBStoragePath(v6, &v33);
  WTF::FileSystemImpl::listDirectory(&v31, &v33, v16);
  if (v32)
  {
    v30 = 0;
    if (a3)
    {
      v18 = WTF::FileSystemImpl::directorySize(&v33, v17);
      if (v19)
      {
        v20 = v18;
      }

      else
      {
        v20 = 0;
      }

      v30 = v20;
    }

    v29 = 128;
    WTF::HashMap<WebKit::WebsiteDataType,unsigned long long,WTF::IntHash<WebKit::WebsiteDataType>,WTF::StrongEnumHashTraits<WebKit::WebsiteDataType>,WTF::HashTraits<unsigned long long>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<unsigned long long &>(v28, a4, &v29, &v30);
  }

  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v31, v17);
  this = v33;
  v33 = 0;
  if (this && atomic_fetch_add_explicit(this, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    this = WTF::StringImpl::destroy(this, v21);
    if ((v5 & 0x8000) == 0)
    {
      return this;
    }
  }

  else
  {
LABEL_30:
    if ((v5 & 0x8000) == 0)
    {
      return this;
    }
  }

  WebKit::OriginStorageManager::StorageBucket::resolvedCacheStoragePath(v6, v28);
  hasCacheList = WebKit::CacheStorageManager::hasCacheList(v28, v22);
  this = v28[0];
  if (v28[0] && atomic_fetch_add_explicit(v28[0], 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    this = WTF::StringImpl::destroy(this, v23);
    if (!hasCacheList)
    {
      return this;
    }
  }

  else if (!hasCacheList)
  {
    return this;
  }

  v31 = 0;
  if (a3)
  {
    WebKit::OriginStorageManager::StorageBucket::resolvedCacheStoragePath(v6, v28);
    v31 = WebKit::CacheStorageManager::cacheStorageSize(v28, v25);
    v27 = v28[0];
    v28[0] = 0;
    if (v27)
    {
      if (atomic_fetch_add_explicit(v27, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v27, v26);
      }
    }
  }

  LODWORD(v33) = 0x8000;
  return WTF::HashMap<WebKit::WebsiteDataType,unsigned long long,WTF::IntHash<WebKit::WebsiteDataType>,WTF::StrongEnumHashTraits<WebKit::WebsiteDataType>,WTF::HashTraits<unsigned long long>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<unsigned long long &>(v28, a4, &v33, &v31);
}

uint64_t WebKit::OriginStorageManager::StorageBucket::fetchDataTypesInListFromMemory(void *a1, void *a2)
{
  v2 = a2;
  if ((a2 & 0x20) != 0 && (v4 = a1[4]) != 0)
  {
    if (WebKit::LocalStorageManager::hasDataInMemory(v4, a2))
    {
      v5 = 32;
    }

    else
    {
      v5 = 0;
    }

    if ((v2 & 0x10) == 0)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v5 = 0;
    if ((a2 & 0x10) == 0)
    {
      goto LABEL_13;
    }
  }

  v6 = a1[7];
  if (v6)
  {
    if (WebKit::SessionStorageManager::hasDataInMemory(v6))
    {
      v5 = v5 | 0x10;
    }

    else
    {
      v5 = v5;
    }
  }

LABEL_13:
  if ((v2 & 0x80) != 0)
  {
    v7 = a1[8];
    if (v7)
    {
      if (WebKit::IDBStorageManager::hasDataInMemory(v7))
      {
        v5 = v5 | 0x80;
      }

      else
      {
        v5 = v5;
      }
    }
  }

  if (v2 < 0)
  {
    v8 = a1[11];
    if (v8)
    {
      v9 = (v8 + 8);
      ++*(v8 + 8);
      v10 = *(v8 + 56);
      if (v10 && *(v10 + 4))
      {
        goto LABEL_22;
      }

      if (*(v8 + 100))
      {
        WTF::RefCounted<WebKit::CacheStorageManager>::deref(v9, a2);
      }

      else
      {
        v12 = *(v8 + 104);
        if (!v12)
        {
LABEL_22:
          WTF::RefCounted<WebKit::CacheStorageManager>::deref(v9, a2);
          return v5;
        }

        v13 = *(v12 - 12);
        WTF::RefCounted<WebKit::CacheStorageManager>::deref(v9, a2);
        if (!v13)
        {
          return v5;
        }
      }

      return v5 | 0x8000;
    }
  }

  return v5;
}

_OWORD *WTF::HashMap<WebKit::WebsiteDataType,unsigned long long,WTF::IntHash<WebKit::WebsiteDataType>,WTF::StrongEnumHashTraits<WebKit::WebsiteDataType>,WTF::HashTraits<unsigned long long>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<unsigned long long &>(_OWORD *result, uint64_t *a2, int *a3, void *a4)
{
  v4 = *a3;
  if (*a3 == -2 || v4 == -1)
  {
    __break(0xC471u);
    JUMPOUT(0x19DE1CE18);
  }

  v8 = result;
  v9 = *a2;
  if (!*a2)
  {
    result = WTF::HashTable<WebKit::WebsiteDataType,WTF::KeyValuePair<WebKit::WebsiteDataType,unsigned long long>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebKit::WebsiteDataType,unsigned long long>>,WTF::IntHash<WebKit::WebsiteDataType>,WTF::HashMap<WebKit::WebsiteDataType,unsigned long long,WTF::IntHash<WebKit::WebsiteDataType>,WTF::StrongEnumHashTraits<WebKit::WebsiteDataType>,WTF::HashTraits<unsigned long long>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::StrongEnumHashTraits<WebKit::WebsiteDataType>,WTF::FastMalloc>::expand(a2, 0);
    v9 = *a2;
    v4 = *a3;
  }

  v10 = *(v9 - 8);
  v11 = 9 * ((v4 + ~(v4 << 15)) ^ ((v4 + ~(v4 << 15)) >> 10));
  v12 = (v11 ^ (v11 >> 6)) + ~((v11 ^ (v11 >> 6)) << 11);
  v13 = (v12 ^ HIWORD(v12)) & v10;
  v14 = (v9 + 16 * v13);
  v15 = *v14;
  if (*v14 == -1)
  {
LABEL_13:
    v18 = *(v9 - 16);
    v16 = v14;
  }

  else
  {
    v16 = 0;
    v17 = 1;
    do
    {
      if (v15 == v4)
      {
        v22 = 0;
        v23 = v9 + 16 * *(v9 - 4);
        goto LABEL_21;
      }

      if (v15 == -2)
      {
        v16 = v14;
      }

      v13 = (v13 + v17) & v10;
      v14 = (v9 + 16 * v13);
      v15 = *v14;
      ++v17;
    }

    while (*v14 != -1);
    if (!v16)
    {
      goto LABEL_13;
    }

    *v16 = -1;
    *(v16 + 1) = 0;
    v18 = *(v9 - 16) - 1;
    *(v9 - 16) = v18;
    v4 = *a3;
  }

  *v16 = v4;
  *(v16 + 1) = *a4;
  v19 = *(v9 - 12) + 1;
  *(v9 - 12) = v19;
  v20 = (v19 + v18);
  v21 = *(v9 - 4);
  if (v21 > 0x400)
  {
    if (v21 <= 2 * v20)
    {
LABEL_16:
      result = WTF::HashTable<WebKit::WebsiteDataType,WTF::KeyValuePair<WebKit::WebsiteDataType,unsigned long long>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebKit::WebsiteDataType,unsigned long long>>,WTF::IntHash<WebKit::WebsiteDataType>,WTF::HashMap<WebKit::WebsiteDataType,unsigned long long,WTF::IntHash<WebKit::WebsiteDataType>,WTF::StrongEnumHashTraits<WebKit::WebsiteDataType>,WTF::HashTraits<unsigned long long>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::StrongEnumHashTraits<WebKit::WebsiteDataType>,WTF::FastMalloc>::expand(a2, v16);
      v16 = result;
      v9 = *a2;
      if (*a2)
      {
        v21 = *(v9 - 4);
      }

      else
      {
        v21 = 0;
      }
    }
  }

  else if (3 * v21 <= 4 * v20)
  {
    goto LABEL_16;
  }

  v23 = v9 + 16 * v21;
  v22 = 1;
  v14 = v16;
LABEL_21:
  *v8 = v14;
  *(v8 + 1) = v23;
  *(v8 + 16) = v22;
  return result;
}

WTF::WallTime *WebKit::OriginStorageManager::StorageBucket::deleteData(WTF::WallTime *result, WTF::StringImpl *a2, double a3)
{
  v4 = a2;
  v5 = result;
  if ((a2 & 0x80000) != 0)
  {
    result = WebKit::OriginStorageManager::StorageBucket::deleteFileSystemStorageData(result, a3);
    if ((v4 & 0x20) == 0)
    {
LABEL_3:
      if ((v4 & 0x10) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_7;
    }
  }

  else if ((a2 & 0x20) == 0)
  {
    goto LABEL_3;
  }

  result = WebKit::OriginStorageManager::StorageBucket::deleteLocalStorageData(v5, a3);
  if ((v4 & 0x10) == 0)
  {
    goto LABEL_9;
  }

LABEL_7:
  result = WTF::WallTime::now(result);
  if (a3 < v6)
  {
    result = WebKit::OriginStorageManager::StorageBucket::deleteSessionStorageData(v5);
  }

LABEL_9:
  if ((v4 & 0x80) != 0)
  {
    result = WebKit::OriginStorageManager::StorageBucket::deleteIDBStorageData(v5, a3);
  }

  if (v4 < 0)
  {

    return WebKit::OriginStorageManager::StorageBucket::deleteCacheStorageData(v5, a2, a3);
  }

  return result;
}

WTF::StringImpl *WebKit::OriginStorageManager::StorageBucket::deleteFileSystemStorageData(uint64_t a1, double a2)
{
  v4 = *(a1 + 24);
  *(a1 + 24) = 0;
  if (v4)
  {
    WTF::RefCounted<WebKit::FileSystemStorageManager>::deref((v4 + 8));
  }

  WebKit::OriginStorageManager::StorageBucket::typeStoragePath(a1, 0, &v9);
  v5.n128_f64[0] = a2;
  WTF::FileSystemImpl::deleteAllFilesModifiedSince(&v9, v6, v5);
  result = v9;
  v9 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v7);
    }
  }

  return result;
}

WTF::StringImpl *WebKit::OriginStorageManager::StorageBucket::deleteLocalStorageData(WebKit::LocalStorageManager **a1, double a2)
{
  WebKit::OriginStorageManager::StorageBucket::resolvedLocalStoragePath(a1, &v12);
  v5 = COERCE_DOUBLE(WTF::FileSystemImpl::fileModificationTime(&v12, v4));
  if ((v6 & 1) != 0 && a2 <= v5)
  {
    v7 = a1[4];
    if (v7)
    {
      WebKit::LocalStorageManager::clearDataOnDisk(v7);
    }

    WebCore::SQLiteFileSystem::deleteDatabaseFile(&v12, v6);
  }

  v10 = a1[4];
  v9 = a1 + 4;
  v8 = v10;
  if (v10)
  {
    WebKit::LocalStorageManager::clearDataInMemory(v8);
    if (!WebKit::LocalStorageManager::isActive(*v9))
    {
      std::unique_ptr<WebKit::LocalStorageManager>::reset[abi:sn200100](v9, 0);
    }
  }

  result = v12;
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

uint64_t WebKit::OriginStorageManager::StorageBucket::deleteSessionStorageData(WebKit::OriginStorageManager::StorageBucket *this)
{
  v2 = (this + 56);
  result = *(this + 7);
  if (result)
  {
    WebKit::SessionStorageManager::clearData(result);
    result = WebKit::SessionStorageManager::isActive(*v2);
    if ((result & 1) == 0)
    {

      return std::unique_ptr<WebKit::SessionStorageManager>::reset[abi:sn200100](v2, 0);
    }
  }

  return result;
}

WTF::StringImpl *WebKit::OriginStorageManager::StorageBucket::deleteIDBStorageData(uint64_t a1, double a2)
{
  v4 = *(a1 + 64);
  if (v4)
  {
    WebKit::IDBStorageManager::closeDatabasesForDeletion(v4);
  }

  WebKit::OriginStorageManager::StorageBucket::resolvedIDBStoragePath(a1, &v9);
  v5.n128_f64[0] = a2;
  WTF::FileSystemImpl::deleteAllFilesModifiedSince(&v9, v6, v5);
  result = v9;
  v9 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v7);
    }
  }

  return result;
}

WTF::StringImpl *WebKit::OriginStorageManager::StorageBucket::deleteCacheStorageData(uint64_t a1, WTF::StringImpl *a2, double a3)
{
  v5 = *(a1 + 88);
  if (v5)
  {
    v6 = (v5 + 8);
    ++*(v5 + 8);
    WebKit::CacheStorageManager::reset(v5, a2);
    WTF::RefCounted<WebKit::CacheStorageManager>::deref(v6, v7);
  }

  WebKit::OriginStorageManager::StorageBucket::resolvedCacheStoragePath(a1, &v12);
  v8.n128_f64[0] = a3;
  WTF::FileSystemImpl::deleteAllFilesModifiedSince(&v12, v9, v8);
  result = v12;
  v12 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v10);
    }
  }

  return result;
}

uint64_t WebKit::SessionStorageManager::clearData(uint64_t this)
{
  v1 = *(this + 8);
  if (v1)
  {
    v2 = *(v1 - 4);
    v3 = (v1 + 16 * v2);
    if (*(v1 - 12))
    {
      if (v2)
      {
        v4 = 16 * v2;
        v5 = *(this + 8);
        while ((*v5 + 1) <= 1)
        {
          v5 += 2;
          v4 -= 16;
          if (!v4)
          {
            v5 = v3;
            goto LABEL_13;
          }
        }
      }

      else
      {
        v5 = *(this + 8);
      }

      goto LABEL_13;
    }
  }

  else
  {
    v3 = 0;
    v2 = 0;
  }

  v5 = v3;
  v3 = (v1 + 16 * v2);
  if (!v1)
  {
    v6 = 0;
    goto LABEL_14;
  }

LABEL_13:
  v6 = (v1 + 16 * *(v1 - 4));
LABEL_14:
  while (v5 != v6)
  {
    v7 = v5[1];
    ++v7[26];
    WebCore::StorageMap::clear((v7 + 28));
    WebKit::StorageAreaBase::notifyListenersAboutClear(v7);
    this = WTF::RefCounted<WebKit::MemoryStorageArea>::deref((v7 + 26), v8);
    do
    {
      v5 += 2;
    }

    while (v5 != v3 && (*v5 + 1) <= 1);
  }

  return this;
}

WTF::StringImpl *WebKit::OriginStorageManager::StorageBucket::moveData(WTF::StringImpl *this, char a2, WTF::FileSystemImpl *a3, WTF::FileSystemImpl *a4)
{
  v6 = this;
  if ((a2 & 0x20) == 0 || !*a3 || !*(*a3 + 4))
  {
    goto LABEL_15;
  }

  v8 = *(this + 4);
  if (v8)
  {
    WebKit::LocalStorageManager::close(v8);
  }

  WebKit::OriginStorageManager::StorageBucket::resolvedLocalStoragePath(v6, &v21);
  this = v21;
  if (!v21)
  {
    goto LABEL_15;
  }

  if (!*(v21 + 1))
  {
    v21 = 0;
    goto LABEL_14;
  }

  WTF::FileSystemImpl::parentPath(&v20, a3, v9);
  WTF::FileSystemImpl::makeAllDirectories(&v20, v10);
  v13 = v20;
  v20 = 0;
  if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v13, v11);
  }

  WebCore::SQLiteFileSystem::moveDatabaseFile(&v21, a3, v12);
  this = v21;
  v21 = 0;
  if (!this)
  {
LABEL_15:
    if ((a2 & 0x80) == 0)
    {
      return this;
    }

    goto LABEL_16;
  }

LABEL_14:
  if (atomic_fetch_add_explicit(this, 0xFFFFFFFE, memory_order_relaxed) != 2)
  {
    goto LABEL_15;
  }

  this = WTF::StringImpl::destroy(this, v9);
  if ((a2 & 0x80) == 0)
  {
    return this;
  }

LABEL_16:
  if (*a4 && *(*a4 + 4))
  {
    v14 = *(v6 + 8);
    if (v14)
    {
      WebKit::IDBStorageManager::closeDatabasesForDeletion(v14);
    }

    WebKit::OriginStorageManager::StorageBucket::resolvedIDBStoragePath(v6, &v21);
    this = v21;
    if (v21)
    {
      if (!*(v21 + 1))
      {
        v21 = 0;
LABEL_28:
        if (atomic_fetch_add_explicit(this, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          return WTF::StringImpl::destroy(this, v15);
        }

        return this;
      }

      WTF::FileSystemImpl::parentPath(&v20, a4, v15);
      WTF::FileSystemImpl::makeAllDirectories(&v20, v16);
      v19 = v20;
      v20 = 0;
      if (v19 && atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v19, v17);
      }

      WTF::FileSystemImpl::moveFile(&v21, a4, v18);
      this = v21;
      v21 = 0;
      if (this)
      {
        goto LABEL_28;
      }
    }
  }

  return this;
}

unsigned __int8 *WebKit::OriginStorageManager::StorageBucket::deleteEmptyDirectory(unsigned __int8 *this)
{
  v1 = this;
  v2 = this[112];
  if (v2 == 2)
  {
    WebKit::OriginStorageManager::StorageBucket::typeStoragePath(this, 0, &v27);
    WTF::FileSystemImpl::deleteEmptyDirectory(&v27, v16);
    v18 = v27;
    v27 = 0;
    if (v18 && atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v18, v17);
    }

    WebKit::OriginStorageManager::StorageBucket::typeStoragePath(v1, 1, &v27);
    WTF::FileSystemImpl::deleteEmptyDirectory(&v27, v19);
    v21 = v27;
    v27 = 0;
    if (v21 && atomic_fetch_add_explicit(v21, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v21, v20);
    }

    WebKit::OriginStorageManager::StorageBucket::typeStoragePath(v1, 3, &v27);
    WTF::FileSystemImpl::deleteEmptyDirectory(&v27, v22);
    v24 = v27;
    v27 = 0;
    if (v24 && atomic_fetch_add_explicit(v24, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v24, v23);
    }

    WebKit::OriginStorageManager::StorageBucket::typeStoragePath(v1, 4, &v27);
    WTF::FileSystemImpl::deleteEmptyDirectory(&v27, v25);
    this = v27;
    v27 = 0;
    if (this && atomic_fetch_add_explicit(this, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(this, v26);
    }
  }

  else
  {
    if (v2 == 1)
    {
      WebKit::OriginStorageManager::StorageBucket::typeStoragePath(this, 0, &v27);
      WTF::FileSystemImpl::deleteEmptyDirectory(&v27, v8);
      v10 = v27;
      v27 = 0;
      if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v10, v9);
      }

      WebKit::OriginStorageManager::StorageBucket::typeStoragePath(v1, 1, &v27);
      WTF::FileSystemImpl::deleteEmptyDirectory(&v27, v11);
      v13 = v27;
      v27 = 0;
      if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v13, v12);
      }

      WebKit::OriginStorageManager::StorageBucket::typeStoragePath(v1, 3, &v27);
      WTF::FileSystemImpl::deleteEmptyDirectory(&v27, v14);
      v15 = v27;
      v27 = 0;
      if (v15 && atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v15, v7);
      }
    }

    else
    {
      if (this[112])
      {
        return this;
      }

      WebKit::OriginStorageManager::StorageBucket::typeStoragePath(this, 0, &v27);
      WTF::FileSystemImpl::deleteEmptyDirectory(&v27, v3);
      v5 = v27;
      v27 = 0;
      if (v5)
      {
        if (atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v5, v4);
        }
      }

      WTF::FileSystemImpl::deleteEmptyDirectory((v1 + 40), v4);
      WTF::FileSystemImpl::deleteEmptyDirectory((v1 + 72), v6);
    }

    return WTF::FileSystemImpl::deleteEmptyDirectory((v1 + 96), v7);
  }

  return this;
}

uint64_t WebKit::OriginStorageManager::createQuotaManager(void *a1, unsigned int *a2, __int128 *a3)
{
  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(a2, a2);
  v6 = *a2;
  atomic_fetch_add(v6, 1u);
  v7 = WTF::fastMalloc(0x10);
  *v7 = &unk_1F110BD00;
  v7[1] = v6;
  v14 = v7;
  v9 = WebKit::OriginQuotaManager::operator new(0x98, v8);
  v10 = WebKit::OriginQuotaManager::OriginQuotaManager(v9, a3, &v14);
  *a1 = v11;
  result = v14;
  if (v14)
  {
    v13 = *(*v14 + 8);

    return v13(v10);
  }

  return result;
}

uint64_t WebKit::OriginStorageManager::OriginStorageManager(uint64_t a1, __int128 *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, char a7)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v9 = *a3;
  *a3 = 0;
  *(a1 + 24) = v9;
  v10 = *a4;
  *a4 = 0;
  *(a1 + 32) = v10;
  v11 = *a5;
  *a5 = 0;
  *(a1 + 40) = v11;
  v12 = *a6;
  *a6 = 0;
  *(a1 + 48) = v12;
  WebKit::OriginStorageManager::createQuotaManager((a1 + 56), a1, a2);
  *(a1 + 64) = a7;
  *(a1 + 72) = 0x7FF8000000000000;
  *(a1 + 80) = 0;
  return a1;
}

void WebKit::OriginStorageManager::~OriginStorageManager(WebKit::OriginStorageManager *this, void *a2)
{
  v3 = *(this + 7);
  *(this + 7) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::OriginQuotaManager,(WTF::DestructionThread)0>::deref(v3, a2);
  }

  v4 = *(this + 6);
  *(this + 6) = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  v5 = *(this + 5);
  *(this + 5) = 0;
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

  std::unique_ptr<WebKit::OriginStorageManager::StorageBucket>::reset[abi:sn200100](this + 2, 0);

  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::~WeakPtrFactory(this, v8);
}

void *WebKit::OriginStorageManager::connectionClosed(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 16);
  if (result)
  {
    return WebKit::OriginStorageManager::StorageBucket::connectionClosed(result, a2);
  }

  return result;
}

WebKit::ServiceWorkerStorageManager **WebKit::OriginStorageManager::defaultBucket(WebKit::OriginStorageManager *this)
{
  v3 = (this + 16);
  result = *(this + 2);
  if (!result)
  {
    v8[0] = "default";
    v8[1] = 8;
    std::make_unique[abi:sn200100]<WebKit::OriginStorageManager::StorageBucket,WTF::String &,WTF::ASCIILiteral,WTF::String &,WTF::String &,WTF::String &,WebKit::UnifiedOriginStorageLevel &,0>(this + 3, v8, this + 4, this + 5, this + 6, this + 64, &v9);
    v4 = v9;
    v9 = 0;
    std::unique_ptr<WebKit::OriginStorageManager::StorageBucket>::reset[abi:sn200100](v3, v4);
    v5 = v9;
    v9 = 0;
    if (v5)
    {
      WebKit::OriginStorageManager::StorageBucket::~StorageBucket(v5);
      bmalloc::api::tzoneFree(v6, v7);
    }

    return *v3;
  }

  return result;
}

uint64_t WebKit::OriginStorageManager::fileSystemStorageManager(atomic_ullong **this, atomic_uint *volatile *a2)
{
  v4 = WebKit::OriginStorageManager::defaultBucket(this);
  v5 = this[7];
  v6 = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::NetworkCache::Storage,(WTF::DestructionThread)2>::controlBlock(v5);
  v7 = WTF::ThreadSafeWeakPtrControlBlock::weakRef(v6);
  v8 = WTF::fastMalloc(0x18);
  *v8 = &unk_1F110BD28;
  v8[1] = v5;
  v8[2] = v7;
  v11 = v8;
  v9 = WebKit::OriginStorageManager::StorageBucket::fileSystemStorageManager(v4, a2, &v11);
  if (v11)
  {
    (*(*v11 + 8))(v11);
  }

  return v9;
}

WebKit::IDBStorageManager *WebKit::OriginStorageManager::idbStorageManager(atomic_ullong **this, atomic_uint *a2)
{
  v4 = WebKit::OriginStorageManager::defaultBucket(this);
  v5 = this[7];
  v6 = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::NetworkCache::Storage,(WTF::DestructionThread)2>::controlBlock(v5);
  v7 = WTF::ThreadSafeWeakPtrControlBlock::weakRef(v6);
  v8 = WTF::fastMalloc(0x18);
  *v8 = &unk_1F110BD78;
  v8[1] = v5;
  v8[2] = v7;
  v11 = v8;
  v9 = WebKit::OriginStorageManager::StorageBucket::idbStorageManager(v4, a2, &v11);
  if (v11)
  {
    (*(*v11 + 8))(v11);
  }

  return v9;
}

uint64_t WebKit::OriginStorageManager::cacheStorageManager(WebKit::OriginStorageManager *a1, atomic_uint *a2, uint64_t a3, uint64_t *a4)
{
  v8 = WebKit::OriginStorageManager::defaultBucket(a1);
  v9 = *(a1 + 7);
  v10 = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::NetworkCache::Storage,(WTF::DestructionThread)2>::controlBlock(v9);
  v11 = WTF::ThreadSafeWeakPtrControlBlock::weakRef(v10);
  v12 = WTF::fastMalloc(0x18);
  *v12 = &unk_1F110BDC8;
  v12[1] = v9;
  v12[2] = v11;
  v15 = v12;
  v13 = WebKit::OriginStorageManager::StorageBucket::cacheStorageManager(v8, a2, a3, &v15, a4);
  if (v15)
  {
    (*(*v15 + 8))(v15);
  }

  return v13;
}

uint64_t WebKit::OriginStorageManager::backgroundFetchManager(WebKit::OriginStorageManager *a1, uint64_t *a2)
{
  v4 = WebKit::OriginStorageManager::defaultBucket(a1);
  v5 = *(a1 + 7);
  v6 = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::NetworkCache::Storage,(WTF::DestructionThread)2>::controlBlock(v5);
  v7 = WTF::ThreadSafeWeakPtrControlBlock::weakRef(v6);
  v8 = WTF::fastMalloc(0x18);
  *v8 = &unk_1F110BE18;
  v8[1] = v5;
  v8[2] = v7;
  v11 = v8;
  Manager = WebKit::OriginStorageManager::StorageBucket::backgroundFetchManager(v4, a2, &v11);
  if (v11)
  {
    (*(*v11 + 8))(v11);
  }

  return Manager;
}

unint64_t WebKit::OriginStorageManager::estimate(WebKit::OriginStorageManager *this)
{
  v1 = *(this + 7);
  while (1)
  {
    v2 = *v1;
    if ((*v1 & 1) == 0)
    {
      break;
    }

    v3 = *v1;
    atomic_compare_exchange_strong_explicit(v1, &v3, v2 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v3 == v2)
    {
      goto LABEL_6;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v1);
LABEL_6:
  v4 = WebKit::OriginQuotaManager::usage(v1);
  WebKit::OriginQuotaManager::reportedQuota(v1);
  WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::OriginQuotaManager,(WTF::DestructionThread)0>::deref(v1, v5);
  return v4;
}

unsigned __int8 *WebKit::OriginStorageManager::deleteEmptyDirectory(unsigned __int8 *this)
{
  v1 = *(this + 3);
  if (v1 && *(v1 + 4))
  {
    v2 = WebKit::OriginStorageManager::defaultBucket(this);

    return WebKit::OriginStorageManager::StorageBucket::deleteEmptyDirectory(v2);
  }

  return this;
}

uint64_t WebKit::SQLiteStorageArea::create@<X0>(int a1@<W0>, void *a2@<X1>, atomic_uint **a3@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X8>)
{
  v10 = WebKit::SQLiteStorageArea::operator new(0xB8, a2);
  result = WebKit::SQLiteStorageArea::SQLiteStorageArea(v10, a1, a2, a3, a4);
  *a5 = result;
  return result;
}

uint64_t WebKit::SQLiteStorageArea::operator new(WebKit::SQLiteStorageArea *this, void *a2)
{
  if (WebKit::SQLiteStorageArea::s_heapRef)
  {
    return bmalloc::api::tzoneAllocateNonCompact(WebKit::SQLiteStorageArea::s_heapRef, a2);
  }

  else
  {
    return WebKit::SQLiteStorageArea::operatorNewSlow(0xB8);
  }
}

uint64_t WebKit::SQLiteStorageArea::SQLiteStorageArea(uint64_t a1, int a2, const WebCore::ClientOrigin *a3, atomic_uint **a4, uint64_t *a5)
{
  v8 = WebKit::StorageAreaBase::StorageAreaBase(a1, a2, a3);
  *(v8 + 26) = 1;
  *v8 = &unk_1F110BC20;
  v9 = *a4;
  if (*a4)
  {
    atomic_fetch_add_explicit(v9, 2u, memory_order_relaxed);
  }

  *(a1 + 112) = v9;
  v10 = *a5;
  *a5 = 0;
  *(a1 + 120) = v10;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 156) = 6;
  v11 = WTF::fastMalloc(0x30);
  *(a1 + 152) = 6;
  *(a1 + 144) = v11;
  bzero(v11, 8 * *(a1 + 156));
  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  *(a1 + 176) = 0;
  *(a1 + 180) = 0;
  return a1;
}

WebKit::StorageAreaBase *WebKit::StorageAreaBase::StorageAreaBase(WebKit::StorageAreaBase *this, int a2, const WebCore::ClientOrigin *a3)
{
  *(this + 1) = 0;
  *(this + 2) = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
  *this = &unk_1F110BC90;
  *(this + 6) = a2;
  mpark::detail::move_assignment<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::move_assignment(this + 32, a3);
  mpark::detail::move_assignment<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::move_assignment(this + 64, a3 + 32);
  *(this + 12) = 0;
  return this;
}

void WebKit::SQLiteStorageArea::close(WebKit::SQLiteStorageArea *this, WTF::StringImpl *a2)
{
  if (*(this + 168) == 1)
  {
    v3 = *(this + 20);
    if (v3)
    {
      WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,mpark::variant<WTF::String,unsigned long long,long long,BOOL,double>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,mpark::variant<WTF::String,unsigned long long,long long,BOOL,double>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,mpark::variant<WTF::String,unsigned long long,long long,BOOL,double>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<mpark::variant<WTF::String,unsigned long long,long long,BOOL,double>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v3, a2);
    }

    *(this + 168) = 0;
  }

  if (*(this + 180) == 1)
  {
    *(this + 180) = 0;
  }

  WebKit::SQLiteStorageArea::commitTransactionIfNecessary(this);
  for (i = 0; i != 6; ++i)
  {
    if (i >= *(this + 39))
    {
      __break(0xC471u);
      return;
    }

    v5 = *(this + 18);
    v6 = *(v5 + 8 * i);
    *(v5 + 8 * i) = 0;
    if (v6)
    {
      WebCore::SQLiteStatement::operator delete(v6);
    }
  }

  v7 = *(this + 16);
  *(this + 16) = 0;
  if (v7)
  {

    WebCore::SQLiteDatabase::operator delete();
  }
}

uint64_t WebKit::SQLiteStorageArea::commitTransactionIfNecessary(WebKit::SQLiteStorageArea *this)
{
  v3 = *(this + 17);
  v1 = (this + 136);
  v2 = v3;
  *v1 = 0;
  result = std::unique_ptr<WebCore::SQLiteTransaction>::reset[abi:sn200100](v1, 0);
  if (v3)
  {
    WebCore::SQLiteTransaction::commit(v2);
    v5 = MEMORY[0x19EB07780](v2);

    return bmalloc::api::tzoneFree(v5, v6);
  }

  return result;
}

void WebKit::SQLiteStorageArea::~SQLiteStorageArea(WebKit::SQLiteStorageArea *this)
{
  isEmpty = WebKit::SQLiteStorageArea::isEmpty(this);
  WebKit::SQLiteStorageArea::close(this, v3);
  if (isEmpty)
  {
    WebCore::SQLiteFileSystem::deleteDatabaseFile((this + 112), v4);
  }

  if (*(this + 168) == 1)
  {
    v5 = *(this + 20);
    if (v5)
    {
      WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,mpark::variant<WTF::String,unsigned long long,long long,BOOL,double>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,mpark::variant<WTF::String,unsigned long long,long long,BOOL,double>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,mpark::variant<WTF::String,unsigned long long,long long,BOOL,double>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<mpark::variant<WTF::String,unsigned long long,long long,BOOL,double>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v5, v4);
    }
  }

  WTF::Vector<std::unique_ptr<WebCore::SQLiteStatement>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 144, v4);
  std::unique_ptr<WebCore::SQLiteTransaction>::reset[abi:sn200100](this + 17, 0);
  v7 = *(this + 16);
  *(this + 16) = 0;
  if (v7)
  {
    WebCore::SQLiteDatabase::operator delete();
  }

  v8 = *(this + 15);
  *(this + 15) = 0;
  if (v8)
  {
    (*(*v8 + 40))(v8);
  }

  v9 = *(this + 14);
  *(this + 14) = 0;
  if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v9, v6);
  }

  if (*(this + 26) == 1)
  {

    WebKit::StorageAreaBase::~StorageAreaBase(this, v6);
  }

  else
  {
    __break(0xC471u);
  }
}

{
  WebKit::SQLiteStorageArea::~SQLiteStorageArea(this);

  bmalloc::api::tzoneFree(v1, v2);
}

uint64_t WebKit::SQLiteStorageArea::isEmpty(WebKit::SQLiteStorageArea *this)
{
  v12 = *MEMORY[0x1E69E9840];
  if (*(this + 168) == 1)
  {
    v6 = *(this + 20);
    if (v6)
    {
      return *(v6 - 12) == 0;
    }

    return 1;
  }

  if (!WebKit::SQLiteStorageArea::prepareDatabase(this, 0) || !*(this + 16))
  {
    return 1;
  }

  WebKit::SQLiteStorageArea::cachedStatement(&v9, this, 0);
  v2 = v9;
  if (v9)
  {
    atomic_fetch_add(v9, 1u);
    MEMORY[0x19EB0CD50](&v9);
    if (WebCore::SQLiteStatement::step(v2) == 100)
    {
      result = WebCore::SQLiteStatement::columnInt(v2) == 0;
LABEL_9:
      if (atomic_load(v2))
      {
        atomic_fetch_add(v2, 0xFFFFFFFF);
      }

      else
      {
        result = 290;
        __break(0xC471u);
      }

      return result;
    }
  }

  else
  {
    MEMORY[0x19EB0CD50](&v9);
  }

  v3 = qword_1ED641350;
  if (os_log_type_enabled(qword_1ED641350, OS_LOG_TYPE_ERROR))
  {
    Error = WebCore::SQLiteDatabase::lastError(*(this + 16));
    ErrorMsg = WebCore::SQLiteDatabase::lastErrorMsg(*(this + 16));
    LODWORD(v9) = 67109378;
    HIDWORD(v9) = Error;
    v10 = 2082;
    v11 = ErrorMsg;
    _os_log_error_impl(&dword_19D52D000, v3, OS_LOG_TYPE_ERROR, "SQLiteStorageArea::isEmpty failed on executing statement (%d) - %{public}s", &v9, 0x12u);
  }

  result = 1;
  if (v2)
  {
    goto LABEL_9;
  }

  return result;
}

void WebKit::StorageAreaBase::~StorageAreaBase(WebKit::StorageAreaBase *this, void *a2)
{
  *this = &unk_1F110BC90;
  v3 = *(this + 12);
  if (v3)
  {
    WTF::fastFree((v3 - 16), a2);
  }

  if (!*(this + 88))
  {
    v4 = *(this + 9);
    *(this + 9) = 0;
    if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v4, a2);
    }

    v5 = *(this + 8);
    *(this + 8) = 0;
    if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v5, a2);
    }
  }

  *(this + 88) = -1;
  if (!*(this + 56))
  {
    v6 = *(this + 5);
    *(this + 5) = 0;
    if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v6, a2);
    }

    v7 = *(this + 4);
    *(this + 4) = 0;
    if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v7, a2);
    }
  }

  *(this + 56) = -1;
  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::~WeakPtrFactory(this + 1, a2);
}

uint64_t WebKit::SQLiteStorageArea::prepareDatabase(uint64_t a1, const WTF::String *a2)
{
  v2 = a2;
  v24 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 128);
  if (v4)
  {
    if (*(v4 + 8))
    {
      return 1;
    }

    *(a1 + 128) = 0;
    WebCore::SQLiteDatabase::operator delete();
  }

  v5 = WTF::FileSystemImpl::fileExists((a1 + 112), a2);
  v6 = v5;
  if ((v2 & 1) == 0 && !v5)
  {
    return 1;
  }

  WebKit::createAndOpenDatabase(v21, (a1 + 112), 1);
  if (!v22)
  {
    goto LABEL_7;
  }

  if (v22 != 1)
  {
    mpark::throw_bad_variant_access(v9);
  }

  if (!WebKit::SQLiteStorageArea::handleDatabaseErrorIfNeeded(a1, v21[0]))
  {
LABEL_26:
    v15 = qword_1ED641350;
    if (!os_log_type_enabled(qword_1ED641350, OS_LOG_TYPE_ERROR))
    {
      return 0;
    }

    WTF::String::utf8();
    if (v20)
    {
      v18 = v20 + 16;
    }

    else
    {
      v18 = 0;
    }

    *buf = 136315138;
    *&buf[4] = v18;
    _os_log_error_impl(&dword_19D52D000, v15, OS_LOG_TYPE_ERROR, "SQLiteStorageArea::prepareDatabase failed to open database at '%s'", buf, 0xCu);
    if (v20)
    {
      if (*v20 == 1)
      {
        WTF::fastFree(v20, v19);
      }

      else
      {
        --*v20;
      }
    }

    goto LABEL_30;
  }

  if (!v2)
  {
    return 1;
  }

  WebKit::createAndOpenDatabase(buf, (a1 + 112), 0);
  std::experimental::fundamentals_v3::expected<WTF::UniqueRef<WebCore::SQLiteDatabase>,int>::operator=(v21, buf);
  if (!buf[8] && *buf)
  {
    WebCore::SQLiteDatabase::operator delete();
  }

  if (v22)
  {
    goto LABEL_26;
  }

  v6 = 0;
LABEL_7:
  v10 = *v21;
  *v21 = 0;
  v11 = *(a1 + 128);
  *(a1 + 128) = v10;
  if (v11)
  {
    WebCore::SQLiteDatabase::operator delete();
    v10 = *(a1 + 128);
  }

  if (!v10)
  {
    __break(0xC471u);
    JUMPOUT(0x19DE1E624);
  }

  atomic_fetch_add(v10, 1u);
  if (!atomic_load(v10))
  {
    __break(0xC471u);
    JUMPOUT(0x19DE1E644);
  }

  atomic_fetch_add(v10, 0xFFFFFFFF);
  if (WebKit::SQLiteStorageArea::createTableIfNecessary(a1))
  {
    if ((v6 & 1) == 0)
    {
      if (*(a1 + 168) == 1)
      {
        v17 = *(a1 + 160);
        *(a1 + 160) = 0;
        if (v17)
        {
          WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,mpark::variant<WTF::String,unsigned long long,long long,BOOL,double>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,mpark::variant<WTF::String,unsigned long long,long long,BOOL,double>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,mpark::variant<WTF::String,unsigned long long,long long,BOOL,double>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<mpark::variant<WTF::String,unsigned long long,long long,BOOL,double>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v17, v13);
        }
      }

      else
      {
        *(a1 + 160) = 0;
        *(a1 + 168) = 1;
      }

      if ((*(a1 + 180) & 1) == 0)
      {
        *(a1 + 180) = 1;
      }

      *(a1 + 176) = 0;
    }

    v7 = 1;
    goto LABEL_14;
  }

  v16 = *(a1 + 128);
  *(a1 + 128) = 0;
  if (v16)
  {
    WebCore::SQLiteDatabase::operator delete();
  }

LABEL_30:
  v7 = 0;
LABEL_14:
  if (!v22)
  {
    v14 = *v21;
    *v21 = 0;
    if (v14)
    {
      WebCore::SQLiteDatabase::operator delete();
    }
  }

  return v7;
}

uint64_t WebKit::SQLiteStorageArea::cachedStatement(WebCore::SQLiteStatementAutoResetScope *this, uint64_t a2, unsigned int a3)
{
  v3 = *(a2 + 156);
  if (v3 <= a3)
  {
    goto LABEL_16;
  }

  if (*(*(a2 + 144) + 8 * a3))
  {
    goto LABEL_10;
  }

  v7 = *(a2 + 128);
  if (!v7)
  {
    __break(0xC471u);
    JUMPOUT(0x19DE1E7E8);
  }

  atomic_fetch_add(v7, 1u);
  WebCore::SQLiteDatabase::prepareHeapStatement();
  if (!atomic_load(v7))
  {
    __break(0xC471u);
    JUMPOUT(0x19DE1E808);
  }

  atomic_fetch_add(v7, 0xFFFFFFFF);
  if (!v13)
  {
    if (*(a2 + 156) > a3)
    {
      v9 = *(a2 + 144);
      v10 = *(v9 + 8 * a3);
      *(v9 + 8 * a3) = v12;
      if (v10)
      {
        WebCore::SQLiteStatement::operator delete(v10);
      }

      goto LABEL_9;
    }

LABEL_16:
    __break(0xC471u);
    JUMPOUT(0x19DE1E7C0);
  }

LABEL_9:
  v3 = *(a2 + 156);
LABEL_10:
  if (v3 <= a3)
  {
    __break(0xC471u);
    JUMPOUT(0x19DE1E7C8);
  }

  return WebCore::SQLiteStatementAutoResetScope::SQLiteStatementAutoResetScope(this, *(*(a2 + 144) + 8 * a3));
}

uint64_t *WebKit::SQLiteStorageArea::clear(WebKit::SQLiteStorageArea *this, WTF::StringImpl *a2)
{
  WebKit::SQLiteStorageArea::close(this, a2);
  WebCore::SQLiteFileSystem::deleteDatabaseFile((this + 112), v3);

  return WebKit::StorageAreaBase::notifyListenersAboutClear(this);
}

uint64_t *WebKit::StorageAreaBase::notifyListenersAboutClear(WebKit::StorageAreaBase *this)
{
  result = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::GPUConnectionToWebProcess,WTF::RawPtrTraits<WebKit::GPUConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::GPUConnectionToWebProcess>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::GPUConnectionToWebProcess,WTF::RawPtrTraits<WebKit::GPUConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::GPUConnectionToWebProcess>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::GPUConnectionToWebProcess,WTF::RawPtrTraits<WebKit::GPUConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::GPUConnectionToWebProcess>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::GPUConnectionToWebProcess,WTF::RawPtrTraits<WebKit::GPUConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::GPUConnectionToWebProcess>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::begin(this + 12);
  v3 = result;
  v5 = v4;
  v6 = *(this + 12);
  if (v6)
  {
    v7 = (v6 + 16 * *(v6 - 4));
  }

  else
  {
    v7 = 0;
  }

  if (v7 != result)
  {
    do
    {
      v8 = *v3;
      v9 = v3[1];
      v10 = atomic_fetch_add(&WebKit::StorageAreaBase::nextMessageIdentifier(void)::currentIdentifier, 1uLL) + 1;
      result = IPC::Connection::send<Messages::StorageAreaMap::ClearCache>(v8, &v10, v9, 0, 0);
      do
      {
        v3 += 2;
      }

      while (v3 != v5 && (*v3 + 1) <= 1);
    }

    while (v3 != v7);
  }

  return result;
}

uint64_t WebKit::SQLiteStorageArea::createTableIfNecessary(WebKit::SQLiteStorageArea *this)
{
  v18 = *MEMORY[0x1E69E9840];
  v1 = *(this + 16);
  if (!v1)
  {
    return 0;
  }

  v3 = 1;
  atomic_fetch_add(v1, 1u);
  WebCore::SQLiteDatabase::tableSQL();
  if ((MEMORY[0x19EB01EF0](v13, "CREATE TABLE ItemTable (key TEXT UNIQUE ON CONFLICT REPLACE, value BLOB NOT NULL ON CONFLICT FAIL)", 98) & 1) == 0 && (MEMORY[0x19EB01EF0](v13, "CREATE TABLE IF NOT EXISTS ItemTable (key TEXT UNIQUE ON CONFLICT REPLACE, value BLOB NOT NULL ON CONFLICT FAIL)", 112) & 1) == 0)
  {
    if (v13 && *(v13 + 1) && (WebCore::SQLiteDatabase::executeCommand() & 1) == 0)
    {
      v5 = qword_1ED641350;
      if (!os_log_type_enabled(qword_1ED641350, OS_LOG_TYPE_ERROR))
      {
LABEL_12:
        v3 = 0;
        goto LABEL_13;
      }

      Error = WebCore::SQLiteDatabase::lastError(*(this + 16));
      ErrorMsg = WebCore::SQLiteDatabase::lastErrorMsg(*(this + 16));
      *buf = 67109378;
      v15 = Error;
      v16 = 2082;
      v17 = ErrorMsg;
      v8 = "SQLiteStorageArea::createTableIfNecessary failed to drop existing item table (%d) - %{public}s";
    }

    else
    {
      if (WebCore::SQLiteDatabase::executeCommand())
      {
        goto LABEL_13;
      }

      v5 = qword_1ED641350;
      if (!os_log_type_enabled(qword_1ED641350, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_12;
      }

      v6 = WebCore::SQLiteDatabase::lastError(*(this + 16));
      v7 = WebCore::SQLiteDatabase::lastErrorMsg(*(this + 16));
      *buf = 67109378;
      v15 = v6;
      v16 = 2082;
      v17 = v7;
      v8 = "SQLiteStorageArea::createTableIfNecessary failed to create item table (%d) - %{public}s";
    }

    _os_log_error_impl(&dword_19D52D000, v5, OS_LOG_TYPE_ERROR, v8, buf, 0x12u);
    goto LABEL_12;
  }

LABEL_13:
  if (v13)
  {
    if (atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v13, v4);
    }
  }

  if (atomic_load(v1))
  {
    atomic_fetch_add(v1, 0xFFFFFFFF);
    return v3;
  }

  result = 290;
  __break(0xC471u);
  return result;
}

double WebKit::createAndOpenDatabase(uint64_t a1, void *a2, int a3)
{
  if (*MEMORY[0x1E69E2528])
  {
    NonCompact = bmalloc::api::tzoneAllocateNonCompact(*MEMORY[0x1E69E2528], a2);
  }

  else
  {
    NonCompact = WebCore::SQLiteDatabase::operatorNewSlow(0x40);
  }

  v7 = NonCompact;
  WebCore::SQLiteDatabase::SQLiteDatabase(NonCompact);
  if (a3)
  {
    WTF::FileSystemImpl::parentPath(&v13, a2, v8);
    WTF::FileSystemImpl::makeAllDirectories(&v13, v9);
    v11 = v13;
    v13 = 0;
    if (v11)
    {
      if (atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v11, v10);
      }
    }
  }

  if (WebCore::SQLiteDatabase::open())
  {
    *a1 = v7;
    *(a1 + 8) = 0;
  }

  else
  {
    *a1 = WebCore::SQLiteDatabase::lastError(v7);
    *(a1 + 8) = 1;
    if (v7)
    {
      return WebCore::SQLiteDatabase::operator delete();
    }
  }

  return result;
}

uint64_t WebKit::SQLiteStorageArea::handleDatabaseErrorIfNeeded(WebKit::SQLiteStorageArea *this, WTF::StringImpl *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  if (a2 == 10)
  {
    WebKit::SQLiteStorageArea::close(this, a2);
    return 0;
  }

  if (a2 != 26 && a2 != 11)
  {
    return 0;
  }

  WebKit::SQLiteStorageArea::close(this, a2);
  v3 = qword_1ED641350;
  if (os_log_type_enabled(qword_1ED641350, OS_LOG_TYPE_ERROR))
  {
    WTF::String::utf8();
    if (v7)
    {
      v6 = v7 + 16;
    }

    else
    {
      v6 = 0;
    }

    *buf = 136315138;
    v9 = v6;
    _os_log_error_impl(&dword_19D52D000, v3, OS_LOG_TYPE_ERROR, "SQLiteStorageArea::handleDatabaseCorruption deletes corrupted database file '%s'", buf, 0xCu);
    if (v7)
    {
      if (*v7 == 1)
      {
        WTF::fastFree(v7, v4);
      }

      else
      {
        --*v7;
      }
    }
  }

  WebCore::SQLiteFileSystem::deleteDatabaseFile((this + 112), v4);
  return 1;
}

uint64_t *std::experimental::fundamentals_v3::expected<WTF::UniqueRef<WebCore::SQLiteDatabase>,int>::operator=(uint64_t *a1, uint64_t a2)
{
  LOBYTE(v7) = 0;
  v8 = -1;
  v3 = *(a2 + 8);
  if (*(a2 + 8))
  {
    if (v3 == 255)
    {
      LOBYTE(v9) = 0;
    }

    else
    {
      LODWORD(v7) = *a2;
      v8 = v3;
      LODWORD(v9) = v7;
    }
  }

  else
  {
    v4 = *a2;
    *a2 = 0;
    v8 = 0;
    v7 = 0;
    v9 = v4;
  }

  v10 = v3;
  mpark::variant<WTF::UniqueRef<WebCore::SQLiteDatabase>,int>::operator=(&v7, a1);
  mpark::variant<WTF::UniqueRef<WebCore::SQLiteDatabase>,int>::operator=(a1, &v9);
  if (!v10 && v9)
  {
    WebCore::SQLiteDatabase::operator delete();
  }

  if (!v8)
  {
    v5 = v7;
    v7 = 0;
    if (v5)
    {
      WebCore::SQLiteDatabase::operator delete();
    }
  }

  return a1;
}

WebCore::SQLiteTransaction *WebKit::SQLiteStorageArea::startTransactionIfNecessary(WebKit::SQLiteStorageArea *this, void *a2)
{
  v4 = (this + 136);
  v3 = *(this + 17);
  if (!v3 || WebCore::SQLiteTransaction::wasRolledBackBySqlite(v3))
  {
    v5 = *(this + 16);
    if (!v5 || ((atomic_fetch_add(v5, 1u), !*MEMORY[0x1E69E25F0]) ? (NonCompact = WebCore::SQLiteTransaction::operatorNewSlow(0x10)) : (NonCompact = bmalloc::api::tzoneAllocateNonCompact(*MEMORY[0x1E69E25F0], a2)), v7 = NonCompact, WebCore::SQLiteTransaction::SQLiteTransaction(NonCompact, v5), std::unique_ptr<WebCore::SQLiteTransaction>::reset[abi:sn200100](v4, v7), (v8 = atomic_load(v5)) == 0))
    {
      __break(0xC471u);
      JUMPOUT(0x19DE1EF80);
    }

    atomic_fetch_add(v5, 0xFFFFFFFF);
  }

  result = *v4;
  if ((*(*v4 + 8) & 1) == 0)
  {
    WebCore::SQLiteTransaction::begin(result);
    v10 = *(this + 15);
    WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(this + 2, this);
    v11 = *(this + 1);
    atomic_fetch_add(v11, 1u);
    v12 = WTF::fastMalloc(0x10);
    *v12 = &unk_1F110BE68;
    *(v12 + 1) = v11;
    v13 = v12;
    (*(*v10 + 16))(v10, &v13, 0.5);
    result = v13;
    v13 = 0;
    if (result)
    {
      return (*(*result + 8))(result);
    }
  }

  return result;
}

void WebKit::SQLiteStorageArea::getItem(WebKit::SQLiteStorageArea *this, const WTF::String *a2, const WTF::StringImpl **a3)
{
  if (*(a2 + 168) != 1)
  {
    goto LABEL_7;
  }

  v5 = WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,mpark::variant<WTF::String,unsigned int>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,mpark::variant<WTF::String,unsigned int>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,mpark::variant<WTF::String,unsigned int>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<mpark::variant<WTF::String,unsigned int>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WTF::String,mpark::variant<WTF::String,unsigned int>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<mpark::variant<WTF::String,unsigned int>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::String>>,(WTF::ShouldValidateKey)1,WTF::String>(a2 + 20, a3, a3);
  if ((*(a2 + 168) & 1) == 0)
  {
    __break(1u);
    return;
  }

  v6 = *(a2 + 20);
  if (v6)
  {
    v6 += 24 * *(v6 - 4);
  }

  if (v6 == v5)
  {
    *this = 1;
    *(this + 8) = 1;
    return;
  }

  if (!*(v5 + 16))
  {
    v7 = *(v5 + 8);
    if (v7)
    {
      atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed);
    }

    *this = v7;
    *(this + 8) = 0;
  }

  else
  {
LABEL_7:

    WebKit::SQLiteStorageArea::getItemFromDatabase(this, a2);
  }
}

void WebKit::SQLiteStorageArea::getItemFromDatabase(WebKit::SQLiteStorageArea *this, const WTF::String *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  if ((WebKit::SQLiteStorageArea::prepareDatabase(a2, 0) & 1) == 0)
  {
    goto LABEL_19;
  }

  if (!*(a2 + 16))
  {
LABEL_15:
    *this = 1;
LABEL_20:
    *(this + 8) = 1;
    return;
  }

  WebKit::SQLiteStorageArea::cachedStatement(&v15, a2, 3u);
  v4 = v15;
  if (v15)
  {
    atomic_fetch_add(v15, 1u);
    MEMORY[0x19EB0CD50](&v15);
    if (WebCore::SQLiteStatement::bindText())
    {
      goto LABEL_5;
    }

    v6 = WebCore::SQLiteStatement::step(v4);
    if (v6 == 100)
    {
      WebCore::SQLiteStatement::columnBlobAsString(v4);
      *this = v15;
      *(this + 8) = 0;
      goto LABEL_11;
    }

    if (!atomic_load(v4))
    {
LABEL_22:
      __break(0xC471u);
      return;
    }

    v9 = v6;
    atomic_fetch_add(v4, 0xFFFFFFFF);
    if (v6 == 101)
    {
      goto LABEL_15;
    }

    v10 = qword_1ED641350;
    if (os_log_type_enabled(qword_1ED641350, OS_LOG_TYPE_ERROR))
    {
      Error = WebCore::SQLiteDatabase::lastError(*(a2 + 16));
      ErrorMsg = WebCore::SQLiteDatabase::lastErrorMsg(*(a2 + 16));
      LODWORD(v15) = 67109378;
      HIDWORD(v15) = Error;
      v16 = 2082;
      v17 = ErrorMsg;
      _os_log_error_impl(&dword_19D52D000, v10, OS_LOG_TYPE_ERROR, "SQLiteStorageArea::getItemFromDatabase failed on stepping statement (%d) - %{public}s", &v15, 0x12u);
    }

    WebKit::SQLiteStorageArea::handleDatabaseErrorIfNeeded(a2, v9);
LABEL_19:
    *this = 0;
    goto LABEL_20;
  }

  MEMORY[0x19EB0CD50](&v15);
LABEL_5:
  v5 = qword_1ED641350;
  if (os_log_type_enabled(qword_1ED641350, OS_LOG_TYPE_ERROR))
  {
    v11 = WebCore::SQLiteDatabase::lastError(*(a2 + 16));
    v12 = WebCore::SQLiteDatabase::lastErrorMsg(*(a2 + 16));
    LODWORD(v15) = 67109378;
    HIDWORD(v15) = v11;
    v16 = 2082;
    v17 = v12;
    _os_log_error_impl(&dword_19D52D000, v5, OS_LOG_TYPE_ERROR, "SQLiteStorageArea::getItemFromDatabase failed on creating statement (%d) - %{public}s", &v15, 0x12u);
  }

  *this = 0;
  *(this + 8) = 1;
  if (v4)
  {
LABEL_11:
    if (atomic_load(v4))
    {
      atomic_fetch_add(v4, 0xFFFFFFFF);
      return;
    }

    goto LABEL_22;
  }
}

WTF::StringImpl *WebKit::SQLiteStorageArea::allItems@<X0>(WebKit::SQLiteStorageArea *this@<X0>, uint64_t *a2@<X8>)
{
  v49 = *MEMORY[0x1E69E9840];
  result = WebKit::SQLiteStorageArea::prepareDatabase(this, 0);
  if (!result || !*(this + 16))
  {
    *a2 = 0;
    return result;
  }

  v44 = 0;
  v5 = (this + 160);
  if (*(this + 168) == 1)
  {
    if (*v5)
    {
      v6 = *(*v5 - 12);
    }

    else
    {
      v6 = 0;
    }

    WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::reserveInitialCapacity(&v44, v6);
    if (*(this + 168))
    {
      v7 = *v5;
      v8 = WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::begin(*v5);
      if (v7)
      {
        v10 = *(v7 - 4);
        v11 = v7 + 24 * v10;
      }

      else
      {
        v11 = 0;
        v10 = 0;
      }

      *v45 = this + 160;
      *&v46 = v8;
      *(&v46 + 1) = v9;
      v47 = v11;
      v48 = v7 + 24 * v10;
      v42 = 0;
      v43 = 0;
      WTF::Mapper<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> WTF::copyToVectorOf<WTF::String,WTF::SizedIteratorRange<WTF::HashMap<WTF::String,mpark::variant<WTF::String,unsigned int>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<mpark::variant<WTF::String,unsigned int>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::HashTableKeysIterator<WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,mpark::variant<WTF::String,unsigned int>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,mpark::variant<WTF::String,unsigned int>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,mpark::variant<WTF::String,unsigned int>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<mpark::variant<WTF::String,unsigned int>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>,WTF::String,mpark::variant<WTF::String,unsigned int>>>>(WTF::SizedIteratorRange<WTF::HashMap<WTF::String,mpark::variant<WTF::String,unsigned int>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<mpark::variant<WTF::String,unsigned int>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::HashTableKeysIterator<WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,mpark::variant<WTF::String,unsigned int>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,mpark::variant<WTF::String,unsigned int>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,mpark::variant<WTF::String,unsigned int>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<mpark::variant<WTF::String,unsigned int>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>,WTF::String,mpark::variant<WTF::String,unsigned int>>> const&)::{lambda(WTF::String&&)#1},WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::SizedIteratorRange<WTF::HashMap<WTF::String,mpark::variant<WTF::String,unsigned int>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<mpark::variant<WTF::String,unsigned int>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::HashTableKeysIterator<WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,mpark::variant<WTF::String,unsigned int>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,mpark::variant<WTF::String,unsigned int>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,mpark::variant<WTF::String,unsigned int>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<mpark::variant<WTF::String,unsigned int>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>,WTF::String,mpark::variant<WTF::String,unsigned int>>> const&,void>::map(&v42, v45);
      if (HIDWORD(v43))
      {
        v14 = v42;
        v15 = *a2;
        v16 = 8 * HIDWORD(v43);
        while ((*(this + 168) & 1) != 0)
        {
          v17 = WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,mpark::variant<WTF::String,unsigned int>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,mpark::variant<WTF::String,unsigned int>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,mpark::variant<WTF::String,unsigned int>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<mpark::variant<WTF::String,unsigned int>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WTF::String,mpark::variant<WTF::String,unsigned int>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<mpark::variant<WTF::String,unsigned int>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::String>>,(WTF::ShouldValidateKey)1,WTF::String>(this + 20, v14, v13);
          if ((*(this + 168) & 1) == 0)
          {
            *a2 = v15;
            goto LABEL_70;
          }

          v18 = *v5;
          if (*v5)
          {
            v18 += 24 * *(v18 - 4);
          }

          if (v18 == v17)
          {
            *a2 = v15;
            __break(0xC471u);
            goto LABEL_77;
          }

          if (*(v17 + 16))
          {
            WebKit::SQLiteStorageArea::getItemFromDatabase(&v39, this);
            v19 = v40;
            if (v40)
            {
              v20 = qword_1ED641350;
              v21 = os_log_type_enabled(qword_1ED641350, OS_LOG_TYPE_ERROR);
              if (!v21)
              {
                goto LABEL_65;
              }

              if (v19 != 1)
              {
                *a2 = v15;
                mpark::throw_bad_variant_access(v21);
              }

              *buf = 16777472;
              buf[4] = v39;
              _os_log_error_impl(&dword_19D52D000, v20, OS_LOG_TYPE_ERROR, "SQLiteStorageArea::allItems failed during read from cache (%hhu){public}s", buf, 5u);
              v15 = 0;
            }

            else
            {
              WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<WTF::String&>(&v44, v14, &v39, buf);
            }

            if (!v40)
            {
              v22 = v39;
              v39 = 0;
              if (v22)
              {
                if (atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v22, v12);
                }
              }
            }

            if (v19)
            {
              goto LABEL_66;
            }
          }

          else
          {
            WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<WTF::String&>(&v44, v14, (v17 + 8), buf);
          }

          ++v14;
          v16 -= 8;
          if (!v16)
          {
            goto LABEL_60;
          }
        }

        v32 = qword_1ED641350;
        if (os_log_type_enabled(qword_1ED641350, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_19D52D000, v32, OS_LOG_TYPE_ERROR, "SQLiteStorageArea::allItems cache deleted during read from cache", buf, 2u);
        }

LABEL_65:
        v15 = 0;
LABEL_66:
        *a2 = v15;
        WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v42, v12);
        goto LABEL_67;
      }

LABEL_60:
      result = WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v42, v12);
LABEL_59:
      *a2 = v44;
      return result;
    }

LABEL_70:
    __break(1u);
  }

  else
  {
    WebKit::SQLiteStorageArea::cachedStatement(v45, this, 4u);
    v23 = *v45;
    if (*v45)
    {
      atomic_fetch_add(*v45, 1u);
      MEMORY[0x19EB0CD50](v45);
      if (*(this + 168) == 1)
      {
        v25 = *v5;
        *v5 = 0;
        if (v25)
        {
          WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,mpark::variant<WTF::String,unsigned long long,long long,BOOL,double>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,mpark::variant<WTF::String,unsigned long long,long long,BOOL,double>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,mpark::variant<WTF::String,unsigned long long,long long,BOOL,double>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<mpark::variant<WTF::String,unsigned long long,long long,BOOL,double>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v25, v24);
        }
      }

      else
      {
        *(this + 20) = 0;
        *(this + 168) = 1;
      }

      if ((*(this + 180) & 1) == 0)
      {
        *(this + 180) = 1;
      }

      *(this + 44) = 0;
      result = WebCore::SQLiteStatement::step(v23);
      if (result == 100)
      {
        do
        {
          WebCore::SQLiteStatement::columnText(v23);
          WebCore::SQLiteStatement::columnBlobAsString(v23);
          if (*buf)
          {
            v26 = v42 == 0;
          }

          else
          {
            v26 = 1;
          }

          if (!v26)
          {
            WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<WTF::String&>(&v44, buf, &v42, v45);
            WebKit::SQLiteStorageArea::updateCacheIfNeeded(this, buf, &v42);
          }

          v28 = WebCore::SQLiteStatement::step(v23);
          v29 = v42;
          v42 = 0;
          if (v29 && atomic_fetch_add_explicit(v29, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v29, v27);
          }

          result = *buf;
          *buf = 0;
          if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            result = WTF::StringImpl::destroy(result, v27);
          }
        }

        while (v28 == 100);
      }

      else
      {
        v28 = result;
      }

      if (!atomic_load(v23))
      {
        __break(0xC471u);
LABEL_77:
        JUMPOUT(0x19DE1F828);
      }

      atomic_fetch_add(v23, 0xFFFFFFFF);
      if (v28 != 101)
      {
        v31 = qword_1ED641350;
        if (os_log_type_enabled(qword_1ED641350, OS_LOG_TYPE_ERROR))
        {
          Error = WebCore::SQLiteDatabase::lastError(*(this + 16));
          ErrorMsg = WebCore::SQLiteDatabase::lastErrorMsg(*(this + 16));
          *v45 = 67109378;
          *&v45[4] = Error;
          LOWORD(v46) = 2082;
          *(&v46 + 2) = ErrorMsg;
          _os_log_error_impl(&dword_19D52D000, v31, OS_LOG_TYPE_ERROR, "SQLiteStorageArea::allItems failed on executing statement (%d) - %{public}s", v45, 0x12u);
        }

        result = WebKit::SQLiteStorageArea::handleDatabaseErrorIfNeeded(this, v28);
      }

      goto LABEL_59;
    }
  }

  MEMORY[0x19EB0CD50](v45);
  v36 = qword_1ED641350;
  if (os_log_type_enabled(qword_1ED641350, OS_LOG_TYPE_ERROR))
  {
    v37 = WebCore::SQLiteDatabase::lastError(*(this + 16));
    v38 = WebCore::SQLiteDatabase::lastErrorMsg(*(this + 16));
    *v45 = 67109378;
    *&v45[4] = v37;
    LOWORD(v46) = 2082;
    *(&v46 + 2) = v38;
    _os_log_error_impl(&dword_19D52D000, v36, OS_LOG_TYPE_ERROR, "SQLiteStorageArea::allItems failed on creating statement (%d) - %{public}s", v45, 0x12u);
  }

  *a2 = 0;
LABEL_67:
  result = v44;
  if (v44)
  {
    return WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v44, v33);
  }

  return result;
}

uint64_t WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<WTF::String&>@<X0>(uint64_t *a1@<X0>, WTF::StringImpl **a2@<X1>, atomic_uint **a3@<X2>, uint64_t a4@<X8>)
{
  v25 = a3;
  if (*a2 == -1)
  {
    __break(0xC471u);
    JUMPOUT(0x19DE1FA10);
  }

  if (!*a2)
  {
    __break(0xC471u);
    JUMPOUT(0x19DE1FA30);
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
    v14 = (v7 + 16 * (v10 & v8));
    v15 = *v14;
    if (*v14 != -1)
    {
      break;
    }

    v11 = (v7 + 16 * v13);
LABEL_14:
    v10 = i + v13;
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

    result = WTF::HashMapTranslator<WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::String>>::translate<WTF::String const&,WTF::KeyValuePair<WTF::String,WTF::String>,WTF::HashTableAddResult<WTF::HashTableIterator<WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>,WTF::String,WTF::KeyValuePair<WTF::String,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>>> WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineAdd<WTF::String const&,WTF::String&>(WTF::String const&,WTF::String&)::{lambda(void)#1}>(v14, a2, &v25);
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
    v23 = (*(v17 - 16) + v18);
    v24 = *(v17 - 4);
    if (v24 > 0x400)
    {
      if (v24 <= 2 * v23)
      {
LABEL_25:
        result = WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::expand(a1, v14);
        v14 = result;
        v17 = *a1;
        if (*a1)
        {
          v24 = *(v17 - 4);
        }

        else
        {
          v24 = 0;
        }
      }
    }

    else if (3 * v24 <= 4 * v23)
    {
      goto LABEL_25;
    }

    v22 = v17 + 16 * v24;
    v21 = 1;
    goto LABEL_28;
  }

  result = WTF::equal(v15, *a2, a3);
  if (!result)
  {
    goto LABEL_14;
  }

  v19 = *a1;
  if (*a1)
  {
    v20 = *(v19 - 4);
  }

  else
  {
    v20 = 0;
  }

  v21 = 0;
  v22 = v19 + 16 * v20;
LABEL_28:
  *a4 = v14;
  *(a4 + 8) = v22;
  *(a4 + 16) = v21;
  return result;
}

uint64_t WebKit::SQLiteStorageArea::updateCacheIfNeeded(uint64_t this, const WTF::StringImpl **a2, const WTF::String *a3)
{
  v87 = *MEMORY[0x1E69E9840];
  if (*(this + 168) != 1)
  {
    return this;
  }

  v5 = this;
  this = WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,mpark::variant<WTF::String,unsigned int>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,mpark::variant<WTF::String,unsigned int>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,mpark::variant<WTF::String,unsigned int>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<mpark::variant<WTF::String,unsigned int>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WTF::String,mpark::variant<WTF::String,unsigned int>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<mpark::variant<WTF::String,unsigned int>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::String>>,(WTF::ShouldValidateKey)1,WTF::String>((this + 160), a2, a3);
  if ((*(v5 + 168) & 1) == 0)
  {
    goto LABEL_165;
  }

  v7 = *(v5 + 160);
  v8 = v7 ? v7 + 24 * *(v7 - 4) : 0;
  v9 = *a2;
  v10 = *a2 ? *(v9 + 1) << (((*(v9 + 4) >> 2) & 1) == 0) : 0;
  v11 = *a3;
  v12 = *a3 ? *(v11 + 4) << (((*(v11 + 16) >> 2) & 1) == 0) : 0;
  if (v8 == this)
  {
    v14 = 0;
    v15 = 0;
    v13 = v10;
  }

  else
  {
    v13 = *this ? *(*this + 4) << (((*(*this + 16) >> 2) & 1) == 0) : 0;
    if (*(this + 16) == 1)
    {
      v14 = *(this + 8);
    }

    else
    {
      if (*(this + 16))
      {
        goto LABEL_166;
      }

      v16 = *(this + 8);
      v14 = v16 ? *(v16 + 4) << (((*(v16 + 16) >> 2) & 1) == 0) : 0;
    }

    v15 = v13;
  }

  if ((*(v5 + 180) & 1) == 0)
  {
LABEL_165:
    __break(1u);
LABEL_166:
    mpark::throw_bad_variant_access(this);
  }

  v17 = *(v5 + 176);
  if (!v11)
  {
    this = WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,mpark::variant<WTF::String,unsigned int>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,mpark::variant<WTF::String,unsigned int>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,mpark::variant<WTF::String,unsigned int>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<mpark::variant<WTF::String,unsigned int>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WTF::String,mpark::variant<WTF::String,unsigned int>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<mpark::variant<WTF::String,unsigned int>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::String>>,(WTF::ShouldValidateKey)1,WTF::String>((v5 + 160), a2, v6);
    v28 = this;
    v29 = *(v5 + 160);
    if (v29)
    {
      v30 = v29 + 24 * *(v29 - 4);
      if (v30 == this)
      {
        goto LABEL_95;
      }
    }

    else
    {
      if (!this)
      {
        goto LABEL_95;
      }

      v30 = 0;
    }

    if (v30 != this)
    {
      v48 = *this;
      *v28 = -1;
      if (v48 && atomic_fetch_add_explicit(v48, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v48, v27);
      }

      this = mpark::detail::move_constructor<mpark::detail::traits<WebCore::RouterSourceDict,WebCore::RouterSourceEnum>,(mpark::detail::Trait)1>::~move_constructor((v28 + 1), v27);
      v49 = *(v5 + 160);
      v50 = vadd_s32(*(v49 - 16), 0xFFFFFFFF00000001);
      *(v49 - 16) = v50;
      v51 = *(v49 - 4);
      v52 = 6 * v50.i32[1] < v51 && v51 >= 9;
      if (v52)
      {
        this = WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,mpark::variant<WTF::String,unsigned int>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,mpark::variant<WTF::String,unsigned int>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,mpark::variant<WTF::String,unsigned int>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<mpark::variant<WTF::String,unsigned int>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::rehash((v5 + 160), v51 >> 1);
      }
    }

LABEL_95:
    v53 = v17 - v15;
    if (v17 < v15)
    {
      v53 = v17;
    }

    v52 = v53 >= v14;
    v54 = v53 - v14;
    if (!v52 || v17 < v15)
    {
      goto LABEL_126;
    }

    goto LABEL_130;
  }

  v76 = v14;
  v77 = v10;
  v74 = *(v5 + 176);
  v75 = v15;
  v73 = v13;
  if (v12 >= 0x401)
  {
    if (v9 == -1)
    {
      __break(0xC471u);
      JUMPOUT(0x19DE201FCLL);
    }

    if (!v9)
    {
      __break(0xC471u);
      JUMPOUT(0x19DE2021CLL);
    }

    if (v7 || (WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,mpark::variant<WTF::String,unsigned int>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,mpark::variant<WTF::String,unsigned int>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,mpark::variant<WTF::String,unsigned int>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<mpark::variant<WTF::String,unsigned int>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::expand((v5 + 160)), (v7 = *(v5 + 160)) != 0))
    {
      v18 = *(v7 - 8);
    }

    else
    {
      v18 = 0;
    }

    v19 = *(*a2 + 4);
    if (v19 < 0x100)
    {
      v20 = WTF::StringImpl::hashSlowCase(*a2);
    }

    else
    {
      v20 = v19 >> 8;
    }

    v21 = 0;
    for (i = 1; ; ++i)
    {
      v23 = v20 & v18;
      v24 = v7 + 24 * (v20 & v18);
      v25 = *v24;
      if (*v24 == -1)
      {
        v21 = v7 + 24 * v23;
      }

      else
      {
        if (!v25)
        {
          if (v21)
          {
            *v21 = 0;
            *(v21 + 8) = 0;
            *(v21 + 16) = 0;
            --*(*(v5 + 160) - 16);
            v24 = v21;
          }

          WTF::String::operator=(v24, a2);
          *buf = v12;
          LOBYTE(v79) = 1;
          this = WTF::GenericHashTraits<mpark::variant<WTF::String,unsigned int>>::assignToEmpty<mpark::variant<WTF::String,unsigned int>,mpark::variant<WTF::String,unsigned int>>((v24 + 8), buf);
          v15 = v75;
          v10 = v77;
          if (!v79)
          {
            this = *buf;
            if (*buf)
            {
              if (atomic_fetch_add_explicit(*buf, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                this = WTF::StringImpl::destroy(this, v39);
              }
            }
          }

          v40 = *(v5 + 160);
          v14 = v76;
          v41 = v74;
          if (v40)
          {
            v42 = *(v40 - 12) + 1;
          }

          else
          {
            v42 = 1;
          }

          *(v40 - 12) = v42;
          v55 = (*(v40 - 16) + v42);
          v56 = *(v40 - 4);
          if (v56 > 0x400)
          {
            if (v56 > 2 * v55)
            {
              goto LABEL_115;
            }
          }

          else if (3 * v56 > 4 * v55)
          {
            goto LABEL_115;
          }

          v57 = (v5 + 160);
          goto LABEL_109;
        }

        this = WTF::equal(v25, *a2, v6);
        if (this)
        {
          if (*(v24 + 16))
          {
            v15 = v75;
            v14 = v76;
            v10 = v77;
            v41 = v74;
            if (*(v24 + 16) == 1)
            {
              *(v24 + 8) = v12;
              goto LABEL_115;
            }
          }

          else
          {
            this = *(v24 + 8);
            *(v24 + 8) = 0;
            v15 = v75;
            v14 = v76;
            v10 = v77;
            v41 = v74;
            if (this && atomic_fetch_add_explicit(this, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              this = WTF::StringImpl::destroy(this, v26);
            }
          }

          *(v24 + 8) = v12;
          *(v24 + 16) = 1;
          goto LABEL_115;
        }
      }

      v20 = i + v23;
    }
  }

  if (v9 == -1)
  {
    __break(0xC471u);
    JUMPOUT(0x19DE2023CLL);
  }

  if (!v9)
  {
    __break(0xC471u);
    goto LABEL_173;
  }

  if (v7 || (WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,mpark::variant<WTF::String,unsigned int>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,mpark::variant<WTF::String,unsigned int>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,mpark::variant<WTF::String,unsigned int>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<mpark::variant<WTF::String,unsigned int>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::expand((v5 + 160)), (v7 = *(v5 + 160)) != 0))
  {
    v31 = *(v7 - 8);
  }

  else
  {
    v31 = 0;
  }

  v32 = *(*a2 + 4);
  if (v32 < 0x100)
  {
    v33 = WTF::StringImpl::hashSlowCase(*a2);
  }

  else
  {
    v33 = v32 >> 8;
  }

  v34 = 0;
  for (j = 1; ; ++j)
  {
    v36 = v33 & v31;
    v37 = v7 + 24 * (v33 & v31);
    v38 = *v37;
    if (*v37 == -1)
    {
      v34 = v7 + 24 * v36;
      goto LABEL_57;
    }

    if (!v38)
    {
      break;
    }

    this = WTF::equal(v38, *a2, v6);
    if (this)
    {
      if (*(v37 + 16))
      {
        *(v37 + 16) = -1;
        v47 = *a3;
        v14 = v76;
        v10 = v77;
        v41 = v74;
        v15 = v75;
        if (*a3)
        {
          atomic_fetch_add_explicit(v47, 2u, memory_order_relaxed);
        }

        *(v37 + 8) = v47;
        *(v37 + 16) = 0;
      }

      else
      {
        this = WTF::String::operator=((v37 + 8), a3);
        v14 = v76;
        v10 = v77;
        v41 = v74;
        v15 = v75;
      }

      goto LABEL_115;
    }

LABEL_57:
    v33 = j + v36;
  }

  if (v34)
  {
    *v34 = 0;
    *(v34 + 8) = 0;
    *(v34 + 16) = 0;
    --*(*(v5 + 160) - 16);
    v37 = v34;
  }

  WTF::String::operator=(v37, a2);
  v43 = *a3;
  v14 = v76;
  v10 = v77;
  v41 = v74;
  if (*a3)
  {
    atomic_fetch_add_explicit(v43, 2u, memory_order_relaxed);
  }

  *buf = v43;
  LOBYTE(v79) = 0;
  this = WTF::GenericHashTraits<mpark::variant<WTF::String,unsigned int>>::assignToEmpty<mpark::variant<WTF::String,unsigned int>,mpark::variant<WTF::String,unsigned int>>((v37 + 8), buf);
  v15 = v75;
  if (!v79)
  {
    this = *buf;
    if (*buf)
    {
      if (atomic_fetch_add_explicit(*buf, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        this = WTF::StringImpl::destroy(this, v44);
      }
    }
  }

  v45 = *(v5 + 160);
  if (v45)
  {
    v46 = *(v45 - 12) + 1;
  }

  else
  {
    v46 = 1;
  }

  *(v45 - 12) = v46;
  v58 = (*(v45 - 16) + v46);
  v59 = *(v45 - 4);
  if (v59 > 0x400)
  {
    if (v59 > 2 * v58)
    {
      goto LABEL_115;
    }
  }

  else if (3 * v59 > 4 * v58)
  {
    goto LABEL_115;
  }

  v57 = (v5 + 160);
LABEL_109:
  this = WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,mpark::variant<WTF::String,unsigned int>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,mpark::variant<WTF::String,unsigned int>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,mpark::variant<WTF::String,unsigned int>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<mpark::variant<WTF::String,unsigned int>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::expand(v57);
LABEL_115:
  v60 = v41 - v15;
  if (v41 < v15)
  {
    v60 = v41;
  }

  v61 = v60 < v14;
  if (v60 >= v14)
  {
    v60 -= v14;
  }

  v62 = __CFADD__(v60, v73);
  if (!__CFADD__(v60, v73))
  {
    v60 += v73;
  }

  v52 = __CFADD__(v60, v12);
  v54 = v60 + v12;
  if (!v52 && !v62 && !v61 && v41 >= v15)
  {
LABEL_130:
    v67 = 1;
    goto LABEL_149;
  }

LABEL_126:
  v63 = qword_1ED641350;
  this = os_log_type_enabled(qword_1ED641350, OS_LOG_TYPE_ERROR);
  if (!this)
  {
    goto LABEL_127;
  }

  if ((*(v5 + 180) & 1) == 0)
  {
    goto LABEL_165;
  }

  v72 = *(v5 + 176);
  *buf = 67110144;
  *&buf[4] = v72;
  v79 = 1024;
  v80 = v15;
  v81 = 1024;
  v82 = v14;
  v83 = 1024;
  v84 = v10;
  v85 = 1024;
  v86 = v12;
  _os_log_error_impl(&dword_19D52D000, v63, OS_LOG_TYPE_ERROR, "SQLiteStorageArea::updateCacheIfNeeded newCacheSize has overflowed: cacheSize - %u, oldKeySize - %u, oldValueSize - %u, keySize - %u, valueSize - %u, will recompute", buf, 0x20u);
LABEL_127:
  if ((*(v5 + 168) & 1) == 0)
  {
    goto LABEL_165;
  }

  v64 = *(v5 + 160);
  this = WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::begin(v64);
  if (v64)
  {
    v66 = &v64[3 * *(v64 - 1)];
  }

  else
  {
    v66 = 0;
  }

  v67 = 1;
  if (v66 == this)
  {
    v54 = 0;
  }

  else
  {
    v54 = 0;
    v68 = 0;
    do
    {
      if (*(this + 16) == 1)
      {
        LODWORD(v69) = *(this + 8);
      }

      else
      {
        if (*(this + 16))
        {
          goto LABEL_166;
        }

        v69 = *(this + 8);
        if (v69)
        {
          LODWORD(v69) = *(v69 + 4) << ((*(v69 + 16) & 4) == 0);
        }
      }

      v70 = __CFADD__(v54, v69);
      v71 = v54 + v69;
      if (v70)
      {
        v68 = 1;
      }

      if (!v70)
      {
        v54 = v71;
      }

      do
      {
        this += 24;
      }

      while (this != v65 && (*this + 1) <= 1);
    }

    while (this != v66);
    v67 = v68 == 0;
  }

LABEL_149:
  if (*(v5 + 180) == 1)
  {
    if (v67)
    {
      *(v5 + 176) = v54;
      return this;
    }

    __break(0xC471u);
LABEL_173:
    JUMPOUT(0x19DE201D4);
  }

  if (!v67)
  {
    __break(0xC471u);
    JUMPOUT(0x19DE201DCLL);
  }

  *(v5 + 176) = v54;
  *(v5 + 180) = 1;
  return this;
}

uint64_t WebKit::SQLiteStorageArea::setItem@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, char a5@<W4>, const WTF::StringImpl **a6@<X5>, const WTF::String *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v52 = *MEMORY[0x1E69E9840];
  result = WebKit::SQLiteStorageArea::prepareDatabase(a1, 1);
  if ((result & 1) == 0)
  {
    v24 = 256;
LABEL_36:
    *a9 = v24;
    return result;
  }

  if (*(a1 + 168))
  {
    if (!*a7)
    {
      goto LABEL_38;
    }

    if ((*(a1 + 180) & 1) == 0 || (v9 = *(a1 + 176), result = WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,mpark::variant<WTF::String,unsigned int>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,mpark::variant<WTF::String,unsigned int>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,mpark::variant<WTF::String,unsigned int>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<mpark::variant<WTF::String,unsigned int>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WTF::String,mpark::variant<WTF::String,unsigned int>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<mpark::variant<WTF::String,unsigned int>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::String>>,(WTF::ShouldValidateKey)1,WTF::String>((a1 + 160), a6, v21), (*(a1 + 168) & 1) == 0))
    {
      __break(1u);
      goto LABEL_70;
    }

    v22 = *(a1 + 160);
    if (v22)
    {
      v22 += 24 * *(v22 - 4);
    }

    if (v22 == result)
    {
      v28 = *a6;
      if (*a6)
      {
        LODWORD(v28) = *(v28 + 1) << ((*(v28 + 4) & 4) == 0);
      }

      v29 = v9 + v28;
      v30 = __CFADD__(v9, v28);
    }

    else
    {
      if (*(result + 16) == 1)
      {
        LODWORD(v23) = *(result + 8);
      }

      else
      {
        if (*(result + 16))
        {
          goto LABEL_71;
        }

        v23 = *(result + 8);
        if (v23)
        {
          LODWORD(v23) = *(v23 + 4) << ((*(v23 + 16) & 4) == 0);
        }
      }

      v29 = v9 - v23;
      v30 = v9 < v23;
    }

    if (v30)
    {
      v29 = v9;
    }

    v31 = *a7;
    if (*a7)
    {
      LODWORD(v31) = *(v31 + 4) << ((*(v31 + 16) & 4) == 0);
    }

    v32 = __CFADD__(v29, v31);
    v27 = v29 + v31;
    v33 = v32;
    if ((v33 | v30))
    {
      goto LABEL_35;
    }
  }

  else
  {
    v25 = *a6;
    if (*a6)
    {
      LODWORD(v25) = *(v25 + 1) << ((*(v25 + 4) & 4) == 0);
    }

    v26 = *a7;
    if (*a7)
    {
      LODWORD(v26) = *(v26 + 4) << ((*(v26 + 16) & 4) == 0);
    }

    v27 = v26 + v25;
  }

  if (v27 > *(a1 + 24))
  {
LABEL_35:
    v24 = 258;
    goto LABEL_36;
  }

LABEL_38:
  WebKit::SQLiteStorageArea::startTransactionIfNecessary(a1, v20);
  WebKit::SQLiteStorageArea::getItem(&v47, a1, a6);
  v46 = 0;
  if (v48 != 1)
  {
    if (!v48)
    {
      v35 = v47;
      if (v47)
      {
        atomic_fetch_add_explicit(v47, 2u, memory_order_relaxed);
      }

      v46 = v35;
LABEL_44:
      WebKit::SQLiteStorageArea::cachedStatement(buf, a1, 5u);
      v9 = *buf;
      if (*buf)
      {
        atomic_fetch_add(*buf, 1u);
        MEMORY[0x19EB0CD50](buf);
        if (!WebCore::SQLiteStatement::bindText() && !WebCore::SQLiteStatement::bindBlob(v9, 2, a7))
        {
          v38 = WebCore::SQLiteStatement::step(v9);
          if (atomic_load(v9))
          {
            atomic_fetch_add(v9, 0xFFFFFFFF);
            if (v38 == 101)
            {
              if (a3 & 1) != 0 && (a5)
              {
                WebKit::StorageAreaBase::dispatchEvents(a1, a2, a4, a6, &v46, a7, a8);
              }

              WebKit::SQLiteStorageArea::updateCacheIfNeeded(a1, a6, a7);
              *a9 = 0;
            }

            else
            {
              v40 = v38;
              v41 = qword_1ED641350;
              if (os_log_type_enabled(qword_1ED641350, OS_LOG_TYPE_ERROR))
              {
                Error = WebCore::SQLiteDatabase::lastError(*(a1 + 128));
                ErrorMsg = WebCore::SQLiteDatabase::lastErrorMsg(*(a1 + 128));
                *buf = 67109378;
                *&buf[4] = Error;
                v50 = 2082;
                v51 = ErrorMsg;
                _os_log_error_impl(&dword_19D52D000, v41, OS_LOG_TYPE_ERROR, "SQLiteStorageArea::setItem failed on stepping statement (%d) - %{public}s", buf, 0x12u);
              }

              WebKit::SQLiteStorageArea::handleDatabaseErrorIfNeeded(a1, v40);
              *a9 = 256;
            }

            goto LABEL_53;
          }

          goto LABEL_72;
        }

LABEL_47:
        v36 = qword_1ED641350;
        if (os_log_type_enabled(qword_1ED641350, OS_LOG_TYPE_ERROR))
        {
          v42 = WebCore::SQLiteDatabase::lastError(*(a1 + 128));
          v43 = WebCore::SQLiteDatabase::lastErrorMsg(*(a1 + 128));
          *buf = 67109378;
          *&buf[4] = v42;
          v50 = 2082;
          v51 = v43;
          _os_log_error_impl(&dword_19D52D000, v36, OS_LOG_TYPE_ERROR, "SQLiteStorageArea::setItem failed on creating statement (%d) - %{public}s", buf, 0x12u);
        }

        *a9 = 256;
        if (!v9)
        {
          goto LABEL_53;
        }

        if (atomic_load(v9))
        {
          atomic_fetch_add(v9, 0xFFFFFFFF);
          goto LABEL_53;
        }

LABEL_72:
        result = 290;
        __break(0xC471u);
        return result;
      }

LABEL_70:
      MEMORY[0x19EB0CD50](buf);
      goto LABEL_47;
    }

LABEL_71:
    mpark::throw_bad_variant_access(result);
  }

  if (v47 == 1)
  {
    goto LABEL_44;
  }

  *a9 = v47;
  *(a9 + 1) = 1;
LABEL_53:
  result = v46;
  v46 = 0;
  if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    result = WTF::StringImpl::destroy(result, v34);
  }

  if (!v48)
  {
    result = v47;
    if (v47)
    {
      if (atomic_fetch_add_explicit(v47, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(result, v34);
      }
    }
  }

  return result;
}