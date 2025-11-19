uint64_t WTF::VectorMover<false,WebCore::IDBValue>::move(uint64_t result, _DWORD *a2, uint64_t a3)
{
  if (result != a2)
  {
    v5 = result;
    v6 = 0;
    do
    {
      v7 = *(v5 + v6);
      *(v5 + v6) = 0;
      v8 = (v5 + v6 + 8);
      v9 = (a3 + v6);
      *v9 = v7;
      v9[2] = 0;
      *(a3 + v6 + 8) = 0;
      WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt(a3 + v6 + 8, v8);
      v9[3] = 0;
      v9[4] = 0;
      WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt(a3 + v6 + 24, (v5 + v6 + 24));
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v5 + v6 + 24, v10);
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v8, v11);
      result = *(v5 + v6);
      *(v5 + v6) = 0;
      if (result)
      {
        result = WTF::ThreadSafeRefCounted<WebCore::ThreadSafeDataBufferImpl,(WTF::DestructionThread)0>::deref(result, v12);
      }

      v6 += 40;
    }

    while (v8 + 8 != a2);
  }

  return result;
}

void sub_19D803D34(_Unwind_Exception *exception_object, void *a2)
{
  v6 = *(v3 + 8);
  if (v6)
  {
    *(v3 + 8) = 0;
    *(v2 + v4 + 16) = 0;
    WTF::fastFree(v6, a2);
  }

  v7 = *(v2 + v4);
  *(v2 + v4) = 0;
  if (v7)
  {
    WTF::ThreadSafeRefCounted<WebCore::ThreadSafeDataBufferImpl,(WTF::DestructionThread)0>::deref(v7, a2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t IPC::ArgumentCoder<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::IDBObjectStoreIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::IDBObjectStoreInfo,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::IDBObjectStoreIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::IDBObjectStoreIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WebCore::IDBObjectStoreInfo>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,void>::encode<IPC::Encoder,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::IDBObjectStoreIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::IDBObjectStoreInfo,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::IDBObjectStoreIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::IDBObjectStoreIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WebCore::IDBObjectStoreInfo>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc> const&>(IPC::Encoder *a1, uint64_t **a2)
{
  if (*a2)
  {
    v4 = *(*a2 - 3);
  }

  else
  {
    v4 = 0;
  }

  result = IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, v4);
  v6 = *a2;
  if (*a2)
  {
    v7 = *(v6 - 1);
    v8 = &v6[9 * v7];
    if (*(v6 - 3))
    {
      if (v7)
      {
        v9 = 72 * v7;
        v10 = v6;
        while ((*v10 + 1) <= 1)
        {
          v10 += 9;
          v9 -= 72;
          if (!v9)
          {
            v10 = v8;
            break;
          }
        }

        if (!v6)
        {
          goto LABEL_15;
        }
      }

      else
      {
        v10 = v6;
      }

      goto LABEL_17;
    }
  }

  else
  {
    v8 = 0;
    LODWORD(v7) = 0;
  }

  v10 = v8;
  v8 = &v6[9 * v7];
  if (!v6)
  {
LABEL_15:
    v11 = 0;
    goto LABEL_18;
  }

LABEL_17:
  v11 = &v6[9 * *(v6 - 1)];
LABEL_18:
  while (v10 != v11)
  {
    IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *v10);
    result = IPC::ArgumentCoder<WebCore::IDBObjectStoreInfo,void>::encode(a1, (v10 + 1));
    for (v10 += 9; v10 != v8; v10 += 9)
    {
      if ((*v10 + 1) > 1)
      {
        break;
      }
    }
  }

  return result;
}

uint64_t WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::IDBObjectStoreIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::IDBObjectStoreIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::IDBObjectStoreInfo>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::IDBObjectStoreIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::IDBObjectStoreInfo>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::IDBObjectStoreIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::IDBObjectStoreIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::IDBObjectStoreInfo,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::IDBObjectStoreIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::IDBObjectStoreIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WebCore::IDBObjectStoreInfo>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::IDBObjectStoreIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(uint64_t *a1)
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
  result = WTF::fastMalloc((72 * v5 + 16));
  v8 = result;
  v9 = result + 16;
  if (v5)
  {
    v10 = v5;
    v11 = result + 24;
    do
    {
      *(v11 - 8) = 0;
      result = WTF::HashTraits<WebCore::IDBObjectStoreInfo>::emptyValue();
      v11 += 72;
      --v10;
    }

    while (v10);
  }

  *a1 = v9;
  v8[2] = v5 - 1;
  v8[3] = v5;
  *v8 = 0;
  v8[1] = v4;
  if (v3)
  {
    v12 = 0;
    v13 = v3;
    while (1)
    {
      v14 = (v2 + 72 * v12);
      v15 = *v14;
      if (*v14 != -1)
      {
        if (v15)
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

          v20 = (v15 + ~(v15 << 32)) ^ ((v15 + ~(v15 << 32)) >> 22);
          v21 = 9 * ((v20 + ~(v20 << 13)) ^ ((v20 + ~(v20 << 13)) >> 8));
          v22 = (v21 ^ (v21 >> 15)) + ~((v21 ^ (v21 >> 15)) << 27);
          v23 = v19 & ((v22 >> 31) ^ v22);
          v24 = 1;
          do
          {
            v25 = v18 + 72 * v23;
            v23 = (v23 + v24++) & v19;
          }

          while (*v25);
          v26 = *(v25 + 64);
          if (v26)
          {
            WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::IDBIndexIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::IDBIndexIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::IDBIndexInfo>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::IDBIndexIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::IDBIndexInfo>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::IDBIndexIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::IDBIndexIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::IDBIndexInfo,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::IDBIndexIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::IDBIndexIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WebCore::IDBIndexInfo>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::IDBIndexIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::deallocateTable(v26, v7);
          }

          if (*(v25 + 48) == 1)
          {
            mpark::detail::move_constructor<mpark::detail::traits<WTF::String,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,(mpark::detail::Trait)1>::~move_constructor(v25 + 24, v7);
          }

          v27 = *(v25 + 16);
          *(v25 + 16) = 0;
          if (v27 && atomic_fetch_add_explicit(v27, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v27, v7);
          }

          *v25 = *v14;
          *(v25 + 8) = v14[1];
          v28 = v14[2];
          v14[2] = 0;
          *(v25 + 16) = v28;
          std::__optional_move_base<mpark::variant<WTF::String,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,false>::__optional_move_base[abi:sn200100]((v25 + 24), (v14 + 3));
          *(v25 + 56) = *(v14 + 56);
          *(v25 + 64) = 0;
          v29 = v14[8];
          v14[8] = 0;
          *(v25 + 64) = v29;
          v30 = v14[8];
          if (v30)
          {
            WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::IDBIndexIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::IDBIndexIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::IDBIndexInfo>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::IDBIndexIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::IDBIndexInfo>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::IDBIndexIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::IDBIndexIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::IDBIndexInfo,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::IDBIndexIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::IDBIndexIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WebCore::IDBIndexInfo>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::IDBIndexIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::deallocateTable(v30, v7);
          }

          if (*(v14 + 48) == 1)
          {
            mpark::detail::move_constructor<mpark::detail::traits<WTF::String,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,(mpark::detail::Trait)1>::~move_constructor((v14 + 3), v7);
          }

          v17 = v14[2];
          v14[2] = 0;
          if (!v17 || atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) != 2)
          {
            goto LABEL_39;
          }
        }

        else
        {
          v16 = v14[8];
          if (v16)
          {
            WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::IDBIndexIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::IDBIndexIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::IDBIndexInfo>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::IDBIndexIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::IDBIndexInfo>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::IDBIndexIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::IDBIndexIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::IDBIndexInfo,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::IDBIndexIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::IDBIndexIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WebCore::IDBIndexInfo>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::IDBIndexIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::deallocateTable(v16, v7);
          }

          if (*(v14 + 48) == 1)
          {
            mpark::detail::move_constructor<mpark::detail::traits<WTF::String,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,(mpark::detail::Trait)1>::~move_constructor((v14 + 3), v7);
          }

          v17 = v14[2];
          v14[2] = 0;
          if (!v17 || atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) != 2)
          {
            goto LABEL_39;
          }
        }

        WTF::StringImpl::destroy(v17, v7);
      }

LABEL_39:
      if (++v12 == v13)
      {
        goto LABEL_42;
      }
    }
  }

  if (v2)
  {
LABEL_42:

    return WTF::fastFree((v2 - 16), v7);
  }

  return result;
}

void sub_19D804160(_Unwind_Exception *exception_object, WTF::StringImpl *a2)
{
  v4 = *(v2 + 16);
  *(v2 + 16) = 0;
  if (v4)
  {
    if (atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v4, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_19D804218(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, char a13)
{
  if (a9)
  {
    WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::IDBIndexIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::IDBIndexIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::IDBIndexInfo>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::IDBIndexIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::IDBIndexInfo>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::IDBIndexIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::IDBIndexIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::IDBIndexInfo,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::IDBIndexIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::IDBIndexIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WebCore::IDBIndexInfo>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::IDBIndexIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::deallocateTable(a9, a2);
  }

  if (a13 == 1)
  {
    mpark::detail::move_constructor<mpark::detail::traits<WTF::String,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,(mpark::detail::Trait)1>::~move_constructor(&a10, a2);
  }

  v15 = *(v13 - 24);
  *(v13 - 24) = 0;
  if (v15)
  {
    if (atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v15, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t mpark::variant<WTF::String,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>::operator=(uint64_t a1, unsigned __int8 *a2)
{
  v4 = *(a1 + 16);
  v5 = a2[16];
  if (v4 != 255 || v5 != 255)
  {
    if (v5 == 255)
    {
      if (v4 != 255)
      {
        if (*(a1 + 16))
        {
          WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(a1, a2);
        }

        else
        {
          v12 = *a1;
          *a1 = 0;
          if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v12, a2);
          }
        }
      }

      v6 = -1;
LABEL_21:
      *(a1 + 16) = v6;
      return a1;
    }

    if (a2[16])
    {
      if (v4 != 1)
      {
        if (v4 != 255)
        {
          if (*(a1 + 16))
          {
            WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(a1, a2);
          }

          else
          {
            v13 = *a1;
            *a1 = 0;
            if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v13, a2);
            }
          }
        }

        *(a1 + 16) = -1;
        mpark::detail::constructor<mpark::detail::traits<WTF::String,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>::construct_alt<1ul,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(a1, a2);
        v6 = 1;
        goto LABEL_21;
      }

      v7 = *(a1 + 12);
      if (v7)
      {
        WTF::VectorDestructor<true,WTF::String>::destruct(*a1, (*a1 + 8 * v7));
      }

      WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt(a1, a2);
    }

    else if (*(a1 + 16))
    {
      if (v4 != 255)
      {
        WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(a1, a2);
      }

      v11 = *a2;
      *a2 = 0;
      *a1 = v11;
      *(a1 + 16) = 0;
    }

    else
    {
      v8 = *a2;
      *a2 = 0;
      v9 = *a1;
      *a1 = v8;
      if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v9, a2);
      }
    }
  }

  return a1;
}

uint64_t IPC::ArgumentCoder<std::unique_ptr<WebCore::IDBDatabaseInfo>,void>::encode<IPC::Encoder,std::unique_ptr<WebCore::IDBDatabaseInfo> const&>(IPC::Encoder *a1, uint64_t *a2)
{
  if (*a2)
  {
    v6 = 1;
    v3 = IPC::Encoder::operator<<<BOOL>(a1, &v6);
    return IPC::ArgumentCoder<WebCore::IDBDatabaseInfo,void>::encode(v3, *a2);
  }

  else
  {
    v5 = 0;
    return IPC::Encoder::operator<<<BOOL>(a1, &v5);
  }
}

mpark *IPC::ArgumentCoder<mpark::variant<WTF::String,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,void>::encode<IPC::Encoder,mpark::variant<WTF::String,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>> const&>(mpark *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {

    return IPC::ArgumentCoder<mpark::variant<WTF::String,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,void>::encode<IPC::Encoder,mpark::variant<WTF::String,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>> const&,0ul>(a1, a2, a3);
  }

  else
  {
    if (*(a2 + 16))
    {
      mpark::throw_bad_variant_access(a1);
    }

    return IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, a2);
  }
}

mpark *IPC::ArgumentCoder<mpark::variant<WTF::String,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,void>::encode<IPC::Encoder,mpark::variant<WTF::String,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>> const&,0ul>(mpark *result, uint64_t a2, uint64_t a3)
{
  if (a3 == 1)
  {
    if (*(a2 + 16) != 1)
    {
      mpark::throw_bad_variant_access(result);
    }

    return IPC::VectorArgumentCoder<false,WTF::String,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(result, a2);
  }

  return result;
}

IPC::Decoder *IPC::ArgumentCoder<mpark::variant<WTF::String,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,void>::decode<IPC::Decoder>@<X0>(IPC::Decoder *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 2);
  if (*(result + 1) <= &v2[-*result])
  {
    v4 = result;
    v5 = a2;
    IPC::Decoder::markInvalid(result);
    result = v4;
    a2 = v5;
    goto LABEL_8;
  }

  *(result + 2) = v2 + 1;
  if (!v2)
  {
LABEL_8:
    v6 = a2;
    result = IPC::Decoder::markInvalid(result);
    a2 = v6;
    goto LABEL_9;
  }

  v3 = *v2;
  if (v3 >= 2)
  {
LABEL_9:
    *a2 = 0;
    *(a2 + 24) = 0;
    return result;
  }

  return IPC::ArgumentCoder<mpark::variant<WTF::String,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,void>::decode<IPC::Decoder>(result, v3, a2);
}

IPC::Decoder *IPC::ArgumentCoder<mpark::variant<WTF::String,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,void>::decode<IPC::Decoder>@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (a2)
  {

    return IPC::ArgumentCoder<mpark::variant<WTF::String,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,void>::decode<IPC::Decoder,0ul>(a1, a2, a3);
  }

  else
  {
    v12 = v3;
    v13 = v4;
    result = IPC::Decoder::decode<WTF::String>(a1, &v10);
    if (v11 == 1)
    {
      v6 = a3;
      *a3 = v10;
      v7 = a3 + 2;
      v8 = 1;
    }

    else
    {
      v8 = 0;
      v6 = a3;
      v7 = a3;
    }

    *v7 = 0;
    *(v6 + 24) = v8;
  }

  return result;
}

IPC::Decoder *IPC::ArgumentCoder<mpark::variant<WTF::String,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,void>::decode<IPC::Decoder,0ul>@<X0>(IPC::Decoder *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (a2 == 1)
  {
    result = IPC::Decoder::decode<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(result, &v7);
    if (v9)
    {
      *a3 = v7;
      v5 = v8;
      v7 = 0;
      v8 = 0;
      *(a3 + 8) = v5;
      v6 = 1;
      *(a3 + 16) = 1;
      result = WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v7, v4);
    }

    else
    {
      v6 = 0;
      *a3 = 0;
    }

    *(a3 + 24) = v6;
  }

  else
  {
    *a3 = 0;
    *(a3 + 24) = 0;
  }

  return result;
}

uint64_t IPC::ArgumentCoder<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::IDBIndexIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::IDBIndexInfo,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::IDBIndexIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::IDBIndexIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WebCore::IDBIndexInfo>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,void>::encode<IPC::Encoder,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::IDBIndexIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::IDBIndexInfo,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::IDBIndexIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::IDBIndexIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WebCore::IDBIndexInfo>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc> const&>(IPC::Encoder *a1, void **a2)
{
  if (*a2)
  {
    v4 = *(*a2 - 3);
  }

  else
  {
    v4 = 0;
  }

  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, v4);
  result = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::IDBIndexIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::IDBIndexIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::IDBIndexInfo>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::IDBIndexIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::IDBIndexInfo>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::IDBIndexIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::IDBIndexIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::IDBIndexInfo,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::IDBIndexIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::IDBIndexIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WebCore::IDBIndexInfo>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::IDBIndexIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::begin(a2);
  v6 = result;
  v8 = v7;
  if (*a2)
  {
    v9 = &(*a2)[8 * *(*a2 - 1)];
  }

  else
  {
    v9 = 0;
  }

  if (v9 != result)
  {
    do
    {
      IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *v6);
      result = IPC::ArgumentCoder<WebCore::IDBIndexInfo,void>::encode(a1, (v6 + 1));
      for (v6 += 8; v6 != v8; v6 += 8)
      {
        if ((*v6 + 1) > 1)
        {
          break;
        }
      }
    }

    while (v6 != v9);
  }

  return result;
}

void *WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::IDBIndexIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::IDBIndexIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::IDBIndexInfo>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::IDBIndexIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::IDBIndexInfo>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::IDBIndexIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::IDBIndexIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::IDBIndexInfo,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::IDBIndexIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::IDBIndexIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WebCore::IDBIndexInfo>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::IDBIndexIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::begin(void **a1)
{
  result = *a1;
  if (!result)
  {
    return 0;
  }

  v2 = *(result - 1);
  v3 = &result[8 * v2];
  if (!*(result - 3))
  {
    return &result[8 * v2];
  }

  if (v2)
  {
    v4 = v2 << 6;
    while ((*result + 1) <= 1)
    {
      result += 8;
      v4 -= 64;
      if (!v4)
      {
        return v3;
      }
    }
  }

  return result;
}

WTF::StringImpl *IPC::Decoder::decode<WebCore::IDBIndexInfo>@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = IPC::ArgumentCoder<WebCore::IDBIndexInfo,void>::decode(a1, a2);
  if ((*(a2 + 56) & 1) == 0)
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

void sub_19D8047A0(_Unwind_Exception *exception_object, void *a2)
{
  if (*(v2 + 56) == 1)
  {
    mpark::detail::move_constructor<mpark::detail::traits<WTF::String,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,(mpark::detail::Trait)1>::~move_constructor(v2 + 24, a2);
    v5 = *(v2 + 16);
    *(v2 + 16) = 0;
    if (v5)
    {
      if (atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v5, v4);
      }
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::IDBIndexIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::IDBIndexIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::IDBIndexInfo>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::IDBIndexIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::IDBIndexInfo>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::IDBIndexIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::IDBIndexIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::IDBIndexInfo,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::IDBIndexIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::IDBIndexIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WebCore::IDBIndexInfo>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::IDBIndexIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(uint64_t *a1)
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
  v6 = v5;
  result = WTF::fastMalloc(((v5 << 6) | 0x10));
  v9 = result;
  v10 = result + 16;
  if (v5)
  {
    v11 = result + 24;
    do
    {
      *(v11 - 8) = 0;
      result = WTF::HashTraits<WebCore::IDBIndexInfo>::emptyValue();
      v11 += 64;
      --v6;
    }

    while (v6);
  }

  *a1 = v10;
  v9[2] = v5 - 1;
  v9[3] = v5;
  *v9 = 0;
  v9[1] = v4;
  if (v3)
  {
    v12 = 0;
    while (1)
    {
      v13 = (v2 + (v12 << 6));
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
            v24 = *(v16 + (v21 << 6));
            v21 = (v21 + v22++) & v17;
          }

          while (v24);
          v25 = v16 + (v23 << 6);
          mpark::detail::move_constructor<mpark::detail::traits<WTF::String,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,(mpark::detail::Trait)1>::~move_constructor(v25 + 32, v8);
          v27 = *(v25 + 24);
          *(v25 + 24) = 0;
          if (v27 && atomic_fetch_add_explicit(v27, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v27, v26);
          }

          *v25 = *v13;
          *(v25 + 8) = *(v13 + 1);
          v28 = v13[3];
          v13[3] = 0;
          *(v25 + 24) = v28;
          mpark::detail::move_constructor<mpark::detail::traits<WTF::String,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,(mpark::detail::Trait)1>::move_constructor(v25 + 32, v13 + 4);
          *(v25 + 56) = *(v13 + 28);
          mpark::detail::move_constructor<mpark::detail::traits<WTF::String,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,(mpark::detail::Trait)1>::~move_constructor((v13 + 4), v29);
          v15 = v13[3];
          v13[3] = 0;
          if (!v15 || atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) != 2)
          {
            goto LABEL_27;
          }
        }

        else
        {
          mpark::detail::move_constructor<mpark::detail::traits<WTF::String,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,(mpark::detail::Trait)1>::~move_constructor((v13 + 4), v8);
          v15 = v13[3];
          v13[3] = 0;
          if (!v15 || atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) != 2)
          {
            goto LABEL_27;
          }
        }

        WTF::StringImpl::destroy(v15, v8);
      }

LABEL_27:
      if (++v12 == v3)
      {
        goto LABEL_30;
      }
    }
  }

  if (v2)
  {
LABEL_30:

    return WTF::fastFree((v2 - 16), v8);
  }

  return result;
}

void sub_19D804A2C(_Unwind_Exception *exception_object, WTF::StringImpl *a2)
{
  v4 = *(v2 + 24);
  *(v2 + 24) = 0;
  if (v4)
  {
    if (atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v4, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

WTF::StringImpl *WTF::HashTraits<WebCore::IDBIndexInfo>::emptyValue()
{
  v5 = 0;
  v3 = 0;
  v4 = 0;
  WebCore::IDBIndexInfo::IDBIndexInfo();
  mpark::detail::move_constructor<mpark::detail::traits<WTF::String,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,(mpark::detail::Trait)1>::~move_constructor(&v3, v0);
  result = v5;
  v5 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v1);
    }
  }

  return result;
}

void sub_19D804ACC(_Unwind_Exception *a1, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, WTF::StringImpl *a12)
{
  mpark::detail::move_constructor<mpark::detail::traits<WTF::String,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,(mpark::detail::Trait)1>::~move_constructor(&a9, a2);
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

uint64_t IPC::ArgumentCoder<WTF::Markable<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::MarkableTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,void>::encode<IPC::Encoder,WTF::Markable<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::MarkableTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>> const&>(IPC::Encoder *a1, uint64_t *a2)
{
  v4 = *a2;
  result = IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *a2 == 0);
  if (v4)
  {
    v6 = *a2;
    if (*a2)
    {

      return IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, v6);
    }

    else
    {
      result = 157;
      __break(0xC471u);
    }
  }

  return result;
}

uint64_t IPC::ArgumentCoder<WTF::Markable<WTF::ObjectIdentifierGeneric<WebCore::IDBResourceObjectIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::MarkableTraits<WTF::ObjectIdentifierGeneric<WebCore::IDBResourceObjectIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,void>::encode<IPC::Encoder,WTF::Markable<WTF::ObjectIdentifierGeneric<WebCore::IDBResourceObjectIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::MarkableTraits<WTF::ObjectIdentifierGeneric<WebCore::IDBResourceObjectIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>> const&>(IPC::Encoder *a1, uint64_t *a2)
{
  v4 = *a2;
  result = IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *a2 == 0);
  if (v4)
  {
    v6 = *a2;
    if (*a2)
    {

      return IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, v6);
    }

    else
    {
      result = 157;
      __break(0xC471u);
    }
  }

  return result;
}

unint64_t IPC::ArgumentCoder<WTF::Markable<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::MarkableTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,void>::decode<IPC::Decoder>(uint64_t *a1)
{
  v1 = a1[1];
  v2 = a1[2];
  v3 = *a1;
  if (v1 <= &v2[-*a1])
  {
    *a1 = 0;
    a1[1] = 0;
    v13 = a1;
    v10 = a1[3];
    if (v10)
    {
      if (v1)
      {
        (*(*v10 + 16))(v10);
        v3 = *v13;
        v1 = v13[1];
LABEL_12:
        *v13 = 0;
        v13[1] = 0;
        v11 = v13[3];
        if (v11)
        {
          if (v1)
          {
            (*(*v11 + 16))(v11, v3);
            v3 = *v13;
            v1 = v13[1];
            goto LABEL_16;
          }
        }

        else
        {
          v1 = 0;
        }

        v3 = 0;
        goto LABEL_16;
      }
    }

    else
    {
      v1 = 0;
    }

    v3 = 0;
    goto LABEL_12;
  }

  a1[2] = (v2 + 1);
  if (!v2)
  {
    v13 = a1;
    goto LABEL_12;
  }

  v4 = *v2;
  if (v4 < 2)
  {
    if (v4)
    {
      v5 = 0;
      v6 = 0;
    }

    else
    {
      v7 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a1);
      v6 = v7 & 0xFFFFFFFFFFFFFF00;
      v5 = v7;
      if ((v8 & 1) == 0)
      {
        v5 = 0;
        v6 = 0;
      }
    }

    return v6 | v5;
  }

  v13 = a1;
LABEL_16:
  *v13 = 0;
  v13[1] = 0;
  v12 = v13[3];
  if (v12 && v1)
  {
    (*(*v12 + 16))(v12, v3);
  }

  v5 = 0;
  v6 = 0;
  return v6 | v5;
}

unint64_t IPC::ArgumentCoder<WTF::Markable<WTF::ObjectIdentifierGeneric<WebCore::IDBResourceObjectIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::MarkableTraits<WTF::ObjectIdentifierGeneric<WebCore::IDBResourceObjectIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,void>::decode<IPC::Decoder>(uint64_t *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = *a1;
  if (v2 <= &v3[-*a1])
  {
    *a1 = 0;
    a1[1] = 0;
    v11 = a1[3];
    if (v11)
    {
      if (v2)
      {
        (*(*v11 + 16))(v11);
        v2 = a1[1];
      }
    }

    else
    {
      v2 = 0;
    }
  }

  else
  {
    a1[2] = (v3 + 1);
    if (v3)
    {
      v5 = *v3;
      if (v5 >= 2)
      {
        goto LABEL_17;
      }

      if (v5)
      {
        v6 = 0;
        v7 = 0;
        return v7 | v6;
      }

      v8 = IPC::ArgumentCoder<WTF::ObjectIdentifierGeneric<WebCore::BackgroundFetchRecordIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,void>::decode(a1);
      if (v9)
      {
        v7 = v8 & 0xFFFFFFFFFFFFFF00;
        v6 = v8;
        return v7 | v6;
      }

      goto LABEL_16;
    }
  }

  *a1 = 0;
  a1[1] = 0;
  v12 = a1[3];
  if (!v12)
  {
    v2 = 0;
LABEL_13:
    v4 = 0;
    goto LABEL_17;
  }

  if (!v2)
  {
    goto LABEL_13;
  }

  (*(*v12 + 16))(v12);
LABEL_16:
  v4 = *a1;
  v2 = a1[1];
LABEL_17:
  *a1 = 0;
  a1[1] = 0;
  v13 = a1[3];
  if (v13 && v2)
  {
    (*(*v13 + 16))(v13, v4);
  }

  v6 = 0;
  v7 = 0;
  return v7 | v6;
}

uint64_t IPC::ArgumentCoder<std::optional<WebCore::IDBResourceIdentifier>,void>::encode<IPC::Encoder,std::optional<WebCore::IDBResourceIdentifier> const&>(IPC::Encoder *a1, uint64_t a2)
{
  if (*(a2 + 16))
  {
    v6 = 1;
    IPC::Encoder::operator<<<BOOL>(a1, &v6);
    if (*(a2 + 16))
    {
      IPC::ArgumentCoder<WTF::Markable<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::MarkableTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,void>::encode<IPC::Encoder,WTF::Markable<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::MarkableTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>> const&>(a1, a2);
      return IPC::ArgumentCoder<WTF::Markable<WTF::ObjectIdentifierGeneric<WebCore::IDBResourceObjectIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::MarkableTraits<WTF::ObjectIdentifierGeneric<WebCore::IDBResourceObjectIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,void>::encode<IPC::Encoder,WTF::Markable<WTF::ObjectIdentifierGeneric<WebCore::IDBResourceObjectIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::MarkableTraits<WTF::ObjectIdentifierGeneric<WebCore::IDBResourceObjectIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>> const&>(a1, (a2 + 8));
    }

    else
    {
      v5 = std::__throw_bad_optional_access[abi:sn200100]();
      return IPC::ArgumentCoder<WTF::Markable<WTF::ObjectIdentifierGeneric<WebCore::IDBObjectStoreIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::MarkableTraits<WTF::ObjectIdentifierGeneric<WebCore::IDBObjectStoreIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,void>::encode<IPC::Encoder,WTF::Markable<WTF::ObjectIdentifierGeneric<WebCore::IDBObjectStoreIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::MarkableTraits<WTF::ObjectIdentifierGeneric<WebCore::IDBObjectStoreIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>> const&>(v5);
    }
  }

  else
  {
    v7 = 0;
    return IPC::Encoder::operator<<<BOOL>(a1, &v7);
  }
}

uint64_t IPC::ArgumentCoder<WTF::Markable<WTF::ObjectIdentifierGeneric<WebCore::IDBObjectStoreIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::MarkableTraits<WTF::ObjectIdentifierGeneric<WebCore::IDBObjectStoreIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,void>::encode<IPC::Encoder,WTF::Markable<WTF::ObjectIdentifierGeneric<WebCore::IDBObjectStoreIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::MarkableTraits<WTF::ObjectIdentifierGeneric<WebCore::IDBObjectStoreIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>> const&>(IPC::Encoder *a1, uint64_t *a2)
{
  v4 = *a2;
  result = IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *a2 == 0);
  if (v4)
  {
    v6 = *a2;
    if (*a2)
    {

      return IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, v6);
    }

    else
    {
      result = 157;
      __break(0xC471u);
    }
  }

  return result;
}

uint64_t IPC::ArgumentCoder<WTF::Markable<WTF::ObjectIdentifierGeneric<WebCore::IDBIndexIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::MarkableTraits<WTF::ObjectIdentifierGeneric<WebCore::IDBIndexIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,void>::encode<IPC::Encoder,WTF::Markable<WTF::ObjectIdentifierGeneric<WebCore::IDBIndexIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::MarkableTraits<WTF::ObjectIdentifierGeneric<WebCore::IDBIndexIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>> const&>(IPC::Encoder *a1, uint64_t *a2)
{
  v4 = *a2;
  result = IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *a2 == 0);
  if (v4)
  {
    v6 = *a2;
    if (*a2)
    {

      return IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, v6);
    }

    else
    {
      result = 157;
      __break(0xC471u);
    }
  }

  return result;
}

uint64_t *IPC::ArgumentCoder<std::optional<WebCore::IDBResourceIdentifier>,void>::decode<IPC::Decoder>@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = result[1];
  v4 = result[2];
  v5 = *result;
  if (v3 <= &v4[-*result])
  {
    *result = 0;
    result[1] = 0;
    v10 = result;
    v8 = result[3];
    if (v8)
    {
      if (v3)
      {
        (*(*v8 + 16))(v8);
        v5 = *v10;
        v3 = v10[1];
LABEL_14:
        *v10 = 0;
        v10[1] = 0;
        v9 = v10[3];
        if (v9)
        {
          if (v3)
          {
            (*(*v9 + 16))(v9, v5);
            v5 = *v10;
            v3 = v10[1];
            goto LABEL_18;
          }
        }

        else
        {
          v3 = 0;
        }

        v5 = 0;
        goto LABEL_18;
      }
    }

    else
    {
      v3 = 0;
    }

    v5 = 0;
    goto LABEL_14;
  }

  result[2] = (v4 + 1);
  if (!v4)
  {
    v10 = result;
    goto LABEL_14;
  }

  v6 = *v4;
  if (v6 < 2)
  {
    if (v6)
    {
      result = IPC::Decoder::decode<WebCore::IDBResourceIdentifier>(result, &v11);
      if (v12)
      {
        *a2 = v11;
        v7 = 1;
        *(a2 + 16) = 1;
      }

      else
      {
        v7 = 0;
        *a2 = 0;
      }
    }

    else
    {
      *a2 = 0;
      *(a2 + 16) = 0;
      v7 = 1;
    }

    *(a2 + 24) = v7;
    return result;
  }

  v10 = result;
LABEL_18:
  *v10 = 0;
  v10[1] = 0;
  result = v10[3];
  if (result && v3)
  {
    result = (*(*result + 16))(result, v5);
  }

  *a2 = 0;
  *(a2 + 24) = 0;
  return result;
}

uint64_t IPC::ArgumentCoder<std::unique_ptr<WebCore::IDBTransactionInfo>,void>::encode<IPC::Encoder,std::unique_ptr<WebCore::IDBTransactionInfo> const&>(IPC::Encoder *a1, uint64_t *a2)
{
  if (*a2)
  {
    v6 = 1;
    v3 = IPC::Encoder::operator<<<BOOL>(a1, &v6);
    return IPC::ArgumentCoder<WebCore::IDBTransactionInfo,void>::encode(v3, *a2);
  }

  else
  {
    v5 = 0;
    return IPC::Encoder::operator<<<BOOL>(a1, &v5);
  }
}

IPC::Encoder *IPC::ArgumentCoder<std::unique_ptr<WebCore::IDBKeyData>,void>::encode<IPC::Encoder,std::unique_ptr<WebCore::IDBKeyData> const&>(IPC::Encoder *a1, uint64_t *a2)
{
  if (*a2)
  {
    v6 = 1;
    v3 = IPC::Encoder::operator<<<BOOL>(a1, &v6);
    return IPC::ArgumentCoder<WebCore::IDBKeyData,void>::encode(v3, *a2);
  }

  else
  {
    v5 = 0;
    return IPC::Encoder::operator<<<BOOL>(a1, &v5);
  }
}

uint64_t IPC::ArgumentCoder<std::unique_ptr<WebCore::IDBGetResult>,void>::encode<IPC::Encoder,std::unique_ptr<WebCore::IDBGetResult> const&>(IPC::Encoder *a1, uint64_t *a2)
{
  if (*a2)
  {
    v6 = 1;
    v3 = IPC::Encoder::operator<<<BOOL>(a1, &v6);
    return IPC::ArgumentCoder<WebCore::IDBGetResult,void>::encode(v3, *a2);
  }

  else
  {
    v5 = 0;
    return IPC::Encoder::operator<<<BOOL>(a1, &v5);
  }
}

mpark *IPC::ArgumentCoder<std::unique_ptr<WebCore::IDBGetAllResult>,void>::encode<IPC::Encoder,std::unique_ptr<WebCore::IDBGetAllResult> const&>(IPC::Encoder *a1, WebCore::IDBGetAllResult **a2)
{
  if (*a2)
  {
    v6 = 1;
    v3 = IPC::Encoder::operator<<<BOOL>(a1, &v6);
    return IPC::ArgumentCoder<WebCore::IDBGetAllResult,void>::encode(v3, *a2);
  }

  else
  {
    v5 = 0;
    return IPC::Encoder::operator<<<BOOL>(a1, &v5);
  }
}

uint64_t std::__optional_destruct_base<WebCore::IDBTransactionInfo,false>::~__optional_destruct_base[abi:sn200100](uint64_t a1)
{
  if (*(a1 + 56) == 1)
  {
    std::unique_ptr<WebCore::IDBDatabaseInfo>::reset[abi:sn200100]((a1 + 48), 0);
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(a1 + 32, v2);
  }

  return a1;
}

IPC::Encoder *IPC::ArgumentCoder<mpark::variant<decltype(nullptr),WebCore::IDBKeyData::Invalid,WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String,double,WebCore::IDBKeyData::Date,WebCore::ThreadSafeDataBuffer,WebCore::IDBKeyData::Min,WebCore::IDBKeyData::Max>,void>::encode<IPC::Encoder,mpark::variant<decltype(nullptr),WebCore::IDBKeyData::Invalid,WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String,double,WebCore::IDBKeyData::Date,WebCore::ThreadSafeDataBuffer,WebCore::IDBKeyData::Min,WebCore::IDBKeyData::Max> const&>(IPC::Encoder *result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {

    return IPC::ArgumentCoder<mpark::variant<decltype(nullptr),WebCore::IDBKeyData::Invalid,WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String,double,WebCore::IDBKeyData::Date,WebCore::ThreadSafeDataBuffer,WebCore::IDBKeyData::Min,WebCore::IDBKeyData::Max>,void>::encode<IPC::Encoder,mpark::variant<decltype(nullptr),WebCore::IDBKeyData::Invalid,WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String,double,WebCore::IDBKeyData::Date,WebCore::ThreadSafeDataBuffer,WebCore::IDBKeyData::Min,WebCore::IDBKeyData::Max> const&,0ul>(result, a2, a3);
  }

  else if (*(a2 + 16))
  {
    mpark::throw_bad_variant_access(result);
  }

  return result;
}

IPC::Encoder *IPC::ArgumentCoder<mpark::variant<decltype(nullptr),WebCore::IDBKeyData::Invalid,WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String,double,WebCore::IDBKeyData::Date,WebCore::ThreadSafeDataBuffer,WebCore::IDBKeyData::Min,WebCore::IDBKeyData::Max>,void>::encode<IPC::Encoder,mpark::variant<decltype(nullptr),WebCore::IDBKeyData::Invalid,WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String,double,WebCore::IDBKeyData::Date,WebCore::ThreadSafeDataBuffer,WebCore::IDBKeyData::Min,WebCore::IDBKeyData::Max> const&,0ul>(IPC::Encoder *result, uint64_t a2, uint64_t a3)
{
  if (a3 == 1)
  {
    if (*(a2 + 16) != 1)
    {
      mpark::throw_bad_variant_access(result);
    }
  }

  else
  {

    return IPC::ArgumentCoder<mpark::variant<decltype(nullptr),WebCore::IDBKeyData::Invalid,WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String,double,WebCore::IDBKeyData::Date,WebCore::ThreadSafeDataBuffer,WebCore::IDBKeyData::Min,WebCore::IDBKeyData::Max>,void>::encode<IPC::Encoder,mpark::variant<decltype(nullptr),WebCore::IDBKeyData::Invalid,WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String,double,WebCore::IDBKeyData::Date,WebCore::ThreadSafeDataBuffer,WebCore::IDBKeyData::Min,WebCore::IDBKeyData::Max> const&,0ul,1ul>(result, a2, a3);
  }

  return result;
}

IPC::Encoder *IPC::ArgumentCoder<mpark::variant<decltype(nullptr),WebCore::IDBKeyData::Invalid,WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String,double,WebCore::IDBKeyData::Date,WebCore::ThreadSafeDataBuffer,WebCore::IDBKeyData::Min,WebCore::IDBKeyData::Max>,void>::encode<IPC::Encoder,mpark::variant<decltype(nullptr),WebCore::IDBKeyData::Invalid,WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String,double,WebCore::IDBKeyData::Date,WebCore::ThreadSafeDataBuffer,WebCore::IDBKeyData::Min,WebCore::IDBKeyData::Max> const&,0ul,1ul>(mpark *a1, uint64_t a2, uint64_t a3)
{
  if (a3 == 2)
  {
    if (*(a2 + 16) != 2)
    {
      mpark::throw_bad_variant_access(a1);
    }

    return IPC::VectorArgumentCoder<false,WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(a1, a2);
  }

  else
  {

    return IPC::ArgumentCoder<mpark::variant<decltype(nullptr),WebCore::IDBKeyData::Invalid,WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String,double,WebCore::IDBKeyData::Date,WebCore::ThreadSafeDataBuffer,WebCore::IDBKeyData::Min,WebCore::IDBKeyData::Max>,void>::encode<IPC::Encoder,mpark::variant<decltype(nullptr),WebCore::IDBKeyData::Invalid,WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String,double,WebCore::IDBKeyData::Date,WebCore::ThreadSafeDataBuffer,WebCore::IDBKeyData::Min,WebCore::IDBKeyData::Max> const&,0ul,1ul,2ul>(a1, a2, a3);
  }
}

IPC::Encoder *IPC::ArgumentCoder<mpark::variant<decltype(nullptr),WebCore::IDBKeyData::Invalid,WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String,double,WebCore::IDBKeyData::Date,WebCore::ThreadSafeDataBuffer,WebCore::IDBKeyData::Min,WebCore::IDBKeyData::Max>,void>::encode<IPC::Encoder,mpark::variant<decltype(nullptr),WebCore::IDBKeyData::Invalid,WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String,double,WebCore::IDBKeyData::Date,WebCore::ThreadSafeDataBuffer,WebCore::IDBKeyData::Min,WebCore::IDBKeyData::Max> const&,0ul,1ul,2ul>(mpark *a1, uint64_t a2, uint64_t a3)
{
  if (a3 == 3)
  {
    if (*(a2 + 16) != 3)
    {
      mpark::throw_bad_variant_access(a1);
    }

    return IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, a2);
  }

  else
  {

    return IPC::ArgumentCoder<mpark::variant<decltype(nullptr),WebCore::IDBKeyData::Invalid,WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String,double,WebCore::IDBKeyData::Date,WebCore::ThreadSafeDataBuffer,WebCore::IDBKeyData::Min,WebCore::IDBKeyData::Max>,void>::encode<IPC::Encoder,mpark::variant<decltype(nullptr),WebCore::IDBKeyData::Invalid,WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String,double,WebCore::IDBKeyData::Date,WebCore::ThreadSafeDataBuffer,WebCore::IDBKeyData::Min,WebCore::IDBKeyData::Max> const&,0ul,1ul,2ul,3ul>(a1, a2, a3);
  }
}

IPC::Encoder *IPC::ArgumentCoder<mpark::variant<decltype(nullptr),WebCore::IDBKeyData::Invalid,WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String,double,WebCore::IDBKeyData::Date,WebCore::ThreadSafeDataBuffer,WebCore::IDBKeyData::Min,WebCore::IDBKeyData::Max>,void>::encode<IPC::Encoder,mpark::variant<decltype(nullptr),WebCore::IDBKeyData::Invalid,WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String,double,WebCore::IDBKeyData::Date,WebCore::ThreadSafeDataBuffer,WebCore::IDBKeyData::Min,WebCore::IDBKeyData::Max> const&,0ul,1ul,2ul,3ul>(mpark *a1, uint64_t a2, uint64_t a3)
{
  if (a3 == 4)
  {
    if (*(a2 + 16) != 4)
    {
      mpark::throw_bad_variant_access(a1);
    }

    v4 = *a2;

    return IPC::ArgumentCoder<double,void>::encode<IPC::Encoder>(a1, v4);
  }

  else
  {

    return IPC::ArgumentCoder<mpark::variant<decltype(nullptr),WebCore::IDBKeyData::Invalid,WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String,double,WebCore::IDBKeyData::Date,WebCore::ThreadSafeDataBuffer,WebCore::IDBKeyData::Min,WebCore::IDBKeyData::Max>,void>::encode<IPC::Encoder,mpark::variant<decltype(nullptr),WebCore::IDBKeyData::Invalid,WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String,double,WebCore::IDBKeyData::Date,WebCore::ThreadSafeDataBuffer,WebCore::IDBKeyData::Min,WebCore::IDBKeyData::Max> const&,0ul,1ul,2ul,3ul,4ul>(a1, a2, a3);
  }
}

IPC::Encoder *IPC::ArgumentCoder<mpark::variant<decltype(nullptr),WebCore::IDBKeyData::Invalid,WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String,double,WebCore::IDBKeyData::Date,WebCore::ThreadSafeDataBuffer,WebCore::IDBKeyData::Min,WebCore::IDBKeyData::Max>,void>::encode<IPC::Encoder,mpark::variant<decltype(nullptr),WebCore::IDBKeyData::Invalid,WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String,double,WebCore::IDBKeyData::Date,WebCore::ThreadSafeDataBuffer,WebCore::IDBKeyData::Min,WebCore::IDBKeyData::Max> const&,0ul,1ul,2ul,3ul,4ul>(IPC::Encoder *result, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 16);
  if (a3 == 7)
  {
    if (v3 == 7)
    {
      return result;
    }

    goto LABEL_17;
  }

  if (a3 != 6)
  {
    if (a3 == 5)
    {
      if (v3 == 5)
      {
        v4 = *a2;

        return IPC::ArgumentCoder<double,void>::encode<IPC::Encoder>(result, v4);
      }
    }

    else if (a3 != 8 || v3 == 8)
    {
      return result;
    }

LABEL_17:
    mpark::throw_bad_variant_access(result);
  }

  if (v3 != 6)
  {
    goto LABEL_17;
  }

  return IPC::ArgumentCoder<WTF::RefPtr<WebCore::ThreadSafeDataBufferImpl,WTF::RawPtrTraits<WebCore::ThreadSafeDataBufferImpl>,WTF::DefaultRefDerefTraits<WebCore::ThreadSafeDataBufferImpl>>,void>::encode<IPC::Encoder,WebCore::ThreadSafeDataBufferImpl>(result, a2);
}

IPC::Encoder *IPC::ArgumentCoder<mpark::variant<decltype(nullptr),WebCore::IDBKeyData,WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,void>::encode<IPC::Encoder,mpark::variant<decltype(nullptr),WebCore::IDBKeyData,WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>(IPC::Encoder *result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {

    return IPC::ArgumentCoder<mpark::variant<decltype(nullptr),WebCore::IDBKeyData,WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,void>::encode<IPC::Encoder,mpark::variant<decltype(nullptr),WebCore::IDBKeyData,WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,0ul>(result, a2, a3);
  }

  else if (*(a2 + 32))
  {
    mpark::throw_bad_variant_access(result);
  }

  return result;
}

IPC::Encoder *IPC::ArgumentCoder<mpark::variant<decltype(nullptr),WebCore::IDBKeyData,WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,void>::encode<IPC::Encoder,mpark::variant<decltype(nullptr),WebCore::IDBKeyData,WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,0ul>(mpark *a1, uint64_t a2, uint64_t a3)
{
  if (a3 == 1)
  {
    if (*(a2 + 32) != 1)
    {
      mpark::throw_bad_variant_access(a1);
    }

    return IPC::ArgumentCoder<WebCore::IDBKeyData,void>::encode(a1, a2);
  }

  else
  {

    return IPC::ArgumentCoder<mpark::variant<decltype(nullptr),WebCore::IDBKeyData,WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,void>::encode<IPC::Encoder,mpark::variant<decltype(nullptr),WebCore::IDBKeyData,WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,0ul,1ul>(a1, a2, a3);
  }
}

mpark *IPC::ArgumentCoder<mpark::variant<decltype(nullptr),WebCore::IDBKeyData,WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,void>::encode<IPC::Encoder,mpark::variant<decltype(nullptr),WebCore::IDBKeyData,WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,0ul,1ul>(mpark *result, uint64_t a2, uint64_t a3)
{
  if (a3 == 2)
  {
    if (*(a2 + 32) != 2)
    {
      mpark::throw_bad_variant_access(result);
    }

    return IPC::VectorArgumentCoder<false,WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(result, a2);
  }

  return result;
}

uint64_t IPC::VectorArgumentCoder<false,WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(IPC::Encoder *a1, uint64_t a2)
{
  result = IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *(a2 + 12));
  v5 = *(a2 + 12);
  if (v5)
  {
    v6 = *a2;
    v7 = 32 * v5;
    do
    {
      result = IPC::ArgumentCoder<WebCore::IDBKeyData,void>::encode(a1, v6);
      v6 += 32;
      v7 -= 32;
    }

    while (v7);
  }

  return result;
}

uint64_t *IPC::ArgumentCoder<mpark::variant<decltype(nullptr),WebCore::IDBKeyData,WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,void>::decode<IPC::Decoder>@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = result[1];
  v4 = result[2];
  v5 = *result;
  if (v3 <= &v4[-*result])
  {
    *result = 0;
    result[1] = 0;
    v12 = result;
    v11 = result[3];
    if (v11)
    {
      if (v3)
      {
        (*(*v11 + 16))(v11);
        v5 = *v12;
        v3 = v12[1];
        goto LABEL_20;
      }
    }

    else
    {
      v3 = 0;
    }

    v5 = 0;
LABEL_20:
    *v12 = 0;
    v12[1] = 0;
    result = v12[3];
    if (result && v3)
    {
      result = (*(*result + 16))(result, v5);
    }

    goto LABEL_4;
  }

  result[2] = (v4 + 1);
  if (!v4)
  {
    v12 = result;
    goto LABEL_20;
  }

  v6 = *v4;
  if (v6 >= 3)
  {
LABEL_4:
    *a2 = 0;
    *(a2 + 40) = 0;
    return result;
  }

  if (!v6)
  {
    *a2 = 0;
    *(a2 + 32) = 0;
    goto LABEL_13;
  }

  if (v6 != 1)
  {
    result = IPC::Decoder::decode<WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(&v13, result);
    if ((v15 & 1) == 0)
    {
      v10 = 0;
      *a2 = 0;
      goto LABEL_15;
    }

    *a2 = v13;
    v9 = v14;
    v13 = 0;
    v14 = 0;
    *(a2 + 8) = v9;
    *(a2 + 32) = 2;
    result = WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v13, v8);
LABEL_13:
    v10 = 1;
LABEL_15:
    *(a2 + 40) = v10;
    return result;
  }

  result = IPC::Decoder::decode<WebCore::IDBKeyData>(result, &v13);
  if (v16 != 1)
  {
    goto LABEL_4;
  }

  *a2 = v13;
  result = mpark::detail::move_constructor<mpark::detail::traits<decltype(nullptr),WebCore::IDBKeyData::Invalid,WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String,double,WebCore::IDBKeyData::Date,WebCore::ThreadSafeDataBuffer,WebCore::IDBKeyData::Min,WebCore::IDBKeyData::Max>,(mpark::detail::Trait)1>::move_constructor(a2 + 8, &v14);
  *(a2 + 32) = 1;
  *(a2 + 40) = 1;
  if (v16)
  {
    return mpark::detail::impl<decltype(nullptr),WebCore::IDBKeyData::Invalid,WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String,double,WebCore::IDBKeyData::Date,WebCore::ThreadSafeDataBuffer,WebCore::IDBKeyData::Min,WebCore::IDBKeyData::Max>::~impl(&v14, v7);
  }

  return result;
}

void sub_19D80581C(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  if (a14 == 1)
  {
    mpark::detail::impl<decltype(nullptr),WebCore::IDBKeyData::Invalid,WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String,double,WebCore::IDBKeyData::Date,WebCore::ThreadSafeDataBuffer,WebCore::IDBKeyData::Min,WebCore::IDBKeyData::Max>::~impl(v14 + 8, a2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t IPC::VectorArgumentCoder<false,WebCore::LinearTimingFunction::Point,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebCore::LinearTimingFunction::Point,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(IPC::Encoder *a1, uint64_t a2)
{
  result = IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *(a2 + 12));
  v5 = *(a2 + 12);
  if (v5)
  {
    v6 = *a2;
    v7 = 16 * v5;
    do
    {
      result = IPC::ArgumentCoder<WebCore::LinearTimingFunction::Point,void>::encode(a1, v6);
      v6 += 2;
      v7 -= 16;
    }

    while (v7);
  }

  return result;
}

uint64_t IPC::Decoder::decode<WebCore::LinearTimingFunction::Point>(uint64_t a1, IPC::Decoder *a2)
{
  v4 = IPC::Decoder::decode<unsigned long long>(a2);
  v6 = v5;
  result = IPC::Decoder::decode<unsigned long long>(a2);
  if (*a2)
  {
    if (v6 & 1) != 0 && (v8)
    {
      *a1 = v4;
      *(a1 + 8) = result;
      *(a1 + 16) = 1;
      return result;
    }

    __break(1u);
  }

  *a1 = 0;
  *(a1 + 16) = 0;
  v9 = *(a2 + 1);
  *a2 = 0;
  *(a2 + 1) = 0;
  result = *(a2 + 3);
  if (result)
  {
    v10 = v9 == 0;
  }

  else
  {
    v10 = 1;
  }

  if (!v10)
  {
    v11 = *(*result + 16);

    return v11();
  }

  return result;
}

uint64_t IPC::StreamConnectionEncoder::encodeSpan<int const,18446744073709551615ul>(uint64_t a1, const void *a2, uint64_t a3)
{
  v4 = 4 * a3;
  v5 = *(a1 + 8);
  v6 = -*a1;
  v7 = v4 & 0xFFFFFFFFFFFFFFFCLL | v6 & 3;
  if (v5 < v7)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    return v5 >= v7;
  }

  v8 = v6 & 3;
  if (v5 < v8)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v5 - v8 >= v4)
  {
    memcpy((*a1 + v8), a2, v4);
    v9 = *(a1 + 8);
    v10 = v9 >= v7;
    v11 = v9 - v7;
    if (!v10)
    {
      goto LABEL_9;
    }

    *a1 += v7;
    *(a1 + 8) = v11;
    return v5 >= v7;
  }

LABEL_10:
  result = 1067;
  __break(0xC471u);
  return result;
}

void IPC::Decoder::decode<WebCore::RawFile>(uint64_t a1, IPC::Decoder *a2)
{
  IPC::Decoder::decode<WTF::String>(a2, &v14);
  IPC::Decoder::decode<WTF::RefPtr<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>>(a2, &v12);
  if (*a2)
  {
    if (v15)
    {
      v5 = v14;
      v14 = 0;
      if (v13)
      {
        v6 = v12;
        *a1 = v5;
        *(a1 + 8) = v6;
        *(a1 + 16) = 1;
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  *a1 = 0;
  *(a1 + 16) = 0;
  if (v13)
  {
    v8 = v12;
    v12 = 0;
    if (v8)
    {
      if (atomic_fetch_add(v8 + 2, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v8 + 2);
        (*(*v8 + 8))(v8);
      }
    }
  }

LABEL_5:
  if (v15 == 1)
  {
    v7 = v14;
    v14 = 0;
    if (v7)
    {
      if (atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v7, v4);
      }
    }
  }

  if ((*(a1 + 16) & 1) == 0)
  {
    v9 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    v10 = *(a2 + 3);
    if (v10)
    {
      if (v9)
      {
        v11 = *(*v10 + 16);

        v11();
      }
    }
  }
}

void sub_19D805B6C(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11, char a12)
{
  if ((a12 & 1) != 0 && a11 && atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a11, a2);
  }

  _Unwind_Resume(exception_object);
}

unint64_t WTF::Vector<WebCore::RawFile,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(unsigned int *a1, unint64_t a2, unint64_t a3)
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

    WTF::Vector<WebCore::RawFile,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v12);
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

    WTF::Vector<WebCore::RawFile,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v9);
    return *a1 + v6;
  }

  return v3;
}

WTF::StringImpl *WTF::Vector<WebCore::RawFile,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(WTF::StringImpl *result, unint64_t a2)
{
  if (*(result + 2) < a2)
  {
    v2 = a2;
    if (a2 >> 28)
    {
      __break(0xC471u);
      JUMPOUT(0x19D805D00);
    }

    v3 = result;
    v4 = *result;
    v5 = (*result + 16 * *(result + 3));
    v6 = WTF::fastMalloc((16 * a2));
    *(v3 + 2) = v2;
    *v3 = v6;
    result = WTF::VectorTypeOperations<WebCore::RawFile>::move(v4, v5, v6);
    if (v4)
    {
      if (*v3 == v4)
      {
        *v3 = 0;
        *(v3 + 2) = 0;
      }

      return WTF::fastFree(v4, v7);
    }
  }

  return result;
}

WTF::StringImpl *WTF::VectorTypeOperations<WebCore::RawFile>::move(WTF::StringImpl *result, WTF::StringImpl *a2, WTF::StringImpl **a3)
{
  if (result != a2)
  {
    v5 = result;
    do
    {
      v6 = *v5;
      *v5 = 0;
      *a3 = v6;
      v7 = v5[1];
      v5[1] = 0;
      a3[1] = v7;
      v8 = v5[1];
      v5[1] = 0;
      if (v8 && atomic_fetch_add(v8 + 2, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v8 + 2);
        (*(*v8 + 8))(v8);
      }

      result = *v5;
      *v5 = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          result = WTF::StringImpl::destroy(result, a2);
        }
      }

      a3 += 2;
      v5 += 2;
    }

    while (v5 != a2);
  }

  return result;
}

uint64_t IPC::VectorArgumentCoder<false,WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(IPC::Encoder *a1, uint64_t a2)
{
  result = IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *(a2 + 12));
  v5 = *(a2 + 12);
  if (v5)
  {
    v6 = *a2;
    v7 = 8 * v5;
    do
    {
      result = IPC::ArgumentCoder<WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,void>::encode<IPC::Encoder>(a1, v6++);
      v7 -= 8;
    }

    while (v7);
  }

  return result;
}

uint64_t IPC::ArgumentCoder<std::pair<WTF::ObjectIdentifierGeneric<WebCore::ElementIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::ProcessQualified<WTF::UUID>>,void>::decode<IPC::Decoder>@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v13 = *MEMORY[0x1E69E9840];
  result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a1);
  if (v5)
  {
    v6 = result;
    result = IPC::ArgumentCoder<WebCore::ProcessQualified<WTF::UUID>,void>::decode(a1, v11);
    if (v12)
    {
      *a2 = v6;
      v7 = v11[1];
      *(a2 + 16) = v11[0];
      *(a2 + 32) = v7;
      v8 = 1;
    }

    else
    {
      v9 = *a1;
      v10 = a1[1];
      *a1 = 0;
      a1[1] = 0;
      result = a1[3];
      if (result)
      {
        if (v10)
        {
          result = (*(*result + 16))(result, v9);
        }
      }

      v8 = 0;
      *a2 = 0;
    }

    *(a2 + 48) = v8;
  }

  else
  {
    *a2 = 0;
    *(a2 + 48) = 0;
  }

  return result;
}

uint64_t IPC::VectorArgumentCoder<false,WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,0ul,WTF::CrashOnOverflow,16ul>::decode<IPC::Decoder>@<X0>(IPC::Decoder *this@<X0>, uint64_t a2@<X8>)
{
  v4 = *(this + 1);
  v5 = ((*(this + 2) + 7) & 0xFFFFFFFFFFFFFFF8);
  v6 = *this;
  v7 = v5 - *this;
  v8 = v4 >= v7;
  v9 = v4 - v7;
  if (!v8 || v9 <= 7)
  {
    *this = 0;
    *(this + 1) = 0;
    v30 = *(this + 3);
    if (v30)
    {
      if (v4)
      {
        (*(*v30 + 16))(v30);
        v4 = *(this + 1);
      }
    }

    else
    {
      v4 = 0;
    }

    goto LABEL_33;
  }

  *(this + 2) = v5 + 1;
  if (!v5)
  {
LABEL_33:
    *this = 0;
    *(this + 1) = 0;
    result = *(this + 3);
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
  v33 = 0;
  v34 = 0;
  if (v11 >= 0x20000)
  {
    while (1)
    {
      IPC::Decoder::decode<WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>(&v31, this);
      if ((v32 & 1) == 0)
      {
LABEL_28:
        *a2 = 0;
        *(a2 + 16) = 0;
        return WTF::Vector<WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v33, v6);
      }

      v20 = HIDWORD(v34);
      if (HIDWORD(v34) != v34)
      {
        break;
      }

      v21 = WTF::Vector<WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v33, HIDWORD(v34) + 1, &v31);
      v22 = HIDWORD(v34);
      v23 = HIDWORD(v34) + 1;
      v24 = v33;
      *(v33 + 8 * HIDWORD(v34)) = 0;
      v25 = *v21;
      *v21 = 0;
      *(v24 + 8 * v22) = v25;
      HIDWORD(v34) = v23;
      if (v32)
      {
        goto LABEL_23;
      }

LABEL_25:
      if (!--v11)
      {
        WTF::Vector<WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(&v33, HIDWORD(v34));
        goto LABEL_29;
      }
    }

    v26 = v33;
    *(v33 + 8 * HIDWORD(v34)) = 0;
    v27 = v31;
    v31 = 0;
    *(v26 + 8 * v20) = v27;
    HIDWORD(v34) = v20 + 1;
LABEL_23:
    if (v31)
    {
      WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v31, v6);
    }

    goto LABEL_25;
  }

  if (v11)
  {
    LODWORD(v34) = v11;
    v33 = WTF::fastMalloc((8 * v11));
    while (1)
    {
      IPC::Decoder::decode<WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>(&v31, this);
      if ((v32 & 1) == 0)
      {
        goto LABEL_28;
      }

      v12 = HIDWORD(v34);
      if (HIDWORD(v34) != v34)
      {
        break;
      }

      v13 = WTF::Vector<WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v33, HIDWORD(v34) + 1, &v31);
      v14 = HIDWORD(v34);
      v15 = HIDWORD(v34) + 1;
      v16 = v33;
      *(v33 + 8 * HIDWORD(v34)) = 0;
      v17 = *v13;
      *v13 = 0;
      *(v16 + 8 * v14) = v17;
      HIDWORD(v34) = v15;
      if (v32)
      {
        goto LABEL_15;
      }

LABEL_17:
      if (!--v11)
      {
        goto LABEL_29;
      }
    }

    v18 = v33;
    *(v33 + 8 * HIDWORD(v34)) = 0;
    v19 = v31;
    v31 = 0;
    *(v18 + 8 * v12) = v19;
    HIDWORD(v34) = v12 + 1;
LABEL_15:
    if (v31)
    {
      WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v31, v6);
    }

    goto LABEL_17;
  }

LABEL_29:
  *a2 = v33;
  v28 = v34;
  v33 = 0;
  v34 = 0;
  *(a2 + 8) = v28;
  *(a2 + 16) = 1;
  return WTF::Vector<WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v33, v6);
}

void sub_19D806198(_Unwind_Exception *a1, WTF::StringImpl *a2, WTF::StringImpl **a3, char a4, ...)
{
  va_start(va, a4);
  if (a4 == 1)
  {
    if (a3)
    {
      WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(a3, a2);
    }
  }

  WTF::Vector<WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(va, a2);
  _Unwind_Resume(a1);
}

unint64_t WTF::Vector<WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v3 = a3;
  v5 = *a1;
  if (*a1 > a3 || v5 + 8 * *(a1 + 12) <= a3)
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

    WTF::Vector<WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v12);
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

    WTF::Vector<WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v9);
    return *a1 + v6;
  }

  return v3;
}

uint64_t WTF::Vector<WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(uint64_t result, unint64_t a2)
{
  if (*(result + 8) >= a2)
  {
    return 1;
  }

  v2 = a2;
  if (!(a2 >> 29))
  {
    v3 = result;
    v4 = *result;
    v5 = *(result + 12);
    v6 = WTF::fastMalloc((8 * a2));
    *(v3 + 8) = v2;
    *v3 = v6;
    if (v5)
    {
      v8 = v6;
      v9 = 8 * v5;
      v10 = v4;
      do
      {
        *v8 = 0;
        v11 = *v10;
        *v10 = 0;
        *v8 = v11;
        if (*v10)
        {
          WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(*v10, v7);
        }

        ++v8;
        ++v10;
        v9 -= 8;
      }

      while (v9);
    }

    if (v4)
    {
      if (*v3 == v4)
      {
        *v3 = 0;
        *(v3 + 8) = 0;
      }

      WTF::fastFree(v4, v7);
    }

    return 1;
  }

  __break(0xC471u);
  return result;
}

uint64_t WTF::Vector<WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(uint64_t result, unint64_t a2)
{
  if (*(result + 8) > a2)
  {
    v3 = result;
    if (*(result + 12) > a2)
    {
      result = WTF::Vector<WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrink(result, a2);
    }

    v4 = *v3;
    if (a2)
    {
      if (a2 >> 29)
      {
        __break(0xC471u);
        return result;
      }

      v5 = *(v3 + 12);
      result = WTF::fastMalloc((8 * a2));
      *(v3 + 8) = a2;
      *v3 = result;
      if (result != v4 && v5)
      {
        v6 = result;
        v7 = 8 * v5;
        v8 = v4;
        do
        {
          *v6 = 0;
          v9 = *v8;
          *v8 = 0;
          *v6 = v9;
          result = *v8;
          if (*v8)
          {
            result = WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(result, a2);
          }

          ++v6;
          ++v8;
          v7 -= 8;
        }

        while (v7);
      }
    }

    if (v4)
    {
      if (*v3 == v4)
      {
        *v3 = 0;
        *(v3 + 8) = 0;
      }

      return WTF::fastFree(v4, a2);
    }
  }

  return result;
}

uint64_t WTF::Vector<WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrink(uint64_t result, WTF::StringImpl *a2)
{
  v2 = *(result + 12);
  if (v2 < a2)
  {
    __break(1u);
  }

  else
  {
    v3 = a2;
    v4 = result;
    if (v2 != a2)
    {
      v5 = (*result + 8 * a2);
      v6 = 8 * v2 - 8 * a2;
      do
      {
        result = *v5;
        if (*v5)
        {
          result = WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(result, a2);
        }

        ++v5;
        v6 -= 8;
      }

      while (v6);
    }

    *(v4 + 12) = v3;
  }

  return result;
}

mpark *IPC::ArgumentCoder<mpark::variant<WebCore::FloatPoint,WTF::String,WTF::Vector<WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,void>::encode<IPC::Encoder,mpark::variant<WebCore::FloatPoint,WTF::String,WTF::Vector<WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>> const&>(mpark *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {

    return IPC::ArgumentCoder<mpark::variant<WebCore::FloatPoint,WTF::String,WTF::Vector<WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,void>::encode<IPC::Encoder,mpark::variant<WebCore::FloatPoint,WTF::String,WTF::Vector<WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>> const&,0ul>(a1, a2, a3);
  }

  else
  {
    if (*(a2 + 16))
    {
      mpark::throw_bad_variant_access(a1);
    }

    IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(a1, *a2);
    v6 = *(a2 + 4);

    return IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(a1, v6);
  }
}

mpark *IPC::ArgumentCoder<mpark::variant<WebCore::FloatPoint,WTF::String,WTF::Vector<WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,void>::encode<IPC::Encoder,mpark::variant<WebCore::FloatPoint,WTF::String,WTF::Vector<WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>> const&,0ul>(mpark *a1, uint64_t a2, uint64_t a3)
{
  if (a3 == 1)
  {
    if (*(a2 + 16) != 1)
    {
      mpark::throw_bad_variant_access(a1);
    }

    return IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, a2);
  }

  else
  {

    return IPC::ArgumentCoder<mpark::variant<WebCore::FloatPoint,WTF::String,WTF::Vector<WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,void>::encode<IPC::Encoder,mpark::variant<WebCore::FloatPoint,WTF::String,WTF::Vector<WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>> const&,0ul,1ul>(a1, a2, a3);
  }
}

mpark *IPC::ArgumentCoder<mpark::variant<WebCore::FloatPoint,WTF::String,WTF::Vector<WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,void>::encode<IPC::Encoder,mpark::variant<WebCore::FloatPoint,WTF::String,WTF::Vector<WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>> const&,0ul,1ul>(mpark *result, uint64_t a2, uint64_t a3)
{
  if (a3 == 2)
  {
    if (*(a2 + 16) != 2)
    {
      mpark::throw_bad_variant_access(result);
    }

    return IPC::VectorArgumentCoder<false,WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(result, a2);
  }

  return result;
}

uint64_t IPC::VectorArgumentCoder<false,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(IPC::Encoder *a1, uint64_t a2)
{
  result = IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *(a2 + 12));
  v5 = *(a2 + 12);
  if (v5)
  {
    v6 = *a2;
    v7 = 16 * v5;
    do
    {
      result = IPC::VectorArgumentCoder<false,WTF::String,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(a1, v6);
      v6 += 16;
      v7 -= 16;
    }

    while (v7);
  }

  return result;
}

uint64_t IPC::ArgumentCoder<WTF::HashSet<WTF::URL,WTF::DefaultHash<WTF::URL>,WTF::HashTraits<WTF::URL>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,void>::encode<IPC::Encoder>(IPC::Encoder *a1, uint64_t *a2)
{
  if (*a2)
  {
    v4 = *(*a2 - 12);
  }

  else
  {
    v4 = 0;
  }

  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, v4);
  result = WTF::HashTable<WTF::URL,WTF::URL,WTF::IdentityExtractor,WTF::DefaultHash<WTF::URL>,WTF::HashTraits<WTF::URL>,WTF::HashTraits<WTF::URL>,WTF::FastMalloc>::begin(a2);
  v6 = result;
  v8 = v7;
  if (*a2)
  {
    v9 = *a2 + 40 * *(*a2 - 4);
  }

  else
  {
    v9 = 0;
  }

  if (v9 != result)
  {
    do
    {
      result = IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, v6);
      do
      {
        v6 += 5;
        if (v6 == v8)
        {
          break;
        }

        result = WTF::HashTraitsEmptyValueChecker<WTF::HashTraits<WTF::URL>,false>::isEmptyValue<WTF::URL>(v6);
      }

      while ((result & 1) != 0 || *v6 == -1);
    }

    while (v6 != v9);
  }

  return result;
}

WTF *WTF::Vector<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(uint64_t a1, unint64_t a2)
{
  v3 = WTF::Vector<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(a1, *(a1 + 12) + 1, a2);
  v4 = (*a1 + 16 * *(a1 + 12));
  *v4 = 0;
  v4[1] = 0;
  result = WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt(v4, v3);
  ++*(a1 + 12);
  return result;
}

void sub_19D806740(_Unwind_Exception *exception_object, void *a2)
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

unint64_t WTF::Vector<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2, unint64_t a3)
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

    WTF::Vector<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v12);
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

    WTF::Vector<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v9);
    return *a1 + v6;
  }

  return v3;
}

uint64_t WTF::Vector<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(uint64_t result, unint64_t a2)
{
  if (*(result + 8) < a2)
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
      v5 = (*result + 16 * *(result + 12));
      v6 = WTF::fastMalloc((16 * a2));
      *(v3 + 8) = v2;
      *v3 = v6;
      result = WTF::VectorMover<false,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>::move(v4, v5, v6);
      if (v4)
      {
        if (*v3 == v4)
        {
          *v3 = 0;
          *(v3 + 8) = 0;
        }

        return WTF::fastFree(v4, v7);
      }
    }
  }

  return result;
}

uint64_t WTF::VectorMover<false,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>::move(uint64_t result, _DWORD *a2, void *a3)
{
  if (result != a2)
  {
    v5 = result;
    do
    {
      *a3 = 0;
      a3[1] = 0;
      WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt(a3, v5);
      result = WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v5, v6);
      a3 += 2;
      v5 += 4;
    }

    while (v5 != a2);
  }

  return result;
}

void sub_19D806924(_Unwind_Exception *exception_object, void *a2)
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

uint64_t WTF::Vector<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, void *a2)
{
  v3 = *(a1 + 12);
  if (v3)
  {
    v4 = *a1;
    v5 = 16 * v3;
    do
    {
      v4 = WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v4, a2) + 16;
      v5 -= 16;
    }

    while (v5);
  }

  v6 = *a1;
  if (*a1)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    WTF::fastFree(v6, a2);
  }

  return a1;
}

uint64_t WTF::HashTable<WTF::URL,WTF::URL,WTF::IdentityExtractor,WTF::DefaultHash<WTF::URL>,WTF::HashTraits<WTF::URL>,WTF::HashTraits<WTF::URL>,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v24 = a2;
  if (WTF::HashTraitsEmptyValueChecker<WTF::HashTraits<WTF::URL>,false>::isEmptyValue<WTF::URL>(a2) || *a2 == -1)
  {
    __break(0xC471u);
    JUMPOUT(0x19D806B9CLL);
  }

  v6 = *a1;
  if (*a1 || (WTF::HashTable<WTF::URL,WTF::URL,WTF::IdentityExtractor,WTF::DefaultHash<WTF::URL>,WTF::HashTraits<WTF::URL>,WTF::HashTraits<WTF::URL>,WTF::FastMalloc>::expand(a1, 0), (v6 = *a1) != 0))
  {
    v7 = *(v6 - 8);
  }

  else
  {
    v7 = 0;
  }

  v8 = *(*a2 + 16);
  if (v8 < 0x100)
  {
    v9 = WTF::StringImpl::hashSlowCase(*a2);
  }

  else
  {
    v9 = v8 >> 8;
  }

  v10 = v9 & v7;
  v11 = (v6 + 40 * (v9 & v7));
  if ((WTF::HashTraitsEmptyValueChecker<WTF::HashTraits<WTF::URL>,false>::isEmptyValue<WTF::URL>(v11) & 1) == 0)
  {
    v13 = 0;
    v14 = 1;
    do
    {
      if (*v11 == -1)
      {
        v13 = v11;
      }

      else
      {
        result = WTF::equal(*v11, *a2, v12);
        if (result)
        {
          v20 = *a1;
          if (*a1)
          {
            v21 = *(v20 - 4);
          }

          else
          {
            v21 = 0;
          }

          v23 = 0;
          v22 = v20 + 40 * v21;
          goto LABEL_28;
        }
      }

      v10 = (v10 + v14) & v7;
      v11 = (v6 + 40 * v10);
      ++v14;
    }

    while (!WTF::HashTraitsEmptyValueChecker<WTF::HashTraits<WTF::URL>,false>::isEmptyValue<WTF::URL>(v11));
    if (v13)
    {
      v13[4] = 0;
      *v13 = 0u;
      *(v13 + 1) = 0u;
      --*(*a1 - 16);
      v11 = v13;
    }
  }

  result = WTF::IdentityHashTranslator<WTF::HashTraits<WTF::URL>,WTF::DefaultHash<WTF::URL>>::translate<WTF::URL,WTF::URL,WTF::HashTableAddResult<WTF::HashTableIterator<WTF::HashTable<WTF::URL,WTF::URL,WTF::IdentityExtractor,WTF::DefaultHash<WTF::URL>,WTF::HashTraits<WTF::URL>,WTF::HashTraits<WTF::URL>,WTF::FastMalloc>,WTF::URL,WTF::URL,WTF::IdentityExtractor,WTF::DefaultHash<WTF::URL>,WTF::HashTraits<WTF::URL>,WTF::HashTraits<WTF::URL>>> WTF::HashTable<WTF::URL,WTF::URL,WTF::IdentityExtractor,WTF::DefaultHash<WTF::URL>,WTF::HashTraits<WTF::URL>,WTF::HashTraits<WTF::URL>,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>(WTF::URL&&)::{lambda(void)#1}>(v11, a2, &v24);
  v16 = *a1;
  if (*a1)
  {
    v17 = *(v16 - 12) + 1;
  }

  else
  {
    v17 = 1;
  }

  *(v16 - 12) = v17;
  v18 = (*(v16 - 16) + v17);
  v19 = *(v16 - 4);
  if (v19 > 0x400)
  {
    if (v19 <= 2 * v18)
    {
LABEL_22:
      result = WTF::HashTable<WTF::URL,WTF::URL,WTF::IdentityExtractor,WTF::DefaultHash<WTF::URL>,WTF::HashTraits<WTF::URL>,WTF::HashTraits<WTF::URL>,WTF::FastMalloc>::expand(a1, v11);
      v11 = result;
      v16 = *a1;
      if (*a1)
      {
        LODWORD(v19) = *(v16 - 4);
      }

      else
      {
        LODWORD(v19) = 0;
      }
    }
  }

  else if (3 * v19 <= 4 * v18)
  {
    goto LABEL_22;
  }

  v22 = v16 + 40 * v19;
  v23 = 1;
LABEL_28:
  *a3 = v11;
  *(a3 + 8) = v22;
  *(a3 + 16) = v23;
  return result;
}

uint64_t WTF::HashTable<WTF::URL,WTF::URL,WTF::IdentityExtractor,WTF::DefaultHash<WTF::URL>,WTF::HashTraits<WTF::URL>,WTF::HashTraits<WTF::URL>,WTF::FastMalloc>::expand(uint64_t *a1, WTF::StringImpl **a2)
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

  return WTF::HashTable<WTF::URL,WTF::URL,WTF::IdentityExtractor,WTF::DefaultHash<WTF::URL>,WTF::HashTraits<WTF::URL>,WTF::HashTraits<WTF::URL>,WTF::FastMalloc>::rehash(a1, v5, a2);
}

WTF::StringImpl *WTF::IdentityHashTranslator<WTF::HashTraits<WTF::URL>,WTF::DefaultHash<WTF::URL>>::translate<WTF::URL,WTF::URL,WTF::HashTableAddResult<WTF::HashTableIterator<WTF::HashTable<WTF::URL,WTF::URL,WTF::IdentityExtractor,WTF::DefaultHash<WTF::URL>,WTF::HashTraits<WTF::URL>,WTF::HashTraits<WTF::URL>,WTF::FastMalloc>,WTF::URL,WTF::URL,WTF::IdentityExtractor,WTF::DefaultHash<WTF::URL>,WTF::HashTraits<WTF::URL>,WTF::HashTraits<WTF::URL>>> WTF::HashTable<WTF::URL,WTF::URL,WTF::IdentityExtractor,WTF::DefaultHash<WTF::URL>,WTF::HashTraits<WTF::URL>,WTF::HashTraits<WTF::URL>,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>(WTF::URL&&)::{lambda(void)#1}>(uint64_t a1, uint64_t a2, uint64_t **a3)
{
  WTF::URL::URL(v6, *a3);
  WTF::URL::operator=(a1, v6);
  result = v6[0];
  v6[0] = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v4);
    }
  }

  return result;
}

void sub_19D806C58(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
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

uint64_t WTF::HashTable<WTF::URL,WTF::URL,WTF::IdentityExtractor,WTF::DefaultHash<WTF::URL>,WTF::HashTraits<WTF::URL>,WTF::HashTraits<WTF::URL>,WTF::FastMalloc>::rehash(uint64_t *a1, unsigned int a2, WTF::StringImpl **a3)
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

  v7 = WTF::fastZeroedMalloc((40 * a2 + 16));
  *a1 = (v7 + 4);
  v7[2] = a2 - 1;
  v7[3] = a2;
  *v7 = 0;
  v7[1] = v6;
  if (v5)
  {
    v9 = 0;
    v10 = 0;
    v11 = v5;
    v27 = v4;
    do
    {
      v12 = (v4 + 40 * v9);
      if (*v12 != -1)
      {
        if (WTF::HashTraitsEmptyValueChecker<WTF::HashTraits<WTF::URL>,false>::isEmptyValue<WTF::URL>((v4 + 40 * v9)))
        {
          v13 = *v12;
          *v12 = 0;
          if (v13)
          {
            if (atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v13, v8);
            }
          }
        }

        else
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

          v16 = *(*v12 + 4);
          v17 = v10;
          if (v16 < 0x100)
          {
            v18 = WTF::StringImpl::hashSlowCase(*v12);
          }

          else
          {
            v18 = v16 >> 8;
          }

          v19 = 0;
          do
          {
            v20 = v18 & v15;
            v21 = (v14 + 40 * (v18 & v15));
            v23 = WTF::HashTraitsEmptyValueChecker<WTF::HashTraits<WTF::URL>,false>::isEmptyValue<WTF::URL>(v21);
            v18 = ++v19 + v20;
          }

          while (!v23);
          v24 = *v21;
          *v21 = 0;
          if (v24 && atomic_fetch_add_explicit(v24, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v24, v22);
          }

          WTF::URL::URL(v14 + 40 * v20, v12);
          v25 = *v12;
          *v12 = 0;
          v10 = v17;
          if (v25 && atomic_fetch_add_explicit(v25, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v25, v8);
          }

          v4 = v27;
          if (v12 == a3)
          {
            v10 = v14 + 40 * v20;
          }
        }
      }

      ++v9;
    }

    while (v9 != v11);
  }

  else
  {
    v10 = 0;
    result = 0;
    if (!v4)
    {
      return result;
    }
  }

  WTF::fastFree((v4 - 16), v8);
  return v10;
}

void *IPC::ArgumentCoder<std::optional<WebCore::PCM::AttributionTriggerData>,void>::encode<IPC::Encoder,std::optional<WebCore::PCM::AttributionTriggerData> const&>(IPC::Encoder *a1, char *a2)
{
  if (a2[128])
  {
    v6 = 1;
    IPC::Encoder::operator<<<BOOL>(a1, &v6);
    if (a2[128])
    {
      return IPC::ArgumentCoder<WebCore::PCM::AttributionTriggerData,void>::encode(a1, a2);
    }

    else
    {
      v5 = std::__throw_bad_optional_access[abi:sn200100]();
      return IPC::ArgumentCoder<std::optional<WebCore::ApplePayLineItem>,void>::encode<IPC::Encoder,std::optional<WebCore::ApplePayLineItem> const&>(v5);
    }
  }

  else
  {
    v7 = 0;
    return IPC::Encoder::operator<<<BOOL>(a1, &v7);
  }
}

uint64_t IPC::ArgumentCoder<std::optional<WebCore::ApplePayLineItem>,void>::encode<IPC::Encoder,std::optional<WebCore::ApplePayLineItem> const&>(IPC::Encoder *a1, uint64_t a2)
{
  if (*(a2 + 80))
  {
    v7 = 1;
    IPC::Encoder::operator<<<BOOL>(a1, &v7);
    if (*(a2 + 80))
    {
      return IPC::ArgumentCoder<WebCore::ApplePayLineItem,void>::encode(a1, a2);
    }

    else
    {
      v5 = std::__throw_bad_optional_access[abi:sn200100]();
      return IPC::ArgumentCoder<std::optional<WebCore::ApplePayDateComponentsRange>,void>::encode<IPC::Encoder,std::optional<WebCore::ApplePayDateComponentsRange> const&>(v5, v6);
    }
  }

  else
  {
    v8 = 0;
    return IPC::Encoder::operator<<<BOOL>(a1, &v8);
  }
}

uint64_t IPC::ArgumentCoder<std::optional<WebCore::ApplePayDateComponentsRange>,void>::encode<IPC::Encoder,std::optional<WebCore::ApplePayDateComponentsRange> const&>(IPC::Encoder *a1, uint64_t a2)
{
  if (*(a2 + 64))
  {
    v6 = 1;
    IPC::Encoder::operator<<<BOOL>(a1, &v6);
    if (*(a2 + 64))
    {
      IPC::ArgumentCoder<WebCore::ApplePayDateComponents,void>::encode(a1, a2);
      return IPC::ArgumentCoder<WebCore::ApplePayDateComponents,void>::encode(a1, a2 + 32);
    }

    else
    {
      v5 = std::__throw_bad_optional_access[abi:sn200100]();
      return IPC::VectorArgumentCoder<false,WTF::Ref<WebCore::ApplePayError,WTF::RawPtrTraits<WebCore::ApplePayError>,WTF::DefaultRefDerefTraits<WebCore::ApplePayError>>,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WTF::Ref<WebCore::ApplePayError,WTF::RawPtrTraits<WebCore::ApplePayError>,WTF::DefaultRefDerefTraits<WebCore::ApplePayError>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(v5);
    }
  }

  else
  {
    v7 = 0;
    return IPC::Encoder::operator<<<BOOL>(a1, &v7);
  }
}

uint64_t IPC::VectorArgumentCoder<false,WTF::Ref<WebCore::ApplePayError,WTF::RawPtrTraits<WebCore::ApplePayError>,WTF::DefaultRefDerefTraits<WebCore::ApplePayError>>,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WTF::Ref<WebCore::ApplePayError,WTF::RawPtrTraits<WebCore::ApplePayError>,WTF::DefaultRefDerefTraits<WebCore::ApplePayError>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(IPC::Encoder *a1, uint64_t a2)
{
  result = IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *(a2 + 12));
  v5 = *(a2 + 12);
  if (v5)
  {
    v6 = *a2;
    v7 = 8 * v5;
    do
    {
      v8 = *v6++;
      result = IPC::ArgumentCoder<WebCore::ApplePayError,void>::encode(a1, v8);
      v7 -= 8;
    }

    while (v7);
  }

  return result;
}

WTF::StringImpl *IPC::Decoder::decode<WTF::Ref<WebCore::ApplePayError,WTF::RawPtrTraits<WebCore::ApplePayError>,WTF::DefaultRefDerefTraits<WebCore::ApplePayError>>>(uint64_t a1, IPC::Decoder *a2)
{
  v4 = *(a2 + 2);
  v5 = *a2;
  v6 = *(a2 + 1);
  if (v6 <= v4 - v5)
  {
    *a2 = 0;
    *(a2 + 1) = 0;
    v26 = *(a2 + 3);
    if (v26)
    {
      if (v6)
      {
        (*(*v26 + 16))(v26);
        v5 = *a2;
        v6 = *(a2 + 1);
        goto LABEL_55;
      }
    }

    else
    {
      v6 = 0;
    }

    v5 = 0;
  }

  else
  {
    v7 = v4 + 1;
    *(a2 + 2) = v4 + 1;
    if (v4)
    {
      v8 = *v4;
      if (v8 < 8)
      {
        v9 = v8 | 0x100;
        goto LABEL_5;
      }

      goto LABEL_58;
    }
  }

LABEL_55:
  *a2 = 0;
  *(a2 + 1) = 0;
  v27 = *(a2 + 3);
  if (v27)
  {
    if (v6)
    {
      (*(*v27 + 16))(v27, v5);
      v5 = *a2;
      v6 = *(a2 + 1);
      goto LABEL_58;
    }
  }

  else
  {
    v6 = 0;
  }

  v5 = 0;
LABEL_58:
  *a2 = 0;
  *(a2 + 1) = 0;
  v28 = *(a2 + 3);
  if (!v28)
  {
    v9 = 0;
    goto LABEL_60;
  }

  if (!v6)
  {
    v9 = 0;
    goto LABEL_61;
  }

  (*(*v28 + 16))(v28, v5);
  v9 = 0;
  v5 = *a2;
  v6 = *(a2 + 1);
  v7 = *(a2 + 2);
LABEL_5:
  if (v6 <= v7 - v5)
  {
    v46 = *(a2 + 3);
    *a2 = 0;
    *(a2 + 1) = 0;
    if (v46)
    {
      if (v6)
      {
        (*(*v46 + 16))(v46);
        v5 = *a2;
        v6 = *(a2 + 1);
LABEL_62:
        *a2 = 0;
        *(a2 + 1) = 0;
        v29 = *(a2 + 3);
        if (v29)
        {
          if (v6)
          {
            (*(*v29 + 16))(v29, v5);
            v5 = *a2;
            v6 = *(a2 + 1);
LABEL_65:
            *a2 = 0;
            *(a2 + 1) = 0;
            v30 = *(a2 + 3);
            if (v30 && v6)
            {
              (*(*v30 + 16))(v30, v5);
            }

            v13 = 0;
            goto LABEL_90;
          }
        }

        else
        {
          v6 = 0;
        }

        v5 = 0;
        goto LABEL_65;
      }

LABEL_61:
      v5 = 0;
      goto LABEL_62;
    }

LABEL_60:
    v6 = 0;
    goto LABEL_61;
  }

  v10 = v7 + 1;
  *(a2 + 2) = v7 + 1;
  if (!v7)
  {
    goto LABEL_62;
  }

  if (*v7 >= 2u)
  {
    goto LABEL_65;
  }

  if (!*v7)
  {
    v13 = 0;
    LOWORD(v11) = 0;
    v12 = 0x10000;
    goto LABEL_14;
  }

  if (v6 <= v10 - v5)
  {
    v38 = 0;
    v39 = 0;
    *a2 = 0;
    *(a2 + 1) = 0;
    v40 = *(a2 + 3);
    if (v40)
    {
      (*(*v40 + 16))(v40);
      v39 = *a2;
      v38 = *(a2 + 1);
    }
  }

  else
  {
    *(a2 + 2) = v7 + 2;
    if (v7 != -1)
    {
      v11 = *v10;
      if (v11 < 0xD)
      {
        v12 = 0x10000;
        v13 = 256;
        goto LABEL_14;
      }

      goto LABEL_88;
    }

    v38 = v6;
    v39 = v5;
  }

  *a2 = 0;
  *(a2 + 1) = 0;
  v41 = *(a2 + 3);
  if (v41 && v38)
  {
    (*(*v41 + 16))(v41, v39, v38);
    v5 = *a2;
    v6 = *(a2 + 1);
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

LABEL_88:
  *a2 = 0;
  *(a2 + 1) = 0;
  v42 = *(a2 + 3);
  if (v42 && v6)
  {
    (*(*v42 + 16))(v42, v5);
  }

  v13 = 256;
LABEL_90:
  v43 = *a2;
  v44 = *(a2 + 1);
  *a2 = 0;
  *(a2 + 1) = 0;
  v45 = *(a2 + 3);
  if (v45 && v44)
  {
    (*(*v45 + 16))(v45, v43);
  }

  LOWORD(v11) = 0;
  v12 = 0;
LABEL_14:
  result = IPC::Decoder::decode<WTF::String>(a2, &v47);
  v15 = *(a2 + 1);
  v16 = *(a2 + 2);
  v17 = *a2;
  if (v15 <= &v16[-*a2])
  {
    *a2 = 0;
    *(a2 + 1) = 0;
    v31 = *(a2 + 3);
    if (v31)
    {
      if (v15)
      {
        (*(*v31 + 16))(v31);
        v15 = *(a2 + 1);
      }
    }

    else
    {
      v15 = 0;
    }

LABEL_75:
    *a2 = 0;
    *(a2 + 1) = 0;
    v32 = *(a2 + 3);
    if (v32)
    {
      if (v15)
      {
        (*(*v32 + 16))(v32);
        v17 = *a2;
        v15 = *(a2 + 1);
        goto LABEL_78;
      }
    }

    else
    {
      v15 = 0;
    }

    v17 = 0;
    goto LABEL_78;
  }

  v18 = v16 + 1;
  *(a2 + 2) = v16 + 1;
  if (!v16)
  {
    goto LABEL_75;
  }

  if (*v16 < 2u)
  {
    if (!*v16)
    {
      v20 = 0;
      v22 = 0x10000;
      if (v17)
      {
        goto LABEL_28;
      }

      goto LABEL_24;
    }

    if (v15 <= v18 - v17)
    {
      v34 = 0;
      v35 = 0;
      *a2 = 0;
      *(a2 + 1) = 0;
      v36 = *(a2 + 3);
      if (v36)
      {
        (*(*v36 + 16))(v36);
        v35 = *a2;
        v34 = *(a2 + 1);
      }
    }

    else
    {
      *(a2 + 2) = v16 + 2;
      if (v16 != -1)
      {
        if (!*v18)
        {
          v22 = 0x10000;
          v20 = 256;
          if (v17)
          {
            goto LABEL_28;
          }

          goto LABEL_24;
        }

        goto LABEL_21;
      }

      v34 = v15;
      v35 = v17;
    }

    *a2 = 0;
    *(a2 + 1) = 0;
    v37 = *(a2 + 3);
    if (v37 && v34)
    {
      (*(*v37 + 16))(v37, v35, v34);
      v15 = *(a2 + 1);
    }

    else
    {
      v15 = 0;
    }

LABEL_21:
    *a2 = 0;
    *(a2 + 1) = 0;
    v19 = *(a2 + 3);
    if (v19 && v15)
    {
      (*(*v19 + 16))(v19);
    }

    v20 = 256;
    goto LABEL_23;
  }

LABEL_78:
  *a2 = 0;
  *(a2 + 1) = 0;
  v33 = *(a2 + 3);
  if (v33 && v15)
  {
    (*(*v33 + 16))(v33, v17);
  }

  v20 = 0;
LABEL_23:
  v17 = *a2;
  v15 = *(a2 + 1);
  *a2 = 0;
  *(a2 + 1) = 0;
  result = *(a2 + 3);
  if (result)
  {
    while (v15)
    {
      result = (*(*result + 16))(result, v17);
      v22 = 0;
      v17 = *a2;
      if (!*a2)
      {
        break;
      }

LABEL_28:
      if (v9 > 0xFF && (v12 | v13) >> 16 && (v48 & 1) != 0 && (v22 | v20) >> 16)
      {
        result = WTF::fastMalloc(0x20);
        *(result + 2) = 1;
        *result = &unk_1F10E7E80;
        *(result + 12) = v9;
        *(result + 13) = v11 | v13;
        v23 = v47;
        if (v47)
        {
          atomic_fetch_add_explicit(v47, 2u, memory_order_relaxed);
        }

        *(result + 2) = v23;
        *(result + 12) = v20;
        v21 = 1;
        *a1 = result;
        goto LABEL_35;
      }

      __break(1u);
    }
  }

LABEL_24:
  v21 = 0;
  *a1 = 0;
LABEL_35:
  *(a1 + 8) = v21;
  if (v48 == 1 && (result = v47, v47 = 0, result) && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    result = WTF::StringImpl::destroy(result, v17);
    if (v21)
    {
      return result;
    }
  }

  else if (v21)
  {
    return result;
  }

  v24 = *(a2 + 1);
  *a2 = 0;
  *(a2 + 1) = 0;
  result = *(a2 + 3);
  if (result && v24)
  {
    v25 = *(*result + 16);

    return v25();
  }

  return result;
}

void sub_19D807728(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, char a10)
{
  if (a10 == 1 && a9 && atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a9, a2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t WTF::Vector<WTF::Ref<WebCore::ApplePayError,WTF::RawPtrTraits<WebCore::ApplePayError>,WTF::DefaultRefDerefTraits<WebCore::ApplePayError>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, WTF::StringImpl *a2)
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
        WTF::RefCounted<WebCore::ApplePayError>::deref((v6 + 8), a2);
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

void *IPC::ArgumentCoder<std::optional<WebCore::ApplePayPaymentOrderDetails>,void>::encode<IPC::Encoder,std::optional<WebCore::ApplePayPaymentOrderDetails> const&>(IPC::Encoder *a1, uint64_t a2)
{
  if (*(a2 + 32))
  {
    v7 = 1;
    IPC::Encoder::operator<<<BOOL>(a1, &v7);
    if (*(a2 + 32))
    {
      return IPC::ArgumentCoder<WebCore::ApplePayPaymentOrderDetails,void>::encode(a1, a2);
    }

    else
    {
      v5 = std::__throw_bad_optional_access[abi:sn200100]();
      return IPC::ArgumentCoder<std::optional<WTF::Vector<WebCore::ApplePayContactField,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,void>::encode<IPC::Encoder,std::optional<WTF::Vector<WebCore::ApplePayContactField,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>> const&>(v5, v6);
    }
  }

  else
  {
    v8 = 0;
    return IPC::Encoder::operator<<<BOOL>(a1, &v8);
  }
}

uint64_t IPC::ArgumentCoder<std::optional<WTF::Vector<WebCore::ApplePayContactField,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,void>::encode<IPC::Encoder,std::optional<WTF::Vector<WebCore::ApplePayContactField,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>> const&>(IPC::Encoder *a1, uint64_t a2)
{
  if (*(a2 + 16))
  {
    v7 = 1;
    IPC::Encoder::operator<<<BOOL>(a1, &v7);
    if (*(a2 + 16))
    {
      return IPC::VectorArgumentCoder<false,WebCore::ApplePayContactField,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebCore::ApplePayContactField,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(a1, a2);
    }

    else
    {
      v5 = std::__throw_bad_optional_access[abi:sn200100]();
      return IPC::VectorArgumentCoder<false,WebCore::ApplePayContactField,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebCore::ApplePayContactField,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(v5, v6);
    }
  }

  else
  {
    v8 = 0;
    return IPC::Encoder::operator<<<BOOL>(a1, &v8);
  }
}

uint64_t IPC::VectorArgumentCoder<false,WebCore::ApplePayContactField,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebCore::ApplePayContactField,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(IPC::Encoder *a1, uint64_t a2)
{
  result = IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *(a2 + 12));
  v5 = *(a2 + 12);
  if (v5)
  {
    v6 = *a2;
    do
    {
      v7 = *v6++;
      result = IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, v7);
      --v5;
    }

    while (v5);
  }

  return result;
}

uint64_t std::optional<WTF::Vector<WebCore::ApplePayContactField,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>::optional[abi:sn200100]<WTF::Vector<WebCore::ApplePayContactField,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,0>(uint64_t a1, _DWORD *a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  WTF::VectorBuffer<WebCore::HTTPHeaderField,0ul,WTF::FastMalloc>::adopt(a1, a2);
  *(a1 + 16) = 1;
  return a1;
}

void sub_19D807944(_Unwind_Exception *exception_object, void *a2)
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

unint64_t WTF::Vector<WebCore::ApplePayContactField,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v3 = a3;
  v5 = *a1;
  if (*a1 > a3 || v5 + *(a1 + 12) <= a3)
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

    WTF::Vector<WebCore::ApplePayContactField,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v12);
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

    WTF::Vector<WebCore::ApplePayContactField,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v9);
    return *a1 + v6;
  }

  return v3;
}

void **WTF::Vector<WebCore::ApplePayContactField,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(void **result, WTF *this)
{
  if (*(result + 2) < this)
  {
    v2 = this;
    if (this >> 32)
    {
      __break(0xC471u);
    }

    else
    {
      v3 = result;
      v4 = *result;
      v5 = *(result + 3);
      v6 = WTF::fastMalloc(this);
      *(v3 + 8) = v2;
      *v3 = v6;
      result = memcpy(v6, v4, v5);
      if (v4)
      {
        if (*v3 == v4)
        {
          *v3 = 0;
          *(v3 + 8) = 0;
        }

        return WTF::fastFree(v4, v7);
      }
    }
  }

  return result;
}

uint64_t IPC::VectorArgumentCoder<false,WebCore::ApplePayInstallmentItem,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebCore::ApplePayInstallmentItem,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(IPC::Encoder *a1, uint64_t a2)
{
  result = IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *(a2 + 12));
  v5 = *(a2 + 12);
  if (v5)
  {
    v6 = *a2;
    v7 = 48 * v5;
    do
    {
      result = IPC::ArgumentCoder<WebCore::ApplePayInstallmentItem,void>::encode(a1, v6);
      v6 += 48;
      v7 -= 48;
    }

    while (v7);
  }

  return result;
}

WTF::StringImpl *IPC::Decoder::decode<WebCore::ApplePayInstallmentItem>(uint64_t a1, IPC::Decoder *a2)
{
  v4 = *(a2 + 2);
  v5 = *a2;
  v6 = *(a2 + 1);
  if (v6 <= &v4[-v5])
  {
    *a2 = 0;
    *(a2 + 1) = 0;
    v19 = *(a2 + 3);
    if (v19)
    {
      if (v6)
      {
        (*(*v19 + 16))(v19);
        v5 = *a2;
        v6 = *(a2 + 1);
LABEL_42:
        *a2 = 0;
        *(a2 + 1) = 0;
        v20 = *(a2 + 3);
        if (v20)
        {
          if (v6)
          {
            (*(*v20 + 16))(v20, v5);
            v5 = *a2;
            v6 = *(a2 + 1);
            goto LABEL_45;
          }
        }

        else
        {
          v6 = 0;
        }

        v5 = 0;
        goto LABEL_45;
      }
    }

    else
    {
      v6 = 0;
    }

    v5 = 0;
    goto LABEL_42;
  }

  *(a2 + 2) = v4 + 1;
  if (!v4)
  {
    goto LABEL_42;
  }

  v7 = *v4;
  if (v7 < 5)
  {
    v8 = v7 | 0x100;
    goto LABEL_5;
  }

LABEL_45:
  *a2 = 0;
  *(a2 + 1) = 0;
  v21 = *(a2 + 3);
  if (v21 && v6)
  {
    (*(*v21 + 16))(v21, v5);
  }

  v8 = 0;
LABEL_5:
  IPC::Decoder::decode<WTF::String>(a2, &v30);
  IPC::Decoder::decode<WTF::String>(a2, &v28);
  IPC::Decoder::decode<WTF::String>(a2, &v26);
  IPC::Decoder::decode<WTF::String>(a2, &v24);
  result = IPC::Decoder::decode<WTF::String>(a2, &v22);
  v11 = *a2;
  if (*a2)
  {
    if (v8 > 0xFF && (v31 & 1) != 0)
    {
      v12 = v30;
      v30 = 0;
      if (v29)
      {
        v13 = v28;
        v28 = 0;
        if (v27)
        {
          v14 = v26;
          v26 = 0;
          if (v25)
          {
            v15 = v24;
            v24 = 0;
            if (v23)
            {
              v16 = v22;
              *a1 = v8;
              *(a1 + 8) = v12;
              *(a1 + 16) = v13;
              *(a1 + 24) = v14;
              *(a1 + 32) = v15;
              *(a1 + 40) = v16;
              *(a1 + 48) = 1;
              goto LABEL_13;
            }
          }
        }
      }
    }

    __break(1u);
  }

  *a1 = 0;
  *(a1 + 48) = 0;
  if (v23)
  {
    result = v22;
    v22 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        result = WTF::StringImpl::destroy(result, v10);
      }
    }
  }

LABEL_13:
  if (v25 == 1)
  {
    result = v24;
    v24 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        result = WTF::StringImpl::destroy(result, v10);
      }
    }
  }

  if (v27 == 1)
  {
    result = v26;
    v26 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        result = WTF::StringImpl::destroy(result, v10);
      }
    }
  }

  if (v29 == 1)
  {
    result = v28;
    v28 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        result = WTF::StringImpl::destroy(result, v10);
      }
    }
  }

  if (v31 == 1 && (result = v30, v30 = 0, result) && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    result = WTF::StringImpl::destroy(result, v10);
    if (v11)
    {
      return result;
    }
  }

  else if (v11)
  {
    return result;
  }

  v17 = *a2;
  v18 = *(a2 + 1);
  *a2 = 0;
  *(a2 + 1) = 0;
  result = *(a2 + 3);
  if (result)
  {
    if (v18)
    {
      return (*(*result + 16))(result, v17);
    }
  }

  return result;
}

void sub_19D807E2C(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11, char a12, WTF::StringImpl *a13, char a14, WTF::StringImpl *a15, char a16)
{
  if ((a12 & 1) != 0 && a11 && atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a11, a2);
  }

  if (a14 == 1 && a13 && atomic_fetch_add_explicit(a13, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a13, a2);
  }

  if (a16 == 1 && a15 && atomic_fetch_add_explicit(a15, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a15, a2);
  }

  if (*(v16 - 40) == 1)
  {
    v18 = *(v16 - 48);
    *(v16 - 48) = 0;
    if (v18)
    {
      if (atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v18, a2);
      }
    }
  }

  _Unwind_Resume(exception_object);
}

unint64_t WTF::Vector<WebCore::ApplePayInstallmentItem,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::ApplePayInstallmentItem>(unsigned int *a1, unint64_t a2)
{
  result = WTF::Vector<WebCore::ApplePayInstallmentItem,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(a1, a1[3] + 1, a2);
  v4 = a1[3];
  v5 = v4 + 1;
  v6 = *a1 + 48 * v4;
  *v6 = *result;
  v7 = *(result + 8);
  *(result + 8) = 0;
  *(v6 + 8) = v7;
  v8 = *(result + 16);
  *(result + 16) = 0;
  *(v6 + 16) = v8;
  v9 = *(result + 24);
  *(result + 24) = 0;
  *(v6 + 24) = v9;
  v10 = *(result + 32);
  *(result + 32) = 0;
  *(v6 + 32) = v10;
  v11 = *(result + 40);
  *(result + 40) = 0;
  *(v6 + 40) = v11;
  a1[3] = v5;
  return result;
}

unint64_t WTF::Vector<WebCore::ApplePayInstallmentItem,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(unsigned int *a1, unint64_t a2, unint64_t a3)
{
  v3 = a3;
  v5 = *a1;
  if (*a1 > a3 || v5 + 48 * a1[3] <= a3)
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

    WTF::Vector<WebCore::ApplePayInstallmentItem,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v12);
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

    WTF::Vector<WebCore::ApplePayInstallmentItem,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v9);
    return *a1 + v6;
  }

  return v3;
}

WTF::StringImpl *WTF::Vector<WebCore::ApplePayInstallmentItem,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(WTF::StringImpl *result, unint64_t a2)
{
  if (*(result + 2) < a2)
  {
    if (a2 >= 0x5555556)
    {
      __break(0xC471u);
      JUMPOUT(0x19D808110);
    }

    v2 = result;
    v3 = *result;
    v4 = (*result + 48 * *(result + 3));
    v5 = 48 * a2;
    v6 = WTF::fastMalloc((48 * a2));
    *(v2 + 2) = v5 / 0x30;
    *v2 = v6;
    result = WTF::VectorMover<false,WebCore::ApplePayInstallmentItem>::move(v3, v4, v6);
    if (v3)
    {
      if (*v2 == v3)
      {
        *v2 = 0;
        *(v2 + 2) = 0;
      }

      return WTF::fastFree(v3, v7);
    }
  }

  return result;
}

WTF::StringImpl *WTF::VectorMover<false,WebCore::ApplePayInstallmentItem>::move(WTF::StringImpl *result, WTF::StringImpl *a2, uint64_t a3)
{
  if (result != a2)
  {
    v5 = result;
    do
    {
      *a3 = *v5;
      v6 = v5[1];
      v5[1] = 0;
      *(a3 + 8) = v6;
      v7 = v5[2];
      v5[2] = 0;
      *(a3 + 16) = v7;
      v8 = v5[3];
      v5[3] = 0;
      *(a3 + 24) = v8;
      v9 = v5[4];
      v5[4] = 0;
      *(a3 + 32) = v9;
      v10 = v5[5];
      v5[5] = 0;
      *(a3 + 40) = v10;
      v11 = v5[5];
      v5[5] = 0;
      if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v11, a2);
      }

      v12 = v5[4];
      v5[4] = 0;
      if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v12, a2);
      }

      v13 = v5[3];
      v5[3] = 0;
      if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v13, a2);
      }

      v14 = v5[2];
      v5[2] = 0;
      if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v14, a2);
      }

      result = v5[1];
      v5[1] = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          result = WTF::StringImpl::destroy(result, a2);
        }
      }

      a3 += 48;
      v5 += 6;
    }

    while (v5 != a2);
  }

  return result;
}

uint64_t IPC::ArgumentCoder<std::optional<WebCore::ApplePayInstallmentConfiguration>,void>::encode<IPC::Encoder,std::optional<WebCore::ApplePayInstallmentConfiguration> const&>(IPC::Encoder *a1, uint64_t a2)
{
  if (*(a2 + 96))
  {
    v7 = 1;
    IPC::Encoder::operator<<<BOOL>(a1, &v7);
    if (*(a2 + 96))
    {
      return IPC::ArgumentCoder<WebCore::ApplePayInstallmentConfiguration,void>::encode(a1, a2);
    }

    else
    {
      v5 = std::__throw_bad_optional_access[abi:sn200100]();
      return IPC::VectorArgumentCoder<false,WebCore::ApplicationManifest::Icon,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebCore::ApplicationManifest::Icon,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(v5, v6);
    }
  }

  else
  {
    v8 = 0;
    return IPC::Encoder::operator<<<BOOL>(a1, &v8);
  }
}

uint64_t IPC::VectorArgumentCoder<false,WebCore::ApplicationManifest::Icon,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebCore::ApplicationManifest::Icon,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(IPC::Encoder *a1, uint64_t a2)
{
  result = IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *(a2 + 12));
  v5 = *(a2 + 12);
  if (v5)
  {
    v6 = *a2;
    v7 = 72 * v5;
    do
    {
      result = IPC::ArgumentCoder<WebCore::ApplicationManifest::Icon,void>::encode(a1, v6);
      v6 += 72;
      v7 -= 72;
    }

    while (v7);
  }

  return result;
}

WTF::StringImpl *IPC::Decoder::decode<WebCore::ApplicationManifest::Icon>(uint64_t a1, IPC::Decoder *a2)
{
  IPC::Decoder::decode<WTF::URL>(a2, &v31);
  IPC::Decoder::decode<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(a2, &v28);
  result = IPC::Decoder::decode<WTF::String>(a2, &v26);
  v5 = *(a2 + 1);
  v6 = *(a2 + 2);
  v7 = *a2;
  if (v5 <= &v6[-*a2])
  {
    *a2 = 0;
    *(a2 + 1) = 0;
    v17 = *(a2 + 3);
    if (v17)
    {
      if (v5)
      {
        (*(*v17 + 16))(v17);
        v5 = *(a2 + 1);
      }
    }

    else
    {
      v5 = 0;
    }

    goto LABEL_30;
  }

  *(a2 + 2) = v6 + 1;
  if (!v6)
  {
LABEL_30:
    *a2 = 0;
    *(a2 + 1) = 0;
    v18 = *(a2 + 3);
    if (v18)
    {
      if (v5)
      {
        (*(*v18 + 16))(v18);
        v7 = *a2;
        v5 = *(a2 + 1);
        goto LABEL_33;
      }
    }

    else
    {
      v5 = 0;
    }

    v7 = 0;
LABEL_33:
    *a2 = 0;
    *(a2 + 1) = 0;
    result = *(a2 + 3);
    if (result)
    {
      if (v5)
      {
        result = (*(*result + 16))(result, v7);
        v9 = 0;
        v7 = *a2;
        if (*a2)
        {
          goto LABEL_5;
        }
      }
    }

LABEL_34:
    *a1 = 0;
    *(a1 + 72) = 0;
    goto LABEL_12;
  }

  v8 = *v6;
  if (v8 >= 8)
  {
    goto LABEL_33;
  }

  v9 = v8 | 0x100;
  if (!v7)
  {
    goto LABEL_34;
  }

LABEL_5:
  if ((v34 & 1) == 0 || (v10 = v31, v31 = 0, v19 = v10, v20 = v32, v21 = v33, LODWORD(v32) = v32 & 0xFFFFFFFE, (v30 & 1) == 0) || (v22 = v28, v11 = v29, v28 = 0, v29 = 0, v23 = v11, (v27 & 1) == 0) || (v12 = v26, v26 = 0, v24 = v12, v9 <= 0xFF))
  {
    __break(1u);
LABEL_25:
    v15 = *a2;
    v16 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    result = *(a2 + 3);
    if (result)
    {
      if (v16)
      {
        return (*(*result + 16))(result, v15);
      }
    }

    return result;
  }

  v25 = v9;
  WTF::URL::URL(a1, &v19);
  *(a1 + 40) = v22;
  v13 = v23;
  v22 = 0;
  v23 = 0;
  *(a1 + 48) = v13;
  *(a1 + 56) = v24;
  *(a1 + 64) = v25;
  *(a1 + 72) = 1;
  v24 = 0;
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v22, v14);
  result = v19;
  v19 = 0;
  if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    result = WTF::StringImpl::destroy(result, v7);
  }

LABEL_12:
  if (v27 == 1)
  {
    result = v26;
    v26 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        result = WTF::StringImpl::destroy(result, v7);
      }
    }
  }

  if (v30 == 1)
  {
    result = WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v28, v7);
  }

  if (v34 == 1)
  {
    result = v31;
    v31 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        result = WTF::StringImpl::destroy(result, v7);
      }
    }
  }

  if ((*(a1 + 72) & 1) == 0)
  {
    goto LABEL_25;
  }

  return result;
}

void sub_19D8085F4(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, WTF::StringImpl *a16, uint64_t a17, WTF::StringImpl *a18, char a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, char a25)
{
  if (*(v25 + 72) == 1)
  {
    v27 = *(v25 + 56);
    *(v25 + 56) = 0;
    if (v27 && atomic_fetch_add_explicit(v27, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v27, a2);
    }

    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v25 + 40, a2);
    v29 = *v25;
    *v25 = 0;
    if (v29)
    {
      if (atomic_fetch_add_explicit(v29, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v29, v28);
      }
    }
  }

  _Unwind_Resume(exception_object);
}

WTF *WTF::Vector<WebCore::ApplicationManifest::Icon,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::ApplicationManifest::Icon>(unsigned int *a1, unint64_t a2)
{
  v3 = WTF::Vector<WebCore::ApplicationManifest::Icon,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(a1, a1[3] + 1, a2);
  v4 = *a1 + 72 * a1[3];
  WTF::URL::URL(v4, v3);
  *(v4 + 40) = 0;
  *(v4 + 48) = 0;
  result = WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt(v4 + 40, (v3 + 40));
  v6 = *(v3 + 56);
  *(v3 + 56) = 0;
  *(v4 + 56) = v6;
  *(v4 + 64) = *(v3 + 64);
  ++a1[3];
  return result;
}

void sub_19D8087A4(_Unwind_Exception *exception_object, void *a2)
{
  v5 = *v3;
  if (*v3)
  {
    *(v2 + 40) = 0;
    *(v2 + 48) = 0;
    WTF::fastFree(v5, a2);
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

unint64_t WTF::Vector<WebCore::ApplicationManifest::Icon,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(unsigned int *a1, unint64_t a2, unint64_t a3)
{
  v3 = a3;
  v5 = *a1;
  if (*a1 > a3 || v5 + 72 * a1[3] <= a3)
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

    WTF::Vector<WebCore::ApplicationManifest::Icon,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v12);
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

    WTF::Vector<WebCore::ApplicationManifest::Icon,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v9);
    return *a1 + v6;
  }

  return v3;
}

WTF::StringImpl *WTF::Vector<WebCore::ApplicationManifest::Icon,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(WTF::StringImpl *result, unint64_t a2)
{
  if (*(result + 2) < a2)
  {
    if (a2 >= 0x38E38E4)
    {
      __break(0xC471u);
    }

    else
    {
      v2 = result;
      v3 = *result;
      v4 = (*result + 72 * *(result + 3));
      v5 = 72 * a2;
      v6 = WTF::fastMalloc((72 * a2));
      *(v2 + 2) = v5 / 0x48;
      *v2 = v6;
      result = WTF::VectorMover<false,WebCore::ApplicationManifest::Icon>::move(v3, v4, v6);
      if (v3)
      {
        if (*v2 == v3)
        {
          *v2 = 0;
          *(v2 + 2) = 0;
        }

        return WTF::fastFree(v3, v7);
      }
    }
  }

  return result;
}

WTF::StringImpl *WTF::VectorMover<false,WebCore::ApplicationManifest::Icon>::move(WTF::StringImpl *result, WTF::StringImpl *a2, uint64_t a3)
{
  if (result != a2)
  {
    v5 = result;
    v6 = 0;
    do
    {
      v7 = v5 + v6;
      v8 = a3 + v6;
      WTF::URL::URL(a3 + v6, (v5 + v6));
      *(v9 + 40) = 0;
      *(v9 + 48) = 0;
      WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt(v9 + 40, (v5 + v6 + 40));
      v11 = *(v5 + v6 + 56);
      *(v7 + 7) = 0;
      *(v8 + 56) = v11;
      *(v8 + 64) = *(v5 + v6 + 64);
      v12 = *(v5 + v6 + 56);
      *(v7 + 7) = 0;
      if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v12, v10);
      }

      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector((v7 + 40), v10);
      result = *v7;
      *v7 = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          result = WTF::StringImpl::destroy(result, v13);
        }
      }

      v6 += 72;
    }

    while ((v5 + v6) != a2);
  }

  return result;
}

void sub_19D808A44(_Unwind_Exception *exception_object, void *a2)
{
  v6 = v3[5];
  if (v6)
  {
    v3[5] = 0;
    *(v2 + v4 + 48) = 0;
    WTF::fastFree(v6, a2);
  }

  v7 = *v3;
  *v3 = 0;
  if (v7)
  {
    if (atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v7, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

unsigned int *WTF::Vector<WebCore::ApplicationManifest::Icon,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(unsigned int *result, unint64_t this)
{
  if (result[2] > this)
  {
    v3 = result;
    v4 = result[3];
    if (v4 > this)
    {
      result = WTF::VectorTypeOperations<WebCore::ApplicationManifest::Icon>::destruct((*result + 72 * this), (*result + 72 * v4));
      *(v3 + 12) = this;
      LODWORD(v4) = this;
    }

    v5 = *v3;
    if (this)
    {
      if (this >= 0x38E38E4)
      {
        __break(0xC471u);
        return result;
      }

      v6 = (72 * this);
      result = WTF::fastMalloc(v6);
      *(v3 + 8) = v6 / 0x48;
      *v3 = result;
      if (result != v5)
      {
        result = WTF::VectorMover<false,WebCore::ApplicationManifest::Icon>::move(v5, (v5 + 72 * v4), result);
      }
    }

    if (v5)
    {
      if (*v3 == v5)
      {
        *v3 = 0;
        *(v3 + 8) = 0;
      }

      return WTF::fastFree(v5, this);
    }
  }

  return result;
}

uint64_t IPC::VectorArgumentCoder<false,WebCore::ApplicationManifest::Shortcut,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebCore::ApplicationManifest::Shortcut,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(IPC::Encoder *a1, uint64_t a2)
{
  result = IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *(a2 + 12));
  v5 = *(a2 + 12);
  if (v5)
  {
    v6 = *a2;
    v7 = v5 << 6;
    do
    {
      result = IPC::ArgumentCoder<WebCore::ApplicationManifest::Shortcut,void>::encode(a1, v6);
      v6 += 8;
      v7 -= 64;
    }

    while (v7);
  }

  return result;
}

uint64_t IPC::Decoder::decode<WebCore::ScreenOrientationLockType>(uint64_t *a1)
{
  result = IPC::ArgumentCoder<WebCore::ScreenOrientationLockType,void>::decode<IPC::Decoder>(a1);
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

uint64_t IPC::ArgumentCoder<WebCore::ScreenOrientationLockType,void>::decode<IPC::Decoder>(uint64_t *a1)
{
  v1 = a1[1];
  v2 = a1[2];
  v3 = *a1;
  if (v1 <= &v2[-*a1])
  {
    *a1 = 0;
    a1[1] = 0;
    v11 = a1;
    v9 = a1[3];
    if (v9)
    {
      if (v1)
      {
        (*(*v9 + 16))(v9);
        v3 = *v11;
        v1 = v11[1];
        goto LABEL_11;
      }
    }

    else
    {
      v1 = 0;
    }

    v3 = 0;
    goto LABEL_11;
  }

  a1[2] = (v2 + 1);
  if (v2)
  {
    v4 = *v2;
    v5 = 1;
    goto LABEL_4;
  }

  v11 = a1;
LABEL_11:
  *v11 = 0;
  v11[1] = 0;
  v10 = v11[3];
  if (v10 && v1)
  {
    (*(*v10 + 16))(v10, v3);
  }

  v4 = 0;
  v5 = 0;
LABEL_4:
  v6 = v4 < 8;
  v7 = v4 | 0x100;
  if ((v5 & v6) != 0)
  {
    return v7;
  }

  else
  {
    return 0;
  }
}

WTF::StringImpl *IPC::Decoder::decode<WebCore::ApplicationManifest::Shortcut>(uint64_t a1, IPC::Decoder *a2)
{
  IPC::Decoder::decode<WTF::String>(a2, &v27);
  IPC::Decoder::decode<WTF::URL>(a2, &v23);
  result = IPC::Decoder::decode<WTF::Vector<WebCore::ApplicationManifest::Icon,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(&v20, a2);
  if (!*a2)
  {
    goto LABEL_22;
  }

  if ((v28 & 1) == 0 || (v6 = v27, v27 = 0, (v26 & 1) == 0) || (v7 = v23, v23 = 0, v15 = v7, v16 = v24, v17 = v25, LODWORD(v24) = v24 & 0xFFFFFFFE, (v22 & 1) == 0))
  {
    __break(1u);
LABEL_22:
    *a1 = 0;
    *(a1 + 64) = 0;
    goto LABEL_9;
  }

  v8 = v20;
  v9 = v21;
  v20 = 0;
  v21 = 0;
  v19 = v9;
  v18 = v8;
  *a1 = v6;
  WTF::URL::URL(a1 + 8, &v15);
  *(a1 + 48) = v18;
  v10 = v19;
  v18 = 0;
  v19 = 0;
  *(a1 + 56) = v10;
  *(a1 + 64) = 1;
  WTF::Vector<WebCore::ApplicationManifest::Icon,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v18, v11);
  v12 = v15;
  v15 = 0;
  if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v12, v5);
  }

  result = 0;
LABEL_9:
  if (v22 == 1)
  {
    result = WTF::Vector<WebCore::ApplicationManifest::Icon,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v20, v5);
  }

  if (v26 == 1)
  {
    result = v23;
    v23 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        result = WTF::StringImpl::destroy(result, v5);
      }
    }
  }

  if (v28 == 1)
  {
    result = v27;
    v27 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        result = WTF::StringImpl::destroy(result, v5);
      }
    }
  }

  if ((*(a1 + 64) & 1) == 0)
  {
    v13 = *a2;
    v14 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    result = *(a2 + 3);
    if (result)
    {
      if (v14)
      {
        return (*(*result + 16))(result, v13);
      }
    }
  }

  return result;
}

void sub_19D808F48(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10, WTF::StringImpl *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, char a20, WTF::StringImpl *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  if (*(v26 + 64) == 1)
  {
    WTF::Vector<WebCore::ApplicationManifest::Icon,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v26 + 48, a2);
    v29 = *(v26 + 8);
    *(v26 + 8) = 0;
    if (v29 && atomic_fetch_add_explicit(v29, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v29, v28);
    }

    v30 = *v26;
    *v26 = 0;
    if (v30)
    {
      if (atomic_fetch_add_explicit(v30, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v30, v28);
      }
    }
  }

  _Unwind_Resume(exception_object);
}

WTF *WTF::Vector<WebCore::ApplicationManifest::Shortcut,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::ApplicationManifest::Shortcut>(unsigned int *a1, unint64_t a2)
{
  v3 = WTF::Vector<WebCore::ApplicationManifest::Shortcut,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(a1, a1[3] + 1, a2);
  v4 = (*a1 + (a1[3] << 6));
  v5 = *v3;
  *v3 = 0;
  *v4 = v5;
  WTF::URL::URL((v4 + 1), (v3 + 8));
  v4[6] = 0;
  v4[7] = 0;
  result = WTF::VectorBuffer<WebCore::HTTPHeaderField,0ul,WTF::FastMalloc>::adopt((v4 + 6), (v3 + 48));
  ++a1[3];
  return result;
}

void sub_19D80910C(_Unwind_Exception *exception_object, void *a2)
{
  v6 = *v3;
  if (*v3)
  {
    *(v4 + 48) = 0;
    *(v4 + 56) = 0;
    WTF::fastFree(v6, a2);
  }

  v7 = *v2;
  *v2 = 0;
  if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v7, a2);
  }

  v8 = *v4;
  *v4 = 0;
  if (v8)
  {
    if (atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v8, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

unint64_t WTF::Vector<WebCore::ApplicationManifest::Shortcut,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(unsigned int *a1, unint64_t a2, unint64_t a3)
{
  v3 = a3;
  v5 = *a1;
  if (*a1 > a3 || v5 + (a1[3] << 6) <= a3)
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

    WTF::Vector<WebCore::ApplicationManifest::Shortcut,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v12);
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

    WTF::Vector<WebCore::ApplicationManifest::Shortcut,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v9);
    return *a1 + v6;
  }

  return v3;
}

WTF::StringImpl *WTF::Vector<WebCore::ApplicationManifest::Shortcut,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(WTF::StringImpl *result, unint64_t a2)
{
  if (*(result + 2) < a2)
  {
    v2 = a2;
    if (a2 >> 26)
    {
      __break(0xC471u);
    }

    else
    {
      v3 = result;
      v4 = *result;
      v5 = (*result + (*(result + 3) << 6));
      v6 = WTF::fastMalloc((a2 << 6));
      *(v3 + 2) = v2;
      *v3 = v6;
      result = WTF::VectorMover<false,WebCore::ApplicationManifest::Shortcut>::move(v4, v5, v6);
      if (v4)
      {
        if (*v3 == v4)
        {
          *v3 = 0;
          *(v3 + 2) = 0;
        }

        return WTF::fastFree(v4, v7);
      }
    }
  }

  return result;
}

WTF::StringImpl *WTF::VectorMover<false,WebCore::ApplicationManifest::Shortcut>::move(WTF::StringImpl *result, WTF::StringImpl *a2, uint64_t a3)
{
  if (result != a2)
  {
    v5 = result;
    v6 = 0;
    do
    {
      v7 = a3 + v6;
      v8 = *(v5 + v6);
      *(v5 + v6) = 0;
      *(a3 + v6) = v8;
      WTF::URL::URL(a3 + v6 + 8, (v5 + v6 + 8));
      v9 = (v5 + v6 + 48);
      *(v7 + 48) = 0;
      *(v7 + 56) = 0;
      WTF::VectorBuffer<WebCore::HTTPHeaderField,0ul,WTF::FastMalloc>::adopt(a3 + v6 + 48, v9);
      WTF::Vector<WebCore::ApplicationManifest::Icon,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v9, v10);
      v12 = *(v5 + v6 + 8);
      *(v5 + v6 + 8) = 0;
      if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v12, v11);
      }

      result = *(v5 + v6);
      *(v5 + v6) = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          result = WTF::StringImpl::destroy(result, v11);
        }
      }

      v6 += 64;
    }

    while (v9 + 4 != a2);
  }

  return result;
}

void sub_19D8093AC(_Unwind_Exception *exception_object, WTF::StringImpl *a2)
{
  v5 = *(v2 + v3);
  *(v2 + v3) = 0;
  if (v5)
  {
    if (atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v5, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t WTF::Vector<WebCore::ApplicationManifest::Shortcut,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(uint64_t result, unint64_t a2)
{
  if (*(result + 8) > a2)
  {
    v3 = result;
    v4 = *(result + 12);
    if (v4 > a2)
    {
      result = WTF::VectorTypeOperations<WebCore::ApplicationManifest::Shortcut>::destruct((*result + (a2 << 6)), (*result + (v4 << 6)));
      *(v3 + 12) = a2;
      LODWORD(v4) = a2;
    }

    v5 = *v3;
    if (a2)
    {
      if (a2 >> 26)
      {
        __break(0xC471u);
        return result;
      }

      result = WTF::fastMalloc((a2 << 6));
      *(v3 + 8) = a2;
      *v3 = result;
      if (result != v5)
      {
        result = WTF::VectorMover<false,WebCore::ApplicationManifest::Shortcut>::move(v5, (v5 + 64 * v4), result);
      }
    }

    if (v5)
    {
      if (*v3 == v5)
      {
        *v3 = 0;
        *(v3 + 8) = 0;
      }

      return WTF::fastFree(v5, a2);
    }
  }

  return result;
}

unint64_t WTF::Vector<WebCore::ContactProperty,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v3 = a3;
  v5 = *a1;
  if (*a1 > a3 || v5 + *(a1 + 12) <= a3)
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

    WTF::Vector<WebCore::ContactProperty,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v12);
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

    WTF::Vector<WebCore::ContactProperty,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v9);
    return *a1 + v6;
  }

  return v3;
}

uint64_t WTF::Vector<WebCore::ContactProperty,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(uint64_t result, WTF *this)
{
  if (*(result + 8) >= this)
  {
    return 1;
  }

  v2 = this;
  if (!(this >> 32))
  {
    v3 = result;
    v4 = *result;
    v5 = *(result + 12);
    v6 = WTF::fastMalloc(this);
    *(v3 + 8) = v2;
    *v3 = v6;
    memcpy(v6, v4, v5);
    if (v4)
    {
      if (*v3 == v4)
      {
        *v3 = 0;
        *(v3 + 8) = 0;
      }

      WTF::fastFree(v4, v7);
    }

    return 1;
  }

  __break(0xC471u);
  return result;
}

unsigned int *WTF::Vector<WebCore::ContactProperty,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(unsigned int *result, void *a2)
{
  if (result[2] > a2)
  {
    v2 = result;
    if (result[3] > a2)
    {
      result[3] = a2;
    }

    result = *result;
    if (a2)
    {
      v2[2] = a2;
      result = WTF::fastRealloc(result, a2);
      *v2 = result;
    }

    else if (result)
    {
      *v2 = 0;
      v2[2] = 0;

      return WTF::fastFree(result, 0);
    }
  }

  return result;
}

uint64_t IPC::ArgumentCoder<std::optional<WebCore::ProcessQualified<WTF::UUID>>,void>::encode<IPC::Encoder,std::optional<WebCore::ProcessQualified<WTF::UUID>> const&>(IPC::Encoder *a1, uint64_t a2)
{
  if (*(a2 + 32))
  {
    v6 = 1;
    IPC::Encoder::operator<<<BOOL>(a1, &v6);
    if (*(a2 + 32))
    {
      IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *(a2 + 8));
      IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *a2);
      return IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *(a2 + 16));
    }

    else
    {
      v5 = std::__throw_bad_optional_access[abi:sn200100]();
      return IPC::ArgumentCoder<WebCore::NotificationDirection,void>::decode<IPC::Decoder>(v5);
    }
  }

  else
  {
    v7 = 0;
    return IPC::Encoder::operator<<<BOOL>(a1, &v7);
  }
}

uint64_t IPC::ArgumentCoder<WebCore::NotificationDirection,void>::decode<IPC::Decoder>(uint64_t *a1)
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
  if (v4 >= 3)
  {
LABEL_9:
    v4 = 0;
    v5 = 0;
    return v4 | (v5 << 8);
  }

  v5 = 1;
  return v4 | (v5 << 8);
}

uint64_t *IPC::ArgumentCoder<std::optional<WebCore::ProcessQualified<WTF::UUID>>,void>::decode<IPC::Decoder>@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = result;
  v16 = *MEMORY[0x1E69E9840];
  v4 = result[1];
  v5 = result[2];
  v6 = *result;
  if (v4 <= &v5[-*result])
  {
    *result = 0;
    result[1] = 0;
    v12 = result[3];
    if (v12)
    {
      if (v4)
      {
        (*(*v12 + 16))(v12);
        v4 = v2[1];
      }
    }

    else
    {
      v4 = 0;
    }

LABEL_15:
    *v2 = 0;
    v2[1] = 0;
    v13 = v2[3];
    if (v13)
    {
      if (v4)
      {
        (*(*v13 + 16))(v13);
        v6 = *v2;
        v4 = v2[1];
        goto LABEL_18;
      }
    }

    else
    {
      v4 = 0;
    }

    v6 = 0;
    goto LABEL_18;
  }

  result[2] = (v5 + 1);
  if (!v5)
  {
    goto LABEL_15;
  }

  v7 = *v5;
  if (v7 < 2)
  {
    if (v7)
    {
      result = IPC::ArgumentCoder<WebCore::ProcessQualified<WTF::UUID>,void>::decode(result, v14);
      if (v15)
      {
        v8 = v14[1];
        *a2 = v14[0];
        *(a2 + 16) = v8;
        v9 = 1;
        *(a2 + 32) = 1;
      }

      else
      {
        v10 = *v2;
        v11 = v2[1];
        *v2 = 0;
        v2[1] = 0;
        result = v2[3];
        if (result)
        {
          if (v11)
          {
            result = (*(*result + 16))(result, v10);
          }
        }

        v9 = 0;
        *a2 = 0;
      }
    }

    else
    {
      *a2 = 0;
      *(a2 + 32) = 0;
      v9 = 1;
    }

    *(a2 + 48) = v9;
    return result;
  }

LABEL_18:
  *v2 = 0;
  v2[1] = 0;
  result = v2[3];
  if (result && v4)
  {
    result = (*(*result + 16))(result, v6);
  }

  *a2 = 0;
  *(a2 + 48) = 0;
  return result;
}

uint64_t IPC::ArgumentCoder<WebCore::PermissionName,void>::decode<IPC::Decoder>(uint64_t *a1)
{
  v1 = a1[1];
  v2 = a1[2];
  v3 = *a1;
  if (v1 <= &v2[-*a1])
  {
    *a1 = 0;
    a1[1] = 0;
    v11 = a1;
    v9 = a1[3];
    if (v9)
    {
      if (v1)
      {
        (*(*v9 + 16))(v9);
        v3 = *v11;
        v1 = v11[1];
        goto LABEL_11;
      }
    }

    else
    {
      v1 = 0;
    }

    v3 = 0;
    goto LABEL_11;
  }

  a1[2] = (v2 + 1);
  if (v2)
  {
    v4 = *v2;
    v5 = 1;
    goto LABEL_4;
  }

  v11 = a1;
LABEL_11:
  *v11 = 0;
  v11[1] = 0;
  v10 = v11[3];
  if (v10 && v1)
  {
    (*(*v10 + 16))(v10, v3);
  }

  v4 = 0;
  v5 = 0;
LABEL_4:
  v6 = v4 < 0xF;
  v7 = v4 | 0x100;
  if ((v5 & v6) != 0)
  {
    return v7;
  }

  else
  {
    return 0;
  }
}

uint64_t IPC::ArgumentCoder<WTF::Markable<WTF::ObjectIdentifierGeneric<WebCore::PushSubscriptionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::MarkableTraits<WTF::ObjectIdentifierGeneric<WebCore::PushSubscriptionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,void>::encode<IPC::Encoder,WTF::Markable<WTF::ObjectIdentifierGeneric<WebCore::PushSubscriptionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::MarkableTraits<WTF::ObjectIdentifierGeneric<WebCore::PushSubscriptionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>> const&>(IPC::Encoder *a1, uint64_t *a2)
{
  v4 = *a2;
  result = IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *a2 == 0);
  if (v4)
  {
    v6 = *a2;
    if (*a2)
    {

      return IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, v6);
    }

    else
    {
      result = 157;
      __break(0xC471u);
    }
  }

  return result;
}

void *IPC::ArgumentCoder<WTF::RefPtr<WebCore::ReportBody,WTF::RawPtrTraits<WebCore::ReportBody>,WTF::DefaultRefDerefTraits<WebCore::ReportBody>>,void>::encode<IPC::Encoder,WebCore::ReportBody>(IPC::Encoder *a1, uint64_t *a2)
{
  if (*a2)
  {
    v6 = 1;
    v3 = IPC::Encoder::operator<<<BOOL>(a1, &v6);
    return IPC::ArgumentCoder<WebCore::ReportBody,void>::encode(v3, *a2);
  }

  else
  {
    v5 = 0;
    return IPC::Encoder::operator<<<BOOL>(a1, &v5);
  }
}

uint64_t IPC::VectorArgumentCoder<false,WebCore::SpeechRecognitionAlternativeData,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebCore::SpeechRecognitionAlternativeData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(IPC::Encoder *a1, uint64_t *a2)
{
  result = IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *(a2 + 3));
  v5 = *(a2 + 3);
  if (v5)
  {
    v6 = *a2;
    v7 = v6 + 16 * v5;
    do
    {
      IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, v6);
      result = IPC::ArgumentCoder<double,void>::encode<IPC::Encoder>(a1, *(v6 + 8));
      v6 += 16;
    }

    while (v6 != v7);
  }

  return result;
}

uint64_t IPC::Decoder::decode<WebCore::SpeechRecognitionAlternativeData>(uint64_t a1, IPC::Decoder *a2)
{
  IPC::Decoder::decode<WTF::String>(a2, &v9);
  result = IPC::Decoder::decode<unsigned long long>(a2);
  if (*a2)
  {
    if (v10 & 1) != 0 && (v5)
    {
      *a1 = v9;
      *(a1 + 8) = result;
      *(a1 + 16) = 1;
      return result;
    }

    __break(1u);
  }

  *a1 = 0;
  *(a1 + 16) = 0;
  if (v10)
  {
    v6 = v9;
    v9 = 0;
    if (v6)
    {
      if (atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v6, v5);
      }
    }
  }

  v7 = *(a2 + 1);
  *a2 = 0;
  *(a2 + 1) = 0;
  result = *(a2 + 3);
  if (result && v7)
  {
    v8 = *(*result + 16);

    return v8();
  }

  return result;
}

void sub_19D809D28(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, char a10)
{
  if ((a10 & 1) != 0 && a9 && atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a9, a2);
  }

  _Unwind_Resume(exception_object);
}

unint64_t WTF::Vector<WebCore::SpeechRecognitionAlternativeData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(unsigned int *a1, unint64_t a2, unint64_t a3)
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

    WTF::Vector<WebCore::SpeechRecognitionAlternativeData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v12);
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

    WTF::Vector<WebCore::SpeechRecognitionAlternativeData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v9);
    return *a1 + v6;
  }

  return v3;
}

WTF::StringImpl *WTF::Vector<WebCore::SpeechRecognitionAlternativeData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(WTF::StringImpl *result, unint64_t a2)
{
  if (*(result + 2) < a2)
  {
    v2 = a2;
    if (a2 >> 28)
    {
      __break(0xC471u);
      JUMPOUT(0x19D809EBCLL);
    }

    v3 = result;
    v4 = *result;
    v5 = (*result + 16 * *(result + 3));
    v6 = WTF::fastMalloc((16 * a2));
    *(v3 + 2) = v2;
    *v3 = v6;
    result = WTF::VectorTypeOperations<WebCore::SpeechRecognitionAlternativeData>::move(v4, v5, v6);
    if (v4)
    {
      if (*v3 == v4)
      {
        *v3 = 0;
        *(v3 + 2) = 0;
      }

      return WTF::fastFree(v4, v7);
    }
  }

  return result;
}

WTF::StringImpl *WTF::VectorTypeOperations<WebCore::SpeechRecognitionAlternativeData>::move(WTF::StringImpl *result, WTF::StringImpl *a2, WTF::StringImpl **a3)
{
  if (result != a2)
  {
    v5 = result;
    do
    {
      v6 = *v5;
      *v5 = 0;
      *a3 = v6;
      a3[1] = v5[1];
      result = *v5;
      *v5 = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          result = WTF::StringImpl::destroy(result, a2);
        }
      }

      a3 += 2;
      v5 += 2;
    }

    while (v5 != a2);
  }

  return result;
}

uint64_t IPC::VectorArgumentCoder<false,WebCore::WebLockManagerSnapshot::Info,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebCore::WebLockManagerSnapshot::Info,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(IPC::Encoder *a1, uint64_t a2)
{
  result = IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *(a2 + 12));
  v5 = *(a2 + 12);
  if (v5)
  {
    v6 = *a2;
    v7 = 24 * v5;
    do
    {
      result = IPC::ArgumentCoder<WebCore::WebLockManagerSnapshot::Info,void>::encode(a1, v6);
      v6 += 24;
      v7 -= 24;
    }

    while (v7);
  }

  return result;
}

WTF::StringImpl *IPC::VectorArgumentCoder<false,WebCore::WebLockManagerSnapshot::Info,0ul,WTF::CrashOnOverflow,16ul>::decode<IPC::Decoder>@<X0>(WTF::StringImpl **a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[1];
  v5 = ((a1[2] + 7) & 0xFFFFFFFFFFFFFFF8);
  v6 = *a1;
  v7 = (v5 - *a1);
  v8 = v4 >= v7;
  v9 = v4 - v7;
  if (!v8 || v9 <= 7)
  {
    *a1 = 0;
    a1[1] = 0;
    v29 = a1[3];
    if (v29)
    {
      if (v4)
      {
        (*(*v29 + 16))(v29);
        v4 = a1[1];
      }
    }

    else
    {
      v4 = 0;
    }

    goto LABEL_48;
  }

  a1[2] = (v5 + 1);
  if (!v5)
  {
LABEL_48:
    *a1 = 0;
    a1[1] = 0;
    result = a1[3];
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
  v34 = 0;
  v35 = 0;
  if (v11 < 0xAAAA)
  {
    if (v11)
    {
      LODWORD(v35) = 24 * v11 / 0x18u;
      v34 = WTF::fastMalloc((24 * v11));
      while (1)
      {
        IPC::Decoder::decode<WebCore::WebLockManagerSnapshot::Info>(&v30, a1);
        if ((v33 & 1) == 0)
        {
          goto LABEL_44;
        }

        if (HIDWORD(v35) != v35)
        {
          break;
        }

        WTF::Vector<WebCore::WebLockManagerSnapshot::Info,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::WebLockManagerSnapshot::Info>(&v34, &v30);
        if (v33)
        {
          goto LABEL_15;
        }

LABEL_21:
        if (!--v11)
        {
          goto LABEL_22;
        }
      }

      v12 = HIDWORD(v35) + 1;
      v13 = v34 + 24 * HIDWORD(v35);
      v14 = v30;
      v30 = 0;
      *v13 = v14;
      v13[8] = v31;
      v15 = v32;
      v32 = 0;
      *(v13 + 2) = v15;
      HIDWORD(v35) = v12;
LABEL_15:
      v16 = v32;
      v32 = 0;
      if (v16 && atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v16, v6);
      }

      v17 = v30;
      v30 = 0;
      if (v17 && atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v17, v6);
      }

      goto LABEL_21;
    }

LABEL_22:
    *a2 = v34;
    v18 = v35;
    v34 = 0;
    v35 = 0;
    *(a2 + 8) = v18;
    *(a2 + 16) = 1;
    return WTF::Vector<WebCore::WebLockManagerSnapshot::Info,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v34, v6);
  }

  do
  {
    IPC::Decoder::decode<WebCore::WebLockManagerSnapshot::Info>(&v30, a1);
    if ((v33 & 1) == 0)
    {
LABEL_44:
      *a2 = 0;
      *(a2 + 16) = 0;
      return WTF::Vector<WebCore::WebLockManagerSnapshot::Info,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v34, v6);
    }

    if (HIDWORD(v35) == v35)
    {
      result = WTF::Vector<WebCore::WebLockManagerSnapshot::Info,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::WebLockManagerSnapshot::Info>(&v34, &v30);
      if ((v33 & 1) == 0)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v20 = HIDWORD(v35) + 1;
      v21 = v34 + 24 * HIDWORD(v35);
      v22 = v30;
      v30 = 0;
      *v21 = v22;
      v21[8] = v31;
      v23 = v32;
      v32 = 0;
      *(v21 + 2) = v23;
      HIDWORD(v35) = v20;
    }

    v24 = v32;
    v32 = 0;
    if (v24 && atomic_fetch_add_explicit(v24, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v24, v6);
    }

    result = v30;
    v30 = 0;
    if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      result = WTF::StringImpl::destroy(result, v6);
    }

LABEL_34:
    --v11;
  }

  while (v11);
  v25 = HIDWORD(v35);
  if (v35 <= HIDWORD(v35))
  {
    goto LABEL_22;
  }

  v26 = v34;
  if (!HIDWORD(v35))
  {
LABEL_40:
    if (v26)
    {
      if (v34 == v26)
      {
        v34 = 0;
        LODWORD(v35) = 0;
      }

      WTF::fastFree(v26, v6);
    }

    goto LABEL_22;
  }

  if (HIDWORD(v35) < 0xAAAAAAB)
  {
    v27 = 24 * HIDWORD(v35);
    v28 = WTF::fastMalloc((24 * HIDWORD(v35)));
    LODWORD(v35) = v27 / 0x18;
    v34 = v28;
    if (v28 != v26)
    {
      WTF::VectorMover<false,WebCore::WebLockManagerSnapshot::Info>::move(v26, (v26 + 24 * v25), v28);
    }

    goto LABEL_40;
  }

  __break(0xC471u);
  return result;
}

void sub_19D80A2FC(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, uint64_t a10, WTF::StringImpl *a11, char a12, int a13, __int16 a14, char a15, char a16)
{
  if (a12 == 1)
  {
    if (a11 && atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a11, a2);
    }

    if (a9)
    {
      if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(a9, a2);
      }
    }
  }

  WTF::Vector<WebCore::WebLockManagerSnapshot::Info,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&a14, a2);
  _Unwind_Resume(a1);
}

WTF::StringImpl *IPC::Decoder::decode<WebCore::WebLockManagerSnapshot::Info>(uint64_t a1, IPC::Decoder *a2)
{
  IPC::Decoder::decode<WTF::String>(a2, &v14);
  v4 = IPC::Decoder::decode<WebKit::ColorControlSupportsAlpha>(a2);
  result = IPC::Decoder::decode<WTF::String>(a2, &v12);
  v7 = *a2;
  if (*a2)
  {
    if (v15)
    {
      v8 = v14;
      v14 = 0;
      if (v4 & 0x100) != 0 && (v13)
      {
        v9 = v12;
        *a1 = v8;
        *(a1 + 8) = v4;
        *(a1 + 16) = v9;
        *(a1 + 24) = 1;
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  *a1 = 0;
  *(a1 + 24) = 0;
  if (v13)
  {
    result = v12;
    v12 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        result = WTF::StringImpl::destroy(result, v6);
      }
    }
  }

LABEL_6:
  if (v15 == 1 && (result = v14, v14 = 0, result) && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    result = WTF::StringImpl::destroy(result, v6);
    if (v7)
    {
      return result;
    }
  }

  else if (v7)
  {
    return result;
  }

  v10 = *(a2 + 1);
  *a2 = 0;
  *(a2 + 1) = 0;
  result = *(a2 + 3);
  if (result && v10)
  {
    v11 = *(*result + 16);

    return v11();
  }

  return result;
}

void sub_19D80A4C8(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11, char a12)
{
  if (a12 == 1 && a11 && atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a11, a2);
  }

  _Unwind_Resume(exception_object);
}

unint64_t WTF::Vector<WebCore::WebLockManagerSnapshot::Info,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::WebLockManagerSnapshot::Info>(unsigned int *a1, unint64_t a2)
{
  result = WTF::Vector<WebCore::WebLockManagerSnapshot::Info,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(a1, a1[3] + 1, a2);
  v4 = a1[3];
  v5 = v4 + 1;
  v6 = *a1 + 24 * v4;
  v7 = *result;
  *result = 0;
  *v6 = v7;
  *(v6 + 8) = *(result + 8);
  v8 = *(result + 16);
  *(result + 16) = 0;
  *(v6 + 16) = v8;
  a1[3] = v5;
  return result;
}

unint64_t WTF::Vector<WebCore::WebLockManagerSnapshot::Info,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(unsigned int *a1, unint64_t a2, unint64_t a3)
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

    WTF::Vector<WebCore::WebLockManagerSnapshot::Info,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v12);
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

    WTF::Vector<WebCore::WebLockManagerSnapshot::Info,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v9);
    return *a1 + v6;
  }

  return v3;
}

WTF::StringImpl *WTF::Vector<WebCore::WebLockManagerSnapshot::Info,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(WTF::StringImpl *result, unint64_t a2)
{
  if (*(result + 2) < a2)
  {
    if (a2 >= 0xAAAAAAB)
    {
      __break(0xC471u);
      JUMPOUT(0x19D80A6F4);
    }

    v2 = result;
    v3 = *result;
    v4 = (*result + 24 * *(result + 3));
    v5 = 24 * a2;
    v6 = WTF::fastMalloc((24 * a2));
    *(v2 + 2) = v5 / 0x18;
    *v2 = v6;
    result = WTF::VectorMover<false,WebCore::WebLockManagerSnapshot::Info>::move(v3, v4, v6);
    if (v3)
    {
      if (*v2 == v3)
      {
        *v2 = 0;
        *(v2 + 2) = 0;
      }

      return WTF::fastFree(v3, v7);
    }
  }

  return result;
}

WTF::StringImpl *WTF::VectorMover<false,WebCore::WebLockManagerSnapshot::Info>::move(WTF::StringImpl *result, WTF::StringImpl *a2, uint64_t a3)
{
  if (result != a2)
  {
    v5 = result;
    do
    {
      v6 = *v5;
      *v5 = 0;
      *a3 = v6;
      *(a3 + 8) = *(v5 + 8);
      v7 = *(v5 + 2);
      *(v5 + 2) = 0;
      *(a3 + 16) = v7;
      v8 = *(v5 + 2);
      *(v5 + 2) = 0;
      if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v8, a2);
      }

      result = *v5;
      *v5 = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          result = WTF::StringImpl::destroy(result, a2);
        }
      }

      a3 += 24;
      v5 = (v5 + 24);
    }

    while (v5 != a2);
  }

  return result;
}

uint64_t IPC::ArgumentCoder<WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>,void>::encode<IPC::Encoder,JSC::ArrayBuffer>(IPC::Encoder *a1, JSC::ArrayBuffer **a2)
{
  if (*a2)
  {
    v6 = 1;
    v3 = IPC::Encoder::operator<<<BOOL>(a1, &v6);
    return IPC::ArgumentCoder<JSC::ArrayBuffer,void>::encode(v3, *a2);
  }

  else
  {
    v5 = 0;
    return IPC::Encoder::operator<<<BOOL>(a1, &v5);
  }
}

uint64_t IPC::ArgumentCoder<std::optional<WebCore::AuthenticationExtensionsClientOutputs>,void>::encode<IPC::Encoder,std::optional<WebCore::AuthenticationExtensionsClientOutputs> const&>(IPC::Encoder *a1, char *a2)
{
  if (a2[80])
  {
    v6 = 1;
    IPC::Encoder::operator<<<BOOL>(a1, &v6);
    if (a2[80])
    {
      return IPC::ArgumentCoder<WebCore::AuthenticationExtensionsClientOutputs,void>::encode(a1, a2);
    }

    else
    {
      v5 = std::__throw_bad_optional_access[abi:sn200100]();
      return IPC::Decoder::decode<WebCore::AuthenticatorTransport>(v5);
    }
  }

  else
  {
    v7 = 0;
    return IPC::Encoder::operator<<<BOOL>(a1, &v7);
  }
}

uint64_t IPC::Decoder::decode<WebCore::AuthenticatorTransport>(void *a1)
{
  v1 = a1[1];
  v2 = a1[2];
  v3 = *a1;
  if (v1 <= &v2[-*a1])
  {
    *a1 = 0;
    a1[1] = 0;
    v8 = a1;
    v6 = a1[3];
    if (v6)
    {
      if (v1)
      {
        (*(*v6 + 16))(v6);
        v3 = *v8;
        v1 = v8[1];
LABEL_9:
        *v8 = 0;
        v8[1] = 0;
        v7 = v8[3];
        if (v7)
        {
          if (v1)
          {
            (*(*v7 + 16))(v7, v3);
            a1 = v8;
            v3 = *v8;
            v1 = v8[1];
            goto LABEL_12;
          }
        }

        else
        {
          v1 = 0;
        }

        v3 = 0;
        a1 = v8;
        goto LABEL_12;
      }
    }

    else
    {
      v1 = 0;
    }

    v3 = 0;
    goto LABEL_9;
  }

  a1[2] = v2 + 1;
  if (!v2)
  {
    v8 = a1;
    goto LABEL_9;
  }

  v4 = *v2;
  if (v4 < 7)
  {
    return v4 | 0x100;
  }

LABEL_12:
  *a1 = 0;
  a1[1] = 0;
  result = a1[3];
  if (result)
  {
    if (v1)
    {
      (*(*result + 16))(result, v3);
    }

    return 0;
  }

  return result;
}

unint64_t WTF::Vector<WebCore::AuthenticatorTransport,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v3 = a3;
  v5 = *a1;
  if (*a1 > a3 || v5 + *(a1 + 12) <= a3)
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

    WTF::Vector<WebCore::AuthenticatorTransport,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v12);
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

    WTF::Vector<WebCore::AuthenticatorTransport,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v9);
    return *a1 + v6;
  }

  return v3;
}

mpark *IPC::ArgumentCoder<mpark::variant<decltype(nullptr),WebCore::AuthenticatorResponseBaseData,WebCore::AuthenticatorAttestationResponseData,WebCore::AuthenticatorAssertionResponseData>,void>::encode<IPC::Encoder,mpark::variant<decltype(nullptr),WebCore::AuthenticatorResponseBaseData,WebCore::AuthenticatorAttestationResponseData,WebCore::AuthenticatorAssertionResponseData>>(mpark *result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {

    return IPC::ArgumentCoder<mpark::variant<decltype(nullptr),WebCore::AuthenticatorResponseBaseData,WebCore::AuthenticatorAttestationResponseData,WebCore::AuthenticatorAssertionResponseData>,void>::encode<IPC::Encoder,mpark::variant<decltype(nullptr),WebCore::AuthenticatorResponseBaseData,WebCore::AuthenticatorAttestationResponseData,WebCore::AuthenticatorAssertionResponseData>,0ul>(result, a2, a3);
  }

  else if (*(a2 + 128))
  {
    mpark::throw_bad_variant_access(result);
  }

  return result;
}

mpark *IPC::ArgumentCoder<mpark::variant<decltype(nullptr),WebCore::AuthenticatorResponseBaseData,WebCore::AuthenticatorAttestationResponseData,WebCore::AuthenticatorAssertionResponseData>,void>::encode<IPC::Encoder,mpark::variant<decltype(nullptr),WebCore::AuthenticatorResponseBaseData,WebCore::AuthenticatorAttestationResponseData,WebCore::AuthenticatorAssertionResponseData>,0ul>(mpark *this, uint64_t a2, uint64_t a3)
{
  if (a3 == 1)
  {
    if (*(a2 + 128) != 1)
    {
      mpark::throw_bad_variant_access(this);
    }

    IPC::ArgumentCoder<WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>,void>::encode<IPC::Encoder,JSC::ArrayBuffer>(this, a2);

    return IPC::ArgumentCoder<std::optional<WebCore::AuthenticationExtensionsClientOutputs>,void>::encode<IPC::Encoder,std::optional<WebCore::AuthenticationExtensionsClientOutputs> const&>(this, (a2 + 8));
  }

  else
  {

    return IPC::ArgumentCoder<mpark::variant<decltype(nullptr),WebCore::AuthenticatorResponseBaseData,WebCore::AuthenticatorAttestationResponseData,WebCore::AuthenticatorAssertionResponseData>,void>::encode<IPC::Encoder,mpark::variant<decltype(nullptr),WebCore::AuthenticatorResponseBaseData,WebCore::AuthenticatorAttestationResponseData,WebCore::AuthenticatorAssertionResponseData>,0ul,1ul>(this, a2, a3);
  }
}

mpark *IPC::ArgumentCoder<mpark::variant<decltype(nullptr),WebCore::AuthenticatorResponseBaseData,WebCore::AuthenticatorAttestationResponseData,WebCore::AuthenticatorAssertionResponseData>,void>::encode<IPC::Encoder,mpark::variant<decltype(nullptr),WebCore::AuthenticatorResponseBaseData,WebCore::AuthenticatorAttestationResponseData,WebCore::AuthenticatorAssertionResponseData>,0ul,1ul>(mpark *a1, uint64_t a2, uint64_t a3)
{
  if (a3 == 2)
  {
    if (*(a2 + 128) != 2)
    {
      mpark::throw_bad_variant_access(a1);
    }

    return IPC::ArgumentCoder<WebCore::AuthenticatorAttestationResponseData,void>::encode(a1, a2);
  }

  else
  {

    return IPC::ArgumentCoder<mpark::variant<decltype(nullptr),WebCore::AuthenticatorResponseBaseData,WebCore::AuthenticatorAttestationResponseData,WebCore::AuthenticatorAssertionResponseData>,void>::encode<IPC::Encoder,mpark::variant<decltype(nullptr),WebCore::AuthenticatorResponseBaseData,WebCore::AuthenticatorAttestationResponseData,WebCore::AuthenticatorAssertionResponseData>,0ul,1ul,2ul>(a1, a2, a3);
  }
}

mpark *IPC::ArgumentCoder<mpark::variant<decltype(nullptr),WebCore::AuthenticatorResponseBaseData,WebCore::AuthenticatorAttestationResponseData,WebCore::AuthenticatorAssertionResponseData>,void>::encode<IPC::Encoder,mpark::variant<decltype(nullptr),WebCore::AuthenticatorResponseBaseData,WebCore::AuthenticatorAttestationResponseData,WebCore::AuthenticatorAssertionResponseData>,0ul,1ul,2ul>(mpark *result, uint64_t a2, uint64_t a3)
{
  if (a3 == 3)
  {
    if (*(a2 + 128) != 3)
    {
      mpark::throw_bad_variant_access(result);
    }

    return IPC::ArgumentCoder<WebCore::AuthenticatorAssertionResponseData,void>::encode(result, a2);
  }

  return result;
}

void IPC::ArgumentCoder<mpark::variant<decltype(nullptr),WebCore::AuthenticatorResponseBaseData,WebCore::AuthenticatorAttestationResponseData,WebCore::AuthenticatorAssertionResponseData>,void>::decode<IPC::Decoder>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 1);
  v5 = *(a1 + 2);
  if (v4 <= &v5[-*a1])
  {
    *a1 = 0;
    *(a1 + 1) = 0;
    v63 = *(a1 + 3);
    if (v63)
    {
      if (v4)
      {
        (*(*v63 + 16))(v63);
        v4 = *(a1 + 1);
      }
    }

    else
    {
      v4 = 0;
    }

    goto LABEL_162;
  }

  *(a1 + 2) = v5 + 1;
  if (!v5)
  {
LABEL_162:
    *a1 = 0;
    *(a1 + 1) = 0;
    v64 = *(a1 + 3);
    if (v64 && v4)
    {
      (*(*v64 + 16))(v64);
    }

    goto LABEL_4;
  }

  v6 = *v5;
  if (v6 >= 4)
  {
LABEL_4:
    *a2 = 0;
    *(a2 + 136) = 0;
    return;
  }

  if (!v6)
  {
    *a2 = 0;
    *(a2 + 128) = 0;
    *(a2 + 136) = 1;
    return;
  }

  if (v6 != 1)
  {
    if (v6 != 2)
    {
      IPC::Decoder::decode<WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>>(&v65, a1);
      IPC::Decoder::decode<std::optional<WebCore::AuthenticationExtensionsClientOutputs>>(&v102, a1);
      IPC::Decoder::decode<WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>>(&v100, a1);
      IPC::Decoder::decode<WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>>(&v98, a1);
      IPC::Decoder::decode<WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>>(&v96, a1);
      IPC::Decoder::decode<WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>>(&v94, a1);
      if (*a1)
      {
        if ((v66 & 1) == 0)
        {
          goto LABEL_140;
        }

        v41 = v65;
        v65 = 0;
        v80 = v41;
        if ((v113 & 1) == 0)
        {
          goto LABEL_140;
        }

        std::__optional_move_base<WebCore::AuthenticationExtensionsClientOutputs,false>::__optional_move_base[abi:sn200100](&v81, &v102);
        if ((v101 & 1) == 0)
        {
          goto LABEL_140;
        }

        v42 = v100;
        v100 = 0;
        *&v92 = v42;
        if ((v99 & 1) == 0)
        {
          goto LABEL_140;
        }

        v43 = v98;
        v98 = 0;
        *(&v92 + 1) = v43;
        if ((v97 & 1) == 0)
        {
          goto LABEL_140;
        }

        v44 = v96;
        v96 = 0;
        v93[0] = v44;
        if ((v95 & 1) == 0)
        {
          goto LABEL_140;
        }

        v45 = v94;
        v94 = 0;
        v46 = v80;
        v93[1] = v45;
        v80 = 0;
        v68 = v46;
        std::__optional_move_base<WebCore::AuthenticationExtensionsClientOutputs,false>::__optional_move_base[abi:sn200100](v69, &v81);
        v47 = *v93;
        v77 = v92;
        v92 = 0u;
        *v93 = 0u;
        v78 = v47;
        v79 = 1;
        WebCore::AuthenticatorAssertionResponseData::~AuthenticatorAssertionResponseData(&v80);
      }

      else
      {
        LOBYTE(v68) = 0;
        v79 = 0;
        if ((v95 & 1) != 0 && v94)
        {
          WTF::DeferrableRefCounted<JSC::ArrayBuffer>::deref(v94);
        }
      }

      if (v97 == 1 && v96)
      {
        WTF::DeferrableRefCounted<JSC::ArrayBuffer>::deref(v96);
      }

      if (v99 == 1 && v98)
      {
        WTF::DeferrableRefCounted<JSC::ArrayBuffer>::deref(v98);
      }

      if (v101 == 1 && v100)
      {
        WTF::DeferrableRefCounted<JSC::ArrayBuffer>::deref(v100);
      }

      if (v113 == 1 && v112 == 1)
      {
        if (v111 == 1 && v110 == 1)
        {
          v48 = v109;
          v109 = 0;
          if (v48)
          {
            WTF::DeferrableRefCounted<JSC::ArrayBuffer>::deref(v48);
          }

          v49 = v108;
          v108 = 0;
          if (v49)
          {
            WTF::DeferrableRefCounted<JSC::ArrayBuffer>::deref(v49);
          }
        }

        if (v106 == 1)
        {
          v50 = v104;
          v104 = 0;
          if (v50)
          {
            WTF::DeferrableRefCounted<JSC::ArrayBuffer>::deref(v50);
          }
        }
      }

      if (v66 == 1 && v65)
      {
        WTF::DeferrableRefCounted<JSC::ArrayBuffer>::deref(v65);
      }

      if ((v79 & 1) == 0)
      {
        v60 = *a1;
        v61 = *(a1 + 1);
        *a1 = 0;
        *(a1 + 1) = 0;
        v62 = *(a1 + 3);
        if (!v62)
        {
          goto LABEL_4;
        }

        if (!v61)
        {
          goto LABEL_4;
        }

        (*(*v62 + 16))(v62, v60);
        if ((v79 & 1) == 0)
        {
          goto LABEL_4;
        }
      }

      v51 = v68;
      v68 = 0;
      *a2 = v51;
      std::__optional_move_base<WebCore::AuthenticationExtensionsClientOutputs,false>::__optional_move_base[abi:sn200100](a2 + 8, v69);
      v52 = v77;
      v77 = 0u;
      v53 = v78;
      v78 = 0u;
      *(a2 + 96) = v52;
      *(a2 + 112) = v53;
      *(a2 + 128) = 3;
      *(a2 + 136) = 1;
      if (v79)
      {
        WebCore::AuthenticatorAssertionResponseData::~AuthenticatorAssertionResponseData(&v68);
      }

      return;
    }

    IPC::Decoder::decode<WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>>(&v100, a1);
    IPC::Decoder::decode<std::optional<WebCore::AuthenticationExtensionsClientOutputs>>(&v102, a1);
    IPC::Decoder::decode<WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>>(&v98, a1);
    IPC::Decoder::decode<WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>>(&v96, a1);
    IPC::Decoder::decode<WTF::Vector<WebCore::AuthenticatorTransport,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(&v65, a1);
    if (*a1)
    {
      if ((v101 & 1) == 0)
      {
        goto LABEL_140;
      }

      v18 = v100;
      v100 = 0;
      v80 = v18;
      if ((v113 & 1) == 0)
      {
        goto LABEL_140;
      }

      std::__optional_move_base<WebCore::AuthenticationExtensionsClientOutputs,false>::__optional_move_base[abi:sn200100](&v81, &v102);
      if ((v99 & 1) == 0)
      {
        goto LABEL_140;
      }

      v19 = v98;
      v98 = 0;
      *&v92 = v19;
      if ((v97 & 1) == 0)
      {
        goto LABEL_140;
      }

      v20 = v96;
      v96 = 0;
      *(&v92 + 1) = v20;
      if ((v67 & 1) == 0)
      {
        goto LABEL_140;
      }

      v93[0] = v65;
      v21 = v66;
      v65 = 0;
      v66 = 0;
      v93[1] = v21;
      WebCore::AuthenticatorAttestationResponseData::AuthenticatorAttestationResponseData(&v68, &v80);
      v79 = 1;
      v23 = v93[0];
      if (v93[0])
      {
        v93[0] = 0;
        LODWORD(v93[1]) = 0;
        WTF::fastFree(v23, v22);
      }

      v24 = *(&v92 + 1);
      *(&v92 + 1) = 0;
      if (v24)
      {
        WTF::DeferrableRefCounted<JSC::ArrayBuffer>::deref(v24);
      }

      v25 = v92;
      *&v92 = 0;
      if (v25)
      {
        WTF::DeferrableRefCounted<JSC::ArrayBuffer>::deref(v25);
      }

      if (v91 == 1)
      {
        if (v90 == 1 && v89 == 1)
        {
          v26 = v88;
          v88 = 0;
          if (v26)
          {
            WTF::DeferrableRefCounted<JSC::ArrayBuffer>::deref(v26);
          }

          v27 = v87;
          v87 = 0;
          if (v27)
          {
            WTF::DeferrableRefCounted<JSC::ArrayBuffer>::deref(v27);
          }
        }

        if (v85 == 1)
        {
          v28 = v83;
          v83 = 0;
          if (v28)
          {
            WTF::DeferrableRefCounted<JSC::ArrayBuffer>::deref(v28);
          }
        }
      }

      v29 = v80;
      v80 = 0;
      if (v29)
      {
        WTF::DeferrableRefCounted<JSC::ArrayBuffer>::deref(v29);
      }
    }

    else
    {
      LOBYTE(v68) = 0;
      v79 = 0;
      if ((v67 & 1) != 0 && v65)
      {
        WTF::fastFree(v65, v17);
      }
    }

    if (v97 == 1 && v96)
    {
      WTF::DeferrableRefCounted<JSC::ArrayBuffer>::deref(v96);
    }

    if (v99 == 1 && v98)
    {
      WTF::DeferrableRefCounted<JSC::ArrayBuffer>::deref(v98);
    }

    if (v113 == 1 && v112 == 1)
    {
      if (v111 == 1 && v110 == 1)
      {
        v30 = v109;
        v109 = 0;
        if (v30)
        {
          WTF::DeferrableRefCounted<JSC::ArrayBuffer>::deref(v30);
        }

        v31 = v108;
        v108 = 0;
        if (v31)
        {
          WTF::DeferrableRefCounted<JSC::ArrayBuffer>::deref(v31);
        }
      }

      if (v106 == 1)
      {
        v32 = v104;
        v104 = 0;
        if (v32)
        {
          WTF::DeferrableRefCounted<JSC::ArrayBuffer>::deref(v32);
        }
      }
    }

    if (v101 == 1 && v100)
    {
      WTF::DeferrableRefCounted<JSC::ArrayBuffer>::deref(v100);
    }

    if ((v79 & 1) == 0)
    {
      v57 = *a1;
      v58 = *(a1 + 1);
      *a1 = 0;
      *(a1 + 1) = 0;
      v59 = *(a1 + 3);
      if (!v59)
      {
        goto LABEL_4;
      }

      if (!v58)
      {
        goto LABEL_4;
      }

      (*(*v59 + 16))(v59, v57);
      if ((v79 & 1) == 0)
      {
        goto LABEL_4;
      }
    }

    WebCore::AuthenticatorAttestationResponseData::AuthenticatorAttestationResponseData(a2, &v68);
    *(a2 + 128) = 2;
    *(a2 + 136) = 1;
    if ((v79 & 1) == 0)
    {
      return;
    }

    v34 = v78;
    if (v78)
    {
      *&v78 = 0;
      DWORD2(v78) = 0;
      WTF::fastFree(v34, v33);
    }

    v35 = *(&v77 + 1);
    *(&v77 + 1) = 0;
    if (v35)
    {
      WTF::DeferrableRefCounted<JSC::ArrayBuffer>::deref(v35);
    }

    v36 = v77;
    *&v77 = 0;
    if (v36)
    {
      WTF::DeferrableRefCounted<JSC::ArrayBuffer>::deref(v36);
    }

LABEL_93:
    if (v76 == 1)
    {
      if (v75 == 1 && v74 == 1)
      {
        v37 = v73;
        v73 = 0;
        if (v37)
        {
          WTF::DeferrableRefCounted<JSC::ArrayBuffer>::deref(v37);
        }

        v38 = v72;
        v72 = 0;
        if (v38)
        {
          WTF::DeferrableRefCounted<JSC::ArrayBuffer>::deref(v38);
        }
      }

      if (v71 == 1)
      {
        v39 = v70;
        v70 = 0;
        if (v39)
        {
          WTF::DeferrableRefCounted<JSC::ArrayBuffer>::deref(v39);
        }
      }
    }

    v40 = v68;
    v68 = 0;
    if (v40)
    {
      WTF::DeferrableRefCounted<JSC::ArrayBuffer>::deref(v40);
    }

    return;
  }

  IPC::Decoder::decode<WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>>(&v65, a1);
  IPC::Decoder::decode<std::optional<WebCore::AuthenticationExtensionsClientOutputs>>(&v80, a1);
  if (!*a1)
  {
LABEL_141:
    LOBYTE(v68) = 0;
    LOBYTE(v77) = 0;
    goto LABEL_22;
  }

  if ((v66 & 1) == 0 || (v7 = v65, v65 = 0, v102 = v7, (v91 & 1) == 0))
  {
LABEL_140:
    __break(1u);
    goto LABEL_141;
  }

  std::__optional_move_base<WebCore::AuthenticationExtensionsClientOutputs,false>::__optional_move_base[abi:sn200100](&v103, &v80);
  v8 = v102;
  v102 = 0;
  v68 = v8;
  std::__optional_move_base<WebCore::AuthenticationExtensionsClientOutputs,false>::__optional_move_base[abi:sn200100](v69, &v103);
  LOBYTE(v77) = 1;
  if (v113 == 1)
  {
    if (v112 == 1 && v111 == 1)
    {
      v9 = v110;
      v110 = 0;
      if (v9)
      {
        WTF::DeferrableRefCounted<JSC::ArrayBuffer>::deref(v9);
      }

      v10 = v109;
      v109 = 0;
      if (v10)
      {
        WTF::DeferrableRefCounted<JSC::ArrayBuffer>::deref(v10);
      }
    }

    if (v107 == 1)
    {
      v11 = v105;
      v105 = 0;
      if (v11)
      {
        WTF::DeferrableRefCounted<JSC::ArrayBuffer>::deref(v11);
      }
    }
  }

  v12 = v102;
  v102 = 0;
  if (v12)
  {
    WTF::DeferrableRefCounted<JSC::ArrayBuffer>::deref(v12);
  }

LABEL_22:
  if (v91 == 1 && v90 == 1)
  {
    if (v89 == 1 && v88 == 1)
    {
      v13 = v87;
      v87 = 0;
      if (v13)
      {
        WTF::DeferrableRefCounted<JSC::ArrayBuffer>::deref(v13);
      }

      v14 = v86;
      v86 = 0;
      if (v14)
      {
        WTF::DeferrableRefCounted<JSC::ArrayBuffer>::deref(v14);
      }
    }

    if (v84 == 1)
    {
      v15 = v82;
      v82 = 0;
      if (v15)
      {
        WTF::DeferrableRefCounted<JSC::ArrayBuffer>::deref(v15);
      }
    }
  }

  if (v66 == 1 && v65)
  {
    WTF::DeferrableRefCounted<JSC::ArrayBuffer>::deref(v65);
  }

  if ((v77 & 1) == 0)
  {
    v54 = *a1;
    v55 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    v56 = *(a1 + 3);
    if (!v56)
    {
      goto LABEL_4;
    }

    if (!v55)
    {
      goto LABEL_4;
    }

    (*(*v56 + 16))(v56, v54);
    if ((v77 & 1) == 0)
    {
      goto LABEL_4;
    }
  }

  v16 = v68;
  v68 = 0;
  *a2 = v16;
  std::__optional_move_base<WebCore::AuthenticationExtensionsClientOutputs,false>::__optional_move_base[abi:sn200100](a2 + 8, v69);
  *(a2 + 128) = 1;
  *(a2 + 136) = 1;
  if (v77)
  {
    goto LABEL_93;
  }
}

void sub_19D80B480(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF *a9, char a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, int a25, __int16 a26, char a27, char a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, uint64_t a34, WTF *a35, int a36, int a37, char a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43, int a44, __int16 a45, char a46, char a47, uint64_t a48, uint64_t a49, uint64_t a50, char a51, int a52, __int16 a53, char a54, char a55, int a56, __int16 a57, char a58, char a59, uint64_t a60, uint64_t a61, WTF *a62, int a63)
{
  if (a38 == 1)
  {
    WebCore::AuthenticatorAssertionResponseData::~AuthenticatorAssertionResponseData(&a15);
  }

  _Unwind_Resume(exception_object);
}

uint64_t IPC::ArgumentCoder<std::optional<WebCore::BufferSource>,void>::encode<IPC::Encoder,std::optional<WebCore::BufferSource> const&>(IPC::Encoder *a1, uint64_t a2)
{
  if (*(a2 + 16))
  {
    v6 = 1;
    IPC::Encoder::operator<<<BOOL>(a1, &v6);
    if (*(a2 + 16))
    {
      return IPC::ArgumentCoder<WebCore::BufferSource,void>::encode(a1, a2);
    }

    else
    {
      v5 = std::__throw_bad_optional_access[abi:sn200100]();
      return IPC::ArgumentCoder<std::optional<WebCore::AuthenticationExtensionsClientInputs::PRFValues>,void>::encode<IPC::Encoder,std::optional<WebCore::AuthenticationExtensionsClientInputs::PRFValues> const&>(v5);
    }
  }

  else
  {
    v7 = 0;
    return IPC::Encoder::operator<<<BOOL>(a1, &v7);
  }
}

uint64_t IPC::ArgumentCoder<std::optional<WebCore::AuthenticationExtensionsClientInputs::PRFValues>,void>::encode<IPC::Encoder,std::optional<WebCore::AuthenticationExtensionsClientInputs::PRFValues> const&>(IPC::Encoder *a1, uint64_t a2)
{
  if (*(a2 + 40))
  {
    v6 = 1;
    IPC::Encoder::operator<<<BOOL>(a1, &v6);
    if (*(a2 + 40))
    {
      IPC::ArgumentCoder<WebCore::BufferSource,void>::encode(a1, a2);
      return IPC::ArgumentCoder<std::optional<WebCore::BufferSource>,void>::encode<IPC::Encoder,std::optional<WebCore::BufferSource> const&>(a1, a2 + 16);
    }

    else
    {
      v5 = std::__throw_bad_optional_access[abi:sn200100]();
      return IPC::ArgumentCoder<std::optional<WTF::Vector<WTF::KeyValuePair<WTF::String,WebCore::AuthenticationExtensionsClientInputs::PRFValues>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,void>::encode<IPC::Encoder,std::optional<WTF::Vector<WTF::KeyValuePair<WTF::String,WebCore::AuthenticationExtensionsClientInputs::PRFValues>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>> const&>(v5);
    }
  }

  else
  {
    v7 = 0;
    return IPC::Encoder::operator<<<BOOL>(a1, &v7);
  }
}

uint64_t IPC::ArgumentCoder<std::optional<WTF::Vector<WTF::KeyValuePair<WTF::String,WebCore::AuthenticationExtensionsClientInputs::PRFValues>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,void>::encode<IPC::Encoder,std::optional<WTF::Vector<WTF::KeyValuePair<WTF::String,WebCore::AuthenticationExtensionsClientInputs::PRFValues>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>> const&>(IPC::Encoder *a1, uint64_t a2)
{
  if (*(a2 + 16))
  {
    v7 = 1;
    IPC::Encoder::operator<<<BOOL>(a1, &v7);
    if (*(a2 + 16))
    {
      return IPC::VectorArgumentCoder<false,WTF::KeyValuePair<WTF::String,WebCore::AuthenticationExtensionsClientInputs::PRFValues>,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WTF::KeyValuePair<WTF::String,WebCore::AuthenticationExtensionsClientInputs::PRFValues>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(a1, a2);
    }

    else
    {
      v5 = std::__throw_bad_optional_access[abi:sn200100]();
      return IPC::VectorArgumentCoder<false,WTF::KeyValuePair<WTF::String,WebCore::AuthenticationExtensionsClientInputs::PRFValues>,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WTF::KeyValuePair<WTF::String,WebCore::AuthenticationExtensionsClientInputs::PRFValues>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(v5, v6);
    }
  }

  else
  {
    v8 = 0;
    return IPC::Encoder::operator<<<BOOL>(a1, &v8);
  }
}

uint64_t IPC::VectorArgumentCoder<false,WTF::KeyValuePair<WTF::String,WebCore::AuthenticationExtensionsClientInputs::PRFValues>,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WTF::KeyValuePair<WTF::String,WebCore::AuthenticationExtensionsClientInputs::PRFValues>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(IPC::Encoder *a1, uint64_t a2)
{
  result = IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *(a2 + 12));
  v5 = *(a2 + 12);
  if (v5)
  {
    v6 = *a2;
    v7 = 48 * v5;
    do
    {
      result = IPC::ArgumentCoder<WTF::KeyValuePair<WTF::String,WebCore::AuthenticationExtensionsClientInputs::PRFValues>,void>::encode<IPC::Encoder,WTF::KeyValuePair<WTF::String,WebCore::AuthenticationExtensionsClientInputs::PRFValues> const&>(a1, v6);
      v6 += 6;
      v7 -= 48;
    }

    while (v7);
  }

  return result;
}

uint64_t IPC::ArgumentCoder<WTF::KeyValuePair<WTF::String,WebCore::AuthenticationExtensionsClientInputs::PRFValues>,void>::encode<IPC::Encoder,WTF::KeyValuePair<WTF::String,WebCore::AuthenticationExtensionsClientInputs::PRFValues> const&>(IPC::Encoder *a1, uint64_t *a2)
{
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, a2);
  IPC::ArgumentCoder<WebCore::BufferSource,void>::encode(a1, (a2 + 1));

  return IPC::ArgumentCoder<std::optional<WebCore::BufferSource>,void>::encode<IPC::Encoder,std::optional<WebCore::BufferSource> const&>(a1, (a2 + 3));
}

uint64_t IPC::Decoder::decode<WebCore::AuthenticationExtensionsClientInputs::PRFValues>(_BYTE *a1, IPC::Decoder *a2)
{
  IPC::Decoder::decode<WebCore::BufferSource>(&v24, a2);
  result = IPC::Decoder::decode<std::optional<WebCore::BufferSource>>(&v20, a2);
  v5 = *a2 != 0;
  if (*a2)
  {
    if (v26)
    {
      LOBYTE(v15) = 0;
      v16 = -1;
      v6 = v25;
      if (v25 != 255)
      {
        v7 = v24;
        v24 = 0;
        v15 = v7;
        v16 = v25;
      }

      if (v23)
      {
        v8 = 0;
        LOBYTE(v17) = 0;
        v19 = 0;
        v9 = v22;
        if (v22 == 1)
        {
          v18 = -1;
          v8 = v21;
          if (v21 != 255)
          {
            v10 = v20;
            v20 = 0;
            v17 = v10;
            v18 = v21;
          }

          v19 = 1;
        }

        *a1 = 0;
        a1[8] = -1;
        if (v6 != 255)
        {
          v11 = v15;
          v15 = 0;
          *a1 = v11;
          a1[8] = v6;
        }

        a1[16] = 0;
        a1[32] = 0;
        if (v9)
        {
          a1[24] = -1;
          if (v8 != 255)
          {
            v12 = v17;
            v17 = 0;
            *(a1 + 2) = v12;
            a1[24] = v8;
          }

          a1[32] = 1;
          a1[40] = 1;
          mpark::detail::move_constructor<mpark::detail::traits<WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>,WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>>,(mpark::detail::Trait)1>::~move_constructor(&v17);
        }

        else
        {
          a1[40] = 1;
        }

        result = mpark::detail::move_constructor<mpark::detail::traits<WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>,WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>>,(mpark::detail::Trait)1>::~move_constructor(&v15);
        if (v9)
        {
          goto LABEL_18;
        }

        v5 = 1;
        goto LABEL_20;
      }
    }

    __break(1u);
  }

  *a1 = 0;
  a1[40] = 0;
  if (v23 & 1) != 0 && (v22)
  {
LABEL_18:
    result = mpark::detail::move_constructor<mpark::detail::traits<WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>,WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>>,(mpark::detail::Trait)1>::~move_constructor(&v20);
    goto LABEL_20;
  }

  v5 = 0;
LABEL_20:
  if (v26 == 1)
  {
    result = mpark::detail::move_constructor<mpark::detail::traits<WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>,WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>>,(mpark::detail::Trait)1>::~move_constructor(&v24);
  }

  if (!v5)
  {
    v13 = *a2;
    v14 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    result = *(a2 + 3);
    if (result)
    {
      if (v14)
      {
        return (*(*result + 16))(result, v13);
      }
    }
  }

  return result;
}

void sub_19D80BD7C(_Unwind_Exception *exception_object)
{
  if (*(v1 - 40))
  {
    mpark::detail::move_constructor<mpark::detail::traits<WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>,WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>>,(mpark::detail::Trait)1>::~move_constructor(v1 - 56);
  }

  _Unwind_Resume(exception_object);
}

WTF::StringImpl *IPC::Decoder::decode<WTF::KeyValuePair<WTF::String,WebCore::AuthenticationExtensionsClientInputs::PRFValues>>(_BYTE *a1, IPC::Decoder *a2)
{
  IPC::Decoder::decode<WTF::String>(a2, &v21);
  if (v22 != 1)
  {
    *a1 = 0;
    a1[48] = 0;
LABEL_20:
    v12 = *a2;
    v13 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    result = *(a2 + 3);
    if (result)
    {
      v14 = v13 == 0;
    }

    else
    {
      v14 = 1;
    }

    if (!v14)
    {
      return (*(*result + 16))(result, v12);
    }

    return result;
  }

  result = IPC::Decoder::decode<WebCore::AuthenticationExtensionsClientInputs::PRFValues>(&v15, a2);
  v6 = v20;
  if (v20)
  {
    if ((v22 & 1) == 0)
    {
      __break(1u);
      return result;
    }

    v7 = v21;
    v21 = 0;
    *a1 = v7;
    a1[8] = 0;
    a1[16] = -1;
    v8 = v16;
    if (v16 != 255)
    {
      v9 = v15;
      v15 = 0;
      *(a1 + 1) = v9;
      a1[16] = v8;
    }

    a1[24] = 0;
    a1[40] = 0;
    if (v19 == 1)
    {
      a1[32] = -1;
      v10 = v18;
      if (v18 != 255)
      {
        v11 = v17;
        v17 = 0;
        *(a1 + 3) = v11;
        a1[32] = v10;
      }

      a1[40] = 1;
      a1[48] = 1;
      mpark::detail::move_constructor<mpark::detail::traits<WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>,WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>>,(mpark::detail::Trait)1>::~move_constructor(&v17);
    }

    else
    {
      a1[48] = 1;
    }

    result = mpark::detail::move_constructor<mpark::detail::traits<WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>,WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>>,(mpark::detail::Trait)1>::~move_constructor(&v15);
  }

  else
  {
    *a1 = 0;
    a1[48] = 0;
  }

  if (v22)
  {
    result = v21;
    v21 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        result = WTF::StringImpl::destroy(result, v5);
      }
    }
  }

  if ((v6 & 1) == 0)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_19D80BF1C(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, WTF::StringImpl *a15, char a16)
{
  if ((a16 & 1) != 0 && a15 && atomic_fetch_add_explicit(a15, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a15, a2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::optional<WTF::Vector<WTF::KeyValuePair<WTF::String,WebCore::AuthenticationExtensionsClientInputs::PRFValues>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>::optional[abi:sn200100]<WTF::Vector<WTF::KeyValuePair<WTF::String,WebCore::AuthenticationExtensionsClientInputs::PRFValues>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,0>(uint64_t a1, uint64_t *a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  WTF::VectorBuffer<unsigned char,0ul,WTF::FastMalloc>::adopt(a1, a2);
  *(a1 + 16) = 1;
  return a1;
}

void sub_19D80BF84(_Unwind_Exception *exception_object, void *a2)
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

unint64_t WTF::Vector<WTF::KeyValuePair<WTF::String,WebCore::AuthenticationExtensionsClientInputs::PRFValues>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::KeyValuePair<WTF::String,WebCore::AuthenticationExtensionsClientInputs::PRFValues>>(uint64_t a1, unint64_t a2)
{
  result = WTF::Vector<WTF::KeyValuePair<WTF::String,WebCore::AuthenticationExtensionsClientInputs::PRFValues>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(a1, *(a1 + 12) + 1, a2);
  v4 = *a1 + 48 * *(a1 + 12);
  v5 = *result;
  *result = 0;
  *v4 = v5;
  *(v4 + 8) = 0;
  *(v4 + 16) = -1;
  v6 = *(result + 16);
  if (v6 != 255)
  {
    v7 = *(result + 8);
    *(result + 8) = 0;
    *(v4 + 8) = v7;
    *(v4 + 16) = v6;
  }

  *(v4 + 24) = 0;
  *(v4 + 40) = 0;
  if (*(result + 40) == 1)
  {
    *(v4 + 32) = -1;
    v8 = *(result + 32);
    if (v8 != 255)
    {
      v9 = *(result + 24);
      *(result + 24) = 0;
      *(v4 + 24) = v9;
      *(v4 + 32) = v8;
    }

    *(v4 + 40) = 1;
  }

  ++*(a1 + 12);
  return result;
}

unint64_t WTF::Vector<WTF::KeyValuePair<WTF::String,WebCore::AuthenticationExtensionsClientInputs::PRFValues>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v3 = a3;
  v5 = *a1;
  if (*a1 > a3 || v5 + 48 * *(a1 + 12) <= a3)
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

    WTF::Vector<WTF::KeyValuePair<WTF::String,WebCore::AuthenticationExtensionsClientInputs::PRFValues>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v12);
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

    WTF::Vector<WTF::KeyValuePair<WTF::String,WebCore::AuthenticationExtensionsClientInputs::PRFValues>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v9);
    return *a1 + v6;
  }

  return v3;
}

uint64_t WTF::Vector<WTF::KeyValuePair<WTF::String,WebCore::AuthenticationExtensionsClientInputs::PRFValues>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 8) < a2)
  {
    if (a2 >= 0x5555556)
    {
      __break(0xC471u);
      JUMPOUT(0x19D80C1D4);
    }

    v3 = *a1;
    v4 = (*a1 + 48 * *(a1 + 12));
    v5 = 48 * a2;
    v6 = WTF::fastMalloc((48 * a2));
    *(a1 + 8) = v5 / 0x30;
    *a1 = v6;
    WTF::VectorMover<false,WTF::KeyValuePair<WTF::String,WebCore::AuthenticationExtensionsClientInputs::PRFValues>>::move(v3, v4, v6);
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

WTF::StringImpl *WTF::VectorMover<false,WTF::KeyValuePair<WTF::String,WebCore::AuthenticationExtensionsClientInputs::PRFValues>>::move(WTF::StringImpl *result, WTF::StringImpl *a2, uint64_t a3)
{
  if (result != a2)
  {
    v5 = result;
    v6 = 0;
    do
    {
      v7 = a3 + v6;
      v8 = v5 + v6;
      v9 = *(v5 + v6);
      *(v5 + v6) = 0;
      *v7 = v9;
      *(v7 + 8) = 0;
      *(v7 + 16) = -1;
      v10 = *(v5 + v6 + 16);
      if (v10 != 255)
      {
        v11 = *(v8 + 1);
        *(v8 + 1) = 0;
        *(v7 + 8) = v11;
        *(v7 + 16) = v10;
      }

      *(v7 + 24) = 0;
      *(v7 + 40) = 0;
      if (v8[40] == 1)
      {
        *(a3 + v6 + 32) = -1;
        v12 = *(v5 + v6 + 32);
        if (v12 != 255)
        {
          v13 = *(v8 + 3);
          *(v8 + 3) = 0;
          *(v7 + 24) = v13;
          *(a3 + v6 + 32) = v12;
        }

        *(v7 + 40) = 1;
        if (v8[40])
        {
          mpark::detail::move_constructor<mpark::detail::traits<WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>,WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>>,(mpark::detail::Trait)1>::~move_constructor((v8 + 24));
        }
      }

      mpark::detail::move_constructor<mpark::detail::traits<WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>,WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>>,(mpark::detail::Trait)1>::~move_constructor(v5 + v6 + 8);
      result = *(v5 + v6);
      *(v5 + v6) = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          result = WTF::StringImpl::destroy(result, v14);
        }
      }

      v6 += 48;
    }

    while ((v5 + v6) != a2);
  }

  return result;
}

unsigned int *WTF::Vector<WTF::KeyValuePair<WTF::String,WebCore::AuthenticationExtensionsClientInputs::PRFValues>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(unsigned int *result, unint64_t this)
{
  if (result[2] > this)
  {
    v3 = result;
    v4 = result[3];
    if (v4 > this)
    {
      result = WTF::VectorTypeOperations<WTF::KeyValuePair<WTF::String,WebCore::AuthenticationExtensionsClientInputs::PRFValues>>::destruct((*result + 48 * this), (*result + 48 * v4));
      *(v3 + 12) = this;
      LODWORD(v4) = this;
    }

    v5 = *v3;
    if (this)
    {
      if (this >= 0x5555556)
      {
        __break(0xC471u);
        return result;
      }

      v6 = (48 * this);
      result = WTF::fastMalloc(v6);
      *(v3 + 8) = v6 / 0x30;
      *v3 = result;
      if (result != v5)
      {
        result = WTF::VectorMover<false,WTF::KeyValuePair<WTF::String,WebCore::AuthenticationExtensionsClientInputs::PRFValues>>::move(v5, (v5 + 48 * v4), result);
      }
    }

    if (v5)
    {
      if (*v3 == v5)
      {
        *v3 = 0;
        *(v3 + 8) = 0;
      }

      return WTF::fastFree(v5, this);
    }
  }

  return result;
}

uint64_t IPC::ArgumentCoder<std::optional<WebCore::AuthenticationExtensionsClientInputs::LargeBlobInputs>,void>::encode<IPC::Encoder,std::optional<WebCore::AuthenticationExtensionsClientInputs::LargeBlobInputs> const&>(IPC::Encoder *a1, uint64_t a2)
{
  if (*(a2 + 40))
  {
    v6 = 1;
    IPC::Encoder::operator<<<BOOL>(a1, &v6);
    if (*(a2 + 40))
    {
      return IPC::ArgumentCoder<WebCore::AuthenticationExtensionsClientInputs::LargeBlobInputs,void>::encode(a1, a2);
    }

    else
    {
      v5 = std::__throw_bad_optional_access[abi:sn200100]();
      return IPC::ArgumentCoder<std::optional<WebCore::AuthenticationExtensionsClientInputs::PRFInputs>,void>::encode<IPC::Encoder,std::optional<WebCore::AuthenticationExtensionsClientInputs::PRFInputs> const&>(v5);
    }
  }

  else
  {
    v7 = 0;
    return IPC::Encoder::operator<<<BOOL>(a1, &v7);
  }
}

uint64_t IPC::ArgumentCoder<std::optional<WebCore::AuthenticationExtensionsClientInputs::PRFInputs>,void>::encode<IPC::Encoder,std::optional<WebCore::AuthenticationExtensionsClientInputs::PRFInputs> const&>(IPC::Encoder *a1, uint64_t a2)
{
  if (*(a2 + 72))
  {
    v7 = 1;
    IPC::Encoder::operator<<<BOOL>(a1, &v7);
    if (*(a2 + 72))
    {
      IPC::ArgumentCoder<std::optional<WebCore::AuthenticationExtensionsClientInputs::PRFValues>,void>::encode<IPC::Encoder,std::optional<WebCore::AuthenticationExtensionsClientInputs::PRFValues> const&>(a1, a2);
      return IPC::ArgumentCoder<std::optional<WTF::Vector<WTF::KeyValuePair<WTF::String,WebCore::AuthenticationExtensionsClientInputs::PRFValues>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,void>::encode<IPC::Encoder,std::optional<WTF::Vector<WTF::KeyValuePair<WTF::String,WebCore::AuthenticationExtensionsClientInputs::PRFValues>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>> const&>(a1, a2 + 48);
    }

    else
    {
      v5 = std::__throw_bad_optional_access[abi:sn200100]();
      return IPC::ArgumentCoder<std::optional<WebCore::CredentialPropertiesOutput>,void>::encode<IPC::Encoder,std::optional<WebCore::CredentialPropertiesOutput> const&>(v5, v6);
    }
  }

  else
  {
    v8 = 0;
    return IPC::Encoder::operator<<<BOOL>(a1, &v8);
  }
}

uint64_t IPC::ArgumentCoder<std::optional<WebCore::CredentialPropertiesOutput>,void>::encode<IPC::Encoder,std::optional<WebCore::CredentialPropertiesOutput> const&>(IPC::Encoder *a1, char *a2)
{
  if (a2[1])
  {
    v6 = 1;
    IPC::Encoder::operator<<<BOOL>(a1, &v6);
    if (a2[1])
    {
      return IPC::Encoder::operator<<<BOOL>(a1, a2);
    }

    else
    {
      v5 = std::__throw_bad_optional_access[abi:sn200100]();
      return IPC::ArgumentCoder<std::optional<WebCore::AuthenticationExtensionsClientOutputs::LargeBlobOutputs>,void>::encode<IPC::Encoder,std::optional<WebCore::AuthenticationExtensionsClientOutputs::LargeBlobOutputs> const&>(v5);
    }
  }

  else
  {
    v7 = 0;
    return IPC::Encoder::operator<<<BOOL>(a1, &v7);
  }
}

uint64_t IPC::ArgumentCoder<std::optional<WebCore::AuthenticationExtensionsClientOutputs::LargeBlobOutputs>,void>::encode<IPC::Encoder,std::optional<WebCore::AuthenticationExtensionsClientOutputs::LargeBlobOutputs> const&>(IPC::Encoder *a1, uint64_t a2)
{
  if (*(a2 + 24))
  {
    v6 = 1;
    IPC::Encoder::operator<<<BOOL>(a1, &v6);
    if (*(a2 + 24))
    {
      IPC::ArgumentCoder<std::optional<BOOL>,void>::encode<IPC::Encoder,std::optional<BOOL> const&>(a1, a2);
      IPC::ArgumentCoder<WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>,void>::encode<IPC::Encoder,JSC::ArrayBuffer>(a1, (a2 + 8));
      return IPC::ArgumentCoder<std::optional<BOOL>,void>::encode<IPC::Encoder,std::optional<BOOL> const&>(a1, (a2 + 16));
    }

    else
    {
      v5 = std::__throw_bad_optional_access[abi:sn200100]();
      return IPC::ArgumentCoder<std::optional<WebCore::AuthenticationExtensionsClientOutputs::PRFOutputs>,void>::encode<IPC::Encoder,std::optional<WebCore::AuthenticationExtensionsClientOutputs::PRFOutputs> const&>(v5);
    }
  }

  else
  {
    v7 = 0;
    return IPC::Encoder::operator<<<BOOL>(a1, &v7);
  }
}

uint64_t IPC::ArgumentCoder<std::optional<WebCore::AuthenticationExtensionsClientOutputs::PRFOutputs>,void>::encode<IPC::Encoder,std::optional<WebCore::AuthenticationExtensionsClientOutputs::PRFOutputs> const&>(IPC::Encoder *a1, uint64_t a2)
{
  if (*(a2 + 32))
  {
    v7 = 1;
    IPC::Encoder::operator<<<BOOL>(a1, &v7);
    if ((*(a2 + 32) & 1) == 0)
    {
LABEL_10:
      v6 = std::__throw_bad_optional_access[abi:sn200100]();
      return IPC::VectorArgumentCoder<false,WebCore::PublicKeyCredentialParameters,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebCore::PublicKeyCredentialParameters,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &>(v6);
    }

    IPC::ArgumentCoder<std::optional<BOOL>,void>::encode<IPC::Encoder,std::optional<BOOL> const&>(a1, a2);
    if (*(a2 + 24))
    {
      v9 = 1;
      IPC::Encoder::operator<<<BOOL>(a1, &v9);
      if (*(a2 + 24))
      {
        IPC::ArgumentCoder<WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>,void>::encode<IPC::Encoder,JSC::ArrayBuffer>(a1, (a2 + 8));
        return IPC::ArgumentCoder<WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>,void>::encode<IPC::Encoder,JSC::ArrayBuffer>(a1, (a2 + 16));
      }

      goto LABEL_10;
    }

    v10 = 0;
    v5 = &v10;
  }

  else
  {
    v8 = 0;
    v5 = &v8;
  }

  return IPC::Encoder::operator<<<BOOL>(a1, v5);
}

uint64_t IPC::VectorArgumentCoder<false,WebCore::PublicKeyCredentialParameters,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebCore::PublicKeyCredentialParameters,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &>(IPC::Encoder *a1, uint64_t *a2)
{
  result = IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *(a2 + 3));
  v5 = *(a2 + 3);
  if (v5)
  {
    v6 = *a2;
    v7 = v6 + 16 * v5;
    do
    {
      v8 = *v6;
      IPC::Encoder::operator<<<BOOL>(a1, &v8);
      v9 = *(v6 + 8);
      result = IPC::Encoder::encodeObject<long long>(a1, &v9);
      v6 += 16;
    }

    while (v6 != v7);
  }

  return result;
}

uint64_t IPC::VectorArgumentCoder<false,WebCore::PublicKeyCredentialDescriptor,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebCore::PublicKeyCredentialDescriptor,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(IPC::Encoder *a1, uint64_t a2)
{
  result = IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *(a2 + 12));
  v5 = *(a2 + 12);
  if (v5)
  {
    v6 = *a2;
    v7 = 40 * v5;
    do
    {
      result = IPC::ArgumentCoder<WebCore::PublicKeyCredentialDescriptor,void>::encode(a1, v6);
      v6 += 40;
      v7 -= 40;
    }

    while (v7);
  }

  return result;
}

uint64_t IPC::ArgumentCoder<std::optional<WebCore::AuthenticatorSelectionCriteria>,void>::encode<IPC::Encoder,std::optional<WebCore::AuthenticatorSelectionCriteria> const&>(IPC::Encoder *a1, char *a2)
{
  if (a2[6])
  {
    v6 = 1;
    IPC::Encoder::operator<<<BOOL>(a1, &v6);
    if (a2[6])
    {
      return IPC::ArgumentCoder<WebCore::AuthenticatorSelectionCriteria,void>::encode(a1, a2);
    }

    else
    {
      v5 = std::__throw_bad_optional_access[abi:sn200100]();
      return IPC::ArgumentCoder<std::optional<WebCore::AuthenticationExtensionsClientInputs>,void>::encode<IPC::Encoder,std::optional<WebCore::AuthenticationExtensionsClientInputs>&>(v5);
    }
  }

  else
  {
    v7 = 0;
    return IPC::Encoder::operator<<<BOOL>(a1, &v7);
  }
}

uint64_t IPC::ArgumentCoder<std::optional<WebCore::AuthenticationExtensionsClientInputs>,void>::encode<IPC::Encoder,std::optional<WebCore::AuthenticationExtensionsClientInputs>&>(IPC::Encoder *a1, uint64_t a2)
{
  if (*(a2 + 144))
  {
    v7 = 1;
    IPC::Encoder::operator<<<BOOL>(a1, &v7);
    if (*(a2 + 144))
    {
      return IPC::ArgumentCoder<WebCore::AuthenticationExtensionsClientInputs,void>::encode(a1, a2);
    }

    else
    {
      v5 = std::__throw_bad_optional_access[abi:sn200100]();
      return IPC::Decoder::decode<WebCore::PublicKeyCredentialParameters>(v5, v6);
    }
  }

  else
  {
    v8 = 0;
    return IPC::Encoder::operator<<<BOOL>(a1, &v8);
  }
}

uint64_t IPC::Decoder::decode<WebCore::PublicKeyCredentialParameters>(uint64_t a1, uint64_t *a2)
{
  v4 = IPC::Decoder::decode<WebCore::UserStyleLevel>(a2);
  result = IPC::Decoder::decode<long long>(a2);
  if (*a2)
  {
    if (v4 > 0xFFu && (v6 & 1) != 0)
    {
      *a1 = v4;
      *(a1 + 8) = result;
      *(a1 + 16) = 1;
      return result;
    }

    __break(1u);
  }

  *a1 = 0;
  *(a1 + 16) = 0;
  v7 = a2[1];
  *a2 = 0;
  a2[1] = 0;
  result = a2[3];
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
    v9 = *(*result + 16);

    return v9();
  }

  return result;
}

WTF *IPC::Decoder::decode<WebCore::PublicKeyCredentialDescriptor>(uint64_t a1, uint64_t *a2)
{
  v4 = IPC::Decoder::decode<WebCore::UserStyleLevel>(a2);
  IPC::Decoder::decode<WebCore::BufferSource>(&v21, a2);
  result = IPC::Decoder::decode<WTF::Vector<WebCore::AuthenticatorTransport,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(v19, a2);
  v8 = *a2;
  if (*a2)
  {
    if (v4 > 0xFFu && (v23 & 1) != 0)
    {
      LOBYTE(v16) = 0;
      v17 = -1;
      v9 = v22;
      if (v22 != 255)
      {
        v10 = v21;
        v21 = 0;
        v16 = v10;
        v17 = v22;
      }

      if (v20)
      {
        v11 = v19[0];
        v12 = v19[1];
        *a1 = v4;
        *(a1 + 8) = 0;
        *(a1 + 16) = -1;
        if (v9 != 255)
        {
          v13 = v16;
          v16 = 0;
          *(a1 + 8) = v13;
          *(a1 + 16) = v9;
        }

        *&v7 = 0;
        v18 = v7;
        *(a1 + 24) = v11;
        *(a1 + 32) = v12;
        *(a1 + 40) = 1;
        result = mpark::detail::move_constructor<mpark::detail::traits<WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>,WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>>,(mpark::detail::Trait)1>::~move_constructor(&v16);
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  *a1 = 0;
  *(a1 + 40) = 0;
  if (v20)
  {
    result = v19[0];
    if (v19[0])
    {
      result = WTF::fastFree(v19[0], v6);
    }
  }

LABEL_10:
  if (v23 == 1)
  {
    result = mpark::detail::move_constructor<mpark::detail::traits<WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>,WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>>,(mpark::detail::Trait)1>::~move_constructor(&v21);
  }

  if (!v8)
  {
    v14 = *a2;
    v15 = a2[1];
    *a2 = 0;
    a2[1] = 0;
    result = a2[3];
    if (result)
    {
      if (v15)
      {
        return (*(*result + 16))(result, v14);
      }
    }
  }

  return result;
}

void sub_19D80CAB8(_Unwind_Exception *exception_object)
{
  if (*(v1 - 40))
  {
    mpark::detail::move_constructor<mpark::detail::traits<WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>,WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>>,(mpark::detail::Trait)1>::~move_constructor(v1 - 56);
  }

  _Unwind_Resume(exception_object);
}

uint64_t WTF::Vector<WebCore::PublicKeyCredentialDescriptor,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::PublicKeyCredentialDescriptor>(uint64_t a1, unint64_t a2)
{
  v3 = WTF::Vector<WebCore::PublicKeyCredentialDescriptor,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(a1, *(a1 + 12) + 1, a2);
  v4 = *a1 + 40 * *(a1 + 12);
  *v4 = *v3;
  *(v4 + 8) = 0;
  *(v4 + 16) = -1;
  v5 = *(v3 + 16);
  if (v5 != 255)
  {
    v6 = *(v3 + 8);
    *(v3 + 8) = 0;
    *(v4 + 8) = v6;
    *(v4 + 16) = v5;
  }

  *(v4 + 24) = 0;
  *(v4 + 32) = 0;
  result = WTF::VectorBuffer<unsigned char,0ul,WTF::FastMalloc>::adopt(v4 + 24, (v3 + 24));
  ++*(a1 + 12);
  return result;
}

void sub_19D80CB70(_Unwind_Exception *a1, void *a2)
{
  v6 = *v3;
  if (*v3)
  {
    *(v4 + 24) = 0;
    *(v4 + 32) = 0;
    WTF::fastFree(v6, a2);
  }

  mpark::detail::move_constructor<mpark::detail::traits<WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>,WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>>,(mpark::detail::Trait)1>::~move_constructor(v2);
  _Unwind_Resume(a1);
}

uint64_t IPC::ArgumentCoder<std::span<unsigned short const,18446744073709551615ul>,void>::encode<IPC::Encoder>(IPC::Encoder *a1, const void *a2, uint64_t a3)
{
  result = IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, a3);
  if (a3)
  {

    return IPC::Encoder::encodeSpan<unsigned short const,18446744073709551615ul>(a1, a2, a3);
  }

  return result;
}

uint64_t WTF::Vector<unsigned short,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector<unsigned short const,18446744073709551615ul>(uint64_t result, __int16 *a2, unint64_t a3)
{
  v3 = a3;
  v4 = result;
  *result = 0;
  *(result + 8) = 0;
  *(result + 12) = a3;
  if (!a3)
  {
    return v4;
  }

  if (!(a3 >> 31))
  {
    v6 = 2 * a3;
    v7 = WTF::fastMalloc((2 * a3));
    *(v4 + 8) = v3;
    *v4 = v7;
    do
    {
      v8 = *a2++;
      *v7++ = v8;
      v6 -= 2;
    }

    while (v6);
    return v4;
  }

  __break(0xC471u);
  return result;
}

uint64_t IPC::VectorArgumentCoder<false,WebCore::PathSegment,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebCore::PathSegment,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(IPC::Encoder *a1, uint64_t a2)
{
  result = IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *(a2 + 12));
  v5 = *(a2 + 12);
  if (v5)
  {
    v6 = *a2;
    v7 = 56 * v5;
    do
    {
      v8 = *(v6 + 52);
      IPC::Encoder::operator<<<BOOL>(a1, &v8);
      result = IPC::ArgumentCoder<mpark::variant<WebCore::PathMoveTo,WebCore::PathLineTo,WebCore::PathQuadCurveTo,WebCore::PathBezierCurveTo,WebCore::PathArcTo,WebCore::PathArc,WebCore::PathClosedArc,WebCore::PathEllipse,WebCore::PathEllipseInRect,WebCore::PathRect,WebCore::PathRoundedRect,WebCore::PathContinuousRoundedRect,WebCore::PathDataLine,WebCore::PathDataQuadCurve,WebCore::PathDataBezierCurve,WebCore::PathDataArc,WebCore::PathCloseSubpath>,void>::encode<IPC::Encoder,mpark::variant<WebCore::PathMoveTo,WebCore::PathLineTo,WebCore::PathQuadCurveTo,WebCore::PathBezierCurveTo,WebCore::PathArcTo,WebCore::PathArc,WebCore::PathClosedArc,WebCore::PathEllipse,WebCore::PathEllipseInRect,WebCore::PathRect,WebCore::PathRoundedRect,WebCore::PathContinuousRoundedRect,WebCore::PathDataLine,WebCore::PathDataQuadCurve,WebCore::PathDataBezierCurve,WebCore::PathDataArc,WebCore::PathCloseSubpath> const&>(a1, v6, v8);
      v6 += 56;
      v7 -= 56;
    }

    while (v7);
  }

  return result;
}

WTF *IPC::VectorArgumentCoder<false,WebCore::PathSegment,0ul,WTF::CrashOnOverflow,16ul>::decode<IPC::Decoder>@<X0>(IPC::Decoder *this@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v41 = *MEMORY[0x1E69E9840];
  v5 = *(this + 1);
  v6 = ((*(this + 2) + 7) & 0xFFFFFFFFFFFFFFF8);
  v7 = v6 - *this;
  v8 = v5 >= v7;
  v9 = v5 - v7;
  if (!v8 || v9 <= 7)
  {
    IPC::Decoder::markInvalid(this);
LABEL_36:
    result = IPC::Decoder::markInvalid(this);
    *a3 = 0;
    *(a3 + 16) = 0;
    return result;
  }

  *(this + 2) = v6 + 1;
  if (!v6)
  {
    goto LABEL_36;
  }

  v11 = *v6;
  v29 = 0;
  v30 = 0;
  if (v11 >= 0x4924)
  {
    while (1)
    {
      IPC::Decoder::decode<WebCore::PathSegment>(this, &v36);
      if ((v40 & 1) == 0)
      {
        break;
      }

      if (HIDWORD(v30) == v30)
      {
        WTF::Vector<WebCore::PathSegment,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::PathSegment>(&v29, &v36);
      }

      else
      {
        v22 = HIDWORD(v30) + 1;
        v23 = v29 + 56 * HIDWORD(v30);
        v24 = v38;
        v25 = v37;
        v26 = v36;
        *(v23 + 6) = v39;
        *(v23 + 1) = v25;
        *(v23 + 2) = v24;
        *v23 = v26;
        HIDWORD(v30) = v22;
      }

      if (!--v11)
      {
        WTF::Vector<WebCore::PathSegment,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(&v29, HIDWORD(v30));
        v27 = v29;
        v29 = 0;
        *a3 = v27;
        v28 = v30;
        HIDWORD(v30) = 0;
        *(a3 + 8) = v28;
        goto LABEL_22;
      }
    }

LABEL_34:
    *a3 = 0;
    *(a3 + 16) = 0;
  }

  else
  {
    if (v11)
    {
      LODWORD(v30) = 56 * v11 / 0x38u;
      v29 = WTF::fastMalloc((56 * v11));
      while (1)
      {
        v12 = *(this + 2);
        if (*(this + 1) <= &v12[-*this])
        {
          break;
        }

        *(this + 2) = v12 + 1;
        if (!v12)
        {
          goto LABEL_38;
        }

        v13 = *v12;
        if (v13 < 0x11)
        {
          IPC::ArgumentCoder<mpark::variant<WebCore::PathMoveTo,WebCore::PathLineTo,WebCore::PathQuadCurveTo,WebCore::PathBezierCurveTo,WebCore::PathArcTo,WebCore::PathArc,WebCore::PathClosedArc,WebCore::PathEllipse,WebCore::PathEllipseInRect,WebCore::PathRect,WebCore::PathRoundedRect,WebCore::PathContinuousRoundedRect,WebCore::PathDataLine,WebCore::PathDataQuadCurve,WebCore::PathDataBezierCurve,WebCore::PathDataArc,WebCore::PathCloseSubpath>,void>::decode<IPC::Decoder>(this, v13, &v36);
          if (v40)
          {
            goto LABEL_14;
          }

          goto LABEL_40;
        }

LABEL_39:
        LOBYTE(v36) = 0;
        v40 = 0;
LABEL_40:
        IPC::Decoder::markInvalid(this);
LABEL_14:
        if (*this)
        {
          if ((v40 & 1) == 0)
          {
            __break(1u);
            goto LABEL_27;
          }

          v31 = v36;
          v32 = v37;
          v33 = v38;
          v34 = v39;
          v35 = 1;
        }

        else
        {
          LOBYTE(v31) = 0;
          v35 = 0;
          IPC::Decoder::markInvalid(this);
          if ((v35 & 1) == 0)
          {
            goto LABEL_34;
          }
        }

        if (HIDWORD(v30) == v30)
        {
          WTF::Vector<WebCore::PathSegment,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::PathSegment>(&v29, &v31);
        }

        else
        {
          v14 = HIDWORD(v30) + 1;
          v15 = v29 + 56 * HIDWORD(v30);
          v17 = v32;
          v16 = v33;
          v18 = v31;
          *(v15 + 6) = v34;
          *(v15 + 1) = v17;
          *(v15 + 2) = v16;
          *v15 = v18;
          HIDWORD(v30) = v14;
        }

        if (!--v11)
        {
          v19 = v29;
          v20 = v30;
          goto LABEL_21;
        }
      }

      IPC::Decoder::markInvalid(this);
LABEL_38:
      IPC::Decoder::markInvalid(this);
      goto LABEL_39;
    }

LABEL_27:
    v19 = 0;
    v20 = 0;
LABEL_21:
    v29 = 0;
    *a3 = v19;
    HIDWORD(v30) = 0;
    *(a3 + 8) = v20;
LABEL_22:
    *(a3 + 16) = 1;
  }

  result = v29;
  if (v29)
  {
    v29 = 0;
    LODWORD(v30) = 0;
    return WTF::fastFree(result, a2);
  }

  return result;
}

void sub_19D80CFCC(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF *a9, int a10)
{
  if (a9)
  {
    WTF::fastFree(a9, a2);
  }

  _Unwind_Resume(exception_object);
}

IPC::Decoder *IPC::Decoder::decode<WebCore::PathSegment>@<X0>(IPC::Decoder *this@<X0>, uint64_t a2@<X8>)
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = *(this + 2);
  if (*(this + 1) <= &v4[-*this])
  {
    IPC::Decoder::markInvalid(this);
    goto LABEL_12;
  }

  *(this + 2) = v4 + 1;
  if (!v4)
  {
LABEL_12:
    IPC::Decoder::markInvalid(this);
    goto LABEL_13;
  }

  v5 = *v4;
  if (v5 < 0x11)
  {
    result = IPC::ArgumentCoder<mpark::variant<WebCore::PathMoveTo,WebCore::PathLineTo,WebCore::PathQuadCurveTo,WebCore::PathBezierCurveTo,WebCore::PathArcTo,WebCore::PathArc,WebCore::PathClosedArc,WebCore::PathEllipse,WebCore::PathEllipseInRect,WebCore::PathRect,WebCore::PathRoundedRect,WebCore::PathContinuousRoundedRect,WebCore::PathDataLine,WebCore::PathDataQuadCurve,WebCore::PathDataBezierCurve,WebCore::PathDataArc,WebCore::PathCloseSubpath>,void>::decode<IPC::Decoder>(this, v5, v8);
    if (v10)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  LOBYTE(v8[0]) = 0;
  v10 = 0;
LABEL_14:
  result = IPC::Decoder::markInvalid(this);
LABEL_5:
  if (*this)
  {
    if ((v10 & 1) == 0)
    {
      __break(1u);
    }

    v7 = v8[1];
    *a2 = v8[0];
    *(a2 + 16) = v7;
    *(a2 + 32) = v8[2];
    *(a2 + 48) = v9;
    *(a2 + 56) = 1;
  }

  else
  {
    *a2 = 0;
    *(a2 + 56) = 0;
    return IPC::Decoder::markInvalid(this);
  }

  return result;
}

uint64_t WTF::Vector<WebCore::PathSegment,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::PathSegment>(uint64_t a1, unint64_t a2)
{
  v3 = WTF::Vector<WebCore::PathSegment,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(a1, *(a1 + 12) + 1, a2);
  v4 = *a1 + 56 * *(a1 + 12);
  v5 = *v3;
  v6 = *(v3 + 16);
  v7 = *(v3 + 32);
  *(v4 + 48) = *(v3 + 48);
  *(v4 + 16) = v6;
  *(v4 + 32) = v7;
  *v4 = v5;
  ++*(a1 + 12);
  return 1;
}

unint64_t WTF::Vector<WebCore::PathSegment,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v3 = a3;
  v5 = *a1;
  if (*a1 > a3 || v5 + 56 * *(a1 + 12) <= a3)
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

    WTF::Vector<WebCore::PathSegment,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v12);
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

    WTF::Vector<WebCore::PathSegment,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v9);
    return *a1 + v6;
  }

  return v3;
}

uint64_t WTF::Vector<WebCore::PathSegment,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(uint64_t result, unint64_t a2)
{
  if (*(result + 8) < a2)
  {
    if (a2 >= 0x4924925)
    {
      __break(0xC471u);
    }

    else
    {
      v2 = result;
      v3 = *result;
      v4 = *(result + 12);
      v5 = 56 * a2;
      result = WTF::fastMalloc((56 * a2));
      *(v2 + 8) = v5 / 0x38;
      *v2 = result;
      if (v4)
      {
        v7 = 56 * v4;
        v8 = v3;
        do
        {
          v9 = *v8;
          v10 = *(v8 + 1);
          v11 = *(v8 + 2);
          *(result + 48) = *(v8 + 6);
          *(result + 16) = v10;
          *(result + 32) = v11;
          *result = v9;
          result += 56;
          v8 = (v8 + 56);
          v7 -= 56;
        }

        while (v7);
      }

      if (v3)
      {
        if (*v2 == v3)
        {
          *v2 = 0;
          *(v2 + 8) = 0;
        }

        return WTF::fastFree(v3, v6);
      }
    }
  }

  return result;
}

uint64_t WTF::Vector<WebCore::PathSegment,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(uint64_t result, unint64_t a2)
{
  if (*(result + 8) > a2)
  {
    v2 = result;
    v3 = *(result + 12);
    if (v3 > a2)
    {
      *(result + 12) = a2;
      LODWORD(v3) = a2;
    }

    v4 = *result;
    if (a2)
    {
      if (a2 >= 0x4924925)
      {
        __break(0xC471u);
        return result;
      }

      v5 = 56 * a2;
      result = WTF::fastMalloc((56 * a2));
      *(v2 + 8) = v5 / 0x38;
      *v2 = result;
      if (v3 && result != v4)
      {
        v6 = 56 * v3;
        v7 = v4;
        do
        {
          v8 = *v7;
          v9 = *(v7 + 1);
          v10 = *(v7 + 2);
          *(result + 48) = *(v7 + 6);
          *(result + 16) = v9;
          *(result + 32) = v10;
          *result = v8;
          result += 56;
          v7 = (v7 + 56);
          v6 -= 56;
        }

        while (v6);
      }
    }

    if (v4)
    {
      if (*v2 == v4)
      {
        *v2 = 0;
        *(v2 + 8) = 0;
      }

      return WTF::fastFree(v4, a2);
    }
  }

  return result;
}

uint64_t IPC::VectorArgumentCoder<false,WebCore::HTTPHeaderMap::CommonHeader,0ul,WTF::CrashOnOverflow,6ul>::encode<IPC::Encoder,WTF::Vector<WebCore::HTTPHeaderMap::CommonHeader,0ul,WTF::CrashOnOverflow,6ul,WTF::FastMalloc> const&>(IPC::Encoder *a1, uint64_t a2)
{
  result = IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *(a2 + 12));
  v5 = *(a2 + 12);
  if (v5)
  {
    v6 = *a2;
    v7 = *a2 + 16 * v5;
    v8 = v6;
    do
    {
      v9 = *v8;
      v8 += 8;
      IPC::ArgumentCoder<unsigned short,void>::encode<IPC::Encoder>(a1, v9);
      result = IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, v6 + 1);
      v6 = v8;
    }

    while (v8 != v7);
  }

  return result;
}

uint64_t IPC::VectorArgumentCoder<false,WebCore::HTTPHeaderMap::UncommonHeader,0ul,WTF::CrashOnOverflow,0ul>::encode<IPC::Encoder,WTF::Vector<WebCore::HTTPHeaderMap::UncommonHeader,0ul,WTF::CrashOnOverflow,0ul,WTF::FastMalloc> const&>(IPC::Encoder *a1, uint64_t a2)
{
  result = IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *(a2 + 12));
  v5 = *(a2 + 12);
  if (v5)
  {
    v6 = *a2;
    v7 = &v6[2 * v5];
    do
    {
      IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, v6);
      result = IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, v6 + 1);
      v6 += 2;
    }

    while (v6 != v7);
  }

  return result;
}

IPC::Decoder *IPC::Decoder::decode<WebCore::HTTPHeaderMap::CommonHeader>(uint64_t a1, IPC::Decoder *this)
{
  v4 = *(this + 1);
  v5 = ((*(this + 2) + 1) & 0xFFFFFFFFFFFFFFFELL);
  v6 = v5 - *this;
  v10 = v4 >= v6;
  v7 = v4 - v6;
  if (!v10 || v7 <= 1)
  {
    IPC::Decoder::markInvalid(this);
LABEL_20:
    IPC::Decoder::markInvalid(this);
    v12 = 0;
LABEL_21:
    IPC::Decoder::markInvalid(this);
    goto LABEL_10;
  }

  *(this + 2) = v5 + 1;
  if (!v5)
  {
    goto LABEL_20;
  }

  v9 = *v5;
  v10 = v9 >= 0x60;
  v11 = v9 < 0x60;
  if (v9 >= 0x60)
  {
    v9 = 0;
  }

  v12 = v9 | (v11 << 16);
  if (v10)
  {
    goto LABEL_21;
  }

LABEL_10:
  result = IPC::Decoder::decode<WTF::String>(this, &v17);
  if (*this)
  {
    if (HIWORD(v12) && (v18 & 1) != 0)
    {
      v15 = v17;
      *a1 = v12;
      *(a1 + 8) = v15;
      *(a1 + 16) = 1;
      return result;
    }

    __break(1u);
  }

  *a1 = 0;
  *(a1 + 16) = 0;
  if (v18)
  {
    v16 = v17;
    v17 = 0;
    if (v16)
    {
      if (atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v16, v14);
      }
    }
  }

  return IPC::Decoder::markInvalid(this);
}

uint64_t std::optional<WebCore::HTTPHeaderMap::CommonHeader>::~optional(uint64_t a1, WTF::StringImpl *a2)
{
  if (*(a1 + 16) == 1)
  {
    v3 = *(a1 + 8);
    *(a1 + 8) = 0;
    if (v3)
    {
      if (atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v3, a2);
      }
    }
  }

  return a1;
}

unint64_t WTF::Vector<WebCore::HTTPHeaderMap::CommonHeader,0ul,WTF::CrashOnOverflow,6ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::HTTPHeaderMap::CommonHeader>(uint64_t a1, unint64_t a2)
{
  result = WTF::Vector<WebCore::HTTPHeaderMap::CommonHeader,0ul,WTF::CrashOnOverflow,6ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(a1, *(a1 + 12) + 1, a2);
  v4 = *(a1 + 12);
  v5 = v4 + 1;
  v6 = *a1 + 16 * v4;
  *v6 = *result;
  v7 = *(result + 8);
  *(result + 8) = 0;
  *(v6 + 8) = v7;
  *(a1 + 12) = v5;
  return result;
}

unint64_t WTF::Vector<WebCore::HTTPHeaderMap::CommonHeader,0ul,WTF::CrashOnOverflow,6ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2, unint64_t a3)
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

    if (v11 <= 6)
    {
      v12 = 6;
    }

    else
    {
      v12 = v11;
    }

    WTF::Vector<WebCore::HTTPHeaderMap::CommonHeader,0ul,WTF::CrashOnOverflow,6ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v12);
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

    if (v8 <= 6)
    {
      v9 = 6;
    }

    else
    {
      v9 = v8;
    }

    WTF::Vector<WebCore::HTTPHeaderMap::CommonHeader,0ul,WTF::CrashOnOverflow,6ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v9);
    return *a1 + v6;
  }

  return v3;
}

uint64_t WTF::Vector<WebCore::HTTPHeaderMap::CommonHeader,0ul,WTF::CrashOnOverflow,6ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 8) < a2)
  {
    v2 = a2;
    if (a2 >> 28)
    {
      __break(0xC471u);
      JUMPOUT(0x19D80D814);
    }

    v4 = *a1;
    v5 = (*a1 + 16 * *(a1 + 12));
    v6 = WTF::fastMalloc((16 * a2));
    *(a1 + 8) = v2;
    *a1 = v6;
    WTF::VectorTypeOperations<WebCore::HTTPHeaderMap::CommonHeader>::move(v4, v5, v6);
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

WTF::StringImpl **WTF::VectorTypeOperations<WebCore::HTTPHeaderMap::CommonHeader>::move(WTF::StringImpl **result, WTF::StringImpl *a2, uint64_t a3)
{
  for (; result != a2; result += 2)
  {
    *a3 = *result;
    v3 = result[1];
    result[1] = 0;
    *(a3 + 8) = v3;
    v4 = result[1];
    result[1] = 0;
    if (v4)
    {
      if (atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        v7 = result;
        v5 = a2;
        v6 = a3;
        WTF::StringImpl::destroy(v4, a2);
        result = v7;
        a2 = v5;
        a3 = v6;
      }
    }

    a3 += 16;
  }

  return result;
}

uint64_t WTF::Vector<WebCore::HTTPHeaderMap::CommonHeader,0ul,WTF::CrashOnOverflow,6ul,WTF::FastMalloc>::shrinkCapacity(uint64_t result, unint64_t a2)
{
  if (*(result + 8) > a2)
  {
    v3 = result;
    v4 = *(result + 12);
    if (v4 > a2)
    {
      result = WTF::VectorDestructor<true,WebCore::HTTPHeaderMap::CommonHeader>::destruct((*result + 16 * a2), (*result + 16 * v4));
      *(v3 + 12) = a2;
      LODWORD(v4) = a2;
    }

    v5 = *v3;
    if (a2)
    {
      v6 = v4;
      if (a2 >> 28)
      {
        __break(0xC471u);
        return result;
      }

      result = WTF::fastMalloc((16 * a2));
      *(v3 + 8) = a2;
      *v3 = result;
      if (result != v5)
      {
        result = WTF::VectorTypeOperations<WebCore::HTTPHeaderMap::CommonHeader>::move(v5, &v5[2 * v6], result);
      }
    }

    if (v5)
    {
      if (*v3 == v5)
      {
        *v3 = 0;
        *(v3 + 8) = 0;
      }

      return WTF::fastFree(v5, a2);
    }
  }

  return result;
}

WTF::StringImpl *IPC::Decoder::decode<WebCore::HTTPHeaderMap::UncommonHeader>(uint64_t a1, IPC::Decoder *a2)
{
  IPC::Decoder::decode<WTF::String>(a2, &v11);
  result = IPC::Decoder::decode<WTF::String>(a2, &v9);
  v6 = *a2;
  if (*a2)
  {
    if (v12)
    {
      v7 = v11;
      v11 = 0;
      if (v10)
      {
        v8 = v9;
        *a1 = v7;
        *(a1 + 8) = v8;
        *(a1 + 16) = 1;
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  *a1 = 0;
  *(a1 + 16) = 0;
  if (v10)
  {
    result = v9;
    v9 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        result = WTF::StringImpl::destroy(result, v5);
      }
    }
  }

LABEL_5:
  if (v12 == 1)
  {
    result = v11;
    v11 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        result = WTF::StringImpl::destroy(result, v5);
      }
    }
  }

  if (!v6)
  {
    return IPC::Decoder::markInvalid(a2);
  }

  return result;
}

uint64_t std::optional<WebCore::HTTPHeaderMap::UncommonHeader>::~optional(uint64_t a1, WTF::StringImpl *a2)
{
  if (*(a1 + 16) == 1)
  {
    v3 = *(a1 + 8);
    *(a1 + 8) = 0;
    if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v3, a2);
    }

    v4 = *a1;
    *a1 = 0;
    if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v4, a2);
    }
  }

  return a1;
}

uint64_t *WTF::Vector<WebCore::HTTPHeaderMap::UncommonHeader,0ul,WTF::CrashOnOverflow,0ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::HTTPHeaderMap::UncommonHeader>(uint64_t a1, unint64_t a2)
{
  result = WTF::Vector<WebCore::HTTPHeaderMap::UncommonHeader,0ul,WTF::CrashOnOverflow,0ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(a1, *(a1 + 12) + 1, a2);
  v4 = *(a1 + 12);
  v5 = v4 + 1;
  v6 = (*a1 + 16 * v4);
  v7 = *result;
  *result = 0;
  *v6 = v7;
  v8 = result[1];
  result[1] = 0;
  v6[1] = v8;
  *(a1 + 12) = v5;
  return result;
}

unint64_t WTF::Vector<WebCore::HTTPHeaderMap::UncommonHeader,0ul,WTF::CrashOnOverflow,0ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v3 = a3;
  v5 = *a1;
  if (*a1 > a3 || v5 + 16 * *(a1 + 12) <= a3)
  {
    v9 = *(a1 + 8);
    if (v9 + (v9 >> 1) <= v9 + 1)
    {
      v10 = v9 + 1;
    }

    else
    {
      v10 = v9 + (v9 >> 1);
    }

    if (v10 > a2)
    {
      a2 = v10;
    }

    WTF::Vector<WebCore::HTTPHeaderMap::UncommonHeader,0ul,WTF::CrashOnOverflow,0ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, a2);
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

    if (v8 > a2)
    {
      a2 = v8;
    }

    WTF::Vector<WebCore::HTTPHeaderMap::UncommonHeader,0ul,WTF::CrashOnOverflow,0ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, a2);
    return *a1 + v6;
  }

  return v3;
}

uint64_t WTF::Vector<WebCore::HTTPHeaderMap::UncommonHeader,0ul,WTF::CrashOnOverflow,0ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(uint64_t result, unint64_t a2)
{
  if (*(result + 8) >= a2)
  {
    return 1;
  }

  v2 = a2;
  if (!(a2 >> 28))
  {
    v3 = result;
    v4 = *result;
    v5 = *(result + 12);
    v6 = WTF::fastMalloc((16 * a2));
    *(v3 + 8) = v2;
    *v3 = v6;
    if (v5)
    {
      v8 = v6;
      v9 = v4;
      do
      {
        v10 = *v9;
        *v9 = 0;
        *v8 = v10;
        v11 = *(v9 + 1);
        *(v9 + 1) = 0;
        v8[1] = v11;
        WebCore::HTTPHeaderMap::UncommonHeader::~UncommonHeader(v9);
        v8 += 2;
        v9 = (v12 + 16);
      }

      while (v9 != (v4 + 16 * v5));
    }

    if (v4)
    {
      if (*v3 == v4)
      {
        *v3 = 0;
        *(v3 + 8) = 0;
      }

      WTF::fastFree(v4, v7);
    }

    return 1;
  }

  __break(0xC471u);
  return result;
}

void WTF::Vector<WebCore::HTTPHeaderMap::UncommonHeader,0ul,WTF::CrashOnOverflow,0ul,WTF::FastMalloc>::shrinkCapacity(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 8) > a2)
  {
    v4 = *(a1 + 12);
    if (v4 > a2)
    {
      WTF::VectorTypeOperations<WebCore::HTTPHeaderMap::UncommonHeader>::destruct((*a1 + 16 * a2), (*a1 + 16 * v4));
      *(a1 + 12) = a2;
      LODWORD(v4) = a2;
    }

    v5 = *a1;
    if (a2)
    {
      if (a2 >> 28)
      {
        __break(0xC471u);
        return;
      }

      v6 = WTF::fastMalloc((16 * a2));
      *(a1 + 8) = a2;
      *a1 = v6;
      if (v4 && v6 != v5)
      {
        v7 = (v5 + 16 * v4);
        v8 = v5;
        do
        {
          v9 = *v8;
          *v8 = 0;
          *v6 = v9;
          v10 = *(v8 + 1);
          *(v8 + 1) = 0;
          *(v6 + 1) = v10;
          v11 = v6;
          WebCore::HTTPHeaderMap::UncommonHeader::~UncommonHeader(v8);
          v6 = (v11 + 16);
          v8 = (v8 + 16);
        }

        while (v8 != v7);
      }
    }

    if (v5)
    {
      if (*a1 == v5)
      {
        *a1 = 0;
        *(a1 + 8) = 0;
      }

      WTF::fastFree(v5, a2);
    }
  }
}

uint64_t IPC::ArgumentCoder<WTF::Markable<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::MarkableTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,void>::encode<IPC::Encoder,WTF::Markable<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::MarkableTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>> const&>(IPC::Encoder *a1, uint64_t *a2)
{
  v4 = *a2;
  result = IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *a2 == 0);
  if (v4)
  {
    v6 = *a2;
    if (*a2)
    {

      return IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, v6);
    }

    else
    {
      result = 157;
      __break(0xC471u);
    }
  }

  return result;
}

uint64_t IPC::ArgumentCoder<WTF::Markable<WTF::ObjectIdentifierGeneric<WebCore::ElementIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::MarkableTraits<WTF::ObjectIdentifierGeneric<WebCore::ElementIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,void>::encode<IPC::Encoder,WTF::Markable<WTF::ObjectIdentifierGeneric<WebCore::ElementIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::MarkableTraits<WTF::ObjectIdentifierGeneric<WebCore::ElementIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>> const&>(IPC::Encoder *a1, uint64_t *a2)
{
  v4 = *a2;
  result = IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *a2 == 0);
  if (v4)
  {
    v6 = *a2;
    if (*a2)
    {

      return IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, v6);
    }

    else
    {
      result = 157;
      __break(0xC471u);
    }
  }

  return result;
}

mpark *IPC::ArgumentCoder<mpark::variant<WebCore::ResourceRequestBase::RequestData,WebCore::ResourceRequestPlatformData>,void>::encode<IPC::Encoder,mpark::variant<WebCore::ResourceRequestBase::RequestData,WebCore::ResourceRequestPlatformData>>(mpark *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {

    return IPC::ArgumentCoder<mpark::variant<WebCore::ResourceRequestBase::RequestData,WebCore::ResourceRequestPlatformData>,void>::encode<IPC::Encoder,mpark::variant<WebCore::ResourceRequestBase::RequestData,WebCore::ResourceRequestPlatformData>,0ul>(a1, a2, a3);
  }

  else
  {
    if (*(a2 + 152))
    {
      mpark::throw_bad_variant_access(a1);
    }

    return IPC::ArgumentCoder<WebCore::ResourceRequestBase::RequestData,void>::encode(a1, a2);
  }
}