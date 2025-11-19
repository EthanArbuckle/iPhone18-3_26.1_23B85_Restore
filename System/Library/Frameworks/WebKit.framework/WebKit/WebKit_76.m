uint64_t WebKit::RemoteObjectRegistry::releaseUnusedReplyBlock(WebKit::RemoteObjectRegistry *this, uint64_t a2)
{
  v4 = (this + 24);
  ShouldValidate = WTF::HashTable<unsigned long long,WTF::KeyValuePair<unsigned long long,WTF::RefPtr<WebKit::ProcessThrottlerActivity,WTF::RawPtrTraits<WebKit::ProcessThrottlerActivity>,WTF::DefaultRefDerefTraits<WebKit::ProcessThrottlerActivity>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<unsigned long long,WTF::RefPtr<WebKit::ProcessThrottlerActivity,WTF::RawPtrTraits<WebKit::ProcessThrottlerActivity>,WTF::DefaultRefDerefTraits<WebKit::ProcessThrottlerActivity>>>>,WTF::DefaultHash<unsigned long long>,WTF::HashMap<unsigned long long,WTF::RefPtr<WebKit::ProcessThrottlerActivity,WTF::RawPtrTraits<WebKit::ProcessThrottlerActivity>,WTF::DefaultRefDerefTraits<WebKit::ProcessThrottlerActivity>>,WTF::DefaultHash<unsigned long long>,WTF::HashTraits<unsigned long long>,WTF::HashTraits<WTF::RefPtr<WebKit::ProcessThrottlerActivity,WTF::RawPtrTraits<WebKit::ProcessThrottlerActivity>,WTF::DefaultRefDerefTraits<WebKit::ProcessThrottlerActivity>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<unsigned long long>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<unsigned long long,WTF::RefPtr<WebKit::ProcessThrottlerActivity,WTF::RawPtrTraits<WebKit::ProcessThrottlerActivity>,WTF::DefaultRefDerefTraits<WebKit::ProcessThrottlerActivity>>,WTF::DefaultHash<unsigned long long>,WTF::HashTraits<unsigned long long>,WTF::HashTraits<WTF::RefPtr<WebKit::ProcessThrottlerActivity,WTF::RawPtrTraits<WebKit::ProcessThrottlerActivity>,WTF::DefaultRefDerefTraits<WebKit::ProcessThrottlerActivity>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<unsigned long long>>,(WTF::ShouldValidateKey)1,unsigned long long>(*(this + 3), a2);
  if (*v4)
  {
    v6 = *v4 + 16 * *(*v4 - 4);
    if (v6 == ShouldValidate)
    {
      goto LABEL_8;
    }
  }

  else
  {
    if (!ShouldValidate)
    {
      goto LABEL_8;
    }

    v6 = 0;
  }

  if (v6 != ShouldValidate)
  {
    WTF::HashTable<unsigned long long,WTF::KeyValuePair<unsigned long long,WTF::RefPtr<WebKit::ProcessThrottlerActivity,WTF::RawPtrTraits<WebKit::ProcessThrottlerActivity>,WTF::DefaultRefDerefTraits<WebKit::ProcessThrottlerActivity>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<unsigned long long,WTF::RefPtr<WebKit::ProcessThrottlerActivity,WTF::RawPtrTraits<WebKit::ProcessThrottlerActivity>,WTF::DefaultRefDerefTraits<WebKit::ProcessThrottlerActivity>>>>,WTF::DefaultHash<unsigned long long>,WTF::HashMap<unsigned long long,WTF::RefPtr<WebKit::ProcessThrottlerActivity,WTF::RawPtrTraits<WebKit::ProcessThrottlerActivity>,WTF::DefaultRefDerefTraits<WebKit::ProcessThrottlerActivity>>,WTF::DefaultHash<unsigned long long>,WTF::HashTraits<unsigned long long>,WTF::HashTraits<WTF::RefPtr<WebKit::ProcessThrottlerActivity,WTF::RawPtrTraits<WebKit::ProcessThrottlerActivity>,WTF::DefaultRefDerefTraits<WebKit::ProcessThrottlerActivity>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<unsigned long long>,WTF::FastMalloc>::remove(v4, ShouldValidate);
  }

LABEL_8:
  Weak = objc_loadWeak(this + 2);

  return [Weak _releaseReplyWithID:a2];
}

void sub_19D984B9C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
  }

  _Unwind_Resume(exception_object);
}

uint64_t WTF::HashTable<WTF::RetainPtr<objc_object *>,WTF::KeyValuePair<WTF::RetainPtr<objc_object *>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::RetainPtr<objc_object *>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::DefaultHash<WTF::RetainPtr<objc_object *>>,WTF::HashMap<WTF::RetainPtr<objc_object *>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::RetainPtr<objc_object *>>,WTF::HashTraits<WTF::RetainPtr<objc_object *>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::RetainPtr<objc_object *>>,WTF::FastMalloc>::deallocateTable(void **a1, void *a2)
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
        }
      }

      v4 += 2;
      --v3;
    }

    while (v3);
  }

  return WTF::fastFree((a1 - 2), a2);
}

uint64_t WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::deallocateTable(uint64_t a1, void *a2)
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
          CFRelease(*(v5 + 8));
        }
      }

      v4 += 2;
      --v3;
    }

    while (v3);
  }

  return WTF::fastFree((a1 - 16), a2);
}

uint64_t mpark::detail::copy_constructor<mpark::detail::traits<WebKit::JavaScriptEvaluationResult::NullType,BOOL,double,WTF::String,WTF::Seconds,WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,(mpark::detail::Trait)1>::copy_constructor(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 16) = -1;
  v4 = *(a2 + 16);
  if (v4 <= 3)
  {
    if (*(a2 + 16) <= 1u)
    {
      *a1 = *a2;
LABEL_15:
      *(a1 + 16) = *(a2 + 16);
      return a1;
    }

    if (v4 == 2)
    {
      *a1 = *a2;
      goto LABEL_15;
    }

    v5 = *a2;
    if (*a2)
    {
      atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed);
    }

LABEL_14:
    *a1 = v5;
    goto LABEL_15;
  }

  if (*(a2 + 16) <= 5u)
  {
    if (v4 != 4)
    {
      WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(a1, a2);
      goto LABEL_15;
    }

    v5 = *a2;
    goto LABEL_14;
  }

  if (v4 == 6)
  {
    WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::HashTable(a1, a2);
    goto LABEL_15;
  }

  return a1;
}

uint64_t *WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::HashTable(uint64_t *result, void **a2)
{
  v2 = result;
  *result = 0;
  if (!*a2)
  {
    return v2;
  }

  v3 = *a2;
  v4 = *(*a2 - 3);
  if (!v4)
  {
    return v2;
  }

  v6 = *(v3 - 3);
  v7 = *(v3 - 3);
  if (v4 == 1)
  {
    goto LABEL_7;
  }

  v8 = __clz(v4 - 1);
  if (v8)
  {
    v6 = (1 << -v8);
    v7 = 1 << -v8;
    if (v4 > 0x400)
    {
      if (v6 > 2 * v4)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }

LABEL_7:
    if (3 * v6 > 4 * v4)
    {
LABEL_9:
      if (v7 > 0x400)
      {
        v9 = 0.416666667;
      }

      else
      {
        v9 = 0.604166667;
      }

      if (v7 * v9 <= v4)
      {
        v7 *= 2;
      }

      if (v7 <= 8)
      {
        v10 = 8;
      }

      else
      {
        v10 = v7;
      }

      v11 = WTF::fastZeroedMalloc((16 * v10 + 16));
      *v2 = (v11 + 4);
      v11[2] = v10 - 1;
      v11[3] = v10;
      *v11 = 0;
      v11[1] = v4;
      v12 = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::begin(a2);
      v14 = *a2;
      if (*a2)
      {
        v14 += 2 * *(v14 - 1);
      }

      while (v12 != v14)
      {
        v15 = *v2;
        if (*v2)
        {
          v16 = *(v15 - 8);
        }

        else
        {
          v16 = 0;
        }

        v17 = *v12 + ~(*v12 << 32);
        v18 = (v17 ^ (v17 >> 22)) + ~((v17 ^ (v17 >> 22)) << 13);
        v19 = (9 * (v18 ^ (v18 >> 8))) ^ ((9 * (v18 ^ (v18 >> 8))) >> 15);
        v20 = v16 & (((v19 + ~(v19 << 27)) >> 31) ^ (v19 + ~(v19 << 27)));
        v21 = 1;
        do
        {
          v22 = v20;
          v23 = *(v15 + 16 * v20);
          v20 = (v20 + v21++) & v16;
        }

        while (v23);
        v24 = (v15 + 16 * v22);
        v25 = v12[1];
        *v24 = *v12;
        v24[1] = v25;
        do
        {
          v12 += 2;
        }

        while (v12 != v13 && (*v12 + 1) <= 1);
      }

      return v2;
    }

LABEL_8:
    v7 *= 2;
    goto LABEL_9;
  }

  __break(1u);
  return result;
}

WTF *WTF::VectorTypeOperations<std::pair<WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::RetainPtr<NSMutableArray>>>::destruct(WTF *result, WTF *a2)
{
  if (result != a2)
  {
    v3 = result;
    do
    {
      v4 = *(v3 + 2);
      *(v3 + 2) = 0;
      if (v4)
      {
      }

      result = *v3;
      if (*v3)
      {
        *v3 = 0;
        *(v3 + 2) = 0;
        result = WTF::fastFree(result, a2);
      }

      v3 = (v3 + 24);
    }

    while (v3 != a2);
  }

  return result;
}

void WTF::VectorTypeOperations<std::pair<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::RetainPtr<NSMutableDictionary>>>::destruct(void *a1, void *a2)
{
  if (a1 != a2)
  {
    v3 = a1;
    do
    {
      v4 = v3[1];
      v3[1] = 0;
      if (v4)
      {
      }

      if (*v3)
      {
        WTF::fastFree((*v3 - 16), a2);
      }

      v3 += 2;
    }

    while (v3 != a2);
  }
}

WTF *WTF::VectorTypeOperations<std::pair<WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::Ref<API::Array,WTF::RawPtrTraits<API::Array>,WTF::DefaultRefDerefTraits<API::Array>>>>::destruct(WTF *result, WTF *a2)
{
  if (result != a2)
  {
    v3 = result;
    do
    {
      v4 = *(v3 + 2);
      *(v3 + 2) = 0;
      if (v4)
      {
        CFRelease(*(v4 + 8));
      }

      result = *v3;
      if (*v3)
      {
        *v3 = 0;
        *(v3 + 2) = 0;
        result = WTF::fastFree(result, a2);
      }

      v3 = (v3 + 24);
    }

    while (v3 != a2);
  }

  return result;
}

void WTF::VectorTypeOperations<std::pair<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::Ref<API::Dictionary,WTF::RawPtrTraits<API::Dictionary>,WTF::DefaultRefDerefTraits<API::Dictionary>>>>::destruct(void *a1, void *a2)
{
  if (a1 != a2)
  {
    v3 = a1;
    do
    {
      v4 = v3[1];
      v3[1] = 0;
      if (v4)
      {
        CFRelease(*(v4 + 8));
      }

      if (*v3)
      {
        WTF::fastFree((*v3 - 16), a2);
      }

      v3 += 2;
    }

    while (v3 != a2);
  }
}

uint64_t ___ZN6WebKitL14isSerializableEP11objc_object_block_invoke(uint64_t a1, WebKit *this, uint64_t a3, _BYTE *a4)
{
  result = WebKit::isSerializable(this, this);
  if ((result & 1) == 0)
  {
    *(*(*(a1 + 32) + 8) + 24) = 0;
    *a4 = 1;
  }

  return result;
}

uint64_t ___ZN6WebKitL14isSerializableEP11objc_object_block_invoke_2(uint64_t a1, WebKit *this, WebKit *a3, _BYTE *a4)
{
  result = WebKit::isSerializable(this, this);
  if (!result || (result = WebKit::isSerializable(a3, v8), (result & 1) == 0))
  {
    *(*(*(a1 + 32) + 8) + 24) = 0;
    *a4 = 1;
  }

  return result;
}

uint64_t WTF::HashTable<unsigned long long,WTF::KeyValuePair<unsigned long long,WTF::RefPtr<WebKit::ProcessThrottlerActivity,WTF::RawPtrTraits<WebKit::ProcessThrottlerActivity>,WTF::DefaultRefDerefTraits<WebKit::ProcessThrottlerActivity>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<unsigned long long,WTF::RefPtr<WebKit::ProcessThrottlerActivity,WTF::RawPtrTraits<WebKit::ProcessThrottlerActivity>,WTF::DefaultRefDerefTraits<WebKit::ProcessThrottlerActivity>>>>,WTF::DefaultHash<unsigned long long>,WTF::HashMap<unsigned long long,WTF::RefPtr<WebKit::ProcessThrottlerActivity,WTF::RawPtrTraits<WebKit::ProcessThrottlerActivity>,WTF::DefaultRefDerefTraits<WebKit::ProcessThrottlerActivity>>,WTF::DefaultHash<unsigned long long>,WTF::HashTraits<unsigned long long>,WTF::HashTraits<WTF::RefPtr<WebKit::ProcessThrottlerActivity,WTF::RawPtrTraits<WebKit::ProcessThrottlerActivity>,WTF::DefaultRefDerefTraits<WebKit::ProcessThrottlerActivity>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<unsigned long long>,WTF::FastMalloc>::deallocateTable(uint64_t a1, void *a2)
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
          WTF::RefCounted<WebKit::ProcessThrottlerActivity>::deref((v5 + 8), a2);
        }
      }

      v4 += 2;
      --v3;
    }

    while (v3);
  }

  return WTF::fastFree((a1 - 16), a2);
}

uint64_t WTF::Vector<WTF::Ref<WebCore::LegacyWebArchive,WTF::RawPtrTraits<WebCore::LegacyWebArchive>,WTF::DefaultRefDerefTraits<WebCore::LegacyWebArchive>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, void *a2)
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
        if (v6[2] == 1)
        {
          (*(*v6 + 8))(v6);
        }

        else
        {
          --v6[2];
        }
      }

      v4 = (v4 + 8);
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

void *WTF::Detail::CallableWrapper<API::WebArchive::data(void)::$_0,void>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F10EEBC0;
  a1[1] = 0;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<API::WebArchive::data(void)::$_0,void>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F10EEBC0;
  *(this + 1) = 0;
  if (v3)
  {
    CFRelease(v3);
  }

  return WTF::fastFree(this, a2);
}

void *WTF::Detail::CallableWrapper<API::WebArchiveResource::data(void)::$_0,void>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F10EEBE8;
  a1[1] = 0;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<API::WebArchiveResource::data(void)::$_0,void>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F10EEBE8;
  *(this + 1) = 0;
  if (v3)
  {
    CFRelease(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Vector<std::pair<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::RetainPtr<NSMutableDictionary>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, void *a2)
{
  v3 = *(a1 + 12);
  if (v3)
  {
    WTF::VectorTypeOperations<std::pair<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::RetainPtr<NSMutableDictionary>>>::destruct(*a1, (*a1 + 16 * v3));
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

void sub_19D9854B4(_Unwind_Exception *exception_object, void *a2)
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

uint64_t WTF::Vector<std::pair<WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::RetainPtr<NSMutableArray>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, void *a2)
{
  v3 = *(a1 + 12);
  if (v3)
  {
    WTF::VectorTypeOperations<std::pair<WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::RetainPtr<NSMutableArray>>>::destruct(*a1, (*a1 + 24 * v3));
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

void sub_19D985530(_Unwind_Exception *exception_object, void *a2)
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

uint64_t WTF::Vector<std::pair<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::Ref<API::Dictionary,WTF::RawPtrTraits<API::Dictionary>,WTF::DefaultRefDerefTraits<API::Dictionary>>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, void *a2)
{
  v3 = *(a1 + 12);
  if (v3)
  {
    WTF::VectorTypeOperations<std::pair<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::Ref<API::Dictionary,WTF::RawPtrTraits<API::Dictionary>,WTF::DefaultRefDerefTraits<API::Dictionary>>>>::destruct(*a1, (*a1 + 16 * v3));
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

void sub_19D9855A8(_Unwind_Exception *exception_object, void *a2)
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

uint64_t WTF::Vector<std::pair<WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::Ref<API::Array,WTF::RawPtrTraits<API::Array>,WTF::DefaultRefDerefTraits<API::Array>>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, void *a2)
{
  v3 = *(a1 + 12);
  if (v3)
  {
    WTF::VectorTypeOperations<std::pair<WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::Ref<API::Array,WTF::RawPtrTraits<API::Array>,WTF::DefaultRefDerefTraits<API::Array>>>>::destruct(*a1, (*a1 + 24 * v3));
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

void sub_19D985624(_Unwind_Exception *exception_object, void *a2)
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

unint64_t WTF::Vector<std::pair<WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::RetainPtr<NSMutableArray>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(unsigned int *a1, unint64_t a2, unint64_t a3)
{
  v3 = a3;
  v5 = *a1;
  if (*a1 > a3 || v5 + 24 * a1[3] <= a3)
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

    WTF::Vector<std::pair<WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::RetainPtr<NSMutableArray>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v12);
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

    WTF::Vector<std::pair<WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::RetainPtr<NSMutableArray>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v9);
    return *a1 + v6;
  }

  return v3;
}

unsigned int *WTF::Vector<std::pair<WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::RetainPtr<NSMutableArray>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(unsigned int *result, unint64_t a2)
{
  if (result[2] < a2)
  {
    if (a2 >= 0xAAAAAAB)
    {
      __break(0xC471u);
    }

    else
    {
      v2 = result;
      v3 = *result;
      v4 = result[3];
      v5 = 24 * a2;
      result = WTF::fastMalloc((24 * a2));
      v2[2] = v5 / 0x18;
      *v2 = result;
      if (v4)
      {
        v7 = result;
        v8 = 24 * v4;
        v9 = v3;
        do
        {
          WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v7, v9);
          v10 = *(v9 + 2);
          *(v9 + 2) = 0;
          *(v7 + 2) = v10;
          v11 = *(v9 + 2);
          *(v9 + 2) = 0;
          if (v11)
          {
          }

          result = *v9;
          if (*v9)
          {
            *v9 = 0;
            *(v9 + 2) = 0;
            result = WTF::fastFree(result, v6);
          }

          v7 += 6;
          v9 = (v9 + 24);
          v8 -= 24;
        }

        while (v8);
      }

      if (v3)
      {
        if (*v2 == v3)
        {
          *v2 = 0;
          v2[2] = 0;
        }

        return WTF::fastFree(v3, v6);
      }
    }
  }

  return result;
}

unint64_t WTF::Vector<std::pair<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::RetainPtr<NSMutableDictionary>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v3 = a3;
  v5 = *a1;
  if (*a1 > a3 || v5 + 16 * *(a1 + 12) <= a3)
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

    WTF::Vector<std::pair<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::RetainPtr<NSMutableDictionary>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v12);
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

    WTF::Vector<std::pair<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::RetainPtr<NSMutableDictionary>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v9);
    return *a1 + v6;
  }

  return v3;
}

void WTF::Vector<std::pair<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::RetainPtr<NSMutableDictionary>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 8) < a2)
  {
    v2 = a2;
    if (a2 >> 28)
    {
      __break(0xC471u);
    }

    else
    {
      v4 = *a1;
      v5 = *(a1 + 12);
      v6 = WTF::fastMalloc((16 * a2));
      *(a1 + 8) = v2;
      *a1 = v6;
      if (v5)
      {
        v8 = v6;
        v9 = (v4 + 16 * v5);
        v10 = v4;
        do
        {
          *v8 = 0;
          v11 = *v10;
          *v10 = 0;
          *v8 = v11;
          v12 = *(v10 + 1);
          *(v10 + 1) = 0;
          v8[1] = v12;
          v13 = *(v10 + 1);
          *(v10 + 1) = 0;
          if (v13)
          {
          }

          if (*v10)
          {
            WTF::fastFree((*v10 - 16), v7);
          }

          v8 += 2;
          v10 = (v10 + 16);
        }

        while (v10 != v9);
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

WTF::StringImpl *API::String::create@<X0>(API::Object **a1@<X8>)
{
  WTF::String::isolatedCopy();
  API::String::create(&v6, a1);
  result = v6;
  v6 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v4);
    }
  }

  return result;
}

void sub_19D985A50(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
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

unint64_t WTF::Vector<std::pair<WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::Ref<API::Array,WTF::RawPtrTraits<API::Array>,WTF::DefaultRefDerefTraits<API::Array>>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(unsigned int *a1, unint64_t a2, unint64_t a3)
{
  v3 = a3;
  v5 = *a1;
  if (*a1 > a3 || v5 + 24 * a1[3] <= a3)
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

    WTF::Vector<std::pair<WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::Ref<API::Array,WTF::RawPtrTraits<API::Array>,WTF::DefaultRefDerefTraits<API::Array>>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v12);
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

    WTF::Vector<std::pair<WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::Ref<API::Array,WTF::RawPtrTraits<API::Array>,WTF::DefaultRefDerefTraits<API::Array>>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v9);
    return *a1 + v6;
  }

  return v3;
}

unsigned int *WTF::Vector<std::pair<WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::Ref<API::Array,WTF::RawPtrTraits<API::Array>,WTF::DefaultRefDerefTraits<API::Array>>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(unsigned int *result, unint64_t a2)
{
  if (result[2] < a2)
  {
    if (a2 >= 0xAAAAAAB)
    {
      __break(0xC471u);
    }

    else
    {
      v2 = result;
      v3 = *result;
      v4 = result[3];
      v5 = 24 * a2;
      result = WTF::fastMalloc((24 * a2));
      v2[2] = v5 / 0x18;
      *v2 = result;
      if (v4)
      {
        v7 = result;
        v8 = 24 * v4;
        v9 = v3;
        do
        {
          WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v7, v9);
          v10 = *(v9 + 2);
          *(v9 + 2) = 0;
          *(v7 + 2) = v10;
          v11 = *(v9 + 2);
          *(v9 + 2) = 0;
          if (v11)
          {
            CFRelease(*(v11 + 8));
          }

          result = *v9;
          if (*v9)
          {
            *v9 = 0;
            *(v9 + 2) = 0;
            result = WTF::fastFree(result, v6);
          }

          v7 += 6;
          v9 = (v9 + 24);
          v8 -= 24;
        }

        while (v8);
      }

      if (v3)
      {
        if (*v2 == v3)
        {
          *v2 = 0;
          v2[2] = 0;
        }

        return WTF::fastFree(v3, v6);
      }
    }
  }

  return result;
}

unint64_t WTF::Vector<std::pair<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::Ref<API::Dictionary,WTF::RawPtrTraits<API::Dictionary>,WTF::DefaultRefDerefTraits<API::Dictionary>>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v3 = a3;
  v5 = *a1;
  if (*a1 > a3 || v5 + 16 * *(a1 + 12) <= a3)
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

    WTF::Vector<std::pair<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::Ref<API::Dictionary,WTF::RawPtrTraits<API::Dictionary>,WTF::DefaultRefDerefTraits<API::Dictionary>>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v12);
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

    WTF::Vector<std::pair<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::Ref<API::Dictionary,WTF::RawPtrTraits<API::Dictionary>,WTF::DefaultRefDerefTraits<API::Dictionary>>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v9);
    return *a1 + v6;
  }

  return v3;
}

void WTF::Vector<std::pair<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::Ref<API::Dictionary,WTF::RawPtrTraits<API::Dictionary>,WTF::DefaultRefDerefTraits<API::Dictionary>>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 8) < a2)
  {
    v2 = a2;
    if (a2 >> 28)
    {
      __break(0xC471u);
    }

    else
    {
      v4 = *a1;
      v5 = *(a1 + 12);
      v6 = WTF::fastMalloc((16 * a2));
      *(a1 + 8) = v2;
      *a1 = v6;
      if (v5)
      {
        v8 = v6;
        v9 = (v4 + 16 * v5);
        v10 = v4;
        do
        {
          *v8 = 0;
          v11 = *v10;
          *v10 = 0;
          *v8 = v11;
          v12 = *(v10 + 1);
          *(v10 + 1) = 0;
          v8[1] = v12;
          v13 = *(v10 + 1);
          *(v10 + 1) = 0;
          if (v13)
          {
            CFRelease(*(v13 + 8));
          }

          if (*v10)
          {
            WTF::fastFree((*v10 - 16), v7);
          }

          v8 += 2;
          v10 = (v10 + 16);
        }

        while (v10 != v9);
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

_DWORD *WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RetainPtr<objc_object *>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RetainPtr<objc_object *>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RetainPtr<objc_object *>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RetainPtr<objc_object *>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(uint64_t *a1)
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

  return WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RetainPtr<objc_object *>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RetainPtr<objc_object *>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RetainPtr<objc_object *>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RetainPtr<objc_object *>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(a1, v3);
}

_DWORD *WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RetainPtr<objc_object *>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RetainPtr<objc_object *>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RetainPtr<objc_object *>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RetainPtr<objc_object *>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(uint64_t *a1, unsigned int a2)
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

void *WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RetainPtr<objc_object *>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RetainPtr<objc_object *>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RetainPtr<objc_object *>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RetainPtr<objc_object *>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(void *result, uint64_t *a2, uint64_t a3)
{
  if (a3 == -1 || !a3)
  {
    __break(0xC471u);
    JUMPOUT(0x19D9860D4);
  }

  v3 = *a2;
  if (!*a2)
  {
LABEL_10:
    *result = 0;
    return result;
  }

  v4 = *(v3 - 8);
  v5 = (~(a3 << 32) + a3) ^ ((~(a3 << 32) + a3) >> 22);
  v6 = 9 * ((v5 + ~(v5 << 13)) ^ ((v5 + ~(v5 << 13)) >> 8));
  v7 = (v6 ^ (v6 >> 15)) + ~((v6 ^ (v6 >> 15)) << 27);
  v8 = v4 & ((v7 >> 31) ^ v7);
  v9 = *(v3 + 16 * v8);
  if (v9 != a3)
  {
    v10 = 1;
    while (v9)
    {
      v8 = (v8 + v10) & v4;
      v9 = *(v3 + 16 * v8);
      ++v10;
      if (v9 == a3)
      {
        goto LABEL_8;
      }
    }

    goto LABEL_10;
  }

LABEL_8:
  v11 = *(v3 + 16 * v8 + 8);
  *result = v11;
  if (v11)
  {
    return v11;
  }

  return result;
}

_DWORD *WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(uint64_t *a1)
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

  return WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(a1, v3);
}

_DWORD *WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(uint64_t *a1, unsigned int a2)
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
            CFRelease(*(v23 + 8));
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
          CFRelease(*(v12 + 8));
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

uint64_t WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(uint64_t *a1, uint64_t a2)
{
  if (a2 == -1 || !a2)
  {
    __break(0xC471u);
    JUMPOUT(0x19D9863A8);
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
      return *(v2 + 16 * v7 + 8);
    }

    v9 = 1;
    while (v8)
    {
      v7 = (v7 + v9) & v3;
      v8 = *(v2 + 16 * v7);
      ++v9;
      if (v8 == a2)
      {
        return *(v2 + 16 * v7 + 8);
      }
    }
  }

  return 0;
}

uint64_t WTF::is_objc<NSString,objc_object>(uint64_t a1)
{
  if (a1)
  {
    objc_opt_class();
    LOBYTE(a1) = objc_opt_isKindOfClass();
  }

  return a1 & 1;
}

uint64_t WTF::checkHashTableKey<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,mpark::variant<WebKit::JavaScriptEvaluationResult::NullType,BOOL,double,WTF::String,WTF::Seconds,WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,mpark::variant<WebKit::JavaScriptEvaluationResult::NullType,BOOL,double,WTF::String,WTF::Seconds,WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,mpark::variant<WebKit::JavaScriptEvaluationResult::NullType,BOOL,double,WTF::String,WTF::Seconds,WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<mpark::variant<WebKit::JavaScriptEvaluationResult::NullType,BOOL,double,WTF::String,WTF::Seconds,WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMapTranslator<WTF::HashMapTranslator,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(uint64_t result)
{
  if (result == -1 || !result)
  {
    __break(0xC471u);
    JUMPOUT(0x19D98643CLL);
  }

  return result;
}

uint64_t WTF::HashMapTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,mpark::variant<WebKit::JavaScriptEvaluationResult::NullType,BOOL,double,WTF::String,WTF::Seconds,WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<mpark::variant<WebKit::JavaScriptEvaluationResult::NullType,BOOL,double,WTF::String,WTF::Seconds,WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>::translate<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long> const&,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,mpark::variant<WebKit::JavaScriptEvaluationResult::NullType,BOOL,double,WTF::String,WTF::Seconds,WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>,WTF::HashTableAddResult<WTF::HashTableIterator<WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,mpark::variant<WebKit::JavaScriptEvaluationResult::NullType,BOOL,double,WTF::String,WTF::Seconds,WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,mpark::variant<WebKit::JavaScriptEvaluationResult::NullType,BOOL,double,WTF::String,WTF::Seconds,WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,mpark::variant<WebKit::JavaScriptEvaluationResult::NullType,BOOL,double,WTF::String,WTF::Seconds,WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<mpark::variant<WebKit::JavaScriptEvaluationResult::NullType,BOOL,double,WTF::String,WTF::Seconds,WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,mpark::variant<WebKit::JavaScriptEvaluationResult::NullType,BOOL,double,WTF::String,WTF::Seconds,WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,mpark::variant<WebKit::JavaScriptEvaluationResult::NullType,BOOL,double,WTF::String,WTF::Seconds,WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,mpark::variant<WebKit::JavaScriptEvaluationResult::NullType,BOOL,double,WTF::String,WTF::Seconds,WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<mpark::variant<WebKit::JavaScriptEvaluationResult::NullType,BOOL,double,WTF::String,WTF::Seconds,WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>> WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,mpark::variant<WebKit::JavaScriptEvaluationResult::NullType,BOOL,double,WTF::String,WTF::Seconds,WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<mpark::variant<WebKit::JavaScriptEvaluationResult::NullType,BOOL,double,WTF::String,WTF::Seconds,WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineAdd<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long> const&,mpark::variant<WebKit::JavaScriptEvaluationResult::NullType,BOOL,double,WTF::String,WTF::Seconds,WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>(WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long> const&,mpark::variant<WebKit::JavaScriptEvaluationResult::NullType,BOOL,double,WTF::String,WTF::Seconds,WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>> &&)::{lambda(void)#1}>(void *a1, uint64_t a2, unsigned __int8 **a3)
{
  *a1 = a2;
  v3 = (a1 + 1);
  mpark::detail::move_constructor<mpark::detail::traits<WebKit::JavaScriptEvaluationResult::NullType,BOOL,double,WTF::String,WTF::Seconds,WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,(mpark::detail::Trait)1>::move_constructor(v6, *a3);
  mpark::detail::assignment<mpark::detail::traits<WebKit::JavaScriptEvaluationResult::NullType,BOOL,double,WTF::String,WTF::Seconds,WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>::generic_assign<mpark::detail::move_assignment<mpark::detail::traits<WebKit::JavaScriptEvaluationResult::NullType,BOOL,double,WTF::String,WTF::Seconds,WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,(mpark::detail::Trait)1>>(v3, v6);
  return mpark::detail::move_constructor<mpark::detail::traits<WebKit::JavaScriptEvaluationResult::NullType,BOOL,double,WTF::String,WTF::Seconds,WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,(mpark::detail::Trait)1>::~move_constructor(v6, v4);
}

void sub_19D9864AC(_Unwind_Exception *a1, void *a2, uint64_t a3, ...)
{
  va_start(va, a3);
  mpark::detail::move_constructor<mpark::detail::traits<WebKit::JavaScriptEvaluationResult::NullType,BOOL,double,WTF::String,WTF::Seconds,WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,(mpark::detail::Trait)1>::~move_constructor(va, a2);
  _Unwind_Resume(a1);
}

uint64_t WTF::HashTable<WTF::RetainPtr<objc_object *>,WTF::KeyValuePair<WTF::RetainPtr<objc_object *>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::RetainPtr<objc_object *>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::DefaultHash<WTF::RetainPtr<objc_object *>>,WTF::HashMap<WTF::RetainPtr<objc_object *>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::RetainPtr<objc_object *>>,WTF::HashTraits<WTF::RetainPtr<objc_object *>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::RetainPtr<objc_object *>>,WTF::FastMalloc>::find<WTF::HashMapTranslator<WTF::HashMap<WTF::RetainPtr<objc_object *>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::RetainPtr<objc_object *>>,WTF::HashTraits<WTF::RetainPtr<objc_object *>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::RetainPtr<objc_object *>>>,(WTF::ShouldValidateKey)1,objc_object const*>(uint64_t *a1, uint64_t *a2)
{
  if (!*a1)
  {
    return 0;
  }

  result = WTF::HashTable<WTF::RetainPtr<objc_object *>,WTF::KeyValuePair<WTF::RetainPtr<objc_object *>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::RetainPtr<objc_object *>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::DefaultHash<WTF::RetainPtr<objc_object *>>,WTF::HashMap<WTF::RetainPtr<objc_object *>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::RetainPtr<objc_object *>>,WTF::HashTraits<WTF::RetainPtr<objc_object *>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::RetainPtr<objc_object *>>,WTF::FastMalloc>::lookup<WTF::HashMapTranslator<WTF::HashMap<WTF::RetainPtr<objc_object *>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::RetainPtr<objc_object *>>,WTF::HashTraits<WTF::RetainPtr<objc_object *>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::RetainPtr<objc_object *>>>,(WTF::ShouldValidateKey)1,objc_object const*>(a1, a2);
  if (!result)
  {
    if (*a1)
    {
      return *a1 + 16 * *(*a1 - 4);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t WTF::HashTable<WTF::RetainPtr<objc_object *>,WTF::KeyValuePair<WTF::RetainPtr<objc_object *>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::RetainPtr<objc_object *>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::DefaultHash<WTF::RetainPtr<objc_object *>>,WTF::HashMap<WTF::RetainPtr<objc_object *>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::RetainPtr<objc_object *>>,WTF::HashTraits<WTF::RetainPtr<objc_object *>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::RetainPtr<objc_object *>>,WTF::FastMalloc>::lookup<WTF::HashMapTranslator<WTF::HashMap<WTF::RetainPtr<objc_object *>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::RetainPtr<objc_object *>>,WTF::HashTraits<WTF::RetainPtr<objc_object *>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::RetainPtr<objc_object *>>>,(WTF::ShouldValidateKey)1,objc_object const*>(uint64_t *a1, uint64_t *a2)
{
  WTF::checkHashTableKey<WTF::RetainPtr<objc_object *>,WTF::KeyValuePair<WTF::RetainPtr<objc_object *>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::RetainPtr<objc_object *>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::DefaultHash<WTF::RetainPtr<objc_object *>>,WTF::HashMap<WTF::RetainPtr<objc_object *>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::RetainPtr<objc_object *>>,WTF::HashTraits<WTF::RetainPtr<objc_object *>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::RetainPtr<objc_object *>>,WTF::HashMapTranslator<WTF::HashMap<WTF::RetainPtr<objc_object *>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::RetainPtr<objc_object *>>,WTF::HashTraits<WTF::RetainPtr<objc_object *>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::RetainPtr<objc_object *>>>,(WTF::ShouldValidateKey)1,objc_object const*>(*a2);
  v4 = *a1;
  if (v4)
  {
    v5 = *(v4 - 8);
    v6 = WTF::intHash(*a2) & v5;
    v7 = *(v4 + 16 * v6);
    if (v7 == *a2)
    {
      return v4 + 16 * v6;
    }

    v8 = 1;
    while (v7)
    {
      v6 = (v6 + v8) & v5;
      v7 = *(v4 + 16 * v6);
      ++v8;
      if (v7 == *a2)
      {
        return v4 + 16 * v6;
      }
    }
  }

  return 0;
}

uint64_t WTF::checkHashTableKey<WTF::RetainPtr<objc_object *>,WTF::KeyValuePair<WTF::RetainPtr<objc_object *>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::RetainPtr<objc_object *>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::DefaultHash<WTF::RetainPtr<objc_object *>>,WTF::HashMap<WTF::RetainPtr<objc_object *>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::RetainPtr<objc_object *>>,WTF::HashTraits<WTF::RetainPtr<objc_object *>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::RetainPtr<objc_object *>>,WTF::HashMapTranslator<WTF::HashMap<WTF::RetainPtr<objc_object *>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::RetainPtr<objc_object *>>,WTF::HashTraits<WTF::RetainPtr<objc_object *>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::RetainPtr<objc_object *>>>,(WTF::ShouldValidateKey)1,objc_object const*>(uint64_t result)
{
  if (result == -1 || !result)
  {
    __break(0xC471u);
    JUMPOUT(0x19D9865D0);
  }

  return result;
}

void WTF::HashMap<WTF::RetainPtr<objc_object *>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::RetainPtr<objc_object *>>,WTF::HashTraits<WTF::RetainPtr<objc_object *>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineSet<WTF::RetainPtr<objc_object *>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>&>(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  WTF::checkHashTableKey<WTF::RetainPtr<objc_object *>,WTF::KeyValuePair<WTF::RetainPtr<objc_object *>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::RetainPtr<objc_object *>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::DefaultHash<WTF::RetainPtr<objc_object *>>,WTF::HashMap<WTF::RetainPtr<objc_object *>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::RetainPtr<objc_object *>>,WTF::HashTraits<WTF::RetainPtr<objc_object *>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::RetainPtr<objc_object *>>,WTF::HashMapTranslator<WTF::HashMap<WTF::RetainPtr<objc_object *>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::RetainPtr<objc_object *>>,WTF::HashTraits<WTF::RetainPtr<objc_object *>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::RetainPtr<objc_object *>>>,(WTF::ShouldValidateKey)1,WTF::RetainPtr<objc_object *>>(*a3);
  v8 = *a2;
  if (*a2 || (WTF::HashTable<WTF::RetainPtr<objc_object *>,WTF::KeyValuePair<WTF::RetainPtr<objc_object *>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::RetainPtr<objc_object *>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::DefaultHash<WTF::RetainPtr<objc_object *>>,WTF::HashMap<WTF::RetainPtr<objc_object *>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::RetainPtr<objc_object *>>,WTF::HashTraits<WTF::RetainPtr<objc_object *>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::RetainPtr<objc_object *>>,WTF::FastMalloc>::expand(a2, 0), (v8 = *a2) != 0))
  {
    v9 = *(v8 - 8);
  }

  else
  {
    v9 = 0;
  }

  v10 = WTF::intHash(*a3) & v9;
  v11 = (v8 + 16 * v10);
  v12 = *v11;
  v13 = *a3;
  if (*v11)
  {
    v19 = 0;
    v20 = 1;
    do
    {
      if (v12 == v13)
      {
        v21 = *a2;
        if (*a2)
        {
          v22 = *(v21 - 4);
        }

        else
        {
          v22 = 0;
        }

        *a1 = v11;
        *(a1 + 8) = v21 + 16 * v22;
        *(a1 + 16) = 0;
        v11[1] = *a4;
        return;
      }

      if (v12 == -1)
      {
        v19 = v11;
      }

      v10 = (v10 + v20) & v9;
      v11 = (v8 + 16 * v10);
      v12 = *v11;
      ++v20;
    }

    while (*v11);
    if (v19)
    {
      *v19 = 0;
      v19[1] = 0;
      --*(*a2 - 16);
      v13 = *a3;
      v11 = v19;
    }
  }

  *a3 = 0;
  v14 = *v11;
  *v11 = v13;
  if (v14)
  {
  }

  v11[1] = *a4;
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
      goto LABEL_11;
    }

LABEL_21:
    v11 = WTF::HashTable<WTF::RetainPtr<objc_object *>,WTF::KeyValuePair<WTF::RetainPtr<objc_object *>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::RetainPtr<objc_object *>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::DefaultHash<WTF::RetainPtr<objc_object *>>,WTF::HashMap<WTF::RetainPtr<objc_object *>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::RetainPtr<objc_object *>>,WTF::HashTraits<WTF::RetainPtr<objc_object *>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::RetainPtr<objc_object *>>,WTF::FastMalloc>::expand(a2, v11);
    v15 = *a2;
    if (*a2)
    {
      v18 = *(v15 - 4);
    }

    else
    {
      v18 = 0;
    }

    goto LABEL_11;
  }

  if (3 * v18 <= 4 * v17)
  {
    goto LABEL_21;
  }

LABEL_11:
  *a1 = v11;
  *(a1 + 8) = v15 + 16 * v18;
  *(a1 + 16) = 1;
}

uint64_t WTF::checkHashTableKey<WTF::RetainPtr<objc_object *>,WTF::KeyValuePair<WTF::RetainPtr<objc_object *>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::RetainPtr<objc_object *>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::DefaultHash<WTF::RetainPtr<objc_object *>>,WTF::HashMap<WTF::RetainPtr<objc_object *>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::RetainPtr<objc_object *>>,WTF::HashTraits<WTF::RetainPtr<objc_object *>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::RetainPtr<objc_object *>>,WTF::HashMapTranslator<WTF::HashMap<WTF::RetainPtr<objc_object *>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::RetainPtr<objc_object *>>,WTF::HashTraits<WTF::RetainPtr<objc_object *>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::RetainPtr<objc_object *>>>,(WTF::ShouldValidateKey)1,WTF::RetainPtr<objc_object *>>(uint64_t result)
{
  if (result == -1 || !result)
  {
    __break(0xC471u);
    JUMPOUT(0x19D9867C8);
  }

  return result;
}

void *WTF::HashTable<WTF::RetainPtr<objc_object *>,WTF::KeyValuePair<WTF::RetainPtr<objc_object *>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::RetainPtr<objc_object *>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::DefaultHash<WTF::RetainPtr<objc_object *>>,WTF::HashMap<WTF::RetainPtr<objc_object *>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::RetainPtr<objc_object *>>,WTF::HashTraits<WTF::RetainPtr<objc_object *>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::RetainPtr<objc_object *>>,WTF::FastMalloc>::expand(uint64_t *a1, uint64_t *a2)
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

  return WTF::HashTable<WTF::RetainPtr<objc_object *>,WTF::KeyValuePair<WTF::RetainPtr<objc_object *>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::RetainPtr<objc_object *>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::DefaultHash<WTF::RetainPtr<objc_object *>>,WTF::HashMap<WTF::RetainPtr<objc_object *>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::RetainPtr<objc_object *>>,WTF::HashTraits<WTF::RetainPtr<objc_object *>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::RetainPtr<objc_object *>>,WTF::FastMalloc>::rehash(a1, v5, a2);
}

void *WTF::HashTable<WTF::RetainPtr<objc_object *>,WTF::KeyValuePair<WTF::RetainPtr<objc_object *>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::RetainPtr<objc_object *>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::DefaultHash<WTF::RetainPtr<objc_object *>>,WTF::HashMap<WTF::RetainPtr<objc_object *>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::RetainPtr<objc_object *>>,WTF::HashTraits<WTF::RetainPtr<objc_object *>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::RetainPtr<objc_object *>>,WTF::FastMalloc>::rehash(uint64_t *a1, unsigned int a2, uint64_t *a3)
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
  v11 = 0;
  if (v7)
  {
    v13 = v7;
    v14 = v6;
    do
    {
      if (*v14 != -1)
      {
        if (*v14)
        {
          v15 = WTF::HashTable<WTF::RetainPtr<objc_object *>,WTF::KeyValuePair<WTF::RetainPtr<objc_object *>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::RetainPtr<objc_object *>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::DefaultHash<WTF::RetainPtr<objc_object *>>,WTF::HashMap<WTF::RetainPtr<objc_object *>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::RetainPtr<objc_object *>>,WTF::HashTraits<WTF::RetainPtr<objc_object *>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::RetainPtr<objc_object *>>,WTF::FastMalloc>::reinsert(*a1, v14);
          v16 = *v14;
          *v14 = 0;
          if (v16)
          {
          }

          if (v14 == a3)
          {
            v11 = v15;
          }
        }

        else
        {
          *v14 = 0;
        }
      }

      v14 += 2;
      --v13;
    }

    while (v13);
    goto LABEL_16;
  }

  result = 0;
  if (v6)
  {
LABEL_16:
    WTF::fastFree((v6 - 16), v10);
    return v11;
  }

  return result;
}

void *WTF::HashTable<WTF::RetainPtr<objc_object *>,WTF::KeyValuePair<WTF::RetainPtr<objc_object *>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::RetainPtr<objc_object *>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::DefaultHash<WTF::RetainPtr<objc_object *>>,WTF::HashMap<WTF::RetainPtr<objc_object *>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::RetainPtr<objc_object *>>,WTF::HashTraits<WTF::RetainPtr<objc_object *>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::RetainPtr<objc_object *>>,WTF::FastMalloc>::reinsert(uint64_t a1, uint64_t *a2)
{
  if (a1)
  {
    v2 = *(a1 - 8);
  }

  else
  {
    v2 = 0;
  }

  v3 = *a2;
  v4 = ~(*a2 << 32) + *a2;
  v5 = (v4 ^ (v4 >> 22)) + ~((v4 ^ (v4 >> 22)) << 13);
  v6 = (9 * (v5 ^ (v5 >> 8))) ^ ((9 * (v5 ^ (v5 >> 8))) >> 15);
  v7 = v2 & (((v6 + ~(v6 << 27)) >> 31) ^ (v6 + ~(v6 << 27)));
  v8 = 1;
  do
  {
    v9 = v7;
    v10 = *(a1 + 16 * v7);
    v7 = (v7 + v8++) & v2;
  }

  while (v10);
  result = (a1 + 16 * v9);
  *a2 = 0;
  *result = v3;
  result[1] = a2[1];
  return result;
}

void *WTF::HashTable<unsigned long long,WTF::KeyValuePair<unsigned long long,WTF::RefPtr<WebKit::ProcessThrottlerActivity,WTF::RawPtrTraits<WebKit::ProcessThrottlerActivity>,WTF::DefaultRefDerefTraits<WebKit::ProcessThrottlerActivity>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<unsigned long long,WTF::RefPtr<WebKit::ProcessThrottlerActivity,WTF::RawPtrTraits<WebKit::ProcessThrottlerActivity>,WTF::DefaultRefDerefTraits<WebKit::ProcessThrottlerActivity>>>>,WTF::DefaultHash<unsigned long long>,WTF::HashMap<unsigned long long,WTF::RefPtr<WebKit::ProcessThrottlerActivity,WTF::RawPtrTraits<WebKit::ProcessThrottlerActivity>,WTF::DefaultRefDerefTraits<WebKit::ProcessThrottlerActivity>>,WTF::DefaultHash<unsigned long long>,WTF::HashTraits<unsigned long long>,WTF::HashTraits<WTF::RefPtr<WebKit::ProcessThrottlerActivity,WTF::RawPtrTraits<WebKit::ProcessThrottlerActivity>,WTF::DefaultRefDerefTraits<WebKit::ProcessThrottlerActivity>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<unsigned long long>,WTF::FastMalloc>::expand(uint64_t *a1, uint64_t *a2)
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

  return WTF::HashTable<unsigned long long,WTF::KeyValuePair<unsigned long long,WTF::RefPtr<WebKit::ProcessThrottlerActivity,WTF::RawPtrTraits<WebKit::ProcessThrottlerActivity>,WTF::DefaultRefDerefTraits<WebKit::ProcessThrottlerActivity>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<unsigned long long,WTF::RefPtr<WebKit::ProcessThrottlerActivity,WTF::RawPtrTraits<WebKit::ProcessThrottlerActivity>,WTF::DefaultRefDerefTraits<WebKit::ProcessThrottlerActivity>>>>,WTF::DefaultHash<unsigned long long>,WTF::HashMap<unsigned long long,WTF::RefPtr<WebKit::ProcessThrottlerActivity,WTF::RawPtrTraits<WebKit::ProcessThrottlerActivity>,WTF::DefaultRefDerefTraits<WebKit::ProcessThrottlerActivity>>,WTF::DefaultHash<unsigned long long>,WTF::HashTraits<unsigned long long>,WTF::HashTraits<WTF::RefPtr<WebKit::ProcessThrottlerActivity,WTF::RawPtrTraits<WebKit::ProcessThrottlerActivity>,WTF::DefaultRefDerefTraits<WebKit::ProcessThrottlerActivity>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<unsigned long long>,WTF::FastMalloc>::rehash(a1, v5, a2);
}

void *WTF::HashTable<unsigned long long,WTF::KeyValuePair<unsigned long long,WTF::RefPtr<WebKit::ProcessThrottlerActivity,WTF::RawPtrTraits<WebKit::ProcessThrottlerActivity>,WTF::DefaultRefDerefTraits<WebKit::ProcessThrottlerActivity>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<unsigned long long,WTF::RefPtr<WebKit::ProcessThrottlerActivity,WTF::RawPtrTraits<WebKit::ProcessThrottlerActivity>,WTF::DefaultRefDerefTraits<WebKit::ProcessThrottlerActivity>>>>,WTF::DefaultHash<unsigned long long>,WTF::HashMap<unsigned long long,WTF::RefPtr<WebKit::ProcessThrottlerActivity,WTF::RawPtrTraits<WebKit::ProcessThrottlerActivity>,WTF::DefaultRefDerefTraits<WebKit::ProcessThrottlerActivity>>,WTF::DefaultHash<unsigned long long>,WTF::HashTraits<unsigned long long>,WTF::HashTraits<WTF::RefPtr<WebKit::ProcessThrottlerActivity,WTF::RawPtrTraits<WebKit::ProcessThrottlerActivity>,WTF::DefaultRefDerefTraits<WebKit::ProcessThrottlerActivity>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<unsigned long long>,WTF::FastMalloc>::rehash(uint64_t *a1, unsigned int a2, uint64_t *a3)
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
            WTF::RefCounted<WebKit::ProcessThrottlerActivity>::deref((v26 + 8), v10);
          }

          v27 = *v13;
          v28 = v13[1];
          v13[1] = 0;
          *v25 = v27;
          v25[1] = v28;
          v29 = v13[1];
          v13[1] = 0;
          if (v29)
          {
            WTF::RefCounted<WebKit::ProcessThrottlerActivity>::deref((v29 + 8), v10);
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
            WTF::RefCounted<WebKit::ProcessThrottlerActivity>::deref((v15 + 8), v10);
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

IPC::Encoder *WebKit::AuxiliaryProcessProxy::send<Messages::RemoteObjectRegistry::InvokeMethod>(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = IPC::Encoder::operator new(0x238, a2);
  *v6 = 1504;
  *(v6 + 2) = 0;
  *(v6 + 3) = 0;
  *(v6 + 1) = a3;
  *(v6 + 68) = 0;
  *(v6 + 70) = 0;
  *(v6 + 69) = 0;
  IPC::Encoder::encodeHeader(v6);
  v14 = v6;
  IPC::ArgumentCoder<WebKit::RemoteObjectInvocation,void>::encode(v6, *a2);
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

void sub_19D986C58(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, IPC::Encoder *a12)
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

uint64_t WebKit::AuxiliaryProcessProxy::send<Messages::RemoteObjectRegistry::CallReplyBlock>(uint64_t a1, uint64_t **a2, uint64_t a3, char a4)
{
  v8 = IPC::Encoder::operator new(0x238, a2);
  *v8 = 1503;
  *(v8 + 2) = 0;
  *(v8 + 3) = 0;
  *(v8 + 1) = a3;
  *(v8 + 68) = 0;
  *(v8 + 70) = 0;
  *(v8 + 69) = 0;
  IPC::Encoder::encodeHeader(v8);
  v18 = v8;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v8, *a2);
  IPC::ArgumentCoder<WebKit::UserData,void>::encode(v8, a2[1]);
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

void sub_19D986DCC(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, IPC::Encoder *a12)
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

uint64_t IPC::MessageSender::send<Messages::RemoteObjectRegistry::CallReplyBlock>(uint64_t a1, uint64_t **a2, uint64_t a3, unsigned __int8 a4)
{
  v8 = IPC::Encoder::operator new(0x238, a2);
  *v8 = 1503;
  *(v8 + 2) = 0;
  *(v8 + 3) = 0;
  *(v8 + 1) = a3;
  *(v8 + 68) = 0;
  *(v8 + 70) = 0;
  *(v8 + 69) = 0;
  IPC::Encoder::encodeHeader(v8);
  v15 = v8;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v8, *a2);
  IPC::ArgumentCoder<WebKit::UserData,void>::encode(v8, a2[1]);
  v10 = (*(*a1 + 32))(a1, &v15, a4);
  v11 = v15;
  v15 = 0;
  if (v11)
  {
    IPC::Encoder::~Encoder(v11, v9);
    bmalloc::api::tzoneFree(v13, v14);
  }

  return v10;
}

void sub_19D986F10(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, IPC::Encoder *a10)
{
  if (a10)
  {
    IPC::Encoder::~Encoder(a10, a2);
    bmalloc::api::tzoneFree(v11, v12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *WTF::HashTable<unsigned long long,WTF::KeyValuePair<unsigned long long,WTF::RefPtr<WebKit::ProcessThrottlerActivity,WTF::RawPtrTraits<WebKit::ProcessThrottlerActivity>,WTF::DefaultRefDerefTraits<WebKit::ProcessThrottlerActivity>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<unsigned long long,WTF::RefPtr<WebKit::ProcessThrottlerActivity,WTF::RawPtrTraits<WebKit::ProcessThrottlerActivity>,WTF::DefaultRefDerefTraits<WebKit::ProcessThrottlerActivity>>>>,WTF::DefaultHash<unsigned long long>,WTF::HashMap<unsigned long long,WTF::RefPtr<WebKit::ProcessThrottlerActivity,WTF::RawPtrTraits<WebKit::ProcessThrottlerActivity>,WTF::DefaultRefDerefTraits<WebKit::ProcessThrottlerActivity>>,WTF::DefaultHash<unsigned long long>,WTF::HashTraits<unsigned long long>,WTF::HashTraits<WTF::RefPtr<WebKit::ProcessThrottlerActivity,WTF::RawPtrTraits<WebKit::ProcessThrottlerActivity>,WTF::DefaultRefDerefTraits<WebKit::ProcessThrottlerActivity>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<unsigned long long>,WTF::FastMalloc>::remove(uint64_t *result, void *a2)
{
  v2 = result;
  v3 = a2[1];
  *a2 = -1;
  a2[1] = 0;
  if (v3)
  {
    result = WTF::RefCounted<WebKit::ProcessThrottlerActivity>::deref((v3 + 8), a2);
  }

  v4 = *v2;
  v5 = vadd_s32(*(*v2 - 16), 0xFFFFFFFF00000001);
  *(v4 - 16) = v5;
  v6 = *(v4 - 4);
  if (6 * v5.i32[1] < v6 && v6 >= 9)
  {

    return WTF::HashTable<unsigned long long,WTF::KeyValuePair<unsigned long long,WTF::RefPtr<WebKit::ProcessThrottlerActivity,WTF::RawPtrTraits<WebKit::ProcessThrottlerActivity>,WTF::DefaultRefDerefTraits<WebKit::ProcessThrottlerActivity>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<unsigned long long,WTF::RefPtr<WebKit::ProcessThrottlerActivity,WTF::RawPtrTraits<WebKit::ProcessThrottlerActivity>,WTF::DefaultRefDerefTraits<WebKit::ProcessThrottlerActivity>>>>,WTF::DefaultHash<unsigned long long>,WTF::HashMap<unsigned long long,WTF::RefPtr<WebKit::ProcessThrottlerActivity,WTF::RawPtrTraits<WebKit::ProcessThrottlerActivity>,WTF::DefaultRefDerefTraits<WebKit::ProcessThrottlerActivity>>,WTF::DefaultHash<unsigned long long>,WTF::HashTraits<unsigned long long>,WTF::HashTraits<WTF::RefPtr<WebKit::ProcessThrottlerActivity,WTF::RawPtrTraits<WebKit::ProcessThrottlerActivity>,WTF::DefaultRefDerefTraits<WebKit::ProcessThrottlerActivity>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<unsigned long long>,WTF::FastMalloc>::rehash(v2, v6 >> 1, 0);
  }

  return result;
}

uint64_t WTF::HashTable<unsigned long long,WTF::KeyValuePair<unsigned long long,WTF::RefPtr<WebKit::ProcessThrottlerActivity,WTF::RawPtrTraits<WebKit::ProcessThrottlerActivity>,WTF::DefaultRefDerefTraits<WebKit::ProcessThrottlerActivity>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<unsigned long long,WTF::RefPtr<WebKit::ProcessThrottlerActivity,WTF::RawPtrTraits<WebKit::ProcessThrottlerActivity>,WTF::DefaultRefDerefTraits<WebKit::ProcessThrottlerActivity>>>>,WTF::DefaultHash<unsigned long long>,WTF::HashMap<unsigned long long,WTF::RefPtr<WebKit::ProcessThrottlerActivity,WTF::RawPtrTraits<WebKit::ProcessThrottlerActivity>,WTF::DefaultRefDerefTraits<WebKit::ProcessThrottlerActivity>>,WTF::DefaultHash<unsigned long long>,WTF::HashTraits<unsigned long long>,WTF::HashTraits<WTF::RefPtr<WebKit::ProcessThrottlerActivity,WTF::RawPtrTraits<WebKit::ProcessThrottlerActivity>,WTF::DefaultRefDerefTraits<WebKit::ProcessThrottlerActivity>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<unsigned long long>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<unsigned long long,WTF::RefPtr<WebKit::ProcessThrottlerActivity,WTF::RawPtrTraits<WebKit::ProcessThrottlerActivity>,WTF::DefaultRefDerefTraits<WebKit::ProcessThrottlerActivity>>,WTF::DefaultHash<unsigned long long>,WTF::HashTraits<unsigned long long>,WTF::HashTraits<WTF::RefPtr<WebKit::ProcessThrottlerActivity,WTF::RawPtrTraits<WebKit::ProcessThrottlerActivity>,WTF::DefaultRefDerefTraits<WebKit::ProcessThrottlerActivity>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<unsigned long long>>,(WTF::ShouldValidateKey)1,unsigned long long>(uint64_t result, uint64_t a2)
{
  if (result)
  {
    if (a2 == -1 || !a2)
    {
      __break(0xC471u);
      JUMPOUT(0x19D987078);
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

void WebKit::DrawingArea::didReceiveMessage(WebKit::DrawingArea *this, atomic_ullong *a2, IPC::Decoder *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  ++*(this + 4);
  v4 = *(a3 + 25);
  if (v4 == 28)
  {
    (*(*this + 416))(this, a2);
    goto LABEL_3;
  }

  if (*(a3 + 25) > 0x1Du)
  {
    if (v4 == 30)
    {
      IPC::handleMessageAsync<Messages::DrawingArea::SetDeviceScaleFactor,IPC::Connection,WebKit::DrawingArea,WebKit::DrawingArea,void ()(float,WTF::CompletionHandler<void ()(void)> &&)>(a2, a3, this);
      goto LABEL_3;
    }

    if (v4 == 32)
    {
      IPC::handleMessageAsync<Messages::DrawingArea::UpdateGeometry,IPC::Connection,WebKit::DrawingArea,WebKit::DrawingArea,void ()(WebCore::IntSize const&,BOOL,WTF::MachSendRight const&,WTF::CompletionHandler<void ()(void)> &&)>(a2, a3, this);
      goto LABEL_3;
    }

    v7 = *(a3 + 25);
    if (v4 == 31)
    {
      IPC::handleMessage<Messages::DrawingArea::SetViewExposedRect,IPC::Connection,WebKit::DrawingArea,WebKit::DrawingArea,void ()(std::optional<WebCore::FloatRect>)>(a3, this);
      goto LABEL_3;
    }

LABEL_26:
    v8 = qword_1ED6416C8;
    if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
    {
      if (v7 >= 0x107F)
      {
        v9 = 4223;
      }

      else
      {
        v9 = v7;
      }

      v10 = (&IPC::Detail::messageDescriptions)[3 * v9];
      v11 = *(a3 + 7);
      *buf = 136315394;
      v14 = v10;
      v15 = 2048;
      v16 = v11;
      _os_log_error_impl(&dword_19D52D000, v8, OS_LOG_TYPE_ERROR, "Unhandled message %s to %llu", buf, 0x16u);
    }

    IPC::Decoder::markInvalid(a3);
    goto LABEL_3;
  }

  if (*(a3 + 25) <= 0x19u)
  {
    if (v4 == 24)
    {
      IPC::handleMessage<Messages::DrawingArea::AcceleratedAnimationDidStart,IPC::Connection,WebKit::DrawingArea,WebKit::DrawingArea,void ()(WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::String const&,WTF::MonotonicTime)>(a3, this);
      goto LABEL_3;
    }

    if (v4 == 23)
    {
      IPC::handleMessage<Messages::DrawingArea::AcceleratedAnimationDidEnd,IPC::Connection,WebKit::DrawingArea,WebKit::DrawingArea,void ()(WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::String const&)>(a3, this);
      goto LABEL_3;
    }

    v7 = *(a3 + 25);
    if (v4 == 25)
    {
      IPC::handleMessage<Messages::DrawingArea::AdjustTransientZoom,IPC::Connection,WebKit::DrawingArea,WebKit::DrawingArea,void ()(double,WebCore::FloatPoint)>(a3, this);
      goto LABEL_3;
    }

    goto LABEL_26;
  }

  if (v4 == 27)
  {
    v5 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
    if (v6)
    {
      (*(*this + 440))(this, v5);
    }
  }

  else if (v4 == 29)
  {
    IPC::handleMessage<Messages::DrawingArea::SetColorSpace,IPC::Connection,WebKit::DrawingArea,WebKit::DrawingArea,void ()(std::optional<WebCore::DestinationColorSpace>)>(a3, this);
  }

  else
  {
    IPC::handleMessageAsync<Messages::DrawingArea::CommitTransientZoom,IPC::Connection,WebKit::DrawingArea,WebKit::DrawingArea,void ()(double,WebCore::FloatPoint,WTF::CompletionHandler<void ()(void)> &&)>(a2, a3, this);
  }

LABEL_3:
  if (*(this + 4) == 1)
  {
    (*(*this + 24))(this);
  }

  else
  {
    --*(this + 4);
  }
}

uint64_t IPC::handleMessageAsync<Messages::DrawingArea::SetDeviceScaleFactor,IPC::Connection,WebKit::DrawingArea,WebKit::DrawingArea,void ()(float,WTF::CompletionHandler<void ()(void)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
{
  result = IPC::Decoder::decode<std::tuple<float>>(a2);
  if ((result & 0x100000000) != 0)
  {
    v7 = *&result;
    result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
    if (v8)
    {
      v9 = result;
      while (1)
      {
        v10 = *a1;
        if ((*a1 & 1) == 0)
        {
          break;
        }

        v12 = *a1;
        atomic_compare_exchange_strong_explicit(a1, &v12, v10 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v12 == v10)
        {
          goto LABEL_6;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_6:
      v11 = WTF::fastMalloc(0x18);
      *v11 = &unk_1F10EEC10;
      v11[1] = v9;
      v11[2] = a1;
      v13 = v11;
      (*(*a3 + 408))(a3, &v13, v7);
      result = v13;
      v13 = 0;
      if (result)
      {
        return (*(*result + 8))(result);
      }
    }
  }

  return result;
}

void IPC::handleMessageAsync<Messages::DrawingArea::UpdateGeometry,IPC::Connection,WebKit::DrawingArea,WebKit::DrawingArea,void ()(WebCore::IntSize const&,BOOL,WTF::MachSendRight const&,WTF::CompletionHandler<void ()(void)> &&)>(WTF::ThreadSafeWeakPtrControlBlock **a1, IPC::Decoder *a2, uint64_t a3)
{
  IPC::Decoder::decode<std::tuple<WebCore::IntSize,BOOL,WTF::MachSendRight>>(v14, a2);
  if (v16 == 1)
  {
    v6 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
    if (v7)
    {
      v8 = v6;
LABEL_4:
      v9 = *a1;
      if ((*a1 & 1) == 0)
      {
        WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
        goto LABEL_6;
      }

      while (1)
      {
        v12 = v9;
        atomic_compare_exchange_strong_explicit(a1, &v12, v9 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v12 != v9)
        {
          goto LABEL_4;
        }

LABEL_6:
        v10 = WTF::fastMalloc(0x18);
        *v10 = &unk_1F10EEC38;
        v10[1] = v8;
        v10[2] = a1;
        v13 = v10;
        v9 = v16;
        if (v16)
        {
          break;
        }

        __break(1u);
      }

      (*(*a3 + 376))(a3, v14, v14[8] & 1, v15, &v13);
      v11 = v13;
      v13 = 0;
      if (v11)
      {
        (*(*v11 + 8))(v11);
      }
    }
  }

  if (v16 == 1)
  {
    WTF::MachSendRight::~MachSendRight(v15);
  }
}

void IPC::handleMessage<Messages::DrawingArea::SetColorSpace,IPC::Connection,WebKit::DrawingArea,WebKit::DrawingArea,void ()(std::optional<WebCore::DestinationColorSpace>)>(IPC::Decoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<std::optional<WebCore::DestinationColorSpace>,void>::decode<IPC::Decoder>(a1, &cf);
  if (v14)
  {
    goto LABEL_2;
  }

  v6 = *a1;
  v7 = *(a1 + 1);
  *a1 = 0;
  *(a1 + 1) = 0;
  v8 = *(a1 + 3);
  if (!v8 || !v7)
  {
    *a1 = 0;
    *(a1 + 1) = 0;
    return;
  }

  (*(*v8 + 16))(v8, v6);
  if (v14)
  {
LABEL_2:
    if (v13)
    {
      v4 = 1;
    }

    else
    {
      v4 = 0;
      LOBYTE(cf) = 0;
    }

    v13 = v4;
    (*(*a2 + 432))(a2, &cf);
    if (v13 == 1)
    {
      v5 = cf;
      cf = 0;
      if (v5)
      {
        CFRelease(v5);
      }
    }
  }

  else
  {
    v9 = *a1;
    v10 = *(a1 + 1);
    v11 = *(a1 + 3);
    *a1 = 0;
    *(a1 + 1) = 0;
    if (v11 && v10)
    {
      (*(*v11 + 16))(v11, v9);
    }
  }
}

uint64_t IPC::handleMessage<Messages::DrawingArea::SetViewExposedRect,IPC::Connection,WebKit::DrawingArea,WebKit::DrawingArea,void ()(std::optional<WebCore::FloatRect>)>(IPC::Decoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<std::tuple<std::optional<WebCore::FloatRect>>,void>::decode<IPC::Decoder>(a1, &v8);
  if (v10 & 1) != 0 || ((v5 = *a1, v6 = *(a1 + 1), *a1 = 0, *(a1 + 1) = 0, (result = *(a1 + 3)) != 0) ? (v7 = v6 == 0) : (v7 = 1), !v7 && (result = (*(*result + 16))(result, v5), (v10)))
  {
    v11 = v8;
    v12 = v9;
    return (*(*a2 + 136))(a2, &v11);
  }

  return result;
}

WTF::StringImpl *IPC::handleMessage<Messages::DrawingArea::AcceleratedAnimationDidStart,IPC::Connection,WebKit::DrawingArea,WebKit::DrawingArea,void ()(WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::String const&,WTF::MonotonicTime)>(IPC::Decoder *a1, uint64_t a2)
{
  result = IPC::Decoder::decode<std::tuple<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::String,WTF::MonotonicTime>>(v5, a1);
  if (v7 == 1)
  {
    result = (*(*a2 + 152))(a2, v5[0], v5[1], v6, *&v6[1]);
    if (v7)
    {
      result = v6[0];
      v6[0] = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          return WTF::StringImpl::destroy(result, v4);
        }
      }
    }
  }

  return result;
}

WTF::StringImpl *IPC::handleMessage<Messages::DrawingArea::AcceleratedAnimationDidEnd,IPC::Connection,WebKit::DrawingArea,WebKit::DrawingArea,void ()(WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::String const&)>(IPC::Decoder *a1, uint64_t a2)
{
  result = IPC::Decoder::decode<std::tuple<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::String>>(v5, a1);
  if (v7 == 1)
  {
    result = (*(*a2 + 160))(a2, v5[0], v5[1], &v6);
    if (v7)
    {
      result = v6;
      v6 = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          return WTF::StringImpl::destroy(result, v4);
        }
      }
    }
  }

  return result;
}

uint64_t IPC::handleMessage<Messages::DrawingArea::AdjustTransientZoom,IPC::Connection,WebKit::DrawingArea,WebKit::DrawingArea,void ()(double,WebCore::FloatPoint)>(IPC::Decoder *a1, uint64_t a2)
{
  result = IPC::Decoder::decode<std::tuple<double,WebCore::FloatPoint>>(&v8, a1);
  if (v11 == 1)
  {
    v4.n128_u64[0] = v8;
    v5.n128_u32[0] = v9;
    v6.n128_u32[0] = v10;
    v7 = *(*a2 + 448);

    return v7(a2, v4, v5, v6);
  }

  return result;
}

uint64_t IPC::handleMessageAsync<Messages::DrawingArea::CommitTransientZoom,IPC::Connection,WebKit::DrawingArea,WebKit::DrawingArea,void ()(double,WebCore::FloatPoint,WTF::CompletionHandler<void ()(void)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
{
  result = IPC::Decoder::decode<std::tuple<double,WebCore::FloatPoint>>(&v16, a2);
  if (v19 == 1)
  {
    result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
    if (v7)
    {
      v8 = result;
      while (1)
      {
        v9 = *a1;
        if ((*a1 & 1) == 0)
        {
          break;
        }

        v10 = *a1;
        atomic_compare_exchange_strong_explicit(a1, &v10, v9 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v10 == v9)
        {
          goto LABEL_8;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_8:
      v11 = WTF::fastMalloc(0x18);
      *v11 = &unk_1F10EEC60;
      v11[1] = v8;
      v11[2] = a1;
      v15 = v11;
      v12.n128_u64[0] = v16;
      v13.n128_u32[0] = v17;
      v14.n128_u32[0] = v18;
      (*(*a3 + 456))(a3, &v15, v12, v13, v14);
      result = v15;
      v15 = 0;
      if (result)
      {
        return (*(*result + 8))(result);
      }
    }
  }

  return result;
}

uint64_t WebKit::DrawingAreaProxy::didReceiveMessage(WebKit::DrawingAreaProxy *this, IPC::Connection *a2, IPC::Decoder *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  (**this)(this);
  v6 = *(a3 + 25);
  if (v6 > 0x14)
  {
    if (v6 == 22)
    {
      IPC::Decoder::decode<std::tuple<unsigned long long,WebKit::LayerTreeContext>>(buf, a3);
      if (buf[16] == 1)
      {
        (*(*this + 360))(this, *buf, &buf[8]);
      }

      return (*(*this + 8))(this, v7, v8);
    }

    if (v6 == 21)
    {
      IPC::Decoder::decode<std::tuple<unsigned long long,WebKit::LayerTreeContext>>(buf, a3);
      if (buf[16] == 1)
      {
        (*(*this + 352))(this, *buf, &buf[8]);
      }

      return (*(*this + 8))(this, v7, v8);
    }
  }

  else
  {
    if (v6 == 19)
    {
      IPC::Decoder::decode<std::tuple<unsigned long long,WebKit::LayerTreeContext>>(buf, a3);
      if (buf[16] == 1)
      {
        (*(*this + 368))(this, *buf, &buf[8]);
      }

      return (*(*this + 8))(this, v7, v8);
    }

    if (v6 == 20)
    {
      IPC::VectorArgumentCoder<false,WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul>::decode<IPC::Decoder>(a3, buf);
      if (buf[16])
      {
        goto LABEL_5;
      }

      v7 = *a3;
      v8 = *(a3 + 1);
      *a3 = 0;
      *(a3 + 1) = 0;
      v16 = *(a3 + 3);
      if (!v16 || !v8)
      {
        *a3 = 0;
        *(a3 + 1) = 0;
        return (*(*this + 8))(this, v7, v8);
      }

      (*(*v16 + 16))(v16, v7);
      if (buf[16])
      {
LABEL_5:
        v17 = *buf;
        v18 = *&buf[8];
        v19 = 1;
        (*(*this + 248))(this, a2, &v17);
        if (v19)
        {
          v9 = v17;
          if (v17)
          {
            v17 = 0;
            LODWORD(v18) = 0;
            WTF::fastFree(v9, v7);
          }
        }

        return (*(*this + 8))(this, v7, v8);
      }

      v7 = *a3;
      v8 = *(a3 + 1);
      v11 = *(a3 + 3);
      *a3 = 0;
      *(a3 + 1) = 0;
      if (!v11)
      {
        return (*(*this + 8))(this, v7, v8);
      }

      goto LABEL_14;
    }
  }

  v10 = qword_1ED6416C8;
  if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
  {
    if (v6 >= 0x107F)
    {
      v13 = 4223;
    }

    else
    {
      v13 = v6;
    }

    v14 = (&IPC::Detail::messageDescriptions)[3 * v13];
    v15 = *(a3 + 7);
    *buf = 136315394;
    *&buf[4] = v14;
    *&buf[12] = 2048;
    *&buf[14] = v15;
    _os_log_error_impl(&dword_19D52D000, v10, OS_LOG_TYPE_ERROR, "Unhandled message %s to %llu", buf, 0x16u);
  }

  v7 = *a3;
  v8 = *(a3 + 1);
  *a3 = 0;
  *(a3 + 1) = 0;
  v11 = *(a3 + 3);
  if (v11)
  {
LABEL_14:
    if (v8)
    {
      (*(*v11 + 16))(v11, v7);
    }
  }

  return (*(*this + 8))(this, v7, v8);
}

uint64_t IPC::handleMessage<Messages::EventDispatcher::WheelEvent,IPC::Connection,WebKit::EventDispatcher,WebKit::EventDispatcher,void ()(WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::WebWheelEvent const&,WebCore::RectEdges<WebCore::RubberBandingBehavior>)>(IPC::Decoder *a1, WTF::RunLoop *a2)
{
  v41 = *MEMORY[0x1E69E9840];
  v4 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a1);
  if (v5)
  {
    v6 = v4;
    IPC::ArgumentCoder<WebKit::WebWheelEvent,void>::decode(a1, v31);
    if (v40 & 1) != 0 || (v9 = *a1, v10 = *(a1 + 1), *a1 = 0, *(a1 + 1) = 0, (v11 = *(a1 + 3)) != 0) && v10 && ((*(*v11 + 16))(v11, v9), (v40))
    {
      v7 = IPC::ArgumentCoder<WebCore::RectEdges<WebCore::RubberBandingBehavior>,void>::decode(a1);
      if ((v7 & 0x100000000) != 0)
      {
        if ((v40 & 1) == 0)
        {
          __break(1u);
        }

        v18 = v6;
        v20 = 0;
        v21 = v32;
        v22 = v33;
        v23 = v34;
        v19 = &unk_1F10E8398;
        v26 = v37;
        v27 = v38;
        v28 = v39;
        v24 = v35;
        v25 = v36;
        v29 = v7;
        v30 = 1;
        return WebKit::EventDispatcher::wheelEvent(a2, v18, &v19);
      }

      v12 = *a1;
      v13 = *(a1 + 1);
      *a1 = 0;
      *(a1 + 1) = 0;
      v14 = *(a1 + 3);
      if (v14 && v13)
      {
        (*(*v14 + 16))(v14, v12);
      }
    }
  }

  LOBYTE(v18) = 0;
  v30 = 0;
  v15 = *a1;
  v16 = *(a1 + 1);
  *a1 = 0;
  *(a1 + 1) = 0;
  result = *(a1 + 3);
  if (result)
  {
    v17 = v16 == 0;
  }

  else
  {
    v17 = 1;
  }

  if (!v17)
  {
    result = (*(*result + 16))(result, v15);
    if (v30)
    {
      return WebKit::EventDispatcher::wheelEvent(a2, v18, &v19);
    }
  }

  return result;
}

WTF *IPC::handleMessageAsync<Messages::EventDispatcher::TouchEvent,IPC::Connection,WebKit::EventDispatcher,WebKit::EventDispatcher,void ()(WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::WebTouchEvent const&,WTF::CompletionHandler<void ()(BOOL,std::optional<WebKit::RemoteWebTouchEvent>)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
{
  v62 = *MEMORY[0x1E69E9840];
  v6 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
  if ((v7 & 1) == 0 || (v8 = v6, v9 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2), (v10 & 1) == 0))
  {
    LOBYTE(v36) = 0;
    v49 = 0;
    goto LABEL_21;
  }

  v11 = v9;
  IPC::ArgumentCoder<WebKit::WebTouchEvent,void>::decode(a2, &v50);
  if (v61 & 1) != 0 || (v33 = *a2, v34 = *(a2 + 1), *a2 = 0, *(a2 + 1) = 0, (v35 = *(a2 + 3)) != 0) && v34 && ((*(*v35 + 16))(v35, v33), (v61))
  {
    *&v13 = 0;
    v36 = v8;
    v37 = v11;
    v39 = 0;
    v40 = v51;
    v41 = v52;
    v42 = v53;
    v14 = v54[0];
    v15 = v54[1];
    *v54 = v13;
    v38 = &unk_1F10E7D80;
    v43 = v14;
    v44 = v15;
    v16 = v55;
    v55 = 0;
    v45[0] = v16;
    v17 = v56;
    v56 = 0;
    v45[1] = v17;
    v18 = v57;
    v57 = 0;
    v46[0] = v18;
    v19 = v58;
    v58 = 0;
    v46[1] = v19;
    v48 = v60;
    v47 = v59;
    v49 = 1;
    v50 = &unk_1F10E7D80;
    WTF::Vector<WebKit::WebTouchEvent,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v57, v12);
    WTF::Vector<WebKit::WebTouchEvent,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v55, v20);
    v22 = v54[0];
    if (v54[0])
    {
      v54[0] = 0;
      LODWORD(v54[1]) = 0;
      WTF::fastFree(v22, v21);
    }
  }

  else
  {
    LOBYTE(v36) = 0;
    v49 = 0;
  }

  if ((v49 & 1) == 0)
  {
LABEL_21:
    v24 = *a2;
    v31 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    result = *(a2 + 3);
    if (result)
    {
      v32 = v31 == 0;
    }

    else
    {
      v32 = 1;
    }

    if (v32)
    {
      goto LABEL_16;
    }

    result = (*(*result + 16))(result, v24);
    if ((v49 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
  if (v24)
  {
    v25 = result;
    while (1)
    {
      v26 = *a1;
      if ((*a1 & 1) == 0)
      {
        break;
      }

      v27 = *a1;
      atomic_compare_exchange_strong_explicit(a1, &v27, v26 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v27 == v26)
      {
        goto LABEL_13;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_13:
    v28 = WTF::fastMalloc(0x18);
    *v28 = &unk_1F10EEC88;
    *(v28 + 1) = v25;
    *(v28 + 2) = a1;
    v50 = v28;
    if ((v49 & 1) == 0)
    {
      __break(1u);
    }

    WebKit::EventDispatcher::touchEvent(a3, v36, v37, &v38, &v50);
    result = v50;
    v50 = 0;
    if (result)
    {
      result = (*(*result + 8))(result);
    }
  }

LABEL_16:
  if (v49 == 1)
  {
    v38 = &unk_1F10E7D80;
    WTF::Vector<WebKit::WebTouchEvent,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v46, v24);
    WTF::Vector<WebKit::WebTouchEvent,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v45, v29);
    result = v43;
    if (v43)
    {
      v43 = 0;
      LODWORD(v44) = 0;
      return WTF::fastFree(result, v30);
    }
  }

  return result;
}

atomic_ullong *WebKit::GPUConnectionToWebProcess::didReceiveMessage(WebKit::GPUConnectionToWebProcess *this, IPC::Connection *a2, IPC::Decoder *a3)
{
  v35 = *MEMORY[0x1E69E9840];
  v6 = *(this + 43);
  v7 = *(this + 176);
  v8 = (this + 16);
  while (1)
  {
    v9 = *v8;
    if ((*v8 & 1) == 0)
    {
      break;
    }

    v25 = *v8;
    atomic_compare_exchange_strong_explicit(v8, &v25, v9 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v25 == v9)
    {
      goto LABEL_4;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v8);
LABEL_4:
  switch(*(a3 + 25))
  {
    case '$':
      WebKit::GPUConnectionToWebProcess::clearNowPlayingInfo(this, a2);
      break;
    case '%':
      IPC::handleMessage<Messages::GPUConnectionToWebProcess::ConfigureLoggingChannel,IPC::Connection,WebKit::GPUConnectionToWebProcess,WebKit::GPUConnectionToWebProcess,void ()(WTF::String const&,WTFLogChannelState,WTFLogLevel)>(a3, this);
      break;
    case '&':
      v17 = IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebKit::RemoteAudioHardwareListenerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(a3);
      if (v18)
      {
        WebKit::GPUConnectionToWebProcess::createAudioHardwareListener(this, v17);
      }

      break;
    case '\'':
      if ((v7 & 0x4000) == 0)
      {
        v15 = qword_1ED6416C8;
        if (!os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_46;
        }

        *v34 = 136315138;
        *&v34[4] = "GPUConnectionToWebProcess_CreateGPU";
        v16 = "Message %s received by a disabled message endpoint";
        goto LABEL_59;
      }

      IPC::handleMessage<Messages::GPUConnectionToWebProcess::CreateGPU,IPC::Connection,WebKit::GPUConnectionToWebProcess,WebKit::GPUConnectionToWebProcess,void ()(WTF::ObjectIdentifierGeneric<WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,IPC::StreamServerConnectionHandle &&)>(a3, this);
      break;
    case '(':
      if ((v7 & 0x800) == 0 || (v6 & 0x400000000) == 0)
      {
        v15 = qword_1ED6416C8;
        if (!os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_46;
        }

        *v34 = 136315138;
        *&v34[4] = "GPUConnectionToWebProcess_CreateGraphicsContextGL";
        v16 = "Message %s received by a disabled message endpoint";
        goto LABEL_59;
      }

      IPC::handleMessage<Messages::GPUConnectionToWebProcess::CreateGraphicsContextGL,IPC::Connection,WebKit::GPUConnectionToWebProcess,WebKit::GPUConnectionToWebProcess,void ()(WTF::ObjectIdentifierGeneric<WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::GraphicsContextGLAttributes,WTF::ObjectIdentifierGeneric<WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,IPC::StreamServerConnectionHandle &&)>(a3, this);
      break;
    case ')':
      v21 = IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebKit::RemoteAudioHardwareListenerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(a3);
      if (v22)
      {
        WebKit::GPUConnectionToWebProcess::createRemoteCommandListener(this, v21);
      }

      break;
    case '*':
      IPC::handleMessage<Messages::GPUConnectionToWebProcess::CreateRenderingBackend,IPC::Connection,WebKit::GPUConnectionToWebProcess,WebKit::GPUConnectionToWebProcess,void ()(WTF::ObjectIdentifierGeneric<WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,IPC::StreamServerConnectionHandle &&)>(a3, this);
      break;
    case '+':
      IPC::handleMessage<Messages::GPUConnectionToWebProcess::CreateVisibilityPropagationContextForPage,IPC::Connection,WebKit::GPUConnectionToWebProcess,WebKit::GPUConnectionToWebProcess,void ()(WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,BOOL)>(a3, this);
      break;
    case ',':
      IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(v34, a3);
      if (v34[16] == 1)
      {
        WebKit::GPUConnectionToWebProcess::destroyVisibilityPropagationContextForPage(this, *v34, *&v34[8]);
      }

      break;
    case '-':
      if ((v6 & 0x440000000000) == 0)
      {
        v15 = qword_1ED6416C8;
        if (!os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_46;
        }

        *v34 = 136315138;
        *&v34[4] = "GPUConnectionToWebProcess_EnableMockMediaSource";
        v16 = "Message %s received by a disabled message endpoint";
        goto LABEL_59;
      }

      WebKit::GPUConnectionToWebProcess::enableMockMediaSource(this);
      break;
    case '.':
      WebKit::GPUConnectionToWebProcess::ensureMediaSessionHelper(this);
      break;
    case '/':
      v19 = IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebKit::RemoteAudioHardwareListenerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(a3);
      if (v20)
      {
        WebKit::GPUConnectionToWebProcess::releaseAudioHardwareListener(this, v19);
      }

      break;
    case '0':
      if ((v7 & 0x4000) == 0)
      {
        v15 = qword_1ED6416C8;
        if (!os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_46;
        }

        *v34 = 136315138;
        *&v34[4] = "GPUConnectionToWebProcess_ReleaseGPU";
        v16 = "Message %s received by a disabled message endpoint";
        goto LABEL_59;
      }

      v26 = IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebKit::AudioMediaStreamTrackRendererInternalUnitIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(a3);
      if (v27)
      {
        WebKit::GPUConnectionToWebProcess::releaseGPU(this, v26);
      }

      break;
    case '1':
      if ((v7 & 0x800) == 0 || (v6 & 0x400000000) == 0)
      {
        v15 = qword_1ED6416C8;
        if (!os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_46;
        }

        *v34 = 136315138;
        *&v34[4] = "GPUConnectionToWebProcess_ReleaseGraphicsContextGL";
        v16 = "Message %s received by a disabled message endpoint";
LABEL_59:
        v32 = v15;
        v33 = 12;
        goto LABEL_60;
      }

      v13 = IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebKit::AudioMediaStreamTrackRendererInternalUnitIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(a3);
      if (v14)
      {
        WebKit::GPUConnectionToWebProcess::releaseGraphicsContextGL(this, v13);
      }

      break;
    case '2':
      v23 = IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebKit::RemoteAudioHardwareListenerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(a3);
      if (v24)
      {
        WebKit::GPUConnectionToWebProcess::releaseRemoteCommandListener(this, v23);
      }

      break;
    case '3':
      v11 = IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>(a3);
      if (v12)
      {
        WebKit::GPUConnectionToWebProcess::releaseRenderingBackend(this, v11);
      }

      break;
    case '4':
      IPC::handleMessage<Messages::GPUConnectionToWebProcess::SetMediaEnvironment,IPC::Connection,WebKit::GPUConnectionToWebProcess,WebKit::GPUConnectionToWebProcess,void ()(WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::String const&)>(a3, this);
      break;
    case '5':
      IPC::handleMessage<Messages::GPUConnectionToWebProcess::SetMediaOverridesForTesting,IPC::Connection,WebKit::GPUConnectionToWebProcess,WebKit::GPUConnectionToWebProcess,void ()(WebKit::MediaOverridesForTesting)>(a3, this);
      break;
    case '6':
      IPC::handleMessage<Messages::GPUConnectionToWebProcess::SetNowPlayingInfo,IPC::Connection,WebKit::GPUConnectionToWebProcess,WebKit::GPUConnectionToWebProcess,void ()(WebCore::NowPlayingInfo &&)>(a3, this);
      break;
    case '7':
      IPC::handleMessage<Messages::GPUConnectionToWebProcess::UpdateSampleBufferDisplayLayerBoundsAndPosition,IPC::Connection,WebKit::GPUConnectionToWebProcess,WebKit::GPUConnectionToWebProcess,void ()(WTF::ObjectIdentifierGeneric<WebKit::SampleBufferDisplayLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::FloatRect,std::optional<WTF::MachSendRightAnnotated> &&)>(a3, this);
      break;
    default:
      if (!WebKit::GPUConnectionToWebProcess::dispatchMessage(this, a2, a3))
      {
        v28 = qword_1ED6416C8;
        if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
        {
          v29 = *(a3 + 25);
          if (v29 >= 0x107F)
          {
            v29 = 4223;
          }

          v30 = (&IPC::Detail::messageDescriptions)[3 * v29];
          v31 = *(a3 + 7);
          *v34 = 136315394;
          *&v34[4] = v30;
          *&v34[12] = 2048;
          *&v34[14] = v31;
          v16 = "Unhandled message %s to %llu";
          v32 = v28;
          v33 = 22;
LABEL_60:
          _os_log_error_impl(&dword_19D52D000, v32, OS_LOG_TYPE_ERROR, v16, v34, v33);
        }

LABEL_46:
        IPC::Decoder::markInvalid(a3);
      }

      break;
  }

  return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUConnectionToWebProcess,(WTF::DestructionThread)1>::deref(v8);
}

_BYTE *IPC::handleMessage<Messages::GPUConnectionToWebProcess::CreateRenderingBackend,IPC::Connection,WebKit::GPUConnectionToWebProcess,WebKit::GPUConnectionToWebProcess,void ()(WTF::ObjectIdentifierGeneric<WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,IPC::StreamServerConnectionHandle &&)>(IPC::Decoder *a1, uint64_t a2)
{
  IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,IPC::StreamServerConnectionHandle>>(&v4, a1);
  if (v5[24] == 1)
  {
    WebKit::GPUConnectionToWebProcess::createRenderingBackend(a2, v4, v5);
  }

  return std::__optional_destruct_base<std::tuple<WTF::ObjectIdentifierGeneric<WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,IPC::StreamServerConnectionHandle>,false>::~__optional_destruct_base[abi:sn200100](&v4);
}

void IPC::handleMessage<Messages::GPUConnectionToWebProcess::CreateGraphicsContextGL,IPC::Connection,WebKit::GPUConnectionToWebProcess,WebKit::GPUConnectionToWebProcess,void ()(WTF::ObjectIdentifierGeneric<WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::GraphicsContextGLAttributes,WTF::ObjectIdentifierGeneric<WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,IPC::StreamServerConnectionHandle &&)>(uint64_t *a1, uint64_t a2)
{
  v4 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a1);
  if ((v5 & 1) == 0)
  {
    goto LABEL_11;
  }

  v12 = v4;
  v13 = IPC::ArgumentCoder<WebCore::GraphicsContextGLAttributes,void>::decode(a1, v5, v6, v7, v8, v9, v10, v11);
  v15 = v14;
  if ((v14 & 0x100) == 0)
  {
    v21 = *a1;
    v22 = a1[1];
    *a1 = 0;
    a1[1] = 0;
    v23 = a1[3];
    if (v23 && v22)
    {
      (*(*v23 + 16))(v23, v21);
    }

    goto LABEL_11;
  }

  v16 = v13;
  v17 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a1);
  if ((v18 & 1) == 0)
  {
LABEL_11:
    LOBYTE(v27) = 0;
    v33 = 0;
    goto LABEL_12;
  }

  v19 = v17;
  IPC::Decoder::decode<IPC::StreamServerConnectionHandle>(a1, v34);
  if (v36)
  {
    v27 = v12;
    v28 = v16;
    v29 = v15;
    v30 = v19;
    WTF::MachSendRight::MachSendRight();
    WTF::MachSendRight::MachSendRight();
    v32[1] = v35;
    v20 = 1;
  }

  else
  {
    v20 = 0;
    LOBYTE(v27) = 0;
  }

  v33 = v20;
  std::__optional_destruct_base<IPC::StreamServerConnectionHandle,false>::~__optional_destruct_base[abi:sn200100](v34);
  if (v33)
  {
    goto LABEL_8;
  }

LABEL_12:
  v24 = *a1;
  v25 = a1[1];
  *a1 = 0;
  a1[1] = 0;
  v26 = a1[3];
  if (v26)
  {
    if (v25)
    {
      (*(*v26 + 16))(v26, v24);
      if (v33)
      {
LABEL_8:
        WebKit::GPUConnectionToWebProcess::createGraphicsContextGL(a2, v27, v28, v29, v30, &v31);
        if (v33)
        {
          WTF::MachSendRight::~MachSendRight(v32);
          WTF::MachSendRight::~MachSendRight(&v31);
        }
      }
    }
  }
}

void IPC::handleMessage<Messages::GPUConnectionToWebProcess::CreateGPU,IPC::Connection,WebKit::GPUConnectionToWebProcess,WebKit::GPUConnectionToWebProcess,void ()(WTF::ObjectIdentifierGeneric<WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,IPC::StreamServerConnectionHandle &&)>(uint64_t *a1, uint64_t a2)
{
  v4 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a1);
  if (v5 & 1) != 0 && (v6 = v4, v7 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a1), (v8))
  {
    v9 = v7;
    IPC::Decoder::decode<IPC::StreamServerConnectionHandle>(a1, v20);
    if (v22)
    {
      v15 = v6;
      v16 = v9;
      WTF::MachSendRight::MachSendRight();
      WTF::MachSendRight::MachSendRight();
      v18[1] = v21;
      v10 = 1;
    }

    else
    {
      v10 = 0;
      LOBYTE(v15) = 0;
    }

    v19 = v10;
    std::__optional_destruct_base<IPC::StreamServerConnectionHandle,false>::~__optional_destruct_base[abi:sn200100](v20);
    if (v19)
    {
      goto LABEL_7;
    }
  }

  else
  {
    LOBYTE(v15) = 0;
    v19 = 0;
  }

  v11 = *a1;
  v12 = a1[1];
  *a1 = 0;
  a1[1] = 0;
  v13 = a1[3];
  if (v13)
  {
    v14 = v12 == 0;
  }

  else
  {
    v14 = 1;
  }

  if (!v14)
  {
    (*(*v13 + 16))(v13, v11);
    if (v19)
    {
LABEL_7:
      WebKit::GPUConnectionToWebProcess::createGPU(a2, v15, v16, &v17);
      if (v19)
      {
        WTF::MachSendRight::~MachSendRight(v18);
        WTF::MachSendRight::~MachSendRight(&v17);
      }
    }
  }
}

void IPC::handleMessage<Messages::GPUConnectionToWebProcess::SetNowPlayingInfo,IPC::Connection,WebKit::GPUConnectionToWebProcess,WebKit::GPUConnectionToWebProcess,void ()(WebCore::NowPlayingInfo &&)>(IPC::Decoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<WebCore::NowPlayingInfo,void>::decode(a1, &v24);
  if (v31 & 1) != 0 || ((v10 = *a1, v11 = *(a1 + 1), *a1 = 0, *(a1 + 1) = 0, (v12 = *(a1 + 3)) != 0) ? (v13 = v11 == 0) : (v13 = 1), !v13 && ((*(*v12 + 16))(v12, v10), (v31)))
  {
    v5 = v24;
    v6 = v25;
    v24 = 0u;
    v25 = 0u;
    v17[0] = v5;
    v17[1] = v6;
    LOBYTE(v18) = 0;
    v20 = 0;
    if (v28 == 1)
    {
      v7 = v26;
      v26 = 0uLL;
      v18 = v7;
      v8 = v27;
      v27 = 0;
      v19 = v8;
      v20 = 1;
    }

    v21 = v29;
    v22[0] = v30[0];
    *(v22 + 11) = *(v30 + 11);
    v23 = 1;
    WebCore::NowPlayingMetadata::~NowPlayingMetadata(&v24, v4);
    WebKit::GPUConnectionToWebProcess::setNowPlayingInfo(a2, v17);
    if (v23)
    {
      WebCore::NowPlayingMetadata::~NowPlayingMetadata(v17, v9);
    }
  }

  else
  {
    v14 = *a1;
    v15 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    v16 = *(a1 + 3);
    if (v16 && v15)
    {
      (*(*v16 + 16))(v16, v14);
    }
  }
}

id **IPC::handleMessage<Messages::GPUConnectionToWebProcess::CreateVisibilityPropagationContextForPage,IPC::Connection,WebKit::GPUConnectionToWebProcess,WebKit::GPUConnectionToWebProcess,void ()(WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,BOOL)>(IPC::Decoder *a1, uint64_t a2)
{
  result = IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,BOOL>>(v7, a1);
  if (v9 == 1)
  {
    v4 = v7[0];
    v5 = v7[1];
    v6 = v8 & 1;

    return WebKit::GPUConnectionToWebProcess::createVisibilityPropagationContextForPage(a2, v4, v5, v6);
  }

  return result;
}

void IPC::handleMessage<Messages::GPUConnectionToWebProcess::SetMediaOverridesForTesting,IPC::Connection,WebKit::GPUConnectionToWebProcess,WebKit::GPUConnectionToWebProcess,void ()(WebKit::MediaOverridesForTesting)>(IPC::Decoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<WebKit::MediaOverridesForTesting,void>::decode(a1, &v13);
  if (v16)
  {
    v11 = v14;
    *v12 = *v15;
    *&v12[15] = *&v15[15];
    v10 = v13;
    WebKit::GPUConnectionToWebProcess::setMediaOverridesForTesting(a2, &v10);
  }

  else
  {
    v4 = *a1;
    v5 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    v6 = *(a1 + 3);
    if (v6 && v5)
    {
      (*(*v6 + 16))(v6, v4);
      v7 = *(a1 + 1);
      v8 = *(a1 + 3);
      *a1 = 0;
      *(a1 + 1) = 0;
      if (v8 && v7)
      {
        v9 = *(*v8 + 16);

        v9();
      }
    }

    else
    {
      *a1 = 0;
      *(a1 + 1) = 0;
    }
  }
}

WTF::StringImpl *IPC::handleMessage<Messages::GPUConnectionToWebProcess::ConfigureLoggingChannel,IPC::Connection,WebKit::GPUConnectionToWebProcess,WebKit::GPUConnectionToWebProcess,void ()(WTF::String const&,WTFLogChannelState,WTFLogLevel)>(IPC::Decoder *a1, int a2)
{
  IPC::ArgumentCoder<std::tuple<WTF::String,WTFLogChannelState,WTFLogLevel>,void>::decode<IPC::Decoder>(a1, &v9);
  if (v12 & 1) != 0 || ((v6 = *a1, v7 = *(a1 + 1), *a1 = 0, *(a1 + 1) = 0, (result = *(a1 + 3)) != 0) ? (v8 = v7 == 0) : (v8 = 1), !v8 && (result = (*(*result + 16))(result, v6), (v12)))
  {
    result = WebKit::GPUConnectionToWebProcess::configureLoggingChannel(a2, &v9, v10, v11);
    if (v12)
    {
      result = v9;
      v9 = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          return WTF::StringImpl::destroy(result, v5);
        }
      }
    }
  }

  return result;
}

void IPC::handleMessage<Messages::GPUConnectionToWebProcess::UpdateSampleBufferDisplayLayerBoundsAndPosition,IPC::Connection,WebKit::GPUConnectionToWebProcess,WebKit::GPUConnectionToWebProcess,void ()(WTF::ObjectIdentifierGeneric<WebKit::SampleBufferDisplayLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::FloatRect,std::optional<WTF::MachSendRightAnnotated> &&)>(uint64_t *a1, uint64_t a2)
{
  v4 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a1);
  if ((v5 & 1) == 0)
  {
    goto LABEL_13;
  }

  v6 = v4;
  IPC::ArgumentCoder<WebCore::FloatRect,void>::decode(a1, &v24);
  if ((v25 & 1) == 0)
  {
    v16 = *a1;
    v17 = a1[1];
    *a1 = 0;
    a1[1] = 0;
    v18 = a1[3];
    if (v18 && v17)
    {
      (*(*v18 + 16))(v18, v16);
    }

LABEL_13:
    LOBYTE(v19) = 0;
    v23 = 0;
    v11 = *a1;
    v12 = a1[1];
    *a1 = 0;
    a1[1] = 0;
    v13 = a1[3];
    if (v13)
    {
      v14 = v12 == 0;
    }

    else
    {
      v14 = 1;
    }

    if (v14)
    {
      return;
    }

    (*(*v13 + 16))(v13, v11);
    if ((v23 & 1) == 0)
    {
      return;
    }

    goto LABEL_9;
  }

  IPC::ArgumentCoder<std::optional<WTF::MachSendRightAnnotated>,void>::decode<IPC::Decoder>(a1, v26);
  if ((v29 & 1) == 0)
  {
    v8 = *a1;
    v9 = a1[1];
    *a1 = 0;
    a1[1] = 0;
    v10 = a1[3];
    if (!v10)
    {
      goto LABEL_13;
    }

    if (!v9)
    {
      goto LABEL_13;
    }

    (*(*v10 + 16))(v10, v8);
    if ((v29 & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  v19 = v6;
  v20[0] = 0;
  v22 = 0;
  if (v28 == 1)
  {
    WTF::MachSendRight::MachSendRight();
    v21 = v27;
    v22 = 1;
    v23 = 1;
    if (v29 & 1) != 0 && (v28)
    {
      v27 = 0;
      WTF::MachSendRight::~MachSendRight(v26);
    }
  }

  else
  {
    v23 = 1;
  }

LABEL_9:
  WebKit::GPUConnectionToWebProcess::updateSampleBufferDisplayLayerBoundsAndPosition(a2, v19, v20);
  if ((v23 & 1) != 0 && v22 == 1)
  {
    v15 = v21;
    v21 = 0;
    if (v15)
    {
      WTF::fastFree(v15, v7);
    }

    WTF::MachSendRight::~MachSendRight(v20);
  }
}

WTF::StringImpl *IPC::handleMessage<Messages::GPUConnectionToWebProcess::SetMediaEnvironment,IPC::Connection,WebKit::GPUConnectionToWebProcess,WebKit::GPUConnectionToWebProcess,void ()(WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::String const&)>(IPC::Decoder *a1, uint64_t a2)
{
  result = IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::String>>(&v5, a1);
  if (v7 == 1)
  {
    result = WebKit::GPUConnectionToWebProcess::setMediaEnvironment(a2, v5, &v6);
    if (v7)
    {
      result = v6;
      v6 = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          return WTF::StringImpl::destroy(result, v4);
        }
      }
    }
  }

  return result;
}

uint64_t WebKit::GPUConnectionToWebProcess::didReceiveSyncMessage(atomic_ullong *a1, atomic_ullong *a2, uint64_t a3, uint64_t *a4)
{
  v30 = *MEMORY[0x1E69E9840];
  v8 = a1[43];
  v9 = a1 + 2;
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
      goto LABEL_6;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v9);
LABEL_6:
  if (*(a3 + 50) == 3983 && (v8 & 0x100200000000) == 0x100200000000)
  {
    v18 = *a4;
    *a4 = 0;
    while (1)
    {
      v19 = *a2;
      if ((*a2 & 1) == 0)
      {
        break;
      }

      v20 = *a2;
      atomic_compare_exchange_strong_explicit(a2, &v20, v19 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v20 == v19)
      {
        goto LABEL_19;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_19:
    v21 = WTF::fastMalloc(0x18);
    *v21 = &unk_1F10EECB0;
    v21[1] = v18;
    v21[2] = a2;
    *v27 = v21;
    WebKit::GPUConnectionToWebProcess::ensureAudioSession(a1, v27);
    v22 = *v27;
    *v27 = 0;
    if (v22)
    {
      (*(*v22 + 8))(v22);
    }

    goto LABEL_21;
  }

  if (WebKit::GPUConnectionToWebProcess::dispatchSyncMessage(a1, a2, a3, a4))
  {
LABEL_21:
    v17 = 1;
    goto LABEL_22;
  }

  v13 = qword_1ED6416C8;
  if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
  {
    v24 = *(a3 + 50);
    if (v24 >= 0x107F)
    {
      v24 = 4223;
    }

    v25 = (&IPC::Detail::messageDescriptions)[3 * v24];
    v26 = *(a3 + 56);
    *v27 = 136315394;
    *&v27[4] = v25;
    v28 = 2048;
    v29 = v26;
    _os_log_error_impl(&dword_19D52D000, v13, OS_LOG_TYPE_ERROR, "Unhandled synchronous message %s to %llu", v27, 0x16u);
  }

  v14 = *a3;
  v15 = *(a3 + 8);
  *a3 = 0;
  *(a3 + 8) = 0;
  v16 = *(a3 + 24);
  if (v16 && v15)
  {
    (*(*v16 + 16))(v16, v14);
  }

  v17 = 0;
LABEL_22:
  WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUConnectionToWebProcess,(WTF::DestructionThread)1>::deref(v9);
  return v17;
}

atomic_uchar **WebKit::GPUProcessConnection::didReceiveMessage(WebKit::GPUProcessConnection *this, IPC::Connection *a2, IPC::Decoder *a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = (this + 24);
  while (1)
  {
    v7 = *v6;
    if ((*v6 & 1) == 0)
    {
      break;
    }

    v8 = *v6;
    atomic_compare_exchange_strong_explicit(v6, &v8, v7 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v8 == v7)
    {
      goto LABEL_4;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v6);
LABEL_4:
  v9 = *(a3 + 25);
  switch(v9)
  {
    case '8':
      IPC::Decoder::decode<std::tuple<std::optional<WebKit::GPUProcessConnectionInfo>>>(&v17, a3);
      if (v21 == 1)
      {
        WebKit::GPUProcessConnection::didInitialize(this, &v17);
      }

      break;
    case '9':
      IPC::handleMessage<Messages::GPUProcessConnection::DidReceiveRemoteCommand,IPC::Connection,WebKit::GPUProcessConnection,WebKit::GPUProcessConnection,void ()(WebCore::PlatformMediaSessionRemoteControlCommandType,WebCore::PlatformMediaSessionRemoteCommandArgument const&)>(a3, this);
      break;
    case ':':
      v12 = IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebKit::AudioMediaStreamTrackRendererInternalUnitIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(a3);
      if (v10)
      {
        WebKit::GPUProcessConnection::resetAudioMediaStreamTrackRendererInternalUnit(this, v12);
      }

      break;
    default:
      if ((WebKit::GPUProcessConnection::dispatchMessage(this, a2, a3) & 1) == 0)
      {
        v13 = qword_1ED6416C8;
        if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
        {
          v14 = *(a3 + 25);
          if (v14 >= 0x107F)
          {
            v14 = 4223;
          }

          v15 = (&IPC::Detail::messageDescriptions)[3 * v14];
          v16 = *(a3 + 7);
          v17 = 136315394;
          v18 = v15;
          v19 = 2048;
          v20 = v16;
          _os_log_error_impl(&dword_19D52D000, v13, OS_LOG_TYPE_ERROR, "Unhandled message %s to %llu", &v17, 0x16u);
        }

        IPC::Decoder::markInvalid(a3);
      }

      break;
  }

  return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUProcessConnection,(WTF::DestructionThread)0>::deref(v6, v10);
}

uint64_t IPC::handleMessage<Messages::GPUProcessConnection::DidReceiveRemoteCommand,IPC::Connection,WebKit::GPUProcessConnection,WebKit::GPUProcessConnection,void ()(WebCore::PlatformMediaSessionRemoteControlCommandType,WebCore::PlatformMediaSessionRemoteCommandArgument const&)>(uint64_t *a1, WebCore::PlatformMediaSessionManager *a2)
{
  IPC::ArgumentCoder<std::tuple<WebCore::PlatformMediaSessionRemoteControlCommandType,WebCore::PlatformMediaSessionRemoteCommandArgument>,void>::decode<IPC::Decoder>(a1, v8);
  if (v10)
  {
    return WebKit::GPUProcessConnection::didReceiveRemoteCommand(a2, v8[0], &v9);
  }

  v5 = *a1;
  v6 = a1[1];
  *a1 = 0;
  a1[1] = 0;
  result = a1[3];
  if (result && v6 != 0)
  {
    result = (*(*result + 16))(result, v5);
    if (v10)
    {
      return WebKit::GPUProcessConnection::didReceiveRemoteCommand(a2, v8[0], &v9);
    }
  }

  return result;
}

uint64_t WebKit::GPUProcessConnection::didReceiveSyncMessage(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24 = *MEMORY[0x1E69E9840];
  v8 = (a1 + 24);
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
      goto LABEL_6;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v8);
LABEL_6:
  v12 = IPC::MessageReceiverMap::dispatchSyncMessage(a1 + 40, a2, a3, a4);
  if ((v12 & 1) == 0)
  {
    v13 = qword_1ED6416C8;
    if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
    {
      v17 = *(a3 + 50);
      if (v17 >= 0x107F)
      {
        v17 = 4223;
      }

      v18 = (&IPC::Detail::messageDescriptions)[3 * v17];
      v19 = *(a3 + 56);
      v20 = 136315394;
      v21 = v18;
      v22 = 2048;
      v23 = v19;
      _os_log_error_impl(&dword_19D52D000, v13, OS_LOG_TYPE_ERROR, "Unhandled synchronous message %s to %llu", &v20, 0x16u);
    }

    v11 = *a3;
    v14 = *(a3 + 8);
    *a3 = 0;
    *(a3 + 8) = 0;
    v15 = *(a3 + 24);
    if (v15 && v14)
    {
      (*(*v15 + 16))(v15, v11);
    }
  }

  WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUProcessConnection,(WTF::DestructionThread)0>::deref(v8, v11);
  return v12;
}

void IPC::handleMessageAsync<Messages::GPUProcess::InitializeGPUProcess,IPC::Connection,WebKit::GPUProcess,WebKit::GPUProcess,void ()(WebKit::GPUProcessCreationParameters &&,WTF::CompletionHandler<void ()(void)> &&)>(WTF::ThreadSafeWeakPtrControlBlock **a1, IPC::Decoder *a2, uint64_t a3)
{
  IPC::Decoder::decode<std::tuple<WebKit::GPUProcessCreationParameters>>(v14, a2);
  if (v15 == 1)
  {
    v7 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
    if (v6)
    {
      v8 = v7;
LABEL_4:
      v9 = *a1;
      if ((*a1 & 1) == 0)
      {
        WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
        goto LABEL_6;
      }

      while (1)
      {
        v12 = v9;
        atomic_compare_exchange_strong_explicit(a1, &v12, v9 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v12 != v9)
        {
          goto LABEL_4;
        }

LABEL_6:
        v10 = WTF::fastMalloc(0x18);
        *v10 = &unk_1F10EECD8;
        v10[1] = v8;
        v10[2] = a1;
        v13 = v10;
        v9 = v15;
        if (v15)
        {
          break;
        }

        __break(1u);
      }

      WebKit::GPUProcess::initializeGPUProcess(a3, v14, &v13);
      v11 = v13;
      v13 = 0;
      if (v11)
      {
        (*(*v11 + 8))(v11);
      }
    }
  }

  if (v15 == 1)
  {
    WebKit::GPUProcessCreationParameters::~GPUProcessCreationParameters(v14, v6);
  }
}

uint64_t IPC::handleMessageAsync<Messages::GPUProcess::CreateGPUConnectionToWebProcess,IPC::Connection,WebKit::GPUProcess,WebKit::GPUProcess,void ()(WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,PAL::SessionID,IPC::ConnectionHandle &&,WebKit::GPUProcessConnectionParameters &&,WTF::CompletionHandler<void ()(void)> &&)>(WTF::ThreadSafeWeakPtrControlBlock **a1, IPC::Decoder *a2, uint64_t a3)
{
  IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,PAL::SessionID,IPC::ConnectionHandle,WebKit::GPUProcessConnectionParameters>>(v15, a2);
  if (v18 == 1)
  {
    v7 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
    if (v6)
    {
      v8 = v7;
LABEL_4:
      v9 = *a1;
      if ((*a1 & 1) == 0)
      {
        WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
        goto LABEL_6;
      }

      while (1)
      {
        v13 = v9;
        atomic_compare_exchange_strong_explicit(a1, &v13, v9 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v13 != v9)
        {
          goto LABEL_4;
        }

LABEL_6:
        v10 = WTF::fastMalloc(0x18);
        *v10 = &unk_1F10EED00;
        v10[1] = v8;
        v10[2] = a1;
        v14 = v10;
        v9 = v18;
        if (v18)
        {
          break;
        }

        __break(1u);
      }

      WebKit::GPUProcess::createGPUConnectionToWebProcess(a3, v15[0], v15[1], &v16, &v17, &v14);
      v11 = v14;
      v14 = 0;
      if (v11)
      {
        (*(*v11 + 8))(v11);
      }
    }
  }

  return std::optional<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,PAL::SessionID,IPC::ConnectionHandle,WebKit::GPUProcessConnectionParameters>>::~optional(v15, v6);
}

uint64_t IPC::handleMessageAsync<Messages::GPUProcess::SharedPreferencesForWebProcessDidChange,IPC::Connection,WebKit::GPUProcess,WebKit::GPUProcess,void ()(WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::SharedPreferencesForWebProcess &&,WTF::CompletionHandler<void ()(void)> &&)>(WTF::ThreadSafeWeakPtrControlBlock **a1, IPC::Decoder *a2, uint64_t a3)
{
  result = IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::SharedPreferencesForWebProcess>>(a2, &v13);
  if (v15 == 1)
  {
    result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
    if (v7)
    {
      v8 = result;
LABEL_4:
      v9 = *a1;
      if ((*a1 & 1) == 0)
      {
        WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
        goto LABEL_6;
      }

      while (1)
      {
        v11 = v9;
        atomic_compare_exchange_strong_explicit(a1, &v11, v9 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v11 != v9)
        {
          goto LABEL_4;
        }

LABEL_6:
        v10 = WTF::fastMalloc(0x18);
        *v10 = &unk_1F10EED28;
        v10[1] = v8;
        v10[2] = a1;
        v12 = v10;
        v9 = v15;
        if (v15)
        {
          break;
        }

        __break(1u);
      }

      WebKit::GPUProcess::sharedPreferencesForWebProcessDidChange(a3, v13, &v14, &v12);
      result = v12;
      v12 = 0;
      if (result)
      {
        return (*(*result + 8))(result);
      }
    }
  }

  return result;
}

void IPC::handleMessage<Messages::GPUProcess::UpdateSandboxAccess,IPC::Connection,WebKit::GPUProcess,WebKit::GPUProcess,void ()(WTF::Vector<WebKit::SandboxExtensionHandle,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&)>(IPC::Decoder *a1, void *a2)
{
  IPC::Decoder::decode<std::tuple<WTF::Vector<WebKit::SandboxExtensionHandle,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>(a1, a2, v4);
  if (v5 == 1)
  {
    WebKit::GPUProcess::updateSandboxAccess(a2, v4);
    if (v5)
    {
      WTF::Vector<WebKit::SandboxExtensionHandle,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v4, v3);
    }
  }
}

void *IPC::handleMessageAsync<Messages::GPUProcess::PrepareToSuspend,IPC::Connection,WebKit::GPUProcess,WebKit::GPUProcess,void ()(BOOL,WTF::MonotonicTime,WTF::CompletionHandler<void ()(void)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, WebKit::GPUProcess *a3)
{
  result = IPC::Decoder::decode<std::tuple<BOOL,WTF::MonotonicTime>>(a2, v12);
  if (v13 == 1)
  {
    result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
    if (v7)
    {
      v8 = result;
      while (1)
      {
        v9 = *a1;
        if ((*a1 & 1) == 0)
        {
          break;
        }

        v10 = *a1;
        atomic_compare_exchange_strong_explicit(a1, &v10, v9 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v10 == v9)
        {
          goto LABEL_8;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_8:
      result = WTF::fastMalloc(0x18);
      *result = &unk_1F10EED50;
      result[1] = v8;
      result[2] = a1;
      v11 = result;
      if (v13)
      {
        WebKit::GPUProcess::prepareToSuspend(a3, v12[0], &v11);
        result = v11;
        v11 = 0;
        if (result)
        {
          return (*(*result + 8))(result);
        }
      }

      else
      {
        __break(1u);
      }
    }
  }

  return result;
}

uint64_t IPC::handleMessage<Messages::GPUProcess::AddSession,IPC::Connection,WebKit::GPUProcess,WebKit::GPUProcess,void ()(PAL::SessionID,WebKit::GPUProcessSessionParameters &&)>(IPC::Decoder *a1, uint64_t a2)
{
  IPC::Decoder::decode<std::tuple<PAL::SessionID,WebKit::GPUProcessSessionParameters>>(&v4, a1);
  if (v6 == 1)
  {
    WebKit::GPUProcess::addSession(a2, v4, &v5);
  }

  return std::optional<std::tuple<PAL::SessionID,WebKit::GPUProcessSessionParameters>>::~optional(&v4);
}

WTF::StringImpl *IPC::handleMessage<Messages::GPUProcess::RotationAngleForCaptureDeviceChanged,IPC::Connection,WebKit::GPUProcess,WebKit::GPUProcess,void ()(WTF::String const&,WebCore::VideoFrameRotation)>(IPC::Decoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<WTF::String,void>::decode<IPC::Decoder>(a1, &v18);
  if ((v19 & 1) == 0)
  {
    goto LABEL_17;
  }

  while (1)
  {
    v4 = IPC::Decoder::decode<WebCore::VideoFrameRotation>(a1);
    if ((v4 & 0x10000) == 0)
    {
      if (v19)
      {
        v6 = v18;
        v18 = 0;
        if (v6)
        {
          if (atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v6, v5);
          }
        }
      }

LABEL_7:
      v7 = *a1;
      v8 = *(a1 + 1);
      *a1 = 0;
      *(a1 + 1) = 0;
      result = *(a1 + 3);
      if (result)
      {
        if (v8)
        {
          return (*(*result + 16))(result, v7);
        }
      }

      return result;
    }

    if (v19)
    {
      break;
    }

    __break(1u);
LABEL_17:
    v11 = *a1;
    v12 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    v13 = *(a1 + 3);
    if (v13)
    {
      v14 = v12 == 0;
    }

    else
    {
      v14 = 1;
    }

    if (!v14)
    {
      (*(*v13 + 16))(v13, v11);
      if (v19)
      {
        continue;
      }
    }

    goto LABEL_7;
  }

  v15 = v18;
  v16 = v4;
  v17 = 1;
  result = WebKit::GPUProcess::rotationAngleForCaptureDeviceChanged(a2, &v15, v4);
  if (v17)
  {
    result = v15;
    v15 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(result, v10);
      }
    }
  }

  return result;
}

uint64_t IPC::handleMessageAsync<Messages::GPUProcess::UpdateCaptureAccess,IPC::Connection,WebKit::GPUProcess,WebKit::GPUProcess,void ()(BOOL,BOOL,BOOL,WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(void)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t *a3)
{
  v5 = *(a2 + 2);
  v6 = *a2;
  v7 = *(a2 + 1);
  if (v7 <= &v5[-v6])
  {
    *a2 = 0;
    *(a2 + 1) = 0;
    v27 = *(a2 + 3);
    if (v27)
    {
      if (v7)
      {
        (*(*v27 + 16))(v27);
        v6 = *a2;
        v7 = *(a2 + 1);
LABEL_27:
        *a2 = 0;
        *(a2 + 1) = 0;
        v28 = *(a2 + 3);
        if (v28)
        {
          if (v7)
          {
            (*(*v28 + 16))(v28, v6);
            goto LABEL_42;
          }

LABEL_29:
          v6 = 0;
          goto LABEL_30;
        }

LABEL_28:
        v7 = 0;
        goto LABEL_29;
      }
    }

    else
    {
      v7 = 0;
    }

    v6 = 0;
    goto LABEL_27;
  }

  v8 = v5 + 1;
  *(a2 + 2) = v5 + 1;
  if (!v5)
  {
    goto LABEL_27;
  }

  v9 = *v5;
  if (v9 >= 2)
  {
    goto LABEL_30;
  }

  if (v7 <= &v8[-v6])
  {
    goto LABEL_19;
  }

  v10 = v5 + 2;
  *(a2 + 2) = v5 + 2;
  if (v5 == -1)
  {
LABEL_37:
    v23 = v7;
    v24 = v6;
    goto LABEL_21;
  }

  v11 = *v8;
  if (v11 >= 2)
  {
LABEL_30:
    *a2 = 0;
    *(a2 + 1) = 0;
    v29 = *(a2 + 3);
    if (v29 && v7)
    {
      (*(*v29 + 16))(v29, v6);
    }

    goto LABEL_31;
  }

  if (v7 <= &v10[-v6])
  {
LABEL_19:
    v23 = 0;
    v24 = 0;
    *a2 = 0;
    *(a2 + 1) = 0;
    v25 = *(a2 + 3);
    if (v25)
    {
      (*(*v25 + 16))(v25);
      v24 = *a2;
      v23 = *(a2 + 1);
    }

LABEL_21:
    *a2 = 0;
    *(a2 + 1) = 0;
    v26 = *(a2 + 3);
    if (v26 && v23)
    {
      (*(*v26 + 16))(v26, v24, v23);
LABEL_42:
      v6 = *a2;
      v7 = *(a2 + 1);
      goto LABEL_30;
    }

    goto LABEL_28;
  }

  *(a2 + 2) = v5 + 3;
  if (v5 == -2)
  {
    goto LABEL_37;
  }

  v12 = *v10;
  if (v12 >= 2)
  {
    goto LABEL_30;
  }

  v14 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
  if ((v15 & 1) == 0)
  {
LABEL_31:
    v30 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    result = *(a2 + 3);
    if (result && v30)
    {
      v31 = *(*result + 16);

      return v31();
    }

    return result;
  }

  v16 = v14;
  result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
  if (v18)
  {
    v19 = result;
    while (1)
    {
      v20 = *a1;
      if ((*a1 & 1) == 0)
      {
        break;
      }

      v21 = *a1;
      atomic_compare_exchange_strong_explicit(a1, &v21, v20 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v21 == v20)
      {
        goto LABEL_17;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_17:
    v22 = WTF::fastMalloc(0x18);
    *v22 = &unk_1F10EED78;
    v22[1] = v19;
    v22[2] = a1;
    v32 = v22;
    WebKit::GPUProcess::updateCaptureAccess(a3, v9 & 1, v11 & 1, v12 & 1, v16, &v32);
    result = v32;
    v32 = 0;
    if (result)
    {
      return (*(*result + 8))(result);
    }
  }

  return result;
}

WTF::StringImpl *IPC::handleMessage<Messages::GPUProcess::UpdateCaptureOrigin,IPC::Connection,WebKit::GPUProcess,WebKit::GPUProcess,void ()(WebCore::SecurityOriginData const&,WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>)>(IPC::Decoder *a1, uint64_t a2)
{
  v30 = *MEMORY[0x1E69E9840];
  IPC::ArgumentCoder<WebCore::SecurityOriginData,void>::decode(a1, v26);
  if ((v29 & 1) == 0)
  {
    v15 = *a1;
    v16 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    v17 = *(a1 + 3);
    if (v17)
    {
      v18 = v16 == 0;
    }

    else
    {
      v18 = 1;
    }

    if (!v18)
    {
      (*(*v17 + 16))(v17, v15);
    }

    goto LABEL_33;
  }

  v4 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a1);
  v6 = v4;
  LOBYTE(v21[0]) = 0;
  if ((v5 & 1) == 0)
  {
    v9 = 0;
    v7 = v28;
    goto LABEL_8;
  }

  v23 = -1;
  v7 = v28;
  if (v28)
  {
    if (v28 == 255)
    {
      goto LABEL_6;
    }

    *v21 = *v26;
  }

  else
  {
    v8 = *v26;
    v26[0] = 0;
    v26[1] = 0;
    *v21 = v8;
    v22 = v27;
  }

  v23 = v28;
LABEL_6:
  v24 = v4;
  v9 = 1;
LABEL_8:
  v25 = v9;
  if (v7)
  {
    goto LABEL_14;
  }

  v10 = v26[1];
  if (v26[1] && atomic_fetch_add_explicit(v26[1], 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, v5);
  }

  v11 = v26[0];
  if (v26[0] && atomic_fetch_add_explicit(v26[0], 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v11, v5);
    if (v9)
    {
      goto LABEL_15;
    }
  }

  else
  {
LABEL_14:
    if (v9)
    {
LABEL_15:
      result = WebKit::GPUProcess::updateCaptureOrigin(a2, v21, v6);
      if ((v25 & 1) != 0 && !v23)
      {
        v14 = v21[1];
        v21[1] = 0;
        if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v14, v13);
        }

        result = v21[0];
        v21[0] = 0;
        if (result)
        {
          if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            return WTF::StringImpl::destroy(result, v13);
          }
        }
      }

      return result;
    }
  }

LABEL_33:
  v19 = *(a1 + 1);
  *a1 = 0;
  *(a1 + 1) = 0;
  result = *(a1 + 3);
  if (result && v19)
  {
    v20 = *(*result + 16);

    return v20();
  }

  return result;
}

WTF::StringImpl *IPC::handleMessage<Messages::GPUProcess::AddMockMediaDevice,IPC::Connection,WebKit::GPUProcess,WebKit::GPUProcess,void ()(WebCore::MockMediaDevice const&)>(IPC::Decoder *a1)
{
  v14 = *MEMORY[0x1E69E9840];
  IPC::ArgumentCoder<std::tuple<WebCore::MockMediaDevice>,void>::decode<IPC::Decoder>(a1, &v9);
  if (v13 & 1) != 0 || ((v5 = *a1, v6 = *(a1 + 1), *a1 = 0, *(a1 + 1) = 0, (result = *(a1 + 3)) != 0) ? (v7 = v6 == 0) : (v7 = 1), !v7 && (result = (*(*result + 16))(result, v5), (v13)))
  {
    result = WebKit::GPUProcess::addMockMediaDevice();
    if (v13)
    {
      if (v12 != 255)
      {
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<WebCore::MockMicrophoneProperties,WebCore::MockSpeakerProperties,WebCore::MockCameraProperties,WebCore::MockDisplayProperties>,(mpark::detail::Trait)1> &>(&v8, v11);
      }

      v12 = -1;
      v4 = v10;
      v10 = 0;
      if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v4, v3);
      }

      result = v9;
      v9 = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          return WTF::StringImpl::destroy(result, v3);
        }
      }
    }
  }

  return result;
}

WTF::StringImpl *IPC::handleMessage<Messages::GPUProcess::RemoveMockMediaDevice,IPC::Connection,WebKit::GPUProcess,WebKit::GPUProcess,void ()(WTF::String const&)>(IPC::Decoder *a1, WebKit::GPUProcess *a2)
{
  IPC::ArgumentCoder<std::tuple<WTF::String>,void>::decode<IPC::Decoder>(a1, &v9);
  if (v10 & 1) != 0 || ((v6 = *a1, v7 = *(a1 + 1), *a1 = 0, *(a1 + 1) = 0, (result = *(a1 + 3)) != 0) ? (v8 = v7 == 0) : (v8 = 1), !v8 && (result = (*(*result + 16))(result, v6), (v10)))
  {
    result = WebKit::GPUProcess::removeMockMediaDevice(a2, &v9);
    if (v10)
    {
      result = v9;
      v9 = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          return WTF::StringImpl::destroy(result, v5);
        }
      }
    }
  }

  return result;
}

WTF::StringImpl *IPC::handleMessage<Messages::GPUProcess::SetMockMediaDeviceIsEphemeral,IPC::Connection,WebKit::GPUProcess,WebKit::GPUProcess,void ()(WTF::String const&,BOOL)>(IPC::Decoder *a1, WebKit::GPUProcess *a2)
{
  IPC::ArgumentCoder<std::tuple<WTF::String,BOOL>,void>::decode<IPC::Decoder>(a1, &v9);
  if (v11 & 1) != 0 || ((v6 = *a1, v7 = *(a1 + 1), *a1 = 0, *(a1 + 1) = 0, (result = *(a1 + 3)) != 0) ? (v8 = v7 == 0) : (v8 = 1), !v8 && (result = (*(*result + 16))(result, v6), (v11)))
  {
    result = WebKit::GPUProcess::setMockMediaDeviceIsEphemeral(a2, &v9, v10);
    if (v11)
    {
      result = v9;
      v9 = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          return WTF::StringImpl::destroy(result, v5);
        }
      }
    }
  }

  return result;
}

void *IPC::handleMessage<Messages::GPUProcess::TriggerMockCaptureConfigurationChange,IPC::Connection,WebKit::GPUProcess,WebKit::GPUProcess,void ()(BOOL,BOOL,BOOL)>(void *result, WebKit::GPUProcess *this)
{
  v3 = result[1];
  v4 = result[2];
  v5 = *result;
  if (v3 <= &v4[-*result])
  {
    v28 = result;
    v31 = this;
    *result = 0;
    result[1] = 0;
    v14 = result[3];
    if (v14)
    {
      if (v3)
      {
        (*(*v14 + 16))(v14);
        v5 = *v28;
        v3 = v28[1];
LABEL_21:
        *v28 = 0;
        v28[1] = 0;
        v15 = v28[3];
        if (v15)
        {
          if (!v3)
          {
            goto LABEL_28;
          }

          (*(*v15 + 16))(v15, v5);
          goto LABEL_50;
        }

LABEL_27:
        v3 = 0;
        goto LABEL_28;
      }
    }

    else
    {
      v3 = 0;
    }

    v5 = 0;
    goto LABEL_21;
  }

  v6 = v4 + 1;
  result[2] = v4 + 1;
  if (!v4)
  {
    v28 = result;
    v31 = this;
    goto LABEL_21;
  }

  v7 = *v4;
  if (v7 >= 2)
  {
LABEL_17:
    v28 = result;
    v31 = this;
    goto LABEL_28;
  }

  if (v3 <= &v6[-v5])
  {
    v28 = result;
    v31 = this;
    v16 = 0;
    v17 = 0;
    *result = 0;
    result[1] = 0;
    v18 = result[3];
    if (v18)
    {
      (*(*v18 + 16))(v18);
      v17 = *v28;
      v16 = v28[1];
    }
  }

  else
  {
    v8 = v4 + 2;
    result[2] = v4 + 2;
    if (v4 != -1)
    {
      v9 = *v6;
      if (v9 < 2)
      {
        if (v3 <= &v8[-v5])
        {
          v30 = result;
          v33 = this;
          v23 = 0;
          v24 = 0;
          *result = 0;
          result[1] = 0;
          v25 = result[3];
          if (v25)
          {
            (*(*v25 + 16))(v25);
            v24 = *v30;
            v23 = v30[1];
          }
        }

        else
        {
          result[2] = v4 + 3;
          if (v4 != -2)
          {
            v10 = *v8;
            if (v10 < 2)
            {
              v11 = (v9 << 8) | ((v10 != 0) << 16);
              v12 = 0x1000000;
              goto LABEL_11;
            }

            v30 = result;
            v33 = this;
LABEL_39:
            *v30 = 0;
            v30[1] = 0;
            v27 = v30[3];
            if (v27 && v3)
            {
              (*(*v27 + 16))(v27, v5);
            }

            v7 = 0;
            v12 = 0;
            v11 = 0;
            result = v30;
            this = v33;
LABEL_11:
            v13 = v12 | v7 | v11;
            if ((v13 & 0x1000000) != 0)
            {
              goto LABEL_12;
            }

            goto LABEL_30;
          }

          v30 = result;
          v33 = this;
          v23 = v3;
          v24 = v5;
        }

        *v30 = 0;
        v30[1] = 0;
        v26 = v30[3];
        if (v26 && v23)
        {
          (*(*v26 + 16))(v26, v24, v23);
          v5 = *v30;
          v3 = v30[1];
        }

        else
        {
          v3 = 0;
          v5 = 0;
        }

        goto LABEL_39;
      }

      goto LABEL_17;
    }

    v28 = result;
    v31 = this;
    v16 = v3;
    v17 = v5;
  }

  *v28 = 0;
  v28[1] = 0;
  v19 = v28[3];
  if (!v19 || !v16)
  {
    goto LABEL_27;
  }

  (*(*v19 + 16))(v19, v17, v16);
LABEL_50:
  v3 = v28[1];
LABEL_28:
  *v28 = 0;
  v28[1] = 0;
  v20 = v28[3];
  if (v20 && v3)
  {
    (*(*v20 + 16))(v20);
  }

  v13 = 0;
  result = v28;
  this = v31;
LABEL_30:
  v21 = *result;
  v22 = result[1];
  *result = 0;
  result[1] = 0;
  result = result[3];
  if (result)
  {
    v29 = v13;
    v32 = this;
    if (v22)
    {
      result = (*(*result + 16))(result, v21);
    }

    this = v32;
    v13 = v29;
  }

LABEL_12:
  if ((v13 & 0x1000000) != 0)
  {

    return WebKit::GPUProcess::triggerMockCaptureConfigurationChange(this);
  }

  return result;
}

uint64_t IPC::handleMessageAsync<Messages::GPUProcess::RequestBitmapImageForCurrentTime,IPC::Connection,WebKit::GPUProcess,WebKit::GPUProcess,void ()(WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(std::optional<WebCore::ShareableBitmapHandle> &&)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
{
  v6 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
  if (v7 & 1) != 0 && (v8 = v6, v9 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a2), (v10))
  {
    v11 = v9;
    result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
    if (v13)
    {
      v14 = result;
      while (1)
      {
        v15 = *a1;
        if ((*a1 & 1) == 0)
        {
          break;
        }

        v16 = *a1;
        atomic_compare_exchange_strong_explicit(a1, &v16, v15 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v16 == v15)
        {
          goto LABEL_15;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_15:
      v19 = WTF::fastMalloc(0x18);
      *v19 = &unk_1F10EEDA0;
      v19[1] = v14;
      v19[2] = a1;
      v21 = v19;
      WebKit::GPUProcess::requestBitmapImageForCurrentTime(a3, v8, v11, &v21);
      result = v21;
      v21 = 0;
      if (result)
      {
        return (*(*result + 8))(result);
      }
    }
  }

  else
  {
    v17 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    result = *(a2 + 3);
    if (result)
    {
      v18 = v17 == 0;
    }

    else
    {
      v18 = 1;
    }

    if (!v18)
    {
      v20 = *(*result + 16);

      return v20();
    }
  }

  return result;
}

uint64_t IPC::handleMessage<Messages::GPUProcess::UserPreferredLanguagesChanged,IPC::Connection,WebKit::GPUProcess,WebKit::GPUProcess,void ()(WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>(IPC::Decoder *a1)
{
  result = IPC::Decoder::decode<std::tuple<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>(a1, v3);
  if (v4 == 1)
  {
    result = WebKit::GPUProcess::userPreferredLanguagesChanged();
    if (v4)
    {
      return WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v3, v2);
    }
  }

  return result;
}

uint64_t IPC::handleMessageAsync<Messages::GPUProcess::WebProcessConnectionCountForTesting,IPC::Connection,WebKit::GPUProcess,WebKit::GPUProcess,void ()(WTF::CompletionHandler<void ()(unsigned long long)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
{
  result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
  if (v6)
  {
    v7 = result;
    while (1)
    {
      v8 = *a1;
      if ((*a1 & 1) == 0)
      {
        break;
      }

      v9 = *a1;
      atomic_compare_exchange_strong_explicit(a1, &v9, v8 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v9 == v8)
      {
        goto LABEL_7;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_7:
    v10 = WTF::fastMalloc(0x18);
    *v10 = &unk_1F10EEDC8;
    v10[1] = v7;
    v10[2] = a1;
    v11 = v10;
    WebKit::GPUProcess::webProcessConnectionCountForTesting(a3, &v11);
    result = v11;
    v11 = 0;
    if (result)
    {
      return (*(*result + 8))(result);
    }
  }

  return result;
}

void IPC::handleMessage<Messages::GPUProcess::ResolveBookmarkDataForCacheDirectory,IPC::Connection,WebKit::GPUProcess,WebKit::GPUProcess,void ()(std::span<unsigned char const,18446744073709551615ul>)>(IPC::Decoder *a1, uint64_t a2)
{
  IPC::Decoder::decode<std::tuple<std::span<unsigned char const,18446744073709551615ul>>>(a1, v3);
  if (v4 == 1)
  {
    WebKit::GPUProcess::resolveBookmarkDataForCacheDirectory(a2, v3[0], v3[1]);
  }
}

uint64_t IPC::handleMessageAsync<Messages::GPUProcess::PostWillTakeSnapshotNotification,IPC::Connection,WebKit::GPUProcess,WebKit::GPUProcess,void ()(WTF::CompletionHandler<void ()(void)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
{
  result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
  if (v6)
  {
    v7 = result;
    while (1)
    {
      v8 = *a1;
      if ((*a1 & 1) == 0)
      {
        break;
      }

      v9 = *a1;
      atomic_compare_exchange_strong_explicit(a1, &v9, v8 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v9 == v8)
      {
        goto LABEL_7;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_7:
    v10 = WTF::fastMalloc(0x18);
    *v10 = &unk_1F10EEDF0;
    v10[1] = v7;
    v10[2] = a1;
    v11 = v10;
    WebKit::GPUProcess::postWillTakeSnapshotNotification(a3, &v11);
    result = v11;
    v11 = 0;
    if (result)
    {
      return (*(*result + 8))(result);
    }
  }

  return result;
}

uint64_t IPC::handleMessage<Messages::GPUProcess::RegisterFonts,IPC::Connection,WebKit::GPUProcess,WebKit::GPUProcess,void ()(WTF::Vector<WebKit::SandboxExtensionHandle,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>(IPC::Decoder *a1, void *a2)
{
  result = IPC::Decoder::decode<std::tuple<WTF::Vector<WebKit::SandboxExtensionHandle,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>(a1, a2, v5);
  if (v6 == 1)
  {
    result = WebKit::GPUProcess::registerFonts(a2, v5);
    if (v6)
    {
      return WTF::Vector<WebKit::SandboxExtensionHandle,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v5, v4);
    }
  }

  return result;
}

void WebKit::GPUProcessProxy::didReceiveMessage(atomic_uint *this, atomic_ullong *a2, IPC::Decoder *a3)
{
  v55 = *MEMORY[0x1E69E9840];
  v5 = this + 4;
  atomic_fetch_add(this + 4, 1u);
  v6 = *(a3 + 25);
  if (v6 > 0x3F)
  {
    if (*(a3 + 25) > 0x42u)
    {
      if (v6 != 67)
      {
        if (v6 == 68)
        {
          v33 = IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(a3);
          if ((v34 & 1) == 0)
          {
            goto LABEL_78;
          }

          WebKit::GPUProcessProxy::terminateWebProcess(this, v33);
          if (!this)
          {
            return;
          }

          goto LABEL_79;
        }

        if (v6 == 69)
        {
          WebKit::GPUProcessProxy::voiceActivityDetected(this);
          if (!this)
          {
            return;
          }

          goto LABEL_79;
        }

        goto LABEL_60;
      }

      IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::String>>(buf, a3);
      if (buf[16] != 1)
      {
        goto LABEL_78;
      }

      WebKit::GPUProcessProxy::stopMonitoringCaptureDeviceRotation(this, *buf, &buf[8]);
      goto LABEL_55;
    }

    if (v6 != 64)
    {
      if (v6 != 65)
      {
        if (v6 == 66)
        {
          v8 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
          if (v9)
          {
            v10 = v8;
            while (1)
            {
              v11 = *a2;
              if ((*a2 & 1) == 0)
              {
                break;
              }

              v12 = *a2;
              atomic_compare_exchange_strong_explicit(a2, &v12, v11 + 2, memory_order_relaxed, memory_order_relaxed);
              if (v12 == v11)
              {
                goto LABEL_66;
              }
            }

            WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_66:
            v42 = WTF::fastMalloc(0x18);
            *v42 = &unk_1F10EEE18;
            v42[1] = v10;
            v42[2] = a2;
            *buf = v42;
            WebKit::GPUProcessProxy::statusBarWasTapped(this, buf);
            v43 = *buf;
            *buf = 0;
            if (v43)
            {
              (*(*v43 + 8))(v43);
              if (!this)
              {
                return;
              }

              goto LABEL_79;
            }
          }

LABEL_78:
          if (!this)
          {
            return;
          }

          goto LABEL_79;
        }

LABEL_60:
        v38 = qword_1ED6416C8;
        if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
        {
          if (v6 >= 0x107F)
          {
            v46 = 4223;
          }

          else
          {
            v46 = v6;
          }

          v47 = (&IPC::Detail::messageDescriptions)[3 * v46];
          v48 = *(a3 + 7);
          *buf = 136315394;
          *&buf[4] = v47;
          *&buf[12] = 2048;
          *&buf[14] = v48;
          _os_log_error_impl(&dword_19D52D000, v38, OS_LOG_TYPE_ERROR, "Unhandled message %s to %llu", buf, 0x16u);
        }

LABEL_61:
        v39 = *a3;
        v40 = *(a3 + 1);
        *a3 = 0;
        *(a3 + 1) = 0;
        v41 = *(a3 + 3);
        if (!v41 || !v40)
        {
          goto LABEL_78;
        }

        (*(*v41 + 16))(v41, v39);
        if (!this)
        {
          return;
        }

        goto LABEL_79;
      }

      IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::String>>(buf, a3);
      if (buf[16] != 1)
      {
        goto LABEL_78;
      }

      WebKit::GPUProcessProxy::startMonitoringCaptureDeviceRotation(this, *buf, &buf[8]);
LABEL_55:
      if ((buf[16] & 1) == 0)
      {
        goto LABEL_78;
      }

      v37 = *&buf[8];
      *&buf[8] = 0;
      if (!v37 || atomic_fetch_add_explicit(v37, 0xFFFFFFFE, memory_order_relaxed) != 2)
      {
        goto LABEL_78;
      }

      WTF::StringImpl::destroy(v37, v32);
      if (!this)
      {
        return;
      }

      goto LABEL_79;
    }

    v36 = IPC::Decoder::decode<std::tuple<BOOL>>(a3);
    if ((v36 & 0x100) == 0)
    {
      goto LABEL_78;
    }

    v14 = v36 & 0x101;
    v15 = &WebKit::GPUProcessProxy::s_hasVP9HardwareDecoder;
LABEL_51:
    *v15 = v14;
    if (!this)
    {
      return;
    }

    goto LABEL_79;
  }

  if (*(a3 + 25) > 0x3Cu)
  {
    if (v6 == 61)
    {
      v35 = IPC::Decoder::decode<std::tuple<BOOL>>(a3);
      if ((v35 & 0x100) == 0)
      {
        goto LABEL_78;
      }

      WebKit::GPUProcessProxy::microphoneMuteStatusChanged(this, v35 & 1);
      if (!this)
      {
        return;
      }

      goto LABEL_79;
    }

    if (v6 == 62)
    {
      WebKit::GPUProcessProxy::processIsReadyToExit(this);
      if (!this)
      {
        return;
      }

      goto LABEL_79;
    }

    if (v6 != 63)
    {
      goto LABEL_60;
    }

    v13 = IPC::Decoder::decode<std::tuple<BOOL>>(a3);
    if ((v13 & 0x100) == 0)
    {
      goto LABEL_78;
    }

    v14 = v13 & 0x101;
    v15 = &WebKit::GPUProcessProxy::s_hasAV1HardwareDecoder;
    goto LABEL_51;
  }

  if (v6 == 59)
  {
    v21 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
    if (v22)
    {
      v23 = v21;
      v24 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
      if (v25)
      {
        v26 = *(a3 + 1);
        v27 = ((*(a3 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
        v28 = v27 - *a3;
        v29 = v26 >= v28;
        v30 = v26 - v28;
        if (v29 && v30 > 3)
        {
          *(a3 + 2) = v27 + 1;
          if (v27)
          {
            WebKit::GPUProcessProxy::didCreateContextForVisibilityPropagation(this, v23, v24, *v27);
            if (!this)
            {
              return;
            }

            goto LABEL_79;
          }
        }

        else
        {
          *a3 = 0;
          *(a3 + 1) = 0;
          v49 = *(a3 + 3);
          if (v49)
          {
            if (v26)
            {
              (*(*v49 + 16))(v49);
              v26 = *(a3 + 1);
            }
          }

          else
          {
            v26 = 0;
          }
        }

        *a3 = 0;
        *(a3 + 1) = 0;
        v50 = *(a3 + 3);
        if (v50 && v26)
        {
          (*(*v50 + 16))(v50);
        }
      }
    }

    goto LABEL_61;
  }

  if (v6 != 60)
  {
    goto LABEL_60;
  }

  v16 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
  if ((v17 & 1) == 0)
  {
    goto LABEL_61;
  }

  v18 = v16;
  IPC::Decoder::decode<WTF::RefPtr<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>>(a3, &v51);
  if (v52 == 1)
  {
    v19 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a3);
    if (v20)
    {
      if ((v52 & 1) == 0)
      {
        __break(1u);
      }

      *buf = v18;
      *&buf[8] = v51;
      *&buf[16] = v19;
      v54 = 1;
    }

    else
    {
      buf[0] = 0;
      v54 = 0;
      if (v52)
      {
        v44 = v51;
        v51 = 0;
        if (v44)
        {
          if (atomic_fetch_add(v44 + 2, 0xFFFFFFFF) == 1)
          {
            atomic_store(1u, v44 + 2);
            (*(*v44 + 8))(v44);
          }
        }
      }
    }
  }

  else
  {
    buf[0] = 0;
    v54 = 0;
  }

  if ((v54 & 1) == 0)
  {
    goto LABEL_61;
  }

  WebKit::GPUProcessProxy::didDrawRemoteToPDF(this, *buf, &buf[8], *&buf[16]);
  if ((v54 & 1) == 0)
  {
    goto LABEL_78;
  }

  v45 = *&buf[8];
  *&buf[8] = 0;
  if (!v45 || atomic_fetch_add(v45 + 2, 0xFFFFFFFF) != 1)
  {
    goto LABEL_78;
  }

  atomic_store(1u, v45 + 2);
  (*(*v45 + 8))(v45);
  if (this)
  {
LABEL_79:
    WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v5);
  }
}

void WebKit::LegacyCustomProtocolManager::didReceiveMessage(WebKit::LegacyCustomProtocolManager *this, IPC::Connection *a2, IPC::Decoder *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  WebKit::LegacyCustomProtocolManager::ref(this);
  v5 = *(a3 + 25);
  if (v5 > 0x77)
  {
    switch(v5)
    {
      case 'x':
        IPC::handleMessage<Messages::LegacyCustomProtocolManager::RegisterScheme,IPC::Connection,WebKit::LegacyCustomProtocolManager,WebKit::LegacyCustomProtocolManager,void ()(WTF::String const&)>(a3, this);
        goto LABEL_4;
      case 'z':
        IPC::handleMessage<Messages::LegacyCustomProtocolManager::WasRedirectedToRequest,IPC::Connection,WebKit::LegacyCustomProtocolManager,WebKit::LegacyCustomProtocolManager,void ()(WTF::ObjectIdentifierGeneric<WebKit::LegacyCustomProtocolIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::ResourceRequest const&,WebCore::ResourceResponse const&)>(a3, this);
        goto LABEL_4;
      case 'y':
        IPC::handleMessage<Messages::LegacyCustomProtocolManager::UnregisterScheme,IPC::Connection,WebKit::LegacyCustomProtocolManager,WebKit::LegacyCustomProtocolManager,void ()(WTF::String const&)>(a3, this);
        goto LABEL_4;
    }

    goto LABEL_21;
  }

  if (*(a3 + 25) > 0x75u)
  {
    if (v5 == 118)
    {
      IPC::handleMessage<Messages::LegacyCustomProtocolManager::DidLoadData,IPC::Connection,WebKit::LegacyCustomProtocolManager,WebKit::LegacyCustomProtocolManager,void ()(WTF::ObjectIdentifierGeneric<WebKit::LegacyCustomProtocolIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,std::span<unsigned char const,18446744073709551615ul>)>(a3, this);
      goto LABEL_4;
    }

    if (v5 == 119)
    {
      IPC::handleMessage<Messages::LegacyCustomProtocolManager::DidReceiveResponse,IPC::Connection,WebKit::LegacyCustomProtocolManager,WebKit::LegacyCustomProtocolManager,void ()(WTF::ObjectIdentifierGeneric<WebKit::LegacyCustomProtocolIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::ResourceResponse const&,WebKit::CacheStoragePolicy)>(a3, this);
      goto LABEL_4;
    }

    goto LABEL_21;
  }

  if (v5 == 116)
  {
    IPC::handleMessage<Messages::LegacyCustomProtocolManager::DidFailWithError,IPC::Connection,WebKit::LegacyCustomProtocolManager,WebKit::LegacyCustomProtocolManager,void ()(WTF::ObjectIdentifierGeneric<WebKit::LegacyCustomProtocolIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::ResourceError const&)>(a3, this);
    goto LABEL_4;
  }

  if (v5 != 117)
  {
LABEL_21:
    v8 = qword_1ED6416C8;
    if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
    {
      if (v5 >= 0x107F)
      {
        v9 = 4223;
      }

      else
      {
        v9 = v5;
      }

      v10 = (&IPC::Detail::messageDescriptions)[3 * v9];
      v11 = *(a3 + 7);
      v12 = 136315394;
      v13 = v10;
      v14 = 2048;
      v15 = v11;
      _os_log_error_impl(&dword_19D52D000, v8, OS_LOG_TYPE_ERROR, "Unhandled message %s to %llu", &v12, 0x16u);
    }

    IPC::Decoder::markInvalid(a3);
    goto LABEL_4;
  }

  v6 = IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebKit::AudioMediaStreamTrackRendererInternalUnitIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(a3);
  if (v7)
  {
    WebKit::LegacyCustomProtocolManager::didFinishLoading(this, v6);
  }

LABEL_4:
  if (this)
  {
    WebKit::LegacyCustomProtocolManager::deref(this);
  }
}

void IPC::handleMessage<Messages::LegacyCustomProtocolManager::DidFailWithError,IPC::Connection,WebKit::LegacyCustomProtocolManager,WebKit::LegacyCustomProtocolManager,void ()(WTF::ObjectIdentifierGeneric<WebKit::LegacyCustomProtocolIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::ResourceError const&)>(uint64_t *a1, uint64_t a2)
{
  v4 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a1);
  if (v5 & 1) != 0 && (v6 = v4, IPC::Decoder::decode<WebCore::ResourceError>(a1, v25), (v31))
  {
    *v16 = v25[0];
    v17 = v25[1];
    v18 = v25[2];
    v19 = v26;
    v20 = v27;
    v21 = v28;
    cf = v29;
    v23 = v30;
    v24 = 1;
    WebKit::LegacyCustomProtocolManager::didFailWithError(a2, v6, v16);
    if (v24)
    {
      v8 = cf;
      cf = 0;
      if (v8)
      {
        CFRelease(v8);
      }

      v9 = v19;
      v19 = 0;
      if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v9, v7);
      }

      v10 = v16[1];
      v16[1] = 0;
      if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v10, v7);
      }

      v11 = v16[0];
      v16[0] = 0;
      if (v11)
      {
        if (atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v11, v7);
        }
      }
    }
  }

  else
  {
    v12 = *a1;
    v13 = a1[1];
    *a1 = 0;
    a1[1] = 0;
    v14 = a1[3];
    if (v14)
    {
      v15 = v13 == 0;
    }

    else
    {
      v15 = 1;
    }

    if (!v15)
    {
      (*(*v14 + 16))(v14, v12);
    }
  }
}

void IPC::handleMessage<Messages::LegacyCustomProtocolManager::DidLoadData,IPC::Connection,WebKit::LegacyCustomProtocolManager,WebKit::LegacyCustomProtocolManager,void ()(WTF::ObjectIdentifierGeneric<WebKit::LegacyCustomProtocolIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,std::span<unsigned char const,18446744073709551615ul>)>(uint64_t *a1, uint64_t a2)
{
  v4 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a1);
  if (v5 & 1) != 0 && ((v6 = v4, IPC::ArgumentCoder<std::span<unsigned char const,18446744073709551615ul>,void>::decode<IPC::Decoder>(a1, v14), (v15) || (v7 = *a1, v8 = a1[1], *a1 = 0, a1[1] = 0, (v9 = a1[3]) != 0) && v8 && ((*(*v9 + 16))(v9, v7), (v15)))
  {
    WebKit::LegacyCustomProtocolManager::didLoadData(a2, v6, v14[0], v14[1]);
  }

  else
  {
    v10 = *a1;
    v11 = a1[1];
    *a1 = 0;
    a1[1] = 0;
    v12 = a1[3];
    if (v12)
    {
      v13 = v11 == 0;
    }

    else
    {
      v13 = 1;
    }

    if (!v13)
    {
      (*(*v12 + 16))(v12, v10);
    }
  }
}

void IPC::handleMessage<Messages::LegacyCustomProtocolManager::DidReceiveResponse,IPC::Connection,WebKit::LegacyCustomProtocolManager,WebKit::LegacyCustomProtocolManager,void ()(WTF::ObjectIdentifierGeneric<WebKit::LegacyCustomProtocolIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::ResourceResponse const&,WebKit::CacheStoragePolicy)>(uint64_t *a1, uint64_t a2)
{
  v5 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a1);
  if ((v6 & 1) == 0 || (v7 = v5, IPC::ArgumentCoder<WebCore::ResourceResponse,void>::decode(a1, &v58), (v81 & 1) == 0) && ((v19 = *a1, v20 = a1[1], *a1 = 0, a1[1] = 0, (v21 = a1[3]) == 0) || !v20 || ((*(*v21 + 16))(v21, v19), (v81 & 1) == 0)))
  {
LABEL_10:
    v22 = *a1;
    v23 = a1[1];
    *a1 = 0;
    a1[1] = 0;
    v24 = a1[3];
    if (v24)
    {
      v25 = v23 == 0;
    }

    else
    {
      v25 = 1;
    }

    if (!v25)
    {
      (*(*v24 + 16))(v24, v22);
    }

    return;
  }

  v8 = a1[1];
  v9 = a1[2];
  v10 = *a1;
  if (v8 <= &v9[-*a1])
  {
    *a1 = 0;
    a1[1] = 0;
    v26 = a1[3];
    if (v26)
    {
      if (v8)
      {
        (*(*v26 + 16))(v26);
        v8 = a1[1];
      }
    }

    else
    {
      v8 = 0;
    }

LABEL_20:
    *a1 = 0;
    a1[1] = 0;
    v27 = a1[3];
    if (v27)
    {
      if (v8)
      {
        (*(*v27 + 16))(v27);
        v10 = *a1;
        v8 = a1[1];
        goto LABEL_23;
      }
    }

    else
    {
      v8 = 0;
    }

    v10 = 0;
    goto LABEL_23;
  }

  a1[2] = (v9 + 1);
  if (!v9)
  {
    goto LABEL_20;
  }

  v2 = *v9;
  if (v2 < 3)
  {
    v34 = v59;
    v35 = v60;
    v11 = v63;
    v63 = 0u;
    v12 = v64;
    v64 = 0u;
    v13 = v61;
    v32 = v7;
    v33 = v58;
    v58 = 0;
    LODWORD(v59) = v59 & 0xFFFFFFFE;
    v61 = 0;
    v36 = v13;
    v37 = v62;
    v38 = v11;
    v39 = v12;
    *&v11 = v65;
    v65 = 0;
    v40 = v11;
    v14 = v66;
    v66 = 0;
    v41 = v14;
    *&v11 = v67;
    v67 = 0;
    v42 = v11;
    v15 = v68;
    v68 = 0;
    v43 = v15;
    LOBYTE(v44) = 0;
    v45 = 0;
    if (v70 == 1)
    {
      v18 = v69;
      v69 = 0;
      v44 = v18;
      v45 = 1;
    }

    v46 = v71;
    v47 = v72;
    v16 = cf;
    v48 = v73;
    v51 = v76;
    v52 = v77;
    v53[0] = v78[0];
    *(v53 + 11) = *(v78 + 11);
    v49 = v74;
    v50 = v75;
    v73 = 0;
    cf = 0;
    v54 = v16;
    v55 = v80;
    v17 = 1;
    v56 = v2;
    goto LABEL_25;
  }

LABEL_23:
  *a1 = 0;
  a1[1] = 0;
  v28 = a1[3];
  if (v28 && v8)
  {
    (*(*v28 + 16))(v28, v10);
  }

  v17 = 0;
  LOBYTE(v32) = 0;
LABEL_25:
  v57 = v17;
  if (v81)
  {
    v29 = cf;
    cf = 0;
    if (v29)
    {
      CFRelease(v29);
    }

    WebCore::ResourceResponseBase::~ResourceResponseBase(&v58, v10);
  }

  if ((v17 & 1) == 0)
  {
    goto LABEL_10;
  }

  WebKit::LegacyCustomProtocolManager::didReceiveResponse(a2, v32, &v33, v2);
  if (v57)
  {
    v31 = v54;
    v54 = 0;
    if (v31)
    {
      CFRelease(v31);
    }

    WebCore::ResourceResponseBase::~ResourceResponseBase(&v33, v30);
  }
}

void IPC::handleMessage<Messages::LegacyCustomProtocolManager::WasRedirectedToRequest,IPC::Connection,WebKit::LegacyCustomProtocolManager,WebKit::LegacyCustomProtocolManager,void ()(WTF::ObjectIdentifierGeneric<WebKit::LegacyCustomProtocolIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::ResourceRequest const&,WebCore::ResourceResponse const&)>(uint64_t *a1, uint64_t a2)
{
  v4 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a1);
  if ((v5 & 1) == 0)
  {
    LOBYTE(v40) = 0;
    v84 = 0;
    goto LABEL_18;
  }

  v6 = v4;
  IPC::ArgumentCoder<WebCore::ResourceRequest,void>::decode(a1, &v85);
  if (v105 & 1) != 0 || (v37 = *a1, v38 = a1[1], *a1 = 0, a1[1] = 0, (v39 = a1[3]) != 0) && v38 && ((*(*v39 + 16))(v39, v37), (v105))
  {
    IPC::ArgumentCoder<WebCore::ResourceResponse,void>::decode(a1, &v106);
    if ((v129 & 1) == 0)
    {
      goto LABEL_25;
    }

    while ((v105 & 1) == 0)
    {
      __break(1u);
LABEL_25:
      v34 = *a1;
      v35 = a1[1];
      *a1 = 0;
      a1[1] = 0;
      v36 = a1[3];
      if (v36)
      {
        if (v35)
        {
          (*(*v36 + 16))(v36, v34);
          if (v129)
          {
            continue;
          }
        }
      }

      LOBYTE(v40) = 0;
      v84 = 0;
      goto LABEL_9;
    }

    v8 = v85;
    v9 = v88;
    v85 = 0;
    v40 = v6;
    v41 = v8;
    v42 = v86;
    v43 = v87;
    LODWORD(v86) = v86 & 0xFFFFFFFE;
    v88 = 0;
    v44 = v9;
    v45 = v89;
    v46 = v90;
    LODWORD(v89) = v89 & 0xFFFFFFFE;
    v10 = v93;
    v47 = v91;
    v11 = v92;
    v92 = 0u;
    v48 = v11;
    v93 = 0;
    v49 = v10;
    v12 = v94;
    v94 = 0;
    v50 = v12;
    v13 = v95;
    v95 = 0;
    v51 = v13;
    v14 = v96;
    v96 = 0;
    v52 = v14;
    v15 = v97;
    v97 = 0;
    v53 = v15;
    v55 = v99;
    v54 = v98;
    v16 = v100;
    v100 = 0u;
    v56 = v16;
    v59 = v103;
    v57 = v101;
    v58 = v102;
    v17 = v104;
    v101 = 0;
    v104 = 0;
    v18 = v106;
    v19 = v109;
    v106 = 0;
    v60 = v17;
    v61 = v18;
    v62 = v107;
    v63 = v108;
    LODWORD(v107) = v107 & 0xFFFFFFFE;
    v109 = 0;
    v64 = v19;
    v65 = v110;
    v20 = v111;
    v111 = 0u;
    v21 = v112;
    v112 = 0u;
    v66 = v20;
    v67 = v21;
    v22 = v113;
    v113 = 0;
    v68 = v22;
    v23 = v114;
    v114 = 0;
    v69 = v23;
    v24 = v115;
    v115 = 0;
    v70 = v24;
    v25 = v116;
    v116 = 0;
    v71 = v25;
    LOBYTE(v72) = 0;
    v73 = 0;
    if (v118 == 1)
    {
      v29 = v117;
      v117 = 0;
      v72 = v29;
      v73 = 1;
    }

    v74 = v119;
    v75 = v120;
    v79 = v124;
    v80 = v125;
    v81[0] = v126[0];
    *(v81 + 11) = *(v126 + 11);
    v77 = v122;
    v78 = v123;
    v26 = v121;
    v121 = 0;
    v76 = v26;
    cf = v127;
    v83 = v128;
    v84 = 1;
    if (v129)
    {
      v127 = 0;
      WebCore::ResourceResponseBase::~ResourceResponseBase(&v106, v7);
    }

LABEL_9:
    if (v105)
    {
      WebCore::ResourceRequest::~ResourceRequest(&v85);
    }
  }

  else
  {
    LOBYTE(v40) = 0;
    v84 = 0;
  }

  if ((v84 & 1) == 0)
  {
LABEL_18:
    v30 = *a1;
    v31 = a1[1];
    *a1 = 0;
    a1[1] = 0;
    v32 = a1[3];
    if (v32)
    {
      v33 = v31 == 0;
    }

    else
    {
      v33 = 1;
    }

    if (v33)
    {
      return;
    }

    (*(*v32 + 16))(v32, v30);
    if ((v84 & 1) == 0)
    {
      return;
    }
  }

  WebKit::LegacyCustomProtocolManager::wasRedirectedToRequest(a2, v40, &v41, &v61);
  if (v84)
  {
    v28 = cf;
    cf = 0;
    if (v28)
    {
      CFRelease(v28);
    }

    WebCore::ResourceResponseBase::~ResourceResponseBase(&v61, v27);
    WebCore::ResourceRequest::~ResourceRequest(&v41);
  }
}

WTF::StringImpl *IPC::handleMessage<Messages::LegacyCustomProtocolManager::RegisterScheme,IPC::Connection,WebKit::LegacyCustomProtocolManager,WebKit::LegacyCustomProtocolManager,void ()(WTF::String const&)>(IPC::Decoder *a1, WebKit::LegacyCustomProtocolManager *a2)
{
  result = IPC::Decoder::decode<std::tuple<WTF::String>>(a1, &v5);
  if (v6 == 1)
  {
    result = WebKit::LegacyCustomProtocolManager::registerScheme(a2, &v5);
    if (v6)
    {
      result = v5;
      v5 = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          return WTF::StringImpl::destroy(result, v4);
        }
      }
    }
  }

  return result;
}

WTF::StringImpl *IPC::handleMessage<Messages::LegacyCustomProtocolManager::UnregisterScheme,IPC::Connection,WebKit::LegacyCustomProtocolManager,WebKit::LegacyCustomProtocolManager,void ()(WTF::String const&)>(IPC::Decoder *a1, WebKit::LegacyCustomProtocolManager *a2)
{
  IPC::ArgumentCoder<std::tuple<WTF::String>,void>::decode<IPC::Decoder>(a1, &v9);
  if (v10 & 1) != 0 || ((v6 = *a1, v7 = *(a1 + 1), *a1 = 0, *(a1 + 1) = 0, (result = *(a1 + 3)) != 0) ? (v8 = v7 == 0) : (v8 = 1), !v8 && (result = (*(*result + 16))(result, v6), (v10)))
  {
    result = WebKit::LegacyCustomProtocolManager::unregisterScheme(a2, &v9);
    if (v10)
    {
      result = v9;
      v9 = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          return WTF::StringImpl::destroy(result, v5);
        }
      }
    }
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages11DrawingArea20SetDeviceScaleFactorENS2_10ConnectionEN6WebKit11DrawingAreaES9_FvfONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEED1Ev(void *a1)
{
  *a1 = &unk_1F10EEC10;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages11DrawingArea20SetDeviceScaleFactorENS2_10ConnectionEN6WebKit11DrawingAreaES9_FvfONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10EEC10;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *IPC::Connection::sendAsyncReply<Messages::DrawingArea::SetDeviceScaleFactor>(uint64_t *a1, void *a2)
{
  v4 = IPC::Encoder::operator new(0x238, a2);
  *v4 = 3208;
  *(v4 + 2) = 0;
  *(v4 + 3) = 0;
  *(v4 + 1) = a2;
  *(v4 + 68) = 0;
  *(v4 + 70) = 0;
  *(v4 + 69) = 0;
  IPC::Encoder::encodeHeader(v4);
  v9 = v4;
  IPC::Connection::sendMessageImpl(a1, &v9, 0, 0);
  result = v9;
  v9 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v5);
    return bmalloc::api::tzoneFree(v7, v8);
  }

  return result;
}

void IPC::Decoder::decode<std::tuple<WebCore::IntSize,BOOL,WTF::MachSendRight>>(_BYTE *a1, IPC::Decoder *a2)
{
  IPC::ArgumentCoder<std::tuple<WebCore::IntSize,BOOL,WTF::MachSendRight>,void>::decode<IPC::Decoder>(a1, a2);
  if ((a1[16] & 1) == 0)
  {

    IPC::Decoder::markInvalid(a2);
  }
}

void IPC::ArgumentCoder<std::tuple<WebCore::IntSize,BOOL,WTF::MachSendRight>,void>::decode<IPC::Decoder>(_BYTE *a1, IPC::Decoder *a2)
{
  v5 = IPC::Decoder::decode<WebCore::IntSize>(a2);
  v6 = v4;
  if (v4)
  {
    IPC::ArgumentCoder<std::tuple<WebCore::IntSize,BOOL,WTF::MachSendRight>,void>::decode<IPC::Decoder,WebCore::IntSize>(a1, a2, &v5);
  }

  else
  {
    *a1 = 0;
    a1[16] = 0;
  }
}

void IPC::ArgumentCoder<std::tuple<WebCore::IntSize,BOOL,WTF::MachSendRight>,void>::decode<IPC::Decoder,WebCore::IntSize>(_BYTE *a1, IPC::Decoder *a2, uint64_t a3)
{
  v6 = IPC::Decoder::decode<BOOL>(a2);
  if ((v6 & 0x100) != 0)
  {
    IPC::ArgumentCoder<std::tuple<WebCore::IntSize,BOOL,WTF::MachSendRight>,void>::decode<IPC::Decoder,WebCore::IntSize,BOOL>(a1, a2, a3, &v6);
  }

  else
  {
    *a1 = 0;
    a1[16] = 0;
  }
}

void IPC::ArgumentCoder<std::tuple<WebCore::IntSize,BOOL,WTF::MachSendRight>,void>::decode<IPC::Decoder,WebCore::IntSize,BOOL>(uint64_t a1, IPC::Decoder *this, uint64_t a3, char *a4)
{
  IPC::Decoder::takeLastAttachment(this, v8);
  if (v9 == 1)
  {
    if (*(a3 + 8) & 1) != 0 && (a4[1])
    {
      v7 = *a4;
      *a1 = *a3;
      *(a1 + 8) = v7;
      WTF::MachSendRight::MachSendRight();
      *(a1 + 16) = 1;
      if (v9)
      {
        WTF::MachSendRight::~MachSendRight(v8);
      }
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    *a1 = 0;
    *(a1 + 16) = 0;
  }
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages11DrawingArea14UpdateGeometryENS2_10ConnectionEN6WebKit11DrawingAreaES9_FvRKN7WebCore7IntSizeEbRKNS_13MachSendRightEONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEED1Ev(void *a1)
{
  *a1 = &unk_1F10EEC38;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages11DrawingArea14UpdateGeometryENS2_10ConnectionEN6WebKit11DrawingAreaES9_FvRKN7WebCore7IntSizeEbRKNS_13MachSendRightEONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10EEC38;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *IPC::Connection::sendAsyncReply<Messages::DrawingArea::UpdateGeometry>(uint64_t *a1, void *a2)
{
  v4 = IPC::Encoder::operator new(0x238, a2);
  *v4 = 3209;
  *(v4 + 2) = 0;
  *(v4 + 3) = 0;
  *(v4 + 1) = a2;
  *(v4 + 68) = 0;
  *(v4 + 70) = 0;
  *(v4 + 69) = 0;
  IPC::Encoder::encodeHeader(v4);
  v9 = v4;
  IPC::Connection::sendMessageImpl(a1, &v9, 0, 0);
  result = v9;
  v9 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v5);
    return bmalloc::api::tzoneFree(v7, v8);
  }

  return result;
}

IPC::Decoder *IPC::ArgumentCoder<std::tuple<std::optional<WebCore::FloatRect>>,void>::decode<IPC::Decoder>@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  result = IPC::ArgumentCoder<std::optional<WebCore::FloatRect>,void>::decode<IPC::Decoder>(a1, &v9);
  if (v11 & 1) != 0 || ((v6 = *a1, v7 = *(a1 + 1), *a1 = 0, *(a1 + 1) = 0, (result = *(a1 + 3)) != 0) ? (v8 = v7 == 0) : (v8 = 1), !v8 && (result = (*(*result + 16))(result, v6), (v11)))
  {
    *a2 = v9;
    *(a2 + 16) = v10;
    v5 = 1;
  }

  else
  {
    v5 = 0;
    *a2 = 0;
  }

  *(a2 + 20) = v5;
  return result;
}

WTF::StringImpl *IPC::Decoder::decode<std::tuple<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::String,WTF::MonotonicTime>>(_BYTE *a1, IPC::Decoder *a2)
{
  result = IPC::ArgumentCoder<std::tuple<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::String,WTF::MonotonicTime>,void>::decode<IPC::Decoder>(a1, a2);
  if ((a1[32] & 1) == 0)
  {

    return IPC::Decoder::markInvalid(a2);
  }

  return result;
}

WTF::StringImpl *IPC::ArgumentCoder<std::tuple<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::String,WTF::MonotonicTime>,void>::decode<IPC::Decoder>(_BYTE *a1, IPC::Decoder *a2)
{
  result = IPC::Decoder::decode<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(a2, v5);
  if (v5[16])
  {
    return IPC::ArgumentCoder<std::tuple<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::String,WTF::MonotonicTime>,void>::decode<IPC::Decoder,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(a1, a2, v5);
  }

  *a1 = 0;
  a1[32] = 0;
  return result;
}

WTF::StringImpl *IPC::ArgumentCoder<std::tuple<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::String,WTF::MonotonicTime>,void>::decode<IPC::Decoder,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(uint64_t a1, IPC::Decoder *a2, uint64_t a3)
{
  result = IPC::Decoder::decode<WTF::String>(a2, &v9);
  if (v10 == 1)
  {
    result = IPC::Decoder::decode<WTF::MonotonicTime>(a2);
    if (v7)
    {
      if (*(a3 + 16) & 1) != 0 && (v10)
      {
        *a1 = *a3;
        *(a1 + 16) = v9;
        *(a1 + 24) = result;
        *(a1 + 32) = 1;
      }

      else
      {
        __break(1u);
      }
    }

    else
    {
      *a1 = 0;
      v8 = v10;
      *(a1 + 32) = 0;
      if (v8)
      {
        result = v9;
        v9 = 0;
        if (result)
        {
          if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            return WTF::StringImpl::destroy(result, v7);
          }
        }
      }
    }
  }

  else
  {
    *a1 = 0;
    *(a1 + 32) = 0;
  }

  return result;
}

IPC::Decoder *IPC::Decoder::decode<std::tuple<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::String>>(_BYTE *a1, IPC::Decoder *a2)
{
  result = IPC::ArgumentCoder<std::tuple<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::String>,void>::decode<IPC::Decoder>(a1, a2);
  if ((a1[24] & 1) == 0)
  {

    return IPC::Decoder::markInvalid(a2);
  }

  return result;
}

IPC::Decoder *IPC::ArgumentCoder<std::tuple<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::String>,void>::decode<IPC::Decoder>(_BYTE *a1, IPC::Decoder *a2)
{
  result = IPC::Decoder::decode<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(a2, v5);
  if (v5[16])
  {
    return IPC::ArgumentCoder<std::tuple<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::String>,void>::decode<IPC::Decoder,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(a1, a2, v5);
  }

  *a1 = 0;
  a1[24] = 0;
  return result;
}

IPC::Decoder *IPC::ArgumentCoder<std::tuple<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::String>,void>::decode<IPC::Decoder,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(uint64_t a1, IPC::Decoder *a2, uint64_t a3)
{
  result = IPC::Decoder::decode<WTF::String>(a2, &v7);
  if (v8 != 1)
  {
    v6 = 0;
    *a1 = 0;
    goto LABEL_4;
  }

  if (*(a3 + 16))
  {
    *a1 = *a3;
    *(a1 + 16) = v7;
    v6 = 1;
LABEL_4:
    *(a1 + 24) = v6;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t IPC::Decoder::decode<std::tuple<double,WebCore::FloatPoint>>(uint64_t a1, IPC::Decoder *a2)
{
  v4 = IPC::Decoder::decode<unsigned long long>(a2);
  if (v5)
  {
    v6 = v4;
    result = IPC::ArgumentCoder<WebCore::FloatPoint,void>::decode(a2);
    if (v8)
    {
      *a1 = v6;
      *(a1 + 8) = result;
      *(a1 + 16) = 1;
      return result;
    }

    v9 = *a2;
    v10 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    v11 = *(a2 + 3);
    if (v11 && v10)
    {
      (*(*v11 + 16))(v11, v9);
    }
  }

  *a1 = 0;
  *(a1 + 16) = 0;
  v12 = *(a2 + 1);
  *a2 = 0;
  *(a2 + 1) = 0;
  result = *(a2 + 3);
  if (result)
  {
    v13 = v12 == 0;
  }

  else
  {
    v13 = 1;
  }

  if (!v13)
  {
    v14 = *(*result + 16);

    return v14();
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages11DrawingArea19CommitTransientZoomENS2_10ConnectionEN6WebKit11DrawingAreaES9_FvdN7WebCore10FloatPointEONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEED1Ev(void *a1)
{
  *a1 = &unk_1F10EEC60;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages11DrawingArea19CommitTransientZoomENS2_10ConnectionEN6WebKit11DrawingAreaES9_FvdN7WebCore10FloatPointEONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10EEC60;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages11DrawingArea19CommitTransientZoomENS2_10ConnectionEN6WebKit11DrawingAreaES9_FvdN7WebCore10FloatPointEONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEE4callEv(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4 = IPC::Encoder::operator new(0x238, a2);
  *v4 = 3206;
  *(v4 + 2) = 0;
  *(v4 + 3) = 0;
  *(v4 + 1) = v3;
  *(v4 + 68) = 0;
  *(v4 + 70) = 0;
  *(v4 + 69) = 0;
  IPC::Encoder::encodeHeader(v4);
  v9 = v4;
  IPC::Connection::sendMessageImpl(v2, &v9, 0, 0);
  result = v9;
  v9 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v5);
    return bmalloc::api::tzoneFree(v7, v8);
  }

  return result;
}

uint64_t IPC::Decoder::decode<std::tuple<unsigned long long,WebKit::LayerTreeContext>>(uint64_t a1, uint64_t *a2)
{
  v4 = ((a2[2] + 7) & 0xFFFFFFFFFFFFFFF8);
  v5 = *a2;
  v6 = a2[1];
  if (v6 >= v4 - v5 && v6 - (v4 - v5) > 7)
  {
    a2[2] = (v4 + 1);
    if (!v4)
    {
      goto LABEL_16;
    }

    v8 = *v4;
    result = IPC::ArgumentCoder<WebKit::LayerTreeContext,void>::decode(a2);
    if (v10)
    {
      *a1 = v8;
      *(a1 + 8) = result;
      *(a1 + 16) = 1;
      return result;
    }
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
    v11 = a2[3];
    if (!v11)
    {
      v6 = 0;
LABEL_12:
      v5 = 0;
      goto LABEL_16;
    }

    if (!v6)
    {
      goto LABEL_12;
    }

    (*(*v11 + 16))(v11);
  }

  v5 = *a2;
  v6 = a2[1];
LABEL_16:
  *a2 = 0;
  a2[1] = 0;
  v12 = a2[3];
  if (v12 && v6)
  {
    (*(*v12 + 16))(v12, v5);
  }

  *a1 = 0;
  *(a1 + 16) = 0;
  v13 = a2[1];
  *a2 = 0;
  a2[1] = 0;
  result = a2[3];
  if (result && v13)
  {
    v14 = *(*result + 16);

    return v14();
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages15EventDispatcher10TouchEventENS2_10ConnectionEN6WebKit15EventDispatcherES9_FvNS_23ObjectIdentifierGenericIN7WebCore18PageIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEENSA_INSB_19FrameIdentifierTypeESE_yEERKNS8_13WebTouchEventEONS_17CompletionHandlerIFvbNSt3__18optionalINS8_19RemoteWebTouchEventEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJbSP_EED1Ev(void *a1)
{
  *a1 = &unk_1F10EEC88;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages15EventDispatcher10TouchEventENS2_10ConnectionEN6WebKit15EventDispatcherES9_FvNS_23ObjectIdentifierGenericIN7WebCore18PageIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEENSA_INSB_19FrameIdentifierTypeESE_yEERKNS8_13WebTouchEventEONS_17CompletionHandlerIFvbNSt3__18optionalINS8_19RemoteWebTouchEventEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJbSP_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10EEC88;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

void _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages15EventDispatcher10TouchEventENS2_10ConnectionEN6WebKit15EventDispatcherES9_FvNS_23ObjectIdentifierGenericIN7WebCore18PageIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEENSA_INSB_19FrameIdentifierTypeESE_yEERKNS8_13WebTouchEventEONS_17CompletionHandlerIFvbNSt3__18optionalINS8_19RemoteWebTouchEventEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJbSP_EE4callEbSP_(uint64_t a1, void *a2, uint64_t a3)
{
  v15 = a2;
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  v6 = IPC::Encoder::operator new(0x238, a2);
  *v6 = 3210;
  *(v6 + 2) = 0;
  *(v6 + 3) = 0;
  *(v6 + 1) = v5;
  *(v6 + 68) = 0;
  *(v6 + 70) = 0;
  *(v6 + 69) = 0;
  IPC::Encoder::encodeHeader(v6);
  v16 = v6;
  v7 = IPC::Encoder::operator<<<BOOL>(v6, &v15);
  v8 = v7;
  if (*(a3 + 144))
  {
    v17 = 1;
    IPC::Encoder::operator<<<BOOL>(v7, &v17);
    if ((*(a3 + 144) & 1) == 0)
    {
      v13 = std::__throw_bad_optional_access[abi:sn200100]();
      IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,IPC::StreamServerConnectionHandle>>(v13, v14);
      return;
    }

    IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v8, *a3);
    IPC::ArgumentCoder<WebKit::WebTouchEvent,void>::encode(v8, a3 + 16);
  }

  else
  {
    v18 = 0;
    IPC::Encoder::operator<<<BOOL>(v7, &v18);
  }

  IPC::Connection::sendMessageImpl(v4, &v16, 0, 0);
  v10 = v16;
  v16 = 0;
  if (v10)
  {
    IPC::Encoder::~Encoder(v10, v9);
    bmalloc::api::tzoneFree(v11, v12);
  }
}

void IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,IPC::StreamServerConnectionHandle>>(_BYTE *a1, IPC::Decoder *a2)
{
  IPC::ArgumentCoder<std::tuple<WTF::ObjectIdentifierGeneric<WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,IPC::StreamServerConnectionHandle>,void>::decode<IPC::Decoder>(a1, a2);
  if ((a1[32] & 1) == 0)
  {

    IPC::Decoder::markInvalid(a2);
  }
}

void IPC::ArgumentCoder<std::tuple<WTF::ObjectIdentifierGeneric<WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,IPC::StreamServerConnectionHandle>,void>::decode<IPC::Decoder>(_BYTE *a1, IPC::Decoder *a2)
{
  v5 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
  v6 = v4;
  if (v4)
  {
    IPC::ArgumentCoder<std::tuple<WTF::ObjectIdentifierGeneric<WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,IPC::StreamServerConnectionHandle>,void>::decode<IPC::Decoder,WTF::ObjectIdentifierGeneric<WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a1, a2, &v5);
  }

  else
  {
    *a1 = 0;
    a1[32] = 0;
  }
}

void IPC::ArgumentCoder<std::tuple<WTF::ObjectIdentifierGeneric<WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,IPC::StreamServerConnectionHandle>,void>::decode<IPC::Decoder,WTF::ObjectIdentifierGeneric<WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(_BYTE *a1, IPC::Decoder *a2, uint64_t a3)
{
  IPC::Decoder::decode<IPC::StreamServerConnectionHandle>(a2, v5);
  if ((v5[24] & 1) == 0)
  {
    *a1 = 0;
    a1[32] = 0;
    goto LABEL_4;
  }

  if (*(a3 + 8))
  {
    _ZNSt3__127__optional_copy_assign_baseINS_5tupleIJN3WTF23ObjectIdentifierGenericIN6WebKit30RenderingBackendIdentifierTypeENS2_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEEN3IPC28StreamServerConnectionHandleEEEELb0EECI2NS_24__optional_destruct_baseISB_Lb0EEEIJS8_SA_EEENS_10in_place_tEDpOT_(a1, *a3, v5);
LABEL_4:
    std::__optional_destruct_base<IPC::StreamServerConnectionHandle,false>::~__optional_destruct_base[abi:sn200100](v5);
    return;
  }

  __break(1u);
}

uint64_t _ZNSt3__127__optional_copy_assign_baseINS_5tupleIJN3WTF23ObjectIdentifierGenericIN6WebKit30RenderingBackendIdentifierTypeENS2_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEEN3IPC28StreamServerConnectionHandleEEEELb0EECI2NS_24__optional_destruct_baseISB_Lb0EEEIJS8_SA_EEENS_10in_place_tEDpOT_(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = a2;
  WTF::MachSendRight::MachSendRight();
  WTF::MachSendRight::MachSendRight();
  *(a1 + 24) = *(a3 + 16);
  *(a1 + 32) = 1;
  return a1;
}

_BYTE *std::__optional_destruct_base<IPC::StreamServerConnectionHandle,false>::~__optional_destruct_base[abi:sn200100](_BYTE *a1)
{
  if (a1[24] == 1)
  {
    WTF::MachSendRight::~MachSendRight((a1 + 8));
    WTF::MachSendRight::~MachSendRight(a1);
  }

  return a1;
}

_BYTE *std::__optional_destruct_base<std::tuple<WTF::ObjectIdentifierGeneric<WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,IPC::StreamServerConnectionHandle>,false>::~__optional_destruct_base[abi:sn200100](_BYTE *a1)
{
  if (a1[32] == 1)
  {
    WTF::MachSendRight::~MachSendRight((a1 + 16));
    WTF::MachSendRight::~MachSendRight((a1 + 8));
  }

  return a1;
}

uint64_t IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>(IPC::Decoder *a1)
{
  v2 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a1);
  v4 = v3;
  if ((v3 & 1) == 0)
  {
    IPC::Decoder::markInvalid(a1);
  }

  if (v4)
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

uint64_t IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,BOOL>>(_BYTE *a1, IPC::Decoder *a2)
{
  result = IPC::ArgumentCoder<std::tuple<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,BOOL>,void>::decode<IPC::Decoder>(a1, a2);
  if ((a1[24] & 1) == 0)
  {

    return IPC::Decoder::markInvalid(a2);
  }

  return result;
}

uint64_t IPC::ArgumentCoder<std::tuple<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,BOOL>,void>::decode<IPC::Decoder>(_BYTE *a1, IPC::Decoder *a2)
{
  result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
  v6 = result;
  v7 = v5;
  if (v5)
  {
    return IPC::ArgumentCoder<std::tuple<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,BOOL>,void>::decode<IPC::Decoder,WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a1, a2, &v6);
  }

  *a1 = 0;
  a1[24] = 0;
  return result;
}

uint64_t IPC::ArgumentCoder<std::tuple<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,BOOL>,void>::decode<IPC::Decoder,WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(_BYTE *a1, IPC::Decoder *a2, uint64_t a3)
{
  result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
  v8 = result;
  v9 = v7;
  if (v7)
  {
    return IPC::ArgumentCoder<std::tuple<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,BOOL>,void>::decode<IPC::Decoder,WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a1, a2, a3, &v8);
  }

  *a1 = 0;
  a1[24] = 0;
  return result;
}

uint64_t IPC::ArgumentCoder<std::tuple<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,BOOL>,void>::decode<IPC::Decoder,WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(uint64_t a1, IPC::Decoder *a2, uint64_t a3, uint64_t *a4)
{
  result = IPC::Decoder::decode<BOOL>(a2);
  if ((result & 0x100) == 0)
  {
    v9 = 0;
    *a1 = 0;
    goto LABEL_5;
  }

  if (*(a3 + 8) & 1) != 0 && (a4[1])
  {
    v8 = *a4;
    *a1 = *a3;
    *(a1 + 8) = v8;
    *(a1 + 16) = result;
    v9 = 1;
LABEL_5:
    *(a1 + 24) = v9;
    return result;
  }

  __break(1u);
  return result;
}

unint64_t IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebKit::RemoteAudioHardwareListenerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(uint64_t *a1)
{
  result = IPC::ArgumentCoder<WTF::ObjectIdentifierGeneric<WebCore::BackgroundFetchRecordIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,void>::decode(a1);
  if ((v3 & 1) == 0)
  {
    v5 = *a1;
    v4 = a1[1];
    *a1 = 0;
    a1[1] = 0;
    v6 = a1[3];
    if (v6)
    {
      v7 = v4 == 0;
    }

    else
    {
      v7 = 1;
    }

    if (!v7)
    {
      v12 = v3;
      v14 = result;
      (*(*v6 + 16))(v6, v5);
      v3 = v12;
      result = v14;
    }

    v9 = *a1;
    v8 = a1[1];
    *a1 = 0;
    a1[1] = 0;
    v10 = a1[3];
    if (v10 && v8)
    {
      v13 = result;
      v11 = v3;
      (*(*v10 + 16))(v10, v9);
      result = v13;
      v3 = v11;
    }
  }

  if ((v3 & 1) == 0)
  {
    return 0;
  }

  return result;
}

WTF::StringImpl *IPC::ArgumentCoder<std::tuple<WTF::String,WTFLogChannelState,WTFLogLevel>,void>::decode<IPC::Decoder>@<X0>(IPC::Decoder *a1@<X0>, _BYTE *a2@<X8>)
{
  IPC::ArgumentCoder<WTF::String,void>::decode<IPC::Decoder>(a1, &v9);
  if (v10 & 1) != 0 || ((v6 = *a1, v7 = *(a1 + 1), *a1 = 0, *(a1 + 1) = 0, (result = *(a1 + 3)) != 0) ? (v8 = v7 == 0) : (v8 = 1), !v8 && (result = (*(*result + 16))(result, v6), (v10)))
  {
    result = IPC::ArgumentCoder<std::tuple<WTF::String,WTFLogChannelState,WTFLogLevel>,void>::decode<IPC::Decoder,WTF::String>(a1, &v9, a2);
    if (v10)
    {
      result = v9;
      v9 = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          return WTF::StringImpl::destroy(result, v5);
        }
      }
    }
  }

  else
  {
    *a2 = 0;
    a2[16] = 0;
  }

  return result;
}

uint64_t IPC::ArgumentCoder<std::tuple<WTF::String,WTFLogChannelState,WTFLogLevel>,void>::decode<IPC::Decoder,WTF::String>@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, _BYTE *a3@<X8>)
{
  result = IPC::Decoder::decode<WebCore::NotificationDirection>(a1);
  v7 = result;
  if ((result & 0x100) != 0)
  {
    return IPC::ArgumentCoder<std::tuple<WTF::String,WTFLogChannelState,WTFLogLevel>,void>::decode<IPC::Decoder,WTF::String,WTFLogChannelState>(a1, a2, &v7, a3);
  }

  *a3 = 0;
  a3[16] = 0;
  return result;
}

uint64_t IPC::ArgumentCoder<std::tuple<WTF::String,WTFLogChannelState,WTFLogLevel>,void>::decode<IPC::Decoder,WTF::String,WTFLogChannelState>@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, _BYTE *a3@<X2>, _BYTE *a4@<X8>)
{
  result = IPC::Decoder::decode<WTFLogLevel>(a1);
  if ((result & 0x100) == 0)
  {
    v8 = 0;
    *a4 = 0;
LABEL_6:
    a4[16] = v8;
    return result;
  }

  if (a2[1] & 1) != 0 && (a3[1])
  {
    v9 = *a2;
    *a2 = 0;
    *a4 = v9;
    a4[8] = *a3;
    a4[9] = result;
    v8 = 1;
    goto LABEL_6;
  }

  __break(1u);
  return result;
}

uint64_t IPC::Decoder::decode<WTFLogLevel>(uint64_t *a1)
{
  result = IPC::ArgumentCoder<WTFLogLevel,void>::decode<IPC::Decoder>(a1);
  if ((result & 0x100) == 0)
  {
    v3 = *a1;
    v4 = a1[1];
    *a1 = 0;
    a1[1] = 0;
    v5 = a1[3];
    if (v5)
    {
      v6 = v4 == 0;
    }

    else
    {
      v6 = 1;
    }

    if (!v6)
    {
      v7 = result;
      (*(*v5 + 16))(v5, v3);
      return v7;
    }
  }

  return result;
}

uint64_t IPC::ArgumentCoder<WTFLogLevel,void>::decode<IPC::Decoder>(uint64_t *a1)
{
  v1 = a1[1];
  v2 = a1[2];
  v3 = *a1;
  if (v1 <= &v2[-*a1])
  {
    *a1 = 0;
    a1[1] = 0;
    v9 = a1;
    v6 = a1[3];
    if (v6)
    {
      if (v1)
      {
        (*(*v6 + 16))(v6);
        v3 = *v9;
        v1 = v9[1];
        goto LABEL_8;
      }
    }

    else
    {
      v1 = 0;
    }

    v3 = 0;
LABEL_8:
    *v9 = 0;
    v9[1] = 0;
    v7 = v9[3];
    if (v7 && v1)
    {
      (*(*v7 + 16))(v7, v3);
    }

    goto LABEL_9;
  }

  a1[2] = (v2 + 1);
  if (!v2)
  {
    v9 = a1;
    goto LABEL_8;
  }

  v4 = *v2;
  if (v4 >= 5)
  {
LABEL_9:
    v4 = 0;
    v5 = 0;
    return v4 | (v5 << 8);
  }

  v5 = 1;
  return v4 | (v5 << 8);
}

IPC::Decoder *IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::String>>(_BYTE *a1, IPC::Decoder *a2)
{
  result = IPC::ArgumentCoder<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::String>,void>::decode<IPC::Decoder>(a1, a2);
  if ((a1[16] & 1) == 0)
  {

    return IPC::Decoder::markInvalid(a2);
  }

  return result;
}

IPC::Decoder *IPC::ArgumentCoder<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::String>,void>::decode<IPC::Decoder>(_BYTE *a1, IPC::Decoder *a2)
{
  result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
  v6 = result;
  v7 = v5;
  if (v5)
  {
    return IPC::ArgumentCoder<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::String>,void>::decode<IPC::Decoder,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a1, a2, &v6);
  }

  *a1 = 0;
  a1[16] = 0;
  return result;
}

IPC::Decoder *IPC::ArgumentCoder<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::String>,void>::decode<IPC::Decoder,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(uint64_t a1, IPC::Decoder *a2, uint64_t a3)
{
  result = IPC::Decoder::decode<WTF::String>(a2, &v8);
  if (v9 != 1)
  {
    v7 = 0;
    *a1 = 0;
    goto LABEL_4;
  }

  if (*(a3 + 8))
  {
    v6 = v8;
    *a1 = *a3;
    *(a1 + 8) = v6;
    v7 = 1;
LABEL_4:
    *(a1 + 16) = v7;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages25GPUConnectionToWebProcess18EnsureAudioSessionEN6WebKit25GPUConnectionToWebProcessES8_FvONS_17CompletionHandlerIFvRKNS7_31RemoteAudioSessionConfigurationEEEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJSC_EED1Ev(uint64_t a1)
{
  *a1 = &unk_1F10EECB0;
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((a1 + 8), 0);
  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages25GPUConnectionToWebProcess18EnsureAudioSessionEN6WebKit25GPUConnectionToWebProcessES8_FvONS_17CompletionHandlerIFvRKNS7_31RemoteAudioSessionConfigurationEEEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJSC_EED0Ev(uint64_t a1)
{
  *a1 = &unk_1F10EECB0;
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((a1 + 8), 0);

  return WTF::fastFree(a1, v3);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages25GPUConnectionToWebProcess18EnsureAudioSessionEN6WebKit25GPUConnectionToWebProcessES8_FvONS_17CompletionHandlerIFvRKNS7_31RemoteAudioSessionConfigurationEEEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJSC_EE4callESC_(uint64_t a1, uint64_t a2)
{
  v2 = (a1 + 8);
  IPC::ArgumentCoder<WebKit::RemoteAudioSessionConfiguration,void>::encode(*(a1 + 8), a2);
  v3 = v2[1];

  return IPC::Connection::sendMessageImpl(v3, v2, 0, 0);
}

atomic_uchar **WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUProcessConnection,(WTF::DestructionThread)0>::deref(atomic_uchar **result, void *a2)
{
  do
  {
    v2 = *result;
    if ((*result & 1) == 0)
    {
      return WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebKit::GPUProcessConnection,(WTF::DestructionThread)0>(*result, a2);
    }

    v3 = *result;
    atomic_compare_exchange_strong_explicit(result, &v3, (v2 - 2), memory_order_relaxed, memory_order_relaxed);
  }

  while (v3 != v2);
  if (v2 == 3)
  {
    return (*(*(result - 3) + 3))();
  }

  return result;
}

uint64_t WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebKit::GPUProcessConnection,(WTF::DestructionThread)0>(atomic_uchar *this, void *a2)
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
    result = (*(*result + 24))(result);
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

uint64_t IPC::Decoder::decode<std::tuple<std::optional<WebKit::GPUProcessConnectionInfo>>>(uint64_t a1, IPC::Decoder *a2)
{
  result = IPC::Decoder::decode<std::optional<WebKit::GPUProcessConnectionInfo>>(&v7, a2);
  v5 = v9;
  if (v9 == 1)
  {
    v6 = *v8;
    *a1 = v7;
    *(a1 + 16) = v6;
    *(a1 + 28) = *&v8[12];
  }

  else
  {
    *a1 = 0;
    result = IPC::Decoder::markInvalid(a2);
    v5 = 0;
  }

  *(a1 + 44) = v5;
  return result;
}

uint64_t IPC::Decoder::decode<std::optional<WebKit::GPUProcessConnectionInfo>>(uint64_t a1, IPC::Decoder *a2)
{
  result = IPC::ArgumentCoder<std::optional<WebKit::GPUProcessConnectionInfo>,void>::decode<IPC::Decoder>(a1, a2);
  if ((*(a1 + 44) & 1) == 0)
  {

    return IPC::Decoder::markInvalid(a2);
  }

  return result;
}

uint64_t IPC::ArgumentCoder<std::optional<WebKit::GPUProcessConnectionInfo>,void>::decode<IPC::Decoder>(uint64_t a1, IPC::Decoder *a2)
{
  result = IPC::Decoder::decode<BOOL>(a2);
  if ((result & 0x100) != 0)
  {
    if (result)
    {
      result = IPC::Decoder::decode<WebKit::GPUProcessConnectionInfo>(v7, a2);
      if (v9)
      {
        v5 = v7[1];
        *a1 = v7[0];
        *(a1 + 16) = v5;
        *(a1 + 32) = v8;
        v6 = 1;
        *(a1 + 40) = 1;
      }

      else
      {
        v6 = 0;
        *a1 = 0;
      }
    }

    else
    {
      *a1 = 0;
      *(a1 + 40) = 0;
      v6 = 1;
    }

    *(a1 + 44) = v6;
  }

  else
  {
    *a1 = 0;
    *(a1 + 44) = 0;
  }

  return result;
}

uint64_t IPC::Decoder::decode<WebKit::GPUProcessConnectionInfo>(uint64_t a1, IPC::Decoder *this)
{
  result = IPC::ArgumentCoder<WebKit::GPUProcessConnectionInfo,void>::decode(this, a1);
  if ((*(a1 + 40) & 1) == 0)
  {

    return IPC::Decoder::markInvalid(this);
  }

  return result;
}

uint64_t IPC::ArgumentCoder<std::tuple<WebCore::PlatformMediaSessionRemoteControlCommandType,WebCore::PlatformMediaSessionRemoteCommandArgument>,void>::decode<IPC::Decoder>@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = IPC::Decoder::decode<WebCore::PlatformMediaSessionRemoteControlCommandType>(a1);
  v5 = result;
  if ((result & 0x100) != 0)
  {
    return IPC::ArgumentCoder<std::tuple<WebCore::PlatformMediaSessionRemoteControlCommandType,WebCore::PlatformMediaSessionRemoteCommandArgument>,void>::decode<IPC::Decoder,WebCore::PlatformMediaSessionRemoteControlCommandType>(a1, &v5, a2);
  }

  *a2 = 0;
  a2[32] = 0;
  return result;
}

uint64_t IPC::Decoder::decode<WebCore::PlatformMediaSessionRemoteControlCommandType>(uint64_t *a1)
{
  result = IPC::ArgumentCoder<WebCore::PlatformMediaSessionRemoteControlCommandType,void>::decode<IPC::Decoder>(a1);
  if ((result & 0x100) == 0)
  {
    v3 = *a1;
    v4 = a1[1];
    *a1 = 0;
    a1[1] = 0;
    v5 = a1[3];
    if (v5)
    {
      v6 = v4 == 0;
    }

    else
    {
      v6 = 1;
    }

    if (!v6)
    {
      v7 = result;
      (*(*v5 + 16))(v5, v3);
      return v7;
    }
  }

  return result;
}

uint64_t IPC::ArgumentCoder<std::tuple<WebCore::PlatformMediaSessionRemoteControlCommandType,WebCore::PlatformMediaSessionRemoteCommandArgument>,void>::decode<IPC::Decoder,WebCore::PlatformMediaSessionRemoteControlCommandType>@<X0>(IPC::Decoder *a1@<X0>, _BYTE *a2@<X1>, uint64_t a3@<X8>)
{
  result = IPC::ArgumentCoder<WebCore::PlatformMediaSessionRemoteCommandArgument,void>::decode(a1, &v11);
  if ((v13 & 1) == 0)
  {
    v7 = *a1;
    v9 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    result = *(a1 + 3);
    if (result)
    {
      v10 = v9 == 0;
    }

    else
    {
      v10 = 1;
    }

    if (v10)
    {
      goto LABEL_10;
    }

    goto LABEL_12;
  }

  if ((a2[1] & 1) == 0)
  {
    __break(1u);
LABEL_12:
    result = (*(*result + 16))(result, v7);
LABEL_10:
    v8 = 0;
    *a3 = 0;
    goto LABEL_4;
  }

  *a3 = *a2;
  *(a3 + 8) = v11;
  *(a3 + 24) = v12;
  v8 = 1;
LABEL_4:
  *(a3 + 32) = v8;
  return result;
}

uint64_t IPC::ArgumentCoder<WebCore::PlatformMediaSessionRemoteControlCommandType,void>::decode<IPC::Decoder>(uint64_t *a1)
{
  v1 = a1[1];
  v2 = a1[2];
  v3 = *a1;
  if (v1 <= &v2[-*a1])
  {
    *a1 = 0;
    a1[1] = 0;
    v9 = a1;
    v6 = a1[3];
    if (v6)
    {
      if (v1)
      {
        (*(*v6 + 16))(v6);
        v3 = *v9;
        v1 = v9[1];
        goto LABEL_8;
      }
    }

    else
    {
      v1 = 0;
    }

    v3 = 0;
LABEL_8:
    *v9 = 0;
    v9[1] = 0;
    v7 = v9[3];
    if (v7 && v1)
    {
      (*(*v7 + 16))(v7, v3);
    }

    goto LABEL_9;
  }

  a1[2] = (v2 + 1);
  if (!v2)
  {
    v9 = a1;
    goto LABEL_8;
  }

  v4 = *v2;
  if (v4 >= 0x10)
  {
LABEL_9:
    v4 = 0;
    v5 = 0;
    return v4 | (v5 << 8);
  }

  v5 = 1;
  return v4 | (v5 << 8);
}

void IPC::Decoder::decode<std::tuple<WebKit::GPUProcessCreationParameters>>(_BYTE *a1, IPC::Decoder *a2)
{
  IPC::ArgumentCoder<std::tuple<WebKit::GPUProcessCreationParameters>,void>::decode<IPC::Decoder>(a1, a2);
  if ((a1[128] & 1) == 0)
  {

    IPC::Decoder::markInvalid(a2);
  }
}

void IPC::ArgumentCoder<std::tuple<WebKit::GPUProcessCreationParameters>,void>::decode<IPC::Decoder>(_BYTE *a1, IPC::Decoder *a2)
{
  IPC::Decoder::decode<WebKit::GPUProcessCreationParameters>(v4, a2);
  if (v5 == 1)
  {
    _ZNSt3__127__optional_copy_assign_baseINS_5tupleIJN6WebKit28GPUProcessCreationParametersEEEELb0EECI2NS_24__optional_destruct_baseIS4_Lb0EEEIJS3_EEENS_10in_place_tEDpOT_(a1, v4);
    if (v5)
    {
      WebKit::GPUProcessCreationParameters::~GPUProcessCreationParameters(v4, v3);
    }
  }

  else
  {
    *a1 = 0;
    a1[128] = 0;
  }
}

uint64_t IPC::Decoder::decode<WebKit::GPUProcessCreationParameters>(_BYTE *a1, IPC::Decoder *a2)
{
  result = IPC::ArgumentCoder<WebKit::GPUProcessCreationParameters,void>::decode(a2, a1);
  if ((a1[128] & 1) == 0)
  {

    return IPC::Decoder::markInvalid(a2);
  }

  return result;
}

uint64_t _ZNSt3__127__optional_copy_assign_baseINS_5tupleIJN6WebKit28GPUProcessCreationParametersEEEELb0EECI2NS_24__optional_destruct_baseIS4_Lb0EEEIJS3_EEENS_10in_place_tEDpOT_(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  *a2 = 0;
  *a1 = v4;
  v5 = a2[1];
  a2[1] = 0;
  *(a1 + 8) = v5;
  v6 = *(a2 + 1);
  a2[2] = 0;
  a2[3] = 0;
  *(a1 + 16) = v6;
  *(a1 + 32) = *(a2 + 16);
  v7 = a2[5];
  a2[5] = 0;
  *(a1 + 40) = v7;
  v8 = a2[6];
  a2[6] = 0;
  *(a1 + 48) = v8;
  v9 = a2[7];
  a2[7] = 0;
  *(a1 + 56) = v9;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  if (*(a2 + 72) == 1)
  {
    v12 = a2[8];
    a2[8] = 0;
    *(a1 + 64) = v12;
    *(a1 + 72) = 1;
  }

  *(a1 + 88) = 0;
  *(a1 + 80) = 0;
  WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt(a1 + 80, a2 + 20);
  v10 = a2[12];
  a2[12] = 0;
  *(a1 + 96) = v10;
  *(a1 + 112) = 0;
  *(a1 + 104) = 0;
  WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt(a1 + 104, a2 + 26);
  *(a1 + 120) = *(a2 + 60);
  *(a1 + 128) = 1;
  return a1;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages10GPUProcess20InitializeGPUProcessENS2_10ConnectionEN6WebKit10GPUProcessES9_FvONS8_28GPUProcessCreationParametersEONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEED1Ev(void *a1)
{
  *a1 = &unk_1F10EECD8;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages10GPUProcess20InitializeGPUProcessENS2_10ConnectionEN6WebKit10GPUProcessES9_FvONS8_28GPUProcessCreationParametersEONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10EECD8;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *IPC::Connection::sendAsyncReply<Messages::GPUProcess::InitializeGPUProcess>(uint64_t *a1, void *a2)
{
  v4 = IPC::Encoder::operator new(0x238, a2);
  *v4 = 3213;
  *(v4 + 2) = 0;
  *(v4 + 3) = 0;
  *(v4 + 1) = a2;
  *(v4 + 68) = 0;
  *(v4 + 70) = 0;
  *(v4 + 69) = 0;
  IPC::Encoder::encodeHeader(v4);
  v9 = v4;
  IPC::Connection::sendMessageImpl(a1, &v9, 0, 0);
  result = v9;
  v9 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v5);
    return bmalloc::api::tzoneFree(v7, v8);
  }

  return result;
}

void IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,PAL::SessionID,IPC::ConnectionHandle,WebKit::GPUProcessConnectionParameters>>(_BYTE *a1, IPC::Decoder *a2)
{
  IPC::ArgumentCoder<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,PAL::SessionID,IPC::ConnectionHandle,WebKit::GPUProcessConnectionParameters>,void>::decode<IPC::Decoder>(a1, a2);
  if ((a1[88] & 1) == 0)
  {

    IPC::Decoder::markInvalid(a2);
  }
}

void IPC::ArgumentCoder<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,PAL::SessionID,IPC::ConnectionHandle,WebKit::GPUProcessConnectionParameters>,void>::decode<IPC::Decoder>(_BYTE *a1, IPC::Decoder *a2)
{
  v5 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
  v6 = v4;
  if (v4)
  {
    IPC::ArgumentCoder<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,PAL::SessionID,IPC::ConnectionHandle,WebKit::GPUProcessConnectionParameters>,void>::decode<IPC::Decoder,WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a1, a2, &v5);
  }

  else
  {
    *a1 = 0;
    a1[88] = 0;
  }
}

void IPC::ArgumentCoder<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,PAL::SessionID,IPC::ConnectionHandle,WebKit::GPUProcessConnectionParameters>,void>::decode<IPC::Decoder,WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(_BYTE *a1, IPC::Decoder *a2, uint64_t a3)
{
  v7 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
  v8 = v6;
  if (v6)
  {
    IPC::ArgumentCoder<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,PAL::SessionID,IPC::ConnectionHandle,WebKit::GPUProcessConnectionParameters>,void>::decode<IPC::Decoder,WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,PAL::SessionID>(a1, a2, a3, &v7);
  }

  else
  {
    *a1 = 0;
    a1[88] = 0;
  }
}

void IPC::ArgumentCoder<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,PAL::SessionID,IPC::ConnectionHandle,WebKit::GPUProcessConnectionParameters>,void>::decode<IPC::Decoder,WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,PAL::SessionID>(_BYTE *a1, IPC::Decoder *a2, uint64_t a3, uint64_t a4)
{
  IPC::Decoder::decode<IPC::ConnectionHandle>(a2, v8);
  if (v9 == 1)
  {
    IPC::ArgumentCoder<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,PAL::SessionID,IPC::ConnectionHandle,WebKit::GPUProcessConnectionParameters>,void>::decode<IPC::Decoder,WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,PAL::SessionID,IPC::ConnectionHandle>(a1, a2, a3, a4, v8);
    if (v9)
    {
      WTF::MachSendRight::~MachSendRight(v8);
    }
  }

  else
  {
    *a1 = 0;
    a1[88] = 0;
  }
}

WTF::MachSendRight *IPC::ArgumentCoder<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,PAL::SessionID,IPC::ConnectionHandle,WebKit::GPUProcessConnectionParameters>,void>::decode<IPC::Decoder,WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,PAL::SessionID,IPC::ConnectionHandle>(_BYTE *a1, IPC::Decoder *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  IPC::Decoder::decode<WebKit::GPUProcessConnectionParameters>(v11, a2);
  if (v11[64])
  {
    IPC::ArgumentCoder<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,PAL::SessionID,IPC::ConnectionHandle,WebKit::GPUProcessConnectionParameters>,void>::decode<IPC::Decoder,WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,PAL::SessionID,IPC::ConnectionHandle,WebKit::GPUProcessConnectionParameters>(a1, *a3, *(a3 + 8), *a4, *(a4 + 8), a5, v11);
  }

  else
  {
    *a1 = 0;
    a1[88] = 0;
  }

  return std::optional<WebKit::GPUProcessConnectionParameters>::~optional(v11, v9);
}

void IPC::Decoder::decode<WebKit::GPUProcessConnectionParameters>(WTF::MachSendRight *a1, IPC::Decoder *a2)
{
  IPC::ArgumentCoder<WebKit::GPUProcessConnectionParameters,void>::decode(a2, a1);
  if ((*(a1 + 64) & 1) == 0)
  {

    IPC::Decoder::markInvalid(a2);
  }
}

void IPC::ArgumentCoder<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,PAL::SessionID,IPC::ConnectionHandle,WebKit::GPUProcessConnectionParameters>,void>::decode<IPC::Decoder,WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,PAL::SessionID,IPC::ConnectionHandle,WebKit::GPUProcessConnectionParameters>(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  if (a3 & 1) != 0 && (a5 & 1) != 0 && (*(a6 + 4) & 1) != 0 && (*(a7 + 64))
  {
    *a1 = a2;
    *(a1 + 8) = a4;
    WTF::MachSendRight::MachSendRight();
    WebKit::GPUProcessConnectionParameters::GPUProcessConnectionParameters((a1 + 24), a7);
    *(a1 + 88) = 1;
  }

  else
  {
    __break(1u);
  }
}

__n128 WebKit::GPUProcessConnectionParameters::GPUProcessConnectionParameters(WTF::MachSendRight *a1, uint64_t a2)
{
  v3 = WTF::MachSendRight::MachSendRight(a1, a2);
  result = *(a2 + 8);
  *(v3 + 17) = *(a2 + 17);
  *(v3 + 8) = result;
  *(v3 + 40) = 0;
  v5 = *(a2 + 40);
  *(a2 + 40) = 0;
  *(v3 + 40) = v5;
  v6 = *(a2 + 48);
  *(a2 + 48) = 0;
  *(v3 + 48) = v6;
  *(v3 + 56) = *(a2 + 56);
  return result;
}

WTF::MachSendRight *std::optional<WebKit::GPUProcessConnectionParameters>::~optional(WTF::MachSendRight *this, WTF::StringImpl *a2)
{
  if (*(this + 64) == 1)
  {
    v3 = *(this + 6);
    *(this + 6) = 0;
    if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v3, a2);
    }

    v4 = *(this + 5);
    if (v4)
    {
      WTF::fastFree((v4 - 16), a2);
    }

    WTF::MachSendRight::~MachSendRight(this);
  }

  return this;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages10GPUProcess31CreateGPUConnectionToWebProcessENS2_10ConnectionEN6WebKit10GPUProcessES9_FvNS_23ObjectIdentifierGenericIN7WebCore21ProcessIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEN3PAL9SessionIDEONS2_16ConnectionHandleEONS8_30GPUProcessConnectionParametersEONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEED1Ev(void *a1)
{
  *a1 = &unk_1F10EED00;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages10GPUProcess31CreateGPUConnectionToWebProcessENS2_10ConnectionEN6WebKit10GPUProcessES9_FvNS_23ObjectIdentifierGenericIN7WebCore21ProcessIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEN3PAL9SessionIDEONS2_16ConnectionHandleEONS8_30GPUProcessConnectionParametersEONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10EED00;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *IPC::Connection::sendAsyncReply<Messages::GPUProcess::CreateGPUConnectionToWebProcess>(uint64_t *a1, void *a2)
{
  v4 = IPC::Encoder::operator new(0x238, a2);
  *v4 = 3212;
  *(v4 + 2) = 0;
  *(v4 + 3) = 0;
  *(v4 + 1) = a2;
  *(v4 + 68) = 0;
  *(v4 + 70) = 0;
  *(v4 + 69) = 0;
  IPC::Encoder::encodeHeader(v4);
  v9 = v4;
  IPC::Connection::sendMessageImpl(a1, &v9, 0, 0);
  result = v9;
  v9 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v5);
    return bmalloc::api::tzoneFree(v7, v8);
  }

  return result;
}

uint64_t std::optional<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,PAL::SessionID,IPC::ConnectionHandle,WebKit::GPUProcessConnectionParameters>>::~optional(uint64_t a1, WTF::StringImpl *a2)
{
  if (*(a1 + 88) == 1)
  {
    v3 = *(a1 + 72);
    *(a1 + 72) = 0;
    if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v3, a2);
    }

    v4 = *(a1 + 64);
    if (v4)
    {
      WTF::fastFree((v4 - 16), a2);
    }

    WTF::MachSendRight::~MachSendRight((a1 + 24));
    WTF::MachSendRight::~MachSendRight((a1 + 16));
  }

  return a1;
}

uint64_t IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::SharedPreferencesForWebProcess>>@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  result = IPC::ArgumentCoder<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::SharedPreferencesForWebProcess>,void>::decode<IPC::Decoder>(a1, a2);
  if ((*(a2 + 32) & 1) == 0)
  {

    return IPC::Decoder::markInvalid(a1);
  }

  return result;
}

uint64_t IPC::ArgumentCoder<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::SharedPreferencesForWebProcess>,void>::decode<IPC::Decoder>@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a1);
  if (v5)
  {
    v6 = result;
    result = IPC::Decoder::decode<WebKit::SharedPreferencesForWebProcess>(a1, &v8);
    if (v10)
    {
      *a2 = v6;
      *(a2 + 8) = v8;
      *(a2 + 24) = v9;
      v7 = 1;
    }

    else
    {
      v7 = 0;
      *a2 = 0;
    }

    *(a2 + 32) = v7;
  }

  else
  {
    *a2 = 0;
    *(a2 + 32) = 0;
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages10GPUProcess39SharedPreferencesForWebProcessDidChangeENS2_10ConnectionEN6WebKit10GPUProcessES9_FvNS_23ObjectIdentifierGenericIN7WebCore21ProcessIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEONS8_30SharedPreferencesForWebProcessEONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEED1Ev(void *a1)
{
  *a1 = &unk_1F10EED28;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages10GPUProcess39SharedPreferencesForWebProcessDidChangeENS2_10ConnectionEN6WebKit10GPUProcessES9_FvNS_23ObjectIdentifierGenericIN7WebCore21ProcessIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEONS8_30SharedPreferencesForWebProcessEONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10EED28;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *IPC::Connection::sendAsyncReply<Messages::GPUProcess::SharedPreferencesForWebProcessDidChange>(uint64_t *a1, void *a2)
{
  v4 = IPC::Encoder::operator new(0x238, a2);
  *v4 = 3217;
  *(v4 + 2) = 0;
  *(v4 + 3) = 0;
  *(v4 + 1) = a2;
  *(v4 + 68) = 0;
  *(v4 + 70) = 0;
  *(v4 + 69) = 0;
  IPC::Encoder::encodeHeader(v4);
  v9 = v4;
  IPC::Connection::sendMessageImpl(a1, &v9, 0, 0);
  result = v9;
  v9 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v5);
    return bmalloc::api::tzoneFree(v7, v8);
  }

  return result;
}

uint64_t IPC::Decoder::decode<std::tuple<WTF::Vector<WebKit::SandboxExtensionHandle,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>@<X0>(IPC::Decoder *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  result = IPC::ArgumentCoder<std::tuple<WTF::Vector<WebKit::SandboxExtensionHandle,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,void>::decode<IPC::Decoder>(a1, a2, a3);
  if ((*(a3 + 16) & 1) == 0)
  {
    v6 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    result = *(a1 + 3);
    if (result && v6 != 0)
    {
      v8 = *(*result + 16);

      return v8();
    }
  }

  return result;
}

uint64_t IPC::ArgumentCoder<std::tuple<WTF::Vector<WebKit::SandboxExtensionHandle,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,void>::decode<IPC::Decoder>@<X0>(IPC::Decoder *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  IPC::VectorArgumentCoder<false,WebKit::SandboxExtensionHandle,0ul,WTF::CrashOnOverflow,16ul>::decode<IPC::Decoder>(a1, a2, &v11);
  if (v13 & 1) != 0 || ((v8 = *a1, v9 = *(a1 + 1), *a1 = 0, *(a1 + 1) = 0, (result = *(a1 + 3)) != 0) ? (v10 = v9 == 0) : (v10 = 1), !v10 && (result = (*(*result + 16))(result, v8), (v13)))
  {
    *a3 = v11;
    v6 = v12;
    v11 = 0;
    v12 = 0;
    *(a3 + 8) = v6;
    *(a3 + 16) = 1;
    return WTF::Vector<WebKit::SandboxExtensionHandle,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v11, v5);
  }

  else
  {
    *a3 = 0;
    *(a3 + 16) = 0;
  }

  return result;
}

uint64_t IPC::Decoder::decode<std::tuple<BOOL,WTF::MonotonicTime>>@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  result = IPC::ArgumentCoder<std::tuple<BOOL,WTF::MonotonicTime>,void>::decode<IPC::Decoder>(a1, a2);
  if ((*(a2 + 16) & 1) == 0)
  {

    return IPC::Decoder::markInvalid(a1);
  }

  return result;
}

uint64_t IPC::ArgumentCoder<std::tuple<BOOL,WTF::MonotonicTime>,void>::decode<IPC::Decoder>@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  result = IPC::Decoder::decode<BOOL>(a1);
  if (result & 0x100) != 0 && (v5 = result, result = IPC::Decoder::decode<WTF::MonotonicTime>(a1), (v6))
  {
    *a2 = v5;
    *(a2 + 8) = result;
    v7 = 1;
  }

  else
  {
    v7 = 0;
    *a2 = 0;
  }

  *(a2 + 16) = v7;
  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages10GPUProcess16PrepareToSuspendENS2_10ConnectionEN6WebKit10GPUProcessES9_FvbNS_13MonotonicTimeEONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEED1Ev(void *a1)
{
  *a1 = &unk_1F10EED50;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages10GPUProcess16PrepareToSuspendENS2_10ConnectionEN6WebKit10GPUProcessES9_FvbNS_13MonotonicTimeEONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10EED50;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages10GPUProcess16PrepareToSuspendENS2_10ConnectionEN6WebKit10GPUProcessES9_FvbNS_13MonotonicTimeEONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEE4callEv(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4 = IPC::Encoder::operator new(0x238, a2);
  *v4 = 3215;
  *(v4 + 2) = 0;
  *(v4 + 3) = 0;
  *(v4 + 1) = v3;
  *(v4 + 68) = 0;
  *(v4 + 70) = 0;
  *(v4 + 69) = 0;
  IPC::Encoder::encodeHeader(v4);
  v9 = v4;
  IPC::Connection::sendMessageImpl(v2, &v9, 0, 0);
  result = v9;
  v9 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v5);
    return bmalloc::api::tzoneFree(v7, v8);
  }

  return result;
}

void IPC::Decoder::decode<std::tuple<PAL::SessionID,WebKit::GPUProcessSessionParameters>>(_BYTE *a1, IPC::Decoder *a2)
{
  IPC::ArgumentCoder<std::tuple<PAL::SessionID,WebKit::GPUProcessSessionParameters>,void>::decode<IPC::Decoder>(a1, a2);
  if ((a1[40] & 1) == 0)
  {

    IPC::Decoder::markInvalid(a2);
  }
}

void IPC::ArgumentCoder<std::tuple<PAL::SessionID,WebKit::GPUProcessSessionParameters>,void>::decode<IPC::Decoder>(_BYTE *a1, IPC::Decoder *a2)
{
  v5 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
  v6 = v4;
  if (v4)
  {
    IPC::ArgumentCoder<std::tuple<PAL::SessionID,WebKit::GPUProcessSessionParameters>,void>::decode<IPC::Decoder,PAL::SessionID>(a1, a2, &v5);
  }

  else
  {
    *a1 = 0;
    a1[40] = 0;
  }
}

void IPC::ArgumentCoder<std::tuple<PAL::SessionID,WebKit::GPUProcessSessionParameters>,void>::decode<IPC::Decoder,PAL::SessionID>(uint64_t a1, IPC::Decoder *a2, uint64_t a3)
{
  IPC::Decoder::decode<WebKit::GPUProcessSessionParameters>(&v7, a2);
  if ((v9 & 1) == 0)
  {
    v6 = 0;
    *a1 = 0;
    goto LABEL_4;
  }

  if (*(a3 + 8))
  {
    *a1 = *a3;
    v5 = v8;
    *(a1 + 8) = v7;
    v7 = 0u;
    v8 = 0u;
    *(a1 + 24) = v5;
    v6 = 1;
LABEL_4:
    *(a1 + 40) = v6;
    std::optional<WebKit::GPUProcessSessionParameters>::~optional(&v7);
    return;
  }

  __break(1u);
}

void IPC::Decoder::decode<WebKit::GPUProcessSessionParameters>(uint64_t a1, IPC::Decoder *a2)
{
  IPC::ArgumentCoder<WebKit::GPUProcessSessionParameters,void>::decode(a2, a1);
  if ((*(a1 + 32) & 1) == 0)
  {

    IPC::Decoder::markInvalid(a2);
  }
}

uint64_t std::optional<WebKit::GPUProcessSessionParameters>::~optional(uint64_t a1)
{
  if (*(a1 + 32) == 1)
  {
    WebKit::SandboxExtensionHandle::~SandboxExtensionHandle((a1 + 24));
    v3 = *(a1 + 16);
    *(a1 + 16) = 0;
    if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v3, v2);
    }

    WebKit::SandboxExtensionHandle::~SandboxExtensionHandle((a1 + 8));
    v5 = *a1;
    *a1 = 0;
    if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v5, v4);
    }
  }

  return a1;
}

uint64_t std::optional<std::tuple<PAL::SessionID,WebKit::GPUProcessSessionParameters>>::~optional(uint64_t a1)
{
  if (*(a1 + 40) == 1)
  {
    WebKit::SandboxExtensionHandle::~SandboxExtensionHandle((a1 + 32));
    v3 = *(a1 + 24);
    *(a1 + 24) = 0;
    if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v3, v2);
    }

    WebKit::SandboxExtensionHandle::~SandboxExtensionHandle((a1 + 16));
    v5 = *(a1 + 8);
    *(a1 + 8) = 0;
    if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v5, v4);
    }
  }

  return a1;
}

uint64_t IPC::Decoder::decode<std::tuple<PAL::SessionID>>(IPC::Decoder *a1)
{
  v2 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a1);
  v4 = v3;
  if ((v3 & 1) == 0)
  {
    IPC::Decoder::markInvalid(a1);
  }

  if (v4)
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages10GPUProcess19UpdateCaptureAccessENS2_10ConnectionEN6WebKit10GPUProcessES9_FvbbbNS_23ObjectIdentifierGenericIN7WebCore21ProcessIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEED1Ev(void *a1)
{
  *a1 = &unk_1F10EED78;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages10GPUProcess19UpdateCaptureAccessENS2_10ConnectionEN6WebKit10GPUProcessES9_FvbbbNS_23ObjectIdentifierGenericIN7WebCore21ProcessIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10EED78;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages10GPUProcess19UpdateCaptureAccessENS2_10ConnectionEN6WebKit10GPUProcessES9_FvbbbNS_23ObjectIdentifierGenericIN7WebCore21ProcessIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEE4callEv(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4 = IPC::Encoder::operator new(0x238, a2);
  *v4 = 3218;
  *(v4 + 2) = 0;
  *(v4 + 3) = 0;
  *(v4 + 1) = v3;
  *(v4 + 68) = 0;
  *(v4 + 70) = 0;
  *(v4 + 69) = 0;
  IPC::Encoder::encodeHeader(v4);
  v9 = v4;
  IPC::Connection::sendMessageImpl(v2, &v9, 0, 0);
  result = v9;
  v9 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v5);
    return bmalloc::api::tzoneFree(v7, v8);
  }

  return result;
}

WTF::StringImpl *IPC::ArgumentCoder<std::tuple<WebCore::MockMediaDevice>,void>::decode<IPC::Decoder>@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  v18 = *MEMORY[0x1E69E9840];
  IPC::ArgumentCoder<WebCore::MockMediaDevice,void>::decode(a1, v13);
  if (v17 & 1) != 0 || ((v9 = *a1, v10 = *(a1 + 1), *a1 = 0, *(a1 + 1) = 0, (result = *(a1 + 3)) != 0) ? (v11 = v10 == 0) : (v11 = 1), !v11 && (result = (*(*result + 16))(result, v9), (v17)))
  {
    v4 = *v13;
    v13[0] = 0;
    v13[1] = 0;
    *a2 = v4;
    *(a2 + 16) = v14;
    result = mpark::detail::move_assignment<mpark::detail::traits<WebCore::MockMicrophoneProperties,WebCore::MockSpeakerProperties,WebCore::MockCameraProperties,WebCore::MockDisplayProperties>,(mpark::detail::Trait)1>::move_assignment(a2 + 24, v15);
    v7 = v17;
    *(a2 + 96) = 1;
    if (v7)
    {
      if (v16 != 255)
      {
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<WebCore::MockMicrophoneProperties,WebCore::MockSpeakerProperties,WebCore::MockCameraProperties,WebCore::MockDisplayProperties>,(mpark::detail::Trait)1> &>(&v12, v15);
      }

      v16 = -1;
      v8 = v13[1];
      v13[1] = 0;
      if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v8, v6);
      }

      result = v13[0];
      v13[0] = 0;
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
    *a2 = 0;
    *(a2 + 96) = 0;
  }

  return result;
}

uint64_t mpark::detail::move_assignment<mpark::detail::traits<WebCore::MockMicrophoneProperties,WebCore::MockSpeakerProperties,WebCore::MockCameraProperties,WebCore::MockDisplayProperties>,(mpark::detail::Trait)1>::move_assignment(uint64_t a1, uint64_t *a2)
{
  *a1 = 0;
  *(a1 + 64) = -1;
  v4 = *(a2 + 64);
  if (v4 <= 1)
  {
    if (*(a2 + 64))
    {
      v8 = *a2;
      *a2 = 0;
      *a1 = v8;
      *(a1 + 8) = *(a2 + 2);
    }

    else
    {
      *a1 = *a2;
    }

LABEL_13:
    *(a1 + 64) = *(a2 + 64);
    return a1;
  }

  if (v4 == 2)
  {
    v6 = *a2;
    *(a1 + 8) = *(a2 + 8);
    *a1 = v6;
    *(a1 + 24) = 0;
    *(a1 + 16) = 0;
    WTF::VectorBuffer<WebCore::HTTPHeaderField,0ul,WTF::FastMalloc>::adopt(a1 + 16, a2 + 4);
    *(a1 + 32) = 0;
    if (a1 != a2)
    {
      v7 = a2[4];
      a2[4] = 0;
      *(a1 + 32) = v7;
    }

    *(a1 + 40) = 0;
    *(a1 + 48) = 0;
    WTF::VectorBuffer<WebCore::HTTPHeaderField,0ul,WTF::FastMalloc>::adopt(a1 + 40, a2 + 10);
    *(a1 + 56) = *(a2 + 28);
    goto LABEL_13;
  }

  if (v4 == 3)
  {
    *a1 = *a2;
    *(a1 + 8) = 0;
    if (a1 != a2)
    {
      v5 = a2[1];
      a2[1] = 0;
      *(a1 + 8) = v5;
    }

    *(a1 + 16) = a2[2];
    goto LABEL_13;
  }

  return a1;
}

uint64_t IPC::Decoder::decode<std::tuple<BOOL,BOOL>>(IPC::Decoder *a1)
{
  v2 = IPC::ArgumentCoder<std::tuple<BOOL,BOOL>,void>::decode<IPC::Decoder>(a1);
  if ((v2 & 0x10000) == 0)
  {
    IPC::Decoder::markInvalid(a1);
  }

  return v2;
}

uint64_t IPC::ArgumentCoder<std::tuple<BOOL,BOOL>,void>::decode<IPC::Decoder>(IPC::Decoder *a1)
{
  v6 = IPC::Decoder::decode<BOOL>(a1);
  if ((v6 & 0x100) != 0)
  {
    v3 = IPC::ArgumentCoder<std::tuple<BOOL,BOOL>,void>::decode<IPC::Decoder,BOOL>(a1, &v6);
    v2 = BYTE1(v3);
    v4 = BYTE2(v3);
  }

  else
  {
    v4 = 0;
    LOBYTE(v3) = 0;
  }

  return (v4 << 16) | (v2 << 8) | v3;
}

uint64_t IPC::ArgumentCoder<std::tuple<BOOL,BOOL>,void>::decode<IPC::Decoder,BOOL>(IPC::Decoder *a1, unsigned __int8 *a2)
{
  result = IPC::Decoder::decode<BOOL>(a1);
  if ((result & 0x100) == 0)
  {
    v4 = 0;
    v5 = 0;
    return (result << 8) | (v5 << 16) | v4;
  }

  if (a2[1])
  {
    v4 = *a2;
    v5 = 1;
    return (result << 8) | (v5 << 16) | v4;
  }

  __break(1u);
  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages10GPUProcess32RequestBitmapImageForCurrentTimeENS2_10ConnectionEN6WebKit10GPUProcessES9_FvNS_23ObjectIdentifierGenericIN7WebCore21ProcessIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEENSA_INSB_25MediaPlayerIdentifierTypeESE_yEEONS_17CompletionHandlerIFvONSt3__18optionalINSB_21ShareableBitmapHandleEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSN_EED1Ev(void *a1)
{
  *a1 = &unk_1F10EEDA0;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages10GPUProcess32RequestBitmapImageForCurrentTimeENS2_10ConnectionEN6WebKit10GPUProcessES9_FvNS_23ObjectIdentifierGenericIN7WebCore21ProcessIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEENSA_INSB_25MediaPlayerIdentifierTypeESE_yEEONS_17CompletionHandlerIFvONSt3__18optionalINSB_21ShareableBitmapHandleEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSN_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10EEDA0;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages10GPUProcess32RequestBitmapImageForCurrentTimeENS2_10ConnectionEN6WebKit10GPUProcessES9_FvNS_23ObjectIdentifierGenericIN7WebCore21ProcessIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEENSA_INSB_25MediaPlayerIdentifierTypeESE_yEEONS_17CompletionHandlerIFvONSt3__18optionalINSB_21ShareableBitmapHandleEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSN_EE4callESN_(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3216;
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  *(v5 + 1) = v4;
  *(v5 + 68) = 0;
  *(v5 + 70) = 0;
  *(v5 + 69) = 0;
  IPC::Encoder::encodeHeader(v5);
  v10 = v5;
  IPC::ArgumentCoder<std::optional<WebCore::ShareableBitmapHandle>,void>::encode<IPC::Encoder,std::optional<WebCore::ShareableBitmapHandle>>(v5, a2);
  IPC::Connection::sendMessageImpl(v3, &v10, 0, 0);
  result = v10;
  v10 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v6);
    return bmalloc::api::tzoneFree(v8, v9);
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages10GPUProcess35WebProcessConnectionCountForTestingENS2_10ConnectionEN6WebKit10GPUProcessES9_FvONS_17CompletionHandlerIFvyEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJyEED1Ev(void *a1)
{
  *a1 = &unk_1F10EEDC8;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages10GPUProcess35WebProcessConnectionCountForTestingENS2_10ConnectionEN6WebKit10GPUProcessES9_FvONS_17CompletionHandlerIFvyEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJyEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10EEDC8;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages10GPUProcess35WebProcessConnectionCountForTestingENS2_10ConnectionEN6WebKit10GPUProcessES9_FvONS_17CompletionHandlerIFvyEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJyEE4callEy(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3219;
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  *(v5 + 1) = v4;
  *(v5 + 68) = 0;
  *(v5 + 70) = 0;
  *(v5 + 69) = 0;
  IPC::Encoder::encodeHeader(v5);
  v10 = v5;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v5, a2);
  IPC::Connection::sendMessageImpl(v3, &v10, 0, 0);
  result = v10;
  v10 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v6);
    return bmalloc::api::tzoneFree(v8, v9);
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages10GPUProcess32PostWillTakeSnapshotNotificationENS2_10ConnectionEN6WebKit10GPUProcessES9_FvONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEED1Ev(void *a1)
{
  *a1 = &unk_1F10EEDF0;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages10GPUProcess32PostWillTakeSnapshotNotificationENS2_10ConnectionEN6WebKit10GPUProcessES9_FvONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10EEDF0;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages10GPUProcess32PostWillTakeSnapshotNotificationENS2_10ConnectionEN6WebKit10GPUProcessES9_FvONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEE4callEv(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4 = IPC::Encoder::operator new(0x238, a2);
  *v4 = 3214;
  *(v4 + 2) = 0;
  *(v4 + 3) = 0;
  *(v4 + 1) = v3;
  *(v4 + 68) = 0;
  *(v4 + 70) = 0;
  *(v4 + 69) = 0;
  IPC::Encoder::encodeHeader(v4);
  v9 = v4;
  IPC::Connection::sendMessageImpl(v2, &v9, 0, 0);
  result = v9;
  v9 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v5);
    return bmalloc::api::tzoneFree(v7, v8);
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages15GPUProcessProxy18StatusBarWasTappedENS2_10ConnectionEN6WebKit15GPUProcessProxyES9_FvONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEED1Ev(void *a1)
{
  *a1 = &unk_1F10EEE18;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages15GPUProcessProxy18StatusBarWasTappedENS2_10ConnectionEN6WebKit15GPUProcessProxyES9_FvONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10EEE18;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages15GPUProcessProxy18StatusBarWasTappedENS2_10ConnectionEN6WebKit15GPUProcessProxyES9_FvONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEE4callEv(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4 = IPC::Encoder::operator new(0x238, a2);
  *v4 = 3211;
  *(v4 + 2) = 0;
  *(v4 + 3) = 0;
  *(v4 + 1) = v3;
  *(v4 + 68) = 0;
  *(v4 + 70) = 0;
  *(v4 + 69) = 0;
  IPC::Encoder::encodeHeader(v4);
  v9 = v4;
  IPC::Connection::sendMessageImpl(v2, &v9, 0, 0);
  result = v9;
  v9 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v5);
    return bmalloc::api::tzoneFree(v7, v8);
  }

  return result;
}

uint64_t IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(IPC::Decoder *a1)
{
  result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a1);
  if ((v3 & 1) == 0)
  {
    v5 = *a1;
    v4 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    v6 = *(a1 + 3);
    if (v6 && v4 != 0)
    {
      v9 = result;
      v8 = v3;
      (*(*v6 + 16))(v6, v5);
      result = v9;
      v3 = v8;
    }
  }

  if ((v3 & 1) == 0)
  {
    return 0;
  }

  return result;
}

BOOL WebKit::methodSignaturesAreCompatible(WebKit *this, NSString *a2, NSString *a3)
{
  if ([(NSString *)a2 isEqualToString:this])
  {
    return 1;
  }

  v6 = [(NSString *)a2 length];
  if (v6 != [(WebKit *)this length])
  {
    return 0;
  }

  v7 = [(NSString *)a2 length];
  if (!v7)
  {
    return 1;
  }

  v8 = 0;
  v9 = v7 - 1;
  do
  {
    v10 = [(NSString *)a2 characterAtIndex:v8];
    if (v10 == 66)
    {
      v11 = 99;
    }

    else
    {
      v11 = v10;
    }

    v12 = [(WebKit *)this characterAtIndex:v8];
    if (v12 == 66)
    {
      v13 = 99;
    }

    else
    {
      v13 = v12;
    }

    result = v11 == v13;
  }

  while (v11 == v13 && v9 != v8++);
  return result;
}

void encodeToObjectStream(WKRemoteObjectEncoder *a1, NSInvocation *a2)
{
  m_ptr = a1->_objectStream.m_ptr;
  if (!m_ptr)
  {
    v22.super.super.isa = 0;
    v22._rootDictionary.m_ptr = 0;
    API::Array::create(&v22, &v21);
    WTF::Vector<WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v22, v5);
    v6 = v21;
    if (v21)
    {
      CFRetain(v21[1]);
    }

    v7 = a1->_objectStream.m_ptr;
    a1->_objectStream.m_ptr = v6;
    if (v7)
    {
      CFRelease(*(v7 + 1));
    }

    v8 = a1->_rootDictionary.m_ptr;
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    isa = v22.super.super.isa;
    v21 = 0;
    v19 = v6;
    WTF::HashMap<WTF::String,WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineSet<WTF::String const&,WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>>(v8 + 2, &isa, &v19, &v22);
    v10 = v19;
    v19 = 0;
    if (v10)
    {
      CFRelease(*(v10 + 8));
    }

    v11 = isa;
    isa = 0;
    if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v11, v9);
    }

    m_ptr = a1->_objectStream.m_ptr;
  }

  CFRetain(*(m_ptr + 1));
  v12 = *(m_ptr + 7);
  if (v12 == *(m_ptr + 6))
  {
    v13 = v12 + (v12 >> 1);
    if (v13 <= v12 + 1)
    {
      v13 = v12 + 1;
    }

    if (v13 <= 0x10)
    {
      v14 = 16;
    }

    else
    {
      v14 = v13;
    }

    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(m_ptr + 16, v14);
    v15 = *(m_ptr + 7);
    v16 = (*(m_ptr + 2) + 8 * v15);
  }

  else
  {
    v16 = (*(m_ptr + 2) + 8 * v12);
    LODWORD(v15) = *(m_ptr + 7);
  }

  *v16 = 0;
  *(m_ptr + 7) = v15 + 1;
  createEncodedObject(&v22, a1, a2);
  if (*(m_ptr + 7) <= v12)
  {
    __break(0xC471u);
  }

  else
  {
    v17 = *(m_ptr + 2);
    v18 = *(v17 + 8 * v12);
    *(v17 + 8 * v12) = v22.super.super.isa;
    if (v18)
    {
      CFRelease(*(v18 + 8));
    }

    CFRelease(*(m_ptr + 1));
  }
}

void sub_19D98FD80(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11)
{
  if (a11)
  {
    if (atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a11, a2);
    }
  }

  CFRelease(*(v11 + 8));
  _Unwind_Resume(a1);
}

CFTypeRef **createEncodedObject(CFTypeRef **result, WKRemoteObjectEncoder *a2, NSInvocation *a3)
{
  v3 = result;
  v69 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    *result = 0;
    return result;
  }

  v6 = API::Object::newObject(0x18uLL, 9);
  v7 = API::Object::Object(v6);
  *v7 = &unk_1F110EAE0;
  *(v7 + 2) = 0;
  p_currentDictionary = &a2->_currentDictionary;
  v61[0] = &a2->_currentDictionary;
  m_ptr = a2->_currentDictionary.m_ptr;
  if (m_ptr)
  {
    CFRetain(*(m_ptr + 1));
    p_currentDictionary = v61[0];
  }

  v61[1] = m_ptr;
  CFRetain(v6[1]);
  isa = p_currentDictionary->isa;
  p_currentDictionary->isa = v6;
  if (isa)
  {
    CFRelease(*(isa + 1));
  }

  if (([(NSInvocation *)a3 conformsToProtocol:&unk_1F11B6ED8]& 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%@ does not conform to NSSecureCoding", a3}];
    }
  }

  Class = object_getClass(a3);
  if (class_isMetaClass(Class))
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"Class objects may not be encoded"];
  }

  v12 = [(NSInvocation *)a3 classForCoder];
  v13 = v12;
  if (v12)
  {
    v14 = v12;
  }

  else
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"-classForCoder returned nil for %@", a3}];
  }

  m_table = a2->_objectsBeingEncoded.m_impl.m_table;
  if (!m_table)
  {
LABEL_23:
    if (a3 == -1)
    {
      __break(0xC471u);
      JUMPOUT(0x19D99052CLL);
    }

    if (!m_table)
    {
      WTF::HashTable<NSObject *,NSObject *,WTF::IdentityExtractor,WTF::DefaultHash<NSObject *>,WTF::HashTraits<NSObject *>,WTF::HashTraits<NSObject *>,WTF::FastMalloc>::expand(&a2->_objectsBeingEncoded);
      m_table = a2->_objectsBeingEncoded.m_impl.m_table;
    }

    v26 = *(m_table - 2);
    v27 = (a3 + ~(a3 << 32)) ^ ((a3 + ~(a3 << 32)) >> 22);
    v28 = 9 * ((v27 + ~(v27 << 13)) ^ ((v27 + ~(v27 << 13)) >> 8));
    v29 = (v28 ^ (v28 >> 15)) + ~((v28 ^ (v28 >> 15)) << 27);
    v30 = v26 & ((v29 >> 31) ^ v29);
    v31 = (m_table + 8 * v30);
    v32 = *v31;
    if (*v31)
    {
      v54 = 0;
      v55 = 1;
      while (v32 != a3)
      {
        if (v32 == -1)
        {
          v54 = v31;
        }

        v30 = (v30 + v55) & v26;
        v31 = (m_table + 8 * v30);
        v32 = *v31;
        ++v55;
        if (!*v31)
        {
          if (v54)
          {
            *v54 = 0;
            --*(a2->_objectsBeingEncoded.m_impl.m_table - 4);
            v31 = v54;
          }

          goto LABEL_27;
        }
      }

      if (a2)
      {
        goto LABEL_31;
      }

      goto LABEL_32;
    }

LABEL_27:
    *v31 = a3;
    v33 = a2->_objectsBeingEncoded.m_impl.m_table;
    if (v33)
    {
      v34 = *(v33 - 3) + 1;
    }

    else
    {
      v34 = 1;
    }

    *(v33 - 3) = v34;
    v35 = (*(v33 - 4) + v34);
    v36 = *(v33 - 1);
    if (v36 > 0x400)
    {
      if (v36 > 2 * v35)
      {
        goto LABEL_31;
      }
    }

    else if (3 * v36 > 4 * v35)
    {
LABEL_31:
      v37 = a2;
LABEL_32:
      v38 = a3;
      v62[0] = a2;
      v62[1] = a3;
      v63 = 1;
      v39 = a2->_currentDictionary.m_ptr;
      CFRetain(*(v39 + 1));
      WTF::StringImpl::createWithoutCopyingNonEmpty();
      v67 = *buf;
      Name = class_getName(v13);
      WTF::String::String(&v64, Name);
      API::String::create(&v64, &v65);
      v41 = v65;
      v65 = 0;
      v66 = v41;
      WTF::HashMap<WTF::String,WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineSet<WTF::String const&,WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>>(v39 + 2, &v67, &v66, buf);
      v43 = v66;
      v66 = 0;
      if (v43)
      {
        CFRelease(*(v43 + 8));
      }

      v44 = v65;
      v65 = 0;
      if (v44)
      {
        CFRelease(*(v44 + 1));
      }

      v45 = v64;
      v64 = 0;
      if (v45 && atomic_fetch_add_explicit(v45, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v45, v42);
      }

      v46 = v67;
      v67 = 0;
      if (v46 && atomic_fetch_add_explicit(v46, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v46, v42);
      }

      CFRelease(*(v39 + 1));
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v56 = [(NSInvocation *)a3 methodSignature];
        v57 = v56;
        if (v56)
        {
          v58 = v56;
        }

        [(WKRemoteObjectEncoder *)a2 encodeObject:[(NSMethodSignature *)v57 _typeString] forKey:@"typeString"];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v59 = 1;
          [(WKRemoteObjectEncoder *)a2 encodeBool:1 forKey:@"isReplyBlock"];
        }

        else
        {
          [(WKRemoteObjectEncoder *)a2 encodeObject:NSStringFromSelector([(NSInvocation *)a3 selector]) forKey:@"selector"];
          v59 = 2;
        }

        encodeInvocationArguments(a2, a3, v59);
        if (v57)
        {
        }
      }

      else if (v13 == objc_opt_class() || v13 == objc_opt_class())
      {
        v47 = a2->_currentDictionary.m_ptr;
        CFRetain(*(v47 + 1));
        WTF::StringImpl::createWithoutCopyingNonEmpty();
        v67 = *buf;
        MEMORY[0x19EB02040](&v64, a3);
        API::String::create(&v64, &v65);
        v48 = v65;
        v65 = 0;
        v66 = v48;
        WTF::HashMap<WTF::String,WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineSet<WTF::String const&,WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>>(v47 + 2, &v67, &v66, buf);
        v50 = v66;
        v66 = 0;
        if (v50)
        {
          CFRelease(*(v50 + 8));
        }

        v51 = v65;
        v65 = 0;
        if (v51)
        {
          CFRelease(*(v51 + 1));
        }

        v52 = v64;
        v64 = 0;
        if (v52 && atomic_fetch_add_explicit(v52, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v52, v49);
        }

        v53 = v67;
        v67 = 0;
        if (v53 && atomic_fetch_add_explicit(v53, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v53, v49);
        }

        CFRelease(*(v47 + 1));
      }

      else if (v13 == objc_opt_class())
      {
        encodeError(a2, a3);
      }

      else
      {
        [(NSInvocation *)a3 encodeWithCoder:a2];
      }

      WTF::ScopeExit<encodeObject(WKRemoteObjectEncoder *,objc_object *)::$_0>::~ScopeExit(v62);
      goto LABEL_20;
    }

    WTF::HashTable<NSObject *,NSObject *,WTF::IdentityExtractor,WTF::DefaultHash<NSObject *>,WTF::HashTraits<NSObject *>,WTF::HashTraits<NSObject *>,WTF::FastMalloc>::expand(&a2->_objectsBeingEncoded);
    goto LABEL_31;
  }

  if (a3 == -1)
  {
    __break(0xC471u);
    JUMPOUT(0x19D9904ECLL);
  }

  v16 = *(m_table - 2);
  v17 = (a3 + ~(a3 << 32)) ^ ((a3 + ~(a3 << 32)) >> 22);
  v18 = 9 * ((v17 + ~(v17 << 13)) ^ ((v17 + ~(v17 << 13)) >> 8));
  v19 = (v18 ^ (v18 >> 15)) + ~((v18 ^ (v18 >> 15)) << 27);
  v20 = v16 & ((v19 >> 31) ^ v19);
  v21 = *(m_table + v20);
  if (v21 != a3)
  {
    v22 = 1;
    while (v21)
    {
      v20 = (v20 + v22) & v16;
      v21 = *(m_table + v20);
      ++v22;
      if (v21 == a3)
      {
        goto LABEL_17;
      }
    }

    goto LABEL_23;
  }

LABEL_17:
  v23 = qword_1ED6416C8;
  if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_FAULT))
  {
    v60 = object_getClass(a3);
    *buf = 136380675;
    *&buf[4] = class_getName(v60);
    _os_log_fault_impl(&dword_19D52D000, v23, OS_LOG_TYPE_FAULT, "WKRemoteObjectCode::encodeObject: Object of type '%{private}s' contains a cycle", buf, 0xCu);
  }

  v24 = MEMORY[0x1E695DF30];
  v25 = object_getClass(a3);
  [v24 raise:*MEMORY[0x1E695D940] format:{@"Object of type '%s' contains a cycle", class_getName(v25)}];
LABEL_20:
  if (v13)
  {
  }

  *v3 = v6;
  return WTF::SetForScope<WTF::RefPtr<API::Dictionary,WTF::RawPtrTraits<API::Dictionary>,WTF::DefaultRefDerefTraits<API::Dictionary>>>::~SetForScope(v61);
}

void sub_19D990550(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, WTF::StringImpl *a15, uint64_t a16, uint64_t a17, WTF::StringImpl *a18)
{
  if (v19)
  {
  }

  WTF::SetForScope<WTF::RefPtr<API::Dictionary,WTF::RawPtrTraits<API::Dictionary>,WTF::DefaultRefDerefTraits<API::Dictionary>>>::~SetForScope(&a10);
  CFRelease(*(v18 + 8));
  _Unwind_Resume(a1);
}

void sub_19D990794(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11)
{
  if (a11)
  {
    if (atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a11, a2);
    }
  }

  CFRelease(*(v11 + 8));
  _Unwind_Resume(a1);
}

void sub_19D9908E8(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11)
{
  if (a11)
  {
    if (atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a11, a2);
    }
  }

  CFRelease(*(v11 + 8));
  _Unwind_Resume(a1);
}

void sub_19D990A30(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11)
{
  if (a11)
  {
    if (atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a11, a2);
    }
  }

  CFRelease(*(v11 + 8));
  _Unwind_Resume(a1);
}

void sub_19D990B78(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11)
{
  if (a11)
  {
    if (atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a11, a2);
    }
  }

  CFRelease(*(v11 + 8));
  _Unwind_Resume(a1);
}

void sub_19D990CC4(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11)
{
  if (a11)
  {
    if (atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a11, a2);
    }
  }

  CFRelease(*(v11 + 8));
  _Unwind_Resume(a1);
}

void sub_19D990E1C(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11)
{
  if (a11)
  {
    if (atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a11, a2);
    }
  }

  CFRelease(*(v11 + 8));
  _Unwind_Resume(a1);
}

void sub_19D990F6C(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11)
{
  if (a11)
  {
    if (atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a11, a2);
    }
  }

  CFRelease(*(v11 + 8));
  _Unwind_Resume(a1);
}

void sub_19D991218(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
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

uint64_t *WTF::RefPtr<API::Dictionary const,WTF::RawPtrTraits<API::Dictionary const>,WTF::DefaultRefDerefTraits<API::Dictionary const>>::operator=(uint64_t *a1, uint64_t a2)
{
  if (a2)
  {
    CFRetain(*(a2 + 8));
  }

  v4 = *a1;
  *a1 = a2;
  if (v4)
  {
    CFRelease(*(v4 + 8));
  }

  return a1;
}

WTF *API::Dictionary::get<API::Array>(uint64_t a1, const WTF::StringImpl **a2, const WTF::StringImpl *a3)
{
  result = WTF::HashMap<WTF::String,WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::String,WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::String>>,WTF::String>((a1 + 16), a2, a3);
  if (result)
  {
    v4 = result;
    if ((*(*result + 16))(result) == 1)
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

void sub_19D991778(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (v11)
  {
  }

  if (a11)
  {
    WTF::fastFree((a11 - 16), a2);
  }

  _Unwind_Resume(exception_object);
}

void decodeObjectFromObjectStream(WKRemoteObjectDecoder *a1, uint64_t a2, void *a3)
{
  v4 = *(a2 + 40);
  if (!v4 || (v6 = *(a2 + 48), v6 == *(v4 + 28)))
  {
    a1->super.super.isa = 0;
  }

  else
  {
    *(a2 + 48) = v6 + 1;
    v8 = API::Array::at<API::Dictionary>(v4, v6);
    v9 = v8;
    if (v8)
    {
      CFRetain(*(v8 + 8));
    }

    decodeObject(a1, a2, v9, a3);
    if (v9)
    {
      v10 = *(v9 + 8);

      CFRelease(v10);
    }
  }
}

void sub_19D9918C0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    CFRelease(*(v1 + 8));
  }

  _Unwind_Resume(exception_object);
}

void sub_19D991A5C(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
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

void sub_19D991B94(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  CFRelease(*(v10 + 8));
  _Unwind_Resume(a1);
}

WTF *API::Dictionary::get<API::Boolean>(uint64_t a1, const WTF::StringImpl **a2, const WTF::StringImpl *a3)
{
  result = WTF::HashMap<WTF::String,WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::String,WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::String>>,WTF::String>((a1 + 16), a2, a3);
  if (result)
  {
    v4 = result;
    if ((*(*result + 16))(result) == 31)
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

void sub_19D991D0C(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  CFRelease(*(v10 + 8));
  _Unwind_Resume(a1);
}

WTF *API::Dictionary::get<API::UInt64>(uint64_t a1, const WTF::StringImpl **a2, const WTF::StringImpl *a3)
{
  result = WTF::HashMap<WTF::String,WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::String,WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::String>>,WTF::String>((a1 + 16), a2, a3);
  if (result)
  {
    v4 = result;
    if ((*(*result + 16))(result) == 33)
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

void sub_19D991E80(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  CFRelease(*(v10 + 8));
  _Unwind_Resume(a1);
}

void sub_19D991F98(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  CFRelease(*(v10 + 8));
  _Unwind_Resume(a1);
}

void sub_19D9920C4(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  CFRelease(*(v10 + 8));
  _Unwind_Resume(a1);
}

WTF *API::Dictionary::get<API::Double>(uint64_t a1, const WTF::StringImpl **a2, const WTF::StringImpl *a3)
{
  result = WTF::HashMap<WTF::String,WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::String,WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::String>>,WTF::String>((a1 + 16), a2, a3);
  if (result)
  {
    v4 = result;
    if ((*(*result + 16))(result) == 32)
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

void sub_19D992240(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  CFRelease(*(v10 + 8));
  _Unwind_Resume(a1);
}

void sub_19D9923C0(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  CFRelease(*(v10 + 8));
  _Unwind_Resume(a1);
}

void sub_19D992634(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  if ((v22 & 1) == 0)
  {
    CFRelease(*(v21 + 8));
  }

  if (a21)
  {
    WTF::fastFree((a21 - 16), a2);
  }

  _Unwind_Resume(exception_object);
}

WKRemoteObjectDecoder *decodeObject(WKRemoteObjectDecoder *result, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = result;
  v9 = a3;
  if (a3)
  {
    WTF::SetForScope<WTF::RefPtr<API::Dictionary const,WTF::RawPtrTraits<API::Dictionary const>,WTF::DefaultRefDerefTraits<API::Dictionary const>>>::SetForScope<API::Dictionary const*&>(v8, (a2 + 24), &v9);
    if (*a4 && *(*a4 - 12))
    {
      v7 = *(a2 + 56);
      *(a2 + 56) = a4;
      decodeObject(v4, a2);
      *(a2 + 56) = v7;
    }

    else
    {
      decodeObject(v4, a2);
    }

    return WTF::SetForScope<WTF::RefPtr<API::Dictionary,WTF::RawPtrTraits<API::Dictionary>,WTF::DefaultRefDerefTraits<API::Dictionary>>>::~SetForScope(v8);
  }

  else
  {
    result->super.super.isa = 0;
  }

  return result;
}

void sub_19D992760(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  WTF::SetForScope<WTF::RefPtr<API::Dictionary,WTF::RawPtrTraits<API::Dictionary>,WTF::DefaultRefDerefTraits<API::Dictionary>>>::~SetForScope(va);
  _Unwind_Resume(a1);
}

void sub_19D99285C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
  }

  _Unwind_Resume(exception_object);
}

void sub_19D992C9C(_Unwind_Exception *exception_object, WTF::StringImpl *a2)
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

WTF::StringImpl *URLFromString(atomic_uint *a1)
{
  v1 = a1;
  if (a1)
  {
    if (a1[1])
    {
      v2 = MEMORY[0x1E695DFF8];
      atomic_fetch_add_explicit(a1, 2u, memory_order_relaxed);
      MEMORY[0x19EB00B70](&v6, a1);
      if (atomic_fetch_add_explicit(v1, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v1, v3);
      }

      v1 = [v2 URLWithString:v6];
      v4 = v6;
      v6 = 0;
      if (v4)
      {
      }
    }

    else
    {
      return 0;
    }
  }

  return v1;
}

void sub_19D992D58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void sub_19D992DEC(_Unwind_Exception *exception_object, WTF::StringImpl *a2)
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