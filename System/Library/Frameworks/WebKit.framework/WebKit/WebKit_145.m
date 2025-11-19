uint64_t WTF::Detail::CallableWrapper<WebKit::sendSecItemRequest(WebKit::SecItemRequestData::Type,__CFDictionary const*,__CFDictionary const*)::$_0,void>::call(uint64_t a1)
{
  if (byte_1ED642709)
  {
    if (qword_1ED642720)
    {
      v2 = *(qword_1ED642720 + 8);
      if (v2)
      {
        WebKit::AuxiliaryProcess::protectedParentProcessConnection(v2, &v23);
        v3 = v23;
        v4 = **(a1 + 24);
        v5 = **(a1 + 32);
        v20[0] = **(a1 + 16);
        v21 = v4;
        if (v4)
        {
          CFRetain(v4);
        }

        v22 = v5;
        if (v5)
        {
          CFRetain(v5);
        }

        v6 = *(a1 + 40);
        v7 = *(a1 + 8);
        v8 = WTF::fastMalloc(0x18);
        *v8 = &unk_1F1108EC0;
        v8[1] = v6;
        v8[2] = v7;
        if (WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
        {
          result = 141;
          __break(0xC471u);
          return result;
        }

        v9 = v8;
        IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
        v12 = IPC::Encoder::operator new(0x238, v11);
        *v12 = 1715;
        *(v12 + 68) = 0;
        *(v12 + 70) = 0;
        *(v12 + 69) = 0;
        *(v12 + 2) = 0;
        *(v12 + 3) = 0;
        *(v12 + 1) = 0;
        IPC::Encoder::encodeHeader(v12);
        v25 = v12;
        IPC::ArgumentCoder<WebKit::SecItemRequestData,void>::encode(v12, v20);
        v24[0] = v9;
        v24[1] = IdentifierInternal;
        IPC::Connection::sendMessageWithAsyncReply(v3, &v25, v24, 0, 0);
        v14 = v24[0];
        v24[0] = 0;
        if (v14)
        {
          (*(*v14 + 8))(v14);
        }

        v15 = v25;
        v25 = 0;
        if (v15)
        {
          IPC::Encoder::~Encoder(v15, v13);
          bmalloc::api::tzoneFree(v17, v18);
          if (!v5)
          {
LABEL_13:
            if (!v4)
            {
              goto LABEL_14;
            }

LABEL_19:
            CFRelease(v4);
LABEL_14:
            result = v23;
            v23 = 0;
            if (result)
            {
              return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(result);
            }

            return result;
          }
        }

        else if (!v5)
        {
          goto LABEL_13;
        }

        CFRelease(v5);
        if (!v4)
        {
          goto LABEL_14;
        }

        goto LABEL_19;
      }
    }
  }

  else
  {
    qword_1ED642720 = 0;
    byte_1ED642709 = 1;
  }

  v19 = *(a1 + 8);

  return WTF::BinarySemaphore::signal(v19);
}

void WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::SecItemShimProxy::SecItemRequest,WebKit::sendSecItemRequest(WebKit::SecItemRequestData::Type,__CFDictionary const*,__CFDictionary const*)::$_0::operator() const(void)::{lambda(Messages::SecItemShimProxy::SecItemRequest)#1}>(WebKit::sendSecItemRequest(WebKit::SecItemRequestData::Type,__CFDictionary const*,__CFDictionary const*)::$_0::operator() const(void)::{lambda(Messages::SecItemShimProxy::SecItemRequest)#1} &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::call(uint64_t a1, uint64_t a2, IPC::Decoder *a3)
{
  if (a3 && *a3)
  {
    IPC::Decoder::decode<std::tuple<std::optional<WebKit::SecItemResponseData>>>(v12, a3);
    if (v16 == 1)
    {
      LOBYTE(v17) = 0;
      v20 = 0;
      if (v15 == 1)
      {
        std::__optional_storage_base<WebKit::SecItemResponseData,false>::__construct[abi:sn200100]<WebKit::SecItemResponseData>(&v17, v12);
        if (v20)
        {
          v5 = *(a1 + 8);
          if (*(v5 + 32) == 1)
          {
            *v5 = v17;
            v6 = *(v5 + 24);
            if (v6 != 255 || v19 != 255)
            {
              if (v19 == 255)
              {
                if (*(v5 + 24) > 1u)
                {
                  if (v6 == 2)
                  {
                    v11 = *(v5 + 8);
                    *(v5 + 8) = 0;
                    if (v11)
                    {
                      CFRelease(v11);
                    }
                  }
                }

                else if (*(v5 + 24))
                {
                  WTF::Vector<WTF::RetainPtr<__SecCertificate *>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v5 + 8, v4);
                }

                *(v5 + 24) = -1;
              }

              else
              {
                _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_10assignmentINS0_6traitsIJDnN3WTF6VectorINS6_9RetainPtrIP16__SecCertificateEELm0ENS6_15CrashOnOverflowELm16ENS6_10FastMallocEEENS8_IPKvEEEEEE14generic_assignINS0_15move_assignmentISI_LNS0_5TraitE1EEEEEvOT_EUlRSO_OT0_E_JRSJ_SN_EEEDcmSP_DpOT0_(v19, (v5 + 8), v5 + 8, cf);
              }
            }
          }

          else
          {
            std::__optional_storage_base<WebKit::SecItemResponseData,false>::__construct[abi:sn200100]<WebKit::SecItemResponseData>(*(a1 + 8), &v17);
          }
        }
      }

      WTF::BinarySemaphore::signal(*(a1 + 16));
      if (v20 == 1)
      {
        if (v19 > 1u)
        {
          if (v19 == 2)
          {
            v9 = cf[0];
            cf[0] = 0;
            if (v9)
            {
              CFRelease(v9);
            }
          }
        }

        else if (v19)
        {
          WTF::Vector<WTF::RetainPtr<__SecCertificate *>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(cf, v8);
        }
      }

      if ((v16 & 1) != 0 && v15 == 1)
      {
        if (v14 > 1u)
        {
          if (v14 == 2)
          {
            v10 = v13[0];
            v13[0] = 0;
            if (v10)
            {
              CFRelease(v10);
            }
          }
        }

        else if (v14)
        {
          WTF::Vector<WTF::RetainPtr<__SecCertificate *>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v13, v8);
        }
      }
    }

    else
    {
      WTF::BinarySemaphore::signal(*(a1 + 16));
    }
  }

  else
  {
    v7 = *(a1 + 16);

    WTF::BinarySemaphore::signal(v7);
  }
}

uint64_t WTF::KeyValuePair<WebCore::ClientOrigin,WebKit::BackgroundFetchStoreImpl::PerClientOriginFetches>::~KeyValuePair(uint64_t a1, void *a2)
{
  WTF::Vector<WTF::CompletionHandler<void ()(void)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(a1 + 72, a2);
  v4 = *(a1 + 64);
  if (v4)
  {
    WTF::HashTable<std::pair<WTF::String,WTF::String>,WTF::KeyValuePair<std::pair<WTF::String,WTF::String>,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<std::pair<WTF::String,WTF::String>,WTF::String>>,WTF::DefaultHash<std::pair<WTF::String,WTF::String>>,WTF::HashMap<std::pair<WTF::String,WTF::String>,WTF::String,WTF::DefaultHash<std::pair<WTF::String,WTF::String>>,WTF::HashTraits<std::pair<WTF::String,WTF::String>>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<std::pair<WTF::String,WTF::String>>,WTF::FastMalloc>::deallocateTable(v4, v3);
  }

  if (!*(a1 + 56))
  {
    v5 = *(a1 + 40);
    *(a1 + 40) = 0;
    if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v5, v3);
    }

    v6 = *(a1 + 32);
    *(a1 + 32) = 0;
    if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v6, v3);
    }
  }

  *(a1 + 56) = -1;
  if (!*(a1 + 24))
  {
    v7 = *(a1 + 8);
    *(a1 + 8) = 0;
    if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v7, v3);
    }

    v8 = *a1;
    *a1 = 0;
    if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v8, v3);
    }
  }

  *(a1 + 24) = -1;
  return a1;
}

uint64_t WTF::HashTable<std::pair<WTF::String,WTF::String>,WTF::KeyValuePair<std::pair<WTF::String,WTF::String>,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<std::pair<WTF::String,WTF::String>,WTF::String>>,WTF::DefaultHash<std::pair<WTF::String,WTF::String>>,WTF::HashMap<std::pair<WTF::String,WTF::String>,WTF::String,WTF::DefaultHash<std::pair<WTF::String,WTF::String>>,WTF::HashTraits<std::pair<WTF::String,WTF::String>>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<std::pair<WTF::String,WTF::String>>,WTF::FastMalloc>::deallocateTable(WTF::StringImpl **a1, WTF::StringImpl *a2)
{
  v3 = *(a1 - 1);
  if (v3)
  {
    v4 = a1;
    do
    {
      if (*v4 != -1)
      {
        v5 = v4[2];
        v4[2] = 0;
        if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v5, a2);
        }

        v6 = v4[1];
        v4[1] = 0;
        if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v6, a2);
        }

        v7 = *v4;
        *v4 = 0;
        if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v7, a2);
        }
      }

      v4 += 3;
      --v3;
    }

    while (v3);
  }

  return WTF::fastFree((a1 - 2), a2);
}

uint64_t _ZN3WTF6MapperIZNS_21CrossThreadCopierBaseILb0ELb0ENS_6VectorINS_6StringELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEE4copyERKS6_EUlRT_E_S6_S9_vE3mapERS6_S9_RKSC_(uint64_t result, uint64_t *a2)
{
  v2 = *(a2 + 3);
  if (v2)
  {
    if (v2 >> 29)
    {
      __break(0xC471u);
    }

    else
    {
      v4 = result;
      result = WTF::fastMalloc((8 * v2));
      *(v4 + 8) = v2;
      *v4 = result;
      v5 = *(a2 + 3);
      if (v5)
      {
        v6 = *a2;
        v7 = 8 * v5;
        do
        {
          WTF::String::isolatedCopy();
          v8 = *(v4 + 12);
          *(*v4 + 8 * v8) = v9;
          *(v4 + 12) = v8 + 1;
          result = 0;
          v9 = 0;
          v6 += 8;
          v7 -= 8;
        }

        while (v7);
      }
    }
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::NetworkCache::SpeculativeLoad::SpeculativeLoad(WebKit::NetworkCache::Cache &,WebKit::NetworkCache::GlobalFrameID const&,WebCore::ResourceRequest const&,std::unique_ptr<WebKit::NetworkCache::Entry>,std::optional<WebKit::NavigatingToAppBoundDomain>,BOOL,WTF::OptionSet<WebCore::AdvancedPrivacyProtections>,WTF::CompletionHandler<void ()(std::unique_ptr<WebKit::NetworkCache::Entry>)> &&)::$_0,void>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F1108EE8;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkCache::SpeculativeLoad::SpeculativeLoad(WebKit::NetworkCache::Cache &,WebKit::NetworkCache::GlobalFrameID const&,WebCore::ResourceRequest const&,std::unique_ptr<WebKit::NetworkCache::Entry>,std::optional<WebKit::NavigatingToAppBoundDomain>,BOOL,WTF::OptionSet<WebCore::AdvancedPrivacyProtections>,WTF::CompletionHandler<void ()(std::unique_ptr<WebKit::NetworkCache::Entry>)> &&)::$_0,void>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1108EE8;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

WebKit::NetworkCache::Entry *WTF::Detail::CallableWrapper<WebKit::NetworkCache::SpeculativeLoad::SpeculativeLoad(WebKit::NetworkCache::Cache &,WebKit::NetworkCache::GlobalFrameID const&,WebCore::ResourceRequest const&,std::unique_ptr<WebKit::NetworkCache::Entry>,std::optional<WebKit::NavigatingToAppBoundDomain>,BOOL,WTF::OptionSet<WebCore::AdvancedPrivacyProtections>,WTF::CompletionHandler<void ()(std::unique_ptr<WebKit::NetworkCache::Entry>)> &&)::$_0,void>::call(uint64_t a1)
{
  v5 = 0;
  WTF::CompletionHandler<void ()(std::unique_ptr<WebKit::NetworkCache::Entry>)>::operator()((a1 + 8), &v5);
  result = v5;
  if (v5)
  {
    WebKit::NetworkCache::Entry::~Entry(v5, v1);

    return bmalloc::api::tzoneFree(v3, v4);
  }

  return result;
}

WTF::StringImpl ***WTF::RefCounted<WebKit::NetworkCache::SpeculativeLoadManager::PendingFrameLoad>::deref(WTF::StringImpl ***result, void *a2)
{
  if (*result == 1)
  {
    WebKit::NetworkCache::SpeculativeLoadManager::PendingFrameLoad::~PendingFrameLoad(result, a2);

    return WTF::fastFree(v3, v4);
  }

  else
  {
    --*result;
  }

  return result;
}

void WebKit::NetworkCache::SpeculativeLoadManager::PendingFrameLoad::~PendingFrameLoad(WTF::StringImpl ***this, void *a2)
{
  WTF::Vector<WTF::Function<void ()(void)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector((this + 25), a2);
  std::unique_ptr<WebKit::NetworkCache::SubresourcesEntry>::reset[abi:sn200100](this + 24, 0);
  this[17] = &unk_1F10E6DC8;
  v3 = this[22];
  this[22] = 0;
  if (v3)
  {
    (*(*v3 + 1))(v3);
  }

  WTF::RunLoop::TimerBase::~TimerBase((this + 17));
  v5 = this[15];
  this[15] = 0;
  if (v5)
  {
    (*(*v5 + 1))(v5);
  }

  v6 = this[14];
  this[14] = 0;
  if (v6)
  {
    (*(*v6 + 1))(v6);
  }

  v7 = *(this + 27);
  v8 = this[12];
  if (v7)
  {
    v14 = 8 * v7;
    do
    {
      v15 = *v8;
      *v8 = 0;
      if (v15)
      {
        WebKit::NetworkCache::SubresourceLoad::~SubresourceLoad(v15, v4);
        bmalloc::api::tzoneFree(v16, v17);
      }

      v8 = (v8 + 8);
      v14 -= 8;
    }

    while (v14);
    v8 = this[12];
  }

  if (v8)
  {
    this[12] = 0;
    *(this + 26) = 0;
    WTF::fastFree(v8, v4);
  }

  v9 = this[6];
  this[6] = 0;
  if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v9, v4);
  }

  v10 = this[5];
  this[5] = 0;
  if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, v4);
  }

  v11 = this[4];
  this[4] = 0;
  if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v11, v4);
  }

  v12 = this[3];
  this[3] = 0;
  if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v12, v4);
  }

  v13 = this[2];
  this[2] = 0;
  if (v13)
  {
    WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v13, v4);
  }

  if (*this != 1)
  {
    __break(0xC471u);
  }
}

uint64_t WTF::Vector<WebKit::NetworkCache::SubresourceInfo,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, void *a2)
{
  v3 = *(a1 + 12);
  if (v3)
  {
    WTF::VectorTypeOperations<WebKit::NetworkCache::SubresourceInfo>::destruct(*a1, (*a1 + 176 * v3));
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

WTF::StringImpl *WTF::VectorTypeOperations<WebKit::NetworkCache::SubresourceInfo>::destruct(WTF::StringImpl *result, WTF::StringImpl *a2)
{
  if (result != a2)
  {
    v3 = result;
    do
    {
      WTF::Vector<WebCore::HTTPHeaderMap::UncommonHeader,0ul,WTF::CrashOnOverflow,0ul,WTF::FastMalloc>::~Vector(v3 + 38, a2);
      WTF::Vector<WebCore::HTTPHeaderMap::CommonHeader,0ul,WTF::CrashOnOverflow,6ul,WTF::FastMalloc>::~Vector(v3 + 136, v4);
      v5 = *(v3 + 12);
      *(v3 + 12) = 0;
      if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v5, a2);
      }

      v6 = *(v3 + 3);
      *(v3 + 3) = 0;
      if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v6, a2);
      }

      v7 = *(v3 + 2);
      *(v3 + 2) = 0;
      if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v7, a2);
      }

      v8 = *(v3 + 1);
      *(v3 + 1) = 0;
      if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v8, a2);
      }

      result = *v3;
      *v3 = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          result = WTF::StringImpl::destroy(result, a2);
        }
      }

      v3 = (v3 + 176);
    }

    while (v3 != a2);
  }

  return result;
}

void *WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::NetworkCache::Storage>(void *result, atomic_uchar *this, uint64_t a3)
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

WTF::StringImpl **WTF::HashMap<WebKit::NetworkCache::Key,std::unique_ptr<WebKit::NetworkCache::SpeculativeLoadManager::PreloadedEntry>,WTF::DefaultHash<WebKit::NetworkCache::Key>,WTF::HashTraits<WebKit::NetworkCache::Key>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkCache::SpeculativeLoadManager::PreloadedEntry>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::take(WTF::StringImpl **result, WTF::StringImpl *a2, WTF::StringImpl **a3)
{
  if (*a2)
  {
    if ((*a2 + 80 * *(*a2 - 4)) != a3)
    {
      goto LABEL_3;
    }

LABEL_12:
    *result = 0;
    return result;
  }

  if (!a3)
  {
    goto LABEL_12;
  }

LABEL_3:
  v5 = a3 + 9;
  v4 = a3[9];
  a3[9] = 0;
  *result = v4;
  WTF::hashTraitsDeleteBucket<WTF::HashTraits<WebKit::NetworkCache::Key>,WebKit::NetworkCache::Key>(a3, a2);
  result = std::unique_ptr<WebKit::NetworkCache::SpeculativeLoadManager::PreloadedEntry>::reset[abi:sn200100](v5, 0);
  v6 = *a2;
  v7 = vadd_s32(*(*a2 - 16), 0xFFFFFFFF00000001);
  *(v6 - 16) = v7;
  v8 = *(v6 - 4);
  if (6 * v7.i32[1] < v8 && v8 >= 9)
  {

    return WTF::HashTable<WebKit::NetworkCache::Key,WTF::KeyValuePair<WebKit::NetworkCache::Key,std::unique_ptr<WebKit::NetworkCache::SpeculativeLoadManager::PreloadedEntry>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebKit::NetworkCache::Key,std::unique_ptr<WebKit::NetworkCache::SpeculativeLoadManager::PreloadedEntry>>>,WTF::DefaultHash<WebKit::NetworkCache::Key>,WTF::HashMap<WebKit::NetworkCache::Key,std::unique_ptr<WebKit::NetworkCache::SpeculativeLoadManager::PreloadedEntry>,WTF::DefaultHash<WebKit::NetworkCache::Key>,WTF::HashTraits<WebKit::NetworkCache::Key>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkCache::SpeculativeLoadManager::PreloadedEntry>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebKit::NetworkCache::Key>,WTF::FastMalloc>::rehash(a2, v8 >> 1);
  }

  return result;
}

_DWORD *WTF::HashTable<WebKit::NetworkCache::Key,WTF::KeyValuePair<WebKit::NetworkCache::Key,std::unique_ptr<WebKit::NetworkCache::SpeculativeLoadManager::PreloadedEntry>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebKit::NetworkCache::Key,std::unique_ptr<WebKit::NetworkCache::SpeculativeLoadManager::PreloadedEntry>>>,WTF::DefaultHash<WebKit::NetworkCache::Key>,WTF::HashMap<WebKit::NetworkCache::Key,std::unique_ptr<WebKit::NetworkCache::SpeculativeLoadManager::PreloadedEntry>,WTF::DefaultHash<WebKit::NetworkCache::Key>,WTF::HashTraits<WebKit::NetworkCache::Key>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkCache::SpeculativeLoadManager::PreloadedEntry>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebKit::NetworkCache::Key>,WTF::FastMalloc>::rehash(uint64_t *a1, unsigned int a2)
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

  result = WTF::fastMalloc((80 * a2 + 16));
  if (a2)
  {
    v9 = a2;
    v10 = result + 22;
    do
    {
      *(v10 - 7) = 0uLL;
      *(v10 - 9) = 0uLL;
      *v10 = 0;
      v10 += 10;
      --v9;
    }

    while (v9);
  }

  *a1 = (result + 4);
  result[2] = a2 - 1;
  result[3] = a2;
  *result = 0;
  result[1] = v6;
  if (v5)
  {
    v11 = 0;
    while (1)
    {
      v12 = v4 + 80 * v11;
      v13 = *(v12 + 16);
      if (v13)
      {
        if (v13 == -1)
        {
          goto LABEL_22;
        }

        v14 = *a1;
        if (*a1)
        {
          v15 = *(v14 - 8);
        }

        else
        {
          v15 = 0;
        }

        v16 = 0;
        v17 = *(v12 + 32);
        do
        {
          v18 = v17 & v15;
          v19 = v14 + 80 * v18;
          v17 = ++v16 + v18;
        }

        while (*(v19 + 16));
        std::unique_ptr<WebKit::NetworkCache::SpeculativeLoadManager::PreloadedEntry>::reset[abi:sn200100]((v19 + 72), 0);
        v21 = *(v19 + 24);
        *(v19 + 24) = 0;
        if (v21 && atomic_fetch_add_explicit(v21, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v21, v20);
        }

        v22 = *(v19 + 16);
        *(v19 + 16) = 0;
        if (v22 && atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v22, v20);
        }

        v23 = *(v19 + 8);
        *(v19 + 8) = 0;
        if (v23 && atomic_fetch_add_explicit(v23, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v23, v20);
        }

        v24 = *v19;
        *v19 = 0;
        if (v24 && atomic_fetch_add_explicit(v24, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v24, v20);
        }

        v25 = *v12;
        *v12 = 0;
        *v19 = v25;
        v26 = *(v12 + 8);
        *(v12 + 8) = 0;
        *(v19 + 8) = v26;
        v27 = *(v12 + 16);
        *(v12 + 16) = 0;
        *(v19 + 16) = v27;
        v28 = *(v12 + 24);
        *(v12 + 24) = 0;
        *(v19 + 24) = v28;
        v29 = *(v12 + 32);
        v30 = *(v12 + 48);
        *(v19 + 64) = *(v12 + 64);
        *(v19 + 32) = v29;
        *(v19 + 48) = v30;
        v31 = *(v12 + 72);
        *(v12 + 72) = 0;
        *(v19 + 72) = v31;
        std::unique_ptr<WebKit::NetworkCache::SpeculativeLoadManager::PreloadedEntry>::reset[abi:sn200100]((v12 + 72), 0);
        v32 = *(v12 + 24);
        *(v12 + 24) = 0;
        if (v32 && atomic_fetch_add_explicit(v32, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v32, v8);
        }

        v33 = *(v12 + 16);
        *(v12 + 16) = 0;
        if (v33 && atomic_fetch_add_explicit(v33, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v33, v8);
        }

        v34 = *(v12 + 8);
        *(v12 + 8) = 0;
        if (v34 && atomic_fetch_add_explicit(v34, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v34, v8);
        }

        v35 = *v12;
        *v12 = 0;
        if (!v35 || atomic_fetch_add_explicit(v35, 0xFFFFFFFE, memory_order_relaxed) != 2)
        {
          goto LABEL_22;
        }
      }

      else
      {
        std::unique_ptr<WebKit::NetworkCache::SpeculativeLoadManager::PreloadedEntry>::reset[abi:sn200100]((v12 + 72), 0);
        v36 = *(v12 + 24);
        *(v12 + 24) = 0;
        if (v36 && atomic_fetch_add_explicit(v36, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v36, v8);
        }

        v37 = *(v12 + 16);
        *(v12 + 16) = 0;
        if (v37 && atomic_fetch_add_explicit(v37, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v37, v8);
        }

        v38 = *(v12 + 8);
        *(v12 + 8) = 0;
        if (v38 && atomic_fetch_add_explicit(v38, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v38, v8);
        }

        v35 = *v12;
        *v12 = 0;
        if (!v35 || atomic_fetch_add_explicit(v35, 0xFFFFFFFE, memory_order_relaxed) != 2)
        {
          goto LABEL_22;
        }
      }

      WTF::StringImpl::destroy(v35, v8);
LABEL_22:
      if (++v11 == v5)
      {
        goto LABEL_54;
      }
    }
  }

  if (v4)
  {
LABEL_54:

    return WTF::fastFree((v4 - 16), v8);
  }

  return result;
}

uint64_t WTF::HashTable<WebKit::NetworkCache::Key,WTF::KeyValuePair<WebKit::NetworkCache::Key,std::unique_ptr<WebKit::NetworkCache::SpeculativeLoadManager::PreloadedEntry>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebKit::NetworkCache::Key,std::unique_ptr<WebKit::NetworkCache::SpeculativeLoadManager::PreloadedEntry>>>,WTF::DefaultHash<WebKit::NetworkCache::Key>,WTF::HashMap<WebKit::NetworkCache::Key,std::unique_ptr<WebKit::NetworkCache::SpeculativeLoadManager::PreloadedEntry>,WTF::DefaultHash<WebKit::NetworkCache::Key>,WTF::HashTraits<WebKit::NetworkCache::Key>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkCache::SpeculativeLoadManager::PreloadedEntry>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebKit::NetworkCache::Key>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WebKit::NetworkCache::Key,std::unique_ptr<WebKit::NetworkCache::SpeculativeLoadManager::PreloadedEntry>,WTF::DefaultHash<WebKit::NetworkCache::Key>,WTF::HashTraits<WebKit::NetworkCache::Key>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkCache::SpeculativeLoadManager::PreloadedEntry>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WebKit::NetworkCache::Key>>,(WTF::ShouldValidateKey)1,WebKit::NetworkCache::Key>(uint64_t *a1, uint64_t a2, const WTF::StringImpl *a3)
{
  v3 = *a1;
  if (!*a1)
  {
    return 0;
  }

  v5 = *(a2 + 16);
  if (v5 == -1 || !v5)
  {
    __break(0xC471u);
    JUMPOUT(0x19DDAB1E4);
  }

  v7 = 0;
  v8 = *(v3 - 8);
  for (i = *(a2 + 32); ; i = v7 + v10)
  {
    v10 = i & v8;
    v11 = v3 + 80 * (i & v8);
    v12 = *(v11 + 16);
    if (v12 == -1)
    {
      goto LABEL_8;
    }

    if (!v12)
    {
      break;
    }

    if (WebKit::NetworkCache::Key::operator==(v3 + 80 * v10, a2, a3))
    {
      return v11;
    }

LABEL_8:
    ++v7;
  }

  if (*a1)
  {
    return *a1 + 80 * *(*a1 - 4);
  }

  else
  {
    return 0;
  }
}

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkCache::SpeculativeLoadManager::retrieve(WebKit::NetworkCache::Key const&,WTF::Function<void ()(std::unique_ptr<WebKit::NetworkCache::Entry>)> &&)::$_1,void>::~CallableWrapper(uint64_t a1)
{
  *a1 = &unk_1F1108F38;
  std::unique_ptr<WebKit::NetworkCache::Entry>::reset[abi:sn200100]((a1 + 16), 0);
  v2 = *(a1 + 8);
  *(a1 + 8) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

{
  *a1 = &unk_1F1108F38;
  std::unique_ptr<WebKit::NetworkCache::Entry>::reset[abi:sn200100]((a1 + 16), 0);
  v3 = *(a1 + 8);
  *(a1 + 8) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(a1, v2);
}

WebKit::NetworkCache::Entry *WebKit::NetworkCache::SpeculativeLoadManager::retrieve(WebKit::NetworkCache::Key const&,WTF::Function<void ()(std::unique_ptr<WebKit::NetworkCache::Entry>)> &&)::$_1::operator()(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  a1[1] = 0;
  v7 = v2;
  WTF::Function<void ()(std::unique_ptr<WebKit::NetworkCache::Entry>)>::operator()(v1, &v7);
  result = v7;
  if (v7)
  {
    WebKit::NetworkCache::Entry::~Entry(v7, v3);

    return bmalloc::api::tzoneFree(v5, v6);
  }

  return result;
}

uint64_t WTF::HashTable<WebKit::NetworkCache::Key,WTF::KeyValuePair<WebKit::NetworkCache::Key,std::unique_ptr<WTF::Vector<WTF::Function<void ()(std::unique_ptr<WebKit::NetworkCache::Entry>)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebKit::NetworkCache::Key,std::unique_ptr<WTF::Vector<WTF::Function<void ()(std::unique_ptr<WebKit::NetworkCache::Entry>)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>>,WTF::DefaultHash<WebKit::NetworkCache::Key>,WTF::HashMap<WebKit::NetworkCache::Key,std::unique_ptr<WTF::Vector<WTF::Function<void ()(std::unique_ptr<WebKit::NetworkCache::Entry>)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::DefaultHash<WebKit::NetworkCache::Key>,WTF::HashTraits<WebKit::NetworkCache::Key>,WTF::HashTraits<std::unique_ptr<WTF::Vector<WTF::Function<void ()(std::unique_ptr<WebKit::NetworkCache::Entry>)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebKit::NetworkCache::Key>,WTF::FastMalloc>::expand(uint64_t *a1, uint64_t a2)
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

  return WTF::HashTable<WebKit::NetworkCache::Key,WTF::KeyValuePair<WebKit::NetworkCache::Key,std::unique_ptr<WTF::Vector<WTF::Function<void ()(std::unique_ptr<WebKit::NetworkCache::Entry>)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebKit::NetworkCache::Key,std::unique_ptr<WTF::Vector<WTF::Function<void ()(std::unique_ptr<WebKit::NetworkCache::Entry>)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>>,WTF::DefaultHash<WebKit::NetworkCache::Key>,WTF::HashMap<WebKit::NetworkCache::Key,std::unique_ptr<WTF::Vector<WTF::Function<void ()(std::unique_ptr<WebKit::NetworkCache::Entry>)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::DefaultHash<WebKit::NetworkCache::Key>,WTF::HashTraits<WebKit::NetworkCache::Key>,WTF::HashTraits<std::unique_ptr<WTF::Vector<WTF::Function<void ()(std::unique_ptr<WebKit::NetworkCache::Entry>)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebKit::NetworkCache::Key>,WTF::FastMalloc>::rehash(a1, v4, a2);
}

uint64_t WTF::HashTable<WebKit::NetworkCache::Key,WTF::KeyValuePair<WebKit::NetworkCache::Key,std::unique_ptr<WTF::Vector<WTF::Function<void ()(std::unique_ptr<WebKit::NetworkCache::Entry>)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebKit::NetworkCache::Key,std::unique_ptr<WTF::Vector<WTF::Function<void ()(std::unique_ptr<WebKit::NetworkCache::Entry>)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>>,WTF::DefaultHash<WebKit::NetworkCache::Key>,WTF::HashMap<WebKit::NetworkCache::Key,std::unique_ptr<WTF::Vector<WTF::Function<void ()(std::unique_ptr<WebKit::NetworkCache::Entry>)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::DefaultHash<WebKit::NetworkCache::Key>,WTF::HashTraits<WebKit::NetworkCache::Key>,WTF::HashTraits<std::unique_ptr<WTF::Vector<WTF::Function<void ()(std::unique_ptr<WebKit::NetworkCache::Entry>)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebKit::NetworkCache::Key>,WTF::FastMalloc>::rehash(uint64_t *a1, unsigned int a2, uint64_t a3)
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

  v8 = WTF::fastMalloc((80 * a2 + 16));
  if (a2)
  {
    v10 = a2;
    v11 = v8 + 22;
    do
    {
      *(v11 - 7) = 0uLL;
      *(v11 - 9) = 0uLL;
      *v11 = 0;
      v11 += 10;
      --v10;
    }

    while (v10);
  }

  *a1 = (v8 + 4);
  v8[2] = a2 - 1;
  v8[3] = a2;
  *v8 = 0;
  v8[1] = v7;
  if (v6)
  {
    v12 = 0;
    v13 = 0;
    do
    {
      v14 = v5 + 80 * v12;
      v15 = *(v14 + 16);
      if (v15 != -1)
      {
        if (v15)
        {
          v20 = *a1;
          if (*a1)
          {
            v21 = *(v20 - 8);
          }

          else
          {
            v21 = 0;
          }

          v22 = 0;
          v23 = *(v14 + 32);
          do
          {
            v24 = v23 & v21;
            v25 = v20 + 80 * v24;
            v23 = ++v22 + v24;
          }

          while (*(v25 + 16));
          std::unique_ptr<WTF::Vector<WTF::Function<void ()(std::unique_ptr<WebKit::NetworkCache::Entry>)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>::reset[abi:sn200100]((v25 + 72), 0);
          v27 = *(v25 + 24);
          *(v25 + 24) = 0;
          if (v27 && atomic_fetch_add_explicit(v27, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v27, v26);
          }

          v28 = *(v25 + 16);
          *(v25 + 16) = 0;
          if (v28 && atomic_fetch_add_explicit(v28, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v28, v26);
          }

          v29 = *(v25 + 8);
          *(v25 + 8) = 0;
          if (v29 && atomic_fetch_add_explicit(v29, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v29, v26);
          }

          v30 = *v25;
          *v25 = 0;
          if (v30 && atomic_fetch_add_explicit(v30, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v30, v26);
          }

          v31 = *v14;
          *v14 = 0;
          *v25 = v31;
          v32 = *(v14 + 8);
          *(v14 + 8) = 0;
          *(v25 + 8) = v32;
          v33 = *(v14 + 16);
          *(v14 + 16) = 0;
          *(v25 + 16) = v33;
          v34 = *(v14 + 24);
          *(v14 + 24) = 0;
          *(v25 + 24) = v34;
          v35 = *(v14 + 32);
          v36 = *(v14 + 48);
          *(v25 + 64) = *(v14 + 64);
          *(v25 + 32) = v35;
          *(v25 + 48) = v36;
          v37 = *(v14 + 72);
          *(v14 + 72) = 0;
          *(v25 + 72) = v37;
          std::unique_ptr<WTF::Vector<WTF::Function<void ()(std::unique_ptr<WebKit::NetworkCache::Entry>)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>::reset[abi:sn200100]((v14 + 72), 0);
          v38 = *(v14 + 24);
          *(v14 + 24) = 0;
          if (v38 && atomic_fetch_add_explicit(v38, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v38, v9);
          }

          v39 = *(v14 + 16);
          *(v14 + 16) = 0;
          if (v39 && atomic_fetch_add_explicit(v39, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v39, v9);
          }

          v40 = *(v14 + 8);
          *(v14 + 8) = 0;
          if (v40 && atomic_fetch_add_explicit(v40, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v40, v9);
          }

          v41 = *v14;
          *v14 = 0;
          if (v41 && atomic_fetch_add_explicit(v41, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v41, v9);
          }

          if (v14 == a3)
          {
            v13 = v25;
          }
        }

        else
        {
          std::unique_ptr<WTF::Vector<WTF::Function<void ()(std::unique_ptr<WebKit::NetworkCache::Entry>)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>::reset[abi:sn200100]((v14 + 72), 0);
          v16 = *(v14 + 24);
          *(v14 + 24) = 0;
          if (v16 && atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v16, v9);
          }

          v17 = *(v14 + 16);
          *(v14 + 16) = 0;
          if (v17 && atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v17, v9);
          }

          v18 = *(v14 + 8);
          *(v14 + 8) = 0;
          if (v18 && atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v18, v9);
          }

          v19 = *v14;
          *v14 = 0;
          if (v19)
          {
            if (atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v19, v9);
            }
          }
        }
      }

      ++v12;
    }

    while (v12 != v6);
  }

  else
  {
    v13 = 0;
    result = 0;
    if (!v5)
    {
      return result;
    }
  }

  WTF::fastFree((v5 - 16), v9);
  return v13;
}

uint64_t *WTF::Vector<WTF::Function<void ()(std::unique_ptr<WebKit::NetworkCache::Entry>)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::Function<void ()(std::unique_ptr<WebKit::NetworkCache::Entry>)>>(unsigned int *a1, unint64_t a2)
{
  result = WTF::Vector<WTF::Function<void ()(std::unique_ptr<WebKit::NetworkCache::Entry>)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(a1, a1[3] + 1, a2);
  v4 = a1[3];
  v5 = *a1;
  v6 = *result;
  *result = 0;
  *(v5 + 8 * v4) = v6;
  a1[3] = v4 + 1;
  return result;
}

unint64_t WTF::Vector<WTF::Function<void ()(std::unique_ptr<WebKit::NetworkCache::Entry>)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(unsigned int *a1, unint64_t a2, unint64_t a3)
{
  v3 = a3;
  v5 = *a1;
  if (*a1 > a3 || v5 + 8 * a1[3] <= a3)
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

    WTF::Vector<WTF::Function<void ()(std::unique_ptr<WebKit::NetworkCache::Entry>)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v12);
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

    WTF::Vector<WTF::Function<void ()(std::unique_ptr<WebKit::NetworkCache::Entry>)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v9);
    return *a1 + v6;
  }

  return v3;
}

unsigned int *WTF::Vector<WTF::Function<void ()(std::unique_ptr<WebKit::NetworkCache::Entry>)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(unsigned int *result, unint64_t a2)
{
  if (result[2] < a2)
  {
    v2 = a2;
    if (a2 >> 29)
    {
      __break(0xC471u);
    }

    else
    {
      v3 = result;
      v4 = *result;
      v5 = result[3];
      result = WTF::fastMalloc((8 * a2));
      v3[2] = v2;
      *v3 = result;
      if (v5)
      {
        v7 = result;
        v8 = 8 * v5;
        v9 = v4;
        do
        {
          v10 = *v9;
          *v9 = 0;
          *v7 = v10;
          result = *v9;
          *v9 = 0;
          if (result)
          {
            result = (*(*result + 8))(result);
          }

          v7 += 2;
          ++v9;
          v8 -= 8;
        }

        while (v8);
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

uint64_t WTF::HashMap<WebKit::NetworkCache::GlobalFrameID,WTF::RefPtr<WebKit::NetworkCache::SpeculativeLoadManager::PendingFrameLoad,WTF::RawPtrTraits<WebKit::NetworkCache::SpeculativeLoadManager::PendingFrameLoad>,WTF::DefaultRefDerefTraits<WebKit::NetworkCache::SpeculativeLoadManager::PendingFrameLoad>>,WTF::DefaultHash<WebKit::NetworkCache::GlobalFrameID>,WTF::HashTraits<WebKit::NetworkCache::GlobalFrameID>,WTF::HashTraits<WTF::RefPtr<WebKit::NetworkCache::SpeculativeLoadManager::PendingFrameLoad,WTF::RawPtrTraits<WebKit::NetworkCache::SpeculativeLoadManager::PendingFrameLoad>,WTF::DefaultRefDerefTraits<WebKit::NetworkCache::SpeculativeLoadManager::PendingFrameLoad>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WebKit::NetworkCache::GlobalFrameID,WTF::RefPtr<WebKit::NetworkCache::SpeculativeLoadManager::PendingFrameLoad,WTF::RawPtrTraits<WebKit::NetworkCache::SpeculativeLoadManager::PendingFrameLoad>,WTF::DefaultRefDerefTraits<WebKit::NetworkCache::SpeculativeLoadManager::PendingFrameLoad>>,WTF::DefaultHash<WebKit::NetworkCache::GlobalFrameID>,WTF::HashTraits<WebKit::NetworkCache::GlobalFrameID>,WTF::HashTraits<WTF::RefPtr<WebKit::NetworkCache::SpeculativeLoadManager::PendingFrameLoad,WTF::RawPtrTraits<WebKit::NetworkCache::SpeculativeLoadManager::PendingFrameLoad>,WTF::DefaultRefDerefTraits<WebKit::NetworkCache::SpeculativeLoadManager::PendingFrameLoad>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WebKit::NetworkCache::GlobalFrameID>>,WebKit::NetworkCache::GlobalFrameID>(uint64_t *a1, uint64_t a2)
{
  v2 = (a2 + 8);
  v3 = (a2 + 16);
  if (*(a2 + 8) == 0 || *(a2 + 8) == -1)
  {
    __break(0xC471u);
    JUMPOUT(0x19DDAB9B4);
  }

  v4 = *a1;
  if (*a1)
  {
    v5 = *(v4 - 8);
    v17 = -1640531527;
    v18 = 0;
    v19 = 0;
    WTF::add<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PortIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(&v17, (a2 + 8), v3);
    v6 = WTF::SuperFastHash::hash(&v17);
    v7 = *v3;
    v8 = v6 & v5;
    v9 = v4 + 32 * v8;
    v10 = *(v9 + 8);
    v11 = *(v9 + 16);
    if (v10 == *v2 && v11 == v7)
    {
      return *(v4 + 32 * v8 + 24);
    }

    v13 = 1;
    while (v10 | v11)
    {
      v8 = (v8 + v13) & v5;
      v14 = v4 + 32 * v8;
      v10 = *(v14 + 8);
      v11 = *(v14 + 16);
      ++v13;
      if (v10 == *v2 && v11 == v7)
      {
        return *(v4 + 32 * v8 + 24);
      }
    }
  }

  return 0;
}

uint64_t WTF::IdentityHashTranslator<WTF::HashMap<WebKit::NetworkCache::GlobalFrameID,WTF::RefPtr<WebKit::NetworkCache::SpeculativeLoadManager::PendingFrameLoad,WTF::RawPtrTraits<WebKit::NetworkCache::SpeculativeLoadManager::PendingFrameLoad>,WTF::DefaultRefDerefTraits<WebKit::NetworkCache::SpeculativeLoadManager::PendingFrameLoad>>,WTF::DefaultHash<WebKit::NetworkCache::GlobalFrameID>,WTF::HashTraits<WebKit::NetworkCache::GlobalFrameID>,WTF::HashTraits<WTF::RefPtr<WebKit::NetworkCache::SpeculativeLoadManager::PendingFrameLoad,WTF::RawPtrTraits<WebKit::NetworkCache::SpeculativeLoadManager::PendingFrameLoad>,WTF::DefaultRefDerefTraits<WebKit::NetworkCache::SpeculativeLoadManager::PendingFrameLoad>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WebKit::NetworkCache::GlobalFrameID>>::hash<WebKit::NetworkCache::GlobalFrameID>(uint64_t a1)
{
  v2 = -1640531527;
  v3 = 0;
  v4 = 0;
  WTF::add<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PortIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(&v2, (a1 + 8), (a1 + 16));
  return WTF::SuperFastHash::hash(&v2);
}

void *WTF::Detail::CallableWrapper<WebKit::NetworkCache::SpeculativeLoadManager::registerLoad(WebKit::NetworkCache::GlobalFrameID,WebCore::ResourceRequest const&,WebKit::NetworkCache::Key const&,std::optional<WebKit::NavigatingToAppBoundDomain>,BOOL,WTF::OptionSet<WebCore::AdvancedPrivacyProtections>)::$_0,void>::~CallableWrapper(void *a1, void *a2)
{
  v3 = a1[1];
  *a1 = &unk_1F1108F60;
  a1[1] = 0;
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    WTF::fastFree(v3, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkCache::SpeculativeLoadManager::registerLoad(WebKit::NetworkCache::GlobalFrameID,WebCore::ResourceRequest const&,WebKit::NetworkCache::Key const&,std::optional<WebKit::NavigatingToAppBoundDomain>,BOOL,WTF::OptionSet<WebCore::AdvancedPrivacyProtections>)::$_0,void>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1108F60;
  *(this + 1) = 0;
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    WTF::fastFree(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

void WTF::Detail::CallableWrapper<WebKit::NetworkCache::SpeculativeLoadManager::registerLoad(WebKit::NetworkCache::GlobalFrameID,WebCore::ResourceRequest const&,WebKit::NetworkCache::Key const&,std::optional<WebKit::NavigatingToAppBoundDomain>,BOOL,WTF::OptionSet<WebCore::AdvancedPrivacyProtections>)::$_0,void>::call(void *a1)
{
  v1 = a1[1];
  if (v1)
  {
    v2 = *(v1 + 8);
    if (v2)
    {
      v3 = (v2 + 40);
      v4 = *(v2 + 40);
      v5 = *(v2 + 8) + 1;
      *(v2 + 8) = v5;
      if (!v4)
      {
LABEL_28:
        if (v5)
        {
          *(v2 + 8) = v5 - 1;
          return;
        }

        __break(0xC471u);
LABEL_36:
        JUMPOUT(0x19DDABCB4);
      }

      v6 = a1 + 3;
      v7 = a1 + 4;
      if (*(a1 + 3) == 0)
      {
        __break(0xC471u);
        JUMPOUT(0x19DDABCD4);
      }

      if (a1[3] == -1)
      {
        __break(0xC471u);
        goto LABEL_36;
      }

      v8 = *(v4 - 8);
      v25 = -1640531527;
      v26 = 0;
      v27 = 0;
      WTF::add<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PortIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(&v25, v6, v7);
      v9 = WTF::SuperFastHash::hash(&v25);
      v11 = *v7;
      v12 = v9 & v8;
      v13 = (v4 + 32 * v12);
      v14 = v13[1];
      v15 = v13[2];
      if (v14 == *v6 && v15 == v11)
      {
LABEL_17:
        v19 = *v3;
        if (!*v3)
        {
          goto LABEL_19;
        }
      }

      else
      {
        v17 = 1;
        while (v14 | v15)
        {
          v12 = (v12 + v17) & v8;
          v13 = (v4 + 32 * v12);
          v14 = v13[1];
          v15 = v13[2];
          ++v17;
          if (v14 == *v6 && v15 == v11)
          {
            goto LABEL_17;
          }
        }

        v19 = *v3;
        if (!*v3)
        {
          goto LABEL_27;
        }

        v13 = &v19[4 * *(v19 - 1)];
      }

      v19 += 4 * *(v19 - 1);
      if (v19 == v13)
      {
LABEL_27:
        v5 = *(v2 + 8);
        goto LABEL_28;
      }

LABEL_19:
      if (v19 != v13)
      {
        v13[1] = -1;
        v20 = v13[3];
        v13[3] = 0;
        if (v20)
        {
          WTF::RefCounted<WebKit::NetworkCache::SpeculativeLoadManager::PendingFrameLoad>::deref(v20, v10);
        }

        v21 = *v3;
        v22 = vadd_s32(*(*v3 - 16), 0xFFFFFFFF00000001);
        *(v21 - 2) = v22;
        v23 = *(v21 - 1);
        if (6 * v22.i32[1] < v23 && v23 >= 9)
        {
          WTF::HashTable<WebKit::NetworkCache::GlobalFrameID,WTF::KeyValuePair<WebKit::NetworkCache::GlobalFrameID,WTF::RefPtr<WebKit::NetworkCache::SpeculativeLoadManager::PendingFrameLoad,WTF::RawPtrTraits<WebKit::NetworkCache::SpeculativeLoadManager::PendingFrameLoad>,WTF::DefaultRefDerefTraits<WebKit::NetworkCache::SpeculativeLoadManager::PendingFrameLoad>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebKit::NetworkCache::GlobalFrameID,WTF::RefPtr<WebKit::NetworkCache::SpeculativeLoadManager::PendingFrameLoad,WTF::RawPtrTraits<WebKit::NetworkCache::SpeculativeLoadManager::PendingFrameLoad>,WTF::DefaultRefDerefTraits<WebKit::NetworkCache::SpeculativeLoadManager::PendingFrameLoad>>>>,WTF::DefaultHash<WebKit::NetworkCache::GlobalFrameID>,WTF::HashMap<WebKit::NetworkCache::GlobalFrameID,WTF::RefPtr<WebKit::NetworkCache::SpeculativeLoadManager::PendingFrameLoad,WTF::RawPtrTraits<WebKit::NetworkCache::SpeculativeLoadManager::PendingFrameLoad>,WTF::DefaultRefDerefTraits<WebKit::NetworkCache::SpeculativeLoadManager::PendingFrameLoad>>,WTF::DefaultHash<WebKit::NetworkCache::GlobalFrameID>,WTF::HashTraits<WebKit::NetworkCache::GlobalFrameID>,WTF::HashTraits<WTF::RefPtr<WebKit::NetworkCache::SpeculativeLoadManager::PendingFrameLoad,WTF::RawPtrTraits<WebKit::NetworkCache::SpeculativeLoadManager::PendingFrameLoad>,WTF::DefaultRefDerefTraits<WebKit::NetworkCache::SpeculativeLoadManager::PendingFrameLoad>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebKit::NetworkCache::GlobalFrameID>,WTF::FastMalloc>::rehash((v2 + 40), v23 >> 1);
        }
      }

      goto LABEL_27;
    }
  }
}

void WTF::HashTable<WebKit::NetworkCache::GlobalFrameID,WTF::KeyValuePair<WebKit::NetworkCache::GlobalFrameID,WTF::RefPtr<WebKit::NetworkCache::SpeculativeLoadManager::PendingFrameLoad,WTF::RawPtrTraits<WebKit::NetworkCache::SpeculativeLoadManager::PendingFrameLoad>,WTF::DefaultRefDerefTraits<WebKit::NetworkCache::SpeculativeLoadManager::PendingFrameLoad>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebKit::NetworkCache::GlobalFrameID,WTF::RefPtr<WebKit::NetworkCache::SpeculativeLoadManager::PendingFrameLoad,WTF::RawPtrTraits<WebKit::NetworkCache::SpeculativeLoadManager::PendingFrameLoad>,WTF::DefaultRefDerefTraits<WebKit::NetworkCache::SpeculativeLoadManager::PendingFrameLoad>>>>,WTF::DefaultHash<WebKit::NetworkCache::GlobalFrameID>,WTF::HashMap<WebKit::NetworkCache::GlobalFrameID,WTF::RefPtr<WebKit::NetworkCache::SpeculativeLoadManager::PendingFrameLoad,WTF::RawPtrTraits<WebKit::NetworkCache::SpeculativeLoadManager::PendingFrameLoad>,WTF::DefaultRefDerefTraits<WebKit::NetworkCache::SpeculativeLoadManager::PendingFrameLoad>>,WTF::DefaultHash<WebKit::NetworkCache::GlobalFrameID>,WTF::HashTraits<WebKit::NetworkCache::GlobalFrameID>,WTF::HashTraits<WTF::RefPtr<WebKit::NetworkCache::SpeculativeLoadManager::PendingFrameLoad,WTF::RawPtrTraits<WebKit::NetworkCache::SpeculativeLoadManager::PendingFrameLoad>,WTF::DefaultRefDerefTraits<WebKit::NetworkCache::SpeculativeLoadManager::PendingFrameLoad>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebKit::NetworkCache::GlobalFrameID>,WTF::FastMalloc>::rehash(uint64_t *a1, unsigned int a2)
{
  v4 = *a1;
  if (*a1)
  {
    LODWORD(v5) = *(v4 - 4);
    v6 = *(v4 - 12);
  }

  else
  {
    LODWORD(v5) = 0;
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
    v5 = v5;
    v11 = v4;
    while (1)
    {
      if (*(v11 + 8) != -1)
      {
        if (*(v11 + 8) == 0)
        {
          v12 = *(v11 + 24);
          *(v11 + 24) = 0;
          if (v12)
          {
            goto LABEL_14;
          }
        }

        else
        {
          WTF::HashTable<WebKit::NetworkCache::GlobalFrameID,WTF::KeyValuePair<WebKit::NetworkCache::GlobalFrameID,WTF::RefPtr<WebKit::NetworkCache::SpeculativeLoadManager::PendingFrameLoad,WTF::RawPtrTraits<WebKit::NetworkCache::SpeculativeLoadManager::PendingFrameLoad>,WTF::DefaultRefDerefTraits<WebKit::NetworkCache::SpeculativeLoadManager::PendingFrameLoad>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebKit::NetworkCache::GlobalFrameID,WTF::RefPtr<WebKit::NetworkCache::SpeculativeLoadManager::PendingFrameLoad,WTF::RawPtrTraits<WebKit::NetworkCache::SpeculativeLoadManager::PendingFrameLoad>,WTF::DefaultRefDerefTraits<WebKit::NetworkCache::SpeculativeLoadManager::PendingFrameLoad>>>>,WTF::DefaultHash<WebKit::NetworkCache::GlobalFrameID>,WTF::HashMap<WebKit::NetworkCache::GlobalFrameID,WTF::RefPtr<WebKit::NetworkCache::SpeculativeLoadManager::PendingFrameLoad,WTF::RawPtrTraits<WebKit::NetworkCache::SpeculativeLoadManager::PendingFrameLoad>,WTF::DefaultRefDerefTraits<WebKit::NetworkCache::SpeculativeLoadManager::PendingFrameLoad>>,WTF::DefaultHash<WebKit::NetworkCache::GlobalFrameID>,WTF::HashTraits<WebKit::NetworkCache::GlobalFrameID>,WTF::HashTraits<WTF::RefPtr<WebKit::NetworkCache::SpeculativeLoadManager::PendingFrameLoad,WTF::RawPtrTraits<WebKit::NetworkCache::SpeculativeLoadManager::PendingFrameLoad>,WTF::DefaultRefDerefTraits<WebKit::NetworkCache::SpeculativeLoadManager::PendingFrameLoad>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebKit::NetworkCache::GlobalFrameID>,WTF::FastMalloc>::reinsert(*a1, v11);
          v12 = *(v11 + 24);
          *(v11 + 24) = 0;
          if (v12)
          {
LABEL_14:
            WTF::RefCounted<WebKit::NetworkCache::SpeculativeLoadManager::PendingFrameLoad>::deref(v12, v8);
          }
        }
      }

      v11 += 32;
      if (!--v5)
      {
        goto LABEL_16;
      }
    }
  }

  if (v4)
  {
LABEL_16:

    WTF::fastFree((v4 - 16), v8);
  }
}

uint64_t WTF::HashTable<WebKit::NetworkCache::GlobalFrameID,WTF::KeyValuePair<WebKit::NetworkCache::GlobalFrameID,WTF::RefPtr<WebKit::NetworkCache::SpeculativeLoadManager::PendingFrameLoad,WTF::RawPtrTraits<WebKit::NetworkCache::SpeculativeLoadManager::PendingFrameLoad>,WTF::DefaultRefDerefTraits<WebKit::NetworkCache::SpeculativeLoadManager::PendingFrameLoad>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebKit::NetworkCache::GlobalFrameID,WTF::RefPtr<WebKit::NetworkCache::SpeculativeLoadManager::PendingFrameLoad,WTF::RawPtrTraits<WebKit::NetworkCache::SpeculativeLoadManager::PendingFrameLoad>,WTF::DefaultRefDerefTraits<WebKit::NetworkCache::SpeculativeLoadManager::PendingFrameLoad>>>>,WTF::DefaultHash<WebKit::NetworkCache::GlobalFrameID>,WTF::HashMap<WebKit::NetworkCache::GlobalFrameID,WTF::RefPtr<WebKit::NetworkCache::SpeculativeLoadManager::PendingFrameLoad,WTF::RawPtrTraits<WebKit::NetworkCache::SpeculativeLoadManager::PendingFrameLoad>,WTF::DefaultRefDerefTraits<WebKit::NetworkCache::SpeculativeLoadManager::PendingFrameLoad>>,WTF::DefaultHash<WebKit::NetworkCache::GlobalFrameID>,WTF::HashTraits<WebKit::NetworkCache::GlobalFrameID>,WTF::HashTraits<WTF::RefPtr<WebKit::NetworkCache::SpeculativeLoadManager::PendingFrameLoad,WTF::RawPtrTraits<WebKit::NetworkCache::SpeculativeLoadManager::PendingFrameLoad>,WTF::DefaultRefDerefTraits<WebKit::NetworkCache::SpeculativeLoadManager::PendingFrameLoad>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebKit::NetworkCache::GlobalFrameID>,WTF::FastMalloc>::reinsert(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v4 = *(a1 - 8);
  }

  else
  {
    v4 = 0;
  }

  v5 = WTF::IdentityHashTranslator<WTF::HashMap<WebKit::NetworkCache::GlobalFrameID,WTF::RefPtr<WebKit::NetworkCache::SpeculativeLoadManager::PendingFrameLoad,WTF::RawPtrTraits<WebKit::NetworkCache::SpeculativeLoadManager::PendingFrameLoad>,WTF::DefaultRefDerefTraits<WebKit::NetworkCache::SpeculativeLoadManager::PendingFrameLoad>>,WTF::DefaultHash<WebKit::NetworkCache::GlobalFrameID>,WTF::HashTraits<WebKit::NetworkCache::GlobalFrameID>,WTF::HashTraits<WTF::RefPtr<WebKit::NetworkCache::SpeculativeLoadManager::PendingFrameLoad,WTF::RawPtrTraits<WebKit::NetworkCache::SpeculativeLoadManager::PendingFrameLoad>,WTF::DefaultRefDerefTraits<WebKit::NetworkCache::SpeculativeLoadManager::PendingFrameLoad>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WebKit::NetworkCache::GlobalFrameID>>::hash<WebKit::NetworkCache::GlobalFrameID>(a2);
  v7 = 0;
  do
  {
    v8 = v5 & v4;
    v9 = a1 + 32 * v8;
    v5 = ++v7 + v8;
  }

  while (*(v9 + 8) != 0);
  v10 = *(v9 + 24);
  *(v9 + 24) = 0;
  if (v10)
  {
    WTF::RefCounted<WebKit::NetworkCache::SpeculativeLoadManager::PendingFrameLoad>::deref(v10, v6);
  }

  v11 = *a2;
  *(v9 + 16) = *(a2 + 16);
  *v9 = v11;
  v12 = *(a2 + 24);
  *(a2 + 24) = 0;
  *(v9 + 24) = v12;
  return v9;
}

void WTF::HashTable<WebKit::NetworkCache::GlobalFrameID,WTF::KeyValuePair<WebKit::NetworkCache::GlobalFrameID,WTF::RefPtr<WebKit::NetworkCache::SpeculativeLoadManager::PendingFrameLoad,WTF::RawPtrTraits<WebKit::NetworkCache::SpeculativeLoadManager::PendingFrameLoad>,WTF::DefaultRefDerefTraits<WebKit::NetworkCache::SpeculativeLoadManager::PendingFrameLoad>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebKit::NetworkCache::GlobalFrameID,WTF::RefPtr<WebKit::NetworkCache::SpeculativeLoadManager::PendingFrameLoad,WTF::RawPtrTraits<WebKit::NetworkCache::SpeculativeLoadManager::PendingFrameLoad>,WTF::DefaultRefDerefTraits<WebKit::NetworkCache::SpeculativeLoadManager::PendingFrameLoad>>>>,WTF::DefaultHash<WebKit::NetworkCache::GlobalFrameID>,WTF::HashMap<WebKit::NetworkCache::GlobalFrameID,WTF::RefPtr<WebKit::NetworkCache::SpeculativeLoadManager::PendingFrameLoad,WTF::RawPtrTraits<WebKit::NetworkCache::SpeculativeLoadManager::PendingFrameLoad>,WTF::DefaultRefDerefTraits<WebKit::NetworkCache::SpeculativeLoadManager::PendingFrameLoad>>,WTF::DefaultHash<WebKit::NetworkCache::GlobalFrameID>,WTF::HashTraits<WebKit::NetworkCache::GlobalFrameID>,WTF::HashTraits<WTF::RefPtr<WebKit::NetworkCache::SpeculativeLoadManager::PendingFrameLoad,WTF::RawPtrTraits<WebKit::NetworkCache::SpeculativeLoadManager::PendingFrameLoad>,WTF::DefaultRefDerefTraits<WebKit::NetworkCache::SpeculativeLoadManager::PendingFrameLoad>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebKit::NetworkCache::GlobalFrameID>,WTF::FastMalloc>::expand(uint64_t *a1)
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

  WTF::HashTable<WebKit::NetworkCache::GlobalFrameID,WTF::KeyValuePair<WebKit::NetworkCache::GlobalFrameID,WTF::RefPtr<WebKit::NetworkCache::SpeculativeLoadManager::PendingFrameLoad,WTF::RawPtrTraits<WebKit::NetworkCache::SpeculativeLoadManager::PendingFrameLoad>,WTF::DefaultRefDerefTraits<WebKit::NetworkCache::SpeculativeLoadManager::PendingFrameLoad>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebKit::NetworkCache::GlobalFrameID,WTF::RefPtr<WebKit::NetworkCache::SpeculativeLoadManager::PendingFrameLoad,WTF::RawPtrTraits<WebKit::NetworkCache::SpeculativeLoadManager::PendingFrameLoad>,WTF::DefaultRefDerefTraits<WebKit::NetworkCache::SpeculativeLoadManager::PendingFrameLoad>>>>,WTF::DefaultHash<WebKit::NetworkCache::GlobalFrameID>,WTF::HashMap<WebKit::NetworkCache::GlobalFrameID,WTF::RefPtr<WebKit::NetworkCache::SpeculativeLoadManager::PendingFrameLoad,WTF::RawPtrTraits<WebKit::NetworkCache::SpeculativeLoadManager::PendingFrameLoad>,WTF::DefaultRefDerefTraits<WebKit::NetworkCache::SpeculativeLoadManager::PendingFrameLoad>>,WTF::DefaultHash<WebKit::NetworkCache::GlobalFrameID>,WTF::HashTraits<WebKit::NetworkCache::GlobalFrameID>,WTF::HashTraits<WTF::RefPtr<WebKit::NetworkCache::SpeculativeLoadManager::PendingFrameLoad,WTF::RawPtrTraits<WebKit::NetworkCache::SpeculativeLoadManager::PendingFrameLoad>,WTF::DefaultRefDerefTraits<WebKit::NetworkCache::SpeculativeLoadManager::PendingFrameLoad>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebKit::NetworkCache::GlobalFrameID>,WTF::FastMalloc>::rehash(a1, v3);
}

void *WTF::Detail::CallableWrapper<WebKit::NetworkCache::SpeculativeLoadManager::registerLoad(WebKit::NetworkCache::GlobalFrameID,WebCore::ResourceRequest const&,WebKit::NetworkCache::Key const&,std::optional<WebKit::NavigatingToAppBoundDomain>,BOOL,WTF::OptionSet<WebCore::AdvancedPrivacyProtections>)::$_1,void,std::unique_ptr<WebKit::NetworkCache::SubresourcesEntry>>::~CallableWrapper(void *a1, void *a2)
{
  *a1 = &unk_1F1108F88;
  v3 = a1[5];
  a1[5] = 0;
  if (v3)
  {
    WTF::RefCounted<WebKit::NetworkCache::SpeculativeLoadManager::PendingFrameLoad>::deref(v3, a2);
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

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkCache::SpeculativeLoadManager::registerLoad(WebKit::NetworkCache::GlobalFrameID,WebCore::ResourceRequest const&,WebKit::NetworkCache::Key const&,std::optional<WebKit::NavigatingToAppBoundDomain>,BOOL,WTF::OptionSet<WebCore::AdvancedPrivacyProtections>)::$_1,void,std::unique_ptr<WebKit::NetworkCache::SubresourcesEntry>>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F1108F88;
  v3 = *(this + 5);
  *(this + 5) = 0;
  if (v3)
  {
    WTF::RefCounted<WebKit::NetworkCache::SpeculativeLoadManager::PendingFrameLoad>::deref(v3, a2);
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

WTF::StringImpl ***WTF::Detail::CallableWrapper<WebKit::NetworkCache::SpeculativeLoadManager::registerLoad(WebKit::NetworkCache::GlobalFrameID,WebCore::ResourceRequest const&,WebKit::NetworkCache::Key const&,std::optional<WebKit::NavigatingToAppBoundDomain>,BOOL,WTF::OptionSet<WebCore::AdvancedPrivacyProtections>)::$_1,void,std::unique_ptr<WebKit::NetworkCache::SubresourcesEntry>>::call(uint64_t a1, uint64_t *a2, const WTF::StringImpl *a3)
{
  v73 = *MEMORY[0x1E69E9840];
  v3 = *a2;
  *a2 = 0;
  v58 = v3;
  v4 = *(a1 + 8);
  if (v4)
  {
    v5 = *(v4 + 8);
    if (v5)
    {
      ++*(v5 + 8);
      if (v3)
      {
        v7 = *(v3 + 92);
        if (v7)
        {
          v54 = *(a1 + 52);
          v55 = *(a1 + 49);
          v8 = *(v3 + 80);
          v9 = v8 + 176 * v7;
          v52 = *(a1 + 51);
          v57 = *(a1 + 48);
          v56 = v3;
          v53 = v9;
          while (1)
          {
            *(v8 + 90) = v57;
            if ((*(v8 + 88) & 1) == 0)
            {
              break;
            }

            WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(v5, v5);
            v50 = *v5;
            atomic_fetch_add(*v5, 1u);
            v61 = v50;
            WebKit::NetworkCache::Key::Key(v62, v8);
            v63 = *(a1 + 16);
            v64 = *(a1 + 32);
            std::make_unique[abi:sn200100]<WebKit::NetworkCache::SpeculativeLoadManager::ExpiringEntry,WebKit::NetworkCache::SpeculativeLoadManager::startSpeculativeRevalidation(WebKit::NetworkCache::GlobalFrameID const&,WebKit::NetworkCache::SubresourcesEntry &,BOOL,std::optional<WebKit::NavigatingToAppBoundDomain>,BOOL,WTF::OptionSet<WebCore::AdvancedPrivacyProtections>)::$_0,0>(&v60, &v61);
            WTF::HashMap<WebKit::NetworkCache::Key,std::unique_ptr<WebKit::NetworkCache::SpeculativeLoadManager::ExpiringEntry>,WTF::DefaultHash<WebKit::NetworkCache::Key>,WTF::HashTraits<WebKit::NetworkCache::Key>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkCache::SpeculativeLoadManager::ExpiringEntry>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<std::unique_ptr<WebKit::NetworkCache::SpeculativeLoadManager::ExpiringEntry>>(v59, (v5 + 72), v8, &v60);
            std::unique_ptr<WebKit::NetworkCache::SpeculativeLoadManager::ExpiringEntry>::reset[abi:sn200100](&v60, 0);
            WebKit::NetworkCache::SpeculativeLoadManager::startSpeculativeRevalidation(WebKit::NetworkCache::GlobalFrameID const&,WebKit::NetworkCache::SubresourcesEntry &,BOOL,std::optional<WebKit::NavigatingToAppBoundDomain>,BOOL,WTF::OptionSet<WebCore::AdvancedPrivacyProtections>)::$_0::~$_0(&v61, v51);
LABEL_43:
            v8 += 176;
            if (v8 == v9)
            {
              goto LABEL_47;
            }
          }

          v10 = *(v5 + 48);
          if (v10)
          {
            v11 = *(v8 + 16);
            if (v11 == -1)
            {
              goto LABEL_62;
            }

            if (!v11)
            {
              __break(0xC471u);
              JUMPOUT(0x19DDAC5BCLL);
            }

            v12 = 0;
            v13 = *(v10 - 8);
            for (i = *(v8 + 32); ; i = v12 + v15)
            {
              v15 = i & v13;
              v16 = v10 + 80 * (i & v13);
              v17 = *(v16 + 16);
              if (!v17)
              {
                break;
              }

              if (v17 != -1 && (WebKit::NetworkCache::Key::operator==(v16, v8, a3) & 1) != 0)
              {
                goto LABEL_43;
              }

              ++v12;
            }
          }

          v18 = *(v8 + 16);
          if (v18 == -1)
          {
            __break(0xC471u);
            JUMPOUT(0x19DDAC5DCLL);
          }

          if (!v18)
          {
            __break(0xC471u);
            JUMPOUT(0x19DDAC5FCLL);
          }

          v19 = *(v5 + 48);
          if (v19 || (WTF::HashTable<WebKit::NetworkCache::Key,WTF::KeyValuePair<WebKit::NetworkCache::Key,WTF::RefPtr<WebKit::NetworkCache::SpeculativeLoad,WTF::RawPtrTraits<WebKit::NetworkCache::SpeculativeLoad>,WTF::DefaultRefDerefTraits<WebKit::NetworkCache::SpeculativeLoad>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebKit::NetworkCache::Key,WTF::RefPtr<WebKit::NetworkCache::SpeculativeLoad,WTF::RawPtrTraits<WebKit::NetworkCache::SpeculativeLoad>,WTF::DefaultRefDerefTraits<WebKit::NetworkCache::SpeculativeLoad>>>>,WTF::DefaultHash<WebKit::NetworkCache::Key>,WTF::HashMap<WebKit::NetworkCache::Key,WTF::RefPtr<WebKit::NetworkCache::SpeculativeLoad,WTF::RawPtrTraits<WebKit::NetworkCache::SpeculativeLoad>,WTF::DefaultRefDerefTraits<WebKit::NetworkCache::SpeculativeLoad>>,WTF::DefaultHash<WebKit::NetworkCache::Key>,WTF::HashTraits<WebKit::NetworkCache::Key>,WTF::HashTraits<WTF::RefPtr<WebKit::NetworkCache::SpeculativeLoad,WTF::RawPtrTraits<WebKit::NetworkCache::SpeculativeLoad>,WTF::DefaultRefDerefTraits<WebKit::NetworkCache::SpeculativeLoad>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebKit::NetworkCache::Key>,WTF::FastMalloc>::expand((v5 + 48)), (v19 = *(v5 + 48)) != 0))
          {
            v20 = *(v19 - 8);
          }

          else
          {
            v20 = 0;
          }

          v21 = 0;
          v22 = *(v8 + 32);
          for (j = 1; ; ++j)
          {
            v24 = v22 & v20;
            v25 = v19 + 80 * (v22 & v20);
            v26 = *(v25 + 16);
            if (!v26)
            {
              break;
            }

            if (v26 == -1)
            {
              v21 = v19 + 80 * v24;
            }

            else if (WebKit::NetworkCache::Key::operator==(v19 + 80 * v24, v8, a3))
            {
              goto LABEL_32;
            }

            v22 = j + v24;
          }

          if (v21)
          {
            *v21 = 0u;
            *(v21 + 16) = 0u;
            *(v21 + 72) = 0;
            --*(*(v5 + 48) - 16);
            v25 = v21;
          }

          WebKit::NetworkCache::Key::operator=(v25, v8);
          v27 = *(v25 + 72);
          *(v25 + 72) = 0;
          if (v27)
          {
            if (v27[5] == 1)
            {
              (*(*v27 + 24))(v27);
            }

            else
            {
              --v27[5];
            }
          }

          v28 = *(v5 + 48);
          if (v28)
          {
            v29 = *(v28 - 12) + 1;
          }

          else
          {
            v29 = 1;
          }

          *(v28 - 12) = v29;
          v30 = (*(v28 - 16) + v29);
          v31 = *(v28 - 4);
          if (v31 > 0x400)
          {
            if (v31 > 2 * v30)
            {
              goto LABEL_32;
            }
          }

          else if (3 * v31 > 4 * v30)
          {
LABEL_32:
            WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(v5, v5);
            v32 = *v5;
            atomic_fetch_add(*v5, 1u);
            v61 = v32;
            WebKit::NetworkCache::Key::Key(v62, v8);
            WebKit::NetworkCache::Key::Key(&v63, v8);
            v33 = *(v8 + 72);
            *&v65[15] = *(v8 + 87);
            *v65 = v33;
            v34 = *(v8 + 96);
            v3 = v56;
            v9 = v53;
            if (v34)
            {
              atomic_fetch_add_explicit(v34, 2u, memory_order_relaxed);
            }

            v66 = v34;
            v35 = *(v8 + 104);
            v68 = *(v8 + 120);
            v67 = v35;
            WTF::Vector<WebCore::HTTPHeaderMap::CommonHeader,0ul,WTF::CrashOnOverflow,6ul,WTF::FastMalloc>::Vector(v69, v8 + 136);
            WTF::Vector<WebCore::HTTPHeaderMap::UncommonHeader,0ul,WTF::CrashOnOverflow,0ul,WTF::FastMalloc>::Vector(v70, v8 + 152);
            v71 = *(v8 + 168);
            *v72 = *(a1 + 16);
            *&v72[16] = *(a1 + 32);
            *&v72[24] = v55;
            v72[26] = v52;
            *&v72[28] = v54;
            v36 = WTF::fastMalloc(0x128);
            *v36 = &unk_1F1109028;
            v37 = v61;
            v61 = 0;
            *(v36 + 8) = v37;
            WebKit::NetworkCache::Key::Key((v36 + 16), v62);
            WebKit::NetworkCache::Key::Key((v36 + 88), &v63);
            v38 = *v65;
            *(v36 + 175) = *&v65[15];
            *(v36 + 160) = v38;
            v39 = v66;
            if (v66)
            {
              atomic_fetch_add_explicit(v66, 2u, memory_order_relaxed);
            }

            *(v36 + 184) = v39;
            v40 = v68;
            *(v36 + 192) = v67;
            *(v36 + 208) = v40;
            WTF::Vector<WebCore::HTTPHeaderMap::CommonHeader,0ul,WTF::CrashOnOverflow,6ul,WTF::FastMalloc>::Vector(v36 + 224, v69);
            WTF::Vector<WebCore::HTTPHeaderMap::UncommonHeader,0ul,WTF::CrashOnOverflow,0ul,WTF::FastMalloc>::Vector(v36 + 240, v70);
            *(v36 + 256) = v71;
            v41 = *&v72[14];
            *(v36 + 264) = *v72;
            *(v36 + 278) = v41;
            v42 = *(v5 + 32);
            if (v42)
            {
              WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::NetworkCache::Storage>(v59, v42, *(v5 + 24));
              v43 = v59[0];
            }

            else
            {
              v43 = 0;
            }

            v44 = *(v8 + 168);
            v45 = WTF::fastMalloc(0x10);
            *v45 = &unk_1F1108FB0;
            v45[1] = v36;
            v59[0] = v45;
            WebKit::NetworkCache::Storage::retrieve(v43, v8, v44, v59);
            if (v59[0])
            {
              (*(*v59[0] + 8))(v59[0]);
            }

            if (v43)
            {
              WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::NetworkCache::Storage,(WTF::DestructionThread)2>::deref(v43);
            }

            WebKit::NetworkCache::SpeculativeLoadManager::preloadEntry(WebKit::NetworkCache::Key const&,WebKit::NetworkCache::SubresourceInfo const&,WebKit::NetworkCache::GlobalFrameID const&,std::optional<WebKit::NavigatingToAppBoundDomain>,BOOL,WTF::OptionSet<WebCore::AdvancedPrivacyProtections>)::$_0::~$_0(&v61, v46);
            goto LABEL_43;
          }

          WTF::HashTable<WebKit::NetworkCache::Key,WTF::KeyValuePair<WebKit::NetworkCache::Key,WTF::RefPtr<WebKit::NetworkCache::SpeculativeLoad,WTF::RawPtrTraits<WebKit::NetworkCache::SpeculativeLoad>,WTF::DefaultRefDerefTraits<WebKit::NetworkCache::SpeculativeLoad>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebKit::NetworkCache::Key,WTF::RefPtr<WebKit::NetworkCache::SpeculativeLoad,WTF::RawPtrTraits<WebKit::NetworkCache::SpeculativeLoad>,WTF::DefaultRefDerefTraits<WebKit::NetworkCache::SpeculativeLoad>>>>,WTF::DefaultHash<WebKit::NetworkCache::Key>,WTF::HashMap<WebKit::NetworkCache::Key,WTF::RefPtr<WebKit::NetworkCache::SpeculativeLoad,WTF::RawPtrTraits<WebKit::NetworkCache::SpeculativeLoad>,WTF::DefaultRefDerefTraits<WebKit::NetworkCache::SpeculativeLoad>>,WTF::DefaultHash<WebKit::NetworkCache::Key>,WTF::HashTraits<WebKit::NetworkCache::Key>,WTF::HashTraits<WTF::RefPtr<WebKit::NetworkCache::SpeculativeLoad,WTF::RawPtrTraits<WebKit::NetworkCache::SpeculativeLoad>,WTF::DefaultRefDerefTraits<WebKit::NetworkCache::SpeculativeLoad>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebKit::NetworkCache::Key>,WTF::FastMalloc>::expand((v5 + 48));
          goto LABEL_32;
        }
      }

LABEL_47:
      v47 = *(a1 + 40);
      v58 = 0;
      v61 = 0;
      std::unique_ptr<WebKit::NetworkCache::SubresourcesEntry>::reset[abi:sn200100]((v47 + 192), v3);
      *(v47 + 217) = 1;
      WebKit::NetworkCache::SpeculativeLoadManager::PendingFrameLoad::saveToDiskIfReady(v47);
      std::unique_ptr<WebKit::NetworkCache::SubresourcesEntry>::reset[abi:sn200100](&v61, 0);
      v48 = *(v5 + 8);
      if (!v48)
      {
LABEL_62:
        __break(0xC471u);
        JUMPOUT(0x19DDAC59CLL);
      }

      *(v5 + 8) = v48 - 1;
    }
  }

  return std::unique_ptr<WebKit::NetworkCache::SubresourcesEntry>::reset[abi:sn200100](&v58, 0);
}

_DWORD *WTF::HashTable<WebKit::NetworkCache::Key,WTF::KeyValuePair<WebKit::NetworkCache::Key,std::unique_ptr<WebKit::NetworkCache::SpeculativeLoadManager::PreloadedEntry>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebKit::NetworkCache::Key,std::unique_ptr<WebKit::NetworkCache::SpeculativeLoadManager::PreloadedEntry>>>,WTF::DefaultHash<WebKit::NetworkCache::Key>,WTF::HashMap<WebKit::NetworkCache::Key,std::unique_ptr<WebKit::NetworkCache::SpeculativeLoadManager::PreloadedEntry>,WTF::DefaultHash<WebKit::NetworkCache::Key>,WTF::HashTraits<WebKit::NetworkCache::Key>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkCache::SpeculativeLoadManager::PreloadedEntry>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebKit::NetworkCache::Key>,WTF::FastMalloc>::expand(uint64_t *a1)
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

  return WTF::HashTable<WebKit::NetworkCache::Key,WTF::KeyValuePair<WebKit::NetworkCache::Key,std::unique_ptr<WebKit::NetworkCache::SpeculativeLoadManager::PreloadedEntry>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebKit::NetworkCache::Key,std::unique_ptr<WebKit::NetworkCache::SpeculativeLoadManager::PreloadedEntry>>>,WTF::DefaultHash<WebKit::NetworkCache::Key>,WTF::HashMap<WebKit::NetworkCache::Key,std::unique_ptr<WebKit::NetworkCache::SpeculativeLoadManager::PreloadedEntry>,WTF::DefaultHash<WebKit::NetworkCache::Key>,WTF::HashTraits<WebKit::NetworkCache::Key>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkCache::SpeculativeLoadManager::PreloadedEntry>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebKit::NetworkCache::Key>,WTF::FastMalloc>::rehash(a1, v3);
}

void *WTF::Detail::CallableWrapper<WebKit::NetworkCache::SpeculativeLoadManager::retrieveEntryFromStorage(WebKit::NetworkCache::SubresourceInfo const&,WTF::Function<void ()(std::unique_ptr<WebKit::NetworkCache::Entry>)> &&)::$_0,BOOL,WebKit::NetworkCache::Storage::Record &&,WebKit::NetworkCache::SpeculativeLoadManager::retrieveEntryFromStorage(WebKit::NetworkCache::SubresourceInfo const&,WTF::Function<void ()(std::unique_ptr<WebKit::NetworkCache::Entry>)> &&)::$_0::Timings const&>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F1108FB0;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkCache::SpeculativeLoadManager::retrieveEntryFromStorage(WebKit::NetworkCache::SubresourceInfo const&,WTF::Function<void ()(std::unique_ptr<WebKit::NetworkCache::Entry>)> &&)::$_0,BOOL,WebKit::NetworkCache::Storage::Record &&,WebKit::NetworkCache::SpeculativeLoadManager::retrieveEntryFromStorage(WebKit::NetworkCache::SubresourceInfo const&,WTF::Function<void ()(std::unique_ptr<WebKit::NetworkCache::Entry>)> &&)::$_0::Timings const&>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1108FB0;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

BOOL WTF::Detail::CallableWrapper<WebKit::NetworkCache::SpeculativeLoadManager::retrieveEntryFromStorage(WebKit::NetworkCache::SubresourceInfo const&,WTF::Function<void ()(std::unique_ptr<WebKit::NetworkCache::Entry>)> &&)::$_0,BOOL,WebKit::NetworkCache::Storage::Record &&,WebKit::NetworkCache::SpeculativeLoadManager::retrieveEntryFromStorage(WebKit::NetworkCache::SubresourceInfo const&,WTF::Function<void ()(std::unique_ptr<WebKit::NetworkCache::Entry>)> &&)::$_0::Timings const&>::call(uint64_t a1, __int128 *a2)
{
  v44 = *MEMORY[0x1E69E9840];
  v4 = *a2;
  v5 = a2[1];
  *a2 = 0u;
  a2[1] = 0u;
  *v31 = v4;
  *v32 = v5;
  v28 = v5;
  v6 = a2[3];
  v33 = a2[2];
  v34 = v6;
  v7 = *(a2 + 9);
  v35 = *(a2 + 8);
  v36 = v7;
  v8 = *(a2 + 10);
  v37 = v8;
  if (v8)
  {
    os_retain(v8);
  }

  v38 = *(a2 + 88);
  v39 = *(a2 + 104);
  v9 = *(a2 + 14);
  object = v9;
  if (v9)
  {
    os_retain(v9);
  }

  v41 = *(a2 + 120);
  v42 = *(a2 + 136);
  *v43 = a2[9];
  *&v43[13] = *(a2 + 157);
  if (v28)
  {
    WebKit::NetworkCache::Entry::decodeStorageRecord(v31, a2, &v30);
    v10 = v30 != 0;
    if (v30)
    {
      if ((WebCore::ResourceResponseBase::cacheControlContainsNoCache((v30 + 80)) & 1) == 0)
      {
        WebCore::computeCurrentAge();
        v12 = v11;
        WebCore::computeFreshnessLifetimeForHTTPFamily();
        if (v12 <= v13)
        {
          v14 = v30;
          goto LABEL_11;
        }
      }

      v14 = v30;
      if (*(v30 + 560) != 1)
      {
        *(v30 + 160) = *(v30 + 160) & 0xC3FF | 0xC00;
LABEL_11:
        v29 = v14;
        v30 = 0;
LABEL_12:
        WTF::Function<void ()(std::unique_ptr<WebKit::NetworkCache::Entry>)>::operator()(*(a1 + 8), &v29);
        if (v29)
        {
          WebKit::NetworkCache::Entry::~Entry(v29, v15);
          bmalloc::api::tzoneFree(v22, v23);
        }

        v16 = v30;
        v30 = 0;
        if (v16)
        {
          WebKit::NetworkCache::Entry::~Entry(v16, v15);
          bmalloc::api::tzoneFree(v24, v25);
        }

        v9 = object;
        goto LABEL_17;
      }
    }

    v29 = 0;
    goto LABEL_12;
  }

  v30 = 0;
  WTF::Function<void ()(std::unique_ptr<WebKit::NetworkCache::Entry>)>::operator()(*(a1 + 8), &v30);
  if (v30)
  {
    WebKit::NetworkCache::Entry::~Entry(v30, v15);
    bmalloc::api::tzoneFree(v26, v27);
  }

  v10 = 0;
LABEL_17:
  if (v9)
  {
    os_release(v9);
  }

  if (v37)
  {
    os_release(v37);
  }

  v17 = v32[1];
  v32[1] = 0;
  if (v17 && atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v17, v15);
  }

  v18 = v32[0];
  v32[0] = 0;
  if (v18 && atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v18, v15);
  }

  v19 = v31[1];
  v31[1] = 0;
  if (v19 && atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v19, v15);
  }

  v20 = v31[0];
  v31[0] = 0;
  if (v20 && atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v20, v15);
  }

  return v10;
}

uint64_t *WTF::HashMap<WebKit::NetworkCache::Key,std::unique_ptr<WTF::Vector<WTF::Function<void ()(std::unique_ptr<WebKit::NetworkCache::Entry>)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::DefaultHash<WebKit::NetworkCache::Key>,WTF::HashTraits<WebKit::NetworkCache::Key>,WTF::HashTraits<std::unique_ptr<WTF::Vector<WTF::Function<void ()(std::unique_ptr<WebKit::NetworkCache::Entry>)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::remove(uint64_t *result, uint64_t a2)
{
  v3 = result;
  if (*result)
  {
    v4 = *result + 80 * *(*result - 4);
    if (v4 == a2)
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

    v4 = 0;
  }

  if (v4 != a2)
  {
    WTF::hashTraitsDeleteBucket<WTF::HashTraits<WebKit::NetworkCache::Key>,WebKit::NetworkCache::Key>(a2, a2);
    result = std::unique_ptr<WTF::Vector<WTF::Function<void ()(std::unique_ptr<WebKit::NetworkCache::Entry>)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>::reset[abi:sn200100]((a2 + 72), 0);
    v5 = *v3;
    v6 = vadd_s32(*(*v3 - 16), 0xFFFFFFFF00000001);
    *(v5 - 16) = v6;
    v7 = *(v5 - 4);
    if (6 * v6.i32[1] < v7 && v7 >= 9)
    {

      return WTF::HashTable<WebKit::NetworkCache::Key,WTF::KeyValuePair<WebKit::NetworkCache::Key,std::unique_ptr<WTF::Vector<WTF::Function<void ()(std::unique_ptr<WebKit::NetworkCache::Entry>)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebKit::NetworkCache::Key,std::unique_ptr<WTF::Vector<WTF::Function<void ()(std::unique_ptr<WebKit::NetworkCache::Entry>)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>>,WTF::DefaultHash<WebKit::NetworkCache::Key>,WTF::HashMap<WebKit::NetworkCache::Key,std::unique_ptr<WTF::Vector<WTF::Function<void ()(std::unique_ptr<WebKit::NetworkCache::Entry>)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::DefaultHash<WebKit::NetworkCache::Key>,WTF::HashTraits<WebKit::NetworkCache::Key>,WTF::HashTraits<std::unique_ptr<WTF::Vector<WTF::Function<void ()(std::unique_ptr<WebKit::NetworkCache::Entry>)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebKit::NetworkCache::Key>,WTF::FastMalloc>::rehash(v3, v7 >> 1, 0);
    }
  }

  return result;
}

uint64_t WTF::HashTable<WebKit::NetworkCache::Key,WTF::KeyValuePair<WebKit::NetworkCache::Key,std::unique_ptr<WTF::Vector<WTF::Function<void ()(std::unique_ptr<WebKit::NetworkCache::Entry>)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebKit::NetworkCache::Key,std::unique_ptr<WTF::Vector<WTF::Function<void ()(std::unique_ptr<WebKit::NetworkCache::Entry>)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>>,WTF::DefaultHash<WebKit::NetworkCache::Key>,WTF::HashMap<WebKit::NetworkCache::Key,std::unique_ptr<WTF::Vector<WTF::Function<void ()(std::unique_ptr<WebKit::NetworkCache::Entry>)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::DefaultHash<WebKit::NetworkCache::Key>,WTF::HashTraits<WebKit::NetworkCache::Key>,WTF::HashTraits<std::unique_ptr<WTF::Vector<WTF::Function<void ()(std::unique_ptr<WebKit::NetworkCache::Entry>)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebKit::NetworkCache::Key>,WTF::FastMalloc>::lookup<WTF::IdentityHashTranslator<WTF::HashMap<WebKit::NetworkCache::Key,std::unique_ptr<WTF::Vector<WTF::Function<void ()(std::unique_ptr<WebKit::NetworkCache::Entry>)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::DefaultHash<WebKit::NetworkCache::Key>,WTF::HashTraits<WebKit::NetworkCache::Key>,WTF::HashTraits<std::unique_ptr<WTF::Vector<WTF::Function<void ()(std::unique_ptr<WebKit::NetworkCache::Entry>)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WebKit::NetworkCache::Key>>,(WTF::ShouldValidateKey)1,WebKit::NetworkCache::Key>(uint64_t *a1, uint64_t a2, const WTF::StringImpl *a3)
{
  v3 = *(a2 + 16);
  if (v3 == -1 || !v3)
  {
    __break(0xC471u);
    JUMPOUT(0x19DDACB4CLL);
  }

  v4 = *a1;
  if (!*a1)
  {
    return 0;
  }

  v6 = 0;
  v7 = *(v4 - 8);
  for (i = *(a2 + 32); ; i = v6 + v9)
  {
    v9 = i & v7;
    v10 = v4 + 80 * (i & v7);
    v11 = *(v10 + 16);
    if (v11 != -1)
    {
      if (!v11)
      {
        return 0;
      }

      if (WebKit::NetworkCache::Key::operator==(v4 + 80 * v9, a2, a3))
      {
        break;
      }
    }

    ++v6;
  }

  return v10;
}

void *WTF::Detail::CallableWrapper<WebKit::NetworkCache::SpeculativeLoadManager::revalidateSubresource(WebKit::NetworkCache::SubresourceInfo const&,std::unique_ptr<WebKit::NetworkCache::Entry>,WebKit::NetworkCache::GlobalFrameID const&,std::optional<WebKit::NavigatingToAppBoundDomain>,BOOL,WTF::OptionSet<WebCore::AdvancedPrivacyProtections>)::$_0,void>::~CallableWrapper(void *a1)
{
  *a1 = &unk_1F1108FD8;
  WebKit::NetworkCache::SpeculativeLoadManager::revalidateSubresource(WebKit::NetworkCache::SubresourceInfo const&,std::unique_ptr<WebKit::NetworkCache::Entry>,WebKit::NetworkCache::GlobalFrameID const&,std::optional<WebKit::NavigatingToAppBoundDomain>,BOOL,WTF::OptionSet<WebCore::AdvancedPrivacyProtections>)::$_0::~$_0((a1 + 1));
  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkCache::SpeculativeLoadManager::revalidateSubresource(WebKit::NetworkCache::SubresourceInfo const&,std::unique_ptr<WebKit::NetworkCache::Entry>,WebKit::NetworkCache::GlobalFrameID const&,std::optional<WebKit::NavigatingToAppBoundDomain>,BOOL,WTF::OptionSet<WebCore::AdvancedPrivacyProtections>)::$_0,void>::~CallableWrapper(WTF *a1)
{
  *a1 = &unk_1F1108FD8;
  WebKit::NetworkCache::SpeculativeLoadManager::revalidateSubresource(WebKit::NetworkCache::SubresourceInfo const&,std::unique_ptr<WebKit::NetworkCache::Entry>,WebKit::NetworkCache::GlobalFrameID const&,std::optional<WebKit::NavigatingToAppBoundDomain>,BOOL,WTF::OptionSet<WebCore::AdvancedPrivacyProtections>)::$_0::~$_0(a1 + 8);

  return WTF::fastFree(a1, v2);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkCache::SpeculativeLoadManager::revalidateSubresource(WebKit::NetworkCache::SubresourceInfo const&,std::unique_ptr<WebKit::NetworkCache::Entry>,WebKit::NetworkCache::GlobalFrameID const&,std::optional<WebKit::NavigatingToAppBoundDomain>,BOOL,WTF::OptionSet<WebCore::AdvancedPrivacyProtections>)::$_0,void>::call(uint64_t result, uint64_t a2, const WTF::StringImpl *a3)
{
  v3 = *(result + 8);
  if (v3)
  {
    v4 = *(v3 + 8);
    if (v4)
    {
      v5 = result;
      ++*(v4 + 8);
      v6 = *(v4 + 48);
      if (v6)
      {
        v7 = *(result + 32);
        if (v7 == -1)
        {
          __break(0xC471u);
          JUMPOUT(0x19DDACD48);
        }

        if (!v7)
        {
          __break(0xC471u);
          goto LABEL_19;
        }

        v8 = 0;
        v9 = *(v6 - 8);
        for (i = *(result + 48); ; i = v8 + v11)
        {
          v11 = i & v9;
          v12 = v6 + 80 * (i & v9);
          v13 = *(v12 + 16);
          if (!v13)
          {
            break;
          }

          if (v13 != -1)
          {
            result = WebKit::NetworkCache::Key::operator==(v12, v5 + 16, a3);
            if (result)
            {
              goto LABEL_13;
            }
          }

          ++v8;
        }
      }

      v14 = *(v5 + 192);
      *(v5 + 192) = 0;
      v19 = v14;
      WebKit::NetworkCache::SpeculativeLoadManager::revalidateSubresource(v4, v5 + 16, &v19, (v5 + 200), *(v5 + 224), *(v5 + 226), *(v5 + 228));
      result = v19;
      if (v19)
      {
        WebKit::NetworkCache::Entry::~Entry(v19, v15);
        result = bmalloc::api::tzoneFree(v17, v18);
      }

LABEL_13:
      v16 = *(v4 + 8);
      if (v16)
      {
        *(v4 + 8) = v16 - 1;
        return result;
      }

      __break(0xC471u);
LABEL_19:
      JUMPOUT(0x19DDACD28);
    }
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::NetworkCache::SpeculativeLoadManager::revalidateSubresource(WebKit::NetworkCache::SubresourceInfo const&,std::unique_ptr<WebKit::NetworkCache::Entry>,WebKit::NetworkCache::GlobalFrameID const&,std::optional<WebKit::NavigatingToAppBoundDomain>,BOOL,WTF::OptionSet<WebCore::AdvancedPrivacyProtections>)::$_1,void,std::unique_ptr<WebKit::NetworkCache::Entry>>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F1109000;
  WebKit::NetworkCache::SpeculativeLoadManager::revalidateSubresource(WebKit::NetworkCache::SubresourceInfo const&,std::unique_ptr<WebKit::NetworkCache::Entry>,WebKit::NetworkCache::GlobalFrameID const&,std::optional<WebKit::NavigatingToAppBoundDomain>,BOOL,WTF::OptionSet<WebCore::AdvancedPrivacyProtections>)::$_1::~$_1((a1 + 1), a2);
  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkCache::SpeculativeLoadManager::revalidateSubresource(WebKit::NetworkCache::SubresourceInfo const&,std::unique_ptr<WebKit::NetworkCache::Entry>,WebKit::NetworkCache::GlobalFrameID const&,std::optional<WebKit::NavigatingToAppBoundDomain>,BOOL,WTF::OptionSet<WebCore::AdvancedPrivacyProtections>)::$_1,void,std::unique_ptr<WebKit::NetworkCache::Entry>>::~CallableWrapper(WTF *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F1109000;
  WebKit::NetworkCache::SpeculativeLoadManager::revalidateSubresource(WebKit::NetworkCache::SubresourceInfo const&,std::unique_ptr<WebKit::NetworkCache::Entry>,WebKit::NetworkCache::GlobalFrameID const&,std::optional<WebKit::NavigatingToAppBoundDomain>,BOOL,WTF::OptionSet<WebCore::AdvancedPrivacyProtections>)::$_1::~$_1(a1 + 8, a2);

  return WTF::fastFree(a1, v3);
}

const WebKit::NetworkCache::Key *WTF::Detail::CallableWrapper<WebKit::NetworkCache::SpeculativeLoadManager::revalidateSubresource(WebKit::NetworkCache::SubresourceInfo const&,std::unique_ptr<WebKit::NetworkCache::Entry>,WebKit::NetworkCache::GlobalFrameID const&,std::optional<WebKit::NavigatingToAppBoundDomain>,BOOL,WTF::OptionSet<WebCore::AdvancedPrivacyProtections>)::$_1,void,std::unique_ptr<WebKit::NetworkCache::Entry>>::call(const WebKit::NetworkCache::Key *result, WTF::StringImpl *a2, const WTF::StringImpl *a3)
{
  v3 = *a2;
  *a2 = 0;
  v4 = *(result + 1);
  if (!v4)
  {
    goto LABEL_28;
  }

  v5 = *(v4 + 8);
  if (!v5)
  {
    goto LABEL_28;
  }

  v6 = result;
  ++*(v5 + 8);
  v7 = WTF::HashTable<WebKit::NetworkCache::Key,WTF::KeyValuePair<WebKit::NetworkCache::Key,WTF::RefPtr<WebKit::NetworkCache::SpeculativeLoad,WTF::RawPtrTraits<WebKit::NetworkCache::SpeculativeLoad>,WTF::DefaultRefDerefTraits<WebKit::NetworkCache::SpeculativeLoad>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebKit::NetworkCache::Key,WTF::RefPtr<WebKit::NetworkCache::SpeculativeLoad,WTF::RawPtrTraits<WebKit::NetworkCache::SpeculativeLoad>,WTF::DefaultRefDerefTraits<WebKit::NetworkCache::SpeculativeLoad>>>>,WTF::DefaultHash<WebKit::NetworkCache::Key>,WTF::HashMap<WebKit::NetworkCache::Key,WTF::RefPtr<WebKit::NetworkCache::SpeculativeLoad,WTF::RawPtrTraits<WebKit::NetworkCache::SpeculativeLoad>,WTF::DefaultRefDerefTraits<WebKit::NetworkCache::SpeculativeLoad>>,WTF::DefaultHash<WebKit::NetworkCache::Key>,WTF::HashTraits<WebKit::NetworkCache::Key>,WTF::HashTraits<WTF::RefPtr<WebKit::NetworkCache::SpeculativeLoad,WTF::RawPtrTraits<WebKit::NetworkCache::SpeculativeLoad>,WTF::DefaultRefDerefTraits<WebKit::NetworkCache::SpeculativeLoad>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebKit::NetworkCache::Key>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WebKit::NetworkCache::Key,WTF::RefPtr<WebKit::NetworkCache::SpeculativeLoad,WTF::RawPtrTraits<WebKit::NetworkCache::SpeculativeLoad>,WTF::DefaultRefDerefTraits<WebKit::NetworkCache::SpeculativeLoad>>,WTF::DefaultHash<WebKit::NetworkCache::Key>,WTF::HashTraits<WebKit::NetworkCache::Key>,WTF::HashTraits<WTF::RefPtr<WebKit::NetworkCache::SpeculativeLoad,WTF::RawPtrTraits<WebKit::NetworkCache::SpeculativeLoad>,WTF::DefaultRefDerefTraits<WebKit::NetworkCache::SpeculativeLoad>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WebKit::NetworkCache::Key>>,(WTF::ShouldValidateKey)1,WebKit::NetworkCache::Key>((v5 + 48), result + 16, a3);
  v8 = *(v5 + 48);
  if (v8)
  {
    v8 += 80 * *(v8 - 4);
  }

  if (v8 == v7)
  {
    v9 = 0;
    goto LABEL_10;
  }

  v9 = *(v7 + 72);
  *(v7 + 72) = 0;
  v10 = *(v5 + 48);
  if (v10)
  {
    v11 = v10 + 80 * *(v10 - 4);
    if (v11 == v7)
    {
      goto LABEL_10;
    }
  }

  else
  {
    if (!v7)
    {
      goto LABEL_10;
    }

    v11 = 0;
  }

  if (v11 != v7)
  {
    WTF::HashTable<WebKit::NetworkCache::Key,WTF::KeyValuePair<WebKit::NetworkCache::Key,WTF::RefPtr<WebKit::NetworkCache::SpeculativeLoad,WTF::RawPtrTraits<WebKit::NetworkCache::SpeculativeLoad>,WTF::DefaultRefDerefTraits<WebKit::NetworkCache::SpeculativeLoad>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebKit::NetworkCache::Key,WTF::RefPtr<WebKit::NetworkCache::SpeculativeLoad,WTF::RawPtrTraits<WebKit::NetworkCache::SpeculativeLoad>,WTF::DefaultRefDerefTraits<WebKit::NetworkCache::SpeculativeLoad>>>>,WTF::DefaultHash<WebKit::NetworkCache::Key>,WTF::HashMap<WebKit::NetworkCache::Key,WTF::RefPtr<WebKit::NetworkCache::SpeculativeLoad,WTF::RawPtrTraits<WebKit::NetworkCache::SpeculativeLoad>,WTF::DefaultRefDerefTraits<WebKit::NetworkCache::SpeculativeLoad>>,WTF::DefaultHash<WebKit::NetworkCache::Key>,WTF::HashTraits<WebKit::NetworkCache::Key>,WTF::HashTraits<WTF::RefPtr<WebKit::NetworkCache::SpeculativeLoad,WTF::RawPtrTraits<WebKit::NetworkCache::SpeculativeLoad>,WTF::DefaultRefDerefTraits<WebKit::NetworkCache::SpeculativeLoad>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebKit::NetworkCache::Key>,WTF::FastMalloc>::remove((v5 + 48), v7);
  }

LABEL_10:
  result = WebKit::NetworkCache::SpeculativeLoadManager::satisfyPendingRequests(v5, (v6 + 2), v3);
  if (result)
  {
    if (v3)
    {
      v26 = *(*(v5 + 16) + 8);
      if (!v26)
      {
        __break(0xC471u);
LABEL_55:
        JUMPOUT(0x19DDAD124);
      }

      v28 = *(v26 + 8);
      v27 = v26 + 8;
      *v27 = v28 + 1;
      v29 = *(v27 + 16);
      WebCore::DiagnosticLoggingKeys::successfulSpeculativeWarmupWithRevalidationKey(v32, result);
      WebKit::NetworkCache::logSpeculativeLoadingDiagnosticMessage(v29, v6[36], v32);
      v31 = v32[0];
      v32[0] = 0;
      if (v31 && atomic_fetch_add_explicit(v31, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v31, v30);
      }

      result = WTF::RefCounted<WebKit::NetworkCache::Cache>::deref(v27, v30);
    }
  }

  else if (v3)
  {
    v43 = v3;
    WebCore::ResourceRequest::ResourceRequest(v32, (v6 + 11));
    v42 = 1;
    WebKit::NetworkCache::SpeculativeLoadManager::addPreloadedEntry(v5, &v43, v6 + 18, v32);
    if (v42 == 1)
    {
      v12 = cf;
      cf = 0;
      if (v12)
      {
        CFRelease(v12);
      }

      v13 = v40;
      v40 = 0;
      if (v13)
      {
        WTF::RefCounted<WebCore::FormData>::deref(v13);
      }

      v14 = v39;
      v39 = 0;
      if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v14, a2);
      }

      v15 = v38;
      v38 = 0;
      if (v15 && atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v15, a2);
      }

      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v37, a2);
      WTF::Vector<WebCore::HTTPHeaderMap::UncommonHeader,0ul,WTF::CrashOnOverflow,0ul,WTF::FastMalloc>::~Vector(v36, v16);
      WTF::Vector<WebCore::HTTPHeaderMap::CommonHeader,0ul,WTF::CrashOnOverflow,6ul,WTF::FastMalloc>::~Vector(&v35, v17);
      v18 = v34;
      v34 = 0;
      if (v18 && atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v18, a2);
      }

      v19 = v33;
      v33 = 0;
      if (v19 && atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v19, a2);
      }

      v20 = v32[0];
      v32[0] = 0;
      if (v20 && atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v20, a2);
      }
    }

    result = v43;
    if (v43)
    {
      WebKit::NetworkCache::Entry::~Entry(v43, a2);
      result = bmalloc::api::tzoneFree(v24, v25);
    }

    v3 = 0;
  }

  if (v9)
  {
    if (v9[5] == 1)
    {
      result = (*(*v9 + 24))(v9);
    }

    else
    {
      --v9[5];
    }
  }

  v21 = *(v5 + 8);
  if (!v21)
  {
    __break(0xC471u);
    goto LABEL_55;
  }

  *(v5 + 8) = v21 - 1;
LABEL_28:
  if (v3)
  {
    WebKit::NetworkCache::Entry::~Entry(v3, a2);
    return bmalloc::api::tzoneFree(v22, v23);
  }

  return result;
}

_DWORD *WTF::HashTable<WebKit::NetworkCache::Key,WTF::KeyValuePair<WebKit::NetworkCache::Key,WTF::RefPtr<WebKit::NetworkCache::SpeculativeLoad,WTF::RawPtrTraits<WebKit::NetworkCache::SpeculativeLoad>,WTF::DefaultRefDerefTraits<WebKit::NetworkCache::SpeculativeLoad>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebKit::NetworkCache::Key,WTF::RefPtr<WebKit::NetworkCache::SpeculativeLoad,WTF::RawPtrTraits<WebKit::NetworkCache::SpeculativeLoad>,WTF::DefaultRefDerefTraits<WebKit::NetworkCache::SpeculativeLoad>>>>,WTF::DefaultHash<WebKit::NetworkCache::Key>,WTF::HashMap<WebKit::NetworkCache::Key,WTF::RefPtr<WebKit::NetworkCache::SpeculativeLoad,WTF::RawPtrTraits<WebKit::NetworkCache::SpeculativeLoad>,WTF::DefaultRefDerefTraits<WebKit::NetworkCache::SpeculativeLoad>>,WTF::DefaultHash<WebKit::NetworkCache::Key>,WTF::HashTraits<WebKit::NetworkCache::Key>,WTF::HashTraits<WTF::RefPtr<WebKit::NetworkCache::SpeculativeLoad,WTF::RawPtrTraits<WebKit::NetworkCache::SpeculativeLoad>,WTF::DefaultRefDerefTraits<WebKit::NetworkCache::SpeculativeLoad>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebKit::NetworkCache::Key>,WTF::FastMalloc>::remove(uint64_t *a1, uint64_t a2)
{
  WTF::hashTraitsDeleteBucket<WTF::HashTraits<WebKit::NetworkCache::Key>,WebKit::NetworkCache::Key>(a2, a2);
  result = *(a2 + 72);
  *(a2 + 72) = 0;
  if (result)
  {
    if (result[5] == 1)
    {
      result = (*(*result + 24))(result);
    }

    else
    {
      --result[5];
    }
  }

  v5 = *a1;
  v6 = vadd_s32(*(*a1 - 16), 0xFFFFFFFF00000001);
  *(v5 - 16) = v6;
  v7 = *(v5 - 4);
  if (6 * v6.i32[1] < v7 && v7 >= 9)
  {

    return WTF::HashTable<WebKit::NetworkCache::Key,WTF::KeyValuePair<WebKit::NetworkCache::Key,WTF::RefPtr<WebKit::NetworkCache::SpeculativeLoad,WTF::RawPtrTraits<WebKit::NetworkCache::SpeculativeLoad>,WTF::DefaultRefDerefTraits<WebKit::NetworkCache::SpeculativeLoad>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebKit::NetworkCache::Key,WTF::RefPtr<WebKit::NetworkCache::SpeculativeLoad,WTF::RawPtrTraits<WebKit::NetworkCache::SpeculativeLoad>,WTF::DefaultRefDerefTraits<WebKit::NetworkCache::SpeculativeLoad>>>>,WTF::DefaultHash<WebKit::NetworkCache::Key>,WTF::HashMap<WebKit::NetworkCache::Key,WTF::RefPtr<WebKit::NetworkCache::SpeculativeLoad,WTF::RawPtrTraits<WebKit::NetworkCache::SpeculativeLoad>,WTF::DefaultRefDerefTraits<WebKit::NetworkCache::SpeculativeLoad>>,WTF::DefaultHash<WebKit::NetworkCache::Key>,WTF::HashTraits<WebKit::NetworkCache::Key>,WTF::HashTraits<WTF::RefPtr<WebKit::NetworkCache::SpeculativeLoad,WTF::RawPtrTraits<WebKit::NetworkCache::SpeculativeLoad>,WTF::DefaultRefDerefTraits<WebKit::NetworkCache::SpeculativeLoad>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebKit::NetworkCache::Key>,WTF::FastMalloc>::rehash(a1, v7 >> 1);
  }

  return result;
}

_DWORD *WTF::HashTable<WebKit::NetworkCache::Key,WTF::KeyValuePair<WebKit::NetworkCache::Key,WTF::RefPtr<WebKit::NetworkCache::SpeculativeLoad,WTF::RawPtrTraits<WebKit::NetworkCache::SpeculativeLoad>,WTF::DefaultRefDerefTraits<WebKit::NetworkCache::SpeculativeLoad>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebKit::NetworkCache::Key,WTF::RefPtr<WebKit::NetworkCache::SpeculativeLoad,WTF::RawPtrTraits<WebKit::NetworkCache::SpeculativeLoad>,WTF::DefaultRefDerefTraits<WebKit::NetworkCache::SpeculativeLoad>>>>,WTF::DefaultHash<WebKit::NetworkCache::Key>,WTF::HashMap<WebKit::NetworkCache::Key,WTF::RefPtr<WebKit::NetworkCache::SpeculativeLoad,WTF::RawPtrTraits<WebKit::NetworkCache::SpeculativeLoad>,WTF::DefaultRefDerefTraits<WebKit::NetworkCache::SpeculativeLoad>>,WTF::DefaultHash<WebKit::NetworkCache::Key>,WTF::HashTraits<WebKit::NetworkCache::Key>,WTF::HashTraits<WTF::RefPtr<WebKit::NetworkCache::SpeculativeLoad,WTF::RawPtrTraits<WebKit::NetworkCache::SpeculativeLoad>,WTF::DefaultRefDerefTraits<WebKit::NetworkCache::SpeculativeLoad>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebKit::NetworkCache::Key>,WTF::FastMalloc>::rehash(uint64_t *a1, unsigned int a2)
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

  result = WTF::fastMalloc((80 * a2 + 16));
  if (a2)
  {
    v9 = a2;
    v10 = result + 22;
    do
    {
      *(v10 - 7) = 0uLL;
      *(v10 - 9) = 0uLL;
      *v10 = 0;
      v10 += 10;
      --v9;
    }

    while (v9);
  }

  *a1 = (result + 4);
  result[2] = a2 - 1;
  result[3] = a2;
  *result = 0;
  result[1] = v6;
  if (v5)
  {
    v11 = 0;
    while (1)
    {
      v12 = v4 + 80 * v11;
      v13 = *(v12 + 16);
      if (v13)
      {
        if (v13 == -1)
        {
          goto LABEL_24;
        }

        v14 = *a1;
        if (*a1)
        {
          v15 = *(v14 - 8);
        }

        else
        {
          v15 = 0;
        }

        v16 = 0;
        v17 = *(v12 + 32);
        do
        {
          v18 = v17 & v15;
          v19 = v14 + 80 * v18;
          v17 = ++v16 + v18;
        }

        while (*(v19 + 16));
        v20 = *(v19 + 72);
        *(v19 + 72) = 0;
        if (v20)
        {
          if (v20[5] == 1)
          {
            (*(*v20 + 24))(v20);
          }

          else
          {
            --v20[5];
          }
        }

        v21 = *(v19 + 24);
        *(v19 + 24) = 0;
        if (v21 && atomic_fetch_add_explicit(v21, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v21, v8);
        }

        v22 = *(v19 + 16);
        *(v19 + 16) = 0;
        if (v22 && atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v22, v8);
        }

        v23 = *(v19 + 8);
        *(v19 + 8) = 0;
        if (v23 && atomic_fetch_add_explicit(v23, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v23, v8);
        }

        v24 = *v19;
        *v19 = 0;
        if (v24 && atomic_fetch_add_explicit(v24, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v24, v8);
        }

        v25 = *v12;
        *v12 = 0;
        *v19 = v25;
        v26 = *(v12 + 8);
        *(v12 + 8) = 0;
        *(v19 + 8) = v26;
        v27 = *(v12 + 16);
        *(v12 + 16) = 0;
        *(v19 + 16) = v27;
        v28 = *(v12 + 24);
        *(v12 + 24) = 0;
        *(v19 + 24) = v28;
        v29 = *(v12 + 32);
        v30 = *(v12 + 48);
        *(v19 + 64) = *(v12 + 64);
        *(v19 + 32) = v29;
        *(v19 + 48) = v30;
        v31 = *(v12 + 72);
        *(v12 + 72) = 0;
        *(v19 + 72) = v31;
        v32 = *(v12 + 72);
        *(v12 + 72) = 0;
        if (v32)
        {
          if (v32[5] == 1)
          {
            (*(*v32 + 24))(v32);
          }

          else
          {
            --v32[5];
          }
        }

        v33 = *(v12 + 24);
        *(v12 + 24) = 0;
        if (v33 && atomic_fetch_add_explicit(v33, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v33, v8);
        }

        v34 = *(v12 + 16);
        *(v12 + 16) = 0;
        if (v34 && atomic_fetch_add_explicit(v34, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v34, v8);
        }

        v35 = *(v12 + 8);
        *(v12 + 8) = 0;
        if (v35 && atomic_fetch_add_explicit(v35, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v35, v8);
        }

        v36 = *v12;
        *v12 = 0;
        if (!v36 || atomic_fetch_add_explicit(v36, 0xFFFFFFFE, memory_order_relaxed) != 2)
        {
          goto LABEL_24;
        }
      }

      else
      {
        v37 = *(v12 + 72);
        *(v12 + 72) = 0;
        if (v37)
        {
          if (v37[5] == 1)
          {
            (*(*v37 + 24))(v37);
          }

          else
          {
            --v37[5];
          }
        }

        v38 = *(v12 + 24);
        *(v12 + 24) = 0;
        if (v38 && atomic_fetch_add_explicit(v38, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v38, v8);
        }

        v39 = *(v12 + 16);
        *(v12 + 16) = 0;
        if (v39 && atomic_fetch_add_explicit(v39, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v39, v8);
        }

        v40 = *(v12 + 8);
        *(v12 + 8) = 0;
        if (v40 && atomic_fetch_add_explicit(v40, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v40, v8);
        }

        v36 = *v12;
        *v12 = 0;
        if (!v36 || atomic_fetch_add_explicit(v36, 0xFFFFFFFE, memory_order_relaxed) != 2)
        {
          goto LABEL_24;
        }
      }

      WTF::StringImpl::destroy(v36, v8);
LABEL_24:
      if (++v11 == v5)
      {
        goto LABEL_62;
      }
    }
  }

  if (v4)
  {
LABEL_62:

    return WTF::fastFree((v4 - 16), v8);
  }

  return result;
}

uint64_t WTF::HashTable<WebKit::NetworkCache::Key,WTF::KeyValuePair<WebKit::NetworkCache::Key,WTF::RefPtr<WebKit::NetworkCache::SpeculativeLoad,WTF::RawPtrTraits<WebKit::NetworkCache::SpeculativeLoad>,WTF::DefaultRefDerefTraits<WebKit::NetworkCache::SpeculativeLoad>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebKit::NetworkCache::Key,WTF::RefPtr<WebKit::NetworkCache::SpeculativeLoad,WTF::RawPtrTraits<WebKit::NetworkCache::SpeculativeLoad>,WTF::DefaultRefDerefTraits<WebKit::NetworkCache::SpeculativeLoad>>>>,WTF::DefaultHash<WebKit::NetworkCache::Key>,WTF::HashMap<WebKit::NetworkCache::Key,WTF::RefPtr<WebKit::NetworkCache::SpeculativeLoad,WTF::RawPtrTraits<WebKit::NetworkCache::SpeculativeLoad>,WTF::DefaultRefDerefTraits<WebKit::NetworkCache::SpeculativeLoad>>,WTF::DefaultHash<WebKit::NetworkCache::Key>,WTF::HashTraits<WebKit::NetworkCache::Key>,WTF::HashTraits<WTF::RefPtr<WebKit::NetworkCache::SpeculativeLoad,WTF::RawPtrTraits<WebKit::NetworkCache::SpeculativeLoad>,WTF::DefaultRefDerefTraits<WebKit::NetworkCache::SpeculativeLoad>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebKit::NetworkCache::Key>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WebKit::NetworkCache::Key,WTF::RefPtr<WebKit::NetworkCache::SpeculativeLoad,WTF::RawPtrTraits<WebKit::NetworkCache::SpeculativeLoad>,WTF::DefaultRefDerefTraits<WebKit::NetworkCache::SpeculativeLoad>>,WTF::DefaultHash<WebKit::NetworkCache::Key>,WTF::HashTraits<WebKit::NetworkCache::Key>,WTF::HashTraits<WTF::RefPtr<WebKit::NetworkCache::SpeculativeLoad,WTF::RawPtrTraits<WebKit::NetworkCache::SpeculativeLoad>,WTF::DefaultRefDerefTraits<WebKit::NetworkCache::SpeculativeLoad>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WebKit::NetworkCache::Key>>,(WTF::ShouldValidateKey)1,WebKit::NetworkCache::Key>(uint64_t *a1, uint64_t a2, const WTF::StringImpl *a3)
{
  v3 = *a1;
  if (!*a1)
  {
    return 0;
  }

  v5 = *(a2 + 16);
  if (v5 == -1 || !v5)
  {
    __break(0xC471u);
    JUMPOUT(0x19DDAD6FCLL);
  }

  v7 = 0;
  v8 = *(v3 - 8);
  for (i = *(a2 + 32); ; i = ++v7 + v10)
  {
    v10 = i & v8;
    v11 = v3 + 80 * (i & v8);
    v12 = *(v11 + 16);
    if (!v12)
    {
      break;
    }

    if (v12 != -1 && (WebKit::NetworkCache::Key::operator==(v3 + 80 * v10, a2, a3) & 1) != 0)
    {
      return v11;
    }
  }

  if (*a1)
  {
    return *a1 + 80 * *(*a1 - 4);
  }

  else
  {
    return 0;
  }
}

_DWORD *WTF::HashTable<WebKit::NetworkCache::Key,WTF::KeyValuePair<WebKit::NetworkCache::Key,WTF::RefPtr<WebKit::NetworkCache::SpeculativeLoad,WTF::RawPtrTraits<WebKit::NetworkCache::SpeculativeLoad>,WTF::DefaultRefDerefTraits<WebKit::NetworkCache::SpeculativeLoad>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebKit::NetworkCache::Key,WTF::RefPtr<WebKit::NetworkCache::SpeculativeLoad,WTF::RawPtrTraits<WebKit::NetworkCache::SpeculativeLoad>,WTF::DefaultRefDerefTraits<WebKit::NetworkCache::SpeculativeLoad>>>>,WTF::DefaultHash<WebKit::NetworkCache::Key>,WTF::HashMap<WebKit::NetworkCache::Key,WTF::RefPtr<WebKit::NetworkCache::SpeculativeLoad,WTF::RawPtrTraits<WebKit::NetworkCache::SpeculativeLoad>,WTF::DefaultRefDerefTraits<WebKit::NetworkCache::SpeculativeLoad>>,WTF::DefaultHash<WebKit::NetworkCache::Key>,WTF::HashTraits<WebKit::NetworkCache::Key>,WTF::HashTraits<WTF::RefPtr<WebKit::NetworkCache::SpeculativeLoad,WTF::RawPtrTraits<WebKit::NetworkCache::SpeculativeLoad>,WTF::DefaultRefDerefTraits<WebKit::NetworkCache::SpeculativeLoad>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebKit::NetworkCache::Key>,WTF::FastMalloc>::expand(uint64_t *a1)
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

  return WTF::HashTable<WebKit::NetworkCache::Key,WTF::KeyValuePair<WebKit::NetworkCache::Key,WTF::RefPtr<WebKit::NetworkCache::SpeculativeLoad,WTF::RawPtrTraits<WebKit::NetworkCache::SpeculativeLoad>,WTF::DefaultRefDerefTraits<WebKit::NetworkCache::SpeculativeLoad>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebKit::NetworkCache::Key,WTF::RefPtr<WebKit::NetworkCache::SpeculativeLoad,WTF::RawPtrTraits<WebKit::NetworkCache::SpeculativeLoad>,WTF::DefaultRefDerefTraits<WebKit::NetworkCache::SpeculativeLoad>>>>,WTF::DefaultHash<WebKit::NetworkCache::Key>,WTF::HashMap<WebKit::NetworkCache::Key,WTF::RefPtr<WebKit::NetworkCache::SpeculativeLoad,WTF::RawPtrTraits<WebKit::NetworkCache::SpeculativeLoad>,WTF::DefaultRefDerefTraits<WebKit::NetworkCache::SpeculativeLoad>>,WTF::DefaultHash<WebKit::NetworkCache::Key>,WTF::HashTraits<WebKit::NetworkCache::Key>,WTF::HashTraits<WTF::RefPtr<WebKit::NetworkCache::SpeculativeLoad,WTF::RawPtrTraits<WebKit::NetworkCache::SpeculativeLoad>,WTF::DefaultRefDerefTraits<WebKit::NetworkCache::SpeculativeLoad>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebKit::NetworkCache::Key>,WTF::FastMalloc>::rehash(a1, v3);
}

void *WTF::Detail::CallableWrapper<WebKit::NetworkCache::SpeculativeLoadManager::preloadEntry(WebKit::NetworkCache::Key const&,WebKit::NetworkCache::SubresourceInfo const&,WebKit::NetworkCache::GlobalFrameID const&,std::optional<WebKit::NavigatingToAppBoundDomain>,BOOL,WTF::OptionSet<WebCore::AdvancedPrivacyProtections>)::$_0,void,std::unique_ptr<WebKit::NetworkCache::Entry>>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F1109028;
  WebKit::NetworkCache::SpeculativeLoadManager::preloadEntry(WebKit::NetworkCache::Key const&,WebKit::NetworkCache::SubresourceInfo const&,WebKit::NetworkCache::GlobalFrameID const&,std::optional<WebKit::NavigatingToAppBoundDomain>,BOOL,WTF::OptionSet<WebCore::AdvancedPrivacyProtections>)::$_0::~$_0((a1 + 1), a2);
  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkCache::SpeculativeLoadManager::preloadEntry(WebKit::NetworkCache::Key const&,WebKit::NetworkCache::SubresourceInfo const&,WebKit::NetworkCache::GlobalFrameID const&,std::optional<WebKit::NavigatingToAppBoundDomain>,BOOL,WTF::OptionSet<WebCore::AdvancedPrivacyProtections>)::$_0,void,std::unique_ptr<WebKit::NetworkCache::Entry>>::~CallableWrapper(WTF *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F1109028;
  WebKit::NetworkCache::SpeculativeLoadManager::preloadEntry(WebKit::NetworkCache::Key const&,WebKit::NetworkCache::SubresourceInfo const&,WebKit::NetworkCache::GlobalFrameID const&,std::optional<WebKit::NavigatingToAppBoundDomain>,BOOL,WTF::OptionSet<WebCore::AdvancedPrivacyProtections>)::$_0::~$_0(a1 + 8, a2);

  return WTF::fastFree(a1, v3);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkCache::SpeculativeLoadManager::preloadEntry(WebKit::NetworkCache::Key const&,WebKit::NetworkCache::SubresourceInfo const&,WebKit::NetworkCache::GlobalFrameID const&,std::optional<WebKit::NavigatingToAppBoundDomain>,BOOL,WTF::OptionSet<WebCore::AdvancedPrivacyProtections>)::$_0,void,std::unique_ptr<WebKit::NetworkCache::Entry>>::call(uint64_t result, WTF::StringImpl *a2, const WTF::StringImpl *a3)
{
  v3 = *a2;
  *a2 = 0;
  v4 = *(result + 8);
  if (!v4)
  {
    goto LABEL_15;
  }

  v5 = *(v4 + 8);
  if (!v5)
  {
    goto LABEL_15;
  }

  v6 = result;
  ++*(v5 + 8);
  v7 = WTF::HashTable<WebKit::NetworkCache::Key,WTF::KeyValuePair<WebKit::NetworkCache::Key,WTF::RefPtr<WebKit::NetworkCache::SpeculativeLoad,WTF::RawPtrTraits<WebKit::NetworkCache::SpeculativeLoad>,WTF::DefaultRefDerefTraits<WebKit::NetworkCache::SpeculativeLoad>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebKit::NetworkCache::Key,WTF::RefPtr<WebKit::NetworkCache::SpeculativeLoad,WTF::RawPtrTraits<WebKit::NetworkCache::SpeculativeLoad>,WTF::DefaultRefDerefTraits<WebKit::NetworkCache::SpeculativeLoad>>>>,WTF::DefaultHash<WebKit::NetworkCache::Key>,WTF::HashMap<WebKit::NetworkCache::Key,WTF::RefPtr<WebKit::NetworkCache::SpeculativeLoad,WTF::RawPtrTraits<WebKit::NetworkCache::SpeculativeLoad>,WTF::DefaultRefDerefTraits<WebKit::NetworkCache::SpeculativeLoad>>,WTF::DefaultHash<WebKit::NetworkCache::Key>,WTF::HashTraits<WebKit::NetworkCache::Key>,WTF::HashTraits<WTF::RefPtr<WebKit::NetworkCache::SpeculativeLoad,WTF::RawPtrTraits<WebKit::NetworkCache::SpeculativeLoad>,WTF::DefaultRefDerefTraits<WebKit::NetworkCache::SpeculativeLoad>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebKit::NetworkCache::Key>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WebKit::NetworkCache::Key,WTF::RefPtr<WebKit::NetworkCache::SpeculativeLoad,WTF::RawPtrTraits<WebKit::NetworkCache::SpeculativeLoad>,WTF::DefaultRefDerefTraits<WebKit::NetworkCache::SpeculativeLoad>>,WTF::DefaultHash<WebKit::NetworkCache::Key>,WTF::HashTraits<WebKit::NetworkCache::Key>,WTF::HashTraits<WTF::RefPtr<WebKit::NetworkCache::SpeculativeLoad,WTF::RawPtrTraits<WebKit::NetworkCache::SpeculativeLoad>,WTF::DefaultRefDerefTraits<WebKit::NetworkCache::SpeculativeLoad>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WebKit::NetworkCache::Key>>,(WTF::ShouldValidateKey)1,WebKit::NetworkCache::Key>((v5 + 48), result + 16, a3);
  v8 = *(v5 + 48);
  if (v8)
  {
    v9 = v8 + 80 * *(v8 - 4);
    if (v9 == v7)
    {
      goto LABEL_7;
    }
  }

  else
  {
    if (!v7)
    {
      goto LABEL_7;
    }

    v9 = 0;
  }

  if (v9 != v7)
  {
    WTF::HashTable<WebKit::NetworkCache::Key,WTF::KeyValuePair<WebKit::NetworkCache::Key,WTF::RefPtr<WebKit::NetworkCache::SpeculativeLoad,WTF::RawPtrTraits<WebKit::NetworkCache::SpeculativeLoad>,WTF::DefaultRefDerefTraits<WebKit::NetworkCache::SpeculativeLoad>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebKit::NetworkCache::Key,WTF::RefPtr<WebKit::NetworkCache::SpeculativeLoad,WTF::RawPtrTraits<WebKit::NetworkCache::SpeculativeLoad>,WTF::DefaultRefDerefTraits<WebKit::NetworkCache::SpeculativeLoad>>>>,WTF::DefaultHash<WebKit::NetworkCache::Key>,WTF::HashMap<WebKit::NetworkCache::Key,WTF::RefPtr<WebKit::NetworkCache::SpeculativeLoad,WTF::RawPtrTraits<WebKit::NetworkCache::SpeculativeLoad>,WTF::DefaultRefDerefTraits<WebKit::NetworkCache::SpeculativeLoad>>,WTF::DefaultHash<WebKit::NetworkCache::Key>,WTF::HashTraits<WebKit::NetworkCache::Key>,WTF::HashTraits<WTF::RefPtr<WebKit::NetworkCache::SpeculativeLoad,WTF::RawPtrTraits<WebKit::NetworkCache::SpeculativeLoad>,WTF::DefaultRefDerefTraits<WebKit::NetworkCache::SpeculativeLoad>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebKit::NetworkCache::Key>,WTF::FastMalloc>::remove((v5 + 48), v7);
  }

LABEL_7:
  result = WebKit::NetworkCache::SpeculativeLoadManager::satisfyPendingRequests(v5, (v6 + 16), v3);
  if (result)
  {
    if (v3)
    {
      v14 = *(*(v5 + 16) + 8);
      if (!v14)
      {
        __break(0xC471u);
LABEL_37:
        JUMPOUT(0x19DDADA54);
      }

      v16 = *(v14 + 8);
      v15 = v14 + 8;
      *v15 = v16 + 1;
      v17 = *(v15 + 16);
      WebCore::DiagnosticLoggingKeys::successfulSpeculativeWarmupWithoutRevalidationKey(v27, result);
      WebKit::NetworkCache::logSpeculativeLoadingDiagnosticMessage(v17, *(v6 + 264), v27);
      v19 = v27[0];
      v27[0] = 0;
      if (v19 && atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v19, v18);
      }

      result = WTF::RefCounted<WebKit::NetworkCache::Cache>::deref(v15, v18);
    }
  }

  else
  {
    if (v3)
    {
      if (WebCore::ResourceResponseBase::source((v3 + 80)) != 3)
      {
        v29 = v3;
        LOBYTE(v27[0]) = 0;
        v28 = 0;
        WebKit::NetworkCache::SpeculativeLoadManager::addPreloadedEntry(v5, &v29, (v6 + 264), v27);
        std::optional<WebCore::ResourceRequest>::~optional(v27, v24);
        result = v29;
        if (!v29)
        {
          goto LABEL_12;
        }

        goto LABEL_30;
      }

      v10 = v6 + 88;
      result = WebCore::ResourceResponseBase::hasCacheValidatorFields((v3 + 80));
      if (result)
      {
LABEL_11:
        v27[0] = v3;
        WebKit::NetworkCache::SpeculativeLoadManager::revalidateSubresource(v5, v10, v27, (v6 + 264), *(v6 + 288), *(v6 + 290), *(v6 + 292));
        result = v27[0];
        if (!v27[0])
        {
LABEL_12:
          v3 = 0;
          goto LABEL_13;
        }

LABEL_30:
        WebKit::NetworkCache::Entry::~Entry(result, a2);
        result = bmalloc::api::tzoneFree(v25, v26);
        goto LABEL_12;
      }
    }

    else
    {
      v10 = v6 + 88;
    }

    v20 = *(v6 + 160) - *(v6 + 168);
    if (v20 != 0.0)
    {
      result = WTF::WallTime::now(result);
      if (v20 >= 0.0)
      {
        v22 = v21 - *(v6 + 168);
        if (v22 > 0.0)
        {
          v23 = v21 - *(v6 + 160);
          if (v23 > 0.0 && v20 / v22 > dbl_19E703C70[v23 > 300.0])
          {
            goto LABEL_11;
          }
        }
      }
    }
  }

LABEL_13:
  v11 = *(v5 + 8);
  if (!v11)
  {
    __break(0xC471u);
    goto LABEL_37;
  }

  *(v5 + 8) = v11 - 1;
LABEL_15:
  if (v3)
  {
    WebKit::NetworkCache::Entry::~Entry(v3, a2);
    return bmalloc::api::tzoneFree(v12, v13);
  }

  return result;
}

uint64_t WTF::HashTable<WebKit::NetworkCache::Key,WTF::KeyValuePair<WebKit::NetworkCache::Key,std::unique_ptr<WebKit::NetworkCache::SpeculativeLoadManager::ExpiringEntry>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebKit::NetworkCache::Key,std::unique_ptr<WebKit::NetworkCache::SpeculativeLoadManager::ExpiringEntry>>>,WTF::DefaultHash<WebKit::NetworkCache::Key>,WTF::HashMap<WebKit::NetworkCache::Key,std::unique_ptr<WebKit::NetworkCache::SpeculativeLoadManager::ExpiringEntry>,WTF::DefaultHash<WebKit::NetworkCache::Key>,WTF::HashTraits<WebKit::NetworkCache::Key>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkCache::SpeculativeLoadManager::ExpiringEntry>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebKit::NetworkCache::Key>,WTF::FastMalloc>::expand(uint64_t *a1, uint64_t a2)
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

  return WTF::HashTable<WebKit::NetworkCache::Key,WTF::KeyValuePair<WebKit::NetworkCache::Key,std::unique_ptr<WebKit::NetworkCache::SpeculativeLoadManager::ExpiringEntry>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebKit::NetworkCache::Key,std::unique_ptr<WebKit::NetworkCache::SpeculativeLoadManager::ExpiringEntry>>>,WTF::DefaultHash<WebKit::NetworkCache::Key>,WTF::HashMap<WebKit::NetworkCache::Key,std::unique_ptr<WebKit::NetworkCache::SpeculativeLoadManager::ExpiringEntry>,WTF::DefaultHash<WebKit::NetworkCache::Key>,WTF::HashTraits<WebKit::NetworkCache::Key>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkCache::SpeculativeLoadManager::ExpiringEntry>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebKit::NetworkCache::Key>,WTF::FastMalloc>::rehash(a1, v5, a2);
}

void *WTF::Detail::CallableWrapper<WebKit::NetworkCache::SpeculativeLoadManager::retrieveSubresourcesEntry(WebKit::NetworkCache::Key const&,WTF::Function<void ()(std::unique_ptr<WebKit::NetworkCache::SubresourcesEntry>)> &&)::$_0,BOOL,WebKit::NetworkCache::Storage::Record &&,WebKit::NetworkCache::SpeculativeLoadManager::retrieveSubresourcesEntry(WebKit::NetworkCache::Key const&,WTF::Function<void ()(std::unique_ptr<WebKit::NetworkCache::SubresourcesEntry>)> &&)::$_0::Timings const&>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F1109050;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkCache::SpeculativeLoadManager::retrieveSubresourcesEntry(WebKit::NetworkCache::Key const&,WTF::Function<void ()(std::unique_ptr<WebKit::NetworkCache::SubresourcesEntry>)> &&)::$_0,BOOL,WebKit::NetworkCache::Storage::Record &&,WebKit::NetworkCache::SpeculativeLoadManager::retrieveSubresourcesEntry(WebKit::NetworkCache::Key const&,WTF::Function<void ()(std::unique_ptr<WebKit::NetworkCache::SubresourcesEntry>)> &&)::$_0::Timings const&>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1109050;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkCache::SpeculativeLoadManager::retrieveSubresourcesEntry(WebKit::NetworkCache::Key const&,WTF::Function<void ()(std::unique_ptr<WebKit::NetworkCache::SubresourcesEntry>)> &&)::$_0,BOOL,WebKit::NetworkCache::Storage::Record &&,WebKit::NetworkCache::SpeculativeLoadManager::retrieveSubresourcesEntry(WebKit::NetworkCache::Key const&,WTF::Function<void ()(std::unique_ptr<WebKit::NetworkCache::SubresourcesEntry>)> &&)::$_0::Timings const&>::call(uint64_t a1, char *a2)
{
  v41 = *MEMORY[0x1E69E9840];
  v4 = *a2;
  v5 = *(a2 + 1);
  *a2 = 0u;
  *(a2 + 1) = 0u;
  *v26 = v4;
  *v27 = v5;
  v19 = v5;
  v6 = *(a2 + 3);
  v28 = *(a2 + 2);
  v29 = v6;
  v7 = *(a2 + 9);
  v30 = *(a2 + 8);
  v31 = v7;
  v8 = *(a2 + 10);
  v32 = v8;
  if (v8)
  {
    os_retain(v8);
  }

  v33 = *(a2 + 88);
  v34 = a2[104];
  v9 = *(a2 + 14);
  object = v9;
  if (v9)
  {
    os_retain(v9);
  }

  v36 = *(a2 + 120);
  v37 = a2[136];
  v38[0] = *(a2 + 9);
  *(v38 + 13) = *(a2 + 157);
  if (v19)
  {
    if (WebKit::NetworkCache::SubresourcesEntry::s_heapRef)
    {
      NonCompact = bmalloc::api::tzoneAllocateNonCompact(WebKit::NetworkCache::SubresourcesEntry::s_heapRef, a2);
    }

    else
    {
      NonCompact = WebKit::NetworkCache::SubresourcesEntry::operatorNewSlow(0);
    }

    v11 = WebKit::NetworkCache::Key::Key(NonCompact, v26);
    *(v11 + 9) = v31;
    *(v11 + 10) = 0;
    *(v11 + 11) = 0;
    v23 = v11;
    WebKit::NetworkCache::Data::span(&v32);
    WTF::Persistence::Decoder::Decoder();
    LOBYTE(v20) = 0;
    v21 = 0;
    LOBYTE(v24) = 0;
    v25 = 0;
    WTF::Persistence::Decoder::operator>>();
    *&v39 = 0;
    WTF::Persistence::Decoder::~Decoder(v22);
    std::unique_ptr<WebKit::NetworkCache::SubresourcesEntry>::reset[abi:sn200100](&v23, 0);
    *&v40 = 0;
    WTF::Function<void ()(std::unique_ptr<WebKit::NetworkCache::SubresourcesEntry>)>::operator()(*(a1 + 8), &v40);
    std::unique_ptr<WebKit::NetworkCache::SubresourcesEntry>::reset[abi:sn200100](&v40, 0);
    std::unique_ptr<WebKit::NetworkCache::SubresourcesEntry>::reset[abi:sn200100](&v39, 0);
    v9 = object;
  }

  else
  {
    v18 = *(a1 + 8);
    *&v39 = 0;
    *&v40 = 0;
    (*(*v18 + 16))(v18, &v40);
    std::unique_ptr<WebKit::NetworkCache::SubresourcesEntry>::reset[abi:sn200100](&v40, 0);
    std::unique_ptr<WebKit::NetworkCache::SubresourcesEntry>::reset[abi:sn200100](&v39, 0);
  }

  if (v9)
  {
    os_release(v9);
  }

  if (v32)
  {
    os_release(v32);
  }

  v13 = v27[1];
  v27[1] = 0;
  if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v13, v12);
  }

  v14 = v27[0];
  v27[0] = 0;
  if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v14, v12);
  }

  v15 = v26[1];
  v26[1] = 0;
  if (v15 && atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v15, v12);
  }

  v16 = v26[0];
  v26[0] = 0;
  if (v16 && atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v16, v12);
  }

  return 0;
}

WTF::StringImpl ***WTF::Function<void ()(std::unique_ptr<WebKit::NetworkCache::SubresourcesEntry>)>::operator()(uint64_t a1, WTF::StringImpl ***a2)
{
  v2 = *a2;
  *a2 = 0;
  v4 = v2;
  (*(*a1 + 16))(a1, &v4);
  return std::unique_ptr<WebKit::NetworkCache::SubresourcesEntry>::reset[abi:sn200100](&v4, 0);
}

atomic_uint *WTF::ThreadSafeRefCounted<WebKit::NetworkCache::TraverseOperation,(WTF::DestructionThread)2>::deref(atomic_uint *result)
{
  add = atomic_fetch_add(result, 0xFFFFFFFF);
  if (add == 1)
  {
    v2 = result;
    atomic_store(add, result);
    v3 = WTF::fastMalloc(0x10);
    *v3 = &unk_1F1109078;
    *(v3 + 1) = v2;
    v4 = v3;
    WTF::ensureOnMainRunLoop();
    result = v4;
    if (v4)
    {
      return (*(*v4 + 8))(v4);
    }
  }

  return result;
}

uint64_t WTF::Detail::CallableWrapper<WTF::ThreadSafeRefCounted<WebKit::NetworkCache::TraverseOperation,(WTF::DestructionThread)2>::deref(void)::{lambda(void)#1},void>::call(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  if (v2)
  {
    v3 = *(v2 + 1);
    *(v2 + 1) = 0;
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }

    return WTF::fastFree(v2, a2);
  }

  return result;
}

WebCore::TimerBase *WebCore::Timer::Timer<WebKit::NetworkCache::Storage,WebKit::NetworkCache::Storage>(WebCore::TimerBase *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *WebCore::TimerBase::TimerBase(a1) = &unk_1F10EB388;
  v8 = WTF::fastMalloc(0x20);
  *v8 = &unk_1F11090A0;
  v8[1] = a2;
  v8[2] = a3;
  v8[3] = a4;
  *(a1 + 6) = v8;
  return a1;
}

atomic_ullong *WTF::Detail::CallableWrapper<WebCore::Timer::Timer<WebKit::NetworkCache::Storage,WebKit::NetworkCache::Storage>(WebKit::NetworkCache::Storage &,void (WebKit::NetworkCache::Storage::*)(void))::{lambda(void)#1},void>::call(void *a1)
{
  v2 = a1[1];
  while (1)
  {
    v3 = *v2;
    if ((*v2 & 1) == 0)
    {
      break;
    }

    v8 = *v2;
    atomic_compare_exchange_strong_explicit(v2, &v8, v3 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v8 == v3)
    {
      goto LABEL_4;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v2);
LABEL_4:
  v4 = a1[2];
  v5 = a1[3];
  v6 = (a1[1] + (v5 >> 1));
  if (v5)
  {
    v4 = *(*v6 + v4);
  }

  v4(v6);

  return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::NetworkCache::Storage,(WTF::DestructionThread)2>::deref(v2);
}

atomic_uint *WTF::ThreadSafeRefCounted<WTF::ConcurrentWorkQueue,(WTF::DestructionThread)0>::deref(atomic_uint *result)
{
  add = atomic_fetch_add(result, 0xFFFFFFFF);
  if (add == 1)
  {
    v6 = v1;
    atomic_store(add, result);
    v3 = (result - 8);
    WTF::FunctionDispatcher::~FunctionDispatcher((result - 2));
    WTF::WorkQueueBase::~WorkQueueBase(v3);

    return WTF::fastFree(v4, v5);
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::NetworkCache::Storage::synchronize(void)::$_0,void>::~CallableWrapper(void *a1)
{
  *a1 = &unk_1F11090C8;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::NetworkCache::Storage,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkCache::Storage::synchronize(void)::$_0,void>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F11090C8;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::NetworkCache::Storage,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

WTF *WebKit::NetworkCache::Storage::synchronize(void)::$_0::operator()(unint64_t a1)
{
  v2 = WTF::fastMalloc(0x8000);
  bzero(v2, 0x8000uLL);
  v27 = v2;
  v3 = WTF::fastMalloc(0x8000);
  bzero(v3, 0x8000uLL);
  v25 = 0;
  v26 = v3;
  v24 = 0;
  WTF::String::isolatedCopy();
  v4 = WTF::fastMalloc(0x28);
  *v4 = &unk_1F1109168;
  v4[1] = &v25;
  v4[2] = &v26;
  v4[3] = &v25 + 4;
  v4[4] = &v27;
  v23 = v4;
  WebKit::NetworkCache::traverseRecordsFiles(v22, &v24, &v23);
  if (v23)
  {
    (*(*v23 + 8))(v23);
  }

  v6 = v22[0];
  v22[0] = 0;
  if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v6, v5);
  }

  v7 = WebKit::NetworkCache::Storage::estimateRecordsSize(a1, HIDWORD(v25), v25);
  WebKit::NetworkCache::BlobStorage::synchronize((a1 + 344));
  WTF::String::isolatedCopy();
  WebKit::NetworkCache::deleteEmptyRecordsDirectories(v22, v8);
  v10 = v22[0];
  v22[0] = 0;
  if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    v10 = WTF::StringImpl::destroy(v10, v9);
  }

  WTF::RunLoop::mainSingleton(v10);
  v22[0] = a1;
  while (1)
  {
    v11 = *a1;
    if ((*a1 & 1) == 0)
    {
      break;
    }

    v21 = *a1;
    atomic_compare_exchange_strong_explicit(a1, &v21, v11 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v21 == v11)
    {
      goto LABEL_8;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_8:
  v12 = v27;
  v27 = 0;
  v13 = v26;
  v26 = 0;
  v22[4] = v7;
  v14 = WTF::fastMalloc(0x30);
  *v14 = &unk_1F11091E0;
  v14[1] = a1;
  v14[2] = a1;
  v14[3] = v12;
  memset(&v22[1], 0, 24);
  v14[4] = v13;
  v14[5] = v7;
  v23 = v14;
  WTF::RunLoop::dispatch();
  v16 = v23;
  v23 = 0;
  if (v16)
  {
    (*(*v16 + 8))(v16);
  }

  WebKit::NetworkCache::Storage::synchronize(void)::$_0::operator()(void)::{lambda(void)#1}::~(v22, v15);
  v18 = v24;
  v24 = 0;
  if (v18 && atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v18, v17);
  }

  v19 = v26;
  v26 = 0;
  if (v19)
  {
    WTF::fastFree(v19, v17);
  }

  result = v27;
  v27 = 0;
  if (result)
  {
    return WTF::fastFree(result, v17);
  }

  return result;
}

uint64_t WebKit::NetworkCache::traverseRecordsFiles(WTF::FileSystemImpl *a1, uint64_t a2, uint64_t a3)
{
  v6 = WTF::fastMalloc(0x20);
  *v6 = &unk_1F11090F0;
  v6[1] = a1;
  v6[2] = a2;
  v6[3] = a3;
  v9 = v6;
  WebKit::NetworkCache::traverseDirectory(a1, &v9);
  v7 = *(*v6 + 8);

  return v7(v6);
}

uint64_t WebKit::NetworkCache::deleteEmptyRecordsDirectories(WebKit::NetworkCache *this, const WTF::String *a2)
{
  v3 = WTF::fastMalloc(0x10);
  *v3 = &unk_1F1109190;
  v3[1] = this;
  v6 = v3;
  WebKit::NetworkCache::traverseDirectory(this, &v6);
  v4 = *(*v3 + 8);

  return v4(v3);
}

void *WebKit::NetworkCache::Storage::synchronize(void)::$_0::operator()(void)::{lambda(void)#1}::~(void *a1, void *a2)
{
  v3 = a1[3];
  a1[3] = 0;
  if (v3)
  {
    WTF::fastFree(v3, a2);
  }

  v4 = a1[2];
  a1[2] = 0;
  if (v4)
  {
    WTF::fastFree(v4, a2);
  }

  v5 = a1[1];
  a1[1] = 0;
  if (v5)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::NetworkCache::Storage,(WTF::DestructionThread)2>::deref(v5);
  }

  return a1;
}

WTF::StringImpl *WTF::Detail::CallableWrapper<WebKit::NetworkCache::traverseRecordsFiles(WTF::String const&,WTF::String const&,WTF::Function<void ()(WTF::String const&,WTF::String const&,WTF::String const&,BOOL,WTF::String const&)> const&)::$_0,void,WTF::String const&,WebKit::NetworkCache::DirectoryEntryType>::call(WTF::StringImpl *result, uint64_t a2, int a3)
{
  if (!a3)
  {
    v11[5] = v3;
    v11[6] = v4;
    v5 = result;
    WTF::FileSystemImpl::pathByAppendingComponent();
    v6 = *(v5 + 2);
    v7 = *(v5 + 3);
    v8 = WTF::fastMalloc(0x20);
    *v8 = &unk_1F1109118;
    v8[1] = v6;
    v8[2] = v11;
    v8[3] = v7;
    v10 = v8;
    WebKit::NetworkCache::traverseDirectory(v11, &v10);
    (*(*v8 + 8))(v8);
    result = v11[0];
    v11[0] = 0;
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

WTF::StringImpl *WTF::Detail::CallableWrapper<WebKit::NetworkCache::traverseRecordsFiles(WTF::String const&,WTF::String const&,WTF::Function<void ()(WTF::String const&,WTF::String const&,WTF::String const&,BOOL,WTF::String const&)> const&)::$_0::operator() const(WTF::String const&,WebKit::NetworkCache::DirectoryEntryType)::{lambda(WTF::String const&,WebKit::NetworkCache::DirectoryEntryType)#1},void,WTF::String const&,WebKit::NetworkCache::DirectoryEntryType>::call(WTF::StringImpl *result, const WTF::StringImpl **a2, const WTF::StringImpl *a3)
{
  if (!a3)
  {
    v12[5] = v3;
    v12[6] = v4;
    v6 = result;
    v7 = **(result + 1);
    if (!v7 || !*(v7 + 1) || (result = WTF::equal(v7, *a2, a3), result))
    {
      WTF::FileSystemImpl::pathByAppendingComponent();
      v8 = *(v6 + 3);
      v9 = WTF::fastMalloc(0x20);
      *v9 = &unk_1F1109140;
      v9[1] = v8;
      v9[2] = v12;
      v9[3] = a2;
      v11 = v9;
      WebKit::NetworkCache::traverseDirectory(v12, &v11);
      (*(*v9 + 8))(v9);
      result = v12[0];
      v12[0] = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          return WTF::StringImpl::destroy(result, v10);
        }
      }
    }
  }

  return result;
}

WTF::StringImpl *WTF::Detail::CallableWrapper<WebKit::NetworkCache::traverseRecordsFiles(WTF::String const&,WTF::String const&,WTF::Function<void ()(WTF::String const&,WTF::String const&,WTF::String const&,BOOL,WTF::String const&)> const&)::$_0::operator() const(WTF::String const&,WebKit::NetworkCache::DirectoryEntryType)::{lambda(WTF::String const&,WebKit::NetworkCache::DirectoryEntryType)#1}::operator() const(WTF::String const&,WebKit::NetworkCache::DirectoryEntryType)::{lambda(WTF::String const&,WebKit::NetworkCache::DirectoryEntryType)#1},void,WTF::String const&,WebKit::NetworkCache::DirectoryEntryType>::call(WTF::StringImpl *result, WTF::StringImpl **this, int a3)
{
  if (a3 == 1)
  {
    v9[3] = v3;
    v9[4] = v4;
    if (*this)
    {
      if (*(*this + 1) >= 0x28u)
      {
        v6 = result;
        WTF::String::left(this, 0x28u, v9);
        if (*this && *(*this + 1) >= 0x29u)
        {
          v7 = WTF::StringImpl::endsWith();
        }

        else
        {
          v7 = 0;
        }

        (*(***(v6 + 1) + 16))(**(v6 + 1), this, v9, *(v6 + 3), v7, *(v6 + 2));
        result = v9[0];
        v9[0] = 0;
        if (result)
        {
          if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            return WTF::StringImpl::destroy(result, v8);
          }
        }
      }
    }
  }

  return result;
}

WTF::StringImpl *WTF::Detail::CallableWrapper<WebKit::NetworkCache::Storage::synchronize(void)::$_0::operator()(void)::{lambda(WTF::String const&,WTF::String const&,WTF::String const&,BOOL,WTF::String const&)#1},void,WTF::String const&,WTF::String const&,WTF::String const&,BOOL,WTF::String const&>::call(void *a1, uint64_t a2, uint64_t *a3, uint64_t a4, int a5)
{
  v42[3] = *MEMORY[0x1E69E9840];
  WTF::FileSystemImpl::pathByAppendingComponent();
  v9 = *a3;
  if (*a3 && *(v9 + 4) == 40)
  {
    v10 = *(v9 + 8);
    if ((*(v9 + 16) & 4) != 0)
    {
      v23 = *v10;
      if ((v23 - 48) >= 0xA && ((v23 | 0x20) - 97) > 5u)
      {
        goto LABEL_46;
      }

      v25 = v10[1];
      v26 = v25 - 48;
      if ((v25 - 48) >= 0xA && ((v25 | 0x20) - 97) > 5u)
      {
        goto LABEL_46;
      }

      v28 = 0;
      v29 = v10 + 3;
      do
      {
        v17 = v28;
        if (v23 >= 0x41u)
        {
          v30 = 9;
        }

        else
        {
          v30 = 0;
        }

        v31 = v30 + v23;
        v32 = v25;
        v33 = (v25 + 9) & 0xF;
        if (v32 >= 0x41)
        {
          v26 = v33;
        }

        *(v42 + v17) = v26 | (16 * v31);
        if (v17 == 19)
        {
          break;
        }

        v23 = *(v29 - 1);
        if ((v23 - 48) >= 0xA && ((v23 | 0x20) - 97) > 5u)
        {
          break;
        }

        v34 = *v29;
        v29 += 2;
        LOBYTE(v25) = v34;
        v26 = v34 - 48;
        v28 = v17 + 1;
      }

      while ((v34 - 48) < 0xA || ((v25 | 0x20) - 97) <= 5u);
    }

    else
    {
      v11 = *v10;
      if ((v11 - 48) >= 0xA && ((v11 | 0x20) - 97) > 5u)
      {
        goto LABEL_46;
      }

      v13 = *(v10 + 1);
      if ((v13 - 48) >= 0xA && ((v13 | 0x20) - 97) > 5u)
      {
        goto LABEL_46;
      }

      v15 = 0;
      v16 = (v10 + 6);
      do
      {
        v17 = v15;
        v18 = v13;
        v19 = v13 - 48;
        v20 = (v13 + 9) & 0xF;
        if (v18 < 0x41)
        {
          v20 = v19;
        }

        if (v11 >= 0x41u)
        {
          v21 = 9;
        }

        else
        {
          v21 = 0;
        }

        *(v42 + v17) = v20 | (16 * (v21 + v11));
        if (v17 == 19)
        {
          break;
        }

        v11 = *(v16 - 1);
        if ((v11 - 48) >= 0xA && ((v11 | 0x20) - 97) > 5u)
        {
          break;
        }

        v22 = *v16;
        v16 += 2;
        LOWORD(v13) = v22;
        v15 = v17 + 1;
      }

      while ((v22 - 48) < 0xA || ((v13 | 0x20) - 97) <= 5u);
    }

    if (v17 == 19)
    {
      if (a5)
      {
        v35 = a1[1];
        v36 = a1[2];
      }

      else
      {
        v35 = a1[3];
        v36 = a1[4];
      }

      ++*v35;
      v38 = *v36;
      v39 = v42[0];
      v40 = HIDWORD(v42[0]);
      *(v38 + 4 * ((v42[0] >> 5) & 0x1FFFLL)) |= 1 << SLOBYTE(v42[0]);
      *(v38 + 4 * ((v39 >> 37) & 0x1FFF)) |= 1 << v40;
      goto LABEL_47;
    }
  }

LABEL_46:
  WTF::FileSystemImpl::deleteFile(&v41, v8);
LABEL_47:
  result = v41;
  v41 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v8);
    }
  }

  return result;
}

WTF::StringImpl *WTF::Detail::CallableWrapper<WebKit::NetworkCache::deleteEmptyRecordsDirectories(WTF::String const&)::$_0,void,WTF::String const&,WebKit::NetworkCache::DirectoryEntryType>::call(WTF::StringImpl *result, uint64_t a2, int a3)
{
  if (!a3)
  {
    v10[5] = v3;
    v10[6] = v4;
    WTF::FileSystemImpl::pathByAppendingComponent();
    v5 = WTF::fastMalloc(0x10);
    *v5 = &unk_1F11091B8;
    *(v5 + 1) = v10;
    v9 = v5;
    WebKit::NetworkCache::traverseDirectory(v10, &v9);
    (*(*v5 + 8))(v5);
    WTF::FileSystemImpl::pathByAppendingComponent();
    WTF::FileSystemImpl::deleteEmptyDirectory(&v9, v6);
    v8 = v9;
    v9 = 0;
    if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v8, v7);
    }

    result = v10[0];
    v10[0] = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(result, v7);
      }
    }
  }

  return result;
}

WTF::StringImpl *WTF::Detail::CallableWrapper<WebKit::NetworkCache::deleteEmptyRecordsDirectories(WTF::String const&)::$_0::operator() const(WTF::String const&,WebKit::NetworkCache::DirectoryEntryType)::{lambda(WTF::String const&,WebKit::NetworkCache::DirectoryEntryType)#1},void,WTF::String const&,WebKit::NetworkCache::DirectoryEntryType>::call(WTF::StringImpl *result, uint64_t a2, int a3)
{
  if (!a3)
  {
    v7[1] = v3;
    v7[2] = v4;
    WTF::FileSystemImpl::pathByAppendingComponent();
    WTF::FileSystemImpl::deleteEmptyDirectory(v7, v5);
    result = v7[0];
    v7[0] = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(result, v6);
      }
    }
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::NetworkCache::Storage::synchronize(void)::$_0::operator()(void)::{lambda(void)#1},void>::~CallableWrapper(void *a1, void *a2)
{
  *a1 = &unk_1F11091E0;
  v3 = a1[4];
  a1[4] = 0;
  if (v3)
  {
    WTF::fastFree(v3, a2);
  }

  v4 = a1[3];
  a1[3] = 0;
  if (v4)
  {
    WTF::fastFree(v4, a2);
  }

  v5 = a1[2];
  a1[2] = 0;
  if (v5)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::NetworkCache::Storage,(WTF::DestructionThread)2>::deref(v5);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkCache::Storage::synchronize(void)::$_0::operator()(void)::{lambda(void)#1},void>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F11091E0;
  v3 = *(this + 4);
  *(this + 4) = 0;
  if (v3)
  {
    WTF::fastFree(v3, a2);
  }

  v4 = *(this + 3);
  *(this + 3) = 0;
  if (v4)
  {
    WTF::fastFree(v4, a2);
  }

  v5 = *(this + 2);
  *(this + 2) = 0;
  if (v5)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::NetworkCache::Storage,(WTF::DestructionThread)2>::deref(v5);
  }

  return WTF::fastFree(this, a2);
}

uint64_t *WebKit::NetworkCache::Storage::synchronize(void)::$_0::operator()(void)::{lambda(void)#1}::operator()(void *a1, void *a2)
{
  v3 = *a1;
  v6 = *(*a1 + 96);
  v4 = *a1 + 96;
  v5 = v6;
  v7 = *(v3 + 108);
  if (v7)
  {
    v16 = a1[2];
    v17 = 20 * v7;
    do
    {
      v18 = *v5;
      v5 = (v5 + 20);
      *(v16 + 4 * ((v18 >> 5) & 0x1FFF)) |= 1 << v18;
      *(v16 + 4 * ((v18 >> 37) & 0x1FFF)) |= 1 << SBYTE4(v18);
      v17 -= 20;
    }

    while (v17);
  }

  WTF::Vector<std::array<unsigned char,20ul>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(v4, a2);
  v9 = *(v3 + 112);
  v10 = *(v3 + 124);
  if (v10)
  {
    v19 = a1[3];
    v20 = 20 * v10;
    do
    {
      v21 = *v9;
      v9 = (v9 + 20);
      *(v19 + 4 * ((v21 >> 5) & 0x1FFF)) |= 1 << v21;
      *(v19 + 4 * ((v21 >> 37) & 0x1FFF)) |= 1 << SBYTE4(v21);
      v20 -= 20;
    }

    while (v20);
  }

  WTF::Vector<std::array<unsigned char,20ul>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(v3 + 112, v8);
  v12 = a1[2];
  a1[2] = 0;
  v13 = *(v3 + 64);
  *(v3 + 64) = v12;
  if (v13)
  {
    WTF::fastFree(v13, v11);
  }

  v14 = a1[3];
  a1[3] = 0;
  result = *(v3 + 72);
  *(v3 + 72) = v14;
  if (result)
  {
    result = WTF::fastFree(result, v11);
  }

  *(v3 + 48) = a1[4];
  *(v3 + 80) = 0;
  if (*(v3 + 24) == 1)
  {

    return WebKit::NetworkCache::Storage::dispatchPendingWriteOperations(v3);
  }

  return result;
}

uint64_t WTF::Vector<std::array<unsigned char,20ul>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(uint64_t result, void *a2)
{
  if (*(result + 8))
  {
    if (*(result + 12))
    {
      *(result + 12) = 0;
    }

    v2 = *result;
    if (*result)
    {
      *result = 0;
      *(result + 8) = 0;
      return WTF::fastFree(v2, a2);
    }
  }

  return result;
}

uint64_t WTF::Vector<std::array<unsigned char,20ul>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,std::array<unsigned char,20ul> const&>(uint64_t a1, unint64_t a2)
{
  v3 = WTF::Vector<std::array<unsigned char,20ul>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(a1, *(a1 + 12) + 1, a2);
  v4 = *a1 + 20 * *(a1 + 12);
  v5 = *v3;
  *(v4 + 16) = *(v3 + 16);
  *v4 = v5;
  ++*(a1 + 12);
  return 1;
}

unint64_t WTF::Vector<std::array<unsigned char,20ul>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v3 = a3;
  v5 = *a1;
  if (*a1 > a3 || v5 + 20 * *(a1 + 12) <= a3)
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

    WTF::Vector<std::array<unsigned char,20ul>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v12);
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

    WTF::Vector<std::array<unsigned char,20ul>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v9);
    return *a1 + v6;
  }

  return v3;
}

void **WTF::Vector<std::array<unsigned char,20ul>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(void **result, unint64_t a2)
{
  if (*(result + 2) < a2)
  {
    if (a2 >= 0xCCCCCCD)
    {
      __break(0xC471u);
    }

    else
    {
      v2 = result;
      v3 = *result;
      v4 = *(result + 3);
      v5 = 20 * a2;
      v6 = WTF::fastMalloc((20 * a2));
      *(v2 + 2) = v5 / 0x14;
      *v2 = v6;
      result = memcpy(v6, v3, 20 * v4);
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

void *WTF::Detail::CallableWrapper<WebKit::NetworkCache::Storage::storeBodyAsBlob(WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::WriteOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::NetworkCache::Storage::Record const&)::$_0,void>::~CallableWrapper(void *a1)
{
  *a1 = &unk_1F1109208;
  v2 = a1[3];
  if (v2)
  {
    os_release(v2);
  }

  v3 = a1[2];
  a1[2] = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::NetworkCache::Storage,(WTF::DestructionThread)2>::deref(v3);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkCache::Storage::storeBodyAsBlob(WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::WriteOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::NetworkCache::Storage::Record const&)::$_0,void>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F1109208;
  v3 = *(this + 3);
  if (v3)
  {
    os_release(v3);
  }

  v4 = *(this + 2);
  *(this + 2) = 0;
  if (v4)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::NetworkCache::Storage,(WTF::DestructionThread)2>::deref(v4);
  }

  return WTF::fastFree(this, a2);
}

uint64_t *WTF::Detail::CallableWrapper<WebKit::NetworkCache::Storage::storeBodyAsBlob(WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::WriteOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::NetworkCache::Storage::Record const&)::$_0,void>::call(uint64_t a1)
{
  v1 = *(a1 + 80);
  if (v1 == -1)
  {
    __break(0xC471u);
    JUMPOUT(0x19DDAF9FCLL);
  }

  if (!v1)
  {
    goto LABEL_23;
  }

  v3 = *(a1 + 8);
  v4 = *(v3 + 256);
  if (!v4)
  {
    goto LABEL_23;
  }

  v5 = *(v4 - 8);
  v6 = (v1 + ~(v1 << 32)) ^ ((v1 + ~(v1 << 32)) >> 22);
  v7 = 9 * ((v6 + ~(v6 << 13)) ^ ((v6 + ~(v6 << 13)) >> 8));
  v8 = (v7 ^ (v7 >> 15)) + ~((v7 ^ (v7 >> 15)) << 27);
  v9 = v5 & ((v8 >> 31) ^ v8);
  v10 = *(v4 + 16 * v9);
  if (v10 != v1)
  {
    v17 = 1;
    while (v10)
    {
      v9 = (v9 + v17) & v5;
      v10 = *(v4 + 16 * v9);
      ++v17;
      if (v10 == v1)
      {
        goto LABEL_5;
      }
    }

LABEL_23:
    __break(0xC471u);
    JUMPOUT(0x19DDAF9DCLL);
  }

LABEL_5:
  v11 = *(v4 + 16 * v9 + 8);
  if (!v11)
  {
    goto LABEL_23;
  }

  v12 = *(v3 + 72);
  if (v12)
  {
    v13 = *(v11 + 40);
    *(v12 + 4 * ((v13 >> 5) & 0x1FFF)) |= 1 << v13;
    *(v12 + 4 * ((v13 >> 37) & 0x1FFF)) |= 1 << SBYTE4(v13);
  }

  if (*(v3 + 80) == 1)
  {
    v18 = *(v3 + 124);
    if (v18 == *(v3 + 120))
    {
      WTF::Vector<std::array<unsigned char,20ul>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,std::array<unsigned char,20ul> const&>(v3 + 112, v11 + 40);
    }

    else
    {
      v19 = *(v3 + 112) + 20 * v18;
      v20 = *(v11 + 40);
      *(v19 + 16) = *(v11 + 56);
      *v19 = v20;
      ++*(v3 + 124);
    }
  }

  v14 = *(v11 + 176);
  if (v14)
  {
    (*(*v14 + 16))(v14, a1 + 24);
  }

  v15 = *(a1 + 80);

  return WebKit::NetworkCache::Storage::finishWriteOperationActivity(v3, v15);
}

void *WTF::Detail::CallableWrapper<WebKit::NetworkCache::Storage::remove(WebKit::NetworkCache::Key const&)::$_0,void>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F1109230;
  v3 = a1[6];
  a1[6] = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, a2);
  }

  v4 = a1[5];
  a1[5] = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  v5 = a1[4];
  a1[4] = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, a2);
  }

  v6 = a1[3];
  a1[3] = 0;
  if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v6, a2);
  }

  v7 = a1[2];
  a1[2] = 0;
  if (v7)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::NetworkCache::Storage,(WTF::DestructionThread)2>::deref(v7);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkCache::Storage::remove(WebKit::NetworkCache::Key const&)::$_0,void>::~CallableWrapper(WTF *this, WTF::StringImpl *a2)
{
  *this = &unk_1F1109230;
  v3 = *(this + 6);
  *(this + 6) = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, a2);
  }

  v4 = *(this + 5);
  *(this + 5) = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  v5 = *(this + 4);
  *(this + 4) = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, a2);
  }

  v6 = *(this + 3);
  *(this + 3) = 0;
  if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v6, a2);
  }

  v7 = *(this + 2);
  *(this + 2) = 0;
  if (v7)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::NetworkCache::Storage,(WTF::DestructionThread)2>::deref(v7);
  }

  return WTF::fastFree(this, a2);
}

WTF::StringImpl *WTF::VectorTypeOperations<WebKit::NetworkCache::Key>::destruct(WTF::StringImpl *result, WTF::StringImpl *a2)
{
  if (result != a2)
  {
    v3 = result;
    do
    {
      v4 = v3[3];
      v3[3] = 0;
      if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v4, a2);
      }

      v5 = v3[2];
      v3[2] = 0;
      if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v5, a2);
      }

      v6 = v3[1];
      v3[1] = 0;
      if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v6, a2);
      }

      result = *v3;
      *v3 = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          result = WTF::StringImpl::destroy(result, a2);
        }
      }

      v3 += 9;
    }

    while (v3 != a2);
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::NetworkCache::Storage::remove(WTF::Vector<WebKit::NetworkCache::Key,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,WTF::CompletionHandler<void ()(void)> &&)::$_1,void>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F1109258;
  v3 = a1[5];
  a1[5] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  WTF::Vector<WebKit::NetworkCache::Key,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector((a1 + 3), a2);
  v4 = a1[2];
  a1[2] = 0;
  if (v4)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::NetworkCache::Storage,(WTF::DestructionThread)2>::deref(v4);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkCache::Storage::remove(WTF::Vector<WebKit::NetworkCache::Key,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,WTF::CompletionHandler<void ()(void)> &&)::$_1,void>::~CallableWrapper(WTF *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F1109258;
  v3 = *(a1 + 5);
  *(a1 + 5) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  WTF::Vector<WebKit::NetworkCache::Key,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(a1 + 24, a2);
  v5 = *(a1 + 2);
  *(a1 + 2) = 0;
  if (v5)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::NetworkCache::Storage,(WTF::DestructionThread)2>::deref(v5);
  }

  return WTF::fastFree(a1, v4);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkCache::Storage::remove(WTF::Vector<WebKit::NetworkCache::Key,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,WTF::CompletionHandler<void ()(void)> &&)::$_1,void>::call(WTF::StringImpl *a1)
{
  v1 = a1;
  v2 = *(a1 + 9);
  if (v2)
  {
    v3 = *(a1 + 1);
    v4 = *(a1 + 3);
    v5 = 72 * v2;
    do
    {
      a1 = WebKit::NetworkCache::Storage::deleteFiles(v3, v4);
      v4 = (v4 + 72);
      v5 -= 72;
    }

    while (v5);
  }

  WTF::RunLoop::mainSingleton(a1);
  std::make_unique[abi:sn200100]<WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(void)>,void>,WTF::CompletionHandler<void ()(void)>,0>(v1 + 5, &v7);
  WTF::RunLoop::dispatch();
  result = v7;
  v7 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::NetworkCache::Storage::updateFileModificationTime(WTF::String &&)::$_0,void>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  v3 = a1[1];
  *a1 = &unk_1F1109280;
  a1[1] = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkCache::Storage::updateFileModificationTime(WTF::String &&)::$_0,void>::~CallableWrapper(WTF *this, WTF::StringImpl *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1109280;
  *(this + 1) = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

_DWORD *WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::ReadOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::ReadOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::NetworkCache::Storage::ReadOperation>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::ReadOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::NetworkCache::Storage::ReadOperation>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::ReadOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::ReadOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::NetworkCache::Storage::ReadOperation>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::ReadOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::ReadOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkCache::Storage::ReadOperation>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::ReadOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(uint64_t *a1)
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

  return WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::ReadOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::ReadOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::NetworkCache::Storage::ReadOperation>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::ReadOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::NetworkCache::Storage::ReadOperation>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::ReadOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::ReadOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::NetworkCache::Storage::ReadOperation>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::ReadOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::ReadOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkCache::Storage::ReadOperation>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::ReadOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(a1, v3);
}

_DWORD *WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::ReadOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::ReadOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::NetworkCache::Storage::ReadOperation>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::ReadOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::NetworkCache::Storage::ReadOperation>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::ReadOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::ReadOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::NetworkCache::Storage::ReadOperation>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::ReadOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::ReadOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkCache::Storage::ReadOperation>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::ReadOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(uint64_t *a1, unsigned int a2)
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
      if (*v10)
      {
        if (v11 != -1)
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
          std::unique_ptr<WebKit::NetworkCache::Storage::ReadOperation>::reset[abi:sn200100]((v21 + 8), 0);
          *v21 = *v10;
          v22 = v10[1];
          v10[1] = 0;
          *(v21 + 8) = v22;
          std::unique_ptr<WebKit::NetworkCache::Storage::ReadOperation>::reset[abi:sn200100](v10 + 1, 0);
        }
      }

      else
      {
        std::unique_ptr<WebKit::NetworkCache::Storage::ReadOperation>::reset[abi:sn200100](v10 + 1, 0);
      }
    }
  }

  else if (!v4)
  {
    return result;
  }

  return WTF::fastFree((v4 - 16), v8);
}

void *WTF::Detail::CallableWrapper<WebKit::NetworkCache::Storage::dispatchReadOperation(std::unique_ptr<WebKit::NetworkCache::Storage::ReadOperation>)::$_0,void>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F11092A8;
  v3 = a1[5];
  a1[5] = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, a2);
  }

  v4 = a1[4];
  a1[4] = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  v5 = a1[2];
  a1[2] = 0;
  if (v5)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::NetworkCache::Storage,(WTF::DestructionThread)2>::deref(v5);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkCache::Storage::dispatchReadOperation(std::unique_ptr<WebKit::NetworkCache::Storage::ReadOperation>)::$_0,void>::~CallableWrapper(WTF *this, WTF::StringImpl *a2)
{
  *this = &unk_1F11092A8;
  v3 = *(this + 5);
  *(this + 5) = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, a2);
  }

  v4 = *(this + 4);
  *(this + 4) = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  v5 = *(this + 2);
  *(this + 2) = 0;
  if (v5)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::NetworkCache::Storage,(WTF::DestructionThread)2>::deref(v5);
  }

  return WTF::fastFree(this, a2);
}

void WTF::Detail::CallableWrapper<WebKit::NetworkCache::Storage::dispatchReadOperation(std::unique_ptr<WebKit::NetworkCache::Storage::ReadOperation>)::$_0,void>::call(void *a1)
{
  v115 = *MEMORY[0x1E69E9840];
  v2 = a1[1];
  v3 = a1[3];
  WTF::MonotonicTime::now(a1);
  v5 = v4;
  EntireFile = WTF::FileSystemImpl::readEntireFile(&v73, (a1 + 4), v6);
  memset(v104, 0, 32);
  v108 = 0;
  v109 = 0uLL;
  v110 = 0;
  v111[0] = 0;
  v111[20] = 0;
  v105 = 0u;
  v106 = 0u;
  v107 = 0;
  if (v75 == 1)
  {
    WebKit::NetworkCache::Data::Data(v76, &v73);
    memset(v85, 0, 32);
    *(&v87 + 1) = 0;
    v90 = 0;
    v92 = 0;
    LOBYTE(v93) = 0;
    *&v94 = 0;
    data = 0;
    v81 = 0;
    v83 = 0;
    v82 = 0;
    v8 = WebKit::NetworkCache::decodeRecordHeader(v76, &v84, &data, v2 + 28);
    if (v8 && (v10 = *(&v87 + 1), WTF::WallTime::now(v8), v10 <= v11))
    {
      v77 = 0;
      v78 = 0uLL;
      v79 = 0;
      if (v93 != 1)
      {
        goto LABEL_22;
      }

      v12 = v94;
      if (v81 || !data)
      {
        size = v82;
      }

      else
      {
        size = dispatch_data_get_size(data);
      }

      v14 = size + v12;
      v15 = v92;
      v16 = (v14 + v92);
      if (v76[1] || !v76[0])
      {
        v17 = v76[2];
      }

      else
      {
        v17 = dispatch_data_get_size(v76[0]);
      }

      if (v16 != v17)
      {
        goto LABEL_124;
      }

      subrange = dispatch_data_create_subrange(v76[0], v14, v15);
      memset(&object[1], 0, 17);
      object[0] = subrange;
      WTF::OSObjectPtr<dispatch_data_s *>::operator=(&v77, object);
      v78 = *&object[1];
      v79 = object[3];
      if (object[0])
      {
        os_release(object[0]);
      }

      WebKit::NetworkCache::computeSHA1(&v77, v2 + 28);
      v19 = *v91 == object[0] && *&v91[8] == object[1];
      if (v19 && *&v91[16] == LODWORD(object[2]))
      {
LABEL_22:
        v112 = *v91;
        v113 = *&v91[16];
        v114 = 1;
        WebKit::NetworkCache::Storage::Record::Record(object, v85, &data, &v77, &v112, *(&v87 + 1));
      }

      else
      {
LABEL_124:
        memset(v103, 0, 24);
        memset(v102, 0, sizeof(v102));
        v100 = 0u;
        memset(v101, 0, sizeof(v101));
        v98 = 0u;
        v99 = 0u;
        memset(object, 0, sizeof(object));
      }

      if (v77)
      {
        os_release(v77);
      }
    }

    else
    {
      memset(v103, 0, 24);
      memset(v102, 0, sizeof(v102));
      v100 = 0u;
      memset(v101, 0, sizeof(v101));
      v98 = 0u;
      v99 = 0u;
      memset(object, 0, sizeof(object));
    }

    if (data)
    {
      os_release(data);
    }

    v21 = *&v85[24];
    *&v85[24] = 0;
    if (v21 && atomic_fetch_add_explicit(v21, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v21, v9);
    }

    v22 = *&v85[16];
    *&v85[16] = 0;
    if (v22 && atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v22, v9);
    }

    v23 = *&v85[8];
    *&v85[8] = 0;
    if (v23 && atomic_fetch_add_explicit(v23, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v23, v9);
    }

    v24 = *v85;
    *v85 = 0;
    if (v24 && atomic_fetch_add_explicit(v24, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v24, v9);
    }

    WebKit::NetworkCache::Key::operator=(v104, object);
    *&v105 = *(&v100 + 1);
    WTF::OSObjectPtr<dispatch_data_s *>::operator=(&v105 + 1, v101);
    v106 = *&v101[1];
    v107 = v101[3];
    WTF::OSObjectPtr<dispatch_data_s *>::operator=(&v108, v102);
    v109 = *&v102[1];
    v110 = v102[3];
    *v111 = v103[0];
    *&v111[13] = *(v103 + 13);
    if (v102[0])
    {
      os_release(v102[0]);
    }

    if (v101[0])
    {
      os_release(v101[0]);
    }

    v26 = object[3];
    object[3] = 0;
    if (v26 && atomic_fetch_add_explicit(v26, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v26, v25);
    }

    v27 = object[2];
    object[2] = 0;
    if (v27 && atomic_fetch_add_explicit(v27, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v27, v25);
    }

    v28 = object[1];
    object[1] = 0;
    if (v28 && atomic_fetch_add_explicit(v28, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v28, v25);
    }

    v29 = object[0];
    object[0] = 0;
    if (v29 && atomic_fetch_add_explicit(v29, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v29, v25);
    }

    EntireFile = v76[0];
    if (v76[0])
    {
      os_release(v76[0]);
    }
  }

  v30 = WTF::MonotonicTime::now(EntireFile);
  v32 = v31;
  WTF::RunLoop::mainSingleton(v30);
  v84 = v2;
  while (1)
  {
    v33 = *v2;
    if ((*v2 & 1) == 0)
    {
      break;
    }

    v71 = *v2;
    atomic_compare_exchange_strong_explicit(v2, &v71, v33 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v71 == v33)
    {
      goto LABEL_44;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v2);
LABEL_44:
  *v85 = v2;
  *&v85[8] = v3;
  *&v85[16] = v5;
  *&v85[24] = v32;
  WebKit::NetworkCache::Storage::Record::isolatedCopy(&v85[32], v104);
  v34 = WTF::fastMalloc(0xD8);
  *v34 = &unk_1F11092D0;
  *(v34 + 1) = v84;
  v35 = *v85;
  *v85 = 0;
  *(v34 + 2) = v35;
  v36 = *&v85[8];
  *(v34 + 5) = *&v85[24];
  *(v34 + 24) = v36;
  *(v34 + 6) = *&v85[32];
  v37 = *&v85[40];
  *&v85[32] = 0u;
  *(v34 + 7) = v37;
  *(v34 + 8) = v86;
  v38 = *(&v86 + 1);
  v86 = 0u;
  *(v34 + 9) = v38;
  v39 = v87;
  v40 = v88;
  *(v34 + 14) = v89;
  *(v34 + 5) = v39;
  *(v34 + 6) = v40;
  *(v34 + 15) = v90;
  v41 = *v91;
  *(v34 + 16) = *v91;
  if (v41)
  {
    os_retain(v41);
  }

  v42 = *&v91[8];
  v34[152] = v92;
  *(v34 + 136) = v42;
  v43 = v93;
  *(v34 + 20) = v93;
  if (v43)
  {
    os_retain(v43);
  }

  v44 = v94;
  v34[184] = v95;
  *(v34 + 168) = v44;
  v45 = *v96;
  *(v34 + 205) = *&v96[13];
  *(v34 + 12) = v45;
  object[0] = v34;
  WTF::RunLoop::dispatch();
  v47 = object[0];
  object[0] = 0;
  if (v47)
  {
    (*(*v47 + 8))(v47);
  }

  if (v93)
  {
    os_release(v93);
  }

  if (*v91)
  {
    os_release(*v91);
  }

  v48 = *(&v86 + 1);
  *(&v86 + 1) = 0;
  if (v48 && atomic_fetch_add_explicit(v48, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v48, v46);
  }

  v49 = v86;
  *&v86 = 0;
  if (v49 && atomic_fetch_add_explicit(v49, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v49, v46);
  }

  v50 = *&v85[40];
  *&v85[40] = 0;
  if (v50 && atomic_fetch_add_explicit(v50, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v50, v46);
  }

  v51 = *&v85[32];
  *&v85[32] = 0;
  if (v51 && atomic_fetch_add_explicit(v51, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v51, v46);
  }

  v52 = *v85;
  *v85 = 0;
  if (v52)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::NetworkCache::Storage,(WTF::DestructionThread)2>::deref(v52);
  }

  if (v108)
  {
    os_release(v108);
  }

  if (*(&v105 + 1))
  {
    os_release(*(&v105 + 1));
  }

  v53 = v104[3];
  v104[3] = 0;
  if (v53 && atomic_fetch_add_explicit(v53, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v53, v46);
  }

  v54 = v104[2];
  v104[2] = 0;
  if (v54 && atomic_fetch_add_explicit(v54, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v54, v46);
  }

  v55 = v104[1];
  v104[1] = 0;
  if (v55 && atomic_fetch_add_explicit(v55, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v55, v46);
  }

  v56 = v104[0];
  v104[0] = 0;
  if (v56 && atomic_fetch_add_explicit(v56, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    v56 = WTF::StringImpl::destroy(v56, v46);
  }

  if (v75 == 1)
  {
    v56 = v73;
    if (v73)
    {
      v73 = 0;
      v74 = 0;
      v56 = WTF::fastFree(v56, v46);
    }
  }

  v59 = a1[5];
  v58 = a1 + 5;
  v57 = v59;
  if (v59 && *(v57 + 4))
  {
    v60 = *(v58 - 2);
    WTF::MonotonicTime::now(v56);
    v62 = v61;
    WebKit::NetworkCache::BlobStorage::get((v2 + 43), &v84);
    v64 = WTF::MonotonicTime::now(v63);
    v66 = v65;
    WTF::RunLoop::mainSingleton(v64);
    while (1)
    {
      v67 = *v2;
      if ((*v2 & 1) == 0)
      {
        break;
      }

      v72 = *v2;
      atomic_compare_exchange_strong_explicit(v2, &v72, v67 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v72 == v67)
      {
        goto LABEL_107;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v2);
LABEL_107:
    v68 = v84;
    if (v84)
    {
      os_retain(v84);
    }

    *object = *v85;
    LOBYTE(object[2]) = v85[16];
    *(v104 + 7) = *&v85[24];
    *(&v104[2] + 7) = *&v85[40];
    v69 = WTF::fastMalloc(0x68);
    *v69 = &unk_1F11092F8;
    *(v69 + 8) = v2;
    *(v69 + 16) = v2;
    *(v69 + 24) = v60;
    *(v69 + 32) = v68;
    if (v68)
    {
      os_retain(v68);
    }

    *(v69 + 40) = *object;
    *(v69 + 56) = object[2];
    *(v69 + 64) = *(v104 + 7);
    *(v69 + 80) = *(&v104[2] + 7);
    *(v69 + 88) = v62;
    *(v69 + 96) = v66;
    data = v69;
    WTF::RunLoop::dispatch();
    v70 = data;
    data = 0;
    if (v70)
    {
      (*(v70->isa + 1))(v70);
    }

    if (v68)
    {
      os_release(v68);
    }

    if (v84)
    {
      os_release(v84);
    }
  }
}

void *WTF::Detail::CallableWrapper<WebKit::NetworkCache::Storage::readRecordFromData(WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::ReadOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::MonotonicTime,std::optional<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>> &&)::$_0,void>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F11092D0;
  WebKit::NetworkCache::Storage::Record::~Record((a1 + 6), a2);
  v3 = a1[2];
  a1[2] = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::NetworkCache::Storage,(WTF::DestructionThread)2>::deref(v3);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkCache::Storage::readRecordFromData(WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::ReadOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::MonotonicTime,std::optional<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>> &&)::$_0,void>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F11092D0;
  WebKit::NetworkCache::Storage::Record::~Record((a1 + 6), a2);
  v4 = a1[2];
  a1[2] = 0;
  if (v4)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::NetworkCache::Storage,(WTF::DestructionThread)2>::deref(v4);
  }

  return WTF::fastFree(a1, v3);
}

void **WTF::Detail::CallableWrapper<WebKit::NetworkCache::Storage::readRecordFromData(WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::ReadOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::MonotonicTime,std::optional<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>> &&)::$_0,void>::call(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::ReadOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::NetworkCache::Storage::ReadOperation>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::ReadOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::ReadOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkCache::Storage::ReadOperation>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::ReadOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::NetworkCache::Storage::ReadOperation>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::ReadOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::ReadOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkCache::Storage::ReadOperation>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::ReadOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::ReadOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(v2 + 18, *(a1 + 24));
  if (!v3)
  {
    __break(0xC471u);
    JUMPOUT(0x19DDB0CE0);
  }

  v4 = v3;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  *(v3 + 96) = 0;
  if (*(v3 + 372) == 1)
  {
    WTF::OSObjectPtr<dispatch_data_s *>::operator=((a1 + 160), (v3 + 296));
    *(a1 + 168) = *(v4 + 304);
    *(a1 + 184) = *(v4 + 320);
  }

  WebKit::NetworkCache::Key::operator=(v4 + 184, (a1 + 48));
  *(v4 + 256) = *(a1 + 120);
  WTF::OSObjectPtr<dispatch_data_s *>::operator=((v4 + 264), (a1 + 128));
  *(v4 + 272) = *(a1 + 136);
  *(v4 + 288) = *(a1 + 152);
  result = WTF::OSObjectPtr<dispatch_data_s *>::operator=((v4 + 296), (a1 + 160));
  *(v4 + 304) = *(a1 + 168);
  *(v4 + 320) = *(a1 + 184);
  v8 = *(a1 + 192);
  *(v4 + 341) = *(a1 + 205);
  *(v4 + 328) = v8;
  *(v4 + 120) = v5;
  *(v4 + 128) = v6;
  if ((*(v4 + 96) & 1) == 0 && (*(v4 + 97) & 1) == 0)
  {
    v9 = *(a1 + 24);

    return WebKit::NetworkCache::Storage::finishReadOperation(v2, v9);
  }

  return result;
}

uint64_t WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::ReadOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::NetworkCache::Storage::ReadOperation>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::ReadOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::ReadOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkCache::Storage::ReadOperation>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::ReadOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::NetworkCache::Storage::ReadOperation>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::ReadOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::ReadOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkCache::Storage::ReadOperation>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::ReadOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::ReadOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(uint64_t *a1, uint64_t a2)
{
  if (a2 == -1 || !a2)
  {
    __break(0xC471u);
    JUMPOUT(0x19DDB0D9CLL);
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

    v10 = 1;
    while (v8)
    {
      v7 = (v7 + v10) & v3;
      v8 = *(v2 + 16 * v7);
      ++v10;
      if (v8 == a2)
      {
        return *(v2 + 16 * v7 + 8);
      }
    }
  }

  return 0;
}

void *WTF::Detail::CallableWrapper<WebKit::NetworkCache::Storage::readBlobIfNecessary(WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::ReadOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::String const&)::$_0,void>::~CallableWrapper(void *a1)
{
  *a1 = &unk_1F11092F8;
  v2 = a1[4];
  if (v2)
  {
    os_release(v2);
  }

  v3 = a1[2];
  a1[2] = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::NetworkCache::Storage,(WTF::DestructionThread)2>::deref(v3);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkCache::Storage::readBlobIfNecessary(WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::ReadOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::String const&)::$_0,void>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F11092F8;
  v3 = *(this + 4);
  if (v3)
  {
    os_release(v3);
  }

  v4 = *(this + 2);
  *(this + 2) = 0;
  if (v4)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::NetworkCache::Storage,(WTF::DestructionThread)2>::deref(v4);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkCache::Storage::readBlobIfNecessary(WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::ReadOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::String const&)::$_0,void>::call(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::ReadOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::NetworkCache::Storage::ReadOperation>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::ReadOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::ReadOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkCache::Storage::ReadOperation>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::ReadOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::NetworkCache::Storage::ReadOperation>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::ReadOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::ReadOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkCache::Storage::ReadOperation>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::ReadOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::ReadOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(v2 + 18, *(a1 + 24));
  if (result)
  {
    v4 = result;
    v5 = *(a1 + 32);
    v6 = *(a1 + 88);
    *(result + 97) = 0;
    if (v5)
    {
      v10 = v6;
      result = WTF::OSObjectPtr<dispatch_data_s *>::operator=((result + 296), (a1 + 32));
      *(v4 + 304) = *(a1 + 40);
      *(v4 + 320) = *(a1 + 56);
      v7 = *(v4 + 372);
      v8 = *(a1 + 80);
      *(v4 + 352) = *(a1 + 64);
      *(v4 + 368) = v8;
      if ((v7 & 1) == 0)
      {
        *(v4 + 372) = 1;
      }

      *(v4 + 136) = v10;
    }

    if ((*(v4 + 96) & 1) == 0 && (*(v4 + 97) & 1) == 0)
    {
      v9 = *(a1 + 24);

      return WebKit::NetworkCache::Storage::finishReadOperation(v2, v9);
    }
  }

  else
  {
    result = 908;
    __break(0xC471u);
  }

  return result;
}

_DWORD *WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::WriteOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::WriteOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::NetworkCache::Storage::WriteOperation>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::WriteOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::NetworkCache::Storage::WriteOperation>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::WriteOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::WriteOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::NetworkCache::Storage::WriteOperation>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::WriteOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::WriteOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkCache::Storage::WriteOperation>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::WriteOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 && (v2 = *(v1 - 4)) != 0)
  {
    if (6 * *(v1 - 12) >= 2 * v2)
    {
      v2 *= 2;
    }
  }

  else
  {
    v2 = 8;
  }

  return WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::WriteOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::WriteOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::NetworkCache::Storage::WriteOperation>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::WriteOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::NetworkCache::Storage::WriteOperation>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::WriteOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::WriteOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::NetworkCache::Storage::WriteOperation>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::WriteOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::WriteOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkCache::Storage::WriteOperation>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::WriteOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(a1, v2);
}

_DWORD *WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::WriteOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::WriteOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::NetworkCache::Storage::WriteOperation>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::WriteOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::NetworkCache::Storage::WriteOperation>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::WriteOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::WriteOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::NetworkCache::Storage::WriteOperation>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::WriteOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::WriteOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkCache::Storage::WriteOperation>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::WriteOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(uint64_t *a1, unsigned int a2)
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
          if (*(v12 + 16 * v17))
          {
            v20 = 1;
            do
            {
              v17 = (v17 + v20++) & v13;
            }

            while (*(v12 + 16 * v17));
          }

          v18 = v12 + 16 * v17;
          std::unique_ptr<WebKit::NetworkCache::Storage::WriteOperation>::reset[abi:sn200100]((v18 + 8), 0);
          *v18 = *v10;
          v19 = v10[1];
          v10[1] = 0;
          *(v18 + 8) = v19;
          std::unique_ptr<WebKit::NetworkCache::Storage::WriteOperation>::reset[abi:sn200100](v10 + 1, 0);
        }

        else
        {
          std::unique_ptr<WebKit::NetworkCache::Storage::WriteOperation>::reset[abi:sn200100](v10 + 1, 0);
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

void *WTF::Detail::CallableWrapper<WebKit::NetworkCache::Storage::dispatchWriteOperation(std::unique_ptr<WebKit::NetworkCache::Storage::WriteOperation>)::$_0,void>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F1109320;
  WebKit::NetworkCache::Storage::Record::~Record((a1 + 4), a2);
  v3 = a1[2];
  a1[2] = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::NetworkCache::Storage,(WTF::DestructionThread)2>::deref(v3);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkCache::Storage::dispatchWriteOperation(std::unique_ptr<WebKit::NetworkCache::Storage::WriteOperation>)::$_0,void>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F1109320;
  WebKit::NetworkCache::Storage::Record::~Record((a1 + 4), a2);
  v4 = a1[2];
  a1[2] = 0;
  if (v4)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::NetworkCache::Storage,(WTF::DestructionThread)2>::deref(v4);
  }

  return WTF::fastFree(a1, v3);
}

WTF::StringImpl *WTF::Detail::CallableWrapper<WebKit::NetworkCache::Storage::dispatchWriteOperation(std::unique_ptr<WebKit::NetworkCache::Storage::WriteOperation>)::$_0,void>::call(void *a1)
{
  v41 = *MEMORY[0x1E69E9840];
  v2 = a1[1];
  WebKit::NetworkCache::Storage::recordDirectoryPathForKey(&v25, v2, (a1 + 4));
  WebKit::NetworkCache::Storage::recordPathForKey(&v24, v2, (a1 + 4));
  WTF::FileSystemImpl::makeAllDirectories(&v25, v3);
  size = WebKit::NetworkCache::Storage::addWriteOperationActivity(v2, a1[3]);
  if (a1[19] || (size = a1[18]) == 0)
  {
    v5 = a1[20];
  }

  else
  {
    size = dispatch_data_get_size(size);
    v5 = size;
  }

  if (v5 > WTF::pageSize(size))
  {
    WebKit::NetworkCache::Storage::storeBodyAsBlob(&v35, v2, a1[3], (a1 + 4));
    LOBYTE(v29) = 0;
    v34 = 0;
    if (v40)
    {
      v18 = v35;
      v29 = v35;
      if (v35)
      {
        os_retain(v35);
        v30 = v36;
        v31 = v37;
        v32 = v38;
        v33 = v39;
        v6 = 1;
        v34 = 1;
        WebKit::NetworkCache::Storage::encodeRecord(data);
        os_release(v18);
      }

      else
      {
        v30 = v36;
        v31 = v37;
        v32 = v38;
        v33 = v39;
        v6 = 1;
        v34 = 1;
        WebKit::NetworkCache::Storage::encodeRecord(data);
      }

      goto LABEL_7;
    }
  }

  else
  {
    LOBYTE(v35) = 0;
    v40 = 0;
    LOBYTE(v29) = 0;
    v34 = 0;
  }

  WebKit::NetworkCache::Storage::encodeRecord(data);
  v6 = 0;
LABEL_7:
  if (data[1] || !data[0])
  {
    v7 = data[2];
  }

  else
  {
    v7 = dispatch_data_get_size(data[0]);
  }

  WebKit::NetworkCache::Data::span(data);
  v8 = WTF::FileSystemImpl::overwriteEntireFile();
  if ((v9 & 1) == 0)
  {
    v19 = qword_1ED640E28;
    v8 = os_log_type_enabled(qword_1ED640E28, OS_LOG_TYPE_ERROR);
    if (v8)
    {
      WTF::String::utf8();
      v20 = v22 ? v22 + 16 : 0;
      *buf = 134218242;
      *&buf[4] = v7;
      v27 = 2082;
      v28 = v20;
      _os_log_error_impl(&dword_19D52D000, v19, OS_LOG_TYPE_ERROR, "Failed to write %zu bytes of network cache record data to %{public}s", buf, 0x16u);
      v8 = v22;
      if (v22)
      {
        if (*v22 == 1)
        {
          v8 = WTF::fastFree(v22, v21);
        }

        else
        {
          --*v22;
        }
      }
    }
  }

  WTF::RunLoop::mainSingleton(v8);
  while (1)
  {
    v10 = *v2;
    if ((*v2 & 1) == 0)
    {
      break;
    }

    v17 = *v2;
    atomic_compare_exchange_strong_explicit(v2, &v17, v10 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v17 == v10)
    {
      goto LABEL_14;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v2);
LABEL_14:
  v11 = a1[3];
  v12 = WTF::fastMalloc(0x28);
  *v12 = &unk_1F1109348;
  v12[1] = v2;
  v12[2] = v2;
  v12[3] = v11;
  v12[4] = v7;
  *buf = v12;
  WTF::RunLoop::dispatch();
  v14 = *buf;
  *buf = 0;
  if (v14)
  {
    (*(*v14 + 8))(v14);
  }

  if (data[0])
  {
    os_release(data[0]);
  }

  if (v6 && v35)
  {
    os_release(v35);
  }

  v15 = v24;
  v24 = 0;
  if (v15 && atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v15, v13);
  }

  result = v25;
  v25 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v13);
    }
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::NetworkCache::Storage::dispatchWriteOperation(std::unique_ptr<WebKit::NetworkCache::Storage::WriteOperation>)::$_0::operator()(void)::{lambda(void)#1},void>::~CallableWrapper(void *a1)
{
  *a1 = &unk_1F1109348;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::NetworkCache::Storage,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkCache::Storage::dispatchWriteOperation(std::unique_ptr<WebKit::NetworkCache::Storage::WriteOperation>)::$_0::operator()(void)::{lambda(void)#1},void>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F1109348;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::NetworkCache::Storage,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t *WTF::Detail::CallableWrapper<WebKit::NetworkCache::Storage::dispatchWriteOperation(std::unique_ptr<WebKit::NetworkCache::Storage::WriteOperation>)::$_0::operator()(void)::{lambda(void)#1},void>::call(void *a1)
{
  v1 = a1[1];
  *(v1 + 48) += a1[4];
  return WebKit::NetworkCache::Storage::finishWriteOperationActivity(v1, a1[3]);
}

_OWORD *WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::WriteOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::WriteOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,unsigned int>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::WriteOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,unsigned int>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::WriteOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::WriteOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,unsigned int,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::WriteOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::WriteOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::WriteOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(uint64_t *a1, void *a2)
{
  v3 = *a1;
  if (*a1 && (v4 = *(v3 - 4)) != 0)
  {
    if (6 * *(v3 - 12) >= 2 * v4)
    {
      v4 *= 2;
    }
  }

  else
  {
    v4 = 8;
  }

  return WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::WriteOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::WriteOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,unsigned int>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::WriteOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,unsigned int>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::WriteOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::WriteOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,unsigned int,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::WriteOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::WriteOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::WriteOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(a1, v4, a2);
}

_OWORD *WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::WriteOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::WriteOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,unsigned int>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::WriteOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,unsigned int>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::WriteOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::WriteOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,unsigned int,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::WriteOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::WriteOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::WriteOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(uint64_t *a1, unsigned int a2, void *a3)
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
      if ((*v13 + 1) >= 2)
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

        v16 = (*v13 + ~(*v13 << 32)) ^ ((*v13 + ~(*v13 << 32)) >> 22);
        v17 = 9 * ((v16 + ~(v16 << 13)) ^ ((v16 + ~(v16 << 13)) >> 8));
        v18 = (v17 ^ (v17 >> 15)) + ~((v17 ^ (v17 >> 15)) << 27);
        v19 = v15 & ((v18 >> 31) ^ v18);
        if (*(v14 + 16 * v19))
        {
          v22 = 1;
          do
          {
            v19 = (v19 + v22++) & v15;
          }

          while (*(v14 + 16 * v19));
        }

        v20 = (v14 + 16 * v19);
        *v20 = *v13;
        if (v13 == a3)
        {
          v12 = v20;
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

void *WTF::Detail::CallableWrapper<BOOL WebKit::NetworkCache::retrieveFromMemory<WTF::Deque<std::unique_ptr<WebKit::NetworkCache::Storage::WriteOperation>,0ul>>(WTF::Deque<std::unique_ptr<WebKit::NetworkCache::Storage::WriteOperation>,0ul> const&,WebKit::NetworkCache::Key const&,WTF::CompletionHandler<BOOL ()(WebKit::NetworkCache::Storage::Record &&,WebKit::NetworkCache::Storage::Timings const&)> &)::{lambda(void)#1},void>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F1109370;
  v3 = a1[22];
  a1[22] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  WebKit::NetworkCache::Storage::Record::~Record((a1 + 1), a2);
  return a1;
}

uint64_t WTF::Detail::CallableWrapper<BOOL WebKit::NetworkCache::retrieveFromMemory<WTF::Deque<std::unique_ptr<WebKit::NetworkCache::Storage::WriteOperation>,0ul>>(WTF::Deque<std::unique_ptr<WebKit::NetworkCache::Storage::WriteOperation>,0ul> const&,WebKit::NetworkCache::Key const&,WTF::CompletionHandler<BOOL ()(WebKit::NetworkCache::Storage::Record &&,WebKit::NetworkCache::Storage::Timings const&)> &)::{lambda(void)#1},void>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F1109370;
  v3 = a1[22];
  a1[22] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  WebKit::NetworkCache::Storage::Record::~Record((a1 + 1), a2);

  return WTF::fastFree(a1, v4);
}

uint64_t WTF::Detail::CallableWrapper<BOOL WebKit::NetworkCache::retrieveFromMemory<WTF::Deque<std::unique_ptr<WebKit::NetworkCache::Storage::WriteOperation>,0ul>>(WTF::Deque<std::unique_ptr<WebKit::NetworkCache::Storage::WriteOperation>,0ul> const&,WebKit::NetworkCache::Key const&,WTF::CompletionHandler<BOOL ()(WebKit::NetworkCache::Storage::Record &&,WebKit::NetworkCache::Storage::Timings const&)> &)::{lambda(void)#1},void>::call(uint64_t a1)
{
  memset(v3, 0, 75);
  v1 = *(a1 + 176);
  *(a1 + 176) = 0;
  (*(*v1 + 16))(v1, a1 + 8, v3);
  return (*(*v1 + 8))(v1);
}

uint64_t *WTF::Function<void ()(void)>::Function<BOOL WebKit::NetworkCache::retrieveFromMemory<WTF::SizedIteratorRange<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::WriteOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::NetworkCache::Storage::WriteOperation>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::WriteOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::WriteOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkCache::Storage::WriteOperation>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::HashTableValuesIterator<WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::WriteOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::WriteOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::NetworkCache::Storage::WriteOperation>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::WriteOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::NetworkCache::Storage::WriteOperation>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::WriteOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::WriteOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::NetworkCache::Storage::WriteOperation>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::WriteOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::WriteOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkCache::Storage::WriteOperation>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::WriteOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>,WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::WriteOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::NetworkCache::Storage::WriteOperation>>>>(WTF::SizedIteratorRange<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::WriteOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::NetworkCache::Storage::WriteOperation>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::WriteOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::WriteOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkCache::Storage::WriteOperation>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::HashTableValuesIterator<WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::WriteOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::WriteOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::NetworkCache::Storage::WriteOperation>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::WriteOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::NetworkCache::Storage::WriteOperation>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::WriteOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::WriteOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::NetworkCache::Storage::WriteOperation>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::WriteOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::WriteOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkCache::Storage::WriteOperation>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::WriteOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>,WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::WriteOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::NetworkCache::Storage::WriteOperation>>> const&,WebKit::NetworkCache::Key const&,WTF::CompletionHandler<BOOL ()(WebKit::NetworkCache::Storage::Record &&,WebKit::NetworkCache::Storage::Timings const&)> &)::{lambda(void)#1},void>(uint64_t *a1, uint64_t *a2)
{
  v4 = WTF::fastMalloc(0xB8);
  v5 = *a2;
  *a2 = 0;
  *v4 = &unk_1F1109398;
  *(v4 + 8) = v5;
  v6 = a2[1];
  a2[1] = 0;
  *(v4 + 16) = v6;
  v7 = a2[2];
  a2[2] = 0;
  *(v4 + 24) = v7;
  v8 = a2[3];
  a2[3] = 0;
  *(v4 + 32) = v8;
  v9 = a2[8];
  v10 = *(a2 + 3);
  *(v4 + 40) = *(a2 + 2);
  *(v4 + 56) = v10;
  *(v4 + 72) = v9;
  *(v4 + 80) = a2[9];
  v11 = a2[10];
  *(v4 + 88) = v11;
  if (v11)
  {
    os_retain(v11);
  }

  v12 = *(a2 + 11);
  *(v4 + 112) = *(a2 + 104);
  *(v4 + 96) = v12;
  v13 = a2[14];
  *(v4 + 120) = v13;
  if (v13)
  {
    os_retain(v13);
  }

  v14 = *(a2 + 15);
  *(v4 + 144) = *(a2 + 136);
  *(v4 + 128) = v14;
  v15 = *(a2 + 9);
  *(v4 + 165) = *(a2 + 157);
  *(v4 + 152) = v15;
  v16 = a2[21];
  a2[21] = 0;
  *(v4 + 176) = v16;
  *a1 = v4;
  return a1;
}

void *WTF::Detail::CallableWrapper<BOOL WebKit::NetworkCache::retrieveFromMemory<WTF::SizedIteratorRange<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::WriteOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::NetworkCache::Storage::WriteOperation>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::WriteOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::WriteOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkCache::Storage::WriteOperation>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::HashTableValuesIterator<WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::WriteOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::WriteOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::NetworkCache::Storage::WriteOperation>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::WriteOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::NetworkCache::Storage::WriteOperation>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::WriteOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::WriteOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::NetworkCache::Storage::WriteOperation>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::WriteOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::WriteOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkCache::Storage::WriteOperation>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::WriteOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>,WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::WriteOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::NetworkCache::Storage::WriteOperation>>>>(WTF::SizedIteratorRange<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::WriteOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::NetworkCache::Storage::WriteOperation>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::WriteOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::WriteOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkCache::Storage::WriteOperation>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::HashTableValuesIterator<WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::WriteOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::WriteOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::NetworkCache::Storage::WriteOperation>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::WriteOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::NetworkCache::Storage::WriteOperation>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::WriteOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::WriteOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::NetworkCache::Storage::WriteOperation>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::WriteOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::WriteOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkCache::Storage::WriteOperation>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::WriteOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>,WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::WriteOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::NetworkCache::Storage::WriteOperation>>> const&,WebKit::NetworkCache::Key const&,WTF::CompletionHandler<BOOL ()(WebKit::NetworkCache::Storage::Record &&,WebKit::NetworkCache::Storage::Timings const&)> &)::{lambda(void)#1},void>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F1109398;
  v3 = a1[22];
  a1[22] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  WebKit::NetworkCache::Storage::Record::~Record((a1 + 1), a2);
  return a1;
}

uint64_t WTF::Detail::CallableWrapper<BOOL WebKit::NetworkCache::retrieveFromMemory<WTF::SizedIteratorRange<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::WriteOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::NetworkCache::Storage::WriteOperation>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::WriteOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::WriteOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkCache::Storage::WriteOperation>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::HashTableValuesIterator<WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::WriteOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::WriteOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::NetworkCache::Storage::WriteOperation>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::WriteOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::NetworkCache::Storage::WriteOperation>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::WriteOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::WriteOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::NetworkCache::Storage::WriteOperation>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::WriteOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::WriteOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkCache::Storage::WriteOperation>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::WriteOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>,WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::WriteOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::NetworkCache::Storage::WriteOperation>>>>(WTF::SizedIteratorRange<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::WriteOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::NetworkCache::Storage::WriteOperation>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::WriteOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::WriteOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkCache::Storage::WriteOperation>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::HashTableValuesIterator<WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::WriteOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::WriteOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::NetworkCache::Storage::WriteOperation>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::WriteOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::NetworkCache::Storage::WriteOperation>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::WriteOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::WriteOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::NetworkCache::Storage::WriteOperation>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::WriteOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::WriteOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkCache::Storage::WriteOperation>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::WriteOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>,WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::WriteOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::NetworkCache::Storage::WriteOperation>>> const&,WebKit::NetworkCache::Key const&,WTF::CompletionHandler<BOOL ()(WebKit::NetworkCache::Storage::Record &&,WebKit::NetworkCache::Storage::Timings const&)> &)::{lambda(void)#1},void>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F1109398;
  v3 = a1[22];
  a1[22] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  WebKit::NetworkCache::Storage::Record::~Record((a1 + 1), a2);

  return WTF::fastFree(a1, v4);
}

uint64_t WTF::Detail::CallableWrapper<BOOL WebKit::NetworkCache::retrieveFromMemory<WTF::SizedIteratorRange<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::WriteOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::NetworkCache::Storage::WriteOperation>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::WriteOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::WriteOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkCache::Storage::WriteOperation>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::HashTableValuesIterator<WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::WriteOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::WriteOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::NetworkCache::Storage::WriteOperation>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::WriteOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::NetworkCache::Storage::WriteOperation>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::WriteOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::WriteOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::NetworkCache::Storage::WriteOperation>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::WriteOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::WriteOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkCache::Storage::WriteOperation>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::WriteOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>,WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::WriteOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::NetworkCache::Storage::WriteOperation>>>>(WTF::SizedIteratorRange<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::WriteOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::NetworkCache::Storage::WriteOperation>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::WriteOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::WriteOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkCache::Storage::WriteOperation>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::HashTableValuesIterator<WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::WriteOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::WriteOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::NetworkCache::Storage::WriteOperation>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::WriteOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::NetworkCache::Storage::WriteOperation>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::WriteOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::WriteOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::NetworkCache::Storage::WriteOperation>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::WriteOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::WriteOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkCache::Storage::WriteOperation>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::WriteOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>,WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::WriteOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::NetworkCache::Storage::WriteOperation>>> const&,WebKit::NetworkCache::Key const&,WTF::CompletionHandler<BOOL ()(WebKit::NetworkCache::Storage::Record &&,WebKit::NetworkCache::Storage::Timings const&)> &)::{lambda(void)#1},void>::call(uint64_t a1)
{
  memset(v3, 0, 75);
  v1 = *(a1 + 176);
  *(a1 + 176) = 0;
  (*(*v1 + 16))(v1, a1 + 8, v3);
  return (*(*v1 + 8))(v1);
}

void WebKit::NetworkCache::retrieveFromMemory<WTF::SizedIteratorRange<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::WriteOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::NetworkCache::Storage::WriteOperation>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::WriteOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::WriteOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkCache::Storage::WriteOperation>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::HashTableValuesIterator<WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::WriteOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::WriteOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::NetworkCache::Storage::WriteOperation>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::WriteOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::NetworkCache::Storage::WriteOperation>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::WriteOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::WriteOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::NetworkCache::Storage::WriteOperation>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::WriteOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::WriteOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkCache::Storage::WriteOperation>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::WriteOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>,WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::WriteOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::NetworkCache::Storage::WriteOperation>>>>(WTF::SizedIteratorRange<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::WriteOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::NetworkCache::Storage::WriteOperation>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::WriteOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::WriteOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkCache::Storage::WriteOperation>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::HashTableValuesIterator<WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::WriteOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::WriteOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::NetworkCache::Storage::WriteOperation>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::WriteOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::NetworkCache::Storage::WriteOperation>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::WriteOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::WriteOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::NetworkCache::Storage::WriteOperation>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::WriteOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::WriteOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkCache::Storage::WriteOperation>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::WriteOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>,WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::WriteOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::NetworkCache::Storage::WriteOperation>>> const&,WebKit::NetworkCache::Key const&,WTF::CompletionHandler<BOOL ()(WebKit::NetworkCache::Storage::Record &&,WebKit::NetworkCache::Storage::Timings const&)> &)::{lambda(void)#1}::~CompletionHandler(WebKit::NetworkCache::Storage::Record *this, WTF::StringImpl *a2)
{
  v3 = *(this + 21);
  *(this + 21) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  WebKit::NetworkCache::Storage::Record::~Record(this, a2);
}

uint64_t *WTF::Vector<std::unique_ptr<WebKit::NetworkCache::Storage::ReadOperation>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,std::unique_ptr<WebKit::NetworkCache::Storage::ReadOperation>>(uint64_t a1, unint64_t a2)
{
  result = WTF::Vector<std::unique_ptr<WebKit::NetworkCache::Storage::ReadOperation>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(a1, *(a1 + 12) + 1, a2);
  v4 = *(a1 + 12);
  v5 = *a1;
  v6 = *result;
  *result = 0;
  *(v5 + 8 * v4) = v6;
  *(a1 + 12) = v4 + 1;
  return result;
}

unint64_t WTF::Vector<std::unique_ptr<WebKit::NetworkCache::Storage::ReadOperation>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v3 = a3;
  v5 = *a1;
  if (*a1 <= a3 && v5 + 8 * *(a1 + 12) > a3)
  {
    v10 = a3 - v5;
    v11 = *(a1 + 8);
    if (v11 + (v11 >> 1) <= v11 + 1)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = v11 + (v11 >> 1);
    }

    if (v12 <= a2)
    {
      v12 = a2;
    }

    if (v12 <= 0x10)
    {
      v13 = 16;
    }

    else
    {
      v13 = v12;
    }

    WTF::Vector<std::unique_ptr<WebKit::NetworkCache::Storage::ReadOperation>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v13);
    return *a1 + v10;
  }

  else
  {
    v6 = *(a1 + 8);
    if (v6 + (v6 >> 1) <= v6 + 1)
    {
      v7 = v6 + 1;
    }

    else
    {
      v7 = v6 + (v6 >> 1);
    }

    if (v7 <= a2)
    {
      v7 = a2;
    }

    if (v7 <= 0x10)
    {
      v8 = 16;
    }

    else
    {
      v8 = v7;
    }

    WTF::Vector<std::unique_ptr<WebKit::NetworkCache::Storage::ReadOperation>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v8);
  }

  return v3;
}

void **WTF::Vector<std::unique_ptr<WebKit::NetworkCache::Storage::ReadOperation>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(void **result, unint64_t a2)
{
  if (*(result + 2) < a2)
  {
    v2 = a2;
    if (a2 >> 29)
    {
      __break(0xC471u);
    }

    else
    {
      v3 = result;
      v4 = *result;
      v5 = *(result + 3);
      v6 = WTF::fastMalloc((8 * a2));
      *(v3 + 2) = v2;
      *v3 = v6;
      result = memcpy(v6, v4, 8 * v5);
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

void *WTF::Detail::CallableWrapper<WebKit::NetworkCache::Storage::traverseWithinRootPath(WTF::String const&,WTF::String const&,WTF::OptionSet<WebKit::NetworkCache::Storage::TraverseFlag>,WTF::Function<void ()(WebKit::NetworkCache::Storage::Record const*,WebKit::NetworkCache::Storage::RecordInfo const&)> &&)::$_0,void>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F11093C0;
  v3 = a1[6];
  a1[6] = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, a2);
  }

  v4 = a1[5];
  a1[5] = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  v5 = a1[3];
  a1[3] = 0;
  if (v5)
  {
    WTF::ThreadSafeRefCounted<WebKit::NetworkCache::TraverseOperation,(WTF::DestructionThread)2>::deref(v5);
  }

  v6 = a1[2];
  a1[2] = 0;
  if (v6)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::NetworkCache::Storage,(WTF::DestructionThread)2>::deref(v6);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkCache::Storage::traverseWithinRootPath(WTF::String const&,WTF::String const&,WTF::OptionSet<WebKit::NetworkCache::Storage::TraverseFlag>,WTF::Function<void ()(WebKit::NetworkCache::Storage::Record const*,WebKit::NetworkCache::Storage::RecordInfo const&)> &&)::$_0,void>::~CallableWrapper(WTF *this, WTF::StringImpl *a2)
{
  *this = &unk_1F11093C0;
  v3 = *(this + 6);
  *(this + 6) = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, a2);
  }

  v4 = *(this + 5);
  *(this + 5) = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  v5 = *(this + 3);
  *(this + 3) = 0;
  if (v5)
  {
    WTF::ThreadSafeRefCounted<WebKit::NetworkCache::TraverseOperation,(WTF::DestructionThread)2>::deref(v5);
  }

  v6 = *(this + 2);
  *(this + 2) = 0;
  if (v6)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::NetworkCache::Storage,(WTF::DestructionThread)2>::deref(v6);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkCache::Storage::traverseWithinRootPath(WTF::String const&,WTF::String const&,WTF::OptionSet<WebKit::NetworkCache::Storage::TraverseFlag>,WTF::Function<void ()(WebKit::NetworkCache::Storage::Record const*,WebKit::NetworkCache::Storage::RecordInfo const&)> &&)::$_0,void>::call(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
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
      goto LABEL_6;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v3);
LABEL_6:
  v6 = *(a1 + 48);
  if (v6)
  {
    atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed);
  }

  v7 = *(a1 + 32);
  v8 = *(a1 + 24);
  atomic_fetch_add(v8, 1u);
  v9 = WTF::fastMalloc(0x30);
  *v9 = &unk_1F11093E8;
  *(v9 + 8) = v2;
  *(v9 + 16) = v3;
  *(v9 + 24) = v6;
  *(v9 + 32) = v7;
  *(v9 + 40) = v8;
  v17 = v9;
  WebKit::NetworkCache::traverseRecordsFiles((a1 + 40), a1 + 48, &v17);
  v10 = v17;
  if (v17)
  {
    v10 = (*(*v17 + 8))(v17);
  }

  v11 = 0;
  v12 = *(a1 + 24);
  atomic_compare_exchange_strong_explicit((v12 + 16), &v11, 1u, memory_order_acquire, memory_order_acquire);
  if (v11)
  {
    v10 = MEMORY[0x19EB01E30](v12 + 16);
  }

  for (; *(v12 + 20); v10 = WTF::Condition::waitUntilUnchecked<WTF::Lock>(v12 + 17, (v12 + 16), &v17))
  {
    v17 = 0x7FF0000000000000;
    v18 = 0;
  }

  v13 = 1;
  atomic_compare_exchange_strong_explicit((v12 + 16), &v13, 0, memory_order_release, memory_order_relaxed);
  if (v13 != 1)
  {
    v10 = WTF::Lock::unlockSlow((v12 + 16));
  }

  WTF::RunLoop::mainSingleton(v10);
  v14 = *(a1 + 24);
  *(a1 + 24) = 0;
  v15 = WTF::fastMalloc(0x10);
  *v15 = &unk_1F1109438;
  v15[1] = v14;
  v17 = v15;
  WTF::RunLoop::dispatch();
  result = v17;
  v17 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::NetworkCache::Storage::traverseWithinRootPath(WTF::String const&,WTF::String const&,WTF::OptionSet<WebKit::NetworkCache::Storage::TraverseFlag>,WTF::Function<void ()(WebKit::NetworkCache::Storage::Record const*,WebKit::NetworkCache::Storage::RecordInfo const&)> &&)::$_0::operator()(void)::{lambda(WTF::String const&,WTF::String const&,WTF::String const&,BOOL,WTF::String const&)#1},void,WTF::String const&,WTF::String const&,WTF::String const&,BOOL,WTF::String const&>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F11093E8;
  v3 = a1[5];
  a1[5] = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCounted<WebKit::NetworkCache::TraverseOperation,(WTF::DestructionThread)2>::deref(v3);
  }

  v4 = a1[3];
  a1[3] = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  v5 = a1[2];
  a1[2] = 0;
  if (v5)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::NetworkCache::Storage,(WTF::DestructionThread)2>::deref(v5);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkCache::Storage::traverseWithinRootPath(WTF::String const&,WTF::String const&,WTF::OptionSet<WebKit::NetworkCache::Storage::TraverseFlag>,WTF::Function<void ()(WebKit::NetworkCache::Storage::Record const*,WebKit::NetworkCache::Storage::RecordInfo const&)> &&)::$_0::operator()(void)::{lambda(WTF::String const&,WTF::String const&,WTF::String const&,BOOL,WTF::String const&)#1},void,WTF::String const&,WTF::String const&,WTF::String const&,BOOL,WTF::String const&>::~CallableWrapper(WTF *this, WTF::StringImpl *a2)
{
  *this = &unk_1F11093E8;
  v3 = *(this + 5);
  *(this + 5) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCounted<WebKit::NetworkCache::TraverseOperation,(WTF::DestructionThread)2>::deref(v3);
  }

  v4 = *(this + 3);
  *(this + 3) = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  v5 = *(this + 2);
  *(this + 2) = 0;
  if (v5)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::NetworkCache::Storage,(WTF::DestructionThread)2>::deref(v5);
  }

  return WTF::fastFree(this, a2);
}

WTF::StringImpl *WTF::Detail::CallableWrapper<WebKit::NetworkCache::Storage::traverseWithinRootPath(WTF::String const&,WTF::String const&,WTF::OptionSet<WebKit::NetworkCache::Storage::TraverseFlag>,WTF::Function<void ()(WebKit::NetworkCache::Storage::Record const*,WebKit::NetworkCache::Storage::RecordInfo const&)> &&)::$_0::operator()(void)::{lambda(WTF::String const&,WTF::String const&,WTF::String const&,BOOL,WTF::String const&)#1},void,WTF::String const&,WTF::String const&,WTF::String const&,BOOL,WTF::String const&>::call(WTF::StringImpl *result, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5)
  {
    return result;
  }

  v5 = result;
  v6 = *(result + 1);
  WTF::FileSystemImpl::pathByAppendingComponent();
  if ((*(v5 + 32) & 1) == 0)
  {
    v8 = -1.0;
    if ((*(v5 + 32) & 2) != 0)
    {
      goto LABEL_4;
    }

LABEL_20:
    v12 = 0;
    goto LABEL_21;
  }

  v14 = WebKit::NetworkCache::fileTimes(&v38, v7);
  v16 = v15;
  WTF::WallTime::now(v17);
  v19 = v18 - v14;
  v20 = v16 - v14;
  v22 = v16 - v14 <= v19 && v20 >= 0.0 && v19 > 0.0;
  v23 = v20 / v19;
  if (v22)
  {
    v8 = v23;
  }

  else
  {
    v8 = 0.0;
  }

  if ((*(v5 + 32) & 2) == 0)
  {
    goto LABEL_20;
  }

LABEL_4:
  WebKit::NetworkCache::blobPathForRecordPath(&v39, v38);
  v11 = WTF::FileSystemImpl::hardLinkCount(&v39, v9) - 1;
  if (v10)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  v13 = v39;
  v39 = 0;
  if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v13, v10);
  }

LABEL_21:
  v24 = 0;
  v25 = *(v5 + 5);
  atomic_compare_exchange_strong_explicit((v25 + 16), &v24, 1u, memory_order_acquire, memory_order_acquire);
  if (v24)
  {
    MEMORY[0x19EB01E30](v25 + 16);
  }

  v26 = *(v25 + 20);
  if (v26 >= 5)
  {
    do
    {
      v39 = 0x7FF0000000000000;
      v40 = 0;
      WTF::Condition::waitUntilUnchecked<WTF::Lock>(v25 + 17, (v25 + 16), &v39);
      v26 = *(v25 + 20);
    }

    while (v26 > 4);
  }

  *(v25 + 20) = v26 + 1;
  v27 = 1;
  atomic_compare_exchange_strong_explicit((v25 + 16), &v27, 0, memory_order_release, memory_order_relaxed);
  if (v27 != 1)
  {
    WTF::Lock::unlockSlow((v25 + 16));
  }

  v28 = WTF::fastMalloc(0x10);
  v29 = WebKit::NetworkCache::IOChannel::IOChannel(v28, &v38, 0, 0);
  v30 = WTF::WorkQueue::mainSingleton(v29);
  (*(*v30 + 32))(v30);
  v39 = v30;
  v31 = *(v5 + 2);
  while (1)
  {
    v32 = *v31;
    if ((*v31 & 1) == 0)
    {
      break;
    }

    v33 = *v31;
    atomic_compare_exchange_strong_explicit(v31, &v33, v32 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v33 == v32)
    {
      goto LABEL_32;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v31);
LABEL_32:
  v34 = *(v5 + 5);
  atomic_fetch_add(v34, 1u);
  v35 = WTF::fastMalloc(0x30);
  *v35 = &unk_1F1109410;
  *(v35 + 8) = v6;
  *(v35 + 16) = v31;
  *(v35 + 24) = v34;
  *(v35 + 32) = v8;
  *(v35 + 40) = v12;
  v37 = v35;
  WebKit::NetworkCache::IOChannel::read(v28, 0, 0xFFFFFFFFFFFFFFFFLL, &v39, &v37);
  if (v37)
  {
    (*(*v37 + 8))(v37);
  }

  if (v39)
  {
    (*(*v39 + 40))(v39);
  }

  WTF::ThreadSafeRefCounted<WebKit::NetworkCache::IOChannel,(WTF::DestructionThread)0>::deref(v28);
  result = v38;
  v38 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v36);
    }
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZZZN6WebKit12NetworkCache7Storage22traverseWithinRootPathERKNS_6StringES7_NS_9OptionSetINS4_12TraverseFlagEEEONS_8FunctionIFvPKNS4_6RecordERKNS4_10RecordInfoEEEEEN3__0clEvENKUlS7_S7_S7_bS7_E_clES7_S7_S7_bS7_EUlT_iE_vJONS3_4DataEiEED1Ev(void *a1)
{
  *a1 = &unk_1F1109410;
  v2 = a1[3];
  a1[3] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCounted<WebKit::NetworkCache::TraverseOperation,(WTF::DestructionThread)2>::deref(v2);
  }

  v3 = a1[2];
  a1[2] = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::NetworkCache::Storage,(WTF::DestructionThread)2>::deref(v3);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZZZN6WebKit12NetworkCache7Storage22traverseWithinRootPathERKNS_6StringES7_NS_9OptionSetINS4_12TraverseFlagEEEONS_8FunctionIFvPKNS4_6RecordERKNS4_10RecordInfoEEEEEN3__0clEvENKUlS7_S7_S7_bS7_E_clES7_S7_S7_bS7_EUlT_iE_vJONS3_4DataEiEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F1109410;
  v3 = *(this + 3);
  *(this + 3) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCounted<WebKit::NetworkCache::TraverseOperation,(WTF::DestructionThread)2>::deref(v3);
  }

  v4 = *(this + 2);
  *(this + 2) = 0;
  if (v4)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::NetworkCache::Storage,(WTF::DestructionThread)2>::deref(v4);
  }

  return WTF::fastFree(this, a2);
}

void _ZN3WTF6Detail15CallableWrapperIZZZN6WebKit12NetworkCache7Storage22traverseWithinRootPathERKNS_6StringES7_NS_9OptionSetINS4_12TraverseFlagEEEONS_8FunctionIFvPKNS4_6RecordERKNS4_10RecordInfoEEEEEN3__0clEvENKUlS7_S7_S7_bS7_E_clES7_S7_S7_bS7_EUlT_iE_vJONS3_4DataEiEE4callESQ_i(uint64_t a1, uint64_t a2)
{
  v50 = *MEMORY[0x1E69E9840];
  v4 = *a2;
  v22 = v4;
  if (v4)
  {
    os_retain(v4);
  }

  v23 = *(a2 + 8);
  v24 = *(a2 + 24);
  v5 = *(a1 + 8);
  v42 = 0u;
  v41 = 0u;
  v43 = 0.0;
  v44 = 0;
  v47 = 0;
  v48 = 0;
  v49 = 0;
  memset(v29, 0, sizeof(v29));
  v30 = 0;
  if (WebKit::NetworkCache::decodeRecordHeader(&v22, v40, v29, v5 + 28))
  {
    object = 0;
    v26 = 0;
    LOBYTE(v28) = 0;
    v27 = 0;
    *v31 = v45;
    v32 = v46;
    v33 = 1;
    WebKit::NetworkCache::Storage::Record::Record(&v34, &v41, v29, &object, v31, v43);
    if (object)
    {
      os_release(object);
    }

    object = v47;
    v26 = *(a1 + 32);
    LODWORD(v27) = *(a1 + 40);
    WTF::SHA1::hexDigest();
    WTF::String::fromUTF8();
    v7 = v31[0];
    v31[0] = 0;
    if (v7)
    {
      if (*v7 == 1)
      {
        WTF::fastFree(v7, v6);
      }

      else
      {
        --*v7;
      }
    }

    (*(**(*(a1 + 24) + 8) + 16))(*(*(a1 + 24) + 8), &v34, &object);
    v9 = v28;
    v28 = 0;
    if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v9, v8);
    }

    if (v39)
    {
      os_release(v39);
    }

    if (v38)
    {
      os_release(v38);
    }

    v10 = v37;
    v37 = 0;
    if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v10, v8);
    }

    v11 = v36;
    v36 = 0;
    if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v11, v8);
    }

    v12 = v35;
    v35 = 0;
    if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v12, v8);
    }

    v13 = v34;
    v34 = 0;
    if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v13, v8);
    }
  }

  v14 = 0;
  v15 = *(a1 + 24);
  v16 = 1;
  atomic_compare_exchange_strong_explicit((v15 + 16), &v14, 1u, memory_order_acquire, memory_order_acquire);
  if (v14)
  {
    MEMORY[0x19EB01E30](v15 + 16);
  }

  --*(v15 + 20);
  WTF::Condition::notifyOne((v15 + 17));
  atomic_compare_exchange_strong_explicit((v15 + 16), &v16, 0, memory_order_release, memory_order_relaxed);
  if (v16 != 1)
  {
    WTF::Lock::unlockSlow((v15 + 16));
  }

  if (v29[0])
  {
    os_release(v29[0]);
  }

  v18 = *(&v42 + 1);
  *(&v42 + 1) = 0;
  if (v18 && atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v18, v17);
  }

  v19 = v42;
  *&v42 = 0;
  if (v19 && atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v19, v17);
  }

  v20 = *(&v41 + 1);
  *(&v41 + 1) = 0;
  if (v20 && atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v20, v17);
  }

  v21 = v41;
  *&v41 = 0;
  if (v21 && atomic_fetch_add_explicit(v21, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v21, v17);
  }

  if (v22)
  {
    os_release(v22);
  }
}

void *WTF::Detail::CallableWrapper<WebKit::NetworkCache::Storage::traverseWithinRootPath(WTF::String const&,WTF::String const&,WTF::OptionSet<WebKit::NetworkCache::Storage::TraverseFlag>,WTF::Function<void ()(WebKit::NetworkCache::Storage::Record const*,WebKit::NetworkCache::Storage::RecordInfo const&)> &&)::$_0::operator()(void)::{lambda(void)#1},void>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F1109438;
  a1[1] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCounted<WebKit::NetworkCache::TraverseOperation,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkCache::Storage::traverseWithinRootPath(WTF::String const&,WTF::String const&,WTF::OptionSet<WebKit::NetworkCache::Storage::TraverseFlag>,WTF::Function<void ()(WebKit::NetworkCache::Storage::Record const*,WebKit::NetworkCache::Storage::RecordInfo const&)> &&)::$_0::operator()(void)::{lambda(void)#1},void>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1109438;
  *(this + 1) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCounted<WebKit::NetworkCache::TraverseOperation,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

WTF::StringImpl *WTF::Detail::CallableWrapper<WebKit::NetworkCache::Storage::traverseWithinRootPath(WTF::String const&,WTF::String const&,WTF::OptionSet<WebKit::NetworkCache::Storage::TraverseFlag>,WTF::Function<void ()(WebKit::NetworkCache::Storage::Record const*,WebKit::NetworkCache::Storage::RecordInfo const&)> &&)::$_0::operator()(void)::{lambda(void)#1},void>::call(uint64_t a1)
{
  v1 = *(a1 + 8);
  v6 = 0;
  v5 = 0;
  v4[0] = 0;
  v4[1] = 0;
  (*(**(v1 + 8) + 16))(*(v1 + 8), 0, v4);
  result = v6;
  v6 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v2);
    }
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::NetworkCache::Storage::clear(WTF::String &&,WTF::WallTime,WTF::CompletionHandler<void ()(void)> &&)::$_0,void>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F1109460;
  v3 = a1[5];
  a1[5] = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, a2);
  }

  v4 = a1[4];
  a1[4] = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = a1[2];
  a1[2] = 0;
  if (v5)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::NetworkCache::Storage,(WTF::DestructionThread)2>::deref(v5);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkCache::Storage::clear(WTF::String &&,WTF::WallTime,WTF::CompletionHandler<void ()(void)> &&)::$_0,void>::~CallableWrapper(WTF *this, WTF::StringImpl *a2)
{
  *this = &unk_1F1109460;
  v3 = *(this + 5);
  *(this + 5) = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, a2);
  }

  v4 = *(this + 4);
  *(this + 4) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *(this + 2);
  *(this + 2) = 0;
  if (v5)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::NetworkCache::Storage,(WTF::DestructionThread)2>::deref(v5);
  }

  return WTF::fastFree(this, a2);
}

WTF::StringImpl *WTF::Detail::CallableWrapper<WebKit::NetworkCache::Storage::clear(WTF::String &&,WTF::WallTime,WTF::CompletionHandler<void ()(void)> &&)::$_0,void>::call(void *a1)
{
  v2 = a1[1];
  WTF::String::isolatedCopy();
  v3 = a1[3];
  v4 = WTF::fastMalloc(0x10);
  *v4 = &unk_1F1109488;
  v4[1] = v3;
  v10 = v4;
  WebKit::NetworkCache::traverseRecordsFiles(&v11, (a1 + 5), &v10);
  if (v10)
  {
    (*(*v10 + 8))(v10);
  }

  WebKit::NetworkCache::deleteEmptyRecordsDirectories(&v11, v5);
  v6 = WebKit::NetworkCache::BlobStorage::synchronize((v2 + 344));
  WTF::RunLoop::mainSingleton(v6);
  std::make_unique[abi:sn200100]<WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(void)>,void>,WTF::CompletionHandler<void ()(void)>,0>(a1 + 4, &v10);
  WTF::RunLoop::dispatch();
  v8 = v10;
  v10 = 0;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  result = v11;
  v11 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v7);
    }
  }

  return result;
}

WTF::StringImpl *WTF::Detail::CallableWrapper<WebKit::NetworkCache::Storage::clear(WTF::String &&,WTF::WallTime,WTF::CompletionHandler<void ()(void)> &&)::$_0::operator()(void)::{lambda(WTF::String const&,$_0,$_0,BOOL,$_0)#1},void,$_0,$_0,$_0,BOOL,$_0>::call(uint64_t a1)
{
  WTF::FileSystemImpl::pathByAppendingComponent();
  if (*(a1 + 8) == -INFINITY || (WebKit::NetworkCache::fileTimes(&v5, v2), v3 >= *(a1 + 8)))
  {
    WTF::FileSystemImpl::deleteFile(&v5, v2);
  }

  result = v5;
  v5 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v2);
    }
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::NetworkCache::Storage::shrink(void)::$_0,void>::~CallableWrapper(void *a1)
{
  *a1 = &unk_1F11094B0;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::NetworkCache::Storage,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkCache::Storage::shrink(void)::$_0,void>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F11094B0;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::NetworkCache::Storage,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

WTF::StringImpl *WTF::Detail::CallableWrapper<WebKit::NetworkCache::Storage::shrink(void)::$_0,void>::call(uint64_t a1)
{
  v1 = *(a1 + 8);
  WTF::String::isolatedCopy();
  v12 = 0;
  v2 = WTF::fastMalloc(0x10);
  *v2 = &unk_1F11094D8;
  *(v2 + 1) = v1;
  v11 = v2;
  WebKit::NetworkCache::traverseRecordsFiles(&v13, &v12, &v11);
  v3 = v11;
  if (v11)
  {
    v3 = (*(*v11 + 8))(v11);
  }

  WTF::RunLoop::mainSingleton(v3);
  while (1)
  {
    v4 = *v1;
    if ((*v1 & 1) == 0)
    {
      break;
    }

    v5 = *v1;
    atomic_compare_exchange_strong_explicit(v1, &v5, v4 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v5 == v4)
    {
      goto LABEL_8;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v1);
LABEL_8:
  v6 = WTF::fastMalloc(0x18);
  *v6 = &unk_1F1109500;
  *(v6 + 1) = v1;
  *(v6 + 2) = v1;
  v11 = v6;
  WTF::RunLoop::dispatch();
  v8 = v11;
  v11 = 0;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  v9 = v12;
  v12 = 0;
  if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v9, v7);
  }

  result = v13;
  v13 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v7);
    }
  }

  return result;
}

void WTF::Detail::CallableWrapper<WebKit::NetworkCache::Storage::shrink(void)::$_0::operator()(void)::{lambda(WTF::String const&,WTF::String const&,WTF::String const&,BOOL,WTF::String const&)#1},void,WTF::String const&,WTF::String const&,WTF::String const&,BOOL,WTF::String const&>::call(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if ((a5 & 1) == 0)
  {
    WTF::FileSystemImpl::pathByAppendingComponent();
    WebKit::NetworkCache::blobPathForRecordPath(&v28, v29);
    v6 = WebKit::NetworkCache::fileTimes(&v29, v5);
    v8 = v7;
    v10 = WTF::FileSystemImpl::hardLinkCount(&v28, v9);
    v11 = v10;
    v13 = v12;
    v14 = WTF::WallTime::now(v10);
    v16 = v15 - v6;
    v17 = v8 - v6;
    v19 = v8 - v6 <= v16 && v17 >= 0.0 && v16 > 0.0;
    v20 = v17 / v16 * 1.1;
    if (!v19)
    {
      v20 = 0.0;
    }

    if (v20 > 1.0)
    {
      v20 = 1.0;
    }

    v21 = (1.0 - v20) * 0.33;
    if (v13)
    {
      v22 = v11 - 1;
      if (v11 != 1)
      {
        if (v22 >= 5)
        {
          v22 = 5;
        }

        v21 = v21 / v22;
      }
    }

    WTF::cryptographicallyRandomUnitInterval(v14);
    if (v24 < v21)
    {
      WTF::FileSystemImpl::deleteFile(&v29, v23);
      WTF::FileSystemImpl::deleteFile(&v28, v25);
    }

    v26 = v28;
    v28 = 0;
    if (v26 && atomic_fetch_add_explicit(v26, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v26, v23);
    }

    v27 = v29;
    v29 = 0;
    if (v27)
    {
      if (atomic_fetch_add_explicit(v27, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v27, v23);
      }
    }
  }
}

void *WTF::Detail::CallableWrapper<WebKit::NetworkCache::Storage::shrink(void)::$_0::operator()(void)::{lambda(void)#1},void>::~CallableWrapper(void *a1)
{
  *a1 = &unk_1F1109500;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::NetworkCache::Storage,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkCache::Storage::shrink(void)::$_0::operator()(void)::{lambda(void)#1},void>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F1109500;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::NetworkCache::Storage,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkCache::Storage::shrink(void)::$_0::operator()(void)::{lambda(void)#1},void>::call(uint64_t a1)
{
  v1 = *(a1 + 8);
  *(v1 + 81) = 0;
  return WebKit::NetworkCache::Storage::synchronize(v1);
}

void *WTF::Detail::CallableWrapper<WebKit::NetworkCache::Storage::deleteOldVersions(void)::$_0,void>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  v3 = a1[1];
  *a1 = &unk_1F1109528;
  a1[1] = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkCache::Storage::deleteOldVersions(void)::$_0,void>::~CallableWrapper(WTF *this, WTF::StringImpl *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1109528;
  *(this + 1) = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WebKit::NetworkCache::Storage::deleteOldVersions(void)::$_0::operator()(WTF::FileSystemImpl *a1)
{
  v2 = WTF::fastMalloc(0x10);
  *v2 = &unk_1F1109550;
  v2[1] = a1;
  v5 = v2;
  WebKit::NetworkCache::traverseDirectory(a1, &v5);
  v3 = *(*v2 + 8);

  return v3(v2);
}

unint64_t WebKit::NetworkCache::Storage::deleteOldVersions(void)::$_0::operator()(void)::{lambda(WTF::String const&,WebKit::NetworkCache::DirectoryEntryType)#1}::operator()(unint64_t result, unint64_t *a2, int a3)
{
  if (a3)
  {
    return result;
  }

  result = *a2;
  if (!*a2)
  {
    return result;
  }

  result = WTF::StringImpl::startsWith();
  if (!result)
  {
    return result;
  }

  v4 = *a2;
  if (!v4 || (v5 = *(v4 + 4), v5 < 9))
  {
    v7 = 0x100000000;
    v9 = "";
    goto LABEL_9;
  }

  v6 = *(v4 + 8);
  v7 = (v5 - 8);
  v8 = v5 - 8;
  if ((*(v4 + 16) & 4) == 0)
  {
    if (v8 >= v7)
    {
      v9 = (v6 + 16);
      goto LABEL_9;
    }

LABEL_18:
    __break(1u);
    return result;
  }

  if (v8 < v7)
  {
    goto LABEL_18;
  }

  v9 = (v6 + 8);
  v7 |= 0x100000000uLL;
LABEL_9:
  result = WTF::parseInteger<unsigned int>(v9, v7);
  if (HIDWORD(result))
  {
    if (result <= 0x10)
    {
      WTF::FileSystemImpl::pathByAppendingComponent();
      WTF::FileSystemImpl::deleteNonEmptyDirectory(&v12, v10);
      result = v12;
      v12 = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          return WTF::StringImpl::destroy(result, v11);
        }
      }
    }
  }

  return result;
}

unint64_t WTF::parseInteger<unsigned int>(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x100000000) != 0)
  {
    return WTF::parseInteger<unsigned int,unsigned char>(a1, a2);
  }

  else
  {
    return WTF::parseInteger<unsigned int,char16_t>(a1, a2);
  }
}

unint64_t WTF::parseInteger<unsigned int,unsigned char>(uint64_t a1, unint64_t a2)
{
  if (a1)
  {
    v2 = 0;
    if (!a2)
    {
      goto LABEL_10;
    }

    while (1)
    {
      v3 = *(a1 + v2);
      if ((v3 - 9) >= 5 && v3 != 32)
      {
        break;
      }

      if (a2 == ++v2)
      {
        goto LABEL_9;
      }
    }

    if (a2 >= v2)
    {
      goto LABEL_10;
    }

    while (1)
    {
      __break(1u);
LABEL_9:
      v2 = a2;
LABEL_10:
      v4 = a2 - v2;
      if (a2 == v2)
      {
        break;
      }

      v5 = (a1 + v2);
      v6 = *v5;
      if (v6 == 43)
      {
        if (!--v4)
        {
          break;
        }

        v23 = *++v5;
        v6 = v23;
      }

      if ((v6 - 48) > 9)
      {
        goto LABEL_37;
      }

      v7 = 0;
      v8 = 0;
      do
      {
        v9 = v6 - 48;
        v10 = 10 * v7;
        v11 = (v10 & 0xFFFFFFFF00000000) != 0;
        if ((v10 & 0xFFFFFFFF00000000) == 0)
        {
          v7 *= 10;
        }

        v12 = __CFADD__(v7, v9);
        v13 = v7 + v9;
        v14 = v12;
        if (!v12)
        {
          v7 = v13;
        }

        if ((v14 | v11))
        {
          v8 = 1;
        }

        if (!--v4)
        {
          if (v8)
          {
            goto LABEL_37;
          }

          goto LABEL_40;
        }

        v15 = *++v5;
        v6 = v15;
        v16 = v15 - 48;
      }

      while ((v15 - 48) <= 9 && v16 < 0xA);
      if (v8)
      {
        goto LABEL_37;
      }

      v18 = 0;
      while (1)
      {
        v19 = v5[v18];
        if ((v19 - 9) >= 5 && v19 != 32)
        {
          break;
        }

        if (v4 == ++v18)
        {
          goto LABEL_40;
        }
      }

      if (v4 >= v18)
      {
        if (v4 != v18)
        {
          goto LABEL_37;
        }

LABEL_40:
        v21 = v7 & 0xFFFFFF00;
        v20 = v7;
        v4 = 0x100000000;
        return v4 | v21 | v20;
      }
    }
  }

  else
  {
LABEL_37:
    v4 = 0;
  }

  v20 = 0;
  v21 = 0;
  return v4 | v21 | v20;
}

unint64_t WTF::parseInteger<unsigned int,char16_t>(uint64_t a1, unint64_t a2)
{
  if (a1)
  {
    v2 = 0;
    if (!a2)
    {
      goto LABEL_10;
    }

    while (1)
    {
      v3 = *(a1 + 2 * v2);
      if ((v3 - 9) >= 5 && v3 != 32)
      {
        break;
      }

      if (a2 == ++v2)
      {
        goto LABEL_9;
      }
    }

    if (a2 >= v2)
    {
      goto LABEL_10;
    }

    while (1)
    {
      __break(1u);
LABEL_9:
      v2 = a2;
LABEL_10:
      v4 = a2 - v2;
      if (a2 == v2)
      {
        break;
      }

      v5 = (a1 + 2 * v2);
      v6 = *v5;
      if (v6 == 43)
      {
        if (!--v4)
        {
          break;
        }

        v7 = v5[1];
        ++v5;
        v6 = v7;
      }

      if ((v6 - 48) > 9)
      {
        goto LABEL_39;
      }

      v8 = 0;
      v9 = 0;
      do
      {
        v10 = v6 - 48;
        v11 = 10 * v8;
        v12 = (v11 & 0xFFFFFFFF00000000) != 0;
        if ((v11 & 0xFFFFFFFF00000000) == 0)
        {
          v8 *= 10;
        }

        v13 = __CFADD__(v8, v10);
        v14 = v8 + v10;
        v15 = v13;
        if (!v13)
        {
          v8 = v14;
        }

        if ((v15 | v12))
        {
          v9 = 1;
        }

        if (!--v4)
        {
          if (v9)
          {
            goto LABEL_39;
          }

          goto LABEL_43;
        }

        v16 = v5[1];
        ++v5;
        v6 = v16;
        v17 = v16 - 48;
      }

      while ((v16 - 48) <= 9 && v17 < 0xA);
      if (v9)
      {
        goto LABEL_39;
      }

      v19 = 0;
      while (1)
      {
        v20 = v5[v19];
        if ((v20 - 9) >= 5 && v20 != 32)
        {
          break;
        }

        if (v4 == ++v19)
        {
          goto LABEL_43;
        }
      }

      if (v4 >= v19)
      {
        if (v4 != v19)
        {
          goto LABEL_39;
        }

LABEL_43:
        v22 = v8 & 0xFFFFFF00;
        v21 = v8;
        v4 = 0x100000000;
        return v4 | v22 | v21;
      }
    }
  }

  else
  {
LABEL_39:
    v4 = 0;
  }

  v21 = 0;
  v22 = 0;
  return v4 | v22 | v21;
}

uint64_t std::optional<WebKit::NetworkCache::SubresourceInfo>::~optional(uint64_t a1, WTF::StringImpl *a2)
{
  if (*(a1 + 176) == 1)
  {
    WTF::Vector<WebCore::HTTPHeaderMap::UncommonHeader,0ul,WTF::CrashOnOverflow,0ul,WTF::FastMalloc>::~Vector((a1 + 152), a2);
    WTF::Vector<WebCore::HTTPHeaderMap::CommonHeader,0ul,WTF::CrashOnOverflow,6ul,WTF::FastMalloc>::~Vector(a1 + 136, v3);
    v5 = *(a1 + 96);
    *(a1 + 96) = 0;
    if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v5, v4);
    }

    v6 = *(a1 + 24);
    *(a1 + 24) = 0;
    if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v6, v4);
    }

    v7 = *(a1 + 16);
    *(a1 + 16) = 0;
    if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v7, v4);
    }

    v8 = *(a1 + 8);
    *(a1 + 8) = 0;
    if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v8, v4);
    }

    v9 = *a1;
    *a1 = 0;
    if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v9, v4);
    }
  }

  return a1;
}

uint64_t WebKit::NetworkCache::SubresourceInfo::operator=(uint64_t a1, uint64_t a2)
{
  WebKit::NetworkCache::Key::operator=(a1, a2);
  v4 = *(a2 + 87);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 87) = v4;
  WTF::URL::operator=(a1 + 96, a2 + 96);
  v5 = *(a1 + 148);
  if (v5)
  {
    WTF::VectorDestructor<true,WebCore::HTTPHeaderMap::CommonHeader>::destruct(*(a1 + 136), (*(a1 + 136) + 16 * v5));
  }

  WTF::VectorBuffer<unsigned char,0ul,WTF::FastMalloc>::adopt(a1 + 136, (a2 + 136));
  v6 = *(a1 + 164);
  if (v6)
  {
    WTF::VectorTypeOperations<WebCore::HTTPHeaderMap::UncommonHeader>::destruct(*(a1 + 152), (*(a1 + 152) + 16 * v6));
  }

  WTF::VectorBuffer<unsigned char,0ul,WTF::FastMalloc>::adopt(a1 + 152, (a2 + 152));
  *(a1 + 168) = *(a2 + 168);
  return a1;
}

WebCore::TimerBase *WebCore::Timer::Timer<WebKit::PrefetchCache,WebKit::PrefetchCache>(WebCore::TimerBase *a1, uint64_t a2)
{
  *WebCore::TimerBase::TimerBase(a1) = &unk_1F10EB388;
  v4 = WTF::fastMalloc(0x20);
  *v4 = &unk_1F1109578;
  v4[1] = a2;
  v4[2] = WebKit::PrefetchCache::clearExpiredEntries;
  v4[3] = 0;
  *(a1 + 6) = v4;
  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebCore::Timer::Timer<WebKit::PrefetchCache,WebKit::PrefetchCache>(WebKit::PrefetchCache &,void (WebKit::PrefetchCache::*)(void))::{lambda(void)#1},void>::call(void *a1)
{
  v2 = a1[1];
  v1 = a1[2];
  ++*v2;
  v3 = a1[3];
  v4 = (v2 + (v3 >> 1));
  if (v3)
  {
    v1 = *(*v4 + v1);
  }

  result = v1(v4);
  if (*v2)
  {
    --*v2;
  }

  else
  {
    result = 290;
    __break(0xC471u);
  }

  return result;
}

uint64_t WTF::Deque<std::tuple<WTF::URL,WTF::WallTime>,0ul>::~Deque(uint64_t a1)
{
  WTF::Deque<std::tuple<WTF::URL,WTF::WallTime>,0ul>::destroyAll(a1);
  v3 = *(a1 + 16);
  if (v3)
  {
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    WTF::fastFree(v3, v2);
  }

  return a1;
}

WTF::StringImpl *WTF::Deque<std::tuple<WTF::URL,WTF::WallTime>,0ul>::destroyAll(WTF::StringImpl *result)
{
  v1 = *(result + 1);
  v2 = *(result + 2);
  v3 = *(result + 6);
  v4 = *result;
  v5 = v1 - *result;
  if (v1 < *result)
  {
    if (v1 <= v3)
    {
      v8 = result;
      result = WTF::VectorDestructor<true,std::tuple<WTF::URL,WTF::WallTime>>::destruct(*(result + 2), (v2 + 48 * v1));
      if (*v8 <= v3)
      {
        v6 = (v2 + 48 * *v8);
        v7 = (v2 + 48 * v3);
        goto LABEL_6;
      }
    }

    goto LABEL_13;
  }

  if (v3 < v4)
  {
    goto LABEL_13;
  }

  if (v5 == -1)
  {
    v5 = v3 - v4;
    goto LABEL_5;
  }

  if (v3 - v4 < v5)
  {
LABEL_13:
    __break(1u);
    return result;
  }

LABEL_5:
  v6 = (v2 + 48 * v4);
  v7 = (v6 + 48 * v5);
LABEL_6:

  return WTF::VectorDestructor<true,std::tuple<WTF::URL,WTF::WallTime>>::destruct(v6, v7);
}

WTF::StringImpl *WTF::VectorDestructor<true,std::tuple<WTF::URL,WTF::WallTime>>::destruct(WTF::StringImpl *result, WTF::StringImpl *a2)
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
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          result = WTF::StringImpl::destroy(result, a2);
        }
      }

      v3 += 6;
    }

    while (v3 != a2);
  }

  return result;
}

WebKit::PrefetchCache::Entry *WTF::HashMap<WTF::URL,std::unique_ptr<WebKit::PrefetchCache::Entry>,WTF::DefaultHash<WTF::URL>,WTF::HashTraits<WTF::URL>,WTF::HashTraits<std::unique_ptr<WebKit::PrefetchCache::Entry>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::take(WebKit::PrefetchCache::Entry *result, uint64_t *a2, uint64_t a3)
{
  if (*a2)
  {
    if (*a2 + 48 * *(*a2 - 4) != a3)
    {
LABEL_3:
      v3 = *(a3 + 40);
      *(a3 + 40) = 0;
      *result = v3;
      return WTF::HashTable<WTF::URL,WTF::KeyValuePair<WTF::URL,std::unique_ptr<WebKit::PrefetchCache::Entry>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::URL,std::unique_ptr<WebKit::PrefetchCache::Entry>>>,WTF::DefaultHash<WTF::URL>,WTF::HashMap<WTF::URL,std::unique_ptr<WebKit::PrefetchCache::Entry>,WTF::DefaultHash<WTF::URL>,WTF::HashTraits<WTF::URL>,WTF::HashTraits<std::unique_ptr<WebKit::PrefetchCache::Entry>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::URL>,WTF::FastMalloc>::remove(a2, a3);
    }
  }

  else if (a3)
  {
    goto LABEL_3;
  }

  *result = 0;
  return result;
}

WebKit::PrefetchCache::Entry *WTF::HashTable<WTF::URL,WTF::KeyValuePair<WTF::URL,std::unique_ptr<WebKit::PrefetchCache::Entry>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::URL,std::unique_ptr<WebKit::PrefetchCache::Entry>>>,WTF::DefaultHash<WTF::URL>,WTF::HashMap<WTF::URL,std::unique_ptr<WebKit::PrefetchCache::Entry>,WTF::DefaultHash<WTF::URL>,WTF::HashTraits<WTF::URL>,WTF::HashTraits<std::unique_ptr<WebKit::PrefetchCache::Entry>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::URL>,WTF::FastMalloc>::remove(uint64_t *a1, WebKit::PrefetchCache::Entry **a2)
{
  v4 = *a2;
  *a2 = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  *a2 = -1;
  result = std::unique_ptr<WebKit::PrefetchCache::Entry>::reset[abi:sn200100](a2 + 5, 0);
  v6 = *a1;
  v7 = vadd_s32(*(*a1 - 16), 0xFFFFFFFF00000001);
  *(v6 - 16) = v7;
  v8 = *(v6 - 4);
  if (6 * v7.i32[1] < v8 && v8 >= 9)
  {

    return WTF::HashTable<WTF::URL,WTF::KeyValuePair<WTF::URL,std::unique_ptr<WebKit::PrefetchCache::Entry>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::URL,std::unique_ptr<WebKit::PrefetchCache::Entry>>>,WTF::DefaultHash<WTF::URL>,WTF::HashMap<WTF::URL,std::unique_ptr<WebKit::PrefetchCache::Entry>,WTF::DefaultHash<WTF::URL>,WTF::HashTraits<WTF::URL>,WTF::HashTraits<std::unique_ptr<WebKit::PrefetchCache::Entry>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::URL>,WTF::FastMalloc>::rehash(a1, v8 >> 1, 0);
  }

  return result;
}

_DWORD *WTF::HashTable<WTF::URL,WTF::KeyValuePair<WTF::URL,std::unique_ptr<WebKit::PrefetchCache::Entry>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::URL,std::unique_ptr<WebKit::PrefetchCache::Entry>>>,WTF::DefaultHash<WTF::URL>,WTF::HashMap<WTF::URL,std::unique_ptr<WebKit::PrefetchCache::Entry>,WTF::DefaultHash<WTF::URL>,WTF::HashTraits<WTF::URL>,WTF::HashTraits<std::unique_ptr<WebKit::PrefetchCache::Entry>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::URL>,WTF::FastMalloc>::rehash(uint64_t *a1, unsigned int a2, WTF::StringImpl **a3)
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

  result = WTF::fastZeroedMalloc((48 * a2 + 16));
  *a1 = (result + 4);
  result[2] = a2 - 1;
  result[3] = a2;
  *result = 0;
  result[1] = v6;
  if (v5)
  {
    v9 = 0;
    v10 = 0;
    v11 = v5;
    v27 = v4;
    do
    {
      v12 = (v4 + 48 * v9);
      if (*v12 != -1)
      {
        if (WTF::HashTraitsEmptyValueChecker<WTF::HashTraits<WTF::URL>,false>::isEmptyValue<WTF::URL>((v4 + 48 * v9)))
        {
          std::unique_ptr<WebKit::PrefetchCache::Entry>::reset[abi:sn200100](v12 + 5, 0);
          v13 = *v12;
          *v12 = 0;
          if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v13, v8);
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
            v21 = (v14 + 48 * (v18 & v15));
            v22 = WTF::HashTraitsEmptyValueChecker<WTF::HashTraits<WTF::URL>,false>::isEmptyValue<WTF::URL>(v21);
            v18 = ++v19 + v20;
          }

          while (!v22);
          std::unique_ptr<WebKit::PrefetchCache::Entry>::reset[abi:sn200100](v21 + 5, 0);
          v24 = *v21;
          *v21 = 0;
          if (v24 && atomic_fetch_add_explicit(v24, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v24, v23);
          }

          WTF::URL::URL(v14 + 48 * v20, v12);
          v25 = v12[5];
          v12[5] = 0;
          v21[5] = v25;
          std::unique_ptr<WebKit::PrefetchCache::Entry>::reset[abi:sn200100](v12 + 5, 0);
          v26 = *v12;
          *v12 = 0;
          v10 = v17;
          if (v26 && atomic_fetch_add_explicit(v26, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v26, v8);
          }

          v4 = v27;
          if (v12 == a3)
          {
            v10 = v14 + 48 * v20;
          }
        }
      }

      ++v9;
    }

    while (v9 != v11);
  }

  else if (!v4)
  {
    return result;
  }

  return WTF::fastFree((v4 - 16), v8);
}

uint64_t WTF::HashTable<WTF::URL,WTF::KeyValuePair<WTF::URL,std::unique_ptr<WebKit::PrefetchCache::Entry>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::URL,std::unique_ptr<WebKit::PrefetchCache::Entry>>>,WTF::DefaultHash<WTF::URL>,WTF::HashMap<WTF::URL,std::unique_ptr<WebKit::PrefetchCache::Entry>,WTF::DefaultHash<WTF::URL>,WTF::HashTraits<WTF::URL>,WTF::HashTraits<std::unique_ptr<WebKit::PrefetchCache::Entry>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::URL>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WTF::URL,std::unique_ptr<WebKit::PrefetchCache::Entry>,WTF::DefaultHash<WTF::URL>,WTF::HashTraits<WTF::URL>,WTF::HashTraits<std::unique_ptr<WebKit::PrefetchCache::Entry>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::URL>>,(WTF::ShouldValidateKey)1,WTF::URL>(uint64_t *a1, WTF **a2)
{
  if (!*a1)
  {
    return 0;
  }

  if (WTF::HashTraitsEmptyValueChecker<WTF::HashTraits<WTF::URL>,false>::isEmptyValue<WTF::URL>(a2) || (v4 = *a2, *a2 == -1))
  {
    __break(0xC471u);
    JUMPOUT(0x19DDB404CLL);
  }

  v5 = *a1;
  if (!*a1)
  {
    return 0;
  }

  v6 = *(v5 - 8);
  v7 = *(v4 + 4);
  if (v7 < 0x100)
  {
    v8 = WTF::StringImpl::hashSlowCase(v4);
  }

  else
  {
    v8 = v7 >> 8;
  }

  v9 = v8 & v6;
  v10 = (v5 + 48 * (v8 & v6));
  if (WTF::HashTraitsEmptyValueChecker<WTF::HashTraits<WTF::URL>,false>::isEmptyValue<WTF::URL>(v10))
  {
LABEL_12:
    if (*a1)
    {
      return *a1 + 48 * *(*a1 - 4);
    }

    return 0;
  }

  v12 = 1;
  while (*v10 == -1 || (WTF::equal(*v10, *a2, v11) & 1) == 0)
  {
    v9 = (v9 + v12) & v6;
    v10 = (v5 + 48 * v9);
    ++v12;
    if (WTF::HashTraitsEmptyValueChecker<WTF::HashTraits<WTF::URL>,false>::isEmptyValue<WTF::URL>(v10))
    {
      goto LABEL_12;
    }
  }

  return v10;
}

_DWORD *WTF::HashTable<WTF::URL,WTF::KeyValuePair<WTF::URL,std::unique_ptr<WebKit::PrefetchCache::Entry>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::URL,std::unique_ptr<WebKit::PrefetchCache::Entry>>>,WTF::DefaultHash<WTF::URL>,WTF::HashMap<WTF::URL,std::unique_ptr<WebKit::PrefetchCache::Entry>,WTF::DefaultHash<WTF::URL>,WTF::HashTraits<WTF::URL>,WTF::HashTraits<std::unique_ptr<WebKit::PrefetchCache::Entry>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::URL>,WTF::FastMalloc>::expand(uint64_t *a1, WTF::StringImpl **a2)
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

  return WTF::HashTable<WTF::URL,WTF::KeyValuePair<WTF::URL,std::unique_ptr<WebKit::PrefetchCache::Entry>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::URL,std::unique_ptr<WebKit::PrefetchCache::Entry>>>,WTF::DefaultHash<WTF::URL>,WTF::HashMap<WTF::URL,std::unique_ptr<WebKit::PrefetchCache::Entry>,WTF::DefaultHash<WTF::URL>,WTF::HashTraits<WTF::URL>,WTF::HashTraits<std::unique_ptr<WebKit::PrefetchCache::Entry>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::URL>,WTF::FastMalloc>::rehash(a1, v5, a2);
}

WTF::StringImpl *WTF::VectorMover<false,std::tuple<WTF::URL,WTF::WallTime>>::move(WTF::StringImpl *result, uint64_t *a2, uint64_t a3)
{
  if (result != a2)
  {
    v5 = result;
    do
    {
      WTF::URL::URL(a3, v5);
      *(a3 + 40) = v5[5];
      result = *v5;
      *v5 = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          result = WTF::StringImpl::destroy(result, v6);
        }
      }

      a3 += 48;
      v5 += 6;
    }

    while (v5 != a2);
  }

  return result;
}

uint64_t WTF::HashTable<WebCore::ClientOrigin,WTF::KeyValuePair<WebCore::ClientOrigin,WebKit::BackgroundFetchStoreImpl::PerClientOriginFetches>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ClientOrigin,WebKit::BackgroundFetchStoreImpl::PerClientOriginFetches>>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashMap<WebCore::ClientOrigin,WebKit::BackgroundFetchStoreImpl::PerClientOriginFetches,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<WebKit::BackgroundFetchStoreImpl::PerClientOriginFetches>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ClientOrigin>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WebCore::ClientOrigin,WebKit::BackgroundFetchStoreImpl::PerClientOriginFetches,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<WebKit::BackgroundFetchStoreImpl::PerClientOriginFetches>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WebCore::ClientOrigin>>,(WTF::ShouldValidateKey)1,WebCore::ClientOrigin>(uint64_t *a1, uint64_t a2)
{
  if (!*a1)
  {
    return 0;
  }

  v4 = WTF::HashTraitsEmptyValueChecker<WTF::HashTraits<WebCore::ClientOrigin>,false>::isEmptyValue<WebCore::ClientOrigin>();
  if (v4)
  {
    goto LABEL_22;
  }

  if (!*(a2 + 24))
  {
    if (*a2 != -1)
    {
      goto LABEL_5;
    }

LABEL_22:
    __break(0xC471u);
    JUMPOUT(0x19DDB4264);
  }

  if (*(a2 + 24) != 1)
  {
LABEL_19:
    mpark::throw_bad_variant_access(v4);
  }

LABEL_5:
  v5 = *a1;
  if (!*a1)
  {
    return 0;
  }

  v6 = *(v5 - 8);
  v7 = WTF::computeHash<WebCore::ClientOrigin>(a2) & v6;
  v8 = v5 + 88 * v7;
  v4 = WTF::HashTraitsEmptyValueChecker<WTF::HashTraits<WebCore::ClientOrigin>,false>::isEmptyValue<WebCore::ClientOrigin>();
  if ((v4 & 1) == 0)
  {
    v10 = 1;
    do
    {
      if (*(v8 + 24))
      {
        if (*(v8 + 24) != 1)
        {
          goto LABEL_19;
        }
      }

      else if (*v8 == -1)
      {
        goto LABEL_16;
      }

      if (WebCore::operator==() && (WebCore::operator==() & 1) != 0)
      {
        return v8;
      }

LABEL_16:
      v7 = (v7 + v10) & v6;
      v8 = v5 + 88 * v7;
      v4 = WTF::HashTraitsEmptyValueChecker<WTF::HashTraits<WebCore::ClientOrigin>,false>::isEmptyValue<WebCore::ClientOrigin>();
      ++v10;
    }

    while (!v4);
  }

  if (!*a1)
  {
    return 0;
  }

  return *a1 + 88 * *(*a1 - 4);
}

uint64_t WTF::HashMap<std::pair<WTF::String,WTF::String>,WTF::String,WTF::DefaultHash<std::pair<WTF::String,WTF::String>>,WTF::HashTraits<std::pair<WTF::String,WTF::String>>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<std::pair<WTF::String,WTF::String>,WTF::String,WTF::DefaultHash<std::pair<WTF::String,WTF::String>>,WTF::HashTraits<std::pair<WTF::String,WTF::String>>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<std::pair<WTF::String,WTF::String>>>,std::pair<WTF::String,WTF::String>>(atomic_uint **a1, uint64_t *a2, WTF **a3)
{
  result = WTF::equal(*a3, 0, a3);
  if (result && (result = WTF::equal(a3[1], 0, v7), result) || *a3 == -1)
  {
    __break(0xC471u);
    JUMPOUT(0x19DDB4394);
  }

  v8 = *a2;
  if (!*a2 || (v9 = *(v8 - 8), v10 = WTF::TupleHash<WTF::String,WTF::String>::hash<0ul>(a3) & v9, v11 = v8 + 24 * v10, result = WTF::HashTable<std::pair<WTF::String,WTF::String>,WTF::KeyValuePair<std::pair<WTF::String,WTF::String>,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<std::pair<WTF::String,WTF::String>,WTF::String>>,WTF::DefaultHash<std::pair<WTF::String,WTF::String>>,WTF::HashMap<std::pair<WTF::String,WTF::String>,WTF::String,WTF::DefaultHash<std::pair<WTF::String,WTF::String>>,WTF::HashTraits<std::pair<WTF::String,WTF::String>>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<std::pair<WTF::String,WTF::String>>,WTF::FastMalloc>::isEmptyBucket(v11, v12, v13), (result & 1) != 0))
  {
LABEL_10:
    v17 = 0;
  }

  else
  {
    v16 = 1;
    while (1)
    {
      if (*v11 != -1)
      {
        result = WTF::TupleHash<WTF::String,WTF::String>::equal<0ul>(v11, a3, v15);
        if (result)
        {
          break;
        }
      }

      v10 = (v10 + v16) & v9;
      v11 = v8 + 24 * v10;
      result = WTF::HashTable<std::pair<WTF::String,WTF::String>,WTF::KeyValuePair<std::pair<WTF::String,WTF::String>,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<std::pair<WTF::String,WTF::String>,WTF::String>>,WTF::DefaultHash<std::pair<WTF::String,WTF::String>>,WTF::HashMap<std::pair<WTF::String,WTF::String>,WTF::String,WTF::DefaultHash<std::pair<WTF::String,WTF::String>>,WTF::HashTraits<std::pair<WTF::String,WTF::String>>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<std::pair<WTF::String,WTF::String>>,WTF::FastMalloc>::isEmptyBucket(v11, v14, v15);
      ++v16;
      if (result)
      {
        goto LABEL_10;
      }
    }

    v17 = *(v11 + 16);
    if (v17)
    {
      atomic_fetch_add_explicit(v17, 2u, memory_order_relaxed);
    }
  }

  *a1 = v17;
  return result;
}

uint64_t WTF::HashTable<std::pair<WTF::String,WTF::String>,WTF::KeyValuePair<std::pair<WTF::String,WTF::String>,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<std::pair<WTF::String,WTF::String>,WTF::String>>,WTF::DefaultHash<std::pair<WTF::String,WTF::String>>,WTF::HashMap<std::pair<WTF::String,WTF::String>,WTF::String,WTF::DefaultHash<std::pair<WTF::String,WTF::String>>,WTF::HashTraits<std::pair<WTF::String,WTF::String>>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<std::pair<WTF::String,WTF::String>>,WTF::FastMalloc>::isEmptyBucket(WTF **a1, uint64_t a2, const WTF::StringImpl *a3)
{
  result = WTF::equal(*a1, 0, a3);
  if (result)
  {
    v6 = a1[1];

    return WTF::equal(v6, 0, v5);
  }

  return result;
}

void WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WebKit::BackgroundFetchStoreImpl::FetchInformation>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WebKit::BackgroundFetchStoreImpl::FetchInformation>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WebKit::BackgroundFetchStoreImpl::FetchInformation,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WebKit::BackgroundFetchStoreImpl::FetchInformation>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::expand(uint64_t *a1)
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

  WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WebKit::BackgroundFetchStoreImpl::FetchInformation>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WebKit::BackgroundFetchStoreImpl::FetchInformation>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WebKit::BackgroundFetchStoreImpl::FetchInformation,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WebKit::BackgroundFetchStoreImpl::FetchInformation>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::rehash(a1, v3);
}

void WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WebKit::BackgroundFetchStoreImpl::FetchInformation>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WebKit::BackgroundFetchStoreImpl::FetchInformation>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WebKit::BackgroundFetchStoreImpl::FetchInformation,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WebKit::BackgroundFetchStoreImpl::FetchInformation>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::rehash(uint64_t *a1, unsigned int a2)
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

  v7 = WTF::fastMalloc((88 * a2 + 16));
  v9 = v7;
  v10 = v7 + 16;
  if (a2)
  {
    bzero((v7 + 16), 88 * a2);
  }

  *a1 = v10;
  v9[2] = a2 - 1;
  v9[3] = a2;
  *v9 = 0;
  v9[1] = v6;
  if (v5)
  {
    v11 = 0;
    while (1)
    {
      v12 = v4 + 88 * v11;
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

          v17 = v13[4];
          if (v17 < 0x100)
          {
            v18 = WTF::StringImpl::hashSlowCase(v13);
          }

          else
          {
            v18 = v17 >> 8;
          }

          v19 = 0;
          do
          {
            v20 = v15 + 88 * (v18 & v16);
            v18 = ++v19 + (v18 & v16);
          }

          while (*v20);
          WebKit::BackgroundFetchStoreImpl::FetchInformation::~FetchInformation((v20 + 8), v8);
          v22 = *v20;
          *v20 = 0;
          if (v22 && atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v22, v21);
          }

          v23 = *v12;
          *v12 = 0;
          *v20 = v23;
          mpark::detail::move_assignment<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::move_assignment((v20 + 8));
          mpark::detail::move_assignment<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::move_assignment((v20 + 40));
          v24 = *(v12 + 72);
          *(v12 + 72) = 0;
          *(v20 + 72) = v24;
          v25 = *(v12 + 80);
          *(v12 + 80) = 0;
          *(v20 + 80) = v25;
          WebKit::BackgroundFetchStoreImpl::FetchInformation::~FetchInformation((v12 + 8), v26);
          v14 = *v12;
          *v12 = 0;
          if (!v14 || atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) != 2)
          {
            goto LABEL_26;
          }
        }

        else
        {
          WebKit::BackgroundFetchStoreImpl::FetchInformation::~FetchInformation((v12 + 8), v8);
          v14 = *v12;
          *v12 = 0;
          if (!v14 || atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) != 2)
          {
            goto LABEL_26;
          }
        }

        WTF::StringImpl::destroy(v14, v8);
      }

LABEL_26:
      if (++v11 == v5)
      {
        goto LABEL_30;
      }
    }
  }

  if (v4)
  {
LABEL_30:

    WTF::fastFree((v4 - 16), v8);
  }
}

_DWORD *WTF::HashTable<std::pair<WTF::String,WTF::String>,WTF::KeyValuePair<std::pair<WTF::String,WTF::String>,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<std::pair<WTF::String,WTF::String>,WTF::String>>,WTF::DefaultHash<std::pair<WTF::String,WTF::String>>,WTF::HashMap<std::pair<WTF::String,WTF::String>,WTF::String,WTF::DefaultHash<std::pair<WTF::String,WTF::String>>,WTF::HashTraits<std::pair<WTF::String,WTF::String>>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<std::pair<WTF::String,WTF::String>>,WTF::FastMalloc>::expand(uint64_t *a1)
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

  return WTF::HashTable<std::pair<WTF::String,WTF::String>,WTF::KeyValuePair<std::pair<WTF::String,WTF::String>,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<std::pair<WTF::String,WTF::String>,WTF::String>>,WTF::DefaultHash<std::pair<WTF::String,WTF::String>>,WTF::HashMap<std::pair<WTF::String,WTF::String>,WTF::String,WTF::DefaultHash<std::pair<WTF::String,WTF::String>>,WTF::HashTraits<std::pair<WTF::String,WTF::String>>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<std::pair<WTF::String,WTF::String>>,WTF::FastMalloc>::rehash(a1, v3);
}

_DWORD *WTF::HashTable<std::pair<WTF::String,WTF::String>,WTF::KeyValuePair<std::pair<WTF::String,WTF::String>,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<std::pair<WTF::String,WTF::String>,WTF::String>>,WTF::DefaultHash<std::pair<WTF::String,WTF::String>>,WTF::HashMap<std::pair<WTF::String,WTF::String>,WTF::String,WTF::DefaultHash<std::pair<WTF::String,WTF::String>>,WTF::HashTraits<std::pair<WTF::String,WTF::String>>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<std::pair<WTF::String,WTF::String>>,WTF::FastMalloc>::rehash(uint64_t *a1, unsigned int a2)
{
  v3 = *a1;
  if (*a1)
  {
    v4 = *(v3 - 4);
    v5 = *(v3 - 12);
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  result = WTF::fastZeroedMalloc((24 * a2 + 16));
  *a1 = (result + 4);
  result[2] = a2 - 1;
  result[3] = a2;
  *result = 0;
  result[1] = v5;
  if (v4)
  {
    v9 = 0;
    v10 = v4;
    v31 = v3;
    do
    {
      v11 = (v3 + 24 * v9);
      if (*v11 != -1)
      {
        if (WTF::HashTable<std::pair<WTF::String,WTF::String>,WTF::KeyValuePair<std::pair<WTF::String,WTF::String>,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<std::pair<WTF::String,WTF::String>,WTF::String>>,WTF::DefaultHash<std::pair<WTF::String,WTF::String>>,WTF::HashMap<std::pair<WTF::String,WTF::String>,WTF::String,WTF::DefaultHash<std::pair<WTF::String,WTF::String>>,WTF::HashTraits<std::pair<WTF::String,WTF::String>>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<std::pair<WTF::String,WTF::String>>,WTF::FastMalloc>::isEmptyBucket((v3 + 24 * v9), v7, v8))
        {
          v12 = v11[2];
          v11[2] = 0;
          if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v12, v7);
          }

          v13 = v11[1];
          v11[1] = 0;
          if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v13, v7);
          }

          v14 = *v11;
          *v11 = 0;
          if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v14, v7);
          }
        }

        else
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

          v17 = WTF::TupleHash<WTF::String,WTF::String>::hash<0ul>((v3 + 24 * v9));
          v18 = 0;
          do
          {
            v19 = v17 & v16;
            v20 = (v15 + 24 * (v17 & v16));
            isEmptyBucket = WTF::HashTable<std::pair<WTF::String,WTF::String>,WTF::KeyValuePair<std::pair<WTF::String,WTF::String>,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<std::pair<WTF::String,WTF::String>,WTF::String>>,WTF::DefaultHash<std::pair<WTF::String,WTF::String>>,WTF::HashMap<std::pair<WTF::String,WTF::String>,WTF::String,WTF::DefaultHash<std::pair<WTF::String,WTF::String>>,WTF::HashTraits<std::pair<WTF::String,WTF::String>>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<std::pair<WTF::String,WTF::String>>,WTF::FastMalloc>::isEmptyBucket(v20, v7, v8);
            v17 = ++v18 + v19;
          }

          while (!isEmptyBucket);
          v22 = v20[2];
          v20[2] = 0;
          if (v22 && atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v22, v7);
          }

          v23 = v20[1];
          v20[1] = 0;
          if (v23 && atomic_fetch_add_explicit(v23, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v23, v7);
          }

          v24 = *v20;
          *v20 = 0;
          if (v24 && atomic_fetch_add_explicit(v24, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v24, v7);
          }

          v25 = *v11;
          *v11 = 0;
          *v20 = v25;
          v26 = v11[1];
          v11[1] = 0;
          v20[1] = v26;
          v27 = v11[2];
          v11[2] = 0;
          v20[2] = v27;
          v28 = v11[2];
          v11[2] = 0;
          if (v28 && atomic_fetch_add_explicit(v28, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v28, v7);
          }

          v29 = v11[1];
          v11[1] = 0;
          if (v29 && atomic_fetch_add_explicit(v29, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v29, v7);
          }

          v30 = *v11;
          *v11 = 0;
          if (v30 && atomic_fetch_add_explicit(v30, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v30, v7);
          }

          v3 = v31;
        }
      }

      ++v9;
    }

    while (v9 != v10);
  }

  else if (!v3)
  {
    return result;
  }

  return WTF::fastFree((v3 - 16), v7);
}

uint64_t WTF::HashTable<WebCore::ClientOrigin,WTF::KeyValuePair<WebCore::ClientOrigin,WebKit::BackgroundFetchStoreImpl::PerClientOriginFetches>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ClientOrigin,WebKit::BackgroundFetchStoreImpl::PerClientOriginFetches>>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashMap<WebCore::ClientOrigin,WebKit::BackgroundFetchStoreImpl::PerClientOriginFetches,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<WebKit::BackgroundFetchStoreImpl::PerClientOriginFetches>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ClientOrigin>,WTF::FastMalloc>::expand(uint64_t *a1, uint64_t a2)
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
  v6 = WTF::fastMalloc((88 * v5 + 16));
  v8 = v6;
  v9 = v6 + 16;
  if (v5)
  {
    bzero((v6 + 16), 88 * v5);
  }

  *a1 = v9;
  v8[2] = v5 - 1;
  v8[3] = v5;
  *v8 = 0;
  v8[1] = v4;
  if (v3)
  {
    v10 = 0;
    v11 = 0;
    v26 = v2;
    while (1)
    {
      v12 = v2 + 88 * v10;
      if (*(v12 + 24))
      {
        break;
      }

      if (*v12 != -1)
      {
        goto LABEL_12;
      }

LABEL_21:
      if (++v10 == v3)
      {
        goto LABEL_26;
      }
    }

    if (*(v12 + 24) != 1)
    {
      mpark::throw_bad_variant_access(v6);
    }

LABEL_12:
    if (WTF::HashTraitsEmptyValueChecker<WTF::HashTraits<WebCore::ClientOrigin>,false>::isEmptyValue<WebCore::ClientOrigin>())
    {
      v6 = WTF::KeyValuePair<WebCore::ClientOrigin,WebKit::BackgroundFetchStoreImpl::PerClientOriginFetches>::~KeyValuePair(v2 + 88 * v10, v13);
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

      v16 = WTF::computeHash<WebCore::ClientOrigin>(v12);
      v17 = 0;
      do
      {
        v18 = v16 & v15;
        v19 = v14 + 88 * (v16 & v15);
        v21 = WTF::HashTraitsEmptyValueChecker<WTF::HashTraits<WebCore::ClientOrigin>,false>::isEmptyValue<WebCore::ClientOrigin>();
        v16 = ++v17 + v18;
      }

      while (!v21);
      v22 = WTF::KeyValuePair<WebCore::ClientOrigin,WebKit::BackgroundFetchStoreImpl::PerClientOriginFetches>::~KeyValuePair(v14 + 88 * v18, v20);
      mpark::detail::move_assignment<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::move_assignment(v22);
      mpark::detail::move_assignment<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::move_assignment((v19 + 32));
      *(v19 + 64) = 0;
      v23 = *(v12 + 64);
      *(v12 + 64) = 0;
      *(v19 + 64) = v23;
      *(v19 + 80) = 0;
      *(v19 + 72) = 0;
      WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt(v19 + 72, (v12 + 72));
      v6 = WTF::KeyValuePair<WebCore::ClientOrigin,WebKit::BackgroundFetchStoreImpl::PerClientOriginFetches>::~KeyValuePair(v12, v24);
      v2 = v26;
      if (v12 == a2)
      {
        v11 = v14 + 88 * v18;
      }
    }

    goto LABEL_21;
  }

  v11 = 0;
  result = 0;
  if (v2)
  {
LABEL_26:
    WTF::fastFree((v2 - 16), v7);
    return v11;
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::BackgroundFetchStoreImpl::initializeFetches(WebCore::ClientOrigin const&,WTF::CompletionHandler<void ()(void)> &&)::$_0,void,WTF::Vector<std::pair<WTF::RefPtr<WebCore::SharedBuffer,WTF::RawPtrTraits<WTF::RefPtr>,WTF::DefaultRefDerefTraits<WTF::RefPtr>>,WTF::String>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&>::~CallableWrapper(void *a1, void *a2)
{
  *a1 = &unk_1F11095A0;
  WebKit::BackgroundFetchStoreImpl::initializeFetches(WebCore::ClientOrigin const&,WTF::CompletionHandler<void ()(void)> &&)::$_0::~$_0((a1 + 1), a2);
  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::BackgroundFetchStoreImpl::initializeFetches(WebCore::ClientOrigin const&,WTF::CompletionHandler<void ()(void)> &&)::$_0,void,WTF::Vector<std::pair<WTF::RefPtr<WebCore::SharedBuffer,WTF::RawPtrTraits<WTF::RefPtr>,WTF::DefaultRefDerefTraits<WTF::RefPtr>>,WTF::String>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&>::~CallableWrapper(WTF *a1, void *a2)
{
  *a1 = &unk_1F11095A0;
  WebKit::BackgroundFetchStoreImpl::initializeFetches(WebCore::ClientOrigin const&,WTF::CompletionHandler<void ()(void)> &&)::$_0::~$_0(a1 + 8, a2);

  return WTF::fastFree(a1, v3);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::BackgroundFetchStoreImpl::initializeFetches(WebCore::ClientOrigin const&,WTF::CompletionHandler<void ()(void)> &&)::$_0,void,WTF::Vector<std::pair<WTF::RefPtr<WebCore::SharedBuffer,WTF::RawPtrTraits<WTF::RefPtr>,WTF::DefaultRefDerefTraits<WTF::RefPtr>>,WTF::String>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&>::call(void *a1, uint64_t a2)
{
  v3 = (a1 + 1);
  v4 = a1[9];
  if (v4 && *(v4 + 8) && a1[11] && (v5 = *(a2 + 12), v5))
  {
    v6 = *a2;
    v7 = 16 * v5;
    while (1)
    {
      v8 = a1[9];
      if (!v8 || !*(v8 + 8))
      {
        break;
      }

      v9 = *v6;
      atomic_fetch_add(*v6 + 2, 1u);
      WebCore::SharedBuffer::span(v9);
      v10 = WTF::fastMalloc(0x28);
      *v10 = &unk_1F11095C8;
      v10[1] = a1 + 11;
      v10[2] = v3;
      v10[3] = v6;
      v10[4] = a1 + 10;
      v22 = v10;
      WebCore::BackgroundFetchEngine::addFetchFromStore();
      v11 = v22;
      v22 = 0;
      if (v11)
      {
        (*(*v11 + 8))(v11);
      }

      if (v9 && atomic_fetch_add(v9 + 2, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v9 + 2);
        (*(*v9 + 8))(v9);
      }

      v6 += 2;
      v7 -= 16;
      if (!v7)
      {
        goto LABEL_14;
      }
    }

    result = 121;
    __break(0xC471u);
  }

  else
  {
LABEL_14:
    result = WTF::HashTable<WebCore::ClientOrigin,WTF::KeyValuePair<WebCore::ClientOrigin,WebKit::BackgroundFetchStoreImpl::PerClientOriginFetches>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ClientOrigin,WebKit::BackgroundFetchStoreImpl::PerClientOriginFetches>>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashMap<WebCore::ClientOrigin,WebKit::BackgroundFetchStoreImpl::PerClientOriginFetches,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<WebKit::BackgroundFetchStoreImpl::PerClientOriginFetches>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ClientOrigin>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WebCore::ClientOrigin,WebKit::BackgroundFetchStoreImpl::PerClientOriginFetches,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<WebKit::BackgroundFetchStoreImpl::PerClientOriginFetches>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WebCore::ClientOrigin>>,(WTF::ShouldValidateKey)1,WebCore::ClientOrigin>((a1[10] + 40), v3);
    v15 = *(a1[10] + 40);
    if (v15)
    {
      v15 += 88 * *(v15 - 4);
    }

    if (v15 != result)
    {
      *&v14 = 0;
      v16 = *(result + 72);
      v22 = v16;
      v17 = *(result + 84);
      v23 = *(result + 80);
      v24 = v17;
      v21 = v14;
      *(result + 72) = 0;
      *(result + 80) = 0;
      WTF::Vector<WTF::CompletionHandler<void ()(void)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v21, v13);
      if (v17)
      {
        v19 = 8 * v17;
        do
        {
          v20 = *v16;
          *v16++ = 0;
          (*(*v20 + 16))(v20);
          (*(*v20 + 8))(v20);
          v19 -= 8;
        }

        while (v19);
      }

      return WTF::Vector<WTF::CompletionHandler<void ()(void)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v22, v18);
    }
  }

  return result;
}

WTF::StringImpl *_ZN3WTF6Detail15CallableWrapperIZZN6WebKit24BackgroundFetchStoreImpl17initializeFetchesERKN7WebCore12ClientOriginEONS_17CompletionHandlerIFvvEEEENK3__0clEONS_6VectorINSt3__14pairINS_6RefPtrINS4_12SharedBufferENS_12RawPtrTraitsISH_EENS_21DefaultRefDerefTraitsISH_EEEENS_6StringEEELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEEUlRT_RT0_E_vJRKNS4_28ServiceWorkerRegistrationKeyERKSN_EE4callES10_S12_(uint64_t a1, const WTF::StringImpl *a2, atomic_uint **a3)
{
  if (*a3 && (*a3)[1])
  {
    v7 = *(a1 + 16);
    v8 = (*(a1 + 24) + 8);
    v9 = **(a1 + 32);

    return WebKit::BackgroundFetchStoreImpl::registerFetch(v9, v7, a2, a3, v8);
  }

  else
  {
    v16[3] = v3;
    v16[4] = v4;
    v11 = *(a1 + 16);
    v12 = **(a1 + 8);
    WTF::String::isolatedCopy();
    v13 = WTF::fastMalloc(0x10);
    *v13 = &unk_1F11095F0;
    v13[1] = v15;
    v16[0] = v13;
    WebKit::NetworkStorageManager::dispatchTaskToBackgroundFetchManager(v12, v11, v16);
    v14 = v16[0];
    v16[0] = 0;
    if (v14)
    {
      (*(*v14 + 8))(v14);
    }

    return 0;
  }
}

void *_ZN3WTF6Detail15CallableWrapperIZZZN6WebKit24BackgroundFetchStoreImpl17initializeFetchesERKN7WebCore12ClientOriginEONS_17CompletionHandlerIFvvEEEENK3__0clEONS_6VectorINSt3__14pairINS_6RefPtrINS4_12SharedBufferENS_12RawPtrTraitsISH_EENS_21DefaultRefDerefTraitsISH_EEEENS_6StringEEELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEENKUlRT_RT0_E_clIKNS4_28ServiceWorkerRegistrationKeyEKSN_EEDaSU_SW_EUlPST_E_vJPNS2_27BackgroundFetchStoreManagerEEED1Ev(void *a1, WTF::StringImpl *a2)
{
  v3 = a1[1];
  *a1 = &unk_1F11095F0;
  a1[1] = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, a2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZZZN6WebKit24BackgroundFetchStoreImpl17initializeFetchesERKN7WebCore12ClientOriginEONS_17CompletionHandlerIFvvEEEENK3__0clEONS_6VectorINSt3__14pairINS_6RefPtrINS4_12SharedBufferENS_12RawPtrTraitsISH_EENS_21DefaultRefDerefTraitsISH_EEEENS_6StringEEELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEENKUlRT_RT0_E_clIKNS4_28ServiceWorkerRegistrationKeyEKSN_EEDaSU_SW_EUlPST_E_vJPNS2_27BackgroundFetchStoreManagerEEED0Ev(WTF *this, WTF::StringImpl *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F11095F0;
  *(this + 1) = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZZZN6WebKit24BackgroundFetchStoreImpl17initializeFetchesERKN7WebCore12ClientOriginEONS_17CompletionHandlerIFvvEEEENK3__0clEONS_6VectorINSt3__14pairINS_6RefPtrINS4_12SharedBufferENS_12RawPtrTraitsISH_EENS_21DefaultRefDerefTraitsISH_EEEENS_6StringEEELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEENKUlRT_RT0_E_clIKNS4_28ServiceWorkerRegistrationKeyEKSN_EEDaSU_SW_EUlPST_E_vJPNS2_27BackgroundFetchStoreManagerEEE4callES16_(uint64_t result, void *a2)
{
  if (a2)
  {
    v3 = result;
    v4 = WTF::fastMalloc(0x10);
    *v4 = &unk_1F1109618;
    v5 = v4;
    WebKit::BackgroundFetchStoreManager::clearFetch(a2, (v3 + 8), &v5);
    result = v5;
    v5 = 0;
    if (result)
    {
      return (*(*result + 8))(result);
    }
  }

  return result;
}

unsigned int *WTF::Vector<std::pair<WTF::RefPtr<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>,WTF::String>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(unsigned int *a1, WTF::StringImpl *a2)
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

      v7 = *(v5 - 1);
      *(v5 - 1) = 0;
      if (v7 && atomic_fetch_add(v7 + 2, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v7 + 2);
        (*(*v7 + 8))(v7);
      }

      v5 += 2;
      v4 -= 16;
    }

    while (v4);
  }

  v8 = *a1;
  if (*a1)
  {
    *a1 = 0;
    a1[2] = 0;
    WTF::fastFree(v8, a2);
  }

  return a1;
}

void *WTF::Detail::CallableWrapper<WebKit::BackgroundFetchStoreImpl::initializeFetchesInternal(WebCore::ClientOrigin const&,WTF::CompletionHandler<void ()(WTF::Vector<std::pair<WTF::RefPtr<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>,WTF::String>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)> &&)::$_0,void,WebKit::BackgroundFetchStoreManager *>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F1109640;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::BackgroundFetchStoreImpl::initializeFetchesInternal(WebCore::ClientOrigin const&,WTF::CompletionHandler<void ()(WTF::Vector<std::pair<WTF::RefPtr<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>,WTF::String>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)> &&)::$_0,void,WebKit::BackgroundFetchStoreManager *>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1109640;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

WTF::StringImpl *WTF::Detail::CallableWrapper<WebKit::BackgroundFetchStoreImpl::initializeFetchesInternal(WebCore::ClientOrigin const&,WTF::CompletionHandler<void ()(WTF::Vector<std::pair<WTF::RefPtr<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>,WTF::String>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)> &&)::$_0,void,WebKit::BackgroundFetchStoreManager *>::call(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = *(a1 + 8);
    *(a1 + 8) = 0;
    v4 = WTF::fastMalloc(0x10);
    *v4 = &unk_1F1109690;
    *(v4 + 1) = v3;
    v8 = v4;
    WebKit::BackgroundFetchStoreManager::initializeFetches(a2, &v8);
    result = v8;
    v8 = 0;
    if (result)
    {
      return (*(*result + 8))(result);
    }
  }

  else
  {
    v6 = *(a1 + 8);
    *(a1 + 8) = 0;
    v7 = WTF::fastMalloc(0x10);
    *v7 = &unk_1F1109668;
    *(v7 + 1) = v6;
    v8 = v7;
    WTF::callOnMainRunLoop();
    result = v8;
    v8 = 0;
    if (result)
    {
      return (*(*result + 8))(result);
    }
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZZN6WebKit24BackgroundFetchStoreImpl25initializeFetchesInternalERKN7WebCore12ClientOriginEONS_17CompletionHandlerIFvONS_6VectorINSt3__14pairINS_6RefPtrINS4_12SharedBufferENS_12RawPtrTraitsISD_EENS_21DefaultRefDerefTraitsISD_EEEENS_6StringEEELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEEEEEN3__0clINS2_27BackgroundFetchStoreManagerEEEDaPT_EUlvE_vJEED1Ev(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F1109668;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZZN6WebKit24BackgroundFetchStoreImpl25initializeFetchesInternalERKN7WebCore12ClientOriginEONS_17CompletionHandlerIFvONS_6VectorINSt3__14pairINS_6RefPtrINS4_12SharedBufferENS_12RawPtrTraitsISD_EENS_21DefaultRefDerefTraitsISD_EEEENS_6StringEEELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEEEEEN3__0clINS2_27BackgroundFetchStoreManagerEEEDaPT_EUlvE_vJEED0Ev(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1109668;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

unsigned int *_ZN3WTF6Detail15CallableWrapperIZZN6WebKit24BackgroundFetchStoreImpl25initializeFetchesInternalERKN7WebCore12ClientOriginEONS_17CompletionHandlerIFvONS_6VectorINSt3__14pairINS_6RefPtrINS4_12SharedBufferENS_12RawPtrTraitsISD_EENS_21DefaultRefDerefTraitsISD_EEEENS_6StringEEELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEEEEEN3__0clINS2_27BackgroundFetchStoreManagerEEEDaPT_EUlvE_vJEE4callEv(uint64_t a1)
{
  v4[0] = 0;
  v4[1] = 0;
  v1 = *(a1 + 8);
  *(a1 + 8) = 0;
  (*(*v1 + 16))(v1, v4);
  (*(*v1 + 8))(v1);
  return WTF::Vector<std::pair<WTF::RefPtr<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>,WTF::String>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v4, v2);
}

void *_ZN3WTF6Detail15CallableWrapperIZZN6WebKit24BackgroundFetchStoreImpl25initializeFetchesInternalERKN7WebCore12ClientOriginEONS_17CompletionHandlerIFvONS_6VectorINSt3__14pairINS_6RefPtrINS4_12SharedBufferENS_12RawPtrTraitsISD_EENS_21DefaultRefDerefTraitsISD_EEEENS_6StringEEELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEEEEEN3__0clINS2_27BackgroundFetchStoreManagerEEEDaPT_EUlOSW_E_vJSO_EED1Ev(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F1109690;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZZN6WebKit24BackgroundFetchStoreImpl25initializeFetchesInternalERKN7WebCore12ClientOriginEONS_17CompletionHandlerIFvONS_6VectorINSt3__14pairINS_6RefPtrINS4_12SharedBufferENS_12RawPtrTraitsISD_EENS_21DefaultRefDerefTraitsISD_EEEENS_6StringEEELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEEEEEN3__0clINS2_27BackgroundFetchStoreManagerEEEDaPT_EUlOSW_E_vJSO_EED0Ev(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1109690;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

unsigned int *_ZN3WTF6Detail15CallableWrapperIZZN6WebKit24BackgroundFetchStoreImpl25initializeFetchesInternalERKN7WebCore12ClientOriginEONS_17CompletionHandlerIFvONS_6VectorINSt3__14pairINS_6RefPtrINS4_12SharedBufferENS_12RawPtrTraitsISD_EENS_21DefaultRefDerefTraitsISD_EEEENS_6StringEEELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEEEEEN3__0clINS2_27BackgroundFetchStoreManagerEEEDaPT_EUlOSW_E_vJSO_EE4callESO_(uint64_t a1, __n128 *a2, __n128 a3)
{
  a3.n128_u64[0] = 0;
  v3 = a2->n128_u64[0];
  v4 = a2->n128_i64[1];
  v10 = a3;
  *a2 = a3;
  v5 = *(a1 + 8);
  *(a1 + 8) = 0;
  v6 = WTF::fastMalloc(0x20);
  *v6 = &unk_1F11096B8;
  v11 = v10;
  v6[1] = v3;
  v6[2] = v4;
  v6[3] = v5;
  v13 = v6;
  WTF::callOnMainRunLoop();
  v8 = v13;
  v13 = 0;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  v12 = 0;
  return WTF::Vector<std::pair<WTF::RefPtr<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>,WTF::String>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v11, v7);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZZZN6WebKit24BackgroundFetchStoreImpl25initializeFetchesInternalERKN7WebCore12ClientOriginEONS_17CompletionHandlerIFvONS_6VectorINSt3__14pairINS_6RefPtrINS4_12SharedBufferENS_12RawPtrTraitsISD_EENS_21DefaultRefDerefTraitsISD_EEEENS_6StringEEELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEEEEEN3__0clINS2_27BackgroundFetchStoreManagerEEEDaPT_ENUlOSW_E_clISN_EESV_SY_EUlvE_vJEED1Ev(uint64_t a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F11096B8;
  v3 = *(a1 + 24);
  *(a1 + 24) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  WTF::Vector<std::pair<WTF::RefPtr<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>,WTF::String>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector((a1 + 8), a2);
  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZZZN6WebKit24BackgroundFetchStoreImpl25initializeFetchesInternalERKN7WebCore12ClientOriginEONS_17CompletionHandlerIFvONS_6VectorINSt3__14pairINS_6RefPtrINS4_12SharedBufferENS_12RawPtrTraitsISD_EENS_21DefaultRefDerefTraitsISD_EEEENS_6StringEEELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEEEEEN3__0clINS2_27BackgroundFetchStoreManagerEEEDaPT_ENUlOSW_E_clISN_EESV_SY_EUlvE_vJEED0Ev(uint64_t a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F11096B8;
  v3 = *(a1 + 24);
  *(a1 + 24) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  WTF::Vector<std::pair<WTF::RefPtr<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>,WTF::String>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector((a1 + 8), a2);

  return WTF::fastFree(a1, v4);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZZZN6WebKit24BackgroundFetchStoreImpl25initializeFetchesInternalERKN7WebCore12ClientOriginEONS_17CompletionHandlerIFvONS_6VectorINSt3__14pairINS_6RefPtrINS4_12SharedBufferENS_12RawPtrTraitsISD_EENS_21DefaultRefDerefTraitsISD_EEEENS_6StringEEELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEEEEEN3__0clINS2_27BackgroundFetchStoreManagerEEEDaPT_ENUlOSW_E_clISN_EESV_SY_EUlvE_vJEE4callEv(uint64_t a1)
{
  v1 = *(a1 + 24);
  *(a1 + 24) = 0;
  (*(*v1 + 16))(v1, a1 + 8);
  v2 = *(*v1 + 8);

  return v2(v1);
}

WTF::StringImpl *WTF::KeyValuePairHashTraits<WTF::HashTraits<std::pair<WTF::String,WTF::String>>,WTF::HashTraits<WTF::String>>::customDeleteBucket(WTF::StringImpl **a1, WTF::StringImpl *a2)
{
  v3 = a1[1];
  a1[1] = 0;
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

  *a1 = -1;
  result = a1[2];
  a1[2] = 0;
  if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {

    return WTF::StringImpl::destroy(result, a2);
  }

  return result;
}

void WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WebKit::BackgroundFetchStoreImpl::FetchInformation>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WebKit::BackgroundFetchStoreImpl::FetchInformation>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WebKit::BackgroundFetchStoreImpl::FetchInformation,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WebKit::BackgroundFetchStoreImpl::FetchInformation>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::remove(uint64_t *a1, WTF::StringImpl **a2)
{
  v4 = *a2;
  *a2 = -1;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  WebKit::BackgroundFetchStoreImpl::FetchInformation::~FetchInformation((a2 + 1), a2);
  v5 = *a1;
  v6 = vadd_s32(*(*a1 - 16), 0xFFFFFFFF00000001);
  *(v5 - 16) = v6;
  v7 = *(v5 - 4);
  if (6 * v6.i32[1] < v7 && v7 >= 9)
  {

    WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WebKit::BackgroundFetchStoreImpl::FetchInformation>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WebKit::BackgroundFetchStoreImpl::FetchInformation>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WebKit::BackgroundFetchStoreImpl::FetchInformation,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WebKit::BackgroundFetchStoreImpl::FetchInformation>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::rehash(a1, v7 >> 1);
  }
}

uint64_t WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WebKit::BackgroundFetchStoreImpl::FetchInformation>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WebKit::BackgroundFetchStoreImpl::FetchInformation>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WebKit::BackgroundFetchStoreImpl::FetchInformation,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WebKit::BackgroundFetchStoreImpl::FetchInformation>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WTF::String,WebKit::BackgroundFetchStoreImpl::FetchInformation,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WebKit::BackgroundFetchStoreImpl::FetchInformation>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::String>>,(WTF::ShouldValidateKey)1,WTF::String>(uint64_t *a1, const WTF::StringImpl **a2, const WTF::StringImpl *a3)
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
    JUMPOUT(0x19DDB5A24);
  }

  v7 = *(v3 - 8);
  v8 = *(v6 + 4);
  v9 = v8 < 0x100 ? WTF::StringImpl::hashSlowCase(v6) : v8 >> 8;
  for (i = 0; ; v9 = ++i + v11)
  {
    v11 = v9 & v7;
    v12 = (v3 + 88 * (v9 & v7));
    v13 = *v12;
    if (*v12 == -1)
    {
      continue;
    }

    if (!v13)
    {
      break;
    }

    if (WTF::equal(v13, *a2, a3))
    {
      return v12;
    }
  }

  if (!*a1)
  {
    return 0;
  }

  return *a1 + 88 * *(*a1 - 4);
}

void *WTF::Detail::CallableWrapper<WebKit::BackgroundFetchStoreImpl::clearFetch(WebCore::ServiceWorkerRegistrationKey const&,WTF::String const&,WTF::CompletionHandler<void ()(void)> &&)::$_0,void>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F11096E0;
  v3 = a1[3];
  a1[3] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = a1[2];
  a1[2] = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  v5 = a1[1];
  a1[1] = 0;
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

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::BackgroundFetchStoreImpl::clearFetch(WebCore::ServiceWorkerRegistrationKey const&,WTF::String const&,WTF::CompletionHandler<void ()(void)> &&)::$_0,void>::~CallableWrapper(WTF *this, WTF::StringImpl *a2)
{
  *this = &unk_1F11096E0;
  v3 = *(this + 3);
  *(this + 3) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 2);
  *(this + 2) = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  v5 = *(this + 1);
  *(this + 1) = 0;
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

  return WTF::fastFree(this, a2);
}

atomic_ullong *WTF::Detail::CallableWrapper<WebKit::BackgroundFetchStoreImpl::clearFetch(WebCore::ServiceWorkerRegistrationKey const&,WTF::String const&,WTF::CompletionHandler<void ()(void)> &&)::$_0,void>::call(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(v2 + 32);
  if (v3)
  {
    WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::GPUConnectionToWebProcess>(v3, *(v2 + 24), &v8);
    if (v8)
    {
      v7 = *(v8 + 296);
      if (v7)
      {
        v9[0] = v8 + 24;
        v9[1] = a1 + 16;
        v10 = 1;
        IPC::Connection::send<Messages::NetworkProcessProxy::NotifyBackgroundFetchChange>(v7, v9, 0, 0, 0);
      }
    }
  }

  else
  {
    v8 = 0;
  }

  v4 = *(a1 + 24);
  *(a1 + 24) = 0;
  (*(*v4 + 16))(v4);
  result = (*(*v4 + 8))(v4);
  v6 = v8;
  v8 = 0;
  if (v6)
  {
    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref((v6 + 8));
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::BackgroundFetchStoreImpl::clearFetchInternal(WebCore::ClientOrigin const&,WTF::String const&,WTF::CompletionHandler<void ()(void)> &&)::$_0,void,WebKit::BackgroundFetchStoreManager *>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F1109708;
  v3 = a1[2];
  a1[2] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = a1[1];
  a1[1] = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::BackgroundFetchStoreImpl::clearFetchInternal(WebCore::ClientOrigin const&,WTF::String const&,WTF::CompletionHandler<void ()(void)> &&)::$_0,void,WebKit::BackgroundFetchStoreManager *>::~CallableWrapper(WTF *this, WTF::StringImpl *a2)
{
  *this = &unk_1F1109708;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 1);
  *(this + 1) = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::BackgroundFetchStoreImpl::clearFetchInternal(WebCore::ClientOrigin const&,WTF::String const&,WTF::CompletionHandler<void ()(void)> &&)::$_0,void,WebKit::BackgroundFetchStoreManager *>::call(uint64_t a1, void *a2)
{
  if (a2)
  {
    v4 = *(a1 + 16);
    *(a1 + 16) = 0;
    v5 = WTF::fastMalloc(0x10);
    *v5 = &unk_1F1109730;
    v5[1] = v4;
    v7 = v5;
    WebKit::BackgroundFetchStoreManager::clearFetch(a2, (a1 + 8), &v7);
  }

  else
  {
    std::make_unique[abi:sn200100]<WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(void)>,void>,WTF::CompletionHandler<void ()(void)>,0>((a1 + 16), &v7);
    WTF::callOnMainRunLoop();
  }

  result = v7;
  v7 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZZN6WebKit24BackgroundFetchStoreImpl18clearFetchInternalERKN7WebCore12ClientOriginERKNS_6StringEONS_17CompletionHandlerIFvvEEEEN3__0clINS2_27BackgroundFetchStoreManagerEEEDaPT_EUlvE_vJEED1Ev(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F1109730;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZZN6WebKit24BackgroundFetchStoreImpl18clearFetchInternalERKN7WebCore12ClientOriginERKNS_6StringEONS_17CompletionHandlerIFvvEEEEN3__0clINS2_27BackgroundFetchStoreManagerEEEDaPT_EUlvE_vJEED0Ev(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1109730;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZZN6WebKit24BackgroundFetchStoreImpl18clearFetchInternalERKN7WebCore12ClientOriginERKNS_6StringEONS_17CompletionHandlerIFvvEEEEN3__0clINS2_27BackgroundFetchStoreManagerEEEDaPT_EUlvE_vJEE4callEv(uint64_t a1)
{
  std::make_unique[abi:sn200100]<WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(void)>,void>,WTF::CompletionHandler<void ()(void)>,0>((a1 + 8), &v2);
  WTF::callOnMainRunLoop();
  result = v2;
  v2 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::BackgroundFetchStoreImpl::clearAllFetches(WebCore::ServiceWorkerRegistrationKey const&,WTF::CompletionHandler<void ()(void)> &&)::$_1,void>::~CallableWrapper(void *a1, void *a2)
{
  *a1 = &unk_1F1109758;
  v3 = a1[4];
  a1[4] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector((a1 + 2), a2);
  v4 = a1[1];
  a1[1] = 0;
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

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::BackgroundFetchStoreImpl::clearAllFetches(WebCore::ServiceWorkerRegistrationKey const&,WTF::CompletionHandler<void ()(void)> &&)::$_1,void>::~CallableWrapper(WTF *a1, void *a2)
{
  *a1 = &unk_1F1109758;
  v3 = *(a1 + 4);
  *(a1 + 4) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(a1 + 16, a2);
  v5 = *(a1 + 1);
  *(a1 + 1) = 0;
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

  return WTF::fastFree(a1, v4);
}

atomic_ullong *WTF::Detail::CallableWrapper<WebKit::BackgroundFetchStoreImpl::clearAllFetches(WebCore::ServiceWorkerRegistrationKey const&,WTF::CompletionHandler<void ()(void)> &&)::$_1,void>::call(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(v2 + 32);
  if (v3)
  {
    WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::GPUConnectionToWebProcess>(v3, *(v2 + 24), &v11);
    if (v11)
    {
      v7 = *(a1 + 28);
      if (v7)
      {
        v8 = *(a1 + 16);
        v9 = 8 * v7;
        do
        {
          v10 = *(v11 + 296);
          if (v10)
          {
            v12[0] = v11 + 24;
            v12[1] = v8;
            v13 = 1;
            IPC::Connection::send<Messages::NetworkProcessProxy::NotifyBackgroundFetchChange>(v10, v12, 0, 0, 0);
          }

          v8 += 8;
          v9 -= 8;
        }

        while (v9);
      }
    }
  }

  else
  {
    v11 = 0;
  }

  v4 = *(a1 + 32);
  *(a1 + 32) = 0;
  (*(*v4 + 16))(v4);
  result = (*(*v4 + 8))(v4);
  v6 = v11;
  v11 = 0;
  if (v6)
  {
    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref((v6 + 8));
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::BackgroundFetchStoreImpl::clearAllFetchesInternal(WebCore::ClientOrigin const&,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,WTF::CompletionHandler<void ()(void)> &&)::$_0,void,WebKit::BackgroundFetchStoreManager *>::~CallableWrapper(void *a1, void *a2)
{
  *a1 = &unk_1F1109780;
  v3 = a1[3];
  a1[3] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector((a1 + 1), a2);
  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::BackgroundFetchStoreImpl::clearAllFetchesInternal(WebCore::ClientOrigin const&,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,WTF::CompletionHandler<void ()(void)> &&)::$_0,void,WebKit::BackgroundFetchStoreManager *>::~CallableWrapper(WTF *a1, void *a2)
{
  *a1 = &unk_1F1109780;
  v3 = *(a1 + 3);
  *(a1 + 3) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(a1 + 8, a2);

  return WTF::fastFree(a1, v4);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::BackgroundFetchStoreImpl::clearAllFetchesInternal(WebCore::ClientOrigin const&,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,WTF::CompletionHandler<void ()(void)> &&)::$_0,void,WebKit::BackgroundFetchStoreManager *>::call(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v4 = *(a1 + 24);
    *(a1 + 24) = 0;
    v5 = WTF::fastMalloc(0x10);
    *v5 = &unk_1F11097A8;
    v5[1] = v4;
    v7 = v5;
    WebKit::BackgroundFetchStoreManager::clearAllFetches(a2, a1 + 8, &v7);
  }

  else
  {
    std::make_unique[abi:sn200100]<WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(void)>,void>,WTF::CompletionHandler<void ()(void)>,0>((a1 + 24), &v7);
    WTF::callOnMainRunLoop();
  }

  result = v7;
  v7 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZZN6WebKit24BackgroundFetchStoreImpl23clearAllFetchesInternalERKN7WebCore12ClientOriginERKNS_6VectorINS_6StringELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEONS_17CompletionHandlerIFvvEEEEN3__0clINS2_27BackgroundFetchStoreManagerEEEDaPT_EUlvE_vJEED1Ev(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F11097A8;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZZN6WebKit24BackgroundFetchStoreImpl23clearAllFetchesInternalERKN7WebCore12ClientOriginERKNS_6VectorINS_6StringELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEONS_17CompletionHandlerIFvvEEEEN3__0clINS2_27BackgroundFetchStoreManagerEEEDaPT_EUlvE_vJEED0Ev(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F11097A8;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZZN6WebKit24BackgroundFetchStoreImpl23clearAllFetchesInternalERKN7WebCore12ClientOriginERKNS_6VectorINS_6StringELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEONS_17CompletionHandlerIFvvEEEEN3__0clINS2_27BackgroundFetchStoreManagerEEEDaPT_EUlvE_vJEE4callEv(uint64_t a1)
{
  std::make_unique[abi:sn200100]<WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(void)>,void>,WTF::CompletionHandler<void ()(void)>,0>((a1 + 8), &v2);
  WTF::callOnMainRunLoop();
  result = v2;
  v2 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::BackgroundFetchStoreImpl::storeFetch(WebCore::ServiceWorkerRegistrationKey const&,WTF::String const&,unsigned long long,unsigned long long,std::optional<unsigned long>,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WTF::CompletionHandler<void ()(WebCore::BackgroundFetchStore::StoreResult)> &&)::$_0,void,WebCore::BackgroundFetchStore>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F11097D0;
  WebKit::BackgroundFetchStoreImpl::storeFetch(WebCore::ServiceWorkerRegistrationKey const&,WTF::String const&,unsigned long long,unsigned long long,std::optional<unsigned long>,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WTF::CompletionHandler<void ()(WebCore::BackgroundFetchStore::StoreResult)> &&)::$_0::~$_0((a1 + 1), a2);
  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::BackgroundFetchStoreImpl::storeFetch(WebCore::ServiceWorkerRegistrationKey const&,WTF::String const&,unsigned long long,unsigned long long,std::optional<unsigned long>,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WTF::CompletionHandler<void ()(WebCore::BackgroundFetchStore::StoreResult)> &&)::$_0,void,WebCore::BackgroundFetchStore>::~CallableWrapper(WTF *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F11097D0;
  WebKit::BackgroundFetchStoreImpl::storeFetch(WebCore::ServiceWorkerRegistrationKey const&,WTF::String const&,unsigned long long,unsigned long long,std::optional<unsigned long>,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WTF::CompletionHandler<void ()(WebCore::BackgroundFetchStore::StoreResult)> &&)::$_0::~$_0(a1 + 8, a2);

  return WTF::fastFree(a1, v3);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::BackgroundFetchStoreImpl::storeFetch(WebCore::ServiceWorkerRegistrationKey const&,WTF::String const&,unsigned long long,unsigned long long,std::optional<unsigned long>,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WTF::CompletionHandler<void ()(WebCore::BackgroundFetchStore::StoreResult)> &&)::$_0,void,WebCore::BackgroundFetchStore>::call(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    v4 = *(a1 + 8);
    v5 = *(v4 + 32);
    if (v5)
    {
      WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::GPUConnectionToWebProcess>(v5, *(v4 + 24), &v11);
      if (v11)
      {
        v9 = *(v11 + 296);
        if (v9)
        {
          if (*(a1 + 168))
          {
            v10 = 0;
          }

          else
          {
            v10 = 2;
          }

          v12[0] = v11 + 24;
          v12[1] = a1 + 160;
          v13 = v10;
          IPC::Connection::send<Messages::NetworkProcessProxy::NotifyBackgroundFetchChange>(v9, v12, 0, 0, 0);
        }
      }
    }

    else
    {
      v11 = 0;
    }

    WebKit::BackgroundFetchStoreImpl::registerFetch(*(a1 + 8), a1 + 16, (a1 + 80), (a1 + 152), (a1 + 160));
    v6 = v11;
    v11 = 0;
    if (v6)
    {
      WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref((v6 + 8));
    }
  }

  v7 = *(a1 + 176);
  *(a1 + 176) = 0;
  (*(*v7 + 16))(v7, a2);
  return (*(*v7 + 8))(v7);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::BackgroundFetchStoreImpl::storeFetchInternal(WebCore::ClientOrigin const&,WTF::String const&,unsigned long long,unsigned long long,std::optional<unsigned long>,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WTF::CompletionHandler<void ()(WebCore::BackgroundFetchStore::StoreResult)> &&)::$_0,void,WebKit::BackgroundFetchStoreManager *>::~CallableWrapper(uint64_t a1, void *a2)
{
  *a1 = &unk_1F11097F8;
  v3 = *(a1 + 64);
  *(a1 + 64) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(a1 + 48);
  if (v4)
  {
    *(a1 + 48) = 0;
    *(a1 + 56) = 0;
    WTF::fastFree(v4, a2);
  }

  v5 = *(a1 + 8);
  *(a1 + 8) = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::BackgroundFetchStoreImpl::storeFetchInternal(WebCore::ClientOrigin const&,WTF::String const&,unsigned long long,unsigned long long,std::optional<unsigned long>,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WTF::CompletionHandler<void ()(WebCore::BackgroundFetchStore::StoreResult)> &&)::$_0,void,WebKit::BackgroundFetchStoreManager *>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F11097F8;
  v3 = *(this + 8);
  *(this + 8) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 6);
  if (v4)
  {
    *(this + 6) = 0;
    *(this + 14) = 0;
    WTF::fastFree(v4, a2);
  }

  v5 = *(this + 1);
  *(this + 1) = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, a2);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::BackgroundFetchStoreImpl::storeFetchInternal(WebCore::ClientOrigin const&,WTF::String const&,unsigned long long,unsigned long long,std::optional<unsigned long>,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WTF::CompletionHandler<void ()(WebCore::BackgroundFetchStore::StoreResult)> &&)::$_0,void,WebKit::BackgroundFetchStoreManager *>::call(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v4 = *(a1 + 16);
    v5 = *(a1 + 24);
    v6 = *(a1 + 32);
    v7 = *(a1 + 40);
    v8 = *(a1 + 64);
    *(a1 + 64) = 0;
    v9 = WTF::fastMalloc(0x10);
    *v9 = &unk_1F1109848;
    v9[1] = v8;
    v13 = v9;
    WebKit::BackgroundFetchStoreManager::storeFetch(a2, (a1 + 8), v4, v5, v6, v7, (a1 + 48), &v13);
    result = v13;
    v13 = 0;
    if (result)
    {
      return (*(*result + 8))(result);
    }
  }

  else
  {
    v11 = *(a1 + 64);
    *(a1 + 64) = 0;
    v12 = WTF::fastMalloc(0x10);
    *v12 = &unk_1F1109820;
    v12[1] = v11;
    v13 = v12;
    WTF::callOnMainRunLoop();
    result = v13;
    v13 = 0;
    if (result)
    {
      return (*(*result + 8))(result);
    }
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZZN6WebKit24BackgroundFetchStoreImpl18storeFetchInternalERKN7WebCore12ClientOriginERKNS_6StringEyyNSt3__18optionalImEEONS_6VectorIhLm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEONS_17CompletionHandlerIFvNS4_20BackgroundFetchStore11StoreResultEEEEEN3__0clINS2_27BackgroundFetchStoreManagerEEEDaPT_EUlvE_vJEED1Ev(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F1109820;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZZN6WebKit24BackgroundFetchStoreImpl18storeFetchInternalERKN7WebCore12ClientOriginERKNS_6StringEyyNSt3__18optionalImEEONS_6VectorIhLm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEONS_17CompletionHandlerIFvNS4_20BackgroundFetchStore11StoreResultEEEEEN3__0clINS2_27BackgroundFetchStoreManagerEEEDaPT_EUlvE_vJEED0Ev(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1109820;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZZN6WebKit24BackgroundFetchStoreImpl18storeFetchInternalERKN7WebCore12ClientOriginERKNS_6StringEyyNSt3__18optionalImEEONS_6VectorIhLm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEONS_17CompletionHandlerIFvNS4_20BackgroundFetchStore11StoreResultEEEEEN3__0clINS2_27BackgroundFetchStoreManagerEEEDaPT_EUlvE_vJEE4callEv(uint64_t a1)
{
  v1 = *(a1 + 8);
  *(a1 + 8) = 0;
  (*(*v1 + 16))(v1, 2);
  v2 = *(*v1 + 8);

  return v2(v1);
}

void *_ZN3WTF6Detail15CallableWrapperIZZN6WebKit24BackgroundFetchStoreImpl18storeFetchInternalERKN7WebCore12ClientOriginERKNS_6StringEyyNSt3__18optionalImEEONS_6VectorIhLm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEONS_17CompletionHandlerIFvNS4_20BackgroundFetchStore11StoreResultEEEEEN3__0clINS2_27BackgroundFetchStoreManagerEEEDaPT_EUlST_E_vJSL_EED1Ev(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F1109848;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZZN6WebKit24BackgroundFetchStoreImpl18storeFetchInternalERKN7WebCore12ClientOriginERKNS_6StringEyyNSt3__18optionalImEEONS_6VectorIhLm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEONS_17CompletionHandlerIFvNS4_20BackgroundFetchStore11StoreResultEEEEEN3__0clINS2_27BackgroundFetchStoreManagerEEEDaPT_EUlST_E_vJSL_EED0Ev(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1109848;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZZN6WebKit24BackgroundFetchStoreImpl18storeFetchInternalERKN7WebCore12ClientOriginERKNS_6StringEyyNSt3__18optionalImEEONS_6VectorIhLm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEONS_17CompletionHandlerIFvNS4_20BackgroundFetchStore11StoreResultEEEEEN3__0clINS2_27BackgroundFetchStoreManagerEEEDaPT_EUlST_E_vJSL_EE4callESL_(uint64_t a1, char a2)
{
  v3 = *(a1 + 8);
  *(a1 + 8) = 0;
  v4 = WTF::fastMalloc(0x18);
  *v4 = &unk_1F1109870;
  *(v4 + 8) = a2;
  *(v4 + 16) = v3;
  v6 = v4;
  WTF::callOnMainRunLoop();
  result = v6;
  if (v6)
  {
    return (*(*v6 + 8))(v6);
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZZZN6WebKit24BackgroundFetchStoreImpl18storeFetchInternalERKN7WebCore12ClientOriginERKNS_6StringEyyNSt3__18optionalImEEONS_6VectorIhLm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEONS_17CompletionHandlerIFvNS4_20BackgroundFetchStore11StoreResultEEEEEN3__0clINS2_27BackgroundFetchStoreManagerEEEDaPT_ENUlST_E_clISL_EESS_ST_EUlvE_vJEED1Ev(void *a1)
{
  *a1 = &unk_1F1109870;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZZZN6WebKit24BackgroundFetchStoreImpl18storeFetchInternalERKN7WebCore12ClientOriginERKNS_6StringEyyNSt3__18optionalImEEONS_6VectorIhLm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEONS_17CompletionHandlerIFvNS4_20BackgroundFetchStore11StoreResultEEEEEN3__0clINS2_27BackgroundFetchStoreManagerEEEDaPT_ENUlST_E_clISL_EESS_ST_EUlvE_vJEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F1109870;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZZZN6WebKit24BackgroundFetchStoreImpl18storeFetchInternalERKN7WebCore12ClientOriginERKNS_6StringEyyNSt3__18optionalImEEONS_6VectorIhLm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEONS_17CompletionHandlerIFvNS4_20BackgroundFetchStore11StoreResultEEEEEN3__0clINS2_27BackgroundFetchStoreManagerEEEDaPT_ENUlST_E_clISL_EESS_ST_EUlvE_vJEE4callEv(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  (*(*v2 + 16))(v2, v1);
  v3 = *(*v2 + 8);

  return v3(v2);
}

void *WTF::Detail::CallableWrapper<WebKit::BackgroundFetchStoreImpl::storeFetchResponseBodyChunk(WebCore::ServiceWorkerRegistrationKey const&,WTF::String const&,unsigned long,WebCore::SharedBuffer const&,WTF::CompletionHandler<void ()(WebCore::BackgroundFetchStore::StoreResult)> &&)::$_0,void,WebCore::BackgroundFetchStore::StoreResult>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F1109898;
  v3 = a1[3];
  a1[3] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = a1[2];
  a1[2] = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  v5 = a1[1];
  a1[1] = 0;
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

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::BackgroundFetchStoreImpl::storeFetchResponseBodyChunk(WebCore::ServiceWorkerRegistrationKey const&,WTF::String const&,unsigned long,WebCore::SharedBuffer const&,WTF::CompletionHandler<void ()(WebCore::BackgroundFetchStore::StoreResult)> &&)::$_0,void,WebCore::BackgroundFetchStore::StoreResult>::~CallableWrapper(WTF *this, WTF::StringImpl *a2)
{
  *this = &unk_1F1109898;
  v3 = *(this + 3);
  *(this + 3) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 2);
  *(this + 2) = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  v5 = *(this + 1);
  *(this + 1) = 0;
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

  return WTF::fastFree(this, a2);
}

atomic_ullong *WTF::Detail::CallableWrapper<WebKit::BackgroundFetchStoreImpl::storeFetchResponseBodyChunk(WebCore::ServiceWorkerRegistrationKey const&,WTF::String const&,unsigned long,WebCore::SharedBuffer const&,WTF::CompletionHandler<void ()(WebCore::BackgroundFetchStore::StoreResult)> &&)::$_0,void,WebCore::BackgroundFetchStore::StoreResult>::call(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(v4 + 32);
  if (v5)
  {
    WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::GPUConnectionToWebProcess>(v5, *(v4 + 24), &v10);
    if (a2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v10 = 0;
    if (a2)
    {
      goto LABEL_3;
    }
  }

  if (v10)
  {
    v9 = *(v10 + 296);
    if (v9)
    {
      v11[0] = v10 + 24;
      v11[1] = a1 + 16;
      v12 = 2;
      IPC::Connection::send<Messages::NetworkProcessProxy::NotifyBackgroundFetchChange>(v9, v11, 0, 0, 0);
    }
  }

LABEL_3:
  v6 = *(a1 + 24);
  *(a1 + 24) = 0;
  (*(*v6 + 16))(v6, a2);
  result = (*(*v6 + 8))(v6);
  v8 = v10;
  v10 = 0;
  if (v8)
  {
    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref((v8 + 8));
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::BackgroundFetchStoreImpl::storeFetchResponseBodyChunkInternal(WebCore::ClientOrigin const&,WTF::String const&,unsigned long,WebCore::SharedBuffer const&,WTF::CompletionHandler<void ()(WebCore::BackgroundFetchStore::StoreResult)> &&)::$_0,void,WebKit::BackgroundFetchStoreManager *>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F11098C0;
  v3 = a1[4];
  a1[4] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = a1[3];
  a1[3] = 0;
  if (v4 && atomic_fetch_add(v4 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v4 + 2);
    (*(*v4 + 8))(v4);
  }

  v5 = a1[1];
  a1[1] = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::BackgroundFetchStoreImpl::storeFetchResponseBodyChunkInternal(WebCore::ClientOrigin const&,WTF::String const&,unsigned long,WebCore::SharedBuffer const&,WTF::CompletionHandler<void ()(WebCore::BackgroundFetchStore::StoreResult)> &&)::$_0,void,WebKit::BackgroundFetchStoreManager *>::~CallableWrapper(WTF *this, WTF::StringImpl *a2)
{
  *this = &unk_1F11098C0;
  v3 = *(this + 4);
  *(this + 4) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 3);
  *(this + 3) = 0;
  if (v4 && atomic_fetch_add(v4 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v4 + 2);
    (*(*v4 + 8))(v4);
  }

  v5 = *(this + 1);
  *(this + 1) = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, a2);
  }

  return WTF::fastFree(this, a2);
}