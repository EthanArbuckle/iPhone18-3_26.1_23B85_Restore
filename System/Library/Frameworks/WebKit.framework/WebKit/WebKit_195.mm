atomic_uchar **WebKit::RemoteImageDecoderAVFManager::deleteRemoteImageDecoder(void *a1, uint64_t *a2)
{
  v6 = a1[4];
  v4 = a1 + 4;
  v5 = v6;
  if (v6)
  {
    v7 = *a2;
    if (*a2 == -1 || !v7)
    {
      __break(0xC471u);
      JUMPOUT(0x19E2BB6E0);
    }

    v8 = *(v5 - 8);
    v9 = (v7 + ~(v7 << 32)) ^ ((v7 + ~(v7 << 32)) >> 22);
    v10 = 9 * ((v9 + ~(v9 << 13)) ^ ((v9 + ~(v9 << 13)) >> 8));
    v11 = (v10 ^ (v10 >> 15)) + ~((v10 ^ (v10 >> 15)) << 27);
    v12 = v8 & ((v11 >> 31) ^ v11);
    v13 = *(v5 + 16 * v12);
    if (v13 != v7)
    {
      v14 = 1;
      while (v13)
      {
        v12 = (v12 + v14) & v8;
        v13 = *(v5 + 16 * v12);
        ++v14;
        if (v13 == v7)
        {
          goto LABEL_10;
        }
      }

      v12 = *(v5 - 4);
    }

LABEL_10:
    if (v12 != *(v5 - 4))
    {
      v15 = (v5 + 16 * v12);
      v16 = v15[1];
      v15[1] = 0;
      v17 = *v4;
      if (!*v4 || (v17 += 16 * *(v17 - 4), v17 != v15))
      {
        if (v17 != v15)
        {
          *v15 = -1;
          v15[1] = 0;
          v18 = *v4;
          v19 = vadd_s32(*(*v4 - 16), 0xFFFFFFFF00000001);
          *(v18 - 16) = v19;
          v20 = *(v18 - 4);
          if (6 * v19.i32[1] < v20 && v20 >= 9)
          {
            WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::IDBDatabaseConnectionIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::IDBDatabaseConnectionIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebCore::IDBServer::UniqueIDBDatabaseConnection,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::IDBDatabaseConnectionIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebCore::IDBServer::UniqueIDBDatabaseConnection,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::IDBDatabaseConnectionIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::IDBDatabaseConnectionIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebCore::IDBServer::UniqueIDBDatabaseConnection,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::IDBDatabaseConnectionIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::IDBDatabaseConnectionIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakPtr<WebCore::IDBServer::UniqueIDBDatabaseConnection,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::IDBDatabaseConnectionIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(v4, v20 >> 1);
          }
        }
      }

      if (v16 && atomic_fetch_add(v16, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v16);
        WTF::fastFree(v16, a2);
      }
    }
  }

  result = a1[6];
  if (result)
  {
    result = WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteMediaPlayerManager>(result, a1[5], &v30);
    if (v30)
    {
      v24 = *(v30 + 32);
      v25 = IPC::Encoder::operator new(0x238, v23);
      *v25 = 1380;
      *(v25 + 68) = 0;
      *(v25 + 70) = 0;
      *(v25 + 69) = 0;
      *(v25 + 2) = 0;
      *(v25 + 3) = 0;
      *(v25 + 1) = 0;
      IPC::Encoder::encodeHeader(v25);
      v31 = v25;
      IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v25, *a2);
      IPC::Connection::sendMessageImpl(v24, &v31, 0, 0);
      result = v31;
      v31 = 0;
      if (result)
      {
        IPC::Encoder::~Encoder(result, v26);
        result = bmalloc::api::tzoneFree(v28, v29);
      }

      v27 = v30;
      v30 = 0;
      if (v27)
      {
        return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUProcessConnection,(WTF::DestructionThread)0>::deref((v27 + 24), v26);
      }
    }
  }

  return result;
}

uint64_t WebKit::RemoteImageDecoderAVF::supportsMediaType(WebCore::AVAssetMIMETypeCache *a1)
{
  if (a1 != 1)
  {
    return 0;
  }

  v2 = WebCore::AVAssetMIMETypeCache::singleton(a1);

  return MEMORY[0x1EEE5D5C0](v2);
}

uint64_t WebKit::RemoteImageDecoderAVF::encodedDataStatus(WebKit::RemoteImageDecoderAVF *this)
{
  if (*(this + 15))
  {
    return 4;
  }

  if (*(this + 136))
  {
    return 3;
  }

  if (*(this + 140))
  {
    return 2;
  }

  return 1;
}

uint64_t WebKit::RemoteImageDecoderAVF::setEncodedDataStatusChangeCallback(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a2 = 0;
  result = *(a1 + 88);
  *(a1 + 88) = v3;
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t WebKit::RemoteImageDecoderAVF::size(WebKit::RemoteImageDecoderAVF *this)
{
  if (*(this + 136) == 1)
  {
    return *(this + 16);
  }

  else
  {
    return 0;
  }
}

uint64_t WebKit::RemoteImageDecoderAVF::repetitionCount(WebKit::RemoteImageDecoderAVF *this)
{
  if (*(this + 15) <= 1uLL)
  {
    return 0;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t WebKit::RemoteImageDecoderAVF::uti@<X0>(uint64_t this@<X0>, atomic_uint **a2@<X8>)
{
  v2 = *(this + 72);
  if (v2)
  {
    atomic_fetch_add_explicit(v2, 2u, memory_order_relaxed);
  }

  *a2 = v2;
  return this;
}

uint64_t WebKit::RemoteImageDecoderAVF::frameSizeAtIndex(uint64_t a1)
{
  if (*(a1 + 136) == 1)
  {
    return *(a1 + 128);
  }

  else
  {
    return 0;
  }
}

double WebKit::RemoteImageDecoderAVF::frameDurationAtIndex(WebKit::RemoteImageDecoderAVF *this, unint64_t a2)
{
  result = 0.0;
  if (*(this + 29) > a2)
  {
    return *(*(this + 13) + 16 * a2 + 8);
  }

  return result;
}

uint64_t WebKit::RemoteImageDecoderAVF::frameHasAlphaAtIndex(WebKit::RemoteImageDecoderAVF *this, unint64_t a2)
{
  if (*(this + 29) <= a2)
  {
    v2 = 0;
  }

  else
  {
    v2 = *(*(this + 13) + 16 * a2);
  }

  return v2 & 1;
}

atomic_uchar **WebKit::RemoteImageDecoderAVF::createFrameImageAtIndex@<X0>(uint64_t a1@<X0>, atomic_uchar *a2@<X1>, void *a3@<X8>)
{
  v7 = (a1 + 96);
  v6 = *(a1 + 96);
  if (!v6)
  {
LABEL_12:
    while (1)
    {
      v15 = *(a1 + 8);
      if ((v15 & 1) == 0)
      {
        break;
      }

      v14 = *(a1 + 8);
      atomic_compare_exchange_strong_explicit((a1 + 8), &v14, v15 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v14 == v15)
      {
        goto LABEL_14;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*(a1 + 8));
LABEL_14:
    v26 = a1;
    v16 = WTF::fastMalloc(0x18);
    *v16 = &unk_1F112A338;
    v16[1] = &v26;
    v16[2] = a2;
    v25 = v16;
    WTF::callOnMainRunLoopAndWait();
    result = v25;
    if (v25)
    {
      result = (*(*v25 + 1))(v25);
    }

    v18 = *v7;
    if (*v7)
    {
      if (a2 == 2147483646)
      {
        __break(0xC471u);
        JUMPOUT(0x19E2BBB70);
      }

      if (a2 == 0x7FFFFFFF)
      {
        __break(0xC471u);
LABEL_32:
        JUMPOUT(0x19E2BBB30);
      }

      v19 = *(v18 - 8);
      v20 = 9 * ((~(a2 << 15) + a2) ^ ((~(a2 << 15) + a2) >> 10));
      v21 = v19 & (((v20 ^ (v20 >> 6)) + ~((v20 ^ (v20 >> 6)) << 11)) ^ (((v20 ^ (v20 >> 6)) + ~((v20 ^ (v20 >> 6)) << 11)) >> 16));
      v22 = *(v18 + 16 * v21);
      if (v22 == a2)
      {
LABEL_23:
        result = WTF::HashMap<int,WTF::RetainPtr<CGImage *>,WTF::IntHash<int>,WTF::UnsignedWithZeroKeyHashTraits<int>,WTF::HashTraits<WTF::RetainPtr<CGImage *>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<int,WTF::RetainPtr<CGImage *>,WTF::IntHash<int>,WTF::UnsignedWithZeroKeyHashTraits<int>,WTF::HashTraits<WTF::RetainPtr<CGImage *>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::IntHash<int>>,int>(a3, v7, a2);
        goto LABEL_25;
      }

      v23 = 1;
      while (v22 != 0x7FFFFFFF)
      {
        LODWORD(v21) = (v21 + v23) & v19;
        v22 = *(v18 + 16 * v21);
        ++v23;
        if (v22 == a2)
        {
          goto LABEL_23;
        }
      }
    }

    *a3 = 0;
LABEL_25:
    v24 = v26;
    v26 = 0;
    if (v24)
    {
      return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::ImageDecoder,(WTF::DestructionThread)0>::deref((v24 + 8), v17);
    }

    return result;
  }

  if (a2 == 2147483646)
  {
    __break(0xC471u);
    goto LABEL_32;
  }

  if (a2 == 0x7FFFFFFF)
  {
    __break(0xC471u);
    JUMPOUT(0x19E2BBB50);
  }

  v8 = *(v6 - 8);
  v9 = 9 * ((~(a2 << 15) + a2) ^ ((~(a2 << 15) + a2) >> 10));
  v10 = v8 & (((v9 ^ (v9 >> 6)) + ~((v9 ^ (v9 >> 6)) << 11)) ^ (((v9 ^ (v9 >> 6)) + ~((v9 ^ (v9 >> 6)) << 11)) >> 16));
  v11 = *(v6 + 16 * v10);
  if (v11 != a2)
  {
    v12 = 1;
    do
    {
      if (v11 == 0x7FFFFFFF)
      {
        goto LABEL_12;
      }

      LODWORD(v10) = (v10 + v12) & v8;
      v11 = *(v6 + 16 * v10);
      ++v12;
    }

    while (v11 != a2);
  }

  return WTF::HashMap<int,WTF::RetainPtr<CGImage *>,WTF::IntHash<int>,WTF::UnsignedWithZeroKeyHashTraits<int>,WTF::HashTraits<WTF::RetainPtr<CGImage *>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<int,WTF::RetainPtr<CGImage *>,WTF::IntHash<int>,WTF::UnsignedWithZeroKeyHashTraits<int>,WTF::HashTraits<WTF::RetainPtr<CGImage *>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::IntHash<int>>,int>(a3, v7, a2);
}

atomic_uchar **WebKit::RemoteImageDecoderAVF::setExpectedContentSize(WebKit::RemoteImageDecoderAVF *this, uint64_t a2)
{
  result = *(this + 4);
  if (result)
  {
    result = WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteMediaPlayerManager>(result, *(this + 3), &v12);
    if (v12)
    {
      v6 = *(v12 + 32);
      v7 = IPC::Encoder::operator new(0x238, v5);
      *v7 = 1381;
      *(v7 + 68) = 0;
      *(v7 + 70) = 0;
      *(v7 + 69) = 0;
      *(v7 + 2) = 0;
      *(v7 + 3) = 0;
      *(v7 + 1) = 0;
      IPC::Encoder::encodeHeader(v7);
      v13 = v7;
      IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v7, *(this + 7));
      IPC::ArgumentCoder<API::Int64,void>::encode(v7, a2);
      IPC::Connection::sendMessageImpl(v6, &v13, 0, 0);
      result = v13;
      v13 = 0;
      if (result)
      {
        IPC::Encoder::~Encoder(result, v8);
        result = bmalloc::api::tzoneFree(v10, v11);
      }

      v9 = v12;
      v12 = 0;
      if (v9)
      {
        return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUProcessConnection,(WTF::DestructionThread)0>::deref((v9 + 24), v8);
      }
    }
  }

  return result;
}

atomic_uchar **WebKit::RemoteImageDecoderAVF::setData(WebKit::RemoteImageDecoderAVF *this, const WebCore::FragmentedSharedBuffer *a2, char a3)
{
  result = *(this + 4);
  if (!result)
  {
    return result;
  }

  result = WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteMediaPlayerManager>(result, *(this + 3), &v89);
  if (!v89)
  {
    return result;
  }

  v7 = *(v89 + 32);
  v76 = *(a2 + 7);
  v77 = a2;
  atomic_fetch_add(a2 + 2, 1u);
  v78 = 0;
  v79 = (this + 56);
  v80 = &v76;
  v81[0] = a3;
  IPC::Connection::createSyncMessageEncoder(0x1009, 0, v98);
  v8 = v98[0];
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v98[0], *v79);
  IPC::ArgumentCoder<IPC::SharedBufferReference,void>::encode(v8, v80);
  IPC::Encoder::operator<<<BOOL &>(v8, v81);
  v9 = IPC::Connection::sendSyncMessage(v7, v98[1], v98, 0, &v96, INFINITY);
  if (v97)
  {
    if (v97 != 1)
    {
      mpark::throw_bad_variant_access(v9);
    }

    LOBYTE(v82[0]) = v96;
    v88 = 1;
LABEL_90:
    v53 = v98[0];
    v98[0] = 0;
    if (v53)
    {
      IPC::Encoder::~Encoder(v53, v10);
      bmalloc::api::tzoneFree(v59, v60);
    }

    v54 = v78;
    v78 = 0;
    if (v54)
    {
      WTF::ThreadSafeRefCounted<WebCore::SharedMemory,(WTF::DestructionThread)0>::deref(v54);
    }

    result = v77;
    v77 = 0;
    if (result && atomic_fetch_add(result + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, result + 2);
      result = (*(*result + 1))(result);
    }

    if (!v88)
    {
      result = std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul,3ul>,unsigned long long,WebCore::IntSize,BOOL,std::optional<WTF::Vector<WebCore::ImageDecoderFrameInfo,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>::__tuple_impl(&v99, &v82[1]);
      *(this + 80) = a3;
      *(this + 15) = v99;
      if (v100 >= 1 && SHIDWORD(v100) >= 1)
      {
        v55 = v100;
        if ((*(this + 136) & 1) == 0)
        {
          *(this + 136) = 1;
        }

        *(this + 16) = v55;
      }

      *(this + 140) = v101;
      if (v104 == 1)
      {
        result = *(this + 13);
        *(this + 13) = v102;
        v56 = *(this + 29);
        *(this + 14) = v103;
        HIDWORD(v103) = v56;
        if (result)
        {
          v102 = 0;
          LODWORD(v103) = 0;
          result = WTF::fastFree(result, v10);
        }
      }

      if (!v88)
      {
        if (v87 == 1)
        {
          v57 = v85;
          if (v85)
          {
            v85 = 0;
            v86 = 0;
            WTF::fastFree(v57, v10);
          }
        }

        result = v82[0];
        v82[0] = 0;
        if (result)
        {
          IPC::Decoder::~Decoder(result);
          result = bmalloc::api::tzoneFree(v64, v65);
        }
      }
    }

    v58 = v89;
    v89 = 0;
    if (v58)
    {
      return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUProcessConnection,(WTF::DestructionThread)0>::deref((v58 + 24), v10);
    }

    return result;
  }

  v11 = v96;
  v96 = 0;
  if (*(v11 + 25) == 3194)
  {
    LOBYTE(v82[0]) = 11;
    v88 = 1;
    goto LABEL_8;
  }

  LOBYTE(v90) = 0;
  v95 = 0;
  v14 = *(v11 + 1);
  v15 = ((*(v11 + 2) + 7) & 0xFFFFFFFFFFFFFFF8);
  v10 = *v11;
  v16 = v15 - *v11;
  v17 = v14 >= v16;
  v18 = v14 - v16;
  if (!v17 || v18 <= 7)
  {
    goto LABEL_138;
  }

  *(v11 + 2) = v15 + 1;
  if (!v15)
  {
LABEL_56:
    *v11 = 0;
    *(v11 + 1) = 0;
    v40 = *(v11 + 3);
    if (v40 && v14)
    {
      (*(*v40 + 16))(v40);
    }

    goto LABEL_57;
  }

  v19 = *v15;
  v20 = IPC::Decoder::decode<WebCore::IntSize>(v11);
  if ((v21 & 1) == 0)
  {
LABEL_57:
    LOBYTE(v82[0]) = 0;
    v87 = 0;
    v10 = *v11;
    v41 = *(v11 + 1);
    *v11 = 0;
    *(v11 + 1) = 0;
    v42 = *(v11 + 3);
    if (v42 && v41)
    {
      (*(*v42 + 16))(v42, v10);
    }

    v34 = 0;
LABEL_59:
    if (v95 == v34)
    {
      if (v95)
      {
        v90 = *v82;
        v91 = v83;
        if (v94 == v86)
        {
          if (v94)
          {
            v43 = v92;
            if (v92)
            {
              v92 = 0;
              LODWORD(v93) = 0;
              WTF::fastFree(v43, v10);
            }

            v44 = v84;
            v84 = 0;
            v92 = v44;
            v45 = v85;
            HIDWORD(v85) = 0;
            v93 = v45;
          }
        }

        else if (v94)
        {
          v63 = v92;
          if (v92)
          {
            v92 = 0;
            LODWORD(v93) = 0;
            WTF::fastFree(v63, v10);
          }

          v94 = 0;
        }

        else
        {
          v66 = v84;
          v84 = 0;
          v92 = v66;
          v67 = v85;
          HIDWORD(v85) = 0;
          v93 = v67;
          v94 = 1;
        }
      }
    }

    else if (v95)
    {
      if (v94 == 1)
      {
        v46 = v92;
        if (v92)
        {
          v92 = 0;
          LODWORD(v93) = 0;
          WTF::fastFree(v46, v10);
        }
      }

      v95 = 0;
    }

    else
    {
      std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul,3ul>,unsigned long long,WebCore::IntSize,BOOL,std::optional<WTF::Vector<WebCore::ImageDecoderFrameInfo,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>::__tuple_impl(&v90, v82);
      v95 = 1;
    }

    if (v87 == 1 && v86 == 1)
    {
      v47 = v84;
      if (v84)
      {
        v84 = 0;
        LODWORD(v85) = 0;
        WTF::fastFree(v47, v10);
      }
    }

    if (v95 == 1)
    {
      v99 = v11;
      std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul,3ul>,unsigned long long,WebCore::IntSize,BOOL,std::optional<WTF::Vector<WebCore::ImageDecoderFrameInfo,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>::__tuple_impl(&v100, &v90);
      v48 = v99;
      v99 = 0;
      v82[0] = v48;
      std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul,3ul>,unsigned long long,WebCore::IntSize,BOOL,std::optional<WTF::Vector<WebCore::ImageDecoderFrameInfo,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>::__tuple_impl(&v82[1], &v100);
      v88 = 0;
      if (v105 == 1)
      {
        v49 = v103;
        if (v103)
        {
          v103 = 0;
          v104 = 0;
          WTF::fastFree(v49, v10);
        }
      }

      v50 = v99;
      v99 = 0;
      if (v50)
      {
        IPC::Decoder::~Decoder(v50);
        bmalloc::api::tzoneFree(v68, v69);
      }

      if ((v95 & 1) != 0 && v94 == 1)
      {
        v51 = v92;
        if (v92)
        {
          v92 = 0;
          LODWORD(v93) = 0;
          WTF::fastFree(v51, v10);
        }
      }

      goto LABEL_87;
    }

    LOBYTE(v82[0]) = 14;
    v88 = 1;
    if (!v11)
    {
LABEL_87:
      if (!v97)
      {
        v52 = v96;
        v96 = 0;
        if (v52)
        {
          IPC::Decoder::~Decoder(v52);
          bmalloc::api::tzoneFree(v61, v62);
        }
      }

      goto LABEL_90;
    }

LABEL_8:
    IPC::Decoder::~Decoder(v11);
    bmalloc::api::tzoneFree(v12, v13);
    goto LABEL_87;
  }

  v14 = *(v11 + 1);
  v22 = *(v11 + 2);
  v10 = *v11;
  if (v14 <= &v22[-*v11])
  {
    *v11 = 0;
    *(v11 + 1) = 0;
    v74 = *(v11 + 3);
    if (v74)
    {
      if (v14)
      {
        (*(*v74 + 16))(v74);
        v10 = *v11;
        v14 = *(v11 + 1);
        goto LABEL_138;
      }
    }

    else
    {
      v14 = 0;
    }

    v10 = 0;
LABEL_138:
    *v11 = 0;
    *(v11 + 1) = 0;
    v39 = *(v11 + 3);
    if (!v39)
    {
      v14 = 0;
      goto LABEL_56;
    }

    if (!v14)
    {
      goto LABEL_56;
    }

LABEL_125:
    (*(*v39 + 16))(v39, v10);
LABEL_55:
    v14 = *(v11 + 1);
    goto LABEL_56;
  }

  v23 = (v22 + 1);
  *(v11 + 2) = v22 + 1;
  if (!v22)
  {
    goto LABEL_138;
  }

  v24 = *v22;
  if (v24 >= 2)
  {
    goto LABEL_56;
  }

  if (v14 <= v23 - v10)
  {
    v70 = 0;
    v71 = 0;
    *v11 = 0;
    *(v11 + 1) = 0;
    v75 = *(v11 + 3);
    if (v75)
    {
      (*(*v75 + 16))(v75);
      v71 = *v11;
      v70 = *(v11 + 1);
    }

LABEL_142:
    *v11 = 0;
    *(v11 + 1) = 0;
    v73 = *(v11 + 3);
    if (!v73 || !v70)
    {
      v14 = 0;
      v10 = 0;
      goto LABEL_54;
    }

LABEL_149:
    (*(*v73 + 16))(v73, v71, v70);
LABEL_53:
    v10 = *v11;
    v14 = *(v11 + 1);
    goto LABEL_54;
  }

  *(v11 + 2) = v22 + 2;
  if (v22 == -1)
  {
    v70 = v14;
    v71 = v10;
    goto LABEL_142;
  }

  if (*v23 >= 2u)
  {
LABEL_54:
    *v11 = 0;
    *(v11 + 1) = 0;
    v39 = *(v11 + 3);
    if (!v39 || !v14)
    {
      goto LABEL_55;
    }

    goto LABEL_125;
  }

  v25 = v20;
  if (!*v23)
  {
    v82[0] = v19;
    v82[1] = v20;
    v83 = v24;
    LOBYTE(v84) = 0;
    LOBYTE(v86) = 0;
    goto LABEL_36;
  }

  v26 = v23 & 0xFFFFFFFFFFFFFFF8;
  v27 = ((v23 & 0xFFFFFFFFFFFFFFF8) + 8);
  if (v14 < v27 - v10 || v14 - (v27 - v10) <= 7)
  {
    v70 = 0;
    v71 = 0;
    *v11 = 0;
    *(v11 + 1) = 0;
    v72 = *(v11 + 3);
    if (v72)
    {
      (*(*v72 + 16))(v72);
      v71 = *v11;
      v70 = *(v11 + 1);
    }

LABEL_132:
    *v11 = 0;
    *(v11 + 1) = 0;
    v73 = *(v11 + 3);
    if (!v73 || !v70)
    {
      goto LABEL_53;
    }

    goto LABEL_149;
  }

  *(v11 + 2) = v26 + 16;
  if (!v27)
  {
    v70 = v14;
    v71 = v10;
    goto LABEL_132;
  }

  v28 = *v27;
  v99 = 0;
  v100 = 0;
  if (v28 < 0x10000)
  {
    if (v28)
    {
      v29 = WTF::fastMalloc((16 * v28));
      LODWORD(v30) = 0;
      LODWORD(v100) = v28;
      v99 = v29;
      while (1)
      {
        IPC::Decoder::decode<WebCore::ImageDecoderFrameInfo>(v82, v11);
        if (v83 != 1)
        {
          break;
        }

        if (v30 == v100)
        {
          v31 = WTF::Vector<WebCore::TextTab,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v99, v30 + 1, v82);
          v32 = HIDWORD(v100);
          v29 = v99;
          *(v99 + HIDWORD(v100)) = *v31;
        }

        else
        {
          *(v29 + v30) = *v82;
          v32 = HIDWORD(v100);
        }

        LODWORD(v30) = v32 + 1;
        HIDWORD(v100) = v32 + 1;
        if (!--v28)
        {
          v33 = v100;
          goto LABEL_35;
        }
      }

LABEL_52:
      v99 = 0;
      LODWORD(v100) = 0;
      WTF::fastFree(v29, v10);
      goto LABEL_53;
    }

    v29 = 0;
    v33 = 0;
    LODWORD(v30) = 0;
LABEL_35:
    v82[0] = v19;
    v82[1] = v25;
    v83 = v24;
    v84 = v29;
    v85 = __PAIR64__(v30, v33);
    LOBYTE(v86) = 1;
LABEL_36:
    v34 = 1;
    v87 = 1;
    goto LABEL_59;
  }

  v35 = 0;
  LODWORD(v30) = 0;
  do
  {
    result = IPC::Decoder::decode<WebCore::ImageDecoderFrameInfo>(v82, v11);
    if (v83 != 1)
    {
      v29 = v99;
      if (!v99)
      {
        goto LABEL_53;
      }

      goto LABEL_52;
    }

    if (v30 == v100)
    {
      result = WTF::Vector<WebCore::TextTab,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v99, v30 + 1, v82);
      v36 = HIDWORD(v100);
      v35 = v99;
      *(v99 + HIDWORD(v100)) = *result;
    }

    else
    {
      *(v35 + v30) = *v82;
      v36 = HIDWORD(v100);
    }

    v30 = (v36 + 1);
    HIDWORD(v100) = v36 + 1;
    --v28;
  }

  while (v28);
  v33 = v100;
  if (v100 <= v30)
  {
    goto LABEL_128;
  }

  if (!v30)
  {
    goto LABEL_126;
  }

  if (!(v30 >> 28))
  {
    v37 = WTF::fastMalloc((16 * v30));
    LODWORD(v100) = v30;
    v99 = v37;
    if (v37 != v35)
    {
      v38 = 0;
      do
      {
        *(v37 + v38) = *(v35 + v38);
        v38 += 16;
      }

      while (16 * v30 != v38);
      v33 = v30;
      if (!v35)
      {
        goto LABEL_128;
      }

LABEL_127:
      WTF::fastFree(v35, v10);
      v33 = v100;
      LODWORD(v30) = HIDWORD(v100);
LABEL_128:
      v29 = v99;
      goto LABEL_35;
    }

LABEL_126:
    v99 = 0;
    LODWORD(v100) = 0;
    goto LABEL_127;
  }

  __break(0xC471u);
  return result;
}

atomic_uchar **WebKit::RemoteImageDecoderAVF::clearFrameBufferCache(WebKit::RemoteImageDecoderAVF *this, uint64_t a2)
{
  v4 = a2 + 1;
  v5 = *(this + 15);
  if (v5 >= a2 + 1)
  {
    v5 = a2 + 1;
  }

  if (v5)
  {
    for (i = 0; i < v20; ++i)
    {
      v7 = *(this + 12);
      if (v7)
      {
        if (i > 2147483645)
        {
          __break(0xC471u);
          JUMPOUT(0x19E2BC81CLL);
        }

        v8 = *(v7 - 8);
        v9 = 9 * ((~(i << 15) + i) ^ ((~(i << 15) + i) >> 10));
        v10 = (v9 ^ (v9 >> 6)) + ~((v9 ^ (v9 >> 6)) << 11);
        v11 = v8 & (v10 ^ HIWORD(v10));
        v12 = *(v7 + 16 * v11);
        if (v12 != i)
        {
          v13 = 1;
          while (v12 != 0x7FFFFFFF)
          {
            v11 = (v11 + v13) & v8;
            v12 = *(v7 + 16 * v11);
            ++v13;
            if (v12 == i)
            {
              goto LABEL_13;
            }
          }

          v11 = *(v7 - 4);
        }

LABEL_13:
        if (v11 != *(v7 - 4))
        {
          v14 = v7 + 16 * v11;
          *v14 = 2147483646;
          v15 = *(v14 + 8);
          *(v14 + 8) = 0;
          if (v15)
          {
            CFRelease(v15);
          }

          v16 = *(this + 12);
          v17 = vadd_s32(*(v16 - 16), 0xFFFFFFFF00000001);
          *(v16 - 16) = v17;
          v18 = *(v16 - 4);
          if (6 * v17.i32[1] < v18 && v18 >= 9)
          {
            WTF::HashTable<int,WTF::KeyValuePair<int,WTF::RetainPtr<CGImage *>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<int,WTF::RetainPtr<CGImage *>>>,WTF::IntHash<int>,WTF::HashMap<int,WTF::RetainPtr<CGImage *>,WTF::IntHash<int>,WTF::UnsignedWithZeroKeyHashTraits<int>,WTF::HashTraits<WTF::RetainPtr<CGImage *>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::UnsignedWithZeroKeyHashTraits<int>,WTF::FastMalloc>::rehash(this + 12, v18 >> 1, 0);
          }
        }
      }

      v20 = *(this + 15);
      if (v20 >= v4)
      {
        v20 = v4;
      }
    }
  }

  result = *(this + 4);
  if (result)
  {
    result = WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteMediaPlayerManager>(result, *(this + 3), &v29);
    if (v29)
    {
      v23 = *(v29 + 32);
      v24 = IPC::Encoder::operator new(0x238, v22);
      *v24 = 1379;
      *(v24 + 68) = 0;
      *(v24 + 70) = 0;
      *(v24 + 69) = 0;
      *(v24 + 2) = 0;
      *(v24 + 3) = 0;
      *(v24 + 1) = 0;
      IPC::Encoder::encodeHeader(v24);
      v30 = v24;
      IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v24, *(this + 7));
      IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v24, a2);
      IPC::Connection::sendMessageImpl(v23, &v30, 0, 0);
      result = v30;
      v30 = 0;
      if (result)
      {
        IPC::Encoder::~Encoder(result, v25);
        result = bmalloc::api::tzoneFree(v27, v28);
      }

      v26 = v29;
      v29 = 0;
      if (v26)
      {
        return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUProcessConnection,(WTF::DestructionThread)0>::deref((v26 + 24), v25);
      }
    }
  }

  return result;
}

void WebKit::RemoteImageDecoderAVFManager::~RemoteImageDecoderAVFManager(WebKit::RemoteImageDecoderAVFManager *this, void *a2)
{
  v3 = *(this + 6);
  if (v3)
  {
    WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteMediaPlayerManager>(v3, *(this + 5), &v7);
    if (v7)
    {
      IPC::MessageReceiverMap::removeMessageReceiver((v7 + 40), 0x59u);
      v4 = v7;
      v7 = 0;
      if (v4)
      {
        WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUProcessConnection,(WTF::DestructionThread)0>::deref((v4 + 24), a2);
      }
    }

    v5 = *(this + 6);
    *(this + 6) = 0;
    if (v5)
    {
      WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v5, a2);
    }
  }

  v6 = *(this + 4);
  if (v6)
  {
    WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::IDBDatabaseConnectionIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::IDBDatabaseConnectionIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebCore::IDBServer::UniqueIDBDatabaseConnection,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::IDBDatabaseConnectionIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebCore::IDBServer::UniqueIDBDatabaseConnection,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::IDBDatabaseConnectionIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::IDBDatabaseConnectionIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebCore::IDBServer::UniqueIDBDatabaseConnection,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::IDBDatabaseConnectionIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::IDBDatabaseConnectionIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakPtr<WebCore::IDBServer::UniqueIDBDatabaseConnection,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::IDBDatabaseConnectionIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::deallocateTable(v6, a2);
  }

  *(this + 1) = &unk_1F10EA5E0;
  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::~WeakPtrFactory(this + 2, a2);
}

{
  WebKit::RemoteImageDecoderAVFManager::~RemoteImageDecoderAVFManager(this, a2);

  bmalloc::api::tzoneFree(v2, v3);
}

void non-virtual thunk toWebKit::RemoteImageDecoderAVFManager::~RemoteImageDecoderAVFManager(WebKit::RemoteImageDecoderAVFManager *this, void *a2)
{
  WebKit::RemoteImageDecoderAVFManager::~RemoteImageDecoderAVFManager((this - 8), a2);
}

{
  WebKit::RemoteImageDecoderAVFManager::~RemoteImageDecoderAVFManager((this - 8), a2);

  bmalloc::api::tzoneFree(v2, v3);
}

atomic_uchar *WebKit::RemoteImageDecoderAVFManager::gpuProcessConnectionDidClose(WebKit::RemoteImageDecoderAVFManager *this, WebKit::GPUProcessConnection *a2)
{
  result = *(this + 6);
  if (result)
  {
    WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteMediaPlayerManager>(result, *(this + 5), &v6);
    if (v6)
    {
      IPC::MessageReceiverMap::removeMessageReceiver((v6 + 40), 0x59u);
      v5 = v6;
      v6 = 0;
      if (v5)
      {
        WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUProcessConnection,(WTF::DestructionThread)0>::deref((v5 + 24), v4);
      }
    }

    result = *(this + 6);
    *(this + 6) = 0;
    if (result)
    {
      result = WTF::ThreadSafeWeakPtrControlBlock::weakDeref(result, v4);
    }
  }

  *(this + 5) = 0;
  return result;
}

uint64_t WebKit::RemoteImageDecoderAVFManager::setUseGPUProcess(atomic_ullong *this, char a2)
{
  if (a2)
  {
    WebCore::ImageDecoder::clearFactories(this);
    v4 = WTF::fastMalloc(0x10);
    *v4 = &unk_1F112A360;
    v4[1] = WebKit::RemoteImageDecoderAVF::supportsMediaType;
    v10 = v4;
    v5 = WTF::fastMalloc(0x10);
    *v5 = &unk_1F112A388;
    v5[1] = WebKit::RemoteImageDecoderAVF::canDecodeType;
    v11 = v5;
    v6 = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::RemoteImageDecoderAVFManager,(WTF::DestructionThread)0>::controlBlock(this + 3);
    v7 = WTF::ThreadSafeWeakPtrControlBlock::weakRef(v6);
    v8 = WTF::fastMalloc(0x18);
    *v8 = &unk_1F112A3B0;
    v8[1] = this;
    v8[2] = v7;
    v12 = v8;
    WebCore::ImageDecoder::installFactory();
    if (v12)
    {
      (*(*v12 + 8))(v12);
    }

    if (v11)
    {
      (*(*v11 + 8))(v11);
    }

    result = v10;
    if (v10)
    {
      return (*(*v10 + 8))(v10);
    }
  }

  else
  {

    return MEMORY[0x1EEE54C40](this);
  }

  return result;
}

void *WebKit::RemoteImageDecoderAVFManager::encodedDataStatusChanged(void *result, uint64_t *a2, uint64_t a3, int *a4, int a5)
{
  v5 = result[4];
  if (v5)
  {
    v6 = *a2;
    if (*a2 == -1)
    {
      __break(0xC471u);
      JUMPOUT(0x19E2BCD30);
    }

    if (!v6)
    {
      __break(0xC471u);
      JUMPOUT(0x19E2BCD50);
    }

    v7 = *(v5 - 8);
    v8 = (v6 + ~(v6 << 32)) ^ ((v6 + ~(v6 << 32)) >> 22);
    v9 = 9 * ((v8 + ~(v8 << 13)) ^ ((v8 + ~(v8 << 13)) >> 8));
    v10 = (v9 ^ (v9 >> 15)) + ~((v9 ^ (v9 >> 15)) << 27);
    v11 = v7 & ((v10 >> 31) ^ v10);
    v12 = *(v5 + 16 * v11);
    if (v12 == v6)
    {
LABEL_8:
      if (v6 == -1)
      {
        __break(0xC471u);
        JUMPOUT(0x19E2BCD70);
      }

      if (v12 == v6)
      {
LABEL_13:
        v17 = *(v5 + 16 * v11 + 8);
        if (v17)
        {
          atomic_fetch_add(v17, 1u);
          v18 = *(v17 + 8);
          if (v18)
          {
            *(v18 + 120) = a3;
            if (*a4 >= 1 && a4[1] >= 1)
            {
              v19 = *a4;
              if ((*(v18 + 136) & 1) == 0)
              {
                *(v18 + 136) = 1;
              }

              *(v18 + 128) = v19;
            }

            *(v18 + 140) = a5;
            result = *(v18 + 88);
            if (result)
            {
              if (a3)
              {
                v20 = 4;
              }

              else
              {
                v21 = *(v18 + 136);
                if (a5)
                {
                  v22 = 2;
                }

                else
                {
                  v22 = 1;
                }

                if (v21)
                {
                  v20 = 3;
                }

                else
                {
                  v20 = v22;
                }
              }

              result = (*(*result + 16))(result, v20);
            }
          }

          if (atomic_fetch_add(v17, 0xFFFFFFFF) == 1)
          {
            atomic_store(1u, v17);

            return WTF::fastFree(v17, a2);
          }
        }
      }

      else
      {
        v16 = 1;
        while (v12)
        {
          v11 = (v11 + v16) & v7;
          v12 = *(v5 + 16 * v11);
          ++v16;
          if (v12 == v6)
          {
            goto LABEL_13;
          }
        }
      }
    }

    else
    {
      v13 = 1;
      v14 = *(v5 + 16 * v11);
      v15 = v11;
      while (v14)
      {
        v15 = (v15 + v13) & v7;
        v14 = *(v5 + 16 * v15);
        ++v13;
        if (v14 == v6)
        {
          goto LABEL_8;
        }
      }
    }
  }

  return result;
}

uint64_t WebKit::RemoteMediaSessionHelper::RemoteMediaSessionHelper(uint64_t this)
{
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 8) = 3;
  *(this + 32) = 0;
  *(this + 36) = 0;
  *(this + 39) = 0;
  *this = &unk_1F10F2518;
  *(this + 48) = 0;
  *(this + 56) = &unk_1F10F2588;
  *(this + 80) = 0;
  *(this + 88) = 0;
  *(this + 64) = 0;
  *(this + 72) = &unk_1F10F25D0;
  return this;
}

atomic_uchar *WebKit::RemoteMediaSessionHelper::ensureConnection(WebKit::RemoteMediaSessionHelper *this, void *a2)
{
  v3 = *(this + 11);
  if (v3)
  {
    WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteMediaPlayerManager>(v3, *(this + 10), &v21);
    v4 = v21;
    if (v21)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v21 = 0;
  }

  {
    v5 = WebKit::WebProcess::singleton(void)::process;
  }

  else
  {
    v20 = WebKit::WebProcess::operator new(0x370, a2);
    v5 = WebKit::WebProcess::WebProcess(v20);
    WebKit::WebProcess::singleton(void)::process = v5;
  }

  v6 = WebKit::WebProcess::ensureGPUProcessConnection(v5);
  v8 = v6;
  while (1)
  {
    v9 = v6[3];
    if ((v9 & 1) == 0)
    {
      break;
    }

    v10 = v6[3];
    atomic_compare_exchange_strong_explicit(v6 + 3, &v10, (v9 + 2), memory_order_relaxed, memory_order_relaxed);
    if (v10 == v9)
    {
      goto LABEL_12;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(v6[3]);
LABEL_12:
  v11 = v21;
  v21 = v8;
  if (v11)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUProcessConnection,(WTF::DestructionThread)0>::deref(v11 + 3, v7);
  }

  WTF::ThreadSafeWeakPtr<WebKit::GPUProcessConnection,WTF::NoTaggingTraits<WebKit::GPUProcessConnection>>::operator=<WebKit::GPUProcessConnection>(this + 10, &v21);
  WTF::ThreadSafeWeakHashSet<WebKit::GPUProcessConnection::Client>::add<WebKit::GPUProcessConnection::Client>((v21 + 23), (this + 72));
  v23 = 102;
  WTF::HashMap<IPC::ReceiverName,WTF::WeakPtr<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::IntHash<IPC::ReceiverName>,WTF::StrongEnumHashTraits<IPC::ReceiverName>,WTF::HashTraits<WTF::WeakPtr<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineSet<IPC::ReceiverName const&,IPC::MessageReceiver&>(v21 + 5, &v23, this + 56, v22);
  v12 = v21[4];
  v14 = IPC::Encoder::operator new(0x238, v13);
  *v14 = 46;
  *(v14 + 68) = 0;
  *(v14 + 70) = 0;
  *(v14 + 69) = 0;
  *(v14 + 2) = 0;
  *(v14 + 3) = 0;
  *(v14 + 1) = 0;
  IPC::Encoder::encodeHeader(v14);
  v22[0] = v14;
  IPC::Connection::sendMessageImpl(v12, v22, 0, 0);
  v15 = v22[0];
  v22[0] = 0;
  if (v15)
  {
    IPC::Encoder::~Encoder(v15, a2);
    bmalloc::api::tzoneFree(v18, v19);
  }

  v4 = v21;
LABEL_17:
  v16 = v4[4];
  v21 = 0;
  WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUProcessConnection,(WTF::DestructionThread)0>::deref(v4 + 3, a2);
  return v16;
}

atomic_uchar *WebKit::RemoteMediaSessionHelper::gpuProcessConnectionDidClose(WebKit::RemoteMediaSessionHelper *this, WebKit::GPUProcessConnection *a2)
{
  IPC::MessageReceiverMap::removeMessageReceiver((a2 + 40), (this + 56));
  result = *(this + 11);
  *(this + 11) = 0;
  if (result)
  {
    result = WTF::ThreadSafeWeakPtrControlBlock::weakDeref(result, v3);
  }

  *(this + 10) = 0;
  return result;
}

IPC::Encoder *WebKit::RemoteMediaSessionHelper::startMonitoringWirelessRoutesInternal(WebKit::RemoteMediaSessionHelper *this, void *a2)
{
  v2 = WebKit::RemoteMediaSessionHelper::ensureConnection(this, a2);
  v4 = IPC::Encoder::operator new(0x238, v3);
  *v4 = 1485;
  *(v4 + 68) = 0;
  *(v4 + 70) = 0;
  *(v4 + 69) = 0;
  *(v4 + 2) = 0;
  *(v4 + 3) = 0;
  *(v4 + 1) = 0;
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

IPC::Encoder *WebKit::RemoteMediaSessionHelper::stopMonitoringWirelessRoutesInternal(WebKit::RemoteMediaSessionHelper *this, void *a2)
{
  v2 = WebKit::RemoteMediaSessionHelper::ensureConnection(this, a2);
  v4 = IPC::Encoder::operator new(0x238, v3);
  *v4 = 1486;
  *(v4 + 68) = 0;
  *(v4 + 70) = 0;
  *(v4 + 69) = 0;
  *(v4 + 2) = 0;
  *(v4 + 3) = 0;
  *(v4 + 1) = 0;
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

void WebKit::RemoteMediaSessionHelper::activeVideoRouteDidChange(int a1, int a2, WebKit::MediaPlaybackTargetContextSerialized *this)
{
  v10 = *MEMORY[0x1E69E9840];
  WebKit::MediaPlaybackTargetContextSerialized::platformContext(this, v7);
  if (v9 == 1)
  {
LABEL_9:
    v5 = v8;
    v8 = 0;
    if (v5)
    {
      if (atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v5, v4);
      }
    }

    return;
  }

  if (v9)
  {
    mpark::throw_bad_variant_access(v3);
  }

  WebCore::MediaPlaybackTargetCocoa::create();
  WebCore::MediaSessionHelper::activeVideoRouteDidChange();
  if (v6)
  {
    if (v6[2] == 1)
    {
      (*(*v6 + 8))();
    }

    else
    {
      --v6[2];
    }
  }

  if (v9 != 255)
  {
    if (!v9)
    {
      WebCore::MediaPlaybackTargetContextCocoa::~MediaPlaybackTargetContextCocoa(v7);
      return;
    }

    goto LABEL_9;
  }
}

uint64_t WebKit::LibWebRTCCodecs::videoCodecTypeFromWebCodec(WebKit::LibWebRTCCodecs *this, const WTF::String *a2)
{
  if (!*a2)
  {
    goto LABEL_22;
  }

  if (WTF::StringImpl::startsWith())
  {
    v4 = 0;
LABEL_4:
    v5 = 1;
    return v4 | (v5 << 8);
  }

  if (!*a2)
  {
    goto LABEL_22;
  }

  if (WTF::StringImpl::startsWith())
  {
    v6 = 122;
    if (*(this + 121))
    {
      v6 = 120;
    }

    v5 = *(this + v6);
    v7 = v5 == 0;
    v4 = 2;
    goto LABEL_13;
  }

  if (!*a2)
  {
LABEL_22:
    v4 = 0;
    v5 = 0;
    return v4 | (v5 << 8);
  }

  if (!WTF::StringImpl::startsWith())
  {
    if (*a2 && ((WTF::StringImpl::startsWith() & 1) != 0 || *a2 && (WTF::StringImpl::startsWith() & 1) != 0))
    {
      v4 = 1;
      goto LABEL_4;
    }

    goto LABEL_22;
  }

  v5 = *(this + 127);
  v7 = v5 == 0;
  v4 = 3;
LABEL_13:
  if (v7)
  {
    v4 = 0;
  }

  return v4 | (v5 << 8);
}

uint64_t WebKit::LibWebRTCCodecs::setHasAV1HardwareDecoder(uint64_t this, int a2)
{
  *(this + 127) = a2;
  if (a2)
  {
    v2 = WTF::fastMalloc(0x10);
    *v2 = &unk_1F112A3D8;
    v3 = v2;
    WebCore::Page::forEachPage();
    this = v3;
    if (v3)
    {
      return (*(*v3 + 8))(v3);
    }
  }

  return this;
}

uint64_t WebKit::LibWebRTCCodecs::videoEncoderTypeFromWebCodec(WebKit::LibWebRTCCodecs *this, const WTF::String *a2)
{
  if (!*a2)
  {
    goto LABEL_11;
  }

  if ((WTF::StringImpl::startsWith() & 1) == 0)
  {
    if (*a2 && ((WTF::StringImpl::startsWith() & 1) != 0 || *a2 && (WTF::StringImpl::startsWith() & 1) != 0))
    {
      v3 = 1;
      goto LABEL_9;
    }

LABEL_11:
    v3 = 0;
    v4 = 0;
    return v3 | (v4 << 8);
  }

  v3 = 0;
LABEL_9:
  v4 = 1;
  return v3 | (v4 << 8);
}

void WebKit::LibWebRTCCodecs::initializeIfNeeded(WebKit::LibWebRTCCodecs *this)
{
  if (atomic_load_explicit(&WebKit::LibWebRTCCodecs::initializeIfNeeded(void)::doInitializationOnce, memory_order_acquire) != -1)
  {
    v5[1] = v1;
    v5[2] = v2;
    v5[0] = &v3;
    v4 = v5;
    std::__call_once(&WebKit::LibWebRTCCodecs::initializeIfNeeded(void)::doInitializationOnce, &v4, std::__call_once_proxy[abi:sn200100]<std::tuple<WebKit::LibWebRTCCodecs::initializeIfNeeded(void)::$_0 &&>>);
  }
}

atomic_uchar **WebKit::LibWebRTCCodecs::ensureGPUProcessConnectionOnMainThreadWithLock(atomic_uchar **this, void *a2)
{
  if (!this[7])
  {
    v20[5] = v2;
    v20[6] = v3;
    v4 = this;
    {
      v5 = WebKit::WebProcess::singleton(void)::process;
    }

    else
    {
      v19 = WebKit::WebProcess::operator new(0x370, a2);
      v5 = WebKit::WebProcess::WebProcess(v19);
      WebKit::WebProcess::singleton(void)::process = v5;
    }

    v6 = WebKit::WebProcess::ensureGPUProcessConnection(v5);
    v7 = (v6 + 3);
    while (1)
    {
      v8 = *v7;
      if ((*v7 & 1) == 0)
      {
        break;
      }

      v9 = *v7;
      atomic_compare_exchange_strong_explicit(v7, &v9, v8 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v9 == v8)
      {
        goto LABEL_9;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v7);
LABEL_9:
    WTF::ThreadSafeWeakHashSet<WebKit::GPUProcessConnection::Client>::add<WebKit::GPUProcessConnection::Client>((v6 + 23), (v4 + 16));
    v10 = v6[4];
    do
    {
      v11 = *v10;
      if ((*v10 & 1) == 0)
      {
        WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v10);
        break;
      }

      v12 = *v10;
      atomic_compare_exchange_strong_explicit(v10, &v12, v11 + 2, memory_order_relaxed, memory_order_relaxed);
    }

    while (v12 != v11);
    while (1)
    {
      v13 = *v10;
      if ((*v10 & 1) == 0)
      {
        break;
      }

      v14 = *v10;
      atomic_compare_exchange_strong_explicit(v10, &v14, v13 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v14 == v13)
      {
        goto LABEL_18;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v10);
LABEL_18:
    v15 = *(v4 + 56);
    *(v4 + 56) = v10;
    if (v15)
    {
      WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v15);
    }

    v16 = WebKit::GPUProcessConnection::videoFrameObjectHeapProxy(v6);
    atomic_fetch_add(v16, 1u);
    v17 = *(v4 + 64);
    *(v4 + 64) = v16;
    if (v17)
    {
      WTF::ThreadSafeRefCounted<WebKit::RemoteVideoFrameObjectHeapProxy,(WTF::DestructionThread)2>::deref(v17);
    }

    IPC::Connection::addWorkQueueMessageReceiver(v10, 0x14, *(v4 + 88), v4, 0);
    if (*(v4 + 124) == 1)
    {
      v20[0] = (v4 + 123);
      IPC::Connection::send<Messages::LibWebRTCCodecsProxy::SetRTCLoggingLevel>(v10, v20, 0, 0, 0);
    }

    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v10);
    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUProcessConnection,(WTF::DestructionThread)0>::deref(v7, v18);
  }

  return this;
}

uint64_t IPC::Connection::send<Messages::LibWebRTCCodecsProxy::SetRTCLoggingLevel>(uint64_t *a1, _BYTE **a2, uint64_t a3, char a4, uint64_t a5)
{
  v10 = IPC::Encoder::operator new(0x238, a2);
  *v10 = 135;
  *(v10 + 2) = 0;
  *(v10 + 3) = 0;
  *(v10 + 1) = a3;
  *(v10 + 68) = 0;
  *(v10 + 70) = 0;
  *(v10 + 69) = 0;
  IPC::Encoder::encodeHeader(v10);
  v17 = v10;
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(v10, **a2);
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

unint64_t WebKit::LibWebRTCCodecs::ensureGPUProcessConnectionAndDispatchToThread(unint64_t result, uint64_t *a2)
{
  v3 = result;
  v4 = 0;
  atomic_store(1u, (result + 48));
  v5 = (result + 49);
  atomic_compare_exchange_strong_explicit((result + 49), &v4, 1u, memory_order_acquire, memory_order_acquire);
  if (v4)
  {
    result = MEMORY[0x19EB01E30](result + 49);
  }

  if (*(v3 + 56))
  {
    result = (*(**(v3 + 88) + 48))(*(v3 + 88), a2);
  }

  else
  {
    v6 = *(v3 + 84);
    if (v6 == *(v3 + 80))
    {
      result = WTF::Vector<WTF::Function<void ()(void)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(v3 + 72, v6 + 1, a2);
      a2 = result;
      v6 = *(v3 + 84);
    }

    v7 = (*(v3 + 72) + 8 * v6);
    v8 = *a2;
    *a2 = 0;
    *v7 = v8;
    *(v3 + 84) = v6 + 1;
    if (!v6)
    {
      while (1)
      {
        v10 = *(v3 + 8);
        if ((v10 & 1) == 0)
        {
          break;
        }

        v9 = *(v3 + 8);
        atomic_compare_exchange_strong_explicit((v3 + 8), &v9, v10 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v9 == v10)
        {
          goto LABEL_12;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*(v3 + 8));
LABEL_12:
      v11 = WTF::fastMalloc(0x18);
      *v11 = &unk_1F112A428;
      v11[1] = v3;
      v11[2] = v3;
      v13 = v11;
      WTF::callOnMainRunLoop();
      result = v13;
      if (v13)
      {
        result = (*(*v13 + 8))(v13);
      }
    }
  }

  v12 = 1;
  atomic_compare_exchange_strong_explicit(v5, &v12, 0, memory_order_release, memory_order_relaxed);
  if (v12 != 1)
  {
    return WTF::Lock::unlockSlow(v5);
  }

  return result;
}

void WebKit::LibWebRTCCodecs::~LibWebRTCCodecs(WebKit::LibWebRTCCodecs *this, void *a2)
{
  *this = &unk_1F1129F60;
  *(this + 2) = &unk_1F1129FC0;
  v3 = *(this + 12);
  *(this + 12) = 0;
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *(this + 11);
  *(this + 11) = 0;
  if (v4)
  {
    (*(*v4 + 40))(v4);
  }

  WTF::Vector<WTF::Function<void ()(void)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 72, a2);
  v6 = *(this + 8);
  *(this + 8) = 0;
  if (v6)
  {
    WTF::ThreadSafeRefCounted<WebKit::RemoteVideoFrameObjectHeapProxy,(WTF::DestructionThread)2>::deref(v6);
  }

  v7 = *(this + 7);
  *(this + 7) = 0;
  if (v7)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v7);
  }

  v8 = *(this + 5);
  if (v8)
  {
    v9 = *(v8 - 4);
    if (v9)
    {
      v10 = (v8 + 8);
      do
      {
        if (*(v10 - 1) != -1)
        {
          std::unique_ptr<WebKit::LibWebRTCCodecs::Encoder>::reset[abi:sn200100](v10, 0);
        }

        v10 += 2;
        --v9;
      }

      while (v9);
    }

    WTF::fastFree((v8 - 16), v5);
  }

  v11 = *(this + 3);
  if (v11)
  {
    v12 = *(v11 - 4);
    if (v12)
    {
      v13 = (v11 + 8);
      do
      {
        if (*(v13 - 1) != -1)
        {
          std::unique_ptr<WebKit::LibWebRTCCodecs::Decoder>::reset[abi:sn200100](v13, 0);
        }

        v13 += 2;
        --v12;
      }

      while (v12);
    }

    WTF::fastFree((v11 - 16), v5);
  }
}

{
  WebKit::LibWebRTCCodecs::~LibWebRTCCodecs(this, a2);

  bmalloc::api::tzoneFree(v2, v3);
}

void non-virtual thunk toWebKit::LibWebRTCCodecs::~LibWebRTCCodecs(WebKit::LibWebRTCCodecs *this, void *a2)
{
  WebKit::LibWebRTCCodecs::~LibWebRTCCodecs((this - 16), a2);
}

{
  WebKit::LibWebRTCCodecs::~LibWebRTCCodecs((this - 16), a2);

  bmalloc::api::tzoneFree(v2, v3);
}

atomic_uchar **WebKit::LibWebRTCCodecs::setCallbacks(WebKit::LibWebRTCCodecs *this, char a2)
{
  v3 = this;
  result = WebCore::WebRTCProvider::webRTCAvailable(this);
  if (result && v3)
  {
    {
      v6 = WebKit::WebProcess::singleton(void)::process;
    }

    else
    {
      v12 = WebKit::WebProcess::operator new(0x370, v5);
      v6 = WebKit::WebProcess::WebProcess(v12);
      WebKit::WebProcess::singleton(void)::process = v6;
    }

    v8 = WebKit::WebProcess::libWebRTCCodecs(v6, v5);
    v9 = (v8 + 8);
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
        goto LABEL_8;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v9);
LABEL_8:
    *(v8 + 126) = a2;
    if ((*(v8 + 125) & 1) == 0)
    {
      *(v8 + 125) = v3;
      webrtc::setVideoDecoderCallbacks();
      webrtc::setVideoEncoderCallbacks();
    }

    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(v8 + 1, v7);
  }

  return result;
}

uint64_t WebKit::createVideoDecoder(WebKit *this, const webrtc::SdpVideoFormat *a2)
{
  {
    v2 = WebKit::WebProcess::singleton(void)::process;
  }

  else
  {
    v15 = WebKit::WebProcess::operator new(0x370, a2);
    v2 = WebKit::WebProcess::WebProcess(v15);
    WebKit::WebProcess::singleton(void)::process = v2;
  }

  v3 = WebKit::WebProcess::libWebRTCCodecs(v2, a2);
  v4 = (v3 + 8);
  while (1)
  {
    v5 = *v4;
    if ((*v4 & 1) == 0)
    {
      break;
    }

    v6 = *v4;
    atomic_compare_exchange_strong_explicit(v4, &v6, v5 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v6 == v5)
    {
      goto LABEL_8;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v4);
LABEL_8:
  WTF::String::fromUTF8();
  if (!v17)
  {
    Decoder = 0;
    goto LABEL_26;
  }

  if (WTF::equalIgnoringASCIICaseCommon<WTF::StringImpl>(v17, "H264"))
  {
    v8 = v3;
    v9 = 0;
  }

  else if (WTF::equalIgnoringASCIICaseCommon<WTF::StringImpl>(v17, "H265"))
  {
    v8 = v3;
    v9 = 1;
  }

  else
  {
    if (!WTF::equalIgnoringASCIICaseCommon<WTF::StringImpl>(v17, "VP9"))
    {
      goto LABEL_22;
    }

    v12 = 122;
    if (*(v3 + 121))
    {
      v12 = 120;
    }

    if (*(v3 + v12) == 1)
    {
      v8 = v3;
      v9 = 2;
    }

    else
    {
LABEL_22:
      v13 = WTF::equalIgnoringASCIICaseCommon<WTF::StringImpl>(v17, "AV1");
      if (!v13)
      {
        Decoder = 0;
        goto LABEL_14;
      }

      if (*(v3 + 127) != 1)
      {
        WebCore::createLibWebRTCDav1dDecoder(&v16, v13);
        Decoder = v16;
        goto LABEL_14;
      }

      v8 = v3;
      v9 = 3;
    }
  }

  Decoder = WebKit::LibWebRTCCodecs::createDecoder(v8, v9);
LABEL_14:
  v11 = v17;
  v17 = 0;
  if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v11, v7);
  }

LABEL_26:
  WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(v4, v7);
  return Decoder;
}

uint64_t WebKit::releaseVideoDecoder(WebKit *this, void *a2)
{
  {
    v3 = WebKit::WebProcess::singleton(void)::process;
  }

  else
  {
    v7 = WebKit::WebProcess::operator new(0x370, a2);
    v3 = WebKit::WebProcess::WebProcess(v7);
    WebKit::WebProcess::singleton(void)::process = v3;
  }

  WebKit::WebProcess::protectedLibWebRTCCodecs(v3, a2, &v8);
  v4 = v8;
  WebKit::LibWebRTCCodecs::releaseDecoder(v8, this);
  if (v4)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(v4 + 1, v5);
  }

  return 0;
}

uint64_t WebKit::decodeVideoFrame(WebKit *this, void *a2, char *a3, const unsigned __int8 *a4, int a5, int a6)
{
  v10 = a2;
  {
    v12 = WebKit::WebProcess::singleton(void)::process;
  }

  else
  {
    v17 = WebKit::WebProcess::operator new(0x370, a2);
    v12 = WebKit::WebProcess::WebProcess(v17);
    WebKit::WebProcess::singleton(void)::process = v12;
  }

  WebKit::WebProcess::protectedLibWebRTCCodecs(v12, a2, &v18);
  v13 = v18;
  WebKit::LibWebRTCCodecs::decodeFrameInternal(v18, this, v10, a3, a4, a5, a6, &v19);
  v15 = v19;
  v19 = 0;
  if (!v15 || atomic_fetch_add(v15 + 2, 0xFFFFFFFF) != 1)
  {
    if (!v13)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  atomic_store(1u, v15 + 2);
  (*(*v15 + 16))(v15);
  if (v13)
  {
LABEL_6:
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(v13 + 1, v14);
  }

LABEL_7:
  if (v15)
  {
    return 0;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t WebKit::registerDecodeCompleteCallback(atomic_uchar *this, void *a2, void *a3)
{
  {
    v5 = WebKit::WebProcess::singleton(void)::process;
  }

  else
  {
    v10 = WebKit::WebProcess::operator new(0x370, a2);
    v5 = WebKit::WebProcess::WebProcess(v10);
    WebKit::WebProcess::singleton(void)::process = v5;
  }

  WebKit::WebProcess::protectedLibWebRTCCodecs(v5, a2, &v11);
  v7 = 0;
  v8 = 1;
  atomic_compare_exchange_strong_explicit(this + 40, &v7, 1u, memory_order_acquire, memory_order_acquire);
  if (v7)
  {
    MEMORY[0x19EB01E30](this + 40);
  }

  *(this + 3) = a2;
  atomic_compare_exchange_strong_explicit(this + 40, &v8, 0, memory_order_release, memory_order_relaxed);
  if (v8 != 1)
  {
    WTF::Lock::unlockSlow((this + 40));
  }

  if (v11)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(v11 + 1, v6);
  }

  return 0;
}

WTF::StringImpl *WebKit::createVideoEncoder(WebKit *this, const webrtc::SdpVideoFormat *a2)
{
  v3 = *(this + 23);
  if ((v3 & 0x80000000) == 0)
  {
    if (v3 == 4)
    {
      v4 = *this;
      if (*this != 875967048 && v4 != 875967080)
      {
        v6 = this;
        goto LABEL_12;
      }

LABEL_15:
      {
        v8 = WebKit::WebProcess::singleton(void)::process;
      }

      else
      {
        v16 = WebKit::WebProcess::operator new(0x370, a2);
        v8 = WebKit::WebProcess::WebProcess(v16);
        WebKit::WebProcess::singleton(void)::process = v8;
      }

      WebKit::WebProcess::protectedLibWebRTCCodecs(v8, a2, &v18);
      v9 = v18;
      v10 = (this + 24);
      v11 = v18;
      v12 = 0;
      goto LABEL_21;
    }

    return 0;
  }

  if (*(this + 1) != 4)
  {
    return 0;
  }

  v6 = *this;
  if (**this == 875967048 || *v6 == 875967080)
  {
    goto LABEL_15;
  }

  v4 = *v6;
LABEL_12:
  if (v4 != 892744264 && *v6 != 892744296)
  {
    return 0;
  }

  {
    v13 = WebKit::WebProcess::singleton(void)::process;
  }

  else
  {
    v17 = WebKit::WebProcess::operator new(0x370, a2);
    v13 = WebKit::WebProcess::WebProcess(v17);
    WebKit::WebProcess::singleton(void)::process = v13;
  }

  WebKit::WebProcess::protectedLibWebRTCCodecs(v13, a2, &v18);
  v9 = v18;
  v10 = (this + 24);
  v11 = v18;
  v12 = 1;
LABEL_21:
  Encoder = WebKit::LibWebRTCCodecs::createEncoder(v11, v12, v10);
  if (v9)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(v9 + 1, v14);
  }

  return Encoder;
}

uint64_t WebKit::releaseVideoEncoder(WebKit *this, void *a2)
{
  {
    v3 = WebKit::WebProcess::singleton(void)::process;
  }

  else
  {
    v7 = WebKit::WebProcess::operator new(0x370, a2);
    v3 = WebKit::WebProcess::WebProcess(v7);
    WebKit::WebProcess::singleton(void)::process = v3;
  }

  WebKit::WebProcess::protectedLibWebRTCCodecs(v3, a2, &v8);
  v4 = v8;
  WebKit::LibWebRTCCodecs::releaseEncoder(v8, this);
  if (v4)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(v4 + 1, v5);
  }

  return 0;
}

uint64_t WebKit::initializeVideoEncoder(uint64_t *a1, uint64_t a2)
{
  {
    v4 = WebKit::WebProcess::singleton(void)::process;
  }

  else
  {
    v16 = WebKit::WebProcess::operator new(0x370, a2);
    v4 = WebKit::WebProcess::WebProcess(v16);
    WebKit::WebProcess::singleton(void)::process = v4;
  }

  WebKit::WebProcess::protectedLibWebRTCCodecs(v4, a2, &v18);
  v5 = v18;
  v6 = *(a2 + 4);
  v7 = *(a2 + 6);
  v17 = *(a2 + 8);
  v8 = (v18 + 8);
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
      goto LABEL_8;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v8);
LABEL_8:
  v11 = *a1;
  v12 = WTF::fastMalloc(0x38);
  *v12 = &unk_1F112A798;
  *(v12 + 8) = v5;
  *(v12 + 16) = v5;
  *(v12 + 24) = v11;
  *(v12 + 32) = v6;
  *(v12 + 34) = v7;
  *(v12 + 36) = v17;
  v19 = v12;
  WebKit::LibWebRTCCodecs::ensureGPUProcessConnectionAndDispatchToThread(v5, &v19);
  v14 = v19;
  v19 = 0;
  if (v14)
  {
    (*(*v14 + 8))(v14);
  }

  WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(v8, v13);
  return 0;
}

uint64_t WebKit::encodeVideoFrame(WebKit *this, unsigned int *a2, const webrtc::VideoFrame *a3)
{
  v3 = a3;
  {
    v6 = WebKit::WebProcess::singleton(void)::process;
  }

  else
  {
    v37 = WebKit::WebProcess::operator new(0x370, a2);
    v6 = WebKit::WebProcess::WebProcess(v37);
    WebKit::WebProcess::singleton(void)::process = v6;
  }

  v7 = WebKit::WebProcess::protectedLibWebRTCCodecs(v6, a2, &v40);
  v8 = v40;
  v9 = a2[18];
  switch(v9)
  {
    case 0x5Au:
      v10 = 90;
      break;
    case 0x10Eu:
      v10 = 270;
      break;
    case 0xB4u:
      v10 = 180;
      break;
    default:
      v10 = 0;
      break;
  }

  v12 = WTF::MediaTime::createWithDouble(v7, *(a2 + 4) / 1000.0 / 1000.0);
  v13 = v11;
  v14 = 0;
  v15 = a2[4];
  v16 = v8 + 32;
  v57[0] = 0;
  v57[1] = 0;
  atomic_compare_exchange_strong_explicit(v8 + 32, &v14, 1u, memory_order_acquire, memory_order_acquire);
  if (v14)
  {
    MEMORY[0x19EB01E30](v8 + 32);
  }

  v17 = *(this + 12);
  if (v17)
  {
    v38 = v12;
    v39 = v8 + 32;
    v18 = v8;
    v19 = v3;
    while (1)
    {
      v20 = *v17;
      if ((*v17 & 1) == 0)
      {
        break;
      }

      v21 = *v17;
      atomic_compare_exchange_strong_explicit(v17, &v21, v20 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v21 == v20)
      {
        goto LABEL_18;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v17);
LABEL_18:
    v22 = WTF::fastMalloc(0x10);
    *v22 = &unk_1F112A7C0;
    v22[1] = this;
    v49 = v22;
    v23 = WTF::fastMalloc(0x10);
    *v23 = &unk_1F112A7E8;
    *(v23 + 1) = this;
    v43 = v23;
    WebKit::SharedVideoFrameWriter::writeBuffer(this + 104, a2, &v49, &v43, v55);
    (*(*v23 + 8))(v23);
    (*(*v22 + 8))(v22);
    if (v56 == 1)
    {
      v49 = v38;
      v50 = v13;
      v51 = BYTE4(v13);
      v52 = 0;
      v53 = v10;
      mpark::variant<decltype(nullptr),IPC::ObjectIdentifierReadReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::MachSendRight,WebCore::IntSize>::variant(v54, v55);
      v24 = *(this + 12);
      v8 = v18;
      while (1)
      {
        v25 = *v24;
        if ((*v24 & 1) == 0)
        {
          break;
        }

        v26 = *v24;
        atomic_compare_exchange_strong_explicit(v24, &v26, v25 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v26 == v25)
        {
          goto LABEL_25;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v24);
LABEL_25:
      v43 = this;
      v44 = &v49;
      *&v45 = v15;
      *(&v45 + 1) = v57;
      LOBYTE(v46) = v19;
      IPC::Connection::sendWithPromisedReply<IPC::Connection::NoOpPromiseConverter,Messages::LibWebRTCCodecsProxy::EncodeFrame,WTF::NativePromise<BOOL,IPC::Error,0u>>(&v48, v24, &v43);
      WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v24);
      v27 = v48;
      v28 = *(v18 + 11);
      v42 = 0uLL;
      v29 = WTF::fastMalloc(0x50);
      v16 = v39;
      while (1)
      {
        v30 = *(v28 + 32);
        if ((v30 & 1) == 0)
        {
          break;
        }

        v31 = *(v28 + 32);
        atomic_compare_exchange_strong_explicit((v28 + 32), &v31, v30 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v31 == v30)
        {
          goto LABEL_30;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*(v28 + 32));
LABEL_30:
      v32 = WTF::fastMalloc(0x10);
      *v32 = &unk_1F112A860;
      *(v29 + 8) = 1;
      *(v29 + 16) = v28 + 24;
      *(v29 + 24) = v42;
      *(v29 + 40) = "encodeFrameInternal";
      *(v29 + 48) = 0;
      *(v29 + 56) = 0;
      *v29 = &unk_1F112A210;
      *(v29 + 64) = 0;
      *(v29 + 72) = v32;
      atomic_fetch_add(v27 + 2, 1u);
      v43 = v27;
      v44 = v29;
      v45 = v42;
      v46 = "encodeFrameInternal";
      v47 = 0;
      WTF::NativePromise<BOOL,IPC::Error,0u>::ThenCommand<WTF::NativePromise<BOOL,IPC::Error,0u>::ThenCallback<true,WTF::NativePromise<void,WTF::String,0u>>>::completionPromise(&v41, &v43);
      WTF::NativePromise<BOOL,IPC::Error,0u>::ThenCommand<WTF::NativePromise<BOOL,IPC::Error,0u>::ThenCallback<true,WTF::NativePromise<void,WTF::String,0u>>>::~ThenCommand(&v43);
      v33 = v48;
      v48 = 0;
      if (v33 && atomic_fetch_add(v33 + 2, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v33 + 2);
        (*(*v33 + 16))(v33);
      }

      if (v54[16] == 2)
      {
        WTF::MachSendRight::~MachSendRight(v54);
      }

      if ((v56 & 1) != 0 && v55[16] == 2)
      {
        WTF::MachSendRight::~MachSendRight(v55);
      }
    }

    else
    {
      v41 = 0;
      v16 = v39;
      v8 = v18;
    }

    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v17);
  }

  else
  {
    v41 = 0;
  }

  v34 = 1;
  atomic_compare_exchange_strong_explicit(v16, &v34, 0, memory_order_release, memory_order_relaxed);
  if (v34 != 1)
  {
    WTF::Lock::unlockSlow(v16);
  }

  v35 = v41;
  v41 = 0;
  if (!v35 || atomic_fetch_add(v35 + 2, 0xFFFFFFFF) != 1)
  {
    if (!v8)
    {
      goto LABEL_45;
    }

    goto LABEL_44;
  }

  atomic_store(1u, v35 + 2);
  (*(*v35 + 16))(v35);
  if (v8)
  {
LABEL_44:
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(v8 + 1, v11);
  }

LABEL_45:
  if (v35)
  {
    return 0;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t WebKit::registerEncodeCompleteCallback(atomic_uchar *this, void *a2, void *a3)
{
  {
    v5 = WebKit::WebProcess::singleton(void)::process;
  }

  else
  {
    v10 = WebKit::WebProcess::operator new(0x370, a2);
    v5 = WebKit::WebProcess::WebProcess(v10);
    WebKit::WebProcess::singleton(void)::process = v5;
  }

  WebKit::WebProcess::protectedLibWebRTCCodecs(v5, a2, &v11);
  v7 = 0;
  v8 = 1;
  atomic_compare_exchange_strong_explicit(this + 88, &v7, 1u, memory_order_acquire, memory_order_acquire);
  if (v7)
  {
    MEMORY[0x19EB01E30](this + 88);
  }

  *(this + 8) = a2;
  atomic_compare_exchange_strong_explicit(this + 88, &v8, 0, memory_order_release, memory_order_relaxed);
  if (v8 != 1)
  {
    WTF::Lock::unlockSlow((this + 88));
  }

  if (v11)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(v11 + 1, v6);
  }

  return 0;
}

unsigned int *WebKit::setEncodeRatesCallback(WebKit::LibWebRTCCodecs::Encoder *a1, uint64_t a2)
{
  v3 = *(a2 + 176) / 0x3E8u;
  v4 = (*(a2 + 344) + 0.5);
  {
    v5 = WebKit::WebProcess::singleton(void)::process;
  }

  else
  {
    v9 = WebKit::WebProcess::operator new(0x370, a2);
    v5 = WebKit::WebProcess::WebProcess(v9);
    WebKit::WebProcess::singleton(void)::process = v5;
  }

  WebKit::WebProcess::protectedLibWebRTCCodecs(v5, a2, &v10);
  v6 = v10;
  WebKit::LibWebRTCCodecs::setEncodeRates(v10, a1, v3, v4, &v11);
  result = v11;
  v11 = 0;
  if (result)
  {
    if (atomic_fetch_add(result + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, result + 2);
      result = (*(*result + 16))(result);
    }

    v6 = v10;
  }

  if (v6)
  {

    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(v6 + 1, v7);
  }

  return result;
}

WebKit::LibWebRTCCodecs *WebKit::LibWebRTCCodecs::setWebRTCMediaPipelineAdditionalLoggingEnabled(WebKit::LibWebRTCCodecs *this)
{
  v1 = this;
  result = WebCore::WebRTCProvider::webRTCAvailable(this);
  if (result)
  {
    {
      v4 = WebKit::WebProcess::singleton(void)::process;
    }

    else
    {
      v5 = WebKit::WebProcess::operator new(0x370, v3);
      v4 = WebKit::WebProcess::WebProcess(v5);
      WebKit::WebProcess::singleton(void)::process = v4;
    }

    result = WebKit::WebProcess::libWebRTCCodecs(v4, v3);
    *(result + 128) = v1;
  }

  return result;
}

uint64_t WebKit::LibWebRTCCodecs::createDecoder(unint64_t a1, char a2)
{
  v10 = 0;
  v4 = WTF::fastMalloc(0x10);
  *v4 = &unk_1F112A450;
  v9 = v4;
  DecoderInternal = WebKit::LibWebRTCCodecs::createDecoderInternal(a1, a2, &v10, &v9);
  if (v9)
  {
    (*(*v9 + 8))(v9);
  }

  v7 = v10;
  v10 = 0;
  if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v7, v5);
  }

  return DecoderInternal;
}

uint64_t WebKit::LibWebRTCCodecs::createDecoderInternal(unint64_t a1, char a2, uint64_t a3, uint64_t *a4)
{
  IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
  if (WebKit::LibWebRTCCodecs::Decoder::s_heapRef)
  {
    NonCompact = bmalloc::api::tzoneAllocateNonCompact(WebKit::LibWebRTCCodecs::Decoder::s_heapRef, v7);
  }

  else
  {
    NonCompact = WebKit::LibWebRTCCodecs::Decoder::operatorNewSlow(0);
  }

  v10 = NonCompact;
  *NonCompact = IdentifierInternal;
  *(NonCompact + 24) = 0;
  *(NonCompact + 32) = 0;
  *(NonCompact + 16) = 0;
  *(NonCompact + 40) = 0;
  *(NonCompact + 56) = 0;
  *(NonCompact + 64) = 0;
  *(NonCompact + 48) = 0;
  v22 = NonCompact;
  *(NonCompact + 8) = a2;
  WTF::String::isolatedCopy();
  v12 = *(v10 + 16);
  *(v10 + 16) = v19;
  if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v12, v11);
  }

  while (1)
  {
    v13 = *(a1 + 8);
    if ((v13 & 1) == 0)
    {
      break;
    }

    v14 = *(a1 + 8);
    atomic_compare_exchange_strong_explicit((a1 + 8), &v14, v13 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v14 == v13)
    {
      goto LABEL_10;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*(a1 + 8));
LABEL_10:
  v22 = 0;
  v15 = *a4;
  *a4 = 0;
  v16 = WTF::fastMalloc(0x28);
  *v16 = &unk_1F112A478;
  v16[1] = a1;
  v16[2] = a1;
  v16[3] = v10;
  v20[0] = 0;
  v16[4] = v15;
  v21 = v16;
  WebKit::LibWebRTCCodecs::ensureGPUProcessConnectionAndDispatchToThread(a1, &v21);
  v17 = v21;
  v21 = 0;
  if (v17)
  {
    (*(*v17 + 8))(v17);
  }

  v20[1] = 0;
  std::unique_ptr<WebKit::LibWebRTCCodecs::Decoder>::reset[abi:sn200100](v20, 0);
  std::unique_ptr<WebKit::LibWebRTCCodecs::Decoder>::reset[abi:sn200100](&v22, 0);
  return v10;
}

uint64_t WebKit::LibWebRTCCodecs::releaseDecoder(WebKit::LibWebRTCCodecs *this, WebKit::LibWebRTCCodecs::Decoder *a2)
{
  while (1)
  {
    v4 = *(this + 1);
    if ((v4 & 1) == 0)
    {
      break;
    }

    v5 = *(this + 1);
    atomic_compare_exchange_strong_explicit(this + 1, &v5, v4 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v5 == v4)
    {
      goto LABEL_5;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*(this + 1));
LABEL_5:
  v6 = *a2;
  v7 = WTF::fastMalloc(0x20);
  *v7 = &unk_1F112A540;
  v7[1] = this;
  v7[2] = this;
  v7[3] = v6;
  v10 = v7;
  WebKit::LibWebRTCCodecs::ensureGPUProcessConnectionAndDispatchToThread(this, &v10);
  v8 = v10;
  v10 = 0;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  return 0;
}

uint64_t WebKit::LibWebRTCCodecs::flushDecoder@<X0>(atomic_uchar *this@<X0>, WebKit::LibWebRTCCodecs::Decoder *a2@<X1>, atomic_uint **a3@<X8>)
{
  v6 = 0;
  v7 = this + 49;
  atomic_compare_exchange_strong_explicit(this + 49, &v6, 1u, memory_order_acquire, memory_order_acquire);
  if (v6)
  {
    MEMORY[0x19EB01E30](this + 49);
  }

  v8 = *(a2 + 6);
  if (v8 && *(a2 + 41) != 1)
  {
    while (1)
    {
      v10 = *v8;
      if ((*v8 & 1) == 0)
      {
        break;
      }

      v11 = *v8;
      atomic_compare_exchange_strong_explicit(v8, &v11, v10 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v11 == v10)
      {
        goto LABEL_10;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v8);
LABEL_10:
    v29 = 0;
    *v30 = 0;
    *&v30[8] = "sendWithPromisedReply";
    *&v30[16] = 0;
    WTF::NativePromiseProducer<void,IPC::Error,0u>::NativePromiseProducer<std::enable_if<true,void>>(v33, 0, &v29);
    v12 = v33[0];
    if (v33[0])
    {
      atomic_fetch_add((v33[0] + 8), 1u);
      v13 = v33[0];
    }

    else
    {
      v13 = 0;
    }

    v33[0] = 0;
    *v30 = *&v33[1];
    *&v30[16] = *&v33[3];
    v14 = WTF::fastMalloc(0x30);
    *v14 = &unk_1F112A568;
    *(v14 + 8) = v13;
    v29 = 0;
    v15 = *&v30[16];
    *(v14 + 16) = *v30;
    *(v14 + 32) = v15;
    v32[0] = v14;
    if (WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
    {
      result = 141;
      __break(0xC471u);
      return result;
    }

    v32[1] = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
    WTF::NativePromiseProducer<void,IPC::Error,0u>::~NativePromiseProducer(&v29);
    v17 = IPC::Encoder::operator new(0x238, v16);
    *v17 = 127;
    *(v17 + 68) = 0;
    *(v17 + 70) = 0;
    *(v17 + 69) = 0;
    *(v17 + 2) = 0;
    *(v17 + 3) = 0;
    *(v17 + 1) = 0;
    IPC::Encoder::encodeHeader(v17);
    v29 = v17;
    IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v17, *a2);
    IPC::Connection::sendMessageWithAsyncReplyWithDispatcher(v8, &v29, v32, 0, 0);
    v19 = v29;
    v29 = 0;
    if (v19)
    {
      IPC::Encoder::~Encoder(v19, v18);
      bmalloc::api::tzoneFree(v27, v28);
    }

    v20 = v32[0];
    v32[0] = 0;
    if (v20)
    {
      (*(*v20 + 8))(v20);
    }

    WTF::NativePromiseProducer<void,IPC::Error,0u>::~NativePromiseProducer(v33);
    v21 = *(this + 11);
    *v33 = 0uLL;
    v22 = WTF::fastMalloc(0x50);
    while (1)
    {
      v23 = *(v21 + 32);
      if ((v23 & 1) == 0)
      {
        break;
      }

      v24 = *(v21 + 32);
      atomic_compare_exchange_strong_explicit((v21 + 32), &v24, v23 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v24 == v23)
      {
        goto LABEL_22;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*(v21 + 32));
LABEL_22:
    v25 = WTF::fastMalloc(0x10);
    *v25 = &unk_1F112A140;
    *(v22 + 8) = 1;
    *(v22 + 16) = v21 + 24;
    *(v22 + 24) = *v33;
    *(v22 + 40) = "flushDecoder";
    *(v22 + 48) = 0;
    *(v22 + 56) = 0;
    *v22 = &unk_1F112A168;
    *(v22 + 64) = 0;
    *(v22 + 72) = v25;
    atomic_fetch_add(v12 + 2, 1u);
    v29 = v12;
    *v30 = v22;
    *&v30[8] = *v33;
    *&v30[24] = "flushDecoder";
    v31 = 0;
    WTF::NativePromise<void,IPC::Error,0u>::ThenCommand<WTF::NativePromise<void,IPC::Error,0u>::ThenCallback<true,WTF::NativePromise<void,void,0u>>>::completionPromise(a3, &v29);
    WTF::NativePromise<void,IPC::Error,0u>::ThenCommand<WTF::NativePromise<void,IPC::Error,0u>::ThenCallback<false,void>>::~ThenCommand(&v29);
    if (v12 && atomic_fetch_add(v12 + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v12 + 2);
      (*(*v12 + 16))(v12);
    }

    result = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v8);
  }

  else
  {
    v29 = 0;
    *v30 = 0;
    *&v30[8] = "flushDecoder";
    *&v30[16] = 0;
    result = WTF::NativePromise<void,void,0u>::createAndResolve<std::enable_if<true,void>>(&v29, a3);
  }

  v26 = 1;
  atomic_compare_exchange_strong_explicit(v7, &v26, 0, memory_order_release, memory_order_relaxed);
  if (v26 != 1)
  {
    return WTF::Lock::unlockSlow(v7);
  }

  return result;
}

atomic_ullong *WebKit::LibWebRTCCodecs::setDecoderFormatDescription(atomic_ullong *result, uint64_t a2, uint64_t a3, uint64_t a4, __int16 a5, __int16 a6)
{
  v9 = 0;
  v18[0] = a3;
  v18[1] = a4;
  v10 = result + 49;
  atomic_compare_exchange_strong_explicit(result + 49, &v9, 1u, memory_order_acquire, memory_order_acquire);
  if (v9)
  {
    result = MEMORY[0x19EB01E30](result + 49);
  }

  v11 = *(a2 + 48);
  if (v11)
  {
    while (1)
    {
      v12 = *v11;
      if ((*v11 & 1) == 0)
      {
        break;
      }

      v13 = *v11;
      atomic_compare_exchange_strong_explicit(v11, &v13, v12 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v13 == v12)
      {
        goto LABEL_8;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v11);
LABEL_8:
    v15[0] = a2;
    v15[1] = v18;
    v16 = a5;
    v17 = a6;
    IPC::Connection::send<Messages::LibWebRTCCodecsProxy::SetDecoderFormatDescription>(v11, v15, 0, 0, 0);
    result = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v11);
  }

  v14 = 1;
  atomic_compare_exchange_strong_explicit(v10, &v14, 0, memory_order_release, memory_order_relaxed);
  if (v14 != 1)
  {
    return WTF::Lock::unlockSlow(v10);
  }

  return result;
}

uint64_t IPC::Connection::send<Messages::LibWebRTCCodecsProxy::SetDecoderFormatDescription>(uint64_t *a1, void *a2, uint64_t a3, char a4, uint64_t a5)
{
  v10 = IPC::Encoder::operator new(0x238, a2);
  *v10 = 132;
  *(v10 + 2) = 0;
  *(v10 + 3) = 0;
  *(v10 + 1) = a3;
  *(v10 + 68) = 0;
  *(v10 + 70) = 0;
  *(v10 + 69) = 0;
  IPC::Encoder::encodeHeader(v10);
  v17 = v10;
  Messages::LibWebRTCCodecsProxy::SetDecoderFormatDescription::encode<IPC::Encoder>(a2, v10);
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

uint64_t WebKit::LibWebRTCCodecs::sendFrameToDecode(atomic_uint **a1, void *a2, uint64_t a3, uint64_t a4, const void *a5, size_t a6, int a7, int a8)
{
  if (a8 | a7 && *(a3 + 8) == 2)
  {
    v14 = a8;
    v15 = a7;
    v16 = *(a3 + 48);
    while (1)
    {
      v17 = *v16;
      if ((*v16 & 1) == 0)
      {
        break;
      }

      v18 = *v16;
      atomic_compare_exchange_strong_explicit(v16, &v18, v17 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v18 == v17)
      {
        goto LABEL_8;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v16);
LABEL_8:
    v19 = IPC::Encoder::operator new(0x238, a2);
    *v19 = 134;
    *(v19 + 68) = 0;
    *(v19 + 70) = 0;
    *(v19 + 69) = 0;
    *(v19 + 2) = 0;
    *(v19 + 3) = 0;
    *(v19 + 1) = 0;
    IPC::Encoder::encodeHeader(v19);
    v44 = v19;
    IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v19, *a3);
    IPC::ArgumentCoder<unsigned short,void>::encode<IPC::Encoder>(v19, v15);
    IPC::ArgumentCoder<unsigned short,void>::encode<IPC::Encoder>(v19, v14);
    IPC::Connection::sendMessageImpl(v16, &v44, 0, 0);
    v21 = v44;
    v44 = 0;
    if (v21)
    {
      IPC::Encoder::~Encoder(v21, v20);
      bmalloc::api::tzoneFree(v42, v43);
    }

    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v16);
  }

  v22 = *(a3 + 48);
  while (1)
  {
    v23 = *v22;
    if ((*v22 & 1) == 0)
    {
      break;
    }

    v24 = *v22;
    atomic_compare_exchange_strong_explicit(v22, &v24, v23 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v24 == v23)
    {
      goto LABEL_16;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v22);
LABEL_16:
  v44 = 0;
  *v45 = 0;
  *&v45[8] = "sendWithPromisedReply";
  *&v45[16] = 0;
  WTF::NativePromiseProducer<BOOL,IPC::Error,0u>::NativePromiseProducer<std::enable_if<true,void>>(v48, &v44);
  v25 = v48[0];
  if (v48[0])
  {
    atomic_fetch_add((v48[0] + 8), 1u);
    v26 = v48[0];
  }

  else
  {
    v26 = 0;
  }

  v48[0] = 0;
  *v45 = *&v48[1];
  *&v45[16] = *&v48[3];
  v27 = WTF::fastMalloc(0x30);
  *v27 = &unk_1F112A5E0;
  *(v27 + 8) = v26;
  v44 = 0;
  v28 = *&v45[16];
  *(v27 + 16) = *v45;
  *(v27 + 32) = v28;
  v47[0] = v27;
  if (WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
  {
    result = 141;
    __break(0xC471u);
  }

  else
  {
    v47[1] = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
    WTF::NativePromiseProducer<BOOL,IPC::Error,0u>::~NativePromiseProducer(&v44);
    v30 = IPC::Encoder::operator new(0x238, v29);
    *v30 = 125;
    *(v30 + 68) = 0;
    *(v30 + 70) = 0;
    *(v30 + 69) = 0;
    *(v30 + 2) = 0;
    *(v30 + 3) = 0;
    *(v30 + 1) = 0;
    IPC::Encoder::encodeHeader(v30);
    v44 = v30;
    IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v30, *a3);
    IPC::ArgumentCoder<API::Int64,void>::encode(v30, a4);
    IPC::ArgumentCoder<std::span<unsigned char const,18446744073709551615ul>,void>::encode<IPC::Encoder>(v30, a5, a6);
    IPC::Connection::sendMessageWithAsyncReplyWithDispatcher(v22, &v44, v47, 0, 0);
    v32 = v44;
    v44 = 0;
    if (v32)
    {
      IPC::Encoder::~Encoder(v32, v31);
      bmalloc::api::tzoneFree(v40, v41);
    }

    v33 = v47[0];
    v47[0] = 0;
    if (v33)
    {
      (*(*v33 + 8))(v33);
    }

    WTF::NativePromiseProducer<BOOL,IPC::Error,0u>::~NativePromiseProducer(v48);
    v34 = a2[11];
    *v48 = 0uLL;
    v35 = WTF::fastMalloc(0x50);
    while (1)
    {
      v36 = *(v34 + 32);
      if ((v36 & 1) == 0)
      {
        break;
      }

      v37 = *(v34 + 32);
      atomic_compare_exchange_strong_explicit((v34 + 32), &v37, v36 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v37 == v36)
      {
        goto LABEL_28;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*(v34 + 32));
LABEL_28:
    v38 = WTF::fastMalloc(0x10);
    *v38 = &unk_1F112A198;
    *(v35 + 8) = 1;
    *(v35 + 16) = v34 + 24;
    *(v35 + 24) = *v48;
    *(v35 + 40) = "sendFrameToDecode";
    *(v35 + 48) = 0;
    *(v35 + 56) = 0;
    *v35 = &unk_1F112A210;
    *(v35 + 64) = 0;
    *(v35 + 72) = v38;
    atomic_fetch_add(v25 + 2, 1u);
    v44 = v25;
    *v45 = v35;
    *&v45[8] = *v48;
    *&v45[24] = "sendFrameToDecode";
    v46 = 0;
    WTF::NativePromise<BOOL,IPC::Error,0u>::ThenCommand<WTF::NativePromise<BOOL,IPC::Error,0u>::ThenCallback<true,WTF::NativePromise<void,WTF::String,0u>>>::completionPromise(a1, &v44);
    WTF::NativePromise<BOOL,IPC::Error,0u>::ThenCommand<WTF::NativePromise<BOOL,IPC::Error,0u>::ThenCallback<true,WTF::NativePromise<void,WTF::String,0u>>>::~ThenCommand(&v44);
    if (v25)
    {
      if (atomic_fetch_add(v25 + 2, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v25 + 2);
        (*(*v25 + 16))(v25);
      }
    }

    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v22);
  }

  return result;
}

uint64_t WebKit::LibWebRTCCodecs::decodeFrameInternal@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, WTF *a3@<X2>, char *a4@<X3>, size_t a5@<X4>, int a6@<W5>, int a7@<W6>, atomic_uint **a8@<X8>)
{
  v14 = result;
  v16 = 0;
  v17 = (result + 49);
  atomic_compare_exchange_strong_explicit((result + 49), &v16, 1u, memory_order_acquire, memory_order_acquire);
  if (v16)
  {
    result = MEMORY[0x19EB01E30](result + 49);
  }

  if (*(a2 + 41) == 1)
  {
    *(a2 + 41) = 0;
    *a8 = 0;
  }

  else if (*(a2 + 48))
  {
    result = WebKit::LibWebRTCCodecs::sendFrameToDecode(a8, v14, a2, a3, a4, a5, a6, a7);
  }

  else
  {
    v38[0] = 0;
    v38[1] = 0;
    *&v39 = "decodeFrameInternal";
    *(&v39 + 1) = 0;
    v18 = WTF::fastMalloc(0x80);
    v19 = WTF::NativePromise<void,WTF::String,0u>::NativePromise(v18, v38);
    v44 = v19;
    v45 = *v38;
    v46 = v39;
    v47 = 0;
    v20 = (v19 + 8);
    atomic_fetch_add((v19 + 8), 1u);
    result = WTF::NativePromise<void,WTF::String,0u>::setDispatchMode(v19, 0, v38);
    if (atomic_fetch_add(v20, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v20);
      result = (*(*v18 + 16))(v18);
    }

    v22 = v44;
    if (v44)
    {
      atomic_fetch_add((v44 + 8), 1u);
    }

    v38[1] = 0;
    LODWORD(v39) = 0;
    v38[0] = a3;
    DWORD1(v39) = a5;
    if (a5)
    {
      if (HIDWORD(a5))
      {
        __break(0xC471u);
        return result;
      }

      v23 = WTF::fastMalloc(a5);
      LODWORD(v39) = a5;
      v38[1] = v23;
      do
      {
        v24 = *a4++;
        *v23 = v24;
        v23 = (v23 + 1);
        --a5;
      }

      while (a5);
    }

    WORD4(v39) = a6;
    WORD5(v39) = a7;
    v40 = v44;
    v41 = v45;
    v42 = v46;
    v43 = v47;
    v44 = 0;
    v47 = 0;
    v25 = *(a2 + 68);
    if (v25 == *(a2 + 64))
    {
      v26 = WTF::Vector<WebKit::LibWebRTCCodecs::Decoder::EncodedFrame,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>((a2 + 56), v25 + 1, v38);
      v27 = *(a2 + 56) + 80 * *(a2 + 68);
      *v27 = *v26;
      *(v27 + 16) = 0;
      *(v27 + 8) = 0;
      WTF::VectorBuffer<unsigned char,0ul,WTF::FastMalloc>::adopt(v27 + 8, (v26 + 8));
      *(v27 + 24) = *(v26 + 24);
      v28 = *(v26 + 32);
      *(v26 + 32) = 0;
      *(v27 + 32) = v28;
      v29 = *(v26 + 40);
      *(v27 + 56) = *(v26 + 56);
      *(v27 + 40) = v29;
      v30 = (v26 + 72);
    }

    else
    {
      v30 = &v43;
      v27 = *(a2 + 56) + 80 * v25;
      *(v27 + 8) = 0;
      *(v27 + 16) = 0;
      *v27 = a3;
      v31 = v38[1];
      v38[1] = 0;
      *(v27 + 8) = v31;
      LODWORD(v31) = v39;
      LODWORD(v39) = 0;
      *(v27 + 16) = v31;
      LODWORD(v31) = DWORD1(v39);
      DWORD1(v39) = 0;
      *(v27 + 20) = __PAIR64__(DWORD2(v39), v31);
      v32 = v40;
      v40 = 0;
      *(v27 + 32) = v32;
      v33 = v41;
      *(v27 + 56) = v42;
      *(v27 + 40) = v33;
    }

    v34 = *v30;
    *v30 = 0;
    *(v27 + 72) = v34;
    ++*(a2 + 68);
    WTF::NativePromiseProducer<void,WTF::String,16u>::~NativePromiseProducer(&v40, v21);
    v36 = v38[1];
    if (v38[1])
    {
      v38[1] = 0;
      LODWORD(v39) = 0;
      WTF::fastFree(v36, v35);
    }

    *a8 = v22;
    result = WTF::NativePromiseProducer<void,WTF::String,16u>::~NativePromiseProducer(&v44, v35);
  }

  v37 = 1;
  atomic_compare_exchange_strong_explicit(v17, &v37, 0, memory_order_release, memory_order_relaxed);
  if (v37 != 1)
  {
    return WTF::Lock::unlockSlow(v17);
  }

  return result;
}

WTF::StringImpl *WebKit::LibWebRTCCodecs::decodeFrame@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, WTF *a3@<X2>, char *a4@<X3>, size_t a5@<X4>, uint64_t *a6@<X8>)
{
  result = WebKit::LibWebRTCCodecs::decodeFrameInternal(a1, a2, a3, a4, a5, 0, 0, &v10);
  if (v10)
  {
    *a6 = v10;
  }

  else
  {
    *&v9 = "Decoding task did not complete";
    *(&v9 + 1) = 31;
    v8[0] = 0;
    v8[1] = 0;
    v8[2] = "decodeFrame";
    v8[3] = 0;
    return WTF::NativePromise<void,WTF::String,0u>::createAndReject<WTF::ASCIILiteral,std::enable_if<true,void>>(&v9, v8, a6);
  }

  return result;
}

WTF::StringImpl *WTF::NativePromise<void,WTF::String,0u>::createAndReject<WTF::ASCIILiteral,std::enable_if<true,void>>@<X0>(__int128 *a1@<X0>, WTF::Logger::LogSiteIdentifier *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = WTF::fastMalloc(0x80);
  v7 = WTF::NativePromise<void,WTF::String,0u>::NativePromise(v6, a2);
  *a3 = v7;

  return WTF::NativePromise<void,WTF::String,0u>::reject<WTF::ASCIILiteral,std::enable_if<true,void>>(v7, a1, a2);
}

uint64_t WebKit::LibWebRTCCodecs::registerDecodedVideoFrameCallback(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = 0;
  v6 = (a2 + 40);
  atomic_compare_exchange_strong_explicit((a2 + 40), &v5, 1u, memory_order_acquire, memory_order_acquire);
  if (v5)
  {
    MEMORY[0x19EB01E30](a2 + 40);
  }

  v7 = *a3;
  *a3 = 0;
  result = *(a2 + 32);
  *(a2 + 32) = v7;
  if (result)
  {
    result = (*(*result + 8))(result);
  }

  v9 = 1;
  atomic_compare_exchange_strong_explicit(v6, &v9, 0, memory_order_release, memory_order_relaxed);
  if (v9 != 1)
  {

    return WTF::Lock::unlockSlow(v6);
  }

  return result;
}

atomic_uint *WebKit::LibWebRTCCodecs::failedDecoding(uint64_t a1, uint64_t a2)
{
  v8 = a2;
  result = WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::VideoDecoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::LibWebRTCCodecs::Decoder>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::VideoDecoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::VideoDecoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::unique_ptr<WebKit::LibWebRTCCodecs::Decoder>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::VideoDecoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::LibWebRTCCodecs::Decoder>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::VideoDecoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::VideoDecoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::unique_ptr<WebKit::LibWebRTCCodecs::Decoder>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::VideoDecoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::ObjectIdentifierGeneric<WebKit::VideoDecoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>((a1 + 24), &v8);
  if (result)
  {
    v3 = 0;
    *(result + 41) = 1;
    v4 = (result + 10);
    atomic_compare_exchange_strong_explicit(result + 40, &v3, 1u, memory_order_acquire, memory_order_acquire);
    if (v3)
    {
      v6 = result;
      MEMORY[0x19EB01E30](result + 10);
      result = v6;
    }

    result = *(result + 4);
    if (result)
    {
      v7 = 0;
      (*(*result + 16))(result, &v7, 0);
      result = v7;
      v7 = 0;
      if (result)
      {
        if (atomic_fetch_add(result + 2, 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, result + 2);
          result = (*(*result + 8))(result);
        }
      }
    }

    v5 = 1;
    atomic_compare_exchange_strong_explicit(v4, &v5, 0, memory_order_release, memory_order_relaxed);
    if (v5 != 1)
    {
      return WTF::Lock::unlockSlow(v4);
    }
  }

  return result;
}

webrtc *WebKit::LibWebRTCCodecs::completedDecoding(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v8 = 0;
  v23 = a2;
  v9 = (a1 + 49);
  atomic_compare_exchange_strong_explicit((a1 + 49), &v8, 1u, memory_order_acquire, memory_order_acquire);
  if (v8)
  {
    MEMORY[0x19EB01E30](a1 + 49);
  }

  v10 = *(a1 + 56);
  if (v10)
  {
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
        goto LABEL_8;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v10);
  }

LABEL_8:
  v13 = *(a1 + 64);
  if (v13)
  {
    atomic_fetch_add(v13, 1u);
  }

  v14 = WebKit::RemoteVideoFrameProxy::operator new(0x88, a2);
  WebKit::RemoteVideoFrameProxy::RemoteVideoFrameProxy(v14, v10, v13, a5);
  WTF::ThreadSafeRefCounted<WebKit::RemoteVideoFrameObjectHeapProxy,(WTF::DestructionThread)2>::deref(v13);
  WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v10);
  v15 = 1;
  atomic_compare_exchange_strong_explicit(v9, &v15, 0, memory_order_release, memory_order_relaxed);
  if (v15 != 1)
  {
    WTF::Lock::unlockSlow(v9);
  }

  result = WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::VideoDecoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::LibWebRTCCodecs::Decoder>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::VideoDecoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::VideoDecoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::unique_ptr<WebKit::LibWebRTCCodecs::Decoder>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::VideoDecoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::LibWebRTCCodecs::Decoder>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::VideoDecoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::VideoDecoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::unique_ptr<WebKit::LibWebRTCCodecs::Decoder>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::VideoDecoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::ObjectIdentifierGeneric<WebKit::VideoDecoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>((a1 + 24), &v23);
  if (result)
  {
    v17 = result + 40;
    do
    {
      v18 = *v17;
      if (v18)
      {
        goto LABEL_24;
      }

      v19 = *v17;
      atomic_compare_exchange_strong_explicit(v17, &v19, v18 | 1, memory_order_acquire, memory_order_acquire);
    }

    while (v19 != v18);
    v20 = *(result + 4);
    if (v20)
    {
      v22 = v14;
      (*(*v20 + 16))(v20, &v22, a3);
      result = v22;
      v22 = 0;
      if (result && atomic_fetch_add(result + 2, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, result + 2);
        result = (*(*result + 8))(result);
      }
    }

    else
    {
      result = *(result + 3);
      if (!result)
      {
        goto LABEL_23;
      }

      result = webrtc::videoDecoderTaskComplete(result, a3, v14, WebKit::LibWebRTCCodecs::completedDecoding(WTF::ObjectIdentifierGeneric<WebKit::VideoDecoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,long long,long long,WebKit::RemoteVideoFrameProxyProperties &&)::$_0::__invoke<void>, WebKit::LibWebRTCCodecs::completedDecoding(WTF::ObjectIdentifierGeneric<WebKit::VideoDecoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,long long,long long,WebKit::RemoteVideoFrameProxyProperties &&)::$_1::__invoke<void>, v14[24]);
    }

    v14 = 0;
LABEL_23:
    v21 = 1;
    atomic_compare_exchange_strong_explicit(v17, &v21, 0, memory_order_release, memory_order_relaxed);
    if (v21 == 1)
    {
      goto LABEL_24;
    }

    result = WTF::Lock::unlockSlow(v17);
    if (v14)
    {
      goto LABEL_25;
    }

    return result;
  }

LABEL_24:
  if (v14)
  {
LABEL_25:
    if (atomic_fetch_add(v14 + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v14 + 2);
      return (*(*v14 + 8))(v14);
    }
  }

  return result;
}

atomic_uchar *WebKit::LibWebRTCCodecs::completedDecodingCV(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t *a5)
{
  v17 = a2;
  result = WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::VideoDecoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::LibWebRTCCodecs::Decoder>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::VideoDecoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::VideoDecoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::unique_ptr<WebKit::LibWebRTCCodecs::Decoder>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::VideoDecoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::LibWebRTCCodecs::Decoder>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::VideoDecoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::VideoDecoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::unique_ptr<WebKit::LibWebRTCCodecs::Decoder>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::VideoDecoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::ObjectIdentifierGeneric<WebKit::VideoDecoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>((a1 + 24), &v17);
  if (result)
  {
    v9 = result;
    v10 = result + 40;
    while (1)
    {
      v11 = *v10;
      if (v11)
      {
        break;
      }

      v12 = *v10;
      atomic_compare_exchange_strong_explicit(v10, &v12, v11 | 1, memory_order_acquire, memory_order_acquire);
      if (v12 == v11)
      {
        if (*a5)
        {
          if (*(result + 4))
          {
            WebCore::VideoFrameCV::create();
            v16 = v15;
            (*(**(v9 + 4) + 16))(*(v9 + 4), &v16, a3);
            v13 = v16;
            v16 = 0;
            if (v13 && atomic_fetch_add(v13 + 2, 0xFFFFFFFF) == 1)
            {
              atomic_store(1u, v13 + 2);
              (*(*v13 + 8))(v13);
            }

            result = 0;
          }

          else
          {
            result = *(result + 3);
            if (result)
            {
              result = webrtc::videoDecoderTaskComplete(result, a3, *a5, v8);
            }
          }
        }

        v14 = 1;
        atomic_compare_exchange_strong_explicit(v10, &v14, 0, memory_order_release, memory_order_relaxed);
        if (v14 != 1)
        {
          return WTF::Lock::unlockSlow(v10);
        }

        return result;
      }
    }
  }

  return result;
}

WTF::StringImpl *WebKit::LibWebRTCCodecs::createEncoder(unint64_t a1, char a2, void *a3)
{
  v12 = 0;
  v6 = WTF::fastMalloc(0x10);
  *v6 = &unk_1F112A658;
  v11 = v6;
  EncoderInternal = WebKit::LibWebRTCCodecs::createEncoderInternal(a1, a2, &v12, a3, 1, 1, 0, &v11);
  if (v11)
  {
    (*(*v11 + 8))(v11);
  }

  v9 = v12;
  v12 = 0;
  if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v9, v7);
  }

  return EncoderInternal;
}

WTF::StringImpl *WebKit::LibWebRTCCodecs::createEncoderInternal(unint64_t a1, char a2, uint64_t a3, void *a4, char a5, char a6, char a7, uint64_t *a8)
{
  IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
  if (WebKit::LibWebRTCCodecs::Encoder::s_heapRef)
  {
    NonCompact = bmalloc::api::tzoneAllocateNonCompact(WebKit::LibWebRTCCodecs::Encoder::s_heapRef, v15);
  }

  else
  {
    NonCompact = WebKit::LibWebRTCCodecs::Encoder::operatorNewSlow(0);
  }

  v19 = NonCompact;
  *NonCompact = IdentifierInternal;
  *(NonCompact + 60) = 0;
  *(NonCompact + 96) = 0;
  *(NonCompact + 24) = 0;
  *(NonCompact + 32) = 0;
  *(NonCompact + 16) = 0;
  *(NonCompact + 40) = 0;
  *(NonCompact + 72) = 0;
  *(NonCompact + 80) = 0;
  *(NonCompact + 64) = 0;
  *(NonCompact + 88) = 0;
  WebKit::SharedVideoFrameWriter::SharedVideoFrameWriter((NonCompact + 104), v18);
  *(v19 + 136) = 0;
  *(v19 + 139) = 0;
  *(v19 + 8) = a2;
  *(v19 + 137) = a6;
  *(v19 + 138) = a5;
  WTF::String::isolatedCopy();
  result = *(v19 + 16);
  *(v19 + 16) = v40;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(result, v20);
    }

    result = 0;
  }

  *(v19 + 139) = a7;
  v43 = 0;
  v44 = 0;
  v22 = a4[2];
  if (v22)
  {
    if (v22 >> 28)
    {
      __break(0xC471u);
      return result;
    }

    v23 = WTF::fastMalloc((16 * v22));
    LODWORD(v44) = v22;
    v43 = v23;
  }

  else
  {
    v23 = 0;
  }

  v26 = *a4;
  v24 = a4 + 1;
  v25 = v26;
  if (v26 == v24)
  {
    v27 = 0;
  }

  else
  {
    v27 = 0;
    do
    {
      WTF::String::fromUTF8();
      WTF::String::fromUTF8();
      v28 = v45;
      v29 = (v23 + 16 * v27);
      *v29 = 0;
      v29[1] = v28;
      v30 = v25[1];
      if (v30)
      {
        do
        {
          v31 = v30;
          v30 = *v30;
        }

        while (v30);
      }

      else
      {
        do
        {
          v31 = v25[2];
          v32 = *v31 == v25;
          v25 = v31;
        }

        while (!v32);
      }

      ++v27;
      v25 = v31;
    }

    while (v31 != v24);
    HIDWORD(v44) = v27;
  }

  while (1)
  {
    v33 = *(a1 + 8);
    if ((v33 & 1) == 0)
    {
      break;
    }

    v34 = *(a1 + 8);
    atomic_compare_exchange_strong_explicit((a1 + 8), &v34, v33 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v34 == v33)
    {
      goto LABEL_25;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*(a1 + 8));
LABEL_25:
  v43 = 0;
  v44 = 0;
  v35 = *a8;
  *a8 = 0;
  v42 = v35;
  v36 = WTF::fastMalloc(0x38);
  *v36 = &unk_1F112A6A8;
  *(v36 + 8) = a1;
  *(v36 + 16) = a1;
  *(v36 + 24) = v19;
  *(v36 + 32) = v23;
  v41[0] = 0;
  v41[1] = 0;
  *(v36 + 40) = v22;
  *(v36 + 44) = v27;
  *(v36 + 48) = v35;
  v45 = v36;
  WebKit::LibWebRTCCodecs::ensureGPUProcessConnectionAndDispatchToThread(a1, &v45);
  v38 = v45;
  v45 = 0;
  if (v38)
  {
    (*(*v38 + 8))(v38);
  }

  v42 = 0;
  WTF::Vector<std::pair<WTF::String,WTF::String>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v41, v37);
  WTF::Vector<std::pair<WTF::String,WTF::String>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v43, v39);
  return v19;
}

uint64_t WebKit::LibWebRTCCodecs::createEncoderAndWaitUntilInitialized(unint64_t a1, char a2, uint64_t a3, void *a4, __int128 *a5, uint64_t *a6)
{
  v10 = *(a5 + 40);
  v11 = *(a5 + 16);
  v12 = *(a5 + 41);
  v17 = *a5;
  *v18 = a5[1];
  *&v18[10] = *(a5 + 26);
  v13 = *a6;
  *a6 = 0;
  v14 = WTF::fastMalloc(0x40);
  *v14 = &unk_1F112A680;
  *(v14 + 8) = v17;
  *(v14 + 24) = *v18;
  *(v14 + 40) = *&v18[16];
  *(v14 + 56) = v13;
  v19 = v14;
  WebKit::LibWebRTCCodecs::createEncoderInternal(a1, a2, a3, a4, v10, v11, v12, &v19);
  result = v19;
  if (v19)
  {
    v16 = *(*v19 + 8);

    return v16();
  }

  return result;
}

uint64_t WebKit::LibWebRTCCodecs::releaseEncoder(WebKit::LibWebRTCCodecs *this, WebKit::LibWebRTCCodecs::Encoder *a2)
{
  while (1)
  {
    v4 = *(this + 1);
    if ((v4 & 1) == 0)
    {
      break;
    }

    v5 = *(this + 1);
    atomic_compare_exchange_strong_explicit(this + 1, &v5, v4 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v5 == v4)
    {
      goto LABEL_5;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*(this + 1));
LABEL_5:
  v6 = *a2;
  v7 = WTF::fastMalloc(0x20);
  *v7 = &unk_1F112A770;
  v7[1] = this;
  v7[2] = this;
  v7[3] = v6;
  v10 = v7;
  WebKit::LibWebRTCCodecs::ensureGPUProcessConnectionAndDispatchToThread(this, &v10);
  v8 = v10;
  v10 = 0;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  return 0;
}

void *WebKit::LibWebRTCCodecs::initializeEncoderInternal(atomic_uchar *this, WebKit::LibWebRTCCodecs::Encoder *a2, __int16 a3, __int16 a4, int a5, int a6, int a7, int a8)
{
  v29 = a5;
  v27 = a7;
  v28 = a6;
  v12 = *(a2 + 60);
  *(a2 + 20) = a3;
  *(a2 + 21) = a4;
  *(a2 + 11) = a5;
  *(a2 + 12) = a6;
  *(a2 + 13) = a7;
  *(a2 + 14) = a8;
  if ((v12 & 1) == 0)
  {
    *(a2 + 60) = 1;
  }

  v13 = 0;
  v14 = this + 32;
  atomic_compare_exchange_strong_explicit(this + 32, &v13, 1u, memory_order_acquire, memory_order_acquire);
  if (v13)
  {
    MEMORY[0x19EB01E30](this + 32);
  }

  v15 = *(a2 + 12);
  if (v15)
  {
    while (1)
    {
      v16 = *v15;
      if ((*v15 & 1) == 0)
      {
        break;
      }

      v17 = *v15;
      atomic_compare_exchange_strong_explicit(v15, &v17, v16 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v17 == v16)
      {
        goto LABEL_10;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v15);
  }

LABEL_10:
  v20 = a2;
  v21 = a3;
  v22 = a4;
  v23 = &v29;
  v24 = &v28;
  v25 = &v27;
  v26 = a8;
  result = IPC::Connection::send<Messages::LibWebRTCCodecsProxy::InitializeEncoder>(v15, &v20);
  if (v15)
  {
    result = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v15);
  }

  v19 = 1;
  atomic_compare_exchange_strong_explicit(v14, &v19, 0, memory_order_release, memory_order_relaxed);
  if (v19 != 1)
  {
    return WTF::Lock::unlockSlow(v14);
  }

  return result;
}

IPC::Encoder *IPC::Connection::send<Messages::LibWebRTCCodecsProxy::InitializeEncoder>(uint64_t *a1, void **a2)
{
  v4 = IPC::Encoder::operator new(0x238, a2);
  *v4 = 129;
  *(v4 + 68) = 0;
  *(v4 + 70) = 0;
  *(v4 + 69) = 0;
  *(v4 + 2) = 0;
  *(v4 + 3) = 0;
  *(v4 + 1) = 0;
  IPC::Encoder::encodeHeader(v4);
  v9 = v4;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v4, **a2);
  IPC::ArgumentCoder<unsigned short,void>::encode<IPC::Encoder>(v4, *(a2 + 4));
  IPC::ArgumentCoder<unsigned short,void>::encode<IPC::Encoder>(v4, *(a2 + 5));
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v4, *a2[2]);
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v4, *a2[3]);
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v4, *a2[4]);
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v4, *(a2 + 10));
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

unsigned int *WebKit::LibWebRTCCodecs::encodeFrame@<X0>(atomic_ullong *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t *a8@<X8>)
{
  result = WebKit::LibWebRTCCodecs::encodeFrameInternal<WebCore::VideoFrame>(a1, a2, a3, a7, *(a3 + 34), *(a3 + 16), *(a3 + 24) & 0xFFFFFFFFFFLL, a4, &v12, a5, a6);
  if (v12)
  {
    *a8 = v12;
  }

  else
  {
    *&v11 = "Encoding task did not complete";
    *(&v11 + 1) = 31;
    v10[0] = 0;
    v10[1] = 0;
    v10[2] = "encodeFrame";
    v10[3] = 0;
    WTF::NativePromise<void,WTF::String,0u>::createAndReject<WTF::ASCIILiteral,std::enable_if<true,void>>(&v11, v10, a8);
    result = v12;
    v12 = 0;
    if (result)
    {
      if (atomic_fetch_add(result + 2, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, result + 2);
        return (*(*result + 16))(result);
      }
    }
  }

  return result;
}

atomic_ullong *WebKit::LibWebRTCCodecs::encodeFrameInternal<WebCore::VideoFrame>@<X0>(atomic_ullong *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, __int16 a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, atomic_uint **a9@<X8>, uint64_t a10, uint64_t a11)
{
  v17 = result;
  v19 = 0;
  v55[0] = a10;
  v55[1] = a11;
  v20 = (result + 4);
  atomic_compare_exchange_strong_explicit(result + 32, &v19, 1u, memory_order_acquire, memory_order_acquire);
  if (v19)
  {
    result = MEMORY[0x19EB01E30](result + 4);
  }

  v21 = *(a2 + 96);
  if (v21)
  {
    v38 = a4;
    v22 = a8;
    v40 = a9;
    while (1)
    {
      v23 = *v21;
      if ((*v21 & 1) == 0)
      {
        break;
      }

      v24 = *v21;
      atomic_compare_exchange_strong_explicit(v21, &v24, v23 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v24 == v23)
      {
        goto LABEL_9;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v21);
LABEL_9:
    v25 = WTF::fastMalloc(0x10);
    *v25 = &unk_1F112A888;
    v25[1] = a2;
    v47 = v25;
    v26 = WTF::fastMalloc(0x10);
    *v26 = &unk_1F112A8B0;
    v26[1] = a2;
    v41 = v26;
    WebKit::SharedVideoFrameWriter::writeBuffer(a2 + 104, a3, &v47, &v41, v53);
    (*(*v26 + 8))(v26);
    (*(*v25 + 8))(v25);
    if (v54 == 1)
    {
      v47 = a6;
      v48 = a7;
      v49 = BYTE4(a7);
      v50 = 0;
      v51 = a5;
      mpark::variant<decltype(nullptr),IPC::ObjectIdentifierReadReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::MachSendRight,WebCore::IntSize>::variant(v52, v53);
      v27 = *(a2 + 96);
      while (1)
      {
        v28 = *v27;
        if ((*v27 & 1) == 0)
        {
          break;
        }

        v29 = *v27;
        atomic_compare_exchange_strong_explicit(v27, &v29, v28 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v29 == v28)
        {
          goto LABEL_16;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v27);
LABEL_16:
      v41 = a2;
      v42 = &v47;
      *&v43 = v22;
      *(&v43 + 1) = v55;
      LOBYTE(v44) = v38;
      IPC::Connection::sendWithPromisedReply<IPC::Connection::NoOpPromiseConverter,Messages::LibWebRTCCodecsProxy::EncodeFrame,WTF::NativePromise<BOOL,IPC::Error,0u>>(&v46, v27, &v41);
      WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v27);
      v30 = v46;
      v31 = v17[11];
      v32 = WTF::fastMalloc(0x50);
      while (1)
      {
        v33 = *(v31 + 32);
        if ((v33 & 1) == 0)
        {
          break;
        }

        v34 = *(v31 + 32);
        atomic_compare_exchange_strong_explicit((v31 + 32), &v34, v33 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v34 == v33)
        {
          goto LABEL_21;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*(v31 + 32));
LABEL_21:
      v35 = WTF::fastMalloc(0x10);
      *v35 = &unk_1F112A8D8;
      *(v32 + 8) = 1;
      *(v32 + 16) = v31 + 24;
      *(v32 + 24) = 0uLL;
      *(v32 + 40) = "encodeFrameInternal";
      *(v32 + 48) = 0;
      *(v32 + 56) = 0;
      *v32 = &unk_1F112A210;
      *(v32 + 64) = 0;
      *(v32 + 72) = v35;
      atomic_fetch_add(v30 + 2, 1u);
      v41 = v30;
      v42 = v32;
      v43 = 0uLL;
      v44 = "encodeFrameInternal";
      v45 = 0;
      WTF::NativePromise<BOOL,IPC::Error,0u>::ThenCommand<WTF::NativePromise<BOOL,IPC::Error,0u>::ThenCallback<true,WTF::NativePromise<void,WTF::String,0u>>>::completionPromise(v40, &v41);
      WTF::NativePromise<BOOL,IPC::Error,0u>::ThenCommand<WTF::NativePromise<BOOL,IPC::Error,0u>::ThenCallback<true,WTF::NativePromise<void,WTF::String,0u>>>::~ThenCommand(&v41);
      v36 = v46;
      v46 = 0;
      if (v36 && atomic_fetch_add(v36 + 2, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v36 + 2);
        (*(*v36 + 16))(v36);
      }

      if (v52[16] == 2)
      {
        WTF::MachSendRight::~MachSendRight(v52);
      }

      if ((v54 & 1) != 0 && v53[16] == 2)
      {
        WTF::MachSendRight::~MachSendRight(v53);
      }
    }

    else
    {
      *v40 = 0;
    }

    result = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v21);
  }

  else
  {
    *a9 = 0;
  }

  v37 = 1;
  atomic_compare_exchange_strong_explicit(v20, &v37, 0, memory_order_release, memory_order_relaxed);
  if (v37 != 1)
  {
    return WTF::Lock::unlockSlow(v20);
  }

  return result;
}

uint64_t WebKit::LibWebRTCCodecs::flushEncoder@<X0>(atomic_uchar *this@<X0>, WebKit::LibWebRTCCodecs::Encoder *a2@<X1>, atomic_uint **a3@<X8>)
{
  v6 = 0;
  v7 = this + 32;
  atomic_compare_exchange_strong_explicit(this + 32, &v6, 1u, memory_order_acquire, memory_order_acquire);
  if (v6)
  {
    MEMORY[0x19EB01E30](this + 32);
  }

  v8 = *(a2 + 12);
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
        goto LABEL_8;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v8);
LABEL_8:
    v29 = 0;
    *v30 = 0;
    *&v30[8] = "sendWithPromisedReply";
    *&v30[16] = 0;
    WTF::NativePromiseProducer<void,IPC::Error,0u>::NativePromiseProducer<std::enable_if<true,void>>(v33, 0, &v29);
    v11 = v33[0];
    if (v33[0])
    {
      atomic_fetch_add((v33[0] + 8), 1u);
      v12 = v33[0];
    }

    else
    {
      v12 = 0;
    }

    v33[0] = 0;
    *v30 = *&v33[1];
    *&v30[16] = *&v33[3];
    v13 = WTF::fastMalloc(0x30);
    *v13 = &unk_1F112A900;
    *(v13 + 8) = v12;
    v29 = 0;
    v14 = *&v30[16];
    *(v13 + 16) = *v30;
    *(v13 + 32) = v14;
    v32[0] = v13;
    if (WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
    {
      result = 141;
      __break(0xC471u);
      return result;
    }

    v32[1] = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
    WTF::NativePromiseProducer<void,IPC::Error,0u>::~NativePromiseProducer(&v29);
    v16 = IPC::Encoder::operator new(0x238, v15);
    *v16 = 128;
    *(v16 + 68) = 0;
    *(v16 + 70) = 0;
    *(v16 + 69) = 0;
    *(v16 + 2) = 0;
    *(v16 + 3) = 0;
    *(v16 + 1) = 0;
    IPC::Encoder::encodeHeader(v16);
    v29 = v16;
    IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v16, *a2);
    IPC::Connection::sendMessageWithAsyncReplyWithDispatcher(v8, &v29, v32, 0, 0);
    v18 = v29;
    v29 = 0;
    if (v18)
    {
      IPC::Encoder::~Encoder(v18, v17);
      bmalloc::api::tzoneFree(v27, v28);
    }

    v19 = v32[0];
    v32[0] = 0;
    if (v19)
    {
      (*(*v19 + 8))(v19);
    }

    WTF::NativePromiseProducer<void,IPC::Error,0u>::~NativePromiseProducer(v33);
    v20 = *(this + 11);
    *v33 = 0uLL;
    v21 = WTF::fastMalloc(0x50);
    while (1)
    {
      v22 = *(v20 + 32);
      if ((v22 & 1) == 0)
      {
        break;
      }

      v23 = *(v20 + 32);
      atomic_compare_exchange_strong_explicit((v20 + 32), &v23, v22 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v23 == v22)
      {
        goto LABEL_20;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*(v20 + 32));
LABEL_20:
    v24 = WTF::fastMalloc(0x10);
    *v24 = &unk_1F112A270;
    *(v21 + 8) = 1;
    *(v21 + 16) = v20 + 24;
    *(v21 + 24) = *v33;
    *(v21 + 40) = "flushEncoder";
    *(v21 + 48) = 0;
    *(v21 + 56) = 0;
    *v21 = &unk_1F112A168;
    *(v21 + 64) = 0;
    *(v21 + 72) = v24;
    atomic_fetch_add(v11 + 2, 1u);
    v29 = v11;
    *v30 = v21;
    *&v30[8] = *v33;
    *&v30[24] = "flushEncoder";
    v31 = 0;
    WTF::NativePromise<void,IPC::Error,0u>::ThenCommand<WTF::NativePromise<void,IPC::Error,0u>::ThenCallback<true,WTF::NativePromise<void,void,0u>>>::completionPromise(a3, &v29);
    WTF::NativePromise<void,IPC::Error,0u>::ThenCommand<WTF::NativePromise<void,IPC::Error,0u>::ThenCallback<false,void>>::~ThenCommand(&v29);
    if (v11 && atomic_fetch_add(v11 + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v11 + 2);
      (*(*v11 + 16))(v11);
    }

    result = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v8);
  }

  else
  {
    v29 = 0;
    *v30 = 0;
    *&v30[8] = "flushEncoder";
    *&v30[16] = 0;
    result = WTF::NativePromise<void,void,0u>::createAndResolve<std::enable_if<true,void>>(&v29, a3);
  }

  v26 = 1;
  atomic_compare_exchange_strong_explicit(v7, &v26, 0, memory_order_release, memory_order_relaxed);
  if (v26 != 1)
  {
    return WTF::Lock::unlockSlow(v7);
  }

  return result;
}

uint64_t WebKit::LibWebRTCCodecs::registerEncodedVideoFrameCallback(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = 0;
  v6 = (a2 + 88);
  atomic_compare_exchange_strong_explicit((a2 + 88), &v5, 1u, memory_order_acquire, memory_order_acquire);
  if (v5)
  {
    MEMORY[0x19EB01E30](a2 + 88);
  }

  v7 = *a3;
  *a3 = 0;
  result = *(a2 + 72);
  *(a2 + 72) = v7;
  if (result)
  {
    result = (*(*result + 8))(result);
  }

  v9 = 1;
  atomic_compare_exchange_strong_explicit(v6, &v9, 0, memory_order_release, memory_order_relaxed);
  if (v9 != 1)
  {

    return WTF::Lock::unlockSlow(v6);
  }

  return result;
}

uint64_t WebKit::LibWebRTCCodecs::registerEncoderDescriptionCallback(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = 0;
  v6 = (a2 + 88);
  atomic_compare_exchange_strong_explicit((a2 + 88), &v5, 1u, memory_order_acquire, memory_order_acquire);
  if (v5)
  {
    MEMORY[0x19EB01E30](a2 + 88);
  }

  v7 = *a3;
  *a3 = 0;
  result = *(a2 + 80);
  *(a2 + 80) = v7;
  if (result)
  {
    result = (*(*result + 8))(result);
  }

  v9 = 1;
  atomic_compare_exchange_strong_explicit(v6, &v9, 0, memory_order_release, memory_order_relaxed);
  if (v9 != 1)
  {

    return WTF::Lock::unlockSlow(v6);
  }

  return result;
}

unsigned int *WebKit::LibWebRTCCodecs::setEncodeRates@<X0>(WebKit::LibWebRTCCodecs *this@<X0>, WebKit::LibWebRTCCodecs::Encoder *a2@<X1>, unsigned int a3@<W2>, unsigned int a4@<W3>, atomic_uint **a5@<X8>)
{
  v10 = 0;
  v11 = this + 32;
  atomic_compare_exchange_strong_explicit(this + 32, &v10, 1u, memory_order_acquire, memory_order_acquire);
  if (v10)
  {
    MEMORY[0x19EB01E30](this + 32);
  }

  v12 = *(a2 + 12);
  if (v12)
  {
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
        goto LABEL_8;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v12);
LABEL_8:
    *(a2 + 136) = 1;
    v43 = a2;
    *&v44 = __PAIR64__(a4, a3);
    IPC::Connection::sendWithPromisedReply<IPC::Connection::NoOpPromiseConverter,Messages::LibWebRTCCodecsProxy::SetEncodeRates,WTF::NativePromise<void,IPC::Error,0u>>(&v35, v12, &v43);
    v15 = v35;
    v16 = *(this + 11);
    v34 = 0uLL;
    v17 = WTF::fastMalloc(0x50);
    while (1)
    {
      v18 = *(v16 + 32);
      if ((v18 & 1) == 0)
      {
        break;
      }

      v19 = *(v16 + 32);
      atomic_compare_exchange_strong_explicit((v16 + 32), &v19, v18 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v19 == v18)
      {
        goto LABEL_13;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*(v16 + 32));
LABEL_13:
    v20 = WTF::fastMalloc(0x10);
    *v20 = &unk_1F112A298;
    *(v17 + 8) = 1;
    *(v17 + 16) = v16 + 24;
    *(v17 + 24) = v34;
    *(v17 + 40) = "setEncodeRates";
    *(v17 + 48) = 0;
    *(v17 + 56) = 0;
    *v17 = &unk_1F112A168;
    *(v17 + 64) = 0;
    *(v17 + 72) = v20;
    atomic_fetch_add(v15 + 2, 1u);
    v36 = v15;
    v37 = v17;
    v38 = v34;
    v39 = "setEncodeRates";
    v40 = 0;
    WTF::NativePromise<void,IPC::Error,0u>::ThenCommand<WTF::NativePromise<void,IPC::Error,0u>::ThenCallback<true,WTF::NativePromise<void,void,0u>>>::completionPromise(a5, &v36);
    WTF::NativePromise<void,IPC::Error,0u>::ThenCommand<WTF::NativePromise<void,IPC::Error,0u>::ThenCallback<false,void>>::~ThenCommand(&v36);
    result = v35;
    v35 = 0;
    if (result && atomic_fetch_add(result + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, result + 2);
      result = (*(*result + 16))(result);
    }
  }

  else
  {
    v36 = 0;
    v37 = 0;
    *&v38 = "setEncodeRates";
    *(&v38 + 1) = 0;
    WTF::NativePromiseProducer<void,void,0u>::NativePromiseProducer<std::enable_if<true,void>>(&v43, 0, &v36);
    v23 = v43;
    if (v43)
    {
      atomic_fetch_add(v43 + 2, 1u);
    }

    *a5 = v23;
    v36 = this;
    while (1)
    {
      v24 = *(this + 1);
      if ((v24 & 1) == 0)
      {
        break;
      }

      v25 = *(this + 1);
      atomic_compare_exchange_strong_explicit(this + 1, &v25, v24 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v25 == v24)
      {
        goto LABEL_27;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*(this + 1));
LABEL_27:
    v26 = *a2;
    *&v38 = a2 + 136;
    *(&v38 + 1) = v26;
    v39 = __PAIR64__(a4, a3);
    v27 = v43;
    v43 = 0;
    v41 = v44;
    v42 = v45;
    v28 = WTF::fastMalloc(0x58);
    *v28 = &unk_1F112A9A0;
    *(v28 + 8) = this;
    *(v28 + 16) = this;
    v29 = v39;
    *(v28 + 24) = v38;
    *(v28 + 40) = v29;
    *(v28 + 48) = v27;
    v37 = 0;
    v40 = 0;
    v30 = v41;
    *(v28 + 72) = v42;
    *(v28 + 56) = v30;
    *&v34 = v28;
    WebKit::LibWebRTCCodecs::ensureGPUProcessConnectionAndDispatchToThread(this, &v34);
    v31 = v34;
    *&v34 = 0;
    if (v31)
    {
      (*(*v31 + 8))(v31);
    }

    WTF::NativePromiseProducer<void,void,16u>::~NativePromiseProducer(&v40);
    v33 = v37;
    v37 = 0;
    if (v33)
    {
      WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref((v33 + 8), v32);
    }

    result = WTF::NativePromiseProducer<void,void,16u>::~NativePromiseProducer(&v43);
  }

  if (v12)
  {
    result = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v12);
  }

  v22 = 1;
  atomic_compare_exchange_strong_explicit(v11, &v22, 0, memory_order_release, memory_order_relaxed);
  if (v22 != 1)
  {
    return WTF::Lock::unlockSlow(v11);
  }

  return result;
}

uint64_t IPC::Connection::sendWithPromisedReply<IPC::Connection::NoOpPromiseConverter,Messages::LibWebRTCCodecsProxy::SetEncodeRates,WTF::NativePromise<void,IPC::Error,0u>>(atomic_uint **a1, uint64_t a2, uint64_t a3)
{
  v22 = 0;
  *&v23 = 0;
  *(&v23 + 1) = "sendWithPromisedReply";
  *&v24 = 0;
  WTF::NativePromiseProducer<void,IPC::Error,0u>::NativePromiseProducer<std::enable_if<true,void>>(&v19, 0, &v22);
  v6 = v19;
  if (v19)
  {
    atomic_fetch_add(v19 + 2, 1u);
    v7 = v19;
  }

  else
  {
    v7 = 0;
  }

  *a1 = v6;
  v19 = 0;
  v23 = v20;
  v24 = v21;
  v8 = WTF::fastMalloc(0x30);
  *v8 = &unk_1F112A950;
  *(v8 + 8) = v7;
  v22 = 0;
  v9 = v24;
  *(v8 + 16) = v23;
  *(v8 + 32) = v9;
  v18[0] = v8;
  if (WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
  {
    result = 141;
    __break(0xC471u);
  }

  else
  {
    v18[1] = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
    WTF::NativePromiseProducer<void,IPC::Error,0u>::~NativePromiseProducer(&v22);
    v11 = IPC::Encoder::operator new(0x238, v10);
    *v11 = 133;
    *(v11 + 68) = 0;
    *(v11 + 70) = 0;
    *(v11 + 69) = 0;
    *(v11 + 2) = 0;
    *(v11 + 3) = 0;
    *(v11 + 1) = 0;
    IPC::Encoder::encodeHeader(v11);
    v22 = v11;
    IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v11, **a3);
    IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v11, *(a3 + 8));
    IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v11, *(a3 + 12));
    IPC::Connection::sendMessageWithAsyncReplyWithDispatcher(a2, &v22, v18, 0, 0);
    v13 = v22;
    v22 = 0;
    if (v13)
    {
      IPC::Encoder::~Encoder(v13, v12);
      bmalloc::api::tzoneFree(v16, v17);
    }

    v14 = v18[0];
    v18[0] = 0;
    if (v14)
    {
      (*(*v14 + 8))(v14);
    }

    return WTF::NativePromiseProducer<void,IPC::Error,0u>::~NativePromiseProducer(&v19);
  }

  return result;
}

uint64_t WebKit::LibWebRTCCodecs::completedEncoding(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::LibWebRTCCodecs::Encoder>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::unique_ptr<WebKit::LibWebRTCCodecs::Encoder>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::LibWebRTCCodecs::Encoder>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::unique_ptr<WebKit::LibWebRTCCodecs::Encoder>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>((a1 + 40), a2);
  if (result)
  {
    v9 = result;
    v10 = (result + 88);
    while (1)
    {
      v11 = *v10;
      if (v11)
      {
        break;
      }

      v12 = *v10;
      atomic_compare_exchange_strong_explicit(v10, &v12, v11 | 1, memory_order_acquire, memory_order_acquire);
      if (v12 == v11)
      {
        v13 = *(result + 72);
        if (v13)
        {
          v14 = *(a5 + 60);
          result = (*(*v13 + 16))(v13, a3, a4, *(a5 + 48) == 3, *(a5 + 8), *(a5 + 16), *(a5 + 24), v14 & ~(v14 >> 31) & 0x7FFFFF00 | ((v14 >= 0) << 32) | (v14 & ~(v14 >> 31)));
        }

        else
        {
          result = *(v9 + 64);
          if (result)
          {
            result = webrtc::encoderVideoTaskComplete();
          }
        }

        v15 = 1;
        atomic_compare_exchange_strong_explicit(v10, &v15, 0, memory_order_release, memory_order_relaxed);
        if (v15 != 1)
        {

          return WTF::Lock::unlockSlow(v10);
        }

        return result;
      }
    }
  }

  return result;
}

atomic_uchar *WebKit::LibWebRTCCodecs::setEncodingConfiguration(uint64_t a1, uint64_t a2, char *a3, WTF *a4, uint64_t a5, char a6)
{
  result = WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::LibWebRTCCodecs::Encoder>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::unique_ptr<WebKit::LibWebRTCCodecs::Encoder>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::LibWebRTCCodecs::Encoder>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::unique_ptr<WebKit::LibWebRTCCodecs::Encoder>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>((a1 + 40), a2);
  if (result)
  {
    v11 = result;
    v12 = result + 88;
    while (1)
    {
      v13 = *v12;
      if (v13)
      {
        break;
      }

      v14 = *v12;
      atomic_compare_exchange_strong_explicit(v12, &v14, v13 | 1, memory_order_acquire, memory_order_acquire);
      if (v14 == v13)
      {
        if (*(result + 10))
        {
          LOBYTE(v39) = 0;
          v41 = 0;
          if (a4)
          {
            v26 = a4;
            if (a4 >> 32)
            {
              __break(0xC471u);
              return result;
            }

            v15 = WTF::fastMalloc(a4);
            v25 = a4;
            v24 = v15;
            do
            {
              v16 = *a3++;
              *v15 = v16;
              v15 = (v15 + 1);
              a4 = (a4 - 1);
            }

            while (a4);
            std::optional<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>::operator=[abi:sn200100]<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,void>(&v39, &v24);
            v18 = v24;
            if (v24)
            {
              v24 = 0;
              v25 = 0;
              WTF::fastFree(v18, v17);
            }

            v19 = v41;
          }

          else
          {
            v19 = 0;
          }

          v27 = 0;
          v28 = 0;
          v29 = 0;
          v30 = 0;
          v31 = 0;
          v32 = 0;
          v33 = 0;
          LOBYTE(v34) = 0;
          v36 = 0;
          v24 = 0;
          LOBYTE(v25) = 0;
          if (v19)
          {
            v34 = v39;
            v20 = v40;
            v39 = 0;
            v40 = 0;
            v35 = v20;
            v36 = 1;
          }

          v37 = a5;
          v38 = a6;
          (*(**(v11 + 10) + 16))(*(v11 + 10), &v24);
          if (v36 == 1)
          {
            v23 = v34;
            if (v34)
            {
              v34 = 0;
              LODWORD(v35) = 0;
              WTF::fastFree(v23, v21);
            }
          }

          result = v24;
          v24 = 0;
          if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            result = WTF::StringImpl::destroy(result, v21);
          }

          if (v41 == 1)
          {
            result = v39;
            if (v39)
            {
              v39 = 0;
              LODWORD(v40) = 0;
              result = WTF::fastFree(result, v21);
            }
          }
        }

        v22 = 1;
        atomic_compare_exchange_strong_explicit(v12, &v22, 0, memory_order_release, memory_order_relaxed);
        if (v22 != 1)
        {
          return WTF::Lock::unlockSlow(v12);
        }

        return result;
      }
    }
  }

  return result;
}

void WebKit::LibWebRTCCodecs::gpuProcessConnectionDidClose(WebKit::LibWebRTCCodecs *this, WebKit::GPUProcessConnection *a2)
{
  v3 = 0;
  v4 = this + 49;
  atomic_compare_exchange_strong_explicit(this + 49, &v3, 1u, memory_order_acquire, memory_order_acquire);
  if (v3)
  {
    MEMORY[0x19EB01E30](this + 49, a2);
  }

  v5 = *(this + 7);
  *(this + 7) = 0;
  IPC::Connection::removeWorkQueueMessageReceiver(v5, 0x14u, 0);
  v7 = atomic_load(this + 48);
  if ((v7 & 1) == 0)
  {
    goto LABEL_15;
  }

  WebKit::LibWebRTCCodecs::ensureGPUProcessConnectionOnMainThreadWithLock(this, v6);
  v8 = *(this + 11);
  while (1)
  {
    v9 = *(this + 1);
    if ((v9 & 1) == 0)
    {
      break;
    }

    v10 = *(this + 1);
    atomic_compare_exchange_strong_explicit(this + 1, &v10, v9 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v10 == v9)
    {
      goto LABEL_9;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*(this + 1));
LABEL_9:
  v11 = *(this + 7);
  if (v11)
  {
    while (1)
    {
      v12 = *v11;
      if ((*v11 & 1) == 0)
      {
        break;
      }

      v13 = *v11;
      atomic_compare_exchange_strong_explicit(v11, &v13, v12 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v13 == v12)
      {
        goto LABEL_14;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v11);
  }

LABEL_14:
  v14 = WTF::fastMalloc(0x20);
  *v14 = &unk_1F112A9F0;
  v14[1] = this;
  v14[2] = this;
  v14[3] = v11;
  v17 = v14;
  (*(*v8 + 48))(v8, &v17);
  v15 = v17;
  v17 = 0;
  if (!v15)
  {
LABEL_15:
    if (!v5)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  (*(*v15 + 8))(v15);
  if (v5)
  {
LABEL_16:
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v5);
  }

LABEL_17:
  v16 = 1;
  atomic_compare_exchange_strong_explicit(v4, &v16, 0, memory_order_release, memory_order_relaxed);
  if (v16 != 1)
  {
    WTF::Lock::unlockSlow(v4);
  }
}

atomic_ullong *WebKit::LibWebRTCCodecs::setLoggingLevel(atomic_ullong *result, __int16 a2)
{
  v2 = result;
  v3 = 0;
  v10 = a2;
  *(result + 123) = a2 | 0x100;
  v4 = result + 49;
  atomic_compare_exchange_strong_explicit(result + 49, &v3, 1u, memory_order_acquire, memory_order_acquire);
  if (v3)
  {
    result = MEMORY[0x19EB01E30](result + 49);
  }

  v5 = v2[7];
  if (v5)
  {
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
        goto LABEL_8;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v5);
LABEL_8:
    v9 = &v10;
    IPC::Connection::send<Messages::LibWebRTCCodecsProxy::SetRTCLoggingLevel>(v5, &v9, 0, 0, 0);
    result = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v5);
  }

  v8 = 1;
  atomic_compare_exchange_strong_explicit(v4, &v8, 0, memory_order_release, memory_order_relaxed);
  if (v8 != 1)
  {
    return WTF::Lock::unlockSlow(v4);
  }

  return result;
}

uint64_t WebKit::LibWebRTCCodecs::setDecoderConnection(void *a1, WTF::StringImpl *a2, uint64_t *a3, __n128 a4)
{
  v4 = a2;
  v102[2] = *MEMORY[0x1E69E9840];
  v6 = *a3;
  *a3 = 0;
  v7 = *(a2 + 6);
  *(a2 + 6) = v6;
  if (v7)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v7);
  }

  a4.n128_u64[0] = 0;
  v8 = *(v4 + 56);
  v69 = v8;
  v9 = *(v4 + 68);
  v70 = *(v4 + 64);
  v71 = v9;
  buf = a4;
  *(v4 + 56) = 0;
  *(v4 + 64) = 0;
  WTF::Vector<WebKit::LibWebRTCCodecs::Decoder::EncodedFrame,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&buf, a2);
  if (!v9)
  {
    return WTF::Vector<WebKit::LibWebRTCCodecs::Decoder::EncodedFrame,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v69, v10);
  }

  v66 = v8 + 80 * v9;
  v64 = a1;
  v65 = v4;
  while (1)
  {
    WebKit::LibWebRTCCodecs::sendFrameToDecode(&v68, a1, v4, *v8, *(v8 + 8), *(v8 + 20), *(v8 + 24), *(v8 + 26));
    v11 = v68;
    v67[0] = 0;
    v67[1] = 0;
    v67[2] = "setDecoderConnection";
    v67[3] = 0;
    v12 = *(v8 + 32);
    if (v12)
    {
      atomic_fetch_add(v12 + 2, 1u);
    }

    isSettled = WTF::NativePromise<WTF::String,void,0u>::isSettled(v11);
    buf.n128_u8[0] = isSettled;
    v14 = WTF::NativePromiseBase::logChannel(isSettled);
    if (*v14 && v14[16] >= 4u)
    {
      WTF::Logger::log<WTF::Logger::LogSiteIdentifier,char [22],WTF::NativePromise<void,WTF::String,0u>,char [17],WTF::NativePromise<void,WTF::String,0u>,char [12],BOOL,char [2]>(v14, v67, v11, v12, " isSettled:");
    }

    if (v12 && atomic_fetch_add(v12 + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v12 + 2);
      (*(*v12 + 16))(v12);
    }

    v15 = atomic_load(v11 + 121);
    v16 = *(v8 + 32);
    if (v16)
    {
      atomic_fetch_add((v16 + 8), 1u);
      WTF::NativePromise<void,WTF::String,0u>::setDispatchMode(v16, v15, v67);
      if (atomic_fetch_add((v16 + 8), 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, (v16 + 8));
        (*(*v16 + 16))(v16);
      }
    }

    else
    {
      WTF::NativePromise<void,WTF::String,0u>::setDispatchMode(0, v15, v67);
    }

    v17 = *(v8 + 32);
    *(v8 + 32) = 0;
    v74 = *(v8 + 40);
    v75 = *(v8 + 56);
    v18 = *(v8 + 72);
    *(v8 + 72) = 0;
    v72 = 0uLL;
    v19 = WTF::fastMalloc(0x50);
    v20 = WTF::fastMalloc(0x38);
    v21 = 0;
    *v20 = &unk_1F112AA68;
    *(v20 + 8) = v17;
    v22 = v75;
    *(v20 + 16) = v74;
    *(v20 + 32) = v22;
    v73 = 0;
    v76 = 0;
    *(v20 + 48) = v18;
    *(v19 + 8) = 1;
    *(v19 + 16) = 0;
    *(v19 + 24) = 0;
    *(v19 + 32) = 0;
    *(v19 + 40) = "chainTo";
    *(v19 + 48) = 0;
    *(v19 + 56) = 0;
    *v19 = &unk_1F112AA90;
    *(v19 + 64) = 0;
    *(v19 + 72) = v20;
    atomic_fetch_add(v11 + 2, 1u);
    v79 = v72;
    v80 = "chainTo";
    v81 = 0;
    v77 = v11;
    v78 = 0;
    v23 = (v11 + 12);
    v82 = v19;
    v83 = (v11 + 12);
    v84 = 1;
    atomic_compare_exchange_strong_explicit(v11 + 48, &v21, 1u, memory_order_acquire, memory_order_acquire);
    if (v21)
    {
      v23 = MEMORY[0x19EB01E30]();
    }

    *(v11 + 120) = 1;
    v24 = WTF::NativePromiseBase::logChannel(v23);
    if (*v24)
    {
      v26 = v24;
      if (v24[16] >= 4u)
      {
        break;
      }
    }

LABEL_69:
    if (*(v11 + 72))
    {
      WTF::NativePromise<void,WTF::String,0u>::ThenCallbackBase::dispatch(v82, v11, &v83);
    }

    else
    {
      v53 = v11[23];
      if (v53 == v11[22])
      {
        v54 = WTF::Vector<WTF::Ref<WTF::NativePromise<WebCore::VideoPlaybackQualityMetrics,WebCore::PlatformMediaError,0u>::ThenCallbackBase,WTF::RawPtrTraits<WTF::NativePromise<WebCore::VideoPlaybackQualityMetrics,WebCore::PlatformMediaError,0u>::ThenCallbackBase>,WTF::DefaultRefDerefTraits<WTF::NativePromise<WebCore::VideoPlaybackQualityMetrics,WebCore::PlatformMediaError,0u>::ThenCallbackBase>>,1ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>((v11 + 20), v53 + 1, &v82);
        v53 = v11[23];
        v55 = v53 + 1;
        v56 = *(v11 + 10);
        v57 = *v54;
        *v54 = 0;
      }

      else
      {
        v55 = v53 + 1;
        v56 = *(v11 + 10);
        v57 = v82;
        v82 = 0;
      }

      *(v56 + 8 * v53) = v57;
      v11[23] = v55;
    }

    v58 = v84;
    if (v84 == 1)
    {
      v59 = v83;
      atomic_compare_exchange_strong_explicit(v83, &v58, 0, memory_order_release, memory_order_relaxed);
      if (v58 != 1)
      {
        WTF::Lock::unlockSlow(v59);
      }
    }

    v60 = v82;
    v82 = 0;
    if (v60 && atomic_fetch_add(v60 + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v60 + 2);
      (*(*v60 + 8))(v60);
    }

    v61 = v78;
    v78 = 0;
    if (v61 && atomic_fetch_add(v61 + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v61 + 2);
      (*(*v61 + 8))(v61);
    }

    v62 = v77;
    v77 = 0;
    if (v62 && atomic_fetch_add(v62 + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v62 + 2);
      (*(*v62 + 16))(v62);
    }

    WTF::NativePromiseProducer<void,WTF::String,16u>::~NativePromiseProducer(&v73, v25);
    v63 = v68;
    v68 = 0;
    if (v63)
    {
      if (atomic_fetch_add(v63 + 2, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v63 + 2);
        (*(*v63 + 16))(v63);
      }
    }

    v8 += 80;
    if (v8 == v66)
    {
      return WTF::Vector<WebKit::LibWebRTCCodecs::Decoder::EncodedFrame,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v69, v10);
    }
  }

  WTF::Logger::LogSiteIdentifier::toString(&v93, &v79);
  WTF::String::String(&v92, " invoking maybeSettle() [");
  WTF::LogArgument<WTF::NativePromise<WebCore::VideoPlaybackQualityMetrics,WebCore::PlatformMediaError,0u>>::toString(&v91, v11);
  WTF::String::String(&v90, " callback:");
  WTF::LogArgument<void const*>::toString();
  WTF::String::String(&v88, " isNothing:");
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  WTF::String::String(&v86, "]");
  result = WTF::tryMakeString<WTF::String,WTF::String,WTF::String,WTF::String,WTF::String,WTF::String,WTF::String,WTF::String>(&v93, &v92, &v91, &v90, &v89, &v88, &v87, &v86, &v94);
  if (v94)
  {
    v29 = v86;
    v86 = 0;
    if (v29 && atomic_fetch_add_explicit(v29, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v29, v28);
    }

    v30 = v87;
    v87 = 0;
    if (v30 && atomic_fetch_add_explicit(v30, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v30, v28);
    }

    v31 = v88;
    v88 = 0;
    if (v31 && atomic_fetch_add_explicit(v31, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v31, v28);
    }

    v32 = v89;
    v89 = 0;
    if (v32 && atomic_fetch_add_explicit(v32, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v32, v28);
    }

    v33 = v90;
    v90 = 0;
    if (v33 && atomic_fetch_add_explicit(v33, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v33, v28);
    }

    v34 = v91;
    v91 = 0;
    if (v34 && atomic_fetch_add_explicit(v34, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v34, v28);
    }

    v35 = v92;
    v92 = 0;
    if (v35 && atomic_fetch_add_explicit(v35, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v35, v28);
    }

    v36 = v93;
    v93 = 0;
    if (v36 && atomic_fetch_add_explicit(v36, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v36, v28);
    }

    v37 = *(v26 + 4);
    v38 = os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT);
    if (v38)
    {
      WTF::String::utf8();
      v39 = v85[0] ? v85[0] + 16 : 0;
      buf.n128_u32[0] = 136446210;
      *(buf.n128_u64 + 4) = v39;
      _os_log_impl(&dword_19D52D000, v37, OS_LOG_TYPE_DEFAULT, "%{public}s", &buf, 0xCu);
      v38 = v85[0];
      v85[0] = 0;
      if (v38)
      {
        if (*v38 == 1)
        {
          v38 = WTF::fastFree(v38, v25);
        }

        else
        {
          --*v38;
        }
      }
    }

    v40 = MEMORY[0x1E696EBC0];
    if (*v26 && v26[16] >= 4u)
    {
      while (1)
      {
        v41 = *v40;
        if (v41)
        {
          break;
        }

        v42 = *v40;
        atomic_compare_exchange_strong_explicit(v40, &v42, v41 | 1, memory_order_acquire, memory_order_acquire);
        if (v42 == v41)
        {
          v43 = WTF::Logger::observers(v38);
          v44 = *(v43 + 12);
          if (v44)
          {
            v45 = *v43;
            v46 = *v43 + 8 * v44;
            do
            {
              v47 = *v45;
              buf.n128_u32[0] = 0;
              WTF::Logger::LogSiteIdentifier::toString(&buf.n128_i64[1], &v79);
              v96 = 0;
              WTF::String::String(v97, " invoking maybeSettle() [");
              v97[2] = 0;
              WTF::LogArgument<WTF::NativePromise<WebCore::VideoPlaybackQualityMetrics,WebCore::PlatformMediaError,0u>>::toString(&v98, v11);
              v99 = 0;
              WTF::String::String(v100, " callback:");
              v100[2] = 0;
              WTF::LogArgument<void const*>::toString();
              v100[6] = 0;
              WTF::String::String(v101, " isNothing:");
              v101[2] = 0;
              WTF::StringImpl::createWithoutCopyingNonEmpty();
              v101[6] = 0;
              WTF::String::String(v102, "]");
              WTF::Vector<WTF::JSONLogValue,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v85, &buf, 8uLL);
              (*(*v47 + 16))(v47, v26, 4, v85);
              WTF::Vector<std::tuple<Inspector::BackendDispatcher::CommonErrorCode,WTF::String>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v85, v48);
              for (i = 15; i != -1; i -= 2)
              {
                v50 = buf.n128_u64[i];
                buf.n128_u64[i] = 0;
                if (v50 && atomic_fetch_add_explicit(v50, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v50, v25);
                }
              }

              ++v45;
            }

            while (v45 != v46);
          }

          v51 = 1;
          atomic_compare_exchange_strong_explicit(MEMORY[0x1E696EBC0], &v51, 0, memory_order_release, memory_order_relaxed);
          a1 = v64;
          v4 = v65;
          if (v51 != 1)
          {
            WTF::Lock::unlockSlow(MEMORY[0x1E696EBC0]);
          }

          break;
        }
      }
    }

    v52 = v94;
    v94 = 0;
    if (v52 && atomic_fetch_add_explicit(v52, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v52, v25);
    }

    goto LABEL_69;
  }

  __break(0xC471u);
  return result;
}

void WebKit::RemoteVideoFrameObjectHeapProxyProcessor::create(WebKit::RemoteVideoFrameObjectHeapProxyProcessor *this@<X0>, WebKit::RemoteVideoFrameObjectHeapProxyProcessor **a2@<X8>)
{
  v5 = WTF::fastMalloc(0xC0);
  v6 = WebKit::RemoteVideoFrameObjectHeapProxyProcessor::RemoteVideoFrameObjectHeapProxyProcessor(v5, this);
  *a2 = v6;

  WebKit::RemoteVideoFrameObjectHeapProxyProcessor::initialize(v6);
}

void WebKit::RemoteVideoFrameObjectHeapProxyProcessor::initialize(WebKit::RemoteVideoFrameObjectHeapProxyProcessor *this)
{
  v2 = 0;
  v3 = this + 24;
  atomic_compare_exchange_strong_explicit(this + 24, &v2, 1u, memory_order_acquire, memory_order_acquire);
  if (v2)
  {
    MEMORY[0x19EB01E30](this + 24);
  }

  v4 = *(this + 4);
  if (v4)
  {
    while (1)
    {
      v5 = *v4;
      if ((*v4 & 1) == 0)
      {
        break;
      }

      v6 = *v4;
      atomic_compare_exchange_strong_explicit(v4, &v6, v5 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v6 == v5)
      {
        goto LABEL_8;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v4);
  }

LABEL_8:
  v7 = 1;
  atomic_compare_exchange_strong_explicit(v3, &v7, 0, memory_order_release, memory_order_relaxed);
  if (v7 != 1)
  {
    WTF::Lock::unlockSlow(v3);
  }

  IPC::Connection::addWorkQueueMessageReceiver(v4, 0x81, *(this + 7), this, 0);
  if (v4)
  {

    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v4);
  }
}

WebKit::RemoteVideoFrameObjectHeapProxyProcessor *WebKit::RemoteVideoFrameObjectHeapProxyProcessor::RemoteVideoFrameObjectHeapProxyProcessor(WebKit::RemoteVideoFrameObjectHeapProxyProcessor *this, WebKit::GPUProcessConnection *a2)
{
  v4 = (this + 16);
  *this = &unk_1F112A008;
  *(this + 1) = 3;
  *(this + 2) = &unk_1F112A068;
  *(this + 24) = 0;
  v5 = *(a2 + 4);
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
  *(this + 4) = v5;
  *(this + 40) = 0;
  *(this + 6) = 0;
  WTF::WorkQueue::create();
  *(this + 8) = 0;
  *(this + 18) = 0;
  *(this + 76) = 0;
  *(this + 80) = 0;
  *(this + 88) = 0;
  *(this + 17) = 0;
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  *(this + 32) = 0;
  WebKit::SharedVideoFrameWriter::SharedVideoFrameWriter((this + 144), v8);
  *(this + 183) = 0;
  *(this + 22) = 0;
  WTF::ThreadSafeWeakHashSet<WebKit::GPUProcessConnection::Client>::add<WebKit::GPUProcessConnection::Client>(a2 + 184, v4);
  return this;
}

void WebKit::RemoteVideoFrameObjectHeapProxyProcessor::~RemoteVideoFrameObjectHeapProxyProcessor(WebKit::RemoteVideoFrameObjectHeapProxyProcessor *this)
{
  *this = &unk_1F112A008;
  *(this + 2) = &unk_1F112A068;
  WebKit::RemoteVideoFrameObjectHeapProxyProcessor::clearCallbacks(this);
  v2 = *(this + 22);
  *(this + 22) = 0;
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(this + 20);
  *(this + 20) = 0;
  if (v3)
  {
    std::default_delete<WebCore::PixelBufferConformerCV>::operator()[abi:sn200100](this + 160, v3);
  }

  v4 = *(this + 19);
  *(this + 19) = 0;
  if (v4)
  {
    WTF::ThreadSafeRefCounted<WebCore::SharedMemory,(WTF::DestructionThread)0>::deref(v4);
  }

  std::unique_ptr<IPC::Semaphore>::reset[abi:sn200100](this + 18, 0);
  WebKit::SharedVideoFrameReader::~SharedVideoFrameReader((this + 64));
  v6 = *(this + 7);
  *(this + 7) = 0;
  if (v6)
  {
    (*(*v6 + 40))(v6);
  }

  v7 = *(this + 6);
  if (v7)
  {
    WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Function<void ()(WTF::RetainPtr<__CVBuffer *> &&)>>,WTF::KeyValuePairKeyExtractor<WTF::Function<void ()(WTF::RetainPtr<__CVBuffer *> &&)>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,void ()(WTF::RetainPtr<__CVBuffer *> &&),WTF::DefaultHash,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<void ()(WTF::RetainPtr<__CVBuffer *> &&)>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits,WTF::ShouldValidateKey>::deallocateTable(v7, v5);
  }

  v8 = *(this + 4);
  *(this + 4) = 0;
  if (v8)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v8);
  }
}

{
  WebKit::RemoteVideoFrameObjectHeapProxyProcessor::~RemoteVideoFrameObjectHeapProxyProcessor(this);

  WTF::fastFree(v1, v2);
}

uint64_t WebKit::RemoteVideoFrameObjectHeapProxyProcessor::clearCallbacks(atomic_uchar *this)
{
  v2 = 0;
  v3 = this + 40;
  v4 = 1;
  atomic_compare_exchange_strong_explicit(this + 40, &v2, 1u, memory_order_acquire, memory_order_acquire);
  if (v2)
  {
    MEMORY[0x19EB01E30](this + 40);
  }

  v5 = *(this + 6);
  *(this + 6) = 0;
  atomic_compare_exchange_strong_explicit(v3, &v4, 0, memory_order_release, memory_order_relaxed);
  if (v4 != 1)
  {
    WTF::Lock::unlockSlow(v3);
  }

  v6 = *(this + 7);
  v7 = WTF::fastMalloc(0x10);
  *v7 = &unk_1F112AAF0;
  v7[1] = v5;
  v9 = v7;
  (*(*v6 + 48))(v6, &v9);
  result = v9;
  v9 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

void non-virtual thunk toWebKit::RemoteVideoFrameObjectHeapProxyProcessor::~RemoteVideoFrameObjectHeapProxyProcessor(WebKit::RemoteVideoFrameObjectHeapProxyProcessor *this)
{
  WebKit::RemoteVideoFrameObjectHeapProxyProcessor::~RemoteVideoFrameObjectHeapProxyProcessor((this - 16));
}

{
  WebKit::RemoteVideoFrameObjectHeapProxyProcessor::~RemoteVideoFrameObjectHeapProxyProcessor((this - 16));

  WTF::fastFree(v1, v2);
}

uint64_t WebKit::RemoteVideoFrameObjectHeapProxyProcessor::gpuProcessConnectionDidClose(WebKit::RemoteVideoFrameObjectHeapProxyProcessor *this, WebKit::GPUProcessConnection *a2)
{
  *(this + 169) = 1;
  MEMORY[0x19EB16320](*(*(this + 18) + 4));
  v4 = 0;
  atomic_compare_exchange_strong_explicit(this + 24, &v4, 1u, memory_order_acquire, memory_order_acquire);
  if (v4)
  {
    MEMORY[0x19EB01E30](this + 24);
  }

  v5 = *(this + 4);
  *(this + 4) = 0;
  if (v5)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v5);
  }

  v6 = 1;
  atomic_compare_exchange_strong_explicit(this + 24, &v6, 0, memory_order_release, memory_order_relaxed);
  if (v6 != 1)
  {
    WTF::Lock::unlockSlow((this + 24));
  }

  IPC::Connection::removeWorkQueueMessageReceiver(*(a2 + 4), 0x81u, 0);

  return WebKit::RemoteVideoFrameObjectHeapProxyProcessor::clearCallbacks(this);
}

void WebKit::RemoteVideoFrameObjectHeapProxyProcessor::takeCallback(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = 0;
  v7 = (a2 + 40);
  atomic_compare_exchange_strong_explicit((a2 + 40), &v6, 1u, memory_order_acquire, memory_order_acquire);
  if (v6)
  {
    MEMORY[0x19EB01E30](a2 + 40);
  }

  v10 = *(a2 + 48);
  v9 = (a2 + 48);
  v8 = v10;
  if (!v10)
  {
    goto LABEL_13;
  }

  if (a3 == -1 || !a3)
  {
    __break(0xC471u);
    JUMPOUT(0x19E2C2CC4);
  }

  v11 = *(v8 - 8);
  v12 = (~(a3 << 32) + a3) ^ ((~(a3 << 32) + a3) >> 22);
  v13 = 9 * ((v12 + ~(v12 << 13)) ^ ((v12 + ~(v12 << 13)) >> 8));
  v14 = (v13 ^ (v13 >> 15)) + ~((v13 ^ (v13 >> 15)) << 27);
  v15 = v11 & ((v14 >> 31) ^ v14);
  v16 = *(v8 + 16 * v15);
  if (v16 != a3)
  {
    v17 = 1;
    while (v16)
    {
      v15 = (v15 + v17) & v11;
      v16 = *(v8 + 16 * v15);
      ++v17;
      if (v16 == a3)
      {
        goto LABEL_12;
      }
    }

    v15 = *(v8 - 4);
  }

LABEL_12:
  v18 = *(v8 - 4);
  if (v15 != v18)
  {
    v20 = (v8 + 16 * v15);
    *a1 = v20[1];
    *v20 = -1;
    v20[1] = 0;
    v21 = vadd_s32(*(v8 - 16), 0xFFFFFFFF00000001);
    *(v8 - 16) = v21;
    if (v18 >= 9 && 6 * v21.i32[1] < v18)
    {
      WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Function<void ()(WTF::RetainPtr<__CVBuffer *> &&)>>,WTF::KeyValuePairKeyExtractor<WTF::Function<void ()(WTF::RetainPtr<__CVBuffer *> &&)>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,void ()(WTF::RetainPtr<__CVBuffer *> &&),WTF::DefaultHash,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<void ()(WTF::RetainPtr<__CVBuffer *> &&)>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits,WTF::ShouldValidateKey>::rehash(v9, v18 >> 1);
    }
  }

  else
  {
LABEL_13:
    *a1 = 0;
  }

  v19 = 1;
  atomic_compare_exchange_strong_explicit(v7, &v19, 0, memory_order_release, memory_order_relaxed);
  if (v19 != 1)
  {

    WTF::Lock::unlockSlow(v7);
  }
}

void WebKit::RemoteVideoFrameObjectHeapProxyProcessor::newVideoFrameBuffer(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = 0;
  v8 = 0;
  if (*(a3 + 24) == 1)
  {
    WebKit::SharedVideoFrameReader::readBuffer(a1 + 64, a3, &v7);
    v5 = v7;
    v8 = v7;
  }

  WebKit::RemoteVideoFrameObjectHeapProxyProcessor::takeCallback(&v7, a1, a2);
  v6 = v7;
  if (v7)
  {
    (*(*v7 + 16))(v7, &v8);
    (*(*v6 + 8))(v6);
    v5 = v8;
  }

  v8 = 0;
  if (v5)
  {
    CFRelease(v5);
  }
}

atomic_ullong *WebKit::RemoteVideoFrameObjectHeapProxyProcessor::getVideoFrameBuffer(uint64_t a1, void *a2, char a3, uint64_t *a4)
{
  v6 = a2;
  v8 = 0;
  v9 = (a1 + 40);
  atomic_compare_exchange_strong_explicit((a1 + 40), &v8, 1u, memory_order_acquire, memory_order_acquire);
  if (v8)
  {
    MEMORY[0x19EB01E30](a1 + 40);
  }

  v10 = *(v6 + 6);
  if (v10)
  {
    if ((v10[88] & 1) == 0)
    {
      goto LABEL_54;
    }
  }

  else
  {
    v10 = v6;
    if ((*(v6 + 88) & 1) == 0)
    {
      goto LABEL_54;
    }
  }

  v11 = *(v10 + 8);
  if (v11 == -1 || !v11)
  {
LABEL_55:
    __break(0xC471u);
    JUMPOUT(0x19E2C31C0);
  }

  v12 = *(a1 + 48);
  if (!v12)
  {
    WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Function<void ()(WTF::RetainPtr<__CVBuffer *> &&)>>,WTF::KeyValuePairKeyExtractor<WTF::Function<void ()(WTF::RetainPtr<__CVBuffer *> &&)>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,void ()(WTF::RetainPtr<__CVBuffer *> &&),WTF::DefaultHash,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<void ()(WTF::RetainPtr<__CVBuffer *> &&)>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits,WTF::ShouldValidateKey>::expand((a1 + 48));
    v12 = *(a1 + 48);
  }

  v13 = *(v12 - 8);
  v14 = (v11 + ~(v11 << 32)) ^ ((v11 + ~(v11 << 32)) >> 22);
  v15 = 9 * ((v14 + ~(v14 << 13)) ^ ((v14 + ~(v14 << 13)) >> 8));
  v16 = (v15 ^ (v15 >> 15)) + ~((v15 ^ (v15 >> 15)) << 27);
  v17 = v13 & ((v16 >> 31) ^ v16);
  v18 = (v12 + 16 * v17);
  v19 = *v18;
  if (!*v18)
  {
LABEL_19:
    *v18 = v11;
    v22 = *a4;
    *a4 = 0;
    v23 = v18[1];
    v18[1] = v22;
    if (v23)
    {
      (*(*v23 + 8))(v23);
    }

    v24 = *(a1 + 48);
    if (v24)
    {
      v25 = *(v24 - 12) + 1;
    }

    else
    {
      v25 = 1;
    }

    *(v24 - 12) = v25;
    v26 = (*(v24 - 16) + v25);
    v27 = *(v24 - 4);
    if (v27 > 0x400)
    {
      if (v27 > 2 * v26)
      {
        goto LABEL_27;
      }
    }

    else if (3 * v27 > 4 * v26)
    {
      goto LABEL_27;
    }

    WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Function<void ()(WTF::RetainPtr<__CVBuffer *> &&)>>,WTF::KeyValuePairKeyExtractor<WTF::Function<void ()(WTF::RetainPtr<__CVBuffer *> &&)>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,void ()(WTF::RetainPtr<__CVBuffer *> &&),WTF::DefaultHash,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<void ()(WTF::RetainPtr<__CVBuffer *> &&)>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits,WTF::ShouldValidateKey>::expand((a1 + 48));
    goto LABEL_27;
  }

  v20 = 0;
  v21 = 1;
  while (v19 != v11)
  {
    if (v19 == -1)
    {
      v20 = v18;
    }

    v17 = (v17 + v21) & v13;
    v18 = (v12 + 16 * v17);
    v19 = *v18;
    ++v21;
    if (!*v18)
    {
      if (v20)
      {
        *v20 = 0;
        v20[1] = 0;
        --*(*(a1 + 48) - 16);
        v18 = v20;
      }

      goto LABEL_19;
    }
  }

LABEL_27:
  v28 = 1;
  atomic_compare_exchange_strong_explicit(v9, &v28, 0, memory_order_release, memory_order_relaxed);
  if (v28 != 1)
  {
    WTF::Lock::unlockSlow(v9);
  }

  v29 = 0;
  atomic_compare_exchange_strong_explicit((a1 + 24), &v29, 1u, memory_order_acquire, memory_order_acquire);
  if (v29)
  {
    MEMORY[0x19EB01E30](a1 + 24);
  }

  v30 = *(a1 + 32);
  if (v30)
  {
    while (1)
    {
      v31 = *v30;
      if ((*v30 & 1) == 0)
      {
        break;
      }

      v32 = *v30;
      atomic_compare_exchange_strong_explicit(v30, &v32, v31 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v32 == v31)
      {
        goto LABEL_36;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v30);
  }

LABEL_36:
  v33 = 1;
  atomic_compare_exchange_strong_explicit((a1 + 24), &v33, 0, memory_order_release, memory_order_relaxed);
  if (v33 == 1)
  {
    if (v30)
    {
LABEL_38:
      v34 = *(v6 + 6);
      if (v34)
      {
        v6 = *(v6 + 6);
        if ((*(v34 + 88) & 1) == 0)
        {
          goto LABEL_54;
        }

        goto LABEL_42;
      }

      if (*(v6 + 88))
      {
LABEL_42:
        atomic_fetch_add(v6 + 9, 1uLL);
        v35 = *(v6 + 10);
        cf = *(v6 + 8);
        v47 = v35;
        p_cf = &cf;
        v49[0] = a3;
        v36 = IPC::Encoder::operator new(0x238, a2);
        *v36 = 1676;
        *(v36 + 68) = 0;
        *(v36 + 70) = 0;
        *(v36 + 69) = 0;
        *(v36 + 2) = 0;
        *(v36 + 3) = 0;
        *(v36 + 1) = 0;
        IPC::Encoder::encodeHeader(v36);
        v50 = v36;
        v37 = v47;
        IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v36, cf);
        IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v36, v37);
        IPC::Encoder::operator<<<BOOL &>(v36, v49);
        IPC::Connection::sendMessageImpl(v30, &v50, 1, 0);
        v39 = v50;
        v50 = 0;
        if (v39)
        {
          IPC::Encoder::~Encoder(v39, v38);
          bmalloc::api::tzoneFree(v41, v42);
        }

        return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v30);
      }

LABEL_54:
      __break(1u);
      goto LABEL_55;
    }
  }

  else
  {
    WTF::Lock::unlockSlow((a1 + 24));
    if (v30)
    {
      goto LABEL_38;
    }
  }

  v43 = *(v6 + 6);
  if (v43)
  {
    v6 = *(v6 + 6);
    if ((*(v43 + 88) & 1) == 0)
    {
      goto LABEL_54;
    }
  }

  else if ((*(v6 + 88) & 1) == 0)
  {
    goto LABEL_54;
  }

  WebKit::RemoteVideoFrameObjectHeapProxyProcessor::takeCallback(&p_cf, a1, *(v6 + 8));
  cf = 0;
  v44 = p_cf;
  (*(*p_cf + 2))(p_cf, &cf);
  v45 = cf;
  cf = 0;
  if (v45)
  {
    CFRelease(v45);
  }

  return (*(*v44 + 1))(v44);
}

uint64_t WebKit::RemoteVideoFrameObjectHeapProxyProcessor::newConvertedVideoFrameBuffer(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 24) == 1)
  {
    WebKit::SharedVideoFrameReader::readBuffer(a1 + 64, a2, &cf);
    v3 = cf;
    cf = 0;
    v4 = *(a1 + 176);
    *(a1 + 176) = v3;
    if (v4)
    {
      CFRelease(v4);
      v5 = cf;
      cf = 0;
      if (v5)
      {
        CFRelease(v5);
      }
    }
  }

  return WTF::BinarySemaphore::signal((a1 + 184));
}

uint64_t WebKit::RemoteVideoFrameObjectHeapProxyProcessor::getNativeImage@<X0>(IPC::Semaphore **this@<X0>, const WebCore::VideoFrame *a2@<X1>, void *a3@<X8>)
{
  {
    v6 = WebKit::WebProcess::singleton(void)::process;
  }

  else
  {
    v48 = WebKit::WebProcess::operator new(0x370, a2);
    v6 = WebKit::WebProcess::WebProcess(v48);
    WebKit::WebProcess::singleton(void)::process = v6;
  }

  v8 = WebKit::WebProcess::ensureGPUProcessConnection(v6)[4];
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
      goto LABEL_8;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v8);
LABEL_8:
  v56 = v8;
  if (*(this + 169) == 1)
  {
    WebKit::SharedVideoFrameWriter::SharedVideoFrameWriter(&v49, v7);
    v11 = v49;
    v49 = 0;
    std::unique_ptr<IPC::Semaphore>::reset[abi:sn200100](this + 18, v11);
    v12 = v50;
    v50 = 0;
    v13 = this[19];
    this[19] = v12;
    if (v13)
    {
      WTF::ThreadSafeRefCounted<WebCore::SharedMemory,(WTF::DestructionThread)0>::deref(v13);
    }

    v14 = this[20];
    v15 = v51;
    v51 = 0;
    this[20] = v15;
    if (v14)
    {
      std::default_delete<WebCore::PixelBufferConformerCV>::operator()[abi:sn200100](this + 160, v14);
      v16 = v51;
      *(this + 84) = v52;
      *(this + 170) = v53;
      v51 = 0;
      if (v16)
      {
        std::default_delete<WebCore::PixelBufferConformerCV>::operator()[abi:sn200100](&v51, v16);
      }
    }

    else
    {
      *(this + 84) = v52;
      *(this + 170) = v53;
      v51 = 0;
    }

    v17 = v50;
    v50 = 0;
    if (v17)
    {
      WTF::ThreadSafeRefCounted<WebCore::SharedMemory,(WTF::DestructionThread)0>::deref(v17);
    }

    v18 = v49;
    v49 = 0;
    if (v18)
    {
      IPC::Semaphore::destroy(v18);
      WTF::MachSendRight::~MachSendRight(v18);
      bmalloc::api::tzoneFree(v19, v20);
    }
  }

  v21 = WTF::fastMalloc(0x10);
  *v21 = &unk_1F112AB18;
  v21[1] = &v56;
  v61 = v21;
  v22 = WTF::fastMalloc(0x10);
  *v22 = &unk_1F112AB40;
  v22[1] = &v56;
  cf = v22;
  WebKit::SharedVideoFrameWriter::write((this + 18), a2, &v61, &cf, &v49);
  (*(*v22 + 8))(v22);
  v23 = (*(*v21 + 8))(v21);
  if (v55 == 1)
  {
    v24 = v56;
    WTF::ApproximateTime::now(v23);
    v26 = v25 + 3.0;
    IPC::Connection::createSyncMessageEncoder(0x101F, 0, &v61);
    IPC::ArgumentCoder<WebKit::SharedVideoFrame,void>::encode(v61, &v49);
    v27 = IPC::Connection::sendSyncMessage(v24, v62, &v61, 0, &cf, v26);
    if (v60)
    {
      if (v60 != 1)
      {
        mpark::throw_bad_variant_access(v27);
      }

      v29 = cf;
      v30 = 1;
      goto LABEL_33;
    }

    v29 = cf;
    cf = 0;
    if (*(v29 + 50) == 3194)
    {
      v31 = 11;
    }

    else
    {
      LOBYTE(v57) = 0;
      v58 = 0;
      IPC::Decoder::operator>><std::tuple<WebCore::DestinationColorSpace>>(v29, &v57);
      if (v58 == 1)
      {
        v30 = 0;
        v21 = v57;
LABEL_30:
        if (!v60)
        {
          v34 = cf;
          cf = 0;
          if (v34)
          {
            IPC::Decoder::~Decoder(v34);
            bmalloc::api::tzoneFree(v44, v45);
          }
        }

LABEL_33:
        v35 = v61;
        v61 = 0;
        if (v35)
        {
          IPC::Encoder::~Encoder(v35, v28);
          v35 = bmalloc::api::tzoneFree(v36, v37);
          if (v30)
          {
            goto LABEL_35;
          }
        }

        else if (v30)
        {
LABEL_35:
          *(this + 169) = 1;
          MEMORY[0x19EB16320](*(this[18] + 1));
          *a3 = 0;
LABEL_49:
          if ((v55 & 1) != 0 && v54 == 2)
          {
            WTF::MachSendRight::~MachSendRight(&v52);
          }

          goto LABEL_52;
        }

        v38 = WebCore::DestinationColorSpace::SRGB(v35);
        v39 = *v38;
        if (*v38)
        {
          CFRetain(*v38);
          CFRelease(v39);
        }

        v61 = 0x7FF0000000000000;
        LODWORD(v62) = 0;
        WTF::BinarySemaphore::waitUntil();
        v40 = this[22];
        this[22] = 0;
        v61 = v40;
        if (v40)
        {
          WebCore::PixelBufferConformerCV::imageFrom32BGRAPixelBuffer();
          if (WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
          {
            result = 141;
            __break(0xC471u);
            return result;
          }

          WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
          WebCore::NativeImage::create();
          v41 = cf;
          cf = 0;
          if (v41)
          {
            CFRelease(v41);
          }

          v42 = v61;
          v61 = 0;
          if (v42)
          {
            CFRelease(v42);
          }

          if (!v21)
          {
            goto LABEL_47;
          }
        }

        else
        {
          *a3 = 0;
          if (!v21)
          {
LABEL_47:
            if (v29)
            {
              IPC::Decoder::~Decoder(v29);
              bmalloc::api::tzoneFree(v46, v47);
            }

            goto LABEL_49;
          }
        }

        CFRelease(v21);
        goto LABEL_47;
      }

      v31 = 14;
    }

    IPC::Decoder::~Decoder(v29);
    bmalloc::api::tzoneFree(v32, v33);
    v30 = 1;
    v29 = v31;
    goto LABEL_30;
  }

  *a3 = 0;
LABEL_52:
  result = v56;
  v56 = 0;
  if (result)
  {
    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(result);
  }

  return result;
}

uint64_t WebKit::RemoteImageDecoderAVFManager::ref(uint64_t this)
{
  while (1)
  {
    v1 = *(this + 24);
    if ((v1 & 1) == 0)
    {
      break;
    }

    v2 = *(this + 24);
    atomic_compare_exchange_strong_explicit((this + 24), &v2, v1 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v2 == v1)
    {
      return this;
    }
  }

  return WTF::ThreadSafeWeakPtrControlBlock::strongRef(*(this + 24));
}

uint64_t WebKit::RemoteImageDecoderAVFManager::weakRefCount(WebKit::RemoteImageDecoderAVFManager *this)
{
  if (*(this + 3))
  {
    return 0;
  }

  v1 = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::RemoteImageDecoderAVFManager,(WTF::DestructionThread)0>::controlBlock(this + 3);

  return WTF::ThreadSafeWeakPtrControlBlock::weakRefCount(v1);
}

uint64_t non-virtual thunk toWebKit::RemoteImageDecoderAVFManager::ref(uint64_t this)
{
  while (1)
  {
    v1 = *(this + 16);
    if ((v1 & 1) == 0)
    {
      break;
    }

    v2 = *(this + 16);
    atomic_compare_exchange_strong_explicit((this + 16), &v2, v1 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v2 == v1)
    {
      return this;
    }
  }

  return WTF::ThreadSafeWeakPtrControlBlock::strongRef(*(this + 16));
}

void WebKit::LibWebRTCCodecs::ref(WebKit::LibWebRTCCodecs *this)
{
  while (1)
  {
    v1 = *(this + 1);
    if ((v1 & 1) == 0)
    {
      break;
    }

    v2 = *(this + 1);
    atomic_compare_exchange_strong_explicit(this + 1, &v2, v1 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v2 == v1)
    {
      return;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*(this + 1));
}

uint64_t non-virtual thunk toWebKit::LibWebRTCCodecs::ref(uint64_t this)
{
  while (1)
  {
    v1 = *(this - 8);
    if ((v1 & 1) == 0)
    {
      break;
    }

    v2 = *(this - 8);
    atomic_compare_exchange_strong_explicit((this - 8), &v2, v1 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v2 == v1)
    {
      return this;
    }
  }

  return WTF::ThreadSafeWeakPtrControlBlock::strongRef(*(this - 8));
}

uint64_t WebKit::RemoteVideoFrameObjectHeapProxyProcessor::ref(uint64_t this)
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

uint64_t non-virtual thunk toWebKit::RemoteVideoFrameObjectHeapProxyProcessor::ref(uint64_t this)
{
  while (1)
  {
    v1 = *(this - 8);
    if ((v1 & 1) == 0)
    {
      break;
    }

    v2 = *(this - 8);
    atomic_compare_exchange_strong_explicit((this - 8), &v2, v1 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v2 == v1)
    {
      return this;
    }
  }

  return WTF::ThreadSafeWeakPtrControlBlock::strongRef(*(this - 8));
}

uint64_t WebKit::WebMediaStrategy::createNowPlayingManager(void)const::NowPlayingInfoForGPUManager::~NowPlayingInfoForGPUManager(WebCore::NowPlayingManager *a1)
{
  WebCore::NowPlayingManager::~NowPlayingManager(a1);

  return bmalloc::api::tzoneFree(v1, v2);
}

atomic_uchar **WebKit::WebMediaStrategy::createNowPlayingManager(void)const::NowPlayingInfoForGPUManager::clearNowPlayingInfoPrivate(uint64_t a1, void *a2)
{
  {
    result = WebKit::WebProcess::singleton(void)::process;
  }

  else
  {
    v13 = WebKit::WebProcess::operator new(0x370, a2);
    result = WebKit::WebProcess::WebProcess(v13);
    WebKit::WebProcess::singleton(void)::process = result;
  }

  v3 = result[45];
  if (v3)
  {
    v4 = (v3 + 24);
    while (1)
    {
      v5 = *v4;
      if ((*v4 & 1) == 0)
      {
        break;
      }

      v6 = *v4;
      atomic_compare_exchange_strong_explicit(v4, &v6, v5 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v6 == v5)
      {
        goto LABEL_9;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v4);
LABEL_9:
    v7 = *(v3 + 4);
    v8 = IPC::Encoder::operator new(0x238, a2);
    *v8 = 36;
    *(v8 + 68) = 0;
    *(v8 + 70) = 0;
    *(v8 + 69) = 0;
    *(v8 + 2) = 0;
    *(v8 + 3) = 0;
    *(v8 + 1) = 0;
    IPC::Encoder::encodeHeader(v8);
    v14 = v8;
    IPC::Connection::sendMessageImpl(v7, &v14, 0, 0);
    v10 = v14;
    v14 = 0;
    if (v10)
    {
      IPC::Encoder::~Encoder(v10, v9);
      bmalloc::api::tzoneFree(v11, v12);
    }

    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUProcessConnection,(WTF::DestructionThread)0>::deref(v4, v9);
  }

  return result;
}

atomic_ullong *WebKit::WebMediaStrategy::createNowPlayingManager(void)const::NowPlayingInfoForGPUManager::setNowPlayingInfoPrivate(uint64_t a1, void *a2)
{
  {
    v3 = WebKit::WebProcess::singleton(void)::process;
  }

  else
  {
    v14 = WebKit::WebProcess::operator new(0x370, a2);
    v3 = WebKit::WebProcess::WebProcess(v14);
    WebKit::WebProcess::singleton(void)::process = v3;
  }

  v5 = WebKit::WebProcess::ensureGPUProcessConnection(v3)[4];
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
      goto LABEL_8;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v5);
LABEL_8:
  v8 = IPC::Encoder::operator new(0x238, v4);
  *v8 = 54;
  *(v8 + 68) = 0;
  *(v8 + 70) = 0;
  *(v8 + 69) = 0;
  *(v8 + 2) = 0;
  *(v8 + 3) = 0;
  *(v8 + 1) = 0;
  IPC::Encoder::encodeHeader(v8);
  v15 = v8;
  IPC::ArgumentCoder<WebCore::NowPlayingInfo,void>::encode(v8, a2);
  IPC::Connection::sendMessageImpl(v5, &v15, 0, 0);
  v10 = v15;
  v15 = 0;
  if (v10)
  {
    IPC::Encoder::~Encoder(v10, v9);
    bmalloc::api::tzoneFree(v12, v13);
  }

  return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v5);
}

WebCore::WebAudioBufferList ***std::unique_ptr<WebKit::RemoteAudioSourceProviderManager::RemoteAudio>::reset[abi:sn200100](WebCore::WebAudioBufferList ***result, WebCore::WebAudioBufferList **a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    std::unique_ptr<WebCore::WebAudioBufferList>::reset[abi:sn200100](v2 + 13, 0);
    std::unique_ptr<WebKit::ConsumerSharedCARingBuffer>::reset[abi:sn200100](v2 + 12, 0);
    if (*(v2 + 88) == 1)
    {
      WebCore::CAAudioStreamDescription::~CAAudioStreamDescription((v2 + 1));
    }

    v4 = *v2;
    *v2 = 0;
    if (v4)
    {
      WTF::ThreadSafeRefCounted<WebCore::WebAudioSourceProvider,(WTF::DestructionThread)1>::deref(v4 + 2);
    }

    return bmalloc::api::tzoneFree(v2, v3);
  }

  return result;
}

WTF::StringImpl **std::unique_ptr<WebKit::LibWebRTCCodecs::Decoder>::reset[abi:sn200100](WTF::StringImpl **result, WTF::StringImpl *a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    WTF::Vector<WebKit::LibWebRTCCodecs::Decoder::EncodedFrame,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v2 + 56, a2);
    v4 = *(v2 + 6);
    *(v2 + 6) = 0;
    if (v4)
    {
      WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v4);
    }

    v5 = *(v2 + 4);
    *(v2 + 4) = 0;
    if (v5)
    {
      (*(*v5 + 8))(v5);
    }

    v6 = *(v2 + 2);
    *(v2 + 2) = 0;
    if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v6, v3);
    }

    return bmalloc::api::tzoneFree(v2, v3);
  }

  return result;
}

WTF::Lock *_ZN3WTF6Detail15CallableWrapperIZNS_13NativePromiseIvN3IPC5ErrorELj0EE11whenSettledIZN6WebKit15LibWebRTCCodecs12flushDecoderERNS8_7DecoderEE3__0EEDaRNS_34GuaranteedSerialFunctionDispatcherEOT_RKNS_6Logger17LogSiteIdentifierEEUlONSt12experimental15fundamentals_v38expectedIvS4_EEE_NS_3RefINS2_IvvLj0EEENS_12RawPtrTraitsISS_EENS_21DefaultRefDerefTraitsISS_EEEEJSP_EE4callESP_@<X0>(unsigned __int8 **a1@<X8>)
{
  v2[0] = 0;
  v2[1] = 0;
  v2[2] = "operator()";
  v2[3] = 0;
  return WTF::NativePromise<void,void,0u>::createAndResolve<std::enable_if<true,void>>(v2, a1);
}

uint64_t WTF::NativePromise<void,IPC::Error,0u>::ThenCallback<true,WTF::NativePromise<void,void,0u>>::~ThenCallback(uint64_t a1)
{
  *a1 = &unk_1F112A168;
  v2 = *(a1 + 72);
  *(a1 + 72) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  std::unique_ptr<WTF::NativePromiseProducer<void,void,0u>>::reset[abi:sn200100]((a1 + 64), 0);
  *a1 = &unk_1F1129C40;
  v3 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WTF::SerialFunctionDispatcher,(WTF::DestructionThread)0>::deref((v3 + 8));
  }

  return a1;
}

{
  *a1 = &unk_1F112A168;
  v2 = *(a1 + 72);
  *(a1 + 72) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  std::unique_ptr<WTF::NativePromiseProducer<void,void,0u>>::reset[abi:sn200100]((a1 + 64), 0);
  *a1 = &unk_1F1129C40;
  v4 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v4)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WTF::SerialFunctionDispatcher,(WTF::DestructionThread)0>::deref((v4 + 8));
  }

  return WTF::fastFree(a1, v3);
}

uint64_t WTF::NativePromise<void,IPC::Error,0u>::ThenCallback<true,WTF::NativePromise<void,void,0u>>::disconnect(uint64_t a1)
{
  *(a1 + 56) = 1;
  result = *(a1 + 72);
  *(a1 + 72) = 0;
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t WTF::NativePromise<void,IPC::Error,0u>::ThenCallback<true,WTF::NativePromise<void,void,0u>>::processResult(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 1);
  v16[0] = a1;
  v6 = WTF::NativePromiseBase::logChannel(a1);
  if (*v6)
  {
    v7 = v6[16] >= 4u;
  }

  else
  {
    v7 = 0;
  }

  if (v7)
  {
    if (v5)
    {
      v8 = "Rejecting";
    }

    else
    {
      v8 = "Resolving";
    }

    WTF::Logger::log<char [10],char [24],WTF::Logger::LogSiteIdentifier,char [2],WTF::NativePromise<void,WebCore::PlatformMediaError,0u>,char [11],void const*,char [2]>(v6, 4u, v8, " then() call made from ", (a1 + 24), "[", a2, " callback:", v16, "]");
  }

  v9 = 0;
  v10 = 1;
  atomic_compare_exchange_strong_explicit((a1 + 57), &v9, 1u, memory_order_acquire, memory_order_acquire);
  if (v9)
  {
    MEMORY[0x19EB01E30](a1 + 57);
  }

  v11 = *(a1 + 64);
  *(a1 + 64) = 0;
  std::unique_ptr<WTF::NativePromiseProducer<void,void,0u>>::reset[abi:sn200100]((a1 + 64), 0);
  atomic_compare_exchange_strong_explicit((a1 + 57), &v10, 0, memory_order_release, memory_order_relaxed);
  if (v10 != 1)
  {
    WTF::Lock::unlockSlow((a1 + 57));
  }

  (*(**(a1 + 72) + 16))(&v17);
  if (v11)
  {
    v16[0] = 0;
    v16[1] = 0;
    v16[2] = "<chained completion promise>";
    v16[3] = 0;
    WTF::NativePromise<void,void,0u>::chainTo(v17, v11, v16);
  }

  v12 = v17;
  v17 = 0;
  if (v12 && atomic_fetch_add(v12 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v12 + 2);
    (*(*v12 + 16))(v12);
  }

  result = *(a1 + 72);
  *(a1 + 72) = 0;
  if (result)
  {
    result = (*(*result + 8))(result);
  }

  if (v11)
  {
    v14 = WTF::NativePromiseProducer<void,void,0u>::~NativePromiseProducer(v11);
    return WTF::fastFree(v14, v15);
  }

  return result;
}

WTF::StringImpl *_ZN3WTF6Detail15CallableWrapperIZNS_13NativePromiseIbN3IPC5ErrorELj0EE11whenSettledIZN6WebKit15LibWebRTCCodecs17sendFrameToDecodeERNS8_7DecoderExNSt3__14spanIKhLm18446744073709551615EEEttE3__0EEDaRNS_34GuaranteedSerialFunctionDispatcherEOT_RKNS_6Logger17LogSiteIdentifierEEUlONSt12experimental15fundamentals_v38expectedIbS4_EEE_NS_3RefINS2_IvNS_6StringELj0EEENS_12RawPtrTraitsISX_EENS_21DefaultRefDerefTraitsISX_EEEEJST_EE4callEST_@<X0>(_BYTE *a1@<X1>, uint64_t *a2@<X8>)
{
  if (a1[1])
  {
    v2 = "Decoding task did not complete";
    v3 = 31;
  }

  else
  {
    if (*a1)
    {
      v5 = 0;
      v6 = 0;
      v7 = "operator()";
      v8 = 0;
      return WTF::NativePromise<void,WTF::String,0u>::createAndResolve<std::enable_if<true,void>>(a2, &v5);
    }

    v2 = "Decoding task failed";
    v3 = 21;
  }

  *&v9 = v2;
  *(&v9 + 1) = v3;
  v5 = 0;
  v6 = 0;
  v7 = "operator()";
  v8 = 0;
  return WTF::NativePromise<void,WTF::String,0u>::createAndReject<WTF::ASCIILiteral,std::enable_if<true,void>>(&v9, &v5, a2);
}

WTF::Lock *WTF::NativePromise<void,WTF::String,0u>::createAndResolve<std::enable_if<true,void>>(uint64_t *a1, WTF::Logger::LogSiteIdentifier *a2)
{
  v4 = WTF::fastMalloc(0x80);
  v5 = WTF::NativePromise<void,WTF::String,0u>::NativePromise(v4, a2);
  *a1 = v5;

  return WTF::NativePromise<void,WTF::String,0u>::resolve<std::enable_if<true,void>>(v5, a2);
}

WTF::Lock *WTF::NativePromise<void,WTF::String,0u>::resolve<std::enable_if<true,void>>(uint64_t a1, WTF::Logger::LogSiteIdentifier *a2)
{
  v4 = 0;
  v5 = (a1 + 48);
  v13 = v5;
  v14 = 1;
  atomic_compare_exchange_strong_explicit(v5, &v4, 1u, memory_order_acquire, memory_order_acquire);
  if (v4)
  {
    v5 = MEMORY[0x19EB01E30]();
  }

  v6 = WTF::NativePromiseBase::logChannel(v5);
  if (*v6)
  {
    v8 = v6[16] >= 4u;
  }

  else
  {
    v8 = 0;
  }

  if (v8)
  {
    WTF::Logger::log<WTF::Logger::LogSiteIdentifier,char [27],WTF::NativePromise<WebCore::DOMCacheEngine::CacheIdentifierOperationResult,WebCore::DOMCacheEngine::Error,0u>>(v6, a2, " resolving ", a1);
  }

  if (*(a1 + 72) > 1u)
  {
    if (*(a1 + 72) == 2)
    {
      v10 = *(a1 + 56);
      *(a1 + 56) = 0;
      if (v10)
      {
        (*(*v10 + 8))(v10);
      }
    }
  }

  else if (*(a1 + 72))
  {
    if (*(a1 + 64) == 1)
    {
      v9 = *(a1 + 56);
      *(a1 + 56) = 0;
      if (v9)
      {
        if (atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v9, v7);
        }
      }
    }
  }

  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  v11 = 1;
  *(a1 + 72) = 1;
  result = WTF::NativePromise<void,WTF::String,0u>::dispatchAll(a1, &v13);
  if (v14 == 1)
  {
    result = v13;
    atomic_compare_exchange_strong_explicit(v13, &v11, 0, memory_order_release, memory_order_relaxed);
    if (v11 != 1)
    {

      return WTF::Lock::unlockSlow(result);
    }
  }

  return result;
}

uint64_t WTF::NativePromise<void,WTF::String,0u>::NativePromise(uint64_t a1, _OWORD *a2)
{
  *(a1 + 8) = 1;
  *a1 = &unk_1F112A1C0;
  v3 = a2[1];
  *(a1 + 16) = *a2;
  *(a1 + 32) = v3;
  *(a1 + 48) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = a1 + 96;
  *(a1 + 88) = 1;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  v4 = WTF::NativePromiseBase::logChannel(a1);
  if (*v4 && v4[16] >= 4u)
  {
    WTF::Logger::log<char [10],WTF::NativePromise<void,WTF::String,0u>>(v4, 4, "creating ", a1);
  }

  return a1;
}

atomic_uint **WTF::NativePromise<void,WTF::String,0u>::assertIsDead(atomic_uint **result)
{
  v1 = result;
  v2 = 0;
  v3 = (result + 6);
  atomic_compare_exchange_strong_explicit(result + 48, &v2, 1u, memory_order_acquire, memory_order_acquire);
  if (v2)
  {
    result = MEMORY[0x19EB01E30](result + 6);
  }

  v4 = *(v1 + 29);
  if (v4)
  {
    v5 = v1[13];
    v6 = 40 * v4;
    do
    {
      result = WTF::NativePromiseProducer<void,WTF::String,0u>::assertIsDead(v5);
      v5 += 5;
      v6 -= 40;
    }

    while (v6);
  }

  v7 = 1;
  atomic_compare_exchange_strong_explicit(v3, &v7, 0, memory_order_release, memory_order_relaxed);
  if (v7 != 1)
  {

    return WTF::Lock::unlockSlow(v3);
  }

  return result;
}

uint64_t WTF::NativePromise<void,WTF::String,0u>::~NativePromise(uint64_t a1)
{
  v1 = WTF::NativePromise<void,WTF::String,0u>::~NativePromise(a1);

  return WTF::fastFree(v1, v2);
}

{
  v37[2] = *MEMORY[0x1E69E9840];
  v2 = WTF::NativePromiseBase::logChannel(a1);
  if (*v2)
  {
    v3 = v2[16] >= 4u;
  }

  else
  {
    v3 = 0;
  }

  if (v3)
  {
    v4 = v2;
    WTF::String::String(&v33, "destroying ");
    WTF::LogArgument<WTF::NativePromise<WebCore::VideoPlaybackQualityMetrics,WebCore::PlatformMediaError,0u>>::toString(&v32, a1);
    *buf = v33;
    v31[0] = v32;
    result = WTF::tryMakeStringFromAdapters<WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>>(buf, v31, &v34);
    if (!v34)
    {
      __break(0xC471u);
      return result;
    }

    v7 = v32;
    v32 = 0;
    if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v7, v6);
    }

    v8 = v33;
    v33 = 0;
    if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v8, v6);
    }

    v9 = *(v4 + 4);
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
    if (v10)
    {
      WTF::String::utf8();
      v12 = v31[0] ? v31[0] + 16 : 0;
      *buf = 136446210;
      *&buf[4] = v12;
      _os_log_impl(&dword_19D52D000, v9, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
      v10 = v31[0];
      v31[0] = 0;
      if (v10)
      {
        if (*v10 == 1)
        {
          v10 = WTF::fastFree(v10, v11);
        }

        else
        {
          --*v10;
        }
      }
    }

    if (*v4 && v4[16] >= 4u)
    {
      v13 = MEMORY[0x1E696EBC0];
      while (1)
      {
        v14 = *v13;
        if (v14)
        {
          break;
        }

        v15 = *v13;
        atomic_compare_exchange_strong_explicit(v13, &v15, v14 | 1, memory_order_acquire, memory_order_acquire);
        if (v15 == v14)
        {
          v16 = WTF::Logger::observers(v10);
          v17 = *(v16 + 12);
          if (v17)
          {
            v18 = *v16;
            v19 = *v16 + 8 * v17;
            do
            {
              v20 = *v18;
              *buf = 0;
              WTF::String::String(&buf[8], "destroying ");
              v36 = 0;
              WTF::LogArgument<WTF::NativePromise<WebCore::VideoPlaybackQualityMetrics,WebCore::PlatformMediaError,0u>>::toString(v37, a1);
              WTF::Vector<WTF::JSONLogValue,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v31, buf, 2uLL);
              (*(*v20 + 16))(v20, v4, 4, v31);
              WTF::Vector<std::tuple<Inspector::BackendDispatcher::CommonErrorCode,WTF::String>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v31, v21);
              for (i = 24; i != -8; i -= 16)
              {
                v23 = *&buf[i];
                *&buf[i] = 0;
                if (v23 && atomic_fetch_add_explicit(v23, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v23, v11);
                }
              }

              ++v18;
            }

            while (v18 != v19);
          }

          v24 = 1;
          atomic_compare_exchange_strong_explicit(v13, &v24, 0, memory_order_release, memory_order_relaxed);
          if (v24 != 1)
          {
            WTF::Lock::unlockSlow(MEMORY[0x1E696EBC0]);
          }

          break;
        }
      }
    }

    v25 = v34;
    v34 = 0;
    if (v25 && atomic_fetch_add_explicit(v25, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v25, v11);
    }
  }

  WTF::NativePromise<void,WTF::String,0u>::assertIsDead(a1);
  WTF::Vector<WTF::NativePromiseProducer<void,WTF::String,0u>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(a1 + 104, v26);
  WTF::Vector<WTF::Ref<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase,WTF::RawPtrTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>,WTF::DefaultRefDerefTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>>,1ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(a1 + 80, v27);
  if (*(a1 + 72) > 1u)
  {
    if (*(a1 + 72) == 2)
    {
      v30 = *(a1 + 56);
      *(a1 + 56) = 0;
      if (v30)
      {
        (*(*v30 + 8))(v30);
      }
    }
  }

  else if (*(a1 + 72))
  {
    if (*(a1 + 64) == 1)
    {
      v29 = *(a1 + 56);
      *(a1 + 56) = 0;
      if (v29)
      {
        if (atomic_fetch_add_explicit(v29, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v29, v28);
        }
      }
    }
  }

  *(a1 + 72) = -1;
  return a1;
}

WTF::StringImpl *WTF::Logger::log<char [10],WTF::NativePromise<void,WTF::String,0u>>(uint64_t a1, uint64_t a2, char *a3, uint64_t a4)
{
  v34[2] = *MEMORY[0x1E69E9840];
  WTF::String::String(&v30, a3);
  WTF::LogArgument<WTF::NativePromise<WebCore::VideoPlaybackQualityMetrics,WebCore::PlatformMediaError,0u>>::toString(&v29, a4);
  *buf = v30;
  v28[0] = v29;
  result = WTF::tryMakeStringFromAdapters<WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>>(buf, v28, &v31);
  if (v31)
  {
    v10 = v29;
    v29 = 0;
    if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v10, v9);
    }

    v11 = v30;
    v30 = 0;
    if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v11, v9);
    }

    v12 = *(a1 + 32);
    v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
    if (v13)
    {
      WTF::String::utf8();
      v15 = v28[0] ? v28[0] + 16 : 0;
      *buf = 136446210;
      *&buf[4] = v15;
      _os_log_impl(&dword_19D52D000, v12, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
      v13 = v28[0];
      v28[0] = 0;
      if (v13)
      {
        if (*v13 == 1)
        {
          v13 = WTF::fastFree(v13, v14);
        }

        else
        {
          --*v13;
        }
      }
    }

    if (*a1 && *(a1 + 16) >= a2)
    {
      v16 = MEMORY[0x1E696EBC0];
      while (1)
      {
        v17 = *v16;
        if (v17)
        {
          break;
        }

        v18 = *v16;
        atomic_compare_exchange_strong_explicit(v16, &v18, v17 | 1, memory_order_acquire, memory_order_acquire);
        if (v18 == v17)
        {
          v19 = WTF::Logger::observers(v13);
          v20 = *(v19 + 12);
          if (v20)
          {
            v21 = *v19;
            v22 = *v19 + 8 * v20;
            do
            {
              v23 = *v21;
              *buf = 0;
              WTF::String::String(&buf[8], a3);
              v33 = 0;
              WTF::LogArgument<WTF::NativePromise<WebCore::VideoPlaybackQualityMetrics,WebCore::PlatformMediaError,0u>>::toString(v34, a4);
              WTF::Vector<WTF::JSONLogValue,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v28, buf, 2uLL);
              (*(*v23 + 16))(v23, a1, a2, v28);
              WTF::Vector<std::tuple<Inspector::BackendDispatcher::CommonErrorCode,WTF::String>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v28, v24);
              for (i = 24; i != -8; i -= 16)
              {
                v26 = *&buf[i];
                *&buf[i] = 0;
                if (v26 && atomic_fetch_add_explicit(v26, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v26, v14);
                }
              }

              ++v21;
            }

            while (v21 != v22);
          }

          v27 = 1;
          atomic_compare_exchange_strong_explicit(v16, &v27, 0, memory_order_release, memory_order_relaxed);
          if (v27 != 1)
          {
            WTF::Lock::unlockSlow(MEMORY[0x1E696EBC0]);
          }

          break;
        }
      }
    }

    result = v31;
    v31 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(result, v14);
      }
    }
  }

  else
  {
    __break(0xC471u);
  }

  return result;
}

atomic_uint **WTF::NativePromiseProducer<void,WTF::String,0u>::assertIsDead(atomic_uint **result)
{
  v1 = *result;
  if (*result)
  {
    atomic_fetch_add(v1 + 2, 1u);
    result = WTF::NativePromise<void,WTF::String,0u>::assertIsDead(v1);
    if (atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v1 + 2);
      v2 = *(*v1 + 16);

      return v2(v1);
    }
  }

  return result;
}

uint64_t WTF::Vector<WTF::NativePromiseProducer<void,WTF::String,0u>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, void *a2)
{
  v3 = *(a1 + 12);
  if (v3)
  {
    v4 = *a1;
    v5 = 40 * v3;
    do
    {
      v4 = WTF::NativePromiseProducer<void,WTF::String,0u>::~NativePromiseProducer(v4) + 5;
      v5 -= 40;
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

atomic_uint **WTF::NativePromiseProducer<void,WTF::String,0u>::~NativePromiseProducer(atomic_uint **a1)
{
  WTF::NativePromiseProducer<void,WTF::String,0u>::assertIsDead(a1);
  v2 = *a1;
  *a1 = 0;
  if (v2 && atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v2 + 2);
    (*(*v2 + 16))(v2);
  }

  return a1;
}

uint64_t WTF::NativePromise<void,WTF::String,0u>::dispatchAll(uint64_t a1, atomic_uchar *volatile *a2)
{
  v18 = &v20;
  v19 = 1;
  __dst = &v23;
  v22 = 1;
  WTF::VectorBuffer<WTF::Ref<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase,WTF::RawPtrTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>,WTF::DefaultRefDerefTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>>,1ul,WTF::FastMalloc>::adopt(&__dst, (a1 + 80));
  v4 = *(a1 + 92);
  if (v4)
  {
    WTF::VectorDestructor<true,WTF::Ref<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase,WTF::RawPtrTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>,WTF::DefaultRefDerefTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>>>::destruct(*(a1 + 80), (*(a1 + 80) + 8 * v4));
  }

  WTF::VectorBuffer<WTF::Ref<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase,WTF::RawPtrTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>,WTF::DefaultRefDerefTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>>,1ul,WTF::FastMalloc>::adopt((a1 + 80), &v18);
  WTF::Vector<WTF::Ref<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase,WTF::RawPtrTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>,WTF::DefaultRefDerefTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>>,1ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v18, v5);
  *&v6 = 0;
  v7 = *(a1 + 104);
  v18 = v7;
  v8 = *(a1 + 116);
  LODWORD(v19) = *(a1 + 112);
  HIDWORD(v19) = v8;
  v17 = v6;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  WTF::Vector<WTF::NativePromiseProducer<void,WTF::String,0u>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v17, v9);
  if (HIDWORD(v22))
  {
    v11 = __dst;
    v12 = 8 * HIDWORD(v22);
    do
    {
      v13 = *v11++;
      WTF::NativePromise<void,WTF::String,0u>::ThenCallbackBase::dispatch(v13, a1, a2);
      v12 -= 8;
    }

    while (v12);
  }

  if (v8)
  {
    v14 = 40 * v8;
    do
    {
      WTF::NativePromise<void,WTF::String,0u>::settleChainedPromise(a1, v7);
      v7 += 40;
      v14 -= 40;
    }

    while (v14);
  }

  WTF::Vector<WTF::NativePromiseProducer<void,WTF::String,0u>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v18, v10);
  return WTF::Vector<WTF::Ref<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase,WTF::RawPtrTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>,WTF::DefaultRefDerefTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>>,1ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&__dst, v15);
}

unsigned __int8 *WTF::NativePromise<void,WTF::String,0u>::ThenCallbackBase::dispatch(WTF::NativePromiseBase *a1, uint64_t a2, atomic_uchar *volatile *a3)
{
  v5 = a1;
  if (!*(a1 + 2) || (v6 = atomic_load((a2 + 121)), v6 == 1) && (a1 = (*(**(a1 + 2) + 24))(*(a1 + 2)), a1))
  {
    if (*(v5 + 56) == 1)
    {
      v20 = v5;
      result = WTF::NativePromiseBase::logChannel(a1);
      if (*result)
      {
        v10 = result[16] >= 4u;
      }

      else
      {
        v10 = 0;
      }

      if (v10)
      {
        return WTF::Logger::log<char [32],WTF::NativePromise<WebCore::VideoPlaybackQualityMetrics,WebCore::PlatformMediaError,0u>,char [21],void const*,char [11],WTF::Logger::LogSiteIdentifier,char [2]>(result, a2, &v20, (v5 + 6));
      }
    }

    else
    {
      v11 = *a3;
      v12 = 1;
      atomic_compare_exchange_strong_explicit(*a3, &v12, 0, memory_order_release, memory_order_relaxed);
      if (v12 != 1)
      {
        WTF::Lock::unlockSlow(v11);
      }

      if (WTF::NativePromise<WTF::String,void,0u>::hasRunnable(a2))
      {
        WTF::NativePromise<WTF::String,WebCore::DOMCacheEngine::Error,0u>::takeResultRunnable(&v19, a2);
        v13 = v19;
        (*(*v19 + 16))(&v20, v19);
        (*(*v5 + 24))(v5, a2, &v20);
        if (v21 == 1)
        {
          v15 = v20;
          v20 = 0;
          if (v15)
          {
            if (atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v15, v14);
            }
          }
        }

        (*(*v13 + 8))(v13);
      }

      else
      {
        WTF::NativePromise<void,WTF::String,0u>::takeResult(&v20, a2);
        (*(*v5 + 24))(v5, a2, &v20);
        if (v21 == 1)
        {
          v17 = v20;
          v20 = 0;
          if (v17)
          {
            if (atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v17, v16);
            }
          }
        }
      }

      v18 = 0;
      result = *a3;
      atomic_compare_exchange_strong_explicit(*a3, &v18, 1u, memory_order_acquire, memory_order_acquire);
      if (v18)
      {
        return MEMORY[0x19EB01E30]();
      }
    }
  }

  else
  {
    v7 = *(v5 + 2);
    atomic_fetch_add(v5 + 2, 1u);
    atomic_fetch_add((a2 + 8), 1u);
    v8 = WTF::fastMalloc(0x18);
    *v8 = &unk_1F112A1E8;
    *(v8 + 1) = v5;
    *(v8 + 2) = a2;
    v20 = v8;
    (*(*v7 + 16))(v7, &v20);
    result = v20;
    v20 = 0;
    if (result)
    {
      return (*(*result + 8))(result);
    }
  }

  return result;
}

atomic_uint **WTF::NativePromise<void,WTF::String,0u>::settleChainedPromise(uint64_t a1, uint64_t a2)
{
  v2 = *a2;
  *a2 = 0;
  v9 = v2;
  v3 = *(a2 + 24);
  v10 = *(a2 + 8);
  v11 = v3;
  if (v2)
  {
    atomic_fetch_add(v2 + 2, 1u);
    v5 = 0;
    v6 = 0;
    v7 = "<chained promise>";
    v8 = 0;
    WTF::NativePromise<void,WTF::String,0u>::settleAsChainedPromise<WTF::NativePromise<void,WTF::String,0u>::Storage>(v2, (a1 + 56), &v5);
    if (atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v2 + 2);
      (*(*v2 + 16))(v2);
    }
  }

  else
  {
    v5 = 0;
    v6 = 0;
    v7 = "<chained promise>";
    v8 = 0;
    WTF::NativePromise<void,WTF::String,0u>::settleAsChainedPromise<WTF::NativePromise<void,WTF::String,0u>::Storage>(0, (a1 + 56), &v5);
  }

  return WTF::NativePromiseProducer<void,WTF::String,0u>::~NativePromiseProducer(&v9);
}

mpark *WTF::NativePromise<void,WTF::String,0u>::takeResult(mpark *result, uint64_t a2)
{
  v3 = result;
  v4 = 0;
  v5 = (a2 + 48);
  atomic_compare_exchange_strong_explicit((a2 + 48), &v4, 1u, memory_order_acquire, memory_order_acquire);
  if (v4)
  {
    result = MEMORY[0x19EB01E30](a2 + 48);
  }

  if (*(a2 + 72) != 1)
  {
    mpark::throw_bad_variant_access(result);
  }

  *v3 = 0;
  *(v3 + 8) = 0;
  if (*(a2 + 64) == 1)
  {
    v6 = *(a2 + 56);
    *(a2 + 56) = 0;
    *v3 = v6;
    *(v3 + 8) = 1;
  }

  v7 = 1;
  atomic_compare_exchange_strong_explicit(v5, &v7, 0, memory_order_release, memory_order_relaxed);
  if (v7 != 1)
  {

    return WTF::Lock::unlockSlow(v5);
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WTF::NativePromise<void,WTF::String,0u>::ThenCallbackBase::dispatch(WTF::NativePromise<void,WTF::String,0u>&,WTF::Locker<WTF::Lock,void> &)::{lambda(void)#1},void>::~CallableWrapper(void *a1)
{
  *a1 = &unk_1F112A1E8;
  v2 = a1[2];
  a1[2] = 0;
  if (v2 && atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v2 + 2);
    (*(*v2 + 16))(v2);
  }

  v3 = a1[1];
  a1[1] = 0;
  if (v3 && atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3 + 2);
    (*(*v3 + 8))(v3);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::NativePromise<void,WTF::String,0u>::ThenCallbackBase::dispatch(WTF::NativePromise<void,WTF::String,0u>&,WTF::Locker<WTF::Lock,void> &)::{lambda(void)#1},void>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F112A1E8;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3 && atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3 + 2);
    (*(*v3 + 16))(v3);
  }

  v4 = *(this + 1);
  *(this + 1) = 0;
  if (v4 && atomic_fetch_add(v4 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v4 + 2);
    (*(*v4 + 8))(v4);
  }

  return WTF::fastFree(this, a2);
}

unsigned __int8 *WTF::Detail::CallableWrapper<WTF::NativePromise<void,WTF::String,0u>::ThenCallbackBase::dispatch(WTF::NativePromise<void,WTF::String,0u>&,WTF::Locker<WTF::Lock,void> &)::{lambda(void)#1},void>::call(uint64_t a1)
{
  v2 = *(a1 + 8);
  v1 = *(a1 + 16);
  if (*(v2 + 56) == 1)
  {
    v14 = *(a1 + 8);
    result = WTF::NativePromiseBase::logChannel(a1);
    if (*result)
    {
      v4 = result[16] >= 4u;
    }

    else
    {
      v4 = 0;
    }

    if (v4)
    {
      return WTF::Logger::log<char [32],WTF::NativePromise<WebCore::VideoPlaybackQualityMetrics,WebCore::PlatformMediaError,0u>,char [21],void const*,char [11],WTF::Logger::LogSiteIdentifier,char [2]>(result, v1, &v14, (v2 + 24));
    }
  }

  else
  {
    hasRunnable = WTF::NativePromise<WTF::String,void,0u>::hasRunnable(*(a1 + 16));
    v7 = *(a1 + 8);
    v8 = *(a1 + 16);
    if (hasRunnable)
    {
      WTF::NativePromise<WTF::String,WebCore::DOMCacheEngine::Error,0u>::takeResultRunnable(&v13, v8);
      v9 = v13;
      (*(*v13 + 16))(&v14, v13);
      (*(*v7 + 24))(v7, v8, &v14);
      if (v15 == 1)
      {
        v11 = v14;
        v14 = 0;
        if (v11)
        {
          if (atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v11, v10);
          }
        }
      }

      return (*(*v9 + 8))(v9);
    }

    else
    {
      WTF::NativePromise<void,WTF::String,0u>::takeResult(&v14, v8);
      result = (*(*v7 + 24))(v7, v8, &v14);
      if (v15 == 1)
      {
        result = v14;
        v14 = 0;
        if (result)
        {
          if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            return WTF::StringImpl::destroy(result, v12);
          }
        }
      }
    }
  }

  return result;
}

WTF::Lock *WTF::NativePromise<void,WTF::String,0u>::settleAsChainedPromise<WTF::NativePromise<void,WTF::String,0u>::Storage>(_BYTE *a1, uint64_t *a2, WTF::Logger::LogSiteIdentifier *a3)
{
  v6 = 0;
  v7 = (a1 + 48);
  v29 = v7;
  v30 = 1;
  atomic_compare_exchange_strong_explicit(v7, &v6, 1u, memory_order_acquire, memory_order_acquire);
  if (v6)
  {
    v7 = MEMORY[0x19EB01E30]();
  }

  v8 = WTF::NativePromiseBase::logChannel(v7);
  if (*v8)
  {
    v10 = v8[16] >= 4u;
  }

  else
  {
    v10 = 0;
  }

  if (v10)
  {
    WTF::Logger::log<WTF::Logger::LogSiteIdentifier,char [27],WTF::NativePromise<WebCore::DOMCacheEngine::CacheIdentifierOperationResult,WebCore::DOMCacheEngine::Error,0u>>(v8, a3, " settling chained promise ", a1);
  }

  v11 = a1[72];
  v12 = *(a2 + 16);
  if (v11 == 255 && v12 == 255)
  {
    goto LABEL_29;
  }

  if (v12 == 255)
  {
    if (a1[72] > 1u)
    {
      if (v11 == 2)
      {
        v16 = *(a1 + 7);
        *(a1 + 7) = 0;
        if (v16)
        {
          (*(*v16 + 8))(v16);
        }
      }
    }

    else if (a1[72])
    {
      if (a1[64] == 1)
      {
        v13 = *(a1 + 7);
        *(a1 + 7) = 0;
        if (v13)
        {
          if (atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v13, v9);
          }
        }
      }
    }

    v17 = -1;
    goto LABEL_28;
  }

  if (v12 == 2)
  {
    if (a1[72] > 1u)
    {
      if (v11 != 255)
      {
        v26 = *a2;
        *a2 = 0;
        v27 = *(a1 + 7);
        *(a1 + 7) = v26;
        if (v27)
        {
          (*(*v27 + 8))(v27);
        }

        goto LABEL_29;
      }
    }

    else if (a1[72])
    {
      if (a1[64] == 1)
      {
        v20 = *(a1 + 7);
        *(a1 + 7) = 0;
        if (v20)
        {
          if (atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v20, v9);
          }
        }
      }
    }

    v24 = *a2;
    *a2 = 0;
    *(a1 + 7) = v24;
    v17 = 2;
LABEL_28:
    a1[72] = v17;
    goto LABEL_29;
  }

  if (v12 != 1)
  {
    if (a1[72] > 1u)
    {
      if (v11 == 2)
      {
        v25 = *(a1 + 7);
        *(a1 + 7) = 0;
        if (v25)
        {
          (*(*v25 + 8))(v25);
        }
      }
    }

    else
    {
      if (!a1[72])
      {
        goto LABEL_29;
      }

      if (a1[64] == 1)
      {
        v21 = *(a1 + 7);
        *(a1 + 7) = 0;
        if (v21)
        {
          if (atomic_fetch_add_explicit(v21, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v21, v9);
          }
        }
      }
    }

    a1[72] = 0;
    goto LABEL_29;
  }

  if (a1[72] > 1u)
  {
    if (v11 == 2)
    {
      v22 = *(a1 + 7);
      *(a1 + 7) = 0;
      if (v22)
      {
        (*(*v22 + 8))(v22);
      }
    }

    goto LABEL_47;
  }

  if (!a1[72])
  {
LABEL_47:
    a1[56] = 0;
    a1[64] = 0;
    if (*(a2 + 8) == 1)
    {
      v23 = *a2;
      *a2 = 0;
      *(a1 + 7) = v23;
      a1[64] = 1;
    }

    v17 = 1;
    goto LABEL_28;
  }

  if (*(a2 + 8) == 1)
  {
    v15 = *a2;
    *a2 = 0;
    v14 = 1;
  }

  else
  {
    v14 = 0;
    v15 = 0;
  }

  if (v14 == a1[64])
  {
    if (!v14)
    {
      goto LABEL_29;
    }

    v28 = *(a1 + 7);
    *(a1 + 7) = v15;
  }

  else
  {
    if (v14)
    {
      *(a1 + 7) = v15;
      a1[64] = 1;
      goto LABEL_29;
    }

    v28 = *(a1 + 7);
    *(a1 + 7) = 0;
    std::__optional_destruct_base<WTF::String,false>::reset[abi:sn200100]((a1 + 56), v9);
  }

  if (v28 && atomic_fetch_add_explicit(v28, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v28, v9);
  }

LABEL_29:
  result = WTF::NativePromise<void,WTF::String,0u>::dispatchAll(a1, &v29);
  v19 = v30;
  if (v30 == 1)
  {
    result = v29;
    atomic_compare_exchange_strong_explicit(v29, &v19, 0, memory_order_release, memory_order_relaxed);
    if (v19 != 1)
    {

      return WTF::Lock::unlockSlow(result);
    }
  }

  return result;
}

uint64_t WTF::NativePromise<BOOL,IPC::Error,0u>::ThenCallback<true,WTF::NativePromise<void,WTF::String,0u>>::~ThenCallback(uint64_t a1)
{
  *a1 = &unk_1F112A210;
  v2 = *(a1 + 72);
  *(a1 + 72) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  std::unique_ptr<WTF::NativePromiseProducer<void,WTF::String,0u>>::reset[abi:sn200100]((a1 + 64), 0);
  *a1 = &unk_1F112A240;
  v3 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WTF::SerialFunctionDispatcher,(WTF::DestructionThread)0>::deref((v3 + 8));
  }

  return a1;
}

{
  *a1 = &unk_1F112A210;
  v2 = *(a1 + 72);
  *(a1 + 72) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  std::unique_ptr<WTF::NativePromiseProducer<void,WTF::String,0u>>::reset[abi:sn200100]((a1 + 64), 0);
  *a1 = &unk_1F112A240;
  v4 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v4)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WTF::SerialFunctionDispatcher,(WTF::DestructionThread)0>::deref((v4 + 8));
  }

  return WTF::fastFree(a1, v3);
}

uint64_t WTF::NativePromise<BOOL,IPC::Error,0u>::ThenCallback<true,WTF::NativePromise<void,WTF::String,0u>>::disconnect(uint64_t a1)
{
  *(a1 + 56) = 1;
  result = *(a1 + 72);
  *(a1 + 72) = 0;
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t WTF::NativePromise<BOOL,IPC::Error,0u>::ThenCallback<true,WTF::NativePromise<void,WTF::String,0u>>::processResult(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v81[1] = *MEMORY[0x1E69E9840];
  v5 = *(a3 + 1);
  v6 = WTF::NativePromiseBase::logChannel(a1);
  if (*v6)
  {
    v7 = v6[16] >= 4u;
  }

  else
  {
    v7 = 0;
  }

  if (v7)
  {
    v8 = v6;
    if (v5)
    {
      v9 = "Rejecting";
    }

    else
    {
      v9 = "Resolving";
    }

    v60 = v9;
    WTF::String::String(&v69, v9);
    WTF::String::String(&v68, " then() call made from ");
    WTF::Logger::LogSiteIdentifier::toString(&v67, (a1 + 24));
    WTF::String::String(&v66, "[");
    WTF::LogArgument<WTF::NativePromise<WebCore::VideoPlaybackQualityMetrics,WebCore::PlatformMediaError,0u>>::toString(&v65, a2);
    WTF::String::String(&v64, " callback:");
    WTF::LogArgument<void const*>::toString();
    WTF::String::String(&v62, "]");
    result = WTF::tryMakeString<WTF::String,WTF::String,WTF::String,WTF::String,WTF::String,WTF::String,WTF::String,WTF::String>(&v69, &v68, &v67, &v66, &v65, &v64, &v63, &v62, &v70);
    if (!v70)
    {
      __break(0xC471u);
      return result;
    }

    v12 = v62;
    v62 = 0;
    if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v12, v11);
    }

    v13 = v63;
    v63 = 0;
    if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v13, v11);
    }

    v14 = v64;
    v64 = 0;
    if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v14, v11);
    }

    v15 = v65;
    v65 = 0;
    if (v15 && atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v15, v11);
    }

    v16 = v66;
    v66 = 0;
    if (v16 && atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v16, v11);
    }

    v17 = v67;
    v67 = 0;
    if (v17 && atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v17, v11);
    }

    v18 = v68;
    v68 = 0;
    if (v18 && atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v18, v11);
    }

    v19 = v69;
    v69 = 0;
    if (v19 && atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v19, v11);
    }

    v20 = *(v8 + 4);
    v21 = os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);
    if (v21)
    {
      WTF::String::utf8();
      v23 = v61[0] ? v61[0] + 16 : 0;
      *buf = 136446210;
      *&buf[4] = v23;
      _os_log_impl(&dword_19D52D000, v20, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
      v21 = v61[0];
      v61[0] = 0;
      if (v21)
      {
        if (*v21 == 1)
        {
          v21 = WTF::fastFree(v21, v22);
        }

        else
        {
          --*v21;
        }
      }
    }

    if (*v8 && v8[16] >= 4u)
    {
      v24 = MEMORY[0x1E696EBC0];
      while (1)
      {
        v25 = *v24;
        if (v25)
        {
          break;
        }

        v26 = *v24;
        atomic_compare_exchange_strong_explicit(v24, &v26, v25 | 1, memory_order_acquire, memory_order_acquire);
        if (v26 == v25)
        {
          v27 = WTF::Logger::observers(v21);
          v28 = *(v27 + 12);
          if (v28)
          {
            v29 = *v27;
            v30 = *v27 + 8 * v28;
            do
            {
              v31 = *v29;
              *buf = 0;
              WTF::String::String(&buf[8], v60);
              LODWORD(v72) = 0;
              WTF::String::String(&v73, " then() call made from ");
              v74 = 0;
              WTF::Logger::LogSiteIdentifier::toString(&v75, (a1 + 24));
              v76 = 0;
              WTF::String::String(v77, "[");
              v77[2] = 0;
              WTF::LogArgument<WTF::NativePromise<WebCore::VideoPlaybackQualityMetrics,WebCore::PlatformMediaError,0u>>::toString(&v78, a2);
              v79 = 0;
              WTF::String::String(v80, " callback:");
              v80[2] = 0;
              WTF::LogArgument<void const*>::toString();
              v80[6] = 0;
              WTF::String::String(v81, "]");
              WTF::Vector<WTF::JSONLogValue,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v61, buf, 8uLL);
              (*(*v31 + 16))(v31, v8, 4, v61);
              WTF::Vector<std::tuple<Inspector::BackendDispatcher::CommonErrorCode,WTF::String>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v61, v32);
              for (i = 120; i != -8; i -= 16)
              {
                v34 = *&buf[i];
                *&buf[i] = 0;
                if (v34 && atomic_fetch_add_explicit(v34, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v34, v22);
                }
              }

              ++v29;
            }

            while (v29 != v30);
          }

          v35 = 1;
          atomic_compare_exchange_strong_explicit(v24, &v35, 0, memory_order_release, memory_order_relaxed);
          if (v35 != 1)
          {
            WTF::Lock::unlockSlow(MEMORY[0x1E696EBC0]);
          }

          break;
        }
      }
    }

    v36 = v70;
    v70 = 0;
    if (v36 && atomic_fetch_add_explicit(v36, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v36, v22);
    }
  }

  v37 = 0;
  v38 = 1;
  atomic_compare_exchange_strong_explicit((a1 + 57), &v37, 1u, memory_order_acquire, memory_order_acquire);
  if (v37)
  {
    MEMORY[0x19EB01E30](a1 + 57);
  }

  v39 = *(a1 + 64);
  *(a1 + 64) = 0;
  std::unique_ptr<WTF::NativePromiseProducer<void,WTF::String,0u>>::reset[abi:sn200100]((a1 + 64), 0);
  atomic_compare_exchange_strong_explicit((a1 + 57), &v38, 0, memory_order_release, memory_order_relaxed);
  if (v38 != 1)
  {
    WTF::Lock::unlockSlow((a1 + 57));
  }

  v40 = (*(**(a1 + 72) + 16))(v61);
  if (v39)
  {
    v41 = 0;
    v42 = v61[0];
    *buf = 0uLL;
    v72 = "<chained completion promise>";
    v73 = 0;
    v43 = v61[0] + 48;
    atomic_compare_exchange_strong_explicit(v61[0] + 48, &v41, 1u, memory_order_acquire, memory_order_acquire);
    if (v41)
    {
      v40 = MEMORY[0x19EB01E30](v43);
    }

    *(v42 + 120) = 1;
    v44 = *v39;
    if (*v39)
    {
      atomic_fetch_add(v44 + 2, 1u);
    }

    LOBYTE(v70) = *(v42 + 72) == 0;
    v45 = WTF::NativePromiseBase::logChannel(v40);
    if (*v45 && v45[16] >= 4u)
    {
      WTF::Logger::log<WTF::Logger::LogSiteIdentifier,char [22],WTF::NativePromise<void,WTF::String,0u>,char [17],WTF::NativePromise<void,WTF::String,0u>,char [12],BOOL,char [2]>(v45, buf, v42, v44, " isNothing:");
    }

    if (v44 && atomic_fetch_add(v44 + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v44 + 2);
      (*(*v44 + 16))(v44);
    }

    v46 = atomic_load(v42 + 121);
    v47 = *v39;
    if (*v39)
    {
      atomic_fetch_add(v47 + 2, 1u);
      WTF::NativePromise<void,WTF::String,0u>::setDispatchMode(v47, v46, buf);
      if (atomic_fetch_add(v47 + 2, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v47 + 2);
        (*(*v47 + 16))(v47);
      }
    }

    else
    {
      WTF::NativePromise<void,WTF::String,0u>::setDispatchMode(0, v46, buf);
    }

    if (*(v42 + 72))
    {
      WTF::NativePromise<void,WTF::String,0u>::settleChainedPromise(v42, v39);
    }

    else
    {
      v48 = *(v42 + 29);
      if (v48 == *(v42 + 28))
      {
        v49 = WTF::Vector<WTF::NativePromiseProducer<void,WTF::String,0u>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(v42 + 104, v48 + 1, v39);
        v50 = *(v42 + 13) + 40 * *(v42 + 29);
        v51 = *v49;
        *v49 = 0;
        *v50 = v51;
        v52 = *(v49 + 24);
        *(v50 + 8) = *(v49 + 8);
        *(v50 + 24) = v52;
      }

      else
      {
        v53 = *(v42 + 13) + 40 * v48;
        v54 = *v39;
        *v39 = 0;
        *v53 = v54;
        v55 = *(v39 + 8);
        *(v53 + 24) = *(v39 + 24);
        *(v53 + 8) = v55;
      }

      ++*(v42 + 29);
    }

    v56 = 1;
    atomic_compare_exchange_strong_explicit(v43, &v56, 0, memory_order_release, memory_order_relaxed);
    if (v56 != 1)
    {
      WTF::Lock::unlockSlow(v43);
    }
  }

  v57 = v61[0];
  v61[0] = 0;
  if (v57 && atomic_fetch_add(v57 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v57 + 2);
    (*(*v57 + 16))(v57);
  }

  result = *(a1 + 72);
  *(a1 + 72) = 0;
  if (result)
  {
    result = (*(*result + 8))(result);
  }

  if (v39)
  {
    v58 = WTF::NativePromiseProducer<void,WTF::String,0u>::~NativePromiseProducer(v39);
    return WTF::fastFree(v58, v59);
  }

  return result;
}

atomic_uint **std::unique_ptr<WTF::NativePromiseProducer<void,WTF::String,0u>>::reset[abi:sn200100](atomic_uint ***a1, atomic_uint **a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    v4 = WTF::NativePromiseProducer<void,WTF::String,0u>::~NativePromiseProducer(result);

    return WTF::fastFree(v4, v5);
  }

  return result;
}

WTF::StringImpl *WTF::Logger::log<WTF::Logger::LogSiteIdentifier,char [22],WTF::NativePromise<void,WTF::String,0u>,char [17],WTF::NativePromise<void,WTF::String,0u>,char [12],BOOL,char [2]>(uint64_t a1, WTF::Logger::LogSiteIdentifier *this, uint64_t a3, uint64_t a4, const char *a5)
{
  v58[1] = *MEMORY[0x1E69E9840];
  WTF::Logger::LogSiteIdentifier::toString(&v46, this);
  WTF::String::String(&v45, " invoking chainTo() [");
  WTF::LogArgument<WTF::NativePromise<WebCore::VideoPlaybackQualityMetrics,WebCore::PlatformMediaError,0u>>::toString(&v44, a3);
  WTF::String::String(&v43, " chainedPromise:");
  v36 = a4;
  WTF::LogArgument<WTF::NativePromise<WebCore::VideoPlaybackQualityMetrics,WebCore::PlatformMediaError,0u>>::toString(&v42, a4);
  v37 = a5;
  WTF::String::String(&v41, a5);
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  WTF::String::String(&v39, "]");
  result = WTF::tryMakeString<WTF::String,WTF::String,WTF::String,WTF::String,WTF::String,WTF::String,WTF::String,WTF::String>(&v46, &v45, &v44, &v43, &v42, &v41, &v40, &v39, &v47);
  if (v47)
  {
    v11 = v39;
    v39 = 0;
    if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v11, v10);
    }

    v12 = v40;
    v40 = 0;
    if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v12, v10);
    }

    v13 = v41;
    v41 = 0;
    if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v13, v10);
    }

    v14 = v42;
    v42 = 0;
    if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v14, v10);
    }

    v15 = v43;
    v43 = 0;
    if (v15 && atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v15, v10);
    }

    v16 = v44;
    v44 = 0;
    if (v16 && atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v16, v10);
    }

    v17 = v45;
    v45 = 0;
    if (v17 && atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v17, v10);
    }

    v18 = v46;
    v46 = 0;
    if (v18 && atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v18, v10);
    }

    v19 = *(a1 + 32);
    v20 = os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);
    if (v20)
    {
      WTF::String::utf8();
      v22 = v38[0] ? v38[0] + 16 : 0;
      *buf = 136446210;
      v49 = v22;
      _os_log_impl(&dword_19D52D000, v19, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
      v20 = v38[0];
      v38[0] = 0;
      if (v20)
      {
        if (*v20 == 1)
        {
          v20 = WTF::fastFree(v20, v21);
        }

        else
        {
          --*v20;
        }
      }
    }

    if (*a1 && *(a1 + 16) >= 4u)
    {
      v23 = MEMORY[0x1E696EBC0];
      while (1)
      {
        v24 = *v23;
        if (v24)
        {
          break;
        }

        v25 = *v23;
        atomic_compare_exchange_strong_explicit(v23, &v25, v24 | 1, memory_order_acquire, memory_order_acquire);
        if (v25 == v24)
        {
          v26 = WTF::Logger::observers(v20);
          v27 = *(v26 + 12);
          if (v27)
          {
            v28 = *v26;
            v29 = *v26 + 8 * v27;
            do
            {
              v30 = *v28;
              *buf = 0;
              WTF::Logger::LogSiteIdentifier::toString((&v49 + 4), this);
              v50 = 0;
              WTF::String::String(v51, " invoking chainTo() [");
              v51[2] = 0;
              WTF::LogArgument<WTF::NativePromise<WebCore::VideoPlaybackQualityMetrics,WebCore::PlatformMediaError,0u>>::toString(&v52, a3);
              v53 = 0;
              WTF::String::String(v54, " chainedPromise:");
              v54[2] = 0;
              WTF::LogArgument<WTF::NativePromise<WebCore::VideoPlaybackQualityMetrics,WebCore::PlatformMediaError,0u>>::toString(&v55, v36);
              v56 = 0;
              WTF::String::String(v57, v37);
              v57[2] = 0;
              WTF::StringImpl::createWithoutCopyingNonEmpty();
              v57[6] = 0;
              WTF::String::String(v58, "]");
              WTF::Vector<WTF::JSONLogValue,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v38, buf, 8uLL);
              (*(*v30 + 16))(v30, a1, 4, v38);
              WTF::Vector<std::tuple<Inspector::BackendDispatcher::CommonErrorCode,WTF::String>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v38, v31);
              for (i = 120; i != -8; i -= 16)
              {
                v33 = *&buf[i];
                *&buf[i] = 0;
                if (v33 && atomic_fetch_add_explicit(v33, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v33, v21);
                }
              }

              ++v28;
            }

            while (v28 != v29);
          }

          v34 = 1;
          atomic_compare_exchange_strong_explicit(v23, &v34, 0, memory_order_release, memory_order_relaxed);
          if (v34 != 1)
          {
            WTF::Lock::unlockSlow(MEMORY[0x1E696EBC0]);
          }

          break;
        }
      }
    }

    result = v47;
    v47 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(result, v21);
      }
    }
  }

  else
  {
    __break(0xC471u);
  }

  return result;
}

WTF::StringImpl *WTF::NativePromise<void,WTF::String,0u>::setDispatchMode(atomic_uchar *a1, unsigned __int8 a2, WTF::Logger::LogSiteIdentifier *a3)
{
  v5 = a1;
  v6 = 0;
  v7 = (a1 + 48);
  atomic_compare_exchange_strong_explicit(a1 + 48, &v6, 1u, memory_order_acquire, memory_order_acquire);
  if (v6)
  {
    a1 = MEMORY[0x19EB01E30](a1 + 48);
  }

  result = WTF::NativePromiseBase::logChannel(a1);
  if (*result)
  {
    v9 = *(result + 16) >= 4u;
  }

  else
  {
    v9 = 0;
  }

  if (v9)
  {
    result = WTF::Logger::log<WTF::Logger::LogSiteIdentifier,char [27],WTF::NativePromise<WebCore::DOMCacheEngine::CacheIdentifierOperationResult,WebCore::DOMCacheEngine::Error,0u>>(result, a3, " runSynchronouslyOnTarget ", v5);
  }

  atomic_store(a2, (v5 + 121));
  v10 = 1;
  atomic_compare_exchange_strong_explicit((v5 + 48), &v10, 0, memory_order_release, memory_order_relaxed);
  if (v10 != 1)
  {

    return WTF::Lock::unlockSlow(v7);
  }

  return result;
}

unint64_t WTF::Vector<WTF::NativePromiseProducer<void,WTF::String,0u>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v3 = a3;
  v5 = *a1;
  if (*a1 > a3 || &v5[10 * *(a1 + 12)] <= a3)
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

    WTF::Vector<WTF::NativePromiseProducer<void,WTF::String,0u>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v12);
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

    WTF::Vector<WTF::NativePromiseProducer<void,WTF::String,0u>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v9);
    return *a1 + v6;
  }

  return v3;
}

atomic_uint **WTF::Vector<WTF::NativePromiseProducer<void,WTF::String,0u>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(atomic_uint **result, unint64_t a2)
{
  if (*(result + 2) < a2)
  {
    if (a2 >= 0x6666667)
    {
      __break(0xC471u);
    }

    else
    {
      v2 = result;
      v3 = *result;
      v4 = *(result + 3);
      v5 = 40 * a2;
      result = WTF::fastMalloc((40 * a2));
      *(v2 + 2) = v5 / 0x28;
      *v2 = result;
      if (v4)
      {
        v7 = result;
        result = v3;
        do
        {
          v8 = *result;
          *result = 0;
          *v7 = v8;
          v9 = *(result + 1);
          *(v7 + 3) = *(result + 3);
          *(v7 + 1) = v9;
          v7 += 5;
          result = WTF::NativePromiseProducer<void,WTF::String,0u>::~NativePromiseProducer(result) + 5;
        }

        while (result != &v3[10 * v4]);
      }

      if (v3)
      {
        if (*v2 == v3)
        {
          *v2 = 0;
          *(v2 + 2) = 0;
        }

        return WTF::fastFree(v3, v6);
      }
    }
  }

  return result;
}

unsigned int *WebKit::LibWebRTCCodecs::completedDecoding(WTF::ObjectIdentifierGeneric<WebKit::VideoDecoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,long long,long long,WebKit::RemoteVideoFrameProxyProperties &&)::$_1::__invoke<void>(unsigned int *result)
{
  if (atomic_fetch_add(result + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, result + 2);
    return (*(*result + 8))();
  }

  return result;
}

WebKit::LibWebRTCCodecs::Encoder *std::unique_ptr<WebKit::LibWebRTCCodecs::Encoder>::reset[abi:sn200100](WebKit::LibWebRTCCodecs::Encoder **a1, WebKit::LibWebRTCCodecs::Encoder *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    WebKit::LibWebRTCCodecs::Encoder::~Encoder(result);

    return bmalloc::api::tzoneFree(v4, v5);
  }

  return result;
}

void WebKit::LibWebRTCCodecs::Encoder::~Encoder(WebKit::LibWebRTCCodecs::Encoder *this)
{
  v4 = *(this + 15);
  v2 = (this + 120);
  v3 = v4;
  v5 = (v2 - 2);
  *v2 = 0;
  if (v4)
  {
    std::default_delete<WebCore::PixelBufferConformerCV>::operator()[abi:sn200100](v2, v3);
  }

  v6 = *(this + 14);
  *(this + 14) = 0;
  if (v6)
  {
    WTF::ThreadSafeRefCounted<WebCore::SharedMemory,(WTF::DestructionThread)0>::deref(v6);
  }

  std::unique_ptr<IPC::Semaphore>::reset[abi:sn200100](v5, 0);
  v8 = *(this + 12);
  *(this + 12) = 0;
  if (v8)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v8);
  }

  v9 = *(this + 10);
  *(this + 10) = 0;
  if (v9)
  {
    (*(*v9 + 8))(v9);
  }

  v10 = *(this + 9);
  *(this + 9) = 0;
  if (v10)
  {
    (*(*v10 + 8))(v10);
  }

  WTF::Vector<std::pair<WTF::String,WTF::String>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 24, v7);
  v12 = *(this + 2);
  *(this + 2) = 0;
  if (v12)
  {
    if (atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v12, v11);
    }
  }
}

WTF::Lock *_ZN3WTF6Detail15CallableWrapperIZNS_13NativePromiseIvN3IPC5ErrorELj0EE11whenSettledIZN6WebKit15LibWebRTCCodecs12flushEncoderERNS8_7EncoderEE3__0EEDaRNS_34GuaranteedSerialFunctionDispatcherEOT_RKNS_6Logger17LogSiteIdentifierEEUlONSt12experimental15fundamentals_v38expectedIvS4_EEE_NS_3RefINS2_IvvLj0EEENS_12RawPtrTraitsISS_EENS_21DefaultRefDerefTraitsISS_EEEEJSP_EE4callESP_@<X0>(unsigned __int8 **a1@<X8>)
{
  v2[0] = 0;
  v2[1] = 0;
  v2[2] = "operator()";
  v2[3] = 0;
  return WTF::NativePromise<void,void,0u>::createAndResolve<std::enable_if<true,void>>(v2, a1);
}

WTF::Lock *_ZN3WTF6Detail15CallableWrapperIZNS_13NativePromiseIvN3IPC5ErrorELj0EE11whenSettledIZN6WebKit15LibWebRTCCodecs14setEncodeRatesERNS8_7EncoderEjjE3__1EEDaRNS_34GuaranteedSerialFunctionDispatcherEOT_RKNS_6Logger17LogSiteIdentifierEEUlONSt12experimental15fundamentals_v38expectedIvS4_EEE_NS_3RefINS2_IvvLj0EEENS_12RawPtrTraitsISS_EENS_21DefaultRefDerefTraitsISS_EEEEJSP_EE4callESP_@<X0>(unsigned __int8 **a1@<X8>)
{
  v2[0] = 0;
  v2[1] = 0;
  v2[2] = "operator()";
  v2[3] = 0;
  return WTF::NativePromise<void,void,0u>::createAndResolve<std::enable_if<true,void>>(v2, a1);
}

uint64_t WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Function<void ()(WTF::RetainPtr<__CVBuffer *> &&)>>,WTF::KeyValuePairKeyExtractor<WTF::Function<void ()(WTF::RetainPtr<__CVBuffer *> &&)>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,void ()(WTF::RetainPtr<__CVBuffer *> &&),WTF::DefaultHash,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<void ()(WTF::RetainPtr<__CVBuffer *> &&)>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits,WTF::ShouldValidateKey>::deallocateTable(uint64_t a1, void *a2)
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
          (*(*v5 + 8))(v5);
        }
      }

      v4 += 2;
      --v3;
    }

    while (v3);
  }

  return WTF::fastFree((a1 - 16), a2);
}

unint64_t WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::RemoteImageDecoderAVFManager,(WTF::DestructionThread)0>::controlBlock(atomic_ullong *a1)
{
  result = *a1;
  if (result)
  {
    result = WTF::fastMalloc(0x20);
    *result = 0;
    *(result + 8) = xmmword_19E7014F0;
    *(result + 24) = a1 - 3;
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

uint64_t WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::weakRefCount(atomic_ullong *a1)
{
  if (*a1)
  {
    return 0;
  }

  v1 = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::controlBlock(a1);

  return WTF::ThreadSafeWeakPtrControlBlock::weakRefCount(v1);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebMediaStrategy::createAudioDestination(WebCore::AudioDestinationCreationOptions const&)::$_0,WTF::Ref<WebCore::AudioDestination,WTF::RawPtrTraits<WebCore::AudioDestination>,WTF::DefaultRefDerefTraits<WebCore::AudioDestination>>,WebCore::AudioDestinationCreationOptions const&>::call@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v4 = WTF::fastMalloc(0x128);
  result = WebKit::RemoteAudioDestinationProxy::RemoteAudioDestinationProxy(v4, a1);
  *a2 = result;
  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::RemoteAudioSourceProviderManager::addProvider(WTF::Ref<WebKit::RemoteAudioSourceProvider,WTF::RawPtrTraits<WebKit::RemoteAudioSourceProvider>,WTF::DefaultRefDerefTraits<WebKit::RemoteAudioSourceProvider>> &&)::$_0,void>::~CallableWrapper(void *a1)
{
  *a1 = &unk_1F112A2E8;
  v2 = a1[3];
  a1[3] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCounted<WebCore::WebAudioSourceProvider,(WTF::DestructionThread)1>::deref((v2 + 8));
  }

  v3 = a1[2];
  a1[2] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::RemoteAudioSourceProviderManager::addProvider(WTF::Ref<WebKit::RemoteAudioSourceProvider,WTF::RawPtrTraits<WebKit::RemoteAudioSourceProvider>,WTF::DefaultRefDerefTraits<WebKit::RemoteAudioSourceProvider>> &&)::$_0,void>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F112A2E8;
  v3 = *(this + 3);
  *(this + 3) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCounted<WebCore::WebAudioSourceProvider,(WTF::DestructionThread)1>::deref((v3 + 8));
  }

  v4 = *(this + 2);
  *(this + 2) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  return WTF::fastFree(this, a2);
}

WebCore::WebAudioBufferList ***WTF::Detail::CallableWrapper<WebKit::RemoteAudioSourceProviderManager::addProvider(WTF::Ref<WebKit::RemoteAudioSourceProvider,WTF::RawPtrTraits<WebKit::RemoteAudioSourceProvider>,WTF::DefaultRefDerefTraits<WebKit::RemoteAudioSourceProvider>> &&)::$_0,void>::call(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  v4 = *(*(a1 + 24) + 248);
  if (WebKit::RemoteAudioSourceProviderManager::RemoteAudio::s_heapRef)
  {
    NonCompact = bmalloc::api::tzoneAllocateNonCompact(WebKit::RemoteAudioSourceProviderManager::RemoteAudio::s_heapRef, a2);
  }

  else
  {
    NonCompact = WebKit::RemoteAudioSourceProviderManager::RemoteAudio::operatorNewSlow(0);
  }

  v6 = NonCompact;
  v7 = *(a1 + 24);
  *(a1 + 24) = 0;
  *NonCompact = v7;
  *(NonCompact + 8) = 0;
  *(NonCompact + 88) = 0;
  *(NonCompact + 96) = 0;
  *(NonCompact + 104) = 0;
  v23 = NonCompact;
  if (v4 == -1 || !v4)
  {
    __break(0xC471u);
    JUMPOUT(0x19E2C6FDCLL);
  }

  v8 = *(v3 + 32);
  if (!v8)
  {
    WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::RemoteAudioSourceProviderManager::RemoteAudio>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::RemoteAudioSourceProviderManager::RemoteAudio>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::RemoteAudioSourceProviderManager::RemoteAudio>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::unique_ptr<WebKit::RemoteAudioSourceProviderManager::RemoteAudio>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand((v3 + 32));
    v8 = *(v3 + 32);
  }

  v9 = *(v8 - 8);
  v10 = (v4 + ~(v4 << 32)) ^ ((v4 + ~(v4 << 32)) >> 22);
  v11 = 9 * ((v10 + ~(v10 << 13)) ^ ((v10 + ~(v10 << 13)) >> 8));
  v12 = (v11 ^ (v11 >> 15)) + ~((v11 ^ (v11 >> 15)) << 27);
  v13 = v9 & ((v12 >> 31) ^ v12);
  v14 = (v8 + 16 * v13);
  v15 = *v14;
  if (!*v14)
  {
LABEL_15:
    *v14 = v4;
    v23 = 0;
    v24 = 0;
    std::unique_ptr<WebKit::RemoteAudioSourceProviderManager::RemoteAudio>::reset[abi:sn200100](v14 + 1, v6);
    std::unique_ptr<WebKit::RemoteAudioSourceProviderManager::RemoteAudio>::reset[abi:sn200100](&v24, 0);
    v18 = *(v3 + 32);
    if (v18)
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
        return std::unique_ptr<WebKit::RemoteAudioSourceProviderManager::RemoteAudio>::reset[abi:sn200100](&v23, 0);
      }
    }

    else if (3 * v21 > 4 * v20)
    {
      return std::unique_ptr<WebKit::RemoteAudioSourceProviderManager::RemoteAudio>::reset[abi:sn200100](&v23, 0);
    }

    WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::RemoteAudioSourceProviderManager::RemoteAudio>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::RemoteAudioSourceProviderManager::RemoteAudio>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::RemoteAudioSourceProviderManager::RemoteAudio>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::unique_ptr<WebKit::RemoteAudioSourceProviderManager::RemoteAudio>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand((v3 + 32));
    return std::unique_ptr<WebKit::RemoteAudioSourceProviderManager::RemoteAudio>::reset[abi:sn200100](&v23, 0);
  }

  v16 = 0;
  v17 = 1;
  while (v15 != v4)
  {
    if (v15 == -1)
    {
      v16 = v14;
    }

    v13 = (v13 + v17) & v9;
    v14 = (v8 + 16 * v13);
    v15 = *v14;
    ++v17;
    if (!*v14)
    {
      if (v16)
      {
        *v16 = 0;
        v16[1] = 0;
        --*(*(v3 + 32) - 16);
        v14 = v16;
      }

      goto LABEL_15;
    }
  }

  return std::unique_ptr<WebKit::RemoteAudioSourceProviderManager::RemoteAudio>::reset[abi:sn200100](&v23, 0);
}

_DWORD *WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::RemoteAudioSourceProviderManager::RemoteAudio>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::RemoteAudioSourceProviderManager::RemoteAudio>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::RemoteAudioSourceProviderManager::RemoteAudio>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::unique_ptr<WebKit::RemoteAudioSourceProviderManager::RemoteAudio>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(uint64_t *a1)
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

  return WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::RemoteAudioSourceProviderManager::RemoteAudio>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::RemoteAudioSourceProviderManager::RemoteAudio>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::RemoteAudioSourceProviderManager::RemoteAudio>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::unique_ptr<WebKit::RemoteAudioSourceProviderManager::RemoteAudio>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(a1, v3);
}

_DWORD *WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::RemoteAudioSourceProviderManager::RemoteAudio>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::RemoteAudioSourceProviderManager::RemoteAudio>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::RemoteAudioSourceProviderManager::RemoteAudio>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::unique_ptr<WebKit::RemoteAudioSourceProviderManager::RemoteAudio>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(uint64_t *a1, unsigned int a2)
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
    for (i = 0; i != v5; ++i)
    {
      v10 = (v4 + 16 * i);
      v11 = *v10;
      if (*v10 != -1)
      {
        if (v11)
        {
          v12 = *a1;
          if (*a1)
          {
            v13 = *(v12 - 8);
          }

          else
          {
            v13 = 0;
          }

          v14 = (v11 + ~(v11 << 32)) ^ ((v11 + ~(v11 << 32)) >> 22);
          v15 = 9 * ((v14 + ~(v14 << 13)) ^ ((v14 + ~(v14 << 13)) >> 8));
          v16 = (v15 ^ (v15 >> 15)) + ~((v15 ^ (v15 >> 15)) << 27);
          v17 = v13 & ((v16 >> 31) ^ v16);
          v18 = 1;
          do
          {
            v19 = v17;
            v20 = *(v12 + 16 * v17);
            v17 = (v17 + v18++) & v13;
          }

          while (v20);
          v21 = v12 + 16 * v19;
          std::unique_ptr<WebKit::RemoteAudioSourceProviderManager::RemoteAudio>::reset[abi:sn200100]((v21 + 8), 0);
          *v21 = *v10;
          v22 = v10[1];
          v10[1] = 0;
          *(v21 + 8) = v22;
          std::unique_ptr<WebKit::RemoteAudioSourceProviderManager::RemoteAudio>::reset[abi:sn200100](v10 + 1, 0);
        }

        else
        {
          std::unique_ptr<WebKit::RemoteAudioSourceProviderManager::RemoteAudio>::reset[abi:sn200100](v10 + 1, 0);
        }
      }
    }
  }

  else if (!v4)
  {
    return result;
  }

  return WTF::fastFree((v4 - 16), v8);
}

void *WTF::Detail::CallableWrapper<WebKit::RemoteAudioSourceProviderManager::removeProvider(WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>)::$_0,void>::~CallableWrapper(void *a1)
{
  *a1 = &unk_1F112A310;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::RemoteAudioSourceProviderManager::removeProvider(WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>)::$_0,void>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F112A310;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

WebCore::WebAudioBufferList ***WTF::Detail::CallableWrapper<WebKit::RemoteAudioSourceProviderManager::removeProvider(WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>)::$_0,void>::call(uint64_t a1)
{
  v1 = *(a1 + 8);
  v3 = *(v1 + 32);
  v2 = (v1 + 32);
  result = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::RemoteAudioSourceProviderManager::RemoteAudio>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::RemoteAudioSourceProviderManager::RemoteAudio>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::RemoteAudioSourceProviderManager::RemoteAudio>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::unique_ptr<WebKit::RemoteAudioSourceProviderManager::RemoteAudio>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::RemoteAudioSourceProviderManager::RemoteAudio>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::unique_ptr<WebKit::RemoteAudioSourceProviderManager::RemoteAudio>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(v3, *(a1 + 24));
  if (*v2)
  {
    v5 = *v2 + 16 * *(*v2 - 4);
    if (v5 == result)
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

    v5 = 0;
  }

  if (v5 != result)
  {
    *result = -1;
    result = std::unique_ptr<WebKit::RemoteAudioSourceProviderManager::RemoteAudio>::reset[abi:sn200100](result + 1, 0);
    v6 = *v2;
    v7 = vadd_s32(*(*v2 - 16), 0xFFFFFFFF00000001);
    *(v6 - 16) = v7;
    v8 = *(v6 - 4);
    if (6 * v7.i32[1] < v8 && v8 >= 9)
    {

      return WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::RemoteAudioSourceProviderManager::RemoteAudio>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::RemoteAudioSourceProviderManager::RemoteAudio>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::RemoteAudioSourceProviderManager::RemoteAudio>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::unique_ptr<WebKit::RemoteAudioSourceProviderManager::RemoteAudio>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(v2, v8 >> 1);
    }
  }

  return result;
}

uint64_t WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::RemoteAudioSourceProviderManager::RemoteAudio>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::RemoteAudioSourceProviderManager::RemoteAudio>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::RemoteAudioSourceProviderManager::RemoteAudio>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::unique_ptr<WebKit::RemoteAudioSourceProviderManager::RemoteAudio>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::RemoteAudioSourceProviderManager::RemoteAudio>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::unique_ptr<WebKit::RemoteAudioSourceProviderManager::RemoteAudio>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(uint64_t result, uint64_t a2)
{
  if (result)
  {
    if (a2 == -1 || !a2)
    {
      __break(0xC471u);
      JUMPOUT(0x19E2C7444);
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

void *WTF::HashMap<int,WTF::RetainPtr<CGImage *>,WTF::IntHash<int>,WTF::UnsignedWithZeroKeyHashTraits<int>,WTF::HashTraits<WTF::RetainPtr<CGImage *>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<int,WTF::RetainPtr<CGImage *>,WTF::IntHash<int>,WTF::UnsignedWithZeroKeyHashTraits<int>,WTF::HashTraits<WTF::RetainPtr<CGImage *>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::IntHash<int>>,int>(void *result, uint64_t *a2, int a3)
{
  if (a3 > 2147483645)
  {
    __break(0xC471u);
    JUMPOUT(0x19E2C752CLL);
  }

  v3 = *a2;
  if (!*a2)
  {
LABEL_9:
    *result = 0;
    return result;
  }

  v4 = *(v3 - 8);
  v5 = 9 * ((~(a3 << 15) + a3) ^ ((~(a3 << 15) + a3) >> 10));
  v6 = (v5 ^ (v5 >> 6)) + ~((v5 ^ (v5 >> 6)) << 11);
  v7 = v4 & (v6 ^ HIWORD(v6));
  v8 = *(v3 + 16 * v7);
  if (v8 != a3)
  {
    v9 = 1;
    while (v8 != 0x7FFFFFFF)
    {
      v7 = (v7 + v9) & v4;
      v8 = *(v3 + 16 * v7);
      ++v9;
      if (v8 == a3)
      {
        goto LABEL_7;
      }
    }

    goto LABEL_9;
  }

LABEL_7:
  v10 = *(v3 + 16 * v7 + 8);
  *result = v10;
  if (v10)
  {
    return CFRetain(v10);
  }

  return result;
}

void WTF::Detail::CallableWrapper<WebKit::RemoteImageDecoderAVF::createFrameImageAtIndex(unsigned long,WebCore::SubsamplingLevel,WebCore::DecodingOptions const&)::$_0,void>::call(uint64_t a1)
{
  v2 = **(a1 + 8);
  v3 = *(v2 + 32);
  if (v3)
  {
    WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteMediaPlayerManager>(v3, *(v2 + 24), &v56);
    if (v56)
    {
      v4 = *(v56 + 32);
      v5 = *(a1 + 16);
      v6 = **(a1 + 8);
      IPC::Connection::createSyncMessageEncoder(0x1008, 0, v64);
      v7 = v64[0];
      IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v64[0], *(v6 + 56));
      IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v7, v5);
      v8 = IPC::Connection::sendSyncMessage(v4, v64[1], v64, 0, &v62, INFINITY);
      if (v63)
      {
        if (v63 != 1)
        {
          mpark::throw_bad_variant_access(v8);
        }

        LOBYTE(v50) = v62;
        v55 = 1;
        goto LABEL_28;
      }

      v10 = v62;
      v62 = 0;
      if (*(v10 + 25) == 3194)
      {
        v11 = 11;
      }

      else
      {
        LOBYTE(v57[0]) = 0;
        v61 = 0;
        IPC::Decoder::operator>><std::tuple<std::optional<WebCore::ShareableBitmapHandle>>>(v10, v57);
        if (v61 == 1)
        {
          v65 = v10;
          v66[0] = 0;
          v71 = 0;
          if (v60)
          {
            WebCore::ShareableBitmapHandle::ShareableBitmapHandle(v66, v57);
            v71 = 1;
            v12 = v65;
            v65 = 0;
            v50 = v12;
            v51[0] = 0;
            v54 = 0;
            WebCore::ShareableBitmapHandle::ShareableBitmapHandle(v51, v66);
            v54 = 1;
            v55 = 0;
            if (v71)
            {
              if (v69 == 1)
              {
                v13 = v68;
                v68 = 0;
                if (v13)
                {
                  CFRelease(v13);
                }
              }

              WTF::MachSendRight::~MachSendRight(v66);
            }
          }

          else
          {
            v65 = 0;
            v50 = v10;
            v51[0] = 0;
            v54 = 0;
            v55 = 0;
          }

          v14 = v65;
          v65 = 0;
          if (v14)
          {
            IPC::Decoder::~Decoder(v14);
            bmalloc::api::tzoneFree(v48, v49);
          }

          if ((v61 & 1) != 0 && v60 == 1)
          {
            if (v59 == 1)
            {
              v15 = cf;
              cf = 0;
              if (v15)
              {
                CFRelease(v15);
              }
            }

            WTF::MachSendRight::~MachSendRight(v57);
          }

          goto LABEL_25;
        }

        v11 = 14;
      }

      LOBYTE(v50) = v11;
      v55 = 1;
      IPC::Decoder::~Decoder(v10);
      bmalloc::api::tzoneFree(v16, v17);
LABEL_25:
      if (!v63)
      {
        v18 = v62;
        v62 = 0;
        if (v18)
        {
          IPC::Decoder::~Decoder(v18);
          bmalloc::api::tzoneFree(v44, v45);
        }
      }

LABEL_28:
      v19 = v64[0];
      v64[0] = 0;
      if (v19)
      {
        IPC::Encoder::~Encoder(v19, v9);
        bmalloc::api::tzoneFree(v36, v37);
      }

      if (v55)
      {
        goto LABEL_69;
      }

      LOBYTE(v65) = 0;
      v70 = 0;
      if (v54 != 1)
      {
LABEL_61:
        if (!v55)
        {
          if (v54 == 1)
          {
            if (v53 == 1)
            {
              v42 = v52;
              v52 = 0;
              if (v42)
              {
                CFRelease(v42);
              }
            }

            WTF::MachSendRight::~MachSendRight(v51);
          }

          if (v50)
          {
            IPC::Decoder::~Decoder(v50);
            bmalloc::api::tzoneFree(v46, v47);
          }
        }

LABEL_69:
        v43 = v56;
        v56 = 0;
        if (v43)
        {
          WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUProcessConnection,(WTF::DestructionThread)0>::deref((v43 + 24), v9);
        }

        return;
      }

      WebCore::ShareableBitmapHandle::ShareableBitmapHandle(&v65, v51);
      v70 = 1;
      v20 = WebCore::SharedMemoryHandle::takeOwnershipOfMemory();
      if ((v70 & 1) == 0)
      {
        __break(1u);
LABEL_75:
        CFRelease(v20);
LABEL_54:
        v40 = v57[0];
        v57[0] = 0;
        if (v40)
        {
          WTF::ThreadSafeRefCounted<WebCore::ShareableBitmap,(WTF::DestructionThread)0>::deref(v40, v9);
        }

        goto LABEL_56;
      }

      WebCore::ShareableBitmap::create();
      if (!v57[0])
      {
LABEL_56:
        if (v70)
        {
          if (v68 == 1)
          {
            v41 = v67;
            v67 = 0;
            if (v41)
            {
              CFRelease(v41);
            }
          }

          WTF::MachSendRight::~MachSendRight(&v65);
        }

        goto LABEL_61;
      }

      v21 = **(a1 + 8);
      v22 = *(a1 + 16);
      WebCore::ShareableBitmap::makeCGImage();
      if (v22 > 2147483645)
      {
        __break(0xC471u);
        JUMPOUT(0x19E2C7A40);
      }

      v23 = *(v21 + 96);
      if (!v23)
      {
        WTF::HashTable<int,WTF::KeyValuePair<int,WTF::RetainPtr<CGImage *>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<int,WTF::RetainPtr<CGImage *>>>,WTF::IntHash<int>,WTF::HashMap<int,WTF::RetainPtr<CGImage *>,WTF::IntHash<int>,WTF::UnsignedWithZeroKeyHashTraits<int>,WTF::HashTraits<WTF::RetainPtr<CGImage *>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::UnsignedWithZeroKeyHashTraits<int>,WTF::FastMalloc>::expand((v21 + 96), 0);
        v23 = *(v21 + 96);
      }

      v24 = *(v23 - 8);
      v25 = 9 * ((~(v22 << 15) + v22) ^ ((~(v22 << 15) + v22) >> 10));
      v26 = (v25 ^ (v25 >> 6)) + ~((v25 ^ (v25 >> 6)) << 11);
      v27 = v24 & (v26 ^ HIWORD(v26));
      v28 = v23 + 16 * v27;
      v29 = *v28;
      if (*v28 != 0x7FFFFFFF)
      {
        v30 = 0;
        v31 = 1;
        while (v29 != v22)
        {
          if (v29 == 2147483646)
          {
            v30 = v28;
          }

          v27 = (v27 + v31) & v24;
          v28 = v23 + 16 * v27;
          v29 = *v28;
          ++v31;
          if (*v28 == 0x7FFFFFFF)
          {
            if (v30)
            {
              *v30 = 0x7FFFFFFF;
              *(v30 + 8) = 0;
              --*(v23 - 16);
              v28 = v30;
            }

            goto LABEL_45;
          }
        }

LABEL_53:
        v20 = v64[0];
        v64[0] = 0;
        if (!v20)
        {
          goto LABEL_54;
        }

        goto LABEL_75;
      }

LABEL_45:
      *v28 = v22;
      v32 = v64[0];
      v64[0] = 0;
      v33 = *(v28 + 8);
      *(v28 + 8) = v32;
      if (v33)
      {
        CFRelease(v33);
      }

      v34 = *(v21 + 96);
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
          goto LABEL_53;
        }
      }

      else if (3 * v39 > 4 * v38)
      {
        goto LABEL_53;
      }

      WTF::HashTable<int,WTF::KeyValuePair<int,WTF::RetainPtr<CGImage *>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<int,WTF::RetainPtr<CGImage *>>>,WTF::IntHash<int>,WTF::HashMap<int,WTF::RetainPtr<CGImage *>,WTF::IntHash<int>,WTF::UnsignedWithZeroKeyHashTraits<int>,WTF::HashTraits<WTF::RetainPtr<CGImage *>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::UnsignedWithZeroKeyHashTraits<int>,WTF::FastMalloc>::expand((v21 + 96), v28);
      goto LABEL_53;
    }
  }
}