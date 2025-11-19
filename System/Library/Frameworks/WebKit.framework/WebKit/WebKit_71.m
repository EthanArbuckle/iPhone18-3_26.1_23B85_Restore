void sub_19D93F1A8(_Unwind_Exception *a1, WTF::StringImpl *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39)
{
  v43 = *(v39 + 120);
  *(v39 + 120) = 0;
  if (v43 && atomic_fetch_add(v43 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v43 + 2);
    (*(*v43 + 8))(v43);
  }

  v44 = *(v39 + 112);
  *(v39 + 112) = 0;
  if (v44)
  {
    (*(*v44 + 8))(v44);
  }

  v45 = *(v39 + 104);
  *(v39 + 104) = 0;
  if (v45)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::NetworkDataTask,(WTF::DestructionThread)1>::deref((v45 + 8));
  }

  v46 = *(v39 + 40);
  *(v39 + 40) = 0;
  if (v46 && atomic_fetch_add_explicit(v46, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v46, a2);
  }

  v47 = *(v39 + 32);
  *(v39 + 32) = 0;
  if (v47 && atomic_fetch_add(v47 + 36, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v47 + 36);
    (*(*v47 + 24))(v47);
  }

  v48 = *(v39 + 24);
  *(v39 + 24) = 0;
  if (v48)
  {
    if (v48[4] == 1)
    {
      (*(*v48 + 24))(v48);
    }

    else
    {
      --v48[4];
    }
  }

  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::~WeakPtrFactory(v40, a2);
  if (*(v39 + 16) == 1)
  {
    WTF::fastFree(v39, v49);
    if (LOBYTE(STACK[0xCA0]) == 1)
    {
      v53 = STACK[0xC98];
      STACK[0xC98] = 0;
      if (v53)
      {
      }
    }

    WTF::Vector<WTF::RefPtr<WebCore::BlobDataFileReference,WTF::RawPtrTraits<WebCore::BlobDataFileReference>,WTF::DefaultRefDerefTraits<WebCore::BlobDataFileReference>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v41 + 3184, v50);
    if (LOBYTE(STACK[0xC60]) == 1)
    {
      WebKit::NavigationActionData::~NavigationActionData((v41 + 256), v51);
    }

    if (a39)
    {
    }

    WebCore::ResourceRequestBase::~ResourceRequestBase((v41 + 48));
    if (a13)
    {
      WTF::ThreadSafeRefCounted<WebCore::SecurityOrigin,(WTF::DestructionThread)0>::deref(a13, v52);
    }

    if (a12)
    {
      WTF::ThreadSafeRefCounted<WebCore::SecurityOrigin,(WTF::DestructionThread)0>::deref(a12, v52);
    }

    _Unwind_Resume(a1);
  }

  __break(0xC471u);
  JUMPOUT(0x19D93F334);
}

void WebKit::NetworkSessionCocoa::dataTaskWithRequest(uint64_t a1, WebKit::AuxiliaryProcess *a2, WebCore::ResourceRequestBase *a3, unsigned __int8 *a4, uint64_t *a5)
{
  IdentifierInternal = WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>::generateIdentifierInternal();
  WebCore::ResourceRequestBase::url(a3);
  if (!WTF::URL::protocolIs())
  {
    v18 = WebCore::ResourceRequest::nsURLRequest();
    v19 = v18;
    if (v18)
    {
      v20 = v18;
    }

    if (![v19 URL])
    {
      WTF::CompletionHandler<void ()(WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>)>::operator()(a5);
      WebKit::AuxiliaryProcess::protectedParentProcessConnection(*(a1 + 32), &v83);
      v45 = v83;
      WebKit::cannotShowURLError(a3, &v76);
      v80[0] = &IdentifierInternal;
      v80[1] = &v76;
      IPC::Connection::send<Messages::NetworkProcessProxy::DataTaskDidCompleteWithError>(v45, v80, 0, 0, 0);
      v47 = v79;
      v79 = 0;
      if (v47)
      {
      }

      v48 = v78;
      v78 = 0;
      if (v48 && atomic_fetch_add_explicit(v48, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v48, v46);
      }

      v49 = v77;
      v77 = 0;
      if (v49 && atomic_fetch_add_explicit(v49, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v49, v46);
      }

      v50 = v76;
      v76 = 0;
      if (v50 && atomic_fetch_add_explicit(v50, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v50, v46);
      }

      v51 = v83;
      v83 = 0;
      if (v51)
      {
        WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v51);
        if (!v19)
        {
          return;
        }

        goto LABEL_94;
      }

      goto LABEL_91;
    }

    v21 = *(WebKit::NetworkSessionCocoa::sessionWrapperForTask(a1, a2, 1, a3, 1u, 0) + 16);
    if (v21)
    {
      v22 = v21;
    }

    v23 = [v21 dataTaskWithRequest:v19];
    v24 = v23;
    if (v23)
    {
      v25 = v23;
    }

    v26 = [[WKURLSessionTaskDelegate alloc] initWithTask:v24 identifier:IdentifierInternal session:a1];
    [v24 setDelegate:v26];
    v27 = IdentifierInternal;
    if (IdentifierInternal == -1)
    {
      __break(0xC471u);
      JUMPOUT(0x19D93FAA8);
    }

    if (!IdentifierInternal)
    {
LABEL_104:
      __break(0xC471u);
      JUMPOUT(0x19D93FA48);
    }

    v28 = (a1 + 1272);
    v29 = *v28;
    if (!*v28)
    {
      WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RetainPtr<NSURLSessionDataTask>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RetainPtr<NSURLSessionDataTask>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RetainPtr<NSURLSessionDataTask>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RetainPtr<NSURLSessionDataTask>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(v28, 0);
      v29 = *v28;
      v27 = IdentifierInternal;
    }

    v30 = *(v29 - 8);
    v31 = (v27 + ~(v27 << 32)) ^ ((v27 + ~(v27 << 32)) >> 22);
    v32 = 9 * ((v31 + ~(v31 << 13)) ^ ((v31 + ~(v31 << 13)) >> 8));
    v33 = (v32 ^ (v32 >> 15)) + ~((v32 ^ (v32 >> 15)) << 27);
    v34 = v30 & ((v33 >> 31) ^ v33);
    v35 = (v29 + 16 * v34);
    v36 = *v35;
    if (*v35)
    {
      v37 = 0;
      v38 = 1;
      do
      {
        if (v36 == v27)
        {
          goto LABEL_104;
        }

        if (v36 == -1)
        {
          v37 = v35;
        }

        v34 = (v34 + v38) & v30;
        v35 = (v29 + 16 * v34);
        v36 = *v35;
        ++v38;
      }

      while (*v35);
      if (v37)
      {
        *v37 = 0;
        v37[1] = 0;
        --*(*v28 - 16);
        v27 = IdentifierInternal;
        v35 = v37;
      }
    }

    *v35 = v27;
    if (v24)
    {
      v39 = v24;
    }

    v40 = v35[1];
    v35[1] = v24;
    if (v40)
    {
    }

    v41 = *v28;
    if (*v28)
    {
      v42 = *(v41 - 12) + 1;
    }

    else
    {
      v42 = 1;
    }

    *(v41 - 12) = v42;
    v74 = (*(v41 - 16) + v42);
    v75 = *(v41 - 4);
    if (v75 > 0x400)
    {
      if (v75 > 2 * v74)
      {
LABEL_86:
        [v24 resume];
        WTF::CompletionHandler<void ()(WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>)>::operator()(a5);
        if (v26)
        {
        }

        if (v24)
        {
        }

        if (v21)
        {

          if (!v19)
          {
            return;
          }

LABEL_94:

          return;
        }

LABEL_91:
        if (!v19)
        {
          return;
        }

        goto LABEL_94;
      }
    }

    else if (3 * v75 > 4 * v74)
    {
      goto LABEL_86;
    }

    WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RetainPtr<NSURLSessionDataTask>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RetainPtr<NSURLSessionDataTask>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RetainPtr<NSURLSessionDataTask>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RetainPtr<NSURLSessionDataTask>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(v28, v35);
    goto LABEL_86;
  }

  WebKit::AuxiliaryProcess::protectedParentProcessConnection(*(a1 + 32), &v81);
  v11 = v81;
  v12 = IdentifierInternal;
  if (WebKit::NetworkSessionCocoa::BlobDataTaskClient::s_heapRef)
  {
    NonCompact = bmalloc::api::tzoneAllocateNonCompact(WebKit::NetworkSessionCocoa::BlobDataTaskClient::s_heapRef, v10);
  }

  else
  {
    NonCompact = WebKit::NetworkSessionCocoa::BlobDataTaskClient::operatorNewSlow(0);
  }

  v14 = NonCompact;
  *(NonCompact + 16) = 1;
  v15 = NonCompact + 16;
  *(NonCompact + 8) = 0;
  *NonCompact = &unk_1F10ED590;
  WebCore::ResourceRequestBase::url(a3);
  WebCore::BlobRegistryImpl::filesInBlob();
  v16 = a4[32];
  if (v16 == 1)
  {
    WebCore::SecurityOriginData::securityOrigin(&v83, a4);
    v17 = v83;
    if (v83)
    {
      atomic_fetch_add(v83, 1u);
    }
  }

  else
  {
    v17 = 0;
  }

  v80[0] = v17;
  v43 = WTF::fastMalloc(0x2C8);
  v14[3] = WebKit::NetworkDataTaskBlob::NetworkDataTaskBlob(v43, a1, v14, a3, &v76, v80);
  if (v17)
  {
    WTF::ThreadSafeRefCounted<WebCore::SecurityOrigin,(WTF::DestructionThread)0>::deref(v17, v44);
    if (!v16)
    {
      goto LABEL_53;
    }
  }

  else if (!v16)
  {
    goto LABEL_53;
  }

  v52 = v83;
  v83 = 0;
  if (v52)
  {
    WTF::ThreadSafeRefCounted<WebCore::SecurityOrigin,(WTF::DestructionThread)0>::deref(v52, v44);
  }

LABEL_53:
  WTF::Vector<WTF::RefPtr<WebCore::BlobDataFileReference,WTF::RawPtrTraits<WebCore::BlobDataFileReference>,WTF::DefaultRefDerefTraits<WebCore::BlobDataFileReference>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v76, v44);
  if (v11)
  {
    while (1)
    {
      v53 = *v11;
      if ((*v11 & 1) == 0)
      {
        break;
      }

      v54 = *v11;
      atomic_compare_exchange_strong_explicit(v11, &v54, v53 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v54 == v53)
      {
        goto LABEL_58;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v11);
  }

LABEL_58:
  v14[4] = v11;
  v14[5] = 0;
  v14[6] = v12;
  (*(*v14[3] + 24))(v14[3]);
  v56 = IdentifierInternal;
  if (IdentifierInternal == -1)
  {
    __break(0xC471u);
    JUMPOUT(0x19D93FA68);
  }

  if (!IdentifierInternal)
  {
    __break(0xC471u);
    JUMPOUT(0x19D93FA88);
  }

  v57 = (a1 + 1264);
  v58 = *v57;
  if (!*v57)
  {
    WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkSessionCocoa::BlobDataTaskClient,WTF::RawPtrTraits<WebKit::NetworkSessionCocoa::BlobDataTaskClient>,WTF::DefaultRefDerefTraits<WebKit::NetworkSessionCocoa::BlobDataTaskClient>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkSessionCocoa::BlobDataTaskClient,WTF::RawPtrTraits<WebKit::NetworkSessionCocoa::BlobDataTaskClient>,WTF::DefaultRefDerefTraits<WebKit::NetworkSessionCocoa::BlobDataTaskClient>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkSessionCocoa::BlobDataTaskClient,WTF::RawPtrTraits<WebKit::NetworkSessionCocoa::BlobDataTaskClient>,WTF::DefaultRefDerefTraits<WebKit::NetworkSessionCocoa::BlobDataTaskClient>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::NetworkSessionCocoa::BlobDataTaskClient,WTF::RawPtrTraits<WebKit::NetworkSessionCocoa::BlobDataTaskClient>,WTF::DefaultRefDerefTraits<WebKit::NetworkSessionCocoa::BlobDataTaskClient>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(v57);
    v58 = *v57;
    v56 = IdentifierInternal;
  }

  v59 = *(v58 - 8);
  v60 = (v56 + ~(v56 << 32)) ^ ((v56 + ~(v56 << 32)) >> 22);
  v61 = 9 * ((v60 + ~(v60 << 13)) ^ ((v60 + ~(v60 << 13)) >> 8));
  v62 = (v61 ^ (v61 >> 15)) + ~((v61 ^ (v61 >> 15)) << 27);
  v63 = v59 & ((v62 >> 31) ^ v62);
  v64 = (v58 + 16 * v63);
  v65 = *v64;
  if (*v64)
  {
    v66 = 0;
    v67 = 1;
    do
    {
      if (v65 == v56)
      {
        WTF::RefCounted<WebKit::NetworkSessionCocoa::BlobDataTaskClient>::deref(v15, v55);
        goto LABEL_79;
      }

      if (v65 == -1)
      {
        v66 = v64;
      }

      v63 = (v63 + v67) & v59;
      v64 = (v58 + 16 * v63);
      v65 = *v64;
      ++v67;
    }

    while (*v64);
    if (v66)
    {
      *v66 = 0;
      v66[1] = 0;
      --*(*v57 - 16);
      v56 = IdentifierInternal;
      v64 = v66;
    }
  }

  v68 = v64[1];
  *v64 = v56;
  v64[1] = v14;
  if (v68)
  {
    WTF::RefCounted<WebKit::NetworkSessionCocoa::BlobDataTaskClient>::deref(v68 + 16, v55);
  }

  v69 = *v57;
  if (*v57)
  {
    v70 = *(v69 - 12) + 1;
  }

  else
  {
    v70 = 1;
  }

  *(v69 - 12) = v70;
  v71 = (*(v69 - 16) + v70);
  v72 = *(v69 - 4);
  if (v72 > 0x400)
  {
    if (v72 > 2 * v71)
    {
      goto LABEL_79;
    }

    goto LABEL_78;
  }

  if (3 * v72 <= 4 * v71)
  {
LABEL_78:
    WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkSessionCocoa::BlobDataTaskClient,WTF::RawPtrTraits<WebKit::NetworkSessionCocoa::BlobDataTaskClient>,WTF::DefaultRefDerefTraits<WebKit::NetworkSessionCocoa::BlobDataTaskClient>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkSessionCocoa::BlobDataTaskClient,WTF::RawPtrTraits<WebKit::NetworkSessionCocoa::BlobDataTaskClient>,WTF::DefaultRefDerefTraits<WebKit::NetworkSessionCocoa::BlobDataTaskClient>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkSessionCocoa::BlobDataTaskClient,WTF::RawPtrTraits<WebKit::NetworkSessionCocoa::BlobDataTaskClient>,WTF::DefaultRefDerefTraits<WebKit::NetworkSessionCocoa::BlobDataTaskClient>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::NetworkSessionCocoa::BlobDataTaskClient,WTF::RawPtrTraits<WebKit::NetworkSessionCocoa::BlobDataTaskClient>,WTF::DefaultRefDerefTraits<WebKit::NetworkSessionCocoa::BlobDataTaskClient>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(v57);
  }

LABEL_79:
  v73 = v81;
  v81 = 0;
  if (v73)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v73);
  }

  WTF::CompletionHandler<void ()(WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>)>::operator()(a5);
}

void sub_19D93FACC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10, WTF::StringImpl *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, WTF::StringImpl *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, atomic_ullong *a22)
{
  if (a22)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(a22);
  }

  _Unwind_Resume(exception_object);
}

uint64_t WTF::CompletionHandler<void ()(WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>)>::operator()(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  (*(*v1 + 16))(v1);
  v2 = *(*v1 + 8);

  return v2(v1);
}

uint64_t IPC::Connection::send<Messages::NetworkProcessProxy::DataTaskDidCompleteWithError>(uint64_t *a1, WebCore::ResourceError **a2, uint64_t a3, char a4, uint64_t a5)
{
  v10 = IPC::Encoder::operator new(0x238, a2);
  *v10 = 523;
  *(v10 + 2) = 0;
  *(v10 + 3) = 0;
  *(v10 + 1) = a3;
  *(v10 + 68) = 0;
  *(v10 + 70) = 0;
  *(v10 + 69) = 0;
  IPC::Encoder::encodeHeader(v10);
  v17 = v10;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v10, **a2);
  IPC::ArgumentCoder<WebCore::ResourceError,void>::encode(v10, a2[1]);
  v12 = IPC::Connection::sendMessageImpl(a1, &v17, a4, a5);
  v13 = v17;
  v17 = 0;
  if (v13)
  {
    IPC::Encoder::~Encoder(v13, v11);
    bmalloc::api::tzoneFree(v15, v16);
  }

  return v12;
}

void sub_19D93FE54(_Unwind_Exception *a1, void *a2)
{
  IPC::Encoder::~Encoder(v2, a2);
  bmalloc::api::tzoneFree(v4, v5);
  _Unwind_Resume(a1);
}

void WebKit::NetworkSessionCocoa::cancelDataTask(uint64_t a1, uint64_t a2)
{
  v16 = a2;
  v3 = (a1 + 1272);
  v4 = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RetainPtr<NSURLSessionDataTask>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RetainPtr<NSURLSessionDataTask>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RetainPtr<NSURLSessionDataTask>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RetainPtr<NSURLSessionDataTask>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RetainPtr<NSURLSessionDataTask>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RetainPtr<NSURLSessionDataTask>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>((a1 + 1272), &v16);
  v5 = *(a1 + 1272);
  if (v5)
  {
    v5 += 2 * *(v5 - 1);
  }

  if (v5 == v4)
  {
    goto LABEL_13;
  }

  v6 = v4[1];
  v4[1] = 0;
  if (*v3)
  {
    v7 = *v3 + 16 * *(*v3 - 4);
    if (v7 == v4)
    {
      goto LABEL_11;
    }
  }

  else
  {
    if (!v4)
    {
      goto LABEL_11;
    }

    v7 = 0;
  }

  if (v7 != v4)
  {
    WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RetainPtr<NSURLSessionDataTask>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RetainPtr<NSURLSessionDataTask>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RetainPtr<NSURLSessionDataTask>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RetainPtr<NSURLSessionDataTask>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::remove(v3, v4);
  }

LABEL_11:
  if (v6)
  {
    [v6 cancel];

    return;
  }

LABEL_13:
  v8 = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkSessionCocoa::BlobDataTaskClient,WTF::RawPtrTraits<WebKit::NetworkSessionCocoa::BlobDataTaskClient>,WTF::DefaultRefDerefTraits<WebKit::NetworkSessionCocoa::BlobDataTaskClient>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkSessionCocoa::BlobDataTaskClient,WTF::RawPtrTraits<WebKit::NetworkSessionCocoa::BlobDataTaskClient>,WTF::DefaultRefDerefTraits<WebKit::NetworkSessionCocoa::BlobDataTaskClient>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkSessionCocoa::BlobDataTaskClient,WTF::RawPtrTraits<WebKit::NetworkSessionCocoa::BlobDataTaskClient>,WTF::DefaultRefDerefTraits<WebKit::NetworkSessionCocoa::BlobDataTaskClient>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::NetworkSessionCocoa::BlobDataTaskClient,WTF::RawPtrTraits<WebKit::NetworkSessionCocoa::BlobDataTaskClient>,WTF::DefaultRefDerefTraits<WebKit::NetworkSessionCocoa::BlobDataTaskClient>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkSessionCocoa::BlobDataTaskClient,WTF::RawPtrTraits<WebKit::NetworkSessionCocoa::BlobDataTaskClient>,WTF::DefaultRefDerefTraits<WebKit::NetworkSessionCocoa::BlobDataTaskClient>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::NetworkSessionCocoa::BlobDataTaskClient,WTF::RawPtrTraits<WebKit::NetworkSessionCocoa::BlobDataTaskClient>,WTF::DefaultRefDerefTraits<WebKit::NetworkSessionCocoa::BlobDataTaskClient>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>( *(a1 + 1264),  v16);
  v9 = v8;
  v10 = *(a1 + 1264);
  if (v10)
  {
    v11 = v10 + 16 * *(v10 - 4);
  }

  else
  {
    v11 = 0;
  }

  if (v11 != v8)
  {
    v12 = (a1 + 1264);
    v13 = v9[1];
    if (v13)
    {
      v9[1] = 0;
      v10 = *v12;
    }

    if (v10)
    {
      v14 = (v10 + 16 * *(v10 - 4));
      if (v14 == v9)
      {
LABEL_26:
        if (v13)
        {
          (*(**(v13 + 24) + 16))(*(v13 + 24));
          WTF::RefCounted<WebKit::NetworkSessionCocoa::BlobDataTaskClient>::deref(v13 + 16, v15);
        }

        return;
      }
    }

    else
    {
      if (!v9)
      {
        goto LABEL_26;
      }

      v14 = 0;
    }

    if (v14 != v9)
    {
      WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkSessionCocoa::BlobDataTaskClient,WTF::RawPtrTraits<WebKit::NetworkSessionCocoa::BlobDataTaskClient>,WTF::DefaultRefDerefTraits<WebKit::NetworkSessionCocoa::BlobDataTaskClient>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkSessionCocoa::BlobDataTaskClient,WTF::RawPtrTraits<WebKit::NetworkSessionCocoa::BlobDataTaskClient>,WTF::DefaultRefDerefTraits<WebKit::NetworkSessionCocoa::BlobDataTaskClient>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkSessionCocoa::BlobDataTaskClient,WTF::RawPtrTraits<WebKit::NetworkSessionCocoa::BlobDataTaskClient>,WTF::DefaultRefDerefTraits<WebKit::NetworkSessionCocoa::BlobDataTaskClient>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::NetworkSessionCocoa::BlobDataTaskClient,WTF::RawPtrTraits<WebKit::NetworkSessionCocoa::BlobDataTaskClient>,WTF::DefaultRefDerefTraits<WebKit::NetworkSessionCocoa::BlobDataTaskClient>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::remove(v12, v9);
    }

    goto LABEL_26;
  }
}

void sub_19D93FFC0(_Unwind_Exception *exception_object, void *a2)
{
  if (v2)
  {
    WTF::RefCounted<WebKit::NetworkSessionCocoa::BlobDataTaskClient>::deref(v2 + 16, a2);
  }

  _Unwind_Resume(exception_object);
}

void WebKit::NetworkSessionCocoa::removeDataTask(uint64_t a1, uint64_t a2)
{
  v6 = a2;
  v3 = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RetainPtr<NSURLSessionDataTask>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RetainPtr<NSURLSessionDataTask>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RetainPtr<NSURLSessionDataTask>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RetainPtr<NSURLSessionDataTask>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RetainPtr<NSURLSessionDataTask>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RetainPtr<NSURLSessionDataTask>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>((a1 + 1272), &v6);
  v4 = *(a1 + 1272);
  if (v4)
  {
    v5 = (v4 + 16 * *(v4 - 4));
    if (v5 == v3)
    {
      return;
    }
  }

  else
  {
    if (!v3)
    {
      return;
    }

    v5 = 0;
  }

  if (v5 != v3)
  {
    WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RetainPtr<NSURLSessionDataTask>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RetainPtr<NSURLSessionDataTask>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RetainPtr<NSURLSessionDataTask>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RetainPtr<NSURLSessionDataTask>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::remove((a1 + 1272), v3);
  }
}

uint64_t WebKit::NetworkSessionCocoa::countNonDefaultSessionSets(WebKit::NetworkSessionCocoa *this)
{
  v27 = 0;
  v1 = *(this + 143);
  if (!v1)
  {
    v2 = 0;
    v3 = 0;
LABEL_3:
    v4 = v2;
    v2 = (v1 + 16 * v3);
    goto LABEL_4;
  }

  v3 = *(v1 - 4);
  v2 = (v1 + 16 * v3);
  if (!*(v1 - 12))
  {
    goto LABEL_3;
  }

  if (!v3)
  {
    v4 = *(this + 143);
    goto LABEL_46;
  }

  v26 = 16 * v3;
  v4 = *(this + 143);
  while ((*v4 + 1) <= 1)
  {
    v4 += 2;
    v26 -= 16;
    if (!v26)
    {
      v4 = v2;
      break;
    }
  }

LABEL_4:
  if (v1)
  {
LABEL_46:
    v5 = (v1 + 16 * *(v1 - 4));
    goto LABEL_6;
  }

  v5 = 0;
LABEL_6:
  if (v5 == v4)
  {
    return 0;
  }

  do
  {
    v6 = v4[1];
    if (v6 == -1 || !v6)
    {
      __break(0xC471u);
      JUMPOUT(0x19D9402B0);
    }

    v7 = v27;
    if (v27 || (WTF::HashTable<WTF::Ref<WebKit::SessionSet,WTF::RawPtrTraits<WebKit::SessionSet>,WTF::DefaultRefDerefTraits<WebKit::SessionSet>>,WTF::Ref<WebKit::SessionSet,WTF::RawPtrTraits<WebKit::SessionSet>,WTF::DefaultRefDerefTraits<WebKit::SessionSet>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WebKit::SessionSet,WTF::RawPtrTraits<WebKit::SessionSet>,WTF::DefaultRefDerefTraits<WebKit::SessionSet>>>,WTF::HashTraits<WTF::Ref<WebKit::SessionSet,WTF::RawPtrTraits<WebKit::SessionSet>,WTF::DefaultRefDerefTraits<WebKit::SessionSet>>>,WTF::HashTraits<WTF::Ref<WebKit::SessionSet,WTF::RawPtrTraits<WebKit::SessionSet>,WTF::DefaultRefDerefTraits<WebKit::SessionSet>>>,WTF::FastMalloc>::expand(&v27), (v7 = v27) != 0))
    {
      v8 = *(v7 - 2);
    }

    else
    {
      v8 = 0;
    }

    v9 = 0;
    v10 = v4[1];
    v11 = (~(v10 << 32) + v10) ^ ((~(v10 << 32) + v10) >> 22);
    v12 = 9 * ((v11 + ~(v11 << 13)) ^ ((v11 + ~(v11 << 13)) >> 8));
    v13 = (v12 ^ (v12 >> 15)) + ~((v12 ^ (v12 >> 15)) << 27);
    v14 = (v13 >> 31) ^ v13;
    for (i = 1; ; ++i)
    {
      v16 = v14 & v8;
      v17 = &v7[v16];
      v18 = *v17;
      if (*v17 == -1)
      {
        v9 = &v7[v16];
        goto LABEL_18;
      }

      if (!v18)
      {
        break;
      }

      if (v18 == v10)
      {
        goto LABEL_28;
      }

LABEL_18:
      v14 = i + v16;
    }

    if (v9)
    {
      *v9 = 0;
      --*(v27 - 4);
      v19 = v4[1];
      ++*(v19 + 8);
      *v9 = v19;
      v17 = v9;
    }

    else
    {
      ++*(v10 + 8);
      *v17 = v10;
    }

    v20 = v27;
    if (v27)
    {
      v21 = *(v27 - 3) + 1;
    }

    else
    {
      v21 = 1;
    }

    *(v27 - 3) = v21;
    v22 = (*(v20 - 4) + v21);
    v23 = *(v20 - 1);
    if (v23 > 0x400)
    {
      if (v23 <= 2 * v22)
      {
LABEL_27:
        WTF::HashTable<WTF::Ref<WebKit::SessionSet,WTF::RawPtrTraits<WebKit::SessionSet>,WTF::DefaultRefDerefTraits<WebKit::SessionSet>>,WTF::Ref<WebKit::SessionSet,WTF::RawPtrTraits<WebKit::SessionSet>,WTF::DefaultRefDerefTraits<WebKit::SessionSet>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WebKit::SessionSet,WTF::RawPtrTraits<WebKit::SessionSet>,WTF::DefaultRefDerefTraits<WebKit::SessionSet>>>,WTF::HashTraits<WTF::Ref<WebKit::SessionSet,WTF::RawPtrTraits<WebKit::SessionSet>,WTF::DefaultRefDerefTraits<WebKit::SessionSet>>>,WTF::HashTraits<WTF::Ref<WebKit::SessionSet,WTF::RawPtrTraits<WebKit::SessionSet>,WTF::DefaultRefDerefTraits<WebKit::SessionSet>>>,WTF::FastMalloc>::expand(&v27);
      }
    }

    else if (3 * v23 <= 4 * v22)
    {
      goto LABEL_27;
    }

    do
    {
LABEL_28:
      v4 += 2;
    }

    while (v4 != v2 && (*v4 + 1) <= 1);
  }

  while (v4 != v5);
  if (!v27)
  {
    return 0;
  }

  v24 = *(v27 - 3);
  WTF::HashTable<WTF::Ref<WebKit::SessionSet,WTF::RawPtrTraits<WebKit::SessionSet>,WTF::DefaultRefDerefTraits<WebKit::SessionSet>>,WTF::Ref<WebKit::SessionSet,WTF::RawPtrTraits<WebKit::SessionSet>,WTF::DefaultRefDerefTraits<WebKit::SessionSet>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WebKit::SessionSet,WTF::RawPtrTraits<WebKit::SessionSet>,WTF::DefaultRefDerefTraits<WebKit::SessionSet>>>,WTF::HashTraits<WTF::Ref<WebKit::SessionSet,WTF::RawPtrTraits<WebKit::SessionSet>,WTF::DefaultRefDerefTraits<WebKit::SessionSet>>>,WTF::HashTraits<WTF::Ref<WebKit::SessionSet,WTF::RawPtrTraits<WebKit::SessionSet>,WTF::DefaultRefDerefTraits<WebKit::SessionSet>>>,WTF::FastMalloc>::deallocateTable(v27, v17);
  return v24;
}

void sub_19D9402D4(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t *a10)
{
  if (a10)
  {
    WTF::HashTable<WTF::Ref<WebKit::SessionSet,WTF::RawPtrTraits<WebKit::SessionSet>,WTF::DefaultRefDerefTraits<WebKit::SessionSet>>,WTF::Ref<WebKit::SessionSet,WTF::RawPtrTraits<WebKit::SessionSet>,WTF::DefaultRefDerefTraits<WebKit::SessionSet>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WebKit::SessionSet,WTF::RawPtrTraits<WebKit::SessionSet>,WTF::DefaultRefDerefTraits<WebKit::SessionSet>>>,WTF::HashTraits<WTF::Ref<WebKit::SessionSet,WTF::RawPtrTraits<WebKit::SessionSet>,WTF::DefaultRefDerefTraits<WebKit::SessionSet>>>,WTF::HashTraits<WTF::Ref<WebKit::SessionSet,WTF::RawPtrTraits<WebKit::SessionSet>,WTF::DefaultRefDerefTraits<WebKit::SessionSet>>>,WTF::FastMalloc>::deallocateTable(a10, a2);
  }

  _Unwind_Resume(exception_object);
}

void WebKit::NetworkSessionCocoa::hostNamesWithAlternativeServices(WebKit::NetworkSessionCocoa *this@<X0>, uint64_t a2@<X8>)
{
  v29 = *MEMORY[0x1E69E9840];
  *a2 = 0;
  *(a2 + 8) = 0;
  v3 = [objc_msgSend(*(*(this + 142) + 48) "configuration")];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  v19 = v4;
  v6 = [v4 HTTPServiceEntriesWithFilter:{objc_msgSend(MEMORY[0x1E695ACE0], "emptyFilter")}];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v9 = [v7 countByEnumeratingWithState:&v20 objects:v28 count:16];
  if (v9)
  {
    v10 = *v21;
LABEL_7:
    v11 = 0;
    while (1)
    {
      if (*v21 != v10)
      {
        objc_enumerationMutation(v7);
      }

      v12 = *(*(&v20 + 1) + 8 * v11);
      WTF::StringImpl::createWithoutCopyingNonEmpty();
      v13 = v24;
      MEMORY[0x19EB02040](&v24, [v12 host]);
      v14 = [v12 port];
      if (v13)
      {
        atomic_fetch_add_explicit(v13, 2u, memory_order_relaxed);
      }

      v16 = v24;
      if (v24)
      {
        atomic_fetch_add_explicit(v24, 2u, memory_order_relaxed);
      }

      v25[0] = v13;
      v25[1] = v16;
      v26 = v14 | 0x10000;
      v27 = 0;
      if (v13 == -1)
      {
        __break(0xC471u);
        return;
      }

      v17 = v24;
      v24 = 0;
      if (v17 && atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v17, v15);
        if (v13)
        {
LABEL_18:
          if (atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v13, v15);
          }
        }
      }

      else if (v13)
      {
        goto LABEL_18;
      }

      v18 = *(a2 + 12);
      if (v18 == *(a2 + 8))
      {
        WTF::Vector<WebCore::SecurityOriginData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::SecurityOriginData&>(a2, v25);
      }

      else
      {
        mpark::detail::copy_constructor<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::copy_constructor((*a2 + 32 * v18), v25);
        ++*(a2 + 12);
      }

      mpark::detail::move_constructor<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::~move_constructor(v25);
      if (v9 == ++v11)
      {
        v9 = [v7 countByEnumeratingWithState:&v20 objects:v28 count:16];
        if (v9)
        {
          goto LABEL_7;
        }

        break;
      }
    }
  }

  if (v7)
  {
  }

  if (v19)
  {
  }
}

void sub_19D940544(_Unwind_Exception *a1, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, WTF::StringImpl *a20, char a21)
{
  if (v22)
  {
  }

  if (a10)
  {
  }

  WTF::Vector<WebCore::SecurityOriginData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v21, a2);
  _Unwind_Resume(a1);
}

void WebKit::NetworkSessionCocoa::donateToSKAdNetwork(uint64_t a1, uint64_t a2)
{
  v8 = objc_opt_new();
  if ((*(a2 + 48) & 1) == 0)
  {
    goto LABEL_114;
  }

  v2 = v8;
  [v8 setAppAdamId:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedLongLong:", *(a2 + 40))}];
  v3 = *(a2 + 16);
  if (v3)
  {
    atomic_fetch_add_explicit(v3, 2u, memory_order_relaxed);
    MEMORY[0x19EB00B70](v88, v3);
    if (atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v3, v10);
    }
  }

  else
  {
    v88[0] = &stru_1F1147748;
    v11 = &stru_1F1147748;
  }

  [v2 setAdNetworkRegistrableDomain:v88[0]];
  v12 = v88[0];
  v88[0] = 0;
  if (v12)
  {
  }

  if (*(a2 + 232) != 1)
  {
    goto LABEL_114;
  }

  v13 = *(a2 + 224);
  if (v13)
  {
    atomic_fetch_add_explicit(v13, 2u, memory_order_relaxed);
    atomic_fetch_add_explicit(v13, 2u, memory_order_relaxed);
    MEMORY[0x19EB00B70](v88, v13);
    if (atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v13, v14);
    }
  }

  else
  {
    v88[0] = &stru_1F1147748;
    v15 = &stru_1F1147748;
  }

  [v2 setImpressionId:v88[0]];
  v17 = v88[0];
  v88[0] = 0;
  if (v17)
  {
  }

  if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v13, v16);
  }

  v3 = *(a2 + 8);
  if (v3)
  {
    atomic_fetch_add_explicit(v3, 2u, memory_order_relaxed);
    MEMORY[0x19EB00B70](v88, v3);
    if (atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v3, v18);
    }
  }

  else
  {
    v88[0] = &stru_1F1147748;
    v19 = &stru_1F1147748;
  }

  [v2 setSourceWebRegistrableDomain:v88[0]];
  v20 = v88[0];
  v88[0] = 0;
  if (v20)
  {
  }

  [v2 setVersion:@"4.0"];
  [v2 setAttributionContext:0];
  if (*(a1 + 24) <= -2)
  {
    WTF::UUID::UUID(v88);
    v21 = v88[0];
    *(a1 + 1256) = v88[1];
    *(a1 + 1248) = v21;
    if (objc_opt_respondsToSelector())
    {
      if (*(a1 + 1248) == 0)
      {
LABEL_118:
        __break(0xC471u);
        JUMPOUT(0x19D940E18);
      }

      WTF::UUID::createNSUUID(v88, (a1 + 1248));
      [v2 setPrivateBrowsingSessionId:v88[0]];
      v22 = v88[0];
      v88[0] = 0;
      if (v22)
      {
      }
    }
  }

  [objc_msgSend(MEMORY[0x1E698B4F8] "sharedInstance")];
  if (*(a1 + 168) != 1)
  {
    goto LABEL_109;
  }

  if ((*(a2 + 48) & 1) == 0)
  {
    goto LABEL_114;
  }

  v5 = *(a2 + 40);
  v3 = *(a2 + 16);
  if (v3)
  {
    atomic_fetch_add_explicit(v3, 2u, memory_order_relaxed);
  }

  if (*(a2 + 232) != 1)
  {
    goto LABEL_114;
  }

  v4 = *(a2 + 224);
  if (v4)
  {
    atomic_fetch_add_explicit(v4, 2u, memory_order_relaxed);
    atomic_fetch_add_explicit(v4, 2u, memory_order_relaxed);
  }

  a2 = *(a2 + 8);
  if (a2)
  {
    atomic_fetch_add_explicit(a2, 2u, memory_order_relaxed);
  }

  LODWORD(v9) = 0;
  v23 = v5;
  do
  {
    LODWORD(v9) = v9 + 1;
    v24 = v23 > 9;
    v23 /= 0xAuLL;
  }

  while (v24);
  if (!v3)
  {
    goto LABEL_115;
  }

  v25 = *(v3 + 4);
  if (!v4)
  {
    goto LABEL_116;
  }

LABEL_42:
  v26 = *(v4 + 4);
  if (a2)
  {
LABEL_43:
    v27 = *(a2 + 4);
    goto LABEL_44;
  }

  while (1)
  {
    v27 = 0;
LABEL_44:
    WTF::checkedSum<int,unsigned int,unsigned int,unsigned int,unsigned int,unsigned int,unsigned int,unsigned int,unsigned int,unsigned int>(53, v9, 30, v25, 16, v26, 30, v27, v89, 12);
    if (v89[0])
    {
      goto LABEL_118;
    }

    if (v3 && (*(v3 + 16) & 4) == 0 || v4 && (*(v4 + 16) & 4) == 0 || a2 && (*(a2 + 16) & 4) == 0)
    {
      break;
    }

    v64 = v90;
    if (!v90)
    {
LABEL_96:
      v84 = MEMORY[0x1E696EB88];
      atomic_fetch_add_explicit(MEMORY[0x1E696EB88], 2u, memory_order_relaxed);
      v87 = v84;
      if (a2)
      {
        goto LABEL_97;
      }

LABEL_98:
      if (!v4)
      {
        goto LABEL_104;
      }

      goto LABEL_99;
    }

    if ((v90 & 0x80000000) != 0)
    {
      goto LABEL_118;
    }

    WTF::tryFastCompactMalloc((v90 + 20));
    v29 = v88[0];
    if (!v88[0])
    {
      goto LABEL_118;
    }

    *(v88[0] + 20) = *"Submitting potential install attribution for AdamId: ";
    *v29 = 2;
    *(v29 + 4) = v64;
    *(v29 + 8) = v29 + 20;
    *(v29 + 16) = 4;
    qmemcpy((v29 + 36), "tial install attribution for AdamId: ", 37);
    if (v64 > 0x34)
    {
      v65 = v64 - 53;
      v91 = v5;
      WTF::StringTypeAdapter<unsigned long long,void>::writeTo<unsigned char>(&v91, (v29 + 73), v64 - 53);
      LODWORD(v66) = 0;
      v67 = v91;
      do
      {
        v66 = (v66 + 1);
        v24 = v67 > 9;
        v67 /= 0xAuLL;
      }

      while (v24);
      if (v65 >= v66)
      {
        v68 = v65 - v66;
        v69 = (v66 + v29 + 73);
        qmemcpy(v69, ", adNetworkRegistrableDomain: ", 30);
        if (v68 > 0x1D)
        {
          v70 = v68 - 30;
          v71 = v69 + 30;
          v92 = v3;
          WTF::StringTypeAdapter<WTF::StringImpl *,void>::writeTo<unsigned char>(&v92, v69 + 30);
          v72 = v92;
          if (!v92 || (v72 = *(v92 + 4), v70 >= v72))
          {
            v73 = v70 - v72;
            v74 = &v71[v72];
            *v74 = *", impressionId: ";
            if (v73 > 0xF)
            {
              v75 = v73 - 16;
              v76 = v74 + 16;
              v93 = v4;
              WTF::StringTypeAdapter<WTF::StringImpl *,void>::writeTo<unsigned char>(&v93, v74 + 16);
              v77 = v93;
              if (!v93 || (v77 = *(v93 + 4), v75 >= v77))
              {
                v78 = v75 - v77;
                v79 = &v76[v77];
                qmemcpy(v79, ", sourceWebRegistrableDomain: ", 30);
                if (v78 > 0x1D)
                {
                  v80 = v78 - 30;
                  v81 = v79 + 30;
                  v88[0] = a2;
                  WTF::StringTypeAdapter<WTF::StringImpl *,void>::writeTo<unsigned char>(v88, v79 + 30);
                  v82 = v88[0];
                  if (!v88[0] || (v82 = *(v88[0] + 4), v80 >= v82))
                  {
                    v83 = &v81[v82];
                    *v83 = *", version: 3";
                    *(v83 + 2) = 857750126;
                    goto LABEL_77;
                  }
                }
              }
            }
          }
        }
      }
    }

LABEL_114:
    __break(1u);
LABEL_115:
    v25 = 0;
    if (v4)
    {
      goto LABEL_42;
    }

LABEL_116:
    v26 = 0;
    if (a2)
    {
      goto LABEL_43;
    }
  }

  v28 = v90;
  if (!v90)
  {
    goto LABEL_96;
  }

  if (v90 > 0x7FFFFFEF)
  {
    goto LABEL_118;
  }

  WTF::tryFastCompactMalloc((2 * v90 + 20));
  v29 = v88[0];
  if (!v88[0])
  {
    goto LABEL_118;
  }

  *v88[0] = 2;
  *(v29 + 4) = v28;
  *(v29 + 8) = v29 + 20;
  *(v29 + 16) = 0;
  v30 = "Submitting potential install attribution for AdamId: ";
  for (i = 20; i != 126; i += 2)
  {
    v32 = *v30++;
    *(v29 + i) = v32;
  }

  if (v28 <= 0x34)
  {
    goto LABEL_114;
  }

  v33 = v28 - 53;
  v91 = v5;
  WTF::StringTypeAdapter<unsigned long long,void>::writeTo<char16_t>(&v91, (v29 + 126), v33);
  LODWORD(v34) = 0;
  v35 = v91;
  do
  {
    v34 = (v34 + 1);
    v24 = v35 > 9;
    v35 /= 0xAuLL;
  }

  while (v24);
  if (v33 < v34)
  {
    goto LABEL_114;
  }

  v36 = 0;
  v37 = v29 + 126 + 2 * v34;
  v38 = ", adNetworkRegistrableDomain: ";
  do
  {
    v39 = *v38++;
    *(v37 + v36) = v39;
    v36 += 2;
  }

  while (v36 != 60);
  v40 = v33 - v34;
  if (v40 <= 0x1D)
  {
    goto LABEL_114;
  }

  v41 = v37 + 60;
  v42 = v40 - 30;
  v92 = v3;
  WTF::StringTypeAdapter<WTF::StringImpl *,void>::writeTo<char16_t>(&v92, (v37 + 60));
  v43 = v92;
  if (v92)
  {
    v43 = *(v92 + 4);
    if (v42 < v43)
    {
      goto LABEL_114;
    }
  }

  v44 = 0;
  v45 = v41 + 2 * v43;
  v46 = ", impressionId: ";
  do
  {
    v47 = *v46++;
    *(v45 + v44) = v47;
    v44 += 2;
  }

  while (v44 != 32);
  v48 = v42 - v43;
  if (v48 <= 0xF)
  {
    goto LABEL_114;
  }

  v49 = v45 + 32;
  v50 = v48 - 16;
  v93 = v4;
  WTF::StringTypeAdapter<WTF::StringImpl *,void>::writeTo<char16_t>(&v93, (v45 + 32));
  v51 = v93;
  if (v93)
  {
    v51 = *(v93 + 4);
    if (v50 < v51)
    {
      goto LABEL_114;
    }
  }

  v52 = 0;
  v53 = v49 + 2 * v51;
  v54 = ", sourceWebRegistrableDomain: ";
  do
  {
    v55 = *v54++;
    *(v53 + v52) = v55;
    v52 += 2;
  }

  while (v52 != 60);
  v56 = v50 - v51;
  if (v56 <= 0x1D)
  {
    goto LABEL_114;
  }

  v57 = v53 + 60;
  v58 = v56 - 30;
  v88[0] = a2;
  WTF::StringTypeAdapter<WTF::StringImpl *,void>::writeTo<char16_t>(v88, (v53 + 60));
  v59 = v88[0];
  if (v88[0])
  {
    v59 = *(v88[0] + 4);
    if (v58 < v59)
    {
      goto LABEL_114;
    }
  }

  v60 = 0;
  v61 = v57 + 2 * v59;
  v62 = ", version: 3";
  do
  {
    v63 = *v62++;
    *(v61 + v60) = v63;
    v60 += 2;
  }

  while (v60 != 24);
LABEL_77:
  v87 = v29;
  if (!a2)
  {
    goto LABEL_98;
  }

LABEL_97:
  if (atomic_fetch_add_explicit(a2, 0xFFFFFFFE, memory_order_relaxed) != 2)
  {
    goto LABEL_98;
  }

  WTF::StringImpl::destroy(a2, v9);
  if (!v4)
  {
    goto LABEL_104;
  }

LABEL_99:
  if (atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, v9);
  }

  if (atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, v9);
  }

LABEL_104:
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, v9);
  }

  WebKit::NetworkProcess::broadcastConsoleMessage(*(a1 + 32), *(a1 + 24), 14, 3, &v87);
  v86 = v87;
  v87 = 0;
  if (v86 && atomic_fetch_add_explicit(v86, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v86, v85);
    if (v2)
    {
LABEL_110:
    }
  }

  else
  {
LABEL_109:
    if (v2)
    {
      goto LABEL_110;
    }
  }
}

void sub_19D940E3C(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v15, a2);
  }

  if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v14, a2);
  }

  if (v13)
  {
    if (atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v13, a2);
    }

    if (atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v13, a2);
    }
  }

  if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v12, a2);
  }

  if (v11)
  {
  }

  _Unwind_Resume(exception_object);
}

void WebKit::NetworkSessionCocoa::deleteAlternativeServicesForHostNames(uint64_t a1, uint64_t a2)
{
  v3 = [objc_msgSend(*(*(a1 + 1136) + 48) "configuration")];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  v6 = *(a2 + 12);
  if (v6)
  {
    v7 = *a2;
    v8 = 8 * v6;
    do
    {
      v9 = *v7;
      if (*v7)
      {
        atomic_fetch_add_explicit(v9, 2u, memory_order_relaxed);
        MEMORY[0x19EB00B70](&v13, v9);
        if (atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v9, v10);
        }
      }

      else
      {
        v13 = &stru_1F1147748;
        v11 = &stru_1F1147748;
      }

      [v4 removeHTTPAlternativeServiceEntriesWithRegistrableDomain:v13];
      v12 = v13;
      v13 = 0;
      if (v12)
      {
      }

      ++v7;
      v8 -= 8;
    }

    while (v8);
  }

  if (v4)
  {
  }
}

void sub_19D941048(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (v10)
  {
  }

  _Unwind_Resume(exception_object);
}

void WebKit::NetworkSessionCocoa::clearAlternativeServices(uint64_t a1, double a2)
{
  v7 = [objc_msgSend(*(*(a1 + 1136) + 48) "configuration")];
  if (v7)
  {
    v3 = v7;
  }

  v4 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSince1970:a2];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  [v7 removeHTTPAlternativeServiceEntriesCreatedAfterDate:v5];
  if (v5)
  {
  }

  if (v7)
  {
  }
}

void sub_19D941144(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (v10)
  {
  }

  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

uint64_t WebKit::NetworkSessionCocoa::forEachSessionWrapper(uint64_t *a1, void *a2)
{
  v16 = a2;
  WebKit::NetworkSessionCocoa::forEachSessionWrapper(WTF::Function<void ()(WebKit::SessionWrapper &)> const&)::$_0::operator()(&v16, a1[142]);
  v3 = a1[143];
  result = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::SessionSet,WTF::RawPtrTraits<WebKit::SessionSet>,WTF::DefaultRefDerefTraits<WebKit::SessionSet>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::SessionSet,WTF::RawPtrTraits<WebKit::SessionSet>,WTF::DefaultRefDerefTraits<WebKit::SessionSet>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::SessionSet,WTF::RawPtrTraits<WebKit::SessionSet>,WTF::DefaultRefDerefTraits<WebKit::SessionSet>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::SessionSet,WTF::RawPtrTraits<WebKit::SessionSet>,WTF::DefaultRefDerefTraits<WebKit::SessionSet>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::begin(v3);
  v7 = result;
  v8 = v5;
  if (v3)
  {
    v3 += 2 * *(v3 - 1);
  }

  if (v3 != result)
  {
    do
    {
      result = WebKit::NetworkSessionCocoa::forEachSessionWrapper(WTF::Function<void ()(WebKit::SessionWrapper &)> const&)::$_0::operator()(&v16, v7[1]);
      do
      {
        v7 += 2;
      }

      while (v7 != v8 && (*v7 + 1) <= 1);
    }

    while (v7 != v3);
  }

  v9 = a1[144];
  if (!v9)
  {
    v12 = 0;
    v14 = 0;
    goto LABEL_14;
  }

  if (!*(v9 - 12))
  {
    v14 = *(v9 - 4);
    v12 = v9 + 16 * v14;
LABEL_14:
    v11 = v9 + 16 * v14;
    if (!v9)
    {
      goto LABEL_11;
    }

    goto LABEL_15;
  }

  v10 = v9 + 16 * *(v9 - 4);
  v17 = a1[144];
  v18 = v10;
  result = WTF::HashTableConstIterator<WTF::HashTable<WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::String>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,WTF::String,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>,WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::String>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,WTF::String,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>>::skipEmptyBuckets(&v17, v5, v6);
  v12 = v17;
  v11 = v18;
  v9 = a1[144];
  if (!v9)
  {
LABEL_11:
    v13 = 0;
    goto LABEL_16;
  }

LABEL_15:
  v13 = v9 + 16 * *(v9 - 4);
LABEL_16:
  v18 = v11;
  if (v13 != v12)
  {
    do
    {
      v15 = *(v12 + 8);
      if (v15)
      {
        v5 = *(v15 + 8);
        if (v5)
        {
          WebKit::NetworkSessionCocoa::forEachSessionWrapper(WTF::Function<void ()(WebKit::SessionWrapper &)> const&)::$_0::operator()(&v16, v5);
        }
      }

      v17 = v12 + 16;
      result = WTF::HashTableConstIterator<WTF::HashTable<WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::String>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,WTF::String,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>,WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::String>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,WTF::String,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>>::skipEmptyBuckets(&v17, v5, v6);
      v12 = v17;
    }

    while (v17 != v13);
  }

  return result;
}

uint64_t WebKit::NetworkSessionCocoa::forEachSessionWrapper(WTF::Function<void ()(WebKit::SessionWrapper &)> const&)::$_0::operator()(void **a1, uint64_t a2)
{
  v4 = *a1;
  ++*(a2 + 40);
  (*(**v4 + 16))(*v4, a2 + 32);
  v5 = *(a2 + 40);
  if (!v5)
  {
    __break(0xC471u);
    JUMPOUT(0x19D9414A4);
  }

  *(a2 + 40) = v5 - 1;
  v6 = *a1;
  ++*(a2 + 96);
  (*(**v6 + 16))(*v6, a2 + 88);
  v9 = *(a2 + 96);
  if (!v9)
  {
    __break(0xC471u);
    JUMPOUT(0x19D9414C4);
  }

  *(a2 + 96) = v9 - 1;
  v10 = *(a2 + 24);
  if (v10)
  {
    v11 = *a1;
    ++*(v10 + 8);
    (*(**v11 + 16))(*v11, v10);
    v12 = *(v10 + 8);
    if (!v12)
    {
      __break(0xC471u);
LABEL_19:
      JUMPOUT(0x19D941484);
    }

    *(v10 + 8) = v12 - 1;
  }

  result = WTF::HashTable<WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,std::unique_ptr<WebKit::IsolatedSession>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,std::unique_ptr<WebKit::IsolatedSession>>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,std::unique_ptr<WebKit::IsolatedSession>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<std::unique_ptr<WebKit::IsolatedSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::begin(*(a2 + 16), v7, v8);
  v16 = result;
  v17 = *(a2 + 16);
  if (v17)
  {
    v18 = v17 + 16 * *(v17 - 4);
  }

  else
  {
    v18 = 0;
  }

  v22[1] = v14;
  if (v18 != result)
  {
    do
    {
      v19 = *(v16 + 8);
      if (v19)
      {
        v20 = *a1;
        ++*(v19 + 8);
        (*(**v20 + 16))(*v20, v19);
        v21 = *(v19 + 8);
        if (!v21)
        {
          __break(0xC471u);
          goto LABEL_19;
        }

        *(v19 + 8) = v21 - 1;
      }

      v22[0] = v16 + 16;
      result = WTF::HashTableConstIterator<WTF::HashTable<WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::String>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,WTF::String,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>,WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::String>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,WTF::String,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>>::skipEmptyBuckets(v22, v14, v15);
      v16 = v22[0];
    }

    while (v22[0] != v18);
  }

  return result;
}

void sub_19D9414E8(_Unwind_Exception *a1)
{
  v2 = *(v1 + 8);
  if (v2)
  {
    *(v1 + 8) = v2 - 1;
    _Unwind_Resume(a1);
  }

  __break(0xC471u);
}

void sub_19D94151C(_Unwind_Exception *a1)
{
  v2 = *(v1 + 96);
  if (v2)
  {
    *(v1 + 96) = v2 - 1;
    _Unwind_Resume(a1);
  }

  __break(0xC471u);
}

void sub_19D941550(_Unwind_Exception *a1)
{
  v2 = *(v1 + 40);
  if (v2)
  {
    *(v1 + 40) = v2 - 1;
    _Unwind_Resume(a1);
  }

  __break(0xC471u);
}

void sub_19D941584(_Unwind_Exception *a1)
{
  v2 = *(v1 + 8);
  if (v2)
  {
    *(v1 + 8) = v2 - 1;
    _Unwind_Resume(a1);
  }

  __break(0xC471u);
}

void WebKit::NetworkSessionCocoa::clearProxyConfigData(WebKit::NetworkSessionCocoa *this)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = nw_context_clear_proxiesPtr();
  if (v2)
  {
    v4 = v2;
    WTF::Vector<WTF::RetainPtr<NSObject  {objcproto18OS_nw_proxy_config}*>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity((this + 1192), v3);
    v16 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v5 = WTF::fastMalloc(0x10);
    *v5 = &unk_1F10ED8C8;
    v5[1] = &v16;
    v15 = v5;
    WebKit::NetworkSessionCocoa::forEachSessionWrapper(this, &v15);
    if (v15)
    {
      (*(*v15 + 8))(v15);
    }

    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v6 = v16;
    v7 = [v16 countByEnumeratingWithState:&v11 objects:v17 count:16];
    if (v7)
    {
      v8 = *v12;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v12 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v4(*(*(&v11 + 1) + 8 * i));
        }

        v7 = [v6 countByEnumeratingWithState:&v11 objects:v17 count:16];
      }

      while (v7);
    }

    v10 = v16;
    v16 = 0;
    if (v10)
    {
    }
  }
}

void sub_19D941738(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19)
{
  if (a19)
  {
  }

  _Unwind_Resume(exception_object);
}

void *nw_context_clear_proxiesPtr(void)
{
  if (byte_1EB01D1BB == 1)
  {
    return qword_1EB01D1E8;
  }

  if (byte_1EB01D1BC == 1)
  {
    v1 = qword_1EB01D1F0;
  }

  else
  {
    v1 = dlopen("/usr/lib/libnetwork.dylib", 2);
    qword_1EB01D1F0 = v1;
    byte_1EB01D1BC = 1;
  }

  result = dlsym(v1, "nw_context_clear_proxies");
  qword_1EB01D1E8 = result;
  byte_1EB01D1BB = 1;
  return result;
}

WTF::StringImpl *WebKit::NetworkSessionCocoa::removeNetworkWebsiteData(uint64_t a1, uint64_t a2, char a3, uint64_t a4, WTF *this)
{
  v62[1] = *MEMORY[0x1E69E9840];
  if (*(a1 + 24) <= -2)
  {

    return WTF::CompletionHandler<void ()(void)>::operator()(this);
  }

  WTF::applicationBundleIdentifier(&v53, a1);
  if ((WebKit::isParentProcessAFullWebBrowser(*(a1 + 32), v11) & 1) == 0 && (MEMORY[0x19EB01EF0](v53, "com.apple.webbookmarksd", 23) & 1) == 0)
  {
    goto LABEL_73;
  }

  if (byte_1EB01D1C0 == 1)
  {
    if (!qword_1EB01D210)
    {
      goto LABEL_73;
    }
  }

  else
  {
    qword_1EB01D210 = dlopen("/System/Library/PrivateFrameworks/Symptoms.framework/Frameworks/SymptomAnalytics.framework/SymptomAnalytics", 2);
    byte_1EB01D1C0 = 1;
    if (!qword_1EB01D210)
    {
      goto LABEL_73;
    }
  }

  if (byte_1EB01D1C1 == 1)
  {
    if (!qword_1EB01D218)
    {
      goto LABEL_73;
    }
  }

  else
  {
    qword_1EB01D218 = dlopen("/System/Library/PrivateFrameworks/Symptoms.framework/Frameworks/SymptomPresentationFeed.framework/SymptomPresentationFeed", 2);
    byte_1EB01D1C1 = 1;
    if (!qword_1EB01D218)
    {
      goto LABEL_73;
    }
  }

  if (byte_1EB01D1C2 == 1)
  {
    if (!qword_1EB01D220)
    {
      goto LABEL_73;
    }
  }

  else
  {
    qword_1EB01D220 = dlopen("/System/Library/PrivateFrameworks/Symptoms.framework/Frameworks/SymptomPresentationLite.framework/SymptomPresentationLite", 2);
    byte_1EB01D1C2 = 1;
    if (!qword_1EB01D220)
    {
      goto LABEL_73;
    }
  }

  if (_MergedGlobals_31() && off_1ED63B5D0())
  {
    if (HIBYTE(word_1EB01D1C3) == 1)
    {
      if (word_1EB01D1C3)
      {
        goto LABEL_17;
      }
    }

    else
    {
      if (byte_1EB01D1C2 == 1)
      {
        v42 = qword_1EB01D220;
      }

      else
      {
        v42 = dlopen("/System/Library/PrivateFrameworks/Symptoms.framework/Frameworks/SymptomPresentationLite.framework/SymptomPresentationLite", 2);
        qword_1EB01D220 = v42;
        byte_1EB01D1C2 = 1;
      }

      v43 = dlsym(v42, "kSymptomAnalyticsServiceEndpoint");
      if (v43)
      {
        qword_1EB01D238 = *v43;
        word_1EB01D1C3 = 257;
LABEL_17:
        v12 = [objc_alloc(_MergedGlobals_31()) initWorkspaceWithService:qword_1EB01D238];
        v13 = [objc_alloc(off_1ED63B5D0()) initWithWorkspace:v12];
        if ((objc_opt_respondsToSelector() & 1) == 0)
        {
          goto LABEL_100;
        }

        if (HIBYTE(word_1EB01D1C5) == 1)
        {
          if ((word_1EB01D1C5 & 1) == 0)
          {
            goto LABEL_100;
          }
        }

        else
        {
          if (byte_1EB01D1C1 == 1)
          {
            v44 = qword_1EB01D218;
          }

          else
          {
            v44 = dlopen("/System/Library/PrivateFrameworks/Symptoms.framework/Frameworks/SymptomPresentationFeed.framework/SymptomPresentationFeed", 2);
            qword_1EB01D218 = v44;
            byte_1EB01D1C1 = 1;
          }

          v45 = dlsym(v44, "kSymptomAnalyticsServiceDomainTrackingClearHistoryKey");
          v46 = &word_1EB01D1C5;
          if (!v45)
          {
            goto LABEL_99;
          }

          qword_1EB01D240 = *v45;
          word_1EB01D1C5 = 257;
        }

        if (HIBYTE(word_1EB01D1C7) == 1)
        {
          if ((word_1EB01D1C7 & 1) == 0)
          {
            goto LABEL_100;
          }
        }

        else
        {
          if (byte_1EB01D1C1 == 1)
          {
            v47 = qword_1EB01D218;
          }

          else
          {
            v47 = dlopen("/System/Library/PrivateFrameworks/Symptoms.framework/Frameworks/SymptomPresentationFeed.framework/SymptomPresentationFeed", 2);
            qword_1EB01D218 = v47;
            byte_1EB01D1C1 = 1;
          }

          v48 = dlsym(v47, "kSymptomAnalyticsServiceDomainTrackingClearHistoryBundleIDs");
          v46 = &word_1EB01D1C7;
          if (!v48)
          {
            goto LABEL_99;
          }

          *algn_1EB01D248 = *v48;
          word_1EB01D1C7 = 257;
        }

        if (HIBYTE(word_1EB01D1C9) == 1)
        {
          if ((word_1EB01D1C9 & 1) == 0)
          {
            goto LABEL_100;
          }
        }

        else
        {
          if (byte_1EB01D1C1 == 1)
          {
            v49 = qword_1EB01D218;
          }

          else
          {
            v49 = dlopen("/System/Library/PrivateFrameworks/Symptoms.framework/Frameworks/SymptomPresentationFeed.framework/SymptomPresentationFeed", 2);
            qword_1EB01D218 = v49;
            byte_1EB01D1C1 = 1;
          }

          v50 = dlsym(v49, "kSymptomAnalyticsServiceDomainTrackingClearHistoryStartDate");
          v46 = &word_1EB01D1C9;
          if (!v50)
          {
            goto LABEL_99;
          }

          qword_1EB01D250 = *v50;
          word_1EB01D1C9 = 257;
        }

        if (HIBYTE(word_1EB01D1CB) == 1)
        {
          if (word_1EB01D1CB)
          {
            goto LABEL_26;
          }

LABEL_100:
          WTF::CompletionHandler<void ()(void)>::operator()(this);
LABEL_101:
          if (v13)
          {
          }

          if (v12)
          {
          }

          goto LABEL_74;
        }

        if (byte_1EB01D1C1 == 1)
        {
          v51 = qword_1EB01D218;
        }

        else
        {
          v51 = dlopen("/System/Library/PrivateFrameworks/Symptoms.framework/Frameworks/SymptomPresentationFeed.framework/SymptomPresentationFeed", 2);
          qword_1EB01D218 = v51;
          byte_1EB01D1C1 = 1;
        }

        v52 = dlsym(v51, "kSymptomAnalyticsServiceDomainTrackingClearHistoryEndDate");
        v46 = &word_1EB01D1CB;
        if (v52)
        {
          *algn_1EB01D258 = *v52;
          word_1EB01D1CB = 257;
LABEL_26:
          v14 = [MEMORY[0x1E695DF00] distantPast];
          if (a3)
          {
            v14 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSince1970:*&a2];
          }

          v15 = v14;
          v16 = objc_alloc_init(MEMORY[0x1E695DF70]);
          if (*(a4 + 8) == 1)
          {
            v17 = objc_alloc(MEMORY[0x1E695DF70]);
            if (*a4)
            {
              v18 = *(*a4 - 12);
            }

            else
            {
              v18 = 0;
            }

            v19 = [v17 initWithCapacity:v18];
            v55[0] = WTF::HashTable<WebCore::RegistrableDomain,WebCore::RegistrableDomain,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::begin(a4, v20, v21);
            v55[1] = v22;
            if (*a4)
            {
              v23 = *a4 + 8 * *(*a4 - 4);
            }

            else
            {
              v23 = 0;
            }

            while (1)
            {
              if (v55[0] == v23)
              {
                if (v16)
                {
                }

                v16 = v19;
                break;
              }

              v24 = *v55[0];
              if (*v55[0])
              {
                atomic_fetch_add_explicit(v24, 2u, memory_order_relaxed);
              }

              v54 = v24;
              v25 = MEMORY[0x1E696AEC0];
              WTF::String::utf8();
              if (v56)
              {
                v26 = v56 + 16;
              }

              else
              {
                v26 = 0;
              }

              v29 = [v25 stringWithUTF8String:v26];
              v30 = v56;
              v56 = 0;
              if (v30)
              {
                if (*v30 == 1)
                {
                  WTF::fastFree(v30, v27);
                  if (!v29)
                  {
                    goto LABEL_46;
                  }

LABEL_45:
                  [v19 addObject:v29];
                  goto LABEL_46;
                }

                --*v30;
              }

              if (v29)
              {
                goto LABEL_45;
              }

LABEL_46:
              v31 = v54;
              v54 = 0;
              if (v31 && atomic_fetch_add_explicit(v31, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v31, v27);
              }

              v55[0] += 8;
              WTF::HashTableConstIterator<WTF::HashTable<WebCore::RegistrableDomain,WebCore::RegistrableDomain,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>,WebCore::RegistrableDomain,WebCore::RegistrableDomain,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>>::skipEmptyBuckets(v55, v27, v28);
            }
          }

          if (MEMORY[0x19EB01EF0](v53, "com.apple.webbookmarksd", 23))
          {
            WTF::StringImpl::createWithoutCopyingNonEmpty();
            v33 = v55[0];
            v34 = v53;
            v53 = v55[0];
            if (!v34)
            {
LABEL_60:
              v61 = qword_1EB01D240;
              v59[0] = *algn_1EB01D248;
              if (v33)
              {
                atomic_fetch_add_explicit(v33, 2u, memory_order_relaxed);
                MEMORY[0x19EB00B70](v55, v33);
                if (atomic_fetch_add_explicit(v33, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v33, v35);
                }
              }

              else
              {
                v55[0] = &stru_1F1147748;
                v36 = &stru_1F1147748;
              }

              v57 = v55[0];
              v58 = v16;
              v60[0] = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v58 forKeys:&v57 count:1];
              v60[1] = v15;
              v59[1] = qword_1EB01D250;
              v59[2] = *algn_1EB01D258;
              v60[2] = [MEMORY[0x1E695DF00] distantFuture];
              v62[0] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v60 forKeys:v59 count:3];
              v37 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v62 forKeys:&v61 count:1];
              v38 = v55[0];
              v55[0] = 0;
              if (v38)
              {
              }

              v39 = *this;
              *this = 0;
              v40 = malloc_type_malloc(0x28uLL, 0x10E004053C0834CuLL);
              *v40 = MEMORY[0x1E69E9818];
              v40[1] = 50331650;
              v40[2] = WTF::BlockPtr<void ()(NSDictionary *,NSError *)>::fromCallable<WebKit::NetworkSessionCocoa::removeNetworkWebsiteData(std::optional<WTF::WallTime>,std::optional<WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>> &&,WTF::CompletionHandler<void ()(void)> &&)::$_0>(WebKit::NetworkSessionCocoa::removeNetworkWebsiteData(std::optional<WTF::WallTime>,std::optional<WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>> &&,WTF::CompletionHandler<void ()(void)> &&)::$_0)::{lambda(void *,NSDictionary *,NSError *)#1}::__invoke;
              v40[3] = &WTF::BlockPtr<void ()(NSDictionary *,NSError *)>::fromCallable<WebKit::NetworkSessionCocoa::removeNetworkWebsiteData(std::optional<WTF::WallTime>,std::optional<WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>> &&,WTF::CompletionHandler<void ()(void)> &&)::$_0>(WebKit::NetworkSessionCocoa::removeNetworkWebsiteData(std::optional<WTF::WallTime>,std::optional<WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>> &&,WTF::CompletionHandler<void ()(void)> &&)::$_0)::descriptor;
              v40[4] = v39;
              [v13 performNetworkDomainsActionWithOptions:v37 reply:v40];
              _Block_release(v40);
              if (v16)
              {
              }

              goto LABEL_101;
            }

            if (atomic_fetch_add_explicit(v34, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v34, v32);
            }
          }

          v33 = v53;
          goto LABEL_60;
        }

LABEL_99:
        *v46 = 0;
        *(v46 + 1) = 1;
        goto LABEL_100;
      }

      word_1EB01D1C3 = 256;
    }
  }

LABEL_73:
  WTF::CompletionHandler<void ()(void)>::operator()(this);
LABEL_74:
  result = v53;
  v53 = 0;
  if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    return WTF::StringImpl::destroy(result, v41);
  }

  return result;
}

void sub_19D94207C(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11, WTF::StringImpl *a12, uint64_t a13, uint64_t a14, WTF *a15)
{
  if (v17)
  {
  }

  if (v16)
  {
  }

  if (v15)
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

uint64_t WTF::BlockPtr<void ()(NSData *,NSURLResponse *,NSError *)>::fromCallable<WebKit::PCM::NetworkLoader::start(WTF::URL &&,WTF::RefPtr<WTF::JSONImpl::Object,WTF::RawPtrTraits<WTF::JSONImpl>,WTF::DefaultRefDerefTraits<WTF::JSONImpl>> &&,WebCore::PrivateClickMeasurement::PcmDataCarried,WTF::CompletionHandler<void ()(WTF::String const&,WTF::DefaultRefDerefTraits<WTF::JSONImpl> const&)> &&)::$_0>(WebKit::PCM::NetworkLoader::start(WTF::URL &&,WTF::RefPtr<WTF::JSONImpl::Object,WTF::RawPtrTraits<WTF::JSONImpl>,WTF::DefaultRefDerefTraits<WTF::JSONImpl>> &&,WebCore::PrivateClickMeasurement::PcmDataCarried,WTF::CompletionHandler<void ()(WTF::String const&,WTF::DefaultRefDerefTraits<WTF::JSONImpl> const&)> &&)::$_0)::{lambda(void const*)#1}::__invoke(uint64_t a1)
{
  result = *(a1 + 32);
  *(a1 + 32) = 0;
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

WTF::StringImpl *WTF::BlockPtr<void ()(NSData *,NSURLResponse *,NSError *)>::fromCallable<WebKit::PCM::NetworkLoader::start(WTF::URL &&,WTF::RefPtr<WTF::JSONImpl::Object,WTF::RawPtrTraits<WTF::JSONImpl>,WTF::DefaultRefDerefTraits<WTF::JSONImpl>> &&,WebCore::PrivateClickMeasurement::PcmDataCarried,WTF::CompletionHandler<void ()(WTF::String const&,WTF::DefaultRefDerefTraits<WTF::JSONImpl> const&)> &&)::$_0>(WebKit::PCM::NetworkLoader::start(WTF::URL &&,WTF::RefPtr<WTF::JSONImpl::Object,WTF::RawPtrTraits<WTF::JSONImpl>,WTF::DefaultRefDerefTraits<WTF::JSONImpl>> &&,WebCore::PrivateClickMeasurement::PcmDataCarried,WTF::CompletionHandler<void ()(WTF::String const&,WTF::DefaultRefDerefTraits<WTF::JSONImpl> const&)> &&)::$_0)::{lambda(void *,NSData *,NSURLResponse *,NSError *)#1}::__invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  if (byte_1EB01D1BA)
  {
    if (qword_1EB01D1E0)
    {
      v7 = *(a1 + 40);
      if (v7 == -1)
      {
        goto LABEL_49;
      }

      if (!v7)
      {
        __break(0xC471u);
        JUMPOUT(0x19D9425DCLL);
      }

      v8 = *(qword_1EB01D1E0 - 8);
      v9 = (v7 + ~(v7 << 32)) ^ ((v7 + ~(v7 << 32)) >> 22);
      v10 = 9 * ((v9 + ~(v9 << 13)) ^ ((v9 + ~(v9 << 13)) >> 8));
      v11 = (v10 ^ (v10 >> 15)) + ~((v10 ^ (v10 >> 15)) << 27);
      v12 = v8 & ((v11 >> 31) ^ v11);
      v13 = *(qword_1EB01D1E0 + 16 * v12);
      if (v13 != v7)
      {
        v14 = 1;
        while (v13)
        {
          v12 = (v12 + v14) & v8;
          v13 = *(qword_1EB01D1E0 + 16 * v12);
          ++v14;
          if (v13 == v7)
          {
            goto LABEL_11;
          }
        }

        v12 = *(qword_1EB01D1E0 - 4);
      }

LABEL_11:
      if (v12 != *(qword_1EB01D1E0 - 4))
      {
        v15 = (qword_1EB01D1E0 + 16 * v12);
        v16 = v15[1];
        *v15 = -1;
        v15[1] = 0;
        if (v16)
        {
        }

        v17 = qword_1EB01D1E0;
        v18 = vadd_s32(*(qword_1EB01D1E0 - 16), 0xFFFFFFFF00000001);
        *(qword_1EB01D1E0 - 16) = v18;
        v19 = *(v17 - 4);
        if (6 * v18.i32[1] < v19 && v19 >= 9)
        {
          WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::PCM::LoadTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::PCM::LoadTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RetainPtr<NSURLSessionDataTask>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::PCM::LoadTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RetainPtr<NSURLSessionDataTask>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::PCM::LoadTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::PCM::LoadTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RetainPtr<NSURLSessionDataTask>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::PCM::LoadTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::PCM::LoadTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RetainPtr<NSURLSessionDataTask>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::PCM::LoadTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(v19 >> 1);
        }
      }
    }

    if (a4)
    {
LABEL_21:
      MEMORY[0x19EB02040](&v29, [a4 localizedDescription]);
      WTF::CompletionHandler<void ()(WTF::String const&,WTF::RefPtr<WTF::JSONImpl::Object,WTF::RawPtrTraits<WTF::JSONImpl::Object>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Object>> const&)>::operator()((a1 + 32));
      goto LABEL_22;
    }
  }

  else
  {
    qword_1EB01D1E0 = 0;
    byte_1EB01D1BA = 1;
    if (a4)
    {
      goto LABEL_21;
    }
  }

  if (a2)
  {
    [a2 bytes];
    [a2 length];
  }

  WTF::String::fromUTF8();
  WTF::JSONImpl::Value::parseJSON();
  if (v28 && atomic_fetch_add_explicit(v28, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v28, v23);
  }

  v24 = v29;
  if (!v29)
  {
    v29 = 0;
    WTF::CompletionHandler<void ()(WTF::String const&,WTF::RefPtr<WTF::JSONImpl::Object,WTF::RawPtrTraits<WTF::JSONImpl::Object>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Object>> const&)>::operator()((a1 + 32));
LABEL_22:
    result = v29;
    v29 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(result, v21);
      }
    }

    return result;
  }

  v25 = 0;
  v26 = *(v29 + 1);
  if (v26 >= 5 && v26 != 6)
  {
    if (v26 == 5)
    {
      ++*v29;
      v25 = v24;
      goto LABEL_33;
    }

LABEL_49:
    __break(0xC471u);
    JUMPOUT(0x19D9425BCLL);
  }

LABEL_33:
  v27 = v25;
  WTF::CompletionHandler<void ()(WTF::String const&,WTF::RefPtr<WTF::JSONImpl::Object,WTF::RawPtrTraits<WTF::JSONImpl::Object>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Object>> const&)>::operator()((a1 + 32));
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

  result = v29;
  v29 = 0;
  if (result)
  {
    if (*result == 1)
    {
      return WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*result;
    }
  }

  return result;
}

void sub_19D942600(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11, WTF::StringImpl *a12)
{
  if (a11)
  {
    if (*a11 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*a11;
    }
  }

  if (a12)
  {
    if (atomic_fetch_add_explicit(a12, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a12, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

_DWORD *WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::PCM::LoadTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::PCM::LoadTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RetainPtr<NSURLSessionDataTask>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::PCM::LoadTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RetainPtr<NSURLSessionDataTask>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::PCM::LoadTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::PCM::LoadTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RetainPtr<NSURLSessionDataTask>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::PCM::LoadTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::PCM::LoadTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RetainPtr<NSURLSessionDataTask>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::PCM::LoadTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(unsigned int a1)
{
  v2 = qword_1EB01D1E0;
  if (qword_1EB01D1E0)
  {
    v3 = *(qword_1EB01D1E0 - 4);
    v4 = *(qword_1EB01D1E0 - 12);
  }

  else
  {
    v3 = 0;
    v4 = 0;
  }

  result = WTF::fastZeroedMalloc((16 * a1 + 16));
  qword_1EB01D1E0 = (result + 4);
  result[2] = a1 - 1;
  result[3] = a1;
  *result = 0;
  result[1] = v4;
  if (v3)
  {
    v7 = 0;
    while (1)
    {
      v8 = (v2 + 16 * v7);
      v9 = *v8;
      if (*v8 != -1)
      {
        if (v9)
        {
          if (qword_1EB01D1E0)
          {
            v11 = *(qword_1EB01D1E0 - 8);
          }

          else
          {
            v11 = 0;
          }

          v12 = (v9 + ~(v9 << 32)) ^ ((v9 + ~(v9 << 32)) >> 22);
          v13 = 9 * ((v12 + ~(v12 << 13)) ^ ((v12 + ~(v12 << 13)) >> 8));
          v14 = (v13 ^ (v13 >> 15)) + ~((v13 ^ (v13 >> 15)) << 27);
          v15 = v11 & ((v14 >> 31) ^ v14);
          v16 = 1;
          do
          {
            v17 = v15;
            v18 = *(qword_1EB01D1E0 + 16 * v15);
            v15 = (v15 + v16++) & v11;
          }

          while (v18);
          v19 = (qword_1EB01D1E0 + 16 * v17);
          v20 = v19[1];
          v19[1] = 0;
          if (v20)
          {
          }

          *v19 = *v8;
          v21 = v8[1];
          v8[1] = 0;
          v19[1] = v21;
          v10 = v8[1];
          v8[1] = 0;
          if (!v10)
          {
            goto LABEL_19;
          }

LABEL_18:

          goto LABEL_19;
        }

        v10 = v8[1];
        v8[1] = 0;
        if (v10)
        {
          goto LABEL_18;
        }
      }

LABEL_19:
      if (++v7 == v3)
      {
        goto LABEL_22;
      }
    }
  }

  if (v2)
  {
LABEL_22:

    return WTF::fastFree((v2 - 16), v6);
  }

  return result;
}

atomic_uint *WTF::BlockPtr<void ()(BOOL,NSObject  {objcproto16OS_dispatch_data}*,int)>::fromCallable<WebKit::NetworkCache::IOChannel::read(unsigned long,unsigned long,WTF::Ref<WTF::WorkQueueBase,WTF::RawPtrTraits<WTF::WorkQueueBase>,WTF::DefaultRefDerefTraits<WTF::WorkQueueBase>> &&,WTF::Function<void ()(WebKit::NetworkCache::Data &&,int)> &&)::$_0>(WebKit::NetworkCache::IOChannel::read(unsigned long,unsigned long,WTF::Ref<WTF::WorkQueueBase,WTF::RawPtrTraits<WTF::WorkQueueBase>,WTF::DefaultRefDerefTraits<WTF::WorkQueueBase>> &&,WTF::Function<void ()(WebKit::NetworkCache::Data &&,int)> &&)::$_0)::{lambda(void const*)#1}::__invoke(void *a1)
{
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
    (*(*v3 + 40))(v3);
  }

  result = a1[4];
  a1[4] = 0;
  if (result)
  {

    return WTF::ThreadSafeRefCounted<WebKit::NetworkCache::IOChannel,(WTF::DestructionThread)0>::deref(result);
  }

  return result;
}

void WTF::BlockPtr<void ()(BOOL,NSObject  {objcproto16OS_dispatch_data}*,int)>::fromCallable<WebKit::NetworkCache::IOChannel::read(unsigned long,unsigned long,WTF::Ref<WTF::WorkQueueBase,WTF::RawPtrTraits<WTF::WorkQueueBase>,WTF::DefaultRefDerefTraits<WTF::WorkQueueBase>> &&,WTF::Function<void ()(WebKit::NetworkCache::Data &&,int)> &&)::$_0>(WebKit::NetworkCache::IOChannel::read(unsigned long,unsigned long,WTF::Ref<WTF::WorkQueueBase,WTF::RawPtrTraits<WTF::WorkQueueBase>,WTF::DefaultRefDerefTraits<WTF::WorkQueueBase>> &&,WTF::Function<void ()(WebKit::NetworkCache::Data &&,int)> &&)::$_0)::{lambda(void *,BOOL,NSObject  {objcproto16OS_dispatch_data}*,int)#1}::__invoke(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  if ((*(a1 + 56) & 1) == 0)
  {
    if (a3)
    {
      v7 = a3;
    }

    v8[1] = 0;
    v8[2] = 0;
    v8[0] = a3;
    v9 = 0;
    (*(**(a1 + 48) + 16))(*(a1 + 48), v8, a4);
    *(a1 + 56) = 1;
    if (v8[0])
    {
    }
  }
}

void sub_19D9429C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9)
{
  if (a9)
  {
  }

  _Unwind_Resume(exception_object);
}

uint64_t WebCore::RegistrableDomain::matches(void *a1, uint64_t a2, uint64_t a3)
{
  if (!a3 && (MEMORY[0x19EB01EF0](*a1, "nullOrigin", 10) & 1) != 0)
  {
    return 1;
  }

  result = WTF::StringView::endsWith();
  if (!result)
  {
    return result;
  }

  if (!*a1)
  {
    if (!a3)
    {
      return 1;
    }

    v6 = -1;
LABEL_8:
    v7 = v6 + a3;
    if (BYTE4(a3) == 1)
    {
      if (a3 > v7)
      {
        v8 = *(a2 + v7);
        return v8 == 46;
      }
    }

    else if (a3 > v7)
    {
      v8 = *(a2 + 2 * v7);
      return v8 == 46;
    }

    __break(1u);
    return result;
  }

  v5 = *(*a1 + 4);
  if (a3 != v5)
  {
    v6 = ~v5;
    goto LABEL_8;
  }

  return 1;
}

uint64_t WTF::equalLettersIgnoringASCIICaseCommon<WTF::StringImpl>(uint64_t a1, char *a2, unint64_t a3)
{
  if (a3 != *(a1 + 4))
  {
    return 0;
  }

  v3 = *(a1 + 8);
  if ((*(a1 + 16) & 4) != 0)
  {
    if (a3)
    {
      if ((*v3 | 0x20) == *a2)
      {
        v7 = 1;
        do
        {
          v5 = v7;
          if (a3 == v7)
          {
            break;
          }

          v8 = a2[v7];
          v9 = v3[v7++] | 0x20;
        }

        while (v9 == v8);
        return v5 >= a3;
      }

      return 0;
    }
  }

  else if (a3)
  {
    if ((*v3 | 0x20) == *a2)
    {
      v4 = 1;
      do
      {
        v5 = v4;
        if (a3 == v4)
        {
          break;
        }

        v6 = *&v3[2 * v4++] | 0x20;
      }

      while (v6 == a2[v5]);
      return v5 >= a3;
    }

    return 0;
  }

  return 1;
}

WTF::StringImpl *WebCore::RegistrableDomain::registrableDomainFromHost@<X0>(WebCore::RegistrableDomain *this@<X0>, uint64_t *a2@<X8>)
{
  if (WTF::URL::protocolIs())
  {
    WebCore::BlobURL::getOriginURL(v12, this, v5);
    WTF::URL::host(v12);
    if ((v9 & 0x100000000) != 0)
    {
      v10 = WTF::String::String();
    }

    else
    {
      v10 = WTF::String::String();
    }

    WebCore::RegistrableDomain::registrableDomainFromHost(v10, a2);
    v11 = v13;
    v13 = 0;
    if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v11, v7);
    }
  }

  else
  {
    WTF::URL::host(this);
    if ((v6 & 0x100000000) != 0)
    {
      WTF::String::String();
    }

    else
    {
      WTF::String::String();
    }

    WebCore::RegistrableDomain::registrableDomainFromHost(v12, a2);
  }

  result = v12[0];
  v12[0] = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v7);
    }
  }

  return result;
}

void sub_19D942C98(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9)
{
  v11 = *(v9 - 24);
  *(v9 - 24) = 0;
  if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v11, a2);
  }

  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

atomic_ullong *WTF::BlockPtr<void ()(BOOL)>::fromCallable<WebKit::NetworkDataTaskCocoa::resume(void)::$_0>(WebKit::NetworkDataTaskCocoa::resume(void)::$_0)::{lambda(void const*)#1}::__invoke(atomic_ullong *result)
{
  v1 = result[4];
  result[4] = 0;
  if (v1)
  {
    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::NetworkDataTask,(WTF::DestructionThread)1>::deref((v1 + 8));
  }

  return result;
}

uint64_t WTF::BlockPtr<void ()(BOOL)>::fromCallable<WebKit::NetworkDataTaskCocoa::resume(void)::$_0>(WebKit::NetworkDataTaskCocoa::resume(void)::$_0)::{lambda(void *,BOOL)#1}::__invoke(uint64_t a1, char a2)
{
  v3 = *(a1 + 32);
  *(a1 + 32) = 0;
  v4 = WTF::fastMalloc(0x18);
  *v4 = &unk_1F10ED388;
  *(v4 + 8) = v3;
  *(v4 + 16) = a2;
  v6 = v4;
  WTF::callOnMainRunLoop();
  result = v6;
  if (v6)
  {
    return (*(*v6 + 8))(v6);
  }

  return result;
}

void sub_19D942DA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 8))(a10);
  }

  _Unwind_Resume(exception_object);
}

void *WTF::Detail::CallableWrapper<WebKit::NetworkDataTaskCocoa::resume(void)::$_0::operator()(BOOL)::{lambda(void)#1},void>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F10ED388;
  a1[1] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::NetworkDataTask,(WTF::DestructionThread)1>::deref((v2 + 8));
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkDataTaskCocoa::resume(void)::$_0::operator()(BOOL)::{lambda(void)#1},void>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F10ED388;
  *(this + 1) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::NetworkDataTask,(WTF::DestructionThread)1>::deref((v3 + 8));
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkDataTaskCocoa::resume(void)::$_0::operator()(BOOL)::{lambda(void)#1},void>::call(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 8);
  if (v1 == 1)
  {
    return WebKit::NetworkDataTask::scheduleFailure(v2, 2);
  }

  else
  {
    return [*(v2 + 608) resume];
  }
}

void WTF::BlockPtr<void ()(NSDictionary<NSURL *,NSNumber *> *,NSError *)>::fromCallable<WebKit::NetworkDataTaskCocoa::resume(void)::$_1>(WebKit::NetworkDataTaskCocoa::resume(void)::$_1)::{lambda(void const*)#1}::__invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  *(a1 + 40) = 0;
  if (v2)
  {
  }

  v3 = *(a1 + 32);

  _Block_release(v3);
}

uint64_t WTF::BlockPtr<void ()(NSDictionary<NSURL *,NSNumber *> *,NSError *)>::fromCallable<WebKit::NetworkDataTaskCocoa::resume(void)::$_1>(WebKit::NetworkDataTaskCocoa::resume(void)::$_1)::{lambda(void *,NSDictionary<NSURL *,NSNumber *> *,NSError *)#1}::__invoke(uint64_t a1, void *a2, uint64_t a3)
{
  if (!a3)
  {
    [objc_msgSend(a2 objectForKeyedSubscript:{*(a1 + 40)), "integerValue"}];
  }

  v4 = *(*(a1 + 32) + 16);

  return v4();
}

uint64_t *WTF::BlockPtr<void ()(_NSHTTPConnectionInfo *)>::fromCallable<WebKit::NetworkDataTaskCocoa::setH2PingCallback(WTF::URL const&,WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<WTF::Seconds,WebCore::ResourceError> &&)> &&)::$_0>(WebKit::NetworkDataTaskCocoa::setH2PingCallback(WTF::URL const&,WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<WTF::Seconds,WebCore::ResourceError> &&)> &&)::$_0)::{lambda(void const*)#1}::__invoke(uint64_t a1, WTF::StringImpl *a2)
{
  v3 = *(a1 + 48);
  *(a1 + 48) = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, a2);
  }

  return WTF::CompletionHandlerWithFinalizer<void ()(std::experimental::fundamentals_v3::expected<WTF::Seconds,WebCore::ResourceError> &&)>::~CompletionHandlerWithFinalizer((a1 + 32));
}

WTF::StringImpl *WTF::BlockPtr<void ()(_NSHTTPConnectionInfo *)>::fromCallable<WebKit::NetworkDataTaskCocoa::setH2PingCallback(WTF::URL const&,WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<WTF::Seconds,WebCore::ResourceError> &&)> &&)::$_0>(WebKit::NetworkDataTaskCocoa::setH2PingCallback(WTF::URL const&,WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<WTF::Seconds,WebCore::ResourceError> &&)> &&)::$_0)::{lambda(void *,_NSHTTPConnectionInfo *)#1}::__invoke(uint64_t a1, void *a2)
{
  v24[11] = *MEMORY[0x1E69E9840];
  if ([a2 isValid])
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    *(a1 + 32) = 0u;
    *v21 = 0u;
    v6 = malloc_type_malloc(0x30uLL, 0x10E0040FAC56454uLL);
    *v6 = MEMORY[0x1E69E9818];
    v6[1] = 50331650;
    v6[2] = WTF::BlockPtr<void ()(NSError *,double)>::fromCallable<WebKit::NetworkDataTaskCocoa::setH2PingCallback(WTF::URL const&,WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<WTF::Seconds,WebCore::ResourceError> &&)> &&)::$_0::operator()(_NSHTTPConnectionInfo *)::{lambda(NSError *,double)#1}>(WebKit::NetworkDataTaskCocoa::setH2PingCallback(WTF::URL const&,WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<WTF::Seconds,WebCore::ResourceError> &&)> &&)::$_0::operator()(_NSHTTPConnectionInfo *)::{lambda(NSError *,double)#1})::{lambda(void *,NSError *,double)#1}::__invoke;
    v6[3] = &WTF::BlockPtr<void ()(NSError *,double)>::fromCallable<WebKit::NetworkDataTaskCocoa::setH2PingCallback(WTF::URL const&,WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<WTF::Seconds,WebCore::ResourceError> &&)> &&)::$_0::operator()(_NSHTTPConnectionInfo *)::{lambda(NSError *,double)#1}>(WebKit::NetworkDataTaskCocoa::setH2PingCallback(WTF::URL const&,WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<WTF::Seconds,WebCore::ResourceError> &&)> &&)::$_0::operator()(_NSHTTPConnectionInfo *)::{lambda(NSError *,double)#1})::descriptor;
    v24[0] = 0;
    v24[1] = 0;
    v6[4] = v4;
    v6[5] = v5;
    WTF::CompletionHandlerWithFinalizer<void ()(std::experimental::fundamentals_v3::expected<WTF::Seconds,WebCore::ResourceError> &&)>::~CompletionHandlerWithFinalizer(v24);
    [a2 sendPingWithReceiveHandler:v6];
    _Block_release(v6);
    return WTF::CompletionHandlerWithFinalizer<void ()(std::experimental::fundamentals_v3::expected<WTF::Seconds,WebCore::ResourceError> &&)>::~CompletionHandlerWithFinalizer(v21);
  }

  else
  {
    WebCore::internalError();
    makeUnexpected<WebCore::ResourceError>(&v17, v21);
    std::experimental::fundamentals_v3::expected<WTF::Seconds,WebCore::ResourceError>::expected(v24, v21);
    WTF::CompletionHandlerWithFinalizer<void ()(std::experimental::fundamentals_v3::expected<WTF::Seconds,WebCore::ResourceError> &&)>::operator()((a1 + 32));
    std::experimental::fundamentals_v3::expected<WTF::Seconds,WebCore::ResourceError>::~expected(v24, v8);
    v10 = v23;
    v23 = 0;
    if (v10)
    {
    }

    v11 = v22;
    v22 = 0;
    if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v11, v9);
    }

    v12 = v21[1];
    v21[1] = 0;
    if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v12, v9);
    }

    v13 = v21[0];
    v21[0] = 0;
    if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v13, v9);
    }

    v14 = v20;
    v20 = 0;
    if (v14)
    {
    }

    v15 = v19;
    v19 = 0;
    if (v15 && atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v15, v9);
    }

    v16 = v18;
    v18 = 0;
    if (v16 && atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v16, v9);
    }

    result = v17;
    v17 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(result, v9);
      }
    }
  }

  return result;
}

void sub_19D943204(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, WTF::StringImpl *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, WTF::StringImpl *a15, uint64_t a16, void *a17, uint64_t a18, WTF::StringImpl *a19, WTF::StringImpl *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, WTF::StringImpl *a25, uint64_t a26, void *a27)
{
  std::experimental::fundamentals_v3::expected<WTF::Seconds,WebCore::ResourceError>::~expected(v27 - 144, a2);
  if (a27)
  {
  }

  if (a25 && atomic_fetch_add_explicit(a25, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a25, v29);
  }

  if (a20 && atomic_fetch_add_explicit(a20, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a20, v29);
  }

  if (a19 && atomic_fetch_add_explicit(a19, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a19, v29);
  }

  if (a17)
  {
  }

  if (a15 && atomic_fetch_add_explicit(a15, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a15, v29);
  }

  if (a10 && atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a10, v29);
  }

  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, v29);
    }
  }

  _Unwind_Resume(a1);
}

uint64_t WTF::CompletionHandlerWithFinalizer<void ()(std::experimental::fundamentals_v3::expected<WTF::Seconds,WebCore::ResourceError> &&)>::operator()(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  (*(*v1 + 16))(v1);
  v2 = *(*v1 + 8);

  return v2(v1);
}

void makeUnexpected<WebCore::ResourceError>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  *a1 = 0;
  *a2 = v4;
  WTF::URL::URL(a2 + 8, a1 + 1);
  v5 = a1[6];
  a1[6] = 0;
  *(a2 + 48) = v5;
  *(a2 + 56) = *(a1 + 14);
  *(a2 + 60) = *(a1 + 30);
  v6 = a1[8];
  a1[8] = 0;
  *(a2 + 64) = v6;
  *(a2 + 72) = *(a1 + 72);
}

void sub_19D943460(_Unwind_Exception *exception_object, WTF::StringImpl *a2)
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

uint64_t std::experimental::fundamentals_v3::expected<WTF::Seconds,WebCore::ResourceError>::expected(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  *a2 = 0;
  *a1 = v4;
  WTF::URL::URL(a1 + 8, a2 + 1);
  v5 = a2[6];
  a2[6] = 0;
  *(a1 + 48) = v5;
  LODWORD(v5) = *(a2 + 14);
  *(a1 + 60) = *(a2 + 30);
  *(a1 + 56) = v5;
  v6 = a2[8];
  a2[8] = 0;
  *(a1 + 64) = v6;
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = 1;
  return a1;
}

void sub_19D9434FC(_Unwind_Exception *exception_object, WTF::StringImpl *a2)
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

uint64_t std::experimental::fundamentals_v3::expected<WTF::Seconds,WebCore::ResourceError>::~expected(uint64_t a1, WTF::StringImpl *a2)
{
  if (*(a1 + 80) && *(a1 + 80) != 255)
  {
    v3 = *(a1 + 64);
    *(a1 + 64) = 0;
    if (v3)
    {
    }

    v4 = *(a1 + 48);
    *(a1 + 48) = 0;
    if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v4, a2);
    }

    v5 = *(a1 + 8);
    *(a1 + 8) = 0;
    if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v5, a2);
    }

    v6 = *a1;
    *a1 = 0;
    if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v6, a2);
    }
  }

  *(a1 + 80) = -1;
  return a1;
}

uint64_t WTF::BlockPtr<void ()(NSError *,double)>::fromCallable<WebKit::NetworkDataTaskCocoa::setH2PingCallback(WTF::URL const&,WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<WTF::Seconds,WebCore::ResourceError> &&)> &&)::$_0::operator()(_NSHTTPConnectionInfo *)::{lambda(NSError *,double)#1}>(WebKit::NetworkDataTaskCocoa::setH2PingCallback(WTF::URL const&,WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<WTF::Seconds,WebCore::ResourceError> &&)> &&)::$_0::operator()(_NSHTTPConnectionInfo *)::{lambda(NSError *,double)#1})::{lambda(void *,NSError *,double)#1}::__invoke(uint64_t a1, double a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v4[0] = a2;
  v5 = 0;
  WTF::CompletionHandlerWithFinalizer<void ()(std::experimental::fundamentals_v3::expected<WTF::Seconds,WebCore::ResourceError> &&)>::operator()((a1 + 32));
  return std::experimental::fundamentals_v3::expected<WTF::Seconds,WebCore::ResourceError>::~expected(v4, v2);
}

_DWORD *WTF::RefCounted<WebKit::NetworkCache::Cache>::deref(_DWORD *result, WTF::StringImpl *a2)
{
  if (*result == 1)
  {
    WebKit::NetworkCache::Cache::~Cache((result - 2), a2);

    return WTF::fastFree(v3, v4);
  }

  else
  {
    --*result;
  }

  return result;
}

uint64_t WTF::makeBlockPtr<WebKit::saveCookies(NSHTTPCookieStorage *,WTF::CompletionHandler<void ()(void)> &&)::$_0,WTF::CompletionHandler<void ()(void)> &&,void>@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  *a1 = 0;
  v6 = v2;
  v3.n128_f64[0] = WTF::BlockPtr<void ()(void)>::fromCallable<WebKit::saveCookies(NSHTTPCookieStorage *,WTF::CompletionHandler<void ()(void)> &&)::$_0>(a2, &v6);
  result = v6;
  if (v6)
  {
    v5 = *(*v6 + 8);

    return v5(v3);
  }

  return result;
}

void sub_19D943724(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 8))(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t WebKit::saveCookies(NSHTTPCookieStorage *,WTF::CompletionHandler<void ()(void)> &&)::$_0::operator()(WTF::RunLoop *a1)
{
  WTF::RunLoop::mainSingleton(a1);
  std::make_unique[abi:sn200100]<WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(void)>,void>,WTF::CompletionHandler<void ()(void)>,0>(a1, &v3);
  WTF::RunLoop::dispatch();
  result = v3;
  v3 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

void sub_19D9437DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 8))(a10);
  }

  _Unwind_Resume(exception_object);
}

double WTF::BlockPtr<void ()(void)>::fromCallable<WebKit::saveCookies(NSHTTPCookieStorage *,WTF::CompletionHandler<void ()(void)> &&)::$_0>(void *a1, uint64_t *a2)
{
  v4 = malloc_type_malloc(0x28uLL, 0x10E004053C0834CuLL);
  *v4 = MEMORY[0x1E69E9818];
  *&result = 50331650;
  v4[1] = 50331650;
  v4[2] = WTF::BlockPtr<void ()(void)>::fromCallable<WebKit::saveCookies(NSHTTPCookieStorage *,WTF::CompletionHandler<void ()(void)> &&)::$_0>(WebKit::saveCookies(NSHTTPCookieStorage *,WTF::CompletionHandler<void ()(void)> &&)::$_0)::{lambda(void *)#1}::__invoke;
  v4[3] = &WTF::BlockPtr<void ()(void)>::fromCallable<WebKit::saveCookies(NSHTTPCookieStorage *,WTF::CompletionHandler<void ()(void)> &&)::$_0>(WebKit::saveCookies(NSHTTPCookieStorage *,WTF::CompletionHandler<void ()(void)> &&)::$_0)::descriptor;
  v6 = *a2;
  *a2 = 0;
  v4[4] = v6;
  *a1 = v4;
  return result;
}

uint64_t WTF::BlockPtr<void ()(void)>::fromCallable<WebKit::saveCookies(NSHTTPCookieStorage *,WTF::CompletionHandler<void ()(void)> &&)::$_0>(WebKit::saveCookies(NSHTTPCookieStorage *,WTF::CompletionHandler<void ()(void)> &&)::$_0)::{lambda(void const*)#1}::__invoke(uint64_t a1)
{
  result = *(a1 + 32);
  *(a1 + 32) = 0;
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

WebCore::ResourceResponse *WebCore::ResourceResponse::ResourceResponse(WebCore::ResourceResponse *this, NSURLResponse *a2)
{
  *(WebCore::ResourceResponseBase::ResourceResponseBase(this) + 248) = a2;
  if (a2)
  {
    v4 = a2;
  }

  *(this + 256) = 0;
  v5 = *(this + 138) & 0xF0;
  if (!a2)
  {
    ++v5;
  }

  *(this + 138) = v5;
  return this;
}

void sub_19D943CA0(_Unwind_Exception *a1, WTF::StringImpl *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v71 = a65;
  a65 = 0;
  if (v71)
  {
  }

  v72 = a64;
  a64 = 0;
  if (v72)
  {
  }

  WebCore::AuthenticationChallengeBase::~AuthenticationChallengeBase(&a11, a2);
  if (v68)
  {
    (*(*v68 + 8))(v68);
  }

  v73 = *(v67 + 8);
  if (v73)
  {
    *(v67 + 8) = v73 - 1;
    v74 = *(v66 + 16);
    if (v74)
    {
      *(v66 + 16) = v74 - 1;
      if (v69)
      {
        WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::NetworkDataTask,(WTF::DestructionThread)1>::deref((v69 + 8));
      }

      if (v65)
      {
      }

      _Unwind_Resume(a1);
    }

    __break(0xC471u);
    JUMPOUT(0x19D943DECLL);
  }

  __break(0xC471u);
  JUMPOUT(0x19D943E0CLL);
}

void *WTF::Detail::CallableWrapper<processServerTrustEvaluation(WebKit::NetworkSessionCocoa &,WebKit::SessionWrapper &,NSURLAuthenticationChallenge *,WebKit::NegotiatedLegacyTLS,unsigned long long,WebKit::NetworkDataTaskCocoa *,WTF::CompletionHandler<void ()(NSURLSessionAuthChallengeDisposition,NSURLCredential *)> &&)::{lambda(WebKit::AuthenticationChallengeDisposition,WebCore::Credential const&)#1},void,WTF::CompletionHandler<void ()(NSURLSessionAuthChallengeDisposition,NSURLCredential *)> &&,WebCore::Credential const>::~CallableWrapper(void *a1)
{
  *a1 = &unk_1F10ED450;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = a1[1];
  a1[1] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<processServerTrustEvaluation(WebKit::NetworkSessionCocoa &,WebKit::SessionWrapper &,NSURLAuthenticationChallenge *,WebKit::NegotiatedLegacyTLS,unsigned long long,WebKit::NetworkDataTaskCocoa *,WTF::CompletionHandler<void ()(NSURLSessionAuthChallengeDisposition,NSURLCredential *)> &&)::{lambda(WebKit::AuthenticationChallengeDisposition,WebCore::Credential const&)#1},void,WTF::CompletionHandler<void ()(NSURLSessionAuthChallengeDisposition,NSURLCredential *)> &&,WebCore::Credential const>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F10ED450;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *(this + 1);
  *(this + 1) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  return WTF::fastFree(this, a2);
}

void WTF::Detail::CallableWrapper<processServerTrustEvaluation(WebKit::NetworkSessionCocoa &,WebKit::SessionWrapper &,NSURLAuthenticationChallenge *,WebKit::NegotiatedLegacyTLS,unsigned long long,WebKit::NetworkDataTaskCocoa *,WTF::CompletionHandler<void ()(NSURLSessionAuthChallengeDisposition,NSURLCredential *)> &&)::{lambda(WebKit::AuthenticationChallengeDisposition,WebCore::Credential const&)#1},void,WTF::CompletionHandler<void ()(NSURLSessionAuthChallengeDisposition,NSURLCredential *)> &&,WebCore::Credential const>::call(uint64_t a1, int a2, WebCore::Credential *this)
{
  if (a2 || WebCore::Credential::nsCredential(this))
  {
    v6 = WebCore::Credential::nsCredential(this);
    if (v6)
    {
      v5 = v6;
    }

    WTF::CompletionHandler<void ()(NSURLSessionAuthChallengeDisposition,NSURLCredential *)>::operator()((a1 + 8));
    if (v6)
    {
    }
  }

  else
  {
    [MEMORY[0x1E695AC48] credentialForTrust:*(a1 + 16)];

    WTF::CompletionHandler<void ()(NSURLSessionAuthChallengeDisposition,NSURLCredential *)>::operator()((a1 + 8));
  }
}

void sub_19D944050(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

uint64_t WTF::CompletionHandler<void ()(NSURLSessionAuthChallengeDisposition,NSURLCredential *)>::operator()(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  (*(*v1 + 16))(v1);
  v2 = *(*v1 + 8);

  return v2(v1);
}

uint64_t WTF::Detail::CallableWrapper<WTF::BlockPtr<void ()(NSURLSessionAuthChallengeDisposition,NSURLCredential *)>,void,NSURLSessionAuthChallengeDisposition,NSURLCredential *>::~CallableWrapper(uint64_t a1)
{
  *a1 = &unk_1F10ED478;
  _Block_release(*(a1 + 8));
  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::BlockPtr<void ()(NSURLSessionAuthChallengeDisposition,NSURLCredential *)>,void,NSURLSessionAuthChallengeDisposition,NSURLCredential *>::~CallableWrapper(const void **a1)
{
  *a1 = &unk_1F10ED478;
  _Block_release(a1[1]);

  return WTF::fastFree(a1, v2);
}

uint64_t ___ZL23extractResolutionReportP7NSError_block_invoke(uint64_t a1, nw_interface_t interface)
{
  v20[2] = *MEMORY[0x1E69E9840];
  name = nw_interface_get_name(interface);
  WTF::String::fromUTF8(&v18, name, v5);
  v6 = *(a1 + 32);
  v19[0] = @"type";
  type = nw_interface_get_type(interface);
  v8 = &stru_1F1147748;
  if (type <= nw_interface_type_loopback)
  {
    v8 = off_1E7630BF0[type];
  }

  v20[0] = v8;
  v19[1] = @"name";
  v9 = v18;
  if (v18)
  {
    atomic_fetch_add_explicit(v18, 2u, memory_order_relaxed);
    MEMORY[0x19EB00B70](&v17, v9);
    if (atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v9, v10);
    }
  }

  else
  {
    v17 = &stru_1F1147748;
    v11 = &stru_1F1147748;
  }

  v12 = v17;
  if (!v17)
  {
    v12 = &stru_1F1147748;
  }

  v20[1] = v12;
  [v6 addObject:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v20, v19, 2)}];
  v14 = v17;
  v17 = 0;
  if (v14)
  {
  }

  v15 = v18;
  v18 = 0;
  if (v15 && atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v15, v13);
  }

  return 1;
}

void sub_19D944334(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11)
{
  if (a11)
  {
    if (atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a11, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void *__copy_helper_block_e8_32c38_ZTSN3WTF9RetainPtrI14NSMutableArrayEE(void *result, uint64_t a2)
{
  v2 = *(a2 + 32);
  result[4] = v2;
  if (v2)
  {
    return v2;
  }

  return result;
}

void __destroy_helper_block_e8_32c38_ZTSN3WTF9RetainPtrI14NSMutableArrayEE(uint64_t a1)
{
  v1 = *(a1 + 32);
  *(a1 + 32) = 0;
  if (v1)
  {
  }
}

WebKit::NetworkSessionCocoa *std::make_unique[abi:sn200100]<WebKit::NetworkSessionCocoa,WebKit::NetworkProcess &,WebKit::NetworkSessionCreationParameters const&,0>(WebKit::NetworkSessionCocoa **a1, void *a2, const WebKit::NetworkSessionCreationParameters *a3)
{
  v6 = WebKit::NetworkSessionCocoa::operator new(0x500, a2);
  result = WebKit::NetworkSessionCocoa::NetworkSessionCocoa(v6, a2, a3);
  *a1 = v6;
  return result;
}

uint64_t WebKit::NetworkSessionCocoa::operator new(WebKit::NetworkSessionCocoa *this, void *a2)
{
  if (WebKit::NetworkSessionCocoa::s_heapRef)
  {
    return bmalloc::api::tzoneAllocateNonCompact(WebKit::NetworkSessionCocoa::s_heapRef, a2);
  }

  else
  {
    return WebKit::NetworkSessionCocoa::operatorNewSlow(0x500);
  }
}

unsigned int **WTF::WeakPtrFactory<WebKit::SessionSet,WTF::DefaultWeakPtrImpl>::~WeakPtrFactory(unsigned int **a1, void *a2)
{
  if (*a1)
  {
    *(*a1 + 1) = 0;
    v4 = *a1;
    *a1 = 0;
    if (v4)
    {
      if (atomic_fetch_add(v4, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v4);
        WTF::fastFree(v4, a2);
      }
    }
  }

  return a1;
}

uint64_t WTF::HashTable<unsigned long long,WTF::KeyValuePair<unsigned long long,WTF::ThreadSafeWeakPtr<WebKit::NetworkDataTaskCocoa,WTF::NoTaggingTraits<WebKit::NetworkDataTaskCocoa>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<unsigned long long,WTF::ThreadSafeWeakPtr<WebKit::NetworkDataTaskCocoa,WTF::NoTaggingTraits<WebKit::NetworkDataTaskCocoa>>>>,WTF::DefaultHash<unsigned long long>,WTF::HashMap<unsigned long long,WTF::ThreadSafeWeakPtr<WebKit::NetworkDataTaskCocoa,WTF::NoTaggingTraits<WebKit::NetworkDataTaskCocoa>>,WTF::DefaultHash<unsigned long long>,WTF::HashTraits<unsigned long long>,WTF::HashTraits<WTF::ThreadSafeWeakPtr<WebKit::NetworkDataTaskCocoa,WTF::NoTaggingTraits<WebKit::NetworkDataTaskCocoa>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<unsigned long long>,WTF::FastMalloc>::deallocateTable(uint64_t a1, void *a2)
{
  v3 = *(a1 - 4);
  if (v3)
  {
    v4 = (a1 + 16);
    do
    {
      if (*(v4 - 2) != -1)
      {
        v5 = *v4;
        *v4 = 0;
        if (v5)
        {
          WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v5, a2);
        }
      }

      v4 += 3;
      --v3;
    }

    while (v3);
  }

  return WTF::fastFree((a1 - 16), a2);
}

uint64_t WTF::HashTable<WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,std::unique_ptr<WebKit::IsolatedSession>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,std::unique_ptr<WebKit::IsolatedSession>>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,std::unique_ptr<WebKit::IsolatedSession>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<std::unique_ptr<WebKit::IsolatedSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::deallocateTable(uint64_t a1, WTF::StringImpl *a2)
{
  v3 = *(a1 - 4);
  if (v3)
  {
    v4 = (a1 + 8);
    do
    {
      if (*(v4 - 1) != -1)
      {
        std::unique_ptr<WebKit::IsolatedSession>::reset[abi:sn200100](v4, 0);
        v5 = *(v4 - 1);
        *(v4 - 1) = 0;
        if (v5)
        {
          if (atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v5, a2);
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

uint64_t *WTF::HashTable<WebCore::RegistrableDomain,WebCore::RegistrableDomain,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::HashTable(uint64_t *a1, uint64_t *a2)
{
  *a1 = 0;
  v3 = *a2;
  if (*a2)
  {
    v4 = *(v3 - 12);
    if (v4)
    {
      v7 = WTF::HashTable<WebCore::PermissionsPolicy::Feature,WebCore::PermissionsPolicy::Feature,WTF::IdentityExtractor,WTF::IntHash<WebCore::PermissionsPolicy::Feature>,WTF::StrongEnumHashTraits<WebCore::PermissionsPolicy::Feature>,WTF::StrongEnumHashTraits<WebCore::PermissionsPolicy::Feature>,WTF::FastMalloc>::computeBestTableSize(*(v3 - 12));
      v8 = WTF::fastZeroedMalloc((8 * v7 + 16));
      *a1 = (v8 + 4);
      v8[2] = v7 - 1;
      v8[3] = v7;
      *v8 = 0;
      v8[1] = v4;
      v11 = WTF::HashTable<WebCore::RegistrableDomain,WebCore::RegistrableDomain,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::begin(a2, v9, v10);
      v12 = v11;
      v19[0] = v11;
      v19[1] = v13;
      if (*a2)
      {
        v14 = *a2 + 8 * *(*a2 - 4);
      }

      else
      {
        v14 = 0;
      }

      if (v14 != v11)
      {
        do
        {
          v18 = v12;
          v15 = WTF::HashTable<WebCore::RegistrableDomain,WebCore::RegistrableDomain,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::lookupForReinsert<WTF::IdentityHashTranslator<WTF::HashTraits<WebCore::RegistrableDomain>,WTF::DefaultHash<WebCore::RegistrableDomain>>,WebCore::RegistrableDomain>(a1, v12);
          WTF::IdentityHashTranslator<WTF::HashTraits<WebCore::RegistrableDomain>,WTF::DefaultHash<WebCore::RegistrableDomain>>::translate<WebCore::RegistrableDomain,WebCore::RegistrableDomain,WTF::HashTable<WebCore::RegistrableDomain,WebCore::RegistrableDomain,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::HashTable(WTF::HashTable<WebCore::RegistrableDomain,WebCore::RegistrableDomain,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc> const&)::{lambda(void)#1}>(v15, v12, &v18);
          v19[0] += 8;
          WTF::HashTableConstIterator<WTF::HashTable<WebCore::RegistrableDomain,WebCore::RegistrableDomain,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>,WebCore::RegistrableDomain,WebCore::RegistrableDomain,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>>::skipEmptyBuckets(v19, v16, v17);
          v12 = v19[0];
        }

        while (v19[0] != v14);
      }
    }
  }

  return a1;
}

uint64_t WTF::HashTable<WebCore::RegistrableDomain,WebCore::RegistrableDomain,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::lookupForReinsert<WTF::IdentityHashTranslator<WTF::HashTraits<WebCore::RegistrableDomain>,WTF::DefaultHash<WebCore::RegistrableDomain>>,WebCore::RegistrableDomain>(uint64_t *a1, WTF::ASCIICaseInsensitiveHash **a2)
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

  v4 = WTF::ASCIICaseInsensitiveHash::hash(*a2, a2);
  v6 = 0;
  do
  {
    v7 = v4 & v3;
    v8 = WTF::equal(*(v2 + 8 * v7), 0, v5);
    v4 = ++v6 + v7;
  }

  while (!v8);
  return v2 + 8 * v7;
}

WTF::StringImpl *WTF::IdentityHashTranslator<WTF::HashTraits<WebCore::RegistrableDomain>,WTF::DefaultHash<WebCore::RegistrableDomain>>::translate<WebCore::RegistrableDomain,WebCore::RegistrableDomain,WTF::HashTable<WebCore::RegistrableDomain,WebCore::RegistrableDomain,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::HashTable(WTF::HashTable<WebCore::RegistrableDomain,WebCore::RegistrableDomain,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc> const&)::{lambda(void)#1}>(WTF::StringImpl **a1, WTF::StringImpl *a2, atomic_uint ***a3)
{
  v4 = **a3;
  if (v4)
  {
    atomic_fetch_add_explicit(v4, 2u, memory_order_relaxed);
  }

  result = *a1;
  *a1 = v4;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, a2);
    }
  }

  return result;
}

uint64_t WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RetainPtr<NSURLSessionDataTask>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RetainPtr<NSURLSessionDataTask>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RetainPtr<NSURLSessionDataTask>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RetainPtr<NSURLSessionDataTask>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::deallocateTable(uint64_t a1, void *a2)
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
        }
      }

      v4 += 2;
      --v3;
    }

    while (v3);
  }

  return WTF::fastFree((a1 - 16), a2);
}

uint64_t WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkSessionCocoa::BlobDataTaskClient,WTF::RawPtrTraits<WebKit::NetworkSessionCocoa::BlobDataTaskClient>,WTF::DefaultRefDerefTraits<WebKit::NetworkSessionCocoa::BlobDataTaskClient>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkSessionCocoa::BlobDataTaskClient,WTF::RawPtrTraits<WebKit::NetworkSessionCocoa::BlobDataTaskClient>,WTF::DefaultRefDerefTraits<WebKit::NetworkSessionCocoa::BlobDataTaskClient>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkSessionCocoa::BlobDataTaskClient,WTF::RawPtrTraits<WebKit::NetworkSessionCocoa::BlobDataTaskClient>,WTF::DefaultRefDerefTraits<WebKit::NetworkSessionCocoa::BlobDataTaskClient>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::NetworkSessionCocoa::BlobDataTaskClient,WTF::RawPtrTraits<WebKit::NetworkSessionCocoa::BlobDataTaskClient>,WTF::DefaultRefDerefTraits<WebKit::NetworkSessionCocoa::BlobDataTaskClient>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::deallocateTable(uint64_t a1, void *a2)
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
          WTF::RefCounted<WebKit::NetworkSessionCocoa::BlobDataTaskClient>::deref(v5 + 16, a2);
        }
      }

      v4 += 2;
      --v3;
    }

    while (v3);
  }

  return WTF::fastFree((a1 - 16), a2);
}

uint64_t WTF::HashTable<WebKit::WebPageNetworkParameters,WTF::KeyValuePair<WebKit::WebPageNetworkParameters,WTF::WeakPtr<WebKit::SessionSet,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebKit::WebPageNetworkParameters,WTF::WeakPtr<WebKit::SessionSet,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>>,WTF::DefaultHash<WebKit::WebPageNetworkParameters>,WTF::HashMap<WebKit::WebPageNetworkParameters,WTF::WeakPtr<WebKit::SessionSet,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WebKit::WebPageNetworkParameters>,WTF::HashTraits<WebKit::WebPageNetworkParameters>,WTF::HashTraits<WTF::WeakPtr<WebKit::SessionSet,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebKit::WebPageNetworkParameters>,WTF::FastMalloc>::deallocateTable(uint64_t a1, void *a2)
{
  v3 = *(a1 - 4);
  if (v3)
  {
    v4 = a1;
    do
    {
      if (*v4 != -1)
      {
        v5 = *(v4 + 8);
        *(v4 + 8) = 0;
        if (v5 && atomic_fetch_add(v5, 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, v5);
          WTF::fastFree(v5, a2);
        }

        v6 = *v4;
        *v4 = 0;
        if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v6, a2);
        }
      }

      v4 += 16;
      --v3;
    }

    while (v3);
  }

  return WTF::fastFree((a1 - 16), a2);
}

uint64_t WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::SessionSet,WTF::RawPtrTraits<WebKit::SessionSet>,WTF::DefaultRefDerefTraits<WebKit::SessionSet>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::SessionSet,WTF::RawPtrTraits<WebKit::SessionSet>,WTF::DefaultRefDerefTraits<WebKit::SessionSet>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::SessionSet,WTF::RawPtrTraits<WebKit::SessionSet>,WTF::DefaultRefDerefTraits<WebKit::SessionSet>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::SessionSet,WTF::RawPtrTraits<WebKit::SessionSet>,WTF::DefaultRefDerefTraits<WebKit::SessionSet>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::deallocateTable(uint64_t a1, void *a2)
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
          WTF::RefCounted<WebKit::SessionSet>::deref((v5 + 8), a2);
        }
      }

      v4 += 2;
      --v3;
    }

    while (v3);
  }

  return WTF::fastFree((a1 - 16), a2);
}

uint64_t WebKit::IsolatedSession::operator new(WebKit::IsolatedSession *this, void *a2)
{
  if (WebKit::IsolatedSession::s_heapRef)
  {
    return bmalloc::api::tzoneAllocateNonCompact(WebKit::IsolatedSession::s_heapRef, a2);
  }

  else
  {
    return WebKit::IsolatedSession::operatorNewSlow(0x40);
  }
}

WebKit::IsolatedSession *std::unique_ptr<WebKit::IsolatedSession>::reset[abi:sn200100](WebKit::IsolatedSession **a1, WebKit::IsolatedSession *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    WebKit::IsolatedSession::~IsolatedSession(result, a2);

    return bmalloc::api::tzoneFree(v5, v6);
  }

  return result;
}

void WebKit::IsolatedSession::~IsolatedSession(WebKit::IsolatedSession *this, void *a2)
{
  v3 = *(this + 6);
  if (v3)
  {
    WTF::HashTable<unsigned long long,WTF::KeyValuePair<unsigned long long,WTF::ThreadSafeWeakPtr<WebKit::NetworkDataTaskCocoa,WTF::NoTaggingTraits<WebKit::NetworkDataTaskCocoa>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<unsigned long long,WTF::ThreadSafeWeakPtr<WebKit::NetworkDataTaskCocoa,WTF::NoTaggingTraits<WebKit::NetworkDataTaskCocoa>>>>,WTF::DefaultHash<unsigned long long>,WTF::HashMap<unsigned long long,WTF::ThreadSafeWeakPtr<WebKit::NetworkDataTaskCocoa,WTF::NoTaggingTraits<WebKit::NetworkDataTaskCocoa>>,WTF::DefaultHash<unsigned long long>,WTF::HashTraits<unsigned long long>,WTF::HashTraits<WTF::ThreadSafeWeakPtr<WebKit::NetworkDataTaskCocoa,WTF::NoTaggingTraits<WebKit::NetworkDataTaskCocoa>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<unsigned long long>,WTF::FastMalloc>::deallocateTable(v3, a2);
  }

  v4 = *(this + 5);
  if (v4)
  {
    WTF::fastFree((v4 - 16), a2);
  }

  v5 = *(this + 4);
  if (v5)
  {
    WTF::HashTable<unsigned long long,WTF::KeyValuePair<unsigned long long,WTF::ThreadSafeWeakPtr<WebKit::NetworkDataTaskCocoa,WTF::NoTaggingTraits<WebKit::NetworkDataTaskCocoa>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<unsigned long long,WTF::ThreadSafeWeakPtr<WebKit::NetworkDataTaskCocoa,WTF::NoTaggingTraits<WebKit::NetworkDataTaskCocoa>>>>,WTF::DefaultHash<unsigned long long>,WTF::HashMap<unsigned long long,WTF::ThreadSafeWeakPtr<WebKit::NetworkDataTaskCocoa,WTF::NoTaggingTraits<WebKit::NetworkDataTaskCocoa>>,WTF::DefaultHash<unsigned long long>,WTF::HashTraits<unsigned long long>,WTF::HashTraits<WTF::ThreadSafeWeakPtr<WebKit::NetworkDataTaskCocoa,WTF::NoTaggingTraits<WebKit::NetworkDataTaskCocoa>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<unsigned long long>,WTF::FastMalloc>::deallocateTable(v5, a2);
  }

  v6 = *(this + 3);
  *(this + 3) = 0;
  if (v6)
  {
  }

  v7 = *(this + 2);
  *(this + 2) = 0;
  if (v7)
  {
  }

  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::~WeakPtrFactory(this, a2);
}

void *WTF::Detail::CallableWrapper<WebKit::createChallengeCompletionHandler(WTF::Ref<WebKit::NetworkProcess,WTF::RawPtrTraits<WebKit::NetworkProcess>,WTF::DefaultRefDerefTraits<WebKit::NetworkProcess>> &&,PAL::SessionID,WebCore::AuthenticationChallenge const&,WTF::String const&,unsigned long long,WTF::CompletionHandler<void ()(WebKit::AuthenticationChallengeDisposition,PAL::SessionID::Credential const&)> &&)::$_0,void,WTF::CompletionHandler,PAL::SessionID::Credential const>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F10ED4D0;
  v3 = a1[60];
  a1[60] = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, a2);
  }

  v4 = a1[58];
  a1[58] = 0;
  if (v4)
  {
  }

  v5 = a1[57];
  a1[57] = 0;
  if (v5)
  {
  }

  WebCore::AuthenticationChallengeBase::~AuthenticationChallengeBase((a1 + 4), a2);
  v6 = a1[2];
  a1[2] = 0;
  if (v6 && atomic_fetch_add(v6 + 36, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v6 + 36);
    (*(*v6 + 24))(v6);
  }

  v7 = a1[1];
  a1[1] = 0;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::createChallengeCompletionHandler(WTF::Ref<WebKit::NetworkProcess,WTF::RawPtrTraits<WebKit::NetworkProcess>,WTF::DefaultRefDerefTraits<WebKit::NetworkProcess>> &&,PAL::SessionID,WebCore::AuthenticationChallenge const&,WTF::String const&,unsigned long long,WTF::CompletionHandler<void ()(WebKit::AuthenticationChallengeDisposition,PAL::SessionID::Credential const&)> &&)::$_0,void,WTF::CompletionHandler,PAL::SessionID::Credential const>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  v2 = WTF::Detail::CallableWrapper<WebKit::createChallengeCompletionHandler(WTF::Ref<WebKit::NetworkProcess,WTF::RawPtrTraits<WebKit::NetworkProcess>,WTF::DefaultRefDerefTraits<WebKit::NetworkProcess>> &&,PAL::SessionID,WebCore::AuthenticationChallenge const&,WTF::String const&,unsigned long long,WTF::CompletionHandler<void ()(WebKit::AuthenticationChallengeDisposition,PAL::SessionID::Credential const&)> &&)::$_0,void,WTF::CompletionHandler,PAL::SessionID::Credential const>::~CallableWrapper(a1, a2);

  return WTF::fastFree(v2, v3);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::createChallengeCompletionHandler(WTF::Ref<WebKit::NetworkProcess,WTF::RawPtrTraits<WebKit::NetworkProcess>,WTF::DefaultRefDerefTraits<WebKit::NetworkProcess>> &&,PAL::SessionID,WebCore::AuthenticationChallenge const&,WTF::String const&,unsigned long long,WTF::CompletionHandler<void ()(WebKit::AuthenticationChallengeDisposition,PAL::SessionID::Credential const&)> &&)::$_0,void,WTF::CompletionHandler,PAL::SessionID::Credential const>::call(uint64_t *a1, int a2, WebCore::CredentialBase *this)
{
  if (WebCore::CredentialBase::persistence(this) == 1 && (v5 = WebCore::AuthenticationChallengeBase::protectionSpace((a1 + 4)), WebCore::ProtectionSpaceBase::isPasswordBased(v5)))
  {
    WebCore::CredentialBase::user(this);
    WebCore::CredentialBase::password(this);
    WebCore::CredentialBase::CredentialBase();
    v28 = 0;
    WTF::URL::URL(&v23);
    v6 = WebCore::AuthenticationChallengeBase::failureResponse((a1 + 4));
    if (WebCore::ResourceResponseBase::httpStatusCode(v6) == 401)
    {
      v7 = WebCore::AuthenticationChallengeBase::failureResponse((a1 + 4));
      v9 = WebCore::ResourceResponseBase::url(v7);
      v10 = *v9;
      if (*v9)
      {
        atomic_fetch_add_explicit(v10, 2u, memory_order_relaxed);
      }

      v11 = v23;
      v23 = v10;
      if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v11, v8);
      }

      v12 = *(v9 + 8);
      v25 = *(v9 + 24);
      v24 = v12;
    }

    v13 = a1[2];
    v29 = a1[3];
    v14 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((v13 + 248), &v29);
    if (v14)
    {
      v15 = v14;
      ++*(v14 + 8);
      v16 = WebCore::AuthenticationChallengeBase::protectionSpace((a1 + 4));
      WebCore::CredentialStorage::set((v15 + 112), (a1 + 60), &v26, v16, &v23);
      v17 = *(v15 + 8);
      if (!v17)
      {
        result = 290;
        __break(0xC471u);
        return result;
      }

      *(v15 + 8) = v17 - 1;
    }

    WTF::CompletionHandler<void ()(WebKit::AuthenticationChallengeDisposition,WebCore::Credential const&)>::operator()(a1 + 1);
    v19 = v23;
    v23 = 0;
    if (v19 && atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v19, v18);
    }

    v20 = v28;
    v28 = 0;
    if (v20)
    {
    }

    v21 = v27;
    v27 = 0;
    if (v21 && atomic_fetch_add_explicit(v21, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v21, v18);
    }

    result = v26;
    v26 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(result, v18);
      }
    }
  }

  else
  {

    return WTF::CompletionHandler<void ()(WebKit::AuthenticationChallengeDisposition,WebCore::Credential const&)>::operator()(a1 + 1);
  }

  return result;
}

void sub_19D944D60(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, WTF::StringImpl *a14, WTF::StringImpl *a15, uint64_t a16, void *a17)
{
  if (a17)
  {
  }

  if (a15 && atomic_fetch_add_explicit(a15, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a15, a2);
  }

  if (a14)
  {
    if (atomic_fetch_add_explicit(a14, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a14, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

WebCore::AuthenticationChallengeBase *WebCore::AuthenticationChallengeBase::AuthenticationChallengeBase(WebCore::AuthenticationChallengeBase *this, const WebCore::AuthenticationChallengeBase *a2)
{
  *this = *a2;
  v4 = *(a2 + 1);
  if (v4)
  {
    atomic_fetch_add_explicit(v4, 2u, memory_order_relaxed);
  }

  *(this + 1) = v4;
  v5 = *(a2 + 2);
  if (v5)
  {
    atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed);
  }

  *(this + 2) = v5;
  v6 = *(a2 + 6);
  *(this + 27) = *(a2 + 27);
  *(this + 6) = v6;
  v7 = *(a2 + 4);
  *(this + 4) = v7;
  if (v7)
  {
    v8 = v7;
  }

  v9 = *(a2 + 5);
  if (v9)
  {
    atomic_fetch_add_explicit(v9, 2u, memory_order_relaxed);
  }

  *(this + 5) = v9;
  v10 = *(a2 + 6);
  if (v10)
  {
    atomic_fetch_add_explicit(v10, 2u, memory_order_relaxed);
  }

  *(this + 6) = v10;
  *(this + 56) = *(a2 + 56);
  v11 = *(a2 + 8);
  *(this + 8) = v11;
  if (v11)
  {
    v12 = v11;
  }

  *(this + 18) = *(a2 + 18);
  WebCore::ResourceResponseBase::ResourceResponseBase((this + 80), (a2 + 80));
  v13 = *(a2 + 41);
  *(this + 41) = v13;
  if (v13)
  {
    v22 = v13;
  }

  *(this + 336) = *(a2 + 336);
  v14 = *(a2 + 43);
  if (v14)
  {
    atomic_fetch_add_explicit(v14, 2u, memory_order_relaxed);
  }

  *(this + 43) = v14;
  v15 = *(a2 + 44);
  if (v15)
  {
    atomic_fetch_add_explicit(v15, 2u, memory_order_relaxed);
  }

  *(this + 44) = v15;
  v16 = *(a2 + 376);
  *(this + 360) = *(a2 + 360);
  *(this + 376) = v16;
  v17 = *(a2 + 49);
  if (v17)
  {
    atomic_fetch_add_explicit(v17, 2u, memory_order_relaxed);
  }

  *(this + 49) = v17;
  v18 = *(a2 + 100);
  *(this + 202) = *(a2 + 202);
  *(this + 100) = v18;
  v19 = *(a2 + 51);
  *(this + 51) = v19;
  if (v19)
  {
    v20 = v19;
  }

  *(this + 416) = *(a2 + 416);
  return this;
}

void sub_19D944F7C(_Unwind_Exception *a1, WTF::StringImpl *a2)
{
  WebCore::ResourceResponseBase::~ResourceResponseBase((v2 + 10), a2);
  v5 = v2[8];
  v2[8] = 0;
  if (v5)
  {
  }

  v6 = v2[6];
  v2[6] = 0;
  if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v6, v4);
  }

  v7 = v2[5];
  v2[5] = 0;
  if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v7, v4);
  }

  v8 = v2[4];
  v2[4] = 0;
  if (v8)
  {
  }

  v9 = v2[2];
  v2[2] = 0;
  if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v9, v4);
  }

  v10 = v2[1];
  v2[1] = 0;
  if (v10)
  {
    if (atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v10, v4);
    }
  }

  _Unwind_Resume(a1);
}

WebCore::ResourceRequest *WebCore::ResourceRequest::ResourceRequest(WebCore::ResourceRequest *this)
{
  WTF::URL::URL(v5);
  WebCore::ResourceRequestBase::ResourceRequestBase(this, v5, 0);
  v3 = v5[0];
  v5[0] = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, v2);
  }

  *(this + 24) = 0;
  return this;
}

void sub_19D945134(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
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

uint64_t WebCore::ResourceRequestBase::ResourceRequestBase(uint64_t a1, uint64_t *a2, char a3)
{
  result = WebCore::ResourceRequestBase::RequestData::RequestData(a1, a2, a3);
  *(result + 152) = 0;
  v4 = *MEMORY[0x1E696EBA8];
  if (*MEMORY[0x1E696EBA8])
  {
    atomic_fetch_add_explicit(v4, 2u, memory_order_relaxed);
  }

  *(result + 160) = v4;
  *(result + 168) = 0;
  *(result + 176) = 0;
  *(result + 180) = 0;
  *(result + 184) = *(result + 184) & 0xE0 | 5;
  *(result + 148) |= 2u;
  return result;
}

uint64_t WebCore::ResourceRequestBase::RequestData::RequestData(uint64_t a1, uint64_t *a2, char a3)
{
  WTF::URL::URL(a1, a2);
  WTF::URL::URL((v5 + 40));
  *(a1 + 80) = *MEMORY[0x1E69E2628];
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  *(a1 + 88) = v7;
  WebCore::HTTPHeaderMap::HTTPHeaderMap((a1 + 96));
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 144) = a3;
  *(a1 + 145) = 67109120;
  return a1;
}

void sub_19D945248(_Unwind_Exception *exception_object, WTF::StringImpl *a2)
{
  v4 = v2[11];
  v2[11] = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  v5 = v2[5];
  v2[5] = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, a2);
  }

  v6 = *v2;
  *v2 = 0;
  if (v6)
  {
    if (atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v6, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t WTF::Vector<WTF::RefPtr<WebCore::BlobDataFileReference,WTF::RawPtrTraits<WebCore::BlobDataFileReference>,WTF::DefaultRefDerefTraits<WebCore::BlobDataFileReference>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, void *a2)
{
  v3 = *(a1 + 12);
  if (v3)
  {
    WTF::VectorDestructor<true,WTF::RefPtr<WebCore::BlobDataFileReference,WTF::RawPtrTraits<WebCore::BlobDataFileReference>,WTF::DefaultRefDerefTraits<WebCore::BlobDataFileReference>>>::destruct(*a1, (*a1 + 8 * v3));
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

_DWORD *WTF::VectorDestructor<true,WTF::RefPtr<WebCore::BlobDataFileReference,WTF::RawPtrTraits<WebCore::BlobDataFileReference>,WTF::DefaultRefDerefTraits<WebCore::BlobDataFileReference>>>::destruct(_DWORD *result, _DWORD **a2)
{
  if (result != a2)
  {
    v3 = result;
    do
    {
      result = *v3;
      *v3 = 0;
      if (result)
      {
        if (result[2] == 1)
        {
          result = (*(*result + 8))(result);
        }

        else
        {
          --result[2];
        }
      }

      ++v3;
    }

    while (v3 != a2);
  }

  return result;
}

_DWORD *WebKit::NetworkSessionCocoa::loadImageForDecoding(WebCore::ResourceRequest &&,WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WebCore::ResourceRequest &&::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,unsigned long,WebCore::ResourceRequest &&::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<WebCore::ResourceRequest &&::Ref<WebCore::FragmentedSharedBuffer,WebCore::ResourceRequest &&::RawPtrTraits<WebCore::ResourceRequest &&::Ref>,WebCore::ResourceRequest &&::DefaultRefDerefTraits<WebCore::ResourceRequest &&::Ref>>,WebCore::ResourceError> &&)> &&)::Client::deref(_DWORD *result)
{
  if (result[4] == 1)
  {
    return (*(*result + 24))();
  }

  --result[4];
  return result;
}

uint64_t WebKit::NetworkSessionCocoa::loadImageForDecoding(WebCore::ResourceRequest &&,WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WebCore::ResourceRequest &&::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,unsigned long,WebCore::ResourceRequest &&::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<WebCore::ResourceRequest &&::Ref<WebCore::FragmentedSharedBuffer,WebCore::ResourceRequest &&::RawPtrTraits<WebCore::ResourceRequest &&::Ref>,WebCore::ResourceRequest &&::DefaultRefDerefTraits<WebCore::ResourceRequest &&::Ref>>,WebCore::ResourceError> &&)> &&)::Client::~Client(uint64_t a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F10ED4F8;
  v3 = *(a1 + 120);
  *(a1 + 120) = 0;
  if (v3 && atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3 + 2);
    (*(*v3 + 8))(v3);
  }

  v4 = *(a1 + 112);
  *(a1 + 112) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *(a1 + 104);
  *(a1 + 104) = 0;
  if (v5)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::NetworkDataTask,(WTF::DestructionThread)1>::deref((v5 + 8));
  }

  v6 = *(a1 + 40);
  *(a1 + 40) = 0;
  if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v6, a2);
  }

  v7 = *(a1 + 32);
  *(a1 + 32) = 0;
  if (v7 && atomic_fetch_add(v7 + 36, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v7 + 36);
    (*(*v7 + 24))(v7);
  }

  v8 = *(a1 + 24);
  *(a1 + 24) = 0;
  if (v8)
  {
    if (v8[4] == 1)
    {
      (*(*v8 + 24))(v8);
    }

    else
    {
      --v8[4];
    }
  }

  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::~WeakPtrFactory((a1 + 8), a2);
  if (*(a1 + 16) == 1)
  {
    return a1;
  }

  result = 191;
  __break(0xC471u);
  return result;
}

{
  v2 = WebKit::NetworkSessionCocoa::loadImageForDecoding(WebCore::ResourceRequest &&,WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WebCore::ResourceRequest &&::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,unsigned long,WebCore::ResourceRequest &&::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<WebCore::ResourceRequest &&::Ref<WebCore::FragmentedSharedBuffer,WebCore::ResourceRequest &&::RawPtrTraits<WebCore::ResourceRequest &&::Ref>,WebCore::ResourceRequest &&::DefaultRefDerefTraits<WebCore::ResourceRequest &&::Ref>>,WebCore::ResourceError> &&)> &&)::Client::~Client(a1, a2);

  return WTF::fastFree(v2, v3);
}

uint64_t WebKit::NetworkSessionCocoa::loadImageForDecoding(WebCore::ResourceRequest &&,WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WebCore::ResourceRequest &&::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,unsigned long,WebCore::ResourceRequest &&::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<WebCore::ResourceRequest &&::Ref<WebCore::FragmentedSharedBuffer,WebCore::ResourceRequest &&::RawPtrTraits<WebCore::ResourceRequest &&::Ref>,WebCore::ResourceRequest &&::DefaultRefDerefTraits<WebCore::ResourceRequest &&::Ref>>,WebCore::ResourceError> &&)> &&)::Client::didReceiveChallenge(uint64_t a1, WebCore::AuthenticationChallengeBase *a2, char a3, uint64_t *a4)
{
  WebKit::NetworkProcess::protectedAuthenticationManager(*(a1 + 32), &v10);
  v8 = v10;
  result = WebKit::AuthenticationManager::didReceiveAuthenticationChallenge(v10, *(a1 + 80), *(a1 + 88), 1, 0, a2, a3, a4);
  if (v8)
  {

    return WebKit::AuthenticationManager::deref(v8);
  }

  return result;
}

void sub_19D945678(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    WebKit::AuthenticationManager::deref(v1);
  }

  _Unwind_Resume(exception_object);
}

WTF::StringImpl *WebKit::NetworkSessionCocoa::loadImageForDecoding(WebCore::ResourceRequest &&,WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WebCore::ResourceRequest &&::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,unsigned long,WebCore::ResourceRequest &&::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<WebCore::ResourceRequest &&::Ref<WebCore::FragmentedSharedBuffer,WebCore::ResourceRequest &&::RawPtrTraits<WebCore::ResourceRequest &&::Ref>,WebCore::ResourceRequest &&::DefaultRefDerefTraits<WebCore::ResourceRequest &&::Ref>>,WebCore::ResourceError> &&)> &&)::Client::didReceiveData(void *a1)
{
  result = WebCore::SharedBufferBuilder::append<WebCore::SharedBuffer const&>((a1 + 15));
  v3 = a1[15];
  if (v3 && *(v3 + 56) > a1[12])
  {
    MEMORY[0x19EB04D40](&v13, [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A978] code:-1103 userInfo:0]);
    WebCore::NetworkLoadMetrics::NetworkLoadMetrics(&v10);
    WebKit::NetworkSessionCocoa::loadImageForDecoding(WebCore::ResourceRequest &&,WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WebCore::ResourceRequest &&::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,unsigned long,WebCore::ResourceRequest &&::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<WebCore::ResourceRequest &&::Ref<WebCore::FragmentedSharedBuffer,WebCore::ResourceRequest &&::RawPtrTraits<WebCore::ResourceRequest &&::Ref>,WebCore::ResourceRequest &&::DefaultRefDerefTraits<WebCore::ResourceRequest &&::Ref>>,WebCore::ResourceError> &&)> &&)::Client::didCompleteWithError(a1, &v13);
    v5 = v12;
    v12 = 0;
    if (v5)
    {
      WTF::RefCounted<WebCore::AdditionalNetworkLoadMetricsForWebInspector>::deref(v5, v4);
    }

    v6 = v11;
    v11 = 0;
    if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v6, v4);
    }

    v7 = v16;
    v16 = 0;
    if (v7)
    {
    }

    v8 = v15;
    v15 = 0;
    if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v8, v4);
    }

    v9 = v14;
    v14 = 0;
    if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v9, v4);
    }

    result = v13;
    v13 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(result, v4);
      }
    }
  }

  return result;
}

void sub_19D9457D0(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, WTF::StringImpl *a20, uint64_t a21, uint64_t a22, uint64_t a23, WebCore::AdditionalNetworkLoadMetricsForWebInspector *a24)
{
  if (a24)
  {
    WTF::RefCounted<WebCore::AdditionalNetworkLoadMetricsForWebInspector>::deref(a24, a2);
  }

  if (a20 && atomic_fetch_add_explicit(a20, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a20, a2);
  }

  v26 = *(v24 - 32);
  *(v24 - 32) = 0;
  if (v26)
  {
  }

  v27 = *(v24 - 48);
  *(v24 - 48) = 0;
  if (v27 && atomic_fetch_add_explicit(v27, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v27, a2);
  }

  v28 = *(v24 - 88);
  *(v24 - 88) = 0;
  if (v28 && atomic_fetch_add_explicit(v28, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v28, a2);
  }

  v29 = *(v24 - 96);
  *(v24 - 96) = 0;
  if (v29)
  {
    if (atomic_fetch_add_explicit(v29, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v29, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

_DWORD *WebKit::NetworkSessionCocoa::loadImageForDecoding(WebCore::ResourceRequest &&,WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WebCore::ResourceRequest &&::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,unsigned long,WebCore::ResourceRequest &&::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<WebCore::ResourceRequest &&::Ref<WebCore::FragmentedSharedBuffer,WebCore::ResourceRequest &&::RawPtrTraits<WebCore::ResourceRequest &&::Ref>,WebCore::ResourceRequest &&::DefaultRefDerefTraits<WebCore::ResourceRequest &&::Ref>>,WebCore::ResourceError> &&)> &&)::Client::didCompleteWithError(void *a1, uint64_t a2)
{
  v27 = *MEMORY[0x1E69E9840];
  if (*(a2 + 60))
  {
    v4 = *a2;
    if (*a2)
    {
      atomic_fetch_add_explicit(v4, 2u, memory_order_relaxed);
    }

    v5 = *(a2 + 8);
    if (v5)
    {
      atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed);
    }

    v15 = *(a2 + 32);
    v16 = *(a2 + 16);
    v6 = *(a2 + 48);
    if (v6)
    {
      atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed);
    }

    LODWORD(v17) = *(a2 + 56);
    WORD2(v17) = *(a2 + 60);
    v7 = *(a2 + 64);
    if (v7)
    {
      v8 = v7;
    }

    v9 = *(a2 + 72);
    v18[0] = v4;
    v18[1] = v5;
    v19 = v16;
    v20 = v15;
    v21 = v6;
    v22 = v17;
    v23 = WORD2(v17);
    v24 = v7;
    v25 = v9;
    v26 = 1;
    WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<WTF::Ref<WebCore::FragmentedSharedBuffer,WTF::RawPtrTraits<WebCore::FragmentedSharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::FragmentedSharedBuffer>>,WebCore::ResourceError> &&)>::operator()(a1 + 14);
    std::experimental::fundamentals_v3::expected<WTF::Ref<WebCore::FragmentedSharedBuffer,WTF::RawPtrTraits<WebCore::FragmentedSharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::FragmentedSharedBuffer>>,WebCore::ResourceError>::~expected(v18, v10);
  }

  else
  {
    WebCore::SharedBufferBuilder::take(&v17, (a1 + 15));
    v11 = v17;
    v17 = 0;
    v18[0] = v11;
    v26 = 0;
    WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<WTF::Ref<WebCore::FragmentedSharedBuffer,WTF::RawPtrTraits<WebCore::FragmentedSharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::FragmentedSharedBuffer>>,WebCore::ResourceError> &&)>::operator()(a1 + 14);
    std::experimental::fundamentals_v3::expected<WTF::Ref<WebCore::FragmentedSharedBuffer,WTF::RawPtrTraits<WebCore::FragmentedSharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::FragmentedSharedBuffer>>,WebCore::ResourceError>::~expected(v18, v12);
    v13 = v17;
    v17 = 0;
    if (v13 && atomic_fetch_add(v13 + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v13 + 2);
      (*(*v13 + 8))(v13);
    }
  }

  result = a1[3];
  a1[3] = 0;
  if (result)
  {
    if (result[4] == 1)
    {
      return (*(*result + 24))(result);
    }

    else
    {
      --result[4];
    }
  }

  return result;
}

void sub_19D945A58(_Unwind_Exception *a1, WTF::StringImpl *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned int *a8, ...)
{
  va_start(va, a8);
  std::experimental::fundamentals_v3::expected<WTF::Ref<WebCore::FragmentedSharedBuffer,WTF::RawPtrTraits<WebCore::FragmentedSharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::FragmentedSharedBuffer>>,WebCore::ResourceError>::~expected(va, a2);
  if (a8)
  {
    if (atomic_fetch_add(a8 + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, a8 + 2);
      (*(*a8 + 8))(a8);
    }
  }

  _Unwind_Resume(a1);
}

atomic_ullong *WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::NetworkDataTask,(WTF::DestructionThread)1>::deref(atomic_ullong *result)
{
  do
  {
    v1 = *result;
    if ((*result & 1) == 0)
    {
      v2 = *result;

      return WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebKit::NetworkDataTask,(WTF::DestructionThread)1>(v2);
    }

    v3 = *result;
    atomic_compare_exchange_strong_explicit(result, &v3, v1 - 2, memory_order_relaxed, memory_order_relaxed);
  }

  while (v3 != v1);
  if (v1 == 3)
  {
    v4 = result;
    v5 = WTF::fastMalloc(0x10);
    *v5 = &unk_1F10ED990;
    v5[1] = v4;
    v6 = v5;
    WTF::ensureOnMainThread();
    result = v6;
    if (v6)
    {
      return (*(*v6 + 8))(v6);
    }
  }

  return result;
}

void sub_19D945C1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 8))(a10);
  }

  _Unwind_Resume(exception_object);
}

atomic_uchar *WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebKit::NetworkDataTask,(WTF::DestructionThread)1>(atomic_uchar *this)
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
  if (v5 != 1)
  {
    v7 = v3;
    this = WTF::Lock::unlockSlow(v1);
    v3 = v7;
  }

  if (!v3)
  {
    v6 = WTF::fastMalloc(0x18);
    *v6 = &unk_1F10ED9B8;
    *(v6 + 1) = v1;
    *(v6 + 2) = v4;
    v8 = v6;
    WTF::ensureOnMainThread();
    this = v8;
    if (v8)
    {
      return (*(*v8 + 8))(v8);
    }
  }

  return this;
}

void sub_19D945D58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 8))(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t WTF::Detail::CallableWrapper<void WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebKit::NetworkDataTask,(WTF::DestructionThread)1>(void)::{lambda(void)#1},void>::call(uint64_t a1, void *a2)
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
  if (v5 != 1)
  {
    v7 = v6;
    result = WTF::Lock::unlockSlow(v3);
    v6 = v7;
  }

  if (!v6)
  {

    return WTF::fastFree(v3, a2);
  }

  return result;
}

uint64_t WTF::CompletionHandler<void ()(WebCore::ResourceRequest &&)>::operator()(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  (*(*v1 + 16))(v1);
  v2 = *(*v1 + 8);

  return v2(v1);
}

uint64_t WTF::CompletionHandler<void ()(WebCore::PolicyAction)>::operator()(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  (*(*v1 + 16))(v1);
  v2 = *(*v1 + 8);

  return v2(v1);
}

uint64_t WebCore::SharedBufferBuilder::append<WebCore::SharedBuffer const&>(WebCore::SharedBufferBuilder *a1)
{
  WebCore::SharedBufferBuilder::ensureBuffer(a1);
  v2 = *a1;
  atomic_fetch_add(v2 + 2, 1u);
  result = WebCore::FragmentedSharedBuffer::append();
  if (v2 && atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v2 + 2);
    v4 = *(*v2 + 8);

    return v4(v2);
  }

  return result;
}

void sub_19D946090(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    if (atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v1 + 2);
      (*(*v1 + 8))(v1);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<WTF::Ref<WebCore::FragmentedSharedBuffer,WTF::RawPtrTraits<WebCore::FragmentedSharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::FragmentedSharedBuffer>>,WebCore::ResourceError> &&)>::operator()(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  (*(*v1 + 16))(v1);
  v2 = *(*v1 + 8);

  return v2(v1);
}

uint64_t std::experimental::fundamentals_v3::expected<WTF::Ref<WebCore::FragmentedSharedBuffer,WTF::RawPtrTraits<WebCore::FragmentedSharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::FragmentedSharedBuffer>>,WebCore::ResourceError>::~expected(uint64_t a1, WTF::StringImpl *a2)
{
  if (*(a1 + 80) != 255)
  {
    if (*(a1 + 80))
    {
      v4 = *(a1 + 64);
      *(a1 + 64) = 0;
      if (v4)
      {
      }

      v5 = *(a1 + 48);
      *(a1 + 48) = 0;
      if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v5, a2);
      }

      v6 = *(a1 + 8);
      *(a1 + 8) = 0;
      if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v6, a2);
      }

      v7 = *a1;
      *a1 = 0;
      if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v7, a2);
      }
    }

    else
    {
      v3 = *a1;
      *a1 = 0;
      if (v3 && atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v3 + 2);
        (*(*v3 + 8))(v3);
      }
    }
  }

  *(a1 + 80) = -1;
  return a1;
}

WTF::StringImpl *WebKit::NetworkSessionCocoa::loadImageForDecoding(WebCore::ResourceRequest &&,WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WebCore::ResourceRequest &&::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,unsigned long,WebCore::ResourceRequest &&::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<WebCore::ResourceRequest &&::Ref<WebCore::FragmentedSharedBuffer,WebCore::ResourceRequest &&::RawPtrTraits<WebCore::ResourceRequest &&::Ref>,WebCore::ResourceRequest &&::DefaultRefDerefTraits<WebCore::ResourceRequest &&::Ref>>,WebCore::ResourceError> &&)> &&)::Client::completeWithBlockedError(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    atomic_fetch_add_explicit(v2, 2u, memory_order_relaxed);
  }

  v17 = v2;
  v3 = *(a1 + 64);
  v18 = *(a1 + 48);
  v19 = v3;
  WebCore::ResourceRequestBase::ResourceRequestBase(v20, &v17, 0);
  v21 = 0;
  WebKit::blockedError(v20, &v22);
  WebCore::NetworkLoadMetrics::NetworkLoadMetrics(&v14);
  WebKit::NetworkSessionCocoa::loadImageForDecoding(WebCore::ResourceRequest &&,WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WebCore::ResourceRequest &&::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,unsigned long,WebCore::ResourceRequest &&::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<WebCore::ResourceRequest &&::Ref<WebCore::FragmentedSharedBuffer,WebCore::ResourceRequest &&::RawPtrTraits<WebCore::ResourceRequest &&::Ref>,WebCore::ResourceRequest &&::DefaultRefDerefTraits<WebCore::ResourceRequest &&::Ref>>,WebCore::ResourceError> &&)> &&)::Client::didCompleteWithError(a1, &v22);
  v5 = v16;
  v16 = 0;
  if (v5)
  {
    WTF::RefCounted<WebCore::AdditionalNetworkLoadMetricsForWebInspector>::deref(v5, v4);
  }

  v6 = v15;
  v15 = 0;
  if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v6, v4);
  }

  v7 = v25;
  v25 = 0;
  if (v7)
  {
  }

  v8 = v24;
  v24 = 0;
  if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v8, v4);
  }

  v9 = v23;
  v23 = 0;
  if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v9, v4);
  }

  v10 = v22;
  v22 = 0;
  if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, v4);
  }

  v11 = v21;
  v21 = 0;
  if (v11)
  {
  }

  WebCore::ResourceRequestBase::~ResourceRequestBase(v20);
  result = v17;
  v17 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v12);
    }
  }

  return result;
}

void sub_19D9463F4(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, WTF::StringImpl *a20, uint64_t a21, uint64_t a22, uint64_t a23, WebCore::AdditionalNetworkLoadMetricsForWebInspector *a24, WTF::StringImpl *a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, void *a54)
{
  if (a24)
  {
    WTF::RefCounted<WebCore::AdditionalNetworkLoadMetricsForWebInspector>::deref(a24, a2);
  }

  if (a20 && atomic_fetch_add_explicit(a20, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a20, a2);
  }

  v56 = *(v54 - 32);
  *(v54 - 32) = 0;
  if (v56)
  {
  }

  v57 = *(v54 - 48);
  *(v54 - 48) = 0;
  if (v57 && atomic_fetch_add_explicit(v57, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v57, a2);
  }

  v58 = *(v54 - 88);
  *(v54 - 88) = 0;
  if (v58 && atomic_fetch_add_explicit(v58, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v58, a2);
  }

  v59 = *(v54 - 96);
  *(v54 - 96) = 0;
  if (v59 && atomic_fetch_add_explicit(v59, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v59, a2);
  }

  v60 = a54;
  a54 = 0;
  if (v60)
  {
  }

  WebCore::ResourceRequestBase::~ResourceRequestBase(&a30);
  if (a25)
  {
    if (atomic_fetch_add_explicit(a25, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a25, v61);
    }
  }

  _Unwind_Resume(a1);
}

void WebKit::NetworkSessionCocoa::BlobDataTaskClient::~BlobDataTaskClient(WebKit::NetworkSessionCocoa::BlobDataTaskClient *this, void *a2)
{
  v3 = *(this + 5);
  *(this + 5) = 0;
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    WTF::fastFree(v3, a2);
  }

  v4 = *(this + 4);
  *(this + 4) = 0;
  if (v4)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v4);
  }

  v5 = *(this + 3);
  *(this + 3) = 0;
  if (v5)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::NetworkDataTask,(WTF::DestructionThread)1>::deref((v5 + 8));
  }

  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::~WeakPtrFactory(this + 1, a2);
  if (*(this + 4) != 1)
  {
    __break(0xC471u);
  }
}

{
  v3 = *(this + 5);
  *(this + 5) = 0;
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    WTF::fastFree(v3, a2);
  }

  v4 = *(this + 4);
  *(this + 4) = 0;
  if (v4)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v4);
  }

  v5 = *(this + 3);
  *(this + 3) = 0;
  if (v5)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::NetworkDataTask,(WTF::DestructionThread)1>::deref((v5 + 8));
  }

  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::~WeakPtrFactory(this + 1, a2);
  if (*(this + 4) == 1)
  {

    bmalloc::api::tzoneFree(this, v6);
  }

  else
  {
    __break(0xC471u);
  }
}

uint64_t WebKit::NetworkSessionCocoa::BlobDataTaskClient::didReceiveResponse(uint64_t a1, WebCore::ResourceResponseBase *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *(a1 + 32);
  if (v5)
  {
    v8 = *a5;
    *a5 = 0;
    v9 = WTF::fastMalloc(0x10);
    *v9 = &unk_1F10ED628;
    v9[1] = v8;
    if (WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
    {
      result = 141;
      __break(0xC471u);
    }

    else
    {
      IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
      v12 = IPC::Encoder::operator new(0x238, v11);
      *v12 = 525;
      *(v12 + 68) = 0;
      *(v12 + 70) = 0;
      *(v12 + 69) = 0;
      *(v12 + 2) = 0;
      *(v12 + 3) = 0;
      *(v12 + 1) = 0;
      IPC::Encoder::encodeHeader(v12);
      v19 = v12;
      IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v12, *(a1 + 48));
      IPC::ArgumentCoder<WebCore::ResourceResponse,void>::encode(v12, a2);
      v18[0] = v9;
      v18[1] = IdentifierInternal;
      IPC::Connection::sendMessageWithAsyncReply(v5, &v19, v18, 0, 0);
      v14 = v18[0];
      v18[0] = 0;
      if (v14)
      {
        (*(*v14 + 8))(v14);
      }

      result = v19;
      v19 = 0;
      if (result)
      {
        IPC::Encoder::~Encoder(result, v13);
        return bmalloc::api::tzoneFree(v16, v17);
      }
    }
  }

  else
  {

    return WTF::CompletionHandler<void ()(WebCore::PolicyAction)>::operator()(a5);
  }

  return result;
}

uint64_t WebKit::NetworkSessionCocoa::BlobDataTaskClient::didReceiveData(uint64_t this, const WebCore::SharedBuffer *a2)
{
  if (*(this + 32))
  {
    v2 = this;
    v3 = WTF::fastMalloc(0x10);
    *v3 = &unk_1F10ED650;
    v3[1] = v2;
    v4 = v3;
    WebCore::FragmentedSharedBuffer::forEachSegment();
    this = v4;
    if (v4)
    {
      return (*(*v4 + 8))(v4);
    }
  }

  return this;
}

void sub_19D94691C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 8))(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t WebKit::NetworkSessionCocoa::BlobDataTaskClient::didCompleteWithError(WebKit::NetworkSessionCocoa::BlobDataTaskClient *this, const WebCore::ResourceError *a2, const WebCore::NetworkLoadMetrics *a3)
{
  result = *(this + 4);
  if (result)
  {
    v5 = (this + 48);
    v12[0] = (this + 48);
    v12[1] = a2;
    result = IPC::Connection::send<Messages::NetworkProcessProxy::DataTaskDidCompleteWithError>(result, v12, 0, 0, 0);
    v6 = *(this + 5);
    if (v6)
    {
      v7 = *(v6 + 8);
      if (v7)
      {
        ++*(v7 + 16);
        v8 = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkSessionCocoa::BlobDataTaskClient,WTF::RawPtrTraits<WebKit::NetworkSessionCocoa::BlobDataTaskClient>,WTF::DefaultRefDerefTraits<WebKit::NetworkSessionCocoa::BlobDataTaskClient>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkSessionCocoa::BlobDataTaskClient,WTF::RawPtrTraits<WebKit::NetworkSessionCocoa::BlobDataTaskClient>,WTF::DefaultRefDerefTraits<WebKit::NetworkSessionCocoa::BlobDataTaskClient>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkSessionCocoa::BlobDataTaskClient,WTF::RawPtrTraits<WebKit::NetworkSessionCocoa::BlobDataTaskClient>,WTF::DefaultRefDerefTraits<WebKit::NetworkSessionCocoa::BlobDataTaskClient>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::NetworkSessionCocoa::BlobDataTaskClient,WTF::RawPtrTraits<WebKit::NetworkSessionCocoa::BlobDataTaskClient>,WTF::DefaultRefDerefTraits<WebKit::NetworkSessionCocoa::BlobDataTaskClient>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkSessionCocoa::BlobDataTaskClient,WTF::RawPtrTraits<WebKit::NetworkSessionCocoa::BlobDataTaskClient>,WTF::DefaultRefDerefTraits<WebKit::NetworkSessionCocoa::BlobDataTaskClient>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::NetworkSessionCocoa::BlobDataTaskClient,WTF::RawPtrTraits<WebKit::NetworkSessionCocoa::BlobDataTaskClient>,WTF::DefaultRefDerefTraits<WebKit::NetworkSessionCocoa::BlobDataTaskClient>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>( *(v7 + 1264),  *v5);
        result = v7 + 1264;
        v9 = *(v7 + 1264);
        if (v9)
        {
          v10 = (v9 + 16 * *(v9 - 4));
          if (v10 == v8)
          {
LABEL_11:
            v11 = *(v7 + 16);
            if (v11)
            {
              *(v7 + 16) = v11 - 1;
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
          if (!v8)
          {
            goto LABEL_11;
          }

          v10 = 0;
        }

        if (v10 != v8)
        {
          result = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkSessionCocoa::BlobDataTaskClient,WTF::RawPtrTraits<WebKit::NetworkSessionCocoa::BlobDataTaskClient>,WTF::DefaultRefDerefTraits<WebKit::NetworkSessionCocoa::BlobDataTaskClient>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkSessionCocoa::BlobDataTaskClient,WTF::RawPtrTraits<WebKit::NetworkSessionCocoa::BlobDataTaskClient>,WTF::DefaultRefDerefTraits<WebKit::NetworkSessionCocoa::BlobDataTaskClient>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkSessionCocoa::BlobDataTaskClient,WTF::RawPtrTraits<WebKit::NetworkSessionCocoa::BlobDataTaskClient>,WTF::DefaultRefDerefTraits<WebKit::NetworkSessionCocoa::BlobDataTaskClient>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::NetworkSessionCocoa::BlobDataTaskClient,WTF::RawPtrTraits<WebKit::NetworkSessionCocoa::BlobDataTaskClient>,WTF::DefaultRefDerefTraits<WebKit::NetworkSessionCocoa::BlobDataTaskClient>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::remove(result, v8);
        }

        goto LABEL_11;
      }
    }
  }

  return result;
}

void sub_19D946A34(_Unwind_Exception *a1)
{
  v2 = *(v1 + 16);
  if (v2)
  {
    *(v1 + 16) = v2 - 1;
    _Unwind_Resume(a1);
  }

  __break(0xC471u);
}

uint64_t WTF::RefCounted<WebKit::NetworkSessionCocoa::BlobDataTaskClient>::deref(uint64_t result, void *a2)
{
  v2 = result;
  if (*result == 1)
  {
    v3 = *(result + 24);
    *(v2 + 24) = 0;
    if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v3);
      WTF::fastFree(v3, a2);
    }

    v4 = *(v2 + 16);
    *(v2 + 16) = 0;
    if (v4)
    {
      WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v4);
    }

    v5 = *(v2 + 8);
    *(v2 + 8) = 0;
    if (v5)
    {
      WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::NetworkDataTask,(WTF::DestructionThread)1>::deref((v5 + 8));
    }

    WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::~WeakPtrFactory((v2 - 8), a2);
    if (*v2 == 1)
    {

      return bmalloc::api::tzoneFree((v2 - 16), v6);
    }

    else
    {
      result = 191;
      __break(0xC471u);
    }
  }

  else
  {
    --*result;
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::PrivateRelayed<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcessProxy::DataTaskDidReceiveResponse,WebKit::NetworkSessionCocoa::BlobDataTaskClient::didReceiveResponse(WebCore::ResourceResponse &&,WebKit::NegotiatedLegacyTLS,WebKit::PrivateRelayed,WTF::CompletionHandler<void ()(WebCore::PolicyAction)> &&)::{lambda(BOOL)#1}>(WebKit::NetworkSessionCocoa::BlobDataTaskClient::didReceiveResponse(WebCore::ResourceResponse &&,WebKit::NegotiatedLegacyTLS,WebKit::PrivateRelayed,WTF::CompletionHandler<void ()(WebCore::PolicyAction)> &&)::{lambda(BOOL)#1} &&,WTF::ThreadLikeAssertion)::{lambda(WTF::CompletionHandler<void ()(WebCore::PolicyAction)> &&,IPC::Connection*)#1},void,WTF::CompletionHandler<void ()(WebCore::PolicyAction)> &&,IPC::Connection*>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F10ED628;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::PrivateRelayed<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcessProxy::DataTaskDidReceiveResponse,WebKit::NetworkSessionCocoa::BlobDataTaskClient::didReceiveResponse(WebCore::ResourceResponse &&,WebKit::NegotiatedLegacyTLS,WebKit::PrivateRelayed,WTF::CompletionHandler<void ()(WebCore::PolicyAction)> &&)::{lambda(BOOL)#1}>(WebKit::NetworkSessionCocoa::BlobDataTaskClient::didReceiveResponse(WebCore::ResourceResponse &&,WebKit::NegotiatedLegacyTLS,WebKit::PrivateRelayed,WTF::CompletionHandler<void ()(WebCore::PolicyAction)> &&)::{lambda(BOOL)#1} &&,WTF::ThreadLikeAssertion)::{lambda(WTF::CompletionHandler<void ()(WebCore::PolicyAction)> &&,IPC::Connection*)#1},void,WTF::CompletionHandler<void ()(WebCore::PolicyAction)> &&,IPC::Connection*>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F10ED628;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::PrivateRelayed<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcessProxy::DataTaskDidReceiveResponse,WebKit::NetworkSessionCocoa::BlobDataTaskClient::didReceiveResponse(WebCore::ResourceResponse &&,WebKit::NegotiatedLegacyTLS,WebKit::PrivateRelayed,WTF::CompletionHandler<void ()(WebCore::PolicyAction)> &&)::{lambda(BOOL)#1}>(WebKit::NetworkSessionCocoa::BlobDataTaskClient::didReceiveResponse(WebCore::ResourceResponse &&,WebKit::NegotiatedLegacyTLS,WebKit::PrivateRelayed,WTF::CompletionHandler<void ()(WebCore::PolicyAction)> &&)::{lambda(BOOL)#1} &&,WTF::ThreadLikeAssertion)::{lambda(WTF::CompletionHandler<void ()(WebCore::PolicyAction)> &&,IPC::Connection*)#1},void,WTF::CompletionHandler<void ()(WebCore::PolicyAction)> &&,IPC::Connection*>::call(uint64_t a1, uint64_t a2, IPC::Decoder *a3)
{
  if (a3 && *a3)
  {
    IPC::Decoder::decode<std::tuple<BOOL>>(a3);
  }

  return WTF::CompletionHandler<void ()(WebCore::PolicyAction)>::operator()((a1 + 8));
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN6WebKit19NetworkSessionCocoa18BlobDataTaskClient14didReceiveDataERKN7WebCore12SharedBufferEEUlT_E_vJNSt3__14spanIKhLm18446744073709551615EEEEE4callESE_(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7[0] = a2;
  v7[1] = a3;
  v3 = *(a1 + 8);
  v4 = *(v3 + 32);
  v6[0] = (v3 + 48);
  v6[1] = v7;
  return IPC::Connection::send<Messages::NetworkProcessProxy::DataTaskDidReceiveData>(v4, v6, 0, 0, 0);
}

uint64_t IPC::Connection::send<Messages::NetworkProcessProxy::DataTaskDidReceiveData>(uint64_t *a1, const void ***a2, uint64_t a3, char a4, uint64_t a5)
{
  v10 = IPC::Encoder::operator new(0x238, a2);
  *v10 = 524;
  *(v10 + 2) = 0;
  *(v10 + 3) = 0;
  *(v10 + 1) = a3;
  *(v10 + 68) = 0;
  *(v10 + 70) = 0;
  *(v10 + 69) = 0;
  IPC::Encoder::encodeHeader(v10);
  v17 = v10;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v10, **a2);
  IPC::ArgumentCoder<std::span<unsigned char const,18446744073709551615ul>,void>::encode<IPC::Encoder>(v10, *a2[1], a2[1][1]);
  v12 = IPC::Connection::sendMessageImpl(a1, &v17, a4, a5);
  v13 = v17;
  v17 = 0;
  if (v13)
  {
    IPC::Encoder::~Encoder(v13, v11);
    bmalloc::api::tzoneFree(v15, v16);
  }

  return v12;
}

void sub_19D946DC4(_Unwind_Exception *a1, void *a2)
{
  IPC::Encoder::~Encoder(v2, a2);
  bmalloc::api::tzoneFree(v4, v5);
  _Unwind_Resume(a1);
}

uint64_t WTF::HashTable<WTF::Ref<WebKit::SessionSet,WTF::RawPtrTraits<WebKit::SessionSet>,WTF::DefaultRefDerefTraits<WebKit::SessionSet>>,WTF::Ref<WebKit::SessionSet,WTF::RawPtrTraits<WebKit::SessionSet>,WTF::DefaultRefDerefTraits<WebKit::SessionSet>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WebKit::SessionSet,WTF::RawPtrTraits<WebKit::SessionSet>,WTF::DefaultRefDerefTraits<WebKit::SessionSet>>>,WTF::HashTraits<WTF::Ref<WebKit::SessionSet,WTF::RawPtrTraits<WebKit::SessionSet>,WTF::DefaultRefDerefTraits<WebKit::SessionSet>>>,WTF::HashTraits<WTF::Ref<WebKit::SessionSet,WTF::RawPtrTraits<WebKit::SessionSet>,WTF::DefaultRefDerefTraits<WebKit::SessionSet>>>,WTF::FastMalloc>::deallocateTable(uint64_t *a1, void *a2)
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
          WTF::RefCounted<WebKit::SessionSet>::deref((v5 + 8), a2);
        }
      }

      ++v4;
      --v3;
    }

    while (v3);
  }

  return WTF::fastFree((a1 - 2), a2);
}

Class initAnalyticsWorkspace(void)
{
  if ((byte_1EB01D1C0 & 1) == 0)
  {
    qword_1EB01D210 = dlopen("/System/Library/PrivateFrameworks/Symptoms.framework/Frameworks/SymptomAnalytics.framework/SymptomAnalytics", 2);
    byte_1EB01D1C0 = 1;
  }

  result = objc_getClass("AnalyticsWorkspace");
  qword_1EB01D228 = result;
  _MergedGlobals_31 = AnalyticsWorkspaceFunction;
  return result;
}

Class initUsageFeed(void)
{
  if ((byte_1EB01D1C1 & 1) == 0)
  {
    qword_1EB01D218 = dlopen("/System/Library/PrivateFrameworks/Symptoms.framework/Frameworks/SymptomPresentationFeed.framework/SymptomPresentationFeed", 2);
    byte_1EB01D1C1 = 1;
  }

  result = objc_getClass("UsageFeed");
  qword_1EB01D230 = result;
  off_1ED63B5D0 = UsageFeedFunction;
  return result;
}

uint64_t WTF::BlockPtr<void ()(NSDictionary *,NSError *)>::fromCallable<WebKit::NetworkSessionCocoa::removeNetworkWebsiteData(std::optional<WTF::WallTime>,std::optional<WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>> &&,WTF::CompletionHandler<void ()(void)> &&)::$_0>(WebKit::NetworkSessionCocoa::removeNetworkWebsiteData(std::optional<WTF::WallTime>,std::optional<WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>> &&,WTF::CompletionHandler<void ()(void)> &&)::$_0)::{lambda(void const*)#1}::__invoke(uint64_t a1)
{
  result = *(a1 + 32);
  *(a1 + 32) = 0;
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

_DWORD *WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::PCM::LoadTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::PCM::LoadTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RetainPtr<NSURLSessionDataTask>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::PCM::LoadTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RetainPtr<NSURLSessionDataTask>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::PCM::LoadTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::PCM::LoadTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RetainPtr<NSURLSessionDataTask>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::PCM::LoadTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::PCM::LoadTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RetainPtr<NSURLSessionDataTask>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::PCM::LoadTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand()
{
  if (qword_1EB01D1E0 && (v0 = *(qword_1EB01D1E0 - 4)) != 0)
  {
    return WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::PCM::LoadTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::PCM::LoadTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RetainPtr<NSURLSessionDataTask>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::PCM::LoadTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RetainPtr<NSURLSessionDataTask>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::PCM::LoadTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::PCM::LoadTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RetainPtr<NSURLSessionDataTask>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::PCM::LoadTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::PCM::LoadTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RetainPtr<NSURLSessionDataTask>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::PCM::LoadTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(v0 << (6 * *(qword_1EB01D1E0 - 12) >= (2 * v0)));
  }

  else
  {
    return WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::PCM::LoadTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::PCM::LoadTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RetainPtr<NSURLSessionDataTask>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::PCM::LoadTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RetainPtr<NSURLSessionDataTask>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::PCM::LoadTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::PCM::LoadTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RetainPtr<NSURLSessionDataTask>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::PCM::LoadTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::PCM::LoadTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RetainPtr<NSURLSessionDataTask>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::PCM::LoadTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(8u);
  }
}

atomic_uint *WTF::ThreadSafeRefCounted<WebKit::NetworkCache::IOChannel,(WTF::DestructionThread)0>::deref(atomic_uint *result)
{
  add = atomic_fetch_add(result, 0xFFFFFFFF);
  if (add == 1)
  {
    v5 = v1;
    atomic_store(add, result);
    WebKit::NetworkCache::IOChannel::~IOChannel(result);

    return WTF::fastFree(v3, v4);
  }

  return result;
}

_DWORD *WTF::RefCounted<WebKit::SessionSet>::deref(_DWORD *result, void *a2)
{
  if (*result == 1)
  {
    WebKit::SessionSet::~SessionSet((result - 2), a2);

    return WTF::fastFree(v3, v4);
  }

  else
  {
    --*result;
  }

  return result;
}

void WebKit::SessionSet::~SessionSet(WebKit::SessionSet *this, void *a2)
{
  v3 = *(this + 17);
  if (v3)
  {
    WTF::HashTable<unsigned long long,WTF::KeyValuePair<unsigned long long,WTF::ThreadSafeWeakPtr<WebKit::NetworkDataTaskCocoa,WTF::NoTaggingTraits<WebKit::NetworkDataTaskCocoa>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<unsigned long long,WTF::ThreadSafeWeakPtr<WebKit::NetworkDataTaskCocoa,WTF::NoTaggingTraits<WebKit::NetworkDataTaskCocoa>>>>,WTF::DefaultHash<unsigned long long>,WTF::HashMap<unsigned long long,WTF::ThreadSafeWeakPtr<WebKit::NetworkDataTaskCocoa,WTF::NoTaggingTraits<WebKit::NetworkDataTaskCocoa>>,WTF::DefaultHash<unsigned long long>,WTF::HashTraits<unsigned long long>,WTF::HashTraits<WTF::ThreadSafeWeakPtr<WebKit::NetworkDataTaskCocoa,WTF::NoTaggingTraits<WebKit::NetworkDataTaskCocoa>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<unsigned long long>,WTF::FastMalloc>::deallocateTable(v3, a2);
  }

  v4 = *(this + 16);
  if (v4)
  {
    WTF::fastFree((v4 - 16), a2);
  }

  v5 = *(this + 15);
  if (v5)
  {
    WTF::HashTable<unsigned long long,WTF::KeyValuePair<unsigned long long,WTF::ThreadSafeWeakPtr<WebKit::NetworkDataTaskCocoa,WTF::NoTaggingTraits<WebKit::NetworkDataTaskCocoa>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<unsigned long long,WTF::ThreadSafeWeakPtr<WebKit::NetworkDataTaskCocoa,WTF::NoTaggingTraits<WebKit::NetworkDataTaskCocoa>>>>,WTF::DefaultHash<unsigned long long>,WTF::HashMap<unsigned long long,WTF::ThreadSafeWeakPtr<WebKit::NetworkDataTaskCocoa,WTF::NoTaggingTraits<WebKit::NetworkDataTaskCocoa>>,WTF::DefaultHash<unsigned long long>,WTF::HashTraits<unsigned long long>,WTF::HashTraits<WTF::ThreadSafeWeakPtr<WebKit::NetworkDataTaskCocoa,WTF::NoTaggingTraits<WebKit::NetworkDataTaskCocoa>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<unsigned long long>,WTF::FastMalloc>::deallocateTable(v5, a2);
  }

  v6 = *(this + 14);
  *(this + 14) = 0;
  if (v6)
  {
  }

  v7 = *(this + 13);
  *(this + 13) = 0;
  if (v7)
  {
  }

  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::~WeakPtrFactory(this + 11, a2);
  v9 = *(this + 10);
  if (v9)
  {
    WTF::HashTable<unsigned long long,WTF::KeyValuePair<unsigned long long,WTF::ThreadSafeWeakPtr<WebKit::NetworkDataTaskCocoa,WTF::NoTaggingTraits<WebKit::NetworkDataTaskCocoa>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<unsigned long long,WTF::ThreadSafeWeakPtr<WebKit::NetworkDataTaskCocoa,WTF::NoTaggingTraits<WebKit::NetworkDataTaskCocoa>>>>,WTF::DefaultHash<unsigned long long>,WTF::HashMap<unsigned long long,WTF::ThreadSafeWeakPtr<WebKit::NetworkDataTaskCocoa,WTF::NoTaggingTraits<WebKit::NetworkDataTaskCocoa>>,WTF::DefaultHash<unsigned long long>,WTF::HashTraits<unsigned long long>,WTF::HashTraits<WTF::ThreadSafeWeakPtr<WebKit::NetworkDataTaskCocoa,WTF::NoTaggingTraits<WebKit::NetworkDataTaskCocoa>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<unsigned long long>,WTF::FastMalloc>::deallocateTable(v9, v8);
  }

  v10 = *(this + 9);
  if (v10)
  {
    WTF::fastFree((v10 - 16), v8);
  }

  v11 = *(this + 8);
  if (v11)
  {
    WTF::HashTable<unsigned long long,WTF::KeyValuePair<unsigned long long,WTF::ThreadSafeWeakPtr<WebKit::NetworkDataTaskCocoa,WTF::NoTaggingTraits<WebKit::NetworkDataTaskCocoa>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<unsigned long long,WTF::ThreadSafeWeakPtr<WebKit::NetworkDataTaskCocoa,WTF::NoTaggingTraits<WebKit::NetworkDataTaskCocoa>>>>,WTF::DefaultHash<unsigned long long>,WTF::HashMap<unsigned long long,WTF::ThreadSafeWeakPtr<WebKit::NetworkDataTaskCocoa,WTF::NoTaggingTraits<WebKit::NetworkDataTaskCocoa>>,WTF::DefaultHash<unsigned long long>,WTF::HashTraits<unsigned long long>,WTF::HashTraits<WTF::ThreadSafeWeakPtr<WebKit::NetworkDataTaskCocoa,WTF::NoTaggingTraits<WebKit::NetworkDataTaskCocoa>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<unsigned long long>,WTF::FastMalloc>::deallocateTable(v11, v8);
  }

  v12 = *(this + 7);
  *(this + 7) = 0;
  if (v12)
  {
  }

  v13 = *(this + 6);
  *(this + 6) = 0;
  if (v13)
  {
  }

  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::~WeakPtrFactory(this + 4, v8);
  std::unique_ptr<WebKit::IsolatedSession>::reset[abi:sn200100](this + 3, 0);
  v15 = *(this + 2);
  if (v15)
  {
    WTF::HashTable<WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,std::unique_ptr<WebKit::IsolatedSession>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,std::unique_ptr<WebKit::IsolatedSession>>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,std::unique_ptr<WebKit::IsolatedSession>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<std::unique_ptr<WebKit::IsolatedSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::deallocateTable(v15, v14);
  }

  if (*(this + 2) == 1)
  {

    WTF::WeakPtrFactory<WebKit::SessionSet,WTF::DefaultWeakPtrImpl>::~WeakPtrFactory(this, v14);
  }

  else
  {
    __break(0xC471u);
  }
}

void *WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::lookup<WTF::HashSetTranslatorAdapter<WTF::StringViewHashTranslator>,(WTF::ShouldValidateKey)1,WTF::StringView>(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    return 0;
  }

  v4 = *(a1 - 8);
  v5 = *a2;
  v6 = *(a2 + 8);
  if ((v6 & 0x100000000) != 0)
  {
    v7 = WTF::SuperFastHash::computeHashImpl<unsigned char,WTF::StringHasher::DefaultConverter>(v5, v6);
  }

  else
  {
    v7 = WTF::SuperFastHash::computeHashImpl<char16_t,WTF::StringHasher::DefaultConverter>(v5, v6);
  }

  v8 = 0;
  v9 = (v7 ^ (8 * v7)) + ((v7 ^ (8 * v7)) >> 5);
  v10 = (v9 ^ (4 * v9)) + ((v9 ^ (4 * v9)) >> 15);
  v11 = (v10 ^ (v10 << 10)) & 0xFFFFFF;
  if (!v11)
  {
    v11 = 0x800000;
  }

  while (1)
  {
    v12 = v11 & v4;
    v13 = (a1 + 8 * (v11 & v4));
    if (*v13 != -1)
    {
      if (!*v13)
      {
        return 0;
      }

      if (WTF::StringViewHashTranslator::equal((a1 + 8 * v12), *a2, *(a2 + 8)))
      {
        break;
      }
    }

    v11 = ++v8 + v12;
  }

  return v13;
}

uint64_t WTF::SuperFastHash::computeHashImpl<char16_t,WTF::StringHasher::DefaultConverter>(uint64_t a1, unint64_t a2)
{
  result = 2654435769;
  if (a2 >= 2)
  {
    v4 = (a1 + 2);
    for (i = 1; i < a2; i += 2)
    {
      v6 = *(v4 - 1);
      v7 = *v4;
      v4 += 2;
      v8 = (v7 << 11) ^ ((result + v6) << 16) ^ (result + v6);
      result = v8 + (v8 >> 11);
    }
  }

  if (a2)
  {
    v9 = result + *(a1 + 2 * a2 - 2);
    return (v9 ^ (v9 << 11)) + ((v9 ^ (v9 << 11)) >> 17);
  }

  return result;
}

BOOL WTF::StringViewHashTranslator::equal(uint64_t *a1, unsigned __int8 *a2, uint64_t a3)
{
  v5 = *a1;
  if (*a1)
  {
    v6 = *(v5 + 8);
    v7 = *(v5 + 4) | (((*(v5 + 16) >> 2) & 1) << 32);
  }

  else
  {
    v6 = 0;
    v7 = 0x100000000;
  }

  return WTF::operator==(v6, v7, a2, a3);
}

uint64_t *WTF::HashTable<unsigned long long,WTF::KeyValuePair<unsigned long long,WTF::ThreadSafeWeakPtr<WebKit::NetworkDataTaskCocoa,WTF::NoTaggingTraits<WebKit::NetworkDataTaskCocoa>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<unsigned long long,WTF::ThreadSafeWeakPtr<WebKit::NetworkDataTaskCocoa,WTF::NoTaggingTraits<WebKit::NetworkDataTaskCocoa>>>>,WTF::DefaultHash<unsigned long long>,WTF::HashMap<unsigned long long,WTF::ThreadSafeWeakPtr<WebKit::NetworkDataTaskCocoa,WTF::NoTaggingTraits<WebKit::NetworkDataTaskCocoa>>,WTF::DefaultHash<unsigned long long>,WTF::HashTraits<unsigned long long>,WTF::HashTraits<WTF::ThreadSafeWeakPtr<WebKit::NetworkDataTaskCocoa,WTF::NoTaggingTraits<WebKit::NetworkDataTaskCocoa>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<unsigned long long>,WTF::FastMalloc>::lookup<WTF::IdentityHashTranslator<WTF::HashMap<unsigned long long,WTF::ThreadSafeWeakPtr<WebKit::NetworkDataTaskCocoa,WTF::NoTaggingTraits<WebKit::NetworkDataTaskCocoa>>,WTF::DefaultHash<unsigned long long>,WTF::HashTraits<unsigned long long>,WTF::HashTraits<WTF::ThreadSafeWeakPtr<WebKit::NetworkDataTaskCocoa,WTF::NoTaggingTraits<WebKit::NetworkDataTaskCocoa>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<unsigned long long>>,(WTF::ShouldValidateKey)1,unsigned long long>(uint64_t *a1, uint64_t a2)
{
  if (a2 == -1 || !a2)
  {
    __break(0xC471u);
    JUMPOUT(0x19D947384);
  }

  v2 = *a1;
  if (!*a1)
  {
    return 0;
  }

  v3 = *(v2 - 8);
  v4 = (~(a2 << 32) + a2) ^ ((~(a2 << 32) + a2) >> 22);
  v5 = 9 * ((v4 + ~(v4 << 13)) ^ ((v4 + ~(v4 << 13)) >> 8));
  v6 = (v5 ^ (v5 >> 15)) + ~((v5 ^ (v5 >> 15)) << 27);
  v7 = v3 & ((v6 >> 31) ^ v6);
  result = (v2 + 24 * v7);
  v9 = *result;
  if (*result != a2)
  {
    v10 = 1;
    while (v9)
    {
      v7 = (v7 + v10) & v3;
      result = (v2 + 24 * v7);
      v9 = *result;
      ++v10;
      if (*result == a2)
      {
        return result;
      }
    }

    return 0;
  }

  return result;
}

void *WTF::HashTable<unsigned long long,WTF::KeyValuePair<unsigned long long,WTF::ThreadSafeWeakPtr<WebKit::NetworkDataTaskCocoa,WTF::NoTaggingTraits<WebKit::NetworkDataTaskCocoa>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<unsigned long long,WTF::ThreadSafeWeakPtr<WebKit::NetworkDataTaskCocoa,WTF::NoTaggingTraits<WebKit::NetworkDataTaskCocoa>>>>,WTF::DefaultHash<unsigned long long>,WTF::HashMap<unsigned long long,WTF::ThreadSafeWeakPtr<WebKit::NetworkDataTaskCocoa,WTF::NoTaggingTraits<WebKit::NetworkDataTaskCocoa>>,WTF::DefaultHash<unsigned long long>,WTF::HashTraits<unsigned long long>,WTF::HashTraits<WTF::ThreadSafeWeakPtr<WebKit::NetworkDataTaskCocoa,WTF::NoTaggingTraits<WebKit::NetworkDataTaskCocoa>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<unsigned long long>,WTF::FastMalloc>::expand(uint64_t *a1, uint64_t *a2)
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

  return WTF::HashTable<unsigned long long,WTF::KeyValuePair<unsigned long long,WTF::ThreadSafeWeakPtr<WebKit::NetworkDataTaskCocoa,WTF::NoTaggingTraits<WebKit::NetworkDataTaskCocoa>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<unsigned long long,WTF::ThreadSafeWeakPtr<WebKit::NetworkDataTaskCocoa,WTF::NoTaggingTraits<WebKit::NetworkDataTaskCocoa>>>>,WTF::DefaultHash<unsigned long long>,WTF::HashMap<unsigned long long,WTF::ThreadSafeWeakPtr<WebKit::NetworkDataTaskCocoa,WTF::NoTaggingTraits<WebKit::NetworkDataTaskCocoa>>,WTF::DefaultHash<unsigned long long>,WTF::HashTraits<unsigned long long>,WTF::HashTraits<WTF::ThreadSafeWeakPtr<WebKit::NetworkDataTaskCocoa,WTF::NoTaggingTraits<WebKit::NetworkDataTaskCocoa>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<unsigned long long>,WTF::FastMalloc>::rehash(a1, v5, a2);
}

void *WTF::HashTable<unsigned long long,WTF::KeyValuePair<unsigned long long,WTF::ThreadSafeWeakPtr<WebKit::NetworkDataTaskCocoa,WTF::NoTaggingTraits<WebKit::NetworkDataTaskCocoa>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<unsigned long long,WTF::ThreadSafeWeakPtr<WebKit::NetworkDataTaskCocoa,WTF::NoTaggingTraits<WebKit::NetworkDataTaskCocoa>>>>,WTF::DefaultHash<unsigned long long>,WTF::HashMap<unsigned long long,WTF::ThreadSafeWeakPtr<WebKit::NetworkDataTaskCocoa,WTF::NoTaggingTraits<WebKit::NetworkDataTaskCocoa>>,WTF::DefaultHash<unsigned long long>,WTF::HashTraits<unsigned long long>,WTF::HashTraits<WTF::ThreadSafeWeakPtr<WebKit::NetworkDataTaskCocoa,WTF::NoTaggingTraits<WebKit::NetworkDataTaskCocoa>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<unsigned long long>,WTF::FastMalloc>::rehash(uint64_t *a1, unsigned int a2, uint64_t *a3)
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
  v11 = v9;
  v12 = v9 + 16;
  if (a2)
  {
    bzero((v9 + 16), 24 * a2);
  }

  *a1 = v12;
  v11[2] = a2 - 1;
  v11[3] = a2;
  *v11 = 0;
  v11[1] = v8;
  if (v7)
  {
    v13 = 0;
    v14 = 0;
    do
    {
      v15 = (v6 + 24 * v13);
      v16 = *v15;
      if (*v15)
      {
        if (v16 != -1)
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

          v19 = (v16 + ~(v16 << 32)) ^ ((v16 + ~(v16 << 32)) >> 22);
          v20 = 9 * ((v19 + ~(v19 << 13)) ^ ((v19 + ~(v19 << 13)) >> 8));
          v21 = (v20 ^ (v20 >> 15)) + ~((v20 ^ (v20 >> 15)) << 27);
          v22 = v18 & ((v21 >> 31) ^ v21);
          v23 = 1;
          do
          {
            v24 = (v17 + 24 * v22);
            v22 = (v22 + v23++) & v18;
          }

          while (*v24);
          v25 = v24[2];
          v24[2] = 0;
          if (v25)
          {
            WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v25, v10);
          }

          v26 = *v15;
          v15[1] = 0;
          *v24 = v26;
          v24[2] = v15[2];
          v15[2] = 0;
          if (v15 == a3)
          {
            v14 = v24;
          }
        }
      }

      else
      {
        v27 = v15[2];
        v15[2] = 0;
        if (v27)
        {
          WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v27, v10);
        }
      }

      ++v13;
    }

    while (v13 != v7);
    goto LABEL_21;
  }

  v14 = 0;
  result = 0;
  if (v6)
  {
LABEL_21:
    WTF::fastFree((v6 - 16), v10);
    return v14;
  }

  return result;
}

unint64_t WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::NetworkDataTask,(WTF::DestructionThread)1>::controlBlock(atomic_ullong *a1)
{
  result = *a1;
  if (result)
  {
    result = WTF::fastMalloc(0x20);
    *result = 0;
    *(result + 8) = xmmword_19E7014F0;
    *(result + 24) = a1 - 1;
    while (1)
    {
      v4 = *a1;
      if ((*a1 & 1) == 0)
      {
        break;
      }

      *(result + 8) = v4 >> 1;
      v5 = v4;
      atomic_compare_exchange_strong_explicit(a1, &v5, result, memory_order_release, memory_order_relaxed);
      if (v5 == v4)
      {
        return result;
      }
    }

    WTF::fastFree(result, v3);
    return *a1;
  }

  return result;
}

void *WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::NetworkDataTaskCocoa>(void *result, atomic_uchar *this, uint64_t a3)
{
  v5 = result;
  v6 = 0;
  atomic_compare_exchange_strong_explicit(this, &v6, 1u, memory_order_acquire, memory_order_acquire);
  if (v6)
  {
    result = MEMORY[0x19EB01E30](this);
  }

  if (*(this + 3))
  {
    ++*(this + 1);
  }

  else
  {
    a3 = 0;
  }

  *v5 = a3;
  v7 = 1;
  atomic_compare_exchange_strong_explicit(this, &v7, 0, memory_order_release, memory_order_relaxed);
  if (v7 != 1)
  {

    return WTF::Lock::unlockSlow(this);
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::NetworkDataTaskCocoa::willPerformHTTPRedirection(WebCore::ResourceResponse &&,WebCore::ResourceRequest &&,WTF::CompletionHandler<void ()(WebCore::ResourceRequest)> &&)::$_0,void,WebCore::ResourceRequest>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F10ED698;
  v3 = a1[35];
  a1[35] = 0;
  if (v3)
  {
  }

  WebCore::ResourceResponseBase::~ResourceResponseBase((a1 + 4), a2);
  v5 = a1[3];
  a1[3] = 0;
  if (v5)
  {
    WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v5, v4);
  }

  v6 = a1[1];
  a1[1] = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkDataTaskCocoa::willPerformHTTPRedirection(WebCore::ResourceResponse &&,WebCore::ResourceRequest &&,WTF::CompletionHandler<void ()(WebCore::ResourceRequest)> &&)::$_0,void,WebCore::ResourceRequest>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F10ED698;
  v3 = a1[35];
  a1[35] = 0;
  if (v3)
  {
  }

  WebCore::ResourceResponseBase::~ResourceResponseBase((a1 + 4), a2);
  v5 = a1[3];
  a1[3] = 0;
  if (v5)
  {
    WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v5, v4);
  }

  v6 = a1[1];
  a1[1] = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  return WTF::fastFree(a1, v4);
}

void WTF::Detail::CallableWrapper<WebKit::NetworkDataTaskCocoa::willPerformHTTPRedirection(WebCore::ResourceResponse &&,WebCore::ResourceRequest &&,WTF::CompletionHandler<void ()(WebCore::ResourceRequest)> &&)::$_0,void,WebCore::ResourceRequest>::call(uint64_t *a1, uint64_t a2)
{
  v4 = a1[3];
  if (v4 && (WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::NetworkDataTaskCocoa>(&v19, v4, a1[2]), v19))
  {
    v15 = v19;
    v6 = *(v19 + 24);
    if (v6 && (v7 = *(v6 + 8)) != 0)
    {
      v16 = *(v6 + 8);
      (**v7)();
      v8 = a1[1];
      v9 = a1[2];
      a1[1] = 0;
      v10 = a1[3];
      if (v10)
      {
        v11 = WTF::ThreadSafeWeakPtrControlBlock::weakRef(v10);
      }

      else
      {
        v11 = 0;
      }

      v12 = WTF::fastMalloc(0x20);
      *v12 = &unk_1F10ED6C0;
      v12[1] = v8;
      v12[2] = v9;
      v12[3] = v11;
      v17[0] = v12;
      (*(*v16 + 32))(v16, a1 + 4, a2, v17);
      v13 = v17[0];
      v17[0] = 0;
      if (v13)
      {
        (*(*v13 + 8))(v13);
      }

      (*(*v16 + 8))(v16);
    }

    else
    {
      WebCore::ResourceRequest::ResourceRequest(v17);
      WTF::CompletionHandler<void ()(WebCore::ResourceRequest &&)>::operator()(a1 + 1);
      v14 = v18;
      v18 = 0;
      if (v14)
      {
      }

      WebCore::ResourceRequestBase::~ResourceRequestBase(v17);
    }

    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::NetworkDataTask,(WTF::DestructionThread)1>::deref((v15 + 8));
  }

  else
  {
    WebCore::ResourceRequest::ResourceRequest(v17);
    WTF::CompletionHandler<void ()(WebCore::ResourceRequest &&)>::operator()(a1 + 1);
    v5 = v18;
    v18 = 0;
    if (v5)
    {
    }

    WebCore::ResourceRequestBase::~ResourceRequestBase(v17);
  }
}

void sub_19D9479B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35)
{
  v36 = a35;
  a35 = 0;
  if (v36)
  {
  }

  WebCore::ResourceRequestBase::~ResourceRequestBase(&a11);
  WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::NetworkDataTask,(WTF::DestructionThread)1>::deref((a9 + 8));
  _Unwind_Resume(a1);
}

void *WTF::Detail::CallableWrapper<WebKit::NetworkDataTaskCocoa::willPerformHTTPRedirection(WebCore::ResourceResponse &&,WebCore::ResourceRequest &&,WTF::CompletionHandler<void ()(WebCore::ResourceRequest)> &&)::$_0::operator()(WebCore::ResourceRequest)::{lambda(WebCore::ResourceRequest)#1},void,WebCore::ResourceRequest>::~CallableWrapper(void *a1, void *a2)
{
  *a1 = &unk_1F10ED6C0;
  v3 = a1[3];
  a1[3] = 0;
  if (v3)
  {
    WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v3, a2);
  }

  v4 = a1[1];
  a1[1] = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkDataTaskCocoa::willPerformHTTPRedirection(WebCore::ResourceResponse &&,WebCore::ResourceRequest &&,WTF::CompletionHandler<void ()(WebCore::ResourceRequest)> &&)::$_0::operator()(WebCore::ResourceRequest)::{lambda(WebCore::ResourceRequest)#1},void,WebCore::ResourceRequest>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F10ED6C0;
  v3 = *(this + 3);
  *(this + 3) = 0;
  if (v3)
  {
    WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v3, a2);
  }

  v4 = *(this + 1);
  *(this + 1) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  return WTF::fastFree(this, a2);
}

void WTF::Detail::CallableWrapper<WebKit::NetworkDataTaskCocoa::willPerformHTTPRedirection(WebCore::ResourceResponse &&,WebCore::ResourceRequest &&,WTF::CompletionHandler<void ()(WebCore::ResourceRequest)> &&)::$_0::operator()(WebCore::ResourceRequest)::{lambda(WebCore::ResourceRequest)#1},void,WebCore::ResourceRequest>::call(uint64_t *a1, WebCore::ResourceRequest *a2)
{
  v4 = a1[3];
  if (v4)
  {
    WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::NetworkDataTaskCocoa>(&v13, v4, a1[2]);
    v5 = v13;
    if (v13)
    {
      v7 = *(v13 + 16);
      if (v7)
      {
        if (*(v7 + 8))
        {
          if ((WebCore::ResourceRequestBase::isNull(a2) & 1) == 0)
          {
            WebKit::NetworkDataTask::restrictRequestReferrerToOriginIfNeeded(v5, a2);
          }

          WebCore::ResourceRequestBase::operator=(v5 + 328, a2);
          v8 = *(a2 + 24);
          if (v8)
          {
            v9 = v8;
          }

          v10 = *(v5 + 520);
          *(v5 + 520) = v8;
          if (v10)
          {
          }

          WTF::CompletionHandler<void ()(WebCore::ResourceRequest &&)>::operator()(a1 + 1);
          v13 = 0;
          goto LABEL_6;
        }
      }
    }
  }

  else
  {
    v5 = 0;
  }

  WebCore::ResourceRequest::ResourceRequest(v11);
  WTF::CompletionHandler<void ()(WebCore::ResourceRequest &&)>::operator()(a1 + 1);
  v6 = v12;
  v12 = 0;
  if (v6)
  {
  }

  WebCore::ResourceRequestBase::~ResourceRequestBase(v11);
  v13 = 0;
  if (v5)
  {
LABEL_6:
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::NetworkDataTask,(WTF::DestructionThread)1>::deref((v5 + 8));
  }
}

void sub_19D947CA4(_Unwind_Exception *a1)
{
  *(v2 - 56) = 0;
  WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::NetworkDataTask,(WTF::DestructionThread)1>::deref((v1 + 8));
  _Unwind_Resume(a1);
}

uint64_t WTF::Vector<WebCore::HTTPHeaderMap::CommonHeader,0ul,WTF::CrashOnOverflow,6ul,WTF::FastMalloc>::operator=(uint64_t a1, uint64_t a2)
{
  if (a2 != a1)
  {
    v4 = *(a1 + 12);
    v5 = *(a2 + 12);
    if (v4 > v5)
    {
      WTF::VectorDestructor<true,WebCore::HTTPHeaderMap::CommonHeader>::destruct((*a1 + 16 * v5), (*a1 + 16 * v4));
      *(a1 + 12) = v5;
    }

    else
    {
      if (v5 > *(a1 + 8))
      {
        WTF::Vector<WebCore::HTTPHeaderMap::CommonHeader,0ul,WTF::CrashOnOverflow,6ul,WTF::FastMalloc>::shrinkCapacity(a1, 0);
        WTF::Vector<WebCore::HTTPHeaderMap::CommonHeader,0ul,WTF::CrashOnOverflow,6ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, *(a2 + 12));
      }

      LODWORD(v5) = *(a1 + 12);
    }

    v6 = *a2;
    v7 = *a1;
    if (v5)
    {
      v15 = &v6[2 * v5];
      v16 = *a2;
      v17 = *a1;
      do
      {
        v18 = *v16;
        v16 += 2;
        *v17 = v18;
        v17 += 2;
        WTF::String::operator=(v7 + 1, v6 + 1);
        v7 = v17;
        v6 = v16;
      }

      while (v16 != v15);
      v6 = *a2;
      v8 = *(a1 + 12);
      v7 = *a1;
    }

    else
    {
      v8 = 0;
    }

    v9 = *(a2 + 12);
    if (v8 != v9)
    {
      v10 = &v6[2 * v9];
      v11 = &v7[2 * v8];
      v12 = &v6[2 * v8];
      do
      {
        *v11 = *v12;
        v13 = v12[1];
        if (v13)
        {
          atomic_fetch_add_explicit(v13, 2u, memory_order_relaxed);
        }

        v11[1] = v13;
        v11 += 2;
        v12 += 2;
      }

      while (v12 != v10);
      v8 = *(a2 + 12);
    }

    *(a1 + 12) = v8;
  }

  return a1;
}

uint64_t WTF::Vector<WebCore::HTTPHeaderMap::UncommonHeader,0ul,WTF::CrashOnOverflow,0ul,WTF::FastMalloc>::operator=(uint64_t a1, uint64_t a2)
{
  if (a2 != a1)
  {
    v4 = *(a1 + 12);
    v5 = *(a2 + 12);
    if (v4 > v5)
    {
      WTF::VectorTypeOperations<WebCore::HTTPHeaderMap::UncommonHeader>::destruct((*a1 + 16 * v5), (*a1 + 16 * v4));
      *(a1 + 12) = v5;
      LODWORD(v4) = v5;
    }

    else if (v5 > *(a1 + 8))
    {
      WTF::Vector<WebCore::HTTPHeaderMap::UncommonHeader,0ul,WTF::CrashOnOverflow,0ul,WTF::FastMalloc>::shrinkCapacity(a1, 0);
      WTF::Vector<WebCore::HTTPHeaderMap::UncommonHeader,0ul,WTF::CrashOnOverflow,0ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, *(a2 + 12));
      LODWORD(v4) = *(a1 + 12);
    }

    std::__copy_impl::operator()[abi:sn200100]<WebCore::HTTPHeaderMap::UncommonHeader const*,WebCore::HTTPHeaderMap::UncommonHeader const*,WebCore::HTTPHeaderMap::UncommonHeader*>(&v14, *a2, (*a2 + 16 * v4), *a1);
    v6 = *(a1 + 12);
    v7 = *(a2 + 12);
    if (v6 != v7)
    {
      v8 = *a2 + 16 * v7;
      v9 = (*a1 + 16 * v6);
      v10 = *a2 + 16 * v6;
      do
      {
        v11 = *v10;
        if (*v10)
        {
          atomic_fetch_add_explicit(v11, 2u, memory_order_relaxed);
        }

        *v9 = v11;
        v12 = *(v10 + 8);
        if (v12)
        {
          atomic_fetch_add_explicit(v12, 2u, memory_order_relaxed);
        }

        v9[1] = v12;
        v9 += 2;
        v10 += 16;
      }

      while (v10 != v8);
      LODWORD(v6) = *(a2 + 12);
    }

    *(a1 + 12) = v6;
  }

  return a1;
}

atomic_uint **std::__copy_impl::operator()[abi:sn200100]<WebCore::HTTPHeaderMap::UncommonHeader const*,WebCore::HTTPHeaderMap::UncommonHeader const*,WebCore::HTTPHeaderMap::UncommonHeader*>(uint64_t a1, atomic_uint **a2, atomic_uint **a3, uint64_t *a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      WTF::String::operator=(a4, v5);
      WTF::String::operator=(a4 + 1, v5 + 1);
      a4 += 2;
      v5 += 2;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

void *WTF::Detail::CallableWrapper<WebKit::NetworkDataTaskCocoa::resume(void)::$_2,void,WebCore::NetworkStorageSession::CookieVersionChangeCallback::Reason>::~CallableWrapper(void *a1, void *a2)
{
  *a1 = &unk_1F10ED6E8;
  v3 = a1[2];
  a1[2] = 0;
  if (v3)
  {
    WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v3, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkDataTaskCocoa::resume(void)::$_2,void,WebCore::NetworkStorageSession::CookieVersionChangeCallback::Reason>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F10ED6E8;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

atomic_ullong *WTF::Detail::CallableWrapper<WebKit::NetworkDataTaskCocoa::resume(void)::$_2,void,WebCore::NetworkStorageSession::CookieVersionChangeCallback::Reason>::call(atomic_ullong *result, int a2)
{
  v8 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    v2 = result[2];
    if (v2)
    {
      result = WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::NetworkDataTaskCocoa>(&v5, v2, result[1]);
      v3 = v5;
      if (v5)
      {
        v4 = qword_1ED640D10;
        if (os_log_type_enabled(qword_1ED640D10, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134217984;
          v7 = v3;
          _os_log_impl(&dword_19D52D000, v4, OS_LOG_TYPE_DEFAULT, "%p - NetworkDataTaskCocoa::resume: task delayed by cookies version is started", buf, 0xCu);
        }

        WebKit::NetworkDataTaskCocoa::resume(v3);
        return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::NetworkDataTask,(WTF::DestructionThread)1>::deref(v3 + 1);
      }
    }
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::NetworkDataTaskCocoa::setH2PingCallback(WTF::URL const&,WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<WTF::Seconds,WebCore::ResourceError> &&)> &&)::$_1,void,WTF::Function<std::experimental::fundamentals_v3::expected<WTF::Seconds,WebCore::ResourceError> &&> &>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  v3 = a1[1];
  *a1 = &unk_1F10ED710;
  a1[1] = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkDataTaskCocoa::setH2PingCallback(WTF::URL const&,WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<WTF::Seconds,WebCore::ResourceError> &&)> &&)::$_1,void,WTF::Function<std::experimental::fundamentals_v3::expected<WTF::Seconds,WebCore::ResourceError> &&> &>::~CallableWrapper(WTF *this, WTF::StringImpl *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F10ED710;
  *(this + 1) = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkDataTaskCocoa::setH2PingCallback(WTF::URL const&,WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<WTF::Seconds,WebCore::ResourceError> &&)> &&)::$_1,void,WTF::Function<std::experimental::fundamentals_v3::expected<WTF::Seconds,WebCore::ResourceError> &&> &>::call(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  *a2 = 0;
  v8 = v2;
  WTF::URL::isolatedCopy();
  v3 = WTF::fastMalloc(0x38);
  *v3 = &unk_1F10ED738;
  v3[1] = v8;
  WTF::URL::URL((v3 + 2), &v9);
  v10 = v3;
  WTF::ensureOnMainRunLoop();
  v5 = v10;
  v10 = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  v6 = v9;
  v9 = 0;
  if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v6, v4);
  }

  return 0;
}

void sub_19D9483F4(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF *a9, uint64_t a10, WTF::StringImpl *a11)
{
  v13 = *(v11 - 24);
  *(v11 - 24) = 0;
  if (v13)
  {
    (*(*v13 + 8))(v13);
  }

  if (a11 && atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a11, a2);
  }

  if (a10)
  {
    (*(*a10 + 8))(a10);
  }

  _Unwind_Resume(exception_object);
}

void *WTF::Detail::CallableWrapper<WebKit::NetworkDataTaskCocoa::setH2PingCallback(WTF::URL const&,WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<WTF::Seconds,WebCore::ResourceError> &&)> &&)::$_1::operator() const(WTF::Function<std::experimental::fundamentals_v3::expected<WTF::Seconds,WebCore::ResourceError> &&> &)::{lambda(void)#1},void>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F10ED738;
  v3 = a1[2];
  a1[2] = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, a2);
  }

  v4 = a1[1];
  a1[1] = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkDataTaskCocoa::setH2PingCallback(WTF::URL const&,WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<WTF::Seconds,WebCore::ResourceError> &&)> &&)::$_1::operator() const(WTF::Function<std::experimental::fundamentals_v3::expected<WTF::Seconds,WebCore::ResourceError> &&> &)::{lambda(void)#1},void>::~CallableWrapper(WTF *this, WTF::StringImpl *a2)
{
  *this = &unk_1F10ED738;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, a2);
  }

  v4 = *(this + 1);
  *(this + 1) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  return WTF::fastFree(this, a2);
}

WTF::StringImpl *WTF::Detail::CallableWrapper<WebKit::NetworkDataTaskCocoa::setH2PingCallback(WTF::URL const&,WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<WTF::Seconds,WebCore::ResourceError> &&)> &&)::$_1::operator() const(WTF::Function<std::experimental::fundamentals_v3::expected<WTF::Seconds,WebCore::ResourceError> &&> &)::{lambda(void)#1},void>::call(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  WebCore::internalError();
  makeUnexpected<WebCore::ResourceError>(&v12, &v16);
  std::experimental::fundamentals_v3::expected<WTF::Seconds,WebCore::ResourceError>::expected(v20, &v16);
  (*(**(a1 + 8) + 16))(*(a1 + 8), v20);
  std::experimental::fundamentals_v3::expected<WTF::Seconds,WebCore::ResourceError>::~expected(v20, v2);
  v4 = v19;
  v19 = 0;
  if (v4)
  {
  }

  v5 = v18;
  v18 = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, v3);
  }

  v6 = v17;
  v17 = 0;
  if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v6, v3);
  }

  v7 = v16;
  v16 = 0;
  if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v7, v3);
  }

  v8 = v15;
  v15 = 0;
  if (v8)
  {
  }

  v9 = v14;
  v14 = 0;
  if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v9, v3);
  }

  v10 = v13;
  v13 = 0;
  if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, v3);
  }

  result = v12;
  v12 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v3);
    }
  }

  return result;
}

void sub_19D9487A4(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, WTF::StringImpl *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, WTF::StringImpl *a15, uint64_t a16, void *a17, uint64_t a18, WTF::StringImpl *a19, WTF::StringImpl *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, WTF::StringImpl *a25, uint64_t a26, void *a27)
{
  std::experimental::fundamentals_v3::expected<WTF::Seconds,WebCore::ResourceError>::~expected(v27 - 112, a2);
  if (a27)
  {
  }

  if (a25 && atomic_fetch_add_explicit(a25, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a25, v29);
  }

  if (a20 && atomic_fetch_add_explicit(a20, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a20, v29);
  }

  if (a19 && atomic_fetch_add_explicit(a19, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a19, v29);
  }

  if (a17)
  {
  }

  if (a15 && atomic_fetch_add_explicit(a15, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a15, v29);
  }

  if (a10 && atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a10, v29);
  }

  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, v29);
    }
  }

  _Unwind_Resume(a1);
}

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<WTF::Seconds,WebCore::ResourceError> &&)>,void,std::experimental::fundamentals_v3::expected<WTF::Seconds,WebCore::ResourceError> &>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F10ED760;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<WTF::Seconds,WebCore::ResourceError> &&)>,void,std::experimental::fundamentals_v3::expected<WTF::Seconds,WebCore::ResourceError> &>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F10ED760;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<WTF::Seconds,WebCore::ResourceError> &&)>,void,std::experimental::fundamentals_v3::expected<WTF::Seconds,WebCore::ResourceError> &>::call(uint64_t a1)
{
  v1 = *(a1 + 8);
  *(a1 + 8) = 0;
  (*(*v1 + 16))(v1);
  v2 = *(*v1 + 8);

  return v2(v1);
}

uint64_t *WTF::CompletionHandlerWithFinalizer<void ()(std::experimental::fundamentals_v3::expected<WTF::Seconds,WebCore::ResourceError> &&)>::~CompletionHandlerWithFinalizer(uint64_t *a1)
{
  if (*a1)
  {
    (*(*a1[1] + 16))(a1[1], a1);
  }

  v2 = a1[1];
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return a1;
}

void sub_19D948B0C(_Unwind_Exception *exception_object)
{
  v3 = v1[1];
  v1[1] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *v1;
  *v1 = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  _Unwind_Resume(exception_object);
}

void *WTF::Detail::CallableWrapper<WebKit::NetworkProcess::setBackupExclusionPeriodForTesting(PAL::SessionID,WTF::Seconds,WTF::CompletionHandler<void ()(void)> &&)::$_0,void>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F10ED788;
  a1[1] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCounted<WTF::CallbackAggregatorOnThread<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkProcess::setBackupExclusionPeriodForTesting(PAL::SessionID,WTF::Seconds,WTF::CompletionHandler<void ()(void)> &&)::$_0,void>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F10ED788;
  *(this + 1) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCounted<WTF::CallbackAggregatorOnThread<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

void sub_19D948D50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

atomic_uchar **WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::WebSocketTask,(WTF::DestructionThread)0>::deref(atomic_uchar **result, void *a2)
{
  do
  {
    v2 = *result;
    if ((*result & 1) == 0)
    {
      return WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebKit::WebSocketTask,(WTF::DestructionThread)0>(*result, a2);
    }

    v3 = *result;
    atomic_compare_exchange_strong_explicit(result, &v3, (v2 - 2), memory_order_relaxed, memory_order_relaxed);
  }

  while (v3 != v2);
  if (v2 == 3)
  {
    return (*(*(result - 5) + 1))();
  }

  return result;
}

uint64_t WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebKit::WebSocketTask,(WTF::DestructionThread)0>(atomic_uchar *this, void *a2)
{
  v3 = 0;
  atomic_compare_exchange_strong_explicit(this, &v3, 1u, memory_order_acquire, memory_order_acquire);
  if (v3)
  {
    MEMORY[0x19EB01E30](this);
  }

  v4 = *(this + 1) - 1;
  *(this + 1) = v4;
  if (v4)
  {
    result = 0;
  }

  else
  {
    result = *(this + 3);
    ++*(this + 2);
    *(this + 3) = 0;
  }

  v6 = 1;
  atomic_compare_exchange_strong_explicit(this, &v6, 0, memory_order_release, memory_order_relaxed);
  if (v6 == 1)
  {
    if (v4)
    {
      return result;
    }
  }

  else
  {
    v10 = v4;
    v11 = result;
    WTF::Lock::unlockSlow(this);
    result = v11;
    if (v10)
    {
      return result;
    }
  }

  if (result)
  {
    result = (*(*result + 8))(result);
  }

  v7 = 0;
  v8 = 1;
  atomic_compare_exchange_strong_explicit(this, &v7, 1u, memory_order_acquire, memory_order_acquire);
  if (v7)
  {
    result = MEMORY[0x19EB01E30](this);
    v8 = 1;
  }

  v9 = *(this + 2) - 1;
  *(this + 2) = v9;
  atomic_compare_exchange_strong_explicit(this, &v8, 0, memory_order_release, memory_order_relaxed);
  if (v8 == 1)
  {
    if (v9)
    {
      return result;
    }
  }

  else
  {
    v12 = v9;
    result = WTF::Lock::unlockSlow(this);
    if (v12)
    {
      return result;
    }
  }

  return WTF::fastFree(this, a2);
}

void sub_19D949018(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void sub_19D949160(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

_DWORD *WTF::RefCounted<WebKit::Download>::deref(_DWORD *result)
{
  if (*result == 1)
  {
    WebKit::Download::~Download((result - 4));

    return bmalloc::api::tzoneFree(v2, v3);
  }

  else
  {
    --*result;
  }

  return result;
}

atomic_uchar *WTF::HashMap<unsigned long long,WTF::ThreadSafeWeakPtr<WebKit::WebSocketTask,WTF::NoTaggingTraits<WebKit::WebSocketTask>>,WTF::DefaultHash<unsigned long long>,WTF::HashTraits<unsigned long long>,WTF::HashTraits<WTF::ThreadSafeWeakPtr<WebKit::WebSocketTask,WTF::NoTaggingTraits<WebKit::WebSocketTask>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<unsigned long long,WTF::ThreadSafeWeakPtr<WebKit::WebSocketTask,WTF::NoTaggingTraits<WebKit::WebSocketTask>>,WTF::DefaultHash<unsigned long long>,WTF::HashTraits<unsigned long long>,WTF::HashTraits<WTF::ThreadSafeWeakPtr<WebKit::WebSocketTask,WTF::NoTaggingTraits<WebKit::WebSocketTask>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<unsigned long long>>,unsigned long long>(atomic_uchar *result, uint64_t *a2, uint64_t a3)
{
  if (a3 == -1 || !a3)
  {
    __break(0xC471u);
    JUMPOUT(0x19D9492A0);
  }

  v3 = result;
  v4 = *a2;
  if (!*a2)
  {
LABEL_11:
    *result = 0;
    *(result + 1) = 0;
    return result;
  }

  v5 = *(v4 - 8);
  v6 = (~(a3 << 32) + a3) ^ ((~(a3 << 32) + a3) >> 22);
  v7 = 9 * ((v6 + ~(v6 << 13)) ^ ((v6 + ~(v6 << 13)) >> 8));
  v8 = (v7 ^ (v7 >> 15)) + ~((v7 ^ (v7 >> 15)) << 27);
  v9 = v5 & ((v8 >> 31) ^ v8);
  v10 = *(v4 + 24 * v9);
  if (v10 != a3)
  {
    v11 = 1;
    while (v10)
    {
      v9 = (v9 + v11) & v5;
      v10 = *(v4 + 24 * v9);
      ++v11;
      if (v10 == a3)
      {
        goto LABEL_8;
      }
    }

    goto LABEL_11;
  }

LABEL_8:
  v12 = v4 + 24 * v9;
  result = *(v12 + 16);
  *v3 = *(v12 + 8);
  if (result)
  {
    result = WTF::ThreadSafeWeakPtrControlBlock::weakRef(result);
  }

  *(v3 + 1) = result;
  return result;
}

void sub_19D9493F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

unint64_t WTF::writeIntegerToBufferImpl<unsigned char,unsigned int,(WTF::PositiveOrNegativeNumber)0>(unint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = 0;
  v7 = *MEMORY[0x1E69E9840];
  do
  {
    if (v3 == -13)
    {
LABEL_8:
      __break(1u);
    }

    v6[v3-- + 12] = (result % 0xA) | 0x30;
    v4 = result > 9;
    result = result / 0xAuLL;
  }

  while (v4);
  v5 = 0;
  do
  {
    if (a3 == v5)
    {
      goto LABEL_8;
    }

    *(a2 + v5) = v6[v5 + 13 + v3];
    ++v5;
  }

  while (-v3 != v5);
  return result;
}

unsigned int *WTF::StringTypeAdapter<unsigned int,void>::writeTo<char16_t>(unsigned int *result, _WORD *a2, uint64_t a3)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = *result;
  v4 = 12;
  do
  {
    if (v4 == -1)
    {
LABEL_8:
      __break(1u);
    }

    v8[v4--] = (v3 % 0xA) | 0x30;
    v5 = v3 > 9;
    v3 /= 0xAu;
  }

  while (v5);
  v6 = v4 + 1;
  v7 = v4 + 2;
  do
  {
    if (!a3)
    {
      goto LABEL_8;
    }

    *a2++ = v8[v6++];
    ++v7;
    --a3;
  }

  while (v7 != 14);
  return result;
}

uint64_t WTF::Vector<WTF::RetainPtr<NSObject  {objcproto18OS_nw_proxy_config}*>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, void *a2)
{
  v3 = *(a1 + 12);
  if (v3)
  {
    v6 = *a1;
    v7 = 8 * v3;
    do
    {
      v8 = *v6;
      *v6 = 0;
      if (v8)
      {
      }

      ++v6;
      v7 -= 8;
    }

    while (v7);
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

atomic_uchar *WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebKit::WebResourceLoadStatisticsStore,(WTF::DestructionThread)1>(atomic_uchar *this)
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
  *v6 = &unk_1F10ED968;
  *(v6 + 1) = v1;
  *(v6 + 2) = v4;
  v8 = v6;
  WTF::ensureOnMainThread();
  this = v8;
  if (v8)
  {
    return (*(*v8 + 8))(v8);
  }

  return this;
}

void sub_19D949808(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 8))(a10);
  }

  _Unwind_Resume(exception_object);
}

double WTF::Detail::CallableWrapper<WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::WebResourceLoadStatisticsStore,(WTF::DestructionThread)1>::deref(void)::{lambda(void)#1},void>::call(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1)
  {
    return WebKit::WebResourceLoadStatisticsStore::operator delete(v1);
  }

  return result;
}

double WebKit::WebResourceLoadStatisticsStore::operator delete(WebKit::WebResourceLoadStatisticsStore *a1)
{
  WebKit::WebResourceLoadStatisticsStore::~WebResourceLoadStatisticsStore(a1);
  if (atomic_load((v1 + 8)))
  {
    result = 0.0;
    *(v1 + 112) = 0u;
    *(v1 + 128) = 0u;
    *(v1 + 80) = 0u;
    *(v1 + 96) = 0u;
    *(v1 + 48) = 0u;
    *(v1 + 64) = 0u;
    *(v1 + 16) = 0u;
    *(v1 + 32) = 0u;
    *v1 = 0u;
  }

  else
  {

    WTF::fastFree(v1, v2);
  }

  return result;
}

void WTF::Detail::CallableWrapper<void WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebKit::WebResourceLoadStatisticsStore,(WTF::DestructionThread)1>(void)::{lambda(void)#1},void>::call(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2)
  {
    WebKit::WebResourceLoadStatisticsStore::operator delete(v2);
  }

  v4 = 0;
  v5 = 1;
  atomic_compare_exchange_strong_explicit(v3, &v4, 1u, memory_order_acquire, memory_order_acquire);
  if (v4)
  {
    MEMORY[0x19EB01E30](v3);
  }

  v6 = *(v3 + 16) - 1;
  *(v3 + 16) = v6;
  atomic_compare_exchange_strong_explicit(v3, &v5, 0, memory_order_release, memory_order_relaxed);
  if (v5 == 1)
  {
    if (v6)
    {
      return;
    }
  }

  else
  {
    v7 = v6;
    WTF::Lock::unlockSlow(v3);
    if (v7)
    {
      return;
    }
  }

  WTF::fastFree(v3, a2);
}

uint64_t WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::SessionSet,WTF::RawPtrTraits<WebKit::SessionSet>,WTF::DefaultRefDerefTraits<WebKit::SessionSet>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::SessionSet,WTF::RawPtrTraits<WebKit::SessionSet>,WTF::DefaultRefDerefTraits<WebKit::SessionSet>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>::hash<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(uint64_t a1)
{
  v1 = (~(a1 << 32) + a1) ^ ((~(a1 << 32) + a1) >> 22);
  v2 = 9 * ((v1 + ~(v1 << 13)) ^ ((v1 + ~(v1 << 13)) >> 8));
  v3 = (v2 ^ (v2 >> 15)) + ~((v2 ^ (v2 >> 15)) << 27);
  return (v3 >> 31) ^ v3;
}

void *WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::SessionSet,WTF::RawPtrTraits<WebKit::SessionSet>,WTF::DefaultRefDerefTraits<WebKit::SessionSet>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::SessionSet,WTF::RawPtrTraits<WebKit::SessionSet>,WTF::DefaultRefDerefTraits<WebKit::SessionSet>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::SessionSet,WTF::RawPtrTraits<WebKit::SessionSet>,WTF::DefaultRefDerefTraits<WebKit::SessionSet>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::SessionSet,WTF::RawPtrTraits<WebKit::SessionSet>,WTF::DefaultRefDerefTraits<WebKit::SessionSet>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::begin(void *result)
{
  if (!result)
  {
    return 0;
  }

  v2 = *(result - 1);
  v3 = &result[2 * v2];
  if (!*(result - 3))
  {
    return &result[2 * v2];
  }

  if (v2)
  {
    v4 = 16 * v2;
    while ((*result + 1) <= 1)
    {
      result += 2;
      v4 -= 16;
      if (!v4)
      {
        return v3;
      }
    }
  }

  return result;
}

WTF::StringImpl **WTF::HashTable<WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,std::unique_ptr<WebKit::IsolatedSession>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,std::unique_ptr<WebKit::IsolatedSession>>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,std::unique_ptr<WebKit::IsolatedSession>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<std::unique_ptr<WebKit::IsolatedSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::expand(uint64_t *a1, WTF::ASCIICaseInsensitiveHash **a2)
{
  v3 = *a1;
  if (*a1 && (v5 = *(v3 - 4)) != 0)
  {
    v4 = v5 << (6 * *(v3 - 12) >= (2 * v5));
  }

  else
  {
    v4 = 8;
  }

  return WTF::HashTable<WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,std::unique_ptr<WebKit::IsolatedSession>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,std::unique_ptr<WebKit::IsolatedSession>>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,std::unique_ptr<WebKit::IsolatedSession>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<std::unique_ptr<WebKit::IsolatedSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::rehash(a1, v4, a2);
}

WTF::StringImpl **WTF::HashTable<WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,std::unique_ptr<WebKit::IsolatedSession>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,std::unique_ptr<WebKit::IsolatedSession>>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,std::unique_ptr<WebKit::IsolatedSession>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<std::unique_ptr<WebKit::IsolatedSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::rehash(uint64_t *a1, unsigned int a2, WTF::ASCIICaseInsensitiveHash **a3)
{
  v5 = *a1;
  if (*a1)
  {
    v6 = *(v5 - 4);
    v7 = *(v5 - 12);
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  v8 = WTF::fastZeroedMalloc((16 * a2 + 16));
  *a1 = (v8 + 4);
  v8[2] = a2 - 1;
  v8[3] = a2;
  *v8 = 0;
  v8[1] = v7;
  if (v6)
  {
    v11 = 0;
    v12 = 0;
    do
    {
      v13 = (v5 + 16 * v11);
      if (*v13 != -1)
      {
        if (WTF::equal(*v13, 0, v10))
        {
          std::unique_ptr<WebKit::IsolatedSession>::reset[abi:sn200100](v13 + 1, 0);
          v15 = *v13;
          *v13 = 0;
          if (v15)
          {
            if (atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v15, v9);
            }
          }
        }

        else
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

          v18 = WTF::ASCIICaseInsensitiveHash::hash(*v13, v14);
          v20 = 0;
          do
          {
            v21 = v18 & v17;
            v22 = WTF::equal(*(v16 + 16 * v21), 0, v19);
            v18 = ++v20 + v21;
          }

          while (!v22);
          v23 = (v16 + 16 * v21);
          std::unique_ptr<WebKit::IsolatedSession>::reset[abi:sn200100](v23 + 1, 0);
          v25 = *v23;
          *v23 = 0;
          if (v25 && atomic_fetch_add_explicit(v25, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v25, v24);
          }

          v26 = *v13;
          *v13 = 0;
          v13[1] = 0;
          *v23 = v26;
          std::unique_ptr<WebKit::IsolatedSession>::reset[abi:sn200100](v13 + 1, 0);
          v27 = *v13;
          *v13 = 0;
          if (v27 && atomic_fetch_add_explicit(v27, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v27, v9);
          }

          if (v13 == a3)
          {
            v12 = v23;
          }
        }
      }

      ++v11;
    }

    while (v11 != v6);
  }

  else
  {
    v12 = 0;
    result = 0;
    if (!v5)
    {
      return result;
    }
  }

  WTF::fastFree((v5 - 16), v9);
  return v12;
}

uint64_t WTF::HashTable<WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,std::unique_ptr<WebKit::IsolatedSession>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,std::unique_ptr<WebKit::IsolatedSession>>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,std::unique_ptr<WebKit::IsolatedSession>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<std::unique_ptr<WebKit::IsolatedSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::begin(uint64_t a1, uint64_t a2, const WTF::StringImpl *a3)
{
  if (!a1)
  {
    return 0;
  }

  if (!*(a1 - 12))
  {
    return a1 + 16 * *(a1 - 4);
  }

  return WTF::HashTable<WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,std::unique_ptr<WebKit::IsolatedSession>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,std::unique_ptr<WebKit::IsolatedSession>>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,std::unique_ptr<WebKit::IsolatedSession>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<std::unique_ptr<WebKit::IsolatedSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::makeIterator(a1, a1, a3);
}

uint64_t WTF::HashTable<WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,std::unique_ptr<WebKit::IsolatedSession>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,std::unique_ptr<WebKit::IsolatedSession>>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,std::unique_ptr<WebKit::IsolatedSession>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<std::unique_ptr<WebKit::IsolatedSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::makeIterator(uint64_t a1, uint64_t a2, const WTF::StringImpl *a3)
{
  if (a1)
  {
    v3 = *(a1 - 4);
  }

  else
  {
    v3 = 0;
  }

  v5[0] = a2;
  v5[1] = a1 + 16 * v3;
  WTF::HashTableConstIterator<WTF::HashTable<WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::String>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,WTF::String,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>,WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::String>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,WTF::String,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>>::skipEmptyBuckets(v5, a2, a3);
  return v5[0];
}

void WTF::GenericHashTraits<WebCore::SecurityOriginData>::assignToEmpty<WebCore::SecurityOriginData,WebCore::SecurityOriginData>(uint64_t a1, uint64_t *a2)
{
  v4 = *(a2 + 24);
  if (*(a1 + 24) == 255)
  {
    if (v4 == 255)
    {
      return;
    }

    if (!*(a2 + 24))
    {
      goto LABEL_15;
    }

    goto LABEL_16;
  }

  if (v4 != 255)
  {
    if (!*(a2 + 24))
    {
      if (!*(a1 + 24))
      {
        v5 = *a2;
        *a2 = 0;
        v6 = *a1;
        *a1 = v5;
        if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v6, a2);
        }

        v7 = a2[1];
        a2[1] = 0;
        v8 = *(a1 + 8);
        *(a1 + 8) = v7;
        if (v8)
        {
          if (atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v8, a2);
          }
        }

        v9 = *(a2 + 8);
        *(a1 + 18) = *(a2 + 18);
        *(a1 + 16) = v9;
        return;
      }

LABEL_15:
      mpark::detail::assignment<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>>::emplace<0ul,WebCore::SecurityOriginData::Tuple>(a1);
      return;
    }

LABEL_16:
    _ZN5mpark3lib5cpp176invokeIZNS_6detail10assignmentINS3_6traitsIJN7WebCore18SecurityOriginData5TupleENS6_16ProcessQualifiedIN3WTF23ObjectIdentifierGenericINS6_26OpaqueOriginIdentifierTypeENSA_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEEEEEEEE14generic_assignINS3_15move_assignmentISH_LNS3_5TraitE1EEEEEvOT_EUlRSN_OT0_E_JRNS3_3altILm1ESG_EESU_EEEDTclsr6detailE6invokeclsr3libE7forwardISN_Efp_Espclsr3libE7forwardIT0_Efp0_EEESO_DpOSW_();
    return;
  }

  if (!*(a1 + 24))
  {
    v10 = *(a1 + 8);
    *(a1 + 8) = 0;
    if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v10, a2);
    }

    v11 = *a1;
    *a1 = 0;
    if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v11, a2);
    }
  }

  *(a1 + 24) = -1;
}

void WTF::HashTable<unsigned long long,WTF::KeyValuePair<unsigned long long,WTF::ThreadSafeWeakPtr<WebKit::WebSocketTask,WTF::NoTaggingTraits<WebKit::WebSocketTask>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<unsigned long long,WTF::ThreadSafeWeakPtr<WebKit::WebSocketTask,WTF::NoTaggingTraits<WebKit::WebSocketTask>>>>,WTF::DefaultHash<unsigned long long>,WTF::HashMap<unsigned long long,WTF::ThreadSafeWeakPtr<WebKit::WebSocketTask,WTF::NoTaggingTraits<WebKit::WebSocketTask>>,WTF::DefaultHash<unsigned long long>,WTF::HashTraits<unsigned long long>,WTF::HashTraits<WTF::ThreadSafeWeakPtr<WebKit::WebSocketTask,WTF::NoTaggingTraits<WebKit::WebSocketTask>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<unsigned long long>,WTF::FastMalloc>::expand(uint64_t *a1)
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

  WTF::HashTable<unsigned long long,WTF::KeyValuePair<unsigned long long,WTF::ThreadSafeWeakPtr<WebKit::WebSocketTask,WTF::NoTaggingTraits<WebKit::WebSocketTask>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<unsigned long long,WTF::ThreadSafeWeakPtr<WebKit::WebSocketTask,WTF::NoTaggingTraits<WebKit::WebSocketTask>>>>,WTF::DefaultHash<unsigned long long>,WTF::HashMap<unsigned long long,WTF::ThreadSafeWeakPtr<WebKit::WebSocketTask,WTF::NoTaggingTraits<WebKit::WebSocketTask>>,WTF::DefaultHash<unsigned long long>,WTF::HashTraits<unsigned long long>,WTF::HashTraits<WTF::ThreadSafeWeakPtr<WebKit::WebSocketTask,WTF::NoTaggingTraits<WebKit::WebSocketTask>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<unsigned long long>,WTF::FastMalloc>::rehash(a1, v3);
}

void WTF::HashTable<unsigned long long,WTF::KeyValuePair<unsigned long long,WTF::ThreadSafeWeakPtr<WebKit::WebSocketTask,WTF::NoTaggingTraits<WebKit::WebSocketTask>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<unsigned long long,WTF::ThreadSafeWeakPtr<WebKit::WebSocketTask,WTF::NoTaggingTraits<WebKit::WebSocketTask>>>>,WTF::DefaultHash<unsigned long long>,WTF::HashMap<unsigned long long,WTF::ThreadSafeWeakPtr<WebKit::WebSocketTask,WTF::NoTaggingTraits<WebKit::WebSocketTask>>,WTF::DefaultHash<unsigned long long>,WTF::HashTraits<unsigned long long>,WTF::HashTraits<WTF::ThreadSafeWeakPtr<WebKit::WebSocketTask,WTF::NoTaggingTraits<WebKit::WebSocketTask>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<unsigned long long>,WTF::FastMalloc>::rehash(uint64_t *a1, unsigned int a2)
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

  v7 = WTF::fastMalloc((24 * a2 + 16));
  v9 = v7;
  v10 = v7 + 16;
  if (a2)
  {
    bzero((v7 + 16), 24 * a2);
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
      v12 = (v4 + 24 * i);
      v13 = *v12;
      if (*v12 != -1)
      {
        if (v13)
        {
          v15 = *a1;
          if (*a1)
          {
            v16 = *(v15 - 8);
          }

          else
          {
            v16 = 0;
          }

          v17 = (v13 + ~(v13 << 32)) ^ ((v13 + ~(v13 << 32)) >> 22);
          v18 = 9 * ((v17 + ~(v17 << 13)) ^ ((v17 + ~(v17 << 13)) >> 8));
          v19 = (v18 ^ (v18 >> 15)) + ~((v18 ^ (v18 >> 15)) << 27);
          v20 = v16 & ((v19 >> 31) ^ v19);
          v21 = 1;
          do
          {
            v22 = (v15 + 24 * v20);
            v20 = (v20 + v21++) & v16;
          }

          while (*v22);
          v23 = v22[2];
          v22[2] = 0;
          if (v23)
          {
            WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v23, v8);
          }

          v24 = *v12;
          v12[1] = 0;
          *v22 = v24;
          v22[2] = v12[2];
          v12[2] = 0;
        }

        else
        {
          v14 = v12[2];
          v12[2] = 0;
          if (v14)
          {
            WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v14, v8);
          }
        }
      }
    }
  }

  else if (!v4)
  {
    return;
  }

  WTF::fastFree((v4 - 16), v8);
}

unint64_t WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::WebSocketTask,(WTF::DestructionThread)0>::controlBlock(atomic_ullong *a1)
{
  result = *a1;
  if (result)
  {
    result = WTF::fastMalloc(0x20);
    *result = 0;
    *(result + 8) = xmmword_19E7014F0;
    *(result + 24) = a1 - 5;
    while (1)
    {
      v4 = *a1;
      if ((*a1 & 1) == 0)
      {
        break;
      }

      *(result + 8) = v4 >> 1;
      v5 = v4;
      atomic_compare_exchange_strong_explicit(a1, &v5, result, memory_order_release, memory_order_relaxed);
      if (v5 == v4)
      {
        return result;
      }
    }

    WTF::fastFree(result, v3);
    return *a1;
  }

  return result;
}

uint64_t WTF::HashTable<WebKit::WebPageNetworkParameters,WTF::KeyValuePair<WebKit::WebPageNetworkParameters,WTF::WeakPtr<WebKit::SessionSet,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebKit::WebPageNetworkParameters,WTF::WeakPtr<WebKit::SessionSet,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>>,WTF::DefaultHash<WebKit::WebPageNetworkParameters>,WTF::HashMap<WebKit::WebPageNetworkParameters,WTF::WeakPtr<WebKit::SessionSet,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WebKit::WebPageNetworkParameters>,WTF::HashTraits<WebKit::WebPageNetworkParameters>,WTF::HashTraits<WTF::WeakPtr<WebKit::SessionSet,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebKit::WebPageNetworkParameters>,WTF::FastMalloc>::expand(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  if (*a1)
  {
    v4 = *(v3 - 4);
    v5 = *(v3 - 12);
    if (v4)
    {
      v6 = v4 << (6 * v5 >= 2 * v4);
      goto LABEL_6;
    }
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  v6 = 8;
LABEL_6:
  v7 = WTF::fastMalloc((16 * v6 + 16));
  v10 = v7;
  v11 = v7 + 16;
  if (v6)
  {
    bzero((v7 + 16), 16 * v6);
  }

  *a1 = v11;
  v10[2] = v6 - 1;
  v10[3] = v6;
  *v10 = 0;
  v10[1] = v5;
  if (v4)
  {
    v12 = 0;
    v13 = 0;
    v14 = v4;
    do
    {
      v15 = v3 + 16 * v12;
      if (*v15 != -1)
      {
        if (WTF::equal(*v15, 0, v9))
        {
          v16 = *(v15 + 8);
          *(v15 + 8) = 0;
          if (v16 && atomic_fetch_add(v16, 0xFFFFFFFF) == 1)
          {
            atomic_store(1u, v16);
            WTF::fastFree(v16, v8);
          }

          v17 = *v15;
          *v15 = 0;
          if (v17)
          {
            if (atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v17, v8);
            }
          }
        }

        else
        {
          v18 = *a1;
          if (*a1)
          {
            v19 = *(v18 - 8);
          }

          else
          {
            v19 = 0;
          }

          v20 = *v15;
          if (*v15)
          {
            v21 = *(v20 + 4);
            if (v21 < 0x100)
            {
              LODWORD(v20) = WTF::StringImpl::hashSlowCase(v20);
            }

            else
            {
              LODWORD(v20) = v21 >> 8;
            }
          }

          v22 = 0;
          do
          {
            v23 = v20 & v19;
            v24 = WTF::equal(*(v18 + 16 * v23), 0, v9);
            LODWORD(v20) = ++v22 + v23;
          }

          while (!v24);
          v25 = v18 + 16 * v23;
          v26 = *(v25 + 8);
          *(v25 + 8) = 0;
          if (v26 && atomic_fetch_add(v26, 0xFFFFFFFF) == 1)
          {
            atomic_store(1u, v26);
            WTF::fastFree(v26, v8);
          }

          v27 = *v25;
          *v25 = 0;
          if (v27 && atomic_fetch_add_explicit(v27, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v27, v8);
          }

          v28 = *v15;
          *v15 = 0;
          *v25 = v28;
          v29 = *(v15 + 8);
          *(v15 + 8) = 0;
          *(v25 + 8) = v29;
          v30 = *(v15 + 8);
          *(v15 + 8) = 0;
          if (v30 && atomic_fetch_add(v30, 0xFFFFFFFF) == 1)
          {
            atomic_store(1u, v30);
            WTF::fastFree(v30, v8);
          }

          v31 = *v15;
          *v15 = 0;
          if (v31 && atomic_fetch_add_explicit(v31, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v31, v8);
          }

          if (v15 == a2)
          {
            v13 = v25;
          }
        }
      }

      ++v12;
    }

    while (v12 != v14);
  }

  else
  {
    v13 = 0;
    result = 0;
    if (!v3)
    {
      return result;
    }
  }

  WTF::fastFree((v3 - 16), v8);
  return v13;
}

uint64_t *WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::SessionSet,WTF::RawPtrTraits<WebKit::SessionSet>,WTF::DefaultRefDerefTraits<WebKit::SessionSet>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::SessionSet,WTF::RawPtrTraits<WebKit::SessionSet>,WTF::DefaultRefDerefTraits<WebKit::SessionSet>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::SessionSet,WTF::RawPtrTraits<WebKit::SessionSet>,WTF::DefaultRefDerefTraits<WebKit::SessionSet>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::SessionSet,WTF::RawPtrTraits<WebKit::SessionSet>,WTF::DefaultRefDerefTraits<WebKit::SessionSet>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  if (*a1 && (v5 = *(v3 - 4)) != 0)
  {
    v4 = v5 << (6 * *(v3 - 12) >= (2 * v5));
  }

  else
  {
    v4 = 8;
  }

  return WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::SessionSet,WTF::RawPtrTraits<WebKit::SessionSet>,WTF::DefaultRefDerefTraits<WebKit::SessionSet>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::SessionSet,WTF::RawPtrTraits<WebKit::SessionSet>,WTF::DefaultRefDerefTraits<WebKit::SessionSet>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::SessionSet,WTF::RawPtrTraits<WebKit::SessionSet>,WTF::DefaultRefDerefTraits<WebKit::SessionSet>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::SessionSet,WTF::RawPtrTraits<WebKit::SessionSet>,WTF::DefaultRefDerefTraits<WebKit::SessionSet>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(a1, v4, a2);
}

uint64_t *WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::SessionSet,WTF::RawPtrTraits<WebKit::SessionSet>,WTF::DefaultRefDerefTraits<WebKit::SessionSet>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::SessionSet,WTF::RawPtrTraits<WebKit::SessionSet>,WTF::DefaultRefDerefTraits<WebKit::SessionSet>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::SessionSet,WTF::RawPtrTraits<WebKit::SessionSet>,WTF::DefaultRefDerefTraits<WebKit::SessionSet>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::SessionSet,WTF::RawPtrTraits<WebKit::SessionSet>,WTF::DefaultRefDerefTraits<WebKit::SessionSet>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(uint64_t *a1, unsigned int a2, uint64_t *a3)
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
            WTF::RefCounted<WebKit::SessionSet>::deref((v26 + 8), v10);
          }

          *v25 = *v13;
          v27 = v13[1];
          v13[1] = 0;
          v25[1] = v27;
          v28 = v13[1];
          v13[1] = 0;
          if (v28)
          {
            WTF::RefCounted<WebKit::SessionSet>::deref((v28 + 8), v10);
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
            WTF::RefCounted<WebKit::SessionSet>::deref((v15 + 8), v10);
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

uint64_t *WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::String>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::String,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  if (*a1 && (v5 = *(v3 - 4)) != 0)
  {
    v4 = v5 << (6 * *(v3 - 12) >= (2 * v5));
  }

  else
  {
    v4 = 8;
  }

  return WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::String>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::String,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(a1, v4, a2);
}

uint64_t *WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::String>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::String,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(uint64_t *a1, unsigned int a2, uint64_t *a3)
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
          if (v26 && atomic_fetch_add_explicit(v26, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v26, v10);
          }

          *v25 = *v13;
          v27 = v13[1];
          v13[1] = 0;
          v25[1] = v27;
          v28 = v13[1];
          v13[1] = 0;
          if (v28 && atomic_fetch_add_explicit(v28, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v28, v10);
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
            if (atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v15, v10);
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

_DWORD *WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkSessionCocoa::BlobDataTaskClient,WTF::RawPtrTraits<WebKit::NetworkSessionCocoa::BlobDataTaskClient>,WTF::DefaultRefDerefTraits<WebKit::NetworkSessionCocoa::BlobDataTaskClient>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkSessionCocoa::BlobDataTaskClient,WTF::RawPtrTraits<WebKit::NetworkSessionCocoa::BlobDataTaskClient>,WTF::DefaultRefDerefTraits<WebKit::NetworkSessionCocoa::BlobDataTaskClient>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkSessionCocoa::BlobDataTaskClient,WTF::RawPtrTraits<WebKit::NetworkSessionCocoa::BlobDataTaskClient>,WTF::DefaultRefDerefTraits<WebKit::NetworkSessionCocoa::BlobDataTaskClient>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::NetworkSessionCocoa::BlobDataTaskClient,WTF::RawPtrTraits<WebKit::NetworkSessionCocoa::BlobDataTaskClient>,WTF::DefaultRefDerefTraits<WebKit::NetworkSessionCocoa::BlobDataTaskClient>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(uint64_t *a1)
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

  return WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkSessionCocoa::BlobDataTaskClient,WTF::RawPtrTraits<WebKit::NetworkSessionCocoa::BlobDataTaskClient>,WTF::DefaultRefDerefTraits<WebKit::NetworkSessionCocoa::BlobDataTaskClient>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkSessionCocoa::BlobDataTaskClient,WTF::RawPtrTraits<WebKit::NetworkSessionCocoa::BlobDataTaskClient>,WTF::DefaultRefDerefTraits<WebKit::NetworkSessionCocoa::BlobDataTaskClient>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkSessionCocoa::BlobDataTaskClient,WTF::RawPtrTraits<WebKit::NetworkSessionCocoa::BlobDataTaskClient>,WTF::DefaultRefDerefTraits<WebKit::NetworkSessionCocoa::BlobDataTaskClient>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::NetworkSessionCocoa::BlobDataTaskClient,WTF::RawPtrTraits<WebKit::NetworkSessionCocoa::BlobDataTaskClient>,WTF::DefaultRefDerefTraits<WebKit::NetworkSessionCocoa::BlobDataTaskClient>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(a1, v3);
}

_DWORD *WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkSessionCocoa::BlobDataTaskClient,WTF::RawPtrTraits<WebKit::NetworkSessionCocoa::BlobDataTaskClient>,WTF::DefaultRefDerefTraits<WebKit::NetworkSessionCocoa::BlobDataTaskClient>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkSessionCocoa::BlobDataTaskClient,WTF::RawPtrTraits<WebKit::NetworkSessionCocoa::BlobDataTaskClient>,WTF::DefaultRefDerefTraits<WebKit::NetworkSessionCocoa::BlobDataTaskClient>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkSessionCocoa::BlobDataTaskClient,WTF::RawPtrTraits<WebKit::NetworkSessionCocoa::BlobDataTaskClient>,WTF::DefaultRefDerefTraits<WebKit::NetworkSessionCocoa::BlobDataTaskClient>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::NetworkSessionCocoa::BlobDataTaskClient,WTF::RawPtrTraits<WebKit::NetworkSessionCocoa::BlobDataTaskClient>,WTF::DefaultRefDerefTraits<WebKit::NetworkSessionCocoa::BlobDataTaskClient>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(uint64_t *a1, unsigned int a2)
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
      v10 = (v4 + 16 * v9);
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

          v15 = (v11 + ~(v11 << 32)) ^ ((v11 + ~(v11 << 32)) >> 22);
          v16 = 9 * ((v15 + ~(v15 << 13)) ^ ((v15 + ~(v15 << 13)) >> 8));
          v17 = (v16 ^ (v16 >> 15)) + ~((v16 ^ (v16 >> 15)) << 27);
          v18 = v14 & ((v17 >> 31) ^ v17);
          v19 = 1;
          do
          {
            v20 = v18;
            v21 = *(v13 + 16 * v18);
            v18 = (v18 + v19++) & v14;
          }

          while (v21);
          v22 = (v13 + 16 * v20);
          v23 = v22[1];
          v22[1] = 0;
          if (v23)
          {
            WTF::RefCounted<WebKit::NetworkSessionCocoa::BlobDataTaskClient>::deref(v23 + 16, v8);
          }

          *v22 = *v10;
          v24 = v10[1];
          v10[1] = 0;
          v22[1] = v24;
          v12 = v10[1];
          v10[1] = 0;
          if (!v12)
          {
            goto LABEL_19;
          }

LABEL_18:
          WTF::RefCounted<WebKit::NetworkSessionCocoa::BlobDataTaskClient>::deref(v12 + 16, v8);
          goto LABEL_19;
        }

        v12 = v10[1];
        v10[1] = 0;
        if (v12)
        {
          goto LABEL_18;
        }
      }

LABEL_19:
      if (++v9 == v5)
      {
        goto LABEL_22;
      }
    }
  }

  if (v4)
  {
LABEL_22:

    return WTF::fastFree((v4 - 16), v8);
  }

  return result;
}

uint64_t *WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RetainPtr<NSURLSessionDataTask>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RetainPtr<NSURLSessionDataTask>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RetainPtr<NSURLSessionDataTask>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RetainPtr<NSURLSessionDataTask>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(uint64_t *a1, uint64_t *a2)
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

  return WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RetainPtr<NSURLSessionDataTask>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RetainPtr<NSURLSessionDataTask>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RetainPtr<NSURLSessionDataTask>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RetainPtr<NSURLSessionDataTask>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(a1, v5, a2);
}

uint64_t *WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RetainPtr<NSURLSessionDataTask>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RetainPtr<NSURLSessionDataTask>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RetainPtr<NSURLSessionDataTask>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RetainPtr<NSURLSessionDataTask>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(uint64_t *a1, unsigned int a2, uint64_t *a3)
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
          }

          *v25 = *v13;
          v27 = v13[1];
          v13[1] = 0;
          v25[1] = v27;
          v28 = v13[1];
          v13[1] = 0;
          if (v28)
          {
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

void WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RetainPtr<NSURLSessionDataTask>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RetainPtr<NSURLSessionDataTask>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RetainPtr<NSURLSessionDataTask>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RetainPtr<NSURLSessionDataTask>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::remove(uint64_t *a1, void *a2)
{
  v3 = a2[1];
  *a2 = -1;
  a2[1] = 0;
  if (v3)
  {
  }

  v4 = *a1;
  v5 = vadd_s32(*(*a1 - 16), 0xFFFFFFFF00000001);
  *(v4 - 16) = v5;
  v6 = *(v4 - 4);
  if (6 * v5.i32[1] < v6 && v6 >= 9)
  {

    WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RetainPtr<NSURLSessionDataTask>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RetainPtr<NSURLSessionDataTask>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RetainPtr<NSURLSessionDataTask>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RetainPtr<NSURLSessionDataTask>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(a1, v6 >> 1, 0);
  }
}

uint64_t WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RetainPtr<NSURLSessionDataTask>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RetainPtr<NSURLSessionDataTask>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RetainPtr<NSURLSessionDataTask>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RetainPtr<NSURLSessionDataTask>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RetainPtr<NSURLSessionDataTask>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RetainPtr<NSURLSessionDataTask>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  if (!*a1)
  {
    return 0;
  }

  v3 = *a2;
  if (*a2 == -1 || !v3)
  {
    __break(0xC471u);
    JUMPOUT(0x19D94AB84);
  }

  v4 = *(v2 - 8);
  v5 = (v3 + ~(v3 << 32)) ^ ((v3 + ~(v3 << 32)) >> 22);
  v6 = 9 * ((v5 + ~(v5 << 13)) ^ ((v5 + ~(v5 << 13)) >> 8));
  v7 = (v6 ^ (v6 >> 15)) + ~((v6 ^ (v6 >> 15)) << 27);
  v8 = v4 & ((v7 >> 31) ^ v7);
  v9 = *(v2 + 16 * v8);
  if (v9 == v3)
  {
    return v2 + 16 * v8;
  }

  v10 = 1;
  while (v9)
  {
    v8 = (v8 + v10) & v4;
    v9 = *(v2 + 16 * v8);
    ++v10;
    if (v9 == v3)
    {
      return v2 + 16 * v8;
    }
  }

  return v2 + 16 * *(v2 - 4);
}

uint64_t *WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkSessionCocoa::BlobDataTaskClient,WTF::RawPtrTraits<WebKit::NetworkSessionCocoa::BlobDataTaskClient>,WTF::DefaultRefDerefTraits<WebKit::NetworkSessionCocoa::BlobDataTaskClient>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkSessionCocoa::BlobDataTaskClient,WTF::RawPtrTraits<WebKit::NetworkSessionCocoa::BlobDataTaskClient>,WTF::DefaultRefDerefTraits<WebKit::NetworkSessionCocoa::BlobDataTaskClient>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkSessionCocoa::BlobDataTaskClient,WTF::RawPtrTraits<WebKit::NetworkSessionCocoa::BlobDataTaskClient>,WTF::DefaultRefDerefTraits<WebKit::NetworkSessionCocoa::BlobDataTaskClient>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::NetworkSessionCocoa::BlobDataTaskClient,WTF::RawPtrTraits<WebKit::NetworkSessionCocoa::BlobDataTaskClient>,WTF::DefaultRefDerefTraits<WebKit::NetworkSessionCocoa::BlobDataTaskClient>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::remove(uint64_t *result, void *a2)
{
  v2 = result;
  v3 = a2[1];
  *a2 = -1;
  a2[1] = 0;
  if (v3)
  {
    result = WTF::RefCounted<WebKit::NetworkSessionCocoa::BlobDataTaskClient>::deref(v3 + 16, a2);
  }

  v4 = *v2;
  v5 = vadd_s32(*(*v2 - 16), 0xFFFFFFFF00000001);
  *(v4 - 16) = v5;
  v6 = *(v4 - 4);
  if (6 * v5.i32[1] < v6 && v6 >= 9)
  {

    return WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkSessionCocoa::BlobDataTaskClient,WTF::RawPtrTraits<WebKit::NetworkSessionCocoa::BlobDataTaskClient>,WTF::DefaultRefDerefTraits<WebKit::NetworkSessionCocoa::BlobDataTaskClient>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkSessionCocoa::BlobDataTaskClient,WTF::RawPtrTraits<WebKit::NetworkSessionCocoa::BlobDataTaskClient>,WTF::DefaultRefDerefTraits<WebKit::NetworkSessionCocoa::BlobDataTaskClient>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkSessionCocoa::BlobDataTaskClient,WTF::RawPtrTraits<WebKit::NetworkSessionCocoa::BlobDataTaskClient>,WTF::DefaultRefDerefTraits<WebKit::NetworkSessionCocoa::BlobDataTaskClient>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::NetworkSessionCocoa::BlobDataTaskClient,WTF::RawPtrTraits<WebKit::NetworkSessionCocoa::BlobDataTaskClient>,WTF::DefaultRefDerefTraits<WebKit::NetworkSessionCocoa::BlobDataTaskClient>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(v2, v6 >> 1);
  }

  return result;
}

uint64_t WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkSessionCocoa::BlobDataTaskClient,WTF::RawPtrTraits<WebKit::NetworkSessionCocoa::BlobDataTaskClient>,WTF::DefaultRefDerefTraits<WebKit::NetworkSessionCocoa::BlobDataTaskClient>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkSessionCocoa::BlobDataTaskClient,WTF::RawPtrTraits<WebKit::NetworkSessionCocoa::BlobDataTaskClient>,WTF::DefaultRefDerefTraits<WebKit::NetworkSessionCocoa::BlobDataTaskClient>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkSessionCocoa::BlobDataTaskClient,WTF::RawPtrTraits<WebKit::NetworkSessionCocoa::BlobDataTaskClient>,WTF::DefaultRefDerefTraits<WebKit::NetworkSessionCocoa::BlobDataTaskClient>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::NetworkSessionCocoa::BlobDataTaskClient,WTF::RawPtrTraits<WebKit::NetworkSessionCocoa::BlobDataTaskClient>,WTF::DefaultRefDerefTraits<WebKit::NetworkSessionCocoa::BlobDataTaskClient>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkSessionCocoa::BlobDataTaskClient,WTF::RawPtrTraits<WebKit::NetworkSessionCocoa::BlobDataTaskClient>,WTF::DefaultRefDerefTraits<WebKit::NetworkSessionCocoa::BlobDataTaskClient>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::NetworkSessionCocoa::BlobDataTaskClient,WTF::RawPtrTraits<WebKit::NetworkSessionCocoa::BlobDataTaskClient>,WTF::DefaultRefDerefTraits<WebKit::NetworkSessionCocoa::BlobDataTaskClient>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(uint64_t result, uint64_t a2)
{
  if (result)
  {
    if (a2 == -1 || !a2)
    {
      __break(0xC471u);
      JUMPOUT(0x19D94ACECLL);
    }

    v2 = *(result - 8);
    v3 = (~(a2 << 32) + a2) ^ ((~(a2 << 32) + a2) >> 22);
    v4 = 9 * ((v3 + ~(v3 << 13)) ^ ((v3 + ~(v3 << 13)) >> 8));
    v5 = (v4 ^ (v4 >> 15)) + ~((v4 ^ (v4 >> 15)) << 27);
    v6 = v2 & ((v5 >> 31) ^ v5);
    v7 = *(result + 16 * v6);
    if (v7 == a2)
    {
LABEL_8:
      result += 16 * v6;
    }

    else
    {
      v8 = 1;
      while (v7)
      {
        v6 = (v6 + v8) & v2;
        v7 = *(result + 16 * v6);
        ++v8;
        if (v7 == a2)
        {
          goto LABEL_8;
        }
      }

      result += 16 * *(result - 4);
    }
  }

  return result;
}

uint64_t *WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::SessionSet,WTF::RawPtrTraits<WebKit::SessionSet>,WTF::DefaultRefDerefTraits<WebKit::SessionSet>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::SessionSet,WTF::RawPtrTraits<WebKit::SessionSet>,WTF::DefaultRefDerefTraits<WebKit::SessionSet>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::remove(uint64_t *result, void *a2)
{
  if (*result)
  {
    v2 = (*result + 16 * *(*result - 4));
    if (v2 == a2)
    {
      return result;
    }
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = 0;
  }

  if (v2 != a2)
  {
    return WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::SessionSet,WTF::RawPtrTraits<WebKit::SessionSet>,WTF::DefaultRefDerefTraits<WebKit::SessionSet>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::SessionSet,WTF::RawPtrTraits<WebKit::SessionSet>,WTF::DefaultRefDerefTraits<WebKit::SessionSet>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::SessionSet,WTF::RawPtrTraits<WebKit::SessionSet>,WTF::DefaultRefDerefTraits<WebKit::SessionSet>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::SessionSet,WTF::RawPtrTraits<WebKit::SessionSet>,WTF::DefaultRefDerefTraits<WebKit::SessionSet>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::remove(result, a2);
  }

  return result;
}

uint64_t *WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::SessionSet,WTF::RawPtrTraits<WebKit::SessionSet>,WTF::DefaultRefDerefTraits<WebKit::SessionSet>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::SessionSet,WTF::RawPtrTraits<WebKit::SessionSet>,WTF::DefaultRefDerefTraits<WebKit::SessionSet>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::SessionSet,WTF::RawPtrTraits<WebKit::SessionSet>,WTF::DefaultRefDerefTraits<WebKit::SessionSet>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::SessionSet,WTF::RawPtrTraits<WebKit::SessionSet>,WTF::DefaultRefDerefTraits<WebKit::SessionSet>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::remove(uint64_t *result, void *a2)
{
  v2 = result;
  v3 = a2[1];
  *a2 = -1;
  a2[1] = 0;
  if (v3)
  {
    result = WTF::RefCounted<WebKit::SessionSet>::deref((v3 + 8), a2);
  }

  v4 = *v2;
  v5 = vadd_s32(*(*v2 - 16), 0xFFFFFFFF00000001);
  *(v4 - 16) = v5;
  v6 = *(v4 - 4);
  if (6 * v5.i32[1] < v6 && v6 >= 9)
  {

    return WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::SessionSet,WTF::RawPtrTraits<WebKit::SessionSet>,WTF::DefaultRefDerefTraits<WebKit::SessionSet>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::SessionSet,WTF::RawPtrTraits<WebKit::SessionSet>,WTF::DefaultRefDerefTraits<WebKit::SessionSet>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::SessionSet,WTF::RawPtrTraits<WebKit::SessionSet>,WTF::DefaultRefDerefTraits<WebKit::SessionSet>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::SessionSet,WTF::RawPtrTraits<WebKit::SessionSet>,WTF::DefaultRefDerefTraits<WebKit::SessionSet>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(v2, v6 >> 1, 0);
  }

  return result;
}

uint64_t WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::SessionSet,WTF::RawPtrTraits<WebKit::SessionSet>,WTF::DefaultRefDerefTraits<WebKit::SessionSet>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::SessionSet,WTF::RawPtrTraits<WebKit::SessionSet>,WTF::DefaultRefDerefTraits<WebKit::SessionSet>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::SessionSet,WTF::RawPtrTraits<WebKit::SessionSet>,WTF::DefaultRefDerefTraits<WebKit::SessionSet>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::SessionSet,WTF::RawPtrTraits<WebKit::SessionSet>,WTF::DefaultRefDerefTraits<WebKit::SessionSet>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::SessionSet,WTF::RawPtrTraits<WebKit::SessionSet>,WTF::DefaultRefDerefTraits<WebKit::SessionSet>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::SessionSet,WTF::RawPtrTraits<WebKit::SessionSet>,WTF::DefaultRefDerefTraits<WebKit::SessionSet>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(uint64_t *a1, uint64_t a2)
{
  if (!*a1)
  {
    return 0;
  }

  result = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::SessionSet,WTF::RawPtrTraits<WebKit::SessionSet>,WTF::DefaultRefDerefTraits<WebKit::SessionSet>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::SessionSet,WTF::RawPtrTraits<WebKit::SessionSet>,WTF::DefaultRefDerefTraits<WebKit::SessionSet>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::SessionSet,WTF::RawPtrTraits<WebKit::SessionSet>,WTF::DefaultRefDerefTraits<WebKit::SessionSet>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::SessionSet,WTF::RawPtrTraits<WebKit::SessionSet>,WTF::DefaultRefDerefTraits<WebKit::SessionSet>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::lookup<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::SessionSet,WTF::RawPtrTraits<WebKit::SessionSet>,WTF::DefaultRefDerefTraits<WebKit::SessionSet>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::SessionSet,WTF::RawPtrTraits<WebKit::SessionSet>,WTF::DefaultRefDerefTraits<WebKit::SessionSet>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a1, a2);
  v4 = *a1;
  if (!result)
  {
    if (v4)
    {
      return v4 + 16 * *(v4 - 4);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::SessionSet,WTF::RawPtrTraits<WebKit::SessionSet>,WTF::DefaultRefDerefTraits<WebKit::SessionSet>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::SessionSet,WTF::RawPtrTraits<WebKit::SessionSet>,WTF::DefaultRefDerefTraits<WebKit::SessionSet>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::SessionSet,WTF::RawPtrTraits<WebKit::SessionSet>,WTF::DefaultRefDerefTraits<WebKit::SessionSet>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::SessionSet,WTF::RawPtrTraits<WebKit::SessionSet>,WTF::DefaultRefDerefTraits<WebKit::SessionSet>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::lookup<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::SessionSet,WTF::RawPtrTraits<WebKit::SessionSet>,WTF::DefaultRefDerefTraits<WebKit::SessionSet>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::SessionSet,WTF::RawPtrTraits<WebKit::SessionSet>,WTF::DefaultRefDerefTraits<WebKit::SessionSet>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(uint64_t *a1, uint64_t a2)
{
  if (a2 == -1 || !a2)
  {
    __break(0xC471u);
    JUMPOUT(0x19D94AEFCLL);
  }

  v2 = *a1;
  if (*a1)
  {
    v3 = *(v2 - 8);
    v4 = (~(a2 << 32) + a2) ^ ((~(a2 << 32) + a2) >> 22);
    v5 = 9 * ((v4 + ~(v4 << 13)) ^ ((v4 + ~(v4 << 13)) >> 8));
    v6 = (v5 ^ (v5 >> 15)) + ~((v5 ^ (v5 >> 15)) << 27);
    v7 = v3 & ((v6 >> 31) ^ v6);
    v8 = *(v2 + 16 * v7);
    if (v8 == a2)
    {
      return v2 + 16 * v7;
    }

    v9 = 1;
    while (v8)
    {
      v7 = (v7 + v9) & v3;
      v8 = *(v2 + 16 * v7);
      ++v9;
      if (v8 == a2)
      {
        return v2 + 16 * v7;
      }
    }
  }

  return 0;
}

uint64_t *WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::String,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::remove(uint64_t *a1, WTF::StringImpl *a2)
{
  if (*a1)
  {
    v2 = (*a1 + 16 * *(*a1 - 4));
    if (v2 == a2)
    {
      return a1;
    }
  }

  else
  {
    if (!a2)
    {
      return a1;
    }

    v2 = 0;
  }

  if (v2 != a2)
  {
    return WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::String>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::String,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::remove(a1, a2);
  }

  return a1;
}

uint64_t *WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::String>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::String,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::remove(uint64_t *a1, WTF::StringImpl *a2)
{
  result = *(a2 + 1);
  *a2 = -1;
  *(a2 + 1) = 0;
  if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    result = WTF::StringImpl::destroy(result, a2);
  }

  v4 = *a1;
  v5 = vadd_s32(*(*a1 - 16), 0xFFFFFFFF00000001);
  *(v4 - 16) = v5;
  v6 = *(v4 - 4);
  if (6 * v5.i32[1] < v6 && v6 >= 9)
  {

    return WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::String>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::String,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(a1, v6 >> 1, 0);
  }

  return result;
}

uint64_t WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::String>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::String,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::String,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(uint64_t *a1, uint64_t *a2)
{
  if (!*a1)
  {
    return 0;
  }

  result = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::String>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::String,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::lookup<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::String,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a1, a2);
  v4 = *a1;
  if (!result)
  {
    if (v4)
    {
      return v4 + 16 * *(v4 - 4);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::String>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::String,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::lookup<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::String,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  if (*a2 == -1 || !v2)
  {
    __break(0xC471u);
    JUMPOUT(0x19D94B118);
  }

  v3 = *a1;
  if (*a1)
  {
    v4 = *(v3 - 8);
    v5 = (v2 + ~(v2 << 32)) ^ ((v2 + ~(v2 << 32)) >> 22);
    v6 = 9 * ((v5 + ~(v5 << 13)) ^ ((v5 + ~(v5 << 13)) >> 8));
    v7 = (v6 ^ (v6 >> 15)) + ~((v6 ^ (v6 >> 15)) << 27);
    v8 = v4 & ((v7 >> 31) ^ v7);
    v9 = *(v3 + 16 * v8);
    if (v9 == v2)
    {
      return v3 + 16 * v8;
    }

    v10 = 1;
    while (v9)
    {
      v8 = (v8 + v10) & v4;
      v9 = *(v3 + 16 * v8);
      ++v10;
      if (v9 == v2)
      {
        return v3 + 16 * v8;
      }
    }
  }

  return 0;
}

_DWORD *WTF::HashTable<WTF::Ref<WebKit::SessionSet,WTF::RawPtrTraits<WebKit::SessionSet>,WTF::DefaultRefDerefTraits<WebKit::SessionSet>>,WTF::Ref<WebKit::SessionSet,WTF::RawPtrTraits<WebKit::SessionSet>,WTF::DefaultRefDerefTraits<WebKit::SessionSet>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WebKit::SessionSet,WTF::RawPtrTraits<WebKit::SessionSet>,WTF::DefaultRefDerefTraits<WebKit::SessionSet>>>,WTF::HashTraits<WTF::Ref<WebKit::SessionSet,WTF::RawPtrTraits<WebKit::SessionSet>,WTF::DefaultRefDerefTraits<WebKit::SessionSet>>>,WTF::HashTraits<WTF::Ref<WebKit::SessionSet,WTF::RawPtrTraits<WebKit::SessionSet>,WTF::DefaultRefDerefTraits<WebKit::SessionSet>>>,WTF::FastMalloc>::expand(uint64_t *a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = *(v2 - 4);
    v4 = *(v2 - 12);
    if (v3)
    {
      v5 = v3 << (6 * v4 >= (2 * v3));
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
  result = WTF::fastZeroedMalloc((8 * v5 + 16));
  *a1 = (result + 4);
  result[2] = v5 - 1;
  result[3] = v5;
  *result = 0;
  result[1] = v4;
  if (v3)
  {
    for (i = 0; i != v3; ++i)
    {
      v9 = (v2 + 8 * i);
      v10 = *v9;
      if (*v9 != -1)
      {
        if (v10)
        {
          v11 = *a1;
          if (*a1)
          {
            v12 = *(v11 - 8);
          }

          else
          {
            v12 = 0;
          }

          v13 = (~(v10 << 32) + v10) ^ ((~(v10 << 32) + v10) >> 22);
          v14 = 9 * ((v13 + ~(v13 << 13)) ^ ((v13 + ~(v13 << 13)) >> 8));
          v15 = (v14 ^ (v14 >> 15)) + ~((v14 ^ (v14 >> 15)) << 27);
          v16 = v12 & ((v15 >> 31) ^ v15);
          v17 = 1;
          do
          {
            v18 = v16;
            v19 = *(v11 + 8 * v16);
            v16 = (v16 + v17++) & v12;
          }

          while (v19);
          *v9 = 0;
          *(v11 + 8 * v18) = v10;
          v20 = *v9;
          *v9 = 0;
          if (v20)
          {
            WTF::RefCounted<WebKit::SessionSet>::deref((v20 + 8), v7);
          }
        }

        else
        {
          *v9 = 0;
        }
      }
    }
  }

  else if (!v2)
  {
    return result;
  }

  return WTF::fastFree((v2 - 16), v7);
}

uint64_t WTF::Vector<WebCore::SecurityOriginData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, void *a2)
{
  v3 = *(a1 + 12);
  if (v3)
  {
    v6 = *a1;
    v7 = 32 * v3;
    do
    {
      v6 = mpark::detail::move_constructor<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::~move_constructor(v6) + 32;
      v7 -= 32;
    }

    while (v7);
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

uint64_t WTF::Vector<WebCore::SecurityOriginData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::SecurityOriginData&>(uint64_t a1, unint64_t a2)
{
  v3 = WTF::Vector<WebCore::SecurityOriginData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(a1, *(a1 + 12) + 1, a2);
  mpark::detail::copy_constructor<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::copy_constructor((*a1 + 32 * *(a1 + 12)), v3);
  ++*(a1 + 12);
  return 1;
}

unint64_t WTF::Vector<WebCore::SecurityOriginData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2, unint64_t a3)
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

    WTF::Vector<WebCore::SecurityOriginData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v12);
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

    WTF::Vector<WebCore::SecurityOriginData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v9);
    return *a1 + v6;
  }

  return v3;
}

uint64_t WTF::Vector<WebCore::SecurityOriginData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 8) < a2)
  {
    v2 = a2;
    if (a2 >> 27)
    {
      __break(0xC471u);
      JUMPOUT(0x19D94B4E0);
    }

    v4 = *a1;
    v5 = *a1 + 32 * *(a1 + 12);
    v6 = WTF::fastMalloc((32 * a2));
    *(a1 + 8) = v2;
    *a1 = v6;
    WTF::VectorMover<false,WebCore::SecurityOriginData>::move(v4, v5, v6);
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

  return 1;
}

uint64_t WTF::VectorMover<false,WebCore::SecurityOriginData>::move(uint64_t result, uint64_t a2, _BYTE *a3)
{
  if (result != a2)
  {
    v5 = result;
    do
    {
      mpark::detail::move_constructor<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::move_constructor(a3);
      result = mpark::detail::move_constructor<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::~move_constructor(v5);
      a3 += 32;
      v5 += 32;
    }

    while (v5 != a2);
  }

  return result;
}

uint64_t WTF::checkedSum<int,unsigned int,unsigned int,unsigned int,unsigned int,unsigned int,unsigned int,unsigned int,unsigned int,unsigned int>@<X0>(int a1@<W0>, int a2@<W1>, uint64_t a3@<X2>, int a4@<W3>, int a5@<W4>, int a6@<W5>, int a7@<W6>, int a8@<W7>, uint64_t a9@<X8>, int a10)
{
  result = WTF::checkedSum<int,unsigned int,unsigned int,unsigned int,unsigned int,unsigned int,unsigned int,unsigned int>(a3, a4, a5, a6, a7, a8, a10, v17);
  if (a2 < 0 || v17[0] || (v14 = a2 + v18, __OFADD__(a2, v18)) || a1 < 0 || (v15 = __OFADD__(a1, v14), v16 = a1 + v14, v15))
  {
    *(a9 + 4) = 0;
    *a9 = 1;
  }

  else
  {
    *a9 = 0;
    *(a9 + 4) = v16;
  }

  return result;
}

uint64_t WTF::checkedSum<int,unsigned int,unsigned int,unsigned int,unsigned int,unsigned int,unsigned int,unsigned int>@<X0>(uint64_t result@<X0>, int a2@<W1>, int a3@<W2>, int a4@<W3>, int a5@<W4>, int a6@<W5>, int a7@<W6>, uint64_t a8@<X8>)
{
  if ((a7 | a6) < 0 || ((v8 = a6 + a7, !__OFADD__(a6, a7)) ? (v9 = 0) : (v9 = 1), a5 < 0 || (v9 & 1) != 0 || ((v10 = __OFADD__(a5, v8), v11 = a5 + v8, !v10) ? (v12 = 0) : (v12 = 1), a4 < 0 || (v12 & 1) != 0 || ((v10 = __OFADD__(a4, v11), v13 = a4 + v11, !v10) ? (v14 = 0) : (v14 = 1), a3 < 0 || (v14 & 1) != 0 || ((v10 = __OFADD__(a3, v13), v15 = a3 + v13, !v10) ? (v16 = 0) : (v16 = 1), a2 < 0 || (v16 & 1) != 0 || ((v10 = __OFADD__(a2, v15), v17 = a2 + v15, !v10) ? (v18 = 0) : (v18 = 1), (result & 0x80000000) != 0 || v18 || (v10 = __OFADD__(result, v17), v19 = result + v17, v10)))))))
  {
    *(a8 + 4) = 0;
    *a8 = 1;
  }

  else
  {
    *a8 = 0;
    *(a8 + 4) = v19;
  }

  return result;
}

unint64_t *WTF::StringTypeAdapter<unsigned long long,void>::writeTo<char16_t>(unint64_t *result, _WORD *a2, uint64_t a3)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = *result;
  v4 = 24;
  do
  {
    if (v4 == -1)
    {
LABEL_8:
      __break(1u);
    }

    v8[v4--] = (v3 % 0xA) | 0x30;
    v5 = v3 > 9;
    v3 /= 0xAuLL;
  }

  while (v5);
  v6 = v4 + 1;
  v7 = v4 + 2;
  do
  {
    if (!a3)
    {
      goto LABEL_8;
    }

    *a2++ = v8[v6++];
    ++v7;
    --a3;
  }

  while (v7 != 26);
  return result;
}

uint64_t *WTF::stringTypeAdapterAccumulator<char16_t,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>(char *a1, unint64_t a2, int8x16_t *a3, unint64_t a4, uint64_t a5, int8x16_t *a6, char *a7, uint64_t a8, int8x16_t *a9, unint64_t a10)
{
  if (a4 < 0x40)
  {
    v15 = a1;
  }

  else
  {
    v15 = &a1[2 * (a4 & 0x7FFFFFFFFFFFFFC0)];
    v16 = 0uLL;
    v17 = a1;
    do
    {
      v54.val[0] = *a3;
      v18 = a3[1];
      v57.val[0] = a3[2];
      v19 = a3[3];
      a3 += 4;
      v20 = v19;
      v57.val[1] = 0uLL;
      v60.val[0] = v18;
      v54.val[1] = 0uLL;
      v21 = v17;
      vst2q_s8(v21, v54);
      v21 += 32;
      v60.val[1] = 0uLL;
      vst2q_s8(v21, v60);
      v22 = v17 + 64;
      vst2q_s8(v22, v57);
      v23 = v17 + 96;
      vst2q_s8(v23, *(&v16 - 1));
      v17 += 128;
    }

    while (v17 != v15);
  }

  while (v15 != &a1[2 * a4])
  {
    v24 = a3->u8[0];
    a3 = (a3 + 1);
    *v15 = v24;
    v15 += 2;
  }

  if (a2 < a4)
  {
    goto LABEL_29;
  }

  v10 = a2 - a4;
  v11 = &a1[2 * a4];
  v52 = a5;
  WTF::StringTypeAdapter<WTF::StringImpl *,void>::writeTo<char16_t>(&v52, v11);
  if (!v52)
  {
    goto LABEL_30;
  }

  v25 = *(v52 + 4);
  if (v10 < v25)
  {
    goto LABEL_29;
  }

  while (1)
  {
    v26 = &v11[2 * v25];
    if (a7 < 0x40)
    {
      v27 = &v11[2 * v25];
    }

    else
    {
      v27 = &v26[2 * (a7 & 0x7FFFFFFFFFFFFFC0)];
      v28 = 0uLL;
      v29 = &v11[2 * v25];
      do
      {
        v55.val[0] = *a6;
        v30 = a6[1];
        v58.val[0] = a6[2];
        v31 = a6[3];
        a6 += 4;
        v32 = v31;
        v58.val[1] = 0uLL;
        v61.val[0] = v30;
        v55.val[1] = 0uLL;
        v33 = v29;
        vst2q_s8(v33, v55);
        v33 += 32;
        v61.val[1] = 0uLL;
        vst2q_s8(v33, v61);
        v34 = v29 + 64;
        vst2q_s8(v34, v58);
        v35 = v29 + 96;
        vst2q_s8(v35, *(&v28 - 1));
        v29 += 128;
      }

      while (v29 != v27);
    }

    v36 = v10 - v25;
    while (v27 != &v26[2 * a7])
    {
      v37 = a6->u8[0];
      a6 = (a6 + 1);
      *v27 = v37;
      v27 += 2;
    }

    if (v36 < a7)
    {
      goto LABEL_29;
    }

    a6 = (v36 - a7);
    a7 = &v26[2 * a7];
    v53 = a8;
    result = WTF::StringTypeAdapter<WTF::StringImpl *,void>::writeTo<char16_t>(&v53, a7);
    if (!v53)
    {
      break;
    }

    v39 = *(v53 + 4);
    if (a6 >= v39)
    {
      goto LABEL_22;
    }

LABEL_29:
    __break(1u);
LABEL_30:
    v25 = 0;
  }

  v39 = 0;
LABEL_22:
  v41 = &a7[2 * v39];
  v42 = &v41[2 * a10];
  if (a10 >= 0x40)
  {
    v43 = &v41[2 * (a10 & 0x7FFFFFFFFFFFFFC0)];
    v44 = 0uLL;
    do
    {
      v56.val[0] = *a9;
      v45 = a9[1];
      v59.val[0] = a9[2];
      v46 = a9[3];
      a9 += 4;
      v47 = v46;
      v59.val[1] = 0uLL;
      v62.val[0] = v45;
      v56.val[1] = 0uLL;
      v48 = v41;
      vst2q_s8(v48, v56);
      v48 += 32;
      v62.val[1] = 0uLL;
      vst2q_s8(v48, v62);
      v49 = v41 + 64;
      vst2q_s8(v49, v59);
      v50 = v41 + 96;
      vst2q_s8(v50, *(&v44 - 1));
      v41 += 128;
    }

    while (v41 != v43);
    v41 = v43;
  }

  while (v41 != v42)
  {
    v51 = a9->u8[0];
    a9 = (a9 + 1);
    *v41 = v51;
    v41 += 2;
  }

  return result;
}

WTF *WTF::Vector<WTF::RetainPtr<NSObject  {objcproto18OS_nw_proxy_config}*>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(WTF *result, void *a2)
{
  if (*(result + 2))
  {
    v2 = result;
    v3 = *(result + 3);
    if (v3)
    {
      v4 = *result;
      v5 = 8 * v3;
      do
      {
        v6 = *v4;
        *v4 = 0;
        if (v6)
        {
        }

        ++v4;
        v5 -= 8;
      }

      while (v5);
      *(v2 + 3) = 0;
    }

    result = *v2;
    if (*v2)
    {
      *v2 = 0;
      *(v2 + 2) = 0;

      return WTF::fastFree(result, a2);
    }
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::NetworkSessionCocoa::clearProxyConfigData(void)::$_0,void,WebKit::SessionWrapper &>::call(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 16);
  if (result)
  {
    v4 = **(a1 + 8);
    v5 = [result _networkContext];

    return [v4 addObject:v5];
  }

  return result;
}

void WTF::Detail::CallableWrapper<WebKit::NetworkSessionCocoa::setProxyConfigData(WTF::Vector<std::pair<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,std::optional<WTF::UUID>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&)::$_0,void,WebKit::SessionWrapper &>::call(uint64_t a1, uint64_t a2)
{
  v4 = (a2 + 16);
  v3 = *(a2 + 16);
  if (v3)
  {
    v6 = *(a2 + 24);
    if (v6)
    {
      v7 = *(a1 + 8);
      v8 = *(v6 + 24);
      v9 = [v3 configuration];
      v17 = v9;
      if (v9)
      {
        v10 = v9;
        v9 = v17;
      }

      WebKit::NetworkSessionCocoa::applyProxyConfigurationToSessionConfiguration(v7, v9);
      [*v4 invalidateAndCancel];
      [*(a2 + 24) sessionInvalidated];
      v11 = [[WKNetworkSessionDelegate alloc] initWithNetworkSession:v7 wrapper:a2 withCredentials:v8];
      v12 = *(a2 + 24);
      *(a2 + 24) = v11;
      if (v12)
      {

        v11 = *(a2 + 24);
      }

      WTF::RetainPtr<NSNumber>::operator=(v4, [MEMORY[0x1E695AC78] sessionWithConfiguration:v17 delegate:v11 delegateQueue:{objc_msgSend(MEMORY[0x1E696ADC8], "mainQueue")}]);
      v14 = *(a2 + 32);
      if (v14)
      {
        *(a2 + 32) = 0;
        WTF::HashTable<unsigned long long,WTF::KeyValuePair<unsigned long long,WTF::ThreadSafeWeakPtr<WebKit::NetworkDataTaskCocoa,WTF::NoTaggingTraits<WebKit::NetworkDataTaskCocoa>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<unsigned long long,WTF::ThreadSafeWeakPtr<WebKit::NetworkDataTaskCocoa,WTF::NoTaggingTraits<WebKit::NetworkDataTaskCocoa>>>>,WTF::DefaultHash<unsigned long long>,WTF::HashMap<unsigned long long,WTF::ThreadSafeWeakPtr<WebKit::NetworkDataTaskCocoa,WTF::NoTaggingTraits<WebKit::NetworkDataTaskCocoa>>,WTF::DefaultHash<unsigned long long>,WTF::HashTraits<unsigned long long>,WTF::HashTraits<WTF::ThreadSafeWeakPtr<WebKit::NetworkDataTaskCocoa,WTF::NoTaggingTraits<WebKit::NetworkDataTaskCocoa>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<unsigned long long>,WTF::FastMalloc>::deallocateTable(v14, v13);
      }

      v15 = *(a2 + 40);
      if (v15)
      {
        *(a2 + 40) = 0;
        WTF::fastFree((v15 - 16), v13);
      }

      v16 = *(a2 + 48);
      if (v16)
      {
        *(a2 + 48) = 0;
        WTF::HashTable<unsigned long long,WTF::KeyValuePair<unsigned long long,WTF::ThreadSafeWeakPtr<WebKit::NetworkDataTaskCocoa,WTF::NoTaggingTraits<WebKit::NetworkDataTaskCocoa>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<unsigned long long,WTF::ThreadSafeWeakPtr<WebKit::NetworkDataTaskCocoa,WTF::NoTaggingTraits<WebKit::NetworkDataTaskCocoa>>>>,WTF::DefaultHash<unsigned long long>,WTF::HashMap<unsigned long long,WTF::ThreadSafeWeakPtr<WebKit::NetworkDataTaskCocoa,WTF::NoTaggingTraits<WebKit::NetworkDataTaskCocoa>>,WTF::DefaultHash<unsigned long long>,WTF::HashTraits<unsigned long long>,WTF::HashTraits<WTF::ThreadSafeWeakPtr<WebKit::NetworkDataTaskCocoa,WTF::NoTaggingTraits<WebKit::NetworkDataTaskCocoa>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<unsigned long long>,WTF::FastMalloc>::deallocateTable(v16, v13);
      }

      if (v17)
      {
      }
    }

    else
    {
      __break(0xC471u);
    }
  }
}

void sub_19D94BBB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void *WTF::Detail::CallableWrapper<WebKit::NetworkSessionCocoa::setProxyConfigData(WTF::Vector<std::pair<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,std::optional<WTF::UUID>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&)::$_1,void,WebKit::SessionWrapper &>::call(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 16);
  if (result)
  {
    v4 = **(a1 + 8);
    v5 = [result _networkContext];

    return [v4 addObject:v5];
  }

  return result;
}

void WebKit::RemoteGraphicsContextGLProxy::didReceiveMessage(WebKit::RemoteGraphicsContextGLProxy *this, IPC::Connection *a2, IPC::Decoder *a3)
{
  v69 = *MEMORY[0x1E69E9840];
  ++*(this + 8);
  v5 = *(a3 + 25);
  if (v5 != 1156)
  {
    if (v5 == 1155)
    {
      WebKit::RemoteGraphicsContextGLProxy::wasLost(this);
      goto LABEL_59;
    }

    if (v5 == 1154)
    {
      IPC::ArgumentCoder<IPC::Semaphore,void>::decode(a3, v60);
      if ((v62 & 1) == 0)
      {
        v38 = *a3;
        v39 = *(a3 + 1);
        *a3 = 0;
        *(a3 + 1) = 0;
        v40 = *(a3 + 3);
        if (!v40 || !v39 || ((*(*v40 + 16))(v40, v38), (v62 & 1) == 0))
        {
          buf[0] = 0;
          v68 = 0;
          goto LABEL_49;
        }
      }

      IPC::ArgumentCoder<IPC::Semaphore,void>::decode(a3, &v63);
      if ((v64 & 1) == 0)
      {
        v41 = *a3;
        v42 = *(a3 + 1);
        *a3 = 0;
        *(a3 + 1) = 0;
        v43 = *(a3 + 3);
        if (!v43 || !v42 || ((*(*v43 + 16))(v43, v41), (v64 & 1) == 0))
        {
          buf[0] = 0;
          v68 = 0;
LABEL_47:
          if (v62)
          {
            IPC::Semaphore::destroy(v60);
            WTF::MachSendRight::~MachSendRight(v60);
          }

LABEL_49:
          if (v68)
          {
LABEL_50:
            WebKit::RemoteGraphicsContextGLProxy::wasCreated(this, buf, &buf[8], &buf[16]);
            if (v68)
            {
              if (v67 == 1)
              {
                v33 = *&buf[24];
                *&buf[24] = 0;
                if (v33 && atomic_fetch_add_explicit(v33, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v33, v11);
                }

                v34 = *&buf[16];
                *&buf[16] = 0;
                if (v34 && atomic_fetch_add_explicit(v34, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v34, v11);
                }
              }

              IPC::Semaphore::destroy(&buf[8]);
              WTF::MachSendRight::~MachSendRight(&buf[8]);
              IPC::Semaphore::destroy(buf);
              WTF::MachSendRight::~MachSendRight(buf);
            }

            goto LABEL_59;
          }

LABEL_71:
          v11 = *a3;
          v12 = *(a3 + 1);
          *a3 = 0;
          *(a3 + 1) = 0;
          v44 = *(a3 + 3);
          if (!v44)
          {
            goto LABEL_59;
          }

          if (!v12)
          {
            goto LABEL_59;
          }

          (*(*v44 + 16))(v44, v11);
          if ((v68 & 1) == 0)
          {
            goto LABEL_59;
          }

          goto LABEL_50;
        }
      }

      v6 = *(a3 + 1);
      v7 = *(a3 + 2);
      v8 = *a3;
      if (v6 <= &v7[-*a3])
      {
        *a3 = 0;
        *(a3 + 1) = 0;
        v56 = *(a3 + 3);
        if (v56)
        {
          if (v6)
          {
            (*(*v56 + 16))(v56);
            v6 = *(a3 + 1);
          }
        }

        else
        {
          v6 = 0;
        }
      }

      else
      {
        *(a3 + 2) = v7 + 1;
        if (v7)
        {
          v9 = *v7;
          if (v9 < 2)
          {
            if (*v7)
            {
              IPC::ArgumentCoder<WebKit::RemoteGraphicsContextGLInitializationState,void>::decode(a3, buf);
              if ((buf[24] & 1) == 0)
              {
                v45 = *a3;
                v46 = *(a3 + 1);
                *a3 = 0;
                *(a3 + 1) = 0;
                v47 = *(a3 + 3);
                if (!v47 || !v46 || ((*(*v47 + 16))(v47, v45), (buf[24] & 1) == 0))
                {
LABEL_76:
                  v48 = *a3;
                  v49 = *(a3 + 1);
                  *a3 = 0;
                  *(a3 + 1) = 0;
                  v50 = *(a3 + 3);
                  if (v50 && v49)
                  {
                    (*(*v50 + 16))(v50, v48);
                  }

                  v32 = 0;
                  buf[0] = 0;
LABEL_45:
                  v68 = v32;
                  if (v64)
                  {
                    IPC::Semaphore::destroy(&v63);
                    WTF::MachSendRight::~MachSendRight(&v63);
                  }

                  goto LABEL_47;
                }
              }

              v10 = *buf;
              v5 = *&buf[16];
            }

            else
            {
              v10 = 0uLL;
            }

            if ((v62 & 1) == 0 || (v59 = v10, (v64 & 1) == 0))
            {
              __break(1u);
              goto LABEL_71;
            }

            WTF::MachSendRight::MachSendRight();
            v30 = v61;
            v61 = 0;
            *&buf[4] = v30;
            WTF::MachSendRight::MachSendRight();
            v31 = HIDWORD(v63);
            HIDWORD(v63) = 0;
            *&buf[12] = v31;
            buf[16] = 0;
            v67 = 0;
            v32 = 1;
            if (v9)
            {
              *&buf[16] = v59;
              v66 = v5;
              v67 = 1;
            }

            goto LABEL_45;
          }

          goto LABEL_103;
        }
      }

      *a3 = 0;
      *(a3 + 1) = 0;
      v57 = *(a3 + 3);
      if (v57)
      {
        if (v6)
        {
          (*(*v57 + 16))(v57);
          v8 = *a3;
          v6 = *(a3 + 1);
          goto LABEL_103;
        }
      }

      else
      {
        v6 = 0;
      }

      v8 = 0;
LABEL_103:
      *a3 = 0;
      *(a3 + 1) = 0;
      v58 = *(a3 + 3);
      if (v58 && v6)
      {
        (*(*v58 + 16))(v58, v8);
      }

      goto LABEL_76;
    }

    v28 = qword_1ED6416C8;
    if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
    {
      if (v5 >= 0x107F)
      {
        v35 = 4223;
      }

      else
      {
        v35 = v5;
      }

      v36 = (&IPC::Detail::messageDescriptions)[3 * v35];
      v37 = *(a3 + 7);
      *buf = 136315394;
      *&buf[4] = v36;
      *&buf[12] = 2048;
      *&buf[14] = v37;
      _os_log_error_impl(&dword_19D52D000, v28, OS_LOG_TYPE_ERROR, "Unhandled message %s to %llu", buf, 0x16u);
    }

    goto LABEL_37;
  }

  v13 = *(a3 + 1);
  v14 = ((*(a3 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
  v15 = *a3;
  v16 = v14 - *a3;
  v17 = v13 >= v16;
  v18 = v13 - v16;
  if (!v17 || v18 <= 3)
  {
    goto LABEL_93;
  }

  *(a3 + 2) = v14 + 1;
  if (!v14)
  {
    goto LABEL_95;
  }

  v20 = *v14;
  v21 = ((v14 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  if (v13 < v21 - v15 || v13 - (v21 - v15) <= 3)
  {
LABEL_93:
    *a3 = 0;
    *(a3 + 1) = 0;
    v54 = *(a3 + 3);
    if (v54)
    {
      if (v13)
      {
        (*(*v54 + 16))(v54);
        v13 = *(a3 + 1);
      }
    }

    else
    {
      v13 = 0;
    }

    goto LABEL_95;
  }

  *(a3 + 2) = v21 + 1;
  if (!v21)
  {
    goto LABEL_95;
  }

  v23 = *v21;
  v24 = ((v21 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  if (v13 < v24 - v15 || v13 - (v24 - v15) <= 3)
  {
    goto LABEL_93;
  }

  *(a3 + 2) = v24 + 1;
  if (!v24)
  {
LABEL_95:
    *a3 = 0;
    *(a3 + 1) = 0;
    v55 = *(a3 + 3);
    if (v55 && v13)
    {
      (*(*v55 + 16))(v55);
    }

    goto LABEL_37;
  }

  v26 = *v24;
  IPC::ArgumentCoder<WTF::String,void>::decode<IPC::Decoder>(a3, &v63);
  if ((v64 & 1) == 0)
  {
    v51 = *a3;
    v52 = *(a3 + 1);
    *a3 = 0;
    *(a3 + 1) = 0;
    v53 = *(a3 + 3);
    if (!v53 || !v52 || ((*(*v53 + 16))(v53, v51), (v64 & 1) == 0))
    {
LABEL_37:
      v11 = *a3;
      v12 = *(a3 + 1);
      *a3 = 0;
      *(a3 + 1) = 0;
      v29 = *(a3 + 3);
      if (v29 && v12)
      {
        (*(*v29 + 16))(v29, v11);
      }

      goto LABEL_59;
    }
  }

  *buf = v20;
  *&buf[4] = v23;
  *&buf[8] = v26;
  *&buf[16] = v63;
  buf[24] = 1;
  WebKit::RemoteGraphicsContextGLProxy::addDebugMessage(this);
  if (buf[24])
  {
    v27 = *&buf[16];
    *&buf[16] = 0;
    if (v27)
    {
      if (atomic_fetch_add_explicit(v27, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v27, v11);
      }
    }
  }

LABEL_59:
  if (*(this + 8) == 1)
  {
    (*(*(this + 3) + 16))(this + 24, v11, v12);
  }

  else
  {
    --*(this + 8);
  }
}