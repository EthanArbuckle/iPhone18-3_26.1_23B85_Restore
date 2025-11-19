uint64_t WTF::NativePromise<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::PlatformMediaError,0u>::takeResult@<X0>(atomic_uchar *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1;
  v4 = 0;
  v5 = (a1 + 48);
  atomic_compare_exchange_strong_explicit(a1 + 48, &v4, 1u, memory_order_acquire, memory_order_acquire);
  if (v4)
  {
    a1 = MEMORY[0x19EB01E30](a1 + 48);
  }

  if (v2[80] != 1)
  {
    mpark::throw_bad_variant_access(a1);
  }

  result = mpark::detail::move_assignment<mpark::detail::traits<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::PlatformMediaError>,(mpark::detail::Trait)1>::move_assignment(a2, (v2 + 56));
  v7 = 1;
  atomic_compare_exchange_strong_explicit(v2 + 48, &v7, 0, memory_order_release, memory_order_relaxed);
  if (v7 != 1)
  {

    return WTF::Lock::unlockSlow(v5);
  }

  return result;
}

uint64_t mpark::detail::move_assignment<mpark::detail::traits<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::PlatformMediaError>,(mpark::detail::Trait)1>::move_assignment(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 16) = -1;
  v3 = *(a2 + 16);
  if (v3 != 255)
  {
    if (*(a2 + 16))
    {
      *a1 = *a2;
    }

    else
    {
      *a1 = 0;
      *(a1 + 8) = 0;
      WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt(a1, a2);
      LOBYTE(v3) = *(a2 + 16);
    }

    *(a1 + 16) = v3;
  }

  return a1;
}

void *WTF::Detail::CallableWrapper<WTF::NativePromise<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::PlatformMediaError,0u>::ThenCallbackBase::dispatch(WTF::NativePromise<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::PlatformMediaError,0u>&,WTF::Locker<WTF::Lock,void> &)::{lambda(void)#1},void>::~CallableWrapper(void *a1)
{
  *a1 = &unk_1F10FDFF8;
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

uint64_t WTF::Detail::CallableWrapper<WTF::NativePromise<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::PlatformMediaError,0u>::ThenCallbackBase::dispatch(WTF::NativePromise<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::PlatformMediaError,0u>&,WTF::Locker<WTF::Lock,void> &)::{lambda(void)#1},void>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F10FDFF8;
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

unsigned __int8 *WTF::NativePromise<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::PlatformMediaError,0u>::ThenCallbackBase::dispatch(WTF::NativePromise<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::PlatformMediaError,0u>&,WTF::Locker<WTF::Lock,void> &)::{lambda(void)#1}::operator()(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  if (*(*a1 + 56) == 1)
  {
    v12[0] = *a1;
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
      return WTF::Logger::log<char [32],WTF::NativePromise<void,WebCore::PlatformMediaError,0u>,char [21],void const*,char [11],WTF::Logger::LogSiteIdentifier,char [2]>(result, 4u, "ThenCallback disconnected from ", v1, " aborting [callback:", v12, " callSite:", (v2 + 24), "]");
    }
  }

  else
  {
    hasRunnable = WTF::NativePromise<WTF::MediaTime,WebCore::PlatformMediaError,0u>::hasRunnable(a1[1]);
    v7 = *a1;
    v8 = a1[1];
    if (hasRunnable)
    {
      WTF::NativePromise<WTF::MediaTime,WebCore::PlatformMediaError,0u>::takeResultRunnable(v8, &v11);
      (*(*v11 + 16))(v12);
      (*(*v7 + 24))(v7, v8, v12);
      if (!v13)
      {
        WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v12, v9);
      }

      v13 = -1;
      result = v11;
      v11 = 0;
      if (result)
      {
        return (*(*result + 8))(result);
      }
    }

    else
    {
      WTF::NativePromise<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::PlatformMediaError,0u>::takeResult(v8, v12);
      result = (*(*v7 + 24))(v7, v8, v12);
      if (!v13)
      {
        return WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v12, v10);
      }
    }
  }

  return result;
}

WTF *std::__hash_table<std::__hash_value_type<unsigned long long,WTF::Ref<WebCore::MediaDescription,WTF::RawPtrTraits<WebCore::MediaDescription>,WTF::DefaultRefDerefTraits<WebCore::MediaDescription>>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,WTF::Ref<WebCore::MediaDescription,WTF::RawPtrTraits<WebCore::MediaDescription>,WTF::DefaultRefDerefTraits<WebCore::MediaDescription>>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,WTF::Ref<WebCore::MediaDescription,WTF::RawPtrTraits<WebCore::MediaDescription>,WTF::DefaultRefDerefTraits<WebCore::MediaDescription>>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,WTF::FastAllocator<std::__hash_value_type<unsigned long long,WTF::Ref<WebCore::MediaDescription,WTF::RawPtrTraits<WebCore::MediaDescription>,WTF::DefaultRefDerefTraits<WebCore::MediaDescription>>>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<WebCore::MediaDescription&>>(WTF *result, unint64_t a2, void **a3, uint64_t *a4)
{
  v8 = result;
  v9 = *(result + 1);
  if (v9)
  {
    v10 = vcnt_s8(v9);
    v10.i16[0] = vaddlv_u8(v10);
    if (v10.u32[0] > 1uLL)
    {
      v4 = a2;
      if (v9 <= a2)
      {
        v4 = a2 % v9;
      }
    }

    else
    {
      v4 = (v9 - 1) & a2;
    }

    v11 = *(*result + 8 * v4);
    if (v11)
    {
      for (i = *v11; i; i = *i)
      {
        v13 = i[1];
        if (v13 == a2)
        {
          if (i[2] == a2)
          {
            return result;
          }
        }

        else
        {
          if (v10.u32[0] > 1uLL)
          {
            if (v13 >= v9)
            {
              v13 %= v9;
            }
          }

          else
          {
            v13 &= v9 - 1;
          }

          if (v13 != v4)
          {
            break;
          }
        }
      }
    }
  }

  result = WTF::fastMalloc(0x20);
  v15 = result;
  *result = 0;
  *(result + 1) = a2;
  v16 = *a4;
  *(result + 2) = **a3;
  atomic_fetch_add((v16 + 8), 1u);
  *(result + 3) = v16;
  v17 = (*(v8 + 3) + 1);
  v18 = *(v8 + 8);
  if (!v9 || (v18 * v9) < v17)
  {
    v19 = 1;
    if (v9 >= 3)
    {
      v19 = (v9 & (v9 - 1)) != 0;
    }

    v20 = v19 | (2 * v9);
    v21 = vcvtps_u32_f32(v17 / v18);
    if (v20 <= v21)
    {
      v22 = v21;
    }

    else
    {
      v22 = v20;
    }

    if (v22 == 1)
    {
      v22 = 2;
    }

    else if ((v22 & (v22 - 1)) != 0)
    {
      result = std::__next_prime(v22);
      v22 = result;
    }

    v9 = *(v8 + 1);
    if (v22 > v9)
    {
      goto LABEL_30;
    }

    if (v22 < v9)
    {
      result = vcvtps_u32_f32(*(v8 + 3) / *(v8 + 8));
      if (v9 < 3 || (v29 = vcnt_s8(v9), v29.i16[0] = vaddlv_u8(v29), v29.u32[0] > 1uLL))
      {
        result = std::__next_prime(result);
      }

      else
      {
        v30 = 1 << -__clz(result - 1);
        if (result >= 2)
        {
          result = v30;
        }
      }

      if (v22 <= result)
      {
        v22 = result;
      }

      if (v22 >= v9)
      {
        v9 = *(v8 + 1);
      }

      else
      {
        if (v22)
        {
LABEL_30:
          v24 = WTF::fastMalloc((8 * v22));
          result = *v8;
          *v8 = v24;
          if (result)
          {
            result = WTF::fastFree(result, v23);
          }

          v25 = 0;
          *(v8 + 1) = v22;
          do
          {
            *(*v8 + 8 * v25++) = 0;
          }

          while (v22 != v25);
          v26 = *(v8 + 2);
          if (v26)
          {
            v27 = v26[1];
            v28 = vcnt_s8(v22);
            v28.i16[0] = vaddlv_u8(v28);
            if (v28.u32[0] > 1uLL)
            {
              if (v27 >= v22)
              {
                v27 %= v22;
              }
            }

            else
            {
              v27 &= v22 - 1;
            }

            *(*v8 + 8 * v27) = v8 + 16;
            v31 = *v26;
            if (*v26)
            {
              do
              {
                v32 = v31[1];
                if (v28.u32[0] > 1uLL)
                {
                  if (v32 >= v22)
                  {
                    v32 %= v22;
                  }
                }

                else
                {
                  v32 &= v22 - 1;
                }

                if (v32 != v27)
                {
                  v33 = *v8;
                  if (!*(*v8 + 8 * v32))
                  {
                    *(v33 + v32) = v26;
                    goto LABEL_54;
                  }

                  *v26 = *v31;
                  *v31 = **(v33 + v32);
                  **(v33 + v32) = v31;
                  v31 = v26;
                }

                v32 = v27;
LABEL_54:
                v26 = v31;
                v31 = *v31;
                v27 = v32;
              }

              while (v31);
            }
          }

          v9 = v22;
          goto LABEL_58;
        }

        result = *v8;
        *v8 = 0;
        if (result)
        {
          result = WTF::fastFree(result, v14);
        }

        v9 = 0;
        *(v8 + 1) = 0;
      }
    }

LABEL_58:
    if ((v9 & (v9 - 1)) != 0)
    {
      if (v9 <= a2)
      {
        v4 = a2 % v9;
      }

      else
      {
        v4 = a2;
      }
    }

    else
    {
      v4 = (v9 - 1) & a2;
    }
  }

  v34 = *v8;
  v35 = *(*v8 + 8 * v4);
  if (v35)
  {
    *v15 = *v35;
LABEL_71:
    *v35 = v15;
    goto LABEL_72;
  }

  *v15 = *(v8 + 2);
  *(v8 + 2) = v15;
  *(v34 + v4) = v8 + 16;
  if (*v15)
  {
    v36 = *(*v15 + 8);
    if ((v9 & (v9 - 1)) != 0)
    {
      if (v36 >= v9)
      {
        v36 %= v9;
      }
    }

    else
    {
      v36 &= v9 - 1;
    }

    v35 = (*v8 + 8 * v36);
    goto LABEL_71;
  }

LABEL_72:
  ++*(v8 + 3);
  return result;
}

WebKit::MediaDescriptionInfo *WebKit::MediaDescriptionInfo::MediaDescriptionInfo(WebKit::MediaDescriptionInfo *this, const WebCore::MediaDescription *a2)
{
  v4 = *(a2 + 2);
  if (v4 && (*(v4 + 16) & 4) == 0)
  {
    WTF::String::String();
  }

  else
  {
    WTF::String::String();
  }

  *(this + 8) = (*(*a2 + 16))(a2);
  *(this + 9) = (*(*a2 + 24))(a2);
  *(this + 10) = (*(*a2 + 32))(a2);
  return this;
}

uint64_t WTF::HashMap<IPC::ObjectIdentifierReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,IPC::ThreadSafeObjectHeap<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebCore::VideoFrame,WTF::RawPtrTraits<WebCore::VideoFrame>,WTF::DefaultRefDerefTraits<WebCore::VideoFrame>>>::ReferenceState,WTF::DefaultHash<IPC::ObjectIdentifierReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<IPC::ObjectIdentifierReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<IPC::ThreadSafeObjectHeap<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebCore::VideoFrame,WTF::RawPtrTraits<WebCore::VideoFrame>,WTF::DefaultRefDerefTraits<WebCore::VideoFrame>>>::ReferenceState>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::ensure<IPC::ThreadSafeObjectHeap<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebCore::VideoFrame,WTF::RawPtrTraits<WebCore::VideoFrame>,WTF::DefaultRefDerefTraits<WebCore::VideoFrame>>>::add(IPC::ObjectIdentifierReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>> const&,WTF::RefPtr<WebCore::VideoFrame,WTF::RawPtrTraits<WebCore::VideoFrame>,WTF::DefaultRefDerefTraits<WebCore::VideoFrame>>)::{lambda(void)#1}>@<X0>(uint64_t *a1@<X0>, unint64_t *a2@<X1>, uint64_t **a3@<X2>, uint64_t a4@<X8>)
{
  if (*a2 == 0 || *a2 == -1)
  {
    __break(0xC471u);
    JUMPOUT(0x19DBE5E48);
  }

  v8 = *a1;
  if (*a1 || (WTF::HashTable<IPC::ObjectIdentifierReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePair<IPC::ObjectIdentifierReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,IPC::ThreadSafeObjectHeap<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebCore::VideoFrame,WTF::RawPtrTraits<WebCore::VideoFrame>,WTF::DefaultRefDerefTraits<WebCore::VideoFrame>>>::ReferenceState>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<IPC::ObjectIdentifierReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,IPC::ThreadSafeObjectHeap<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebCore::VideoFrame,WTF::RawPtrTraits<WebCore::VideoFrame>,WTF::DefaultRefDerefTraits<WebCore::VideoFrame>>>::ReferenceState>>,WTF::DefaultHash<IPC::ObjectIdentifierReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashMap<IPC::ObjectIdentifierReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,IPC::ThreadSafeObjectHeap<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebCore::VideoFrame,WTF::RawPtrTraits<WebCore::VideoFrame>,WTF::DefaultRefDerefTraits<WebCore::VideoFrame>>>::ReferenceState,WTF::DefaultHash<IPC::ObjectIdentifierReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<IPC::ObjectIdentifierReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<IPC::ThreadSafeObjectHeap<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebCore::VideoFrame,WTF::RawPtrTraits<WebCore::VideoFrame>,WTF::DefaultRefDerefTraits<WebCore::VideoFrame>>>::ReferenceState>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<IPC::ObjectIdentifierReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::expand(a1, 0), (v8 = *a1) != 0))
  {
    v9 = *(v8 - 8);
  }

  else
  {
    v9 = 0;
  }

  result = WTF::IdentityHashTranslator<WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>::hash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(*a2, a2[1]);
  v11 = result & v9;
  v12 = v8 + 56 * (result & v9);
  v13 = *v12;
  v14 = *(v12 + 8);
  if (*v12 != 0)
  {
    v15 = 0;
    v16 = 1;
    do
    {
      if (*a2 == v13 && a2[1] == v14)
      {
        v22 = *a1;
        if (*a1)
        {
          v23 = *(v22 - 4);
        }

        else
        {
          v23 = 0;
        }

        v25 = 0;
        v24 = v22 + 56 * v23;
        goto LABEL_33;
      }

      if (v13 == -1)
      {
        v15 = v12;
      }

      v11 = (v11 + v16) & v9;
      v12 = v8 + 56 * v11;
      v13 = *v12;
      v14 = *(v12 + 8);
      ++v16;
    }

    while (*v12 != 0);
    if (v15)
    {
      *(v15 + 48) = 0;
      *(v15 + 16) = 0u;
      *(v15 + 32) = 0u;
      *v15 = 0u;
      --*(*a1 - 16);
      v12 = v15;
    }
  }

  *v12 = *a2;
  *&v26 = 0;
  BYTE8(v26) = 0;
  v17 = **a3;
  **a3 = 0;
  v27 = v17;
  v28 = 1;
  *(v12 + 32) = 0;
  *(v12 + 16) = v26;
  result = std::__optional_storage_base<WTF::RefPtr<WebCore::VideoFrame,WTF::RawPtrTraits<WebCore::VideoFrame>,WTF::DefaultRefDerefTraits<WebCore::VideoFrame>>,false>::__assign_from[abi:sn200100]<std::__optional_move_assign_base<WTF::RefPtr<WebCore::VideoFrame,WTF::RawPtrTraits<WebCore::VideoFrame>,WTF::DefaultRefDerefTraits<WebCore::VideoFrame>>,false>>((v12 + 40), &v27);
  if (v28 == 1)
  {
    result = v27;
    v27 = 0;
    if (result)
    {
      if (atomic_fetch_add((result + 8), 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, (result + 8));
        result = (*(*result + 8))(result);
      }
    }
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
    if (v21 <= 2 * v20)
    {
LABEL_24:
      result = WTF::HashTable<IPC::ObjectIdentifierReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePair<IPC::ObjectIdentifierReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,IPC::ThreadSafeObjectHeap<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebCore::VideoFrame,WTF::RawPtrTraits<WebCore::VideoFrame>,WTF::DefaultRefDerefTraits<WebCore::VideoFrame>>>::ReferenceState>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<IPC::ObjectIdentifierReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,IPC::ThreadSafeObjectHeap<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebCore::VideoFrame,WTF::RawPtrTraits<WebCore::VideoFrame>,WTF::DefaultRefDerefTraits<WebCore::VideoFrame>>>::ReferenceState>>,WTF::DefaultHash<IPC::ObjectIdentifierReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashMap<IPC::ObjectIdentifierReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,IPC::ThreadSafeObjectHeap<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebCore::VideoFrame,WTF::RawPtrTraits<WebCore::VideoFrame>,WTF::DefaultRefDerefTraits<WebCore::VideoFrame>>>::ReferenceState,WTF::DefaultHash<IPC::ObjectIdentifierReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<IPC::ObjectIdentifierReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<IPC::ThreadSafeObjectHeap<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebCore::VideoFrame,WTF::RawPtrTraits<WebCore::VideoFrame>,WTF::DefaultRefDerefTraits<WebCore::VideoFrame>>>::ReferenceState>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<IPC::ObjectIdentifierReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::expand(a1, v12);
      v12 = result;
      v18 = *a1;
      if (*a1)
      {
        LODWORD(v21) = *(v18 - 4);
      }

      else
      {
        LODWORD(v21) = 0;
      }
    }
  }

  else if (3 * v21 <= 4 * v20)
  {
    goto LABEL_24;
  }

  v24 = v18 + 56 * v21;
  v25 = 1;
LABEL_33:
  *a4 = v12;
  *(a4 + 8) = v24;
  *(a4 + 16) = v25;
  return result;
}

uint64_t std::optional<WTF::RefPtr<WebCore::VideoFrame,WTF::RawPtrTraits<WebCore::VideoFrame>,WTF::DefaultRefDerefTraits<WebCore::VideoFrame>>>::operator=[abi:sn200100]<WTF::RefPtr<WebCore::VideoFrame,WTF::RawPtrTraits<WebCore::VideoFrame>,WTF::DefaultRefDerefTraits<WebCore::VideoFrame>>,void>(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  v4 = *a2;
  *a2 = 0;
  if (v3 == 1)
  {
    v5 = *a1;
    *a1 = v4;
    if (v5 && atomic_fetch_add(v5 + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v5 + 2);
      (*(*v5 + 8))(v5);
    }
  }

  else
  {
    *a1 = v4;
    *(a1 + 8) = 1;
  }

  return a1;
}

uint64_t WTF::HashTable<IPC::ObjectIdentifierReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePair<IPC::ObjectIdentifierReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,IPC::ThreadSafeObjectHeap<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebCore::VideoFrame,WTF::RawPtrTraits<WebCore::VideoFrame>,WTF::DefaultRefDerefTraits<WebCore::VideoFrame>>>::ReferenceState>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<IPC::ObjectIdentifierReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,IPC::ThreadSafeObjectHeap<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebCore::VideoFrame,WTF::RawPtrTraits<WebCore::VideoFrame>,WTF::DefaultRefDerefTraits<WebCore::VideoFrame>>>::ReferenceState>>,WTF::DefaultHash<IPC::ObjectIdentifierReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashMap<IPC::ObjectIdentifierReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,IPC::ThreadSafeObjectHeap<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebCore::VideoFrame,WTF::RawPtrTraits<WebCore::VideoFrame>,WTF::DefaultRefDerefTraits<WebCore::VideoFrame>>>::ReferenceState,WTF::DefaultHash<IPC::ObjectIdentifierReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<IPC::ObjectIdentifierReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<IPC::ThreadSafeObjectHeap<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebCore::VideoFrame,WTF::RawPtrTraits<WebCore::VideoFrame>,WTF::DefaultRefDerefTraits<WebCore::VideoFrame>>>::ReferenceState>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<IPC::ObjectIdentifierReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::expand(uint64_t *a1, uint64_t a2)
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

  return WTF::HashTable<IPC::ObjectIdentifierReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePair<IPC::ObjectIdentifierReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,IPC::ThreadSafeObjectHeap<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebCore::VideoFrame,WTF::RawPtrTraits<WebCore::VideoFrame>,WTF::DefaultRefDerefTraits<WebCore::VideoFrame>>>::ReferenceState>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<IPC::ObjectIdentifierReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,IPC::ThreadSafeObjectHeap<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebCore::VideoFrame,WTF::RawPtrTraits<WebCore::VideoFrame>,WTF::DefaultRefDerefTraits<WebCore::VideoFrame>>>::ReferenceState>>,WTF::DefaultHash<IPC::ObjectIdentifierReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashMap<IPC::ObjectIdentifierReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,IPC::ThreadSafeObjectHeap<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebCore::VideoFrame,WTF::RawPtrTraits<WebCore::VideoFrame>,WTF::DefaultRefDerefTraits<WebCore::VideoFrame>>>::ReferenceState,WTF::DefaultHash<IPC::ObjectIdentifierReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<IPC::ObjectIdentifierReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<IPC::ThreadSafeObjectHeap<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebCore::VideoFrame,WTF::RawPtrTraits<WebCore::VideoFrame>,WTF::DefaultRefDerefTraits<WebCore::VideoFrame>>>::ReferenceState>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<IPC::ObjectIdentifierReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::rehash(a1, v5, a2);
}

uint64_t WTF::HashTable<IPC::ObjectIdentifierReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePair<IPC::ObjectIdentifierReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,IPC::ThreadSafeObjectHeap<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebCore::VideoFrame,WTF::RawPtrTraits<WebCore::VideoFrame>,WTF::DefaultRefDerefTraits<WebCore::VideoFrame>>>::ReferenceState>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<IPC::ObjectIdentifierReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,IPC::ThreadSafeObjectHeap<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebCore::VideoFrame,WTF::RawPtrTraits<WebCore::VideoFrame>,WTF::DefaultRefDerefTraits<WebCore::VideoFrame>>>::ReferenceState>>,WTF::DefaultHash<IPC::ObjectIdentifierReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashMap<IPC::ObjectIdentifierReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,IPC::ThreadSafeObjectHeap<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebCore::VideoFrame,WTF::RawPtrTraits<WebCore::VideoFrame>,WTF::DefaultRefDerefTraits<WebCore::VideoFrame>>>::ReferenceState,WTF::DefaultHash<IPC::ObjectIdentifierReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<IPC::ObjectIdentifierReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<IPC::ThreadSafeObjectHeap<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebCore::VideoFrame,WTF::RawPtrTraits<WebCore::VideoFrame>,WTF::DefaultRefDerefTraits<WebCore::VideoFrame>>>::ReferenceState>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<IPC::ObjectIdentifierReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::rehash(uint64_t *a1, unsigned int a2, uint64_t a3)
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

  v8 = WTF::fastMalloc((56 * a2 + 16));
  v10 = v8;
  v11 = v8 + 16;
  if (a2)
  {
    bzero((v8 + 16), 56 * a2);
  }

  *a1 = v11;
  v10[2] = a2 - 1;
  v10[3] = a2;
  *v10 = 0;
  v10[1] = v7;
  if (v6)
  {
    v12 = 0;
    v13 = 0;
    do
    {
      v14 = v5 + 56 * v12;
      v15 = *v14;
      if (*v14 != -1)
      {
        v16 = *(v14 + 8);
        if (v15 | v16)
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

          v19 = WTF::IdentityHashTranslator<WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>::hash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(v15, v16);
          v20 = 0;
          do
          {
            v21 = v17 + 56 * (v19 & v18);
            v19 = ++v20 + (v19 & v18);
          }

          while (*v21 != 0);
          std::__optional_destruct_base<WTF::RefPtr<WebCore::VideoFrame,WTF::RawPtrTraits<WebCore::VideoFrame>,WTF::DefaultRefDerefTraits<WebCore::VideoFrame>>,false>::~__optional_destruct_base[abi:sn200100](v21 + 40);
          *v21 = *v14;
          v22 = *(v14 + 16);
          *(v21 + 32) = *(v14 + 32);
          *(v21 + 16) = v22;
          *(v21 + 40) = 0;
          *(v21 + 48) = 0;
          if (*(v14 + 48) == 1)
          {
            v23 = *(v14 + 40);
            *(v14 + 40) = 0;
            *(v21 + 40) = v23;
            *(v21 + 48) = 1;
          }

          std::__optional_destruct_base<WTF::RefPtr<WebCore::VideoFrame,WTF::RawPtrTraits<WebCore::VideoFrame>,WTF::DefaultRefDerefTraits<WebCore::VideoFrame>>,false>::~__optional_destruct_base[abi:sn200100](v14 + 40);
          if (v14 == a3)
          {
            v13 = v21;
          }
        }

        else
        {
          std::__optional_destruct_base<WTF::RefPtr<WebCore::VideoFrame,WTF::RawPtrTraits<WebCore::VideoFrame>,WTF::DefaultRefDerefTraits<WebCore::VideoFrame>>,false>::~__optional_destruct_base[abi:sn200100](v14 + 40);
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

unsigned int *std::__optional_storage_base<WTF::RefPtr<WebCore::VideoFrame,WTF::RawPtrTraits<WebCore::VideoFrame>,WTF::DefaultRefDerefTraits<WebCore::VideoFrame>>,false>::__assign_from[abi:sn200100]<std::__optional_move_assign_base<WTF::RefPtr<WebCore::VideoFrame,WTF::RawPtrTraits<WebCore::VideoFrame>,WTF::DefaultRefDerefTraits<WebCore::VideoFrame>>,false>>(unsigned int *result, uint64_t *a2)
{
  v2 = result;
  if (*(result + 8) == *(a2 + 8))
  {
    if (*(result + 8))
    {
      v3 = *a2;
      *a2 = 0;
      result = *result;
      *v2 = v3;
      if (result)
      {
        if (atomic_fetch_add(result + 2, 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, result + 2);
          v4 = *(*result + 8);

          return v4();
        }
      }
    }
  }

  else if (*(result + 8))
  {
    result = *result;
    *v2 = 0;
    if (result && atomic_fetch_add(result + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, result + 2);
      result = (*(*result + 8))(result);
    }

    *(v2 + 8) = 0;
  }

  else
  {
    v5 = *a2;
    *a2 = 0;
    *result = v5;
    *(result + 8) = 1;
  }

  return result;
}

uint64_t WTF::HashTable<IPC::ObjectIdentifierReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePair<IPC::ObjectIdentifierReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,IPC::ThreadSafeObjectHeap<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebCore::VideoFrame,WTF::RawPtrTraits<WebCore::VideoFrame>,WTF::DefaultRefDerefTraits<WebCore::VideoFrame>>>::ReferenceState>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<IPC::ObjectIdentifierReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,IPC::ThreadSafeObjectHeap<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebCore::VideoFrame,WTF::RawPtrTraits<WebCore::VideoFrame>,WTF::DefaultRefDerefTraits<WebCore::VideoFrame>>>::ReferenceState>>,WTF::DefaultHash<IPC::ObjectIdentifierReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashMap<IPC::ObjectIdentifierReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,IPC::ThreadSafeObjectHeap<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebCore::VideoFrame,WTF::RawPtrTraits<WebCore::VideoFrame>,WTF::DefaultRefDerefTraits<WebCore::VideoFrame>>>::ReferenceState,WTF::DefaultHash<IPC::ObjectIdentifierReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<IPC::ObjectIdentifierReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<IPC::ThreadSafeObjectHeap<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebCore::VideoFrame,WTF::RawPtrTraits<WebCore::VideoFrame>,WTF::DefaultRefDerefTraits<WebCore::VideoFrame>>>::ReferenceState>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<IPC::ObjectIdentifierReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::remove(uint64_t *a1, _OWORD *a2)
{
  *a2 = xmmword_19E7035E0;
  result = std::__optional_destruct_base<WTF::RefPtr<WebCore::VideoFrame,WTF::RawPtrTraits<WebCore::VideoFrame>,WTF::DefaultRefDerefTraits<WebCore::VideoFrame>>,false>::~__optional_destruct_base[abi:sn200100](a2 + 40);
  v4 = *a1;
  v5 = vadd_s32(*(*a1 - 16), 0xFFFFFFFF00000001);
  *(v4 - 16) = v5;
  v6 = *(v4 - 4);
  if (6 * v5.i32[1] < v6 && v6 >= 9)
  {

    return WTF::HashTable<IPC::ObjectIdentifierReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePair<IPC::ObjectIdentifierReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,IPC::ThreadSafeObjectHeap<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebCore::VideoFrame,WTF::RawPtrTraits<WebCore::VideoFrame>,WTF::DefaultRefDerefTraits<WebCore::VideoFrame>>>::ReferenceState>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<IPC::ObjectIdentifierReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,IPC::ThreadSafeObjectHeap<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebCore::VideoFrame,WTF::RawPtrTraits<WebCore::VideoFrame>,WTF::DefaultRefDerefTraits<WebCore::VideoFrame>>>::ReferenceState>>,WTF::DefaultHash<IPC::ObjectIdentifierReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashMap<IPC::ObjectIdentifierReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,IPC::ThreadSafeObjectHeap<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebCore::VideoFrame,WTF::RawPtrTraits<WebCore::VideoFrame>,WTF::DefaultRefDerefTraits<WebCore::VideoFrame>>>::ReferenceState,WTF::DefaultHash<IPC::ObjectIdentifierReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<IPC::ObjectIdentifierReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<IPC::ThreadSafeObjectHeap<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebCore::VideoFrame,WTF::RawPtrTraits<WebCore::VideoFrame>,WTF::DefaultRefDerefTraits<WebCore::VideoFrame>>>::ReferenceState>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<IPC::ObjectIdentifierReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::rehash(a1, v6 >> 1, 0);
  }

  return result;
}

IPC::Encoder *WTF::Detail::CallableWrapper<WebKit::RemoteVideoFrameObjectHeap::getVideoFrameBuffer(IPC::ObjectIdentifierReadReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>> &&,BOOL)::$_0,void,IPC::Semaphore &>::call(uint64_t a1, IPC::Semaphore *a2)
{
  v2 = **(a1 + 8);
  v4 = a2;
  return IPC::Connection::send<Messages::RemoteVideoFrameObjectHeapProxyProcessor::SetSharedVideoFrameSemaphore>(v2, &v4);
}

IPC::Encoder *IPC::Connection::send<Messages::RemoteVideoFrameObjectHeapProxyProcessor::SetSharedVideoFrameSemaphore>(uint64_t *a1, IPC::Semaphore **a2)
{
  v4 = IPC::Encoder::operator new(0x238, a2);
  *v4 = 1675;
  *(v4 + 68) = 0;
  *(v4 + 70) = 0;
  *(v4 + 69) = 0;
  *(v4 + 2) = 0;
  *(v4 + 3) = 0;
  *(v4 + 1) = 0;
  IPC::Encoder::encodeHeader(v4);
  v9 = v4;
  IPC::ArgumentCoder<IPC::Semaphore,void>::encode(v4, *a2);
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

IPC::Encoder *WTF::Detail::CallableWrapper<WebKit::RemoteVideoFrameObjectHeap::getVideoFrameBuffer(IPC::ObjectIdentifierReadReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>> &&,BOOL)::$_1,void,WebCore::SharedMemoryHandle &&>::call(uint64_t a1, uint64_t a2)
{
  v2 = **(a1 + 8);
  v4 = a2;
  return IPC::Connection::send<Messages::RemoteVideoFrameObjectHeapProxyProcessor::SetSharedVideoFrameMemory>(v2, &v4);
}

IPC::Encoder *IPC::Connection::send<Messages::RemoteVideoFrameObjectHeapProxyProcessor::SetSharedVideoFrameMemory>(uint64_t *a1, void *a2)
{
  v4 = IPC::Encoder::operator new(0x238, a2);
  *v4 = 1674;
  *(v4 + 68) = 0;
  *(v4 + 70) = 0;
  *(v4 + 69) = 0;
  *(v4 + 2) = 0;
  *(v4 + 3) = 0;
  *(v4 + 1) = 0;
  IPC::Encoder::encodeHeader(v4);
  v9 = v4;
  IPC::ArgumentCoder<WebCore::SharedMemoryHandle,void>::encode(v4, *a2);
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

IPC::Encoder *IPC::ArgumentCoder<std::optional<mpark::variant<decltype(nullptr),IPC::ObjectIdentifierReadReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::MachSendRight,WebCore::IntSize>>,void>::encode<IPC::Encoder,std::optional<mpark::variant<decltype(nullptr),IPC::ObjectIdentifierReadReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::MachSendRight,WebCore::IntSize>>>(IPC::Encoder *a1, unint64_t a2)
{
  if (*(a2 + 24))
  {
    v5 = 1;
    IPC::Encoder::operator<<<BOOL>(a1, &v5);
    if ((*(a2 + 24) & 1) == 0)
    {
      std::__throw_bad_optional_access[abi:sn200100]();
      JUMPOUT(0x19DBE649CLL);
    }

    v7 = *(a2 + 16);
    IPC::Encoder::operator<<<BOOL>(a1, &v7);
    return IPC::ArgumentCoder<mpark::variant<decltype(nullptr),IPC::ObjectIdentifierReadReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::MachSendRight,WebCore::IntSize>,void>::encode<IPC::Encoder,mpark::variant<decltype(nullptr),IPC::ObjectIdentifierReadReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::MachSendRight,WebCore::IntSize>>(a1, a2, v7);
  }

  else
  {
    v6 = 0;
    return IPC::Encoder::operator<<<BOOL>(a1, &v6);
  }
}

IPC::Encoder *WTF::Detail::CallableWrapper<WebKit::RemoteVideoFrameObjectHeap::convertFrameBuffer(WebKit::SharedVideoFrame &&,WTF::CompletionHandler<void ()(WebCore::DestinationColorSpace)> &&)::$_1,void,IPC::Semaphore &>::call(uint64_t a1, IPC::Semaphore *a2)
{
  v2 = **(a1 + 8);
  v4 = a2;
  return IPC::Connection::send<Messages::RemoteVideoFrameObjectHeapProxyProcessor::SetSharedVideoFrameSemaphore>(v2, &v4);
}

IPC::Encoder *WTF::Detail::CallableWrapper<WebKit::RemoteVideoFrameObjectHeap::convertFrameBuffer(WebKit::SharedVideoFrame &&,WTF::CompletionHandler<void ()(WebCore::DestinationColorSpace)> &&)::$_2,void,WTF::CompletionHandler::SharedMemoryHandle &&>::call(uint64_t a1, uint64_t a2)
{
  v2 = **(a1 + 8);
  v4 = a2;
  return IPC::Connection::send<Messages::RemoteVideoFrameObjectHeapProxyProcessor::SetSharedVideoFrameMemory>(v2, &v4);
}

void WebKit::AuthenticationChallengeProxy::sendClientCertificateCredentialOverXpc(uint64_t a1, uint64_t a2, uint64_t a3, WebCore::Credential *a4)
{
  v24 = *MEMORY[0x1E69E9840];
  v8 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v8, "message-name", "client-certificate-credential");
  xpc_dictionary_set_uint64(v8, "challenge-id", a3);
  xpc_dictionary_set_value(v8, "sec-key-proxy-endpoint", [objc_msgSend(*(a2 + 16) "endpoint")]);
  v9 = xpc_array_create(0, 0);
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v10 = [WebCore::Credential::nsCredential(a4) certificates];
  v11 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v11)
  {
    v12 = *v20;
    do
    {
      v13 = 0;
      do
      {
        if (*v20 != v12)
        {
          objc_enumerationMutation(v10);
        }

        v14 = SecCertificateCopyData(*(*(&v19 + 1) + 8 * v13));
        BytePtr = CFDataGetBytePtr(v14);
        Length = CFDataGetLength(v14);
        v17 = xpc_data_create(BytePtr, Length);
        xpc_array_append_value(v9, v17);
        if (v17)
        {
        }

        if (v14)
        {
          CFRelease(v14);
        }

        ++v13;
      }

      while (v11 != v13);
      v11 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v11);
  }

  xpc_dictionary_set_value(v8, "certificates", v9);
  v18 = [WebCore::Credential::nsCredential(a4) persistence];
  xpc_dictionary_set_uint64(v8, "persistence", v18);
  xpc_connection_send_message(*(a1 + 344), v8);
  if (v9)
  {
  }

  if (v8)
  {
  }
}

void sub_19DBE6728(_Unwind_Exception *exception_object)
{
  if (v1)
  {
  }

  _Unwind_Resume(exception_object);
}

void sub_19DBE6788()
{
  if (v0)
  {
    JUMPOUT(0x19DBE6790);
  }

  JUMPOUT(0x19DBE6768);
}

BOOL WebKit::SecKeyProxyStore::initialize(WebKit::SecKeyProxyStore *this, const WebCore::Credential *a2)
{
  if ((WebCore::Credential::isEmpty(a2) & 1) == 0)
  {
    if ([WebCore::Credential::nsCredential(a2) identity])
    {
      v4 = [objc_alloc(MEMORY[0x1E697AAB0]) initWithIdentity:{objc_msgSend(WebCore::Credential::nsCredential(a2), "identity")}];
      v5 = *(this + 2);
      *(this + 2) = v4;
      if (v5)
      {
      }
    }
  }

  return *(this + 2) != 0;
}

WTF *WebKit::WebAutomationSession::platformGetBase64EncodedPNGData@<X0>(_BYTE *a1@<X8>)
{
  WebCore::ShareableBitmap::create();
  result = v6;
  if (v6)
  {
    WebCore::ShareableBitmap::makeCGImage();
    WebKit::getBase64EncodedPNGData(&cf, a1);
    v4 = cf;
    cf = 0;
    if (v4)
    {
      CFRelease(v4);
    }

    result = v6;
    v6 = 0;
    if (result)
    {
      return WTF::ThreadSafeRefCounted<WebCore::ShareableBitmap,(WTF::DestructionThread)0>::deref(result, v3);
    }
  }

  else
  {
    *a1 = 0;
    a1[8] = 0;
  }

  return result;
}

void sub_19DBE68B0(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, CFTypeRef cf, WTF *a10)
{
  if (cf)
  {
    CFRelease(cf);
  }

  if (a10)
  {
    WTF::ThreadSafeRefCounted<WebCore::ShareableBitmap,(WTF::DestructionThread)0>::deref(a10, a2);
  }

  _Unwind_Resume(exception_object);
}

void WebKit::getBase64EncodedPNGData(CGImageRef *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = objc_alloc_init(MEMORY[0x1E695DF88]);
  v5 = CGImageDestinationCreateWithData(v4, *MEMORY[0x1E6963860], 1uLL, 0);
  v6 = v5;
  if (v5)
  {
    CGImageDestinationAddImage(v5, *a1, 0);
    CGImageDestinationFinalize(v6);
    MEMORY[0x19EB02040](&v7, [(__CFData *)v4 base64EncodedStringWithOptions:0]);
    *a2 = v7;
    *(a2 + 8) = 1;
    CFRelease(v6);
    if (!v4)
    {
      return;
    }
  }

  else
  {
    *a2 = 0;
    *(a2 + 8) = 0;
    if (!v4)
    {
      return;
    }
  }
}

void sub_19DBE69A8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
  }

  _Unwind_Resume(exception_object);
}

void WebKit::WebAutomationSession::platformGetBase64EncodedPNGData(WebKit::WebAutomationSession *this@<X0>, _BYTE *a2@<X8>)
{
  v4 = *(this + 2);
  if (v4)
  {
    WebCore::IOSurface::createPlatformContext();
    WebCore::IOSurface::createImage(&v7, v4, cf);
    WebKit::getBase64EncodedPNGData(&v7, a2);
    v5 = v7;
    v7 = 0;
    if (v5)
    {
      CFRelease(v5);
    }

    v6 = cf;
    cf = 0;
    if (v6)
    {
      CFRelease(v6);
    }
  }

  else
  {
    *a2 = 0;
    a2[8] = 0;
  }
}

void sub_19DBE6A60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, CFTypeRef cf, CFTypeRef a10)
{
  if (cf)
  {
    CFRelease(cf);
  }

  if (a10)
  {
    CFRelease(a10);
  }

  _Unwind_Resume(exception_object);
}

void WebKit::WebAutomationSession::platformGenerateLocalFilePathForRemoteFile(atomic_uint **a1@<X1>, atomic_uint **a2@<X2>, _BYTE *a3@<X8>)
{
  v7 = objc_alloc(MEMORY[0x1E695DEF0]);
  v8 = *a2;
  if (v8)
  {
    atomic_fetch_add_explicit(v8, 2u, memory_order_relaxed);
    MEMORY[0x19EB00B70](&v27, v8);
    if (atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v8, v9);
    }
  }

  else
  {
    v27 = &stru_1F1147748;
    v10 = &stru_1F1147748;
  }

  v12 = [v7 initWithBase64EncodedString:v27 options:0];
  v13 = v27;
  v27 = 0;
  if (v13)
  {
  }

  if (!v12)
  {
    *a3 = 0;
    a3[8] = 0;
    return;
  }

  TemporaryDirectory = WTF::FileSystemImpl::createTemporaryDirectory(@"WebDriver", v11);
  v15 = TemporaryDirectory;
  if (TemporaryDirectory)
  {
    v16 = TemporaryDirectory;
  }

  v17 = objc_alloc(MEMORY[0x1E695DFF8]);
  v18 = *a1;
  if (v18)
  {
    atomic_fetch_add_explicit(v18, 2u, memory_order_relaxed);
    MEMORY[0x19EB00B70](&v27, v18);
    if (atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v18, v19);
    }
  }

  else
  {
    v27 = &stru_1F1147748;
    v20 = &stru_1F1147748;
  }

  v21 = [v17 initFileURLWithPath:v27 isDirectory:0];
  v22 = v27;
  v27 = 0;
  if (v22)
  {
  }

  v23 = [v15 stringByAppendingPathComponent:{objc_msgSend(v21, "lastPathComponent")}];
  v24 = v23;
  if (v23)
  {
    v25 = v23;
  }

  v27 = 0;
  [v12 writeToFile:v24 options:1 error:&v27];
  if (v27)
  {
    *a3 = 0;
    a3[8] = 0;
    if (!v24)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  MEMORY[0x19EB02040](&v26, v24);
  *a3 = v26;
  a3[8] = 1;
  if (v24)
  {
LABEL_21:
  }

LABEL_22:
  if (v21)
  {

    if (!v15)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

  if (v15)
  {
LABEL_24:
  }

LABEL_25:
}

void sub_19DBE6C88(_Unwind_Exception *a1)
{
  if (v2)
  {
  }

  _Unwind_Resume(a1);
}

uint64_t WebKit::WebAutomationSession::sendSynthesizedEventsToPage(WebKit::WebAutomationSession *this, WebKit::WebPageProxy *a2, NSArray *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  result = [(WebKit::WebPageProxy *)a2 countByEnumeratingWithState:&v14 objects:v18 count:16];
  v6 = result;
  if (result)
  {
    v7 = *v15;
    do
    {
      v8 = 0;
      do
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(a2);
        }

        v9 = *(*(&v14 + 1) + 8 * v8);
        if (([(WebKit::WebIOSEventFactory *)v9 type]& 0xFFFFFFFE) == 4)
        {
          WebKit::NativeWebKeyboardEvent::NativeWebKeyboardEvent(v12, v9, 0);
          WebKit::WebPageProxy::handleKeyboardEvent(this, v12);
          v11 = v13;
          v12[0] = off_1F10F2AA0;
          v13 = 0;
          if (v11)
          {
          }

          WebKit::WebKeyboardEvent::~WebKeyboardEvent(v12, v10);
        }

        ++v8;
      }

      while (v6 != v8);
      result = [(WebKit::WebPageProxy *)a2 countByEnumeratingWithState:&v14 objects:v18 count:16];
      v6 = result;
    }

    while (result);
  }

  return result;
}

void WebKit::WebAutomationSession::platformSimulateKeyboardInteraction(mpark *a1, WebKit::WebAutomationSession *a2, int a3, int *a4)
{
  if (*(a4 + 8) == 1)
  {
    v13 = *a4;
    if (*a4)
    {
      atomic_fetch_add_explicit(v13, 2u, memory_order_relaxed);
      atomic_fetch_add_explicit(v13, 2u, memory_order_relaxed);
      MEMORY[0x19EB00B70](&v29, v13);
      if (atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v13, v14);
      }

      v7 = v29;
      if (!v29)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v7 = &stru_1F1147748;
      v15 = &stru_1F1147748;
    }

    v16 = v7;
    if (!v13)
    {
LABEL_13:
      v17 = 0;
      v18 = v7;
      goto LABEL_71;
    }

LABEL_9:
    if (atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v13, v14);
    }

    goto LABEL_13;
  }

  if (*(a4 + 8))
  {
    mpark::throw_bad_variant_access(a1);
  }

  v7 = 0;
  v8 = 0;
  v9 = *a4;
  v10 = 1;
  v11 = 65606;
  v12 = 63232;
  switch(*a4)
  {
    case 4:
      v12 = 0;
      goto LABEL_40;
    case 50:
    case 56:
      v12 = 0;
      v11 = 65563;
      goto LABEL_60;
    case 51:
      goto LABEL_60;
    case 52:
      v12 = 0;
      goto LABEL_46;
    case 53:
      goto LABEL_57;
    case 54:
      v12 = 0;
      goto LABEL_49;
    case 55:
      goto LABEL_36;
    case 57:
      v11 = 65580;
      goto LABEL_60;
    case 59:
      goto LABEL_23;
    case 61:
      goto LABEL_20;
    case 63:
      v11 = 65577;
      goto LABEL_60;
    case 65:
      v11 = 65538;
      goto LABEL_60;
    case 67:
      v11 = 0x10000;
      goto LABEL_60;
    case 69:
LABEL_49:
      v11 = 65539;
      goto LABEL_60;
    case 71:
      v11 = 65537;
      goto LABEL_60;
    case 73:
      v11 = 65575;
      goto LABEL_60;
    case 75:
      v11 = 65576;
      goto LABEL_60;
    case 77:
      v12 = 0;
      v11 = 65568;
      goto LABEL_60;
    case 78:
      v12 = 0;
      v11 = 65595;
      goto LABEL_60;
    case 79:
      v12 = 0;
      v11 = 65597;
      goto LABEL_60;
    case 80:
      v12 = 0;
      goto LABEL_52;
    case 81:
      v12 = 0;
LABEL_36:
      v11 = 65584;
      goto LABEL_60;
    case 82:
      v12 = 0;
      v11 = 65585;
      goto LABEL_60;
    case 83:
      v12 = 0;
      v11 = 65586;
      goto LABEL_60;
    case 84:
      v12 = 0;
      v11 = 65587;
      goto LABEL_60;
    case 85:
      v12 = 0;
      v11 = 65588;
      goto LABEL_60;
    case 86:
      v12 = 0;
      v11 = 65589;
      goto LABEL_60;
    case 87:
      v12 = 0;
      v11 = 65590;
      goto LABEL_60;
    case 88:
      v12 = 0;
      v11 = 65591;
      goto LABEL_60;
    case 89:
      v12 = 0;
      v11 = 65592;
      goto LABEL_60;
    case 90:
      v12 = 0;
LABEL_57:
      v11 = 65593;
      goto LABEL_60;
    case 91:
      v12 = 0;
      v11 = 65578;
      goto LABEL_60;
    case 92:
      v12 = 0;
LABEL_20:
      v11 = 65579;
      goto LABEL_60;
    case 93:
    case 95:
      v12 = 0;
      v11 = 65582;
      goto LABEL_60;
    case 94:
      v12 = 0;
LABEL_23:
      v11 = 65581;
      goto LABEL_60;
    case 96:
      v12 = 0;
      v11 = 65583;
      goto LABEL_60;
    case 97:
      v11 = 65540;
      goto LABEL_60;
    case 98:
      v11 = 65541;
      goto LABEL_60;
    case 99:
      v11 = 65542;
      goto LABEL_60;
    case 100:
      v11 = 65543;
      goto LABEL_60;
    case 101:
LABEL_46:
      v11 = 65544;
      goto LABEL_60;
    case 102:
LABEL_40:
      v11 = 65545;
      goto LABEL_60;
    case 103:
      v11 = 65546;
      goto LABEL_60;
    case 104:
      v11 = 65547;
      goto LABEL_60;
    case 105:
      v11 = 65548;
      goto LABEL_60;
    case 106:
LABEL_52:
      v11 = 65549;
      goto LABEL_60;
    case 107:
      v11 = 65550;
      goto LABEL_60;
    case 108:
      v11 = 65551;
LABEL_60:
      v8 = v11 | v12;
      BYTE2(v29) = BYTE2(v11);
      LOWORD(v29) = v11 | v12;
      v19 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithCharacters:&v29 length:1];
      v10 = 0;
      v7 = v19;
      break;
    default:
      break;
  }

  if (v9 == 91)
  {
    v20 = 65592;
    goto LABEL_65;
  }

  if (v9 == 92)
  {
    v20 = 65597;
LABEL_65:
    LOWORD(v29) = v20;
    BYTE2(v29) = BYTE2(v20);
    goto LABEL_66;
  }

  LOWORD(v29) = v8;
  BYTE2(v29) = BYTE2(v8);
  if (v10)
  {
    v18 = 0;
    goto LABEL_67;
  }

LABEL_66:
  v18 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithCharacters:&v29 length:1];
LABEL_67:
  v21 = v9 - 39;
  if (v9 - 39) <= 0xA && ((0x7F7u >> v21))
  {
    v17 = dword_19E703888[v21];
  }

  else
  {
    v17 = 0;
  }

LABEL_71:
  v22 = [(__CFString *)v7 length]== 1 && [(__CFString *)v7 characterAtIndex:0]== 9;
  v24 = objc_alloc_init(MEMORY[0x1E695DF70]);
  switch(a3)
  {
    case 'm':
      *(a1 + 76) |= v17;
      BYTE2(v27) = v22;
      LOWORD(v27) = 0;
      v26 = [objc_alloc(MEMORY[0x1E69E2F40]) initWithKeyEventType:4 timeStamp:v7 characters:v18 charactersIgnoringModifiers:*(a1 + 76) modifiers:0 isRepeating:0 withFlags:CFAbsoluteTimeGetCurrent() withInputManagerHint:0 keyCode:v27 isTabKey:?];
      [v24 addObject:v26];
      break;
    case 'n':
      *(a1 + 76) &= ~v17;
      BYTE2(v27) = v22;
      LOWORD(v27) = 0;
      v26 = [objc_alloc(MEMORY[0x1E69E2F40]) initWithKeyEventType:5 timeStamp:v7 characters:v18 charactersIgnoringModifiers:*(a1 + 76) modifiers:0 isRepeating:0 withFlags:CFAbsoluteTimeGetCurrent() withInputManagerHint:0 keyCode:v27 isTabKey:?];
      [v24 addObject:v26];
      break;
    case 'o':
      BYTE2(v27) = v22;
      LOWORD(v27) = 0;
      v25 = [objc_alloc(MEMORY[0x1E69E2F40]) initWithKeyEventType:4 timeStamp:v7 characters:v18 charactersIgnoringModifiers:*(a1 + 76) modifiers:0 isRepeating:0 withFlags:CFAbsoluteTimeGetCurrent() withInputManagerHint:0 keyCode:v27 isTabKey:?];
      [v24 addObject:v25];
      if (v25)
      {
      }

      BYTE2(v28) = v22;
      LOWORD(v28) = 0;
      v26 = [objc_alloc(MEMORY[0x1E69E2F40]) initWithKeyEventType:5 timeStamp:v7 characters:v18 charactersIgnoringModifiers:*(a1 + 76) modifiers:0 isRepeating:0 withFlags:CFAbsoluteTimeGetCurrent() withInputManagerHint:0 keyCode:v28 isTabKey:?];
      [v24 addObject:v26];
      break;
    default:
      goto LABEL_84;
  }

  if (v26)
  {
  }

LABEL_84:
  WebKit::WebAutomationSession::sendSynthesizedEventsToPage(a2, v24, v23);
  if (v24)
  {
  }

  if (v18)
  {
  }

  if (v7)
  {
  }
}

void sub_19DBE73EC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
  }

  if (v4)
  {
  }

  if (v3)
  {
  }

  if (v2)
  {
  }

  _Unwind_Resume(exception_object);
}

void WebKit::WebAutomationSession::platformSimulateKeySequence(WebKit::WebAutomationSession *this, WebKit::WebPageProxy *a2, atomic_uint **a3)
{
  v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v7 = *a3;
  if (v7)
  {
    atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed);
    MEMORY[0x19EB00B70](&v20, v7);
    if (atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v7, v8);
    }
  }

  else
  {
    v20 = &stru_1F1147748;
    v9 = &stru_1F1147748;
  }

  v10 = [(__CFString *)v20 isEqualToString:@"\t"];
  v11 = v20;
  v12 = [(__CFString *)v20 length];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3321888768;
  v17[2] = ___ZN6WebKit20WebAutomationSession27platformSimulateKeySequenceERNS_12WebPageProxyERKN3WTF6StringE_block_invoke;
  v17[3] = &__block_descriptor_49_e8_40c38_ZTSN3WTF9RetainPtrI14NSMutableArrayEE_e52_v56__0__NSString_8__NSRange_QQ_16__NSRange_QQ_32_B48l;
  v19 = v10;
  v17[4] = this;
  v18 = v6;
  if (v6)
  {
    v13 = v6;
  }

  [(__CFString *)v11 enumerateSubstringsInRange:0 options:v12 usingBlock:2, v17];
  WebKit::WebAutomationSession::sendSynthesizedEventsToPage(a2, v6, v14);
  v15 = v18;
  v18 = 0;
  if (v15)
  {
  }

  v16 = v20;
  v20 = 0;
  if (v16)
  {
  }

  if (v6)
  {
  }
}

void sub_19DBE7600(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  if (v16)
  {
  }

  _Unwind_Resume(exception_object);
}

void ___ZN6WebKit20WebAutomationSession27platformSimulateKeySequenceERNS_12WebPageProxyERKN3WTF6StringE_block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v5 = objc_alloc(MEMORY[0x1E69E2F40]);
  Current = CFAbsoluteTimeGetCurrent();
  BYTE2(v10) = *(a1 + 48);
  LOWORD(v10) = 0;
  v12 = [v5 initWithKeyEventType:4 timeStamp:a2 characters:a2 charactersIgnoringModifiers:*(v4 + 304) modifiers:0 isRepeating:0 withFlags:Current withInputManagerHint:0 keyCode:v10 isTabKey:?];
  [*(a1 + 40) addObject:?];
  v7 = objc_alloc(MEMORY[0x1E69E2F40]);
  v8 = CFAbsoluteTimeGetCurrent();
  BYTE2(v11) = *(a1 + 48);
  LOWORD(v11) = 0;
  v9 = [v7 initWithKeyEventType:5 timeStamp:a2 characters:a2 charactersIgnoringModifiers:*(v4 + 304) modifiers:0 isRepeating:0 withFlags:v8 withInputManagerHint:0 keyCode:v11 isTabKey:?];
  [*(a1 + 40) addObject:v9];
  if (v9)
  {
  }

  if (v12)
  {
  }
}

void sub_19DBE7784(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, id a12)
{
  if (v12)
  {
  }

  if (a12)
  {
  }

  _Unwind_Resume(exception_object);
}

void *__copy_helper_block_e8_40c38_ZTSN3WTF9RetainPtrI14NSMutableArrayEE(void *result, uint64_t a2)
{
  v2 = *(a2 + 40);
  result[5] = v2;
  if (v2)
  {
    return v2;
  }

  return result;
}

void __destroy_helper_block_e8_40c38_ZTSN3WTF9RetainPtrI14NSMutableArrayEE(uint64_t a1)
{
  v1 = *(a1 + 40);
  *(a1 + 40) = 0;
  if (v1)
  {
  }
}

void WebKit::WebAutomationSession::platformSimulateTouchInteraction(int a1, WebKit::WebPageProxy *this, int a3, IntPoint *a4, uint64_t a5, uint64_t a6, uint64_t *a7)
{
  v15.m_location = *a4;
  v15.m_size = 0;
  v16 = WebKit::WebPageProxy::syncRootViewToScreen(this, &v15);
  v10 = *a7;
  *a7 = 0;
  v11 = malloc_type_malloc(0x28uLL, 0x10E004053C0834CuLL);
  *v11 = MEMORY[0x1E69E9818];
  v11[1] = 50331650;
  v11[2] = WTF::BlockPtr<void ()(void)>::fromCallable<WebKit::WebAutomationSession::platformSimulateTouchInteraction(WebKit::WebPageProxy &,WebKit::TouchInteraction,WebCore::IntPoint const&,std::optional<WTF::Seconds>,WTF::CompletionHandler<void ()(std::optional<WebKit::AutomationCommandError>)> &&)::$_0>(WebKit::WebAutomationSession::platformSimulateTouchInteraction(WebKit::WebPageProxy &,WebKit::TouchInteraction,WebCore::IntPoint const&,std::optional<WTF::Seconds>,WTF::CompletionHandler<void ()(std::optional<WebKit::AutomationCommandError>)> &&)::$_0)::{lambda(void *)#1}::__invoke;
  v11[3] = &WTF::BlockPtr<void ()(void)>::fromCallable<WebKit::WebAutomationSession::platformSimulateTouchInteraction(WebKit::WebPageProxy &,WebKit::TouchInteraction,WebCore::IntPoint const&,std::optional<WTF::Seconds>,WTF::CompletionHandler<void ()(std::optional<WebKit::AutomationCommandError>)> &&)::$_0>(WebKit::WebAutomationSession::platformSimulateTouchInteraction(WebKit::WebPageProxy &,WebKit::TouchInteraction,WebCore::IntPoint const&,std::optional<WTF::Seconds>,WTF::CompletionHandler<void ()(std::optional<WebKit::AutomationCommandError>)> &&)::$_0)::descriptor;
  v11[4] = v10;
  v12 = +[_WKTouchEventGenerator sharedTouchEventGenerator];
  WeakRetained = objc_loadWeakRetained((*(this + 4) + 2248));
  v14 = [WeakRetained window];
  if (WeakRetained)
  {
  }

  if (a3)
  {
    if (a3 == 1)
    {
      WebCore::IntPoint::operator CGPoint();
      [v12 moveToPoint:v14 duration:v11 window:? completionBlock:?];
    }

    else if (a3 == 2)
    {
      WebCore::IntPoint::operator CGPoint();
      [v12 liftUp:v14 window:v11 completionBlock:?];
    }
  }

  else
  {
    WebCore::IntPoint::operator CGPoint();
    [v12 touchDown:v14 window:v11 completionBlock:?];
  }

  _Block_release(v11);
}

uint64_t WebKit::AutomationClient::AutomationClient(uint64_t a1, void *a2, void *a3)
{
  *a1 = &unk_1F10FE188;
  v6 = (a1 + 8);
  Inspector::RemoteInspector::Client::Client((a1 + 8));
  *a1 = &unk_1F10FE0D8;
  *(a1 + 8) = &unk_1F10FE120;
  *(a1 + 16) = 0;
  objc_initWeak((a1 + 16), a2);
  *(a1 + 24) = 0;
  objc_initWeak((a1 + 24), a3);
  *(a1 + 32) = *(a1 + 32) & 0xFE | objc_opt_respondsToSelector() & 1;
  if (objc_opt_respondsToSelector())
  {
    v7 = 2;
  }

  else
  {
    v7 = 0;
  }

  *(a1 + 32) = *(a1 + 32) & 0xFD | v7;
  if (objc_opt_respondsToSelector())
  {
    v8 = 4;
  }

  else
  {
    v8 = 0;
  }

  *(a1 + 32) = *(a1 + 32) & 0xFB | v8;
  if (objc_opt_respondsToSelector())
  {
    v9 = 8;
  }

  else
  {
    v9 = 0;
  }

  *(a1 + 32) = *(a1 + 32) & 0xF7 | v9;
  v10 = objc_opt_respondsToSelector();
  if (v10)
  {
    v11 = 16;
  }

  else
  {
    v11 = 0;
  }

  *(a1 + 32) = *(a1 + 32) & 0xEF | v11;
  v12 = Inspector::RemoteInspector::singleton(v10);
  Inspector::RemoteInspector::setClient(v12, v6);
  return a1;
}

void sub_19DBE7B64(_Unwind_Exception *a1)
{
  objc_destroyWeak(v2);
  Inspector::RemoteInspector::Client::~Client(v1);
  _Unwind_Resume(a1);
}

void WebKit::AutomationClient::~AutomationClient(id *this)
{
  v2 = Inspector::RemoteInspector::singleton(this);
  Inspector::RemoteInspector::setClient(v2, 0);
  objc_destroyWeak(this + 3);
  objc_destroyWeak(this + 2);
  Inspector::RemoteInspector::Client::~Client((this + 1));
}

{
  WebKit::AutomationClient::~AutomationClient(this);

  bmalloc::api::tzoneFree(v1, v2);
}

void sub_19DBE7BE0(_Unwind_Exception *a1)
{
  objc_destroyWeak(v1 + 3);
  objc_destroyWeak(v1 + 2);
  Inspector::RemoteInspector::Client::~Client((v1 + 1));
  _Unwind_Resume(a1);
}

void non-virtual thunk toWebKit::AutomationClient::~AutomationClient(id *this)
{
  WebKit::AutomationClient::~AutomationClient(this - 1);
}

{
  WebKit::AutomationClient::~AutomationClient(this - 1);

  bmalloc::api::tzoneFree(v1, v2);
}

uint64_t WebKit::AutomationClient::remoteAutomationAllowed(WebKit::AutomationClient *this)
{
  if ((*(this + 32) & 1) == 0)
  {
    return 0;
  }

  WeakRetained = objc_loadWeakRetained(this + 3);
  v3 = objc_loadWeakRetained(this + 2);
  v4 = [WeakRetained _processPoolAllowsRemoteAutomation:v3];
  if (v3)
  {
  }

  if (WeakRetained)
  {
  }

  return v4;
}

void sub_19DBE7CD8(_Unwind_Exception *exception_object)
{
  if (v2)
  {
  }

  if (v1)
  {
  }

  _Unwind_Resume(exception_object);
}

void WebKit::AutomationClient::requestAutomationSession(uint64_t a1, atomic_uint **a2, unsigned __int8 *a3)
{
  v6 = objc_alloc_init(_WKAutomationSessionConfiguration);
  v7 = [(_WKAutomationSessionConfiguration *)v6 setAcceptInsecureCertificates:*a3];
  if (a3[2] == 1)
  {
    v7 = [(_WKAutomationSessionConfiguration *)v6 setAllowsInsecureMediaCapture:a3[1]];
  }

  if (a3[4] == 1)
  {
    v7 = [(_WKAutomationSessionConfiguration *)v6 setSuppressesICECandidateFiltering:a3[3]];
  }

  if (a3[6] == 1)
  {
    v7 = [(_WKAutomationSessionConfiguration *)v6 setAlwaysAllowAutoplay:a3[5]];
  }

  WTF::RunLoop::mainSingleton(v7);
  v8 = *a2;
  if (v8)
  {
    atomic_fetch_add_explicit(v8, 2u, memory_order_relaxed);
    MEMORY[0x19EB00B70](&v16, v8);
    if (atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v8, v9);
    }
  }

  else
  {
    v16 = &stru_1F1147748;
    v10 = &stru_1F1147748;
  }

  v17 = v6;
  v11 = WTF::fastMalloc(0x20);
  *v11 = &unk_1F10FE1A8;
  v11[1] = a1;
  v11[2] = v16;
  v12 = v17;
  v16 = 0;
  v17 = 0;
  v11[3] = v12;
  v18 = v11;
  WTF::RunLoop::dispatch();
  v13 = v18;
  v18 = 0;
  if (v13)
  {
    (*(*v13 + 8))(v13);
  }

  v14 = v17;
  v17 = 0;
  if (v14)
  {
  }

  v15 = v16;
  v16 = 0;
  if (v15)
  {
  }
}

void sub_19DBE7E98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (v12)
  {
  }

  _Unwind_Resume(exception_object);
}

uint64_t WebKit::AutomationClient::requestedDebuggablesToWakeUp(WebKit::AutomationClient *this)
{
  WTF::RunLoop::mainSingleton(this);
  v2 = WTF::fastMalloc(0x10);
  *v2 = &unk_1F10FE1D0;
  v2[1] = this;
  v4 = v2;
  WTF::RunLoop::dispatch();
  result = v4;
  if (v4)
  {
    return (*(*v4 + 8))(v4);
  }

  return result;
}

void sub_19DBE7FD4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 8))(a10);
  }

  _Unwind_Resume(exception_object);
}

void WebKit::AutomationClient::browserName(id *this@<X0>, uint64_t a2@<X8>)
{
  if ((this[4] & 8) != 0)
  {
    Weak = objc_loadWeak(this + 3);
    WeakRetained = objc_loadWeakRetained(this + 2);
    MEMORY[0x19EB02040](a2, [Weak _processPoolBrowserNameForAutomation:?]);
  }

  else
  {
    v3 = [MEMORY[0x1E696AAE8] mainBundle];
    WeakRetained = v3;
    if (v3)
    {
      v11 = v3;
      v3 = WeakRetained;
    }

    v4 = [v3 infoDictionary];
    v5 = [v4 objectForKeyedSubscript:*MEMORY[0x1E695E120]];
    v6 = v5;
    if (v5)
    {
      v10 = v5;
      MEMORY[0x19EB02040](a2, v6);
    }

    else
    {
      v7 = [WeakRetained infoDictionary];
      MEMORY[0x19EB02040](a2, [v7 objectForKeyedSubscript:*MEMORY[0x1E695E4F8]]);
    }
  }

  if (WeakRetained)
  {
  }
}

void sub_19DBE8134(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(a1);
}

void WebKit::AutomationClient::browserVersion(id *this@<X0>, uint64_t a2@<X8>)
{
  if ((this[4] & 0x10) != 0)
  {
    Weak = objc_loadWeak(this + 3);
    WeakRetained = objc_loadWeakRetained(this + 2);
    MEMORY[0x19EB02040](a2, [Weak _processPoolBrowserVersionForAutomation:?]);
  }

  else
  {
    v3 = [MEMORY[0x1E696AAE8] mainBundle];
    WeakRetained = v3;
    if (v3)
    {
      v7 = v3;
      v3 = WeakRetained;
    }

    v4 = [v3 infoDictionary];
    MEMORY[0x19EB02040](a2, [v4 objectForKeyedSubscript:*MEMORY[0x1E695E148]]);
  }

  if (WeakRetained)
  {
  }
}

void sub_19DBE8250(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

uint64_t WTF::BlockPtr<void ()(void)>::fromCallable<WebKit::WebAutomationSession::platformSimulateTouchInteraction(WebKit::WebPageProxy &,WebKit::TouchInteraction,WebCore::IntPoint const&,std::optional<WTF::Seconds>,WTF::CompletionHandler<void ()(std::optional<WebKit::AutomationCommandError>)> &&)::$_0>(WebKit::WebAutomationSession::platformSimulateTouchInteraction(WebKit::WebPageProxy &,WebKit::TouchInteraction,WebCore::IntPoint const&,std::optional<WTF::Seconds>,WTF::CompletionHandler<void ()(std::optional<WebKit::AutomationCommandError>)> &&)::$_0)::{lambda(void const*)#1}::__invoke(uint64_t a1)
{
  result = *(a1 + 32);
  *(a1 + 32) = 0;
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

WTF::StringImpl *WTF::BlockPtr<void ()(void)>::fromCallable<WebKit::WebAutomationSession::platformSimulateTouchInteraction(WebKit::WebPageProxy &,WebKit::TouchInteraction,WebCore::IntPoint const&,std::optional<WTF::Seconds>,WTF::CompletionHandler<void ()(std::optional<WebKit::AutomationCommandError>)> &&)::$_0>(WebKit::WebAutomationSession::platformSimulateTouchInteraction(WebKit::WebPageProxy &,WebKit::TouchInteraction,WebCore::IntPoint const&,std::optional<WTF::Seconds>,WTF::CompletionHandler<void ()(std::optional<WebKit::AutomationCommandError>)> &&)::$_0)::{lambda(void *)#1}::__invoke(uint64_t a1)
{
  v3[0] = 0;
  v6 = 0;
  result = WTF::CompletionHandler<void ()(std::optional<WebKit::AutomationCommandError>)>::operator()((a1 + 32), v3);
  if (v6 == 1 && v5 == 1)
  {
    result = v4;
    v4 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(result, v2);
      }
    }
  }

  return result;
}

void sub_19DBE8320(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10, char a11, int a12, __int16 a13, char a14, char a15)
{
  if (a13 == 1 && a11 == 1 && a10 && atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a10, a2);
  }

  _Unwind_Resume(exception_object);
}

void *WTF::Detail::CallableWrapper<WebKit::AutomationClient::requestAutomationSession(WTF::String const&,Inspector::RemoteInspector::Client::SessionCapabilities const&)::$_0,void>::~CallableWrapper(void *a1)
{
  *a1 = &unk_1F10FE1A8;
  v2 = a1[3];
  a1[3] = 0;
  if (v2)
  {
  }

  v3 = a1[2];
  a1[2] = 0;
  if (v3)
  {
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::AutomationClient::requestAutomationSession(WTF::String const&,Inspector::RemoteInspector::Client::SessionCapabilities const&)::$_0,void>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F10FE1A8;
  v3 = *(this + 3);
  *(this + 3) = 0;
  if (v3)
  {
  }

  v4 = *(this + 2);
  *(this + 2) = 0;
  if (v4)
  {
  }

  return WTF::fastFree(this, a2);
}

void WTF::Detail::CallableWrapper<WebKit::AutomationClient::requestAutomationSession(WTF::String const&,Inspector::RemoteInspector::Client::SessionCapabilities const&)::$_0,void>::call(void *a1)
{
  v1 = a1[1];
  if ((*(v1 + 32) & 2) != 0)
  {
    WeakRetained = objc_loadWeakRetained((v1 + 24));
    v3 = objc_loadWeakRetained((v1 + 16));
    [WeakRetained _processPool:v3 didRequestAutomationSessionWithIdentifier:a1[2] configuration:a1[3]];
    if (v3)
    {
    }

    if (WeakRetained)
    {
    }
  }
}

void sub_19DBE84C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (v10)
  {
  }

  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void WTF::Detail::CallableWrapper<WebKit::AutomationClient::requestedDebuggablesToWakeUp(void)::$_0,void>::call(uint64_t a1)
{
  v1 = *(a1 + 8);
  if ((*(v1 + 32) & 4) != 0)
  {
    WeakRetained = objc_loadWeakRetained((v1 + 24));
    v2 = objc_loadWeakRetained((v1 + 16));
    [WeakRetained _processPoolDidRequestInspectorDebuggablesToWakeUp:v2];
    if (v2)
    {
    }

    if (WeakRetained)
    {
    }
  }
}

void sub_19DBE8580(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (v10)
  {
  }

  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

uint64_t WebKit::RemoteAudioSourceProviderProxy::create@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = WTF::fastMalloc(0x28);
  *(v6 + 16) = 1;
  *(v6 + 8) = 0;
  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded((v6 + 8), v6);
  *v6 = &unk_1F10FE1F8;
  *(v6 + 24) = a1;
  v7 = *a2;
  *a2 = 0;
  *(v6 + 32) = v7;
  *a3 = v6;
  atomic_fetch_add((v6 + 16), 1u);
  v8 = WTF::fastMalloc(0x10);
  *v8 = &unk_1F10FE8F0;
  v8[1] = v6;
  v12 = v8;
  WebCore::AudioSourceProviderAVFObjC::setConfigureAudioStorageCallback();
  if (v12)
  {
    (*(*v12 + 8))(v12);
  }

  v9 = *a3;
  atomic_fetch_add((v9 + 16), 1u);
  v10 = WTF::fastMalloc(0x10);
  *v10 = &unk_1F10FE918;
  v10[1] = v9;
  v13 = v10;
  WebCore::AudioSourceProviderAVFObjC::setAudioCallback();
  result = v13;
  if (v13)
  {
    return (*(*v13 + 8))(v13);
  }

  return result;
}

void WebKit::RemoteAudioSourceProviderProxy::~RemoteAudioSourceProviderProxy(WebKit::RemoteAudioSourceProviderProxy *this, void *a2)
{
  *this = &unk_1F10FE1F8;
  v3 = *(this + 4);
  *(this + 4) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  v4 = *(this + 1);
  if (v4)
  {
    *(v4 + 8) = 0;
    v5 = *(this + 1);
    *(this + 1) = 0;
    if (v5)
    {
      if (atomic_fetch_add(v5, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v5);
        WTF::fastFree(v5, a2);
      }
    }
  }
}

{
  WebKit::RemoteAudioSourceProviderProxy::~RemoteAudioSourceProviderProxy(this, a2);

  WTF::fastFree(v2, v3);
}

WebKit::RemoteImageDecoderAVFProxy *WebKit::RemoteImageDecoderAVFProxy::RemoteImageDecoderAVFProxy(WebKit::RemoteImageDecoderAVFProxy *this, atomic_ullong *a2)
{
  *this = &unk_1F10F2070;
  *(this + 1) = 0;
  *(this + 2) = a2;
  v4 = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUConnectionToWebProcess,(WTF::DestructionThread)1>::controlBlock(a2 + 2);
  *(this + 3) = WTF::ThreadSafeWeakPtrControlBlock::weakRef(v4);
  *(this + 4) = 0;
  WTF::MachSendRight::MachSendRight((this + 40), (a2 + 12));
  return this;
}

atomic_ullong *WebKit::RemoteImageDecoderAVFProxy::ref(WebKit::RemoteImageDecoderAVFProxy *this)
{
  v2 = *(this + 3);
  if (v2)
  {
    WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::GPUConnectionToWebProcess>(v2, *(this + 2), &v7);
    v3 = v7;
  }

  else
  {
    v3 = 0;
    v7 = 0;
  }

  while (1)
  {
    v4 = *(v3 + 16);
    if ((v4 & 1) == 0)
    {
      break;
    }

    v5 = *(v3 + 16);
    atomic_compare_exchange_strong_explicit((v3 + 16), &v5, v4 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v5 == v4)
    {
      v7 = 0;
      return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUConnectionToWebProcess,(WTF::DestructionThread)1>::deref((v3 + 16));
    }
  }

  result = WTF::ThreadSafeWeakPtrControlBlock::strongRef(*(v3 + 16));
  v3 = v7;
  v7 = 0;
  if (!v3)
  {
    return result;
  }

  return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUConnectionToWebProcess,(WTF::DestructionThread)1>::deref((v3 + 16));
}

atomic_ullong *WebKit::RemoteImageDecoderAVFProxy::deref(WebKit::RemoteImageDecoderAVFProxy *this)
{
  WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::GPUConnectionToWebProcess>(*(this + 3), *(this + 2), &v3);
  result = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUConnectionToWebProcess,(WTF::DestructionThread)1>::deref((v3 + 16));
  v2 = v3;
  v3 = 0;
  if (v2)
  {
    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUConnectionToWebProcess,(WTF::DestructionThread)1>::deref((v2 + 16));
  }

  return result;
}

atomic_uchar **WebKit::RemoteImageDecoderAVFProxy::createDecoder(uint64_t a1, IPC::SharedBufferReference *this, uint64_t a3, uint64_t *a4)
{
  if (*this || *(this + 1))
  {
    IPC::SharedBufferReference::unsafeBuffer(this, &v39);
    v6 = 0;
    v7 = v39;
    v39 = 0;
  }

  else
  {
    v7 = WTF::fastMalloc(0x40);
    WebCore::SharedBuffer::SharedBuffer(v7);
    v6 = 1;
  }

  WTF::MachSendRight::MachSendRight(v38, (a1 + 40));
  WebCore::ImageDecoderAVFObjC::create();
  WTF::MachSendRight::~MachSendRight(v38);
  if (atomic_fetch_add(v7 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v7 + 2);
    (*(*v7 + 8))(v7);
    if (v6)
    {
      goto LABEL_8;
    }
  }

  else if (v6)
  {
    goto LABEL_8;
  }

  v8 = v39;
  v39 = 0;
  if (v8 && atomic_fetch_add(v8 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v8 + 2);
    (*(*v8 + 8))(v8);
  }

LABEL_8:
  LOBYTE(v36) = 0;
  v37 = 0;
  if (!v40)
  {
    goto LABEL_41;
  }

  IdentifierInternal = WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>::generateIdentifierInternal();
  v11 = v40;
  if (v40)
  {
    while (1)
    {
      v12 = *(v11 + 8);
      if ((v12 & 1) == 0)
      {
        break;
      }

      v13 = *(v11 + 8);
      atomic_compare_exchange_strong_explicit((v11 + 8), &v13, v12 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v13 == v12)
      {
        goto LABEL_14;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*(v11 + 8));
  }

LABEL_14:
  if (IdentifierInternal == -1 || !IdentifierInternal)
  {
    __break(0xC471u);
    JUMPOUT(0x19DBE8D04);
  }

  v14 = *(a1 + 32);
  if (!v14)
  {
    WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ImageDecoderIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ImageDecoderIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebCore::ImageDecoderAVFObjC,WTF::RawPtrTraits<WebCore::ImageDecoderAVFObjC>,WTF::DefaultRefDerefTraits<WebCore::ImageDecoderAVFObjC>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ImageDecoderIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebCore::ImageDecoderAVFObjC,WTF::RawPtrTraits<WebCore::ImageDecoderAVFObjC>,WTF::DefaultRefDerefTraits<WebCore::ImageDecoderAVFObjC>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ImageDecoderIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ImageDecoderIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebCore::ImageDecoderAVFObjC,WTF::RawPtrTraits<WebCore::ImageDecoderAVFObjC>,WTF::DefaultRefDerefTraits<WebCore::ImageDecoderAVFObjC>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ImageDecoderIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ImageDecoderIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RefPtr<WebCore::ImageDecoderAVFObjC,WTF::RawPtrTraits<WebCore::ImageDecoderAVFObjC>,WTF::DefaultRefDerefTraits<WebCore::ImageDecoderAVFObjC>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ImageDecoderIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand((a1 + 32));
    v14 = *(a1 + 32);
  }

  v15 = *(v14 - 8);
  v16 = (IdentifierInternal + ~(IdentifierInternal << 32)) ^ ((IdentifierInternal + ~(IdentifierInternal << 32)) >> 22);
  v17 = 9 * ((v16 + ~(v16 << 13)) ^ ((v16 + ~(v16 << 13)) >> 8));
  v18 = (v17 ^ (v17 >> 15)) + ~((v17 ^ (v17 >> 15)) << 27);
  v19 = v15 & ((v18 >> 31) ^ v18);
  v20 = (v14 + 16 * v19);
  v21 = *v20;
  if (*v20)
  {
    v22 = 0;
    v23 = 1;
    while (v21 != IdentifierInternal)
    {
      if (v21 == -1)
      {
        v22 = v20;
      }

      v19 = (v19 + v23) & v15;
      v20 = (v14 + 16 * v19);
      v21 = *v20;
      ++v23;
      if (!*v20)
      {
        if (v22)
        {
          *v22 = 0;
          v22[1] = 0;
          --*(*(a1 + 32) - 16);
          v20 = v22;
        }

        goto LABEL_26;
      }
    }

    if (v11)
    {
      WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::ImageDecoder,(WTF::DestructionThread)0>::deref((v11 + 8), v9);
    }

    goto LABEL_36;
  }

LABEL_26:
  v24 = v20[1];
  *v20 = IdentifierInternal;
  v20[1] = v11;
  if (v24)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::ImageDecoder,(WTF::DestructionThread)0>::deref((v24 + 8), v9);
  }

  v25 = *(a1 + 32);
  if (v25)
  {
    v26 = *(v25 - 12) + 1;
  }

  else
  {
    v26 = 1;
  }

  *(v25 - 12) = v26;
  v27 = (*(v25 - 16) + v26);
  v28 = *(v25 - 4);
  if (v28 > 0x400)
  {
    if (v28 > 2 * v27)
    {
      goto LABEL_36;
    }

    goto LABEL_35;
  }

  if (3 * v28 <= 4 * v27)
  {
LABEL_35:
    WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ImageDecoderIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ImageDecoderIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebCore::ImageDecoderAVFObjC,WTF::RawPtrTraits<WebCore::ImageDecoderAVFObjC>,WTF::DefaultRefDerefTraits<WebCore::ImageDecoderAVFObjC>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ImageDecoderIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebCore::ImageDecoderAVFObjC,WTF::RawPtrTraits<WebCore::ImageDecoderAVFObjC>,WTF::DefaultRefDerefTraits<WebCore::ImageDecoderAVFObjC>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ImageDecoderIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ImageDecoderIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebCore::ImageDecoderAVFObjC,WTF::RawPtrTraits<WebCore::ImageDecoderAVFObjC>,WTF::DefaultRefDerefTraits<WebCore::ImageDecoderAVFObjC>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ImageDecoderIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ImageDecoderIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RefPtr<WebCore::ImageDecoderAVFObjC,WTF::RawPtrTraits<WebCore::ImageDecoderAVFObjC>,WTF::DefaultRefDerefTraits<WebCore::ImageDecoderAVFObjC>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ImageDecoderIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand((a1 + 32));
  }

LABEL_36:
  WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded((a1 + 8), a1);
  v29 = *(a1 + 8);
  atomic_fetch_add(v29, 1u);
  v30 = WTF::fastMalloc(0x18);
  *v30 = &unk_1F10FE940;
  v30[1] = v29;
  v30[2] = IdentifierInternal;
  v35 = v30;
  WebCore::ImageDecoderAVFObjC::setEncodedDataStatusChangeCallback();
  if (v35)
  {
    (*(*v35 + 8))(v35);
  }

  if ((v37 & 1) == 0)
  {
    v37 = 1;
  }

  v36 = IdentifierInternal;
LABEL_41:
  v31 = *a4;
  *a4 = 0;
  (*(*v31 + 16))(v31, &v36);
  result = (*(*v31 + 8))(v31);
  v34 = v40;
  v40 = 0;
  if (v34)
  {
    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::ImageDecoder,(WTF::DestructionThread)0>::deref((v34 + 8), v33);
  }

  return result;
}

void WebKit::RemoteImageDecoderAVFProxy::deleteDecoder(uint64_t *a1, void *a2)
{
  v3 = a1 + 4;
  v2 = a1[4];
  if (v2)
  {
    if (a2 == -1)
    {
      __break(0xC471u);
      JUMPOUT(0x19DBE8F28);
    }

    if (!a2)
    {
      __break(0xC471u);
      JUMPOUT(0x19DBE8F48);
    }

    v5 = *(v2 - 8);
    v6 = (a2 + ~(a2 << 32)) ^ ((a2 + ~(a2 << 32)) >> 22);
    v7 = 9 * ((v6 + ~(v6 << 13)) ^ ((v6 + ~(v6 << 13)) >> 8));
    v8 = (v7 ^ (v7 >> 15)) + ~((v7 ^ (v7 >> 15)) << 27);
    v9 = v5 & ((v8 >> 31) ^ v8);
    v10 = *(v2 + 16 * v9);
    if (v10 == a2)
    {
LABEL_8:
      if (v10 != a2)
      {
        v14 = 1;
        while (v10)
        {
          v9 = (v9 + v14) & v5;
          v10 = *(v2 + 16 * v9);
          ++v14;
          if (v10 == a2)
          {
            goto LABEL_14;
          }
        }

        v9 = *(v2 - 4);
      }

LABEL_14:
      if (v9 != *(v2 - 4))
      {
        v15 = (v2 + 16 * v9);
        v16 = v15[1];
        v15[1] = 0;
        v17 = *v3;
        if (!*v3 || (v17 += 2 * *(v17 - 1), v17 != v15))
        {
          if (v17 != v15)
          {
            *v15 = -1;
            v15[1] = 0;
            v18 = *v3;
            v19 = vadd_s32(*(*v3 - 16), 0xFFFFFFFF00000001);
            *(v18 - 2) = v19;
            v20 = *(v18 - 1);
            if (6 * v19.i32[1] < v20 && v20 >= 9)
            {
              WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ImageDecoderIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ImageDecoderIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebCore::ImageDecoderAVFObjC,WTF::RawPtrTraits<WebCore::ImageDecoderAVFObjC>,WTF::DefaultRefDerefTraits<WebCore::ImageDecoderAVFObjC>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ImageDecoderIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebCore::ImageDecoderAVFObjC,WTF::RawPtrTraits<WebCore::ImageDecoderAVFObjC>,WTF::DefaultRefDerefTraits<WebCore::ImageDecoderAVFObjC>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ImageDecoderIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ImageDecoderIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebCore::ImageDecoderAVFObjC,WTF::RawPtrTraits<WebCore::ImageDecoderAVFObjC>,WTF::DefaultRefDerefTraits<WebCore::ImageDecoderAVFObjC>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ImageDecoderIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ImageDecoderIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RefPtr<WebCore::ImageDecoderAVFObjC,WTF::RawPtrTraits<WebCore::ImageDecoderAVFObjC>,WTF::DefaultRefDerefTraits<WebCore::ImageDecoderAVFObjC>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ImageDecoderIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(a1 + 4, v20 >> 1);
            }
          }
        }

        if (v16)
        {
          WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::ImageDecoder,(WTF::DestructionThread)0>::deref((v16 + 8), a2);
        }
      }

      v22 = a1[3];
      if (v22)
      {
        WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::GPUConnectionToWebProcess>(v22, a1[2], &v24);
        v23 = v24;
        if (v24)
        {
          if (*v3 && *(*v3 - 12))
          {
            v24 = 0;
          }

          else
          {
            WebKit::GPUProcess::tryExitIfUnusedAndUnderMemoryPressure(*(v24 + 80));
            v23 = v24;
            v24 = 0;
            if (!v23)
            {
              return;
            }
          }

          WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUConnectionToWebProcess,(WTF::DestructionThread)1>::deref((v23 + 16));
        }
      }
    }

    else
    {
      v11 = 1;
      v12 = *(v2 + 16 * v9);
      v13 = v9;
      while (v12)
      {
        v13 = (v13 + v11) & v5;
        v12 = *(v2 + 16 * v13);
        ++v11;
        if (v12 == a2)
        {
          goto LABEL_8;
        }
      }
    }
  }
}

uint64_t *WebKit::RemoteImageDecoderAVFProxy::setExpectedContentSize(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  result = (a1 + 32);
  v3 = v4;
  if (v4)
  {
    if (a2 == -1 || !a2)
    {
      __break(0xC471u);
      JUMPOUT(0x19DBE90E0);
    }

    v5 = *(v3 - 8);
    v6 = (~(a2 << 32) + a2) ^ ((~(a2 << 32) + a2) >> 22);
    v7 = 9 * ((v6 + ~(v6 << 13)) ^ ((v6 + ~(v6 << 13)) >> 8));
    v8 = (v7 ^ (v7 >> 15)) + ~((v7 ^ (v7 >> 15)) << 27);
    v9 = v5 & ((v8 >> 31) ^ v8);
    v10 = *(v3 + 16 * v9);
    if (v10 == a2)
    {
LABEL_8:
      v12 = WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ImageDecoderIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebCore::ImageDecoderAVFObjC,WTF::RawPtrTraits<WebCore::ImageDecoderAVFObjC>,WTF::DefaultRefDerefTraits<WebCore::ImageDecoderAVFObjC>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ImageDecoderIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ImageDecoderIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RefPtr<WebCore::ImageDecoderAVFObjC,WTF::RawPtrTraits<WebCore::ImageDecoderAVFObjC>,WTF::DefaultRefDerefTraits<WebCore::ImageDecoderAVFObjC>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ImageDecoderIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebCore::ImageDecoderAVFObjC,WTF::RawPtrTraits<WebCore::ImageDecoderAVFObjC>,WTF::DefaultRefDerefTraits<WebCore::ImageDecoderAVFObjC>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ImageDecoderIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ImageDecoderIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RefPtr<WebCore::ImageDecoderAVFObjC,WTF::RawPtrTraits<WebCore::ImageDecoderAVFObjC>,WTF::DefaultRefDerefTraits<WebCore::ImageDecoderAVFObjC>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ImageDecoderIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::ObjectIdentifierGeneric<WebCore::ImageDecoderIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(result, a2);
      if (v12)
      {
        v13 = v12;
        v14 = (v12 + 8);
        while (1)
        {
          v15 = *v14;
          if ((*v14 & 1) == 0)
          {
            break;
          }

          v16 = *v14;
          atomic_compare_exchange_strong_explicit(v14, &v16, v15 + 2, memory_order_relaxed, memory_order_relaxed);
          if (v16 == v15)
          {
            goto LABEL_15;
          }
        }

        WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v14);
LABEL_15:
        WebCore::ImageDecoderAVFObjC::setExpectedContentSize(v13);

        return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::ImageDecoder,(WTF::DestructionThread)0>::deref(v14, v17);
      }

      else
      {

        return WebCore::ImageDecoderAVFObjC::setExpectedContentSize(0);
      }
    }

    else
    {
      v11 = 1;
      while (v10)
      {
        v9 = (v9 + v11) & v5;
        v10 = *(v3 + 16 * v9);
        ++v11;
        if (v10 == a2)
        {
          goto LABEL_8;
        }
      }
    }
  }

  return result;
}

WTF *WebKit::RemoteImageDecoderAVFProxy::setData(uint64_t a1, uint64_t a2, IPC::SharedBufferReference *a3, uint64_t a4, uint64_t *a5)
{
  v8 = *(a1 + 32);
  v6 = (a1 + 32);
  v7 = v8;
  if (v8)
  {
    if (a2 == -1 || !a2)
    {
      __break(0xC471u);
      JUMPOUT(0x19DBE947CLL);
    }

    v10 = *(v7 - 8);
    v11 = (~(a2 << 32) + a2) ^ ((~(a2 << 32) + a2) >> 22);
    v12 = 9 * ((v11 + ~(v11 << 13)) ^ ((v11 + ~(v11 << 13)) >> 8));
    v13 = (v12 ^ (v12 >> 15)) + ~((v12 ^ (v12 >> 15)) << 27);
    v14 = v10 & ((v13 >> 31) ^ v13);
    v15 = *(v7 + 16 * v14);
    if (v15 != a2)
    {
      v16 = 1;
      while (v15)
      {
        v14 = (v14 + v16) & v10;
        v15 = *(v7 + 16 * v14);
        ++v16;
        if (v15 == a2)
        {
          goto LABEL_8;
        }
      }

      goto LABEL_12;
    }

LABEL_8:
    v17 = WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ImageDecoderIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebCore::ImageDecoderAVFObjC,WTF::RawPtrTraits<WebCore::ImageDecoderAVFObjC>,WTF::DefaultRefDerefTraits<WebCore::ImageDecoderAVFObjC>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ImageDecoderIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ImageDecoderIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RefPtr<WebCore::ImageDecoderAVFObjC,WTF::RawPtrTraits<WebCore::ImageDecoderAVFObjC>,WTF::DefaultRefDerefTraits<WebCore::ImageDecoderAVFObjC>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ImageDecoderIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebCore::ImageDecoderAVFObjC,WTF::RawPtrTraits<WebCore::ImageDecoderAVFObjC>,WTF::DefaultRefDerefTraits<WebCore::ImageDecoderAVFObjC>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ImageDecoderIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ImageDecoderIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RefPtr<WebCore::ImageDecoderAVFObjC,WTF::RawPtrTraits<WebCore::ImageDecoderAVFObjC>,WTF::DefaultRefDerefTraits<WebCore::ImageDecoderAVFObjC>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ImageDecoderIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::ObjectIdentifierGeneric<WebCore::ImageDecoderIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(v6, a2);
    v18 = v17;
    if (v17)
    {
      while (1)
      {
        v19 = *(v17 + 8);
        if ((v19 & 1) == 0)
        {
          break;
        }

        v20 = *(v17 + 8);
        atomic_compare_exchange_strong_explicit((v17 + 8), &v20, v19 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v20 == v19)
        {
          goto LABEL_16;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*(v17 + 8));
    }

LABEL_16:
    if (*a3 || *(a3 + 1))
    {
      IPC::SharedBufferReference::unsafeBuffer(a3, &v33);
      v24 = 0;
      v25 = v33;
      v33 = 0;
    }

    else
    {
      v25 = WTF::fastMalloc(0x40);
      WebCore::SharedBuffer::SharedBuffer(v25);
      v24 = 1;
    }

    WebCore::ImageDecoderAVFObjC::setData();
    if (atomic_fetch_add(v25 + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v25 + 2);
      (*(*v25 + 8))(v25);
      if ((v24 & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    else if ((v24 & 1) == 0)
    {
LABEL_20:
      v26 = v33;
      v33 = 0;
      if (v26 && atomic_fetch_add(v26 + 2, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v26 + 2);
        (*(*v26 + 8))(v26);
      }
    }

    v27 = WebCore::ImageDecoderAVFObjC::frameCount(v18);
    LOBYTE(v34) = 0;
    v36 = 0;
    if (v27)
    {
      WebCore::ImageDecoderAVFObjC::frameInfos(v32, v18);
      v34 = v32[0];
      v35 = v32[1];
      v36 = 1;
    }

    v32[0] = WebCore::ImageDecoderAVFObjC::size(v18);
    v28 = *(v18 + 40) != 0;
    v29 = *a5;
    *a5 = 0;
    (*(*v29 + 16))(v29, v27, v32, v28, &v34);
    (*(*v29 + 8))(v29);
    if (v36 == 1)
    {
      v31 = v34;
      if (v34)
      {
        v34 = 0;
        LODWORD(v35) = 0;
        WTF::fastFree(v31, v30);
      }
    }

    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::ImageDecoder,(WTF::DestructionThread)0>::deref((v18 + 8), v30);
  }

LABEL_12:
  v32[0] = 0;
  LOBYTE(v34) = 0;
  v36 = 0;
  v21 = *a5;
  *a5 = 0;
  (*(*v21 + 16))(v21, 0, v32, 0, &v34);
  result = (*(*v21 + 8))(v21);
  if (v36 == 1)
  {
    result = v34;
    if (v34)
    {
      v34 = 0;
      LODWORD(v35) = 0;
      return WTF::fastFree(result, v23);
    }
  }

  return result;
}

void WebKit::RemoteImageDecoderAVFProxy::createFrameImageAtIndex(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v37[0] = 0;
  v40 = 0;
  v5 = WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ImageDecoderIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebCore::ImageDecoderAVFObjC,WTF::RawPtrTraits<WebCore::ImageDecoderAVFObjC>,WTF::DefaultRefDerefTraits<WebCore::ImageDecoderAVFObjC>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ImageDecoderIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ImageDecoderIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RefPtr<WebCore::ImageDecoderAVFObjC,WTF::RawPtrTraits<WebCore::ImageDecoderAVFObjC>,WTF::DefaultRefDerefTraits<WebCore::ImageDecoderAVFObjC>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ImageDecoderIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebCore::ImageDecoderAVFObjC,WTF::RawPtrTraits<WebCore::ImageDecoderAVFObjC>,WTF::DefaultRefDerefTraits<WebCore::ImageDecoderAVFObjC>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ImageDecoderIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ImageDecoderIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RefPtr<WebCore::ImageDecoderAVFObjC,WTF::RawPtrTraits<WebCore::ImageDecoderAVFObjC>,WTF::DefaultRefDerefTraits<WebCore::ImageDecoderAVFObjC>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ImageDecoderIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::ObjectIdentifierGeneric<WebCore::ImageDecoderIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>((a1 + 32), a2);
  if (v5)
  {
    v6 = (v5 + 8);
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
        goto LABEL_7;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v6);
LABEL_7:
    v23[0] = 1;
    v24 = 0;
    BYTE4(v25) = 0;
    WebCore::ImageDecoderAVFObjC::createFrameImageAtIndex();
    if (WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
    {
      __break(0xC471u);
      return;
    }

    WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
    WebCore::NativeImage::createTransient();
    v10 = v30[0];
    v30[0] = 0;
    if (v10)
    {
      CFRelease(v10);
    }

    if (v36)
    {
      v35 = WebCore::NativeImage::size(v36);
      WebCore::NativeImage::colorSpace(v30, v36);
      v11 = v30[0];
      v30[0] = 0;
      cf = v11;
      v33 = 1;
      WebCore::NativeImage::headroom(v36);
      MEMORY[0x19EB0C920](v23, &v35, &cf, 0);
      WebCore::ShareableBitmap::create();
      if (v26 == 1)
      {
        v12 = v25;
        v25 = 0;
        if (v12)
        {
          CFRelease(v12);
        }
      }

      if (v33 == 1)
      {
        v13 = cf;
        cf = 0;
        if (v13)
        {
          CFRelease(v13);
        }
      }

      v14 = v30[0];
      v30[0] = 0;
      if (v14)
      {
        CFRelease(v14);
      }

      if (v34)
      {
        WebCore::ShareableBitmap::createGraphicsContext(&v31, v34);
        if (v31)
        {
          v30[0] = 0;
          v30[1] = vcvt_f32_s32(v35);
          WebCore::GraphicsContext::drawNativeImage();
          WebCore::ShareableBitmap::createHandle();
          std::__optional_storage_base<WebCore::ShareableBitmapHandle,false>::__assign_from[abi:sn200100]<std::__optional_move_assign_base<WebCore::ShareableBitmapHandle,false>>(v37, v23);
          if (v29 == 1)
          {
            if (v28 == 1)
            {
              v15 = v27;
              v27 = 0;
              if (v15)
              {
                CFRelease(v15);
              }
            }

            WTF::MachSendRight::~MachSendRight(v23);
          }

          v16 = v31;
          v31 = 0;
          if (v16)
          {
            (*(*v16 + 8))(v16);
          }
        }

        v17 = v34;
        v34 = 0;
        if (v17)
        {
          WTF::ThreadSafeRefCounted<WebCore::ShareableBitmap,(WTF::DestructionThread)0>::deref(v17, v9);
        }
      }

      v18 = v36;
      v36 = 0;
      if (v18)
      {
        do
        {
          v19 = v18[1];
          if ((v19 & 1) == 0)
          {
            WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebCore::RenderingResource,(WTF::DestructionThread)0>(v18[1], v9);
            goto LABEL_35;
          }

          v20 = v18[1];
          atomic_compare_exchange_strong_explicit(v18 + 1, &v20, (v19 - 2), memory_order_relaxed, memory_order_relaxed);
        }

        while (v20 != v19);
        if (v19 == 3)
        {
          (*(*v18 + 1))(v18);
        }
      }
    }

LABEL_35:
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::ImageDecoder,(WTF::DestructionThread)0>::deref(v6, v9);
  }

  v21 = *a4;
  *a4 = 0;
  (*(*v21 + 16))(v21, v37);
  (*(*v21 + 8))(v21);
  if (v40 == 1)
  {
    if (v39 == 1)
    {
      v22 = v38;
      v38 = 0;
      if (v22)
      {
        CFRelease(v22);
      }
    }

    WTF::MachSendRight::~MachSendRight(v37);
  }
}

atomic_uchar **WebKit::RemoteImageDecoderAVFProxy::clearFrameBufferCache(uint64_t a1, uint64_t a2)
{
  result = WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ImageDecoderIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebCore::ImageDecoderAVFObjC,WTF::RawPtrTraits<WebCore::ImageDecoderAVFObjC>,WTF::DefaultRefDerefTraits<WebCore::ImageDecoderAVFObjC>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ImageDecoderIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ImageDecoderIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RefPtr<WebCore::ImageDecoderAVFObjC,WTF::RawPtrTraits<WebCore::ImageDecoderAVFObjC>,WTF::DefaultRefDerefTraits<WebCore::ImageDecoderAVFObjC>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ImageDecoderIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebCore::ImageDecoderAVFObjC,WTF::RawPtrTraits<WebCore::ImageDecoderAVFObjC>,WTF::DefaultRefDerefTraits<WebCore::ImageDecoderAVFObjC>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ImageDecoderIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ImageDecoderIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RefPtr<WebCore::ImageDecoderAVFObjC,WTF::RawPtrTraits<WebCore::ImageDecoderAVFObjC>,WTF::DefaultRefDerefTraits<WebCore::ImageDecoderAVFObjC>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ImageDecoderIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::ObjectIdentifierGeneric<WebCore::ImageDecoderIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>((a1 + 32), a2);
  if (result)
  {
    v3 = result;
    v4 = (result + 1);
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
        goto LABEL_7;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v4);
LABEL_7:
    WebCore::ImageDecoderAVFObjC::frameCount(v3);
    WebCore::ImageDecoderAVFObjC::clearFrameBufferCache(v3);

    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::ImageDecoder,(WTF::DestructionThread)0>::deref(v4, v7);
  }

  return result;
}

WebKit::RemoteMediaSessionHelperProxy *WebKit::RemoteMediaSessionHelperProxy::RemoteMediaSessionHelperProxy(WebKit::RemoteMediaSessionHelperProxy *this, atomic_ullong *a2)
{
  *this = &unk_1F10FE220;
  *(this + 1) = 0;
  *(this + 2) = &unk_1F10FE2A0;
  *(this + 3) = 0;
  *(this + 32) = 0;
  *(this + 5) = a2;
  v3 = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUConnectionToWebProcess,(WTF::DestructionThread)1>::controlBlock(a2 + 2);
  v4 = WTF::ThreadSafeWeakPtrControlBlock::weakRef(v3);
  *(this + 6) = v4;
  WebCore::MediaSessionHelper::sharedHelper(v4);
  WebCore::MediaSessionHelper::addClient();
  return this;
}

void WebKit::RemoteMediaSessionHelperProxy::~RemoteMediaSessionHelperProxy(WebKit::RemoteMediaSessionHelperProxy *this)
{
  v1 = this;
  *this = &unk_1F10FE220;
  *(this + 2) = &unk_1F10FE2A0;
  if (*(this + 32) == 1)
  {
    *(this + 32) = 0;
    v2 = WebCore::MediaSessionHelper::sharedHelper(this);
    this = WebCore::MediaSessionHelper::stopMonitoringWirelessRoutes(v2);
  }

  WebCore::MediaSessionHelper::sharedHelper(this);
  WebCore::MediaSessionHelper::removeClient();
  v4 = *(v1 + 6);
  *(v1 + 6) = 0;
  if (v4)
  {
    WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v4, v3);
  }

  *(v1 + 2) = &unk_1F10EA5E0;
  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::~WeakPtrFactory(v1 + 3, v3);
  v6 = *(v1 + 1);
  if (v6)
  {
    *(v6 + 8) = 0;
    v7 = *(v1 + 1);
    *(v1 + 1) = 0;
    if (v7)
    {
      if (atomic_fetch_add(v7, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v7);
        WTF::fastFree(v7, v5);
      }
    }
  }
}

{
  WebKit::RemoteMediaSessionHelperProxy::~RemoteMediaSessionHelperProxy(this);

  bmalloc::api::tzoneFree(v1, v2);
}

void non-virtual thunk toWebKit::RemoteMediaSessionHelperProxy::~RemoteMediaSessionHelperProxy(WebKit::RemoteMediaSessionHelperProxy *this)
{
  WebKit::RemoteMediaSessionHelperProxy::~RemoteMediaSessionHelperProxy((this - 16));
}

{
  WebKit::RemoteMediaSessionHelperProxy::~RemoteMediaSessionHelperProxy((this - 16));

  bmalloc::api::tzoneFree(v1, v2);
}

atomic_ullong *WebKit::RemoteMediaSessionHelperProxy::ref(WebKit::RemoteMediaSessionHelperProxy *this)
{
  v2 = *(this + 6);
  if (v2)
  {
    WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::GPUConnectionToWebProcess>(v2, *(this + 5), &v7);
    v3 = v7;
  }

  else
  {
    v3 = 0;
    v7 = 0;
  }

  while (1)
  {
    v4 = *(v3 + 16);
    if ((v4 & 1) == 0)
    {
      break;
    }

    v5 = *(v3 + 16);
    atomic_compare_exchange_strong_explicit((v3 + 16), &v5, v4 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v5 == v4)
    {
      v7 = 0;
      return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUConnectionToWebProcess,(WTF::DestructionThread)1>::deref((v3 + 16));
    }
  }

  result = WTF::ThreadSafeWeakPtrControlBlock::strongRef(*(v3 + 16));
  v3 = v7;
  v7 = 0;
  if (!v3)
  {
    return result;
  }

  return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUConnectionToWebProcess,(WTF::DestructionThread)1>::deref((v3 + 16));
}

atomic_ullong *WebKit::RemoteMediaSessionHelperProxy::deref(WebKit::RemoteMediaSessionHelperProxy *this)
{
  WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::GPUConnectionToWebProcess>(*(this + 6), *(this + 5), &v3);
  result = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUConnectionToWebProcess,(WTF::DestructionThread)1>::deref((v3 + 16));
  v2 = v3;
  v3 = 0;
  if (v2)
  {
    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUConnectionToWebProcess,(WTF::DestructionThread)1>::deref((v2 + 16));
  }

  return result;
}

atomic_uchar *WebKit::RemoteMediaSessionHelperProxy::uiApplicationWillEnterForeground(uint64_t a1, char a2)
{
  result = *(a1 + 48);
  if (result)
  {
    v17 = v2;
    v18 = v3;
    result = WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::GPUConnectionToWebProcess>(result, *(a1 + 40), &v14);
    if (v14)
    {
      v8 = *(v14 + 56);
      v9 = IPC::Encoder::operator new(0x238, v7);
      *v9 = 1493;
      *(v9 + 68) = 0;
      *(v9 + 70) = 0;
      *(v9 + 69) = 0;
      *(v9 + 2) = 0;
      *(v9 + 3) = 0;
      *(v9 + 1) = 0;
      IPC::Encoder::encodeHeader(v9);
      v15 = v9;
      v16 = a2;
      IPC::Encoder::operator<<<BOOL>(v9, &v16);
      IPC::Connection::sendMessageImpl(v8, &v15, 0, 0);
      result = v15;
      v15 = 0;
      if (result)
      {
        IPC::Encoder::~Encoder(result, v10);
        result = bmalloc::api::tzoneFree(v12, v13);
      }

      v11 = v14;
      v14 = 0;
      if (v11)
      {
        return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUConnectionToWebProcess,(WTF::DestructionThread)1>::deref((v11 + 16));
      }
    }
  }

  return result;
}

atomic_uchar *WebKit::RemoteMediaSessionHelperProxy::uiApplicationDidEnterBackground(uint64_t a1, char a2)
{
  result = *(a1 + 48);
  if (result)
  {
    v17 = v2;
    v18 = v3;
    result = WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::GPUConnectionToWebProcess>(result, *(a1 + 40), &v14);
    if (v14)
    {
      v8 = *(v14 + 56);
      v9 = IPC::Encoder::operator new(0x238, v7);
      *v9 = 1491;
      *(v9 + 68) = 0;
      *(v9 + 70) = 0;
      *(v9 + 69) = 0;
      *(v9 + 2) = 0;
      *(v9 + 3) = 0;
      *(v9 + 1) = 0;
      IPC::Encoder::encodeHeader(v9);
      v15 = v9;
      v16 = a2;
      IPC::Encoder::operator<<<BOOL>(v9, &v16);
      IPC::Connection::sendMessageImpl(v8, &v15, 0, 0);
      result = v15;
      v15 = 0;
      if (result)
      {
        IPC::Encoder::~Encoder(result, v10);
        result = bmalloc::api::tzoneFree(v12, v13);
      }

      v11 = v14;
      v14 = 0;
      if (v11)
      {
        return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUConnectionToWebProcess,(WTF::DestructionThread)1>::deref((v11 + 16));
      }
    }
  }

  return result;
}

atomic_uchar *WebKit::RemoteMediaSessionHelperProxy::uiApplicationWillBecomeInactive(WebKit::RemoteMediaSessionHelperProxy *this)
{
  result = *(this + 6);
  if (result)
  {
    v13[3] = v1;
    v13[4] = v2;
    result = WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::GPUConnectionToWebProcess>(result, *(this + 5), &v12);
    if (v12)
    {
      v6 = *(v12 + 56);
      v7 = IPC::Encoder::operator new(0x238, v5);
      *v7 = 1492;
      *(v7 + 68) = 0;
      *(v7 + 70) = 0;
      *(v7 + 69) = 0;
      *(v7 + 2) = 0;
      *(v7 + 3) = 0;
      *(v7 + 1) = 0;
      IPC::Encoder::encodeHeader(v7);
      v13[0] = v7;
      IPC::Connection::sendMessageImpl(v6, v13, 0, 0);
      result = v13[0];
      v13[0] = 0;
      if (result)
      {
        IPC::Encoder::~Encoder(result, v8);
        result = bmalloc::api::tzoneFree(v10, v11);
      }

      v9 = v12;
      v12 = 0;
      if (v9)
      {
        return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUConnectionToWebProcess,(WTF::DestructionThread)1>::deref((v9 + 16));
      }
    }
  }

  return result;
}

atomic_uchar *WebKit::RemoteMediaSessionHelperProxy::uiApplicationDidBecomeActive(WebKit::RemoteMediaSessionHelperProxy *this)
{
  result = *(this + 6);
  if (result)
  {
    v13[3] = v1;
    v13[4] = v2;
    result = WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::GPUConnectionToWebProcess>(result, *(this + 5), &v12);
    if (v12)
    {
      v6 = *(v12 + 56);
      v7 = IPC::Encoder::operator new(0x238, v5);
      *v7 = 1490;
      *(v7 + 68) = 0;
      *(v7 + 70) = 0;
      *(v7 + 69) = 0;
      *(v7 + 2) = 0;
      *(v7 + 3) = 0;
      *(v7 + 1) = 0;
      IPC::Encoder::encodeHeader(v7);
      v13[0] = v7;
      IPC::Connection::sendMessageImpl(v6, v13, 0, 0);
      result = v13[0];
      v13[0] = 0;
      if (result)
      {
        IPC::Encoder::~Encoder(result, v8);
        result = bmalloc::api::tzoneFree(v10, v11);
      }

      v9 = v12;
      v12 = 0;
      if (v9)
      {
        return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUConnectionToWebProcess,(WTF::DestructionThread)1>::deref((v9 + 16));
      }
    }
  }

  return result;
}

atomic_uchar *WebKit::RemoteMediaSessionHelperProxy::externalOutputDeviceAvailableDidChange(uint64_t a1, char a2)
{
  result = *(a1 + 48);
  if (result)
  {
    v17 = v2;
    v18 = v3;
    result = WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::GPUConnectionToWebProcess>(result, *(a1 + 40), &v14);
    if (v14)
    {
      v8 = *(v14 + 56);
      v9 = IPC::Encoder::operator new(0x238, v7);
      *v9 = 1494;
      *(v9 + 68) = 0;
      *(v9 + 70) = 0;
      *(v9 + 69) = 0;
      *(v9 + 2) = 0;
      *(v9 + 3) = 0;
      *(v9 + 1) = 0;
      IPC::Encoder::encodeHeader(v9);
      v15 = v9;
      v16 = a2;
      IPC::Encoder::operator<<<BOOL>(v9, &v16);
      IPC::Connection::sendMessageImpl(v8, &v15, 0, 0);
      result = v15;
      v15 = 0;
      if (result)
      {
        IPC::Encoder::~Encoder(result, v10);
        result = bmalloc::api::tzoneFree(v12, v13);
      }

      v11 = v14;
      v14 = 0;
      if (v11)
      {
        return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUConnectionToWebProcess,(WTF::DestructionThread)1>::deref((v11 + 16));
      }
    }
  }

  return result;
}

atomic_uchar *WebKit::RemoteMediaSessionHelperProxy::isPlayingToAutomotiveHeadUnitDidChange(uint64_t a1, char a2)
{
  result = *(a1 + 48);
  if (result)
  {
    v17 = v2;
    v18 = v3;
    result = WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::GPUConnectionToWebProcess>(result, *(a1 + 40), &v14);
    if (v14)
    {
      v8 = *(v14 + 56);
      v9 = IPC::Encoder::operator new(0x238, v7);
      *v9 = 1495;
      *(v9 + 68) = 0;
      *(v9 + 70) = 0;
      *(v9 + 69) = 0;
      *(v9 + 2) = 0;
      *(v9 + 3) = 0;
      *(v9 + 1) = 0;
      IPC::Encoder::encodeHeader(v9);
      v15 = v9;
      v16 = a2;
      IPC::Encoder::operator<<<BOOL>(v9, &v16);
      IPC::Connection::sendMessageImpl(v8, &v15, 0, 0);
      result = v15;
      v15 = 0;
      if (result)
      {
        IPC::Encoder::~Encoder(result, v10);
        result = bmalloc::api::tzoneFree(v12, v13);
      }

      v11 = v14;
      v14 = 0;
      if (v11)
      {
        return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUConnectionToWebProcess,(WTF::DestructionThread)1>::deref((v11 + 16));
      }
    }
  }

  return result;
}

atomic_uchar *WebKit::RemoteMediaSessionHelperProxy::activeAudioRouteDidChange(uint64_t a1, char a2)
{
  result = *(a1 + 48);
  if (result)
  {
    v17 = v2;
    v18 = v3;
    result = WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::GPUConnectionToWebProcess>(result, *(a1 + 40), &v14);
    if (v14)
    {
      v8 = *(v14 + 56);
      v9 = IPC::Encoder::operator new(0x238, v7);
      *v9 = 1487;
      *(v9 + 68) = 0;
      *(v9 + 70) = 0;
      *(v9 + 69) = 0;
      *(v9 + 2) = 0;
      *(v9 + 3) = 0;
      *(v9 + 1) = 0;
      IPC::Encoder::encodeHeader(v9);
      v15 = v9;
      v16 = a2;
      IPC::Encoder::operator<<<BOOL>(v9, &v16);
      IPC::Connection::sendMessageImpl(v8, &v15, 0, 0);
      result = v15;
      v15 = 0;
      if (result)
      {
        IPC::Encoder::~Encoder(result, v10);
        result = bmalloc::api::tzoneFree(v12, v13);
      }

      v11 = v14;
      v14 = 0;
      if (v11)
      {
        return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUConnectionToWebProcess,(WTF::DestructionThread)1>::deref((v11 + 16));
      }
    }
  }

  return result;
}

atomic_uchar *WebKit::RemoteMediaSessionHelperProxy::activeVideoRouteDidChange(uint64_t a1, char a2, uint64_t a3)
{
  result = *(a1 + 48);
  if (result)
  {
    v27 = v3;
    v28 = v4;
    result = WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::GPUConnectionToWebProcess>(result, *(a1 + 40), &v24);
    if (v24)
    {
      v9 = *(v24 + 56);
      v10 = (*(**a3 + 24))();
      WebKit::MediaPlaybackTargetContextSerialized::MediaPlaybackTargetContextSerialized(v20, v10);
      v12 = IPC::Encoder::operator new(0x238, v11);
      *v12 = 1489;
      *(v12 + 68) = 0;
      *(v12 + 70) = 0;
      *(v12 + 69) = 0;
      *(v12 + 2) = 0;
      *(v12 + 3) = 0;
      *(v12 + 1) = 0;
      IPC::Encoder::encodeHeader(v12);
      v25 = v12;
      v26 = a2;
      IPC::Encoder::operator<<<BOOL>(v12, &v26);
      IPC::ArgumentCoder<WebKit::MediaPlaybackTargetContextSerialized,void>::encode(v12, v20);
      IPC::Connection::sendMessageImpl(v9, &v25, 0, 0);
      v14 = v25;
      v25 = 0;
      if (v14)
      {
        IPC::Encoder::~Encoder(v14, v13);
        bmalloc::api::tzoneFree(v18, v19);
      }

      v15 = v23;
      v23 = 0;
      if (v15 && atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v15, v13);
      }

      v16 = v22;
      v22 = 0;
      if (v16 && atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v16, v13);
      }

      result = v21;
      v21 = 0;
      if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        result = WTF::StringImpl::destroy(result, v13);
      }

      v17 = v24;
      v24 = 0;
      if (v17)
      {
        return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUConnectionToWebProcess,(WTF::DestructionThread)1>::deref((v17 + 16));
      }
    }
  }

  return result;
}

atomic_uchar *WebKit::RemoteMediaSessionHelperProxy::activeAudioRouteSupportsSpatialPlaybackDidChange(uint64_t a1, char a2)
{
  result = *(a1 + 48);
  if (result)
  {
    v17 = v2;
    v18 = v3;
    result = WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::GPUConnectionToWebProcess>(result, *(a1 + 40), &v14);
    if (v14)
    {
      v8 = *(v14 + 56);
      v9 = IPC::Encoder::operator new(0x238, v7);
      *v9 = 1488;
      *(v9 + 68) = 0;
      *(v9 + 70) = 0;
      *(v9 + 69) = 0;
      *(v9 + 2) = 0;
      *(v9 + 3) = 0;
      *(v9 + 1) = 0;
      IPC::Encoder::encodeHeader(v9);
      v15 = v9;
      v16 = a2;
      IPC::Encoder::operator<<<BOOL>(v9, &v16);
      IPC::Connection::sendMessageImpl(v8, &v15, 0, 0);
      result = v15;
      v15 = 0;
      if (result)
      {
        IPC::Encoder::~Encoder(result, v10);
        result = bmalloc::api::tzoneFree(v12, v13);
      }

      v11 = v14;
      v14 = 0;
      if (v11)
      {
        return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUConnectionToWebProcess,(WTF::DestructionThread)1>::deref((v11 + 16));
      }
    }
  }

  return result;
}

atomic_uchar *WebKit::RemoteMediaSessionHelperProxy::sharedPreferencesForWebProcess@<X0>(WebKit::RemoteMediaSessionHelperProxy *this@<X0>, uint64_t a2@<X8>)
{
  result = *(this + 6);
  if (result && (result = WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::GPUConnectionToWebProcess>(result, *(this + 5), &v6), (v5 = v6) != 0))
  {
    *a2 = *(v6 + 336);
    *(a2 + 16) = *(v5 + 352);
    *(a2 + 24) = 1;
    v6 = 0;
    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUConnectionToWebProcess,(WTF::DestructionThread)1>::deref((v5 + 16));
  }

  else
  {
    *a2 = 0;
    *(a2 + 24) = 0;
  }

  return result;
}

uint64_t WebKit::RemoteSampleBufferDisplayLayerManager::RemoteSampleBufferDisplayLayerManager(uint64_t a1, uint64_t a2, __int128 *a3)
{
  *a1 = &unk_1F10FE2E8;
  *(a1 + 8) = 3;
  *(a1 + 16) = a2;
  v6 = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUConnectionToWebProcess,(WTF::DestructionThread)1>::controlBlock((a2 + 16));
  *(a1 + 24) = WTF::ThreadSafeWeakPtrControlBlock::weakRef(v6);
  v7 = *(a2 + 56);
  while (1)
  {
    v8 = *v7;
    if ((*v7 & 1) == 0)
    {
      break;
    }

    v16 = *v7;
    atomic_compare_exchange_strong_explicit(v7, &v16, v8 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v16 == v8)
    {
      goto LABEL_4;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v7);
LABEL_4:
  *(a1 + 32) = v7;
  v9 = *a3;
  *(a1 + 56) = *(a3 + 2);
  *(a1 + 40) = v9;
  v10 = WebKit::GPUProcess::videoMediaStreamTrackRendererQueue(*(a2 + 80));
  (*(*v10 + 32))(v10);
  *(a1 + 64) = v10;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  while (1)
  {
    v11 = *(a1 + 8);
    if ((v11 & 1) == 0)
    {
      break;
    }

    v15 = *(a1 + 8);
    atomic_compare_exchange_strong_explicit((a1 + 8), &v15, v11 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v15 == v11)
    {
      goto LABEL_7;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*(a1 + 8));
LABEL_7:
  *v17 = *a3;
  *&v17[15] = *(a3 + 15);
  v12 = WTF::fastMalloc(0x30);
  *v12 = &unk_1F10FE968;
  *(v12 + 8) = a1;
  *(v12 + 16) = a1;
  *(v12 + 40) = *&v17[16];
  *(v12 + 24) = *v17;
  v18 = v12;
  (*(*v10 + 48))(v10, &v18);
  v13 = v18;
  v18 = 0;
  if (v13)
  {
    (*(*v13 + 8))(v13);
  }

  return a1;
}

atomic_uchar *WebKit::RemoteSampleBufferDisplayLayerManager::startListeningForIPC(WebKit::RemoteSampleBufferDisplayLayerManager *this)
{
  result = *(this + 3);
  if (result)
  {
    result = WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::GPUConnectionToWebProcess>(result, *(this + 2), &v7);
    if (v7)
    {
      v3 = *(v7 + 56);
      while (1)
      {
        v4 = *v3;
        if ((*v3 & 1) == 0)
        {
          break;
        }

        v6 = *v3;
        atomic_compare_exchange_strong_explicit(v3, &v6, v4 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v6 == v4)
        {
          goto LABEL_7;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v3);
LABEL_7:
      IPC::Connection::addWorkQueueMessageReceiver(v3, 0x76, *(this + 8), this, 0);
      IPC::Connection::addWorkQueueMessageReceiver(v3, 0x77, *(this + 8), this, 0);
      result = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
      v5 = v7;
      v7 = 0;
      if (v5)
      {
        return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUConnectionToWebProcess,(WTF::DestructionThread)1>::deref((v5 + 16));
      }
    }
  }

  return result;
}

void WebKit::RemoteSampleBufferDisplayLayerManager::~RemoteSampleBufferDisplayLayerManager(WebKit::RemoteSampleBufferDisplayLayerManager *this, void *a2)
{
  v3 = *(this + 10);
  if (v3)
  {
    WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::SampleBufferDisplayLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::SampleBufferDisplayLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteSampleBufferDisplayLayer,WTF::RawPtrTraits<WebKit::RemoteSampleBufferDisplayLayer>,WTF::DefaultRefDerefTraits<WebKit::RemoteSampleBufferDisplayLayer>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::SampleBufferDisplayLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteSampleBufferDisplayLayer,WTF::RawPtrTraits<WebKit::RemoteSampleBufferDisplayLayer>,WTF::DefaultRefDerefTraits<WebKit::RemoteSampleBufferDisplayLayer>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::SampleBufferDisplayLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::SampleBufferDisplayLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteSampleBufferDisplayLayer,WTF::RawPtrTraits<WebKit::RemoteSampleBufferDisplayLayer>,WTF::DefaultRefDerefTraits<WebKit::RemoteSampleBufferDisplayLayer>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::SampleBufferDisplayLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::SampleBufferDisplayLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::RemoteSampleBufferDisplayLayer,WTF::RawPtrTraits<WebKit::RemoteSampleBufferDisplayLayer>,WTF::DefaultRefDerefTraits<WebKit::RemoteSampleBufferDisplayLayer>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::SampleBufferDisplayLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::deallocateTable(v3, a2);
  }

  v4 = *(this + 8);
  *(this + 8) = 0;
  if (v4)
  {
    (*(*v4 + 40))(v4);
  }

  v5 = *(this + 4);
  *(this + 4) = 0;
  if (v5)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v5);
  }

  v6 = *(this + 3);
  *(this + 3) = 0;
  if (v6)
  {
    WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v6, a2);
  }
}

{
  WebKit::RemoteSampleBufferDisplayLayerManager::~RemoteSampleBufferDisplayLayerManager(this, a2);

  bmalloc::api::tzoneFree(v2, v3);
}

atomic_uchar *WebKit::RemoteSampleBufferDisplayLayerManager::close(WebKit::RemoteSampleBufferDisplayLayerManager *this)
{
  result = *(this + 3);
  if (result)
  {
    result = WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::GPUConnectionToWebProcess>(result, *(this + 2), &v13);
    if (v13)
    {
      v3 = *(v13 + 56);
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
          goto LABEL_9;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v3);
LABEL_9:
      IPC::Connection::removeWorkQueueMessageReceiver(v3, 0x76u, 0);
      IPC::Connection::removeWorkQueueMessageReceiver(v3, 0x77u, 0);
      v6 = *(this + 8);
      while (1)
      {
        v7 = *(this + 1);
        if ((v7 & 1) == 0)
        {
          break;
        }

        v8 = *(this + 1);
        atomic_compare_exchange_strong_explicit(this + 1, &v8, v7 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v8 == v7)
        {
          goto LABEL_14;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*(this + 1));
LABEL_14:
      v9 = WTF::fastMalloc(0x18);
      *v9 = &unk_1F10FE990;
      v9[1] = this;
      v9[2] = this;
      v12 = v9;
      (*(*v6 + 48))(v6, &v12);
      v10 = v12;
      v12 = 0;
      if (v10)
      {
        (*(*v10 + 8))(v10);
      }

      result = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
      v11 = v13;
      v13 = 0;
      if (v11)
      {
        return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUConnectionToWebProcess,(WTF::DestructionThread)1>::deref((v11 + 16));
      }
    }
  }

  return result;
}

BOOL WebKit::RemoteSampleBufferDisplayLayerManager::dispatchMessage(WebKit::RemoteSampleBufferDisplayLayerManager *this, IPC::Connection *a2, IPC::Decoder *a3)
{
  v3 = *(a3 + 7) - 1;
  if (v3 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v6 = 0;
    v13 = *(a3 + 7);
    v7 = this + 72;
    atomic_compare_exchange_strong_explicit(this + 72, &v6, 1u, memory_order_acquire, memory_order_acquire);
    if (v6)
    {
      v12 = this;
      MEMORY[0x19EB01E30](this + 72);
      this = v12;
    }

    v8 = WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::SampleBufferDisplayLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteSampleBufferDisplayLayer,WTF::RawPtrTraits<WebKit::RemoteSampleBufferDisplayLayer>,WTF::DefaultRefDerefTraits<WebKit::RemoteSampleBufferDisplayLayer>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::SampleBufferDisplayLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::SampleBufferDisplayLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::RemoteSampleBufferDisplayLayer,WTF::RawPtrTraits<WebKit::RemoteSampleBufferDisplayLayer>,WTF::DefaultRefDerefTraits<WebKit::RemoteSampleBufferDisplayLayer>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::SampleBufferDisplayLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteSampleBufferDisplayLayer,WTF::RawPtrTraits<WebKit::RemoteSampleBufferDisplayLayer>,WTF::DefaultRefDerefTraits<WebKit::RemoteSampleBufferDisplayLayer>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::SampleBufferDisplayLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::SampleBufferDisplayLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::RemoteSampleBufferDisplayLayer,WTF::RawPtrTraits<WebKit::RemoteSampleBufferDisplayLayer>,WTF::DefaultRefDerefTraits<WebKit::RemoteSampleBufferDisplayLayer>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::SampleBufferDisplayLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::ObjectIdentifierGeneric<WebKit::SampleBufferDisplayLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(this + 10, &v13);
    if (v8)
    {
      v9 = (v8 + 4);
      atomic_fetch_add(v8 + 4, 1u);
      WebKit::RemoteSampleBufferDisplayLayer::didReceiveMessage(v8, a2, a3);
      WTF::ThreadSafeRefCounted<WebKit::RemoteSampleBufferDisplayLayer,(WTF::DestructionThread)2>::deref(v9);
    }

    v10 = 1;
    atomic_compare_exchange_strong_explicit(v7, &v10, 0, memory_order_release, memory_order_relaxed);
    if (v10 != 1)
    {
      WTF::Lock::unlockSlow(v7);
    }
  }

  return v3 < 0xFFFFFFFFFFFFFFFELL;
}

uint64_t WebKit::RemoteSampleBufferDisplayLayerManager::createLayer(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5, char a6, uint64_t *a7)
{
  while (1)
  {
    v14 = *(a1 + 8);
    if ((v14 & 1) == 0)
    {
      break;
    }

    v15 = *(a1 + 8);
    atomic_compare_exchange_strong_explicit((a1 + 8), &v15, v14 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v15 == v14)
    {
      goto LABEL_5;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*(a1 + 8));
LABEL_5:
  v16 = *a7;
  *a7 = 0;
  v17 = WTF::fastMalloc(0x38);
  *v17 = &unk_1F10FE9E0;
  *(v17 + 8) = a1;
  *(v17 + 16) = a1;
  *(v17 + 24) = a2;
  *(v17 + 32) = a3;
  *(v17 + 33) = v19;
  *(v17 + 35) = v20;
  *(v17 + 36) = a4;
  *(v17 + 44) = a5;
  *(v17 + 45) = a6;
  *(v17 + 48) = v16;
  v21 = v17;
  WTF::callOnMainRunLoop();
  result = v21;
  if (v21)
  {
    return (*(*v21 + 8))(v21);
  }

  return result;
}

uint64_t WebKit::RemoteSampleBufferDisplayLayerManager::releaseLayer(uint64_t a1, uint64_t a2)
{
  while (1)
  {
    v4 = *(a1 + 8);
    if ((v4 & 1) == 0)
    {
      break;
    }

    v5 = *(a1 + 8);
    atomic_compare_exchange_strong_explicit((a1 + 8), &v5, v4 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v5 == v4)
    {
      goto LABEL_5;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*(a1 + 8));
LABEL_5:
  v6 = WTF::fastMalloc(0x20);
  *v6 = &unk_1F10FEA58;
  v6[1] = a1;
  v6[2] = a1;
  v6[3] = a2;
  v8 = v6;
  WTF::callOnMainRunLoop();
  result = v8;
  if (v8)
  {
    return (*(*v8 + 8))(v8);
  }

  return result;
}

BOOL WebKit::RemoteSampleBufferDisplayLayerManager::allowsExitUnderMemoryPressure(atomic_uchar *this)
{
  v2 = 0;
  v3 = this + 72;
  atomic_compare_exchange_strong_explicit(this + 72, &v2, 1u, memory_order_acquire, memory_order_acquire);
  if (v2)
  {
    MEMORY[0x19EB01E30](this + 72);
  }

  v4 = *(this + 10);
  v5 = 1;
  if (v4)
  {
    result = *(v4 - 12) == 0;
  }

  else
  {
    result = 1;
  }

  atomic_compare_exchange_strong_explicit(v3, &v5, 0, memory_order_release, memory_order_relaxed);
  if (v5 != 1)
  {
    v7 = result;
    WTF::Lock::unlockSlow(v3);
    return v7;
  }

  return result;
}

uint64_t WebKit::RemoteSampleBufferDisplayLayerManager::updateSampleBufferDisplayLayerBoundsAndPosition(uint64_t a1, uint64_t a2, WTF::MachSendRight *a3)
{
  v5 = 0;
  v11 = a2;
  v6 = (a1 + 72);
  atomic_compare_exchange_strong_explicit((a1 + 72), &v5, 1u, memory_order_acquire, memory_order_acquire);
  if (v5)
  {
    MEMORY[0x19EB01E30](a1 + 72);
  }

  result = WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::SampleBufferDisplayLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteSampleBufferDisplayLayer,WTF::RawPtrTraits<WebKit::RemoteSampleBufferDisplayLayer>,WTF::DefaultRefDerefTraits<WebKit::RemoteSampleBufferDisplayLayer>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::SampleBufferDisplayLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::SampleBufferDisplayLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::RemoteSampleBufferDisplayLayer,WTF::RawPtrTraits<WebKit::RemoteSampleBufferDisplayLayer>,WTF::DefaultRefDerefTraits<WebKit::RemoteSampleBufferDisplayLayer>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::SampleBufferDisplayLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteSampleBufferDisplayLayer,WTF::RawPtrTraits<WebKit::RemoteSampleBufferDisplayLayer>,WTF::DefaultRefDerefTraits<WebKit::RemoteSampleBufferDisplayLayer>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::SampleBufferDisplayLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::SampleBufferDisplayLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::RemoteSampleBufferDisplayLayer,WTF::RawPtrTraits<WebKit::RemoteSampleBufferDisplayLayer>,WTF::DefaultRefDerefTraits<WebKit::RemoteSampleBufferDisplayLayer>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::SampleBufferDisplayLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::ObjectIdentifierGeneric<WebKit::SampleBufferDisplayLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>((a1 + 80), &v11);
  if (result)
  {
    v8 = result;
    v9 = (result + 16);
    atomic_fetch_add((result + 16), 1u);
    WebCore::FloatRect::operator CGRect();
    WebKit::RemoteSampleBufferDisplayLayer::updateBoundsAndPosition(v8, a3);
    result = WTF::ThreadSafeRefCounted<WebKit::RemoteSampleBufferDisplayLayer,(WTF::DestructionThread)2>::deref(v9);
  }

  v10 = 1;
  atomic_compare_exchange_strong_explicit(v6, &v10, 0, memory_order_release, memory_order_relaxed);
  if (v10 != 1)
  {
    return WTF::Lock::unlockSlow(v6);
  }

  return result;
}

uint64_t WebKit::RemoteSampleBufferDisplayLayerManager::updateSharedPreferencesForWebProcess(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 64);
  while (1)
  {
    v5 = *(a1 + 8);
    if ((v5 & 1) == 0)
    {
      break;
    }

    v6 = *(a1 + 8);
    atomic_compare_exchange_strong_explicit((a1 + 8), &v6, v5 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v6 == v5)
    {
      goto LABEL_6;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*(a1 + 8));
LABEL_6:
  *v9 = *a2;
  *&v9[15] = *(a2 + 15);
  v7 = WTF::fastMalloc(0x30);
  *v7 = &unk_1F10FEAD0;
  *(v7 + 8) = a1;
  *(v7 + 16) = a1;
  *(v7 + 40) = *&v9[16];
  *(v7 + 24) = *v9;
  v10 = v7;
  (*(*v4 + 48))(v4, &v10);
  result = v10;
  v10 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

void WebKit::RemoteAudioMediaStreamTrackRendererInternalUnitManager::~RemoteAudioMediaStreamTrackRendererInternalUnitManager(WebKit::RemoteAudioMediaStreamTrackRendererInternalUnitManager *this, void *a2)
{
  *this = &unk_1F10FE330;
  v3 = *(this + 4);
  *(this + 4) = 0;
  if (v3)
  {
    WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v3, a2);
  }

  v4 = *(this + 2);
  if (v4)
  {
    v5 = *(v4 - 4);
    if (v5)
    {
      v6 = (v4 + 8);
      do
      {
        if (*(v6 - 1) != -1)
        {
          v7 = *v6;
          *v6 = 0;
          if (v7)
          {
            WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::AudioMediaStreamTrackRendererInternalUnit::Client,(WTF::DestructionThread)0>::deref((v7 + 32), a2);
          }
        }

        v6 += 2;
        --v5;
      }

      while (v5);
    }

    WTF::fastFree((v4 - 16), a2);
  }

  *this = &unk_1F10EA5E0;
  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::~WeakPtrFactory(this + 1, a2);
}

{
  WebKit::RemoteAudioMediaStreamTrackRendererInternalUnitManager::~RemoteAudioMediaStreamTrackRendererInternalUnitManager(this, a2);

  bmalloc::api::tzoneFree(v2, v3);
}

atomic_ullong *WebKit::RemoteAudioMediaStreamTrackRendererInternalUnitManager::ref(WebKit::RemoteAudioMediaStreamTrackRendererInternalUnitManager *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::GPUConnectionToWebProcess>(v2, *(this + 3), &v7);
    v3 = v7;
  }

  else
  {
    v3 = 0;
    v7 = 0;
  }

  while (1)
  {
    v4 = *(v3 + 16);
    if ((v4 & 1) == 0)
    {
      break;
    }

    v5 = *(v3 + 16);
    atomic_compare_exchange_strong_explicit((v3 + 16), &v5, v4 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v5 == v4)
    {
      v7 = 0;
      return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUConnectionToWebProcess,(WTF::DestructionThread)1>::deref((v3 + 16));
    }
  }

  result = WTF::ThreadSafeWeakPtrControlBlock::strongRef(*(v3 + 16));
  v3 = v7;
  v7 = 0;
  if (!v3)
  {
    return result;
  }

  return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUConnectionToWebProcess,(WTF::DestructionThread)1>::deref((v3 + 16));
}

atomic_ullong *WebKit::RemoteAudioMediaStreamTrackRendererInternalUnitManager::deref(WebKit::RemoteAudioMediaStreamTrackRendererInternalUnitManager *this)
{
  WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::GPUConnectionToWebProcess>(*(this + 4), *(this + 3), &v3);
  result = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUConnectionToWebProcess,(WTF::DestructionThread)1>::deref((v3 + 16));
  v2 = v3;
  v3 = 0;
  if (v2)
  {
    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUConnectionToWebProcess,(WTF::DestructionThread)1>::deref((v2 + 16));
  }

  return result;
}

atomic_uchar *WebKit::RemoteAudioMediaStreamTrackRendererInternalUnitManager::createUnit(uint64_t *a1, uint64_t a2, WTF **a3, uint64_t *a4)
{
  result = a1[4];
  if (result)
  {
    result = WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::GPUConnectionToWebProcess>(result, a1[3], &v49);
    v10 = v49;
    if (v49)
    {
      if (WebKit::RemoteAudioMediaStreamTrackRendererInternalUnitManagerUnit::s_heapRef)
      {
        NonCompact = bmalloc::api::tzoneAllocateNonCompact(WebKit::RemoteAudioMediaStreamTrackRendererInternalUnitManagerUnit::s_heapRef, v9);
      }

      else
      {
        NonCompact = WebKit::RemoteAudioMediaStreamTrackRendererInternalUnitManagerUnit::operatorNewSlow(0);
      }

      v12 = NonCompact;
      v13 = NonCompact + 1;
      NonCompact[4] = 3;
      v14 = (NonCompact + 4);
      v15 = NonCompact + 3;
      *NonCompact = &unk_1F10FE378;
      NonCompact[1] = &unk_1F10FE3E0;
      NonCompact[2] = 0;
      NonCompact[3] = &unk_1F10FE418;
      NonCompact[5] = a2;
      NonCompact[6] = v10;
      v16 = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUConnectionToWebProcess,(WTF::DestructionThread)1>::controlBlock((v10 + 16));
      v12[7] = WTF::ThreadSafeWeakPtrControlBlock::weakRef(v16);
      MEMORY[0x19EB0DB90](a3, v15);
      *(v12 + 11) = 0u;
      *(v12 + 9) = 0u;
      v17 = semaphore_create(*MEMORY[0x1E69E9A60], v12 + 25, 0, 0);
      v12[13] = 0;
      *(v12 + 112) = 0;
      *(v12 + 120) = 0;
      *(v12 + 200) = 0;
      WebCore::AudioMediaStreamTrackRenderer::defaultDeviceID(&v50, v17);
      v20 = WTF::equal(*a3, v50, v18);
      v21 = v50;
      v50 = 0;
      if (v21 && atomic_fetch_add_explicit(v21, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        v21 = WTF::StringImpl::destroy(v21, v19);
      }

      *(v12 + 208) = v20;
      *(v12 + 209) = 256;
      WebKit::RemoteAudioSessionProxyManager::protectedSession(v21, &v50);
      (*(*v50 + 216))(v50, v13);
      v23 = v50;
      v50 = 0;
      if (v23)
      {
        WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::AudioSession,(WTF::DestructionThread)0>::deref(v23 + 1, v22);
      }

      v24 = v12[8];
      (*(*v24 + 16))(v24);
      if (!v12[2])
      {
        v26 = WTF::fastCompactMalloc(0x10);
        *v26 = 1;
        *(v26 + 8) = v13;
        v27 = v12[2];
        v12[2] = v26;
        if (v27)
        {
          if (atomic_fetch_add(v27, 0xFFFFFFFF) == 1)
          {
            atomic_store(1u, v27);
            WTF::fastFree(v27, v25);
          }
        }
      }

      v28 = v12[2];
      atomic_fetch_add(v28, 1u);
      v29 = *a4;
      *a4 = 0;
      v30 = WTF::fastMalloc(0x20);
      *v30 = &unk_1F10FEAF8;
      *(v30 + 1) = v28;
      *(v30 + 2) = v12;
      *(v30 + 3) = v29;
      v50 = v30;
      (*(*v24 + 56))(v24, &v50);
      v31 = v50;
      v50 = 0;
      if (v31)
      {
        (*(*v31 + 8))(v31);
      }

      result = (*(*v24 + 24))(v24);
      if (a2 == -1 || !a2)
      {
        __break(0xC471u);
        JUMPOUT(0x19DBEB3FCLL);
      }

      v33 = a1[2];
      if (!v33)
      {
        result = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::AudioMediaStreamTrackRendererInternalUnitIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::AudioMediaStreamTrackRendererInternalUnitIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteAudioMediaStreamTrackRendererInternalUnitManagerUnit,WTF::RawPtrTraits<WebKit::RemoteAudioMediaStreamTrackRendererInternalUnitManagerUnit>,WTF::DefaultRefDerefTraits<WebKit::RemoteAudioMediaStreamTrackRendererInternalUnitManagerUnit>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::AudioMediaStreamTrackRendererInternalUnitIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteAudioMediaStreamTrackRendererInternalUnitManagerUnit,WTF::RawPtrTraits<WebKit::RemoteAudioMediaStreamTrackRendererInternalUnitManagerUnit>,WTF::DefaultRefDerefTraits<WebKit::RemoteAudioMediaStreamTrackRendererInternalUnitManagerUnit>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::AudioMediaStreamTrackRendererInternalUnitIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::AudioMediaStreamTrackRendererInternalUnitIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteAudioMediaStreamTrackRendererInternalUnitManagerUnit,WTF::RawPtrTraits<WebKit::RemoteAudioMediaStreamTrackRendererInternalUnitManagerUnit>,WTF::DefaultRefDerefTraits<WebKit::RemoteAudioMediaStreamTrackRendererInternalUnitManagerUnit>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::AudioMediaStreamTrackRendererInternalUnitIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::AudioMediaStreamTrackRendererInternalUnitIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::RemoteAudioMediaStreamTrackRendererInternalUnitManagerUnit,WTF::RawPtrTraits<WebKit::RemoteAudioMediaStreamTrackRendererInternalUnitManagerUnit>,WTF::DefaultRefDerefTraits<WebKit::RemoteAudioMediaStreamTrackRendererInternalUnitManagerUnit>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::AudioMediaStreamTrackRendererInternalUnitIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(a1 + 2);
        v33 = a1[2];
      }

      v34 = *(v33 - 8);
      v35 = (~(a2 << 32) + a2) ^ ((~(a2 << 32) + a2) >> 22);
      v36 = 9 * ((v35 + ~(v35 << 13)) ^ ((v35 + ~(v35 << 13)) >> 8));
      v37 = (v36 ^ (v36 >> 15)) + ~((v36 ^ (v36 >> 15)) << 27);
      v38 = v34 & ((v37 >> 31) ^ v37);
      v39 = (v33 + 16 * v38);
      v40 = *v39;
      if (*v39)
      {
        v41 = 0;
        v42 = 1;
        do
        {
          if (v40 == a2)
          {
            result = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::AudioMediaStreamTrackRendererInternalUnit::Client,(WTF::DestructionThread)0>::deref(v14, v32);
            goto LABEL_38;
          }

          if (v40 == -1)
          {
            v41 = v39;
          }

          v38 = (v38 + v42) & v34;
          v39 = (v33 + 16 * v38);
          v40 = *v39;
          ++v42;
        }

        while (*v39);
        if (v41)
        {
          *v41 = 0;
          v41[1] = 0;
          --*(a1[2] - 16);
          v39 = v41;
        }
      }

      v43 = v39[1];
      *v39 = a2;
      v39[1] = v12;
      if (v43)
      {
        result = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::AudioMediaStreamTrackRendererInternalUnit::Client,(WTF::DestructionThread)0>::deref((v43 + 32), v32);
      }

      v44 = a1[2];
      if (v44)
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
        if (v47 > 2 * v46)
        {
LABEL_38:
          v48 = v49;
          v49 = 0;
          if (v48)
          {
            return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUConnectionToWebProcess,(WTF::DestructionThread)1>::deref((v48 + 16));
          }

          return result;
        }
      }

      else if (3 * v47 > 4 * v46)
      {
        goto LABEL_38;
      }

      result = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::AudioMediaStreamTrackRendererInternalUnitIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::AudioMediaStreamTrackRendererInternalUnitIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteAudioMediaStreamTrackRendererInternalUnitManagerUnit,WTF::RawPtrTraits<WebKit::RemoteAudioMediaStreamTrackRendererInternalUnitManagerUnit>,WTF::DefaultRefDerefTraits<WebKit::RemoteAudioMediaStreamTrackRendererInternalUnitManagerUnit>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::AudioMediaStreamTrackRendererInternalUnitIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteAudioMediaStreamTrackRendererInternalUnitManagerUnit,WTF::RawPtrTraits<WebKit::RemoteAudioMediaStreamTrackRendererInternalUnitManagerUnit>,WTF::DefaultRefDerefTraits<WebKit::RemoteAudioMediaStreamTrackRendererInternalUnitManagerUnit>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::AudioMediaStreamTrackRendererInternalUnitIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::AudioMediaStreamTrackRendererInternalUnitIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteAudioMediaStreamTrackRendererInternalUnitManagerUnit,WTF::RawPtrTraits<WebKit::RemoteAudioMediaStreamTrackRendererInternalUnitManagerUnit>,WTF::DefaultRefDerefTraits<WebKit::RemoteAudioMediaStreamTrackRendererInternalUnitManagerUnit>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::AudioMediaStreamTrackRendererInternalUnitIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::AudioMediaStreamTrackRendererInternalUnitIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::RemoteAudioMediaStreamTrackRendererInternalUnitManagerUnit,WTF::RawPtrTraits<WebKit::RemoteAudioMediaStreamTrackRendererInternalUnitManagerUnit>,WTF::DefaultRefDerefTraits<WebKit::RemoteAudioMediaStreamTrackRendererInternalUnitManagerUnit>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::AudioMediaStreamTrackRendererInternalUnitIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(a1 + 2);
      goto LABEL_38;
    }
  }

  return result;
}

void WebKit::RemoteAudioMediaStreamTrackRendererInternalUnitManager::deleteUnit(void *a1, void *a2)
{
  v3 = a1 + 2;
  v2 = a1[2];
  if (v2)
  {
    if (a2 == -1 || !a2)
    {
      __break(0xC471u);
      JUMPOUT(0x19DBEB5ACLL);
    }

    v5 = *(v2 - 8);
    v6 = (a2 + ~(a2 << 32)) ^ ((a2 + ~(a2 << 32)) >> 22);
    v7 = 9 * ((v6 + ~(v6 << 13)) ^ ((v6 + ~(v6 << 13)) >> 8));
    v8 = (v7 ^ (v7 >> 15)) + ~((v7 ^ (v7 >> 15)) << 27);
    v9 = v5 & ((v8 >> 31) ^ v8);
    v10 = *(v2 + 16 * v9);
    if (v10 != a2)
    {
      v11 = 1;
      while (v10)
      {
        v9 = (v9 + v11) & v5;
        v10 = *(v2 + 16 * v9);
        ++v11;
        if (v10 == a2)
        {
          goto LABEL_10;
        }
      }

      v9 = *(v2 - 4);
    }

LABEL_10:
    if (v9 != *(v2 - 4))
    {
      v12 = (v2 + 16 * v9);
      v13 = v12[1];
      *v12 = -1;
      v12[1] = 0;
      if (v13)
      {
        WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::AudioMediaStreamTrackRendererInternalUnit::Client,(WTF::DestructionThread)0>::deref((v13 + 32), a2);
      }

      v14 = *v3;
      v15 = vadd_s32(*(*v3 - 16), 0xFFFFFFFF00000001);
      *(v14 - 16) = v15;
      v16 = *(v14 - 4);
      v17 = 6 * v15.i32[1] < v16 && v16 >= 9;
      if (v17 && (WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::AudioMediaStreamTrackRendererInternalUnitIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::AudioMediaStreamTrackRendererInternalUnitIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteAudioMediaStreamTrackRendererInternalUnitManagerUnit,WTF::RawPtrTraits<WebKit::RemoteAudioMediaStreamTrackRendererInternalUnitManagerUnit>,WTF::DefaultRefDerefTraits<WebKit::RemoteAudioMediaStreamTrackRendererInternalUnitManagerUnit>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::AudioMediaStreamTrackRendererInternalUnitIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteAudioMediaStreamTrackRendererInternalUnitManagerUnit,WTF::RawPtrTraits<WebKit::RemoteAudioMediaStreamTrackRendererInternalUnitManagerUnit>,WTF::DefaultRefDerefTraits<WebKit::RemoteAudioMediaStreamTrackRendererInternalUnitManagerUnit>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::AudioMediaStreamTrackRendererInternalUnitIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::AudioMediaStreamTrackRendererInternalUnitIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteAudioMediaStreamTrackRendererInternalUnitManagerUnit,WTF::RawPtrTraits<WebKit::RemoteAudioMediaStreamTrackRendererInternalUnitManagerUnit>,WTF::DefaultRefDerefTraits<WebKit::RemoteAudioMediaStreamTrackRendererInternalUnitManagerUnit>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::AudioMediaStreamTrackRendererInternalUnitIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::AudioMediaStreamTrackRendererInternalUnitIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::RemoteAudioMediaStreamTrackRendererInternalUnitManagerUnit,WTF::RawPtrTraits<WebKit::RemoteAudioMediaStreamTrackRendererInternalUnitManagerUnit>,WTF::DefaultRefDerefTraits<WebKit::RemoteAudioMediaStreamTrackRendererInternalUnitManagerUnit>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::AudioMediaStreamTrackRendererInternalUnitIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(v3, v16 >> 1), (v14 = *v3) == 0) || !*(v14 - 12))
      {
        v18 = a1[4];
        if (v18)
        {
          WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::GPUConnectionToWebProcess>(v18, a1[3], &v20);
          if (v20)
          {
            WebKit::GPUProcess::tryExitIfUnusedAndUnderMemoryPressure(*(v20 + 80));
            v19 = v20;
            v20 = 0;
            if (v19)
            {
              WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUConnectionToWebProcess,(WTF::DestructionThread)1>::deref((v19 + 16));
            }
          }
        }
      }
    }
  }
}

atomic_uchar **WebKit::RemoteAudioMediaStreamTrackRendererInternalUnitManager::startUnit(uint64_t a1, uint64_t a2, uint64_t a3, IPC::Semaphore *a4)
{
  result = WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::AudioMediaStreamTrackRendererInternalUnitIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteAudioMediaStreamTrackRendererInternalUnitManagerUnit,WTF::RawPtrTraits<WebKit::RemoteAudioMediaStreamTrackRendererInternalUnitManagerUnit>,WTF::DefaultRefDerefTraits<WebKit::RemoteAudioMediaStreamTrackRendererInternalUnitManagerUnit>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::AudioMediaStreamTrackRendererInternalUnitIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::AudioMediaStreamTrackRendererInternalUnitIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::RemoteAudioMediaStreamTrackRendererInternalUnitManagerUnit,WTF::RawPtrTraits<WebKit::RemoteAudioMediaStreamTrackRendererInternalUnitManagerUnit>,WTF::DefaultRefDerefTraits<WebKit::RemoteAudioMediaStreamTrackRendererInternalUnitManagerUnit>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::AudioMediaStreamTrackRendererInternalUnitIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteAudioMediaStreamTrackRendererInternalUnitManagerUnit,WTF::RawPtrTraits<WebKit::RemoteAudioMediaStreamTrackRendererInternalUnitManagerUnit>,WTF::DefaultRefDerefTraits<WebKit::RemoteAudioMediaStreamTrackRendererInternalUnitManagerUnit>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::AudioMediaStreamTrackRendererInternalUnitIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::AudioMediaStreamTrackRendererInternalUnitIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::RemoteAudioMediaStreamTrackRendererInternalUnitManagerUnit,WTF::RawPtrTraits<WebKit::RemoteAudioMediaStreamTrackRendererInternalUnitManagerUnit>,WTF::DefaultRefDerefTraits<WebKit::RemoteAudioMediaStreamTrackRendererInternalUnitManagerUnit>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::AudioMediaStreamTrackRendererInternalUnitIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::ObjectIdentifierGeneric<WebKit::AudioMediaStreamTrackRendererInternalUnitIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>((a1 + 16), a2);
  if (result)
  {
    v7 = result;
    v8 = (result + 4);
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

    result = WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v8);
LABEL_7:
    if (*(v7 + 112) == 1)
    {
      result = WebKit::RemoteAudioMediaStreamTrackRendererInternalUnitManagerUnit::stop(v7);
    }

    if (v7[25])
    {
      WebKit::ConsumerSharedCARingBuffer::map((v7 + 15), a3, &v18);
      v11 = v18;
      v18 = 0;
      std::unique_ptr<WebKit::ConsumerSharedCARingBuffer>::reset[abi:sn200100](v7 + 13, v11);
      std::unique_ptr<WebKit::ConsumerSharedCARingBuffer>::reset[abi:sn200100](&v18, 0);
      if (v7[13])
      {
        v7[9] = 0;
        v7[10] = 0;
        *(v7 + 112) = 1;
        *(v7 + 210) = 1;
        IPC::Semaphore::operator=((v7 + 12), a4);
        ShouldRegisterAsSpeakerSamplesProducer = WebKit::RemoteAudioMediaStreamTrackRendererInternalUnitManagerUnit::computeShouldRegisterAsSpeakerSamplesProducer(v7);
        *(v7 + 209) = ShouldRegisterAsSpeakerSamplesProducer;
        if (!ShouldRegisterAsSpeakerSamplesProducer || (WebCore::CoreAudioCaptureSourceFactory::singleton(ShouldRegisterAsSpeakerSamplesProducer), v14 = WebCore::CoreAudioCaptureSourceFactory::registerSpeakerSamplesProducer(), v15 = WebCore::CoreAudioCaptureSourceFactory::singleton(v14), shouldAudioCaptureUnitRenderAudio = WebCore::CoreAudioCaptureSourceFactory::shouldAudioCaptureUnitRenderAudio(v15), (shouldAudioCaptureUnitRenderAudio & 1) == 0) && (*(WebCore::AudioSession::sharedSession(shouldAudioCaptureUnitRenderAudio) + 50) & 1) == 0)
        {
          v17 = v7[8];
          (*(*v17 + 16))(v17);
          (*(*v17 + 32))(v17);
          (*(*v17 + 24))(v17);
        }
      }

      return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::AudioMediaStreamTrackRendererInternalUnit::Client,(WTF::DestructionThread)0>::deref(v8, v12);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

atomic_uchar **WebKit::RemoteAudioMediaStreamTrackRendererInternalUnitManager::stopUnit(uint64_t a1, uint64_t a2)
{
  result = WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::AudioMediaStreamTrackRendererInternalUnitIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteAudioMediaStreamTrackRendererInternalUnitManagerUnit,WTF::RawPtrTraits<WebKit::RemoteAudioMediaStreamTrackRendererInternalUnitManagerUnit>,WTF::DefaultRefDerefTraits<WebKit::RemoteAudioMediaStreamTrackRendererInternalUnitManagerUnit>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::AudioMediaStreamTrackRendererInternalUnitIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::AudioMediaStreamTrackRendererInternalUnitIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::RemoteAudioMediaStreamTrackRendererInternalUnitManagerUnit,WTF::RawPtrTraits<WebKit::RemoteAudioMediaStreamTrackRendererInternalUnitManagerUnit>,WTF::DefaultRefDerefTraits<WebKit::RemoteAudioMediaStreamTrackRendererInternalUnitManagerUnit>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::AudioMediaStreamTrackRendererInternalUnitIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteAudioMediaStreamTrackRendererInternalUnitManagerUnit,WTF::RawPtrTraits<WebKit::RemoteAudioMediaStreamTrackRendererInternalUnitManagerUnit>,WTF::DefaultRefDerefTraits<WebKit::RemoteAudioMediaStreamTrackRendererInternalUnitManagerUnit>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::AudioMediaStreamTrackRendererInternalUnitIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::AudioMediaStreamTrackRendererInternalUnitIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::RemoteAudioMediaStreamTrackRendererInternalUnitManagerUnit,WTF::RawPtrTraits<WebKit::RemoteAudioMediaStreamTrackRendererInternalUnitManagerUnit>,WTF::DefaultRefDerefTraits<WebKit::RemoteAudioMediaStreamTrackRendererInternalUnitManagerUnit>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::AudioMediaStreamTrackRendererInternalUnitIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::ObjectIdentifierGeneric<WebKit::AudioMediaStreamTrackRendererInternalUnitIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>((a1 + 16), a2);
  if (result)
  {
    v3 = result;
    v4 = (result + 4);
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
        goto LABEL_7;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v4);
LABEL_7:
    WebKit::RemoteAudioMediaStreamTrackRendererInternalUnitManagerUnit::stop(v3);

    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::AudioMediaStreamTrackRendererInternalUnit::Client,(WTF::DestructionThread)0>::deref(v4, v7);
  }

  return result;
}

uint64_t WebKit::RemoteAudioMediaStreamTrackRendererInternalUnitManagerUnit::stop(WebKit::RemoteAudioMediaStreamTrackRendererInternalUnitManagerUnit *this)
{
  *(this + 112) = 0;
  WebCore::CoreAudioCaptureSourceFactory::singleton(this);
  WebCore::CoreAudioCaptureSourceFactory::unregisterSpeakerSamplesProducer();
  v2 = *(this + 8);
  (*(*v2 + 16))(v2);
  (*(*v2 + 40))(v2);
  v3 = *(*v2 + 24);

  return v3(v2);
}

void *WebKit::RemoteAudioMediaStreamTrackRendererInternalUnitManager::notifyLastToCaptureAudioChanged(WebKit::RemoteAudioMediaStreamTrackRendererInternalUnitManager *this)
{
  result = WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::WallTime>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::WallTime>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::WallTime,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::WallTime>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::begin(this + 2);
  v3 = result;
  v5 = v4;
  v6 = *(this + 2);
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
      v8 = v3[1];
      v9 = (v8 + 4);
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
          goto LABEL_10;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v9);
LABEL_10:
      ShouldRegisterAsSpeakerSamplesProducer = WebKit::RemoteAudioMediaStreamTrackRendererInternalUnitManagerUnit::computeShouldRegisterAsSpeakerSamplesProducer(v8);
      WebKit::RemoteAudioMediaStreamTrackRendererInternalUnitManagerUnit::setShouldRegisterAsSpeakerSamplesProducer(v8, ShouldRegisterAsSpeakerSamplesProducer);
      result = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::AudioMediaStreamTrackRendererInternalUnit::Client,(WTF::DestructionThread)0>::deref(v8 + 4, v13);
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

WTF::StringImpl *WebKit::RemoteAudioMediaStreamTrackRendererInternalUnitManager::setLastDeviceUsed(WebKit::RemoteAudioMediaStreamTrackRendererInternalUnitManager *this, WTF **a2)
{
  v4 = *(this + 4);
  if (v4)
  {
    WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::GPUConnectionToWebProcess>(v4, *(this + 3), &v13);
    v4 = v13;
  }

  else
  {
    v13 = 0;
  }

  v5 = WebKit::GPUConnectionToWebProcess::audioSessionProxy(v4, a2);
  ++*(v5 + 4);
  WebCore::AudioMediaStreamTrackRenderer::defaultDeviceID(&v12, v5);
  if (WTF::equal(*a2, v12, v6))
  {
    v8 = MEMORY[0x1E696EBA8];
  }

  else
  {
    v8 = a2;
  }

  WebKit::RemoteAudioSessionProxy::setPreferredSpeakerID(v5, v8, v7);
  result = v12;
  v12 = 0;
  if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    result = WTF::StringImpl::destroy(result, v9);
  }

  if (*(v5 + 4) == 1)
  {
    result = (*(*v5 + 24))(v5);
  }

  else
  {
    --*(v5 + 4);
  }

  v11 = v13;
  v13 = 0;
  if (v11)
  {
    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUConnectionToWebProcess,(WTF::DestructionThread)1>::deref(v11 + 2);
  }

  return result;
}

void WebKit::RemoteAudioMediaStreamTrackRendererInternalUnitManagerUnit::~RemoteAudioMediaStreamTrackRendererInternalUnitManagerUnit(WebKit::RemoteAudioMediaStreamTrackRendererInternalUnitManagerUnit *this)
{
  *this = &unk_1F10FE378;
  v2 = this + 8;
  *(this + 1) = &unk_1F10FE3E0;
  *(this + 3) = &unk_1F10FE418;
  WebKit::RemoteAudioSessionProxyManager::protectedSession(this, &v8);
  (*(*v8 + 224))(v8, v2);
  v4 = v8;
  v8 = 0;
  if (v4)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::AudioSession,(WTF::DestructionThread)0>::deref((v4 + 8), v3);
  }

  WebKit::RemoteAudioMediaStreamTrackRendererInternalUnitManagerUnit::stop(this);
  if (*(this + 200) == 1)
  {
    WebCore::CAAudioStreamDescription::~CAAudioStreamDescription((this + 120));
  }

  std::unique_ptr<WebKit::ConsumerSharedCARingBuffer>::reset[abi:sn200100](this + 13, 0);
  IPC::Semaphore::destroy((this + 96));
  WTF::MachSendRight::~MachSendRight((this + 96));
  v6 = *(this + 8);
  *(this + 8) = 0;
  if (v6)
  {
    (*(*v6 + 24))(v6);
  }

  v7 = *(this + 7);
  *(this + 7) = 0;
  if (v7)
  {
    WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v7, v5);
  }

  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::~WeakPtrFactory(this + 2, v5);
}

{
  WebKit::RemoteAudioMediaStreamTrackRendererInternalUnitManagerUnit::~RemoteAudioMediaStreamTrackRendererInternalUnitManagerUnit(this);

  bmalloc::api::tzoneFree(v1, v2);
}

void non-virtual thunk toWebKit::RemoteAudioMediaStreamTrackRendererInternalUnitManagerUnit::~RemoteAudioMediaStreamTrackRendererInternalUnitManagerUnit(WebKit::RemoteAudioMediaStreamTrackRendererInternalUnitManagerUnit *this)
{
  WebKit::RemoteAudioMediaStreamTrackRendererInternalUnitManagerUnit::~RemoteAudioMediaStreamTrackRendererInternalUnitManagerUnit((this - 8));
}

{
  WebKit::RemoteAudioMediaStreamTrackRendererInternalUnitManagerUnit::~RemoteAudioMediaStreamTrackRendererInternalUnitManagerUnit((this - 24));
}

{
  WebKit::RemoteAudioMediaStreamTrackRendererInternalUnitManagerUnit::~RemoteAudioMediaStreamTrackRendererInternalUnitManagerUnit((this - 8));

  bmalloc::api::tzoneFree(v1, v2);
}

{
  WebKit::RemoteAudioMediaStreamTrackRendererInternalUnitManagerUnit::~RemoteAudioMediaStreamTrackRendererInternalUnitManagerUnit((this - 24));

  bmalloc::api::tzoneFree(v1, v2);
}

uint64_t WebKit::RemoteAudioMediaStreamTrackRendererInternalUnitManagerUnit::computeShouldRegisterAsSpeakerSamplesProducer(WebKit::RemoteAudioMediaStreamTrackRendererInternalUnitManagerUnit *this)
{
  v2 = *(this + 7);
  if (!v2)
  {
    return 0;
  }

  v5 = WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::GPUConnectionToWebProcess>(v2, *(this + 6), &v8);
  v6 = v8;
  if (*(this + 208) != 1)
  {
    shouldAudioCaptureUnitRenderAudio = 0;
    goto LABEL_9;
  }

  if (v8)
  {
    if ((*(v8 + 160) & 1) == 0)
    {
      shouldAudioCaptureUnitRenderAudio = 0;
      v8 = 0;
      goto LABEL_10;
    }

    v7 = WebCore::CoreAudioCaptureSourceFactory::singleton(v5);
    shouldAudioCaptureUnitRenderAudio = WebCore::CoreAudioCaptureSourceFactory::shouldAudioCaptureUnitRenderAudio(v7);
    v6 = v8;
LABEL_9:
    v8 = 0;
    if (!v6)
    {
      return shouldAudioCaptureUnitRenderAudio;
    }

LABEL_10:
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUConnectionToWebProcess,(WTF::DestructionThread)1>::deref((v6 + 16));
    return shouldAudioCaptureUnitRenderAudio;
  }

  return 0;
}

atomic_uchar *WebKit::RemoteAudioMediaStreamTrackRendererInternalUnitManagerUnit::reset(atomic_uchar *this)
{
  if (this[210] == 1)
  {
    v12[5] = v1;
    v12[6] = v2;
    v3 = this;
    this[210] = 0;
    this = *(this + 7);
    if (this)
    {
      this = WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::GPUConnectionToWebProcess>(this, *(v3 + 6), &v11);
      if (v11)
      {
        v5 = *(v11 + 56);
        v6 = IPC::Encoder::operator new(0x238, v4);
        *v6 = 58;
        *(v6 + 68) = 0;
        *(v6 + 70) = 0;
        *(v6 + 69) = 0;
        *(v6 + 2) = 0;
        *(v6 + 3) = 0;
        *(v6 + 1) = 0;
        IPC::Encoder::encodeHeader(v6);
        v12[0] = v6;
        IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v6, *(v3 + 5));
        IPC::Connection::sendMessageImpl(v5, v12, 0, 0);
        this = v12[0];
        v12[0] = 0;
        if (this)
        {
          IPC::Encoder::~Encoder(this, v7);
          this = bmalloc::api::tzoneFree(v9, v10);
        }

        v8 = v11;
        v11 = 0;
        if (v8)
        {
          return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUConnectionToWebProcess,(WTF::DestructionThread)1>::deref((v8 + 16));
        }
      }
    }
  }

  return this;
}

uint64_t WebKit::RemoteAudioMediaStreamTrackRendererInternalUnitManagerUnit::setShouldRegisterAsSpeakerSamplesProducer(uint64_t this, int a2)
{
  if (*(this + 209) != a2)
  {
    v2 = this;
    *(this + 209) = a2;
    if (*(this + 112) == 1)
    {
      if (a2)
      {
        v3 = *(this + 64);
        (*(*v3 + 16))(v3);
        (*(*v3 + 40))(v3);
        v4 = (*(*v3 + 24))(v3);
        WebCore::CoreAudioCaptureSourceFactory::singleton(v4);

        return WebCore::CoreAudioCaptureSourceFactory::registerSpeakerSamplesProducer();
      }

      else
      {
        WebCore::CoreAudioCaptureSourceFactory::singleton(this);
        WebCore::CoreAudioCaptureSourceFactory::unregisterSpeakerSamplesProducer();
        v5 = *(v2 + 64);
        (*(*v5 + 16))(v5);
        (*(*v5 + 32))(v5);
        v6 = *(*v5 + 24);

        return v6(v5);
      }
    }
  }

  return this;
}

void WebKit::ConsumerSharedCARingBuffer::map(WebCore::CAAudioStreamDescription *a1@<X0>, uint64_t a2@<X1>, WebCore::CARingBuffer **a3@<X8>)
{
  v6 = WebCore::CAAudioStreamDescription::bytesPerFrame(a1);
  WebCore::CAAudioStreamDescription::numberOfChannelStreams(a1);

  WebKit::ConsumerSharedCARingBuffer::map(v6, a2, a3);
}

uint64_t WebKit::RemoteAudioMediaStreamTrackRendererInternalUnitManagerUnit::render(WebKit::RemoteAudioMediaStreamTrackRendererInternalUnitManagerUnit *this, unint64_t a2, AudioBufferList *a3, unint64_t a4, double a5, unsigned int *a6)
{
  result = WebCore::CARingBuffer::fetchIfHasEnoughData();
  if (result)
  {
    v11 = 0;
    *(this + 9) += a2;
  }

  else
  {
    if ((*(this + 200) & 1) == 0)
    {
      __break(1u);
      return result;
    }

    v12 = WebCore::CAAudioStreamDescription::bytesPerFrame((this + 120));
    WebCore::AudioSampleBufferList::zeroABL(a3, (v12 * a2));
    *a6 = 16;
    v11 = 0xFFFFFFFFLL;
  }

  for (i = *(this + 10); i < a2; i += *(this + 11))
  {
    MEMORY[0x19EB16320](*(this + 25));
  }

  *(this + 10) = i - a2;
  return v11;
}

_BYTE *WebKit::RemoteAudioMediaStreamTrackRendererInternalUnitManagerUnit::captureUnitIsStarting(_BYTE *this)
{
  if (this[112] == 1)
  {
    v1 = this;
    v2 = WebCore::CoreAudioCaptureSourceFactory::singleton(this);
    this = WebCore::CoreAudioCaptureSourceFactory::shouldAudioCaptureUnitRenderAudio(v2);
    if (this)
    {
      v3 = *(v1 + 8);
      (*(*v3 + 16))(v3);
      (*(*v3 + 40))(v3);
      v4 = *(*v3 + 24);

      return v4(v3);
    }
  }

  return this;
}

_BYTE *WebKit::RemoteAudioMediaStreamTrackRendererInternalUnitManagerUnit::captureUnitHasStopped(_BYTE *this)
{
  if (this[112] == 1)
  {
    v1 = this;
    this = WebCore::CoreAudioSharedUnit::singleton(this);
    if ((this[36] & 1) == 0)
    {
      v2 = *(v1 + 8);
      (*(*v2 + 16))(v2);
      (*(*v2 + 32))(v2);
      v3 = *(*v2 + 24);

      return v3(v2);
    }
  }

  return this;
}

uint64_t WebKit::RemoteAudioMediaStreamTrackRendererInternalUnitManagerUnit::canRenderAudioChanged(WebKit::RemoteAudioMediaStreamTrackRendererInternalUnitManagerUnit *this)
{
  while (1)
  {
    v2 = *(this + 4);
    if ((v2 & 1) == 0)
    {
      break;
    }

    v3 = *(this + 4);
    atomic_compare_exchange_strong_explicit(this + 4, &v3, v2 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v3 == v2)
    {
      goto LABEL_5;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*(this + 4));
LABEL_5:
  v4 = WTF::fastMalloc(0x10);
  *v4 = &unk_1F10FEB20;
  v4[1] = this;
  v6 = v4;
  WTF::callOnMainRunLoop();
  result = v6;
  if (v6)
  {
    return (*(*v6 + 8))(v6);
  }

  return result;
}

uint64_t WebKit::RemoteAudioMediaStreamTrackRendererInternalUnitManagerUnit::beginAudioSessionInterruption(uint64_t this)
{
  if (*(this + 112) == 1)
  {
    v2 = *(this + 64);
    (*(*v2 + 16))(v2);
    (*(*v2 + 40))(v2);
    v3 = *(*v2 + 24);

    return v3(v2);
  }

  return this;
}

WebCore::CoreAudioSharedUnit *WebKit::RemoteAudioMediaStreamTrackRendererInternalUnitManagerUnit::endAudioSessionInterruption(WebCore::CoreAudioSharedUnit *result)
{
  if (*(result + 112) == 1)
  {
    v1 = result;
    if (*(result + 209) != 1 || (result = WebCore::CoreAudioSharedUnit::singleton(result), (*(result + 377) & 1) == 0) && (result = WebCore::CoreAudioSharedUnit::singleton(result), (*(result + 36) & 1) == 0))
    {
      v2 = *(v1 + 8);
      (*(*v2 + 16))(v2);
      (*(*v2 + 32))(v2);
      v3 = *(*v2 + 24);

      return v3(v2);
    }
  }

  return result;
}

uint64_t WebKit::UserMediaCaptureManagerProxy::create@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = WebKit::UserMediaCaptureManagerProxy::operator new(0x58, a2);
  result = WebKit::UserMediaCaptureManagerProxy::UserMediaCaptureManagerProxy(v5, a1);
  *a3 = result;
  return result;
}

uint64_t WTF::ThreadSafeWeakHashSet<WebCore::RealtimeMediaSource>::add<WebCore::RealtimeMediaSource>(uint64_t a1, uint64_t a2)
{
  v4 = (*(*a2 + 32))(a2);
  if (WTF::ThreadSafeWeakPtrControlBlock::objectHasStartedDeletion(v4))
  {
    result = 97;
    __break(0xC471u);
    return result;
  }

  v5 = 0;
  atomic_compare_exchange_strong_explicit((a1 + 16), &v5, 1u, memory_order_acquire, memory_order_acquire);
  if (v5)
  {
    MEMORY[0x19EB01E30](a1 + 16);
  }

  v6 = (*(*a2 + 32))(a2);
  v7 = WTF::ThreadSafeWeakPtrControlBlock::weakRef(v6);
  v8 = *(a1 + 12);
  v9 = *(a1 + 8) + 1;
  *(a1 + 8) = v9;
  v10 = *a1;
  if (v9 > v8)
  {
    if (v10)
    {
      v11 = *(v10 - 4);
      if (!v11)
      {
LABEL_18:
        v17 = *(v10 - 4);
        if (6 * *(v10 - 12) < v17 && v17 > 8)
        {
          WTF::HashTable<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebCore::RealtimeMediaSource const*>,std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebCore::RealtimeMediaSource const*>,WTF::IdentityExtractor,WTF::DefaultHash<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebCore::RealtimeMediaSource const*>>,WTF::HashTraits<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebCore::RealtimeMediaSource const*>>,WTF::HashTraits<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebCore::RealtimeMediaSource const*>>,WTF::FastMalloc>::shrinkToBestSize(a1);
          v10 = *a1;
          *(a1 + 8) = 0;
          if (!v10)
          {
            v19 = 0;
            goto LABEL_28;
          }
        }

        else
        {
          *(a1 + 8) = 0;
        }

        v19 = *(v10 - 12);
        if (v19 > 0x7FFFFFFE)
        {
          v20 = -2;
LABEL_29:
          *(a1 + 12) = v20;
          v10 = *a1;
          goto LABEL_30;
        }

LABEL_28:
        v20 = 2 * v19;
        goto LABEL_29;
      }

      v12 = 0;
      v13 = (v10 + 16 * v11 - 16);
      do
      {
        if (*v13 != -1 && *v13 != 0 && WTF::ThreadSafeWeakPtrControlBlock::objectHasStartedDeletion(*v13))
        {
          v15 = *v13;
          *v13 = 0;
          if (v15)
          {
            WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v15, v14);
          }

          *v13 = -1;
          ++v12;
        }

        v13 -= 2;
        --v11;
      }

      while (v11);
      v10 = *a1;
      if (v12)
      {
        v16 = *(v10 - 12) - v12;
        *(v10 - 16) += v12;
        *(v10 - 12) = v16;
        goto LABEL_18;
      }

      if (v10)
      {
        goto LABEL_18;
      }
    }

    v19 = 0;
    *(a1 + 8) = 0;
    goto LABEL_28;
  }

LABEL_30:
  if (!v10)
  {
    WTF::HashTable<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebCore::RealtimeMediaSource const*>,std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebCore::RealtimeMediaSource const*>,WTF::IdentityExtractor,WTF::DefaultHash<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebCore::RealtimeMediaSource const*>>,WTF::HashTraits<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebCore::RealtimeMediaSource const*>>,WTF::HashTraits<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebCore::RealtimeMediaSource const*>>,WTF::FastMalloc>::expand(a1);
    v10 = *a1;
  }

  v21 = *(v10 - 8);
  result = WTF::PairHash<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebCore::RealtimeMediaSource const*>::hash(v7, a2);
  v23 = result & v21;
  v24 = (v10 + 16 * (result & v21));
  v25 = *v24;
  v26 = v24[1];
  if (*v24 != 0)
  {
    v27 = 0;
    v28 = 1;
    while (v25 != v7 || v26 != a2)
    {
      if (v25 == -1)
      {
        v27 = v24;
      }

      v23 = (v23 + v28) & v21;
      v24 = (v10 + 16 * v23);
      v25 = *v24;
      v26 = v24[1];
      ++v28;
      if (*v24 == 0)
      {
        if (v27)
        {
          *v27 = 0;
          v27[1] = 0;
          --*(*a1 - 16);
          v24 = v27;
        }

        goto LABEL_41;
      }
    }

    if (v7)
    {
      result = WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v7, v24);
    }

    goto LABEL_49;
  }

LABEL_41:
  *v24 = v7;
  v29 = *a1;
  v24[1] = a2;
  if (v29)
  {
    v30 = *(v29 - 12) + 1;
  }

  else
  {
    v30 = 1;
  }

  *(v29 - 12) = v30;
  v31 = (*(v29 - 16) + v30);
  v32 = *(v29 - 4);
  if (v32 <= 0x400)
  {
    if (3 * v32 > 4 * v31)
    {
      goto LABEL_49;
    }

    goto LABEL_46;
  }

  if (v32 <= 2 * v31)
  {
LABEL_46:
    result = WTF::HashTable<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebCore::RealtimeMediaSource const*>,std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebCore::RealtimeMediaSource const*>,WTF::IdentityExtractor,WTF::DefaultHash<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebCore::RealtimeMediaSource const*>>,WTF::HashTraits<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebCore::RealtimeMediaSource const*>>,WTF::HashTraits<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebCore::RealtimeMediaSource const*>>,WTF::FastMalloc>::expand(a1);
  }

LABEL_49:
  v33 = 1;
  atomic_compare_exchange_strong_explicit((a1 + 16), &v33, 0, memory_order_release, memory_order_relaxed);
  if (v33 != 1)
  {

    return WTF::Lock::unlockSlow((a1 + 16));
  }

  return result;
}

WTF::StringImpl *WebKit::UserMediaCaptureManagerProxy::createMediaSourceForCaptureDeviceWithConstraints(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 *a5, int a6, uint64_t a7, uint64_t *a8)
{
  v172 = *MEMORY[0x1E69E9840];
  v158 = a2;
  v14 = (*(**(a1 + 32) + 40))(*(a1 + 32), *(a3 + 8), a7);
  if (v14)
  {
    v142 = a5[960];
    v148[0] = 0;
    v148[1] = 0;
    v149 = 0;
    v15 = *(a3 + 8);
    if (v15 > 0xF)
    {
      if (v15 == 16 || v15 == 32)
      {
        v37 = WebCore::RealtimeMediaSourceCenter::singleton(v14);
        v38 = WebCore::RealtimeMediaSourceCenter::displayCaptureFactory(v37);
        (*(*v38 + 16))(&v160);
        *v148 = v160;
        v149 = v161;
        v39 = v160;
        if (v160)
        {
          goto LABEL_38;
        }
      }

      goto LABEL_144;
    }

    if (v15 != 2)
    {
      if (v15 == 8)
      {
        if (a7 == -1)
        {
          __break(0xC471u);
          JUMPOUT(0x19DBEDBB0);
        }

        if (!a7)
        {
          __break(0xC471u);
          JUMPOUT(0x19DBEDBD0);
        }

        v16 = *(a1 + 80);
        if (!v16)
        {
          WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::UserMediaCaptureManagerProxy::PageSources>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::UserMediaCaptureManagerProxy::PageSources>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::UserMediaCaptureManagerProxy::PageSources,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WebKit::UserMediaCaptureManagerProxy::PageSources>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand((a1 + 80), 0);
          v16 = *(a1 + 80);
        }

        v17 = *(v16 - 8);
        v18 = (~(a7 << 32) + a7) ^ ((~(a7 << 32) + a7) >> 22);
        v19 = 9 * ((v18 + ~(v18 << 13)) ^ ((v18 + ~(v18 << 13)) >> 8));
        v20 = (v19 ^ (v19 >> 15)) + ~((v19 ^ (v19 >> 15)) << 27);
        v21 = v17 & ((v20 >> 31) ^ v20);
        v22 = v16 + 48 * v21;
        v23 = *v22;
        v139 = a6;
        if (*v22)
        {
          v24 = 0;
          v25 = 1;
          while (v23 != a7)
          {
            if (v23 == -1)
            {
              v24 = v22;
            }

            v21 = (v21 + v25) & v17;
            v22 = v16 + 48 * v21;
            v23 = *v22;
            ++v25;
            if (!*v22)
            {
              if (v24)
              {
                v24[1] = 0u;
                v24[2] = 0u;
                *v24 = 0u;
                --*(*(a1 + 80) - 16);
                v22 = v24;
              }

              goto LABEL_17;
            }
          }

LABEL_98:
          WTF::ThreadSafeWeakHashSet<WebCore::RealtimeMediaSource>::values(v150, (v22 + 24));
          v87 = v150[0];
          v150[0] = 0;
          *&v160 = v87;
          LODWORD(v87) = v150[1];
          v88 = HIDWORD(v150[1]);
          v150[1] = 0;
          *(&v160 + 1) = __PAIR64__(v88, v87);
          *&v161 = 0;
          WTF::Vector<WTF::Ref<WebCore::RealtimeMediaSource,WTF::RawPtrTraits<WebCore::RealtimeMediaSource>,WTF::DefaultRefDerefTraits<WebCore::RealtimeMediaSource>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v150, v89);
          *&v90 = 0;
          buf = v90;
          memset(v150, 0, 24);
          WTF::Vector<WTF::Ref<WebCore::RealtimeMediaSource,WTF::RawPtrTraits<WebCore::RealtimeMediaSource>,WTF::DefaultRefDerefTraits<WebCore::RealtimeMediaSource>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&buf, v91);
          v141 = a5;
          if (v88)
          {
            v93 = 0;
            while (v93 < v88)
            {
              v94 = *(v160 + 8 * v93);
              (**v94)(v94);
              if (WTF::equal(*(v94 + 192), *a3, v95) && (*(v94 + 326) & 1) == 0)
              {
                (*(*v94 + 48))(&buf, v94);
                WTF::ThreadSafeWeakHashSet<WebCore::RealtimeMediaSource>::add<WebCore::RealtimeMediaSource>(v22 + 24, buf);
                v39 = buf;
                (*(*v94 + 8))(v94);
                WTF::Vector<WTF::Ref<WebCore::RealtimeMediaSource,WTF::RawPtrTraits<WebCore::RealtimeMediaSource>,WTF::DefaultRefDerefTraits<WebCore::RealtimeMediaSource>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v150, v109);
                WTF::Vector<WTF::Ref<WebCore::RealtimeMediaSource,WTF::RawPtrTraits<WebCore::RealtimeMediaSource>,WTF::DefaultRefDerefTraits<WebCore::RealtimeMediaSource>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v160, v110);
                v107 = 0;
                v108 = 0;
                goto LABEL_120;
              }

              (*(*v94 + 8))(v94);
              v88 = HIDWORD(v160);
              if (v161 >= HIDWORD(v160))
              {
                __break(0xC471u);
                JUMPOUT(0x19DBEDB90);
              }

              v93 = v161 + 1;
              *&v161 = v93;
              if (v93 == HIDWORD(v160))
              {
                goto LABEL_105;
              }
            }

            __break(0xC471u);
LABEL_192:
            JUMPOUT(0x19DBEDB70);
          }

LABEL_105:
          WTF::Vector<WTF::Ref<WebCore::RealtimeMediaSource,WTF::RawPtrTraits<WebCore::RealtimeMediaSource>,WTF::DefaultRefDerefTraits<WebCore::RealtimeMediaSource>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v150, v92);
          v97 = WTF::Vector<WTF::Ref<WebCore::RealtimeMediaSource,WTF::RawPtrTraits<WebCore::RealtimeMediaSource>,WTF::DefaultRefDerefTraits<WebCore::RealtimeMediaSource>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v160, v96);
          v98 = WebCore::RealtimeMediaSourceCenter::singleton(v97);
          v99 = WebCore::RealtimeMediaSourceCenter::videoCaptureFactory(v98);
          (*(*v99 + 16))(&v160);
          if (v160)
          {
            v138 = a8;
            WTF::ThreadSafeWeakHashSet<WebCore::RealtimeMediaSource>::values(v150, (v22 + 24));
            if (HIDWORD(v150[1]))
            {
              v101 = v150[0];
              v102 = 8 * HIDWORD(v150[1]);
              do
              {
                v103 = *v101;
                v104 = qword_1ED641580;
                if (os_log_type_enabled(qword_1ED641580, OS_LOG_TYPE_ERROR))
                {
                  LOWORD(buf) = 0;
                  _os_log_error_impl(&dword_19D52D000, v104, OS_LOG_TYPE_ERROR, "Ending camera source as new source is using a different device.", &buf, 2u);
                }

                WebCore::RealtimeMediaSource::end(v103, 0);
                ++v101;
                v102 -= 8;
              }

              while (v102);
            }

            WTF::Vector<WTF::Ref<WebCore::RealtimeMediaSource,WTF::RawPtrTraits<WebCore::RealtimeMediaSource>,WTF::DefaultRefDerefTraits<WebCore::RealtimeMediaSource>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v150, v100);
            v39 = v160;
            *&v160 = 0;
            (*(*v39 + 216))(v39, a1 + 40);
            (*(**(a1 + 32) + 112))(*(a1 + 32), a7, a3);
            WTF::ThreadSafeWeakHashSet<WebCore::RealtimeMediaSource>::add<WebCore::RealtimeMediaSource>(v22 + 24, v39);
            v106 = *(&v160 + 1);
            *(&v160 + 1) = 0;
            if (v106)
            {
              a8 = v138;
              if (atomic_fetch_add_explicit(v106, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v106, v105);
              }

              v107 = 0;
              v108 = 0;
            }

            else
            {
              v107 = 0;
              v108 = 0;
              a8 = v138;
            }
          }

          else
          {
            v39 = 0;
            v108 = *(&v160 + 1);
            v107 = v161;
            *(&v160 + 1) = 0;
          }

          v111 = v160;
          *&v160 = 0;
          if (v111)
          {
            (*(*v111 + 8))(v111);
          }

LABEL_120:
          v148[0] = v39;
          v148[1] = v108;
          v149 = v107;
          a5 = v141;
          a6 = v139;
          if (!v39)
          {
            goto LABEL_144;
          }

LABEL_38:
          v140 = a5;
          v147 = v39;
          v148[0] = 0;
          v40 = (*(**(a1 + 32) + 48))(*(a1 + 32));
          atomic_fetch_add(v40 + 2, 1u);
          v41 = WTF::cryptographicallyRandomNumber<unsigned long long>();
          (*(*v39 + 256))(v39, v40, v41);
          if (atomic_fetch_add(v40 + 2, 0xFFFFFFFF) == 1)
          {
            atomic_store(1u, v40 + 2);
            (*(*v40 + 8))(v40);
          }

          v42 = (*(**(a1 + 32) + 32))(*(a1 + 32));
          v43 = v42;
          while (1)
          {
            v44 = *v42;
            if ((*v42 & 1) == 0)
            {
              break;
            }

            v45 = *v42;
            atomic_compare_exchange_strong_explicit(v42, &v45, v44 + 2, memory_order_relaxed, memory_order_relaxed);
            if (v45 == v44)
            {
              goto LABEL_45;
            }
          }

          WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v42);
LABEL_45:
          v146 = v43;
          if (a6)
          {
            v46 = (*(**(a1 + 32) + 104))(*(a1 + 32));
            v47 = v46;
            if (v46)
            {
              while (1)
              {
                v48 = *(v46 + 8);
                if ((v48 & 1) == 0)
                {
                  break;
                }

                v49 = *(v46 + 8);
                atomic_compare_exchange_strong_explicit((v46 + 8), &v49, v48 + 2, memory_order_relaxed, memory_order_relaxed);
                if (v49 == v48)
                {
                  goto LABEL_52;
                }
              }

              WTF::ThreadSafeWeakPtrControlBlock::strongRef(*(v46 + 8));
            }
          }

          else
          {
            v47 = 0;
          }

LABEL_52:
          v145 = v47;
          v50 = v158;
          v51 = (*(**(a1 + 32) + 64))(*(a1 + 32));
          v52 = WTF::MachSendRight::MachSendRight(&v160, v51);
          v54 = WebKit::UserMediaCaptureManagerProxySourceProxy::operator new(v52, v53);
          v144 = WebKit::UserMediaCaptureManagerProxySourceProxy::UserMediaCaptureManagerProxySourceProxy(v54, v50, &v146, &v160, &v147, &v145);
          WTF::MachSendRight::~MachSendRight(&v160);
          WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded((a1 + 8), a1);
          v55 = *(a1 + 8);
          atomic_fetch_add(v55, 1u);
          v56 = WTF::fastMalloc(0x18);
          *v56 = &unk_1F10FEB48;
          v56[1] = v55;
          v56[2] = a7;
          v57 = *(v54 + 280);
          *(v54 + 280) = v56;
          if (v57)
          {
            (*(*v57 + 8))(v57);
          }

          v58 = v144;
          if (v142 && (*(*(v144 + 80) + 128) & 1) != 0)
          {
            if ((WebCore::MediaTrackConstraintSetMap::isValid(v140) & 1) == 0)
            {
              v137 = qword_1ED6416C8;
              if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_FAULT))
              {
                LODWORD(v160) = 136446210;
                *(&v160 + 4) = "void WebKit::UserMediaCaptureManagerProxy::createMediaSourceForCaptureDeviceWithConstraints(RealtimeMediaSourceIdentifier, const CaptureDevice &, WebCore::MediaDeviceHashSalts &&, MediaConstraints &&, BOOL, PageIdentifier, CreateSourceCallback &&)";
                _os_log_fault_impl(&dword_19D52D000, v137, OS_LOG_TYPE_FAULT, "/Library/Caches/com.apple.xbs/Sources/WebKit/Source/WebKit/GPUProcess/webrtc/UserMediaCaptureManagerProxy.cpp 623: Invalid message dispatched %{public}s", &v160, 0xCu);
              }

              *((*(**(a1 + 32) + 32))(*(a1 + 32)) + 94) = 1;
              if (IPC::s_shouldCrashOnMessageCheckFailure == 1)
              {
                __break(0xC471u);
                goto LABEL_192;
              }

              WTF::StringImpl::createWithoutCopyingNonEmpty();
              WORD4(buf) = 4;
              v153 = 4;
              *v151 = 0u;
              *v152 = 0u;
              memset(v150, 0, sizeof(v150));
              memset(v156, 0, sizeof(v156));
              v157 = 0;
              v154 = 0x3FF0000000000000;
              v155 = 0;
              v164 = 0u;
              v165 = 0u;
              v162 = 0u;
              v163 = 0u;
              v160 = 0u;
              v161 = 0u;
              v166 = 1;
              v167 = 0u;
              v168 = 0u;
              v169 = 0u;
              v170 = 0u;
              memset(v171, 0, sizeof(v171));
              goto LABEL_168;
            }

            v59 = *(v140 + 239);
            if (v59)
            {
              v60 = *(v140 + 118);
              v61 = 944 * v59;
              while ((WebCore::MediaTrackConstraintSetMap::isValid(v60) & 1) != 0)
              {
                v60 = (v60 + 944);
                v61 -= 944;
                if (!v61)
                {
                  goto LABEL_61;
                }
              }

              v130 = qword_1ED6416C8;
              if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_FAULT))
              {
                LODWORD(v160) = 136446210;
                *(&v160 + 4) = "void WebKit::UserMediaCaptureManagerProxy::createMediaSourceForCaptureDeviceWithConstraints(RealtimeMediaSourceIdentifier, const CaptureDevice &, WebCore::MediaDeviceHashSalts &&, MediaConstraints &&, BOOL, PageIdentifier, CreateSourceCallback &&)";
                _os_log_fault_impl(&dword_19D52D000, v130, OS_LOG_TYPE_FAULT, "/Library/Caches/com.apple.xbs/Sources/WebKit/Source/WebKit/GPUProcess/webrtc/UserMediaCaptureManagerProxy.cpp 625: Invalid message dispatched %{public}s", &v160, 0xCu);
              }

              *((*(**(a1 + 32) + 32))(*(a1 + 32)) + 94) = 1;
              if (IPC::s_shouldCrashOnMessageCheckFailure == 1)
              {
                __break(0xC471u);
                JUMPOUT(0x19DBEDC18);
              }

              WTF::StringImpl::createWithoutCopyingNonEmpty();
              WORD4(buf) = 4;
              v153 = 4;
              *v151 = 0u;
              *v152 = 0u;
              memset(v150, 0, sizeof(v150));
              memset(v156, 0, sizeof(v156));
              v157 = 0;
              v154 = 0x3FF0000000000000;
              v155 = 0;
              v166 = 1;
              v164 = 0u;
              v165 = 0u;
              v162 = 0u;
              v163 = 0u;
              v160 = 0u;
              v161 = 0u;
              v167 = 0u;
              v168 = 0u;
              v169 = 0u;
              v170 = 0u;
              memset(v171, 0, sizeof(v171));
LABEL_168:
              v131 = *a8;
              *a8 = 0;
              (*(*v131 + 16))(v131, &buf, v150, &v160);
              (*(*v131 + 8))(v131);
              WebCore::RealtimeMediaSourceCapabilities::~RealtimeMediaSourceCapabilities(&v160, v132);
              v133 = v152[1];
              v152[1] = 0;
              if (v133 && atomic_fetch_add_explicit(v133, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v133, v65);
              }

              v134 = v152[0];
              v152[0] = 0;
              if (v134 && atomic_fetch_add_explicit(v134, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v134, v65);
              }

              v135 = v151[1];
              v151[1] = 0;
              if (v135 && atomic_fetch_add_explicit(v135, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v135, v65);
              }

              v136 = buf;
              *&buf = 0;
              if (v136 && atomic_fetch_add_explicit(v136, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v136, v65);
              }

              goto LABEL_65;
            }

LABEL_61:
            WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded((v144 + 8), v144);
            v62 = *(v144 + 8);
            atomic_fetch_add(v62, 1u);
            v63 = *a8;
            *a8 = 0;
            v64 = WTF::fastMalloc(0x20);
            *v64 = &unk_1F10FEB70;
            v64[1] = v62;
            v64[2] = v63;
            v143 = v64;
            WebKit::UserMediaCaptureManagerProxySourceProxy::applyConstraints(v58, v140, &v143);
            if (v143)
            {
              (*(*v143 + 8))(v143);
            }
          }

          else
          {
            WebKit::UserMediaCaptureManagerProxySourceProxy::whenReady(v144, a8);
          }

          WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::RealtimeMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::UserMediaCaptureManagerProxySourceProxy,WTF::RawPtrTraits<WebKit::UserMediaCaptureManagerProxySourceProxy>,WTF::DefaultRefDerefTraits<WebKit::UserMediaCaptureManagerProxySourceProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RealtimeMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RealtimeMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::UserMediaCaptureManagerProxySourceProxy,WTF::RawPtrTraits<WebKit::UserMediaCaptureManagerProxySourceProxy>,WTF::DefaultRefDerefTraits<WebKit::UserMediaCaptureManagerProxySourceProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<WTF::Ref<WebKit::UserMediaCaptureManagerProxySourceProxy,WTF::RawPtrTraits<WebKit::UserMediaCaptureManagerProxySourceProxy>,WTF::DefaultRefDerefTraits<WebKit::UserMediaCaptureManagerProxySourceProxy>>>(&v160, (a1 + 24), &v158, &v144);
LABEL_65:
          if (v144)
          {
            if (*(v144 + 16) == 1)
            {
              (*(*v144 + 8))();
            }

            else
            {
              --*(v144 + 16);
            }
          }

          if (v145)
          {
            WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref((v145 + 8), v65);
          }

          if (v146)
          {
            WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v146);
          }

          if (v147)
          {
            (*(*v147 + 8))(v147);
          }

          goto LABEL_153;
        }

LABEL_17:
        *v22 = a7;
        *&v162 = 0;
        v160 = 0u;
        v161 = 0u;
        WTF::GenericHashTraits<WebKit::UserMediaCaptureManagerProxy::PageSources>::assignToEmpty<WebKit::UserMediaCaptureManagerProxy::PageSources,WebKit::UserMediaCaptureManagerProxy::PageSources>(v22 + 8, &v160);
        if (v161)
        {
          WTF::HashTable<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebCore::RealtimeMediaSource const*>,std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebCore::RealtimeMediaSource const*>,WTF::IdentityExtractor,WTF::DefaultHash<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebCore::RealtimeMediaSource const*>>,WTF::HashTraits<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebCore::RealtimeMediaSource const*>>,WTF::HashTraits<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebCore::RealtimeMediaSource const*>>,WTF::FastMalloc>::deallocateTable(v161, v26);
        }

        v27 = *(&v160 + 1);
        *(&v160 + 1) = 0;
        if (v27)
        {
          WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v27, v26);
        }

        v28 = *(a1 + 80);
        if (v28)
        {
          v29 = *(v28 - 12) + 1;
        }

        else
        {
          v29 = 1;
        }

        *(v28 - 12) = v29;
        v85 = (*(v28 - 16) + v29);
        v86 = *(v28 - 4);
        if (v86 > 0x400)
        {
          if (v86 > 2 * v85)
          {
            goto LABEL_98;
          }
        }

        else if (3 * v86 > 4 * v85)
        {
          goto LABEL_98;
        }

        v22 = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::UserMediaCaptureManagerProxy::PageSources>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::UserMediaCaptureManagerProxy::PageSources>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::UserMediaCaptureManagerProxy::PageSources,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WebKit::UserMediaCaptureManagerProxy::PageSources>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand((a1 + 80), v22);
        goto LABEL_98;
      }

LABEL_144:
      v153 = 4;
      *v151 = 0u;
      *v152 = 0u;
      memset(v150, 0, sizeof(v150));
      memset(v156, 0, sizeof(v156));
      v157 = 0;
      v154 = 0x3FF0000000000000;
      v155 = 0;
      v166 = 1;
      v164 = 0u;
      v165 = 0u;
      v162 = 0u;
      v163 = 0u;
      v160 = 0u;
      v161 = 0u;
      v167 = 0u;
      v168 = 0u;
      v169 = 0u;
      v170 = 0u;
      memset(v171, 0, sizeof(v171));
      v124 = *a8;
      *a8 = 0;
      (*(*v124 + 16))(v124, &v148[1], v150, &v160);
      (*(*v124 + 8))(v124);
      WebCore::RealtimeMediaSourceCapabilities::~RealtimeMediaSourceCapabilities(&v160, v125);
      v126 = v152[1];
      v152[1] = 0;
      if (v126 && atomic_fetch_add_explicit(v126, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v126, v65);
      }

      v127 = v152[0];
      v152[0] = 0;
      if (v127 && atomic_fetch_add_explicit(v127, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v127, v65);
      }

      v128 = v151[1];
      v151[1] = 0;
      if (v128 && atomic_fetch_add_explicit(v128, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v128, v65);
      }

LABEL_153:
      v129 = v148[1];
      v148[1] = 0;
      if (v129 && atomic_fetch_add_explicit(v129, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v129, v65);
      }

      result = v148[0];
      v148[0] = 0;
      if (result)
      {
        return (*(*result + 8))(result);
      }

      return result;
    }

    v66 = WebCore::RealtimeMediaSourceCenter::singleton(v14);
    v67 = WebCore::RealtimeMediaSourceCenter::audioCaptureFactory(v66);
    (*(*v67 + 16))(v150);
    if (!v150[0])
    {
      v82 = a5;
      v39 = 0;
      v83 = v150[1];
      v84 = v150[2];
      v150[1] = 0;
      goto LABEL_141;
    }

    if (a7 == -1)
    {
      __break(0xC471u);
      JUMPOUT(0x19DBEDBF0);
    }

    if (!a7)
    {
      __break(0xC471u);
      JUMPOUT(0x19DBEDC10);
    }

    v68 = *(a1 + 80);
    if (!v68)
    {
      WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::UserMediaCaptureManagerProxy::PageSources>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::UserMediaCaptureManagerProxy::PageSources>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::UserMediaCaptureManagerProxy::PageSources,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WebKit::UserMediaCaptureManagerProxy::PageSources>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand((a1 + 80), 0);
      v68 = *(a1 + 80);
    }

    v69 = *(v68 - 8);
    v70 = (~(a7 << 32) + a7) ^ ((~(a7 << 32) + a7) >> 22);
    v71 = 9 * ((v70 + ~(v70 << 13)) ^ ((v70 + ~(v70 << 13)) >> 8));
    v72 = (v71 ^ (v71 >> 15)) + ~((v71 ^ (v71 >> 15)) << 27);
    v73 = v69 & ((v72 >> 31) ^ v72);
    v74 = (v68 + 48 * v73);
    v75 = *v74;
    if (*v74)
    {
      v76 = 0;
      v77 = 1;
      while (v75 != a7)
      {
        if (v75 == -1)
        {
          v76 = v74;
        }

        v73 = (v73 + v77) & v69;
        v74 = (v68 + 48 * v73);
        v75 = *v74;
        ++v77;
        if (!*v74)
        {
          if (v76)
          {
            *(v76 + 1) = 0u;
            *(v76 + 2) = 0u;
            *v76 = 0u;
            --*(*(a1 + 80) - 16);
            v74 = v76;
          }

          goto LABEL_87;
        }
      }

      goto LABEL_126;
    }

LABEL_87:
    *v74 = a7;
    *&v162 = 0;
    v160 = 0u;
    v161 = 0u;
    WTF::GenericHashTraits<WebKit::UserMediaCaptureManagerProxy::PageSources>::assignToEmpty<WebKit::UserMediaCaptureManagerProxy::PageSources,WebKit::UserMediaCaptureManagerProxy::PageSources>((v74 + 1), &v160);
    if (v161)
    {
      WTF::HashTable<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebCore::RealtimeMediaSource const*>,std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebCore::RealtimeMediaSource const*>,WTF::IdentityExtractor,WTF::DefaultHash<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebCore::RealtimeMediaSource const*>>,WTF::HashTraits<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebCore::RealtimeMediaSource const*>>,WTF::HashTraits<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebCore::RealtimeMediaSource const*>>,WTF::FastMalloc>::deallocateTable(v161, v78);
    }

    v79 = *(&v160 + 1);
    *(&v160 + 1) = 0;
    if (v79)
    {
      WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v79, v78);
    }

    v80 = *(a1 + 80);
    if (v80)
    {
      v81 = *(v80 - 12) + 1;
    }

    else
    {
      v81 = 1;
    }

    *(v80 - 12) = v81;
    v112 = (*(v80 - 16) + v81);
    v113 = *(v80 - 4);
    if (v113 > 0x400)
    {
      if (v113 > 2 * v112)
      {
LABEL_126:
        v114 = v74[2];
        if (v114)
        {
          WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::LibWebRTCCodecsProxy>(&v160, v114, v74[1]);
          v116 = v160;
          if (v160)
          {
            if ((WTF::equal(*(v160 + 192), *a3, v115) & 1) == 0 && (*(v116 + 326) & 1) == 0)
            {
              v117 = qword_1ED641580;
              if (os_log_type_enabled(qword_1ED641580, OS_LOG_TYPE_ERROR))
              {
                LOWORD(buf) = 0;
                _os_log_error_impl(&dword_19D52D000, v117, OS_LOG_TYPE_ERROR, "Ending microphone source as new source is using a different device.", &buf, 2u);
              }

              WebCore::RealtimeMediaSource::end(v116, 0);
            }

            (*(*v116 + 8))(v116);
          }
        }

        v39 = v150[0];
        v150[0] = 0;
        v118 = (*(*v39 + 32))(v39);
        v120 = WTF::ThreadSafeWeakPtrControlBlock::weakRef(v118);
        v121 = v74[2];
        v74[2] = v120;
        if (v121)
        {
          WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v121, v119);
        }

        v74[1] = v39;
        v122 = v150[1];
        v150[1] = 0;
        v82 = a5;
        if (v122)
        {
          if (atomic_fetch_add_explicit(v122, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v122, v119);
          }

          v83 = 0;
          v84 = 0;
        }

        else
        {
          v83 = 0;
          v84 = 0;
        }

LABEL_141:
        v123 = v150[0];
        v150[0] = 0;
        if (v123)
        {
          (*(*v123 + 8))(v123);
        }

        v148[0] = v39;
        v148[1] = v83;
        v149 = v84;
        a5 = v82;
        if (v39)
        {
          goto LABEL_38;
        }

        goto LABEL_144;
      }
    }

    else if (3 * v113 > 4 * v112)
    {
      goto LABEL_126;
    }

    v74 = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::UserMediaCaptureManagerProxy::PageSources>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::UserMediaCaptureManagerProxy::PageSources>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::UserMediaCaptureManagerProxy::PageSources,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WebKit::UserMediaCaptureManagerProxy::PageSources>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand((a1 + 80), v74);
    goto LABEL_126;
  }

  WTF::StringImpl::createWithoutCopyingNonEmpty();
  LOWORD(v148[1]) = 6;
  v153 = 4;
  *v151 = 0u;
  *v152 = 0u;
  memset(v150, 0, sizeof(v150));
  memset(v156, 0, sizeof(v156));
  v157 = 0;
  v154 = 0x3FF0000000000000;
  v155 = 0;
  v166 = 1;
  v164 = 0u;
  v165 = 0u;
  v162 = 0u;
  v163 = 0u;
  v160 = 0u;
  v161 = 0u;
  v167 = 0u;
  v168 = 0u;
  v169 = 0u;
  v170 = 0u;
  memset(v171, 0, sizeof(v171));
  v30 = *a8;
  *a8 = 0;
  (*(*v30 + 16))(v30, v148, v150, &v160);
  (*(*v30 + 8))(v30);
  WebCore::RealtimeMediaSourceCapabilities::~RealtimeMediaSourceCapabilities(&v160, v31);
  v33 = v152[1];
  v152[1] = 0;
  if (v33 && atomic_fetch_add_explicit(v33, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v33, v32);
  }

  v34 = v152[0];
  v152[0] = 0;
  if (v34 && atomic_fetch_add_explicit(v34, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v34, v32);
  }

  v35 = v151[1];
  v151[1] = 0;
  if (v35 && atomic_fetch_add_explicit(v35, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v35, v32);
  }

  result = v148[0];
  v148[0] = 0;
  if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    return WTF::StringImpl::destroy(result, v32);
  }

  return result;
}

uint64_t *WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::RealtimeMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::UserMediaCaptureManagerProxySourceProxy,WTF::RawPtrTraits<WebKit::UserMediaCaptureManagerProxySourceProxy>,WTF::DefaultRefDerefTraits<WebKit::UserMediaCaptureManagerProxySourceProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RealtimeMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RealtimeMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::UserMediaCaptureManagerProxySourceProxy,WTF::RawPtrTraits<WebKit::UserMediaCaptureManagerProxySourceProxy>,WTF::DefaultRefDerefTraits<WebKit::UserMediaCaptureManagerProxySourceProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<WTF::Ref<WebKit::UserMediaCaptureManagerProxySourceProxy,WTF::RawPtrTraits<WebKit::UserMediaCaptureManagerProxySourceProxy>,WTF::DefaultRefDerefTraits<WebKit::UserMediaCaptureManagerProxySourceProxy>>>(uint64_t *result, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v4 = *a3;
  if (*a3 == -1 || !v4)
  {
    __break(0xC471u);
    JUMPOUT(0x19DBEDE1CLL);
  }

  v8 = result;
  v9 = *a2;
  if (!*a2)
  {
    result = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::RealtimeMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::RealtimeMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::UserMediaCaptureManagerProxySourceProxy,WTF::RawPtrTraits<WebKit::UserMediaCaptureManagerProxySourceProxy>,WTF::DefaultRefDerefTraits<WebKit::UserMediaCaptureManagerProxySourceProxy>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::RealtimeMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::UserMediaCaptureManagerProxySourceProxy,WTF::RawPtrTraits<WebKit::UserMediaCaptureManagerProxySourceProxy>,WTF::DefaultRefDerefTraits<WebKit::UserMediaCaptureManagerProxySourceProxy>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RealtimeMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::RealtimeMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::UserMediaCaptureManagerProxySourceProxy,WTF::RawPtrTraits<WebKit::UserMediaCaptureManagerProxySourceProxy>,WTF::DefaultRefDerefTraits<WebKit::UserMediaCaptureManagerProxySourceProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RealtimeMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RealtimeMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::UserMediaCaptureManagerProxySourceProxy,WTF::RawPtrTraits<WebKit::UserMediaCaptureManagerProxySourceProxy>,WTF::DefaultRefDerefTraits<WebKit::UserMediaCaptureManagerProxySourceProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RealtimeMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(a2, 0);
    v9 = *a2;
    v4 = *a3;
  }

  v10 = *(v9 - 8);
  v11 = (v4 + ~(v4 << 32)) ^ ((v4 + ~(v4 << 32)) >> 22);
  v12 = 9 * ((v11 + ~(v11 << 13)) ^ ((v11 + ~(v11 << 13)) >> 8));
  v13 = (v12 ^ (v12 >> 15)) + ~((v12 ^ (v12 >> 15)) << 27);
  v14 = v10 & ((v13 >> 31) ^ v13);
  v15 = (v9 + 16 * v14);
  v16 = *v15;
  if (*v15)
  {
    v17 = 0;
    v18 = 1;
    do
    {
      if (v16 == v4)
      {
        v22 = 0;
        v23 = v9 + 16 * *(v9 - 4);
        goto LABEL_26;
      }

      if (v16 == -1)
      {
        v17 = v15;
      }

      v14 = (v14 + v18) & v10;
      v15 = (v9 + 16 * v14);
      v16 = *v15;
      ++v18;
    }

    while (*v15);
    if (v17)
    {
      *v17 = 0;
      v17[1] = 0;
      --*(*a2 - 16);
      v4 = *a3;
      v15 = v17;
    }
  }

  *v15 = v4;
  v19 = *a4;
  *a4 = 0;
  result = v15[1];
  v15[1] = v19;
  if (result)
  {
    if (*(result + 4) == 1)
    {
      result = (*(*result + 8))(result);
    }

    else
    {
      --*(result + 4);
    }
  }

  v20 = *a2;
  if (*a2)
  {
    v21 = *(v20 - 12) + 1;
  }

  else
  {
    v21 = 1;
  }

  *(v20 - 12) = v21;
  v24 = (*(v20 - 16) + v21);
  v25 = *(v20 - 4);
  if (v25 > 0x400)
  {
    if (v25 <= 2 * v24)
    {
LABEL_22:
      result = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::RealtimeMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::RealtimeMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::UserMediaCaptureManagerProxySourceProxy,WTF::RawPtrTraits<WebKit::UserMediaCaptureManagerProxySourceProxy>,WTF::DefaultRefDerefTraits<WebKit::UserMediaCaptureManagerProxySourceProxy>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::RealtimeMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::UserMediaCaptureManagerProxySourceProxy,WTF::RawPtrTraits<WebKit::UserMediaCaptureManagerProxySourceProxy>,WTF::DefaultRefDerefTraits<WebKit::UserMediaCaptureManagerProxySourceProxy>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RealtimeMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::RealtimeMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::UserMediaCaptureManagerProxySourceProxy,WTF::RawPtrTraits<WebKit::UserMediaCaptureManagerProxySourceProxy>,WTF::DefaultRefDerefTraits<WebKit::UserMediaCaptureManagerProxySourceProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RealtimeMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RealtimeMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::UserMediaCaptureManagerProxySourceProxy,WTF::RawPtrTraits<WebKit::UserMediaCaptureManagerProxySourceProxy>,WTF::DefaultRefDerefTraits<WebKit::UserMediaCaptureManagerProxySourceProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RealtimeMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(a2, v15);
      v15 = result;
      v20 = *a2;
      if (*a2)
      {
        v25 = *(v20 - 4);
      }

      else
      {
        v25 = 0;
      }
    }
  }

  else if (3 * v25 <= 4 * v24)
  {
    goto LABEL_22;
  }

  v23 = v20 + 16 * v25;
  v22 = 1;
LABEL_26:
  *v8 = v15;
  v8[1] = v23;
  *(v8 + 16) = v22;
  return result;
}

uint64_t WebKit::UserMediaCaptureManagerProxySourceProxy::applyConstraints(unsigned int *a1, uint64_t a2, uint64_t *a3)
{
  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(a1 + 2, a1);
  v6 = *(a1 + 1);
  atomic_fetch_add(v6, 1u);
  v19 = v6;
  WebCore::MediaTrackConstraintSetMap::MediaTrackConstraintSetMap(v20, a2);
  *&v7 = 0;
  v8 = *(a2 + 944);
  v9 = *(a2 + 952);
  *(a2 + 944) = v7;
  *&v21 = v8;
  *(&v21 + 1) = v9;
  v22 = *(a2 + 960);
  v10 = *a3;
  *a3 = 0;
  v23 = v10;
  v11 = WTF::fastMalloc(0x3E0);
  *v11 = &unk_1F10FE638;
  *(v11 + 8) = v19;
  WebCore::MediaTrackConstraintSetMap::MediaTrackConstraintSetMap(v11 + 16, v20);
  *(v11 + 968) = 0;
  v12 = v21;
  v21 = 0uLL;
  *(v11 + 960) = v12;
  *(v11 + 976) = v22;
  v13 = v23;
  v23 = 0;
  *(v11 + 984) = v13;
  v24 = v11;
  WebKit::UserMediaCaptureManagerProxySourceProxy::queueAndProcessSerialAction(a1, &v24);
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

  WTF::Vector<WebCore::MediaTrackConstraintSetMap,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v21, v14);
  WebCore::MediaTrackConstraintSetMap::~MediaTrackConstraintSetMap(v20, v17);
  return 0;
}

void WebKit::UserMediaCaptureManagerProxy::startProducingData(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v17 = a2;
  v5 = WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::RealtimeMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::UserMediaCaptureManagerProxySourceProxy,WTF::RawPtrTraits<WebKit::UserMediaCaptureManagerProxySourceProxy>,WTF::DefaultRefDerefTraits<WebKit::UserMediaCaptureManagerProxySourceProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RealtimeMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RealtimeMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::UserMediaCaptureManagerProxySourceProxy,WTF::RawPtrTraits<WebKit::UserMediaCaptureManagerProxySourceProxy>,WTF::DefaultRefDerefTraits<WebKit::UserMediaCaptureManagerProxySourceProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::RealtimeMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::UserMediaCaptureManagerProxySourceProxy,WTF::RawPtrTraits<WebKit::UserMediaCaptureManagerProxySourceProxy>,WTF::DefaultRefDerefTraits<WebKit::UserMediaCaptureManagerProxySourceProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RealtimeMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RealtimeMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::UserMediaCaptureManagerProxySourceProxy,WTF::RawPtrTraits<WebKit::UserMediaCaptureManagerProxySourceProxy>,WTF::DefaultRefDerefTraits<WebKit::UserMediaCaptureManagerProxySourceProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RealtimeMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::ObjectIdentifierGeneric<WebCore::RealtimeMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>((a1 + 24), &v17);
  if (v5)
  {
    v6 = v5;
    ++*(v5 + 16);
    if ((*(**(a1 + 32) + 56))(*(a1 + 32)))
    {
      v7 = *(v6 + 80);
      (**v7)(v7);
      (*(**(a1 + 32) + 72))(*(a1 + 32));
      v8 = (*(**(a1 + 32) + 80))(*(a1 + 32), a3);
      if ((v8 & 1) != 0 || *(WebCore::RealtimeMediaSourceCenter::singleton(v8) + 104) || (*(*v7 + 192))(v7) != 8 || !WTF::processHasEntitlement())
      {
        v11 = *(a1 + 32);
        v12 = (*(*v7 + 192))(v7);
        (*(*v11 + 96))(v11, v12, a3);
        atomic_store(1u, (v6 + 48));
        *(v6 + 45) = 0;
        WebCore::RealtimeMediaSource::start(*(v6 + 80));
        v13 = *(v6 + 80);
        if ((v13[128] & 1) == 0)
        {
          v14 = (*(*v13 + 120))(v13);
          if (v14)
          {
            WebKit::UserMediaCaptureManagerProxySourceProxy::prepareAudioDescription(v6, v14);
          }
        }

        WebKit::UserMediaCaptureManagerProxySourceProxy::observeMedia(v6);
      }

      else
      {
        v9 = qword_1ED641580;
        if (os_log_type_enabled(qword_1ED641580, OS_LOG_TYPE_ERROR))
        {
          *v15 = 0;
          _os_log_error_impl(&dword_19D52D000, v9, OS_LOG_TYPE_ERROR, "Unable to set media environment, failing capture.", v15, 2u);
        }

        (*(*v7 + 224))(v7);
      }

      (*(*v7 + 8))(v7);
    }

    else
    {
      v10 = qword_1ED641580;
      if (os_log_type_enabled(qword_1ED641580, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_19D52D000, v10, OS_LOG_TYPE_ERROR, "Unable to set capture attribution, failing capture.", buf, 2u);
      }
    }

    if (*(v6 + 16) == 1)
    {
      (*(*v6 + 8))(v6);
    }

    else
    {
      --*(v6 + 16);
    }
  }
}

uint64_t WebKit::UserMediaCaptureManagerProxy::stopProducingData(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  result = WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::RealtimeMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::UserMediaCaptureManagerProxySourceProxy,WTF::RawPtrTraits<WebKit::UserMediaCaptureManagerProxySourceProxy>,WTF::DefaultRefDerefTraits<WebKit::UserMediaCaptureManagerProxySourceProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RealtimeMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RealtimeMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::UserMediaCaptureManagerProxySourceProxy,WTF::RawPtrTraits<WebKit::UserMediaCaptureManagerProxySourceProxy>,WTF::DefaultRefDerefTraits<WebKit::UserMediaCaptureManagerProxySourceProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::RealtimeMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::UserMediaCaptureManagerProxySourceProxy,WTF::RawPtrTraits<WebKit::UserMediaCaptureManagerProxySourceProxy>,WTF::DefaultRefDerefTraits<WebKit::UserMediaCaptureManagerProxySourceProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RealtimeMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RealtimeMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::UserMediaCaptureManagerProxySourceProxy,WTF::RawPtrTraits<WebKit::UserMediaCaptureManagerProxySourceProxy>,WTF::DefaultRefDerefTraits<WebKit::UserMediaCaptureManagerProxySourceProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RealtimeMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::ObjectIdentifierGeneric<WebCore::RealtimeMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>((a1 + 24), &v4);
  if (result)
  {
    v3 = result;
    ++*(result + 16);
    *(result + 45) = 1;
    WebCore::RealtimeMediaSource::stop(*(result + 80));
    result = WebKit::UserMediaCaptureManagerProxySourceProxy::unobserveMedia(v3);
    if (v3[4] == 1)
    {
      return (*(*v3 + 8))(v3);
    }

    else
    {
      --v3[4];
    }
  }

  return result;
}

uint64_t WebKit::UserMediaCaptureManagerProxy::removeSource(uint64_t result, uint64_t a2)
{
  v3 = (result + 24);
  v2 = *(result + 24);
  if (v2)
  {
    if (a2 == -1)
    {
      goto LABEL_141;
    }

    if (!a2)
    {
      __break(0xC471u);
      JUMPOUT(0x19DBEEB9CLL);
    }

    v4 = result;
    v5 = *(v2 - 8);
    v6 = (~(a2 << 32) + a2) ^ ((~(a2 << 32) + a2) >> 22);
    v7 = 9 * ((v6 + ~(v6 << 13)) ^ ((v6 + ~(v6 << 13)) >> 8));
    v8 = (v7 ^ (v7 >> 15)) + ~((v7 ^ (v7 >> 15)) << 27);
    v9 = v5 & ((v8 >> 31) ^ v8);
    v10 = *(v2 + 16 * v9);
    if (v10 != a2)
    {
      v11 = 1;
      while (v10)
      {
        v9 = (v9 + v11) & v5;
        v10 = *(v2 + 16 * v9);
        ++v11;
        if (v10 == a2)
        {
          goto LABEL_10;
        }
      }

      v9 = *(v2 - 4);
    }

LABEL_10:
    if (v9 != *(v2 - 4))
    {
      v12 = (v2 + 16 * v9);
      v13 = *(v12[1] + 80);
      (**v13)(v13);
      v14 = *v3;
      if (*v3)
      {
        v15 = (v14 + 16 * *(v14 - 4));
        if (v15 == v12)
        {
LABEL_26:
          if (*(v14 - 12))
          {
            v20 = *(v14 - 4);
            v21 = v14;
            if (v20)
            {
              v22 = 16 * v20;
              v21 = v14;
              while ((*v21 + 1) <= 1)
              {
                v21 += 2;
                v22 -= 16;
                if (!v22)
                {
                  goto LABEL_41;
                }
              }
            }

            v23 = (v14 + 16 * v20);
            while (v21 != v23)
            {
              v24 = v21[1];
              v25 = *(v24 + 16);
              *(v24 + 16) = v25 + 1;
              v26 = *(v24 + 80);
              if (v25)
              {
                *(v24 + 16) = v25;
              }

              else
              {
                (*(*v24 + 8))(v24);
              }

              if (v26 == v13)
              {
                return (*(*v13 + 8))(v13);
              }

              do
              {
                v21 += 2;
              }

              while (v21 != v23 && (*v21 + 1) <= 1);
            }
          }

LABEL_41:
          v27 = *(v13 + 80);
          if (!v27)
          {
            return (*(*v13 + 8))(v13);
          }

          v28 = *(v4 + 80);
          if (!v28)
          {
            return (*(*v13 + 8))(v13);
          }

          if (v27 != -1)
          {
            v29 = *(v28 - 8);
            v30 = (v27 + ~(v27 << 32)) ^ ((v27 + ~(v27 << 32)) >> 22);
            v31 = 9 * ((v30 + ~(v30 << 13)) ^ ((v30 + ~(v30 << 13)) >> 8));
            v32 = (v31 ^ (v31 >> 15)) + ~((v31 ^ (v31 >> 15)) << 27);
            v33 = v29 & ((v32 >> 31) ^ v32);
            v34 = (v28 + 48 * v33);
            v35 = *v34;
            if (*v34 != v27)
            {
              v36 = 1;
              while (v35)
              {
                v33 = (v33 + v36) & v29;
                v34 = (v28 + 48 * v33);
                v35 = *v34;
                ++v36;
                if (*v34 == v27)
                {
                  goto LABEL_50;
                }
              }

              v34 = (v28 + 48 * *(v28 - 4));
            }

LABEL_50:
            if ((v28 + 48 * *(v28 - 4)) == v34)
            {
              return (*(*v13 + 8))(v13);
            }

            if ((*(*v13 + 192))(v13) != 8)
            {
              if ((*(*v13 + 192))(v13) == 2)
              {
                v47 = v34[2];
                if (v47)
                {
                  WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::LibWebRTCCodecsProxy>(&v86, v47, v34[1]);
                  v49 = v86;
                  if (v86)
                  {
                    (*(*v86 + 8))(v86);
                  }

                  if (v13 == v49)
                  {
                    v50 = v34[2];
                    v34[2] = 0;
                    if (v50)
                    {
                      WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v50, v48);
                    }

                    v34[1] = 0;
                  }
                }
              }

              return (*(*v13 + 8))(v13);
            }

            v37 = 0;
            atomic_compare_exchange_strong_explicit(v34 + 40, &v37, 1u, memory_order_acquire, memory_order_acquire);
            if (v37)
            {
              MEMORY[0x19EB01E30](v34 + 5);
            }

            v38 = *(v34 + 9);
            v39 = *(v34 + 8) + 1;
            *(v34 + 8) = v39;
            if (v39 <= v38)
            {
LABEL_87:
              if (!(*(*v13 + 40))(v13))
              {
                goto LABEL_112;
              }

              v54 = (*(*v13 + 32))(v13);
              v55 = WTF::ThreadSafeWeakPtrControlBlock::weakRef(v54);
              v57 = v55;
              v58 = v34[3];
              if (v58)
              {
                v59 = *(v58 - 8);
                v60 = WTF::PairHash<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebCore::RealtimeMediaSource const*>::hash(v55, v13) & v59;
                v61 = v58 + 16 * v60;
                v62 = *v61;
                v63 = *(v61 + 8);
                if (*v61 != v57 || v63 != v13)
                {
                  v65 = 1;
                  while (v62 | v63)
                  {
                    v60 = (v60 + v65) & v59;
                    v61 = v58 + 16 * v60;
                    v62 = *v61;
                    v63 = *(v61 + 8);
                    ++v65;
                    if (*v61 == v57 && v63 == v13)
                    {
                      goto LABEL_103;
                    }
                  }

                  v61 = v58 + 16 * *(v58 - 4);
                }
              }

              else
              {
                v61 = 0;
              }

LABEL_103:
              if (v57)
              {
                WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v57, v56);
                v58 = v34[3];
              }

              v67 = v58 ? v58 + 16 * *(v58 - 4) : 0;
              if (v67 == v61)
              {
LABEL_112:
                v72 = 0;
                goto LABEL_125;
              }

              HasStartedDeletion = WTF::ThreadSafeWeakPtrControlBlock::objectHasStartedDeletion(*v61);
              v70 = v34[3];
              if (v70)
              {
                v71 = v70 + 16 * *(v70 - 4);
                if (v71 == v61)
                {
                  goto LABEL_124;
                }
              }

              else
              {
                if (!v61)
                {
LABEL_124:
                  v72 = !HasStartedDeletion;
LABEL_125:
                  v78 = 1;
                  atomic_compare_exchange_strong_explicit(v34 + 40, &v78, 0, memory_order_release, memory_order_relaxed);
                  if (v78 == 1)
                  {
                    if (!v72)
                    {
                      return (*(*v13 + 8))(v13);
                    }
                  }

                  else
                  {
                    WTF::Lock::unlockSlow((v34 + 5));
                    if (!v72)
                    {
                      return (*(*v13 + 8))(v13);
                    }
                  }

                  WTF::ThreadSafeWeakHashSet<WebCore::RealtimeMediaSource>::values(&v86, v34 + 24);
                  if (v87)
                  {
                    v81 = 0;
                    v82 = v86;
                    v83 = 8 * v87;
                    do
                    {
                      v84 = *v82++;
                      v81 |= WTF::equal(*(v84 + 192), *(v13 + 192), v80) & (*(v84 + 326) ^ 1);
                      v83 -= 8;
                    }

                    while (v83);
                    WTF::Vector<WTF::Ref<WebCore::RealtimeMediaSource,WTF::RawPtrTraits<WebCore::RealtimeMediaSource>,WTF::DefaultRefDerefTraits<WebCore::RealtimeMediaSource>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v86, v85);
                    if (v81)
                    {
                      return (*(*v13 + 8))(v13);
                    }
                  }

                  else
                  {
                    WTF::Vector<WTF::Ref<WebCore::RealtimeMediaSource,WTF::RawPtrTraits<WebCore::RealtimeMediaSource>,WTF::DefaultRefDerefTraits<WebCore::RealtimeMediaSource>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v86, v79);
                  }

                  (*(**(v4 + 32) + 120))(*(v4 + 32), v27, v13 + 192);
                  return (*(*v13 + 8))(v13);
                }

                v71 = 0;
              }

              if (v71 != v61)
              {
                v73 = *v61;
                *v61 = 0;
                if (v73)
                {
                  WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v73, v68);
                }

                *v61 = -1;
                v74 = v34[3];
                v75 = vadd_s32(*(v74 - 16), 0xFFFFFFFF00000001);
                *(v74 - 16) = v75;
                v76 = *(v74 - 4);
                if (6 * v75.i32[1] < v76 && v76 >= 9)
                {
                  WTF::HashTable<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebCore::RealtimeMediaSource const*>,std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebCore::RealtimeMediaSource const*>,WTF::IdentityExtractor,WTF::DefaultHash<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebCore::RealtimeMediaSource const*>>,WTF::HashTraits<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebCore::RealtimeMediaSource const*>>,WTF::HashTraits<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebCore::RealtimeMediaSource const*>>,WTF::FastMalloc>::rehash(v34 + 3, v76 >> 1);
                }
              }

              goto LABEL_124;
            }

            v40 = v34[3];
            if (v40)
            {
              v41 = *(v40 - 4);
              if (!v41)
              {
LABEL_76:
                v51 = *(v40 - 4);
                if (6 * *(v40 - 12) < v51 && v51 > 8)
                {
                  WTF::HashTable<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebCore::RealtimeMediaSource const*>,std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebCore::RealtimeMediaSource const*>,WTF::IdentityExtractor,WTF::DefaultHash<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebCore::RealtimeMediaSource const*>>,WTF::HashTraits<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebCore::RealtimeMediaSource const*>>,WTF::HashTraits<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebCore::RealtimeMediaSource const*>>,WTF::FastMalloc>::shrinkToBestSize(v34 + 3);
                  v40 = v34[3];
                  *(v34 + 8) = 0;
                  if (!v40)
                  {
                    goto LABEL_84;
                  }
                }

                else
                {
                  *(v34 + 8) = 0;
                }

                LODWORD(v40) = *(v40 - 12);
                if (v40 > 0x7FFFFFFE)
                {
                  v53 = -2;
                  goto LABEL_86;
                }

LABEL_84:
                v53 = 2 * v40;
LABEL_86:
                *(v34 + 9) = v53;
                goto LABEL_87;
              }

              v42 = 0;
              v43 = (v40 + 16 * v41 - 16);
              do
              {
                if (*v43 != -1 && *v43 != 0 && WTF::ThreadSafeWeakPtrControlBlock::objectHasStartedDeletion(*v43))
                {
                  v45 = *v43;
                  *v43 = 0;
                  if (v45)
                  {
                    WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v45, v44);
                  }

                  *v43 = -1;
                  ++v42;
                }

                v43 -= 2;
                --v41;
              }

              while (v41);
              v40 = v34[3];
              if (v42)
              {
                v46 = *(v40 - 12) - v42;
                *(v40 - 16) += v42;
                *(v40 - 12) = v46;
                goto LABEL_76;
              }

              if (v40)
              {
                goto LABEL_76;
              }
            }

            LODWORD(v40) = 0;
            *(v34 + 8) = 0;
            goto LABEL_84;
          }

LABEL_141:
          __break(0xC471u);
          JUMPOUT(0x19DBEEB7CLL);
        }
      }

      else
      {
        v15 = 0;
      }

      if (v15 != v12)
      {
        v16 = v12[1];
        *v12 = -1;
        v12[1] = 0;
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

        v14 = *v3;
        v17 = vadd_s32(*(*v3 - 16), 0xFFFFFFFF00000001);
        *(v14 - 16) = v17;
        v18 = *(v14 - 4);
        if (6 * v17.i32[1] >= v18 || v18 < 9)
        {
          goto LABEL_26;
        }

        WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::RealtimeMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::RealtimeMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::UserMediaCaptureManagerProxySourceProxy,WTF::RawPtrTraits<WebKit::UserMediaCaptureManagerProxySourceProxy>,WTF::DefaultRefDerefTraits<WebKit::UserMediaCaptureManagerProxySourceProxy>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::RealtimeMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::UserMediaCaptureManagerProxySourceProxy,WTF::RawPtrTraits<WebKit::UserMediaCaptureManagerProxySourceProxy>,WTF::DefaultRefDerefTraits<WebKit::UserMediaCaptureManagerProxySourceProxy>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RealtimeMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::RealtimeMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::UserMediaCaptureManagerProxySourceProxy,WTF::RawPtrTraits<WebKit::UserMediaCaptureManagerProxySourceProxy>,WTF::DefaultRefDerefTraits<WebKit::UserMediaCaptureManagerProxySourceProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RealtimeMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RealtimeMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::UserMediaCaptureManagerProxySourceProxy,WTF::RawPtrTraits<WebKit::UserMediaCaptureManagerProxySourceProxy>,WTF::DefaultRefDerefTraits<WebKit::UserMediaCaptureManagerProxySourceProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RealtimeMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(v3, v18 >> 1, 0);
        v14 = *v3;
      }

      if (!v14)
      {
        goto LABEL_41;
      }

      goto LABEL_26;
    }
  }

  return result;
}

WTF::StringImpl *WebKit::UserMediaCaptureManagerProxy::applyConstraints(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v20 = a2;
  v5 = WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::RealtimeMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::UserMediaCaptureManagerProxySourceProxy,WTF::RawPtrTraits<WebKit::UserMediaCaptureManagerProxySourceProxy>,WTF::DefaultRefDerefTraits<WebKit::UserMediaCaptureManagerProxySourceProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RealtimeMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RealtimeMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::UserMediaCaptureManagerProxySourceProxy,WTF::RawPtrTraits<WebKit::UserMediaCaptureManagerProxySourceProxy>,WTF::DefaultRefDerefTraits<WebKit::UserMediaCaptureManagerProxySourceProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::RealtimeMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::UserMediaCaptureManagerProxySourceProxy,WTF::RawPtrTraits<WebKit::UserMediaCaptureManagerProxySourceProxy>,WTF::DefaultRefDerefTraits<WebKit::UserMediaCaptureManagerProxySourceProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RealtimeMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RealtimeMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::UserMediaCaptureManagerProxySourceProxy,WTF::RawPtrTraits<WebKit::UserMediaCaptureManagerProxySourceProxy>,WTF::DefaultRefDerefTraits<WebKit::UserMediaCaptureManagerProxySourceProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RealtimeMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::ObjectIdentifierGeneric<WebCore::RealtimeMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>((a1 + 24), &v20);
  if (v5)
  {
    v6 = v5;
    ++*(v5 + 16);
    if (WebCore::MediaTrackConstraintSetMap::isValid(a3))
    {
      v7 = *(a3 + 956);
      if (v7)
      {
        v8 = *(a3 + 944);
        v9 = 944 * v7;
        while ((WebCore::MediaTrackConstraintSetMap::isValid(v8) & 1) != 0)
        {
          v8 = (v8 + 944);
          v9 -= 944;
          if (!v9)
          {
            goto LABEL_7;
          }
        }

        v13 = qword_1ED6416C8;
        if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_FAULT))
        {
          *buf = 136446210;
          *&buf[4] = "void WebKit::UserMediaCaptureManagerProxy::applyConstraints(RealtimeMediaSourceIdentifier, WebCore::MediaConstraints &&)";
          _os_log_fault_impl(&dword_19D52D000, v13, OS_LOG_TYPE_FAULT, "/Library/Caches/com.apple.xbs/Sources/WebKit/Source/WebKit/GPUProcess/webrtc/UserMediaCaptureManagerProxy.cpp 728: Invalid message dispatched %{public}s", buf, 0xCu);
        }

        result = (*(**(a1 + 32) + 32))(*(a1 + 32));
        *(result + 94) = 1;
        if (IPC::s_shouldCrashOnMessageCheckFailure == 1)
        {
          __break(0xC471u);
          JUMPOUT(0x19DBEED88);
        }
      }

      else
      {
LABEL_7:
        v10 = v20;
        ++v6[4];
        *buf = v10;
        *&buf[8] = v6;
        WebKit::UserMediaCaptureManagerProxy::ConnectionProxy::protectedConnection(&buf[16], *(a1 + 32));
        v11 = WTF::fastMalloc(0x20);
        *v11 = &unk_1F10FEB98;
        *(v11 + 8) = *buf;
        *(v11 + 16) = *&buf[8];
        v17 = v11;
        WebKit::UserMediaCaptureManagerProxySourceProxy::applyConstraints(v6, a3, &v17);
        result = v17;
        if (v17)
        {
          result = (*(*v17 + 8))(v17);
        }
      }
    }

    else
    {
      v16 = qword_1ED6416C8;
      if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_FAULT))
      {
        *buf = 136446210;
        *&buf[4] = "void WebKit::UserMediaCaptureManagerProxy::applyConstraints(RealtimeMediaSourceIdentifier, WebCore::MediaConstraints &&)";
        _os_log_fault_impl(&dword_19D52D000, v16, OS_LOG_TYPE_FAULT, "/Library/Caches/com.apple.xbs/Sources/WebKit/Source/WebKit/GPUProcess/webrtc/UserMediaCaptureManagerProxy.cpp 726: Invalid message dispatched %{public}s", buf, 0xCu);
      }

      result = (*(**(a1 + 32) + 32))(*(a1 + 32));
      *(result + 94) = 1;
      if (IPC::s_shouldCrashOnMessageCheckFailure == 1)
      {
        __break(0xC471u);
        JUMPOUT(0x19DBEEEC4);
      }
    }

    if (v6[4] == 1)
    {
      return (*(*v6 + 8))(v6);
    }

    else
    {
      --v6[4];
    }
  }

  else
  {
    WebKit::UserMediaCaptureManagerProxy::ConnectionProxy::protectedConnection(&v19, *(a1 + 32));
    v14 = v19;
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    *buf = &v20;
    buf[8] = 0;
    *&buf[16] = &v18;
    IPC::Connection::send<Messages::UserMediaCaptureManager::ApplyConstraintsFailed>(v14, buf);
    result = v18;
    v18 = 0;
    if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      result = WTF::StringImpl::destroy(result, v15);
    }

    if (v14)
    {
      return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v14);
    }
  }

  return result;
}

atomic_ullong *WebKit::UserMediaCaptureManagerProxy::ConnectionProxy::protectedConnection(WebKit::UserMediaCaptureManagerProxy::ConnectionProxy *this, uint64_t a2)
{
  result = (*(*a2 + 32))(a2);
  v4 = result;
  while (1)
  {
    v5 = *result;
    if ((*result & 1) == 0)
    {
      break;
    }

    v6 = *result;
    atomic_compare_exchange_strong_explicit(result, &v6, v5 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v6 == v5)
    {
      goto LABEL_6;
    }
  }

  result = WTF::ThreadSafeWeakPtrControlBlock::strongRef(*result);
LABEL_6:
  *this = v4;
  return result;
}

IPC::Encoder *IPC::Connection::send<Messages::UserMediaCaptureManager::ApplyConstraintsFailed>(uint64_t *a1, char *a2)
{
  v4 = IPC::Encoder::operator new(0x238, a2);
  *v4 = 1768;
  *(v4 + 68) = 0;
  *(v4 + 70) = 0;
  *(v4 + 69) = 0;
  *(v4 + 2) = 0;
  *(v4 + 3) = 0;
  *(v4 + 1) = 0;
  IPC::Encoder::encodeHeader(v4);
  v9 = v4;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v4, **a2);
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(v4, a2[8]);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v4, *(a2 + 2));
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

uint64_t WebKit::UserMediaCaptureManagerProxy::clone(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v80 = *MEMORY[0x1E69E9840];
  v75 = a3;
  v76 = a2;
  v6 = (a1 + 24);
  v5 = *(a1 + 24);
  if (!v5)
  {
LABEL_98:
    v70 = qword_1ED6416C8;
    if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446210;
      *&buf[4] = "void WebKit::UserMediaCaptureManagerProxy::clone(RealtimeMediaSourceIdentifier, RealtimeMediaSourceIdentifier, WebCore::PageIdentifier)";
      _os_log_fault_impl(&dword_19D52D000, v70, OS_LOG_TYPE_FAULT, "/Library/Caches/com.apple.xbs/Sources/WebKit/Source/WebKit/GPUProcess/webrtc/UserMediaCaptureManagerProxy.cpp 742: Invalid message dispatched %{public}s", buf, 0xCu);
    }

    result = (*(**(a1 + 32) + 32))(*(a1 + 32));
    *(result + 94) = 1;
    if (IPC::s_shouldCrashOnMessageCheckFailure == 1)
    {
      __break(0xC471u);
      JUMPOUT(0x19DBEF7E0);
    }

    return result;
  }

  if (a2 == -1)
  {
    __break(0xC471u);
    JUMPOUT(0x19DBEF8D8);
  }

  if (!a2)
  {
    __break(0xC471u);
    JUMPOUT(0x19DBEF8F8);
  }

  v8 = *(v5 - 8);
  v9 = (~(a2 << 32) + a2) ^ ((~(a2 << 32) + a2) >> 22);
  v10 = 9 * ((v9 + ~(v9 << 13)) ^ ((v9 + ~(v9 << 13)) >> 8));
  v11 = (v10 ^ (v10 >> 15)) + ~((v10 ^ (v10 >> 15)) << 27);
  v12 = v8 & ((v11 >> 31) ^ v11);
  v13 = *(v5 + 16 * v12);
  if (v13 != a2)
  {
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

    goto LABEL_98;
  }

LABEL_8:
  if (a3 == -1)
  {
    __break(0xC471u);
    JUMPOUT(0x19DBEF918);
  }

  if (!a3)
  {
    __break(0xC471u);
    JUMPOUT(0x19DBEF938);
  }

  v15 = (~(a3 << 32) + a3) ^ ((~(a3 << 32) + a3) >> 22);
  v16 = 9 * ((v15 + ~(v15 << 13)) ^ ((v15 + ~(v15 << 13)) >> 8));
  v17 = (v16 ^ (v16 >> 15)) + ~((v16 ^ (v16 >> 15)) << 27);
  v18 = v8 & ((v17 >> 31) ^ v17);
  v19 = *(v5 + 16 * v18);
  if (v19 == a3)
  {
LABEL_14:
    v21 = qword_1ED6416C8;
    if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446210;
      *&buf[4] = "void WebKit::UserMediaCaptureManagerProxy::clone(RealtimeMediaSourceIdentifier, RealtimeMediaSourceIdentifier, WebCore::PageIdentifier)";
      _os_log_fault_impl(&dword_19D52D000, v21, OS_LOG_TYPE_FAULT, "/Library/Caches/com.apple.xbs/Sources/WebKit/Source/WebKit/GPUProcess/webrtc/UserMediaCaptureManagerProxy.cpp 743: Invalid message dispatched %{public}s", buf, 0xCu);
    }

    result = (*(**(a1 + 32) + 32))(*(a1 + 32));
    *(result + 94) = 1;
    if (IPC::s_shouldCrashOnMessageCheckFailure != 1)
    {
      return result;
    }

    __break(0xC471u);
    goto LABEL_110;
  }

  v20 = 1;
  while (v19)
  {
    v18 = (v18 + v20) & v8;
    v19 = *(v5 + 16 * v18);
    ++v20;
    if (v19 == a3)
    {
      goto LABEL_14;
    }
  }

  result = WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::RealtimeMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::UserMediaCaptureManagerProxySourceProxy,WTF::RawPtrTraits<WebKit::UserMediaCaptureManagerProxySourceProxy>,WTF::DefaultRefDerefTraits<WebKit::UserMediaCaptureManagerProxySourceProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RealtimeMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RealtimeMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::UserMediaCaptureManagerProxySourceProxy,WTF::RawPtrTraits<WebKit::UserMediaCaptureManagerProxySourceProxy>,WTF::DefaultRefDerefTraits<WebKit::UserMediaCaptureManagerProxySourceProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::RealtimeMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::UserMediaCaptureManagerProxySourceProxy,WTF::RawPtrTraits<WebKit::UserMediaCaptureManagerProxySourceProxy>,WTF::DefaultRefDerefTraits<WebKit::UserMediaCaptureManagerProxySourceProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RealtimeMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RealtimeMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::UserMediaCaptureManagerProxySourceProxy,WTF::RawPtrTraits<WebKit::UserMediaCaptureManagerProxySourceProxy>,WTF::DefaultRefDerefTraits<WebKit::UserMediaCaptureManagerProxySourceProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RealtimeMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::ObjectIdentifierGeneric<WebCore::RealtimeMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>((a1 + 24), &v76);
  if (result)
  {
    v23 = result;
    ++*(result + 16);
    (*(**(result + 80) + 48))(&v74);
    if ((*(*v74 + 192))(v74) != 8)
    {
      goto LABEL_43;
    }

    if (a4 == -1)
    {
      __break(0xC471u);
      JUMPOUT(0x19DBEF958);
    }

    if (a4)
    {
      v24 = *(a1 + 80);
      if (!v24)
      {
        WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::UserMediaCaptureManagerProxy::PageSources>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::UserMediaCaptureManagerProxy::PageSources>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::UserMediaCaptureManagerProxy::PageSources,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WebKit::UserMediaCaptureManagerProxy::PageSources>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand((a1 + 80), 0);
        v24 = *(a1 + 80);
      }

      v25 = *(v24 - 8);
      v26 = (~(a4 << 32) + a4) ^ ((~(a4 << 32) + a4) >> 22);
      v27 = 9 * ((v26 + ~(v26 << 13)) ^ ((v26 + ~(v26 << 13)) >> 8));
      v28 = (v27 ^ (v27 >> 15)) + ~((v27 ^ (v27 >> 15)) << 27);
      v29 = v25 & ((v28 >> 31) ^ v28);
      v30 = (v24 + 48 * v29);
      v31 = *v30;
      if (*v30)
      {
        v32 = 0;
        v33 = 1;
        while (v31 != a4)
        {
          if (v31 == -1)
          {
            v32 = v30;
          }

          v29 = (v29 + v33) & v25;
          v30 = (v24 + 48 * v29);
          v31 = *v30;
          ++v33;
          if (!*v30)
          {
            if (v32)
            {
              *(v32 + 1) = 0u;
              *(v32 + 2) = 0u;
              *v32 = 0u;
              --*(*(a1 + 80) - 16);
              v30 = v32;
            }

            goto LABEL_32;
          }
        }

        goto LABEL_42;
      }

LABEL_32:
      *v30 = a4;
      v79 = 0;
      *buf = 0u;
      v78 = 0u;
      WTF::GenericHashTraits<WebKit::UserMediaCaptureManagerProxy::PageSources>::assignToEmpty<WebKit::UserMediaCaptureManagerProxy::PageSources,WebKit::UserMediaCaptureManagerProxy::PageSources>((v30 + 1), buf);
      if (v78)
      {
        WTF::HashTable<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebCore::RealtimeMediaSource const*>,std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebCore::RealtimeMediaSource const*>,WTF::IdentityExtractor,WTF::DefaultHash<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebCore::RealtimeMediaSource const*>>,WTF::HashTraits<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebCore::RealtimeMediaSource const*>>,WTF::HashTraits<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebCore::RealtimeMediaSource const*>>,WTF::FastMalloc>::deallocateTable(v78, v34);
      }

      v35 = *&buf[8];
      *&buf[8] = 0;
      if (v35)
      {
        WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v35, v34);
      }

      v36 = *(a1 + 80);
      if (v36)
      {
        v37 = *(v36 - 12) + 1;
      }

      else
      {
        v37 = 1;
      }

      *(v36 - 12) = v37;
      v38 = (*(v36 - 16) + v37);
      v39 = *(v36 - 4);
      if (v39 > 0x400)
      {
        if (v39 > 2 * v38)
        {
          goto LABEL_42;
        }
      }

      else if (3 * v39 > 4 * v38)
      {
LABEL_42:
        WTF::ThreadSafeWeakHashSet<WebCore::RealtimeMediaSource>::add<WebCore::RealtimeMediaSource>((v30 + 3), v74);
LABEL_43:
        v40 = (*(**(a1 + 32) + 32))(*(a1 + 32));
        v41 = v40;
        while (1)
        {
          v42 = *v40;
          if ((*v40 & 1) == 0)
          {
            break;
          }

          v43 = *v40;
          atomic_compare_exchange_strong_explicit(v40, &v43, v42 + 2, memory_order_relaxed, memory_order_relaxed);
          if (v43 == v42)
          {
            goto LABEL_48;
          }
        }

        WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v40);
LABEL_48:
        v73 = v41;
        v44 = (*(**(a1 + 32) + 104))(*(a1 + 32));
        v45 = v44;
        if (v44)
        {
          while (1)
          {
            v46 = *(v44 + 8);
            if ((v46 & 1) == 0)
            {
              break;
            }

            v47 = *(v44 + 8);
            atomic_compare_exchange_strong_explicit((v44 + 8), &v47, v46 + 2, memory_order_relaxed, memory_order_relaxed);
            if (v47 == v46)
            {
              goto LABEL_53;
            }
          }

          WTF::ThreadSafeWeakPtrControlBlock::strongRef(*(v44 + 8));
        }

LABEL_53:
        v72 = v45;
        v48 = v75;
        v49 = (*(**(a1 + 32) + 64))(*(a1 + 32));
        v50 = WTF::MachSendRight::MachSendRight(buf, v49);
        v52 = WebKit::UserMediaCaptureManagerProxySourceProxy::operator new(v50, v51);
        v71 = WebKit::UserMediaCaptureManagerProxySourceProxy::UserMediaCaptureManagerProxySourceProxy(v52, v48, &v73, buf, &v74, &v72);
        WTF::MachSendRight::~MachSendRight(buf);
        if (*(v52 + 392) == *(v23 + 392))
        {
          if (*(v52 + 392))
          {
            v54 = *(v23 + 288);
            v55 = *(v23 + 304);
            *(v52 + 320) = *(v23 + 320);
            *(v52 + 288) = v54;
            *(v52 + 304) = v55;
            v56 = *(v23 + 328);
            if (v56)
            {
              atomic_fetch_add_explicit(v56, 2u, memory_order_relaxed);
            }

            v57 = *(v52 + 328);
            *(v52 + 328) = v56;
            if (v57 && atomic_fetch_add_explicit(v57, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v57, v53);
            }

            v58 = *(v23 + 336);
            if (v58)
            {
              atomic_fetch_add_explicit(v58, 2u, memory_order_relaxed);
            }

            v59 = *(v52 + 336);
            *(v52 + 336) = v58;
            if (v59 && atomic_fetch_add_explicit(v59, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v59, v53);
            }

            v60 = *(v23 + 344);
            if (v60)
            {
              atomic_fetch_add_explicit(v60, 2u, memory_order_relaxed);
            }

            v61 = *(v52 + 344);
            *(v52 + 344) = v60;
            if (v61 && atomic_fetch_add_explicit(v61, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v61, v53);
            }

            v62 = *(v23 + 352);
            v63 = *(v23 + 368);
            *(v52 + 382) = *(v23 + 382);
            *(v52 + 352) = v62;
            *(v52 + 368) = v63;
          }
        }

        else
        {
          v64 = v52 + 288;
          if (*(v52 + 392))
          {
            std::__optional_destruct_base<WebCore::RealtimeMediaSourceSettings,false>::reset[abi:sn200100](v64, v53);
          }

          else
          {
            std::__optional_storage_base<WebCore::RealtimeMediaSourceSettings,false>::__construct[abi:sn200100]<WebCore::RealtimeMediaSourceSettings const&>(v64, (v23 + 288));
          }
        }

        *(v52 + 400) = *(v23 + 400);
        *(v52 + 408) = *(v23 + 408);
        if (*(v52 + 1384) == *(v23 + 1384))
        {
          if (*(v52 + 1384))
          {
            WebCore::MediaTrackConstraintSetMap::operator=((v52 + 416), (v23 + 416));
            WTF::Vector<WebCore::MediaTrackConstraintSetMap,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::operator=((v52 + 1360), (v23 + 1360));
            *(v52 + 1376) = *(v23 + 1376);
          }
        }

        else if (*(v52 + 1384))
        {
          WTF::Vector<WebCore::MediaTrackConstraintSetMap,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v52 + 1360, v53);
          WebCore::MediaTrackConstraintSetMap::~MediaTrackConstraintSetMap((v52 + 416), v65);
          *(v52 + 1384) = 0;
        }

        else
        {
          WebCore::MediaTrackConstraintSetMap::MediaTrackConstraintSetMap((v52 + 416), (v23 + 416));
          WTF::Vector<WebCore::MediaTrackConstraintSetMap,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v52 + 1360, v23 + 1360);
          *(v52 + 1376) = *(v23 + 1376);
          *(v52 + 1384) = 1;
        }

        WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded((a1 + 8), a1);
        v66 = *(a1 + 8);
        atomic_fetch_add(v66, 1u);
        v67 = WTF::fastMalloc(0x18);
        *v67 = &unk_1F10FEBC0;
        v67[1] = v66;
        v67[2] = a4;
        v68 = *(v52 + 280);
        *(v52 + 280) = v67;
        if (v68)
        {
          (*(*v68 + 8))(v68);
        }

        if (*(v23 + 44) == 1)
        {
          WebKit::UserMediaCaptureManagerProxySourceProxy::observeMedia(v71);
        }

        WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::RealtimeMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::UserMediaCaptureManagerProxySourceProxy,WTF::RawPtrTraits<WebKit::UserMediaCaptureManagerProxySourceProxy>,WTF::DefaultRefDerefTraits<WebKit::UserMediaCaptureManagerProxySourceProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RealtimeMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RealtimeMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::UserMediaCaptureManagerProxySourceProxy,WTF::RawPtrTraits<WebKit::UserMediaCaptureManagerProxySourceProxy>,WTF::DefaultRefDerefTraits<WebKit::UserMediaCaptureManagerProxySourceProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<WTF::Ref<WebKit::UserMediaCaptureManagerProxySourceProxy,WTF::RawPtrTraits<WebKit::UserMediaCaptureManagerProxySourceProxy>,WTF::DefaultRefDerefTraits<WebKit::UserMediaCaptureManagerProxySourceProxy>>>(buf, v6, &v75, &v71);
        if (v71)
        {
          if (*(v71 + 4) == 1)
          {
            (*(*v71 + 8))();
          }

          else
          {
            --*(v71 + 4);
          }
        }

        if (v72)
        {
          WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref((v72 + 8), v69);
        }

        if (v73)
        {
          WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v73);
        }

        result = v74;
        v74 = 0;
        if (result)
        {
          result = (*(*result + 8))(result);
        }

        if (*(v23 + 16) == 1)
        {
          return (*(*v23 + 8))(v23);
        }

        --*(v23 + 16);
        return result;
      }

      v30 = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::UserMediaCaptureManagerProxy::PageSources>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::UserMediaCaptureManagerProxy::PageSources>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::UserMediaCaptureManagerProxy::PageSources,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WebKit::UserMediaCaptureManagerProxy::PageSources>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand((a1 + 80), v30);
      goto LABEL_42;
    }

    __break(0xC471u);
LABEL_110:
    JUMPOUT(0x19DBEF1D0);
  }

  return result;
}

uint64_t WebKit::UserMediaCaptureManagerProxySourceProxy::observeMedia(uint64_t this)
{
  if ((*(this + 44) & 1) == 0)
  {
    *(this + 44) = 1;
    if (*(*(this + 80) + 128))
    {
      if (!*(this + 400) && *(this + 408) == 0.0)
      {
        return MEMORY[0x1EEE57560](*(this + 80), this + 32);
      }

      else
      {
        return WebCore::RealtimeMediaSource::addVideoFrameObserver();
      }
    }

    else
    {
      return WebCore::RealtimeMediaSource::addAudioSampleObserver();
    }
  }

  return this;
}

WTF::StringImpl *WebKit::UserMediaCaptureManagerProxy::takePhoto(uint64_t a1, uint64_t a2, _OWORD *a3, uint64_t *a4)
{
  v35 = a2;
  v6 = WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::RealtimeMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::UserMediaCaptureManagerProxySourceProxy,WTF::RawPtrTraits<WebKit::UserMediaCaptureManagerProxySourceProxy>,WTF::DefaultRefDerefTraits<WebKit::UserMediaCaptureManagerProxySourceProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RealtimeMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RealtimeMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::UserMediaCaptureManagerProxySourceProxy,WTF::RawPtrTraits<WebKit::UserMediaCaptureManagerProxySourceProxy>,WTF::DefaultRefDerefTraits<WebKit::UserMediaCaptureManagerProxySourceProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::RealtimeMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::UserMediaCaptureManagerProxySourceProxy,WTF::RawPtrTraits<WebKit::UserMediaCaptureManagerProxySourceProxy>,WTF::DefaultRefDerefTraits<WebKit::UserMediaCaptureManagerProxySourceProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RealtimeMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RealtimeMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::UserMediaCaptureManagerProxySourceProxy,WTF::RawPtrTraits<WebKit::UserMediaCaptureManagerProxySourceProxy>,WTF::DefaultRefDerefTraits<WebKit::UserMediaCaptureManagerProxySourceProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RealtimeMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::ObjectIdentifierGeneric<WebCore::RealtimeMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>((a1 + 24), &v35);
  if (v6)
  {
    v7 = v6;
    ++*(v6 + 16);
    *v36 = 0;
    *&v36[8] = 0;
    *&v36[16] = "takePhoto";
    *v37 = 0;
    WTF::NativePromiseProducer<std::pair<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String>,WTF::String,0u>::NativePromiseProducer<std::enable_if<true,void>>(&v42, 0, v36);
    v8 = v42;
    if (v42)
    {
      atomic_fetch_add(v42 + 2, 1u);
    }

    WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(v7 + 2, v7);
    v9 = *(v7 + 1);
    atomic_fetch_add(v9, 1u);
    v10 = a3[1];
    *&v36[8] = *a3;
    *v37 = v10;
    *&v37[10] = *(a3 + 26);
    v39 = v43;
    v11 = v42;
    v42 = 0;
    v40 = v44;
    v12 = WTF::fastMalloc(0x68);
    *v12 = &unk_1F10FE6B0;
    *(v12 + 8) = v9;
    v13 = *&v36[8];
    v14 = *&v37[16];
    *(v12 + 32) = *v37;
    *(v12 + 48) = v14;
    *(v12 + 16) = v13;
    *v36 = 0;
    v38 = 0;
    *(v12 + 64) = v11;
    v15 = v39;
    *(v12 + 88) = v40;
    *(v12 + 72) = v15;
    v41 = v12;
    WebKit::UserMediaCaptureManagerProxySourceProxy::queueAndProcessSerialAction(v7, &v41);
    v16 = v41;
    v41 = 0;
    if (v16)
    {
      (*(*v16 + 8))(v16);
    }

    WTF::NativePromiseProducer<std::pair<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String>,WTF::String,0u>::~NativePromiseProducer(&v38);
    v18 = *v36;
    *v36 = 0;
    if (v18 && atomic_fetch_add(v18, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v18);
      WTF::fastFree(v18, v17);
    }

    v19 = WTF::NativePromiseProducer<std::pair<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String>,WTF::String,0u>::~NativePromiseProducer(&v42);
    v20 = WTF::RunLoop::mainSingleton(v19);
    *v36 = 0;
    *&v36[8] = 0;
    v21 = *a4;
    *a4 = 0;
    v22 = WTF::fastMalloc(0x50);
    while (1)
    {
      v23 = *(v20 + 8);
      if ((v23 & 1) == 0)
      {
        break;
      }

      v24 = *(v20 + 8);
      atomic_compare_exchange_strong_explicit((v20 + 8), &v24, v23 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v24 == v23)
      {
        goto LABEL_14;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*(v20 + 8));
LABEL_14:
    v25 = WTF::fastMalloc(0x10);
    *v25 = &unk_1F10FE788;
    v25[1] = v21;
    *(v22 + 8) = 1;
    *(v22 + 16) = v20;
    *(v22 + 24) = *v36;
    *(v22 + 40) = "takePhoto";
    *(v22 + 48) = 0;
    *(v22 + 56) = 0;
    *v22 = &unk_1F10FE7B0;
    *(v22 + 64) = 0;
    *(v22 + 72) = v25;
    atomic_fetch_add(v8 + 2, 1u);
    v32 = *v36;
    v33 = "takePhoto";
    v34 = 0;
    v42 = v22;
    WTF::NativePromise<std::pair<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String>,WTF::String,0u>::maybeSettle(v8, &v42, &v32);
    v26 = v42;
    v42 = 0;
    if (v26 && atomic_fetch_add(v26 + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v26 + 2);
      (*(*v26 + 8))(v26);
    }

    result = v8;
    if (v8 && atomic_fetch_add(v8 + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v8 + 2);
      result = (*(*v8 + 16))(v8);
    }

    else if (!v8)
    {
LABEL_22:
      if (v7[4] == 1)
      {
        return (*(*v7 + 8))(v7);
      }

      --v7[4];
      return result;
    }

    if (atomic_fetch_add(v8 + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v8 + 2);
      result = (*(*v8 + 16))(v8);
    }

    goto LABEL_22;
  }

  v42 = "Device not available";
  *&v43 = 21;
  std::__tuple_leaf<1ul,WTF::String,false>::__tuple_leaf[abi:sn200100]<WTF::ASCIILiteral,0>(&v41, &v42);
  v28 = v41;
  v41 = 0;
  *v36 = v28;
  v37[0] = 1;
  v29 = *a4;
  *a4 = 0;
  (*(*v29 + 16))(v29, v36);
  (*(*v29 + 8))(v29);
  mpark::variant<std::pair<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String>,WTF::String>::~variant(v36, v30);
  result = v41;
  v41 = 0;
  if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    return WTF::StringImpl::destroy(result, v31);
  }

  return result;
}

unsigned int *WebKit::UserMediaCaptureManagerProxy::getPhotoCapabilities(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v87 = *MEMORY[0x1E69E9840];
  v65 = a2;
  v4 = WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::RealtimeMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::UserMediaCaptureManagerProxySourceProxy,WTF::RawPtrTraits<WebKit::UserMediaCaptureManagerProxySourceProxy>,WTF::DefaultRefDerefTraits<WebKit::UserMediaCaptureManagerProxySourceProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RealtimeMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RealtimeMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::UserMediaCaptureManagerProxySourceProxy,WTF::RawPtrTraits<WebKit::UserMediaCaptureManagerProxySourceProxy>,WTF::DefaultRefDerefTraits<WebKit::UserMediaCaptureManagerProxySourceProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::RealtimeMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::UserMediaCaptureManagerProxySourceProxy,WTF::RawPtrTraits<WebKit::UserMediaCaptureManagerProxySourceProxy>,WTF::DefaultRefDerefTraits<WebKit::UserMediaCaptureManagerProxySourceProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RealtimeMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RealtimeMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::UserMediaCaptureManagerProxySourceProxy,WTF::RawPtrTraits<WebKit::UserMediaCaptureManagerProxySourceProxy>,WTF::DefaultRefDerefTraits<WebKit::UserMediaCaptureManagerProxySourceProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RealtimeMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::ObjectIdentifierGeneric<WebCore::RealtimeMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>((a1 + 24), &v65);
  if (v4)
  {
    v5 = v4;
    ++*(v4 + 16);
    v6 = (*(**(v4 + 80) + 152))(&v59);
    v7 = v59;
    v8 = WTF::RunLoop::mainSingleton(v6);
    v9 = *a3;
    *a3 = 0;
    v10 = WTF::fastMalloc(0x50);
    while (1)
    {
      v11 = *(v8 + 8);
      if ((v11 & 1) == 0)
      {
        break;
      }

      v12 = *(v8 + 8);
      atomic_compare_exchange_strong_explicit((v8 + 8), &v12, v11 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v12 == v11)
      {
        goto LABEL_7;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*(v8 + 8));
LABEL_7:
    v13 = WTF::fastMalloc(0x10);
    v14 = 0;
    *v13 = &unk_1F10FE7E0;
    v13[1] = v9;
    *(v10 + 8) = 1;
    *(v10 + 16) = v8;
    *(v10 + 24) = 0uLL;
    *(v10 + 40) = "getPhotoCapabilities";
    *(v10 + 48) = 0;
    *(v10 + 56) = 0;
    *v10 = &unk_1F10FE808;
    *(v10 + 64) = 0;
    *(v10 + 72) = v13;
    atomic_fetch_add((v7 + 8), 1u);
    v62 = 0uLL;
    v63 = "getPhotoCapabilities";
    v64 = 0;
    v60 = v7;
    v61 = 0;
    v15 = (v7 + 48);
    v66 = v10;
    v67 = (v7 + 48);
    v68 = 1;
    atomic_compare_exchange_strong_explicit((v7 + 48), &v14, 1u, memory_order_acquire, memory_order_acquire);
    if (v14)
    {
      v15 = MEMORY[0x19EB01E30]();
    }

    *(v7 + 256) = 1;
    v16 = WTF::NativePromiseBase::logChannel(v15);
    if (*v16)
    {
      v17 = v16;
      if (v16[16] >= 4u)
      {
        WTF::Logger::LogSiteIdentifier::toString(&v77, &v62);
        WTF::String::String(&v76, " invoking maybeSettle() [");
        WTF::LogArgument<WTF::NativePromise<void,WebCore::PlatformMediaError,0u>>::toString(v7, &v75);
        WTF::String::String(&v74, " callback:");
        WTF::LogArgument<void const*>::toString();
        WTF::String::String(&v72, " isNothing:");
        WTF::StringImpl::createWithoutCopyingNonEmpty();
        WTF::String::String(&v70, "]");
        result = WTF::tryMakeString<WTF::String,WTF::String,WTF::String,WTF::String,WTF::String,WTF::String,WTF::String,WTF::String>(&v77, &v76, &v75, &v74, &v73, &v72, &v71, &v70, &v78);
        if (!v78)
        {
          __break(0xC471u);
          return result;
        }

        v20 = v70;
        v70 = 0;
        if (v20 && atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v20, v19);
        }

        v21 = v71;
        v71 = 0;
        if (v21 && atomic_fetch_add_explicit(v21, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v21, v19);
        }

        v22 = v72;
        v72 = 0;
        if (v22 && atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v22, v19);
        }

        v23 = v73;
        v73 = 0;
        if (v23 && atomic_fetch_add_explicit(v23, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v23, v19);
        }

        v24 = v74;
        v74 = 0;
        if (v24 && atomic_fetch_add_explicit(v24, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v24, v19);
        }

        v25 = v75;
        v75 = 0;
        if (v25 && atomic_fetch_add_explicit(v25, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v25, v19);
        }

        v26 = v76;
        v76 = 0;
        if (v26 && atomic_fetch_add_explicit(v26, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v26, v19);
        }

        v27 = v77;
        v77 = 0;
        if (v27 && atomic_fetch_add_explicit(v27, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v27, v19);
        }

        v28 = *(v17 + 4);
        v29 = os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT);
        if (v29)
        {
          WTF::String::utf8();
          v31 = v69[0] ? v69[0] + 16 : 0;
          *buf = 136446210;
          *&buf[4] = v31;
          _os_log_impl(&dword_19D52D000, v28, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
          v29 = v69[0];
          v69[0] = 0;
          if (v29)
          {
            if (*v29 == 1)
            {
              v29 = WTF::fastFree(v29, v30);
            }

            else
            {
              --*v29;
            }
          }
        }

        if (*v17 && v17[16] >= 4u)
        {
          v32 = MEMORY[0x1E696EBC0];
          while (1)
          {
            v33 = *v32;
            if (v33)
            {
              break;
            }

            v34 = *v32;
            atomic_compare_exchange_strong_explicit(v32, &v34, v33 | 1, memory_order_acquire, memory_order_acquire);
            if (v34 == v33)
            {
              v35 = WTF::Logger::observers(v29);
              v36 = *(v35 + 12);
              if (v36)
              {
                v37 = *v35;
                v38 = *v35 + 8 * v36;
                do
                {
                  v39 = *v37;
                  *buf = 0;
                  WTF::Logger::LogSiteIdentifier::toString(&buf[8], &v62);
                  v80 = 0;
                  WTF::String::String(v81, " invoking maybeSettle() [");
                  v81[2] = 0;
                  WTF::LogArgument<WTF::NativePromise<void,WebCore::PlatformMediaError,0u>>::toString(v7, &v82);
                  v83 = 0;
                  WTF::String::String(v84, " callback:");
                  v84[2] = 0;
                  WTF::LogArgument<void const*>::toString();
                  v84[6] = 0;
                  WTF::String::String(v85, " isNothing:");
                  v85[2] = 0;
                  WTF::StringImpl::createWithoutCopyingNonEmpty();
                  v85[6] = 0;
                  WTF::String::String(v86, "]");
                  WTF::Vector<WTF::JSONLogValue,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v69, buf, 8uLL);
                  (*(*v39 + 16))(v39, v17, 4, v69);
                  WTF::Vector<std::tuple<Inspector::BackendDispatcher::CommonErrorCode,WTF::String>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v69, v40);
                  for (i = 120; i != -8; i -= 16)
                  {
                    v42 = *&buf[i];
                    *&buf[i] = 0;
                    if (v42 && atomic_fetch_add_explicit(v42, 0xFFFFFFFE, memory_order_relaxed) == 2)
                    {
                      WTF::StringImpl::destroy(v42, v30);
                    }
                  }

                  ++v37;
                }

                while (v37 != v38);
              }

              v43 = 1;
              atomic_compare_exchange_strong_explicit(v32, &v43, 0, memory_order_release, memory_order_relaxed);
              if (v43 != 1)
              {
                WTF::Lock::unlockSlow(MEMORY[0x1E696EBC0]);
              }

              break;
            }
          }
        }

        v44 = v78;
        v78 = 0;
        if (v44 && atomic_fetch_add_explicit(v44, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v44, v30);
        }
      }
    }

    if (*(v7 + 208))
    {
      WTF::NativePromise<WebCore::PhotoCapabilities,WTF::String,0u>::ThenCallbackBase::dispatch(v66, v7, &v67);
    }

    else
    {
      v45 = *(v7 + 228);
      if (v45 == *(v7 + 224))
      {
        v46 = WTF::Vector<WTF::Ref<WTF::NativePromise<WebCore::VideoPlaybackQualityMetrics,WebCore::PlatformMediaError,0u>::ThenCallbackBase,WTF::RawPtrTraits<WTF::NativePromise<WebCore::VideoPlaybackQualityMetrics,WebCore::PlatformMediaError,0u>::ThenCallbackBase>,WTF::DefaultRefDerefTraits<WTF::NativePromise<WebCore::VideoPlaybackQualityMetrics,WebCore::PlatformMediaError,0u>::ThenCallbackBase>>,1ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(v7 + 216, v45 + 1, &v66);
        v45 = *(v7 + 228);
        v47 = v45 + 1;
        v48 = *(v7 + 216);
        v49 = *v46;
        *v46 = 0;
      }

      else
      {
        v47 = v45 + 1;
        v48 = *(v7 + 216);
        v49 = v66;
        v66 = 0;
      }

      *(v48 + 8 * v45) = v49;
      *(v7 + 228) = v47;
    }

    v50 = v68;
    if (v68 == 1)
    {
      v51 = v67;
      atomic_compare_exchange_strong_explicit(v67, &v50, 0, memory_order_release, memory_order_relaxed);
      if (v50 != 1)
      {
        WTF::Lock::unlockSlow(v51);
      }
    }

    v52 = v66;
    v66 = 0;
    if (v52 && atomic_fetch_add(v52 + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v52 + 2);
      (*(*v52 + 8))(v52);
    }

    v53 = v61;
    v61 = 0;
    if (v53 && atomic_fetch_add(v53 + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v53 + 2);
      (*(*v53 + 8))(v53);
    }

    v54 = v60;
    v60 = 0;
    if (v54 && atomic_fetch_add(v54 + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v54 + 2);
      (*(*v54 + 16))(v54);
    }

    result = v59;
    v59 = 0;
    if (result && atomic_fetch_add(result + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, result + 2);
      result = (*(*result + 16))(result);
    }

    if (v5[4] == 1)
    {
      return (*(*v5 + 8))(v5);
    }

    else
    {
      --v5[4];
    }
  }

  else
  {
    v69[0] = "Device not available";
    v69[1] = 21;
    std::__tuple_leaf<1ul,WTF::String,false>::__tuple_leaf[abi:sn200100]<WTF::ASCIILiteral,0>(&v67, v69);
    v55 = v67;
    v67 = 0;
    *buf = v55;
    v86[24] = 1;
    v56 = *a3;
    *a3 = 0;
    (*(*v56 + 16))(v56, buf);
    (*(*v56 + 8))(v56);
    std::experimental::fundamentals_v3::expected<WebCore::PhotoCapabilities,WTF::String>::~expected(buf, v57);
    result = v67;
    v67 = 0;
    if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v58);
    }
  }

  return result;
}

uint64_t std::experimental::fundamentals_v3::expected<WebCore::PhotoCapabilities,WTF::String>::~expected(uint64_t a1, WTF::StringImpl *a2)
{
  if (*(a1 + 144) != 255)
  {
    if (*(a1 + 144))
    {
      v4 = *a1;
      *a1 = 0;
      if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v4, a2);
      }
    }

    else if (*(a1 + 136) == 1)
    {
      v3 = *(a1 + 120);
      if (v3)
      {
        *(a1 + 120) = 0;
        *(a1 + 128) = 0;
        WTF::fastFree(v3, a2);
      }
    }
  }

  *(a1 + 144) = -1;
  return a1;
}

unsigned int *WebKit::UserMediaCaptureManagerProxy::getPhotoSettings(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v86[1] = *MEMORY[0x1E69E9840];
  v65 = a2;
  v4 = WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::RealtimeMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::UserMediaCaptureManagerProxySourceProxy,WTF::RawPtrTraits<WebKit::UserMediaCaptureManagerProxySourceProxy>,WTF::DefaultRefDerefTraits<WebKit::UserMediaCaptureManagerProxySourceProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RealtimeMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RealtimeMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::UserMediaCaptureManagerProxySourceProxy,WTF::RawPtrTraits<WebKit::UserMediaCaptureManagerProxySourceProxy>,WTF::DefaultRefDerefTraits<WebKit::UserMediaCaptureManagerProxySourceProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::RealtimeMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::UserMediaCaptureManagerProxySourceProxy,WTF::RawPtrTraits<WebKit::UserMediaCaptureManagerProxySourceProxy>,WTF::DefaultRefDerefTraits<WebKit::UserMediaCaptureManagerProxySourceProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RealtimeMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RealtimeMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::UserMediaCaptureManagerProxySourceProxy,WTF::RawPtrTraits<WebKit::UserMediaCaptureManagerProxySourceProxy>,WTF::DefaultRefDerefTraits<WebKit::UserMediaCaptureManagerProxySourceProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RealtimeMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::ObjectIdentifierGeneric<WebCore::RealtimeMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>((a1 + 24), &v65);
  if (v4)
  {
    v5 = v4;
    ++*(v4 + 16);
    v6 = (*(**(v4 + 80) + 160))(&v59);
    v7 = v59;
    v8 = WTF::RunLoop::mainSingleton(v6);
    v9 = *a3;
    *a3 = 0;
    v10 = WTF::fastMalloc(0x50);
    while (1)
    {
      v11 = *(v8 + 8);
      if ((v11 & 1) == 0)
      {
        break;
      }

      v12 = *(v8 + 8);
      atomic_compare_exchange_strong_explicit((v8 + 8), &v12, v11 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v12 == v11)
      {
        goto LABEL_7;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*(v8 + 8));
LABEL_7:
    v13 = WTF::fastMalloc(0x10);
    v14 = 0;
    *v13 = &unk_1F10FE868;
    v13[1] = v9;
    *(v10 + 8) = 1;
    *(v10 + 16) = v8;
    *(v10 + 24) = 0uLL;
    *(v10 + 40) = "getPhotoSettings";
    *(v10 + 48) = 0;
    *(v10 + 56) = 0;
    *v10 = &unk_1F10FE890;
    *(v10 + 64) = 0;
    *(v10 + 72) = v13;
    atomic_fetch_add((v7 + 8), 1u);
    v62 = 0uLL;
    v63 = "getPhotoSettings";
    v64 = 0;
    v60 = v7;
    v61 = 0;
    v15 = (v7 + 48);
    v66 = v10;
    v67 = (v7 + 48);
    v68 = 1;
    atomic_compare_exchange_strong_explicit((v7 + 48), &v14, 1u, memory_order_acquire, memory_order_acquire);
    if (v14)
    {
      v15 = MEMORY[0x19EB01E30]();
    }

    *(v7 + 160) = 1;
    v16 = WTF::NativePromiseBase::logChannel(v15);
    if (*v16)
    {
      v17 = v16;
      if (v16[16] >= 4u)
      {
        WTF::Logger::LogSiteIdentifier::toString(&v77, &v62);
        WTF::String::String(&v76, " invoking maybeSettle() [");
        WTF::LogArgument<WTF::NativePromise<void,WebCore::PlatformMediaError,0u>>::toString(v7, &v75);
        WTF::String::String(&v74, " callback:");
        WTF::LogArgument<void const*>::toString();
        WTF::String::String(&v72, " isNothing:");
        WTF::StringImpl::createWithoutCopyingNonEmpty();
        WTF::String::String(&v70, "]");
        result = WTF::tryMakeString<WTF::String,WTF::String,WTF::String,WTF::String,WTF::String,WTF::String,WTF::String,WTF::String>(&v77, &v76, &v75, &v74, &v73, &v72, &v71, &v70, &v78);
        if (!v78)
        {
          __break(0xC471u);
          return result;
        }

        v20 = v70;
        v70 = 0;
        if (v20 && atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v20, v19);
        }

        v21 = v71;
        v71 = 0;
        if (v21 && atomic_fetch_add_explicit(v21, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v21, v19);
        }

        v22 = v72;
        v72 = 0;
        if (v22 && atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v22, v19);
        }

        v23 = v73;
        v73 = 0;
        if (v23 && atomic_fetch_add_explicit(v23, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v23, v19);
        }

        v24 = v74;
        v74 = 0;
        if (v24 && atomic_fetch_add_explicit(v24, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v24, v19);
        }

        v25 = v75;
        v75 = 0;
        if (v25 && atomic_fetch_add_explicit(v25, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v25, v19);
        }

        v26 = v76;
        v76 = 0;
        if (v26 && atomic_fetch_add_explicit(v26, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v26, v19);
        }

        v27 = v77;
        v77 = 0;
        if (v27 && atomic_fetch_add_explicit(v27, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v27, v19);
        }

        v28 = *(v17 + 4);
        v29 = os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT);
        if (v29)
        {
          WTF::String::utf8();
          v31 = v69[0] ? v69[0] + 16 : 0;
          *buf = 136446210;
          *&buf[4] = v31;
          _os_log_impl(&dword_19D52D000, v28, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
          v29 = v69[0];
          v69[0] = 0;
          if (v29)
          {
            if (*v29 == 1)
            {
              v29 = WTF::fastFree(v29, v30);
            }

            else
            {
              --*v29;
            }
          }
        }

        if (*v17 && v17[16] >= 4u)
        {
          v32 = MEMORY[0x1E696EBC0];
          while (1)
          {
            v33 = *v32;
            if (v33)
            {
              break;
            }

            v34 = *v32;
            atomic_compare_exchange_strong_explicit(v32, &v34, v33 | 1, memory_order_acquire, memory_order_acquire);
            if (v34 == v33)
            {
              v35 = WTF::Logger::observers(v29);
              v36 = *(v35 + 12);
              if (v36)
              {
                v37 = *v35;
                v38 = *v35 + 8 * v36;
                do
                {
                  v39 = *v37;
                  *buf = 0;
                  WTF::Logger::LogSiteIdentifier::toString(&buf[8], &v62);
                  v80 = 0;
                  WTF::String::String(v81, " invoking maybeSettle() [");
                  v81[2] = 0;
                  WTF::LogArgument<WTF::NativePromise<void,WebCore::PlatformMediaError,0u>>::toString(v7, &v82);
                  v83 = 0;
                  WTF::String::String(v84, " callback:");
                  v84[2] = 0;
                  WTF::LogArgument<void const*>::toString();
                  v84[6] = 0;
                  WTF::String::String(v85, " isNothing:");
                  v85[2] = 0;
                  WTF::StringImpl::createWithoutCopyingNonEmpty();
                  v85[6] = 0;
                  WTF::String::String(v86, "]");
                  WTF::Vector<WTF::JSONLogValue,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v69, buf, 8uLL);
                  (*(*v39 + 16))(v39, v17, 4, v69);
                  WTF::Vector<std::tuple<Inspector::BackendDispatcher::CommonErrorCode,WTF::String>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v69, v40);
                  for (i = 120; i != -8; i -= 16)
                  {
                    v42 = *&buf[i];
                    *&buf[i] = 0;
                    if (v42 && atomic_fetch_add_explicit(v42, 0xFFFFFFFE, memory_order_relaxed) == 2)
                    {
                      WTF::StringImpl::destroy(v42, v30);
                    }
                  }

                  ++v37;
                }

                while (v37 != v38);
              }

              v43 = 1;
              atomic_compare_exchange_strong_explicit(v32, &v43, 0, memory_order_release, memory_order_relaxed);
              if (v43 != 1)
              {
                WTF::Lock::unlockSlow(MEMORY[0x1E696EBC0]);
              }

              break;
            }
          }
        }

        v44 = v78;
        v78 = 0;
        if (v44 && atomic_fetch_add_explicit(v44, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v44, v30);
        }
      }
    }

    if (*(v7 + 112))
    {
      WTF::NativePromise<WebCore::PhotoSettings,WTF::String,0u>::ThenCallbackBase::dispatch(v66, v7, &v67);
    }

    else
    {
      v45 = *(v7 + 132);
      if (v45 == *(v7 + 128))
      {
        v46 = WTF::Vector<WTF::Ref<WTF::NativePromise<WebCore::VideoPlaybackQualityMetrics,WebCore::PlatformMediaError,0u>::ThenCallbackBase,WTF::RawPtrTraits<WTF::NativePromise<WebCore::VideoPlaybackQualityMetrics,WebCore::PlatformMediaError,0u>::ThenCallbackBase>,WTF::DefaultRefDerefTraits<WTF::NativePromise<WebCore::VideoPlaybackQualityMetrics,WebCore::PlatformMediaError,0u>::ThenCallbackBase>>,1ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(v7 + 120, v45 + 1, &v66);
        v45 = *(v7 + 132);
        v47 = v45 + 1;
        v48 = *(v7 + 120);
        v49 = *v46;
        *v46 = 0;
      }

      else
      {
        v47 = v45 + 1;
        v48 = *(v7 + 120);
        v49 = v66;
        v66 = 0;
      }

      *(v48 + 8 * v45) = v49;
      *(v7 + 132) = v47;
    }

    v50 = v68;
    if (v68 == 1)
    {
      v51 = v67;
      atomic_compare_exchange_strong_explicit(v67, &v50, 0, memory_order_release, memory_order_relaxed);
      if (v50 != 1)
      {
        WTF::Lock::unlockSlow(v51);
      }
    }

    v52 = v66;
    v66 = 0;
    if (v52 && atomic_fetch_add(v52 + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v52 + 2);
      (*(*v52 + 8))(v52);
    }

    v53 = v61;
    v61 = 0;
    if (v53 && atomic_fetch_add(v53 + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v53 + 2);
      (*(*v53 + 8))(v53);
    }

    v54 = v60;
    v60 = 0;
    if (v54 && atomic_fetch_add(v54 + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v54 + 2);
      (*(*v54 + 16))(v54);
    }

    result = v59;
    v59 = 0;
    if (result && atomic_fetch_add(result + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, result + 2);
      result = (*(*result + 16))(result);
    }

    if (v5[4] == 1)
    {
      return (*(*v5 + 8))(v5);
    }

    else
    {
      --v5[4];
    }
  }

  else
  {
    v69[0] = "Device not available";
    v69[1] = 21;
    std::__tuple_leaf<1ul,WTF::String,false>::__tuple_leaf[abi:sn200100]<WTF::ASCIILiteral,0>(&v67, v69);
    v55 = v67;
    v67 = 0;
    *buf = v55;
    LOBYTE(v83) = 1;
    v56 = *a3;
    *a3 = 0;
    (*(*v56 + 16))(v56, buf);
    (*(*v56 + 8))(v56);
    mpark::detail::move_constructor<mpark::detail::traits<WebCore::PhotoSettings,WTF::String>,(mpark::detail::Trait)1>::~move_constructor(buf, v57);
    result = v67;
    v67 = 0;
    if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v58);
    }
  }

  return result;
}

uint64_t WebKit::UserMediaCaptureManagerProxy::endProducingData(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  result = WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::RealtimeMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::UserMediaCaptureManagerProxySourceProxy,WTF::RawPtrTraits<WebKit::UserMediaCaptureManagerProxySourceProxy>,WTF::DefaultRefDerefTraits<WebKit::UserMediaCaptureManagerProxySourceProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RealtimeMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RealtimeMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::UserMediaCaptureManagerProxySourceProxy,WTF::RawPtrTraits<WebKit::UserMediaCaptureManagerProxySourceProxy>,WTF::DefaultRefDerefTraits<WebKit::UserMediaCaptureManagerProxySourceProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::RealtimeMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::UserMediaCaptureManagerProxySourceProxy,WTF::RawPtrTraits<WebKit::UserMediaCaptureManagerProxySourceProxy>,WTF::DefaultRefDerefTraits<WebKit::UserMediaCaptureManagerProxySourceProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RealtimeMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RealtimeMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::UserMediaCaptureManagerProxySourceProxy,WTF::RawPtrTraits<WebKit::UserMediaCaptureManagerProxySourceProxy>,WTF::DefaultRefDerefTraits<WebKit::UserMediaCaptureManagerProxySourceProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RealtimeMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::ObjectIdentifierGeneric<WebCore::RealtimeMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>((a1 + 24), &v4);
  if (result)
  {
    v3 = result;
    ++*(result + 16);
    *(result + 45) = 257;
    result = (*(**(result + 80) + 72))(*(result + 80), result);
    if (v3[4] == 1)
    {
      return (*(*v3 + 8))(v3);
    }

    else
    {
      --v3[4];
    }
  }

  return result;
}

uint64_t WebKit::UserMediaCaptureManagerProxy::setShouldApplyRotation(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  result = WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::RealtimeMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::UserMediaCaptureManagerProxySourceProxy,WTF::RawPtrTraits<WebKit::UserMediaCaptureManagerProxySourceProxy>,WTF::DefaultRefDerefTraits<WebKit::UserMediaCaptureManagerProxySourceProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RealtimeMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RealtimeMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::UserMediaCaptureManagerProxySourceProxy,WTF::RawPtrTraits<WebKit::UserMediaCaptureManagerProxySourceProxy>,WTF::DefaultRefDerefTraits<WebKit::UserMediaCaptureManagerProxySourceProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::RealtimeMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::UserMediaCaptureManagerProxySourceProxy,WTF::RawPtrTraits<WebKit::UserMediaCaptureManagerProxySourceProxy>,WTF::DefaultRefDerefTraits<WebKit::UserMediaCaptureManagerProxySourceProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RealtimeMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RealtimeMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::UserMediaCaptureManagerProxySourceProxy,WTF::RawPtrTraits<WebKit::UserMediaCaptureManagerProxySourceProxy>,WTF::DefaultRefDerefTraits<WebKit::UserMediaCaptureManagerProxySourceProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RealtimeMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::ObjectIdentifierGeneric<WebCore::RealtimeMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>((a1 + 24), &v4);
  if (result)
  {
    v3 = result;
    ++*(result + 16);
    result = (*(**(result + 80) + 312))(*(result + 80));
    if (v3[4] == 1)
    {
      return (*(*v3 + 8))(v3);
    }

    else
    {
      --v3[4];
    }
  }

  return result;
}

uint64_t WebKit::UserMediaCaptureManagerProxy::setIsInBackground(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = a2;
  result = WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::RealtimeMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::UserMediaCaptureManagerProxySourceProxy,WTF::RawPtrTraits<WebKit::UserMediaCaptureManagerProxySourceProxy>,WTF::DefaultRefDerefTraits<WebKit::UserMediaCaptureManagerProxySourceProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RealtimeMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RealtimeMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::UserMediaCaptureManagerProxySourceProxy,WTF::RawPtrTraits<WebKit::UserMediaCaptureManagerProxySourceProxy>,WTF::DefaultRefDerefTraits<WebKit::UserMediaCaptureManagerProxySourceProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::RealtimeMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::UserMediaCaptureManagerProxySourceProxy,WTF::RawPtrTraits<WebKit::UserMediaCaptureManagerProxySourceProxy>,WTF::DefaultRefDerefTraits<WebKit::UserMediaCaptureManagerProxySourceProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RealtimeMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RealtimeMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::UserMediaCaptureManagerProxySourceProxy,WTF::RawPtrTraits<WebKit::UserMediaCaptureManagerProxySourceProxy>,WTF::DefaultRefDerefTraits<WebKit::UserMediaCaptureManagerProxySourceProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RealtimeMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::ObjectIdentifierGeneric<WebCore::RealtimeMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>((a1 + 24), &v6);
  if (result)
  {
    v5 = result;
    ++*(result + 16);
    result = (*(**(result + 80) + 320))(*(result + 80), a3);
    if (v5[4] == 1)
    {
      return (*(*v5 + 8))(v5);
    }

    else
    {
      --v5[4];
    }
  }

  return result;
}

uint64_t WebKit::UserMediaCaptureManagerProxy::isPowerEfficient(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v9 = a2;
  v4 = WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::RealtimeMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::UserMediaCaptureManagerProxySourceProxy,WTF::RawPtrTraits<WebKit::UserMediaCaptureManagerProxySourceProxy>,WTF::DefaultRefDerefTraits<WebKit::UserMediaCaptureManagerProxySourceProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RealtimeMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RealtimeMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::UserMediaCaptureManagerProxySourceProxy,WTF::RawPtrTraits<WebKit::UserMediaCaptureManagerProxySourceProxy>,WTF::DefaultRefDerefTraits<WebKit::UserMediaCaptureManagerProxySourceProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::RealtimeMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::UserMediaCaptureManagerProxySourceProxy,WTF::RawPtrTraits<WebKit::UserMediaCaptureManagerProxySourceProxy>,WTF::DefaultRefDerefTraits<WebKit::UserMediaCaptureManagerProxySourceProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RealtimeMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RealtimeMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::UserMediaCaptureManagerProxySourceProxy,WTF::RawPtrTraits<WebKit::UserMediaCaptureManagerProxySourceProxy>,WTF::DefaultRefDerefTraits<WebKit::UserMediaCaptureManagerProxySourceProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RealtimeMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::ObjectIdentifierGeneric<WebCore::RealtimeMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>((a1 + 24), &v9);
  v5 = v4;
  if (v4)
  {
    ++*(v4 + 16);
    v6 = (*(**(v4 + 80) + 336))(*(v4 + 80));
  }

  else
  {
    v6 = 0;
  }

  v7 = *a3;
  *a3 = 0;
  (*(*v7 + 16))(v7, v6);
  result = (*(*v7 + 8))(v7);
  if (v5)
  {
    if (v5[4] == 1)
    {
      return (*(*v5 + 8))(v5);
    }

    else
    {
      --v5[4];
    }
  }

  return result;
}

uint64_t WebKit::UserMediaCaptureManagerProxy::close(uint64_t this, void *a2)
{
  v2 = *(this + 24);
  *(this + 24) = 0;
  if (!v2)
  {
    v4 = 0;
    v3 = 0;
LABEL_10:
    v6 = v4;
    v4 = (v2 + 16 * v3);
    if (!v2)
    {
      v8 = 0;
      goto LABEL_14;
    }

    goto LABEL_8;
  }

  v3 = *(v2 - 4);
  v4 = (v2 + 16 * v3);
  if (!*(v2 - 12))
  {
    goto LABEL_10;
  }

  if (!v3)
  {
    v7 = 0;
    v6 = v2;
    goto LABEL_13;
  }

  v5 = 16 * v3;
  v6 = v2;
  while ((*v6 + 1) <= 1)
  {
    v6 += 2;
    v5 -= 16;
    if (!v5)
    {
      v6 = v4;
      break;
    }
  }

LABEL_8:
  v7 = *(v2 - 4);
LABEL_13:
  v8 = (v2 + 16 * v7);
LABEL_14:
  while (v6 != v8)
  {
    v9 = v6[1];
    *(v9 + 45) = 1;
    WebCore::RealtimeMediaSource::stop(*(v9 + 80));
    this = WebKit::UserMediaCaptureManagerProxySourceProxy::unobserveMedia(v9);
    do
    {
      v6 += 2;
    }

    while (v6 != v4 && (*v6 + 1) <= 1);
  }

  if (v2)
  {

    return WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::RealtimeMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::RealtimeMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::UserMediaCaptureManagerProxySourceProxy,WTF::RawPtrTraits<WebKit::UserMediaCaptureManagerProxySourceProxy>,WTF::DefaultRefDerefTraits<WebKit::UserMediaCaptureManagerProxySourceProxy>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::RealtimeMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::UserMediaCaptureManagerProxySourceProxy,WTF::RawPtrTraits<WebKit::UserMediaCaptureManagerProxySourceProxy>,WTF::DefaultRefDerefTraits<WebKit::UserMediaCaptureManagerProxySourceProxy>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RealtimeMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::RealtimeMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::UserMediaCaptureManagerProxySourceProxy,WTF::RawPtrTraits<WebKit::UserMediaCaptureManagerProxySourceProxy>,WTF::DefaultRefDerefTraits<WebKit::UserMediaCaptureManagerProxySourceProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RealtimeMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RealtimeMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::UserMediaCaptureManagerProxySourceProxy,WTF::RawPtrTraits<WebKit::UserMediaCaptureManagerProxySourceProxy>,WTF::DefaultRefDerefTraits<WebKit::UserMediaCaptureManagerProxySourceProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RealtimeMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::deallocateTable(v2, a2);
  }

  return this;
}

uint64_t WebKit::UserMediaCaptureManagerProxy::setOrientation(uint64_t this, uint64_t a2)
{
  *(this + 64) = a2;
  v2 = *(this + 60);
  if (v2)
  {
    v4 = *(this + 48);
    v5 = 8 * v2;
    do
    {
      v6 = *v4++;
      this = (*(*v6 + 16))(v6, a2);
      v5 -= 8;
    }

    while (v5);
  }

  return this;
}

void WebKit::RemoteSampleBufferDisplayLayerManager::ref(WebKit::RemoteSampleBufferDisplayLayerManager *this)
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

uint64_t WebKit::RemoteAudioMediaStreamTrackRendererInternalUnitManagerUnit::format(uint64_t this)
{
  if (*(this + 200))
  {
    this += 120;
  }

  else
  {
    __break(1u);
  }

  return this;
}

_DWORD *WebKit::UserMediaCaptureManagerProxy::deref(_DWORD *this)
{
  if (this[4] == 1)
  {
    return (*(*this + 24))();
  }

  --this[4];
  return this;
}

uint64_t std::__optional_destruct_base<WebKit::ProducerSharedCARingBuffer::Pair,false>::~__optional_destruct_base[abi:sn200100](uint64_t a1)
{
  if (*(a1 + 32) == 1)
  {
    WTF::MachSendRight::~MachSendRight((a1 + 8));
    std::unique_ptr<WebKit::ConsumerSharedCARingBuffer>::reset[abi:sn200100](a1, 0);
  }

  return a1;
}

void std::__optional_storage_base<WebCore::ShareableBitmapHandle,false>::__assign_from[abi:sn200100]<std::__optional_move_assign_base<WebCore::ShareableBitmapHandle,false>>(WebCore::ShareableBitmapHandle *a1, uint64_t a2)
{
  if (*(a1 + 80) == *(a2 + 80))
  {
    if (*(a1 + 80))
    {

      WebCore::ShareableBitmapHandle::operator=(a1, a2);
    }
  }

  else if (*(a1 + 80))
  {
    WebCore::ShareableBitmapHandle::~ShareableBitmapHandle(a1);
    *(v6 + 80) = 0;
  }

  else
  {
    v3 = WTF::MachSendRight::MachSendRight();
    *(v3 + 8) = *(a2 + 8);
    *(v3 + 16) = *(a2 + 16);
    *(v3 + 24) = 0;
    *(v3 + 32) = 0;
    if (*(a2 + 32) == 1)
    {
      v4 = *(a2 + 24);
      *(a2 + 24) = 0;
      *(v3 + 24) = v4;
      *(v3 + 32) = 1;
    }

    v5 = *(a2 + 44);
    *(v3 + 40) = *(a2 + 40);
    *(v3 + 44) = v5;
    *(v3 + 48) = 0;
    if (*(a2 + 48))
    {
      *(v3 + 48) = 1;
    }

    *(v3 + 52) = *(a2 + 52);
    *(v3 + 56) = 0;
    if (*(a2 + 56))
    {
      *(v3 + 56) = 1;
    }

    *(v3 + 60) = *(a2 + 60);
    *(v3 + 64) = 0;
    if (*(a2 + 64))
    {
      *(v3 + 64) = 1;
    }

    *(v3 + 68) = *(a2 + 68);
    *(v3 + 80) = 1;
  }
}

uint64_t WebCore::ShareableBitmapHandle::operator=(uint64_t a1, uint64_t a2)
{
  WTF::MachSendRight::operator=();
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  std::__optional_storage_base<WebCore::DestinationColorSpace,false>::__assign_from[abi:sn200100]<std::__optional_move_assign_base<WebCore::DestinationColorSpace,false>>(a1 + 24, (a2 + 24));
  v4 = *(a2 + 44);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 44) = v4;
  v5 = *(a2 + 52);
  *(a1 + 48) = *(a2 + 48) != 0;
  *(a1 + 52) = v5;
  v6 = *(a2 + 60);
  *(a1 + 56) = *(a2 + 56) != 0;
  *(a1 + 60) = v6;
  v7 = *(a2 + 68);
  *(a1 + 64) = *(a2 + 64) != 0;
  v8 = *(a2 + 72);
  *(a1 + 68) = v7;
  *(a1 + 72) = v8;
  return a1;
}

uint64_t WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::SampleBufferDisplayLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::SampleBufferDisplayLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteSampleBufferDisplayLayer,WTF::RawPtrTraits<WebKit::RemoteSampleBufferDisplayLayer>,WTF::DefaultRefDerefTraits<WebKit::RemoteSampleBufferDisplayLayer>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::SampleBufferDisplayLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteSampleBufferDisplayLayer,WTF::RawPtrTraits<WebKit::RemoteSampleBufferDisplayLayer>,WTF::DefaultRefDerefTraits<WebKit::RemoteSampleBufferDisplayLayer>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::SampleBufferDisplayLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::SampleBufferDisplayLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteSampleBufferDisplayLayer,WTF::RawPtrTraits<WebKit::RemoteSampleBufferDisplayLayer>,WTF::DefaultRefDerefTraits<WebKit::RemoteSampleBufferDisplayLayer>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::SampleBufferDisplayLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::SampleBufferDisplayLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::RemoteSampleBufferDisplayLayer,WTF::RawPtrTraits<WebKit::RemoteSampleBufferDisplayLayer>,WTF::DefaultRefDerefTraits<WebKit::RemoteSampleBufferDisplayLayer>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::SampleBufferDisplayLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::deallocateTable(uint64_t a1, void *a2)
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
          WTF::ThreadSafeRefCounted<WebKit::RemoteSampleBufferDisplayLayer,(WTF::DestructionThread)2>::deref((v5 + 16));
        }
      }

      v4 += 2;
      --v3;
    }

    while (v3);
  }

  return WTF::fastFree((a1 - 16), a2);
}

uint64_t WTF::HashTable<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebCore::RealtimeMediaSource const*>,std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebCore::RealtimeMediaSource const*>,WTF::IdentityExtractor,WTF::DefaultHash<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebCore::RealtimeMediaSource const*>>,WTF::HashTraits<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebCore::RealtimeMediaSource const*>>,WTF::HashTraits<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebCore::RealtimeMediaSource const*>>,WTF::FastMalloc>::deallocateTable(atomic_uchar **a1, void *a2)
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
          WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v5, a2);
        }
      }

      v4 += 2;
      --v3;
    }

    while (v3);
  }

  return WTF::fastFree((a1 - 2), a2);
}

uint64_t WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::RealtimeMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::RealtimeMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::UserMediaCaptureManagerProxySourceProxy,WTF::RawPtrTraits<WebKit::UserMediaCaptureManagerProxySourceProxy>,WTF::DefaultRefDerefTraits<WebKit::UserMediaCaptureManagerProxySourceProxy>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::RealtimeMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::UserMediaCaptureManagerProxySourceProxy,WTF::RawPtrTraits<WebKit::UserMediaCaptureManagerProxySourceProxy>,WTF::DefaultRefDerefTraits<WebKit::UserMediaCaptureManagerProxySourceProxy>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RealtimeMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::RealtimeMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::UserMediaCaptureManagerProxySourceProxy,WTF::RawPtrTraits<WebKit::UserMediaCaptureManagerProxySourceProxy>,WTF::DefaultRefDerefTraits<WebKit::UserMediaCaptureManagerProxySourceProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RealtimeMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RealtimeMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::UserMediaCaptureManagerProxySourceProxy,WTF::RawPtrTraits<WebKit::UserMediaCaptureManagerProxySourceProxy>,WTF::DefaultRefDerefTraits<WebKit::UserMediaCaptureManagerProxySourceProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RealtimeMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::deallocateTable(uint64_t a1, void *a2)
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
          if (v5[4] == 1)
          {
            (*(*v5 + 8))(v5);
          }

          else
          {
            --v5[4];
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

uint64_t WTF::Vector<WTF::Ref<WebCore::RealtimeMediaSource,WTF::RawPtrTraits<WebCore::RealtimeMediaSource>,WTF::DefaultRefDerefTraits<WebCore::RealtimeMediaSource>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, void *a2)
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
        (*(*v6 + 8))(v6);
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

uint64_t WebKit::UserMediaCaptureManagerProxySourceProxy::operator new(WebKit::UserMediaCaptureManagerProxySourceProxy *this, void *a2)
{
  if (WebKit::UserMediaCaptureManagerProxySourceProxy::operator new(unsigned long)::s_heapRef)
  {
    return bmalloc::api::tzoneAllocateNonCompact(WebKit::UserMediaCaptureManagerProxySourceProxy::operator new(unsigned long)::s_heapRef, a2);
  }

  else
  {
    return bmalloc::api::tzoneAllocateNonCompactSlow();
  }
}

uint64_t WebKit::UserMediaCaptureManagerProxySourceProxy::UserMediaCaptureManagerProxySourceProxy(uint64_t a1, uint64_t a2, uint64_t *a3, const WTF::MachSendRight *a4, uint64_t *a5, uint64_t *a6)
{
  *(a1 + 16) = 1;
  v12 = WebCore::RealtimeMediaSourceObserver::RealtimeMediaSourceObserver(a1);
  *v12 = &unk_1F10FE490;
  *(v12 + 24) = &unk_1F10FE520;
  *(v12 + 32) = &unk_1F10FE568;
  *(v12 + 40) = 0;
  *(v12 + 48) = 0;
  *(v12 + 56) = a2;
  v13 = *a3;
  *a3 = 0;
  *(v12 + 64) = v13;
  WTF::MachSendRight::MachSendRight((v12 + 72), a4);
  v14 = *a5;
  *a5 = 0;
  *(a1 + 80) = v14;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 176) = 0;
  *(a1 + 224) = 0;
  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  *(a1 + 200) = 0;
  *(a1 + 232) = 0u;
  *(a1 + 248) = 0u;
  *(a1 + 264) = 10000000;
  *(a1 + 268) = 1;
  v15 = *a6;
  *a6 = 0;
  *(a1 + 272) = v15;
  *(a1 + 280) = 0;
  *(a1 + 288) = 0;
  *(a1 + 392) = 0;
  *(a1 + 1384) = 0;
  *(a1 + 400) = 0;
  *(a1 + 408) = 0;
  *(a1 + 416) = 0;
  v17[0] = 0;
  v17[1] = 0;
  v17[2] = "UserMediaCaptureManagerProxySourceProxy";
  v17[3] = 0;
  WTF::NativePromise<void,void,0u>::createAndResolve<std::enable_if<true,void>>(v17, (a1 + 1392));
  WebCore::RealtimeMediaSource::addObserver(*(a1 + 80), a1);
  atomic_store(1u, (*(a1 + 80) + 240));
  return a1;
}

IPC::Encoder *WebKit::UserMediaCaptureManagerProxySourceProxy::sourceStopped(WebKit::UserMediaCaptureManagerProxySourceProxy *this, void *a2)
{
  v3 = *(this + 8);
  v9[0] = *(*(this + 10) + 325);
  v4 = IPC::Encoder::operator new(0x238, a2);
  *v4 = 1773;
  *(v4 + 68) = 0;
  *(v4 + 70) = 0;
  *(v4 + 69) = 0;
  *(v4 + 2) = 0;
  *(v4 + 3) = 0;
  *(v4 + 1) = 0;
  IPC::Encoder::encodeHeader(v4);
  v10 = v4;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v4, *(this + 7));
  IPC::Encoder::operator<<<BOOL &>(v4, v9);
  IPC::Connection::sendMessageImpl(v3, &v10, 0, 0);
  result = v10;
  v10 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v5);
    return bmalloc::api::tzoneFree(v7, v8);
  }

  return result;
}

IPC::Encoder *WebKit::UserMediaCaptureManagerProxySourceProxy::sourceMutedChanged(WebKit::UserMediaCaptureManagerProxySourceProxy *this)
{
  v2 = *(this + 8);
  v3 = *(this + 10);
  v4 = v3[321];
  v5 = (*(*v3 + 88))(v3);
  v12 = v4;
  v13[0] = v5;
  v7 = IPC::Encoder::operator new(0x238, v6);
  *v7 = 1771;
  *(v7 + 68) = 0;
  *(v7 + 70) = 0;
  *(v7 + 69) = 0;
  *(v7 + 2) = 0;
  *(v7 + 3) = 0;
  *(v7 + 1) = 0;
  IPC::Encoder::encodeHeader(v7);
  v14 = v7;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v7, *(this + 7));
  IPC::Encoder::operator<<<BOOL &>(v7, &v12);
  IPC::Encoder::operator<<<BOOL &>(v7, v13);
  IPC::Connection::sendMessageImpl(v2, &v14, 0, 0);
  result = v14;
  v14 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v8);
    return bmalloc::api::tzoneFree(v10, v11);
  }

  return result;
}

IPC::Encoder *WebKit::UserMediaCaptureManagerProxySourceProxy::sourceSettingsChanged(WebKit::UserMediaCaptureManagerProxySourceProxy *this)
{
  LOBYTE(v14[0]) = 0;
  v18 = 0;
  std::__optional_storage_base<WebCore::RealtimeMediaSourceSettings,false>::__assign_from[abi:sn200100]<std::__optional_move_assign_base<WebCore::RealtimeMediaSourceSettings,false>>(this + 288, v14);
  if (v18 == 1)
  {
    v3 = v17;
    if (v17 && atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v3, v2);
    }

    v4 = v16;
    if (v16 && atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v4, v2);
    }

    v5 = v15;
    if (v15 && atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v5, v2);
    }
  }

  v6 = *(this + 8);
  v7 = WebKit::UserMediaCaptureManagerProxySourceProxy::settings(this);
  v9 = IPC::Encoder::operator new(0x238, v8);
  *v9 = 1772;
  *(v9 + 68) = 0;
  *(v9 + 70) = 0;
  *(v9 + 69) = 0;
  *(v9 + 2) = 0;
  *(v9 + 3) = 0;
  *(v9 + 1) = 0;
  IPC::Encoder::encodeHeader(v9);
  v14[0] = v9;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v9, *(this + 7));
  IPC::ArgumentCoder<WebCore::RealtimeMediaSourceSettings,void>::encode(v9, v7);
  IPC::Connection::sendMessageImpl(v6, v14, 0, 0);
  result = v14[0];
  v14[0] = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v10);
    return bmalloc::api::tzoneFree(v12, v13);
  }

  return result;
}

atomic_uchar **WebKit::UserMediaCaptureManagerProxySourceProxy::audioUnitWillStart(WebKit::UserMediaCaptureManagerProxySourceProxy *this)
{
  v1 = (*(**(this + 35) + 16))(*(this + 35));
  v2 = WebCore::AudioSession::sharedSession(v1);
  v3 = (v2 + 1);
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
  (*(*v2 + 4))(v2, 5, 1, 0);
  WebCore::AudioSession::tryToSetActive(v2);

  return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::AudioSession,(WTF::DestructionThread)0>::deref(v2 + 1, v6);
}

uint64_t WebKit::UserMediaCaptureManagerProxySourceProxy::sourceConfigurationChanged(WebKit::UserMediaCaptureManagerProxySourceProxy *this)
{
  v2 = *(this + 10);
  (**v2)(v2);
  v3 = (*(*v2 + 192))(v2);
  v4 = v3 == 32 || v3 == 16;
  if (v4 && *(this + 1384) == 1 && WebKit::UserMediaCaptureManagerProxySourceProxy::updateVideoConstraints(this, this + 416))
  {
    WebCore::RealtimeMediaSource::removeVideoFrameObserver();
    WebCore::RealtimeMediaSource::addVideoFrameObserver();
  }

  LOBYTE(v19[0]) = 0;
  v23 = 0;
  std::__optional_storage_base<WebCore::RealtimeMediaSourceSettings,false>::__assign_from[abi:sn200100]<std::__optional_move_assign_base<WebCore::RealtimeMediaSourceSettings,false>>(this + 288, v19);
  if (v23 == 1)
  {
    v6 = v22;
    if (v22 && atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v6, v5);
    }

    v7 = v21;
    if (v21 && atomic_fetch_add_explicit(v21, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v7, v5);
    }

    v8 = v20;
    if (v20 && atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v8, v5);
    }
  }

  v9 = *(this + 8);
  v10 = WebKit::UserMediaCaptureManagerProxySourceProxy::settings(this);
  v11 = (*(*v2 + 128))(v2);
  v13 = IPC::Encoder::operator new(0x238, v12);
  *v13 = 1770;
  *(v13 + 68) = 0;
  *(v13 + 70) = 0;
  *(v13 + 69) = 0;
  *(v13 + 2) = 0;
  *(v13 + 3) = 0;
  *(v13 + 1) = 0;
  IPC::Encoder::encodeHeader(v13);
  v19[0] = v13;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v13, *(this + 7));
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v13, v2 + 24);
  IPC::ArgumentCoder<WebCore::RealtimeMediaSourceSettings,void>::encode(v13, v10);
  IPC::ArgumentCoder<WebCore::RealtimeMediaSourceCapabilities,void>::encode(v13, v11);
  IPC::Connection::sendMessageImpl(v9, v19, 0, 0);
  v15 = v19[0];
  v19[0] = 0;
  if (v15)
  {
    IPC::Encoder::~Encoder(v15, v14);
    bmalloc::api::tzoneFree(v17, v18);
  }

  return (*(*v2 + 8))(v2);
}

uint64_t WebKit::UserMediaCaptureManagerProxySourceProxy::decrementCheckedPtrCount(uint64_t this)
{
  v1 = *(this + 40);
  if (v1)
  {
    *(this + 40) = v1 - 1;
  }

  else
  {
    this = 290;
    __break(0xC471u);
  }

  return this;
}

uint64_t WebKit::UserMediaCaptureManagerProxySourceProxy::audioSamplesAvailable(WebKit::RemoteAudioSessionProxyManager *a1, uint64_t *a2, const AudioBufferList **a3, void *a4, uint64_t a5)
{
  v9 = a1;
  if (*(a1 + 176) == 1 && (a1 = WebCore::CAAudioStreamDescription::operator==(), a1))
  {
    v10 = atomic_load((v9 + 48));
    if ((v10 & 1) == 0)
    {
      goto LABEL_20;
    }

    v11 = 0;
  }

  else
  {
    v11 = 1;
  }

  atomic_store(0, (v9 + 48));
  *(v9 + 232) = 0;
  *(v9 + 240) = 0;
  v12 = *a2;
  *(v9 + 261) = *(a2 + 5);
  *(v9 + 256) = v12;
  WebKit::RemoteAudioSessionProxyManager::protectedSession(a1, v34);
  v13 = (*(*v34[0] + 104))(v34[0]);
  v15 = 128;
  if (v13 > 0x80)
  {
    v15 = v13;
  }

  *(v9 + 248) = v15;
  v16 = v34[0];
  v34[0] = 0;
  if (v16)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::AudioSession,(WTF::DestructionThread)0>::deref(v16 + 1, v14);
  }

  if (v11)
  {
    WebKit::UserMediaCaptureManagerProxySourceProxy::prepareAudioDescription(v9, a4);
  }

  if ((*(v9 + 224) & 1) == 0 || (*(v9 + 176) & 1) == 0)
  {
    __break(1u);
    goto LABEL_26;
  }

  v17 = *(v9 + 64);
  v18 = *(v9 + 192);
  v19 = *(v9 + 248);
  v20 = IPC::Encoder::operator new(0x238, v14);
  *v20 = 985;
  *(v20 + 68) = 0;
  *(v20 + 70) = 0;
  *(v20 + 69) = 0;
  *(v20 + 2) = 0;
  *(v20 + 3) = 0;
  *(v20 + 1) = 0;
  IPC::Encoder::encodeHeader(v20);
  v34[0] = v20;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v20, *(v9 + 56));
  IPC::ArgumentCoder<WebKit::ConsumerSharedCARingBufferHandle,void>::encode(v20, v9 + 200);
  v21 = WebCore::CAAudioStreamDescription::streamDescription((v9 + 96));
  IPC::ArgumentCoder<AudioStreamBasicDescription,void>::encode(v20, v21);
  IPC::ArgumentCoder<IPC::Semaphore,void>::encode(v20, v18);
  IPC::ArgumentCoder<WTF::MediaTime,void>::encode(v20, (v9 + 256));
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v20, v19);
  IPC::Connection::sendMessageImpl(v17, v34, 0, 0);
  v23 = v34[0];
  v34[0] = 0;
  if (v23)
  {
    IPC::Encoder::~Encoder(v23, v22);
    bmalloc::api::tzoneFree(v32, v33);
  }

  LOBYTE(v34[0]) = 0;
  v35 = 0;
  if (*(v9 + 224))
  {
    WTF::MachSendRight::~MachSendRight((v9 + 200));
    *(v9 + 224) = 0;
  }

  if (v35 == 1)
  {
    WTF::MachSendRight::~MachSendRight(v34);
  }

LABEL_20:
  v24 = *(v9 + 88);
  if (((*a3)->mBuffers[0].mData)(a3) != 1)
  {
LABEL_26:
    result = 96;
    __break(0xC471u);
    return result;
  }

  result = WebCore::CARingBuffer::store(v24, a3[5]);
  v26 = *(v9 + 232) + a5;
  v27 = *(v9 + 240) + a5;
  v28 = *(v9 + 248);
  v29 = v27 / v28;
  *(v9 + 232) = v26;
  *(v9 + 240) = v27 % v28;
  if (v28 <= v27)
  {
    v30 = 1;
    do
    {
      result = MEMORY[0x19EB16320](*(*(v9 + 192) + 4));
    }

    while (v29 > v30++);
  }

  return result;
}

void WebKit::UserMediaCaptureManagerProxySourceProxy::videoFrameAvailable(uint64_t *a1, atomic_uint *a2, uint64_t a3)
{
  if (WebCore::ProcessIdentity::operator BOOL())
  {
    (*(*a2 + 64))(a2, a1 + 9);
  }

  v6 = a1[34];
  if (v6)
  {
    v7 = (v6 + 8);
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
    atomic_fetch_add(a2 + 2, 1u);
    v36 = a2;
    WebKit::RemoteVideoFrameObjectHeap::add(v6, &v36, v31);
    v11 = v36;
    v36 = 0;
    if (v11 && atomic_fetch_add(v11 + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v11 + 2);
      (*(*v11 + 8))(v11);
    }

    v12 = a1[8];
    v13 = IPC::Encoder::operator new(0x238, v10);
    *v13 = 986;
    *(v13 + 68) = 0;
    *(v13 + 70) = 0;
    *(v13 + 69) = 0;
    *(v13 + 2) = 0;
    *(v13 + 3) = 0;
    *(v13 + 1) = 0;
    IPC::Encoder::encodeHeader(v13);
    v36 = v13;
    IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v13, a1[7]);
    IPC::ArgumentCoder<WebKit::RemoteVideoFrameProxyProperties,void>::encode(v13, v31);
    IPC::ArgumentCoder<WebCore::VideoFrameTimeMetadata,void>::encode(v13, a3);
    IPC::Connection::sendMessageImpl(v12, &v36, 0, 0);
    v15 = v36;
    v36 = 0;
    if (v15)
    {
      IPC::Encoder::~Encoder(v15, v14);
      bmalloc::api::tzoneFree(v16, v17);
    }

    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(v7, v14);
  }

  else
  {
    v18 = a1[8];
    v19 = a1 + 7;
    v20 = (*(*a2 + 56))(a2);
    v39 = v20;
    if (v20)
    {
      CFRetain(v20);
    }

    v22 = *(a2 + 17);
    v23 = *(a2 + 32);
    v24 = *(a2 + 3);
    v36 = *(a2 + 2);
    v37 = v24;
    v38 = BYTE4(v24);
    v31[0] = v19;
    v31[1] = &v39;
    v32 = v22;
    v33[0] = v23;
    v34 = &v36;
    v35 = a3;
    v25 = IPC::Encoder::operator new(0x238, v21);
    *v25 = 987;
    *(v25 + 68) = 0;
    *(v25 + 70) = 0;
    *(v25 + 69) = 0;
    *(v25 + 2) = 0;
    *(v25 + 3) = 0;
    *(v25 + 1) = 0;
    IPC::Encoder::encodeHeader(v25);
    v40 = v25;
    IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v25, *v19);
    IPC::ArgumentCoder<__CVBuffer *,void>::encode(v25, v39);
    IPC::ArgumentCoder<unsigned short,void>::encode<IPC::Encoder>(v25, v22);
    IPC::Encoder::operator<<<BOOL &>(v25, v33);
    IPC::ArgumentCoder<WTF::MediaTime,void>::encode(v25, v34);
    IPC::ArgumentCoder<WebCore::VideoFrameTimeMetadata,void>::encode(v25, v35);
    IPC::Connection::sendMessageImpl(v18, &v40, 0, 0);
    v27 = v40;
    v40 = 0;
    if (v27)
    {
      IPC::Encoder::~Encoder(v27, v26);
      bmalloc::api::tzoneFree(v29, v30);
    }

    v28 = v39;
    v39 = 0;
    if (v28)
    {
      CFRelease(v28);
    }
  }
}

void non-virtual thunk toWebKit::UserMediaCaptureManagerProxySourceProxy::~UserMediaCaptureManagerProxySourceProxy(WebCore::RealtimeMediaSource **this)
{
  WebKit::UserMediaCaptureManagerProxySourceProxy::~UserMediaCaptureManagerProxySourceProxy(this - 3);
}

{
  WebKit::UserMediaCaptureManagerProxySourceProxy::operator delete(this - 3);
}

{
  WebKit::UserMediaCaptureManagerProxySourceProxy::~UserMediaCaptureManagerProxySourceProxy(this - 4);
}

{
  WebKit::UserMediaCaptureManagerProxySourceProxy::operator delete(this - 4);
}

uint64_t non-virtual thunk toWebKit::UserMediaCaptureManagerProxySourceProxy::decrementCheckedPtrCount(uint64_t this)
{
  v1 = *(this + 16);
  if (v1)
  {
    *(this + 16) = v1 - 1;
  }

  else
  {
    this = 290;
    __break(0xC471u);
  }

  return this;
}

void WebKit::UserMediaCaptureManagerProxySourceProxy::~UserMediaCaptureManagerProxySourceProxy(WebCore::RealtimeMediaSource **this)
{
  WebKit::UserMediaCaptureManagerProxySourceProxy::unobserveMedia(this);
  WebCore::RealtimeMediaSource::removeObserver(this[10], this);
  v3 = this[174];
  this[174] = 0;
  if (v3 && atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3 + 2);
    (*(*v3 + 16))(v3);
  }

  if (*(this + 1384) == 1)
  {
    WTF::Vector<WebCore::MediaTrackConstraintSetMap,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector((this + 170), v2);
    WebCore::MediaTrackConstraintSetMap::~MediaTrackConstraintSetMap((this + 52), v4);
  }

  if (*(this + 392) == 1)
  {
    v5 = this[43];
    this[43] = 0;
    if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v5, v2);
    }

    v6 = this[42];
    this[42] = 0;
    if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v6, v2);
    }

    v7 = this[41];
    this[41] = 0;
    if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v7, v2);
    }
  }

  v8 = this[35];
  this[35] = 0;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  v9 = this[34];
  this[34] = 0;
  if (v9)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(v9 + 1, v2);
  }

  if (*(this + 224) == 1)
  {
    WTF::MachSendRight::~MachSendRight((this + 25));
  }

  std::unique_ptr<IPC::Semaphore>::reset[abi:sn200100](this + 24, 0);
  v11 = this[23];
  this[23] = 0;
  if (v11)
  {
    v12 = *(v11 + 12);
    *(v11 + 12) = 0;
    if (v12)
    {
      CFRelease(v12);
    }

    v13 = *(v11 + 11);
    *(v11 + 11) = 0;
    if (v13)
    {
      CFRelease(v13);
    }

    bmalloc::api::tzoneFree(v11, v10);
  }

  if (*(this + 176) == 1)
  {
    WebCore::CAAudioStreamDescription::~CAAudioStreamDescription((this + 12));
  }

  std::unique_ptr<WebKit::ConsumerSharedCARingBuffer>::reset[abi:sn200100](this + 11, 0);
  v14 = this[10];
  this[10] = 0;
  if (v14)
  {
    (*(*v14 + 8))(v14);
  }

  WTF::MachSendRight::~MachSendRight((this + 9));
  v15 = this[8];
  this[8] = 0;
  if (v15)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v15);
  }

  WebCore::RealtimeMediaSourceObserver::~RealtimeMediaSourceObserver(this);
  if (*(this + 4) != 1)
  {
    __break(0xC471u);
  }
}