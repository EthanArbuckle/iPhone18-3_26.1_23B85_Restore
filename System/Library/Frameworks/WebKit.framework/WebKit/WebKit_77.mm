void sub_19D992E6C(_Unwind_Exception *exception_object, WTF::StringImpl *a2)
{
  if (v2)
  {
    if (atomic_fetch_add_explicit(v2, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v2, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_19D992EFC(_Unwind_Exception *exception_object, WTF::StringImpl *a2)
{
  if (v2)
  {
    if (atomic_fetch_add_explicit(v2, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v2, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_19D992FD8(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, a2);
  }

  if (atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, a2);
  }

  _Unwind_Resume(exception_object);
}

void sub_19D9930E4(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, a2);
  }

  if (atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, a2);
  }

  _Unwind_Resume(exception_object);
}

void sub_19D9931F0(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, a2);
  }

  if (atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, a2);
  }

  _Unwind_Resume(exception_object);
}

void sub_19D9932FC(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, a2);
  }

  if (atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, a2);
  }

  _Unwind_Resume(exception_object);
}

void sub_19D993408(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, a2);
  }

  if (atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, a2);
  }

  _Unwind_Resume(exception_object);
}

void sub_19D993514(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, a2);
  }

  if (atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, a2);
  }

  _Unwind_Resume(exception_object);
}

void sub_19D993784(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, void *a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, WTF::StringImpl *a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, CFTypeRef cf, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, char a55)
{
  if (a55 == 1)
  {
    v56 = cf;
    cf = 0;
    if (v56)
    {
      CFRelease(v56);
    }

    v57 = a41;
    a41 = 0;
    if (v57 && atomic_fetch_add_explicit(v57, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v57, a2);
    }

    mpark::detail::copy_constructor<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::~copy_constructor(&a37);
    v58 = a36;
    a36 = 0;
    if (v58)
    {
    }

    WebCore::ResourceRequestBase::~ResourceRequestBase(&a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_19D993ACC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
  }

  _Unwind_Resume(exception_object);
}

void sub_19D993D44(_Unwind_Exception *exception_object)
{
  if (v1)
  {
  }

  _Unwind_Resume(exception_object);
}

void sub_19D993E78(_Unwind_Exception *exception_object)
{
  if (v1)
  {
  }

  _Unwind_Resume(exception_object);
}

void sub_19D993FD4(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  if (a21)
  {
    WTF::fastFree((a21 - 16), a2);
  }

  _Unwind_Resume(exception_object);
}

void sub_19D9943C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, WTF::StringImpl *a12)
{
  std::pair<WTF::RetainPtr<objc_object *>,WTF::RetainPtr<_WKRemoteObjectInterface>>::~pair(&a9);
  v14 = a12;
  a12 = 0;
  if (v14)
  {
    if (atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v14, v13);
    }
  }

  _Unwind_Resume(a1);
}

void sub_19D994408()
{
  if (v0)
  {
  }

  JUMPOUT(0x19D9943D4);
}

void sub_19D99460C(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
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

void sub_19D99471C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
  }

  _Unwind_Resume(exception_object);
}

void sub_19D9947E8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    WebKit::WebPage::deref(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t WebKit::WebRemoteObjectRegistry::create(WebKit::WebRemoteObjectRegistry *this, _WKRemoteObjectRegistry *a2, WebKit::WebPage *a3)
{
  v6 = WebKit::WebRemoteObjectRegistry::operator new(this, a2);
  result = WebKit::WebRemoteObjectRegistry::WebRemoteObjectRegistry(v6, a2, a3);
  *this = v6;
  return result;
}

void sub_19D994958(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    CFRelease(*(v1 + 8));
  }

  _Unwind_Resume(exception_object);
}

void sub_19D994D78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, WTF::StringImpl *a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, WTF::StringImpl *a20)
{
  PendingReply::~PendingReply(&a15);
  if (v20)
  {
  }

  std::unique_ptr<WebKit::RemoteObjectInvocation::ReplyInfo>::reset[abi:sn200100](&a20, 0);
  _Unwind_Resume(a1);
}

const char *WTF::methodHasReturnType<void>(void *a1)
{
  result = [a1 methodReturnType];
  if (result)
  {
    v2 = result;
    if (strlen(result) == 1)
    {
      return (*v2 == 118);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void WTF::HashMap<unsigned long long,PendingReply,WTF::DefaultHash<unsigned long long>,WTF::HashTraits<unsigned long long>,WTF::HashTraits<PendingReply>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<PendingReply>(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  v4 = *a3;
  if (*a3 == -1 || !v4)
  {
    __break(0xC471u);
    JUMPOUT(0x19D9950ACLL);
  }

  v9 = *a2;
  if (!*a2)
  {
    WTF::HashTable<unsigned long long,WTF::KeyValuePair<unsigned long long,PendingReply>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<unsigned long long,PendingReply>>,WTF::DefaultHash<unsigned long long>,WTF::HashMap<unsigned long long,PendingReply,WTF::DefaultHash<unsigned long long>,WTF::HashTraits<unsigned long long>,WTF::HashTraits<PendingReply>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<unsigned long long>,WTF::FastMalloc>::expand(a2, 0);
    v9 = *a2;
    v4 = *a3;
  }

  v10 = *(v9 - 8);
  v11 = (v4 + ~(v4 << 32)) ^ ((v4 + ~(v4 << 32)) >> 22);
  v12 = 9 * ((v11 + ~(v11 << 13)) ^ ((v11 + ~(v11 << 13)) >> 8));
  v13 = (v12 ^ (v12 >> 15)) + ~((v12 ^ (v12 >> 15)) << 27);
  v14 = v10 & ((v13 >> 31) ^ v13);
  v15 = (v9 + 32 * v14);
  v16 = *v15;
  if (*v15)
  {
    v17 = 0;
    v18 = 1;
    do
    {
      if (v16 == v4)
      {
        v25 = 0;
        v26 = v9 + 32 * *(v9 - 4);
        goto LABEL_27;
      }

      if (v16 == -1)
      {
        v17 = v15;
      }

      v14 = (v14 + v18) & v10;
      v15 = (v9 + 32 * v14);
      v16 = *v15;
      ++v18;
    }

    while (*v15);
    if (v17)
    {
      *v17 = 0u;
      *(v17 + 1) = 0u;
      --*(*a2 - 16);
      v4 = *a3;
      v15 = v17;
    }
  }

  *v15 = v4;
  v19 = *a4;
  *a4 = 0;
  v20 = *(a4 + 8);
  *(a4 + 16) = 0;
  v21 = v15[1];
  v15[1] = v19;
  if (v21)
  {
    v29 = v20;

    v20 = v29;
  }

  v22 = v15[3];
  *(v15 + 1) = v20;
  if (v22)
  {
  }

  v23 = *a2;
  if (*a2)
  {
    v24 = *(v23 - 12) + 1;
  }

  else
  {
    v24 = 1;
  }

  *(v23 - 12) = v24;
  v27 = (*(v23 - 16) + v24);
  v28 = *(v23 - 4);
  if (v28 > 0x400)
  {
    if (v28 <= 2 * v27)
    {
LABEL_23:
      v15 = WTF::HashTable<unsigned long long,WTF::KeyValuePair<unsigned long long,PendingReply>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<unsigned long long,PendingReply>>,WTF::DefaultHash<unsigned long long>,WTF::HashMap<unsigned long long,PendingReply,WTF::DefaultHash<unsigned long long>,WTF::HashTraits<unsigned long long>,WTF::HashTraits<PendingReply>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<unsigned long long>,WTF::FastMalloc>::expand(a2, v15);
      v23 = *a2;
      if (*a2)
      {
        v28 = *(v23 - 4);
      }

      else
      {
        v28 = 0;
      }
    }
  }

  else if (3 * v28 <= 4 * v27)
  {
    goto LABEL_23;
  }

  v26 = v23 + 32 * v28;
  v25 = 1;
LABEL_27:
  *a1 = v15;
  *(a1 + 8) = v26;
  *(a1 + 16) = v25;
}

void PendingReply::~PendingReply(PendingReply *this)
{
  v2 = *(this + 2);
  *(this + 2) = 0;
  if (v2)
  {
  }

  v3 = *this;
  *this = 0;
  if (v3)
  {
  }
}

void sub_19D9954F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, unsigned int *a12, WTF *a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  if (a13)
  {
  }

  if (a12)
  {
    WTF::ThreadSafeRefCounted<[_WKRemoteObjectRegistry _invokeMethod:]::ReplyBlockCallChecker,(WTF::DestructionThread)2>::deref(a12);
  }

  if (v21)
  {
  }

  if (v22)
  {
  }

  if (v20)
  {
  }

  if (v19)
  {
  }

  if (v18)
  {
  }

  std::pair<WTF::RetainPtr<objc_object *>,WTF::RetainPtr<_WKRemoteObjectInterface>>::~pair(v24 - 96);
  _Unwind_Resume(a1);
}

uint64_t replyBlockSignature(Protocol *a1, objc_selector *a2, uint64_t a3)
{
  MethodTypeEncoding = _protocol_getMethodTypeEncoding();
  if (!MethodTypeEncoding)
  {
    v5 = _protocol_getMethodTypeEncoding();
    if (!v5)
    {
      return 0;
    }

    MethodTypeEncoding = v5;
  }

  v6 = [MEMORY[0x1E695DF68] signatureWithObjCTypes:MethodTypeEncoding];
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  v8 = v6;
  v9 = [objc_msgSend(v7 _signatureForBlockAtArgumentIndex:{a3), "_typeString"}];

  return v9;
}

void sub_19D9958F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    CFRelease(*(a10 + 8));
  }

  (*(*v11 + 8))(v11);
  if (v10)
  {
  }

  _Unwind_Resume(a1);
}

void *__copy_helper_block_e8_32c54_ZTSKZ41___WKRemoteObjectRegistry__invokeMethod__E3__2(void *result, void *a2)
{
  v3 = result;
  v4 = a2[4];
  result[4] = v4;
  if (v4)
  {
    result = v4;
  }

  v5 = a2[5];
  v3[5] = v5;
  if (v5)
  {
    result = v5;
  }

  v6 = a2[7];
  v3[6] = a2[6];
  if (v6)
  {
    atomic_fetch_add(v6, 1u);
  }

  v3[7] = v6;
  return result;
}

void sub_19D9959B0(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 32);
  *(v1 + 32) = 0;
  if (v3)
  {
  }

  _Unwind_Resume(exception_object);
}

void sub_19D995A30(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  *v1 = 0;
  if (v3)
  {
  }

  _Unwind_Resume(exception_object);
}

void __destroy_helper_block_e8_32c54_ZTSKZ41___WKRemoteObjectRegistry__invokeMethod__E3__2(void *a1)
{
  v2 = a1[7];
  a1[7] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCounted<[_WKRemoteObjectRegistry _invokeMethod:]::ReplyBlockCallChecker,(WTF::DestructionThread)2>::deref(v2);
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
  }
}

void sub_19D995D14(_Unwind_Exception *a1)
{
  if (v3)
  {
  }

  if (v2)
  {
  }

  CFRelease(*(v1 + 8));
  _Unwind_Resume(a1);
}

uint64_t WKStringCreateWithCFString(void *a1)
{
  Class = object_getClass(a1);
  if (qword_1EB01D288 != -1)
  {
    dispatch_once(&qword_1EB01D288, &__block_literal_global_9);
  }

  if (Class != qword_1EB01D290)
  {
    MEMORY[0x19EB02040](&v10, a1);
    v5 = WebKit::toCopiedAPI(&v10, v3);
    v6 = v10;
    v10 = 0;
    if (v6)
    {
      if (atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v6, v4);
      }
    }

    return v5;
  }

  v8 = [CFRetain(a1) _apiObject];
  if ((*(*v8 + 2))(v8) == 20)
  {
    CFRetain(v8[1]);
    v5 = API::Object::wrap(v8, v9);
    CFRelease(v8[1]);
    return v5;
  }

  result = 105;
  __break(0xC471u);
  return result;
}

uint64_t WTF::downcast<API::String,API::Object>(uint64_t a1)
{
  if (!a1 || (*(*a1 + 16))(a1) == 20)
  {
    return a1;
  }

  result = 105;
  __break(0xC471u);
  return result;
}

uint64_t WebKit::toCopiedAPI(WebKit *this, const WTF::String *a2)
{
  API::String::create(&v7);
  v2 = v7;
  v7 = 0;
  v4 = API::Object::wrap(v2, v3);
  v5 = v7;
  v7 = 0;
  if (v5)
  {
    CFRelease(*(v5 + 1));
  }

  return v4;
}

void sub_19D996044(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    CFRelease(*(a10 + 8));
  }

  _Unwind_Resume(exception_object);
}

CFStringRef WKStringCopyCFString(const __CFAllocator *a1, void *a2)
{
  if (a2)
  {
    v3 = [a2 _apiObject];
  }

  else
  {
    v3 = 0;
  }

  v4 = WTF::downcast<API::String,API::Object>(v3);
  v5 = v4;
  if (v4)
  {
    CFRetain(*(v4 + 8));
  }

  WTF::String::isolatedCopy();
  if (!v12)
  {
    v6 = 0;
    v7 = 0;
    goto LABEL_10;
  }

  v6 = *(v12 + 1);
  v7 = *(v12 + 1);
  if ((*(v12 + 16) & 4) != 0)
  {
LABEL_10:
    v8 = CFStringCreateWithBytes(a1, v6, v7, 0x201u, 1u);
    goto LABEL_11;
  }

  v8 = CFStringCreateWithCharacters(a1, v6, v7);
LABEL_11:
  v10 = v8;
  if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v12, v9);
    if (!v5)
    {
      return v10;
    }

    goto LABEL_14;
  }

  if (v5)
  {
LABEL_14:
    CFRelease(*(v5 + 8));
  }

  return v10;
}

void sub_19D99613C(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  if (a10 && atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a10, a2);
  }

  if (v10)
  {
    CFRelease(*(v10 + 8));
  }

  _Unwind_Resume(exception_object);
}

void encodeError(WKRemoteObjectEncoder *a1, NSError *a2)
{
  v2 = a2;
  v28[16] = *MEMORY[0x1E69E9840];
  if ([(NSDictionary *)[(NSError *)a2 userInfo] objectForKeyedSubscript:@"_WKRecoveryAttempterErrorKey"])
  {
    v23 = [(NSDictionary *)[(NSError *)v2 userInfo] mutableCopy];
    [v23 removeObjectForKey:@"_WKRecoveryAttempterErrorKey"];
  }

  else
  {
    v23 = 0;
  }

  if ([(NSDictionary *)[(NSError *)v2 userInfo] objectForKeyedSubscript:@"NSErrorClientCertificateChainKey"])
  {
    v4 = v23;
    if (!v23)
    {
      v4 = [(NSDictionary *)[(NSError *)v2 userInfo] mutableCopy];
    }

    v23 = v4;
    [v4 removeObjectForKey:@"NSErrorClientCertificateChainKey"];
  }

  v5 = [(NSDictionary *)[(NSError *)v2 userInfo] objectForKeyedSubscript:@"NSErrorPeerCertificateChainKey"];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
    if (!v23)
    {
      v23 = [(NSDictionary *)[(NSError *)v2 userInfo] mutableCopy];
    }

    v8 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v6, "count")}];
    v21 = v2;
    v22 = a1;
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v9 = [v6 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v9)
    {
      v10 = *v25;
      v11 = *MEMORY[0x1E695D940];
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v25 != v10)
          {
            objc_enumerationMutation(v6);
          }

          v13 = *(*(&v24 + 1) + 8 * i);
          v14 = CFGetTypeID(v13);
          if (v14 != SecCertificateGetTypeID())
          {
            [MEMORY[0x1E695DF30] raise:v11 format:@"Error encoding invalid certificate in chain"];
          }

          v15 = SecCertificateCopyData(v13);
          [v8 addObject:v15];
          if (v15)
          {
            CFRelease(v15);
          }
        }

        v9 = [v6 countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v9);
    }

    [v23 setObject:v8 forKeyedSubscript:@"NSErrorPeerCertificateChainKey"];
    v2 = v21;
    a1 = v22;
    if (v8)
    {
    }
  }

  v16 = [(NSDictionary *)[(NSError *)v2 userInfo] objectForKeyedSubscript:@"NSURLErrorFailingURLPeerTrustErrorKey"];
  v17 = v16;
  if (v16)
  {
    v18 = v16;
    if (!v23)
    {
      v23 = [(NSDictionary *)[(NSError *)v2 userInfo] mutableCopy];
    }

    v19 = CFGetTypeID(v17);
    if (v19 != SecTrustGetTypeID())
    {
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"Error encoding invalid SecTrustRef"];
    }

    v28[0] = 0;
    v20 = SecTrustSerialize();
    if (v28[0])
    {
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"Error serializing SecTrustRef: %@", v28[0]}];
    }

    [v23 setObject:v20 forKeyedSubscript:@"NSURLErrorFailingURLPeerTrustErrorKey"];
    if (v20)
    {
      CFRelease(v20);
    }
  }

  if (v23)
  {
    [objc_msgSend(MEMORY[0x1E696ABC0] errorWithDomain:-[NSError domain](v2 code:"domain") userInfo:{-[NSError code](v2, "code"), v23), "encodeWithCoder:", a1}];
  }

  else
  {
    [(NSError *)v2 encodeWithCoder:a1];
  }
}

void sub_19D99650C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  if (v13)
  {
    CFRelease(v13);
  }

  if (a12)
  {
  }

  _Unwind_Resume(a1);
}

uint64_t *WTF::ScopeExit<encodeObject(WKRemoteObjectEncoder *,objc_object *)::$_0>::~ScopeExit(uint64_t *a1)
{
  if (*(a1 + 16) == 1)
  {
    v2 = *a1;
    v3 = *(*a1 + 32);
    if (v3)
    {
      v4 = a1[1];
      if (v4 == -1 || !v4)
      {
        __break(0xC471u);
        JUMPOUT(0x19D9966F4);
      }

      v5 = *(v3 - 8);
      v6 = (~(v4 << 32) + v4) ^ ((~(v4 << 32) + v4) >> 22);
      v7 = 9 * ((v6 + ~(v6 << 13)) ^ ((v6 + ~(v6 << 13)) >> 8));
      v8 = (v7 ^ (v7 >> 15)) + ~((v7 ^ (v7 >> 15)) << 27);
      v9 = v5 & ((v8 >> 31) ^ v8);
      v10 = *(v3 + 8 * v9);
      if (v10 != v4)
      {
        v11 = 1;
        while (v10)
        {
          v9 = (v9 + v11) & v5;
          v10 = *(v3 + 8 * v9);
          ++v11;
          if (v10 == v4)
          {
            goto LABEL_11;
          }
        }

        v9 = *(v3 - 4);
      }

LABEL_11:
      if (v9 != *(v3 - 4))
      {
        *(v3 + 8 * v9) = -1;
        v12 = *(v2 + 32);
        v13 = vadd_s32(*(v12 - 16), 0xFFFFFFFF00000001);
        *(v12 - 16) = v13;
        v14 = *(v12 - 4);
        if (6 * v13.i32[1] < v14 && v14 >= 9)
        {
          WTF::HashTable<NSObject *,NSObject *,WTF::IdentityExtractor,WTF::DefaultHash<NSObject *>,WTF::HashTraits<NSObject *>,WTF::HashTraits<NSObject *>,WTF::FastMalloc>::rehash((v2 + 32), v14 >> 1);
        }
      }
    }
  }

  v16 = a1[1];
  a1[1] = 0;
  if (v16)
  {
  }

  v17 = *a1;
  *a1 = 0;
  if (v17)
  {
  }

  return a1;
}

void sub_19D996718(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  *(v1 + 8) = 0;
  if (v3)
  {
  }

  v4 = *v1;
  *v1 = 0;
  if (v4)
  {
  }

  _Unwind_Resume(exception_object);
}

_DWORD *WTF::HashTable<NSObject *,NSObject *,WTF::IdentityExtractor,WTF::DefaultHash<NSObject *>,WTF::HashTraits<NSObject *>,WTF::HashTraits<NSObject *>,WTF::FastMalloc>::expand(uint64_t *a1)
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

  return WTF::HashTable<NSObject *,NSObject *,WTF::IdentityExtractor,WTF::DefaultHash<NSObject *>,WTF::HashTraits<NSObject *>,WTF::HashTraits<NSObject *>,WTF::FastMalloc>::rehash(a1, v3);
}

_DWORD *WTF::HashTable<NSObject *,NSObject *,WTF::IdentityExtractor,WTF::DefaultHash<NSObject *>,WTF::HashTraits<NSObject *>,WTF::HashTraits<NSObject *>,WTF::FastMalloc>::rehash(uint64_t *a1, unsigned int a2)
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

  result = WTF::fastZeroedMalloc((8 * a2 + 16));
  *a1 = (result + 4);
  result[2] = a2 - 1;
  result[3] = a2;
  *result = 0;
  result[1] = v6;
  if (v5)
  {
    for (i = 0; i != v5; ++i)
    {
      v10 = *(v4 + 8 * i);
      if ((v10 + 1) >= 2)
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
        v16 = (v12 & ((v15 >> 31) ^ v15));
        v17 = 1;
        do
        {
          result = v16;
          v8 = *(v11 + 8 * v16);
          v16 = ((v16 + v17++) & v12);
        }

        while (v8);
        *(v11 + 8 * result) = v10;
      }
    }
  }

  if (v4)
  {

    return WTF::fastFree((v4 - 16), v8);
  }

  return result;
}

void encodeInvocationArguments(WKRemoteObjectEncoder *a1, NSInvocation *a2, unint64_t a3)
{
  v6 = [(NSInvocation *)a2 methodSignature];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  v9 = [(NSMethodSignature *)v7 numberOfArguments];
  if (v9 > a3)
  {
    v10 = MEMORY[0x1E695D940];
    do
    {
      v11 = [(NSMethodSignature *)v7 getArgumentTypeAtIndex:a3];
      v12 = v11;
      if (!v11 || (v13 = strlen(v11)) == 0)
      {
        __break(1u);
        return;
      }

      v14 = *v12;
      if (v14 == 64)
      {
        v18 = 0;
        [(NSInvocation *)a2 getArgument:&v18 atIndex:a3];
        encodeToObjectStream(a1, v18);
      }

      else if (*v12 > 0x52u)
      {
        if (*v12 <= 0x68u)
        {
          if (*v12 > 0x63u)
          {
            if (v14 == 100)
            {
              v18 = 0;
              [(NSInvocation *)a2 getArgument:&v18 atIndex:a3];
              encodeToObjectStream(a1, [MEMORY[0x1E696AD98] numberWithDouble:*&v18]);
            }

            else
            {
              if (v14 != 102)
              {
                goto LABEL_60;
              }

              LODWORD(v18) = 0;
              [(NSInvocation *)a2 getArgument:&v18 atIndex:a3];
              LODWORD(v16) = v18;
              encodeToObjectStream(a1, [MEMORY[0x1E696AD98] numberWithFloat:v16]);
            }
          }

          else if (v14 == 83)
          {
            LOWORD(v18) = 0;
            [(NSInvocation *)a2 getArgument:&v18 atIndex:a3];
            encodeToObjectStream(a1, [MEMORY[0x1E696AD98] numberWithUnsignedShort:v18]);
          }

          else
          {
            if (v14 != 99)
            {
              goto LABEL_60;
            }

            LOBYTE(v18) = 0;
            [(NSInvocation *)a2 getArgument:&v18 atIndex:a3];
            encodeToObjectStream(a1, [MEMORY[0x1E696AD98] numberWithChar:v18]);
          }
        }

        else if (*v12 <= 0x70u)
        {
          if (v14 == 105)
          {
            LODWORD(v18) = 0;
            [(NSInvocation *)a2 getArgument:&v18 atIndex:a3];
            encodeToObjectStream(a1, [MEMORY[0x1E696AD98] numberWithInt:v18]);
          }

          else
          {
            if (v14 != 108)
            {
              goto LABEL_60;
            }

            v18 = 0;
            [(NSInvocation *)a2 getArgument:&v18 atIndex:a3];
            encodeToObjectStream(a1, [MEMORY[0x1E696AD98] numberWithLong:v18]);
          }
        }

        else
        {
          switch(v14)
          {
            case 'q':
              v18 = 0;
              [(NSInvocation *)a2 getArgument:&v18 atIndex:a3];
              encodeToObjectStream(a1, [MEMORY[0x1E696AD98] numberWithLongLong:v18]);
              break;
            case 's':
              LOWORD(v18) = 0;
              [(NSInvocation *)a2 getArgument:&v18 atIndex:a3];
              encodeToObjectStream(a1, [MEMORY[0x1E696AD98] numberWithShort:v18]);
              break;
            case '{':
              if (v13 == 13)
              {
                if (*v12 == 0x676E6152534E5F7BLL && *(v12 + 5) == 0x7D51513D65676E61)
                {
                  [(NSInvocation *)a2 getArgument:&v18 atIndex:a3];
                  encodeToObjectStream(a1, [MEMORY[0x1E696B098] valueWithRange:{v18, *&v19}]);
                  break;
                }

LABEL_60:
                [MEMORY[0x1E695DF30] raise:*v10 format:{@"Unsupported invocation argument type '%.*s'", v13, v12}];
                break;
              }

              if (v13 != 11)
              {
                goto LABEL_60;
              }

              if (*v12 != 0x3D657A695347437BLL || *(v12 + 3) != 0x7D64643D657A6953)
              {
                goto LABEL_60;
              }

              [(NSInvocation *)a2 getArgument:&v18 atIndex:a3];
              encodeToObjectStream(a1, [MEMORY[0x1E696AD98] numberWithDouble:*&v18]);
              encodeToObjectStream(a1, [MEMORY[0x1E696AD98] numberWithDouble:v19]);
              break;
            default:
              goto LABEL_60;
          }
        }
      }

      else if (*v12 <= 0x42u)
      {
        if (v14 != 66)
        {
          goto LABEL_60;
        }

        LOBYTE(v18) = 0;
        [(NSInvocation *)a2 getArgument:&v18 atIndex:a3];
        encodeToObjectStream(a1, [MEMORY[0x1E696AD98] numberWithBool:v18]);
      }

      else if (*v12 > 0x4Bu)
      {
        if (v14 == 76)
        {
          v18 = 0;
          [(NSInvocation *)a2 getArgument:&v18 atIndex:a3];
          encodeToObjectStream(a1, [MEMORY[0x1E696AD98] numberWithUnsignedLong:v18]);
        }

        else
        {
          if (v14 != 81)
          {
            goto LABEL_60;
          }

          v18 = 0;
          [(NSInvocation *)a2 getArgument:&v18 atIndex:a3];
          encodeToObjectStream(a1, [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v18]);
        }
      }

      else if (v14 == 67)
      {
        LOBYTE(v18) = 0;
        [(NSInvocation *)a2 getArgument:&v18 atIndex:a3];
        encodeToObjectStream(a1, [MEMORY[0x1E696AD98] numberWithUnsignedChar:v18]);
      }

      else
      {
        if (v14 != 73)
        {
          goto LABEL_60;
        }

        LODWORD(v18) = 0;
        [(NSInvocation *)a2 getArgument:&v18 atIndex:a3];
        encodeToObjectStream(a1, [MEMORY[0x1E696AD98] numberWithUnsignedInt:v18]);
      }

      ++a3;
    }

    while (v9 != a3);
  }

  if (v7)
  {
  }
}

void sub_19D996DE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint8_t buf)
{
  if (v13)
  {
  }

  _Unwind_Resume(exception_object);
}

uint64_t WTF::SetForScope<WTF::RefPtr<API::Dictionary,WTF::RawPtrTraits<API::Dictionary>,WTF::DefaultRefDerefTraits<API::Dictionary>>>::~SetForScope(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  *(a1 + 8) = 0;
  v4 = *v2;
  *v2 = v3;
  if (v4)
  {
    CFRelease(*(v4 + 8));
  }

  v5 = *(a1 + 8);
  *(a1 + 8) = 0;
  if (v5)
  {
    CFRelease(*(v5 + 8));
  }

  return a1;
}

uint64_t API::Array::at<API::Dictionary>(uint64_t result, unint64_t a2)
{
  if (*(result + 28) <= a2)
  {
    __break(0xC471u);
  }

  else
  {
    v2 = *(*(result + 16) + 8 * a2);
    if (v2)
    {
      if ((*(*v2 + 16))(*(*(result + 16) + 8 * a2)) == 9)
      {
        return v2;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t **WTF::SetForScope<WTF::RefPtr<API::Dictionary const,WTF::RawPtrTraits<API::Dictionary const>,WTF::DefaultRefDerefTraits<API::Dictionary const>>>::SetForScope<API::Dictionary const*&>(uint64_t **a1, uint64_t *a2, uint64_t *a3)
{
  v4 = a2;
  *a1 = a2;
  v6 = *a2;
  if (*a2)
  {
    CFRetain(*(v6 + 8));
    v4 = *a1;
  }

  a1[1] = v6;
  WTF::RefPtr<API::Dictionary const,WTF::RawPtrTraits<API::Dictionary const>,WTF::DefaultRefDerefTraits<API::Dictionary const>>::operator=(v4, *a3);
  return a1;
}

void decodeObject(WKRemoteObjectDecoder *a1, WKRemoteObjectDecoder *a2)
{
  m_ptr = a2->_currentDictionary.m_ptr;
  CFRetain(*(m_ptr + 8));
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v22.super.super.isa = v22._interface.m_ptr;
  v6 = API::Dictionary::get<API::String>(m_ptr, &v22.super.super.isa, v5);
  v8 = v6;
  if (v6)
  {
    CFRetain(*(v6 + 1));
  }

  isa = v22.super.super.isa;
  v22.super.super.isa = 0;
  if (isa && atomic_fetch_add_explicit(isa, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(isa, v7);
  }

  CFRelease(*(m_ptr + 8));
  if (!v8)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E696A4C8] format:@"Class name missing"];
  }

  WTF::String::isolatedCopy();
  WTF::String::utf8();
  v11 = v22.super.super.isa;
  v22.super.super.isa = 0;
  if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v11, v10);
  }

  if (v22._interface.m_ptr)
  {
    p_methods = &v22._interface.m_ptr->_methods;
  }

  else
  {
    p_methods = 0;
  }

  v13 = objc_lookUpClass(p_methods);
  v14 = v13;
  if (!v13)
  {
    if (v22._interface.m_ptr)
    {
      v20 = &v22._interface.m_ptr->_methods;
      v21 = v22._interface.m_ptr->_identifier.m_ptr;
    }

    else
    {
      v20 = 0;
      v21 = 0;
    }

    crashWithClassName<char>(v20, v21);
  }

  v15 = v13;
  validateClass(a2, v14);
  if (v14 == objc_opt_class() || v14 == objc_opt_class())
  {
    decodeInvocation(&v22, a2);
    goto LABEL_15;
  }

  if (v14 == objc_opt_class())
  {
    decodeString(&v22, a2);
LABEL_15:
    a1->super.super.isa = v22.super.super.isa;
    goto LABEL_16;
  }

  if (v14 == objc_opt_class())
  {
    decodeError(&v22, a2);
    goto LABEL_15;
  }

  if (v14 == objc_opt_class())
  {
    v18 = objc_alloc(MEMORY[0x1E696AD60]);
    decodeString(&v22, a2);
    a1->super.super.isa = [v18 initWithString:v22.super.super.isa];
    v19 = v22.super.super.isa;
    v22.super.super.isa = 0;
    if (v19)
    {
    }
  }

  else
  {
    decodeObjCObject(a1, a2, v14);
  }

LABEL_16:

  v17 = v22._interface.m_ptr;
  v22._interface.m_ptr = 0;
  if (v17)
  {
    if (LODWORD(v17->super.isa) == 1)
    {
      WTF::fastFree(v17, v16);
    }

    else
    {
      --LODWORD(v17->super.isa);
    }
  }

  if (v8)
  {
    CFRelease(*(v8 + 1));
  }
}

void sub_19D997258(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, WTF *a10)
{
  if (a9)
  {
  }

  if (a10)
  {
    if (*a10 == 1)
    {
      WTF::fastFree(a10, v13);
    }

    else
    {
      --*a10;
    }
  }

  if (v10)
  {
    CFRelease(*(v10 + 8));
  }

  _Unwind_Resume(a1);
}

WTF *API::Dictionary::get<API::String>(uint64_t a1, const WTF::StringImpl **a2, const WTF::StringImpl *a3)
{
  result = WTF::HashMap<WTF::String,WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::String,WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::String>>,WTF::String>((a1 + 16), a2, a3);
  if (result)
  {
    v4 = result;
    if ((*(*result + 16))(result) == 20)
    {
      return v4;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void crashWithClassName<char>(void *__src, unint64_t a2)
{
  v3 = 0u;
  v4 = 0u;
  v2 = 0u;
  if (a2 > 0x2F)
  {
    WTF::memcpySpan<unsigned char,18446744073709551615ul,char const,18446744073709551615ul>(&v2, 0x30uLL, __src, 0x30uLL);
    WTFCrashWithInfoImpl(821, "/Library/Caches/com.apple.xbs/Sources/WebKit/Source/WebKit/Shared/API/Cocoa/WKRemoteObjectCoder.mm", "void crashWithClassName(std::span<const CharacterType>) [CharacterType = char]", 71, v2, *(&v2 + 1), v3, *(&v3 + 1), v4, *(&v4 + 1));
  }

  __break(1u);
}

uint64_t validateClass(WKRemoteObjectDecoder *a1, objc_class *a2)
{
  checkIfClassIsAllowed(a1, a2);
  result = objc_opt_class();
  if (result != a2)
  {
    result = objc_opt_class();
    if (result != a2)
    {
      result = [(WKRemoteObjectDecoder *)a1 validateClassSupportsSecureCoding:a2];
      if ((result & 1) == 0)
      {
        return [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E696A4C8] format:{@"Object of class %@ does not support NSSecureCoding.", a2}];
      }
    }
  }

  return result;
}

void decodeInvocation(WKRemoteObjectDecoder *a1, uint64_t a2)
{
  v24 = 0;
  a1->super.super.isa = 0;
  v4 = [a2 decodeBoolForKey:@"isReplyBlock"];
  v5 = *(a2 + 32);
  if (!v4)
  {
    if (v5)
    {
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E696A4C8] format:{@"%@: Expected reply block but received isReplyBlock false", a2}];
    }

    v6 = [a2 decodeObjectOfClass:objc_opt_class() forKey:@"selector"];
    v7 = v6;
    if (v6)
    {
      v17 = v6;
    }

    else
    {
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E696A4C8] format:@"Invocation had no selector"];
    }

    v8 = NSSelectorFromString(v7);
    v24 = v8;
    WTF::RetainPtr<NSNumber>::operator=(&a1->super.super.isa, [*(a2 + 8) _invocationForSelector:v8]);
    if (!a1->super.super.isa)
    {
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E696A4C8] format:{@"Selector %@ is not defined in the local interface", v7}];
    }

    if (v7)
    {
    }

    goto LABEL_10;
  }

  if (v5)
  {
    v18 = *(a2 + 8);
  }

  else
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E696A4C8] format:{@"%@: Received unknown reply block", a2}];
    v5 = *(a2 + 32);
    v18 = *(a2 + 8);
    if (!v5)
    {
      v22 = 0;
      goto LABEL_33;
    }
  }

  v22 = v5;
LABEL_33:
  WTF::RetainPtr<NSNumber>::operator=(&a1->super.super.isa, [v18 _invocationForReplyBlockOfSelector:v22]);
  if (!a1->super.super.isa)
  {
    if (*(a2 + 32))
    {
      v23 = *(a2 + 32);
    }

    else
    {
      v23 = 0;
    }

    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E696A4C8] format:{@"Reply block for selector %s is not defined in the local interface", sel_getName(v23)}];
  }

  v8 = 0;
LABEL_10:
  v9 = [a2 decodeObjectOfClass:objc_opt_class() forKey:@"typeString"];
  v10 = v9;
  if (v9)
  {
    v16 = v9;
  }

  else
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E696A4C8] format:@"Invocation had no type signature"];
  }

  v11 = [-[objc_class methodSignature](a1->super.super.isa "methodSignature")];
  v13 = v11;
  if (v11)
  {
    v14 = v11;
  }

  if (!WebKit::methodSignaturesAreCompatible(v10, v13, v12))
  {
    v19 = MEMORY[0x1E695DF30];
    if (v8)
    {
      Name = sel_getName(v8);
    }

    else
    {
      Name = "(no selector)";
    }

    [v19 raise:*MEMORY[0x1E696A4C8] format:{@"Local and remote method signatures are not compatible for method %s", Name}];
  }

  v15 = *(a2 + 8);
  if (v4)
  {
    if (*(a2 + 32))
    {
      v21 = *(a2 + 32);
    }

    else
    {
      v21 = 0;
    }

    decodeInvocationArguments(a2, a1->super.super.isa, [v15 _allowedArgumentClassesForReplyBlockOfSelector:v21], 1uLL);
  }

  else
  {
    decodeInvocationArguments(a2, a1->super.super.isa, [v15 _allowedArgumentClassesForSelector:v8], 2uLL);
    [(objc_class *)a1->super.super.isa setArgument:&v24 atIndex:1];
  }

  if (v13)
  {
  }

  if (v10)
  {
  }
}

void sub_19D9978CC(_Unwind_Exception *exception_object)
{
  if (v3)
  {
  }

  if (v2)
  {
  }

  v4 = *v1;
  *v1 = 0;
  if (v4)
  {
  }

  _Unwind_Resume(exception_object);
}

void decodeString(WKRemoteObjectDecoder *a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  CFRetain(*(v3 + 8));
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v15 = v12;
  v5 = API::Dictionary::get<API::String>(v3, &v15, v4);
  v7 = v5;
  if (v5)
  {
    CFRetain(*(v5 + 1));
  }

  v8 = v15;
  v15 = 0;
  if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v8, v6);
  }

  CFRelease(*(v3 + 8));
  if (!v7)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E696A4C8] format:@"String missing"];
  }

  v9 = *(v7 + 2);
  if (v9)
  {
    v10 = *(v9 + 8);
    v11 = *(v9 + 4) | (((*(v9 + 16) >> 2) & 1) << 32);
  }

  else
  {
    v10 = 0;
    v11 = 0x100000000;
  }

  v12 = v10;
  v13 = v11;
  v14 = BYTE4(v11);
  WTF::StringView::createNSString(a1, &v12);
  CFRelease(*(v7 + 1));
}

void decodeError(WKRemoteObjectDecoder *a1, objc_class *a2)
{
  v35 = *MEMORY[0x1E69E9840];
  v4 = objc_opt_class();
  decodeObjCObject(&v34, a2, v4);
  isa = v34.super.super.isa;
  v5 = [-[objc_class userInfo](v34.super.super.isa "userInfo")];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
    v29 = [-[objc_class userInfo](isa "userInfo")];
    v8 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v6, "count")}];
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v9 = [v6 countByEnumeratingWithState:&v30 objects:&v34 count:16];
    if (v9)
    {
      v10 = *v31;
      v11 = *MEMORY[0x1E696A4C8];
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v31 != v10)
          {
            objc_enumerationMutation(v6);
          }

          v13 = *(*(&v30 + 1) + 8 * i);
          v14 = CFGetTypeID(v13);
          if (v14 != CFDataGetTypeID())
          {
            v15 = MEMORY[0x1E695DF30];
            v16 = objc_opt_class();
            [v15 raise:v11 format:{@"Error decoding certificate from object that is not data %@", NSStringFromClass(v16)}];
          }

          v17 = SecCertificateCreateWithData(0, v13);
          if (!v17)
          {
            [MEMORY[0x1E695DF30] raise:v11 format:@"Error decoding nvalid certificate in chain"];
          }

          [v8 addObject:v17];
          if (v17)
          {
            CFRelease(v17);
          }
        }

        v9 = [v6 countByEnumeratingWithState:&v30 objects:&v34 count:16];
      }

      while (v9);
    }

    [v29 setObject:v8 forKeyedSubscript:@"NSErrorPeerCertificateChainKey"];
    if (v8)
    {
    }
  }

  else
  {
    v29 = 0;
  }

  v18 = [-[objc_class userInfo](isa "userInfo")];
  v19 = v18;
  if (v18)
  {
    v20 = v18;
    if (!v29)
    {
      v29 = [-[objc_class userInfo](isa "userInfo")];
    }

    v21 = CFGetTypeID(v19);
    if (v21 != CFDataGetTypeID())
    {
      v22 = MEMORY[0x1E695DF30];
      v23 = objc_opt_class();
      [v22 raise:*MEMORY[0x1E696A4C8] format:{@"Invalid SecTrustRef data %@", NSStringFromClass(v23)}];
    }

    v34.super.super.isa = 0;
    v24 = SecTrustDeserialize();
    v25 = v24;
    if (v34.super.super.isa || !v24)
    {
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E696A4C8] format:{@"Invalid SecTrustRef %@", v34.super.super.isa}];
    }

    [v29 setObject:v25 forKeyedSubscript:@"NSURLErrorFailingURLPeerTrustErrorKey"];
    if (v25)
    {
      CFRelease(v25);
    }
  }

  if (v29)
  {
    v26 = [MEMORY[0x1E696ABC0] errorWithDomain:-[objc_class domain](isa code:"domain") userInfo:{-[objc_class code](isa, "code"), v29}];
    a1->super.super.isa = v26;
    if (v26)
    {
      v27 = v26;
    }

    if (isa)
    {
    }
  }

  else
  {
    a1->super.super.isa = isa;
  }
}

void sub_19D997E18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, void *a12)
{
  if (v13)
  {
    CFRelease(v13);
  }

  if (a12)
  {
  }

  if (a11)
  {
  }

  _Unwind_Resume(a1);
}

objc_class *decodeObjCObject(WKRemoteObjectDecoder *a1, objc_class *a2, void *a3)
{
  v6 = [a3 allocWithZone:{-[objc_class zone](a2, "zone")}];
  if (!v6)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E696A4C8] format:{@"Class %@ returned nil from +alloc while being decoded", NSStringFromClass(a3)}];
  }

  v7 = [v6 initWithCoder:a2];
  if (!v7)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E696A4C8] format:{@"Object of class %@ returned nil from -initWithCoder: while being decoded", NSStringFromClass(a3)}];
  }

  result = [v7 awakeAfterUsingCoder:a2];
  a1->super.super.isa = result;
  if (!result)
  {
    return [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E696A4C8] format:{@"Object of class %@ returned nil from -awakeAfterUsingCoder: while being decoded", NSStringFromClass(a3)}];
  }

  return result;
}

WTF *WTF::HashMap<WTF::String,WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::String,WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::String>>,WTF::String>(uint64_t *a1, const WTF::StringImpl **a2, const WTF::StringImpl *a3)
{
  v4 = *a2;
  if (*a2 == -1)
  {
    __break(0xC471u);
    JUMPOUT(0x19D9980C4);
  }

  if (!v4)
  {
    __break(0xC471u);
    JUMPOUT(0x19D9980E4);
  }

  v5 = *a1;
  if (!*a1)
  {
    return 0;
  }

  v7 = *(v5 - 8);
  v8 = *(v4 + 4);
  if (v8 < 0x100)
  {
    v9 = WTF::StringImpl::hashSlowCase(v4);
  }

  else
  {
    v9 = v8 >> 8;
  }

  for (i = 0; ; v9 = i + v11)
  {
    v11 = v9 & v7;
    result = *(v5 + 16 * v11);
    if (!result)
    {
      break;
    }

    if (result != -1 && (WTF::equal(result, *a2, a3) & 1) != 0)
    {
      return *(v5 + 16 * v11 + 8);
    }

    ++i;
  }

  return result;
}

uint64_t WTF::memcpySpan<unsigned char,18446744073709551615ul,char const,18446744073709551615ul>(void *a1, size_t a2, void *__src, size_t __n)
{
  if (a2 >= __n)
  {
    return memcpy(a1, __src, __n);
  }

  result = 1067;
  __break(0xC471u);
  return result;
}

uint64_t *checkIfClassIsAllowed(WKRemoteObjectDecoder *a1, objc_class *a2)
{
  result = a1->_allowedClasses;
  if (result)
  {
    v8 = a2;
    if (!*result || (result = WTF::HashTable<void const*,void const*,WTF::IdentityExtractor,WTF::DefaultHash<void const*>,WTF::HashTraits<void const*>,WTF::HashTraits<void const*>,WTF::FastMalloc>::lookup<WTF::IdentityHashTranslator<WTF::HashTraits<void const*>,WTF::DefaultHash<void const*>>,(WTF::ShouldValidateKey)1,void const*>(result, &v8)) == 0)
    {
      alwaysAllowedClasses(&v8);
      v7 = a2;
      v4 = v8;
      if (!v8 || (ShouldValidate = WTF::HashTable<void const*,void const*,WTF::IdentityExtractor,WTF::DefaultHash<void const*>,WTF::HashTraits<void const*>,WTF::HashTraits<void const*>,WTF::FastMalloc>::lookup<WTF::IdentityHashTranslator<WTF::HashTraits<void const*>,WTF::DefaultHash<void const*>>,(WTF::ShouldValidateKey)1,void const*>(&v8, &v7), result = WTF::fastFree((v4 - 16), v6), !ShouldValidate))
      {
        crashWithClassName(a2);
      }
    }
  }

  return result;
}

void crashWithClassName(objc_class *a1)
{
  v1 = NSStringFromClass(a1);
  v3 = WTF::span(v1, v2);
  crashWithClassName<char>(v3, v4);
}

uint64_t *alwaysAllowedClasses(uint64_t *result)
{
  v1 = result;
  v19[22] = *MEMORY[0x1E69E9840];
  if (_MergedGlobals_62)
  {
    v2 = qword_1EB01D280;
  }

  else
  {
    v19[0] = objc_opt_class();
    v19[1] = objc_opt_class();
    v19[2] = objc_opt_class();
    v19[3] = objc_opt_class();
    v19[4] = objc_opt_class();
    v19[5] = objc_opt_class();
    v19[6] = objc_opt_class();
    v19[7] = objc_opt_class();
    v19[8] = objc_opt_class();
    v19[9] = objc_opt_class();
    v19[10] = objc_opt_class();
    v19[11] = objc_opt_class();
    v19[12] = objc_opt_class();
    v19[13] = objc_opt_class();
    v19[14] = objc_opt_class();
    v19[15] = objc_opt_class();
    v19[16] = objc_opt_class();
    v19[17] = objc_opt_class();
    v19[18] = objc_opt_class();
    v19[19] = objc_opt_class();
    v19[20] = objc_opt_class();
    v19[21] = NSClassFromString(&cfstr_Nsdecimalnumbe.isa);
    result = WTF::HashSet<void const*,WTF::DefaultHash<void const*>,WTF::HashTraits<void const*>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>::HashSet(&v18, v19, 22);
    v2 = v18;
    qword_1EB01D280 = v18;
    _MergedGlobals_62 = 1;
  }

  *v1 = 0;
  if (v2)
  {
    v3 = *(v2 - 12);
    if (v3)
    {
      v4 = WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::computeBestTableSize(*(v2 - 12));
      v5 = WTF::fastZeroedMalloc((8 * v4 + 16));
      v6 = v5 + 4;
      *v1 = (v5 + 4);
      v7 = v4 - 1;
      v5[2] = v4 - 1;
      v5[3] = v4;
      *v5 = 0;
      v5[1] = v3;
      v8 = qword_1EB01D280;
      result = WTF::HashTable<void const*,void const*,WTF::IdentityExtractor,WTF::DefaultHash<void const*>,WTF::HashTraits<void const*>,WTF::HashTraits<void const*>,WTF::FastMalloc>::begin(qword_1EB01D280);
      v10 = v8 ? v8 + 8 * *(v8 - 4) : 0;
      if (v10 != result)
      {
        do
        {
          v11 = ~(*result << 32) + *result;
          v12 = (v11 ^ (v11 >> 22)) + ~((v11 ^ (v11 >> 22)) << 13);
          v13 = (9 * (v12 ^ (v12 >> 8))) ^ ((9 * (v12 ^ (v12 >> 8))) >> 15);
          v14 = v7 & (((v13 + ~(v13 << 27)) >> 31) ^ (v13 + ~(v13 << 27)));
          v15 = 1;
          do
          {
            v16 = v14;
            v17 = *&v6[2 * v14];
            v14 = (v14 + v15++) & v7;
          }

          while (v17);
          *&v6[2 * v16] = *result;
          do
          {
            ++result;
          }

          while (result != v9 && (*result + 1) <= 1);
        }

        while (result != v10);
      }
    }
  }

  return result;
}

uint64_t WTF::HashTable<void const*,void const*,WTF::IdentityExtractor,WTF::DefaultHash<void const*>,WTF::HashTraits<void const*>,WTF::HashTraits<void const*>,WTF::FastMalloc>::lookup<WTF::IdentityHashTranslator<WTF::HashTraits<void const*>,WTF::DefaultHash<void const*>>,(WTF::ShouldValidateKey)1,void const*>(uint64_t *a1, uint64_t *a2)
{
  WTF::checkHashTableKey<void const*,void const*,WTF::IdentityExtractor,WTF::DefaultHash<void const*>,WTF::HashTraits<void const*>,WTF::HashTraits<void const*>,WTF::IdentityHashTranslator<WTF::HashTraits<void const*>,WTF::DefaultHash<void const*>>,(WTF::ShouldValidateKey)1,void const*>(*a2);
  v4 = *a1;
  if (v4)
  {
    v5 = *(v4 - 8);
    v6 = *a2;
    v7 = WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::SessionSet,WTF::RawPtrTraits<WebKit::SessionSet>,WTF::DefaultRefDerefTraits<WebKit::SessionSet>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::SessionSet,WTF::RawPtrTraits<WebKit::SessionSet>,WTF::DefaultRefDerefTraits<WebKit::SessionSet>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>::hash<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(v6) & v5;
    v8 = *(v4 + 8 * v7);
    if (v8 == v6)
    {
      return v4 + 8 * v7;
    }

    v10 = 1;
    while (v8)
    {
      v7 = (v7 + v10) & v5;
      v8 = *(v4 + 8 * v7);
      ++v10;
      if (v8 == v6)
      {
        return v4 + 8 * v7;
      }
    }
  }

  return 0;
}

uint64_t WTF::checkHashTableKey<void const*,void const*,WTF::IdentityExtractor,WTF::DefaultHash<void const*>,WTF::HashTraits<void const*>,WTF::HashTraits<void const*>,WTF::IdentityHashTranslator<WTF::HashTraits<void const*>,WTF::DefaultHash<void const*>>,(WTF::ShouldValidateKey)1,void const*>(uint64_t result)
{
  if (result == -1 || !result)
  {
    __break(0xC471u);
    JUMPOUT(0x19D998584);
  }

  return result;
}

void *WTF::HashTable<void const*,void const*,WTF::IdentityExtractor,WTF::DefaultHash<void const*>,WTF::HashTraits<void const*>,WTF::HashTraits<void const*>,WTF::FastMalloc>::begin(void *result)
{
  if (!result)
  {
    return 0;
  }

  v1 = *(result - 1);
  v2 = &result[v1];
  if (!*(result - 3))
  {
    return &result[v1];
  }

  if (v1)
  {
    v3 = 8 * v1;
    while ((*result + 1) <= 1)
    {
      ++result;
      v3 -= 8;
      if (!v3)
      {
        return v2;
      }
    }
  }

  return result;
}

uint64_t WTF::HashTable<void const*,void const*,WTF::IdentityExtractor,WTF::DefaultHash<void const*>,WTF::HashTraits<void const*>,WTF::HashTraits<void const*>,WTF::FastMalloc>::lookupForReinsert<WTF::IdentityHashTranslator<WTF::HashTraits<void const*>,WTF::DefaultHash<void const*>>,void const*>(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = *(a1 - 8);
  }

  else
  {
    v2 = 0;
  }

  v3 = (~(a2 << 32) + a2) ^ ((~(a2 << 32) + a2) >> 22);
  v4 = 9 * ((v3 + ~(v3 << 13)) ^ ((v3 + ~(v3 << 13)) >> 8));
  v5 = (v4 ^ (v4 >> 15)) + ~((v4 ^ (v4 >> 15)) << 27);
  v6 = v2 & ((v5 >> 31) ^ v5);
  v7 = 1;
  do
  {
    v8 = v6;
    v9 = *(a1 + 8 * v6);
    v6 = (v6 + v7++) & v2;
  }

  while (v9);
  return a1 + 8 * v8;
}

const char *WTF::span(WTF *this, NSString *a2)
{
  v2 = [(WTF *)this UTF8String];
  v3 = v2;
  if (v2)
  {
    strlen(v2);
  }

  return v3;
}

void decodeInvocationArguments(uint64_t a1, void *a2, uint64_t a3, unint64_t a4)
{
  v67[1] = *MEMORY[0x1E69E9840];
  v7 = [a2 methodSignature];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  v10 = [v8 numberOfArguments];
  if (v10 > a4)
  {
    v11 = 0;
    v12 = 0;
    do
    {
      v13 = [v8 getArgumentTypeAtIndex:a4];
      v14 = v13;
      if (!v13 || (v15 = strlen(v13)) == 0)
      {
        __break(1u);
      }

      v16 = *v14;
      if (v16 > 0x50)
      {
        if (*v14 <= 0x68u)
        {
          if (*v14 > 0x62u)
          {
            if (v16 != 99)
            {
              if (v16 == 100)
              {
                v66 = objc_opt_class();
                WTF::HashSet<void const*,WTF::DefaultHash<void const*>,WTF::HashTraits<void const*>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>::HashSet(v67, &v66, 1);
                decodeObjectFromObjectStream(&v65, a1, v67);
                v45 = v65;
                [v65 doubleValue];
                v48 = v47;
                if (v45)
                {
                }

                if (v67[0])
                {
                  WTF::fastFree((v67[0] - 16), v46);
                }

                v63 = v48;
                [a2 setArgument:&v63 atIndex:a4];
                goto LABEL_13;
              }

              if (v16 == 102)
              {
                v67[0] = objc_opt_class();
                WTF::HashSet<void const*,WTF::DefaultHash<void const*>,WTF::HashTraits<void const*>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>::HashSet(&v65, v67, 1);
                decodeObjectFromObjectStream(&v63, a1, &v65);
                v21 = v63;
                [v63 floatValue];
                v24 = v23;
                if (v21)
                {
                }

                if (v65)
                {
                  WTF::fastFree((v65 - 16), v22);
                }

                LODWORD(v66) = v24;
                [a2 setArgument:&v66 atIndex:a4];
                goto LABEL_13;
              }

LABEL_123:
              [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"Unsupported invocation argument type '%.*s' for argument %zu", v15, v14, a4}];
              goto LABEL_13;
            }

            v67[0] = objc_opt_class();
            WTF::HashSet<void const*,WTF::DefaultHash<void const*>,WTF::HashTraits<void const*>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>::HashSet(&v65, v67, 1);
            decodeObjectFromObjectStream(&v63, a1, &v65);
            v51 = v63;
            v20 = [v63 charValue];
            if (v51)
            {
            }

            if (v65)
            {
              WTF::fastFree((v65 - 16), v52);
            }

            goto LABEL_103;
          }

          if (v16 == 81)
          {
            v66 = objc_opt_class();
            WTF::HashSet<void const*,WTF::DefaultHash<void const*>,WTF::HashTraits<void const*>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>::HashSet(v67, &v66, 1);
            decodeObjectFromObjectStream(&v65, a1, v67);
            v55 = v65;
            v34 = [v65 unsignedLongLongValue];
            if (v55)
            {
            }

            if (v67[0])
            {
              WTF::fastFree((v67[0] - 16), v56);
            }

LABEL_113:
            v63 = v34;
            [a2 setArgument:&v63 atIndex:a4];
            goto LABEL_13;
          }

          if (v16 != 83)
          {
            goto LABEL_123;
          }

          v67[0] = objc_opt_class();
          WTF::HashSet<void const*,WTF::DefaultHash<void const*>,WTF::HashTraits<void const*>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>::HashSet(&v65, v67, 1);
          decodeObjectFromObjectStream(&v63, a1, &v65);
          v35 = v63;
          v37 = [v63 unsignedShortValue];
          if (v35)
          {
          }

          if (v65)
          {
            WTF::fastFree((v65 - 16), v36);
          }

          goto LABEL_71;
        }

        if (*v14 <= 0x70u)
        {
          if (v16 != 105)
          {
            if (v16 != 108)
            {
              goto LABEL_123;
            }

            v66 = objc_opt_class();
            WTF::HashSet<void const*,WTF::DefaultHash<void const*>,WTF::HashTraits<void const*>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>::HashSet(v67, &v66, 1);
            decodeObjectFromObjectStream(&v65, a1, v67);
            v38 = v65;
            v34 = [v65 longValue];
            if (v38)
            {
            }

            if (v67[0])
            {
              WTF::fastFree((v67[0] - 16), v39);
            }

            goto LABEL_113;
          }

          v67[0] = objc_opt_class();
          WTF::HashSet<void const*,WTF::DefaultHash<void const*>,WTF::HashTraits<void const*>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>::HashSet(&v65, v67, 1);
          decodeObjectFromObjectStream(&v63, a1, &v65);
          v57 = v63;
          v44 = [v63 intValue];
          if (v57)
          {
          }

          if (v65)
          {
            WTF::fastFree((v65 - 16), v58);
          }

LABEL_88:
          LODWORD(v66) = v44;
          [a2 setArgument:&v66 atIndex:a4];
          goto LABEL_13;
        }

        if (v16 == 113)
        {
          v66 = objc_opt_class();
          WTF::HashSet<void const*,WTF::DefaultHash<void const*>,WTF::HashTraits<void const*>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>::HashSet(v67, &v66, 1);
          decodeObjectFromObjectStream(&v65, a1, v67);
          v53 = v65;
          v34 = [v65 longLongValue];
          if (v53)
          {
          }

          if (v67[0])
          {
            WTF::fastFree((v67[0] - 16), v54);
          }

          goto LABEL_113;
        }

        if (v16 == 115)
        {
          v67[0] = objc_opt_class();
          WTF::HashSet<void const*,WTF::DefaultHash<void const*>,WTF::HashTraits<void const*>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>::HashSet(&v65, v67, 1);
          decodeObjectFromObjectStream(&v63, a1, &v65);
          v49 = v63;
          v37 = [v63 shortValue];
          if (v49)
          {
          }

          if (v65)
          {
            WTF::fastFree((v65 - 16), v50);
          }

LABEL_71:
          LOWORD(v66) = v37;
          [a2 setArgument:&v66 atIndex:a4];
          goto LABEL_13;
        }

        if (v16 != 123)
        {
          goto LABEL_123;
        }

        if (v15 == 13)
        {
          if (*v14 != 0x676E6152534E5F7BLL || *(v14 + 5) != 0x7D51513D65676E61)
          {
            goto LABEL_123;
          }

          v63 = 0;
          v64 = 0;
          v66 = objc_opt_class();
          WTF::HashSet<void const*,WTF::DefaultHash<void const*>,WTF::HashTraits<void const*>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>::HashSet(v67, &v66, 1);
          decodeObjectFromObjectStream(&v65, a1, v67);
          v60 = v65;
          v63 = [v65 rangeValue];
          v64 = v61;
          if (v60)
          {
          }

          if (v67[0])
          {
            WTF::fastFree((v67[0] - 16), v61);
          }
        }

        else
        {
          if (v15 != 11)
          {
            goto LABEL_123;
          }

          if (*v14 != 0x3D657A695347437BLL || *(v14 + 3) != 0x7D64643D657A6953)
          {
            goto LABEL_123;
          }

          v66 = objc_opt_class();
          WTF::HashSet<void const*,WTF::DefaultHash<void const*>,WTF::HashTraits<void const*>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>::HashSet(v67, &v66, 1);
          decodeObjectFromObjectStream(&v65, a1, v67);
          v26 = v65;
          [v65 doubleValue];
          v63 = v28;
          if (v26)
          {
          }

          if (v67[0])
          {
            WTF::fastFree((v67[0] - 16), v27);
          }

          v66 = objc_opt_class();
          WTF::HashSet<void const*,WTF::DefaultHash<void const*>,WTF::HashTraits<void const*>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>::HashSet(v67, &v66, 1);
          decodeObjectFromObjectStream(&v65, a1, v67);
          v29 = v65;
          [v65 doubleValue];
          v64 = v31;
          if (v29)
          {
          }

          if (v67[0])
          {
            WTF::fastFree((v67[0] - 16), v30);
          }
        }

        [a2 setArgument:&v63 atIndex:a4];
      }

      else
      {
        if (*v14 > 0x41u)
        {
          if (*v14 <= 0x48u)
          {
            if (v16 == 66)
            {
              v67[0] = objc_opt_class();
              WTF::HashSet<void const*,WTF::DefaultHash<void const*>,WTF::HashTraits<void const*>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>::HashSet(&v65, v67, 1);
              decodeObjectFromObjectStream(&v63, a1, &v65);
              v40 = v63;
              v20 = [v63 BOOLValue];
              if (v40)
              {
              }

              if (v65)
              {
                WTF::fastFree((v65 - 16), v41);
              }
            }

            else
            {
              if (v16 != 67)
              {
                goto LABEL_123;
              }

              v67[0] = objc_opt_class();
              WTF::HashSet<void const*,WTF::DefaultHash<void const*>,WTF::HashTraits<void const*>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>::HashSet(&v65, v67, 1);
              decodeObjectFromObjectStream(&v63, a1, &v65);
              v18 = v63;
              v20 = [v63 unsignedCharValue];
              if (v18)
              {
              }

              if (v65)
              {
                WTF::fastFree((v65 - 16), v19);
              }
            }

LABEL_103:
            LOBYTE(v66) = v20;
            [a2 setArgument:&v66 atIndex:a4];
            goto LABEL_13;
          }

          if (v16 != 73)
          {
            if (v16 != 76)
            {
              goto LABEL_123;
            }

            v66 = objc_opt_class();
            WTF::HashSet<void const*,WTF::DefaultHash<void const*>,WTF::HashTraits<void const*>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>::HashSet(v67, &v66, 1);
            decodeObjectFromObjectStream(&v65, a1, v67);
            v32 = v65;
            v34 = [v65 unsignedLongValue];
            if (v32)
            {
            }

            if (v67[0])
            {
              WTF::fastFree((v67[0] - 16), v33);
            }

            goto LABEL_113;
          }

          v67[0] = objc_opt_class();
          WTF::HashSet<void const*,WTF::DefaultHash<void const*>,WTF::HashTraits<void const*>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>::HashSet(&v65, v67, 1);
          decodeObjectFromObjectStream(&v63, a1, &v65);
          v42 = v63;
          v44 = [v63 unsignedIntValue];
          if (v42)
          {
          }

          if (v65)
          {
            WTF::fastFree((v65 - 16), v43);
          }

          goto LABEL_88;
        }

        if (v16 != 64)
        {
          goto LABEL_123;
        }

        if (v11 >= *(a3 + 12))
        {
          __break(0xC471u);
          return;
        }

        decodeObjectFromObjectStream(&v63, a1, *a3 + v12);
        v17 = v63;
        v65 = v63;
        [a2 setArgument:&v65 atIndex:a4];
        [a2 retainArguments];
        if (v17)
        {
        }
      }

LABEL_13:
      ++a4;
      v12 += 8;
      ++v11;
    }

    while (v10 != a4);
  }

  if (v8)
  {
  }
}

void sub_19D99904C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  if (v17)
  {
  }

  _Unwind_Resume(exception_object);
}

WebKit::FrameInfoData *std::__optional_copy_base<WebKit::FrameInfoData,false>::__optional_copy_base[abi:sn200100](WebKit::FrameInfoData *this, const WebKit::FrameInfoData *a2)
{
  *this = 0;
  *(this + 352) = 0;
  if (*(a2 + 352) == 1)
  {
    WebKit::FrameInfoData::FrameInfoData(this, a2);
    *(this + 352) = 1;
  }

  return this;
}

void sub_19D9991F4(_Unwind_Exception *exception_object, WTF::StringImpl *a2)
{
  if (*(v2 + 352) == 1)
  {
    v4 = *(v2 + 304);
    *(v2 + 304) = 0;
    if (v4)
    {
      CFRelease(v4);
    }

    v5 = *(v2 + 240);
    *(v2 + 240) = 0;
    if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v5, a2);
    }

    mpark::detail::copy_constructor<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::~copy_constructor(v2 + 208);
    v6 = *(v2 + 200);
    *(v2 + 200) = 0;
    if (v6)
    {
    }

    WebCore::ResourceRequestBase::~ResourceRequestBase((v2 + 8));
  }

  _Unwind_Resume(exception_object);
}

void MethodInfo::~MethodInfo(MethodInfo *this, void *a2)
{
  v3 = *(this + 5);
  *(this + 5) = 0;
  if (v3)
  {
  }

  WTF::Vector<WTF::HashSet<void const*,WTF::DefaultHash<void const*>,WTF::HashTraits<void const*>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 24, a2);
  v5 = *(this + 2);
  *(this + 2) = 0;
  if (v5)
  {
  }

  WTF::Vector<WTF::HashSet<void const*,WTF::DefaultHash<void const*>,WTF::HashTraits<void const*>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this, v4);
}

void *WTF::HashTable<objc_selector *,WTF::KeyValuePair<objc_selector *,MethodInfo>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<objc_selector *,MethodInfo>>,WTF::DefaultHash<objc_selector *>,WTF::HashMap<objc_selector *,MethodInfo,WTF::DefaultHash<objc_selector *>,WTF::HashTraits<objc_selector *>,WTF::HashTraits<MethodInfo>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<objc_selector *>,WTF::FastMalloc>::expand(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  if (!*a1)
  {
    v4 = 0;
    v5 = 0;
    goto LABEL_3;
  }

  v4 = *(v3 - 4);
  v5 = *(v3 - 12);
  if (!v4)
  {
LABEL_3:
    v6 = 8;
    goto LABEL_4;
  }

  v6 = v4 << (6 * v5 >= 2 * v4);
LABEL_4:
  v7 = WTF::fastMalloc((56 * v6 + 16));
  v9 = v7;
  v10 = v7 + 16;
  if (v6)
  {
    bzero((v7 + 16), 56 * v6);
  }

  *a1 = v10;
  v9[2] = v6 - 1;
  v9[3] = v6;
  *v9 = 0;
  v9[1] = v5;
  if (v4)
  {
    v11 = 0;
    v12 = 0;
    v13 = v4;
    do
    {
      v14 = (v3 + 56 * v11);
      v15 = *v14;
      if (*v14)
      {
        if (v15 != -1)
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

          v18 = (~(v15 << 32) + v15) ^ ((~(v15 << 32) + v15) >> 22);
          v19 = 9 * ((v18 + ~(v18 << 13)) ^ ((v18 + ~(v18 << 13)) >> 8));
          v20 = (v19 ^ (v19 >> 15)) + ~((v19 ^ (v19 >> 15)) << 27);
          v21 = v17 & ((v20 >> 31) ^ v20);
          v22 = 1;
          do
          {
            v23 = (v16 + 56 * v21);
            v21 = (v21 + v22++) & v17;
          }

          while (*v23);
          v24 = v23[6];
          v23[6] = 0;
          if (v24)
          {
          }

          WTF::Vector<WTF::HashSet<void const*,WTF::DefaultHash<void const*>,WTF::HashTraits<void const*>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector((v23 + 4), v8);
          v26 = v23[3];
          v23[3] = 0;
          if (v26)
          {
          }

          WTF::Vector<WTF::HashSet<void const*,WTF::DefaultHash<void const*>,WTF::HashTraits<void const*>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector((v23 + 1), v25);
          v27 = *v14;
          v23[1] = 0;
          v23[2] = 0;
          *v23 = v27;
          WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt((v23 + 1), v14 + 2);
          v28 = v14[3];
          v14[3] = 0;
          v23[4] = 0;
          v23[5] = 0;
          v23[3] = v28;
          WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt((v23 + 4), v14 + 8);
          v30 = v14[6];
          v14[6] = 0;
          v23[6] = v30;
          v31 = v14[6];
          v14[6] = 0;
          if (v31)
          {
          }

          WTF::Vector<WTF::HashSet<void const*,WTF::DefaultHash<void const*>,WTF::HashTraits<void const*>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector((v14 + 4), v29);
          v33 = v14[3];
          v14[3] = 0;
          if (v33)
          {
          }

          WTF::Vector<WTF::HashSet<void const*,WTF::DefaultHash<void const*>,WTF::HashTraits<void const*>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector((v14 + 1), v32);
          if (v14 == a2)
          {
            v12 = v23;
          }
        }
      }

      else
      {
        v34 = v14[6];
        v14[6] = 0;
        if (v34)
        {
        }

        WTF::Vector<WTF::HashSet<void const*,WTF::DefaultHash<void const*>,WTF::HashTraits<void const*>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector((v14 + 4), v8);
        v36 = v14[3];
        v14[3] = 0;
        if (v36)
        {
        }

        WTF::Vector<WTF::HashSet<void const*,WTF::DefaultHash<void const*>,WTF::HashTraits<void const*>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector((v14 + 1), v35);
      }

      ++v11;
    }

    while (v11 != v13);
  }

  else
  {
    v12 = 0;
    result = 0;
    if (!v3)
    {
      return result;
    }
  }

  WTF::fastFree((v3 - 16), v8);
  return v12;
}

void sub_19D999538(_Unwind_Exception *a1, void *a2)
{
  v4 = *(v2 + 32);
  if (v4)
  {
    *(v2 + 32) = 0;
    *(v2 + 40) = 0;
    WTF::fastFree(v4, a2);
  }

  v5 = *(v2 + 24);
  *(v2 + 24) = 0;
  if (v5)
  {
  }

  WTF::Vector<WTF::HashSet<void const*,WTF::DefaultHash<void const*>,WTF::HashTraits<void const*>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v2 + 8, a2);
  _Unwind_Resume(a1);
}

uint64_t _ZNSt3__111__introsortINS_15_RangeAlgPolicyERZZZ44___WKRemoteObjectInterface_debugDescription_ENK3__1clIN3WTF6VectorINS4_7HashSetIPKvNS4_11DefaultHashIS8_EENS4_10HashTraitsIS8_EENS4_15HashTableTraitsELNS4_17ShouldValidateKeyE1EEELm0ENS4_15CrashOnOverflowELm16ENS4_10FastMallocEEEEEDaRT_ENKUlSL_E_clISF_EESJ_SL_EUlS8_S8_E_PS8_Lb0EEEvT1_SR_T0_NS_15iterator_traitsISR_E15difference_typeEb(uint64_t result, objc_class **a2, objc_class *a3, char a4)
{
  v8 = result;
LABEL_2:
  v9 = (a2 - 1);
  v10 = v8;
  while (1)
  {
    v8 = v10;
    v10 = (a2 - v10) >> 3;
    v11 = v10 - 2;
    if (v10 > 2)
    {
      switch(v10)
      {
        case 3:
          return _ZNSt3__17__sort3B8sn200100INS_15_RangeAlgPolicyERZZZ44___WKRemoteObjectInterface_debugDescription_ENK3__1clIN3WTF6VectorINS4_7HashSetIPKvNS4_11DefaultHashIS8_EENS4_10HashTraitsIS8_EENS4_15HashTableTraitsELNS4_17ShouldValidateKeyE1EEELm0ENS4_15CrashOnOverflowELm16ENS4_10FastMallocEEEEEDaRT_ENKUlSL_E_clISF_EESJ_SL_EUlS8_S8_E_PS8_Li0EEEbT1_SR_SR_T0_(v8, v8 + 1, v9);
        case 4:
          return _ZNSt3__17__sort4B8sn200100INS_15_RangeAlgPolicyERZZZ44___WKRemoteObjectInterface_debugDescription_ENK3__1clIN3WTF6VectorINS4_7HashSetIPKvNS4_11DefaultHashIS8_EENS4_10HashTraitsIS8_EENS4_15HashTableTraitsELNS4_17ShouldValidateKeyE1EEELm0ENS4_15CrashOnOverflowELm16ENS4_10FastMallocEEEEEDaRT_ENKUlSL_E_clISF_EESJ_SL_EUlS8_S8_E_PS8_Li0EEEvT1_SR_SR_SR_T0_(v8, v8 + 1, v8 + 2, v9);
        case 5:
          return _ZNSt3__17__sort5B8sn200100INS_15_RangeAlgPolicyERZZZ44___WKRemoteObjectInterface_debugDescription_ENK3__1clIN3WTF6VectorINS4_7HashSetIPKvNS4_11DefaultHashIS8_EENS4_10HashTraitsIS8_EENS4_15HashTableTraitsELNS4_17ShouldValidateKeyE1EEELm0ENS4_15CrashOnOverflowELm16ENS4_10FastMallocEEEEEDaRT_ENKUlSL_E_clISF_EESJ_SL_EUlS8_S8_E_PS8_Li0EEEvT1_SR_SR_SR_SR_T0_(v8, v8 + 1, v8 + 2, v8 + 3, v9);
      }
    }

    else
    {
      if (v10 < 2)
      {
        return result;
      }

      if (v10 == 2)
      {
        v79 = *v8;
        Name = class_getName(*(a2 - 1));
        WTF::CString::CString(&v188, Name);
        v81 = class_getName(v79);
        WTF::CString::CString(&v187, v81);
        v82 = WTF::operator<();
        v84 = v82;
        v85 = v187;
        v187 = 0;
        if (v85)
        {
          if (*v85 == 1)
          {
            WTF::fastFree(v85, v83);
          }

          else
          {
            --*v85;
          }
        }

        result = v188;
        v188 = 0;
        if (result)
        {
          if (*result == 1)
          {
            result = WTF::fastFree(result, v83);
            if (!v84)
            {
              return result;
            }

            goto LABEL_179;
          }

          --*result;
        }

        if (!v84)
        {
          return result;
        }

LABEL_179:
        v86 = *v8;
        *v8 = *(a2 - 1);
        *(a2 - 1) = v86;
        return result;
      }
    }

    if (v10 <= 23)
    {
      break;
    }

    if (!a3)
    {
      if (v8 == a2)
      {
        return result;
      }

      v106 = v11 >> 1;
      v107 = v11 >> 1;
      v183 = v10;
      while (1)
      {
        v108 = v107;
        if (v106 < v107)
        {
          goto LABEL_262;
        }

        v109 = (2 * v107) | 1;
        v110 = &v8[v109];
        if (2 * v107 + 2 < v10)
        {
          v111 = v110[1];
          v112 = class_getName(*v110);
          WTF::CString::CString(&v188, v112);
          v113 = class_getName(v111);
          WTF::CString::CString(&v187, v113);
          v115 = WTF::operator<();
          v116 = v187;
          v187 = 0;
          if (v116)
          {
            if (*v116 == 1)
            {
              WTF::fastFree(v116, v114);
            }

            else
            {
              --*v116;
            }
          }

          v117 = v188;
          v188 = 0;
          if (v117)
          {
            if (*v117 == 1)
            {
              WTF::fastFree(v117, v114);
            }

            else
            {
              --*v117;
            }
          }

          if (v115)
          {
            ++v110;
            v109 = 2 * v108 + 2;
          }
        }

        v118 = &v8[v108];
        v119 = *v118;
        v120 = class_getName(*v110);
        WTF::CString::CString(&v188, v120);
        v121 = class_getName(v119);
        WTF::CString::CString(&v187, v121);
        v123 = WTF::operator<();
        v124 = v187;
        v187 = 0;
        if (v124)
        {
          if (*v124 == 1)
          {
            WTF::fastFree(v124, v122);
          }

          else
          {
            --*v124;
          }
        }

        result = v188;
        v188 = 0;
        if (!result)
        {
          goto LABEL_234;
        }

        if (*result != 1)
        {
          break;
        }

        result = WTF::fastFree(result, v122);
        if ((v123 & 1) == 0)
        {
LABEL_235:
          v185 = v108;
          v125 = *v118;
          do
          {
            v126 = v110;
            *v118 = *v110;
            if (v106 < v109)
            {
              break;
            }

            v127 = (2 * v109) | 1;
            v110 = &v8[v127];
            v109 = 2 * v109 + 2;
            if (v109 >= v10)
            {
              v109 = v127;
            }

            else
            {
              v128 = &v8[v127];
              v129 = v125;
              v130 = v106;
              v131 = v128;
              v132 = v128 + 1;
              v133 = v128[1];
              v134 = class_getName(*v128);
              WTF::CString::CString(&v188, v134);
              v135 = class_getName(v133);
              WTF::CString::CString(&v187, v135);
              v137 = WTF::operator<();
              v138 = v187;
              v187 = 0;
              if (v138)
              {
                if (*v138 == 1)
                {
                  WTF::fastFree(v138, v136);
                }

                else
                {
                  --*v138;
                }
              }

              v139 = v188;
              v188 = 0;
              if (v139)
              {
                if (*v139 == 1)
                {
                  WTF::fastFree(v139, v136);
                }

                else
                {
                  --*v139;
                }
              }

              if (v137)
              {
                v131 = v132;
              }

              else
              {
                v109 = v127;
              }

              v106 = v130;
              v125 = v129;
              v110 = v131;
              v10 = v183;
            }

            v140 = class_getName(*v110);
            WTF::CString::CString(&v188, v140);
            v141 = class_getName(v125);
            WTF::CString::CString(&v187, v141);
            v143 = WTF::operator<();
            v144 = v187;
            v187 = 0;
            if (v144)
            {
              if (*v144 == 1)
              {
                WTF::fastFree(v144, v142);
              }

              else
              {
                --*v144;
              }
            }

            result = v188;
            v188 = 0;
            if (result)
            {
              if (*result == 1)
              {
                result = WTF::fastFree(result, v142);
              }

              else
              {
                --*result;
              }
            }

            v118 = v126;
          }

          while (!v143);
          *v126 = v125;
          v108 = v185;
        }

LABEL_262:
        v107 = v108 - 1;
        if (!v108)
        {
          goto LABEL_299;
        }
      }

      --*result;
LABEL_234:
      if ((v123 & 1) == 0)
      {
        goto LABEL_235;
      }

      goto LABEL_262;
    }

    v12 = &v8[v10 >> 1];
    if (v10 < 0x81)
    {
      result = _ZNSt3__17__sort3B8sn200100INS_15_RangeAlgPolicyERZZZ44___WKRemoteObjectInterface_debugDescription_ENK3__1clIN3WTF6VectorINS4_7HashSetIPKvNS4_11DefaultHashIS8_EENS4_10HashTraitsIS8_EENS4_15HashTableTraitsELNS4_17ShouldValidateKeyE1EEELm0ENS4_15CrashOnOverflowELm16ENS4_10FastMallocEEEEEDaRT_ENKUlSL_E_clISF_EESJ_SL_EUlS8_S8_E_PS8_Li0EEEbT1_SR_SR_T0_(&v8[v10 >> 1], v8, v9);
    }

    else
    {
      _ZNSt3__17__sort3B8sn200100INS_15_RangeAlgPolicyERZZZ44___WKRemoteObjectInterface_debugDescription_ENK3__1clIN3WTF6VectorINS4_7HashSetIPKvNS4_11DefaultHashIS8_EENS4_10HashTraitsIS8_EENS4_15HashTableTraitsELNS4_17ShouldValidateKeyE1EEELm0ENS4_15CrashOnOverflowELm16ENS4_10FastMallocEEEEEDaRT_ENKUlSL_E_clISF_EESJ_SL_EUlS8_S8_E_PS8_Li0EEEbT1_SR_SR_T0_(v8, &v8[v10 >> 1], v9);
      v4 = v12 - 1;
      _ZNSt3__17__sort3B8sn200100INS_15_RangeAlgPolicyERZZZ44___WKRemoteObjectInterface_debugDescription_ENK3__1clIN3WTF6VectorINS4_7HashSetIPKvNS4_11DefaultHashIS8_EENS4_10HashTraitsIS8_EENS4_15HashTableTraitsELNS4_17ShouldValidateKeyE1EEELm0ENS4_15CrashOnOverflowELm16ENS4_10FastMallocEEEEEDaRT_ENKUlSL_E_clISF_EESJ_SL_EUlS8_S8_E_PS8_Li0EEEbT1_SR_SR_T0_(v8 + 1, v12 - 1, a2 - 2);
      v10 = &v8[(v10 >> 1) + 1];
      _ZNSt3__17__sort3B8sn200100INS_15_RangeAlgPolicyERZZZ44___WKRemoteObjectInterface_debugDescription_ENK3__1clIN3WTF6VectorINS4_7HashSetIPKvNS4_11DefaultHashIS8_EENS4_10HashTraitsIS8_EENS4_15HashTableTraitsELNS4_17ShouldValidateKeyE1EEELm0ENS4_15CrashOnOverflowELm16ENS4_10FastMallocEEEEEDaRT_ENKUlSL_E_clISF_EESJ_SL_EUlS8_S8_E_PS8_Li0EEEbT1_SR_SR_T0_(v8 + 2, v10, a2 - 3);
      result = _ZNSt3__17__sort3B8sn200100INS_15_RangeAlgPolicyERZZZ44___WKRemoteObjectInterface_debugDescription_ENK3__1clIN3WTF6VectorINS4_7HashSetIPKvNS4_11DefaultHashIS8_EENS4_10HashTraitsIS8_EENS4_15HashTableTraitsELNS4_17ShouldValidateKeyE1EEELm0ENS4_15CrashOnOverflowELm16ENS4_10FastMallocEEEEEDaRT_ENKUlSL_E_clISF_EESJ_SL_EUlS8_S8_E_PS8_Li0EEEbT1_SR_SR_T0_(v12 - 1, v12, v10);
      v14 = *v8;
      *v8 = *v12;
      *v12 = v14;
    }

    a3 = (a3 - 1);
    if (a4)
    {
      goto LABEL_23;
    }

    v15 = *v8;
    v16 = class_getName(*(v8 - 1));
    WTF::CString::CString(&v188, v16);
    v17 = class_getName(v15);
    WTF::CString::CString(&v187, v17);
    v18 = WTF::operator<();
    v19 = v187;
    v187 = 0;
    if (v19)
    {
      if (*v19 == 1)
      {
        WTF::fastFree(v19, v13);
      }

      else
      {
        --*v19;
      }
    }

    result = v188;
    v188 = 0;
    if (result)
    {
      if (*result != 1)
      {
        --*result;
        goto LABEL_22;
      }

      result = WTF::fastFree(result, v13);
      if (v18)
      {
        goto LABEL_23;
      }

LABEL_95:
      v45 = *v8;
      v46 = *v9;
      v47 = class_getName(*v8);
      WTF::CString::CString(&v188, v47);
      v48 = class_getName(v46);
      WTF::CString::CString(&v187, v48);
      v49 = WTF::operator<();
      v50 = v187;
      v187 = 0;
      if (v50)
      {
        if (*v50 == 1)
        {
          WTF::fastFree(v50, v13);
        }

        else
        {
          --*v50;
        }
      }

      result = v188;
      v188 = 0;
      if (!result)
      {
        goto LABEL_101;
      }

      if (*result != 1)
      {
        --*result;
LABEL_101:
        if ((v49 & 1) == 0)
        {
          goto LABEL_156;
        }

        goto LABEL_102;
      }

      result = WTF::fastFree(result, v13);
      if ((v49 & 1) == 0)
      {
LABEL_156:
        v73 = v8 + 1;
        do
        {
          v10 = v73;
          if (v73 >= a2)
          {
            break;
          }

          v74 = *v73;
          v75 = class_getName(v45);
          WTF::CString::CString(&v188, v75);
          v76 = class_getName(v74);
          WTF::CString::CString(&v187, v76);
          v77 = WTF::operator<();
          v78 = v187;
          v187 = 0;
          if (v78)
          {
            if (*v78 == 1)
            {
              WTF::fastFree(v78, v13);
            }

            else
            {
              --*v78;
            }
          }

          result = v188;
          v188 = 0;
          if (result)
          {
            if (*result == 1)
            {
              result = WTF::fastFree(result, v13);
            }

            else
            {
              --*result;
            }
          }

          v73 = (v10 + 8);
        }

        while ((v77 & 1) == 0);
        goto LABEL_114;
      }

LABEL_102:
      v4 = v8 + 1;
      do
      {
        if (v4 == a2)
        {
          goto LABEL_295;
        }

        v51 = *v4;
        v52 = class_getName(v45);
        WTF::CString::CString(&v188, v52);
        v53 = class_getName(v51);
        WTF::CString::CString(&v187, v53);
        v54 = WTF::operator<();
        v55 = v187;
        v187 = 0;
        if (v55)
        {
          if (*v55 == 1)
          {
            WTF::fastFree(v55, v13);
          }

          else
          {
            --*v55;
          }
        }

        result = v188;
        v188 = 0;
        if (result)
        {
          if (*result == 1)
          {
            result = WTF::fastFree(result, v13);
          }

          else
          {
            --*result;
          }
        }

        ++v4;
      }

      while ((v54 & 1) == 0);
      v10 = (v4 - 1);
LABEL_114:
      v4 = a2;
      if (v10 < a2)
      {
        v4 = a2;
        do
        {
          while (1)
          {
            if (v4 == v8)
            {
              goto LABEL_295;
            }

            v56 = *--v4;
            v57 = class_getName(v45);
            WTF::CString::CString(&v188, v57);
            v58 = class_getName(v56);
            WTF::CString::CString(&v187, v58);
            v59 = WTF::operator<();
            v60 = v187;
            v187 = 0;
            if (v60)
            {
              if (*v60 == 1)
              {
                WTF::fastFree(v60, v13);
              }

              else
              {
                --*v60;
              }
            }

            result = v188;
            v188 = 0;
            if (result)
            {
              break;
            }

LABEL_123:
            if ((v59 & 1) == 0)
            {
              goto LABEL_127;
            }
          }

          if (*result != 1)
          {
            --*result;
            goto LABEL_123;
          }

          result = WTF::fastFree(result, v13);
        }

        while ((v59 & 1) != 0);
      }

LABEL_127:
      if (v10 < v4)
      {
        v61 = *v10;
        *v10 = *v4;
        v10 += 8;
        *v4 = v61;
        while (v10 != a2)
        {
          v62 = *v10;
          v63 = class_getName(v45);
          WTF::CString::CString(&v188, v63);
          v64 = class_getName(v62);
          WTF::CString::CString(&v187, v64);
          v65 = WTF::operator<();
          v66 = v187;
          v187 = 0;
          if (v66)
          {
            if (*v66 == 1)
            {
              WTF::fastFree(v66, v13);
            }

            else
            {
              --*v66;
            }
          }

          result = v188;
          v188 = 0;
          if (result)
          {
            if (*result == 1)
            {
              result = WTF::fastFree(result, v13);
            }

            else
            {
              --*result;
            }
          }

          v10 += 8;
          if (v65)
          {
            v10 -= 8;
            while (v4 != v8)
            {
              v67 = *--v4;
              v68 = class_getName(v45);
              WTF::CString::CString(&v188, v68);
              v69 = class_getName(v67);
              WTF::CString::CString(&v187, v69);
              v70 = WTF::operator<();
              v71 = v187;
              v187 = 0;
              if (v71)
              {
                if (*v71 == 1)
                {
                  WTF::fastFree(v71, v13);
                }

                else
                {
                  --*v71;
                }
              }

              result = v188;
              v188 = 0;
              if (result)
              {
                if (*result == 1)
                {
                  result = WTF::fastFree(result, v13);
                }

                else
                {
                  --*result;
                }
              }

              if ((v70 & 1) == 0)
              {
                goto LABEL_127;
              }
            }

            goto LABEL_295;
          }
        }

        goto LABEL_295;
      }

      v72 = (v10 - 8);
      if ((v10 - 8) != v8)
      {
        *v8 = *v72;
      }

      a4 = 0;
      *v72 = v45;
    }

    else
    {
LABEL_22:
      if ((v18 & 1) == 0)
      {
        goto LABEL_95;
      }

LABEL_23:
      v20 = 0;
      v21 = *v8;
      do
      {
        v22 = &v8[v20 + 1];
        if (v22 == a2)
        {
          goto LABEL_295;
        }

        v23 = class_getName(*v22);
        WTF::CString::CString(&v188, v23);
        v24 = class_getName(v21);
        WTF::CString::CString(&v187, v24);
        v10 = WTF::operator<();
        v25 = v187;
        v187 = 0;
        if (v25)
        {
          if (*v25 == 1)
          {
            WTF::fastFree(v25, v13);
          }

          else
          {
            --*v25;
          }
        }

        result = v188;
        v188 = 0;
        if (result)
        {
          if (*result == 1)
          {
            result = WTF::fastFree(result, v13);
          }

          else
          {
            --*result;
          }
        }

        ++v20;
      }

      while ((v10 & 1) != 0);
      v26 = &v8[v20];
      v4 = a2;
      if (v20 != 1)
      {
        while (1)
        {
          while (1)
          {
            if (v4 == v8)
            {
              goto LABEL_295;
            }

            v27 = *--v4;
            v28 = class_getName(v27);
            WTF::CString::CString(&v188, v28);
            v29 = class_getName(v21);
            WTF::CString::CString(&v187, v29);
            v10 = WTF::operator<();
            v30 = v187;
            v187 = 0;
            if (v30)
            {
              if (*v30 == 1)
              {
                WTF::fastFree(v30, v13);
              }

              else
              {
                --*v30;
              }
            }

            result = v188;
            v188 = 0;
            if (result)
            {
              break;
            }

LABEL_43:
            if (v10)
            {
              goto LABEL_47;
            }
          }

          if (*result != 1)
          {
            --*result;
            goto LABEL_43;
          }

          result = WTF::fastFree(result, v13);
          if (v10)
          {
            goto LABEL_47;
          }
        }
      }

      v4 = a2;
      do
      {
        if (v26 >= v4)
        {
          break;
        }

        v41 = *--v4;
        v42 = class_getName(v41);
        WTF::CString::CString(&v188, v42);
        v43 = class_getName(v21);
        WTF::CString::CString(&v187, v43);
        v10 = WTF::operator<();
        v44 = v187;
        v187 = 0;
        if (v44)
        {
          if (*v44 == 1)
          {
            WTF::fastFree(v44, v13);
          }

          else
          {
            --*v44;
          }
        }

        result = v188;
        v188 = 0;
        if (result)
        {
          if (*result == 1)
          {
            result = WTF::fastFree(result, v13);
          }

          else
          {
            --*result;
          }
        }
      }

      while ((v10 & 1) == 0);
LABEL_47:
      if (v26 < v4)
      {
        v182 = a3;
        a3 = v9;
        v9 = &v8[v20];
        v5 = v4;
LABEL_49:
        v31 = *v9;
        *v9 = *v5;
        v9 += 8;
        *v5 = v31;
        v32 = v9;
        do
        {
          if (v32 == a2)
          {
            goto LABEL_295;
          }

          v33 = class_getName(*v32);
          WTF::CString::CString(&v188, v33);
          v34 = class_getName(v21);
          WTF::CString::CString(&v187, v34);
          v10 = WTF::operator<();
          v35 = v187;
          v187 = 0;
          if (v35)
          {
            if (*v35 == 1)
            {
              WTF::fastFree(v35, v13);
            }

            else
            {
              --*v35;
            }
          }

          result = v188;
          v188 = 0;
          if (result)
          {
            if (*result == 1)
            {
              result = WTF::fastFree(result, v13);
            }

            else
            {
              --*result;
            }
          }

          ++v32;
        }

        while ((v10 & 1) != 0);
        v9 = (v32 - 1);
        while (1)
        {
LABEL_61:
          if (v5 == v8)
          {
            goto LABEL_295;
          }

          v36 = *--v5;
          v37 = class_getName(v36);
          WTF::CString::CString(&v188, v37);
          v38 = class_getName(v21);
          WTF::CString::CString(&v187, v38);
          v10 = WTF::operator<();
          v39 = v187;
          v187 = 0;
          if (v39)
          {
            if (*v39 == 1)
            {
              WTF::fastFree(v39, v13);
            }

            else
            {
              --*v39;
            }
          }

          result = v188;
          v188 = 0;
          if (!result)
          {
            goto LABEL_68;
          }

          if (*result != 1)
          {
            break;
          }

          result = WTF::fastFree(result, v13);
          if (v10)
          {
LABEL_72:
            if (v9 >= v5)
            {
              v5 = v32 - 2;
              v9 = a3;
              a3 = v182;
              goto LABEL_75;
            }

            goto LABEL_49;
          }
        }

        --*result;
LABEL_68:
        if (v10)
        {
          goto LABEL_72;
        }

        goto LABEL_61;
      }

      v5 = v26 - 1;
LABEL_75:
      if (v5 != v8)
      {
        *v8 = *v5;
      }

      *v5 = v21;
      if (v26 < v4)
      {
LABEL_80:
        result = _ZNSt3__111__introsortINS_15_RangeAlgPolicyERZZZ44___WKRemoteObjectInterface_debugDescription_ENK3__1clIN3WTF6VectorINS4_7HashSetIPKvNS4_11DefaultHashIS8_EENS4_10HashTraitsIS8_EENS4_15HashTableTraitsELNS4_17ShouldValidateKeyE1EEELm0ENS4_15CrashOnOverflowELm16ENS4_10FastMallocEEEEEDaRT_ENKUlSL_E_clISF_EESJ_SL_EUlS8_S8_E_PS8_Lb0EEEvT1_SR_T0_NS_15iterator_traitsISR_E15difference_typeEb(v8, v5, a3, a4 & 1);
        a4 = 0;
        v10 = (v5 + 1);
      }

      else
      {
        ShouldValidateKeyE1EEELm0ENS4_15CrashOnOverflowELm16ENS4_10FastMallocEEEEEDaRT_ENKUlSL_E_clISF_EESJ_SL_EUlS8_S8_E_PS8_EEbT1_SR_T0 = _ZNSt3__127__insertion_sort_incompleteB8sn200100INS_15_RangeAlgPolicyERZZZ44___WKRemoteObjectInterface_debugDescription_ENK3__1clIN3WTF6VectorINS4_7HashSetIPKvNS4_11DefaultHashIS8_EENS4_10HashTraitsIS8_EENS4_15HashTableTraitsELNS4_17ShouldValidateKeyE1EEELm0ENS4_15CrashOnOverflowELm16ENS4_10FastMallocEEEEEDaRT_ENKUlSL_E_clISF_EESJ_SL_EUlS8_S8_E_PS8_EEbT1_SR_T0_(v8, v5);
        v10 = (v5 + 1);
        result = _ZNSt3__127__insertion_sort_incompleteB8sn200100INS_15_RangeAlgPolicyERZZZ44___WKRemoteObjectInterface_debugDescription_ENK3__1clIN3WTF6VectorINS4_7HashSetIPKvNS4_11DefaultHashIS8_EENS4_10HashTraitsIS8_EENS4_15HashTableTraitsELNS4_17ShouldValidateKeyE1EEELm0ENS4_15CrashOnOverflowELm16ENS4_10FastMallocEEEEEDaRT_ENKUlSL_E_clISF_EESJ_SL_EUlS8_S8_E_PS8_EEbT1_SR_T0_(v5 + 1, a2);
        if (result)
        {
          a2 = v5;
          if (ShouldValidateKeyE1EEELm0ENS4_15CrashOnOverflowELm16ENS4_10FastMallocEEEEEDaRT_ENKUlSL_E_clISF_EESJ_SL_EUlS8_S8_E_PS8_EEbT1_SR_T0)
          {
            return result;
          }

          goto LABEL_2;
        }

        if (!ShouldValidateKeyE1EEELm0ENS4_15CrashOnOverflowELm16ENS4_10FastMallocEEEEEDaRT_ENKUlSL_E_clISF_EESJ_SL_EUlS8_S8_E_PS8_EEbT1_SR_T0)
        {
          goto LABEL_80;
        }
      }
    }
  }

  v4 = v8 + 1;
  v88 = v8 == a2 || v4 == a2;
  if (a4)
  {
    if (v88)
    {
      return result;
    }

    v89 = 0;
    v90 = v8;
    while (2)
    {
      v91 = *v90;
      v90 = v4;
      v92 = class_getName(*v4);
      WTF::CString::CString(&v188, v92);
      v93 = class_getName(v91);
      WTF::CString::CString(&v187, v93);
      v95 = WTF::operator<();
      v96 = v187;
      v187 = 0;
      if (v96)
      {
        if (*v96 == 1)
        {
          WTF::fastFree(v96, v94);
        }

        else
        {
          --*v96;
        }
      }

      result = v188;
      v188 = 0;
      if (result)
      {
        if (*result != 1)
        {
          --*result;
          goto LABEL_196;
        }

        result = WTF::fastFree(result, v94);
        if (!v95)
        {
LABEL_211:
          v4 = v90 + 1;
          v89 += 8;
          if (v90 + 1 == a2)
          {
            return result;
          }

          continue;
        }
      }

      else
      {
LABEL_196:
        if (!v95)
        {
          goto LABEL_211;
        }
      }

      break;
    }

    v97 = *v4;
    v98 = v89;
    while (1)
    {
      *(v8 + v98 + 8) = *(v8 + v98);
      if (!v98)
      {
        break;
      }

      v99 = *(v8 + v98 - 8);
      v100 = class_getName(v97);
      WTF::CString::CString(&v188, v100);
      v101 = class_getName(v99);
      WTF::CString::CString(&v187, v101);
      v103 = WTF::operator<();
      v104 = v187;
      v187 = 0;
      if (v104)
      {
        if (*v104 == 1)
        {
          WTF::fastFree(v104, v102);
        }

        else
        {
          --*v104;
        }
      }

      result = v188;
      v188 = 0;
      if (result)
      {
        if (*result == 1)
        {
          result = WTF::fastFree(result, v102);
        }

        else
        {
          --*result;
        }
      }

      v98 -= 8;
      if ((v103 & 1) == 0)
      {
        v105 = (v8 + v98 + 8);
        goto LABEL_210;
      }
    }

    v105 = v8;
LABEL_210:
    *v105 = v97;
    goto LABEL_211;
  }

  if (v88)
  {
    return result;
  }

  v5 = 0;
  v9 = -8;
  v145 = 8;
  while (2)
  {
    v146 = *(v5 + v8);
    v5 = v145;
    v147 = class_getName(*v4);
    WTF::CString::CString(&v188, v147);
    v148 = class_getName(v146);
    WTF::CString::CString(&v187, v148);
    v149 = WTF::operator<();
    v150 = v187;
    v187 = 0;
    if (v150)
    {
      if (*v150 == 1)
      {
        WTF::fastFree(v150, v13);
      }

      else
      {
        --*v150;
      }
    }

    result = v188;
    v188 = 0;
    if (!result)
    {
LABEL_277:
      if (v149)
      {
        break;
      }

      goto LABEL_290;
    }

    if (*result != 1)
    {
      --*result;
      goto LABEL_277;
    }

    result = WTF::fastFree(result, v13);
    if (!v149)
    {
LABEL_290:
      v145 = (v5 + 1);
      ++v4;
      v9 -= 8;
      if (v4 == a2)
      {
        return result;
      }

      continue;
    }

    break;
  }

  a3 = *v4;
  v151 = v9;
  v152 = v4;
  while (1)
  {
    *v152 = *(v152 - 1);
    if (!v151)
    {
      break;
    }

    v153 = *(v152 - 2);
    v154 = class_getName(a3);
    WTF::CString::CString(&v188, v154);
    v155 = class_getName(v153);
    WTF::CString::CString(&v187, v155);
    v156 = WTF::operator<();
    v157 = v187;
    v187 = 0;
    if (v157)
    {
      if (*v157 == 1)
      {
        WTF::fastFree(v157, v13);
      }

      else
      {
        --*v157;
      }
    }

    result = v188;
    v188 = 0;
    if (result)
    {
      if (*result == 1)
      {
        result = WTF::fastFree(result, v13);
      }

      else
      {
        --*result;
      }
    }

    --v152;
    v151 += 8;
    if ((v156 & 1) == 0)
    {
      *v152 = a3;
      goto LABEL_290;
    }
  }

LABEL_295:
  __break(1u);
LABEL_296:
  WTF::fastFree(result, v13);
LABEL_320:
  result = v188;
  v188 = 0;
  if (result)
  {
    if (*result != 1)
    {
      --*result;
      goto LABEL_323;
    }

    result = WTF::fastFree(result, v13);
    if (!a3)
    {
      goto LABEL_338;
    }
  }

  else
  {
LABEL_323:
    if (!a3)
    {
      goto LABEL_338;
    }
  }

  v175 = *v4;
  do
  {
    v176 = v5;
    *v4 = *v5;
    if (!v9)
    {
      break;
    }

    v9 = (v9 - 1) >> 1;
    v5 = &v8[v9];
    v177 = class_getName(*v5);
    WTF::CString::CString(&v188, v177);
    v178 = class_getName(v175);
    WTF::CString::CString(&v187, v178);
    v180 = WTF::operator<();
    v181 = v187;
    v187 = 0;
    if (v181)
    {
      if (*v181 == 1)
      {
        WTF::fastFree(v181, v179);
      }

      else
      {
        --*v181;
      }
    }

    result = v188;
    v188 = 0;
    if (result)
    {
      if (*result == 1)
      {
        result = WTF::fastFree(result, v179);
      }

      else
      {
        --*result;
      }
    }

    v4 = v176;
  }

  while ((v180 & 1) != 0);
  *v176 = v175;
LABEL_338:
  while (1)
  {
    v171 = v10-- <= 2;
    if (v171)
    {
      return result;
    }

LABEL_299:
    v158 = 0;
    v186 = *v8;
    v159 = v8;
    do
    {
      v160 = &v159[v158];
      v4 = v160 + 1;
      v161 = (2 * v158) | 1;
      v162 = 2 * v158 + 2;
      if (v162 >= v10)
      {
        v158 = (2 * v158) | 1;
      }

      else
      {
        v164 = v160[2];
        v163 = v160 + 2;
        v165 = class_getName(*(v163 - 1));
        WTF::CString::CString(&v188, v165);
        v166 = class_getName(v164);
        WTF::CString::CString(&v187, v166);
        v168 = WTF::operator<();
        v169 = v187;
        v187 = 0;
        if (v169)
        {
          if (*v169 == 1)
          {
            WTF::fastFree(v169, v167);
          }

          else
          {
            --*v169;
          }
        }

        result = v188;
        v188 = 0;
        if (result)
        {
          if (*result == 1)
          {
            result = WTF::fastFree(result, v167);
          }

          else
          {
            --*result;
          }
        }

        if (v168)
        {
          v4 = v163;
          v158 = v162;
        }

        else
        {
          v158 = v161;
        }
      }

      *v159 = *v4;
      v159 = v4;
    }

    while (v158 <= ((v10 - 2) >> 1));
    if (v4 == --a2)
    {
      *v4 = v186;
    }

    else
    {
      *v4 = *a2;
      *a2 = v186;
      v170 = (v4 - v8 + 8) >> 3;
      v171 = v170 < 2;
      v172 = v170 - 2;
      if (!v171)
      {
        v9 = v172 >> 1;
        v5 = &v8[v172 >> 1];
        a3 = *v4;
        v173 = class_getName(*v5);
        WTF::CString::CString(&v188, v173);
        v174 = class_getName(a3);
        WTF::CString::CString(&v187, v174);
        LODWORD(a3) = WTF::operator<();
        result = v187;
        v187 = 0;
        if (!result)
        {
          goto LABEL_320;
        }

        if (*result != 1)
        {
          --*result;
          goto LABEL_320;
        }

        goto LABEL_296;
      }
    }
  }
}

void sub_19D99A838(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, WTF *a13, WTF *a14)
{
  if (a13)
  {
    if (*a13 == 1)
    {
      WTF::fastFree(a13, a2);
    }

    else
    {
      --*a13;
    }
  }

  if (a14)
  {
    if (*a14 == 1)
    {
      WTF::fastFree(a14, a2);
    }

    else
    {
      --*a14;
    }
  }

  _Unwind_Resume(exception_object);
}

WTF *_ZNSt3__17__sort3B8sn200100INS_15_RangeAlgPolicyERZZZ44___WKRemoteObjectInterface_debugDescription_ENK3__1clIN3WTF6VectorINS4_7HashSetIPKvNS4_11DefaultHashIS8_EENS4_10HashTraitsIS8_EENS4_15HashTableTraitsELNS4_17ShouldValidateKeyE1EEELm0ENS4_15CrashOnOverflowELm16ENS4_10FastMallocEEEEEDaRT_ENKUlSL_E_clISF_EESJ_SL_EUlS8_S8_E_PS8_Li0EEEbT1_SR_SR_T0_(objc_class **a1, Class *a2, Class *a3)
{
  v6 = *a1;
  Name = class_getName(*a2);
  WTF::CString::CString(&v42, Name);
  v8 = class_getName(v6);
  WTF::CString::CString(&v41, v8);
  v10 = WTF::operator<();
  v11 = v41;
  v41 = 0;
  if (v11)
  {
    if (*v11 == 1)
    {
      WTF::fastFree(v11, v9);
    }

    else
    {
      --*v11;
    }
  }

  v12 = v42;
  v42 = 0;
  if (v12)
  {
    if (*v12 == 1)
    {
      WTF::fastFree(v12, v9);
    }

    else
    {
      --*v12;
    }
  }

  v13 = *a3;
  v14 = *a2;
  if (v10)
  {
    v15 = class_getName(v13);
    WTF::CString::CString(&v42, v15);
    v16 = class_getName(v14);
    WTF::CString::CString(&v41, v16);
    v18 = WTF::operator<();
    v19 = v41;
    v41 = 0;
    if (v19)
    {
      if (*v19 == 1)
      {
        WTF::fastFree(v19, v17);
      }

      else
      {
        --*v19;
      }
    }

    result = v42;
    v42 = 0;
    if (result)
    {
      if (*result == 1)
      {
        result = WTF::fastFree(result, v17);
      }

      else
      {
        --*result;
      }
    }

    v21 = *a1;
    if (v18)
    {
      *a1 = *a3;
      *a3 = v21;
      return result;
    }

    *a1 = *a2;
    *a2 = v21;
    v35 = class_getName(*a3);
    WTF::CString::CString(&v42, v35);
    v36 = class_getName(v21);
    WTF::CString::CString(&v41, v36);
    v38 = WTF::operator<();
    v39 = v41;
    v41 = 0;
    if (v39)
    {
      if (*v39 == 1)
      {
        WTF::fastFree(v39, v37);
      }

      else
      {
        --*v39;
      }
    }

    result = v42;
    v42 = 0;
    if (result)
    {
      if (*result == 1)
      {
        result = WTF::fastFree(result, v37);
        if (!v38)
        {
          return result;
        }

LABEL_38:
        v40 = *a2;
        *a2 = *a3;
        *a3 = v40;
        return result;
      }

      --*result;
    }

    if (!v38)
    {
      return result;
    }

    goto LABEL_38;
  }

  v22 = class_getName(v13);
  WTF::CString::CString(&v42, v22);
  v23 = class_getName(v14);
  WTF::CString::CString(&v41, v23);
  v25 = WTF::operator<();
  v26 = v41;
  v41 = 0;
  if (v26)
  {
    if (*v26 == 1)
    {
      WTF::fastFree(v26, v24);
    }

    else
    {
      --*v26;
    }
  }

  result = v42;
  v42 = 0;
  if (result)
  {
    if (*result == 1)
    {
      result = WTF::fastFree(result, v24);
      if (!v25)
      {
        return result;
      }

      goto LABEL_23;
    }

    --*result;
  }

  if (!v25)
  {
    return result;
  }

LABEL_23:
  v27 = *a2;
  *a2 = *a3;
  *a3 = v27;
  v28 = *a1;
  v29 = class_getName(*a2);
  WTF::CString::CString(&v42, v29);
  v30 = class_getName(v28);
  WTF::CString::CString(&v41, v30);
  v32 = WTF::operator<();
  v33 = v41;
  v41 = 0;
  if (v33)
  {
    if (*v33 == 1)
    {
      WTF::fastFree(v33, v31);
    }

    else
    {
      --*v33;
    }
  }

  result = v42;
  v42 = 0;
  if (!result)
  {
LABEL_29:
    if (!v32)
    {
      return result;
    }

LABEL_30:
    v34 = *a1;
    *a1 = *a2;
    *a2 = v34;
    return result;
  }

  if (*result != 1)
  {
    --*result;
    goto LABEL_29;
  }

  result = WTF::fastFree(result, v31);
  if (v32)
  {
    goto LABEL_30;
  }

  return result;
}

void sub_19D99AC88(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF *a9, WTF *a10)
{
  if (a9)
  {
    if (*a9 == 1)
    {
      WTF::fastFree(a9, a2);
    }

    else
    {
      --*a9;
    }
  }

  if (a10)
  {
    if (*a10 == 1)
    {
      WTF::fastFree(a10, a2);
    }

    else
    {
      --*a10;
    }
  }

  _Unwind_Resume(exception_object);
}

WTF *_ZNSt3__17__sort4B8sn200100INS_15_RangeAlgPolicyERZZZ44___WKRemoteObjectInterface_debugDescription_ENK3__1clIN3WTF6VectorINS4_7HashSetIPKvNS4_11DefaultHashIS8_EENS4_10HashTraitsIS8_EENS4_15HashTableTraitsELNS4_17ShouldValidateKeyE1EEELm0ENS4_15CrashOnOverflowELm16ENS4_10FastMallocEEEEEDaRT_ENKUlSL_E_clISF_EESJ_SL_EUlS8_S8_E_PS8_Li0EEEvT1_SR_SR_SR_T0_(objc_class **a1, Class *a2, Class *a3, Class *a4)
{
  _ZNSt3__17__sort3B8sn200100INS_15_RangeAlgPolicyERZZZ44___WKRemoteObjectInterface_debugDescription_ENK3__1clIN3WTF6VectorINS4_7HashSetIPKvNS4_11DefaultHashIS8_EENS4_10HashTraitsIS8_EENS4_15HashTableTraitsELNS4_17ShouldValidateKeyE1EEELm0ENS4_15CrashOnOverflowELm16ENS4_10FastMallocEEEEEDaRT_ENKUlSL_E_clISF_EESJ_SL_EUlS8_S8_E_PS8_Li0EEEbT1_SR_SR_T0_(a1, a2, a3);
  v8 = *a3;
  Name = class_getName(*a4);
  WTF::CString::CString(&v31, Name);
  v10 = class_getName(v8);
  WTF::CString::CString(&v30, v10);
  v12 = WTF::operator<();
  v13 = v30;
  v30 = 0;
  if (v13)
  {
    if (*v13 == 1)
    {
      WTF::fastFree(v13, v11);
    }

    else
    {
      --*v13;
    }
  }

  result = v31;
  v31 = 0;
  if (result)
  {
    if (*result == 1)
    {
      result = WTF::fastFree(result, v11);
      if (!v12)
      {
        return result;
      }

      goto LABEL_8;
    }

    --*result;
  }

  if (!v12)
  {
    return result;
  }

LABEL_8:
  v15 = *a3;
  *a3 = *a4;
  *a4 = v15;
  v16 = *a2;
  v17 = class_getName(*a3);
  WTF::CString::CString(&v31, v17);
  v18 = class_getName(v16);
  WTF::CString::CString(&v30, v18);
  v20 = WTF::operator<();
  v21 = v30;
  v30 = 0;
  if (v21)
  {
    if (*v21 == 1)
    {
      WTF::fastFree(v21, v19);
    }

    else
    {
      --*v21;
    }
  }

  result = v31;
  v31 = 0;
  if (!result)
  {
LABEL_14:
    if (!v20)
    {
      return result;
    }

LABEL_15:
    v22 = *a2;
    *a2 = *a3;
    *a3 = v22;
    v23 = *a1;
    v24 = class_getName(*a2);
    WTF::CString::CString(&v31, v24);
    v25 = class_getName(v23);
    WTF::CString::CString(&v30, v25);
    v27 = WTF::operator<();
    v28 = v30;
    v30 = 0;
    if (v28)
    {
      if (*v28 == 1)
      {
        WTF::fastFree(v28, v26);
      }

      else
      {
        --*v28;
      }
    }

    result = v31;
    v31 = 0;
    if (result)
    {
      if (*result == 1)
      {
        result = WTF::fastFree(result, v26);
        if (!v27)
        {
          return result;
        }

LABEL_22:
        v29 = *a1;
        *a1 = *a2;
        *a2 = v29;
        return result;
      }

      --*result;
    }

    if (!v27)
    {
      return result;
    }

    goto LABEL_22;
  }

  if (*result != 1)
  {
    --*result;
    goto LABEL_14;
  }

  result = WTF::fastFree(result, v19);
  if (v20)
  {
    goto LABEL_15;
  }

  return result;
}

void sub_19D99AF20(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF *a9, WTF *a10)
{
  if (a9)
  {
    if (*a9 == 1)
    {
      WTF::fastFree(a9, a2);
    }

    else
    {
      --*a9;
    }
  }

  if (a10)
  {
    if (*a10 == 1)
    {
      WTF::fastFree(a10, a2);
    }

    else
    {
      --*a10;
    }
  }

  _Unwind_Resume(exception_object);
}

WTF *_ZNSt3__17__sort5B8sn200100INS_15_RangeAlgPolicyERZZZ44___WKRemoteObjectInterface_debugDescription_ENK3__1clIN3WTF6VectorINS4_7HashSetIPKvNS4_11DefaultHashIS8_EENS4_10HashTraitsIS8_EENS4_15HashTableTraitsELNS4_17ShouldValidateKeyE1EEELm0ENS4_15CrashOnOverflowELm16ENS4_10FastMallocEEEEEDaRT_ENKUlSL_E_clISF_EESJ_SL_EUlS8_S8_E_PS8_Li0EEEvT1_SR_SR_SR_SR_T0_(objc_class **a1, Class *a2, Class *a3, Class *a4, Class *a5)
{
  _ZNSt3__17__sort4B8sn200100INS_15_RangeAlgPolicyERZZZ44___WKRemoteObjectInterface_debugDescription_ENK3__1clIN3WTF6VectorINS4_7HashSetIPKvNS4_11DefaultHashIS8_EENS4_10HashTraitsIS8_EENS4_15HashTableTraitsELNS4_17ShouldValidateKeyE1EEELm0ENS4_15CrashOnOverflowELm16ENS4_10FastMallocEEEEEDaRT_ENKUlSL_E_clISF_EESJ_SL_EUlS8_S8_E_PS8_Li0EEEvT1_SR_SR_SR_T0_(a1, a2, a3, a4);
  v10 = *a4;
  Name = class_getName(*a5);
  WTF::CString::CString(&v40, Name);
  v12 = class_getName(v10);
  WTF::CString::CString(&v39, v12);
  v14 = WTF::operator<();
  v15 = v39;
  v39 = 0;
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

  result = v40;
  v40 = 0;
  if (!result)
  {
LABEL_7:
    if (!v14)
    {
      return result;
    }

    goto LABEL_8;
  }

  if (*result != 1)
  {
    --*result;
    goto LABEL_7;
  }

  result = WTF::fastFree(result, v13);
  if (!v14)
  {
    return result;
  }

LABEL_8:
  v17 = *a4;
  *a4 = *a5;
  *a5 = v17;
  v18 = *a3;
  v19 = class_getName(*a4);
  WTF::CString::CString(&v40, v19);
  v20 = class_getName(v18);
  WTF::CString::CString(&v39, v20);
  v22 = WTF::operator<();
  v23 = v39;
  v39 = 0;
  if (v23)
  {
    if (*v23 == 1)
    {
      WTF::fastFree(v23, v21);
    }

    else
    {
      --*v23;
    }
  }

  result = v40;
  v40 = 0;
  if (result)
  {
    if (*result == 1)
    {
      result = WTF::fastFree(result, v21);
      if (!v22)
      {
        return result;
      }

      goto LABEL_15;
    }

    --*result;
  }

  if (!v22)
  {
    return result;
  }

LABEL_15:
  v24 = *a3;
  *a3 = *a4;
  *a4 = v24;
  v25 = *a2;
  v26 = class_getName(*a3);
  WTF::CString::CString(&v40, v26);
  v27 = class_getName(v25);
  WTF::CString::CString(&v39, v27);
  v29 = WTF::operator<();
  v30 = v39;
  v39 = 0;
  if (v30)
  {
    if (*v30 == 1)
    {
      WTF::fastFree(v30, v28);
    }

    else
    {
      --*v30;
    }
  }

  result = v40;
  v40 = 0;
  if (!result)
  {
LABEL_21:
    if (!v29)
    {
      return result;
    }

LABEL_22:
    v31 = *a2;
    *a2 = *a3;
    *a3 = v31;
    v32 = *a1;
    v33 = class_getName(*a2);
    WTF::CString::CString(&v40, v33);
    v34 = class_getName(v32);
    WTF::CString::CString(&v39, v34);
    v36 = WTF::operator<();
    v37 = v39;
    v39 = 0;
    if (v37)
    {
      if (*v37 == 1)
      {
        WTF::fastFree(v37, v35);
      }

      else
      {
        --*v37;
      }
    }

    result = v40;
    v40 = 0;
    if (result)
    {
      if (*result == 1)
      {
        result = WTF::fastFree(result, v35);
        if (!v36)
        {
          return result;
        }

LABEL_29:
        v38 = *a1;
        *a1 = *a2;
        *a2 = v38;
        return result;
      }

      --*result;
    }

    if (!v36)
    {
      return result;
    }

    goto LABEL_29;
  }

  if (*result != 1)
  {
    --*result;
    goto LABEL_21;
  }

  result = WTF::fastFree(result, v28);
  if (v29)
  {
    goto LABEL_22;
  }

  return result;
}

void sub_19D99B248(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF *a9, WTF *a10)
{
  if (a9)
  {
    if (*a9 == 1)
    {
      WTF::fastFree(a9, a2);
    }

    else
    {
      --*a9;
    }
  }

  if (a10)
  {
    if (*a10 == 1)
    {
      WTF::fastFree(a10, a2);
    }

    else
    {
      --*a10;
    }
  }

  _Unwind_Resume(exception_object);
}

BOOL _ZNSt3__127__insertion_sort_incompleteB8sn200100INS_15_RangeAlgPolicyERZZZ44___WKRemoteObjectInterface_debugDescription_ENK3__1clIN3WTF6VectorINS4_7HashSetIPKvNS4_11DefaultHashIS8_EENS4_10HashTraitsIS8_EENS4_15HashTableTraitsELNS4_17ShouldValidateKeyE1EEELm0ENS4_15CrashOnOverflowELm16ENS4_10FastMallocEEEEEDaRT_ENKUlSL_E_clISF_EESJ_SL_EUlS8_S8_E_PS8_EEbT1_SR_T0_(objc_class **a1, objc_class **a2)
{
  v4 = a2 - a1;
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        _ZNSt3__17__sort3B8sn200100INS_15_RangeAlgPolicyERZZZ44___WKRemoteObjectInterface_debugDescription_ENK3__1clIN3WTF6VectorINS4_7HashSetIPKvNS4_11DefaultHashIS8_EENS4_10HashTraitsIS8_EENS4_15HashTableTraitsELNS4_17ShouldValidateKeyE1EEELm0ENS4_15CrashOnOverflowELm16ENS4_10FastMallocEEEEEDaRT_ENKUlSL_E_clISF_EESJ_SL_EUlS8_S8_E_PS8_Li0EEEbT1_SR_SR_T0_(a1, a1 + 1, a2 - 1);
        return 1;
      case 4:
        _ZNSt3__17__sort4B8sn200100INS_15_RangeAlgPolicyERZZZ44___WKRemoteObjectInterface_debugDescription_ENK3__1clIN3WTF6VectorINS4_7HashSetIPKvNS4_11DefaultHashIS8_EENS4_10HashTraitsIS8_EENS4_15HashTableTraitsELNS4_17ShouldValidateKeyE1EEELm0ENS4_15CrashOnOverflowELm16ENS4_10FastMallocEEEEEDaRT_ENKUlSL_E_clISF_EESJ_SL_EUlS8_S8_E_PS8_Li0EEEvT1_SR_SR_SR_T0_(a1, a1 + 1, a1 + 2, a2 - 1);
        return 1;
      case 5:
        _ZNSt3__17__sort5B8sn200100INS_15_RangeAlgPolicyERZZZ44___WKRemoteObjectInterface_debugDescription_ENK3__1clIN3WTF6VectorINS4_7HashSetIPKvNS4_11DefaultHashIS8_EENS4_10HashTraitsIS8_EENS4_15HashTableTraitsELNS4_17ShouldValidateKeyE1EEELm0ENS4_15CrashOnOverflowELm16ENS4_10FastMallocEEEEEDaRT_ENKUlSL_E_clISF_EESJ_SL_EUlS8_S8_E_PS8_Li0EEEvT1_SR_SR_SR_SR_T0_(a1, a1 + 1, a1 + 2, a1 + 3, a2 - 1);
        return 1;
    }
  }

  else
  {
    if (v4 < 2)
    {
      return 1;
    }

    if (v4 == 2)
    {
      v5 = *a1;
      Name = class_getName(*(a2 - 1));
      WTF::CString::CString(&v36, Name);
      v7 = class_getName(v5);
      WTF::CString::CString(&v35, v7);
      v9 = WTF::operator<();
      v10 = v35;
      v35 = 0;
      if (v10)
      {
        if (*v10 == 1)
        {
          WTF::fastFree(v10, v8);
        }

        else
        {
          --*v10;
        }
      }

      v11 = v36;
      v36 = 0;
      if (v11)
      {
        if (*v11 == 1)
        {
          WTF::fastFree(v11, v8);
          if (!v9)
          {
            return 1;
          }

          goto LABEL_11;
        }

        --*v11;
      }

      if (v9)
      {
LABEL_11:
        v12 = *a1;
        *a1 = *(a2 - 1);
        *(a2 - 1) = v12;
      }

      return 1;
    }
  }

  v13 = a1 + 2;
  _ZNSt3__17__sort3B8sn200100INS_15_RangeAlgPolicyERZZZ44___WKRemoteObjectInterface_debugDescription_ENK3__1clIN3WTF6VectorINS4_7HashSetIPKvNS4_11DefaultHashIS8_EENS4_10HashTraitsIS8_EENS4_15HashTableTraitsELNS4_17ShouldValidateKeyE1EEELm0ENS4_15CrashOnOverflowELm16ENS4_10FastMallocEEEEEDaRT_ENKUlSL_E_clISF_EESJ_SL_EUlS8_S8_E_PS8_Li0EEEbT1_SR_SR_T0_(a1, a1 + 1, a1 + 2);
  v14 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v15 = 0;
  v16 = 0;
  while (1)
  {
    v17 = *v13;
    v18 = class_getName(*v14);
    WTF::CString::CString(&v36, v18);
    v19 = class_getName(v17);
    WTF::CString::CString(&v35, v19);
    v21 = WTF::operator<();
    v22 = v35;
    v35 = 0;
    if (v22)
    {
      if (*v22 == 1)
      {
        WTF::fastFree(v22, v20);
      }

      else
      {
        --*v22;
      }
    }

    v23 = v36;
    v36 = 0;
    if (v23)
    {
      break;
    }

LABEL_25:
    if (v21)
    {
      goto LABEL_26;
    }

LABEL_40:
    v13 = v14;
    v15 += 8;
    if (++v14 == a2)
    {
      return 1;
    }
  }

  if (*v23 != 1)
  {
    --*v23;
    goto LABEL_25;
  }

  WTF::fastFree(v23, v20);
  if (!v21)
  {
    goto LABEL_40;
  }

LABEL_26:
  v24 = *v14;
  v25 = v15;
  while (1)
  {
    *(a1 + v25 + 24) = *(a1 + v25 + 16);
    if (v25 == -16)
    {
      break;
    }

    v26 = *(a1 + v25 + 8);
    v27 = class_getName(v24);
    WTF::CString::CString(&v36, v27);
    v28 = class_getName(v26);
    WTF::CString::CString(&v35, v28);
    v30 = WTF::operator<();
    v31 = v35;
    v35 = 0;
    if (v31)
    {
      if (*v31 == 1)
      {
        WTF::fastFree(v31, v29);
      }

      else
      {
        --*v31;
      }
    }

    v32 = v36;
    v36 = 0;
    if (v32)
    {
      if (*v32 == 1)
      {
        WTF::fastFree(v32, v29);
      }

      else
      {
        --*v32;
      }
    }

    v25 -= 8;
    if ((v30 & 1) == 0)
    {
      v33 = (a1 + v25 + 24);
      goto LABEL_39;
    }
  }

  v33 = a1;
LABEL_39:
  *v33 = v24;
  if (++v16 != 8)
  {
    goto LABEL_40;
  }

  return v14 + 1 == a2;
}

void sub_19D99B5C8(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF *a9, WTF *a10)
{
  if (a9)
  {
    if (*a9 == 1)
    {
      WTF::fastFree(a9, a2);
    }

    else
    {
      --*a9;
    }
  }

  if (a10)
  {
    if (*a10 == 1)
    {
      WTF::fastFree(a10, a2);
    }

    else
    {
      --*a10;
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t WebKit::WebRemoteObjectRegistry::operator new(WebKit::WebRemoteObjectRegistry *this, void *a2)
{
  if (WebKit::WebRemoteObjectRegistry::s_heapRef)
  {
    return bmalloc::api::tzoneAllocateNonCompact(WebKit::WebRemoteObjectRegistry::s_heapRef, a2);
  }

  else
  {
    return WebKit::WebRemoteObjectRegistry::operatorNewSlow(0x30);
  }
}

void PendingReply::PendingReply(PendingReply *this, _WKRemoteObjectInterface *a2, objc_selector *a3, objc_object *a4)
{
  *this = a2;
  if (a2)
  {
    v7 = a2;
  }

  *(this + 1) = a3;
  *(this + 2) = [(objc_object *)a4 copy];
}

void sub_19D99B69C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  *v1 = 0;
  if (v3)
  {
  }

  _Unwind_Resume(exception_object);
}

uint64_t WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,std::pair<WTF::RetainPtr<objc_object *>,WTF::RetainPtr<_WKRemoteObjectInterface>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,std::pair<WTF::RetainPtr<objc_object *>,WTF::RetainPtr<_WKRemoteObjectInterface>>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,std::pair<WTF::RetainPtr<objc_object *>,WTF::RetainPtr<_WKRemoteObjectInterface>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<std::pair<WTF::RetainPtr<objc_object *>,WTF::RetainPtr<_WKRemoteObjectInterface>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(uint64_t a1, WTF::StringImpl *a2)
{
  v3 = *(a1 - 4);
  if (v3)
  {
    v4 = a1;
    do
    {
      if (*v4 != -1)
      {
        v5 = *(v4 + 16);
        *(v4 + 16) = 0;
        if (v5)
        {
        }

        v6 = *(v4 + 8);
        *(v4 + 8) = 0;
        if (v6)
        {
        }

        v7 = *v4;
        *v4 = 0;
        if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v7, a2);
        }
      }

      v4 += 24;
      --v3;
    }

    while (v3);
  }

  return WTF::fastFree((a1 - 16), a2);
}

uint64_t ___ZL15wkNSStringClassv_block_invoke()
{
  result = objc_opt_class();
  qword_1EB01D290 = result;
  return result;
}

void *WTF::HashTable<void const*,void const*,WTF::IdentityExtractor,WTF::DefaultHash<void const*>,WTF::HashTraits<void const*>,WTF::HashTraits<void const*>,WTF::FastMalloc>::expand(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  if (!*a1)
  {
    v5 = 0;
    v6 = 0;
    goto LABEL_3;
  }

  v5 = *(v4 - 4);
  v6 = *(v4 - 12);
  if (!v5)
  {
LABEL_3:
    v7 = 8;
    goto LABEL_4;
  }

  v7 = v5 << (6 * v6 >= 2 * v5);
LABEL_4:
  v8 = WTF::fastZeroedMalloc((8 * v7 + 16));
  *a1 = (v8 + 4);
  v8[2] = v7 - 1;
  v8[3] = v7;
  *v8 = 0;
  v8[1] = v6;
  v10 = 0;
  if (v5)
  {
    v12 = v5;
    v13 = v4;
    do
    {
      v14 = *v13;
      if ((*v13 + 1) >= 2)
      {
        v15 = WTF::HashTable<void const*,void const*,WTF::IdentityExtractor,WTF::DefaultHash<void const*>,WTF::HashTraits<void const*>,WTF::HashTraits<void const*>,WTF::FastMalloc>::lookupForReinsert<WTF::IdentityHashTranslator<WTF::HashTraits<void const*>,WTF::DefaultHash<void const*>>,void const*>(*a1, *v13);
        *v15 = v14;
        if (v13 == a2)
        {
          v10 = v15;
        }
      }

      ++v13;
      --v12;
    }

    while (v12);
    goto LABEL_12;
  }

  result = 0;
  if (v4)
  {
LABEL_12:
    WTF::fastFree((v4 - 16), v9);
    return v10;
  }

  return result;
}

uint64_t *WTF::HashTable<void const*,void const*,WTF::IdentityExtractor,WTF::DefaultHash<void const*>,WTF::HashTraits<void const*>,WTF::HashTraits<void const*>,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>(uint64_t *result, uint64_t *a2, uint64_t *a3)
{
  v3 = *a3;
  if (*a3 == -1 || !v3)
  {
    __break(0xC471u);
    JUMPOUT(0x19D99BA24);
  }

  v6 = result;
  v7 = *a2;
  if (!*a2)
  {
    result = WTF::HashTable<void const*,void const*,WTF::IdentityExtractor,WTF::DefaultHash<void const*>,WTF::HashTraits<void const*>,WTF::HashTraits<void const*>,WTF::FastMalloc>::expand(a2, 0);
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
    v21 = 0;
    v22 = 1;
    do
    {
      if (v14 == v3)
      {
        v20 = 0;
        v19 = v7 + 8 * *(v7 - 4);
        goto LABEL_11;
      }

      if (v14 == -1)
      {
        v21 = v13;
      }

      v12 = (v12 + v22) & v8;
      v13 = (v7 + 8 * v12);
      v14 = *v13;
      ++v22;
    }

    while (*v13);
    if (v21)
    {
      *v21 = 0;
      --*(*a2 - 16);
      v3 = *a3;
      v13 = v21;
    }
  }

  *v13 = v3;
  v15 = *a2;
  if (*a2)
  {
    v16 = *(v15 - 12) + 1;
  }

  else
  {
    v16 = 1;
  }

  *(v15 - 12) = v16;
  v17 = (*(v15 - 16) + v16);
  v18 = *(v15 - 4);
  if (v18 > 0x400)
  {
    if (v18 > 2 * v17)
    {
      goto LABEL_10;
    }

LABEL_13:
    result = WTF::HashTable<void const*,void const*,WTF::IdentityExtractor,WTF::DefaultHash<void const*>,WTF::HashTraits<void const*>,WTF::HashTraits<void const*>,WTF::FastMalloc>::expand(a2, v13);
    v13 = result;
    v15 = *a2;
    if (*a2)
    {
      v18 = *(v15 - 4);
    }

    else
    {
      v18 = 0;
    }

    goto LABEL_10;
  }

  if (3 * v18 <= 4 * v17)
  {
    goto LABEL_13;
  }

LABEL_10:
  v19 = v15 + 8 * v18;
  v20 = 1;
LABEL_11:
  *v6 = v13;
  v6[1] = v19;
  *(v6 + 16) = v20;
  return result;
}

uint64_t *WTF::HashTable<objc_selector *,WTF::KeyValuePair<objc_selector *,MethodInfo>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<objc_selector *,MethodInfo>>,WTF::DefaultHash<objc_selector *>,WTF::HashMap<objc_selector *,MethodInfo,WTF::DefaultHash<objc_selector *>,WTF::HashTraits<objc_selector *>,WTF::HashTraits<MethodInfo>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<objc_selector *>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<objc_selector *,MethodInfo,WTF::DefaultHash<objc_selector *>,WTF::HashTraits<objc_selector *>,WTF::HashTraits<MethodInfo>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<objc_selector *>>,(WTF::ShouldValidateKey)1,objc_selector *>(uint64_t *a1, uint64_t *a2)
{
  if (!*a1)
  {
    return 0;
  }

  result = WTF::HashTable<objc_selector *,WTF::KeyValuePair<objc_selector *,MethodInfo>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<objc_selector *,MethodInfo>>,WTF::DefaultHash<objc_selector *>,WTF::HashMap<objc_selector *,MethodInfo,WTF::DefaultHash<objc_selector *>,WTF::HashTraits<objc_selector *>,WTF::HashTraits<MethodInfo>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<objc_selector *>,WTF::FastMalloc>::lookup<WTF::IdentityHashTranslator<WTF::HashMap<objc_selector *,MethodInfo,WTF::DefaultHash<objc_selector *>,WTF::HashTraits<objc_selector *>,WTF::HashTraits<MethodInfo>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<objc_selector *>>,(WTF::ShouldValidateKey)1,objc_selector *>(a1, a2);
  if (!result)
  {
    if (*a1)
    {
      return (*a1 + 56 * *(*a1 - 4));
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t *WTF::HashTable<objc_selector *,WTF::KeyValuePair<objc_selector *,MethodInfo>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<objc_selector *,MethodInfo>>,WTF::DefaultHash<objc_selector *>,WTF::HashMap<objc_selector *,MethodInfo,WTF::DefaultHash<objc_selector *>,WTF::HashTraits<objc_selector *>,WTF::HashTraits<MethodInfo>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<objc_selector *>,WTF::FastMalloc>::lookup<WTF::IdentityHashTranslator<WTF::HashMap<objc_selector *,MethodInfo,WTF::DefaultHash<objc_selector *>,WTF::HashTraits<objc_selector *>,WTF::HashTraits<MethodInfo>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<objc_selector *>>,(WTF::ShouldValidateKey)1,objc_selector *>(uint64_t *a1, uint64_t *a2)
{
  WTF::checkHashTableKey<objc_selector *,WTF::KeyValuePair<objc_selector *,MethodInfo>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<objc_selector *,MethodInfo>>,WTF::DefaultHash<objc_selector *>,WTF::HashMap<objc_selector *,MethodInfo,WTF::DefaultHash<objc_selector *>,WTF::HashTraits<objc_selector *>,WTF::HashTraits<MethodInfo>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<objc_selector *>,WTF::IdentityHashTranslator<WTF::HashMap<objc_selector *,MethodInfo,WTF::DefaultHash<objc_selector *>,WTF::HashTraits<objc_selector *>,WTF::HashTraits<MethodInfo>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<objc_selector *>>,(WTF::ShouldValidateKey)1,objc_selector *>(*a2);
  v4 = *a1;
  if (!v4)
  {
    return 0;
  }

  v5 = *(v4 - 8);
  v6 = *a2;
  v7 = WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::SessionSet,WTF::RawPtrTraits<WebKit::SessionSet>,WTF::DefaultRefDerefTraits<WebKit::SessionSet>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::SessionSet,WTF::RawPtrTraits<WebKit::SessionSet>,WTF::DefaultRefDerefTraits<WebKit::SessionSet>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>::hash<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(v6) & v5;
  result = (v4 + 56 * v7);
  v9 = *result;
  if (*result != v6)
  {
    v10 = 1;
    while (v9)
    {
      v7 = (v7 + v10) & v5;
      result = (v4 + 56 * v7);
      v9 = *result;
      ++v10;
      if (*result == v6)
      {
        return result;
      }
    }

    return 0;
  }

  return result;
}

uint64_t WTF::checkHashTableKey<objc_selector *,WTF::KeyValuePair<objc_selector *,MethodInfo>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<objc_selector *,MethodInfo>>,WTF::DefaultHash<objc_selector *>,WTF::HashMap<objc_selector *,MethodInfo,WTF::DefaultHash<objc_selector *>,WTF::HashTraits<objc_selector *>,WTF::HashTraits<MethodInfo>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<objc_selector *>,WTF::IdentityHashTranslator<WTF::HashMap<objc_selector *,MethodInfo,WTF::DefaultHash<objc_selector *>,WTF::HashTraits<objc_selector *>,WTF::HashTraits<MethodInfo>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<objc_selector *>>,(WTF::ShouldValidateKey)1,objc_selector *>(uint64_t result)
{
  if (result == -1 || !result)
  {
    __break(0xC471u);
    JUMPOUT(0x19D99BBA0);
  }

  return result;
}

_DWORD *WTF::RefCounted<WebKit::WebRemoteObjectRegistry>::deref(_DWORD *result)
{
  if (*result == 1)
  {
    WebKit::WebRemoteObjectRegistry::~WebRemoteObjectRegistry((result - 8));

    return bmalloc::api::tzoneFree(v2, v3);
  }

  else
  {
    --*result;
  }

  return result;
}

_DWORD *WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,std::pair<WTF::RetainPtr<objc_object *>,WTF::RetainPtr<_WKRemoteObjectInterface>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,std::pair<WTF::RetainPtr<objc_object *>,WTF::RetainPtr<_WKRemoteObjectInterface>>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,std::pair<WTF::RetainPtr<objc_object *>,WTF::RetainPtr<_WKRemoteObjectInterface>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<std::pair<WTF::RetainPtr<objc_object *>,WTF::RetainPtr<_WKRemoteObjectInterface>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::expand(uint64_t *a1)
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

  return WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,std::pair<WTF::RetainPtr<objc_object *>,WTF::RetainPtr<_WKRemoteObjectInterface>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,std::pair<WTF::RetainPtr<objc_object *>,WTF::RetainPtr<_WKRemoteObjectInterface>>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,std::pair<WTF::RetainPtr<objc_object *>,WTF::RetainPtr<_WKRemoteObjectInterface>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<std::pair<WTF::RetainPtr<objc_object *>,WTF::RetainPtr<_WKRemoteObjectInterface>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::rehash(a1, v3);
}

_DWORD *WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,std::pair<WTF::RetainPtr<objc_object *>,WTF::RetainPtr<_WKRemoteObjectInterface>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,std::pair<WTF::RetainPtr<objc_object *>,WTF::RetainPtr<_WKRemoteObjectInterface>>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,std::pair<WTF::RetainPtr<objc_object *>,WTF::RetainPtr<_WKRemoteObjectInterface>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<std::pair<WTF::RetainPtr<objc_object *>,WTF::RetainPtr<_WKRemoteObjectInterface>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::rehash(uint64_t *a1, unsigned int a2)
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

  result = WTF::fastZeroedMalloc((24 * a2 + 16));
  *a1 = (result + 4);
  result[2] = a2 - 1;
  result[3] = a2;
  *result = 0;
  result[1] = v6;
  if (v5)
  {
    v9 = 0;
    v10 = v5;
    while (1)
    {
      v11 = v4 + 24 * v9;
      v12 = *v11;
      if (*v11)
      {
        if (v12 == -1)
        {
          goto LABEL_23;
        }

        v13 = *a1;
        if (*a1)
        {
          v14 = *(v13 - 8);
        }

        else
        {
          v14 = 0;
        }

        v15 = v12[4];
        if (v15 < 0x100)
        {
          v16 = WTF::StringImpl::hashSlowCase(v12);
        }

        else
        {
          v16 = v15 >> 8;
        }

        v17 = 0;
        do
        {
          v18 = (v13 + 24 * (v16 & v14));
          v16 = ++v17 + (v16 & v14);
        }

        while (*v18);
        v19 = v18[2];
        v18[2] = 0;
        if (v19)
        {
        }

        v20 = v18[1];
        v18[1] = 0;
        if (v20)
        {
        }

        v21 = *v18;
        *v18 = 0;
        if (v21 && atomic_fetch_add_explicit(v21, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v21, v8);
        }

        v22 = *v11;
        *v11 = 0;
        *v18 = v22;
        v23 = *(v11 + 8);
        *(v11 + 8) = 0;
        v18[1] = v23;
        v24 = *(v11 + 16);
        *(v11 + 16) = 0;
        v18[2] = v24;
        v25 = *(v11 + 16);
        *(v11 + 16) = 0;
        if (v25)
        {
        }

        v26 = *(v11 + 8);
        *(v11 + 8) = 0;
        if (v26)
        {
        }

        v27 = *v11;
        *v11 = 0;
        if (!v27 || atomic_fetch_add_explicit(v27, 0xFFFFFFFE, memory_order_relaxed) != 2)
        {
          goto LABEL_23;
        }
      }

      else
      {
        v28 = *(v11 + 16);
        *(v11 + 16) = 0;
        if (v28)
        {
        }

        v29 = *(v11 + 8);
        *(v11 + 8) = 0;
        if (v29)
        {
        }

        v27 = *v11;
        *v11 = 0;
        if (!v27 || atomic_fetch_add_explicit(v27, 0xFFFFFFFE, memory_order_relaxed) != 2)
        {
          goto LABEL_23;
        }
      }

      WTF::StringImpl::destroy(v27, v8);
LABEL_23:
      if (++v9 == v10)
      {
        goto LABEL_40;
      }
    }
  }

  if (v4)
  {
LABEL_40:

    return WTF::fastFree((v4 - 16), v8);
  }

  return result;
}

uint64_t *WTF::HashTable<unsigned long long,WTF::KeyValuePair<unsigned long long,PendingReply>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<unsigned long long,PendingReply>>,WTF::DefaultHash<unsigned long long>,WTF::HashMap<unsigned long long,PendingReply,WTF::DefaultHash<unsigned long long>,WTF::HashTraits<unsigned long long>,WTF::HashTraits<PendingReply>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<unsigned long long>,WTF::FastMalloc>::expand(uint64_t *a1, uint64_t *a2)
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

  return WTF::HashTable<unsigned long long,WTF::KeyValuePair<unsigned long long,PendingReply>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<unsigned long long,PendingReply>>,WTF::DefaultHash<unsigned long long>,WTF::HashMap<unsigned long long,PendingReply,WTF::DefaultHash<unsigned long long>,WTF::HashTraits<unsigned long long>,WTF::HashTraits<PendingReply>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<unsigned long long>,WTF::FastMalloc>::rehash(a1, v5, a2);
}

uint64_t *WTF::HashTable<unsigned long long,WTF::KeyValuePair<unsigned long long,PendingReply>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<unsigned long long,PendingReply>>,WTF::DefaultHash<unsigned long long>,WTF::HashMap<unsigned long long,PendingReply,WTF::DefaultHash<unsigned long long>,WTF::HashTraits<unsigned long long>,WTF::HashTraits<PendingReply>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<unsigned long long>,WTF::FastMalloc>::rehash(uint64_t *a1, unsigned int a2, uint64_t *a3)
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

  v9 = WTF::fastMalloc(((32 * a2) | 0x10));
  v11 = v9;
  v12 = v9 + 16;
  if (a2)
  {
    bzero((v9 + 16), 32 * a2);
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
      v15 = (v6 + 32 * v13);
      v16 = *v15;
      if (*v15 != -1)
      {
        if (v16)
        {
          v19 = *a1;
          if (*a1)
          {
            v20 = *(v19 - 8);
          }

          else
          {
            v20 = 0;
          }

          v21 = (v16 + ~(v16 << 32)) ^ ((v16 + ~(v16 << 32)) >> 22);
          v22 = 9 * ((v21 + ~(v21 << 13)) ^ ((v21 + ~(v21 << 13)) >> 8));
          v23 = (v22 ^ (v22 >> 15)) + ~((v22 ^ (v22 >> 15)) << 27);
          v24 = v20 & ((v23 >> 31) ^ v23);
          v25 = 1;
          do
          {
            v26 = v24;
            v27 = *(v19 + 32 * v24);
            v24 = (v24 + v25++) & v20;
          }

          while (v27);
          v28 = (v19 + 32 * v26);
          v29 = v28[3];
          v28[3] = 0;
          if (v29)
          {
          }

          v30 = v28[1];
          v28[1] = 0;
          if (v30)
          {
          }

          *v28 = *v15;
          v31 = *(v15 + 1);
          v15[1] = 0;
          *(v28 + 1) = v31;
          v32 = v15[3];
          v15[3] = 0;
          v28[3] = v32;
          v33 = v15[3];
          v15[3] = 0;
          if (v33)
          {
          }

          v34 = v15[1];
          v15[1] = 0;
          if (v34)
          {
          }

          if (v15 == a3)
          {
            v14 = v28;
          }
        }

        else
        {
          v17 = v15[3];
          v15[3] = 0;
          if (v17)
          {
          }

          v18 = v15[1];
          v15[1] = 0;
          if (v18)
          {
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

  WTF::fastFree((v6 - 16), v10);
  return v14;
}

void *WTF::HashMap<WTF::String,std::pair<WTF::RetainPtr<objc_object *>,WTF::RetainPtr<_WKRemoteObjectInterface>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<std::pair<WTF::RetainPtr<objc_object *>,WTF::RetainPtr<_WKRemoteObjectInterface>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::String,std::pair<WTF::RetainPtr<objc_object *>,WTF::RetainPtr<_WKRemoteObjectInterface>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<std::pair<WTF::RetainPtr<objc_object *>,WTF::RetainPtr<_WKRemoteObjectInterface>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::String>>,WTF::String>(void *a1, uint64_t *a2, uint64_t *a3)
{
  v4 = WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,std::pair<WTF::RetainPtr<objc_object *>,WTF::RetainPtr<_WKRemoteObjectInterface>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,std::pair<WTF::RetainPtr<objc_object *>,WTF::RetainPtr<_WKRemoteObjectInterface>>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,std::pair<WTF::RetainPtr<objc_object *>,WTF::RetainPtr<_WKRemoteObjectInterface>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<std::pair<WTF::RetainPtr<objc_object *>,WTF::RetainPtr<_WKRemoteObjectInterface>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::lookup<WTF::HashMapTranslatorAdapter<WTF::HashMap<WTF::String,std::pair<WTF::RetainPtr<objc_object *>,WTF::RetainPtr<_WKRemoteObjectInterface>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<std::pair<WTF::RetainPtr<objc_object *>,WTF::RetainPtr<_WKRemoteObjectInterface>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::IdentityHashTranslator<WTF::HashMap<WTF::String,std::pair<WTF::RetainPtr<objc_object *>,WTF::RetainPtr<_WKRemoteObjectInterface>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<std::pair<WTF::RetainPtr<objc_object *>,WTF::RetainPtr<_WKRemoteObjectInterface>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::String>>>,(WTF::ShouldValidateKey)1,WTF::String>(a2, a3);
  if (v4)
  {

    return std::pair<WTF::RetainPtr<objc_object *>,WTF::RetainPtr<_WKRemoteObjectInterface>>::pair[abi:sn200100]<WTF::RetainPtr<objc_object *>,WTF::RetainPtr<_WKRemoteObjectInterface>,0>(a1, (v4 + 1));
  }

  else
  {
    v6[0] = 0;
    v6[1] = 0;
    *a1 = 0;
    a1[1] = 0;
    return std::pair<WTF::RetainPtr<objc_object *>,WTF::RetainPtr<_WKRemoteObjectInterface>>::~pair(v6);
  }
}

WTF **WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,std::pair<WTF::RetainPtr<objc_object *>,WTF::RetainPtr<_WKRemoteObjectInterface>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,std::pair<WTF::RetainPtr<objc_object *>,WTF::RetainPtr<_WKRemoteObjectInterface>>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,std::pair<WTF::RetainPtr<objc_object *>,WTF::RetainPtr<_WKRemoteObjectInterface>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<std::pair<WTF::RetainPtr<objc_object *>,WTF::RetainPtr<_WKRemoteObjectInterface>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::lookup<WTF::HashMapTranslatorAdapter<WTF::HashMap<WTF::String,std::pair<WTF::RetainPtr<objc_object *>,WTF::RetainPtr<_WKRemoteObjectInterface>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<std::pair<WTF::RetainPtr<objc_object *>,WTF::RetainPtr<_WKRemoteObjectInterface>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::IdentityHashTranslator<WTF::HashMap<WTF::String,std::pair<WTF::RetainPtr<objc_object *>,WTF::RetainPtr<_WKRemoteObjectInterface>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<std::pair<WTF::RetainPtr<objc_object *>,WTF::RetainPtr<_WKRemoteObjectInterface>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::String>>>,(WTF::ShouldValidateKey)1,WTF::String>(uint64_t *a1, uint64_t *a2)
{
  WTF::checkHashTableKey<WTF::String,WTF::KeyValuePair<WTF::String,std::pair<WTF::RetainPtr<objc_object *>,WTF::RetainPtr<_WKRemoteObjectInterface>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,std::pair<WTF::RetainPtr<objc_object *>,WTF::RetainPtr<_WKRemoteObjectInterface>>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,std::pair<WTF::RetainPtr<objc_object *>,WTF::RetainPtr<_WKRemoteObjectInterface>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<std::pair<WTF::RetainPtr<objc_object *>,WTF::RetainPtr<_WKRemoteObjectInterface>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::HashMapTranslatorAdapter<WTF::HashMap<WTF::String,std::pair<WTF::RetainPtr<objc_object *>,WTF::RetainPtr<_WKRemoteObjectInterface>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<std::pair<WTF::RetainPtr<objc_object *>,WTF::RetainPtr<_WKRemoteObjectInterface>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::IdentityHashTranslator<WTF::HashMap<WTF::String,std::pair<WTF::RetainPtr<objc_object *>,WTF::RetainPtr<_WKRemoteObjectInterface>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<std::pair<WTF::RetainPtr<objc_object *>,WTF::RetainPtr<_WKRemoteObjectInterface>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::String>>>,(WTF::ShouldValidateKey)1,WTF::String>(*a2);
  v5 = *a1;
  if (*a1)
  {
    v6 = *(v5 - 8);
    v7 = *(*a2 + 16);
    if (v7 < 0x100)
    {
      v8 = WTF::StringImpl::hashSlowCase(*a2);
    }

    else
    {
      v8 = v7 >> 8;
    }

    for (i = 0; ; v8 = i + v10)
    {
      v10 = v8 & v6;
      v11 = (v5 + 24 * (v8 & v6));
      v12 = *v11;
      if (!*v11)
      {
        break;
      }

      if (v12 != -1 && (WTF::equal(v12, *a2, v4) & 1) != 0)
      {
        return v11;
      }

      ++i;
    }
  }

  return 0;
}

uint64_t WTF::checkHashTableKey<WTF::String,WTF::KeyValuePair<WTF::String,std::pair<WTF::RetainPtr<objc_object *>,WTF::RetainPtr<_WKRemoteObjectInterface>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,std::pair<WTF::RetainPtr<objc_object *>,WTF::RetainPtr<_WKRemoteObjectInterface>>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,std::pair<WTF::RetainPtr<objc_object *>,WTF::RetainPtr<_WKRemoteObjectInterface>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<std::pair<WTF::RetainPtr<objc_object *>,WTF::RetainPtr<_WKRemoteObjectInterface>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::HashMapTranslatorAdapter<WTF::HashMap<WTF::String,std::pair<WTF::RetainPtr<objc_object *>,WTF::RetainPtr<_WKRemoteObjectInterface>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<std::pair<WTF::RetainPtr<objc_object *>,WTF::RetainPtr<_WKRemoteObjectInterface>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::IdentityHashTranslator<WTF::HashMap<WTF::String,std::pair<WTF::RetainPtr<objc_object *>,WTF::RetainPtr<_WKRemoteObjectInterface>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<std::pair<WTF::RetainPtr<objc_object *>,WTF::RetainPtr<_WKRemoteObjectInterface>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::String>>>,(WTF::ShouldValidateKey)1,WTF::String>(uint64_t result)
{
  if (result == -1 || !result)
  {
    __break(0xC471u);
    JUMPOUT(0x19D99C1FCLL);
  }

  return result;
}

void *std::pair<WTF::RetainPtr<objc_object *>,WTF::RetainPtr<_WKRemoteObjectInterface>>::pair[abi:sn200100]<WTF::RetainPtr<objc_object *>,WTF::RetainPtr<_WKRemoteObjectInterface>,0>(void *a1, uint64_t a2)
{
  v4 = *a2;
  *a1 = *a2;
  if (v4)
  {
    v5 = v4;
  }

  v6 = *(a2 + 8);
  a1[1] = v6;
  if (v6)
  {
    v7 = v6;
  }

  return a1;
}

void sub_19D99C268(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  *v1 = 0;
  if (v3)
  {
  }

  _Unwind_Resume(exception_object);
}

void sub_19D99C324(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 8))(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_19D99C454(_Unwind_Exception *a1)
{
  (*(*v2 + 8))(v2);
  v4 = *(v1 + 8);
  *(v1 + 8) = 0;
  if (v4)
  {
  }

  _Unwind_Resume(a1);
}

uint64_t WTF::HashTable<unsigned long long,WTF::KeyValuePair<unsigned long long,PendingReply>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<unsigned long long,PendingReply>>,WTF::DefaultHash<unsigned long long>,WTF::HashMap<unsigned long long,PendingReply,WTF::DefaultHash<unsigned long long>,WTF::HashTraits<unsigned long long>,WTF::HashTraits<PendingReply>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<unsigned long long>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<unsigned long long,PendingReply,WTF::DefaultHash<unsigned long long>,WTF::HashTraits<unsigned long long>,WTF::HashTraits<PendingReply>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<unsigned long long>>,(WTF::ShouldValidateKey)1,unsigned long long>(uint64_t result, uint64_t a2)
{
  if (result)
  {
    if (a2 == -1 || !a2)
    {
      __break(0xC471u);
      JUMPOUT(0x19D99C554);
    }

    v2 = *(result - 8);
    v3 = (~(a2 << 32) + a2) ^ ((~(a2 << 32) + a2) >> 22);
    v4 = 9 * ((v3 + ~(v3 << 13)) ^ ((v3 + ~(v3 << 13)) >> 8));
    v5 = (v4 ^ (v4 >> 15)) + ~((v4 ^ (v4 >> 15)) << 27);
    v6 = v2 & ((v5 >> 31) ^ v5);
    v7 = *(result + 32 * v6);
    if (v7 == a2)
    {
LABEL_8:
      result += 32 * v6;
    }

    else
    {
      v8 = 1;
      while (v7)
      {
        v6 = (v6 + v8) & v2;
        v7 = *(result + 32 * v6);
        ++v8;
        if (v7 == a2)
        {
          goto LABEL_8;
        }
      }

      result += 32 * *(result - 4);
    }
  }

  return result;
}

void WTF::HashTable<unsigned long long,WTF::KeyValuePair<unsigned long long,PendingReply>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<unsigned long long,PendingReply>>,WTF::DefaultHash<unsigned long long>,WTF::HashMap<unsigned long long,PendingReply,WTF::DefaultHash<unsigned long long>,WTF::HashTraits<unsigned long long>,WTF::HashTraits<PendingReply>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<unsigned long long>,WTF::FastMalloc>::remove(uint64_t *a1, void *a2)
{
  *a2 = -1;
  v4 = a2[3];
  a2[3] = 0;
  if (v4)
  {
  }

  v5 = a2[1];
  a2[1] = 0;
  if (v5)
  {
  }

  v6 = *a1;
  v7 = vadd_s32(*(*a1 - 16), 0xFFFFFFFF00000001);
  *(v6 - 16) = v7;
  v8 = *(v6 - 4);
  if (6 * v7.i32[1] < v8 && v8 >= 9)
  {

    WTF::HashTable<unsigned long long,WTF::KeyValuePair<unsigned long long,PendingReply>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<unsigned long long,PendingReply>>,WTF::DefaultHash<unsigned long long>,WTF::HashMap<unsigned long long,PendingReply,WTF::DefaultHash<unsigned long long>,WTF::HashTraits<unsigned long long>,WTF::HashTraits<PendingReply>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<unsigned long long>,WTF::FastMalloc>::rehash(a1, v8 >> 1, 0);
  }
}

uint64_t WebKit::LegacyCustomProtocolManagerProxy::didReceiveMessage(WebKit::LegacyCustomProtocolManagerProxy *this, IPC::Connection *a2, IPC::Decoder *a3)
{
  v32 = *MEMORY[0x1E69E9840];
  v3 = *(*(this + 2) + 8);
  if (v3)
  {
    atomic_fetch_add((v3 + 16), 1u);
    v6 = *(a3 + 25);
    if (v6 == 115)
    {
      v10 = IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebKit::AudioMediaStreamTrackRendererInternalUnitIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(a3);
      if (v11)
      {
        WebKit::LegacyCustomProtocolManagerProxy::stopLoading(this, v10);
      }

      return WebKit::LegacyCustomProtocolManagerProxy::deref(this);
    }

    if (v6 != 114)
    {
      v12 = qword_1ED6416C8;
      if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
      {
        if (v6 >= 0x107F)
        {
          v17 = 4223;
        }

        else
        {
          v17 = v6;
        }

        v18 = (&IPC::Detail::messageDescriptions)[3 * v17];
        v19 = *(a3 + 7);
        *buf = 136315394;
        *&buf[4] = v18;
        v29 = 2048;
        v30 = v19;
        _os_log_error_impl(&dword_19D52D000, v12, OS_LOG_TYPE_ERROR, "Unhandled message %s to %llu", buf, 0x16u);
      }

      v13 = *a3;
      v14 = *(a3 + 1);
      *a3 = 0;
      *(a3 + 1) = 0;
      v15 = *(a3 + 3);
      if (v15 && v14)
      {
        (*(*v15 + 16))(v15, v13);
      }

      return WebKit::LegacyCustomProtocolManagerProxy::deref(this);
    }

    v7 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a3);
    if (v8 & 1) != 0 && ((v9 = v7, IPC::ArgumentCoder<WebCore::ResourceRequest,void>::decode(a3, v26), (v27) || (v20 = *a3, v21 = *(a3 + 1), *a3 = 0, *(a3 + 1) = 0, (v22 = *(a3 + 3)) != 0) && v21 && ((*(*v22 + 16))(v22, v20), (v27)))
    {
      *buf = v9;
      std::__tuple_leaf<0ul,WebCore::ResourceRequest,false>::__tuple_leaf[abi:sn200100]<WebCore::ResourceRequest,0>(&buf[8], v26);
      v31 = 1;
      if (v27 & 1) == 0 || (WebCore::ResourceRequest::~ResourceRequest(v26), (v31))
      {
LABEL_8:
        WebKit::LegacyCustomProtocolManagerProxy::startLoading(this, *buf, &buf[8]);
        if (v31)
        {
          WebCore::ResourceRequest::~ResourceRequest(&buf[8]);
        }

        return WebKit::LegacyCustomProtocolManagerProxy::deref(this);
      }
    }

    else
    {
      buf[0] = 0;
      v31 = 0;
    }

    v23 = *a3;
    v24 = *(a3 + 1);
    *a3 = 0;
    *(a3 + 1) = 0;
    v25 = *(a3 + 3);
    if (!v25)
    {
      return WebKit::LegacyCustomProtocolManagerProxy::deref(this);
    }

    if (!v24)
    {
      return WebKit::LegacyCustomProtocolManagerProxy::deref(this);
    }

    (*(*v25 + 16))(v25, v23);
    if ((v31 & 1) == 0)
    {
      return WebKit::LegacyCustomProtocolManagerProxy::deref(this);
    }

    goto LABEL_8;
  }

  result = 92;
  __break(0xC471u);
  return result;
}

atomic_uchar **WebKit::LibWebRTCCodecs::didReceiveMessage(WebKit::LibWebRTCCodecs *this, IPC::Connection *a2, IPC::Decoder *a3)
{
  v88 = *MEMORY[0x1E69E9840];
  v5 = (this + 8);
  while (1)
  {
    v6 = *v5;
    if ((*v5 & 1) == 0)
    {
      break;
    }

    v7 = *v5;
    atomic_compare_exchange_strong_explicit(v5, &v7, v6 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v7 == v6)
    {
      goto LABEL_6;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v5);
LABEL_6:
  v8 = *(a3 + 25);
  if (v8 > 0x8B)
  {
    if (v8 == 140)
    {
      v21 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a3);
      if (v22)
      {
        v23 = v21;
        IPC::ArgumentCoder<std::span<unsigned char const,18446744073709551615ul>,void>::decode<IPC::Decoder>(a3, &v65);
        if (v66 & 1) != 0 || (v53 = *a3, v54 = *(a3 + 1), *a3 = 0, *(a3 + 1) = 0, (v55 = *(a3 + 3)) != 0) && v54 && ((*(*v55 + 16))(v55, v53), (v66))
        {
          IPC::ArgumentCoder<webrtc::WebKitEncodedFrameInfo,void>::decode(a3, &v67);
          if ((v76 & 1) == 0)
          {
            goto LABEL_52;
          }

          goto LABEL_24;
        }
      }

      goto LABEL_41;
    }

    if (v8 != 142)
    {
      if (v8 == 141)
      {
        v9 = IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebKit::AudioMediaStreamTrackRendererInternalUnitIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(a3);
        if (v10)
        {
          WebKit::LibWebRTCCodecs::failedDecoding(this, v9);
        }

        return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(v5, v10);
      }

LABEL_40:
      v43 = qword_1ED6416C8;
      if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
      {
        if (v8 >= 0x107F)
        {
          v47 = 4223;
        }

        else
        {
          v47 = v8;
        }

        v48 = (&IPC::Detail::messageDescriptions)[3 * v47];
        v49 = *(a3 + 7);
        *buf = 136315394;
        *&buf[4] = v48;
        *&buf[12] = 2048;
        *&buf[14] = v49;
        _os_log_error_impl(&dword_19D52D000, v43, OS_LOG_TYPE_ERROR, "Unhandled message %s to %llu", buf, 0x16u);
      }

      goto LABEL_41;
    }

    v24 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a3);
    if ((v25 & 1) == 0 || (v23 = v24, IPC::ArgumentCoder<std::span<unsigned char const,18446744073709551615ul>,void>::decode<IPC::Decoder>(a3, buf), (buf[16] & 1) == 0) && ((v56 = *a3, v57 = *(a3 + 1), *a3 = 0, *(a3 + 1) = 0, (v58 = *(a3 + 3)) == 0) || !v57 || ((*(*v58 + 16))(v58, v56), (buf[16] & 1) == 0)))
    {
LABEL_41:
      v10 = *a3;
      v44 = *(a3 + 1);
      *a3 = 0;
      *(a3 + 1) = 0;
      v45 = *(a3 + 3);
      if (v45 && v44)
      {
        (*(*v45 + 16))(v45, v10);
      }

      return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(v5, v10);
    }

    v26 = *(a3 + 1);
    v27 = *(a3 + 2);
    v28 = *a3;
    if (v26 <= &v27[-*a3])
    {
      *a3 = 0;
      *(a3 + 1) = 0;
      v59 = *(a3 + 3);
      if (v59)
      {
        if (v26)
        {
          (*(*v59 + 16))(v59);
          v26 = *(a3 + 1);
        }
      }

      else
      {
        v26 = 0;
      }
    }

    else
    {
      *(a3 + 2) = v27 + 1;
      if (v27)
      {
        v29 = *v27;
        if (v29 < 2)
        {
          if (!v29)
          {
            v32 = 0;
            v33 = 0;
            goto LABEL_44;
          }

          v30 = IPC::Decoder::decode<WebCore::PlatformVideoColorSpace>(a3);
          if (v31)
          {
            if ((buf[16] & 1) == 0)
            {
              while (1)
              {
                __break(1u);
LABEL_52:
                v50 = *a3;
                v51 = *(a3 + 1);
                *a3 = 0;
                *(a3 + 1) = 0;
                v52 = *(a3 + 3);
                if (!v52)
                {
                  break;
                }

                if (!v51)
                {
                  break;
                }

                (*(*v52 + 16))(v52, v50);
                if ((v76 & 1) == 0)
                {
                  break;
                }

LABEL_24:
                if (v66)
                {
                  *&buf[8] = v65;
                  v83 = v72;
                  v84 = v73;
                  v85 = v74;
                  v79 = v68;
                  v80 = v69;
                  v81 = v70;
                  v82 = v71;
                  *buf = v23;
                  v86 = v75;
                  cf = v67;
                  v87 = 1;
                  WebKit::LibWebRTCCodecs::completedEncoding(this, v23, v65, *(&v65 + 1), &cf);
                  return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(v5, v10);
                }
              }

              goto LABEL_41;
            }

            v32 = v30;
            v33 = 1;
LABEL_44:
            WebKit::LibWebRTCCodecs::setEncodingConfiguration(this, v23, *buf, *&buf[8], v32, v33);
            return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(v5, v10);
          }

LABEL_70:
          v62 = *a3;
          v63 = *(a3 + 1);
          *a3 = 0;
          *(a3 + 1) = 0;
          v64 = *(a3 + 3);
          if (v64 && v63)
          {
            (*(*v64 + 16))(v64, v62);
          }

          goto LABEL_41;
        }

        goto LABEL_69;
      }
    }

    *a3 = 0;
    *(a3 + 1) = 0;
    v60 = *(a3 + 3);
    if (v60)
    {
      if (v26)
      {
        (*(*v60 + 16))(v60);
        v28 = *a3;
        v26 = *(a3 + 1);
        goto LABEL_69;
      }
    }

    else
    {
      v26 = 0;
    }

    v28 = 0;
LABEL_69:
    *a3 = 0;
    *(a3 + 1) = 0;
    v61 = *(a3 + 3);
    if (v61 && v26)
    {
      (*(*v61 + 16))(v61, v28);
    }

    goto LABEL_70;
  }

  if (v8 == 138)
  {
    v34 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a3);
    if (v35)
    {
      v36 = v34;
      v37 = IPC::Decoder::decode<long long>(a3);
      if (v38)
      {
        v39 = v37;
        v40 = IPC::Decoder::decode<long long>(a3);
        if (v41)
        {
          v42 = v40;
          IPC::Decoder::decode<WebKit::RemoteVideoFrameProxyProperties>(&v67, a3);
          if (BYTE8(v70))
          {
            *buf = v36;
            *&buf[8] = v39;
            cf = v67;
            v79 = v68;
            v80 = v69;
            *&buf[16] = v42;
            *&v81 = v70;
            BYTE8(v81) = 1;
            WebKit::LibWebRTCCodecs::completedDecoding(this, v36, v39, v42, &cf);
            return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(v5, v10);
          }
        }
      }
    }

    goto LABEL_41;
  }

  if (v8 != 139)
  {
    goto LABEL_40;
  }

  v11 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a3);
  if ((v12 & 1) == 0)
  {
    goto LABEL_41;
  }

  v13 = v11;
  v14 = IPC::Decoder::decode<long long>(a3);
  if ((v15 & 1) == 0)
  {
    goto LABEL_41;
  }

  v16 = v14;
  v17 = IPC::Decoder::decode<long long>(a3);
  if ((v18 & 1) == 0)
  {
    goto LABEL_41;
  }

  v19 = v17;
  IPC::ArgumentCoder<WTF::RetainPtr<__CVBuffer *>,void>::decode(a3, &v67);
  if ((BYTE8(v67) & 1) == 0)
  {
    goto LABEL_70;
  }

  *buf = v13;
  *&buf[8] = v16;
  *&buf[16] = v19;
  *&cf = v67;
  BYTE8(cf) = 1;
  WebKit::LibWebRTCCodecs::completedDecodingCV(this, v13, v16, v19, &cf);
  if (BYTE8(cf))
  {
    v20 = cf;
    *&cf = 0;
    if (v20)
    {
      CFRelease(v20);
    }
  }

  return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(v5, v10);
}

atomic_uchar **WebKit::LibWebRTCCodecsProxy::didReceiveMessage(atomic_ullong *this, atomic_ullong *a2, IPC::Decoder *a3)
{
  v248 = *MEMORY[0x1E69E9840];
  if ((this[8] & 0x8400) != 0)
  {
    v8 = this + 1;
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
    v11 = *(a3 + 25);
    switch(*(a3 + 25))
    {
      case 0x7B:
        v12 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a3);
        if ((v13 & 1) == 0)
        {
          goto LABEL_238;
        }

        v14 = v12;
        v15 = IPC::Decoder::decode<WebCore::VideoCodecType>(a3);
        if (v15 < 0x100u)
        {
          goto LABEL_238;
        }

        v16 = v15;
        IPC::ArgumentCoder<WTF::String,void>::decode<IPC::Decoder>(a3, v233);
        if ((v233[1] & 1) == 0)
        {
          v185 = *a3;
          v186 = *(a3 + 1);
          *a3 = 0;
          *(a3 + 1) = 0;
          v187 = *(a3 + 3);
          if (!v187)
          {
            goto LABEL_238;
          }

          if (!v186)
          {
            goto LABEL_238;
          }

          (*(*v187 + 16))(v187, v185);
          if ((v233[1] & 1) == 0)
          {
            goto LABEL_238;
          }
        }

        v17 = *(a3 + 1);
        v18 = *(a3 + 2);
        v19 = *a3;
        if (v17 <= &v18[-*a3])
        {
          *a3 = 0;
          *(a3 + 1) = 0;
          v207 = *(a3 + 3);
          if (v207)
          {
            if (v17)
            {
              (*(*v207 + 16))(v207);
              v17 = *(a3 + 1);
            }
          }

          else
          {
            v17 = 0;
          }
        }

        else
        {
          v20 = v18 + 1;
          *(a3 + 2) = v18 + 1;
          if (v18)
          {
            v3 = *v18;
            if (v3 >= 2)
            {
              goto LABEL_284;
            }

            if (v17 <= v20 - v19)
            {
              v209 = 0;
              v210 = 0;
              *a3 = 0;
              *(a3 + 1) = 0;
              v211 = *(a3 + 3);
              if (v211)
              {
                (*(*v211 + 16))(v211);
                v210 = *a3;
                v209 = *(a3 + 1);
              }
            }

            else
            {
              *(a3 + 2) = v18 + 2;
              if (v18 != -1)
              {
                v4 = *v20;
                if (v4 < 2)
                {
                  *buf = v14;
                  buf[8] = v16;
                  v14 = v233[0];
                  v233[0] = 0;
                  *&buf[16] = v14;
                  LOBYTE(v241) = v3;
                  BYTE1(v241) = v4;
                  v21 = 1;
                  goto LABEL_18;
                }

                goto LABEL_284;
              }

              v209 = v17;
              v210 = v19;
            }

            *a3 = 0;
            *(a3 + 1) = 0;
            v212 = *(a3 + 3);
            if (v212 && v209)
            {
              (*(*v212 + 16))(v212, v210, v209);
              goto LABEL_356;
            }

            goto LABEL_282;
          }
        }

        *a3 = 0;
        *(a3 + 1) = 0;
        v208 = *(a3 + 3);
        if (v208)
        {
          if (v17)
          {
            (*(*v208 + 16))(v208);
LABEL_356:
            v19 = *a3;
            v17 = *(a3 + 1);
LABEL_284:
            *a3 = 0;
            *(a3 + 1) = 0;
            v213 = *(a3 + 3);
            if (v213 && v17)
            {
              (*(*v213 + 16))(v213, v19);
            }

            v21 = 0;
            buf[0] = 0;
LABEL_18:
            LOBYTE(v242) = v21;
            if (v233[1])
            {
              v22 = v233[0];
              v233[0] = 0;
              if (v22)
              {
                if (atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v22, v19);
                }
              }
            }

            if ((v21 & 1) == 0)
            {
LABEL_238:
              v24 = *a3;
              v188 = *(a3 + 1);
              *a3 = 0;
              *(a3 + 1) = 0;
              v189 = *(a3 + 3);
              if (v189 && v188)
              {
                (*(*v189 + 16))(v189, v24);
              }

              return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(v8, v24);
            }

            v23 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
            if (v24)
            {
              v25 = v23;
              while (1)
              {
                v26 = *a2;
                if ((*a2 & 1) == 0)
                {
                  break;
                }

                v27 = *a2;
                atomic_compare_exchange_strong_explicit(a2, &v27, v26 + 2, memory_order_relaxed, memory_order_relaxed);
                if (v27 == v26)
                {
                  goto LABEL_189;
                }
              }

              WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_189:
              v159 = WTF::fastMalloc(0x18);
              *v159 = &unk_1F10EEEB8;
              *(v159 + 1) = v25;
              *(v159 + 2) = a2;
              v233[0] = v159;
              WebKit::LibWebRTCCodecsProxy::createDecoder(this, *buf, v16, &buf[16], v3 & 1, v4 & 1, v233);
              v160 = v233[0];
              v233[0] = 0;
              if (v160)
              {
                (*(*v160 + 8))(v160);
              }

              if ((v242 & 1) == 0)
              {
                return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(v8, v24);
              }

              v14 = *&buf[16];
            }

            *&buf[16] = 0;
            if (!v14 || atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) != 2)
            {
              return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(v8, v24);
            }

            v161 = v14;
LABEL_312:
            WTF::StringImpl::destroy(v161, v24);
            return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(v8, v24);
          }

LABEL_283:
          v19 = 0;
          goto LABEL_284;
        }

LABEL_282:
        v17 = 0;
        goto LABEL_283;
      case 0x7C:
        v93 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a3);
        if ((v94 & 1) == 0 || (v95 = v93, v96 = IPC::Decoder::decode<WebCore::VideoCodecType>(a3), v96 < 0x100u) || (v97 = v96, IPC::ArgumentCoder<WTF::String,void>::decode<IPC::Decoder>(a3, v238), (v238[1] & 1) == 0) && ((v190 = *a3, v191 = *(a3 + 1), *a3 = 0, *(a3 + 1) = 0, (v192 = *(a3 + 3)) == 0) || !v191 || ((*(*v192 + 16))(v192, v190), (v238[1] & 1) == 0)))
        {
          buf[0] = 0;
          v243 = 0;
LABEL_243:
          v24 = *a3;
          v193 = *(a3 + 1);
          *a3 = 0;
          *(a3 + 1) = 0;
          v194 = *(a3 + 3);
          if (!v194)
          {
            goto LABEL_309;
          }

          if (!v193)
          {
            goto LABEL_309;
          }

          (*(*v194 + 16))(v194, v24);
          if ((v243 & 1) == 0)
          {
            goto LABEL_309;
          }

LABEL_300:
          v218 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
          if ((v24 & 1) == 0)
          {
            goto LABEL_309;
          }

          v219 = v218;
          while (1)
          {
            v220 = *a2;
            if ((*a2 & 1) == 0)
            {
              break;
            }

            v221 = *a2;
            atomic_compare_exchange_strong_explicit(a2, &v221, v220 + 2, memory_order_relaxed, memory_order_relaxed);
            if (v221 == v220)
            {
              goto LABEL_306;
            }
          }

          WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_306:
          v222 = WTF::fastMalloc(0x18);
          *v222 = &unk_1F10EEF30;
          *(v222 + 1) = v219;
          *(v222 + 2) = a2;
          v233[0] = v222;
          if (v243)
          {
            WebKit::LibWebRTCCodecsProxy::createEncoder(this, *buf, buf[8], &buf[16], &v241, BYTE8(v242), BYTE9(v242), BYTE10(v242), v233);
            v223 = v233[0];
            v233[0] = 0;
            if (v223)
            {
              (*(*v223 + 8))(v223);
            }

LABEL_309:
            if (v243 != 1)
            {
              return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(v8, v24);
            }

            WTF::Vector<std::pair<WTF::String,WTF::String>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v241, v24);
            v161 = *&buf[16];
            *&buf[16] = 0;
            if (!v161 || atomic_fetch_add_explicit(v161, 0xFFFFFFFE, memory_order_relaxed) != 2)
            {
              return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(v8, v24);
            }

            goto LABEL_312;
          }

LABEL_347:
          __break(1u);
        }

        IPC::VectorArgumentCoder<false,std::pair<WTF::String,WTF::String>,0ul,WTF::CrashOnOverflow,16ul>::decode<IPC::Decoder>(a3, v233);
        if ((v234 & 1) == 0)
        {
          v100 = *a3;
          v178 = *(a3 + 1);
          *a3 = 0;
          *(a3 + 1) = 0;
          v179 = *(a3 + 3);
          if (!v179 || !v178 || ((*(*v179 + 16))(v179, v100), (v234 & 1) == 0))
          {
            v108 = 0;
            buf[0] = 0;
            v243 = 0;
            goto LABEL_295;
          }
        }

        v98 = *(a3 + 1);
        v99 = *(a3 + 2);
        v100 = *a3;
        if (v98 <= &v99[-*a3])
        {
          *a3 = 0;
          *(a3 + 1) = 0;
          v214 = *(a3 + 3);
          if (v214)
          {
            if (v98)
            {
              (*(*v214 + 16))(v214);
              v98 = *(a3 + 1);
            }
          }

          else
          {
            v98 = 0;
          }
        }

        else
        {
          v101 = v99 + 1;
          *(a3 + 2) = v99 + 1;
          if (v99)
          {
            v102 = *v99;
            if (v102 >= 2)
            {
              goto LABEL_291;
            }

            if (v98 > v101 - v100)
            {
              v103 = v99 + 2;
              *(a3 + 2) = v99 + 2;
              if (v99 == -1)
              {
LABEL_348:
                v203 = v98;
                v204 = v100;
                goto LABEL_271;
              }

              v104 = *v101;
              if (v104 >= 2)
              {
                goto LABEL_291;
              }

              if (v98 > v103 - v100)
              {
                *(a3 + 2) = v99 + 3;
                if (v99 != -2)
                {
                  v105 = *v103;
                  if (v105 < 3)
                  {
                    if ((v238[1] & 1) == 0)
                    {
                      goto LABEL_347;
                    }

                    *buf = v95;
                    buf[8] = v97;
                    v106 = v238[0];
                    v238[0] = 0;
                    *&buf[16] = v106;
                    v241 = v233[0];
                    v107 = v233[1];
                    v233[0] = 0;
                    v233[1] = 0;
                    *&v242 = v107;
                    BYTE8(v242) = v102;
                    BYTE9(v242) = v104;
                    v108 = 1;
                    BYTE10(v242) = v105;
                    goto LABEL_293;
                  }

LABEL_291:
                  *a3 = 0;
                  *(a3 + 1) = 0;
                  v216 = *(a3 + 3);
                  if (v216 && v98)
                  {
                    (*(*v216 + 16))(v216, v100);
                  }

                  v108 = 0;
                  buf[0] = 0;
LABEL_293:
                  v243 = v108;
                  if (v234)
                  {
                    WTF::Vector<std::pair<WTF::String,WTF::String>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v233, v100);
                  }

LABEL_295:
                  if (v238[1])
                  {
                    v217 = v238[0];
                    v238[0] = 0;
                    if (v217)
                    {
                      if (atomic_fetch_add_explicit(v217, 0xFFFFFFFE, memory_order_relaxed) == 2)
                      {
                        WTF::StringImpl::destroy(v217, v100);
                      }
                    }
                  }

                  if (v108)
                  {
                    goto LABEL_300;
                  }

                  goto LABEL_243;
                }

                goto LABEL_348;
              }
            }

            v203 = 0;
            v204 = 0;
            *a3 = 0;
            *(a3 + 1) = 0;
            v205 = *(a3 + 3);
            if (v205)
            {
              (*(*v205 + 16))(v205);
              v204 = *a3;
              v203 = *(a3 + 1);
            }

LABEL_271:
            *a3 = 0;
            *(a3 + 1) = 0;
            v206 = *(a3 + 3);
            if (v206 && v203)
            {
              (*(*v206 + 16))(v206, v204, v203);
LABEL_359:
              v100 = *a3;
              v98 = *(a3 + 1);
              goto LABEL_291;
            }

            goto LABEL_289;
          }
        }

        *a3 = 0;
        *(a3 + 1) = 0;
        v215 = *(a3 + 3);
        if (v215)
        {
          if (v98)
          {
            (*(*v215 + 16))(v215);
            goto LABEL_359;
          }

LABEL_290:
          v100 = 0;
          goto LABEL_291;
        }

LABEL_289:
        v98 = 0;
        goto LABEL_290;
      case 0x7D:
        v65 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a3);
        if ((v66 & 1) == 0)
        {
          goto LABEL_238;
        }

        v67 = v65;
        v68 = IPC::Decoder::decode<long long>(a3);
        if ((v69 & 1) == 0)
        {
          goto LABEL_238;
        }

        v70 = v68;
        IPC::ArgumentCoder<std::span<unsigned char const,18446744073709551615ul>,void>::decode<IPC::Decoder>(a3, buf);
        if ((buf[16] & 1) == 0)
        {
          v198 = *a3;
          v199 = *(a3 + 1);
          *a3 = 0;
          *(a3 + 1) = 0;
          v200 = *(a3 + 3);
          if (!v200)
          {
            goto LABEL_238;
          }

          if (!v199)
          {
            goto LABEL_238;
          }

          (*(*v200 + 16))(v200, v198);
          if ((buf[16] & 1) == 0)
          {
            goto LABEL_238;
          }
        }

        v71 = *buf;
        v72 = *&buf[8];
        v73 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
        if ((v24 & 1) == 0)
        {
          return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(v8, v24);
        }

        v74 = v73;
        while (1)
        {
          v75 = *a2;
          if ((*a2 & 1) == 0)
          {
            break;
          }

          v76 = *a2;
          atomic_compare_exchange_strong_explicit(a2, &v76, v75 + 2, memory_order_relaxed, memory_order_relaxed);
          if (v76 == v75)
          {
            goto LABEL_210;
          }
        }

        WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_210:
        v168 = WTF::fastMalloc(0x18);
        *v168 = &unk_1F10EEF08;
        v168[1] = v74;
        v168[2] = a2;
        *buf = v168;
        WebKit::LibWebRTCCodecsProxy::decodeFrame(this, v67, v70, v71, v72, buf);
        v165 = *buf;
        *buf = 0;
        if (v165)
        {
          goto LABEL_202;
        }

        return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(v8, v24);
      case 0x7E:
        v81 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a3);
        if ((v82 & 1) == 0 || (v83 = v81, IPC::ArgumentCoder<WebKit::SharedVideoFrame,void>::decode(a3, v233), (v237 & 1) == 0) && ((v175 = *a3, v176 = *(a3 + 1), *a3 = 0, *(a3 + 1) = 0, (v177 = *(a3 + 3)) == 0) || !v176 || ((*(*v177 + 16))(v177, v175), (v237 & 1) == 0)))
        {
          buf[0] = 0;
          v247 = 0;
          goto LABEL_205;
        }

        v84 = IPC::Decoder::decode<long long>(a3);
        if ((v85 & 1) == 0)
        {
          buf[0] = 0;
          v247 = 0;
          if ((v237 & 1) == 0 || v236 != 2)
          {
            goto LABEL_205;
          }

          goto LABEL_330;
        }

        v86 = v84;
        IPC::Decoder::decode<std::optional<unsigned long long>>(a3, v238);
        if ((v239 & 1) == 0)
        {
          goto LABEL_327;
        }

        v87 = *(a3 + 1);
        v88 = *(a3 + 2);
        v89 = *a3;
        if (v87 <= &v88[-*a3])
        {
          *a3 = 0;
          *(a3 + 1) = 0;
          v224 = *(a3 + 3);
          if (v224)
          {
            if (v87)
            {
              (*(*v224 + 16))(v224);
              v87 = *(a3 + 1);
            }
          }

          else
          {
            v87 = 0;
          }
        }

        else
        {
          *(a3 + 2) = v88 + 1;
          if (v88)
          {
            v90 = *v88;
            if (v90 < 2)
            {
              if ((v237 & 1) == 0)
              {
                goto LABEL_347;
              }

              *buf = v83;
              *&buf[8] = *v233;
              LODWORD(v241) = v234;
              LOBYTE(v242) = 0;
              v243 = -1;
              if (v236 <= 1u)
              {
                if (v236)
                {
                  v242 = v235;
                  v91 = 1;
                }

                else
                {
                  v91 = 0;
                  *&v242 = 0;
                }
              }

              else if (v236 == 2)
              {
                WTF::MachSendRight::MachSendRight();
                v91 = v236;
              }

              else
              {
                if (v236 != 3)
                {
LABEL_217:
                  v244 = v86;
                  v245 = *v238;
                  v246 = v90;
                  v169 = 1;
                  goto LABEL_328;
                }

                *&v242 = v235;
                v91 = 3;
              }

              v243 = v91;
              goto LABEL_217;
            }

LABEL_326:
            *a3 = 0;
            *(a3 + 1) = 0;
            v226 = *(a3 + 3);
            if (v226 && v87)
            {
              (*(*v226 + 16))(v226, v89);
            }

LABEL_327:
            v169 = 0;
            buf[0] = 0;
LABEL_328:
            v247 = v169;
            if ((v237 & 1) == 0 || v236 != 2)
            {
LABEL_331:
              if (v169)
              {
LABEL_332:
                v227 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
                if (v24)
                {
                  v228 = v227;
                  while (1)
                  {
                    v229 = *a2;
                    if ((*a2 & 1) == 0)
                    {
                      break;
                    }

                    v230 = *a2;
                    atomic_compare_exchange_strong_explicit(a2, &v230, v229 + 2, memory_order_relaxed, memory_order_relaxed);
                    if (v230 == v229)
                    {
                      goto LABEL_338;
                    }
                  }

                  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_338:
                  v231 = WTF::fastMalloc(0x18);
                  *v231 = &unk_1F10EEF58;
                  *(v231 + 1) = v228;
                  *(v231 + 2) = a2;
                  v233[0] = v231;
                  if ((v247 & 1) == 0)
                  {
                    goto LABEL_347;
                  }

                  WebKit::LibWebRTCCodecsProxy::encodeFrame(this, *buf, &buf[8], v244, v245, *(&v245 + 1), v246, v233);
                  v232 = v233[0];
                  v233[0] = 0;
                  if (v232)
                  {
                    (*(*v232 + 8))(v232);
                  }
                }

LABEL_341:
                if (v247 == 1 && v243 == 2)
                {
                  v118 = &v242;
LABEL_344:
                  WTF::MachSendRight::~MachSendRight(v118);
                }

                return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(v8, v24);
              }

LABEL_205:
              v24 = *a3;
              v166 = *(a3 + 1);
              *a3 = 0;
              *(a3 + 1) = 0;
              v167 = *(a3 + 3);
              if (!v167)
              {
                goto LABEL_341;
              }

              if (!v166)
              {
                goto LABEL_341;
              }

              (*(*v167 + 16))(v167, v24);
              if ((v247 & 1) == 0)
              {
                goto LABEL_341;
              }

              goto LABEL_332;
            }

LABEL_330:
            WTF::MachSendRight::~MachSendRight(&v235);
            v169 = v247;
            goto LABEL_331;
          }
        }

        *a3 = 0;
        *(a3 + 1) = 0;
        v225 = *(a3 + 3);
        if (v225)
        {
          if (v87)
          {
            (*(*v225 + 16))(v225);
            v89 = *a3;
            v87 = *(a3 + 1);
            goto LABEL_326;
          }
        }

        else
        {
          v87 = 0;
        }

        v89 = 0;
        goto LABEL_326;
      case 0x7F:
        v48 = IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebKit::AudioMediaStreamTrackRendererInternalUnitIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(a3);
        if ((v24 & 1) == 0)
        {
          return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(v8, v24);
        }

        v49 = v48;
        v50 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
        if ((v24 & 1) == 0)
        {
          return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(v8, v24);
        }

        v51 = v50;
        while (1)
        {
          v52 = *a2;
          if ((*a2 & 1) == 0)
          {
            break;
          }

          v53 = *a2;
          atomic_compare_exchange_strong_explicit(a2, &v53, v52 + 2, memory_order_relaxed, memory_order_relaxed);
          if (v53 == v52)
          {
            goto LABEL_185;
          }
        }

        WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_185:
        v157 = WTF::fastMalloc(0x18);
        *v157 = &unk_1F10EEEE0;
        v157[1] = v51;
        v157[2] = a2;
        *buf = v157;
        WebKit::LibWebRTCCodecsProxy::flushDecoder(this, v49, buf);
        goto LABEL_201;
      case 0x80:
        v109 = IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebKit::AudioMediaStreamTrackRendererInternalUnitIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(a3);
        if ((v24 & 1) == 0)
        {
          return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(v8, v24);
        }

        v110 = v109;
        v111 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
        if ((v24 & 1) == 0)
        {
          return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(v8, v24);
        }

        v112 = v111;
        while (1)
        {
          v113 = *a2;
          if ((*a2 & 1) == 0)
          {
            break;
          }

          v114 = *a2;
          atomic_compare_exchange_strong_explicit(a2, &v114, v113 + 2, memory_order_relaxed, memory_order_relaxed);
          if (v114 == v113)
          {
            goto LABEL_187;
          }
        }

        WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_187:
        v158 = WTF::fastMalloc(0x18);
        *v158 = &unk_1F10EEF80;
        v158[1] = v112;
        v158[2] = a2;
        *buf = v158;
        WebKit::LibWebRTCCodecsProxy::flushEncoder(this, v110, buf);
        goto LABEL_201;
      case 0x81:
        v119 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a3);
        if ((v120 & 1) == 0)
        {
          goto LABEL_238;
        }

        v38 = *(a3 + 1);
        v121 = ((*(a3 + 2) + 1) & 0xFFFFFFFFFFFFFFFELL);
        v122 = *a3;
        v123 = v121 - *a3;
        v42 = v38 >= v123;
        v124 = v38 - v123;
        if (!v42 || v124 <= 1)
        {
          goto LABEL_264;
        }

        *(a3 + 2) = v121 + 1;
        if (!v121)
        {
          goto LABEL_266;
        }

        v126 = *v121;
        v127 = ((v121 + 3) & 0xFFFFFFFFFFFFFFFELL);
        if (v38 < v127 - v122 || v38 - (v127 - v122) <= 1)
        {
          goto LABEL_264;
        }

        *(a3 + 2) = v127 + 1;
        if (!v127)
        {
          goto LABEL_266;
        }

        v129 = *v127;
        v130 = ((v127 + 5) & 0xFFFFFFFFFFFFFFFCLL);
        if (v38 < v130 - v122 || v38 - (v130 - v122) <= 3)
        {
          goto LABEL_264;
        }

        *(a3 + 2) = v130 + 1;
        if (!v130)
        {
          goto LABEL_266;
        }

        v132 = *v130;
        v133 = ((v130 + 7) & 0xFFFFFFFFFFFFFFFCLL);
        if (v38 < v133 - v122 || v38 - (v133 - v122) <= 3)
        {
          goto LABEL_264;
        }

        *(a3 + 2) = v133 + 1;
        if (!v133)
        {
          goto LABEL_266;
        }

        v135 = *v133;
        v136 = ((v133 + 7) & 0xFFFFFFFFFFFFFFFCLL);
        if (v38 < v136 - v122 || v38 - (v136 - v122) <= 3)
        {
          goto LABEL_264;
        }

        *(a3 + 2) = v136 + 1;
        if (!v136)
        {
          goto LABEL_266;
        }

        v138 = *v136;
        v139 = ((v136 + 7) & 0xFFFFFFFFFFFFFFFCLL);
        if (v38 < v139 - v122 || v38 - (v139 - v122) <= 3)
        {
LABEL_264:
          *a3 = 0;
          *(a3 + 1) = 0;
          v201 = *(a3 + 3);
          if (v201)
          {
            if (v38)
            {
              (*(*v201 + 16))(v201);
              v38 = *(a3 + 1);
            }
          }

          else
          {
            v38 = 0;
          }
        }

        else
        {
          *(a3 + 2) = v139 + 1;
          if (v139)
          {
            WebKit::LibWebRTCCodecsProxy::initializeEncoder(this, v119, v126, v129, v132, v135, v138, *v139);
            return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(v8, v24);
          }
        }

LABEL_266:
        *a3 = 0;
        *(a3 + 1) = 0;
        v202 = *(a3 + 3);
        if (v202 && v38)
        {
          (*(*v202 + 16))(v202);
        }

        goto LABEL_238;
      case 0x82:
        v92 = IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebKit::AudioMediaStreamTrackRendererInternalUnitIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(a3);
        if (v24)
        {
          WebKit::LibWebRTCCodecsProxy::releaseDecoder(this, v92);
        }

        return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(v8, v24);
      case 0x83:
        v156 = IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebKit::AudioMediaStreamTrackRendererInternalUnitIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(a3);
        if (v24)
        {
          WebKit::LibWebRTCCodecsProxy::releaseEncoder(this, v156);
        }

        return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(v8, v24);
      case 0x84:
        v54 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a3);
        if ((v55 & 1) == 0)
        {
          goto LABEL_238;
        }

        v56 = v54;
        IPC::ArgumentCoder<std::span<unsigned char const,18446744073709551615ul>,void>::decode<IPC::Decoder>(a3, buf);
        if ((buf[16] & 1) == 0)
        {
          v195 = *a3;
          v196 = *(a3 + 1);
          *a3 = 0;
          *(a3 + 1) = 0;
          v197 = *(a3 + 3);
          if (!v197)
          {
            goto LABEL_238;
          }

          if (!v196)
          {
            goto LABEL_238;
          }

          (*(*v197 + 16))(v197, v195);
          if ((buf[16] & 1) == 0)
          {
            goto LABEL_238;
          }
        }

        v38 = *(a3 + 1);
        v57 = ((*(a3 + 2) + 1) & 0xFFFFFFFFFFFFFFFELL);
        v58 = *a3;
        v59 = v57 - *a3;
        v42 = v38 >= v59;
        v60 = v38 - v59;
        if (!v42 || v60 <= 1)
        {
          goto LABEL_264;
        }

        *(a3 + 2) = v57 + 1;
        if (!v57)
        {
          goto LABEL_266;
        }

        v62 = *v57;
        v63 = ((v57 + 3) & 0xFFFFFFFFFFFFFFFELL);
        if (v38 < v63 - v58 || v38 - (v63 - v58) <= 1)
        {
          goto LABEL_264;
        }

        *(a3 + 2) = v63 + 1;
        if (!v63)
        {
          goto LABEL_266;
        }

        WebKit::LibWebRTCCodecsProxy::setDecoderFormatDescription(this, v56, *buf, *&buf[8], v62, *v63);
        return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(v8, v24);
      case 0x85:
        v140 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a3);
        if ((v141 & 1) == 0)
        {
          goto LABEL_238;
        }

        v38 = *(a3 + 1);
        v142 = ((*(a3 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
        v143 = *a3;
        v144 = v142 - *a3;
        v42 = v38 >= v144;
        v145 = v38 - v144;
        if (!v42 || v145 <= 3)
        {
          goto LABEL_264;
        }

        *(a3 + 2) = v142 + 1;
        if (!v142)
        {
          goto LABEL_266;
        }

        v147 = *v142;
        v148 = ((v142 + 7) & 0xFFFFFFFFFFFFFFFCLL);
        if (v38 < v148 - v143 || v38 - (v148 - v143) <= 3)
        {
          goto LABEL_264;
        }

        *(a3 + 2) = v148 + 1;
        if (!v148)
        {
          goto LABEL_266;
        }

        v150 = v140;
        v151 = *v148;
        v152 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
        if ((v24 & 1) == 0)
        {
          return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(v8, v24);
        }

        v153 = v152;
        while (1)
        {
          v154 = *a2;
          if ((*a2 & 1) == 0)
          {
            break;
          }

          v155 = *a2;
          atomic_compare_exchange_strong_explicit(a2, &v155, v154 + 2, memory_order_relaxed, memory_order_relaxed);
          if (v155 == v154)
          {
            goto LABEL_200;
          }
        }

        WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_200:
        v164 = WTF::fastMalloc(0x18);
        *v164 = &unk_1F10EEFA8;
        v164[1] = v153;
        v164[2] = a2;
        *buf = v164;
        WebKit::LibWebRTCCodecsProxy::setEncodeRates(this, v150, v147, v151, buf);
LABEL_201:
        v165 = *buf;
        *buf = 0;
        if (v165)
        {
LABEL_202:
          (*(*v165 + 8))(v165);
        }

        return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(v8, v24);
      case 0x86:
        v36 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a3);
        if ((v37 & 1) == 0)
        {
          goto LABEL_238;
        }

        v38 = *(a3 + 1);
        v39 = ((*(a3 + 2) + 1) & 0xFFFFFFFFFFFFFFFELL);
        v40 = *a3;
        v41 = v39 - *a3;
        v42 = v38 >= v41;
        v43 = v38 - v41;
        if (!v42 || v43 <= 1)
        {
          goto LABEL_264;
        }

        *(a3 + 2) = v39 + 1;
        if (!v39)
        {
          goto LABEL_266;
        }

        v45 = *v39;
        v46 = ((v39 + 3) & 0xFFFFFFFFFFFFFFFELL);
        if (v38 < v46 - v40 || v38 - (v46 - v40) <= 1)
        {
          goto LABEL_264;
        }

        *(a3 + 2) = v46 + 1;
        if (!v46)
        {
          goto LABEL_266;
        }

        WebKit::LibWebRTCCodecsProxy::setFrameSize(this, v36, v45, *v46);
        return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(v8, v24);
      case 0x87:
        if ((IPC::Decoder::decode<WTFLogLevel>(a3) & 0x100) == 0)
        {
          goto LABEL_238;
        }

        WebCore::LibWebRTCProvider::setRTCLogging();
        return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(v8, v24);
      case 0x88:
        v115 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a3);
        if (v116 & 1) != 0 && ((v117 = v115, IPC::ArgumentCoder<WebCore::SharedMemoryHandle,void>::decode(a3, v233), (v234) || (v180 = *a3, v181 = *(a3 + 1), *a3 = 0, *(a3 + 1) = 0, (v182 = *(a3 + 3)) != 0) && v181 && ((*(*v182 + 16))(v182, v180), (v234)))
        {
          *buf = v117;
          WTF::MachSendRight::MachSendRight();
          *&buf[16] = v233[1];
          LOBYTE(v241) = 1;
          if ((v234 & 1) == 0)
          {
            goto LABEL_127;
          }

          WTF::MachSendRight::~MachSendRight(v233);
          if (v241)
          {
            goto LABEL_127;
          }
        }

        else
        {
          buf[0] = 0;
          LOBYTE(v241) = 0;
        }

        v24 = *a3;
        v183 = *(a3 + 1);
        *a3 = 0;
        *(a3 + 1) = 0;
        v184 = *(a3 + 3);
        if (!v184)
        {
          return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(v8, v24);
        }

        if (!v183)
        {
          return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(v8, v24);
        }

        (*(*v184 + 16))(v184, v24);
        if ((v241 & 1) == 0)
        {
          return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(v8, v24);
        }

LABEL_127:
        WebKit::LibWebRTCCodecsProxy::setSharedVideoFrameMemory(this, *buf);
        if ((v241 & 1) == 0)
        {
          return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(v8, v24);
        }

        goto LABEL_128;
      case 0x89:
        v32 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a3);
        if (v33 & 1) != 0 && ((v34 = v32, IPC::ArgumentCoder<IPC::Semaphore,void>::decode(a3, v233), (v233[1]) || (v170 = *a3, v171 = *(a3 + 1), *a3 = 0, *(a3 + 1) = 0, (v172 = *(a3 + 3)) != 0) && v171 && ((*(*v172 + 16))(v172, v170), (v233[1])))
        {
          *buf = v34;
          WTF::MachSendRight::MachSendRight();
          v35 = HIDWORD(v233[0]);
          HIDWORD(v233[0]) = 0;
          *&buf[12] = v35;
          buf[16] = 1;
          if ((v233[1] & 1) == 0)
          {
            goto LABEL_36;
          }

          IPC::Semaphore::destroy(v233);
          WTF::MachSendRight::~MachSendRight(v233);
          if (buf[16])
          {
            goto LABEL_36;
          }
        }

        else
        {
          buf[0] = 0;
          buf[16] = 0;
        }

        v24 = *a3;
        v173 = *(a3 + 1);
        *a3 = 0;
        *(a3 + 1) = 0;
        v174 = *(a3 + 3);
        if (!v174)
        {
          return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(v8, v24);
        }

        if (!v173)
        {
          return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(v8, v24);
        }

        (*(*v174 + 16))(v174, v24);
        if ((buf[16] & 1) == 0)
        {
          return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(v8, v24);
        }

LABEL_36:
        WebKit::LibWebRTCCodecsProxy::setSharedVideoFrameSemaphore(this, *buf, &buf[8]);
        if ((buf[16] & 1) == 0)
        {
          return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(v8, v24);
        }

        IPC::Semaphore::destroy(&buf[8]);
LABEL_128:
        v118 = &buf[8];
        goto LABEL_344;
      default:
        v77 = qword_1ED6416C8;
        if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
        {
          if (v11 >= 0x107F)
          {
            v78 = 4223;
          }

          else
          {
            v78 = v11;
          }

          v79 = (&IPC::Detail::messageDescriptions)[3 * v78];
          v80 = *(a3 + 7);
          *buf = 136315394;
          *&buf[4] = v79;
          *&buf[12] = 2048;
          *&buf[14] = v80;
          _os_log_error_impl(&dword_19D52D000, v77, OS_LOG_TYPE_ERROR, "Unhandled message %s to %llu", buf, 0x16u);
        }

        goto LABEL_238;
    }
  }

  v28 = qword_1ED6416C8;
  if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
  {
    v162 = *(a3 + 25);
    if (v162 >= 0x107F)
    {
      v162 = 4223;
    }

    v163 = (&IPC::Detail::messageDescriptions)[3 * v162];
    *buf = 136315138;
    *&buf[4] = v163;
    _os_log_error_impl(&dword_19D52D000, v28, OS_LOG_TYPE_ERROR, "Message %s received by a disabled message receiver LibWebRTCCodecsProxy", buf, 0xCu);
  }

  v29 = *a3;
  v30 = *(a3 + 1);
  *a3 = 0;
  *(a3 + 1) = 0;
  result = *(a3 + 3);
  if (result && v30)
  {
    return (*(*result + 2))(result, v29);
  }

  return result;
}

void WebKit::LibWebRTCNetwork::didReceiveMessage(WebKit::LibWebRTCNetwork *this, IPC::Connection *a2, IPC::Decoder *a3)
{
  v85 = *MEMORY[0x1E69E9840];
  if (!*(this + 3))
  {
    __break(0xC471u);
    JUMPOUT(0x19D99EB04);
  }

  v5 = *(a3 + 25);
  if (v5 > 0x91)
  {
    if (v5 == 148)
    {
      v33 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a3);
      if ((v34 & 1) == 0)
      {
        goto LABEL_81;
      }

      v35 = v33;
      IPC::ArgumentCoder<WTF::String,void>::decode<IPC::Decoder>(a3, &v75);
      if ((BYTE8(v75) & 1) == 0)
      {
        v56 = *a3;
        v57 = *(a3 + 1);
        *a3 = 0;
        *(a3 + 1) = 0;
        v58 = *(a3 + 3);
        if (!v58)
        {
          goto LABEL_81;
        }

        if (!v57)
        {
          goto LABEL_81;
        }

        (*(*v58 + 16))(v58, v56);
        if ((BYTE8(v75) & 1) == 0)
        {
          goto LABEL_81;
        }
      }

      *buf = v35;
      *&buf[8] = v75;
      buf[16] = 1;
      WebKit::LibWebRTCNetwork::signalUsedInterface(this, v35);
      if (buf[16])
      {
        v37 = *&buf[8];
        *&buf[8] = 0;
        if (v37)
        {
          if (atomic_fetch_add_explicit(v37, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v37, v36);
          }
        }
      }

      goto LABEL_82;
    }

    if (v5 == 147)
    {
      v48 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a3);
      if (v49)
      {
        v50 = v48;
        IPC::Decoder::decode<long long>(a3);
        if (v51)
        {
          IPC::Decoder::decode<long long>(a3);
          if (v52)
          {
            WebKit::LibWebRTCNetwork::signalSentPacket(this, v50);
            goto LABEL_82;
          }
        }
      }

      goto LABEL_81;
    }

    if (v5 != 146)
    {
      goto LABEL_39;
    }

    v8 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a3);
    if ((v9 & 1) == 0)
    {
      goto LABEL_81;
    }

    v10 = v8;
    IPC::ArgumentCoder<std::span<unsigned char const,18446744073709551615ul>,void>::decode<IPC::Decoder>(a3, &v73);
    if ((v74 & 1) == 0)
    {
      v59 = *a3;
      v60 = *(a3 + 1);
      *a3 = 0;
      *(a3 + 1) = 0;
      v61 = *(a3 + 3);
      if (!v61)
      {
        goto LABEL_81;
      }

      if (!v60)
      {
        goto LABEL_81;
      }

      (*(*v61 + 16))(v61, v59);
      if ((v74 & 1) == 0)
      {
        goto LABEL_81;
      }
    }

    IPC::ArgumentCoder<WebKit::WebRTCNetwork::IPAddress,void>::decode(a3, &v75);
    if ((v76 & 0x100000000) == 0)
    {
LABEL_97:
      v11 = *(a3 + 1);
      goto LABEL_98;
    }

    v11 = *(a3 + 1);
    v12 = ((*(a3 + 2) + 1) & 0xFFFFFFFFFFFFFFFELL);
    v13 = v12 - *a3;
    v14 = v11 >= v13;
    v15 = v11 - v13;
    if (!v14 || v15 <= 1)
    {
LABEL_68:
      *a3 = 0;
      *(a3 + 1) = 0;
      v62 = *(a3 + 3);
      if (!v62)
      {
        v11 = 0;
        goto LABEL_98;
      }

      if (!v11)
      {
        goto LABEL_98;
      }

      (*(*v62 + 16))(v62);
      goto LABEL_97;
    }

    *(a3 + 2) = v12 + 1;
    if (!v12)
    {
LABEL_98:
      *a3 = 0;
      *(a3 + 1) = 0;
      v69 = *(a3 + 3);
      if (v69 && v11)
      {
        (*(*v69 + 16))(v69);
      }

      goto LABEL_81;
    }

    v16 = *v12;
    v17 = IPC::Decoder::decode<long long>(a3);
    if ((v18 & 1) == 0)
    {
LABEL_81:
      v66 = *a3;
      v67 = *(a3 + 1);
      *a3 = 0;
      *(a3 + 1) = 0;
      v68 = *(a3 + 3);
      if (v68 && v67)
      {
        (*(*v68 + 16))(v68, v66);
      }

      goto LABEL_82;
    }

    v19 = v17;
    v20 = *(a3 + 1);
    v21 = ((*(a3 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
    v22 = *a3;
    v23 = v21 - *a3;
    v14 = v20 >= v23;
    v24 = v20 - v23;
    if (v14 && v24 > 3)
    {
      *(a3 + 2) = v21 + 1;
      if (v21)
      {
        v25 = *v21;
        if (v25 >= 4)
        {
          v26 = 0;
        }

        else
        {
          v26 = v25;
        }

        if (v25 < 4)
        {
          v27 = 0x100000000;
LABEL_80:
          if (!HIDWORD(v27))
          {
            goto LABEL_81;
          }

          if ((v74 & 1) == 0)
          {
            __break(1u);
          }

          *buf = v10;
          *&buf[8] = v73;
          *v81 = v75;
          *&v81[16] = v76;
          *&v81[20] = v16;
          v82 = v19;
          v83 = v26;
          v84 = 1;
          WebKit::LibWebRTCNetwork::signalReadPacket(this, v10, v73, *(&v73 + 1), v81);
          goto LABEL_82;
        }

LABEL_78:
        *a3 = 0;
        *(a3 + 1) = 0;
        v65 = *(a3 + 3);
        if (v65)
        {
          v70 = v26;
          v72 = v19;
          if (v20)
          {
            (*(*v65 + 16))(v65, v22);
          }

          v27 = 0;
          v26 = v70;
          v19 = v72;
        }

        else
        {
          v27 = 0;
        }

        goto LABEL_80;
      }

      v71 = v17;
LABEL_74:
      *a3 = 0;
      *(a3 + 1) = 0;
      v64 = *(a3 + 3);
      if (v64)
      {
        if (v20)
        {
          (*(*v64 + 16))(v64, v22);
          v26 = 0;
          v22 = *a3;
          v20 = *(a3 + 1);
          goto LABEL_77;
        }
      }

      else
      {
        v20 = 0;
      }

      v22 = 0;
      v26 = 0;
LABEL_77:
      v19 = v71;
      goto LABEL_78;
    }

    v71 = v17;
    *a3 = 0;
    *(a3 + 1) = 0;
    v63 = *(a3 + 3);
    if (v63)
    {
      if (v20)
      {
        (*(*v63 + 16))(v63);
        v22 = *a3;
        v20 = *(a3 + 1);
        goto LABEL_74;
      }
    }

    else
    {
      v20 = 0;
    }

    v22 = 0;
    goto LABEL_74;
  }

  if (v5 != 143)
  {
    if (v5 != 144)
    {
      if (v5 == 145)
      {
        v6 = IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebKit::AudioMediaStreamTrackRendererInternalUnitIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(a3);
        if (v7)
        {
          WebKit::LibWebRTCNetwork::signalConnect(this, v6);
        }

        goto LABEL_82;
      }

LABEL_39:
      v38 = qword_1ED6416C8;
      if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
      {
        if (v5 >= 0x107F)
        {
          v39 = 4223;
        }

        else
        {
          v39 = v5;
        }

        v40 = (&IPC::Detail::messageDescriptions)[3 * v39];
        v41 = *(a3 + 7);
        *buf = 136315394;
        *&buf[4] = v40;
        *&buf[12] = 2048;
        *&buf[14] = v41;
        _os_log_error_impl(&dword_19D52D000, v38, OS_LOG_TYPE_ERROR, "Unhandled message %s to %llu", buf, 0x16u);
      }

      goto LABEL_81;
    }

    v42 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a3);
    if (v43)
    {
      v11 = *(a3 + 1);
      v44 = ((*(a3 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
      v45 = v44 - *a3;
      v14 = v11 >= v45;
      v46 = v11 - v45;
      if (v14 && v46 > 3)
      {
        *(a3 + 2) = v44 + 1;
        if (v44)
        {
          WebKit::LibWebRTCNetwork::signalClose(this, v42, *v44);
          goto LABEL_82;
        }

        goto LABEL_98;
      }

      goto LABEL_68;
    }

    goto LABEL_81;
  }

  v28 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a3);
  if ((v29 & 1) == 0)
  {
    goto LABEL_81;
  }

  v30 = v28;
  IPC::ArgumentCoder<WebKit::WebRTCNetwork::SocketAddress,void>::decode(a3, &v75);
  if ((v79 & 1) == 0)
  {
    v53 = *a3;
    v54 = *(a3 + 1);
    *a3 = 0;
    *(a3 + 1) = 0;
    v55 = *(a3 + 3);
    if (!v55)
    {
      goto LABEL_81;
    }

    if (!v54)
    {
      goto LABEL_81;
    }

    (*(*v55 + 16))(v55, v53);
    if ((v79 & 1) == 0)
    {
      goto LABEL_81;
    }
  }

  *buf = v30;
  *&buf[8] = v75;
  *v81 = v76;
  *&v81[8] = v77;
  v82 = v78;
  LOBYTE(v83) = 1;
  WebKit::LibWebRTCNetwork::signalAddressReady(this, v30, &buf[8]);
  if (v83)
  {
    v32 = *&buf[16];
    if (*&buf[16])
    {
      *&buf[16] = 0;
      *v81 = 0;
      WTF::fastFree(v32, v31);
    }
  }

LABEL_82:
  if (!*(this + 3))
  {
    __break(0xC471u);
    JUMPOUT(0x19D99EB24);
  }
}

void WebKit::LogStream::didReceiveStreamMessage(atomic_uint *this, IPC::StreamServerConnection *a2, IPC::Decoder *a3)
{
  v327 = *MEMORY[0x1E69E9840];
  atomic_fetch_add(this + 2, 1u);
  v6 = *(a3 + 25);
  switch(*(a3 + 25))
  {
    case 0x95:
      IPC::Decoder::decode<std::tuple<unsigned long long,unsigned long long,int>>(buf, a3);
      if (v324 == 1)
      {
        WebKit::LogStream::dOCUMENTLOADER_ATTACHTOFRAME(this, *buf, *&buf[8], *&buf[16]);
      }

      goto LABEL_784;
    case 0x96:
      IPC::Decoder::decode<std::tuple<unsigned long long,unsigned long long,int>>(buf, a3);
      if (v324 == 1)
      {
        WebKit::LogStream::dOCUMENTLOADER_DETACHFROMFRAME(this, *buf, *&buf[8], *&buf[16]);
      }

      goto LABEL_784;
    case 0x97:
      IPC::Decoder::decode<std::tuple<unsigned long long,unsigned long long,int>>(buf, a3);
      if (v324 == 1)
      {
        WebKit::LogStream::dOCUMENTLOADER_STARTLOADINGMAINRESOURCE_EMTPY_DOCUMENT(this, *buf, *&buf[8], *&buf[16]);
      }

      goto LABEL_784;
    case 0x98:
      IPC::Decoder::decode<std::tuple<unsigned long long,unsigned long long,int>>(buf, a3);
      if (v324 == 1)
      {
        WebKit::LogStream::dOCUMENTLOADER_STARTLOADINGMAINRESOURCE_STARTING_LOAD(this, *buf, *&buf[8], *&buf[16]);
      }

      goto LABEL_784;
    case 0x99:
      IPC::Decoder::decode<std::tuple<unsigned long long,unsigned long long,int>>(buf, a3);
      if (v324 == 1)
      {
        WebKit::LogStream::dOCUMENTLOADER_STOPLOADING(this, *buf, *&buf[8], *&buf[16]);
      }

      goto LABEL_784;
    case 0x9C:
      IPC::Decoder::decode<std::tuple<unsigned long long,unsigned long long,int>>(buf, a3);
      if (v324 == 1)
      {
        WebKit::LogStream::fRAMELOADER_CHANGELOCATION(this, *buf, *&buf[8], *&buf[16]);
      }

      goto LABEL_784;
    case 0x9D:
      IPC::Decoder::decode<std::tuple<unsigned long long,unsigned long long,int>>(buf, a3);
      if (v324 == 1)
      {
        WebKit::LogStream::fRAMELOADER_CHECKLOADCOMPLETEFORTHISFRAME(this, *buf, *&buf[8], *&buf[16]);
      }

      goto LABEL_784;
    case 0x9E:
      IPC::Decoder::decode<std::tuple<unsigned long long,unsigned long long,int,unsigned long long>>(buf, a3);
      if (LOBYTE(v325[0]) == 1)
      {
        WebKit::LogStream::fRAMELOADER_CONTINUELOADAFTERNAVIGATIONPOLICY(this, *buf, *&buf[8], *&buf[16], v324);
      }

      goto LABEL_784;
    case 0x9F:
      v159 = *(a3 + 1);
      v160 = ((*(a3 + 2) + 7) & 0xFFFFFFFFFFFFFFF8);
      v161 = *a3;
      v162 = v160 - *a3;
      v17 = v159 >= v162;
      v163 = v159 - v162;
      if (!v17 || v163 <= 7)
      {
        goto LABEL_724;
      }

      *(a3 + 2) = v160 + 1;
      if (!v160)
      {
        goto LABEL_726;
      }

      v165 = *v160;
      v166 = ((v160 + 15) & 0xFFFFFFFFFFFFFFF8);
      if (v159 < v166 - v161 || v159 - (v166 - v161) <= 7)
      {
        goto LABEL_724;
      }

      *(a3 + 2) = v166 + 1;
      if (!v166)
      {
        goto LABEL_726;
      }

      v168 = *v166;
      v169 = (v166 + 11) & 0xFFFFFFFFFFFFFFF8;
      if (v159 < v169 - v161 || v159 - (v169 - v161) <= 3)
      {
        goto LABEL_724;
      }

      v171 = (v169 | 4);
      *(a3 + 2) = v169 | 4;
      if (!v169)
      {
        goto LABEL_726;
      }

      if (v159 < v171 - v161 || v159 - (v171 - v161) <= 3)
      {
        goto LABEL_728;
      }

      v173 = *v169;
      *(a3 + 2) = v169 + 8;
      v174 = (v169 + 11) & 0xFFFFFFFFFFFFFFF8;
      if (v159 < v174 - v161 || v159 - (v174 - v161) <= 3)
      {
LABEL_724:
        *a3 = 0;
        *(a3 + 1) = 0;
        v280 = *(a3 + 3);
        if (v280)
        {
          if (v159)
          {
            (*(*v280 + 16))(v280);
            v159 = *(a3 + 1);
          }
        }

        else
        {
          v159 = 0;
        }

LABEL_726:
        *a3 = 0;
        *(a3 + 1) = 0;
        v281 = *(a3 + 3);
        if (!v281)
        {
          goto LABEL_729;
        }

        goto LABEL_833;
      }

      v176 = *v171;
      v177 = (v174 | 4);
      *(a3 + 2) = v174 | 4;
      if (!v174)
      {
        goto LABEL_726;
      }

      if (v159 >= v177 - v161 && v159 - (v177 - v161) > 3)
      {
        v179 = *v174;
        *(a3 + 2) = v174 + 8;
        WebKit::LogStream::fRAMELOADER_CONTINUELOADAFTERNAVIGATIONPOLICY_CANNOT_CONTINUE(this, v165, v168, v173, v176, v179, *v177);
        goto LABEL_784;
      }

LABEL_728:
      *a3 = 0;
      *(a3 + 1) = 0;
      v282 = *(a3 + 3);
      if (v282)
      {
        if (v159)
        {
          (*(*v282 + 16))(v282);
          v159 = *(a3 + 1);
          v281 = *(a3 + 3);
          *a3 = 0;
          *(a3 + 1) = 0;
          if (v281)
          {
LABEL_833:
            if (v159)
            {
              (*(*v281 + 16))(v281);
            }
          }
        }
      }

LABEL_729:
      v7 = *a3;
      v8 = *(a3 + 1);
      *a3 = 0;
      *(a3 + 1) = 0;
      v216 = *(a3 + 3);
      if (v216)
      {
        goto LABEL_750;
      }

      goto LABEL_784;
    case 0xA0:
      IPC::Decoder::decode<std::tuple<unsigned long long,unsigned long long,int>>(buf, a3);
      if (v324 == 1)
      {
        WebKit::LogStream::fRAMELOADER_LOADFRAMEREQUEST_FRAME_LOAD_STARTED(this, *buf, *&buf[8], *&buf[16]);
      }

      goto LABEL_784;
    case 0xA1:
      IPC::Decoder::decode<std::tuple<unsigned long long,unsigned long long,int>>(buf, a3);
      if (v324 == 1)
      {
        WebKit::LogStream::fRAMELOADER_LOADURLINTOCHILDFRAME(this, *buf, *&buf[8], *&buf[16]);
      }

      goto LABEL_784;
    case 0xA2:
      IPC::Decoder::decode<std::tuple<unsigned long long,unsigned long long,int>>(buf, a3);
      if (v324 == 1)
      {
        WebKit::LogStream::fRAMELOADER_LOADWITHDOCUMENTLOADER_FRAME_LOAD_STARTED(this, *buf, *&buf[8], *&buf[16]);
      }

      goto LABEL_784;
    case 0xA3:
      IPC::Decoder::decode<std::tuple<unsigned long long,unsigned long long,int>>(buf, a3);
      if (v324 == 1)
      {
        WebKit::LogStream::fRAMELOADER_LOADWITHDOCUMENTLOADER_MAIN_FRAME_LOAD_STARTED(this, *buf, *&buf[8], *&buf[16]);
      }

      goto LABEL_784;
    case 0xA4:
      IPC::Decoder::decode<std::tuple<unsigned long long,unsigned long long,int>>(buf, a3);
      if (v324 == 1)
      {
        WebKit::LogStream::fRAMELOADER_LOADWITHNAVIGATIONACTION(this, *buf, *&buf[8], *&buf[16]);
      }

      goto LABEL_784;
    case 0xA5:
      IPC::Decoder::decode<std::tuple<unsigned long long,unsigned long long,int>>(buf, a3);
      if (v324 == 1)
      {
        WebKit::LogStream::fRAMELOADER_LOAD_DOCUMENTLOADER(this, *buf, *&buf[8], *&buf[16]);
      }

      goto LABEL_784;
    case 0xA6:
      IPC::Decoder::decode<std::tuple<unsigned long long,unsigned long long,int>>(buf, a3);
      if (v324 == 1)
      {
        WebKit::LogStream::fRAMELOADER_LOAD_FRAMELOADREQUEST(this, *buf, *&buf[8], *&buf[16]);
      }

      goto LABEL_784;
    case 0xA7:
      IPC::Decoder::decode<std::tuple<unsigned long long,unsigned long long,int>>(buf, a3);
      if (v324 == 1)
      {
        WebKit::LogStream::fRAMELOADER_LOAD_URL(this, *buf, *&buf[8], *&buf[16]);
      }

      goto LABEL_784;
    case 0xA8:
      IPC::Decoder::decode<std::tuple<unsigned long long,unsigned long long,int>>(buf, a3);
      if (v324 == 1)
      {
        WebKit::LogStream::fRAMELOADER_PREPAREFORLOADSTART(this, *buf, *&buf[8], *&buf[16]);
      }

      goto LABEL_784;
    case 0xA9:
      IPC::Decoder::decode<std::tuple<unsigned long long,unsigned long long,int>>(buf, a3);
      if (v324 == 1)
      {
        WebKit::LogStream::fRAMELOADER_RELOAD(this, *buf, *&buf[8], *&buf[16]);
      }

      goto LABEL_784;
    case 0xAA:
      IPC::Decoder::decode<std::tuple<unsigned long long,unsigned long long,int,unsigned long long,unsigned long long>>(buf, a3);
      if (v326 == 1)
      {
        WebKit::LogStream::fRAMELOADER_SETDOCUMENTLOADER(this, *buf, *&buf[8], *&buf[16], v324, *v325);
      }

      goto LABEL_784;
    case 0xAB:
      IPC::Decoder::decode<std::tuple<unsigned long long,unsigned long long,int,unsigned long long,unsigned long long>>(buf, a3);
      if (v326 == 1)
      {
        WebKit::LogStream::fRAMELOADER_SETPOLICYDOCUMENTLOADER(this, *buf, *&buf[8], *&buf[16], v324, *v325);
      }

      goto LABEL_784;
    case 0xAC:
      IPC::Decoder::decode<std::tuple<unsigned long long,unsigned long long,int,unsigned long long,unsigned long long>>(buf, a3);
      if (v326 == 1)
      {
        WebKit::LogStream::fRAMELOADER_SETPROVISIONALDOCUMENTLOADER(this, *buf, *&buf[8], *&buf[16], v324, *v325);
      }

      goto LABEL_784;
    case 0xAD:
      IPC::Decoder::decode<std::tuple<unsigned long long,unsigned long long,int>>(buf, a3);
      if (v324 == 1)
      {
        WebKit::LogStream::fRAMELOADER_SETSTATE_MAIN_FRAME_LOAD_COMPLETED(this, *buf, *&buf[8], *&buf[16]);
      }

      goto LABEL_784;
    case 0xAE:
      IPC::Decoder::decode<std::tuple<unsigned long long,unsigned long long,int,unsigned long long,unsigned long long>>(buf, a3);
      if (v326 == 1)
      {
        WebKit::LogStream::fRAMELOADER_STOPALLLOADERS(this, *buf, *&buf[8], *&buf[16], v324, *v325);
      }

      goto LABEL_784;
    case 0xAF:
      IPC::Decoder::decode<std::tuple<unsigned long long,unsigned long long,int,unsigned long long>>(buf, a3);
      if (LOBYTE(v325[0]) == 1)
      {
        WebKit::LogStream::fRAMELOADER_STOPALLLOADERS_CLEARING_PROVISIONAL_DOCUMENT_LOADER(this, *buf, *&buf[8], *&buf[16], v324);
      }

      goto LABEL_784;
    case 0xB0:
      IPC::Decoder::decode<std::tuple<unsigned long long,unsigned long long,int,unsigned long long>>(buf, a3);
      if (LOBYTE(v325[0]) == 1)
      {
        WebKit::LogStream::fRAMELOADER_TRANSITIONTOCOMMITTED(this, *buf, *&buf[8], *&buf[16], v324);
      }

      goto LABEL_784;
    case 0xB1:
      IPC::Decoder::decode<std::tuple<unsigned long long,WTF::CString,WTF::CString>>(buf, a3);
      if (v324 != 1)
      {
        goto LABEL_784;
      }

      WebKit::LogStream::hTMLMEDIAELEMENT_ADDAUDIOTRACK(this, *buf, &buf[8], &buf[16]);
      goto LABEL_505;
    case 0xB2:
      IPC::Decoder::decode<std::tuple<unsigned long long,WTF::CString,WTF::CString>>(buf, a3);
      if (v324 != 1)
      {
        goto LABEL_784;
      }

      WebKit::LogStream::hTMLMEDIAELEMENT_ADDVIDEOTRACK(this, *buf, &buf[8], &buf[16]);
LABEL_505:
      if (v324)
      {
        goto LABEL_506;
      }

      goto LABEL_784;
    case 0xB7:
      v213 = IPC::Decoder::decode<std::tuple<unsigned long long>>(a3);
      if (v7)
      {
        WebKit::LogStream::hTMLMEDIAELEMENT_CONSTRUCTOR(this, v213);
      }

      goto LABEL_784;
    case 0xB8:
      v105 = IPC::Decoder::decode<std::tuple<unsigned long long>>(a3);
      if (v7)
      {
        WebKit::LogStream::hTMLMEDIAELEMENT_CREATEMEDIAPLAYER(this, v105);
      }

      goto LABEL_784;
    case 0xB9:
      v204 = *(a3 + 1);
      v205 = ((*(a3 + 2) + 7) & 0xFFFFFFFFFFFFFFF8);
      v206 = *a3;
      v207 = v205 - *a3;
      v17 = v204 >= v207;
      v208 = v204 - v207;
      if (!v17 || v208 <= 7)
      {
        goto LABEL_794;
      }

      *(a3 + 2) = v205 + 1;
      if (!v205)
      {
        goto LABEL_796;
      }

      v210 = *v205;
      v211 = (v205 + 11) & 0xFFFFFFFFFFFFFFF8;
      if (v204 >= v211 - v206 && v204 - (v211 - v206) > 3)
      {
        *(a3 + 2) = v211 | 4;
        if (v211)
        {
          WebKit::LogStream::hTMLMEDIAELEMENT_CURRENTMEDIATIME_SEEKING(this, v210, *v211);
          goto LABEL_784;
        }
      }

      else
      {
LABEL_794:
        *a3 = 0;
        *(a3 + 1) = 0;
        v305 = *(a3 + 3);
        if (v305)
        {
          if (v204)
          {
            (*(*v305 + 16))(v305);
            v204 = *(a3 + 1);
          }
        }

        else
        {
          v204 = 0;
        }
      }

LABEL_796:
      *a3 = 0;
      *(a3 + 1) = 0;
      v306 = *(a3 + 3);
      if (v306 && v204)
      {
        (*(*v306 + 16))(v306);
      }

      v7 = *a3;
      v8 = *(a3 + 1);
      *a3 = 0;
      *(a3 + 1) = 0;
      v216 = *(a3 + 3);
      if (v216)
      {
        goto LABEL_750;
      }

      goto LABEL_784;
    case 0xBA:
      v35 = IPC::Decoder::decode<std::tuple<unsigned long long>>(a3);
      if (v7)
      {
        WebKit::LogStream::hTMLMEDIAELEMENT_DESTRUCTOR(this, v35);
      }

      goto LABEL_784;
    case 0xBB:
      v200 = IPC::Decoder::decode<std::tuple<unsigned long long>>(a3);
      if (v7)
      {
        WebKit::LogStream::hTMLMEDIAELEMENT_DIDFINISHINSERTINGNODE(this, v200);
      }

      goto LABEL_784;
    case 0xBC:
      v125 = IPC::Decoder::decode<std::tuple<unsigned long long>>(a3);
      if (v7)
      {
        WebKit::LogStream::hTMLMEDIAELEMENT_INSERTEDINTOANCESTOR(this, v125);
      }

      goto LABEL_784;
    case 0xC0:
      IPC::Decoder::decode<std::tuple<unsigned long long,WTF::CString>>(buf, a3);
      if (buf[16] != 1)
      {
        goto LABEL_784;
      }

      WebKit::LogStream::hTMLMEDIAELEMENT_MEDIAPLAYERENGINEUPDATED(this, *buf, &buf[8]);
LABEL_74:
      if ((buf[16] & 1) == 0)
      {
        goto LABEL_784;
      }

      goto LABEL_509;
    case 0xC1:
      IPC::Decoder::decode<std::tuple<unsigned long long,double>>(buf, a3);
      if (buf[16] == 1)
      {
        WebKit::LogStream::hTMLMEDIAELEMENT_MEDIAPLAYERRATECHANGED(this, *buf, *&buf[8]);
      }

      goto LABEL_784;
    case 0xC3:
      v12 = IPC::Decoder::decode<std::tuple<unsigned long long>>(a3);
      if (v7)
      {
        WebKit::LogStream::hTMLMEDIAELEMENT_MEDIAPLAYERTIMECHANGED(this, v12);
      }

      goto LABEL_784;
    case 0xC6:
      v202 = IPC::Decoder::decode<std::tuple<unsigned long long>>(a3);
      if (v7)
      {
        WebKit::LogStream::hTMLMEDIAELEMENT_PLAY(this, v202);
      }

      goto LABEL_784;
    case 0xC7:
      v203 = IPC::Decoder::decode<std::tuple<unsigned long long>>(a3);
      if (v7)
      {
        WebKit::LogStream::hTMLMEDIAELEMENT_PLAYINTERNAL(this, v203);
      }

      goto LABEL_784;
    case 0xCA:
      v36 = IPC::Decoder::decode<std::tuple<unsigned long long>>(a3);
      if (v7)
      {
        WebKit::LogStream::hTMLMEDIAELEMENT_REMOVEDFROMANCESTOR(this, v36);
      }

      goto LABEL_784;
    case 0xD8:
      IPC::Decoder::decode<std::tuple<unsigned long long,unsigned char>>(buf, a3);
      if (buf[16] == 1)
      {
        WebKit::LogStream::hTMLMEDIAELEMENT_SETBUFFERINGPOLICY(this, *buf, buf[8]);
      }

      goto LABEL_784;
    case 0xDD:
      IPC::Decoder::decode<std::tuple<unsigned long long,unsigned char>>(buf, a3);
      if (buf[16] == 1)
      {
        WebKit::LogStream::hTMLMEDIAELEMENT_SETSHOULDDELAYLOADEVENT(this, *buf, buf[8]);
      }

      goto LABEL_784;
    case 0xE0:
      v129 = *(a3 + 1);
      v130 = ((*(a3 + 2) + 7) & 0xFFFFFFFFFFFFFFF8);
      v131 = *a3;
      v132 = v130 - *a3;
      v17 = v129 >= v132;
      v133 = v129 - v132;
      if (!v17 || v133 <= 7)
      {
        goto LABEL_752;
      }

      *(a3 + 2) = v130 + 1;
      if (!v130)
      {
        goto LABEL_754;
      }

      v135 = *v130;
      v136 = (v130 + 11) & 0xFFFFFFFFFFFFFFF8;
      if (v129 < v136 - v131 || v129 - (v136 - v131) <= 3)
      {
LABEL_752:
        *a3 = 0;
        *(a3 + 1) = 0;
        v291 = *(a3 + 3);
        if (v291)
        {
          if (v129)
          {
            (*(*v291 + 16))(v291);
            v129 = *(a3 + 1);
          }
        }

        else
        {
          v129 = 0;
        }

LABEL_754:
        *a3 = 0;
        *(a3 + 1) = 0;
        v292 = *(a3 + 3);
        if (!v292)
        {
          goto LABEL_765;
        }

        goto LABEL_859;
      }

      v138 = (v136 | 4);
      *(a3 + 2) = v136 | 4;
      if (!v136)
      {
        goto LABEL_754;
      }

      if (v129 >= v138 - v131 && v129 - (v138 - v131) > 3)
      {
        v140 = *v136;
        *(a3 + 2) = v136 + 8;
        WebKit::LogStream::hTMLMEDIAELEMENT_UPDATEPLAYSTATE(this, v135, v140, *v138);
        goto LABEL_784;
      }

      *a3 = 0;
      *(a3 + 1) = 0;
      v297 = *(a3 + 3);
      if (v297)
      {
        if (v129)
        {
          (*(*v297 + 16))(v297);
          v129 = *(a3 + 1);
          v292 = *(a3 + 3);
          *a3 = 0;
          *(a3 + 1) = 0;
          if (v292)
          {
LABEL_859:
            if (v129)
            {
              (*(*v292 + 16))(v292);
            }
          }
        }
      }

LABEL_765:
      v7 = *a3;
      v8 = *(a3 + 1);
      *a3 = 0;
      *(a3 + 1) = 0;
      v216 = *(a3 + 3);
      if (v216)
      {
        goto LABEL_750;
      }

      goto LABEL_784;
    case 0xE1:
      IPC::Decoder::decode<std::tuple<unsigned long long,int>>(buf, a3);
      if (buf[16] == 1)
      {
        WebKit::LogStream::hTMLMEDIAELEMENT_VISIBILITYSTATECHANGED(this, *buf, *&buf[8]);
      }

      goto LABEL_784;
    case 0xE8:
      IPC::ArgumentCoder<std::span<unsigned char const,18446744073709551615ul>,void>::decode<IPC::Decoder>(a3, &v315);
      if ((v317 & 1) == 0)
      {
        v268 = *a3;
        v269 = *(a3 + 1);
        *a3 = 0;
        *(a3 + 1) = 0;
        v270 = *(a3 + 3);
        if (!v270 || v269 == 0)
        {
          goto LABEL_717;
        }

        (*(*v270 + 16))(v270, v268);
        if ((v317 & 1) == 0)
        {
          goto LABEL_717;
        }
      }

      IPC::ArgumentCoder<std::span<unsigned char const,18446744073709551615ul>,void>::decode<IPC::Decoder>(a3, &v318);
      if ((v320 & 1) == 0)
      {
        v272 = *a3;
        v273 = *(a3 + 1);
        *a3 = 0;
        *(a3 + 1) = 0;
        v274 = *(a3 + 3);
        if (!v274)
        {
          goto LABEL_717;
        }

        if (!v273)
        {
          goto LABEL_717;
        }

        (*(*v274 + 16))(v274, v272);
        if ((v320 & 1) == 0)
        {
          goto LABEL_717;
        }
      }

      v9 = IPC::ArgumentCoder<std::span<unsigned char const,18446744073709551615ul>,void>::decode<IPC::Decoder>(a3, buf);
      if ((buf[16] & 1) == 0)
      {
        v275 = *a3;
        v276 = *(a3 + 1);
        *a3 = 0;
        *(a3 + 1) = 0;
        v277 = *(a3 + 3);
        if (!v277)
        {
          goto LABEL_717;
        }

        if (!v276)
        {
          goto LABEL_717;
        }

        v9 = (*(*v277 + 16))(v277, v275);
        if ((buf[16] & 1) == 0)
        {
          goto LABEL_717;
        }
      }

      v10 = *(a3 + 1);
      v11 = *(a3 + 2);
      v7 = *a3;
      if (v10 <= &v11[-*a3])
      {
        *a3 = 0;
        *(a3 + 1) = 0;
        v307 = *(a3 + 3);
        if (v307)
        {
          if (v10)
          {
            (*(*v307 + 16))(v307);
            v10 = *(a3 + 1);
          }
        }

        else
        {
          v10 = 0;
        }
      }

      else
      {
        *(a3 + 2) = v11 + 1;
        if (v11)
        {
          if (v317 & 1) != 0 && (v320)
          {
            WebKit::LogStream::logOnBehalfOfWebContent(this, v315, v316, v318, v319, *buf, *&buf[8], *v11);
            goto LABEL_784;
          }

          __break(1u);
          goto LABEL_698;
        }
      }

      *a3 = 0;
      *(a3 + 1) = 0;
      v308 = *(a3 + 3);
      if (v308 && v10)
      {
        (*(*v308 + 16))(v308);
      }

LABEL_717:
      v7 = *a3;
      v8 = *(a3 + 1);
      *a3 = 0;
      *(a3 + 1) = 0;
      v216 = *(a3 + 3);
      if (!v216)
      {
        goto LABEL_784;
      }

      goto LABEL_540;
    case 0xE9:
      WebKit::LogStream::mEDIAPLAYERPRIVATEREMOTE_LAYERHOSTINGCONTEXTCHANGED(this);
      goto LABEL_784;
    case 0xEA:
      v75 = IPC::Decoder::decode<std::tuple<unsigned long long>>(a3);
      if (v7)
      {
        WebKit::LogStream::mEDIASESSIONMANAGERCOCOA_CLIENTCHARACTERISTICSCHANGED(this, v75);
      }

      goto LABEL_784;
    case 0xEB:
      WebKit::LogStream::mEDIASESSIONMANAGERCOCOA_SESSIONCANPRODUCEAUDIOCHANGED(this);
      goto LABEL_784;
    case 0xEC:
      v13 = *(a3 + 1);
      v14 = ((*(a3 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
      v15 = *a3;
      v16 = v14 - *a3;
      v17 = v13 >= v16;
      v18 = v13 - v16;
      if (!v17 || v18 <= 3)
      {
        goto LABEL_719;
      }

      *(a3 + 2) = v14 + 1;
      if (!v14)
      {
        goto LABEL_721;
      }

      v20 = *v14;
      v21 = ((v14 + 7) & 0xFFFFFFFFFFFFFFFCLL);
      if (v13 < v21 - v15 || v13 - (v21 - v15) <= 3)
      {
        goto LABEL_719;
      }

      *(a3 + 2) = v21 + 1;
      if (!v21)
      {
        goto LABEL_721;
      }

      v23 = *v21;
      v24 = ((v21 + 7) & 0xFFFFFFFFFFFFFFFCLL);
      if (v13 < v24 - v15 || v13 - (v24 - v15) <= 3)
      {
        goto LABEL_719;
      }

      *(a3 + 2) = v24 + 1;
      if (!v24)
      {
        goto LABEL_721;
      }

      v26 = *v24;
      v27 = ((v24 + 7) & 0xFFFFFFFFFFFFFFFCLL);
      if (v13 < v27 - v15 || v13 - (v27 - v15) <= 3)
      {
        goto LABEL_719;
      }

      *(a3 + 2) = v27 + 1;
      if (!v27)
      {
        goto LABEL_721;
      }

      v29 = *v27;
      v30 = ((v27 + 7) & 0xFFFFFFFFFFFFFFFCLL);
      if (v13 < v30 - v15 || v13 - (v30 - v15) <= 3)
      {
        goto LABEL_719;
      }

      *(a3 + 2) = v30 + 1;
      if (!v30)
      {
        goto LABEL_721;
      }

      v32 = *v30;
      v33 = ((v30 + 7) & 0xFFFFFFFFFFFFFFFCLL);
      if (v13 >= v33 - v15 && v13 - (v33 - v15) > 3)
      {
        *(a3 + 2) = v33 + 1;
        if (v33)
        {
          WebKit::LogStream::mEDIASESSIONMANAGERCOCOA_UPDATESESSIONSTATE(this, v20, v23, v26, v29, v32, *v33);
          goto LABEL_784;
        }
      }

      else
      {
LABEL_719:
        *a3 = 0;
        *(a3 + 1) = 0;
        v278 = *(a3 + 3);
        if (v278)
        {
          if (v13)
          {
            (*(*v278 + 16))(v278);
            v13 = *(a3 + 1);
          }
        }

        else
        {
          v13 = 0;
        }
      }

LABEL_721:
      *a3 = 0;
      *(a3 + 1) = 0;
      v279 = *(a3 + 3);
      if (v279 && v13)
      {
        (*(*v279 + 16))(v279);
      }

      v7 = *a3;
      v8 = *(a3 + 1);
      *a3 = 0;
      *(a3 + 1) = 0;
      v216 = *(a3 + 3);
      if (v216)
      {
        goto LABEL_750;
      }

      goto LABEL_784;
    case 0xF4:
      v199 = IPC::Decoder::decode<std::tuple<unsigned long long>>(a3);
      if (v7)
      {
        WebKit::LogStream::pLATFORMMEDIASESSIONMANAGER_ADDSESSION(this, v199);
      }

      goto LABEL_784;
    case 0xF5:
      WebKit::LogStream::pLATFORMMEDIASESSIONMANAGER_MAYBEACTIVATEAUDIOSESSION_ACTIVE_SESSION_NOT_REQUIRED(this);
      goto LABEL_784;
    case 0xF6:
      v126 = IPC::Decoder::decode<std::tuple<unsigned long long>>(a3);
      if (v7)
      {
        WebKit::LogStream::pLATFORMMEDIASESSIONMANAGER_REMOVESESSION(this, v126);
      }

      goto LABEL_784;
    case 0xF7:
      WebKit::LogStream::pLATFORMMEDIASESSIONMANAGER_SESSIONCANPRODUCEAUDIOCHANGED(this);
      goto LABEL_784;
    case 0xF8:
      v198 = IPC::Decoder::decode<std::tuple<unsigned long long>>(a3);
      if (v7)
      {
        WebKit::LogStream::pLATFORMMEDIASESSIONMANAGER_SESSIONWILLENDPLAYBACK(this, v198);
      }

      goto LABEL_784;
    case 0xF9:
      WebKit::LogStream::pLATFORM_INITIALIZE_WEBPROCESS(this);
      goto LABEL_784;
    case 0xFC:
      v181 = IPC::Decoder::decode<unsigned long long>(a3);
      if ((v182 & 1) == 0)
      {
        goto LABEL_779;
      }

      v183 = *(a3 + 1);
      v184 = ((*(a3 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
      v185 = *a3;
      v186 = v184 - *a3;
      v17 = v183 >= v186;
      v187 = v183 - v186;
      if (!v17 || v187 <= 3)
      {
        goto LABEL_756;
      }

      *(a3 + 2) = v184 + 1;
      if (!v184)
      {
        goto LABEL_758;
      }

      v189 = *v184;
      v190 = ((v184 + 11) & 0xFFFFFFFFFFFFFFF8);
      if (v183 < v190 - v185 || v183 - (v190 - v185) <= 7)
      {
        goto LABEL_756;
      }

      *(a3 + 2) = v190 + 1;
      if (!v190)
      {
        goto LABEL_758;
      }

      v192 = *v190;
      v193 = (v190 + 11) & 0xFFFFFFFFFFFFFFF8;
      if (v183 < v193 - v185 || v183 - (v193 - v185) <= 3)
      {
LABEL_756:
        *a3 = 0;
        *(a3 + 1) = 0;
        v293 = *(a3 + 3);
        if (v293)
        {
          if (v183)
          {
            (*(*v293 + 16))(v293);
            v183 = *(a3 + 1);
          }
        }

        else
        {
          v183 = 0;
        }

LABEL_758:
        *a3 = 0;
        *(a3 + 1) = 0;
        v294 = *(a3 + 3);
        if (!v294)
        {
          goto LABEL_779;
        }

        goto LABEL_869;
      }

      v195 = (v193 | 4);
      *(a3 + 2) = v193 | 4;
      if (!v193)
      {
        goto LABEL_758;
      }

      if (v183 >= v195 - v185 && v183 - (v195 - v185) > 3)
      {
        v197 = *v193;
        *(a3 + 2) = v193 + 8;
        WebKit::LogStream::pROGRESSTRACKER_FINALPROGRESSCOMPLETE(this, *&v181, v189, v192, v197, *v195);
        goto LABEL_784;
      }

      *a3 = 0;
      *(a3 + 1) = 0;
      v301 = *(a3 + 3);
      if (v301)
      {
        if (v183)
        {
          (*(*v301 + 16))(v301);
          v183 = *(a3 + 1);
          v294 = *(a3 + 3);
          *a3 = 0;
          *(a3 + 1) = 0;
          if (v294)
          {
LABEL_869:
            if (v183)
            {
              (*(*v294 + 16))(v294);
            }
          }
        }
      }

LABEL_779:
      v7 = *a3;
      v8 = *(a3 + 1);
      *a3 = 0;
      *(a3 + 1) = 0;
      v216 = *(a3 + 3);
      if (v216)
      {
        v302 = v8 == 0;
      }

      else
      {
        v302 = 1;
      }

      if (!v302)
      {
        goto LABEL_679;
      }

      goto LABEL_784;
    case 0xFD:
      IPC::Decoder::decode<std::tuple<unsigned long long,double,int,unsigned long long,int>>(buf, a3);
      if (v326 == 1)
      {
        WebKit::LogStream::pROGRESSTRACKER_PROGRESSCOMPLETED(this, *buf, *&buf[8], *&buf[16], v324, v325[0]);
      }

      goto LABEL_784;
    case 0xFE:
      IPC::Decoder::decode<std::tuple<unsigned long long,double,int,unsigned long long,int>>(buf, a3);
      if (v326 == 1)
      {
        WebKit::LogStream::pROGRESSTRACKER_PROGRESSSTARTED(this, *buf, *&buf[8], *&buf[16], v324, v325[0]);
      }

      goto LABEL_784;
    case 0xFF:
      WebKit::LogStream::rECEIVED_LAUNCH_SERVICES_DATABASE(this);
      goto LABEL_784;
    case 0x100:
      IPC::Decoder::decode<std::tuple<unsigned long long,unsigned long long,unsigned long long>>(buf, a3);
      if (v324 == 1)
      {
        WebKit::LogStream::rEMOTE_RENDERING_BACKEND_PROXY_CREATED_RENDERING_BACKEND(this, *buf, *&buf[8], *&buf[16]);
      }

      goto LABEL_784;
    case 0x101:
      IPC::Decoder::decode<std::tuple<unsigned long long,unsigned long long,unsigned long long>>(buf, a3);
      if (v324 == 1)
      {
        WebKit::LogStream::rESOURCELOADER_WILLSENDREQUESTINTERNAL(this, *buf, *&buf[8], *&buf[16]);
      }

      goto LABEL_784;
    case 0x103:
      IPC::Decoder::decode<std::tuple<unsigned long long,unsigned long long,unsigned long long,int,int>>(buf, a3);
      if (LOBYTE(v325[0]) == 1)
      {
        WebKit::LogStream::sUBRESOURCELOADER_DIDFAIL(this, *buf, *&buf[8], *&buf[16], v324, SHIDWORD(v324));
      }

      goto LABEL_784;
    case 0x104:
      IPC::Decoder::decode<std::tuple<unsigned long long,unsigned long long,unsigned long long>>(buf, a3);
      if (v324 == 1)
      {
        WebKit::LogStream::sUBRESOURCELOADER_DIDFINISHLOADING(this, *buf, *&buf[8], *&buf[16]);
      }

      goto LABEL_784;
    case 0x105:
      IPC::Decoder::decode<std::tuple<unsigned long long,unsigned long long,unsigned long long>>(buf, a3);
      if (v324 == 1)
      {
        WebKit::LogStream::sUBRESOURCELOADER_DIDFINISHLOADING_CANCELED(this, *buf, *&buf[8], *&buf[16]);
      }

      goto LABEL_784;
    case 0x106:
      IPC::Decoder::decode<std::tuple<unsigned long long,unsigned long long,unsigned long long>>(buf, a3);
      if (v324 == 1)
      {
        WebKit::LogStream::sUBRESOURCELOADER_DIDFINISHLOADING_DID_NOT_REACH_TERMINAL_STATE(this, *buf, *&buf[8], *&buf[16]);
      }

      goto LABEL_784;
    case 0x107:
      IPC::Decoder::decode<std::tuple<unsigned long long,unsigned long long,unsigned long long>>(buf, a3);
      if (v324 == 1)
      {
        WebKit::LogStream::sUBRESOURCELOADER_DIDFINISHLOADING_REACHED_TERMINAL_STATE(this, *buf, *&buf[8], *&buf[16]);
      }

      goto LABEL_784;
    case 0x108:
      IPC::Decoder::decode<std::tuple<unsigned long long,unsigned long long,unsigned long long>>(buf, a3);
      if (v324 == 1)
      {
        WebKit::LogStream::sUBRESOURCELOADER_DIDRECEIVERESPONSE_CANCELING_LOAD_BECAUSE_OF_CROSS_ORIGIN_ACCESS_CONTROL(this, *buf, *&buf[8], *&buf[16]);
      }

      goto LABEL_784;
    case 0x109:
      IPC::Decoder::decode<std::tuple<unsigned long long,unsigned long long,unsigned long long>>(buf, a3);
      if (v324 == 1)
      {
        WebKit::LogStream::sUBRESOURCELOADER_DIDRECEIVERESPONSE_CANCELING_LOAD_BECAUSE_OF_MULTIPART_NON_IMAGE(this, *buf, *&buf[8], *&buf[16]);
      }

      goto LABEL_784;
    case 0x10A:
      IPC::Decoder::decode<std::tuple<unsigned long long,unsigned long long,unsigned long long>>(buf, a3);
      if (v324 == 1)
      {
        WebKit::LogStream::sUBRESOURCELOADER_DIDRECEIVERESPONSE_CANCELING_LOAD_BLOCKED_BY_CONTENT_POLICY(this, *buf, *&buf[8], *&buf[16]);
      }

      goto LABEL_784;
    case 0x10B:
      IPC::Decoder::decode<std::tuple<unsigned long long,unsigned long long,unsigned long long>>(buf, a3);
      if (v324 == 1)
      {
        WebKit::LogStream::sUBRESOURCELOADER_DIDRECEIVERESPONSE_CANCELING_LOAD_RECEIVED_UNEXPECTED_RANGE_RESPONSE(this, *buf, *&buf[8], *&buf[16]);
      }

      goto LABEL_784;
    case 0x10C:
      IPC::Decoder::decode<std::tuple<unsigned long long,unsigned long long,unsigned long long,int,int>>(buf, a3);
      if (LOBYTE(v325[0]) == 1)
      {
        WebKit::LogStream::sUBRESOURCELOADER_WILLCANCEL(this, *buf, *&buf[8], *&buf[16], v324, SHIDWORD(v324));
      }

      goto LABEL_784;
    case 0x10D:
      IPC::Decoder::decode<std::tuple<unsigned long long,unsigned long long,unsigned long long>>(buf, a3);
      if (v324 == 1)
      {
        WebKit::LogStream::sUBRESOURCELOADER_WILLSENDREQUESTINTERNAL(this, *buf, *&buf[8], *&buf[16]);
      }

      goto LABEL_784;
    case 0x10E:
      IPC::Decoder::decode<std::tuple<unsigned long long,unsigned long long,unsigned long long>>(buf, a3);
      if (v324 == 1)
      {
        WebKit::LogStream::sUBRESOURCELOADER_WILLSENDREQUESTINTERNAL_CANCELLED_INVALID_NEW_REQUEST(this, *buf, *&buf[8], *&buf[16]);
      }

      goto LABEL_784;
    case 0x10F:
      IPC::Decoder::decode<std::tuple<unsigned long long,unsigned long long,unsigned long long>>(buf, a3);
      if (v324 == 1)
      {
        WebKit::LogStream::sUBRESOURCELOADER_WILLSENDREQUESTINTERNAL_CANCELLED_INVALID_REQUEST(this, *buf, *&buf[8], *&buf[16]);
      }

      goto LABEL_784;
    case 0x110:
      IPC::Decoder::decode<std::tuple<unsigned long long,unsigned long long,unsigned long long>>(buf, a3);
      if (v324 == 1)
      {
        WebKit::LogStream::sUBRESOURCELOADER_WILLSENDREQUESTINTERNAL_CANCELLED_TERMINAL_STATE(this, *buf, *&buf[8], *&buf[16]);
      }

      goto LABEL_784;
    case 0x111:
      IPC::Decoder::decode<std::tuple<unsigned long long,unsigned long long,unsigned long long>>(buf, a3);
      if (v324 == 1)
      {
        WebKit::LogStream::sUBRESOURCELOADER_WILLSENDREQUESTINTERNAL_REACHED_TERMINAL_STATE(this, *buf, *&buf[8], *&buf[16]);
      }

      goto LABEL_784;
    case 0x112:
      IPC::Decoder::decode<std::tuple<unsigned long long,unsigned long long,unsigned long long>>(buf, a3);
      if (v324 == 1)
      {
        WebKit::LogStream::sUBRESOURCELOADER_WILLSENDREQUESTINTERNAL_RESOURCELOAD_CANCELLED_REDIRECT_NOT_ALLOWED(this, *buf, *&buf[8], *&buf[16]);
      }

      goto LABEL_784;
    case 0x113:
      IPC::Decoder::decode<std::tuple<unsigned long long,unsigned long long,unsigned long long>>(buf, a3);
      if (v324 == 1)
      {
        WebKit::LogStream::sUBRESOURCELOADER_WILLSENDREQUESTINTERNAL_RESOURCELOAD_FINISHED(this, *buf, *&buf[8], *&buf[16]);
      }

      goto LABEL_784;
    case 0x114:
      IPC::Decoder::decode<std::tuple<unsigned long long,unsigned long long,unsigned long long>>(buf, a3);
      if (v324 == 1)
      {
        WebKit::LogStream::sUBRESOURCELOADER_WILLSENDREQUESTINTERNAL_RESOURCE_DONE_NOTIFYING_CLIENTS(this, *buf, *&buf[8], *&buf[16]);
      }

      goto LABEL_784;
    case 0x115:
      IPC::Decoder::decode<std::tuple<unsigned long long,unsigned long long,unsigned long long>>(buf, a3);
      if (v324 == 1)
      {
        WebKit::LogStream::sUBRESOURCELOADER_WILLSENDREQUESTINTERNAL_RESOURCE_LOAD_CANCELLED_AFTER_IMAGE_BEING_DEFERRED(this, *buf, *&buf[8], *&buf[16]);
      }

      goto LABEL_784;
    case 0x116:
      IPC::Decoder::decode<std::tuple<unsigned long long,unsigned long long,unsigned long long>>(buf, a3);
      if (v324 == 1)
      {
        WebKit::LogStream::sUBRESOURCELOADER_WILLSENDREQUESTINTERNAL_RESOURCE_LOAD_CANCELLED_AFTER_REDIRECT_DENIED_BY_CORS_POLICY(this, *buf, *&buf[8], *&buf[16]);
      }

      goto LABEL_784;
    case 0x117:
      IPC::Decoder::decode<std::tuple<unsigned long long,unsigned long long,unsigned long long>>(buf, a3);
      if (v324 == 1)
      {
        WebKit::LogStream::sUBRESOURCELOADER_WILLSENDREQUESTINTERNAL_RESOURCE_LOAD_CANCELLED_AFTER_USING_BLOCKED_PORT(this, *buf, *&buf[8], *&buf[16]);
      }

      goto LABEL_784;
    case 0x118:
      IPC::Decoder::decode<std::tuple<unsigned long long,unsigned long long,unsigned long long>>(buf, a3);
      if (v324 == 1)
      {
        WebKit::LogStream::sUBRESOURCELOADER_WILLSENDREQUESTINTERNAL_RESOURCE_LOAD_CANCELLED_CANNOT_REQUEST_AFTER_REDIRECTION(this, *buf, *&buf[8], *&buf[16]);
      }

      goto LABEL_784;
    case 0x119:
      IPC::Decoder::decode<std::tuple<unsigned long long,unsigned long long,unsigned long long>>(buf, a3);
      if (v324 == 1)
      {
        WebKit::LogStream::sUBRESOURCELOADER_WILLSENDREQUESTINTERNAL_RESOURCE_LOAD_CANCELLED_TOO_MANY_REDIRECTS(this, *buf, *&buf[8], *&buf[16]);
      }

      goto LABEL_784;
    case 0x11A:
      IPC::Decoder::decode<std::tuple<unsigned long long,unsigned long long,unsigned long long>>(buf, a3);
      if (v324 == 1)
      {
        WebKit::LogStream::sUBRESOURCELOADER_WILLSENDREQUESTINTERNAL_RESOURCE_LOAD_COMPLETED(this, *buf, *&buf[8], *&buf[16]);
      }

      goto LABEL_784;
    case 0x11B:
      IPC::Decoder::decode<std::tuple<unsigned long long,unsigned long long,unsigned long long>>(buf, a3);
      if (v324 == 1)
      {
        WebKit::LogStream::sUBRESOURCELOADER_WILLSENDREQUESTINTERNAL_TERMINAL_STATE_CALLING_COMPLETION_HANDLER(this, *buf, *&buf[8], *&buf[16]);
      }

      goto LABEL_784;
    case 0x11C:
      WebKit::LogStream::tIMED_OUT_WAITING_FOR_LAUNCH_SERVICES_DATABASE_UPDATE(this);
      goto LABEL_784;
    case 0x11D:
      v76 = *(a3 + 1);
      v77 = ((*(a3 + 2) + 7) & 0xFFFFFFFFFFFFFFF8);
      v78 = *a3;
      v79 = v77 - *a3;
      v17 = v76 >= v79;
      v80 = v76 - v79;
      if (!v17 || v80 <= 7)
      {
        goto LABEL_741;
      }

      *(a3 + 2) = v77 + 1;
      if (!v77)
      {
        goto LABEL_743;
      }

      v82 = *v77;
      v83 = (v77 + 11) & 0xFFFFFFFFFFFFFFF8;
      if (v76 < v83 - v78 || v76 - (v83 - v78) <= 3)
      {
        goto LABEL_741;
      }

      *(a3 + 2) = v83 | 4;
      if (!v83)
      {
        goto LABEL_743;
      }

      v85 = *v83;
      v86 = ((v83 + 11) & 0xFFFFFFFFFFFFFFF8);
      if (v76 >= v86 - v78 && v76 - (v86 - v78) > 7)
      {
        *(a3 + 2) = v86 + 1;
        if (v86)
        {
          WebKit::LogStream::vIDEOPRESENTATIONMANAGER_SETVIDEOLAYERFRAMEFENCED(this, v82, v85, *v86);
          goto LABEL_784;
        }
      }

      else
      {
LABEL_741:
        *a3 = 0;
        *(a3 + 1) = 0;
        v287 = *(a3 + 3);
        if (v287)
        {
          if (v76)
          {
            (*(*v287 + 16))(v287);
            v76 = *(a3 + 1);
          }
        }

        else
        {
          v76 = 0;
        }
      }

LABEL_743:
      *a3 = 0;
      *(a3 + 1) = 0;
      v288 = *(a3 + 3);
      if (v288 && v76)
      {
        (*(*v288 + 16))(v288);
      }

      v7 = *a3;
      v8 = *(a3 + 1);
      *a3 = 0;
      *(a3 + 1) = 0;
      v216 = *(a3 + 3);
      if (v216)
      {
        goto LABEL_750;
      }

      goto LABEL_784;
    case 0x11E:
      v180 = IPC::Decoder::decode<std::tuple<double>>(a3);
      if (v7)
      {
        WebKit::LogStream::wAITING_FOR_LAUNCH_SERVICES_DATABASE_UPDATE_TOOK_F_SECONDS(this, *&v180);
      }

      goto LABEL_784;
    case 0x120:
      IPC::Decoder::decode<std::tuple<unsigned long long,unsigned long long,WTF::CString>>(buf, a3);
      if (v324 != 1)
      {
        goto LABEL_784;
      }

      WebKit::LogStream::wEBFRAMELOADERCLIENT_DISPATCHDECIDEPOLICYFORNAVIGATIONACTION_GOT_POLICYACTION_FROM_ASYNC_IPC(this, *buf, *&buf[8], &buf[16]);
      goto LABEL_446;
    case 0x121:
      IPC::Decoder::decode<std::tuple<unsigned long long,unsigned long long,WTF::CString>>(buf, a3);
      if (v324 != 1)
      {
        goto LABEL_784;
      }

      WebKit::LogStream::wEBFRAMELOADERCLIENT_DISPATCHDECIDEPOLICYFORNAVIGATIONACTION_GOT_POLICYACTION_FROM_SYNC_IPC(this, *buf, *&buf[8], &buf[16]);
      goto LABEL_446;
    case 0x122:
      v37 = *(a3 + 1);
      v38 = ((*(a3 + 2) + 7) & 0xFFFFFFFFFFFFFFF8);
      v39 = *a3;
      v40 = v38 - *a3;
      v17 = v37 >= v40;
      v41 = v37 - v40;
      if (!v17 || v41 <= 7)
      {
        goto LABEL_789;
      }

      *(a3 + 2) = v38 + 1;
      if (!v38)
      {
        goto LABEL_791;
      }

      v43 = *v38;
      v44 = ((v38 + 15) & 0xFFFFFFFFFFFFFFF8);
      if (v37 < v44 - v39 || v37 - (v44 - v39) <= 7)
      {
        goto LABEL_789;
      }

      v46 = (v44 + 1);
      *(a3 + 2) = v44 + 1;
      if (!v44)
      {
        goto LABEL_791;
      }

      if (v37 <= &v46[-v39])
      {
LABEL_789:
        *a3 = 0;
        *(a3 + 1) = 0;
        v303 = *(a3 + 3);
        if (v303)
        {
          if (v37)
          {
            (*(*v303 + 16))(v303);
            v37 = *(a3 + 1);
          }
        }

        else
        {
          v37 = 0;
        }
      }

      else
      {
        v47 = *v44;
        *(a3 + 2) = v44 + 9;
        if (v44 != -8)
        {
          WebKit::LogStream::wEBFRAMELOADERCLIENT_DISPATCHDECIDEPOLICYFORNAVIGATIONACTION_SYNC_IPC_FAILED(this, v43, v47, *v46);
          goto LABEL_784;
        }
      }

LABEL_791:
      *a3 = 0;
      *(a3 + 1) = 0;
      v304 = *(a3 + 3);
      if (v304 && v37)
      {
        (*(*v304 + 16))(v304);
      }

      v7 = *a3;
      v8 = *(a3 + 1);
      *a3 = 0;
      *(a3 + 1) = 0;
      v216 = *(a3 + 3);
      if (v216)
      {
        goto LABEL_750;
      }

      goto LABEL_784;
    case 0x123:
      IPC::Decoder::decode<std::tuple<unsigned long long,unsigned long long>>(a3, buf);
      if (buf[16] == 1)
      {
        WebKit::LogStream::wEBFRAMELOADERCLIENT_NAVIGATIONACTIONDATA_EMPTY_REQUEST(this, *buf, *&buf[8]);
      }

      goto LABEL_784;
    case 0x124:
      IPC::Decoder::decode<std::tuple<unsigned long long,unsigned long long>>(a3, buf);
      if (buf[16] == 1)
      {
        WebKit::LogStream::wEBFRAMELOADERCLIENT_NAVIGATIONACTIONDATA_NO_FRAME(this, *buf, *&buf[8]);
      }

      goto LABEL_784;
    case 0x125:
      IPC::Decoder::decode<std::tuple<unsigned long long,unsigned long long>>(a3, buf);
      if (buf[16] == 1)
      {
        WebKit::LogStream::wEBFRAMELOADERCLIENT_NAVIGATIONACTIONDATA_NO_WEBPAGE(this, *buf, *&buf[8]);
      }

      goto LABEL_784;
    case 0x126:
      IPC::Decoder::decode<std::tuple<unsigned long long,unsigned long long,unsigned long long>>(buf, a3);
      if (v324 == 1)
      {
        WebKit::LogStream::wEBLOADERSTRATEGY_SCHEDULELOAD(this, *buf, *&buf[8], *&buf[16]);
      }

      goto LABEL_784;
    case 0x127:
      v106 = *(a3 + 1);
      v107 = ((*(a3 + 2) + 7) & 0xFFFFFFFFFFFFFFF8);
      v108 = *a3;
      v109 = v107 - *a3;
      v17 = v106 >= v109;
      v110 = v106 - v109;
      if (!v17 || v110 <= 7)
      {
        goto LABEL_731;
      }

      *(a3 + 2) = v107 + 1;
      if (!v107)
      {
        goto LABEL_733;
      }

      v112 = *v107;
      v113 = ((v107 + 15) & 0xFFFFFFFFFFFFFFF8);
      if (v106 < v113 - v108 || v106 - (v113 - v108) <= 7)
      {
        goto LABEL_731;
      }

      *(a3 + 2) = v113 + 1;
      if (!v113)
      {
        goto LABEL_733;
      }

      v115 = *v113;
      v116 = ((v113 + 15) & 0xFFFFFFFFFFFFFFF8);
      if (v106 < v116 - v108 || v106 - (v116 - v108) <= 7)
      {
        goto LABEL_731;
      }

      *(a3 + 2) = v116 + 1;
      if (!v116)
      {
        goto LABEL_733;
      }

      v118 = *v116;
      v119 = (v116 + 11) & 0xFFFFFFFFFFFFFFF8;
      if (v106 < v119 - v108 || v106 - (v119 - v108) <= 3)
      {
        goto LABEL_731;
      }

      *(a3 + 2) = v119 | 4;
      if (!v119)
      {
        goto LABEL_733;
      }

      v121 = *v119;
      v122 = ((v119 + 11) & 0xFFFFFFFFFFFFFFF8);
      if (v106 >= v122 - v108 && v106 - (v122 - v108) > 7)
      {
        *(a3 + 2) = v122 + 1;
        if (v122)
        {
          WebKit::LogStream::wEBLOADERSTRATEGY_SCHEDULELOAD_RESOURCE_SCHEDULED_WITH_NETWORKPROCESS(this, v112, v115, v118, v121, *v122);
          goto LABEL_784;
        }
      }

      else
      {
LABEL_731:
        *a3 = 0;
        *(a3 + 1) = 0;
        v283 = *(a3 + 3);
        if (v283)
        {
          if (v106)
          {
            (*(*v283 + 16))(v283);
            v106 = *(a3 + 1);
          }
        }

        else
        {
          v106 = 0;
        }
      }

LABEL_733:
      *a3 = 0;
      *(a3 + 1) = 0;
      v284 = *(a3 + 3);
      if (v284 && v106)
      {
        (*(*v284 + 16))(v284);
      }

      v7 = *a3;
      v8 = *(a3 + 1);
      *a3 = 0;
      *(a3 + 1) = 0;
      v216 = *(a3 + 3);
      if (v216)
      {
        goto LABEL_540;
      }

      goto LABEL_784;
    case 0x128:
      IPC::Decoder::decode<std::tuple<unsigned long long,unsigned long long,unsigned long long>>(buf, a3);
      if (v324 == 1)
      {
        WebKit::LogStream::wEBLOADERSTRATEGY_SCHEDULELOAD_URL_LOADED_AS_DATA(this, *buf, *&buf[8], *&buf[16]);
      }

      goto LABEL_784;
    case 0x129:
      IPC::Decoder::decode<std::tuple<unsigned long long,unsigned long long>>(a3, buf);
      if (buf[16] == 1)
      {
        WebKit::LogStream::wEBLOCALFRAMELOADERCLIENT_COMPLETE_PAGE_TRANSITION_IF_NEEDED(this, *buf, *&buf[8]);
      }

      goto LABEL_784;
    case 0x12A:
      IPC::Decoder::decode<std::tuple<unsigned long long,unsigned long long>>(a3, buf);
      if (buf[16] == 1)
      {
        WebKit::LogStream::wEBLOCALFRAMELOADERCLIENT_DISPATCH_DID_FIRST_LAYOUT_FOR_FRAME(this, *buf, *&buf[8]);
      }

      goto LABEL_784;
    case 0x12B:
      IPC::Decoder::decode<std::tuple<unsigned long long,unsigned long long>>(a3, buf);
      if (buf[16] == 1)
      {
        WebKit::LogStream::wEBLOCALFRAMELOADERCLIENT_DISPATCH_DID_FIRST_VISUALLY_NONEMPTY_LAYOUT(this, *buf, *&buf[8]);
      }

      goto LABEL_784;
    case 0x12C:
      IPC::Decoder::decode<std::tuple<unsigned long long,unsigned long long,WTF::CString>>(buf, a3);
      if (v324 != 1)
      {
        goto LABEL_784;
      }

      WebKit::LogStream::wEBLOCALFRAMELOADERCLIENT_DISPATCH_DID_REACH_LAYOUT_MILESTONE(this, *buf, *&buf[8], &buf[16]);
LABEL_446:
      if ((v324 & 1) == 0)
      {
        goto LABEL_784;
      }

      v9 = *&buf[16];
      *&buf[16] = 0;
      if (!v9)
      {
        goto LABEL_784;
      }

      goto LABEL_510;
    case 0x12D:
      v88 = IPC::Decoder::decode<std::tuple<unsigned long long>>(a3);
      if (v7)
      {
        WebKit::LogStream::wEBPAGE_CLOSE(this, v88);
      }

      goto LABEL_784;
    case 0x12E:
      IPC::Decoder::decode<std::tuple<unsigned long long,double>>(buf, a3);
      if (buf[16] == 1)
      {
        WebKit::LogStream::wEBPAGE_FAILED_TO_MARK_ALL_LAYERS_VOLATILE(this, *buf, *&buf[8]);
      }

      goto LABEL_784;
    case 0x12F:
      IPC::Decoder::decode<std::tuple<unsigned long long,int,int,int>>(buf, a3);
      if (v324 == 1)
      {
        WebKit::LogStream::wEBPAGE_FREEZE_LAYER_TREE(this, *buf, *&buf[8], *&buf[12], *&buf[16]);
      }

      goto LABEL_784;
    case 0x130:
      v141 = *(a3 + 1);
      v142 = ((*(a3 + 2) + 7) & 0xFFFFFFFFFFFFFFF8);
      v143 = *a3;
      v144 = v142 - *a3;
      v17 = v141 >= v144;
      v145 = v141 - v144;
      if (!v17 || v145 <= 7)
      {
        goto LABEL_772;
      }

      *(a3 + 2) = v142 + 1;
      if (!v142)
      {
        goto LABEL_775;
      }

      v147 = *v142;
      v148 = ((v142 + 15) & 0xFFFFFFFFFFFFFFF8);
      if (v141 < v148 - v143 || v141 - (v148 - v143) <= 7)
      {
        goto LABEL_772;
      }

      *(a3 + 2) = v148 + 1;
      if (!v148)
      {
        goto LABEL_775;
      }

      v150 = *v148;
      v151 = (v148 + 11) & 0xFFFFFFFFFFFFFFF8;
      if (v141 < v151 - v143 || v141 - (v151 - v143) <= 3)
      {
        goto LABEL_772;
      }

      v153 = (v151 | 4);
      *(a3 + 2) = v151 | 4;
      if (!v151)
      {
        goto LABEL_775;
      }

      if (v141 < v153 - v143 || v141 - (v153 - v143) <= 3)
      {
        *a3 = 0;
        *(a3 + 1) = 0;
        v295 = *(a3 + 3);
        if (!v295)
        {
          goto LABEL_776;
        }

        if (!v141)
        {
          goto LABEL_776;
        }

        (*(*v295 + 16))(v295);
        v143 = *a3;
        v141 = *(a3 + 1);
        v296 = *(a3 + 3);
        *a3 = 0;
        *(a3 + 1) = 0;
        if (!v296)
        {
          goto LABEL_776;
        }

LABEL_839:
        if (v141)
        {
          (*(*v296 + 16))(v296, v143);
        }

LABEL_776:
        v7 = *a3;
        v8 = *(a3 + 1);
        *a3 = 0;
        *(a3 + 1) = 0;
        v216 = *(a3 + 3);
        if (v216)
        {
          goto LABEL_750;
        }

        goto LABEL_784;
      }

      v155 = *v151;
      *(a3 + 2) = v151 + 8;
      v156 = ((v151 + 15) & 0xFFFFFFFFFFFFFFF8);
      if (v141 >= v156 - v143 && v141 - (v156 - v143) > 7)
      {
        v158 = *v153;
        *(a3 + 2) = v156 + 1;
        if (v156)
        {
          WebKit::LogStream::wEBPAGE_LOADREQUEST(this, v147, v150, v155, v158, *v156);
          goto LABEL_784;
        }
      }

      else
      {
LABEL_772:
        *a3 = 0;
        *(a3 + 1) = 0;
        v300 = *(a3 + 3);
        if (!v300)
        {
          v141 = 0;
LABEL_774:
          v143 = 0;
          goto LABEL_775;
        }

        if (!v141)
        {
          goto LABEL_774;
        }

        (*(*v300 + 16))(v300);
        v143 = *a3;
        v141 = *(a3 + 1);
      }

LABEL_775:
      *a3 = 0;
      *(a3 + 1) = 0;
      v296 = *(a3 + 3);
      if (!v296)
      {
        goto LABEL_776;
      }

      goto LABEL_839;
    case 0x131:
      v127 = IPC::Decoder::decode<std::tuple<unsigned long long>>(a3);
      if (v7)
      {
        WebKit::LogStream::wEBPAGE_MARK_LAYERS_VOLATILE(this, v127);
      }

      goto LABEL_784;
    case 0x132:
      IPC::Decoder::decode<std::tuple<unsigned long long,int,int,int>>(buf, a3);
      if (v324 == 1)
      {
        WebKit::LogStream::wEBPAGE_UNFREEZE_LAYER_TREE(this, *buf, *&buf[8], *&buf[12], *&buf[16]);
      }

      goto LABEL_784;
    case 0x133:
      IPC::Decoder::decode<std::tuple<unsigned long long,double>>(buf, a3);
      if (buf[16] == 1)
      {
        WebKit::LogStream::wEBPROCESS_DESTROY_RENDERING_RESOURCES(this, *buf, *&buf[8]);
      }

      goto LABEL_784;
    case 0x134:
      v128 = IPC::Decoder::decode<std::tuple<unsigned long long>>(a3);
      if (v7)
      {
        WebKit::LogStream::wEBPROCESS_FREEZE_ALL_LAYER_TREES(this, v128);
      }

      goto LABEL_784;
    case 0x135:
      v124 = IPC::Decoder::decode<std::tuple<unsigned long long>>(a3);
      if (v7)
      {
        WebKit::LogStream::wEBPROCESS_MARK_ALL_LAYERS_VOLATILE(this, v124);
      }

      goto LABEL_784;
    case 0x136:
      v48 = *(a3 + 1);
      v49 = ((*(a3 + 2) + 7) & 0xFFFFFFFFFFFFFFF8);
      v50 = *a3;
      v51 = v49 - *a3;
      v17 = v48 >= v51;
      v52 = v48 - v51;
      if (!v17 || v52 <= 7)
      {
        goto LABEL_746;
      }

      *(a3 + 2) = v49 + 1;
      if (!v49)
      {
        goto LABEL_748;
      }

      v54 = *v49;
      v55 = (v49 + 11) & 0xFFFFFFFFFFFFFFF8;
      if (v48 < v55 - v50 || v48 - (v55 - v50) <= 3)
      {
LABEL_746:
        *a3 = 0;
        *(a3 + 1) = 0;
        v289 = *(a3 + 3);
        if (v289)
        {
          if (v48)
          {
            (*(*v289 + 16))(v289);
            v48 = *(a3 + 1);
          }
        }

        else
        {
          v48 = 0;
        }

        goto LABEL_748;
      }

      *(a3 + 2) = v55 | 4;
      if (!v55)
      {
LABEL_748:
        *a3 = 0;
        *(a3 + 1) = 0;
        v290 = *(a3 + 3);
        if (v290 && v48)
        {
          (*(*v290 + 16))(v290);
        }

        goto LABEL_749;
      }

      v57 = *v55;
      v58 = IPC::Decoder::decode<unsigned long long>(a3);
      if (v59)
      {
        WebKit::LogStream::wEBPROCESS_PREPARE_TO_SUSPEND(this, v54, v57, *&v58);
        goto LABEL_784;
      }

LABEL_749:
      v7 = *a3;
      v8 = *(a3 + 1);
      *a3 = 0;
      *(a3 + 1) = 0;
      v216 = *(a3 + 3);
      if (v216)
      {
LABEL_750:
        if (!v8)
        {
          goto LABEL_784;
        }

LABEL_679:
        (*(*v216 + 16))(v216, v7);
      }

LABEL_784:
      if (this)
      {
        if (atomic_fetch_add(this + 2, 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, this + 2);
          (*(*this + 8))(this, v7, v8);
        }
      }

      return;
    case 0x137:
      v89 = IPC::Decoder::decode<std::tuple<unsigned long long>>(a3);
      if (v7)
      {
        WebKit::LogStream::wEBPROCESS_READY_TO_SUSPEND(this, v89);
      }

      goto LABEL_784;
    case 0x138:
      IPC::Decoder::decode<std::tuple<unsigned long long,unsigned long long,unsigned long long>>(buf, a3);
      if (v324 == 1)
      {
        WebKit::LogStream::wEBRESOURCELOADER_CONSTRUCTOR(this, *buf, *&buf[8], *&buf[16]);
      }

      goto LABEL_784;
    case 0x139:
      IPC::Decoder::decode<std::tuple<unsigned long long,unsigned long long,unsigned long long>>(buf, a3);
      if (v324 == 1)
      {
        WebKit::LogStream::wEBRESOURCELOADER_DIDBLOCKAUTHENTICATIONCHALLENGE(this, *buf, *&buf[8], *&buf[16]);
      }

      goto LABEL_784;
    case 0x13A:
      IPC::Decoder::decode<std::tuple<unsigned long long,unsigned long long,unsigned long long>>(buf, a3);
      if (v324 == 1)
      {
        WebKit::LogStream::wEBRESOURCELOADER_DIDFAILRESOURCELOAD(this, *buf, *&buf[8], *&buf[16]);
      }

      goto LABEL_784;
    case 0x13B:
      v60 = *(a3 + 1);
      v61 = ((*(a3 + 2) + 7) & 0xFFFFFFFFFFFFFFF8);
      v62 = *a3;
      v63 = v61 - *a3;
      v17 = v60 >= v63;
      v64 = v60 - v63;
      if (!v17 || v64 <= 7)
      {
        goto LABEL_767;
      }

      *(a3 + 2) = v61 + 1;
      if (!v61)
      {
        goto LABEL_769;
      }

      v66 = *v61;
      v67 = ((v61 + 15) & 0xFFFFFFFFFFFFFFF8);
      if (v60 < v67 - v62 || v60 - (v67 - v62) <= 7)
      {
        goto LABEL_767;
      }

      *(a3 + 2) = v67 + 1;
      if (!v67)
      {
        goto LABEL_769;
      }

      v69 = *v67;
      v70 = ((v67 + 15) & 0xFFFFFFFFFFFFFFF8);
      if (v60 < v70 - v62 || v60 - (v70 - v62) <= 7)
      {
        goto LABEL_767;
      }

      *(a3 + 2) = v70 + 1;
      if (!v70)
      {
        goto LABEL_769;
      }

      v72 = *v70;
      v73 = ((v70 + 15) & 0xFFFFFFFFFFFFFFF8);
      if (v60 >= v73 - v62 && v60 - (v73 - v62) > 7)
      {
        *(a3 + 2) = v73 + 1;
        if (v73)
        {
          WebKit::LogStream::wEBRESOURCELOADER_DIDFINISHRESOURCELOAD(this, v66, v69, v72, *v73);
          goto LABEL_784;
        }
      }

      else
      {
LABEL_767:
        *a3 = 0;
        *(a3 + 1) = 0;
        v298 = *(a3 + 3);
        if (v298)
        {
          if (v60)
          {
            (*(*v298 + 16))(v298);
            v60 = *(a3 + 1);
          }
        }

        else
        {
          v60 = 0;
        }
      }

LABEL_769:
      *a3 = 0;
      *(a3 + 1) = 0;
      v299 = *(a3 + 3);
      if (v299 && v60)
      {
        (*(*v299 + 16))(v299);
      }

      v7 = *a3;
      v8 = *(a3 + 1);
      *a3 = 0;
      *(a3 + 1) = 0;
      v216 = *(a3 + 3);
      if (v216)
      {
        goto LABEL_540;
      }

      goto LABEL_784;
    case 0x13C:
      IPC::Decoder::decode<std::tuple<unsigned long long,unsigned long long,unsigned long long>>(buf, a3);
      if (v324 == 1)
      {
        WebKit::LogStream::wEBRESOURCELOADER_DIDRECEIVEDATA(this, *buf, *&buf[8], *&buf[16]);
      }

      goto LABEL_784;
    case 0x13D:
      IPC::Decoder::decode<std::tuple<unsigned long long,unsigned long long,unsigned long long>>(buf, a3);
      if (v324 == 1)
      {
        WebKit::LogStream::wEBRESOURCELOADER_DIDRECEIVERESOURCE(this, *buf, *&buf[8], *&buf[16]);
      }

      goto LABEL_784;
    case 0x13E:
      IPC::Decoder::decode<std::tuple<unsigned long long,unsigned long long,unsigned long long>>(buf, a3);
      if (v324 == 1)
      {
        WebKit::LogStream::wEBRESOURCELOADER_DIDRECEIVERESOURCE_UNABLE_TO_CREATE_FRAGMENTEDSHAREDBUFFER(this, *buf, *&buf[8], *&buf[16]);
      }

      goto LABEL_784;
    case 0x13F:
      v90 = *(a3 + 1);
      v91 = ((*(a3 + 2) + 7) & 0xFFFFFFFFFFFFFFF8);
      v92 = *a3;
      v93 = v91 - *a3;
      v17 = v90 >= v93;
      v94 = v90 - v93;
      if (!v17 || v94 <= 7)
      {
        goto LABEL_736;
      }

      *(a3 + 2) = v91 + 1;
      if (!v91)
      {
        goto LABEL_738;
      }

      v96 = *v91;
      v97 = ((v91 + 15) & 0xFFFFFFFFFFFFFFF8);
      if (v90 < v97 - v92 || v90 - (v97 - v92) <= 7)
      {
        goto LABEL_736;
      }

      *(a3 + 2) = v97 + 1;
      if (!v97)
      {
        goto LABEL_738;
      }

      v99 = *v97;
      v100 = ((v97 + 15) & 0xFFFFFFFFFFFFFFF8);
      if (v90 < v100 - v92 || v90 - (v100 - v92) <= 7)
      {
        goto LABEL_736;
      }

      *(a3 + 2) = v100 + 1;
      if (!v100)
      {
        goto LABEL_738;
      }

      v102 = *v100;
      v103 = (v100 + 11) & 0xFFFFFFFFFFFFFFF8;
      if (v90 >= v103 - v92 && v90 - (v103 - v92) > 3)
      {
        *(a3 + 2) = v103 | 4;
        if (v103)
        {
          WebKit::LogStream::wEBRESOURCELOADER_DIDRECEIVERESPONSE(this, v96, v99, v102, *v103);
          goto LABEL_784;
        }
      }

      else
      {
LABEL_736:
        *a3 = 0;
        *(a3 + 1) = 0;
        v285 = *(a3 + 3);
        if (v285)
        {
          if (v90)
          {
            (*(*v285 + 16))(v285);
            v90 = *(a3 + 1);
          }
        }

        else
        {
          v90 = 0;
        }
      }

LABEL_738:
      *a3 = 0;
      *(a3 + 1) = 0;
      v286 = *(a3 + 3);
      if (v286 && v90)
      {
        (*(*v286 + 16))(v286);
      }

      v7 = *a3;
      v8 = *(a3 + 1);
      *a3 = 0;
      *(a3 + 1) = 0;
      v216 = *(a3 + 3);
      if (!v216)
      {
        goto LABEL_784;
      }

LABEL_540:
      if (!v8)
      {
        goto LABEL_784;
      }

      goto LABEL_679;
    case 0x140:
      IPC::Decoder::decode<std::tuple<unsigned long long,unsigned long long,unsigned long long>>(buf, a3);
      if (v324 == 1)
      {
        WebKit::LogStream::wEBRESOURCELOADER_DIDRECEIVERESPONSE_NOT_CONTINUING_INTERCEPT_LOAD(this, *buf, *&buf[8], *&buf[16]);
      }

      goto LABEL_784;
    case 0x141:
      IPC::Decoder::decode<std::tuple<unsigned long long,unsigned long long,unsigned long long>>(buf, a3);
      if (v324 == 1)
      {
        WebKit::LogStream::wEBRESOURCELOADER_DIDRECEIVERESPONSE_NOT_CONTINUING_LOAD(this, *buf, *&buf[8], *&buf[16]);
      }

      goto LABEL_784;
    case 0x142:
      IPC::Decoder::decode<std::tuple<unsigned long long,unsigned long long,unsigned long long>>(buf, a3);
      if (v324 == 1)
      {
        WebKit::LogStream::wEBRESOURCELOADER_SERVICEWORKERDIDNOTHANDLE(this, *buf, *&buf[8], *&buf[16]);
      }

      goto LABEL_784;
    case 0x143:
      IPC::Decoder::decode<std::tuple<unsigned long long,unsigned long long,unsigned long long>>(buf, a3);
      if (v324 == 1)
      {
        WebKit::LogStream::wEBRESOURCELOADER_STOPLOADINGAFTERSECURITYPOLICYDENIED(this, *buf, *&buf[8], *&buf[16]);
      }

      goto LABEL_784;
    case 0x144:
      IPC::Decoder::decode<std::tuple<unsigned long long,unsigned long long,unsigned long long>>(buf, a3);
      if (v324 == 1)
      {
        WebKit::LogStream::wEBRESOURCELOADER_WILLSENDREQUEST(this, *buf, *&buf[8], *&buf[16]);
      }

      goto LABEL_784;
    case 0x145:
      IPC::Decoder::decode<std::tuple<unsigned long long,unsigned long long,unsigned long long>>(buf, a3);
      if (v324 == 1)
      {
        WebKit::LogStream::wEBRESOURCELOADER_WILLSENDREQUEST_CONTINUE(this, *buf, *&buf[8], *&buf[16]);
      }

      goto LABEL_784;
    case 0x146:
      IPC::Decoder::decode<std::tuple<unsigned long long,unsigned long long,unsigned long long>>(buf, a3);
      if (v324 == 1)
      {
        WebKit::LogStream::wEBRESOURCELOADER_WILLSENDREQUEST_NO_CORELOADER(this, *buf, *&buf[8], *&buf[16]);
      }

      goto LABEL_784;
    default:
      switch(*(a3 + 25))
      {
        case 0x9A:
          IPC::Decoder::decode<std::tuple<WTF::CString,WTF::CString>>(buf, a3);
          if (buf[16] == 1)
          {
            WebKit::LogStream::fONTCACHECORETEXT_REGISTER_ERROR(this, buf, &buf[8]);
            goto LABEL_615;
          }

          goto LABEL_784;
        case 0x9B:
          IPC::Decoder::decode<std::tuple<WTF::CString,WTF::CString>>(buf, a3);
          if (buf[16] == 1)
          {
            WebKit::LogStream::fONTCACHECORETEXT_REGISTER_FONT(this, buf, &buf[8]);
LABEL_615:
            if (buf[16])
            {
              v248 = *&buf[8];
              *&buf[8] = 0;
              if (v248)
              {
                if (*v248 == 1)
                {
                  WTF::fastFree(v248, v7);
                }

                else
                {
                  --*v248;
                }
              }

              goto LABEL_670;
            }
          }

          goto LABEL_784;
        case 0x9C:
        case 0x9D:
        case 0x9E:
        case 0x9F:
        case 0xA0:
        case 0xA1:
        case 0xA2:
        case 0xA3:
        case 0xA4:
        case 0xA5:
        case 0xA6:
        case 0xA7:
        case 0xA8:
        case 0xA9:
        case 0xAA:
        case 0xAB:
        case 0xAC:
        case 0xAD:
        case 0xAE:
        case 0xAF:
        case 0xB0:
        case 0xB1:
        case 0xB2:
        case 0xB7:
        case 0xB8:
        case 0xB9:
        case 0xBA:
        case 0xBB:
        case 0xBC:
        case 0xC0:
        case 0xC1:
        case 0xC3:
        case 0xC6:
        case 0xC7:
        case 0xCA:
        case 0xD8:
        case 0xDD:
        case 0xE0:
        case 0xE1:
        case 0xE8:
        case 0xE9:
        case 0xEA:
        case 0xEB:
        case 0xEC:
        case 0xF4:
        case 0xF5:
        case 0xF6:
        case 0xF7:
        case 0xF8:
        case 0xF9:
        case 0xFC:
        case 0xFD:
        case 0xFE:
        case 0xFF:
        case 0x100:
        case 0x101:
          goto LABEL_538;
        case 0xB3:
          IPC::Decoder::decode<std::tuple<unsigned long long,WTF::CString,WTF::CString>>(buf, a3);
          if (v324 != 1)
          {
            goto LABEL_784;
          }

          WebKit::LogStream::hTMLMEDIAELEMENT_CANPLAYTYPE(this, *buf, &buf[8], &buf[16]);
          goto LABEL_505;
        case 0xB4:
          IPC::Decoder::decode<std::tuple<unsigned long long,WTF::CString>>(buf, a3);
          if (buf[16] != 1)
          {
            goto LABEL_784;
          }

          WebKit::LogStream::hTMLMEDIAELEMENT_CANTRANSITIONFROMAUTOPLAYTOPLAY(this, *buf, &buf[8]);
          goto LABEL_74;
        case 0xB5:
          IPC::Decoder::decode<std::tuple<unsigned long long,WTF::CString>>(buf, a3);
          if (buf[16] != 1)
          {
            goto LABEL_784;
          }

          WebKit::LogStream::hTMLMEDIAELEMENT_CONFIGURETEXTTRACKDISPLAY(this, *buf, &buf[8]);
          goto LABEL_74;
        case 0xB6:
          v230 = *(a3 + 1);
          v231 = ((*(a3 + 2) + 7) & 0xFFFFFFFFFFFFFFF8);
          v232 = v231 - *a3;
          v17 = v230 >= v232;
          v233 = v230 - v232;
          if (!v17 || v233 <= 7)
          {
            *a3 = 0;
            *(a3 + 1) = 0;
            v311 = *(a3 + 3);
            if (v311)
            {
              if (v230)
              {
                (*(*v311 + 16))(v311);
                v230 = *(a3 + 1);
              }
            }

            else
            {
              v230 = 0;
            }

            goto LABEL_820;
          }

          *(a3 + 2) = v231 + 1;
          if (!v231)
          {
LABEL_820:
            *a3 = 0;
            *(a3 + 1) = 0;
            v312 = *(a3 + 3);
            if (v312 && v230)
            {
              (*(*v312 + 16))(v312);
            }

            goto LABEL_677;
          }

          v235 = *v231;
          IPC::Decoder::decode<WTF::CString>(&v321, a3);
          if (v322 != 1)
          {
            goto LABEL_677;
          }

          IPC::Decoder::decode<WTF::CString>(&v315, a3);
          if (v316 == 1)
          {
            IPC::Decoder::decode<WTF::CString>(&v318, a3);
            if (v319 != 1)
            {
              v244 = 0;
              buf[0] = 0;
              v326 = 0;
              goto LABEL_681;
            }

            v238 = *(a3 + 1);
            v239 = ((*(a3 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
            v237 = *a3;
            v240 = v239 - *a3;
            v17 = v238 >= v240;
            v241 = v238 - v240;
            if (v17 && v241 > 3)
            {
              *(a3 + 2) = v239 + 1;
              if (v239)
              {
                v3 = *v239;
                v242 = v321;
                v321 = 0;
                *buf = v235;
                *&buf[8] = v242;
                v243 = v315;
                v315 = 0;
                *&buf[16] = v243;
                v324 = v318;
                v325[0] = v3;
                v244 = 1;
                v326 = 1;
                goto LABEL_681;
              }
            }

            else
            {
              *a3 = 0;
              *(a3 + 1) = 0;
              v309 = *(a3 + 3);
              if (v309)
              {
                if (v238)
                {
                  (*(*v309 + 16))(v309);
                  v237 = *a3;
                  v238 = *(a3 + 1);
                  goto LABEL_814;
                }
              }

              else
              {
                v238 = 0;
              }

              v237 = 0;
            }

LABEL_814:
            *a3 = 0;
            *(a3 + 1) = 0;
            v310 = *(a3 + 3);
            if (v310 && v238)
            {
              (*(*v310 + 16))(v310);
            }

            buf[0] = 0;
            v326 = 0;
            if (v318)
            {
              if (*v318 != 1)
              {
                v244 = 0;
                --*v318;
                goto LABEL_681;
              }

              WTF::fastFree(v318, v237);
            }

            v244 = 0;
LABEL_681:
            if (v315)
            {
              if (*v315 == 1)
              {
                WTF::fastFree(v315, v237);
              }

              else
              {
                --*v315;
              }
            }

            if (v321)
            {
              if (*v321 == 1)
              {
                WTF::fastFree(v321, v237);
                if ((v244 & 1) == 0)
                {
                  goto LABEL_677;
                }

                goto LABEL_688;
              }

              --*v321;
            }

            if ((v244 & 1) == 0)
            {
              goto LABEL_677;
            }

LABEL_688:
            WebKit::LogStream::hTMLMEDIAELEMENT_CONFIGURETEXTTRACKGROUP(this, *buf, &buf[8], &buf[16], &v324, v3);
            if ((v326 & 1) == 0)
            {
              goto LABEL_784;
            }

            v264 = v324;
            v324 = 0;
            if (v264)
            {
              if (*v264 == 1)
              {
                WTF::fastFree(v264, v7);
              }

              else
              {
                --*v264;
              }
            }

LABEL_506:
            v201 = *&buf[16];
            *&buf[16] = 0;
            if (v201)
            {
              if (*v201 == 1)
              {
                WTF::fastFree(v201, v7);
              }

              else
              {
                --*v201;
              }
            }

LABEL_509:
            v9 = *&buf[8];
            *&buf[8] = 0;
            if (v9)
            {
LABEL_510:
              if (*v9 == 1)
              {
LABEL_698:
                WTF::fastFree(v9, v7);
              }

              else
              {
                --*v9;
              }
            }

            goto LABEL_784;
          }

          buf[0] = 0;
          v326 = 0;
          v263 = v321;
          if (!v321)
          {
            goto LABEL_677;
          }

LABEL_675:
          if (*v263 == 1)
          {
            WTF::fastFree(v263, v236);
          }

          else
          {
            --*v263;
          }

          goto LABEL_677;
        case 0xBD:
          v251 = IPC::Decoder::decode<std::tuple<unsigned long long>>(a3);
          if (v7)
          {
            WebKit::LogStream::hTMLMEDIAELEMENT_MEDIAENGINEWASUPDATED(this, v251);
          }

          goto LABEL_784;
        case 0xBE:
          IPC::Decoder::decode<std::tuple<unsigned long long,WTF::CString>>(buf, a3);
          if (buf[16] != 1)
          {
            goto LABEL_784;
          }

          WebKit::LogStream::hTMLMEDIAELEMENT_MEDIAPLAYERCHARACTERISTICSCHANGED(this, *buf, &buf[8]);
          goto LABEL_74;
        case 0xBF:
          IPC::Decoder::decode<std::tuple<unsigned long long,float,float>>(buf, a3);
          if (buf[16] == 1)
          {
            WebKit::LogStream::hTMLMEDIAELEMENT_MEDIAPLAYERDURATIONCHANGED(this, *buf, *&buf[8], *&buf[12]);
          }

          goto LABEL_784;
        case 0xC2:
          IPC::Decoder::decode<std::tuple<unsigned long long,float,float>>(buf, a3);
          if (buf[16] == 1)
          {
            WebKit::LogStream::hTMLMEDIAELEMENT_MEDIAPLAYERSIZECHANGED(this, *buf, *&buf[8], *&buf[12]);
          }

          goto LABEL_784;
        case 0xC4:
          v249 = IPC::Decoder::decode<std::tuple<unsigned long long>>(a3);
          if (v7)
          {
            WebKit::LogStream::hTMLMEDIAELEMENT_PAUSE(this, v249);
          }

          goto LABEL_784;
        case 0xC5:
          v229 = IPC::Decoder::decode<std::tuple<unsigned long long>>(a3);
          if (v7)
          {
            WebKit::LogStream::hTMLMEDIAELEMENT_PAUSEINTERNAL(this, v229);
          }

          goto LABEL_784;
        case 0xC8:
          IPC::Decoder::decode<std::tuple<unsigned long long,int>>(buf, a3);
          if (buf[16] == 1)
          {
            WebKit::LogStream::hTMLMEDIAELEMENT_PREPAREFORLOAD(this, *buf, *&buf[8]);
          }

          goto LABEL_784;
        case 0xC9:
          IPC::Decoder::decode<std::tuple<unsigned long long,WTF::CString,WTF::CString>>(buf, a3);
          if (v324 != 1)
          {
            goto LABEL_784;
          }

          WebKit::LogStream::hTMLMEDIAELEMENT_REMOVEAUDIOTRACK(this, *buf, &buf[8], &buf[16]);
          goto LABEL_505;
        case 0xCB:
          IPC::Decoder::decode<std::tuple<unsigned long long,WTF::CString>>(buf, a3);
          if (buf[16] != 1)
          {
            goto LABEL_784;
          }

          WebKit::LogStream::hTMLMEDIAELEMENT_SCENEIDENTIFIERDIDCHANGE(this, *buf, &buf[8]);
          goto LABEL_639;
        case 0xCC:
          v226 = IPC::Decoder::decode<std::tuple<unsigned long long>>(a3);
          if (v7)
          {
            WebKit::LogStream::hTMLMEDIAELEMENT_SCHEDULECONFIGURETEXTTRACKS_LAMBDA_TASK_FIRED(this, v226);
          }

          goto LABEL_784;
        case 0xCD:
          v245 = IPC::Decoder::decode<std::tuple<unsigned long long>>(a3);
          if (v7)
          {
            WebKit::LogStream::hTMLMEDIAELEMENT_SCHEDULECONFIGURETEXTTRACKS_TASK_SCHEDULED(this, v245);
          }

          goto LABEL_784;
        case 0xCE:
          v224 = IPC::Decoder::decode<std::tuple<unsigned long long>>(a3);
          if (v7)
          {
            WebKit::LogStream::hTMLMEDIAELEMENT_SCHEDULEMEDIAENGINEWASUPDATED_LAMBDA_TASK_FIRED(this, v224);
          }

          goto LABEL_784;
        case 0xCF:
          v225 = IPC::Decoder::decode<std::tuple<unsigned long long>>(a3);
          if (v7)
          {
            WebKit::LogStream::hTMLMEDIAELEMENT_SCHEDULEMEDIAENGINEWASUPDATED_TASK_SCHEDULED(this, v225);
          }

          goto LABEL_784;
        case 0xD0:
          v247 = IPC::Decoder::decode<std::tuple<unsigned long long>>(a3);
          if (v7)
          {
            WebKit::LogStream::hTMLMEDIAELEMENT_SELECTMEDIARESOURCE_ATTEMPTING_USE_OF_UNATTACHED_MEDIASOURCEHANDLE(this, v247);
          }

          goto LABEL_784;
        case 0xD1:
          v252 = IPC::Decoder::decode<std::tuple<unsigned long long>>(a3);
          if (v7)
          {
            WebKit::LogStream::hTMLMEDIAELEMENT_SELECTMEDIARESOURCE_EMPTY_SRC(this, v252);
          }

          goto LABEL_784;
        case 0xD2:
          v219 = IPC::Decoder::decode<std::tuple<unsigned long long>>(a3);
          if (v7)
          {
            WebKit::LogStream::hTMLMEDIAELEMENT_SELECTMEDIARESOURCE_HAS_SRCATTR_PLAYER_NOT_CREATED(this, v219);
          }

          goto LABEL_784;
        case 0xD3:
          v254 = IPC::Decoder::decode<std::tuple<unsigned long long>>(a3);
          if (v7)
          {
            WebKit::LogStream::hTMLMEDIAELEMENT_SELECTMEDIARESOURCE_LAMBDA_TASK_FIRED(this, v254);
          }

          goto LABEL_784;
        case 0xD4:
          v228 = IPC::Decoder::decode<std::tuple<unsigned long long>>(a3);
          if (v7)
          {
            WebKit::LogStream::hTMLMEDIAELEMENT_SELECTMEDIARESOURCE_NOTHING_TO_LOAD(this, v228);
          }

          goto LABEL_784;
        case 0xD5:
          v256 = IPC::Decoder::decode<std::tuple<unsigned long long>>(a3);
          if (v7)
          {
            WebKit::LogStream::hTMLMEDIAELEMENT_SELECTMEDIARESOURCE_USING_SRCOBJECT_PROPERTY(this, v256);
          }

          goto LABEL_784;
        case 0xD6:
          v253 = IPC::Decoder::decode<std::tuple<unsigned long long>>(a3);
          if (v7)
          {
            WebKit::LogStream::hTMLMEDIAELEMENT_SELECTMEDIARESOURCE_USING_SRC_ATTRIBUTE_URL(this, v253);
          }

          goto LABEL_784;
        case 0xD7:
          IPC::Decoder::decode<std::tuple<unsigned long long,WTF::CString>>(buf, a3);
          if (buf[16] != 1)
          {
            goto LABEL_784;
          }

          WebKit::LogStream::hTMLMEDIAELEMENT_SETAUTOPLAYEVENTPLAYBACKSTATE(this, *buf, &buf[8]);
          goto LABEL_639;
        case 0xD9:
          IPC::Decoder::decode<std::tuple<unsigned long long,int>>(buf, a3);
          if (buf[16] == 1)
          {
            WebKit::LogStream::hTMLMEDIAELEMENT_SETMUTEDINTERNAL(this, *buf, *&buf[8]);
          }

          goto LABEL_784;
        case 0xDA:
          IPC::Decoder::decode<std::tuple<unsigned long long,WTF::CString,WTF::CString>>(buf, a3);
          if (v324 != 1)
          {
            goto LABEL_784;
          }

          WebKit::LogStream::hTMLMEDIAELEMENT_SETNETWORKSTATE(this, *buf, &buf[8], &buf[16]);
          goto LABEL_577;
        case 0xDB:
          IPC::Decoder::decode<std::tuple<unsigned long long,double>>(buf, a3);
          if (buf[16] == 1)
          {
            WebKit::LogStream::hTMLMEDIAELEMENT_SETPLAYBACKRATE(this, *buf, *&buf[8]);
          }

          goto LABEL_784;
        case 0xDC:
          IPC::Decoder::decode<std::tuple<unsigned long long,WTF::CString,WTF::CString>>(buf, a3);
          if (v324 != 1)
          {
            goto LABEL_784;
          }

          WebKit::LogStream::hTMLMEDIAELEMENT_SETREADYSTATE(this, *buf, &buf[8], &buf[16]);
LABEL_577:
          if ((v324 & 1) == 0)
          {
            goto LABEL_784;
          }

          v227 = *&buf[16];
          *&buf[16] = 0;
          if (v227)
          {
            if (*v227 == 1)
            {
              WTF::fastFree(v227, v7);
            }

            else
            {
              --*v227;
            }
          }

LABEL_640:
          v9 = *&buf[8];
          *&buf[8] = 0;
          if (!v9)
          {
            goto LABEL_784;
          }

          goto LABEL_671;
        case 0xDE:
          IPC::Decoder::decode<std::tuple<unsigned long long,int>>(buf, a3);
          if (buf[16] == 1)
          {
            WebKit::LogStream::hTMLMEDIAELEMENT_SETSHOWPOSTERFLAG(this, *buf, *&buf[8]);
          }

          goto LABEL_784;
        case 0xDF:
          IPC::Decoder::decode<std::tuple<unsigned long long,double>>(buf, a3);
          if (buf[16] == 1)
          {
            WebKit::LogStream::hTMLMEDIAELEMENT_SETVOLUME(this, *buf, *&buf[8]);
          }

          goto LABEL_784;
        case 0xE2:
          IPC::Decoder::decode<std::tuple<unsigned long long,int>>(buf, a3);
          if (buf[16] == 1)
          {
            WebKit::LogStream::hTMLVIDEOELEMENT_MEDIAPLAYERFIRSTVIDEOFRAMEAVAILABLE(this, *buf, *&buf[8]);
          }

          goto LABEL_784;
        case 0xE3:
          v223 = IPC::Decoder::decode<std::tuple<unsigned long long>>(a3);
          if (v7)
          {
            WebKit::LogStream::hTMLVIDEOELEMENT_MEDIAPLAYERRENDERINGMODECHANGED(this, v223);
          }

          goto LABEL_784;
        case 0xE4:
          IPC::Decoder::decode<std::tuple<unsigned long long,float,float>>(buf, a3);
          if (buf[16] == 1)
          {
            WebKit::LogStream::hTMLVIDEOELEMENT_SCHEDULERESIZEEVENT(this, *buf, *&buf[8], *&buf[12]);
          }

          goto LABEL_784;
        case 0xE5:
          IPC::Decoder::decode<std::tuple<unsigned long long,unsigned long long,int>>(buf, a3);
          if (v324 == 1)
          {
            WebKit::LogStream::lOCALFRAMEVIEW_FIRING_FIRST_VISUALLY_NON_EMPTY_LAYOUT_MILESTONE(this, *buf, *&buf[8], *&buf[16]);
          }

          goto LABEL_784;
        case 0xE6:
          IPC::Decoder::decode<std::tuple<unsigned long long,unsigned long long,int>>(buf, a3);
          if (v324 == 1)
          {
            WebKit::LogStream::lOCALFRAMEVIEW_FIRING_RESIZE_EVENTS_DISABLED_FOR_PAGE(this, *buf, *&buf[8], *&buf[16]);
          }

          goto LABEL_784;
        case 0xE7:
          IPC::Decoder::decode<std::tuple<unsigned long long,unsigned long long,int>>(buf, a3);
          if (v324 == 1)
          {
            WebKit::LogStream::lOCALFRAMEVIEW_NOT_PAINTING_LAYOUT_NEEDED(this, *buf, *&buf[8], *&buf[16]);
          }

          goto LABEL_784;
        case 0xED:
          IPC::Decoder::decode<WTF::CString>(&v318, a3);
          if (v319 != 1)
          {
            goto LABEL_677;
          }

          v257 = *(a3 + 1);
          v258 = ((*(a3 + 2) + 7) & 0xFFFFFFFFFFFFFFF8);
          v236 = *a3;
          v259 = v258 - *a3;
          v17 = v257 >= v259;
          v260 = v257 - v259;
          if (v17 && v260 > 7)
          {
            *(a3 + 2) = v258 + 1;
            if (v258)
            {
              v262 = *v258;
              *buf = v318;
              *&buf[8] = v262;
              buf[16] = 1;
              WebKit::LogStream::pERFORMANCELOGGING_MEMORY_USAGE_FOR_KEY(this, buf, v262);
              if ((buf[16] & 1) == 0)
              {
                goto LABEL_784;
              }

LABEL_670:
              v9 = *buf;
              *buf = 0;
              if (v9)
              {
LABEL_671:
                if (*v9 == 1)
                {
                  goto LABEL_698;
                }

                --*v9;
              }

              goto LABEL_784;
            }
          }

          else
          {
            *a3 = 0;
            *(a3 + 1) = 0;
            v313 = *(a3 + 3);
            if (!v313)
            {
              v257 = 0;
LABEL_825:
              v236 = 0;
              goto LABEL_826;
            }

            if (!v257)
            {
              goto LABEL_825;
            }

            (*(*v313 + 16))(v313);
            v236 = *a3;
            v257 = *(a3 + 1);
          }

LABEL_826:
          *a3 = 0;
          *(a3 + 1) = 0;
          v314 = *(a3 + 3);
          if (v314 && v257)
          {
            (*(*v314 + 16))(v314);
          }

          v263 = v318;
          if (v318)
          {
            goto LABEL_675;
          }

LABEL_677:
          v7 = *a3;
          v8 = *(a3 + 1);
          *a3 = 0;
          *(a3 + 1) = 0;
          v216 = *(a3 + 3);
          if (v216 && v8)
          {
            goto LABEL_679;
          }

          goto LABEL_784;
        case 0xEE:
          IPC::Decoder::decode<WTF::CString>(buf, a3);
          if ((buf[8] & 1) == 0)
          {
            goto LABEL_677;
          }

          v318 = *buf;
          LOBYTE(v319) = 1;
          WebKit::LogStream::pERFORMANCELOGGING_MEMORY_USAGE_INFO(this, &v318);
          if ((v319 & 1) == 0)
          {
            goto LABEL_784;
          }

          v9 = v318;
          v318 = 0;
          if (!v9)
          {
            goto LABEL_784;
          }

          goto LABEL_671;
        case 0xEF:
          v220 = IPC::Decoder::decode<unsigned long long>(a3);
          if ((v221 & 1) == 0)
          {
            goto LABEL_677;
          }

          v222 = *&v220;
          IPC::Decoder::decode<WTF::CString>(&v318, a3);
          if ((v319 & 1) == 0)
          {
            goto LABEL_677;
          }

          *buf = v222;
          *&buf[8] = v318;
          buf[16] = 1;
          WebKit::LogStream::pERFORMANCEMONITOR_MEASURE_CPUUSAGE_IN_ACTIVITYSTATE(this, &buf[8], v222);
LABEL_639:
          if (buf[16])
          {
            goto LABEL_640;
          }

          goto LABEL_784;
        case 0xF0:
          v246 = IPC::Decoder::decode<std::tuple<double>>(a3);
          if (v7)
          {
            WebKit::LogStream::pERFORMANCEMONITOR_MEASURE_POSTBACKGROUND_CPUUSAGE(this, *&v246);
          }

          goto LABEL_784;
        case 0xF1:
          v218 = IPC::Decoder::decode<std::tuple<unsigned long long>>(a3);
          if (v7)
          {
            WebKit::LogStream::pERFORMANCEMONITOR_MEASURE_POSTBACKGROUND_MEMORYUSAGE(this, v218);
          }

          goto LABEL_784;
        case 0xF2:
          v217 = IPC::Decoder::decode<std::tuple<double>>(a3);
          if (v7)
          {
            WebKit::LogStream::pERFORMANCEMONITOR_MEASURE_POSTLOAD_CPUUSAGE(this, *&v217);
          }

          goto LABEL_784;
        case 0xF3:
          v250 = IPC::Decoder::decode<std::tuple<unsigned long long>>(a3);
          if (v7)
          {
            WebKit::LogStream::pERFORMANCEMONITOR_MEASURE_POSTLOAD_MEMORYUSAGE(this, v250);
          }

          goto LABEL_784;
        case 0xFA:
          IPC::Decoder::decode<std::tuple<unsigned long long,unsigned long long>>(a3, buf);
          if (buf[16] == 1)
          {
            WebKit::LogStream::pOLICYCHECKIER_CHECKNAVIGATIONPOLICY_CONTINUE_INITIAL_EMPTY_DOCUMENT(this, *buf, *&buf[8]);
          }

          goto LABEL_784;
        case 0xFB:
          IPC::Decoder::decode<std::tuple<unsigned long long,unsigned long long>>(a3, buf);
          if (buf[16] == 1)
          {
            WebKit::LogStream::pOLICYCHECKIER_CHECKNAVIGATIONPOLICY_CONTINUE_LOAD_IN_ANOTHER_PROCESS(this, *buf, *&buf[8]);
          }

          goto LABEL_784;
        case 0x102:
          v255 = IPC::Decoder::decode<std::tuple<unsigned long long>>(a3);
          if (v7)
          {
            WebKit::LogStream::sERVICEWORKERTHREADPROXY_REMOVEFETCH(this, v255);
          }

          goto LABEL_784;
        default:
          if (v6 == 287)
          {
            v214 = IPC::Decoder::decode<std::tuple<unsigned int>>(a3);
            if ((v214 & 0x100000000) != 0)
            {
              WebKit::LogStream::wEBCORE_TEST_LOG(this, v214);
            }

            goto LABEL_784;
          }

LABEL_538:
          v215 = qword_1ED6416C8;
          if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
          {
            if (v6 >= 0x107F)
            {
              v265 = 4223;
            }

            else
            {
              v265 = v6;
            }

            v266 = (&IPC::Detail::messageDescriptions)[3 * v265];
            v267 = *(a3 + 7);
            *buf = 136315394;
            *&buf[4] = v266;
            *&buf[12] = 2048;
            *&buf[14] = v267;
            _os_log_error_impl(&dword_19D52D000, v215, OS_LOG_TYPE_ERROR, "Unhandled stream message %s to %llu", buf, 0x16u);
          }

          v7 = *a3;
          v8 = *(a3 + 1);
          *a3 = 0;
          *(a3 + 1) = 0;
          v216 = *(a3 + 3);
          if (!v216)
          {
            goto LABEL_784;
          }

          goto LABEL_540;
      }
  }
}