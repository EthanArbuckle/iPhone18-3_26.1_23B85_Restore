atomic_ullong *WebKit::RemoteSourceBufferProxy::abort(WebKit::RemoteSourceBufferProxy *this)
{
  v1 = *(this + 7);
  v2 = v1 + 1;
  while (1)
  {
    v3 = *v2;
    if ((*v2 & 1) == 0)
    {
      break;
    }

    v4 = *v2;
    atomic_compare_exchange_strong_explicit(v2, &v4, v3 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v4 == v3)
    {
      goto LABEL_6;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v2);
LABEL_6:
  (*(*v1 + 72))(v1);

  return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::SourceBufferPrivate,(WTF::DestructionThread)1>::deref(v1 + 1);
}

atomic_ullong *WebKit::RemoteSourceBufferProxy::resetParserState(WebKit::RemoteSourceBufferProxy *this)
{
  v1 = *(this + 7);
  v2 = v1 + 1;
  while (1)
  {
    v3 = *v2;
    if ((*v2 & 1) == 0)
    {
      break;
    }

    v4 = *v2;
    atomic_compare_exchange_strong_explicit(v2, &v4, v3 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v4 == v3)
    {
      goto LABEL_6;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v2);
LABEL_6:
  (*(*v1 + 80))(v1);

  return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::SourceBufferPrivate,(WTF::DestructionThread)1>::deref(v1 + 1);
}

atomic_ullong *WebKit::RemoteSourceBufferProxy::removedFromMediaSource(WebKit::RemoteSourceBufferProxy *this)
{
  v1 = *(this + 7);
  v2 = v1 + 1;
  while (1)
  {
    v3 = *v2;
    if ((*v2 & 1) == 0)
    {
      break;
    }

    v4 = *v2;
    atomic_compare_exchange_strong_explicit(v2, &v4, v3 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v4 == v3)
    {
      goto LABEL_6;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v2);
LABEL_6:
  (*(*v1 + 88))(v1);

  return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::SourceBufferPrivate,(WTF::DestructionThread)1>::deref(v1 + 1);
}

atomic_ullong *WebKit::RemoteSourceBufferProxy::setMediaSourceEnded(WebKit::RemoteSourceBufferProxy *this, uint64_t a2)
{
  v3 = *(this + 7);
  v4 = v3 + 1;
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
      goto LABEL_6;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v4);
LABEL_6:
  (*(*v3 + 104))(v3, a2);

  return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::SourceBufferPrivate,(WTF::DestructionThread)1>::deref(v3 + 1);
}

atomic_ullong *WebKit::RemoteSourceBufferProxy::setActive(WebKit::RemoteSourceBufferProxy *this, uint64_t a2)
{
  v3 = *(this + 7);
  v4 = v3 + 1;
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
      goto LABEL_6;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v4);
LABEL_6:
  (*(*v3 + 56))(v3, a2);

  return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::SourceBufferPrivate,(WTF::DestructionThread)1>::deref(v3 + 1);
}

atomic_ullong *WebKit::RemoteSourceBufferProxy::canSwitchToType(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = *(a1 + 56);
  v6 = v5 + 1;
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
      goto LABEL_6;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v6);
LABEL_6:
  v9 = (*(*v5 + 96))(v5, a2);
  v10 = *a3;
  *a3 = 0;
  (*(*v10 + 16))(v10, v9);
  (*(*v10 + 8))(v10);

  return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::SourceBufferPrivate,(WTF::DestructionThread)1>::deref(v5 + 1);
}

atomic_ullong *WebKit::RemoteSourceBufferProxy::setMode(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 56);
  v4 = v3 + 1;
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
      goto LABEL_6;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v4);
LABEL_6:
  (*(*v3 + 112))(v3, a2);

  return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::SourceBufferPrivate,(WTF::DestructionThread)1>::deref(v3 + 1);
}

atomic_ullong *WebKit::RemoteSourceBufferProxy::startChangingType(WebKit::RemoteSourceBufferProxy *this)
{
  v1 = *(this + 7);
  v2 = v1 + 1;
  while (1)
  {
    v3 = *v2;
    if ((*v2 & 1) == 0)
    {
      break;
    }

    v4 = *v2;
    atomic_compare_exchange_strong_explicit(v2, &v4, v3 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v4 == v3)
    {
      goto LABEL_6;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v2);
LABEL_6:
  (*(*v1 + 232))(v1);

  return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::SourceBufferPrivate,(WTF::DestructionThread)1>::deref(v1 + 1);
}

atomic_ullong *WebKit::RemoteSourceBufferProxy::removeCodedFrames(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v9 = *(a1 + 56);
  v10 = v9 + 1;
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
      goto LABEL_6;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v10);
LABEL_6:
  v13 = (*(*v9 + 184))(&v21, v9, a2, a3, a4);
  v14 = v21;
  v15 = WTF::RunLoop::currentSingleton(v13);
  v18 = 0uLL;
  v19 = "removeCodedFrames";
  v20 = 0;
  WTF::NativePromise<void,WebCore::PlatformMediaError,0u>::whenSettled<WTF::CompletionHandler<void ()(void)>>(v14, v15, a5, &v18, v22);
  WTF::NativePromise<void,WebCore::PlatformMediaError,0u>::ThenCommand<WTF::NativePromise<void,WebCore::PlatformMediaError,0u>::ThenCallback<true,WTF::NativePromise<void,WebCore::PlatformMediaError,0u>>>::~ThenCommand(v22);
  v16 = v21;
  v21 = 0;
  if (v16 && atomic_fetch_add(v16 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v16 + 2);
    (*(*v16 + 16))(v16);
  }

  return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::SourceBufferPrivate,(WTF::DestructionThread)1>::deref(v9 + 1);
}

__n128 WTF::NativePromise<void,WebCore::PlatformMediaError,0u>::whenSettled<WTF::CompletionHandler<void ()(void)>>@<Q0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, __n128 *a4@<X3>, __n128 *a5@<X8>)
{
  v9 = *a3;
  *a3 = 0;
  v10 = WTF::fastMalloc(0x50);
  while (1)
  {
    v11 = *(a2 + 8);
    if ((v11 & 1) == 0)
    {
      break;
    }

    v12 = *(a2 + 8);
    atomic_compare_exchange_strong_explicit((a2 + 8), &v12, v11 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v12 == v11)
    {
      goto LABEL_6;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*(a2 + 8));
LABEL_6:
  v13 = WTF::fastMalloc(0x10);
  *v13 = &unk_1F10FE080;
  v13[1] = v9;
  *(v10 + 8) = 1;
  *v10 = &unk_1F10FE050;
  *(v10 + 16) = a2;
  v14 = *a4;
  *(v10 + 40) = a4[1];
  *(v10 + 24) = v14;
  *(v10 + 56) = 0;
  *v10 = &unk_1F10FE020;
  *(v10 + 64) = 0;
  *(v10 + 72) = v13;
  atomic_fetch_add((a1 + 8), 1u);
  a5->n128_u64[0] = a1;
  a5->n128_u64[1] = v10;
  result = *a4;
  v16 = a4[1];
  a5[1] = *a4;
  a5[2] = v16;
  return result;
}

atomic_ullong *WebKit::RemoteSourceBufferProxy::evictCodedFrames(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v7 = *(a1 + 56);
  v8 = v7 + 1;
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
  (*(*v7 + 192))(v7, a2, a3);
  WebCore::SourceBufferPrivate::trackBuffersRanges(v16, v7);
  v11 = *(v7 + 7);
  v15[0] = *(v7 + 5);
  v15[1] = v11;
  v12 = *a4;
  *a4 = 0;
  (*(*v12 + 16))(v12, v16, v15);
  (*(*v12 + 8))(v12);
  WTF::Vector<WebCore::PlatformTimeRanges,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v16, v13);
  return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::SourceBufferPrivate,(WTF::DestructionThread)1>::deref(v8);
}

atomic_ullong *WebKit::RemoteSourceBufferProxy::asyncEvictCodedFrames(WebKit::RemoteSourceBufferProxy *this, uint64_t a2, const WTF::MediaTime *a3)
{
  v5 = *(this + 7);
  v6 = v5 + 1;
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
      goto LABEL_6;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v6);
LABEL_6:
  (*(*v5 + 200))(v5, a2, a3);

  return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::SourceBufferPrivate,(WTF::DestructionThread)1>::deref(v5 + 1);
}

atomic_uchar *WebKit::RemoteSourceBufferProxy::addTrackBuffer(WebKit::RemoteSourceBufferProxy *this, unint64_t a2)
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = *(this + 80);
  if (v3)
  {
    v5 = vcnt_s8(v3);
    v5.i16[0] = vaddlv_u8(v5);
    if (v5.u32[0] > 1uLL)
    {
      v6 = a2;
      if (*&v3 <= a2)
      {
        v6 = a2 % *&v3;
      }
    }

    else
    {
      v6 = (*&v3 - 1) & a2;
    }

    v7 = *(*(this + 9) + 8 * v6);
    if (v7)
    {
      for (i = *v7; i; i = *i)
      {
        v9 = i[1];
        if (v9 == a2)
        {
          if (i[2] == a2)
          {
            v15 = *(this + 7);
            v16 = v15 + 1;
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
                goto LABEL_35;
              }
            }

            WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v16);
LABEL_35:
            v20 = *(this + 80);
            if (v20)
            {
              v21 = vcnt_s8(v20);
              v21.i16[0] = vaddlv_u8(v21);
              if (v21.u32[0] > 1uLL)
              {
                v22 = a2;
                if (*&v20 <= a2)
                {
                  v22 = a2 % *&v20;
                }
              }

              else
              {
                v22 = (*&v20 - 1) & a2;
              }

              i = *(*(this + 9) + 8 * v22);
              if (i)
              {
                for (i = *i; i; i = *i)
                {
                  v23 = i[1];
                  if (v23 == a2)
                  {
                    if (i[2] == a2)
                    {
                      goto LABEL_52;
                    }
                  }

                  else
                  {
                    if (v21.u32[0] > 1uLL)
                    {
                      if (v23 >= *&v20)
                      {
                        v23 %= *&v20;
                      }
                    }

                    else
                    {
                      v23 &= *&v20 - 1;
                    }

                    if (v23 != v22)
                    {
                      break;
                    }
                  }
                }
              }
            }

            __break(1u);
LABEL_52:
            v24 = i[3];
            atomic_fetch_add((v24 + 8), 1u);
            *v26 = v24;
            (*(*v15 + 128))(v15, a2, v26);
            v25 = *v26;
            *v26 = 0;
            if (v25)
            {
              if (atomic_fetch_add(v25 + 2, 0xFFFFFFFF) == 1)
              {
                atomic_store(1u, v25 + 2);
                (*(*v25 + 8))(v25);
              }
            }

            return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::SourceBufferPrivate,(WTF::DestructionThread)1>::deref(v15 + 1);
          }
        }

        else
        {
          if (v5.u32[0] > 1uLL)
          {
            if (v9 >= *&v3)
            {
              v9 %= *&v3;
            }
          }

          else
          {
            v9 &= *&v3 - 1;
          }

          if (v9 != v6)
          {
            break;
          }
        }
      }
    }
  }

  v10 = qword_1ED6416C8;
  if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_FAULT))
  {
    *v26 = 136446210;
    *&v26[4] = "void WebKit::RemoteSourceBufferProxy::addTrackBuffer(TrackID)";
    _os_log_fault_impl(&dword_19D52D000, v10, OS_LOG_TYPE_FAULT, "/Library/Caches/com.apple.xbs/Sources/WebKit/Source/WebKit/GPUProcess/media/RemoteSourceBufferProxy.cpp 242: Invalid message dispatched %{public}s", v26, 0xCu);
  }

  result = *(this + 5);
  if (result)
  {
    result = WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::GPUConnectionToWebProcess>(result, *(this + 4), v26);
    if (*v26)
    {
      v12 = *(*v26 + 56);
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
          goto LABEL_31;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v12);
LABEL_31:
      v19 = *v26;
      *v26 = 0;
      if (v19)
      {
        WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUConnectionToWebProcess,(WTF::DestructionThread)1>::deref((v19 + 16));
      }

      *(v12 + 94) = 1;
      result = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v12);
    }
  }

  if (IPC::s_shouldCrashOnMessageCheckFailure == 1)
  {
    __break(0xC471u);
  }

  return result;
}

atomic_ullong *WebKit::RemoteSourceBufferProxy::resetTrackBuffers(WebKit::RemoteSourceBufferProxy *this)
{
  v1 = *(this + 7);
  v2 = v1 + 1;
  while (1)
  {
    v3 = *v2;
    if ((*v2 & 1) == 0)
    {
      break;
    }

    v4 = *v2;
    atomic_compare_exchange_strong_explicit(v2, &v4, v3 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v4 == v3)
    {
      goto LABEL_6;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v2);
LABEL_6:
  (*(*v1 + 136))(v1);

  return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::SourceBufferPrivate,(WTF::DestructionThread)1>::deref(v1 + 1);
}

atomic_ullong *WebKit::RemoteSourceBufferProxy::clearTrackBuffers(WebKit::RemoteSourceBufferProxy *this)
{
  v1 = *(this + 7);
  v2 = v1 + 1;
  while (1)
  {
    v3 = *v2;
    if ((*v2 & 1) == 0)
    {
      break;
    }

    v4 = *v2;
    atomic_compare_exchange_strong_explicit(v2, &v4, v3 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v4 == v3)
    {
      goto LABEL_6;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v2);
LABEL_6:
  (*(*v1 + 144))(v1, 0);

  return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::SourceBufferPrivate,(WTF::DestructionThread)1>::deref(v1 + 1);
}

atomic_ullong *WebKit::RemoteSourceBufferProxy::setAllTrackBuffersNeedRandomAccess(WebKit::RemoteSourceBufferProxy *this)
{
  v1 = *(this + 7);
  v2 = v1 + 1;
  while (1)
  {
    v3 = *v2;
    if ((*v2 & 1) == 0)
    {
      break;
    }

    v4 = *v2;
    atomic_compare_exchange_strong_explicit(v2, &v4, v3 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v4 == v3)
    {
      goto LABEL_6;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v2);
LABEL_6:
  (*(*v1 + 152))(v1);

  return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::SourceBufferPrivate,(WTF::DestructionThread)1>::deref(v1 + 1);
}

atomic_ullong *WebKit::RemoteSourceBufferProxy::reenqueueMediaIfNeeded(WebKit::RemoteSourceBufferProxy *this, const WTF::MediaTime *a2)
{
  v3 = *(this + 7);
  v4 = v3 + 1;
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
      goto LABEL_6;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v4);
LABEL_6:
  (*(*v3 + 120))(v3, a2);

  return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::SourceBufferPrivate,(WTF::DestructionThread)1>::deref(v3 + 1);
}

atomic_ullong *WebKit::RemoteSourceBufferProxy::setGroupStartTimestamp(WebKit::RemoteSourceBufferProxy *this, const WTF::MediaTime *a2)
{
  v3 = *(this + 7);
  v4 = v3 + 1;
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
      goto LABEL_6;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v4);
LABEL_6:
  (*(*v3 + 160))(v3, a2);

  return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::SourceBufferPrivate,(WTF::DestructionThread)1>::deref(v3 + 1);
}

atomic_ullong *WebKit::RemoteSourceBufferProxy::setGroupStartTimestampToEndTimestamp(WebKit::RemoteSourceBufferProxy *this)
{
  v1 = *(this + 7);
  v2 = v1 + 1;
  while (1)
  {
    v3 = *v2;
    if ((*v2 & 1) == 0)
    {
      break;
    }

    v4 = *v2;
    atomic_compare_exchange_strong_explicit(v2, &v4, v3 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v4 == v3)
    {
      goto LABEL_6;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v2);
LABEL_6:
  (*(*v1 + 168))(v1);

  return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::SourceBufferPrivate,(WTF::DestructionThread)1>::deref(v1 + 1);
}

atomic_ullong *WebKit::RemoteSourceBufferProxy::setShouldGenerateTimestamps(WebKit::RemoteSourceBufferProxy *this, uint64_t a2)
{
  v3 = *(this + 7);
  v4 = v3 + 1;
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
      goto LABEL_6;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v4);
LABEL_6:
  (*(*v3 + 176))(v3, a2);

  return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::SourceBufferPrivate,(WTF::DestructionThread)1>::deref(v3 + 1);
}

atomic_ullong *WebKit::RemoteSourceBufferProxy::resetTimestampOffsetInTrackBuffers(WebKit::RemoteSourceBufferProxy *this)
{
  v1 = *(this + 7);
  v2 = v1 + 1;
  while (1)
  {
    v3 = *v2;
    if ((*v2 & 1) == 0)
    {
      break;
    }

    v4 = *v2;
    atomic_compare_exchange_strong_explicit(v2, &v4, v3 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v4 == v3)
    {
      goto LABEL_6;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v2);
LABEL_6:
  (*(*v1 + 224))(v1);

  return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::SourceBufferPrivate,(WTF::DestructionThread)1>::deref(v1 + 1);
}

atomic_ullong *WebKit::RemoteSourceBufferProxy::setTimestampOffset(WebKit::RemoteSourceBufferProxy *this, const WTF::MediaTime *a2)
{
  v3 = *(this + 7);
  v4 = v3 + 1;
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
      goto LABEL_6;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v4);
LABEL_6:
  (*(*v3 + 240))(v3, a2);

  return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::SourceBufferPrivate,(WTF::DestructionThread)1>::deref(v3 + 1);
}

atomic_ullong *WebKit::RemoteSourceBufferProxy::setAppendWindowStart(WebKit::RemoteSourceBufferProxy *this, const WTF::MediaTime *a2)
{
  v3 = *(this + 7);
  v4 = v3 + 1;
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
      goto LABEL_6;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v4);
LABEL_6:
  (*(*v3 + 248))(v3, a2);

  return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::SourceBufferPrivate,(WTF::DestructionThread)1>::deref(v3 + 1);
}

atomic_ullong *WebKit::RemoteSourceBufferProxy::setAppendWindowEnd(WebKit::RemoteSourceBufferProxy *this, const WTF::MediaTime *a2)
{
  v3 = *(this + 7);
  v4 = v3 + 1;
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
      goto LABEL_6;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v4);
LABEL_6:
  (*(*v3 + 256))(v3, a2);

  return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::SourceBufferPrivate,(WTF::DestructionThread)1>::deref(v3 + 1);
}

atomic_ullong *WebKit::RemoteSourceBufferProxy::setMaximumBufferSize(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = *(a1 + 56);
  v6 = v5 + 1;
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
      goto LABEL_6;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v6);
LABEL_6:
  v9 = (*(*v5 + 320))(&v22, v5, a2);
  v10 = v22;
  v11 = WTF::RunLoop::currentSingleton(v9);
  v12 = *a3;
  *a3 = 0;
  v13 = WTF::fastMalloc(0x50);
  while (1)
  {
    v14 = *(v11 + 8);
    if ((v14 & 1) == 0)
    {
      break;
    }

    v15 = *(v11 + 8);
    atomic_compare_exchange_strong_explicit((v11 + 8), &v15, v14 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v15 == v14)
    {
      goto LABEL_11;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*(v11 + 8));
LABEL_11:
  v16 = WTF::fastMalloc(0x10);
  *v16 = &unk_1F10FDAD0;
  v16[1] = v12;
  *(v13 + 8) = 1;
  *(v13 + 16) = v11;
  *(v13 + 24) = 0uLL;
  *(v13 + 40) = "setMaximumBufferSize";
  *(v13 + 48) = 0;
  *(v13 + 56) = 0;
  *v13 = &unk_1F10FDAF8;
  *(v13 + 64) = 0;
  *(v13 + 72) = v16;
  atomic_fetch_add((v10 + 8), 1u);
  v25 = 0uLL;
  v26 = "setMaximumBufferSize";
  v27 = 0;
  v23 = v10;
  v24 = 0;
  v28 = v13;
  WTF::NativePromise<void,void,0u>::maybeSettle(v10, &v28, &v25);
  v17 = v28;
  v28 = 0;
  if (v17 && atomic_fetch_add(v17 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v17 + 2);
    (*(*v17 + 8))(v17);
  }

  v18 = v24;
  v24 = 0;
  if (v18 && atomic_fetch_add(v18 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v18 + 2);
    (*(*v18 + 8))(v18);
  }

  v19 = v23;
  v23 = 0;
  if (v19 && atomic_fetch_add(v19 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v19 + 2);
    (*(*v19 + 16))(v19);
  }

  v20 = v22;
  v22 = 0;
  if (v20 && atomic_fetch_add(v20 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v20 + 2);
    (*(*v20 + 16))(v20);
  }

  return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::SourceBufferPrivate,(WTF::DestructionThread)1>::deref(v6);
}

atomic_ullong *WebKit::RemoteSourceBufferProxy::computeSeekTime(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = *(a1 + 56);
  v6 = v5 + 1;
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
      goto LABEL_6;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v6);
LABEL_6:
  v9 = (*(*v5 + 264))(&v17, v5, a2);
  v10 = v17;
  v11 = WTF::RunLoop::currentSingleton(v9);
  v14 = 0uLL;
  v15 = "computeSeekTime";
  v16 = 0;
  WTF::NativePromise<WTF::MediaTime,WebCore::PlatformMediaError,0u>::whenSettled<WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<WTF::MediaTime,WebCore::PlatformMediaError> &&)>>(v10, v11, a3, &v14, v18);
  WTF::NativePromise<WTF::MediaTime,WebCore::PlatformMediaError,0u>::ThenCommand<WTF::NativePromise<WTF::MediaTime,WebCore::PlatformMediaError,0u>::ThenCallback<false,void>>::~ThenCommand(v18);
  v12 = v17;
  v17 = 0;
  if (v12 && atomic_fetch_add(v12 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v12 + 2);
    (*(*v12 + 16))(v12);
  }

  return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::SourceBufferPrivate,(WTF::DestructionThread)1>::deref(v5 + 1);
}

__n128 WTF::NativePromise<WTF::MediaTime,WebCore::PlatformMediaError,0u>::whenSettled<WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<WTF::MediaTime,WebCore::PlatformMediaError> &&)>>@<Q0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, __n128 *a4@<X3>, __n128 *a5@<X8>)
{
  v9 = *a3;
  *a3 = 0;
  v10 = WTF::fastMalloc(0x50);
  while (1)
  {
    v11 = *(a2 + 8);
    if ((v11 & 1) == 0)
    {
      break;
    }

    v12 = *(a2 + 8);
    atomic_compare_exchange_strong_explicit((a2 + 8), &v12, v11 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v12 == v11)
    {
      goto LABEL_6;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*(a2 + 8));
LABEL_6:
  v13 = WTF::fastMalloc(0x10);
  *v13 = &unk_1F10FDB58;
  v13[1] = v9;
  *(v10 + 8) = 1;
  *v10 = &unk_1F10FDBB0;
  *(v10 + 16) = a2;
  v14 = *a4;
  *(v10 + 40) = a4[1];
  *(v10 + 24) = v14;
  *(v10 + 56) = 0;
  *v10 = &unk_1F10FDB80;
  *(v10 + 64) = 0;
  *(v10 + 72) = v13;
  atomic_fetch_add((a1 + 8), 1u);
  a5->n128_u64[0] = a1;
  a5->n128_u64[1] = v10;
  result = *a4;
  v16 = a4[1];
  a5[1] = *a4;
  a5[2] = v16;
  return result;
}

atomic_ullong *WebKit::RemoteSourceBufferProxy::seekToTime(WebKit::RemoteSourceBufferProxy *this, const WTF::MediaTime *a2)
{
  v3 = *(this + 7);
  v4 = v3 + 1;
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
      goto LABEL_6;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v4);
LABEL_6:
  (*(*v3 + 272))(v3, a2);

  return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::SourceBufferPrivate,(WTF::DestructionThread)1>::deref(v3 + 1);
}

atomic_ullong *WebKit::RemoteSourceBufferProxy::updateTrackIds(atomic_ullong *result, uint64_t a2)
{
  if (*(a2 + 12))
  {
    v3 = result[7];
    v4 = v3 + 1;
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
    (*(*v3 + 280))(v3, a2);

    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::SourceBufferPrivate,(WTF::DestructionThread)1>::deref(v3 + 1);
  }

  return result;
}

atomic_ullong *WebKit::RemoteSourceBufferProxy::bufferedSamplesForTrackId(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = *(a1 + 56);
  v6 = v5 + 1;
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
      goto LABEL_6;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v6);
LABEL_6:
  v9 = (*(*v5 + 352))(&v17, v5, a2);
  v10 = v17;
  v11 = WTF::RunLoop::currentSingleton(v9);
  v14 = 0uLL;
  v15 = "bufferedSamplesForTrackId";
  v16 = 0;
  WTF::NativePromise<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::PlatformMediaError,0u>::whenSettled<WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::PlatformMediaError> &&)>>(v18, v10, v11, a3, &v14);
  WTF::NativePromise<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::PlatformMediaError,0u>::ThenCommand<WTF::NativePromise<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::PlatformMediaError,0u>::ThenCallback<false,void>>::~ThenCommand(v18);
  v12 = v17;
  v17 = 0;
  if (v12 && atomic_fetch_add(v12 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v12 + 2);
    (*(*v12 + 16))(v12);
  }

  return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::SourceBufferPrivate,(WTF::DestructionThread)1>::deref(v5 + 1);
}

__n128 WTF::NativePromise<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::PlatformMediaError,0u>::whenSettled<WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::PlatformMediaError> &&)>>(__n128 *a1, unint64_t a2, uint64_t a3, uint64_t *a4, __n128 *a5)
{
  v9 = *a4;
  *a4 = 0;
  v10 = WTF::fastMalloc(0x50);
  while (1)
  {
    v11 = *(a3 + 8);
    if ((v11 & 1) == 0)
    {
      break;
    }

    v12 = *(a3 + 8);
    atomic_compare_exchange_strong_explicit((a3 + 8), &v12, v11 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v12 == v11)
    {
      goto LABEL_6;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*(a3 + 8));
LABEL_6:
  v13 = WTF::fastMalloc(0x10);
  *v13 = &unk_1F10FDBE0;
  v13[1] = v9;
  *(v10 + 8) = 1;
  *v10 = &unk_1F10FDC38;
  *(v10 + 16) = a3;
  v14 = *a5;
  *(v10 + 40) = a5[1];
  *(v10 + 24) = v14;
  *(v10 + 56) = 0;
  *v10 = &unk_1F10FDC08;
  *(v10 + 64) = 0;
  *(v10 + 72) = v13;
  atomic_fetch_add((a2 + 8), 1u);
  a1->n128_u64[0] = a2;
  a1->n128_u64[1] = v10;
  result = *a5;
  v16 = a5[1];
  a1[1] = *a5;
  a1[2] = v16;
  return result;
}

atomic_ullong *WebKit::RemoteSourceBufferProxy::enqueuedSamplesForTrackID(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = *(a1 + 56);
  v6 = v5 + 1;
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
      goto LABEL_6;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v6);
LABEL_6:
  v9 = (*(*v5 + 360))(&v17, v5, a2);
  v10 = v17;
  v11 = WTF::RunLoop::currentSingleton(v9);
  v14 = 0uLL;
  v15 = "enqueuedSamplesForTrackID";
  v16 = 0;
  WTF::NativePromise<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::PlatformMediaError,0u>::whenSettled<WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::PlatformMediaError> &&)>>(v18, v10, v11, a3, &v14);
  WTF::NativePromise<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::PlatformMediaError,0u>::ThenCommand<WTF::NativePromise<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::PlatformMediaError,0u>::ThenCallback<false,void>>::~ThenCommand(v18);
  v12 = v17;
  v17 = 0;
  if (v12 && atomic_fetch_add(v12 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v12 + 2);
    (*(*v12 + 16))(v12);
  }

  return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::SourceBufferPrivate,(WTF::DestructionThread)1>::deref(v5 + 1);
}

atomic_ullong *WebKit::RemoteSourceBufferProxy::memoryPressure(WebKit::RemoteSourceBufferProxy *this, const WTF::MediaTime *a2)
{
  v3 = *(this + 7);
  v4 = v3 + 1;
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
      goto LABEL_6;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v4);
LABEL_6:
  (*(*v3 + 328))(v3, a2);

  return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::SourceBufferPrivate,(WTF::DestructionThread)1>::deref(v3 + 1);
}

atomic_ullong *WebKit::RemoteSourceBufferProxy::minimumUpcomingPresentationTimeForTrackID(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = *(a1 + 56);
  v6 = v5 + 1;
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
      goto LABEL_6;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v6);
LABEL_6:
  v9 = (*(*v5 + 368))(v5, a2);
  v10 = *a3;
  *a3 = 0;
  (*(*v10 + 16))(v10, v9, v11 & 0xFFFFFFFFFFLL);
  (*(*v10 + 8))(v10);

  return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::SourceBufferPrivate,(WTF::DestructionThread)1>::deref(v5 + 1);
}

atomic_ullong *WebKit::RemoteSourceBufferProxy::setMaximumQueueDepthForTrackID(WebKit::RemoteSourceBufferProxy *this, uint64_t a2, uint64_t a3)
{
  v5 = *(this + 7);
  v6 = v5 + 1;
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
      goto LABEL_6;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v6);
LABEL_6:
  (*(*v5 + 376))(v5, a2, a3);

  return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::SourceBufferPrivate,(WTF::DestructionThread)1>::deref(v5 + 1);
}

atomic_ullong *WebKit::RemoteSourceBufferProxy::detach(WebKit::RemoteSourceBufferProxy *this)
{
  v1 = *(this + 7);
  v2 = v1 + 1;
  while (1)
  {
    v3 = *v2;
    if ((*v2 & 1) == 0)
    {
      break;
    }

    v4 = *v2;
    atomic_compare_exchange_strong_explicit(v2, &v4, v3 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v4 == v3)
    {
      goto LABEL_6;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v2);
LABEL_6:
  (*(*v1 + 336))(v1);

  return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::SourceBufferPrivate,(WTF::DestructionThread)1>::deref(v1 + 1);
}

atomic_ullong *WebKit::RemoteSourceBufferProxy::attach(WebKit::RemoteSourceBufferProxy *this)
{
  v1 = *(this + 7);
  v2 = v1 + 1;
  while (1)
  {
    v3 = *v2;
    if ((*v2 & 1) == 0)
    {
      break;
    }

    v4 = *v2;
    atomic_compare_exchange_strong_explicit(v2, &v4, v3 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v4 == v3)
    {
      goto LABEL_6;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v2);
LABEL_6:
  (*(*v1 + 344))(v1);

  return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::SourceBufferPrivate,(WTF::DestructionThread)1>::deref(v1 + 1);
}

unsigned int *WebKit::RemoteSourceBufferProxy::sourceBufferPrivateDidAttach@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = a1[8];
  if (v5)
  {
    v6 = *(v5 + 8);
    if (v6)
    {
      v7 = 0;
      ++*(v6 + 4);
      goto LABEL_6;
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = 1;
LABEL_6:
  WebKit::RemoteSourceBufferProxy::createInitializationSegmentInfo(&v57, a1, a2);
  if (v64 == 1)
  {
    v44 = a3;
    v45 = v7;
    v8 = WebKit::RemoteMediaPlayerProxy::commitAllTransactions(v6, &v52);
    v43 = v52;
    v9 = WTF::RunLoop::currentSingleton(v8);
    v10 = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::NetworkDataTask,(WTF::DestructionThread)1>::controlBlock(a1 + 1);
    v11 = WTF::ThreadSafeWeakPtrControlBlock::weakRef(v10);
    v48 = v57;
    v12 = v58;
    v58 = 0;
    v13 = v59;
    v14 = HIDWORD(v59);
    v59 = 0;
    v15 = v60;
    v60 = 0;
    v16 = v61;
    v17 = HIDWORD(v61);
    v61 = 0;
    v18 = v62;
    v62 = 0;
    v19 = v63;
    v20 = HIDWORD(v63);
    v63 = 0;
    v65 = a1;
    v66 = v11;
    v39 = v11;
    v46 = 0;
    v47 = 0;
    v67 = v57;
    v49[0] = 0;
    v42 = v12;
    *&v68 = v12;
    v49[1] = 0;
    v40 = v14;
    v41 = v13;
    *(&v68 + 1) = __PAIR64__(v14, v13);
    v50[0] = 0;
    *&v69 = v15;
    v50[1] = 0;
    *(&v69 + 1) = __PAIR64__(v17, v16);
    v51[0] = 0;
    *&v70 = v18;
    v51[1] = 0;
    *(&v70 + 1) = __PAIR64__(v20, v19);
    v21 = WTF::fastMalloc(0x50);
    while (1)
    {
      v22 = *(v9 + 8);
      if ((v22 & 1) == 0)
      {
        break;
      }

      v23 = *(v9 + 8);
      atomic_compare_exchange_strong_explicit((v9 + 8), &v23, v22 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v23 == v22)
      {
        goto LABEL_13;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*(v9 + 8));
LABEL_13:
    v25 = WTF::fastMalloc(0x58);
    *&v26 = 0;
    *v25 = &unk_1F10FDC68;
    *(v25 + 8) = a1;
    *(v25 + 16) = v39;
    *(v25 + 24) = v67;
    v65 = 0;
    v66 = 0;
    v68 = v26;
    *(v25 + 40) = v42;
    *(v25 + 48) = v41;
    *(v25 + 52) = v40;
    v69 = v26;
    *(v25 + 56) = v15;
    *(v25 + 64) = v16;
    *(v25 + 68) = v17;
    v70 = v26;
    *(v25 + 72) = v18;
    *(v25 + 80) = v19;
    *(v25 + 84) = v20;
    *(v21 + 8) = 1;
    *(v21 + 16) = v9;
    *(v21 + 24) = 0uLL;
    *(v21 + 40) = "sourceBufferPrivateDidAttach";
    *(v21 + 48) = 0;
    *(v21 + 56) = 0;
    *v21 = &unk_1F10FDA78;
    *(v21 + 64) = 0;
    *(v21 + 72) = v25;
    atomic_fetch_add((v43 + 8), 1u);
    v53[0] = v43;
    v53[1] = v21;
    v54 = 0uLL;
    v55 = "sourceBufferPrivateDidAttach";
    v56 = 0;
    WTF::Vector<WebKit::ITPThirdPartyDataForSpecificFirstParty,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v70, v27);
    WTF::Vector<WebKit::ITPThirdPartyDataForSpecificFirstParty,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v69, v28);
    WTF::Vector<WebKit::ITPThirdPartyDataForSpecificFirstParty,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v68, v29);
    v31 = v66;
    v66 = 0;
    if (v31)
    {
      WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v31, v30);
    }

    WTF::NativePromise<void,WebCore::PlatformMediaError,0u>::ThenCommand<WTF::NativePromise<void,WebCore::PlatformMediaError,0u>::ThenCallback<true,WTF::NativePromise<void,WebCore::PlatformMediaError,0u>>>::completionPromise(v44, v53);
    WTF::NativePromise<void,WebCore::PlatformMediaError,0u>::ThenCommand<WTF::NativePromise<void,WebCore::PlatformMediaError,0u>::ThenCallback<true,WTF::NativePromise<void,WebCore::PlatformMediaError,0u>>>::~ThenCommand(v53);
    WTF::Vector<WebKit::ITPThirdPartyDataForSpecificFirstParty,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v51, v32);
    WTF::Vector<WebKit::ITPThirdPartyDataForSpecificFirstParty,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v50, v33);
    WTF::Vector<WebKit::ITPThirdPartyDataForSpecificFirstParty,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v49, v34);
    v36 = v47;
    v47 = 0;
    v7 = v45;
    if (v36)
    {
      WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v36, v35);
    }

    result = v52;
    v52 = 0;
    if (result && atomic_fetch_add(result + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, result + 2);
      result = (*(*result + 16))(result);
    }

    if (v64)
    {
      WTF::Vector<WebKit::ITPThirdPartyDataForSpecificFirstParty,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v62, v35);
      WTF::Vector<WebKit::ITPThirdPartyDataForSpecificFirstParty,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v60, v37);
      result = WTF::Vector<WebKit::ITPThirdPartyDataForSpecificFirstParty,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v58, v38);
    }
  }

  else
  {
    LOBYTE(v46) = 1;
    v65 = 0;
    v66 = 0;
    *&v67 = "sourceBufferPrivateDidAttach";
    *(&v67 + 1) = 0;
    result = WTF::NativePromise<void,WebCore::PlatformMediaError,0u>::createAndReject<WebCore::PlatformMediaError,std::enable_if<true,void>>(&v46, &v65, a3);
  }

  if ((v7 & 1) == 0)
  {
    return WTF::RefCounted<WebKit::RemoteMediaPlayerProxy>::deref(v6 + 4);
  }

  return result;
}

uint64_t WebKit::RemoteTextTrackProxy::RemoteTextTrackProxy(uint64_t a1, uint64_t a2, atomic_ullong *a3, uint64_t a4)
{
  *(a1 + 16) = 1;
  *a1 = &unk_1F10FD8C8;
  *(a1 + 8) = 0;
  *(a1 + 24) = a2;
  v8 = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUConnectionToWebProcess,(WTF::DestructionThread)1>::controlBlock((a2 + 16));
  *(a1 + 32) = WTF::ThreadSafeWeakPtrControlBlock::weakRef(v8);
  while (1)
  {
    v9 = a3[1];
    if ((v9 & 1) == 0)
    {
      break;
    }

    v10 = a3[1];
    atomic_compare_exchange_strong_explicit(a3 + 1, &v10, v9 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v10 == v9)
    {
      goto LABEL_6;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(a3[1]);
LABEL_6:
  *(a1 + 40) = a3;
  *(a1 + 48) = (*(*a3 + 48))(a3);
  *(a1 + 56) = a4;
  *(a1 + 64) = 0;
  v11 = WTF::fastMalloc(0x10);
  *v11 = &unk_1F10FDE68;
  v22 = v11;
  *(a1 + 64) = WebCore::TrackPrivateBase::addClient();
  v12 = v22;
  v22 = 0;
  if (v12)
  {
    (*(*v12 + 8))(v12);
  }

  v13 = *(a2 + 56);
  WebKit::RemoteTextTrackProxy::configuration(a1);
  v14 = *(a1 + 56);
  v16 = IPC::Encoder::operator new(0x238, v15);
  *v16 = 332;
  *(v16 + 2) = 0;
  *(v16 + 3) = 0;
  *(v16 + 1) = v14;
  *(v16 + 68) = 0;
  *(v16 + 70) = 0;
  *(v16 + 69) = 0;
  IPC::Encoder::encodeHeader(v16);
  v22 = v16;
  IPC::ArgumentCoder<WebKit::TextTrackPrivateRemoteConfiguration,void>::encode(v16, &xmmword_1ED642500);
  IPC::Connection::sendMessageImpl(v13, &v22, 0, 0);
  v18 = v22;
  v22 = 0;
  if (v18)
  {
    IPC::Encoder::~Encoder(v18, v17);
    bmalloc::api::tzoneFree(v20, v21);
  }

  return a1;
}

uint64_t WebKit::RemoteTextTrackProxy::configuration(WebKit::RemoteTextTrackProxy *this)
{
  if ((_MergedGlobals_70 & 1) == 0)
  {
    xmmword_1ED642520 = 0u;
    *&dword_1ED642530 = 0u;
    xmmword_1ED642500 = 0u;
    *&qword_1ED642510 = 0u;
    xmmword_1ED642520 = *WTF::MediaTime::zeroTime(this);
    *&byte_1ED642534 = 0x10000000601;
    _MergedGlobals_70 = 1;
  }

  *&xmmword_1ED642500 = (*(**(this + 5) + 48))(*(this + 5));
  (*(**(this + 5) + 56))(&v18);
  v3 = v18;
  if (v18)
  {
    atomic_fetch_add_explicit(v18, 2u, memory_order_relaxed);
  }

  v4 = *(&xmmword_1ED642500 + 1);
  *(&xmmword_1ED642500 + 1) = v3;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, v2);
  }

  v5 = v18;
  v18 = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, v2);
  }

  (*(**(this + 5) + 64))(&v18);
  v7 = v18;
  if (v18)
  {
    atomic_fetch_add_explicit(v18, 2u, memory_order_relaxed);
  }

  v8 = qword_1ED642510;
  qword_1ED642510 = v7;
  if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v8, v6);
  }

  v9 = v18;
  v18 = 0;
  if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v9, v6);
  }

  dword_1ED642530 = (*(**(this + 5) + 72))(*(this + 5));
  (*(**(this + 5) + 192))(&v18);
  v11 = v18;
  if (v18)
  {
    atomic_fetch_add_explicit(v18, 2u, memory_order_relaxed);
  }

  v12 = qword_1ED642518;
  qword_1ED642518 = v11;
  if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v12, v10);
  }

  v13 = v18;
  v18 = 0;
  if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v13, v10);
  }

  *&xmmword_1ED642520 = (*(**(this + 5) + 96))(*(this + 5));
  DWORD2(xmmword_1ED642520) = v14;
  BYTE12(xmmword_1ED642520) = v15;
  v16 = *(this + 5);
  byte_1ED642534 = v16[56];
  byte_1ED642536 = (*(*v16 + 144))(v16);
  byte_1ED642537 = (*(**(this + 5) + 152))(*(this + 5));
  byte_1ED642538 = (*(**(this + 5) + 160))(*(this + 5));
  byte_1ED642539 = (*(**(this + 5) + 168))(*(this + 5));
  byte_1ED64253A = (*(**(this + 5) + 176))(*(this + 5));
  byte_1ED64253B = (*(**(this + 5) + 184))(*(this + 5));
  result = (*(**(this + 5) + 136))(*(this + 5));
  byte_1ED642535 = result;
  return result;
}

void WebKit::RemoteTextTrackProxy::~RemoteTextTrackProxy(WebKit::RemoteTextTrackProxy *this)
{
  WebCore::TrackPrivateBase::removeClient(*(this + 5));
  v3 = *(this + 5);
  *(this + 5) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::TrackPrivateBase,(WTF::DestructionThread)0>::deref((v3 + 8), v2);
  }

  v4 = *(this + 4);
  *(this + 4) = 0;
  if (v4)
  {
    WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v4, v2);
  }

  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::~WeakPtrFactory(this + 1, v2);
}

{
  WebKit::RemoteTextTrackProxy::~RemoteTextTrackProxy(this);

  bmalloc::api::tzoneFree(v1, v2);
}

atomic_uchar *WebKit::RemoteTextTrackProxy::configurationChanged(WebKit::RemoteTextTrackProxy *this)
{
  result = *(this + 4);
  if (result)
  {
    result = WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::GPUConnectionToWebProcess>(result, *(this + 3), &v13);
    if (v13)
    {
      v3 = *(v13 + 56);
      v4 = (*(**(this + 5) + 48))(*(this + 5));
      v5 = *(this + 6);
      *(this + 6) = v4;
      WebKit::RemoteTextTrackProxy::configuration(this);
      v6 = *(this + 7);
      v8 = IPC::Encoder::operator new(0x238, v7);
      *v8 = 355;
      *(v8 + 2) = 0;
      *(v8 + 3) = 0;
      *(v8 + 1) = v6;
      *(v8 + 68) = 0;
      *(v8 + 70) = 0;
      *(v8 + 69) = 0;
      IPC::Encoder::encodeHeader(v8);
      v14 = v8;
      IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v8, v5);
      IPC::ArgumentCoder<WebKit::TextTrackPrivateRemoteConfiguration,void>::encode(v8, &xmmword_1ED642500);
      IPC::Connection::sendMessageImpl(v3, &v14, 0, 0);
      result = v14;
      v14 = 0;
      if (result)
      {
        IPC::Encoder::~Encoder(result, v9);
        result = bmalloc::api::tzoneFree(v11, v12);
      }

      v10 = v13;
      v13 = 0;
      if (v10)
      {
        return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUConnectionToWebProcess,(WTF::DestructionThread)1>::deref((v10 + 16));
      }
    }
  }

  return result;
}

atomic_uchar *WebKit::RemoteTextTrackProxy::addDataCue(uint64_t a1, uint64_t *a2, uint64_t *a3, const void *a4, size_t a5)
{
  result = *(a1 + 32);
  if (result)
  {
    result = WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::GPUConnectionToWebProcess>(result, *(a1 + 24), &v20);
    if (v20)
    {
      v11 = *(v20 + 56);
      v12 = (*(**(a1 + 40) + 48))(*(a1 + 40));
      v13 = *(a1 + 56);
      v15 = IPC::Encoder::operator new(0x238, v14);
      *v15 = 328;
      *(v15 + 2) = 0;
      *(v15 + 3) = 0;
      *(v15 + 1) = v13;
      *(v15 + 68) = 0;
      *(v15 + 70) = 0;
      *(v15 + 69) = 0;
      IPC::Encoder::encodeHeader(v15);
      v21 = v15;
      IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v15, v12);
      IPC::ArgumentCoder<WTF::MediaTime,void>::encode(v15, a2);
      IPC::ArgumentCoder<WTF::MediaTime,void>::encode(v15, a3);
      IPC::ArgumentCoder<std::span<unsigned char const,18446744073709551615ul>,void>::encode<IPC::Encoder>(v15, a4, a5);
      IPC::Connection::sendMessageImpl(v11, &v21, 0, 0);
      result = v21;
      v21 = 0;
      if (result)
      {
        IPC::Encoder::~Encoder(result, v16);
        result = bmalloc::api::tzoneFree(v18, v19);
      }

      v17 = v20;
      v20 = 0;
      if (v17)
      {
        return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUConnectionToWebProcess,(WTF::DestructionThread)1>::deref((v17 + 16));
      }
    }
  }

  return result;
}

void WebKit::RemoteTextTrackProxy::addDataCue(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t *a5)
{
  v6 = *(a1 + 32);
  if (v6)
  {
    WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::GPUConnectionToWebProcess>(v6, *(a1 + 24), &v23);
    if (v23)
    {
      v11 = *(v23 + 56);
      v12 = (*(**(a1 + 40) + 48))(*(a1 + 40));
      (*(**a4 + 56))(v21);
      v13 = *(a1 + 56);
      v15 = IPC::Encoder::operator new(0x238, v14);
      *v15 = 329;
      *(v15 + 2) = 0;
      *(v15 + 3) = 0;
      *(v15 + 1) = v13;
      *(v15 + 68) = 0;
      *(v15 + 70) = 0;
      *(v15 + 69) = 0;
      IPC::Encoder::encodeHeader(v15);
      v24 = v15;
      IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v15, v12);
      IPC::ArgumentCoder<WTF::MediaTime,void>::encode(v15, a2);
      IPC::ArgumentCoder<WTF::MediaTime,void>::encode(v15, a3);
      IPC::ArgumentCoder<std::optional<WebCore::SerializedPlatformDataCueValue::Data>,void>::encode<IPC::Encoder,std::optional<WebCore::SerializedPlatformDataCueValue::Data> const&>(v15, v21);
      IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v15, a5);
      IPC::Connection::sendMessageImpl(v11, &v24, 0, 0);
      v17 = v24;
      v24 = 0;
      if (v17)
      {
        IPC::Encoder::~Encoder(v17, v16);
        bmalloc::api::tzoneFree(v19, v20);
      }

      if (v22 == 1)
      {
        WebCore::SerializedPlatformDataCueValue::Data::~Data(v21, v16);
      }

      v18 = v23;
      v23 = 0;
      if (v18)
      {
        WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUConnectionToWebProcess,(WTF::DestructionThread)1>::deref((v18 + 16));
      }
    }
  }
}

void WebKit::RemoteTextTrackProxy::updateDataCue(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  v5 = *(a1 + 32);
  if (v5)
  {
    WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::GPUConnectionToWebProcess>(v5, *(a1 + 24), &v21);
    if (v21)
    {
      v9 = *(v21 + 56);
      v10 = (*(**(a1 + 40) + 48))(*(a1 + 40));
      (*(*a4 + 56))(v19, a4);
      v11 = *(a1 + 56);
      v13 = IPC::Encoder::operator new(0x238, v12);
      *v13 = 373;
      *(v13 + 2) = 0;
      *(v13 + 3) = 0;
      *(v13 + 1) = v11;
      *(v13 + 68) = 0;
      *(v13 + 70) = 0;
      *(v13 + 69) = 0;
      IPC::Encoder::encodeHeader(v13);
      v22 = v13;
      IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v13, v10);
      IPC::ArgumentCoder<WTF::MediaTime,void>::encode(v13, a2);
      IPC::ArgumentCoder<WTF::MediaTime,void>::encode(v13, a3);
      IPC::ArgumentCoder<std::optional<WebCore::SerializedPlatformDataCueValue::Data>,void>::encode<IPC::Encoder,std::optional<WebCore::SerializedPlatformDataCueValue::Data> const&>(v13, v19);
      IPC::Connection::sendMessageImpl(v9, &v22, 0, 0);
      v15 = v22;
      v22 = 0;
      if (v15)
      {
        IPC::Encoder::~Encoder(v15, v14);
        bmalloc::api::tzoneFree(v17, v18);
      }

      if (v20 == 1)
      {
        WebCore::SerializedPlatformDataCueValue::Data::~Data(v19, v14);
      }

      v16 = v21;
      v21 = 0;
      if (v16)
      {
        WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUConnectionToWebProcess,(WTF::DestructionThread)1>::deref((v16 + 16));
      }
    }
  }
}

void WebKit::RemoteTextTrackProxy::removeDataCue(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  v5 = *(a1 + 32);
  if (v5)
  {
    WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::GPUConnectionToWebProcess>(v5, *(a1 + 24), &v21);
    if (v21)
    {
      v9 = *(v21 + 56);
      v10 = (*(**(a1 + 40) + 48))(*(a1 + 40));
      (*(*a4 + 56))(v19, a4);
      v11 = *(a1 + 56);
      v13 = IPC::Encoder::operator new(0x238, v12);
      *v13 = 357;
      *(v13 + 2) = 0;
      *(v13 + 3) = 0;
      *(v13 + 1) = v11;
      *(v13 + 68) = 0;
      *(v13 + 70) = 0;
      *(v13 + 69) = 0;
      IPC::Encoder::encodeHeader(v13);
      v22 = v13;
      IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v13, v10);
      IPC::ArgumentCoder<WTF::MediaTime,void>::encode(v13, a2);
      IPC::ArgumentCoder<WTF::MediaTime,void>::encode(v13, a3);
      IPC::ArgumentCoder<std::optional<WebCore::SerializedPlatformDataCueValue::Data>,void>::encode<IPC::Encoder,std::optional<WebCore::SerializedPlatformDataCueValue::Data> const&>(v13, v19);
      IPC::Connection::sendMessageImpl(v9, &v22, 0, 0);
      v15 = v22;
      v22 = 0;
      if (v15)
      {
        IPC::Encoder::~Encoder(v15, v14);
        bmalloc::api::tzoneFree(v17, v18);
      }

      if (v20 == 1)
      {
        WebCore::SerializedPlatformDataCueValue::Data::~Data(v19, v14);
      }

      v16 = v21;
      v21 = 0;
      if (v16)
      {
        WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUConnectionToWebProcess,(WTF::DestructionThread)1>::deref((v16 + 16));
      }
    }
  }
}

atomic_uchar *WebKit::RemoteTextTrackProxy::addGenericCue(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    result = WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::GPUConnectionToWebProcess>(result, *(a1 + 24), &v14);
    if (v14)
    {
      v5 = *(v14 + 56);
      v6 = (*(**(a1 + 40) + 48))(*(a1 + 40));
      v7 = *(a1 + 56);
      v9 = IPC::Encoder::operator new(0x238, v8);
      *v9 = 330;
      *(v9 + 2) = 0;
      *(v9 + 3) = 0;
      *(v9 + 1) = v7;
      *(v9 + 68) = 0;
      *(v9 + 70) = 0;
      *(v9 + 69) = 0;
      IPC::Encoder::encodeHeader(v9);
      v15 = v9;
      IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v9, v6);
      IPC::ArgumentCoder<WebCore::GenericCueData,void>::encode(v9, a2 + 8);
      IPC::Connection::sendMessageImpl(v5, &v15, 0, 0);
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

atomic_uchar *WebKit::RemoteTextTrackProxy::updateGenericCue(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    result = WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::GPUConnectionToWebProcess>(result, *(a1 + 24), &v14);
    if (v14)
    {
      v5 = *(v14 + 56);
      v6 = (*(**(a1 + 40) + 48))(*(a1 + 40));
      v7 = *(a1 + 56);
      v9 = IPC::Encoder::operator new(0x238, v8);
      *v9 = 374;
      *(v9 + 2) = 0;
      *(v9 + 3) = 0;
      *(v9 + 1) = v7;
      *(v9 + 68) = 0;
      *(v9 + 70) = 0;
      *(v9 + 69) = 0;
      IPC::Encoder::encodeHeader(v9);
      v15 = v9;
      IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v9, v6);
      IPC::ArgumentCoder<WebCore::GenericCueData,void>::encode(v9, a2 + 8);
      IPC::Connection::sendMessageImpl(v5, &v15, 0, 0);
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

atomic_uchar *WebKit::RemoteTextTrackProxy::removeGenericCue(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    result = WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::GPUConnectionToWebProcess>(result, *(a1 + 24), &v14);
    if (v14)
    {
      v5 = *(v14 + 56);
      v6 = (*(**(a1 + 40) + 48))(*(a1 + 40));
      v7 = *(a1 + 56);
      v9 = IPC::Encoder::operator new(0x238, v8);
      *v9 = 358;
      *(v9 + 2) = 0;
      *(v9 + 3) = 0;
      *(v9 + 1) = v7;
      *(v9 + 68) = 0;
      *(v9 + 70) = 0;
      *(v9 + 69) = 0;
      IPC::Encoder::encodeHeader(v9);
      v15 = v9;
      IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v9, v6);
      IPC::ArgumentCoder<WebCore::GenericCueData,void>::encode(v9, a2 + 8);
      IPC::Connection::sendMessageImpl(v5, &v15, 0, 0);
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

atomic_uchar *WebKit::RemoteTextTrackProxy::parseWebVTTFileHeader(uint64_t a1, uint64_t *a2)
{
  result = *(a1 + 32);
  if (result)
  {
    result = WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::GPUConnectionToWebProcess>(result, *(a1 + 24), &v14);
    if (v14)
    {
      v5 = *(v14 + 56);
      v6 = (*(**(a1 + 40) + 48))(*(a1 + 40));
      v7 = *(a1 + 56);
      v9 = IPC::Encoder::operator new(0x238, v8);
      *v9 = 349;
      *(v9 + 2) = 0;
      *(v9 + 3) = 0;
      *(v9 + 1) = v7;
      *(v9 + 68) = 0;
      *(v9 + 70) = 0;
      *(v9 + 69) = 0;
      IPC::Encoder::encodeHeader(v9);
      v15 = v9;
      IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v9, v6);
      IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v9, a2);
      IPC::Connection::sendMessageImpl(v5, &v15, 0, 0);
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

atomic_uchar *WebKit::RemoteTextTrackProxy::parseWebVTTCueData(uint64_t a1, const void *a2, size_t a3)
{
  result = *(a1 + 32);
  if (result)
  {
    result = WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::GPUConnectionToWebProcess>(result, *(a1 + 24), &v16);
    if (v16)
    {
      v7 = *(v16 + 56);
      v8 = (*(**(a1 + 40) + 48))(*(a1 + 40));
      v9 = *(a1 + 56);
      v11 = IPC::Encoder::operator new(0x238, v10);
      *v11 = 347;
      *(v11 + 2) = 0;
      *(v11 + 3) = 0;
      *(v11 + 1) = v9;
      *(v11 + 68) = 0;
      *(v11 + 70) = 0;
      *(v11 + 69) = 0;
      IPC::Encoder::encodeHeader(v11);
      v17 = v11;
      IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v11, v8);
      IPC::ArgumentCoder<std::span<unsigned char const,18446744073709551615ul>,void>::encode<IPC::Encoder>(v11, a2, a3);
      IPC::Connection::sendMessageImpl(v7, &v17, 0, 0);
      result = v17;
      v17 = 0;
      if (result)
      {
        IPC::Encoder::~Encoder(result, v12);
        result = bmalloc::api::tzoneFree(v14, v15);
      }

      v13 = v16;
      v16 = 0;
      if (v13)
      {
        return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUConnectionToWebProcess,(WTF::DestructionThread)1>::deref((v13 + 16));
      }
    }
  }

  return result;
}

atomic_uchar *WebKit::RemoteTextTrackProxy::parseWebVTTCueData(uint64_t a1, uint64_t *a2)
{
  result = *(a1 + 32);
  if (result)
  {
    result = WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::GPUConnectionToWebProcess>(result, *(a1 + 24), &v14);
    if (v14)
    {
      v5 = *(v14 + 56);
      v6 = (*(**(a1 + 40) + 48))(*(a1 + 40));
      v7 = *(a1 + 56);
      v9 = IPC::Encoder::operator new(0x238, v8);
      *v9 = 348;
      *(v9 + 2) = 0;
      *(v9 + 3) = 0;
      *(v9 + 1) = v7;
      *(v9 + 68) = 0;
      *(v9 + 70) = 0;
      *(v9 + 69) = 0;
      IPC::Encoder::encodeHeader(v9);
      v15 = v9;
      IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v9, v6);
      IPC::ArgumentCoder<WebCore::ISOWebVTTCue,void>::encode(v9, a2);
      IPC::Connection::sendMessageImpl(v5, &v15, 0, 0);
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

atomic_ullong *WebKit::RemoteVideoFrameObjectHeap::create@<X0>(uint64_t *a1@<X0>, WebKit **a2@<X8>)
{
  v4 = WTF::fastMalloc(0xB8);
  v5 = WebKit::RemoteVideoFrameObjectHeap::RemoteVideoFrameObjectHeap(v4, a1);
  *a2 = v5;
  v6 = *(v5 + 2);
  while (1)
  {
    v7 = *v6;
    if ((*v6 & 1) == 0)
    {
      break;
    }

    v10 = *v6;
    atomic_compare_exchange_strong_explicit(v6, &v10, v7 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v10 == v7)
    {
      goto LABEL_4;
    }
  }

  v5 = WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v6);
LABEL_4:
  v8 = WebKit::remoteVideoFrameObjectHeapQueueSingleton(v5);
  IPC::Connection::addWorkQueueMessageReceiver(v6, 0x80, v8, v4, 0);

  return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v6);
}

uint64_t WebKit::remoteVideoFrameObjectHeapQueueSingleton(WebKit *this)
{
  if (byte_1ED6424F1 == 1)
  {
    return qword_1ED6424F8;
  }

  WTF::WorkQueue::create();
  result = v2;
  qword_1ED6424F8 = v2;
  byte_1ED6424F1 = 1;
  return result;
}

uint64_t WebKit::RemoteVideoFrameObjectHeap::RemoteVideoFrameObjectHeap(uint64_t a1, uint64_t *a2)
{
  *a1 = &unk_1F10FD960;
  *(a1 + 8) = 3;
  v3 = *a2;
  *a2 = 0;
  *(a1 + 16) = v3;
  *(a1 + 24) = &unk_1F10FDCE0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  WebKit::SharedVideoFrameWriter::SharedVideoFrameWriter((a1 + 48));
  WebKit::SharedVideoFrameReader::SharedVideoFrameReader((a1 + 80));
  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  *(a1 + 176) = 0;
  return a1;
}

void WebKit::RemoteVideoFrameObjectHeap::~RemoteVideoFrameObjectHeap(WebKit::RemoteVideoFrameObjectHeap *this)
{
  v4 = *(this + 21);
  v2 = (this + 168);
  v3 = v4;
  *v2 = 0;
  if (v4)
  {
    std::default_delete<WebCore::PixelBufferConformerCV>::operator()[abi:sn200100](v2, v3);
  }

  WebKit::SharedVideoFrameReader::~SharedVideoFrameReader((this + 80));
  v5 = *(this + 8);
  *(this + 8) = 0;
  if (v5)
  {
    std::default_delete<WebCore::PixelBufferConformerCV>::operator()[abi:sn200100](this + 64, v5);
  }

  v6 = *(this + 7);
  *(this + 7) = 0;
  if (v6)
  {
    WTF::ThreadSafeRefCounted<WebCore::SharedMemory,(WTF::DestructionThread)0>::deref(v6);
  }

  std::unique_ptr<IPC::Semaphore>::reset[abi:sn200100](this + 6, 0);
  *(this + 3) = &unk_1F10FDCE0;
  v8 = *(this + 5);
  if (v8)
  {
    WTF::HashTable<IPC::ObjectIdentifierReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePair<IPC::ObjectIdentifierReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,IPC::ThreadSafeObjectHeap<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebCore::VideoFrame,WTF::RawPtrTraits<WebCore::VideoFrame>,WTF::DefaultRefDerefTraits<WebCore::VideoFrame>>>::ReferenceState>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<IPC::ObjectIdentifierReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,IPC::ThreadSafeObjectHeap<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebCore::VideoFrame,WTF::RawPtrTraits<WebCore::VideoFrame>,WTF::DefaultRefDerefTraits<WebCore::VideoFrame>>>::ReferenceState>>,WTF::DefaultHash<IPC::ObjectIdentifierReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashMap<IPC::ObjectIdentifierReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,IPC::ThreadSafeObjectHeap<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebCore::VideoFrame,WTF::RawPtrTraits<WebCore::VideoFrame>,WTF::DefaultRefDerefTraits<WebCore::VideoFrame>>>::ReferenceState,WTF::DefaultHash<IPC::ObjectIdentifierReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<IPC::ObjectIdentifierReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<IPC::ThreadSafeObjectHeap<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebCore::VideoFrame,WTF::RawPtrTraits<WebCore::VideoFrame>,WTF::DefaultRefDerefTraits<WebCore::VideoFrame>>>::ReferenceState>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<IPC::ObjectIdentifierReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::deallocateTable(v8, v7);
  }

  v9 = *(this + 2);
  *(this + 2) = 0;
  if (v9)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v9);
  }
}

{
  WebKit::RemoteVideoFrameObjectHeap::~RemoteVideoFrameObjectHeap(this);

  WTF::fastFree(v1, v2);
}

void *IPC::ThreadSafeObjectHeap<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebCore::VideoFrame,WTF::RawPtrTraits<WebCore::VideoFrame>,WTF::DefaultRefDerefTraits<WebCore::VideoFrame>>>::~ThreadSafeObjectHeap(void *a1, void *a2)
{
  *a1 = &unk_1F10FDCE0;
  v3 = a1[2];
  if (v3)
  {
    WTF::HashTable<IPC::ObjectIdentifierReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePair<IPC::ObjectIdentifierReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,IPC::ThreadSafeObjectHeap<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebCore::VideoFrame,WTF::RawPtrTraits<WebCore::VideoFrame>,WTF::DefaultRefDerefTraits<WebCore::VideoFrame>>>::ReferenceState>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<IPC::ObjectIdentifierReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,IPC::ThreadSafeObjectHeap<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebCore::VideoFrame,WTF::RawPtrTraits<WebCore::VideoFrame>,WTF::DefaultRefDerefTraits<WebCore::VideoFrame>>>::ReferenceState>>,WTF::DefaultHash<IPC::ObjectIdentifierReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashMap<IPC::ObjectIdentifierReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,IPC::ThreadSafeObjectHeap<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebCore::VideoFrame,WTF::RawPtrTraits<WebCore::VideoFrame>,WTF::DefaultRefDerefTraits<WebCore::VideoFrame>>>::ReferenceState,WTF::DefaultHash<IPC::ObjectIdentifierReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<IPC::ObjectIdentifierReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<IPC::ThreadSafeObjectHeap<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebCore::VideoFrame,WTF::RawPtrTraits<WebCore::VideoFrame>,WTF::DefaultRefDerefTraits<WebCore::VideoFrame>>>::ReferenceState>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<IPC::ObjectIdentifierReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::deallocateTable(v3, a2);
  }

  return a1;
}

uint64_t WebKit::RemoteVideoFrameObjectHeap::close(uint64_t this)
{
  if ((*(this + 176) & 1) == 0)
  {
    v1 = this;
    *(this + 176) = 1;
    v2 = *(this + 16);
    while (1)
    {
      v3 = *v2;
      if ((*v2 & 1) == 0)
      {
        break;
      }

      v4 = *v2;
      atomic_compare_exchange_strong_explicit(v2, &v4, v3 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v4 == v3)
      {
        goto LABEL_7;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v2);
LABEL_7:
    IPC::Connection::removeWorkQueueMessageReceiver(v2, 0x80u, 0);
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
    *(v1 + 73) = 1;
    MEMORY[0x19EB16320](*(*(v1 + 48) + 4));

    return IPC::ThreadSafeObjectHeap<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebCore::VideoFrame,WTF::RawPtrTraits<WebCore::VideoFrame>,WTF::DefaultRefDerefTraits<WebCore::VideoFrame>>>::clear(v1 + 24, v5);
  }

  return this;
}

uint64_t IPC::ThreadSafeObjectHeap<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebCore::VideoFrame,WTF::RawPtrTraits<WebCore::VideoFrame>,WTF::DefaultRefDerefTraits<WebCore::VideoFrame>>>::clear(uint64_t a1, void *a2)
{
  v3 = 0;
  v4 = (a1 + 8);
  atomic_compare_exchange_strong_explicit((a1 + 8), &v3, 1u, memory_order_acquire, memory_order_acquire);
  if (v3)
  {
    MEMORY[0x19EB01E30](a1 + 8);
  }

  result = *(a1 + 16);
  if (result)
  {
    *(a1 + 16) = 0;
    result = WTF::HashTable<IPC::ObjectIdentifierReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePair<IPC::ObjectIdentifierReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,IPC::ThreadSafeObjectHeap<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebCore::VideoFrame,WTF::RawPtrTraits<WebCore::VideoFrame>,WTF::DefaultRefDerefTraits<WebCore::VideoFrame>>>::ReferenceState>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<IPC::ObjectIdentifierReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,IPC::ThreadSafeObjectHeap<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebCore::VideoFrame,WTF::RawPtrTraits<WebCore::VideoFrame>,WTF::DefaultRefDerefTraits<WebCore::VideoFrame>>>::ReferenceState>>,WTF::DefaultHash<IPC::ObjectIdentifierReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashMap<IPC::ObjectIdentifierReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,IPC::ThreadSafeObjectHeap<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebCore::VideoFrame,WTF::RawPtrTraits<WebCore::VideoFrame>,WTF::DefaultRefDerefTraits<WebCore::VideoFrame>>>::ReferenceState,WTF::DefaultHash<IPC::ObjectIdentifierReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<IPC::ObjectIdentifierReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<IPC::ThreadSafeObjectHeap<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebCore::VideoFrame,WTF::RawPtrTraits<WebCore::VideoFrame>,WTF::DefaultRefDerefTraits<WebCore::VideoFrame>>>::ReferenceState>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<IPC::ObjectIdentifierReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::deallocateTable(result, a2);
  }

  v6 = 1;
  atomic_compare_exchange_strong_explicit(v4, &v6, 0, memory_order_release, memory_order_relaxed);
  if (v6 != 1)
  {

    return WTF::Lock::unlockSlow(v4);
  }

  return result;
}

unsigned int *WebKit::RemoteVideoFrameObjectHeap::add@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v9[0] = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
  v9[1] = 0;
  WebKit::RemoteVideoFrameProxy::properties(v9[0], 0, *a2, a3);
  v6 = *a2;
  *a2 = 0;
  v8 = v6;
  IPC::ThreadSafeObjectHeap<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebCore::VideoFrame,WTF::RawPtrTraits<WebCore::VideoFrame>,WTF::DefaultRefDerefTraits<WebCore::VideoFrame>>>::add(a1 + 24, v9, &v8);
  result = v8;
  v8 = 0;
  if (result)
  {
    if (atomic_fetch_add(result + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, result + 2);
      return (*(*result + 8))(result);
    }
  }

  return result;
}

uint64_t IPC::ThreadSafeObjectHeap<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebCore::VideoFrame,WTF::RawPtrTraits<WebCore::VideoFrame>,WTF::DefaultRefDerefTraits<WebCore::VideoFrame>>>::add(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  v6 = 0;
  v7 = (a1 + 8);
  atomic_compare_exchange_strong_explicit((a1 + 8), &v6, 1u, memory_order_acquire, memory_order_acquire);
  if (v6)
  {
    MEMORY[0x19EB01E30](a1 + 8);
  }

  v15 = a3;
  WTF::HashMap<IPC::ObjectIdentifierReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,IPC::ThreadSafeObjectHeap<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebCore::VideoFrame,WTF::RawPtrTraits<WebCore::VideoFrame>,WTF::DefaultRefDerefTraits<WebCore::VideoFrame>>>::ReferenceState,WTF::DefaultHash<IPC::ObjectIdentifierReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<IPC::ObjectIdentifierReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<IPC::ThreadSafeObjectHeap<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebCore::VideoFrame,WTF::RawPtrTraits<WebCore::VideoFrame>,WTF::DefaultRefDerefTraits<WebCore::VideoFrame>>>::ReferenceState>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::ensure<IPC::ThreadSafeObjectHeap<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebCore::VideoFrame,WTF::RawPtrTraits<WebCore::VideoFrame>,WTF::DefaultRefDerefTraits<WebCore::VideoFrame>>>::add(IPC::ObjectIdentifierReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>> const&,WTF::RefPtr<WebCore::VideoFrame,WTF::RawPtrTraits<WebCore::VideoFrame>,WTF::DefaultRefDerefTraits<WebCore::VideoFrame>>)::{lambda(void)#1}>((a1 + 16), a2, &v15, &v16);
  if ((v17 & 1) == 0)
  {
    if (*(v16 + 32) == 1 && !*(v16 + 3))
    {
      v14 = *(a1 + 16);
      if (!v14 || (v14 = (v14 + 56 * *(v14 - 1)), v14 != v16))
      {
        if (v14 != v16)
        {
          WTF::HashTable<IPC::ObjectIdentifierReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePair<IPC::ObjectIdentifierReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,IPC::ThreadSafeObjectHeap<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebCore::VideoFrame,WTF::RawPtrTraits<WebCore::VideoFrame>,WTF::DefaultRefDerefTraits<WebCore::VideoFrame>>>::ReferenceState>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<IPC::ObjectIdentifierReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,IPC::ThreadSafeObjectHeap<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebCore::VideoFrame,WTF::RawPtrTraits<WebCore::VideoFrame>,WTF::DefaultRefDerefTraits<WebCore::VideoFrame>>>::ReferenceState>>,WTF::DefaultHash<IPC::ObjectIdentifierReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashMap<IPC::ObjectIdentifierReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,IPC::ThreadSafeObjectHeap<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebCore::VideoFrame,WTF::RawPtrTraits<WebCore::VideoFrame>,WTF::DefaultRefDerefTraits<WebCore::VideoFrame>>>::ReferenceState,WTF::DefaultHash<IPC::ObjectIdentifierReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<IPC::ObjectIdentifierReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<IPC::ThreadSafeObjectHeap<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebCore::VideoFrame,WTF::RawPtrTraits<WebCore::VideoFrame>,WTF::DefaultRefDerefTraits<WebCore::VideoFrame>>>::ReferenceState>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<IPC::ObjectIdentifierReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::remove((a1 + 16), v16);
        }
      }

      goto LABEL_11;
    }

    if (v16[3])
    {
      v9 = 0;
      goto LABEL_12;
    }

    std::optional<WTF::RefPtr<WebCore::VideoFrame,WTF::RawPtrTraits<WebCore::VideoFrame>,WTF::DefaultRefDerefTraits<WebCore::VideoFrame>>>::operator=[abi:sn200100]<WTF::RefPtr<WebCore::VideoFrame,WTF::RawPtrTraits<WebCore::VideoFrame>,WTF::DefaultRefDerefTraits<WebCore::VideoFrame>>,void>(v16 + 40, a3);
  }

  v10 = (a1 + 9);
  v11 = atomic_load((a1 + 9));
  if (v11)
  {
    atomic_store(0, v10);
    WTF::ParkingLot::unparkAll(v10, v8);
  }

LABEL_11:
  v9 = 1;
LABEL_12:
  v12 = 1;
  atomic_compare_exchange_strong_explicit(v7, &v12, 0, memory_order_release, memory_order_relaxed);
  if (v12 != 1)
  {
    WTF::Lock::unlockSlow(v7);
  }

  return v9;
}

uint64_t WebKit::RemoteVideoFrameObjectHeap::releaseVideoFrame(uint64_t a1, unint64_t *a2)
{
  WebKit::remoteVideoFrameObjectHeapQueueSingleton(a1);
  v4 = 0;
  atomic_compare_exchange_strong_explicit((a1 + 32), &v4, 1u, memory_order_acquire, memory_order_acquire);
  if (v4)
  {
    MEMORY[0x19EB01E30](a1 + 32);
  }

  v5 = *a2;
  v6 = a2[1];
  if (*a2 == 0)
  {
    __break(0xC471u);
    goto LABEL_51;
  }

  if (v5 == -1)
  {
    __break(0xC471u);
LABEL_50:
    __break(1u);
LABEL_51:
    JUMPOUT(0x19DBDB298);
  }

  v7 = a2[2];
  v8 = *(a1 + 40);
  if (v8 || (WTF::HashTable<IPC::ObjectIdentifierReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePair<IPC::ObjectIdentifierReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,IPC::ThreadSafeObjectHeap<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebCore::VideoFrame,WTF::RawPtrTraits<WebCore::VideoFrame>,WTF::DefaultRefDerefTraits<WebCore::VideoFrame>>>::ReferenceState>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<IPC::ObjectIdentifierReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,IPC::ThreadSafeObjectHeap<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebCore::VideoFrame,WTF::RawPtrTraits<WebCore::VideoFrame>,WTF::DefaultRefDerefTraits<WebCore::VideoFrame>>>::ReferenceState>>,WTF::DefaultHash<IPC::ObjectIdentifierReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashMap<IPC::ObjectIdentifierReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,IPC::ThreadSafeObjectHeap<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebCore::VideoFrame,WTF::RawPtrTraits<WebCore::VideoFrame>,WTF::DefaultRefDerefTraits<WebCore::VideoFrame>>>::ReferenceState,WTF::DefaultHash<IPC::ObjectIdentifierReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<IPC::ObjectIdentifierReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<IPC::ThreadSafeObjectHeap<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebCore::VideoFrame,WTF::RawPtrTraits<WebCore::VideoFrame>,WTF::DefaultRefDerefTraits<WebCore::VideoFrame>>>::ReferenceState>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<IPC::ObjectIdentifierReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::expand((a1 + 40), 0), (v8 = *(a1 + 40)) != 0))
  {
    v9 = *(v8 - 8);
  }

  else
  {
    v9 = 0;
  }

  result = WTF::IdentityHashTranslator<WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>::hash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(v5, v6);
  v11 = result & v9;
  v12 = v8 + 56 * (result & v9);
  v13 = *v12;
  v14 = *(v12 + 8);
  if (*v12 == 0)
  {
    goto LABEL_17;
  }

  v15 = 0;
  v16 = 1;
  do
  {
    if (v5 == v13 && v6 == v14)
    {
      if (*(v12 + 32))
      {
        goto LABEL_38;
      }

      v21 = *(v12 + 16);
      if (v21 > v7)
      {
        goto LABEL_38;
      }

      if (v21 != v7)
      {
        v25 = 0;
        *(v12 + 24) = v7;
        *(v12 + 32) = 1;
        goto LABEL_39;
      }

      if (*(v12 + 48))
      {
        v25 = *(v12 + 40);
        *(v12 + 40) = 0;
        v22 = *(a1 + 40);
        if (!v22 || (v22 += 56 * *(v22 - 4), v22 != v12))
        {
          if (v22 != v12)
          {
            result = WTF::HashTable<IPC::ObjectIdentifierReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePair<IPC::ObjectIdentifierReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,IPC::ThreadSafeObjectHeap<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebCore::VideoFrame,WTF::RawPtrTraits<WebCore::VideoFrame>,WTF::DefaultRefDerefTraits<WebCore::VideoFrame>>>::ReferenceState>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<IPC::ObjectIdentifierReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,IPC::ThreadSafeObjectHeap<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebCore::VideoFrame,WTF::RawPtrTraits<WebCore::VideoFrame>,WTF::DefaultRefDerefTraits<WebCore::VideoFrame>>>::ReferenceState>>,WTF::DefaultHash<IPC::ObjectIdentifierReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashMap<IPC::ObjectIdentifierReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,IPC::ThreadSafeObjectHeap<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebCore::VideoFrame,WTF::RawPtrTraits<WebCore::VideoFrame>,WTF::DefaultRefDerefTraits<WebCore::VideoFrame>>>::ReferenceState,WTF::DefaultHash<IPC::ObjectIdentifierReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<IPC::ObjectIdentifierReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<IPC::ThreadSafeObjectHeap<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebCore::VideoFrame,WTF::RawPtrTraits<WebCore::VideoFrame>,WTF::DefaultRefDerefTraits<WebCore::VideoFrame>>>::ReferenceState>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<IPC::ObjectIdentifierReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::remove((a1 + 40), v12);
          }
        }

        goto LABEL_39;
      }

      goto LABEL_50;
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
    --*(*(a1 + 40) - 16);
    v12 = v15;
  }

LABEL_17:
  *v12 = v5;
  *(v12 + 8) = v6;
  *&v26 = 0;
  *(&v26 + 1) = v7;
  LOBYTE(v27) = 0;
  v28 = 0;
  *(v12 + 32) = 1;
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

  v17 = *(a1 + 40);
  if (v17)
  {
    v18 = *(v17 - 12) + 1;
  }

  else
  {
    v18 = 1;
  }

  *(v17 - 12) = v18;
  v19 = (*(v17 - 16) + v18);
  v20 = *(v17 - 4);
  if (v20 > 0x400)
  {
    if (v20 <= 2 * v19)
    {
LABEL_26:
      result = WTF::HashTable<IPC::ObjectIdentifierReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePair<IPC::ObjectIdentifierReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,IPC::ThreadSafeObjectHeap<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebCore::VideoFrame,WTF::RawPtrTraits<WebCore::VideoFrame>,WTF::DefaultRefDerefTraits<WebCore::VideoFrame>>>::ReferenceState>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<IPC::ObjectIdentifierReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,IPC::ThreadSafeObjectHeap<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebCore::VideoFrame,WTF::RawPtrTraits<WebCore::VideoFrame>,WTF::DefaultRefDerefTraits<WebCore::VideoFrame>>>::ReferenceState>>,WTF::DefaultHash<IPC::ObjectIdentifierReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashMap<IPC::ObjectIdentifierReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,IPC::ThreadSafeObjectHeap<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebCore::VideoFrame,WTF::RawPtrTraits<WebCore::VideoFrame>,WTF::DefaultRefDerefTraits<WebCore::VideoFrame>>>::ReferenceState,WTF::DefaultHash<IPC::ObjectIdentifierReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<IPC::ObjectIdentifierReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<IPC::ThreadSafeObjectHeap<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebCore::VideoFrame,WTF::RawPtrTraits<WebCore::VideoFrame>,WTF::DefaultRefDerefTraits<WebCore::VideoFrame>>>::ReferenceState>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<IPC::ObjectIdentifierReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::expand((a1 + 40), v12);
    }
  }

  else if (3 * v20 <= 4 * v19)
  {
    goto LABEL_26;
  }

LABEL_38:
  v25 = 0;
LABEL_39:
  v23 = 1;
  atomic_compare_exchange_strong_explicit((a1 + 32), &v23, 0, memory_order_release, memory_order_relaxed);
  if (v23 == 1)
  {
    if (v25)
    {
LABEL_41:
      if (atomic_fetch_add(v25 + 2, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v25 + 2);
        v24 = *(*v25 + 8);

        return v24(v25);
      }
    }
  }

  else
  {
    result = WTF::Lock::unlockSlow((a1 + 32));
    if (v25)
    {
      goto LABEL_41;
    }
  }

  return result;
}

unsigned int *WebKit::RemoteVideoFrameObjectHeap::getVideoFrameBuffer(WebKit *a1, unint64_t *a2, int a3)
{
  v6 = WebKit::remoteVideoFrameObjectHeapQueueSingleton(a1);
  v7 = *a2;
  WTF::ApproximateTime::now(v6);
  IPC::ThreadSafeObjectHeap<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebCore::VideoFrame,WTF::RawPtrTraits<WebCore::VideoFrame>,WTF::DefaultRefDerefTraits<WebCore::VideoFrame>>>::read(a1 + 24, a2, &v34, v8 + 0.0);
  LOBYTE(v31) = 0;
  v33 = 0;
  v10 = *(a1 + 2);
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
      goto LABEL_6;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v10);
LABEL_6:
  v30 = v10;
  if (v34)
  {
    v13 = (*(*v34 + 56))(v34);
    v14 = v13;
    if (v13)
    {
      CFRetain(v13);
    }

    v15 = WTF::fastMalloc(0x10);
    *v15 = &unk_1F10FDE90;
    v15[1] = &v30;
    v26 = v15;
    v16 = WTF::fastMalloc(0x10);
    *v16 = &unk_1F10FDEB8;
    v16[1] = &v30;
    v25 = v16;
    WebKit::SharedVideoFrameWriter::writeBuffer(v14, a1 + 48, &v26, &v25, a3, v27);
    if (v33 == v29)
    {
      if (v33)
      {
        if (v32 == 255)
        {
          if (v28 == 255)
          {
            goto LABEL_30;
          }
        }

        else if (v28 == 255)
        {
          if (v32 == 2)
          {
            WTF::MachSendRight::~MachSendRight(&v31);
          }

          v32 = -1;
          goto LABEL_30;
        }

        v35 = &v31;
        _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_10assignmentINS0_6traitsIJDnN3IPC29ObjectIdentifierReadReferenceIN3WTF23ObjectIdentifierGenericIN6WebKit30RemoteVideoFrameIdentifierTypeENS8_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEEEENS8_13MachSendRightEN7WebCore7IntSizeEEEEE14generic_assignINS0_15move_assignmentISJ_LNS0_5TraitE1EEEEEvOT_EUlRSP_OT0_E_JRSK_SO_EEEDcmSQ_DpOT0_(v28, &v35, &v31, v27);
      }

LABEL_30:
      if (v29 == 1)
      {
        if (v28 == 2)
        {
          WTF::MachSendRight::~MachSendRight(v27);
        }

        v28 = -1;
      }

      if (v25)
      {
        (*(*v25 + 8))(v25);
      }

      if (v26)
      {
        (*(*v26 + 8))(v26);
      }

      if (v14)
      {
        CFRelease(v14);
      }

      v10 = v30;
      goto LABEL_41;
    }

    if (v33)
    {
      if (v32 == 2)
      {
        WTF::MachSendRight::~MachSendRight(&v31);
      }

      v32 = -1;
      v33 = 0;
      goto LABEL_30;
    }

    LOBYTE(v31) = 0;
    v32 = -1;
    v17 = v28;
    if (v28 <= 1u)
    {
      if (v28)
      {
        v31 = *v27;
        v17 = 1;
      }

      else
      {
        *&v31 = 0;
      }
    }

    else if (v28 == 2)
    {
      WTF::MachSendRight::MachSendRight();
      v17 = v28;
    }

    else
    {
      if (v28 != 3)
      {
LABEL_29:
        v33 = 1;
        goto LABEL_30;
      }

      *&v31 = v27[0];
      v17 = 3;
    }

    v32 = v17;
    goto LABEL_29;
  }

LABEL_41:
  v18 = IPC::Encoder::operator new(0x238, v9);
  *v18 = 1673;
  *(v18 + 68) = 0;
  *(v18 + 70) = 0;
  *(v18 + 69) = 0;
  *(v18 + 2) = 0;
  *(v18 + 3) = 0;
  *(v18 + 1) = 0;
  IPC::Encoder::encodeHeader(v18);
  v27[0] = v18;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v18, v7);
  IPC::ArgumentCoder<std::optional<mpark::variant<decltype(nullptr),IPC::ObjectIdentifierReadReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::MachSendRight,WebCore::IntSize>>,void>::encode<IPC::Encoder,std::optional<mpark::variant<decltype(nullptr),IPC::ObjectIdentifierReadReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::MachSendRight,WebCore::IntSize>>>(v18, &v31);
  IPC::Connection::sendMessageImpl(v10, v27, 0, 0);
  v20 = v27[0];
  v27[0] = 0;
  if (v20)
  {
    IPC::Encoder::~Encoder(v20, v19);
    bmalloc::api::tzoneFree(v23, v24);
  }

  v21 = v30;
  v30 = 0;
  if (v21)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v21);
  }

  if (v33 == 1 && v32 == 2)
  {
    WTF::MachSendRight::~MachSendRight(&v31);
  }

  result = v34;
  v34 = 0;
  if (result)
  {
    if (atomic_fetch_add(result + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, result + 2);
      return (*(*result + 8))(result);
    }
  }

  return result;
}

unsigned int *WebKit::RemoteVideoFrameObjectHeap::pixelBuffer(WebKit *a1, unint64_t *a2, uint64_t *a3)
{
  v6 = WebKit::remoteVideoFrameObjectHeapQueueSingleton(a1);
  WTF::ApproximateTime::now(v6);
  IPC::ThreadSafeObjectHeap<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebCore::VideoFrame,WTF::RawPtrTraits<WebCore::VideoFrame>,WTF::DefaultRefDerefTraits<WebCore::VideoFrame>>>::read(a1 + 24, a2, &v14, v7 + 0.0);
  if (v14)
  {
    v8 = (*(*v14 + 56))(v14);
    v9 = v8;
    if (v8)
    {
      CFRetain(v8);
    }

    cf = v9;
    WTF::CompletionHandler<void ()(WTF::RetainPtr<__CVBuffer *>)>::operator()(a3, &cf);
    v10 = cf;
    cf = 0;
    if (v10)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v13 = 0;
    WTF::CompletionHandler<void ()(WTF::RetainPtr<__CVBuffer *>)>::operator()(a3, &v13);
    v10 = v13;
    v13 = 0;
    if (v10)
    {
LABEL_5:
      CFRelease(v10);
    }
  }

  result = v14;
  v14 = 0;
  if (result)
  {
    if (atomic_fetch_add(result + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, result + 2);
      return (*(*result + 8))(result);
    }
  }

  return result;
}

uint64_t WTF::CompletionHandler<void ()(WTF::RetainPtr<__CVBuffer *>)>::operator()(uint64_t *a1, const void **a2)
{
  v2 = *a1;
  *a1 = 0;
  v3 = *a2;
  *a2 = 0;
  cf = v3;
  (*(*v2 + 16))(v2, &cf);
  v4 = cf;
  cf = 0;
  if (v4)
  {
    CFRelease(v4);
  }

  return (*(*v2 + 8))(v2);
}

void WebKit::RemoteVideoFrameObjectHeap::convertFrameBuffer(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = WebCore::DestinationColorSpace::SRGB(a1);
  v7 = *v6;
  if (*v6)
  {
    v6 = CFRetain(*v6);
  }

  v8 = *(a1 + 16);
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

  v6 = WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v8);
LABEL_8:
  v41 = v8;
  if (*(a2 + 40) == 1)
  {
    WTF::ApproximateTime::now(v6);
    IPC::ThreadSafeObjectHeap<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebCore::VideoFrame,WTF::RawPtrTraits<WebCore::VideoFrame>,WTF::DefaultRefDerefTraits<WebCore::VideoFrame>>>::read(a1 + 24, (a2 + 24), v37, v11 + 0.0);
  }

  else
  {
    WebKit::SharedVideoFrameReader::read(a1 + 80, a2, v37);
  }

  v12 = v37[0];
  if (v37[0])
  {
    v13 = (*(*v37[0] + 56))(v37[0]);
    v15 = v13;
    if (v13)
    {
      CFRetain(v13);
    }

    WebCore::createCGColorSpaceForCVPixelBuffer(&cf, v15, v14);
    v16 = cf;
    cf = 0;
    if (v7)
    {
      CFRelease(v7);
      v17 = cf;
      cf = 0;
      if (v17)
      {
        CFRelease(v17);
      }
    }

    if ((*MEMORY[0x1E69E2750])(v15) == 1111970369)
    {
      v19 = v15;
LABEL_42:
      v31 = WTF::fastMalloc(0x10);
      *v31 = &unk_1F10FDEE0;
      v31[1] = &v41;
      v40 = v31;
      v32 = WTF::fastMalloc(0x10);
      *v32 = &unk_1F10FDF08;
      v32[1] = &v41;
      v35 = v32;
      WebKit::SharedVideoFrameWriter::writeBuffer(v19, a1 + 48, &v40, &v35, 0, v37);
      if (v35)
      {
        (*(*v35 + 1))(v35);
      }

      if (v40)
      {
        (*(*v40 + 8))(v40);
      }

      v40 = v37;
      IPC::Connection::send<Messages::RemoteVideoFrameObjectHeapProxyProcessor::NewConvertedVideoFrameBuffer>(v41, &v40);
      if (v39 == 1 && v38 == 2)
      {
        WTF::MachSendRight::~MachSendRight(v37);
      }

      goto LABEL_49;
    }

    v20 = 0;
    atomic_compare_exchange_strong_explicit((a1 + 160), &v20, 1u, memory_order_acquire, memory_order_acquire);
    if (v20)
    {
      MEMORY[0x19EB01E30](a1 + 160);
    }

    v22 = (a1 + 168);
    v21 = *(a1 + 168);
    if (!v21)
    {
      v23 = WebCore::PixelBufferConformerCV::operator new(8, v18);
      v24 = WebCore::PixelBufferConformerCV::PixelBufferConformerCV(v23);
      v37[0] = 0;
      v25 = *v22;
      *v22 = v24;
      if (v25)
      {
        std::default_delete<WebCore::PixelBufferConformerCV>::operator()[abi:sn200100](a1 + 168, v25);
        v26 = v37[0];
        v37[0] = 0;
        if (v26)
        {
          std::default_delete<WebCore::PixelBufferConformerCV>::operator()[abi:sn200100](v37, v26);
        }
      }

      v21 = *v22;
    }

    WebCore::PixelBufferConformerCV::convert(&v40, v21, v15);
    v27 = v40;
    if (v40)
    {
      v40 = 0;
      v19 = v27;
      if (!v15)
      {
        goto LABEL_40;
      }

      CFRelease(v15);
      v15 = v27;
    }

    else
    {
      v28 = qword_1ED641580;
      if (os_log_type_enabled(qword_1ED641580, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v37[0]) = 0;
        _os_log_error_impl(&dword_19D52D000, v28, OS_LOG_TYPE_ERROR, "RemoteVideoFrameObjectHeap::convertFrameBuffer conformer failed", v37, 2u);
      }

      LOBYTE(v37[0]) = 0;
      v39 = 0;
      v35 = v37;
      IPC::Connection::send<Messages::RemoteVideoFrameObjectHeapProxyProcessor::NewConvertedVideoFrameBuffer>(v41, &v35);
      if (v39 == 1 && v38 == 2)
      {
        WTF::MachSendRight::~MachSendRight(v37);
      }
    }

    v29 = v40;
    v40 = 0;
    if (v29)
    {
      CFRelease(v29);
    }

    v19 = v15;
LABEL_40:
    v30 = 1;
    atomic_compare_exchange_strong_explicit((a1 + 160), &v30, 0, memory_order_release, memory_order_relaxed);
    if (v30 == 1)
    {
      if (v27)
      {
        goto LABEL_42;
      }
    }

    else
    {
      WTF::Lock::unlockSlow((a1 + 160));
      if (v27)
      {
        goto LABEL_42;
      }
    }

LABEL_49:
    if (v19)
    {
      CFRelease(v19);
    }

    v7 = v16;
    goto LABEL_52;
  }

  LOBYTE(v37[0]) = 0;
  v39 = 0;
  v40 = v37;
  IPC::Connection::send<Messages::RemoteVideoFrameObjectHeapProxyProcessor::NewConvertedVideoFrameBuffer>(v8, &v40);
  if (v39 == 1 && v38 == 2)
  {
    WTF::MachSendRight::~MachSendRight(v37);
  }

LABEL_52:
  v33 = v41;
  v41 = 0;
  if (v33)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v33);
  }

  if (v12 && atomic_fetch_add(v12 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v12 + 2);
    (*(*v12 + 8))(v12);
  }

  v37[0] = v7;
  if (v7)
  {
    CFRetain(v7);
  }

  WTF::CompletionHandler<void ()(WebCore::DestinationColorSpace)>::operator()(a3, v37);
  v34 = v37[0];
  v37[0] = 0;
  if (v34)
  {
    CFRelease(v34);
  }

  if (v7)
  {
    CFRelease(v7);
  }
}

IPC::Encoder *IPC::Connection::send<Messages::RemoteVideoFrameObjectHeapProxyProcessor::NewConvertedVideoFrameBuffer>(uint64_t *a1, void *a2)
{
  v4 = IPC::Encoder::operator new(0x238, a2);
  *v4 = 1672;
  *(v4 + 68) = 0;
  *(v4 + 70) = 0;
  *(v4 + 69) = 0;
  *(v4 + 2) = 0;
  *(v4 + 3) = 0;
  *(v4 + 1) = 0;
  IPC::Encoder::encodeHeader(v4);
  v9 = v4;
  IPC::ArgumentCoder<std::optional<mpark::variant<decltype(nullptr),IPC::ObjectIdentifierReadReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::MachSendRight,WebCore::IntSize>>,void>::encode<IPC::Encoder,std::optional<mpark::variant<decltype(nullptr),IPC::ObjectIdentifierReadReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::MachSendRight,WebCore::IntSize>>>(v4, *a2);
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

uint64_t IPC::ThreadSafeObjectHeap<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebCore::VideoFrame,WTF::RawPtrTraits<WebCore::VideoFrame>,WTF::DefaultRefDerefTraits<WebCore::VideoFrame>>>::read@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X1>, void *a3@<X8>, double a4@<D0>)
{
  v7 = 0;
  v8 = (a1 + 8);
  atomic_compare_exchange_strong_explicit((a1 + 8), &v7, 1u, memory_order_acquire, memory_order_acquire);
  if (v7)
  {
    MEMORY[0x19EB01E30](a1 + 8);
  }

  v9 = (a1 + 9);
  while (1)
  {
    v10 = *(a1 + 16);
    if (v10)
    {
      break;
    }

LABEL_25:
    v29 = a4;
    v30 = 2;
    result = WTF::Condition::waitUntilUnchecked<WTF::Lock>(a1 + 9, v8, &v29);
    if ((result & 1) == 0)
    {
      *a3 = 0;
      goto LABEL_37;
    }
  }

  v11 = *a2;
  v12 = a2[1];
  if (*a2 == 0 || v11 == -1)
  {
    __break(0xC471u);
    JUMPOUT(0x19DBDBFA8);
  }

  v13 = *(v10 - 8);
  result = WTF::IdentityHashTranslator<WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>::hash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(*a2, a2[1]);
  v15 = result & v13;
  v16 = (v10 + 56 * (result & v13));
  v17 = *v16;
  v18 = v16[1];
  if (v11 == *v16 && v12 == v18)
  {
LABEL_18:
    v22 = *(a1 + 16);
    if (!v22)
    {
      goto LABEL_23;
    }
  }

  else
  {
    v20 = 1;
    while (v17 | v18)
    {
      v15 = (v15 + v20) & v13;
      v16 = (v10 + 56 * v15);
      v17 = *v16;
      v18 = v16[1];
      ++v20;
      if (v11 == *v16 && v12 == v18)
      {
        goto LABEL_18;
      }
    }

    v22 = *(a1 + 16);
    if (!v22)
    {
      goto LABEL_25;
    }

    v16 = &v22[7 * *(v22 - 1)];
  }

  v22 += 7 * *(v22 - 1);
LABEL_23:
  if (v22 == v16 || *(v16 + 48) != 1)
  {
    goto LABEL_25;
  }

  v23 = v16[5];
  if (v23)
  {
    atomic_fetch_add((v23 + 8), 1u);
  }

  *a3 = v23;
  v24 = v16[2] + 1;
  v16[2] = v24;
  if (*(v16 + 32) == 1 && v16[3] == v24)
  {
    v25 = *(a1 + 16);
    if (!v25 || (v25 += 7 * *(v25 - 1), v25 != v16))
    {
      if (v25 != v16)
      {
        result = WTF::HashTable<IPC::ObjectIdentifierReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePair<IPC::ObjectIdentifierReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,IPC::ThreadSafeObjectHeap<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebCore::VideoFrame,WTF::RawPtrTraits<WebCore::VideoFrame>,WTF::DefaultRefDerefTraits<WebCore::VideoFrame>>>::ReferenceState>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<IPC::ObjectIdentifierReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,IPC::ThreadSafeObjectHeap<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebCore::VideoFrame,WTF::RawPtrTraits<WebCore::VideoFrame>,WTF::DefaultRefDerefTraits<WebCore::VideoFrame>>>::ReferenceState>>,WTF::DefaultHash<IPC::ObjectIdentifierReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashMap<IPC::ObjectIdentifierReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,IPC::ThreadSafeObjectHeap<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebCore::VideoFrame,WTF::RawPtrTraits<WebCore::VideoFrame>,WTF::DefaultRefDerefTraits<WebCore::VideoFrame>>>::ReferenceState,WTF::DefaultHash<IPC::ObjectIdentifierReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<IPC::ObjectIdentifierReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<IPC::ThreadSafeObjectHeap<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebCore::VideoFrame,WTF::RawPtrTraits<WebCore::VideoFrame>,WTF::DefaultRefDerefTraits<WebCore::VideoFrame>>>::ReferenceState>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<IPC::ObjectIdentifierReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::remove((a1 + 16), v16);
      }
    }
  }

  v26 = atomic_load(v9);
  if (v26)
  {
    atomic_store(0, v9);
    result = WTF::ParkingLot::unparkAll((a1 + 9), v16);
  }

LABEL_37:
  v27 = 1;
  atomic_compare_exchange_strong_explicit(v8, &v27, 0, memory_order_release, memory_order_relaxed);
  if (v27 != 1)
  {
    return WTF::Lock::unlockSlow(v8);
  }

  return result;
}

void WebKit::RemoteVideoFrameObjectHeap::lowMemoryHandler(atomic_uchar *this)
{
  v2 = 0;
  v3 = this + 160;
  atomic_compare_exchange_strong_explicit(this + 160, &v2, 1u, memory_order_acquire, memory_order_acquire);
  if (v2)
  {
    MEMORY[0x19EB01E30](this + 160);
  }

  v6 = *(this + 21);
  v5 = this + 168;
  v4 = v6;
  *v5 = 0;
  if (v6)
  {
    std::default_delete<WebCore::PixelBufferConformerCV>::operator()[abi:sn200100](v5, v4);
  }

  v7 = 1;
  atomic_compare_exchange_strong_explicit(v3, &v7, 0, memory_order_release, memory_order_relaxed);
  if (v7 != 1)
  {

    WTF::Lock::unlockSlow(v3);
  }
}

uint64_t WebKit::RemoteVideoTrackProxy::RemoteVideoTrackProxy(uint64_t a1, uint64_t a2, atomic_ullong *a3, uint64_t a4)
{
  *(a1 + 16) = 1;
  *a1 = &unk_1F10FD9A8;
  *(a1 + 8) = 0;
  *(a1 + 24) = a2;
  v8 = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUConnectionToWebProcess,(WTF::DestructionThread)1>::controlBlock((a2 + 16));
  *(a1 + 32) = WTF::ThreadSafeWeakPtrControlBlock::weakRef(v8);
  while (1)
  {
    v9 = a3[1];
    if ((v9 & 1) == 0)
    {
      break;
    }

    v10 = a3[1];
    atomic_compare_exchange_strong_explicit(a3 + 1, &v10, v9 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v10 == v9)
    {
      goto LABEL_6;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(a3[1]);
LABEL_6:
  *(a1 + 40) = a3;
  *(a1 + 48) = (*(*a3 + 48))(a3);
  *(a1 + 56) = a4;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  v11 = WTF::fastMalloc(0x10);
  *v11 = &unk_1F10FDF30;
  v26 = v11;
  *(a1 + 72) = WebCore::TrackPrivateBase::addClient();
  v12 = v26;
  v26 = 0;
  if (v12)
  {
    (*(*v12 + 8))(v12);
  }

  v13 = *(a2 + 56);
  WebKit::RemoteVideoTrackProxy::configuration(&v26, a1);
  v14 = *(a1 + 56);
  v16 = IPC::Encoder::operator new(0x238, v15);
  *v16 = 333;
  *(v16 + 2) = 0;
  *(v16 + 3) = 0;
  *(v16 + 1) = v14;
  *(v16 + 68) = 0;
  *(v16 + 70) = 0;
  *(v16 + 69) = 0;
  IPC::Encoder::encodeHeader(v16);
  v32 = v16;
  IPC::ArgumentCoder<WebKit::VideoTrackPrivateRemoteConfiguration,void>::encode(v16, &v26);
  IPC::Connection::sendMessageImpl(v13, &v32, 0, 0);
  v18 = v32;
  v32 = 0;
  if (v18)
  {
    IPC::Encoder::~Encoder(v18, v17);
    bmalloc::api::tzoneFree(v24, v25);
  }

  if (v31 == 1)
  {
    v19 = v30;
    v30 = 0;
    if (v19)
    {
      if (*v19 == 1)
      {
        WTF::JSONImpl::Value::operator delete();
      }

      else
      {
        --*v19;
      }
    }
  }

  v20 = v29;
  v29 = 0;
  if (v20 && atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v20, v17);
  }

  v21 = v28;
  v28 = 0;
  if (v21 && atomic_fetch_add_explicit(v21, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v21, v17);
  }

  v22 = v27;
  v27 = 0;
  if (v22 && atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v22, v17);
  }

  return a1;
}

WTF::StringImpl *WebKit::RemoteVideoTrackProxy::configuration(WebKit::RemoteVideoTrackProxy *this, uint64_t a2)
{
  *this = (*(**(a2 + 40) + 48))(*(a2 + 40));
  (*(**(a2 + 40) + 56))(&v15);
  v4 = v15;
  if (v15)
  {
    atomic_fetch_add_explicit(v15, 2u, memory_order_relaxed);
  }

  *(this + 1) = v4;
  (*(**(a2 + 40) + 64))(&v14);
  v5 = v14;
  if (v14)
  {
    atomic_fetch_add_explicit(v14, 2u, memory_order_relaxed);
  }

  *(this + 2) = v5;
  *(this + 3) = (*(**(a2 + 40) + 96))(*(a2 + 40));
  *(this + 8) = v6;
  *(this + 36) = v7;
  *(this + 10) = (*(**(a2 + 40) + 72))(*(a2 + 40));
  *(this + 44) = (*(**(a2 + 40) + 128))(*(a2 + 40));
  *(this + 45) = (*(**(a2 + 40) + 136))(*(a2 + 40));
  v9 = *(a2 + 40);
  v10 = *(v9 + 64);
  if (v10)
  {
    atomic_fetch_add_explicit(v10, 2u, memory_order_relaxed);
  }

  *(this + 6) = v10;
  *(this + 56) = *(v9 + 72);
  *(this + 72) = *(v9 + 88);
  *(this + 88) = *(v9 + 104);
  *(this + 101) = *(v9 + 117);
  *(this + 112) = 0;
  *(this + 128) = 0;
  if (*(v9 + 144) == 1)
  {
    *(this + 112) = *(v9 + 128);
    v11 = *(v9 + 136);
    if (v11)
    {
      ++*v11;
    }

    *(this + 15) = v11;
    *(this + 128) = 1;
  }

  v12 = v14;
  v14 = 0;
  if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v12, v8);
  }

  result = v15;
  v15 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v8);
    }
  }

  return result;
}

void WebKit::RemoteVideoTrackProxy::~RemoteVideoTrackProxy(WebKit::RemoteVideoTrackProxy *this)
{
  WebKit::RemoteAudioTrackProxy::~RemoteAudioTrackProxy(this);

  bmalloc::api::tzoneFree(v1, v2);
}

atomic_uchar *WebKit::RemoteVideoTrackProxy::updateConfiguration(WebKit::RemoteVideoTrackProxy *this)
{
  result = *(this + 4);
  if (result)
  {
    result = WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::GPUConnectionToWebProcess>(result, *(this + 3), &v23);
    if (v23)
    {
      v3 = *(v23 + 56);
      v4 = (*(**(this + 5) + 48))(*(this + 5));
      v5 = *(this + 6);
      *(this + 6) = v4;
      WebKit::RemoteVideoTrackProxy::configuration(v17, this);
      v6 = *(this + 7);
      v8 = IPC::Encoder::operator new(0x238, v7);
      *v8 = 356;
      *(v8 + 2) = 0;
      *(v8 + 3) = 0;
      *(v8 + 1) = v6;
      *(v8 + 68) = 0;
      *(v8 + 70) = 0;
      *(v8 + 69) = 0;
      IPC::Encoder::encodeHeader(v8);
      v24 = v8;
      IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v8, v5);
      IPC::ArgumentCoder<WebKit::VideoTrackPrivateRemoteConfiguration,void>::encode(v8, v17);
      IPC::Connection::sendMessageImpl(v3, &v24, 0, 0);
      v10 = v24;
      v24 = 0;
      if (v10)
      {
        IPC::Encoder::~Encoder(v10, v9);
        bmalloc::api::tzoneFree(v15, v16);
      }

      if (v22 == 1)
      {
        v11 = v21;
        v21 = 0;
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
      }

      v12 = v20;
      v20 = 0;
      if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v12, v9);
      }

      v13 = v19;
      v19 = 0;
      if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v13, v9);
      }

      result = v18;
      v18 = 0;
      if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        result = WTF::StringImpl::destroy(result, v9);
      }

      v14 = v23;
      v23 = 0;
      if (v14)
      {
        return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUConnectionToWebProcess,(WTF::DestructionThread)1>::deref((v14 + 16));
      }
    }
  }

  return result;
}

atomic_uchar *WebKit::RemoteVideoTrackProxy::selectedChanged(atomic_uchar *this, int a2)
{
  if (this[64] != a2)
  {
    this[64] = a2;
    return WebKit::RemoteVideoTrackProxy::updateConfiguration(this);
  }

  return this;
}

uint64_t WebKit::RemoteMediaResourceLoader::targetDispatcher@<X0>(void *a1@<X8>)
{
  result = WebKit::RemoteMediaResourceLoader::defaultQueue(&v4);
  *a1 = v4 + 24;
  return result;
}

uint64_t WebKit::RemoteMediaResourceManager::ref(uint64_t this)
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

uint64_t WebKit::RemoteMediaSourceProxy::ref(uint64_t this)
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

uint64_t non-virtual thunk toWebKit::RemoteMediaSourceProxy::ref(uint64_t this)
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

_DWORD *WebKit::RemoteRemoteCommandListenerProxy::deref(_DWORD *this)
{
  if (this[4] == 1)
  {
    return (*(*this + 24))();
  }

  --this[4];
  return this;
}

uint64_t WebKit::RemoteSourceBufferProxy::ref(uint64_t this)
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

uint64_t non-virtual thunk toWebKit::RemoteSourceBufferProxy::ref(uint64_t this)
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

void WebKit::RemoteVideoFrameObjectHeap::ref(WebKit::RemoteVideoFrameObjectHeap *this)
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

void *_ZN3WTF6Detail15CallableWrapperIZNS_13NativePromiseIvN7WebCore18PlatformMediaErrorELj0EE11whenSettledIZN6WebKit23RemoteSourceBufferProxy50sourceBufferPrivateDidReceiveInitializationSegmentEONS3_25SourceBufferPrivateClient21InitializationSegmentEE3__0EEDaRNS_34GuaranteedSerialFunctionDispatcherEOT_RKNS_6Logger17LogSiteIdentifierEEUlONSt12experimental15fundamentals_v38expectedIvS4_EEE_NS_3RefIS5_NS_12RawPtrTraitsIS5_EENS_21DefaultRefDerefTraitsIS5_EEEEJSQ_EED1Ev(void *a1, void *a2)
{
  *a1 = &unk_1F10FDA00;
  WTF::Vector<WebKit::ITPThirdPartyDataForSpecificFirstParty,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector((a1 + 9), a2);
  WTF::Vector<WebKit::ITPThirdPartyDataForSpecificFirstParty,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector((a1 + 7), v3);
  WTF::Vector<WebKit::ITPThirdPartyDataForSpecificFirstParty,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector((a1 + 5), v4);
  v6 = a1[2];
  a1[2] = 0;
  if (v6)
  {
    WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v6, v5);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZNS_13NativePromiseIvN7WebCore18PlatformMediaErrorELj0EE11whenSettledIZN6WebKit23RemoteSourceBufferProxy50sourceBufferPrivateDidReceiveInitializationSegmentEONS3_25SourceBufferPrivateClient21InitializationSegmentEE3__0EEDaRNS_34GuaranteedSerialFunctionDispatcherEOT_RKNS_6Logger17LogSiteIdentifierEEUlONSt12experimental15fundamentals_v38expectedIvS4_EEE_NS_3RefIS5_NS_12RawPtrTraitsIS5_EENS_21DefaultRefDerefTraitsIS5_EEEEJSQ_EED0Ev(WTF *a1, void *a2)
{
  *a1 = &unk_1F10FDA00;
  WTF::Vector<WebKit::ITPThirdPartyDataForSpecificFirstParty,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(a1 + 72, a2);
  WTF::Vector<WebKit::ITPThirdPartyDataForSpecificFirstParty,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(a1 + 56, v3);
  WTF::Vector<WebKit::ITPThirdPartyDataForSpecificFirstParty,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(a1 + 40, v4);
  v6 = *(a1 + 2);
  *(a1 + 2) = 0;
  if (v6)
  {
    WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v6, v5);
  }

  return WTF::fastFree(a1, v5);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZNS_13NativePromiseIvN7WebCore18PlatformMediaErrorELj0EE11whenSettledIZN6WebKit23RemoteSourceBufferProxy50sourceBufferPrivateDidReceiveInitializationSegmentEONS3_25SourceBufferPrivateClient21InitializationSegmentEE3__0EEDaRNS_34GuaranteedSerialFunctionDispatcherEOT_RKNS_6Logger17LogSiteIdentifierEEUlONSt12experimental15fundamentals_v38expectedIvS4_EEE_NS_3RefIS5_NS_12RawPtrTraitsIS5_EENS_21DefaultRefDerefTraitsIS5_EEEEJSQ_EE4callESQ_@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = a1[2];
  if (!v5 || (WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::LibWebRTCCodecsProxy>(&v26, v5, a1[1]), (v7 = v26) == 0))
  {
    LOBYTE(v28) = 4;
    v31 = 0;
    *&v32 = 0;
    *(&v32 + 1) = "operator()";
    *&v33 = 0;
    return WTF::NativePromise<void,WebCore::PlatformMediaError,0u>::createAndReject<WebCore::PlatformMediaError,std::enable_if<true,void>>(&v28, &v31, a3);
  }

  v8 = *(v26 + 40);
  if (v8)
  {
    WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::GPUConnectionToWebProcess>(v8, *(v26 + 32), &v25);
  }

  else
  {
    v25 = 0;
  }

  if ((*(a2 + 1) & 1) != 0 || !v25)
  {
    LOBYTE(v28) = 4;
    v31 = 0;
    *&v32 = 0;
    *(&v32 + 1) = "operator()";
    *&v33 = 0;
    result = WTF::NativePromise<void,WebCore::PlatformMediaError,0u>::createAndReject<WebCore::PlatformMediaError,std::enable_if<true,void>>(&v28, &v31, a3);
  }

  else
  {
    v9 = *(v25 + 56);
    v10 = *(v7 + 48);
    v31 = 0;
    *&v32 = 0;
    *(&v32 + 1) = "sendWithPromisedReply";
    *&v33 = 0;
    WTF::NativePromiseProducer<void,WebCore::PlatformMediaError,0u>::NativePromiseProducer<std::enable_if<true,void>>(&v28, 0, &v31);
    v11 = v28;
    if (v28)
    {
      atomic_fetch_add(v28 + 2, 1u);
      v12 = v28;
    }

    else
    {
      v12 = 0;
    }

    *a3 = v11;
    v28 = 0;
    v32 = v29;
    v33 = v30;
    v13 = WTF::fastMalloc(0x30);
    *v13 = &unk_1F10FDA28;
    *(v13 + 8) = v12;
    v31 = 0;
    v14 = v33;
    *(v13 + 16) = v32;
    *(v13 + 32) = v14;
    v27[0] = v13;
    if (WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
    {
      result = 141;
      __break(0xC471u);
      return result;
    }

    v27[1] = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
    WTF::NativePromiseProducer<void,WebCore::PlatformMediaError,0u>::~NativePromiseProducer(&v31);
    v16 = IPC::Encoder::operator new(0x238, v15);
    *v16 = 1734;
    *(v16 + 2) = 0;
    *(v16 + 3) = 0;
    *(v16 + 1) = v10;
    *(v16 + 68) = 0;
    *(v16 + 70) = 0;
    *(v16 + 69) = 0;
    IPC::Encoder::encodeHeader(v16);
    v31 = v16;
    IPC::ArgumentCoder<WebKit::InitializationSegmentInfo,void>::encode(v16, a1 + 3);
    IPC::Connection::sendMessageWithAsyncReplyWithDispatcher(v9, &v31, v27, 0, 0);
    v18 = v31;
    v31 = 0;
    if (v18)
    {
      IPC::Encoder::~Encoder(v18, v17);
      bmalloc::api::tzoneFree(v23, v24);
    }

    v19 = v27[0];
    v27[0] = 0;
    if (v19)
    {
      (*(*v19 + 8))(v19);
    }

    result = WTF::NativePromiseProducer<void,WebCore::PlatformMediaError,0u>::~NativePromiseProducer(&v28);
  }

  v22 = v25;
  v25 = 0;
  if (v22)
  {
    result = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUConnectionToWebProcess,(WTF::DestructionThread)1>::deref((v22 + 16));
  }

  if (v26)
  {
    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::SourceBufferPrivateClient,(WTF::DestructionThread)0>::deref((v26 + 8), v21);
  }

  return result;
}

uint64_t WTF::Detail::CallableWrapper<IPC::Connection::AsyncReplyHandlerWithDispatcher IPC::Connection::makeAsyncReplyHandlerWithDispatcher<WebCore::MediaPromiseConverter,Messages::SourceBufferPrivateRemoteMessageReceiver::SourceBufferPrivateDidReceiveInitializationSegment,WTF::NativePromise<void,WebCore::PlatformMediaError,0u>>(WTF::NativePromise<void,WebCore::PlatformMediaError,0u>::Producer &&)::{lambda(IPC::Connection*,std::unique_ptr<IPC::Decoder> &&)#1},void,IPC::Connection*,std::unique_ptr<IPC::Decoder> &>::~CallableWrapper(uint64_t a1)
{
  *a1 = &unk_1F10FDA28;
  WTF::NativePromiseProducer<void,WebCore::PlatformMediaError,0u>::~NativePromiseProducer((a1 + 8));
  return a1;
}

uint64_t WTF::Detail::CallableWrapper<IPC::Connection::AsyncReplyHandlerWithDispatcher IPC::Connection::makeAsyncReplyHandlerWithDispatcher<WebCore::MediaPromiseConverter,Messages::SourceBufferPrivateRemoteMessageReceiver::SourceBufferPrivateDidReceiveInitializationSegment,WTF::NativePromise<void,WebCore::PlatformMediaError,0u>>(WTF::NativePromise<void,WebCore::PlatformMediaError,0u>::Producer &&)::{lambda(IPC::Connection*,std::unique_ptr<IPC::Decoder> &&)#1},void,IPC::Connection*,std::unique_ptr<IPC::Decoder> &>::~CallableWrapper(atomic_uint **a1)
{
  *a1 = &unk_1F10FDA28;
  WTF::NativePromiseProducer<void,WebCore::PlatformMediaError,0u>::~NativePromiseProducer(a1 + 1);

  return WTF::fastFree(a1, v2);
}

uint64_t WTF::Detail::CallableWrapper<IPC::Connection::AsyncReplyHandlerWithDispatcher IPC::Connection::makeAsyncReplyHandlerWithDispatcher<WebCore::MediaPromiseConverter,Messages::SourceBufferPrivateRemoteMessageReceiver::SourceBufferPrivateDidReceiveInitializationSegment,WTF::NativePromise<void,WebCore::PlatformMediaError,0u>>(WTF::NativePromise<void,WebCore::PlatformMediaError,0u>::Producer &&)::{lambda(IPC::Connection*,std::unique_ptr<IPC::Decoder> &&)#1},void,IPC::Connection*,std::unique_ptr<IPC::Decoder> &>::call(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = *a3;
  *a3 = 0;
  v5 = WTF::fastMalloc(0x10);
  *v5 = &unk_1F10FDA50;
  v5[1] = v4;
  v8 = v5;
  v7[0] = 0;
  v7[1] = 0;
  v7[2] = "operator()";
  v7[3] = 0;
  WTF::NativePromiseProducer<void,WebCore::PlatformMediaError,0u>::settleWithFunction<std::enable_if<true,void>>((a1 + 8), &v8, v7);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t WTF::Detail::CallableWrapper<IPC::Connection::AsyncReplyHandlerWithDispatcher IPC::Connection::makeAsyncReplyHandlerWithDispatcher<WebCore::MediaPromiseConverter,Messages::SourceBufferPrivateRemoteMessageReceiver::SourceBufferPrivateDidReceiveInitializationSegment,WTF::NativePromise<void,WebCore::PlatformMediaError,0u>>(WTF::NativePromise<void,WebCore::PlatformMediaError,0u>::Producer &&)::{lambda(IPC::Connection*,std::unique_ptr<IPC::Decoder> &&)#1}::operator()(IPC::Connection*,std::unique_ptr<IPC::Decoder> &)::{lambda(void)#1},std::experimental::fundamentals_v3::expected<void,WebCore::PlatformMediaError>>::~CallableWrapper(uint64_t a1)
{
  *a1 = &unk_1F10FDA50;
  std::unique_ptr<IPC::Decoder>::reset[abi:sn200100]((a1 + 8), 0);
  return a1;
}

uint64_t WTF::Detail::CallableWrapper<IPC::Connection::AsyncReplyHandlerWithDispatcher IPC::Connection::makeAsyncReplyHandlerWithDispatcher<WebCore::MediaPromiseConverter,Messages::SourceBufferPrivateRemoteMessageReceiver::SourceBufferPrivateDidReceiveInitializationSegment,WTF::NativePromise<void,WebCore::PlatformMediaError,0u>>(WTF::NativePromise<void,WebCore::PlatformMediaError,0u>::Producer &&)::{lambda(IPC::Connection*,std::unique_ptr<IPC::Decoder> &&)#1}::operator()(IPC::Connection*,std::unique_ptr<IPC::Decoder> &)::{lambda(void)#1},std::experimental::fundamentals_v3::expected<void,WebCore::PlatformMediaError>>::~CallableWrapper(IPC::Decoder **a1)
{
  *a1 = &unk_1F10FDA50;
  std::unique_ptr<IPC::Decoder>::reset[abi:sn200100](a1 + 1, 0);

  return WTF::fastFree(a1, v2);
}

uint64_t WTF::Detail::CallableWrapper<IPC::Connection::AsyncReplyHandlerWithDispatcher IPC::Connection::makeAsyncReplyHandlerWithDispatcher<WebCore::MediaPromiseConverter,Messages::SourceBufferPrivateRemoteMessageReceiver::SourceBufferPrivateDidReceiveInitializationSegment,WTF::NativePromise<void,WebCore::PlatformMediaError,0u>>(WTF::NativePromise<void,WebCore::PlatformMediaError,0u>::Producer &&)::{lambda(IPC::Connection*,std::unique_ptr<IPC::Decoder> &&)#1}::operator()(IPC::Connection*,std::unique_ptr<IPC::Decoder> &)::{lambda(void)#1},std::experimental::fundamentals_v3::expected<void,WebCore::PlatformMediaError>>::call@<X0>(uint64_t result@<X0>, __int16 *a2@<X8>)
{
  v3 = *(result + 8);
  if (v3 && *v3 && (result = IPC::Decoder::decode<std::tuple<std::experimental::fundamentals_v3::expected<void,WebCore::PlatformMediaError>>>(&v5, v3), v6 == 1))
  {
    v4 = v5;
  }

  else
  {
    v4 = 260;
  }

  *a2 = v4;
  return result;
}

uint64_t IPC::Decoder::decode<std::tuple<std::experimental::fundamentals_v3::expected<void,WebCore::PlatformMediaError>>>(uint64_t a1, uint64_t *a2)
{
  result = IPC::ArgumentCoder<std::experimental::fundamentals_v3::expected<void,WebCore::PlatformMediaError>,void>::decode<IPC::Decoder>(a2, &v8);
  if (v9)
  {
    goto LABEL_2;
  }

  v5 = *a2;
  v6 = a2[1];
  *a2 = 0;
  a2[1] = 0;
  result = a2[3];
  if (result)
  {
    if (v6)
    {
      result = (*(*result + 16))(result, v5);
      if (v9)
      {
LABEL_2:
        *a1 = v8;
        *(a1 + 2) = 1;
        return result;
      }

      v6 = a2[1];
      result = a2[3];
    }
  }

  else
  {
    v6 = 0;
  }

  *a1 = 0;
  *(a1 + 2) = 0;
  *a2 = 0;
  a2[1] = 0;
  if (result && v6)
  {
    v7 = *(*result + 16);

    return v7();
  }

  return result;
}

uint64_t IPC::ArgumentCoder<std::experimental::fundamentals_v3::expected<void,WebCore::PlatformMediaError>,void>::decode<IPC::Decoder>@<X0>(uint64_t result@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(result + 8);
  v4 = *(result + 16);
  v5 = *result;
  if (v3 <= &v4[-*result])
  {
    *result = 0;
    *(result + 8) = 0;
    v10 = result;
    v8 = *(result + 24);
    if (v8)
    {
      if (v3)
      {
        (*(*v8 + 16))(v8);
        v5 = *v10;
        v3 = v10[1];
        goto LABEL_13;
      }
    }

    else
    {
      v3 = 0;
    }

    v5 = 0;
LABEL_13:
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
        goto LABEL_17;
      }
    }

    else
    {
      v3 = 0;
    }

    v5 = 0;
LABEL_17:
    *v10 = 0;
    v10[1] = 0;
    result = v10[3];
    if (result && v3)
    {
      result = (*(*result + 16))(result, v5);
    }

LABEL_7:
    v7 = 0;
    *a2 = 0;
    goto LABEL_9;
  }

  *(result + 16) = v4 + 1;
  if (!v4)
  {
    v10 = result;
    goto LABEL_13;
  }

  v6 = *v4;
  if (v6 >= 2)
  {
    v10 = result;
    goto LABEL_17;
  }

  if (!v6)
  {
    result = IPC::Decoder::decode<WebCore::PlatformMediaError>(result);
    if ((result & 0x100) != 0)
    {
      *a2 = result;
      v7 = 1;
      a2[1] = 1;
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  *a2 = 0;
  v7 = 1;
LABEL_9:
  a2[2] = v7;
  return result;
}

uint64_t IPC::Decoder::decode<WebCore::PlatformMediaError>(uint64_t *a1)
{
  result = IPC::ArgumentCoder<WebCore::PlatformMediaError,void>::decode<IPC::Decoder>(a1);
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

uint64_t IPC::ArgumentCoder<WebCore::PlatformMediaError,void>::decode<IPC::Decoder>(uint64_t *a1)
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
  if (v4 >= 0xC)
  {
LABEL_9:
    v4 = 0;
    v5 = 0;
    return v4 | (v5 << 8);
  }

  v5 = 1;
  return v4 | (v5 << 8);
}

uint64_t WTF::NativePromise<void,WebCore::PlatformMediaError,0u>::ThenCallback<true,WTF::NativePromise<void,WebCore::PlatformMediaError,0u>>::~ThenCallback(uint64_t a1)
{
  *a1 = &unk_1F10FDA78;
  v2 = *(a1 + 72);
  *(a1 + 72) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  std::unique_ptr<WTF::NativePromiseProducer<void,WebCore::PlatformMediaError,0u>>::reset[abi:sn200100]((a1 + 64), 0);
  *a1 = &unk_1F10FE050;
  v3 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WTF::SerialFunctionDispatcher,(WTF::DestructionThread)0>::deref((v3 + 8));
  }

  return a1;
}

{
  *a1 = &unk_1F10FDA78;
  v2 = *(a1 + 72);
  *(a1 + 72) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  std::unique_ptr<WTF::NativePromiseProducer<void,WebCore::PlatformMediaError,0u>>::reset[abi:sn200100]((a1 + 64), 0);
  *a1 = &unk_1F10FE050;
  v4 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v4)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WTF::SerialFunctionDispatcher,(WTF::DestructionThread)0>::deref((v4 + 8));
  }

  return WTF::fastFree(a1, v3);
}

uint64_t WTF::NativePromise<void,WebCore::PlatformMediaError,0u>::ThenCallback<true,WTF::NativePromise<void,WebCore::PlatformMediaError,0u>>::disconnect(uint64_t a1)
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

uint64_t WTF::NativePromise<void,WebCore::PlatformMediaError,0u>::ThenCallback<true,WTF::NativePromise<void,WebCore::PlatformMediaError,0u>>::processResult(uint64_t a1, uint64_t a2, uint64_t a3)
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
  std::unique_ptr<WTF::NativePromiseProducer<void,WebCore::PlatformMediaError,0u>>::reset[abi:sn200100]((a1 + 64), 0);
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
    WTF::NativePromise<void,WebCore::PlatformMediaError,0u>::chainTo(v17, v11, v16);
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
    v14 = WTF::NativePromiseProducer<void,WebCore::PlatformMediaError,0u>::~NativePromiseProducer(v11);
    return WTF::fastFree(v14, v15);
  }

  return result;
}

atomic_uint **std::unique_ptr<WTF::NativePromiseProducer<void,WebCore::PlatformMediaError,0u>>::reset[abi:sn200100](atomic_uint ***a1, atomic_uint **a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    v4 = WTF::NativePromiseProducer<void,WebCore::PlatformMediaError,0u>::~NativePromiseProducer(result);

    return WTF::fastFree(v4, v5);
  }

  return result;
}

uint64_t WTF::NativePromise<void,WebCore::PlatformMediaError,0u>::chainTo(atomic_uchar *a1, unint64_t a2, WTF::Logger::LogSiteIdentifier *a3)
{
  v5 = a1;
  v6 = 0;
  v7 = a1 + 48;
  atomic_compare_exchange_strong_explicit(a1 + 48, &v6, 1u, memory_order_acquire, memory_order_acquire);
  if (v6)
  {
    a1 = MEMORY[0x19EB01E30](a1 + 48);
  }

  *(v5 + 112) = 1;
  v8 = *a2;
  if (*a2)
  {
    atomic_fetch_add(v8 + 2, 1u);
  }

  v21 = *(v5 + 64) == 0;
  v9 = WTF::NativePromiseBase::logChannel(a1);
  if (*v9)
  {
    v10 = v9[16] >= 4u;
  }

  else
  {
    v10 = 0;
  }

  if (v10)
  {
    WTF::Logger::log<WTF::Logger::LogSiteIdentifier,char [22],WTF::NativePromise<void,WebCore::PlatformMediaError,0u>,char [17],WTF::NativePromise<void,WebCore::PlatformMediaError,0u>,char [12],BOOL,char [2]>(v9, 4u, a3, " invoking chainTo() [", v5, " chainedPromise:", v8, " isNothing:", &v21, "]");
  }

  if (v8 && atomic_fetch_add(v8 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v8 + 2);
    (*(*v8 + 16))(v8);
  }

  v11 = atomic_load((v5 + 113));
  result = WTF::NativePromiseProducer<void,WebCore::PlatformMediaError,0u>::setDispatchMode(a2, v11, a3);
  if (*(v5 + 64))
  {
    result = WTF::NativePromise<void,WebCore::PlatformMediaError,0u>::settleChainedPromise(v5, a2);
  }

  else
  {
    v13 = *(v5 + 108);
    if (v13 == *(v5 + 104))
    {
      result = WTF::Vector<WTF::NativePromiseProducer<void,WebCore::PlatformMediaError,0u>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(v5 + 96, v13 + 1, a2);
      v14 = *(v5 + 96) + 40 * *(v5 + 108);
      v15 = *result;
      *result = 0;
      *v14 = v15;
      v16 = *(result + 24);
      *(v14 + 8) = *(result + 8);
      *(v14 + 24) = v16;
    }

    else
    {
      v17 = *(v5 + 96) + 40 * v13;
      v18 = *a2;
      *a2 = 0;
      *v17 = v18;
      v19 = *(a2 + 8);
      *(v17 + 24) = *(a2 + 24);
      *(v17 + 8) = v19;
    }

    ++*(v5 + 108);
  }

  v20 = 1;
  atomic_compare_exchange_strong_explicit(v7, &v20, 0, memory_order_release, memory_order_relaxed);
  if (v20 != 1)
  {
    return WTF::Lock::unlockSlow(v7);
  }

  return result;
}

WTF::StringImpl *WTF::Logger::log<char [10],char [24],WTF::Logger::LogSiteIdentifier,char [2],WTF::NativePromise<void,WebCore::PlatformMediaError,0u>,char [11],void const*,char [2]>(uint64_t a1, unsigned int a2, char *a3, const char *a4, WTF::Logger::LogSiteIdentifier *a5, const char *a6, uint64_t a7, const char *a8, uint64_t a9, const char *a10)
{
  v67[1] = *MEMORY[0x1E69E9840];
  WTF::String::String(&v55, a3);
  WTF::String::String(&v54, a4);
  WTF::Logger::LogSiteIdentifier::toString(&v53, a5);
  v43 = a6;
  WTF::String::String(&v52, a6);
  v44 = a7;
  WTF::LogArgument<WTF::NativePromise<void,WebCore::PlatformMediaError,0u>>::toString(a7, &v51);
  v45 = a8;
  WTF::String::String(&v50, a8);
  WTF::LogArgument<void const*>::toString();
  WTF::String::String(&v48, a10);
  result = WTF::tryMakeString<WTF::String,WTF::String,WTF::String,WTF::String,WTF::String,WTF::String,WTF::String,WTF::String>(&v55, &v54, &v53, &v52, &v51, &v50, &v49, &v48, &v56);
  if (v56)
  {
    v19 = v48;
    v48 = 0;
    if (v19 && atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v19, v18);
    }

    v20 = v49;
    v49 = 0;
    if (v20 && atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v20, v18);
    }

    v21 = v50;
    v50 = 0;
    if (v21 && atomic_fetch_add_explicit(v21, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v21, v18);
    }

    v22 = v51;
    v51 = 0;
    if (v22 && atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v22, v18);
    }

    v23 = v52;
    v52 = 0;
    if (v23 && atomic_fetch_add_explicit(v23, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v23, v18);
    }

    v24 = v53;
    v53 = 0;
    if (v24 && atomic_fetch_add_explicit(v24, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v24, v18);
    }

    v25 = v54;
    v54 = 0;
    if (v25 && atomic_fetch_add_explicit(v25, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v25, v18);
    }

    v26 = v55;
    v55 = 0;
    if (v26 && atomic_fetch_add_explicit(v26, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v26, v18);
    }

    v27 = *(a1 + 32);
    v28 = os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT);
    if (v28)
    {
      WTF::String::utf8();
      v30 = v47[0] ? v47[0] + 16 : 0;
      *buf = 136446210;
      v58 = v30;
      _os_log_impl(&dword_19D52D000, v27, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
      v28 = v47[0];
      v47[0] = 0;
      if (v28)
      {
        if (*v28 == 1)
        {
          v28 = WTF::fastFree(v28, v29);
        }

        else
        {
          --*v28;
        }
      }
    }

    if (*a1 && *(a1 + 16) >= a2)
    {
      v31 = MEMORY[0x1E696EBC0];
      while (1)
      {
        v32 = *v31;
        if (v32)
        {
          break;
        }

        v33 = *v31;
        atomic_compare_exchange_strong_explicit(v31, &v33, v32 | 1, memory_order_acquire, memory_order_acquire);
        if (v33 == v32)
        {
          v34 = WTF::Logger::observers(v28);
          v35 = *(v34 + 12);
          if (v35)
          {
            v36 = *v34;
            v37 = *v34 + 8 * v35;
            do
            {
              v38 = *v36;
              *buf = 0;
              WTF::String::String((&v58 + 4), a3);
              v59 = 0;
              WTF::String::String(v60, a4);
              v60[2] = 0;
              WTF::Logger::LogSiteIdentifier::toString(&v61, a5);
              v62 = 0;
              WTF::String::String(v63, v43);
              v63[2] = 0;
              WTF::LogArgument<WTF::NativePromise<void,WebCore::PlatformMediaError,0u>>::toString(v44, &v64);
              v65 = 0;
              WTF::String::String(v66, v45);
              v66[2] = 0;
              WTF::LogArgument<void const*>::toString();
              v66[6] = 0;
              WTF::String::String(v67, a10);
              WTF::Vector<WTF::JSONLogValue,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v47, buf, 8uLL);
              (*(*v38 + 16))(v38, a1, a2, v47);
              WTF::Vector<std::tuple<Inspector::BackendDispatcher::CommonErrorCode,WTF::String>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v47, v39);
              for (i = 120; i != -8; i -= 16)
              {
                v41 = *&buf[i];
                *&buf[i] = 0;
                if (v41 && atomic_fetch_add_explicit(v41, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v41, v29);
                }
              }

              ++v36;
            }

            while (v36 != v37);
          }

          v42 = 1;
          atomic_compare_exchange_strong_explicit(v31, &v42, 0, memory_order_release, memory_order_relaxed);
          if (v42 != 1)
          {
            WTF::Lock::unlockSlow(MEMORY[0x1E696EBC0]);
          }

          break;
        }
      }
    }

    result = v56;
    v56 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(result, v29);
      }
    }
  }

  else
  {
    __break(0xC471u);
  }

  return result;
}

WTF::StringImpl *WTF::NativePromiseProducer<void,WebCore::PlatformMediaError,0u>::setDispatchMode(uint64_t *a1, unsigned __int8 a2, WTF::Logger::LogSiteIdentifier *a3)
{
  v3 = *a1;
  if (*a1)
  {
    atomic_fetch_add((v3 + 8), 1u);
    result = WTF::NativePromise<void,WebCore::PlatformMediaError,0u>::setDispatchMode(v3, a2, a3);
    if (atomic_fetch_add((v3 + 8), 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, (v3 + 8));
      v5 = *(*v3 + 16);

      return v5(v3);
    }
  }

  else
  {

    return WTF::NativePromise<void,WebCore::PlatformMediaError,0u>::setDispatchMode(0, a2, a3);
  }

  return result;
}

WTF::StringImpl *WTF::Logger::log<WTF::Logger::LogSiteIdentifier,char [22],WTF::NativePromise<void,WebCore::PlatformMediaError,0u>,char [17],WTF::NativePromise<void,WebCore::PlatformMediaError,0u>,char [12],BOOL,char [2]>(uint64_t a1, unsigned int a2, WTF::Logger::LogSiteIdentifier *this, const char *a4, uint64_t a5, const char *a6, uint64_t a7, const char *a8, uint64_t a9, const char *a10)
{
  v67[1] = *MEMORY[0x1E69E9840];
  WTF::Logger::LogSiteIdentifier::toString(&v55, this);
  WTF::String::String(&v54, a4);
  WTF::LogArgument<WTF::NativePromise<void,WebCore::PlatformMediaError,0u>>::toString(a5, &v53);
  v43 = a6;
  WTF::String::String(&v52, a6);
  v44 = a7;
  WTF::LogArgument<WTF::NativePromise<void,WebCore::PlatformMediaError,0u>>::toString(a7, &v51);
  v45 = a8;
  WTF::String::String(&v50, a8);
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  WTF::String::String(&v48, a10);
  result = WTF::tryMakeString<WTF::String,WTF::String,WTF::String,WTF::String,WTF::String,WTF::String,WTF::String,WTF::String>(&v55, &v54, &v53, &v52, &v51, &v50, &v49, &v48, &v56);
  if (v56)
  {
    v19 = v48;
    v48 = 0;
    if (v19 && atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v19, v18);
    }

    v20 = v49;
    v49 = 0;
    if (v20 && atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v20, v18);
    }

    v21 = v50;
    v50 = 0;
    if (v21 && atomic_fetch_add_explicit(v21, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v21, v18);
    }

    v22 = v51;
    v51 = 0;
    if (v22 && atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v22, v18);
    }

    v23 = v52;
    v52 = 0;
    if (v23 && atomic_fetch_add_explicit(v23, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v23, v18);
    }

    v24 = v53;
    v53 = 0;
    if (v24 && atomic_fetch_add_explicit(v24, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v24, v18);
    }

    v25 = v54;
    v54 = 0;
    if (v25 && atomic_fetch_add_explicit(v25, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v25, v18);
    }

    v26 = v55;
    v55 = 0;
    if (v26 && atomic_fetch_add_explicit(v26, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v26, v18);
    }

    v27 = *(a1 + 32);
    v28 = os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT);
    if (v28)
    {
      WTF::String::utf8();
      v30 = v47[0] ? v47[0] + 16 : 0;
      *buf = 136446210;
      v58 = v30;
      _os_log_impl(&dword_19D52D000, v27, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
      v28 = v47[0];
      v47[0] = 0;
      if (v28)
      {
        if (*v28 == 1)
        {
          v28 = WTF::fastFree(v28, v29);
        }

        else
        {
          --*v28;
        }
      }
    }

    if (*a1 && *(a1 + 16) >= a2)
    {
      v31 = MEMORY[0x1E696EBC0];
      while (1)
      {
        v32 = *v31;
        if (v32)
        {
          break;
        }

        v33 = *v31;
        atomic_compare_exchange_strong_explicit(v31, &v33, v32 | 1, memory_order_acquire, memory_order_acquire);
        if (v33 == v32)
        {
          v34 = WTF::Logger::observers(v28);
          v35 = *(v34 + 12);
          if (v35)
          {
            v36 = *v34;
            v37 = *v34 + 8 * v35;
            do
            {
              v38 = *v36;
              *buf = 0;
              WTF::Logger::LogSiteIdentifier::toString((&v58 + 4), this);
              v59 = 0;
              WTF::String::String(v60, a4);
              v60[2] = 0;
              WTF::LogArgument<WTF::NativePromise<void,WebCore::PlatformMediaError,0u>>::toString(a5, &v61);
              v62 = 0;
              WTF::String::String(v63, v43);
              v63[2] = 0;
              WTF::LogArgument<WTF::NativePromise<void,WebCore::PlatformMediaError,0u>>::toString(v44, &v64);
              v65 = 0;
              WTF::String::String(v66, v45);
              v66[2] = 0;
              WTF::StringImpl::createWithoutCopyingNonEmpty();
              v66[6] = 0;
              WTF::String::String(v67, a10);
              WTF::Vector<WTF::JSONLogValue,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v47, buf, 8uLL);
              (*(*v38 + 16))(v38, a1, a2, v47);
              WTF::Vector<std::tuple<Inspector::BackendDispatcher::CommonErrorCode,WTF::String>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v47, v39);
              for (i = 120; i != -8; i -= 16)
              {
                v41 = *&buf[i];
                *&buf[i] = 0;
                if (v41 && atomic_fetch_add_explicit(v41, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v41, v29);
                }
              }

              ++v36;
            }

            while (v36 != v37);
          }

          v42 = 1;
          atomic_compare_exchange_strong_explicit(v31, &v42, 0, memory_order_release, memory_order_relaxed);
          if (v42 != 1)
          {
            WTF::Lock::unlockSlow(MEMORY[0x1E696EBC0]);
          }

          break;
        }
      }
    }

    result = v56;
    v56 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(result, v29);
      }
    }
  }

  else
  {
    __break(0xC471u);
  }

  return result;
}

unint64_t WTF::Vector<WTF::NativePromiseProducer<void,WebCore::PlatformMediaError,0u>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v3 = a3;
  v5 = *a1;
  if (*a1 > a3 || v5 + 40 * *(a1 + 12) <= a3)
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

    WTF::Vector<WTF::NativePromiseProducer<void,WebCore::PlatformMediaError,0u>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v12);
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

    WTF::Vector<WTF::NativePromiseProducer<void,WebCore::PlatformMediaError,0u>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v9);
    return *a1 + v6;
  }

  return v3;
}

uint64_t WTF::Vector<WTF::NativePromiseProducer<void,WebCore::PlatformMediaError,0u>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(uint64_t result, unint64_t a2)
{
  if (*(result + 8) >= a2)
  {
    return 1;
  }

  if (a2 < 0x6666667)
  {
    v2 = result;
    v3 = *result;
    v4 = *(result + 12);
    v5 = 40 * a2;
    v6 = WTF::fastMalloc((40 * a2));
    *(v2 + 8) = v5 / 0x28;
    *v2 = v6;
    if (v4)
    {
      v8 = v6;
      v9 = v3;
      do
      {
        v10 = *v9;
        *v9 = 0;
        *v8 = v10;
        v11 = *(v9 + 1);
        *(v8 + 24) = *(v9 + 3);
        *(v8 + 8) = v11;
        v8 += 40;
        v9 = WTF::NativePromiseProducer<void,WebCore::PlatformMediaError,0u>::~NativePromiseProducer(v9) + 5;
      }

      while (v9 != (v3 + 40 * v4));
    }

    if (v3)
    {
      if (*v2 == v3)
      {
        *v2 = 0;
        *(v2 + 8) = 0;
      }

      WTF::fastFree(v3, v7);
    }

    return 1;
  }

  __break(0xC471u);
  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZNS_13NativePromiseIvN7WebCore18PlatformMediaErrorELj0EE11whenSettledIZN6WebKit23RemoteSourceBufferProxy6appendEON3IPC21SharedBufferReferenceEONS_17CompletionHandlerIFvNSt12experimental15fundamentals_v38expectedIvS4_EERKNS_9MediaTimeEEEEE3__0EEDaRNS_34GuaranteedSerialFunctionDispatcherEOT_RKNS_6Logger17LogSiteIdentifierEEUlOSG_E_vJSX_EED1Ev(void *a1, void *a2)
{
  *a1 = &unk_1F10FDAA8;
  v3 = a1[3];
  a1[3] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = a1[2];
  a1[2] = 0;
  if (v4)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::SourceBufferPrivateClient,(WTF::DestructionThread)0>::deref((v4 + 8), a2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZNS_13NativePromiseIvN7WebCore18PlatformMediaErrorELj0EE11whenSettledIZN6WebKit23RemoteSourceBufferProxy6appendEON3IPC21SharedBufferReferenceEONS_17CompletionHandlerIFvNSt12experimental15fundamentals_v38expectedIvS4_EERKNS_9MediaTimeEEEEE3__0EEDaRNS_34GuaranteedSerialFunctionDispatcherEOT_RKNS_6Logger17LogSiteIdentifierEEUlOSG_E_vJSX_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10FDAA8;
  v3 = *(this + 3);
  *(this + 3) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 2);
  *(this + 2) = 0;
  if (v4)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::SourceBufferPrivateClient,(WTF::DestructionThread)0>::deref((v4 + 8), a2);
  }

  return WTF::fastFree(this, a2);
}

atomic_ullong *_ZN3WTF6Detail15CallableWrapperIZNS_13NativePromiseIvN7WebCore18PlatformMediaErrorELj0EE11whenSettledIZN6WebKit23RemoteSourceBufferProxy6appendEON3IPC21SharedBufferReferenceEONS_17CompletionHandlerIFvNSt12experimental15fundamentals_v38expectedIvS4_EERKNS_9MediaTimeEEEEE3__0EEDaRNS_34GuaranteedSerialFunctionDispatcherEOT_RKNS_6Logger17LogSiteIdentifierEEUlOSG_E_vJSX_EE4callESX_(uint64_t a1, __int16 *a2)
{
  v3 = *a2;
  v4 = *(*(a1 + 8) + 56);
  v5 = v4 + 1;
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
  v12 = (*(*v4 + 304))(v4);
  v13 = v8;
  v14 = v9;
  v10 = *(a1 + 24);
  *(a1 + 24) = 0;
  v15 = v3;
  (*(*v10 + 16))(v10, &v15, &v12);
  (*(*v10 + 8))(v10);
  return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::SourceBufferPrivate,(WTF::DestructionThread)1>::deref(v5);
}

uint64_t WTF::NativePromise<void,WebCore::PlatformMediaError,0u>::ThenCallback<false,void>::~ThenCallback(uint64_t a1)
{
  *a1 = &unk_1F10FE020;
  v2 = *(a1 + 72);
  *(a1 + 72) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  std::unique_ptr<WTF::NativePromiseProducer<void,void,0u>>::reset[abi:sn200100]((a1 + 64), 0);
  *a1 = &unk_1F10FE050;
  v3 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WTF::SerialFunctionDispatcher,(WTF::DestructionThread)0>::deref((v3 + 8));
  }

  return a1;
}

{
  *a1 = &unk_1F10FE020;
  v2 = *(a1 + 72);
  *(a1 + 72) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  std::unique_ptr<WTF::NativePromiseProducer<void,void,0u>>::reset[abi:sn200100]((a1 + 64), 0);
  *a1 = &unk_1F10FE050;
  v4 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v4)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WTF::SerialFunctionDispatcher,(WTF::DestructionThread)0>::deref((v4 + 8));
  }

  return WTF::fastFree(a1, v3);
}

uint64_t WTF::NativePromise<void,WebCore::PlatformMediaError,0u>::ThenCallback<false,void>::disconnect(uint64_t a1)
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

uint64_t WTF::NativePromise<void,WebCore::PlatformMediaError,0u>::ThenCallback<false,void>::processResult(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 1);
  v16[0] = a1;
  v7 = WTF::NativePromiseBase::logChannel(a1);
  if (*v7)
  {
    v8 = v7[16] >= 4u;
  }

  else
  {
    v8 = 0;
  }

  if (v8)
  {
    if (v6)
    {
      v9 = "Rejecting";
    }

    else
    {
      v9 = "Resolving";
    }

    WTF::Logger::log<char [10],char [24],WTF::Logger::LogSiteIdentifier,char [2],WTF::NativePromise<void,WebCore::PlatformMediaError,0u>,char [11],void const*,char [2]>(v7, 4u, v9, " then() call made from ", (a1 + 24), "[", a2, " callback:", v16, "]");
  }

  v10 = 0;
  v11 = 1;
  atomic_compare_exchange_strong_explicit((a1 + 57), &v10, 1u, memory_order_acquire, memory_order_acquire);
  if (v10)
  {
    MEMORY[0x19EB01E30](a1 + 57);
  }

  v12 = *(a1 + 64);
  *(a1 + 64) = 0;
  std::unique_ptr<WTF::NativePromiseProducer<void,void,0u>>::reset[abi:sn200100]((a1 + 64), 0);
  atomic_compare_exchange_strong_explicit((a1 + 57), &v11, 0, memory_order_release, memory_order_relaxed);
  if (v11 != 1)
  {
    WTF::Lock::unlockSlow((a1 + 57));
  }

  (*(**(a1 + 72) + 16))(*(a1 + 72), a3);
  if (v12)
  {
    v16[0] = 0;
    v16[1] = 0;
    v16[2] = "<chained completion promise>";
    v16[3] = 0;
    WTF::NativePromiseProducer<void,void,0u>::resolve<std::enable_if<true,void>>(v12, v16);
  }

  result = *(a1 + 72);
  *(a1 + 72) = 0;
  if (result)
  {
    result = (*(*result + 8))(result);
  }

  if (v12)
  {
    v14 = WTF::NativePromiseProducer<void,void,0u>::~NativePromiseProducer(v12);
    return WTF::fastFree(v14, v15);
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZNS_13NativePromiseIvN7WebCore18PlatformMediaErrorELj0EE11whenSettledINS_17CompletionHandlerIFvvEEEEEDaRNS_34GuaranteedSerialFunctionDispatcherEOT_RKNS_6Logger17LogSiteIdentifierEEUlONSt12experimental15fundamentals_v38expectedIvS4_EEE_vJSN_EED1Ev(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F10FE080;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZNS_13NativePromiseIvN7WebCore18PlatformMediaErrorELj0EE11whenSettledINS_17CompletionHandlerIFvvEEEEEDaRNS_34GuaranteedSerialFunctionDispatcherEOT_RKNS_6Logger17LogSiteIdentifierEEUlONSt12experimental15fundamentals_v38expectedIvS4_EEE_vJSN_EED0Ev(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F10FE080;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZNS_13NativePromiseIvN7WebCore18PlatformMediaErrorELj0EE11whenSettledINS_17CompletionHandlerIFvvEEEEEDaRNS_34GuaranteedSerialFunctionDispatcherEOT_RKNS_6Logger17LogSiteIdentifierEEUlONSt12experimental15fundamentals_v38expectedIvS4_EEE_vJSN_EE4callESN_(uint64_t a1)
{
  v1 = *(a1 + 8);
  *(a1 + 8) = 0;
  (*(*v1 + 16))(v1);
  v2 = *(*v1 + 8);

  return v2(v1);
}

void *_ZN3WTF6Detail15CallableWrapperIZNS_13NativePromiseIvvLj0EE11whenSettledINS_17CompletionHandlerIFvvEEEEEDaRNS_34GuaranteedSerialFunctionDispatcherEOT_RKNS_6Logger17LogSiteIdentifierEEUlONSt12experimental15fundamentals_v38expectedIvNS_6detail15VoidPlaceholderEEEE_vJSN_EED1Ev(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F10FDAD0;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZNS_13NativePromiseIvvLj0EE11whenSettledINS_17CompletionHandlerIFvvEEEEEDaRNS_34GuaranteedSerialFunctionDispatcherEOT_RKNS_6Logger17LogSiteIdentifierEEUlONSt12experimental15fundamentals_v38expectedIvNS_6detail15VoidPlaceholderEEEE_vJSN_EED0Ev(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F10FDAD0;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZNS_13NativePromiseIvvLj0EE11whenSettledINS_17CompletionHandlerIFvvEEEEEDaRNS_34GuaranteedSerialFunctionDispatcherEOT_RKNS_6Logger17LogSiteIdentifierEEUlONSt12experimental15fundamentals_v38expectedIvNS_6detail15VoidPlaceholderEEEE_vJSN_EE4callESN_(uint64_t a1)
{
  v1 = *(a1 + 8);
  *(a1 + 8) = 0;
  (*(*v1 + 16))(v1);
  v2 = *(*v1 + 8);

  return v2(v1);
}

uint64_t WTF::NativePromise<void,void,0u>::ThenCallback<false,void>::~ThenCallback(uint64_t a1)
{
  *a1 = &unk_1F10FDAF8;
  v2 = *(a1 + 72);
  *(a1 + 72) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  std::unique_ptr<WTF::NativePromiseProducer<void,void,0u>>::reset[abi:sn200100]((a1 + 64), 0);
  *a1 = &unk_1F10FDB28;
  v3 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WTF::SerialFunctionDispatcher,(WTF::DestructionThread)0>::deref((v3 + 8));
  }

  return a1;
}

{
  *a1 = &unk_1F10FDAF8;
  v2 = *(a1 + 72);
  *(a1 + 72) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  std::unique_ptr<WTF::NativePromiseProducer<void,void,0u>>::reset[abi:sn200100]((a1 + 64), 0);
  *a1 = &unk_1F10FDB28;
  v4 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v4)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WTF::SerialFunctionDispatcher,(WTF::DestructionThread)0>::deref((v4 + 8));
  }

  return WTF::fastFree(a1, v3);
}

uint64_t WTF::NativePromise<void,void,0u>::ThenCallback<false,void>::disconnect(uint64_t a1)
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

uint64_t WTF::NativePromise<void,void,0u>::ThenCallback<false,void>::processResult(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 1);
  v16[0] = a1;
  v7 = WTF::NativePromiseBase::logChannel(a1);
  if (*v7)
  {
    v8 = v7[16] >= 4u;
  }

  else
  {
    v8 = 0;
  }

  if (v8)
  {
    if (v6)
    {
      v9 = "Rejecting";
    }

    else
    {
      v9 = "Resolving";
    }

    WTF::Logger::log<char [10],char [24],WTF::Logger::LogSiteIdentifier,char [2],WTF::NativePromise<void,void,0u>,char [11],void const*,char [2]>(v7, 4u, v9, " then() call made from ", (a1 + 24), "[", a2, " callback:", v16, "]");
  }

  v10 = 0;
  v11 = 1;
  atomic_compare_exchange_strong_explicit((a1 + 57), &v10, 1u, memory_order_acquire, memory_order_acquire);
  if (v10)
  {
    MEMORY[0x19EB01E30](a1 + 57);
  }

  v12 = *(a1 + 64);
  *(a1 + 64) = 0;
  std::unique_ptr<WTF::NativePromiseProducer<void,void,0u>>::reset[abi:sn200100]((a1 + 64), 0);
  atomic_compare_exchange_strong_explicit((a1 + 57), &v11, 0, memory_order_release, memory_order_relaxed);
  if (v11 != 1)
  {
    WTF::Lock::unlockSlow((a1 + 57));
  }

  (*(**(a1 + 72) + 16))(*(a1 + 72), a3);
  if (v12)
  {
    v16[0] = 0;
    v16[1] = 0;
    v16[2] = "<chained completion promise>";
    v16[3] = 0;
    WTF::NativePromiseProducer<void,void,0u>::resolve<std::enable_if<true,void>>(v12, v16);
  }

  result = *(a1 + 72);
  *(a1 + 72) = 0;
  if (result)
  {
    result = (*(*result + 8))(result);
  }

  if (v12)
  {
    v14 = WTF::NativePromiseProducer<void,void,0u>::~NativePromiseProducer(v12);
    return WTF::fastFree(v14, v15);
  }

  return result;
}

WTF::StringImpl *WTF::Logger::log<char [10],char [24],WTF::Logger::LogSiteIdentifier,char [2],WTF::NativePromise<void,void,0u>,char [11],void const*,char [2]>(uint64_t a1, unsigned int a2, char *a3, const char *a4, WTF::Logger::LogSiteIdentifier *a5, const char *a6, uint64_t a7, const char *a8, uint64_t a9, const char *a10)
{
  v67[1] = *MEMORY[0x1E69E9840];
  WTF::String::String(&v55, a3);
  WTF::String::String(&v54, a4);
  WTF::Logger::LogSiteIdentifier::toString(&v53, a5);
  v43 = a6;
  WTF::String::String(&v52, a6);
  v44 = a7;
  WTF::LogArgument<WTF::NativePromise<void,void,0u>>::toString(a7, &v51);
  v45 = a8;
  WTF::String::String(&v50, a8);
  WTF::LogArgument<void const*>::toString();
  WTF::String::String(&v48, a10);
  result = WTF::tryMakeString<WTF::String,WTF::String,WTF::String,WTF::String,WTF::String,WTF::String,WTF::String,WTF::String>(&v55, &v54, &v53, &v52, &v51, &v50, &v49, &v48, &v56);
  if (v56)
  {
    v19 = v48;
    v48 = 0;
    if (v19 && atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v19, v18);
    }

    v20 = v49;
    v49 = 0;
    if (v20 && atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v20, v18);
    }

    v21 = v50;
    v50 = 0;
    if (v21 && atomic_fetch_add_explicit(v21, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v21, v18);
    }

    v22 = v51;
    v51 = 0;
    if (v22 && atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v22, v18);
    }

    v23 = v52;
    v52 = 0;
    if (v23 && atomic_fetch_add_explicit(v23, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v23, v18);
    }

    v24 = v53;
    v53 = 0;
    if (v24 && atomic_fetch_add_explicit(v24, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v24, v18);
    }

    v25 = v54;
    v54 = 0;
    if (v25 && atomic_fetch_add_explicit(v25, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v25, v18);
    }

    v26 = v55;
    v55 = 0;
    if (v26 && atomic_fetch_add_explicit(v26, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v26, v18);
    }

    v27 = *(a1 + 32);
    v28 = os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT);
    if (v28)
    {
      WTF::String::utf8();
      v30 = v47[0] ? v47[0] + 16 : 0;
      *buf = 136446210;
      v58 = v30;
      _os_log_impl(&dword_19D52D000, v27, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
      v28 = v47[0];
      v47[0] = 0;
      if (v28)
      {
        if (*v28 == 1)
        {
          v28 = WTF::fastFree(v28, v29);
        }

        else
        {
          --*v28;
        }
      }
    }

    if (*a1 && *(a1 + 16) >= a2)
    {
      v31 = MEMORY[0x1E696EBC0];
      while (1)
      {
        v32 = *v31;
        if (v32)
        {
          break;
        }

        v33 = *v31;
        atomic_compare_exchange_strong_explicit(v31, &v33, v32 | 1, memory_order_acquire, memory_order_acquire);
        if (v33 == v32)
        {
          v34 = WTF::Logger::observers(v28);
          v35 = *(v34 + 12);
          if (v35)
          {
            v36 = *v34;
            v37 = *v34 + 8 * v35;
            do
            {
              v38 = *v36;
              *buf = 0;
              WTF::String::String((&v58 + 4), a3);
              v59 = 0;
              WTF::String::String(v60, a4);
              v60[2] = 0;
              WTF::Logger::LogSiteIdentifier::toString(&v61, a5);
              v62 = 0;
              WTF::String::String(v63, v43);
              v63[2] = 0;
              WTF::LogArgument<WTF::NativePromise<void,void,0u>>::toString(v44, &v64);
              v65 = 0;
              WTF::String::String(v66, v45);
              v66[2] = 0;
              WTF::LogArgument<void const*>::toString();
              v66[6] = 0;
              WTF::String::String(v67, a10);
              WTF::Vector<WTF::JSONLogValue,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v47, buf, 8uLL);
              (*(*v38 + 16))(v38, a1, a2, v47);
              WTF::Vector<std::tuple<Inspector::BackendDispatcher::CommonErrorCode,WTF::String>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v47, v39);
              for (i = 120; i != -8; i -= 16)
              {
                v41 = *&buf[i];
                *&buf[i] = 0;
                if (v41 && atomic_fetch_add_explicit(v41, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v41, v29);
                }
              }

              ++v36;
            }

            while (v36 != v37);
          }

          v42 = 1;
          atomic_compare_exchange_strong_explicit(v31, &v42, 0, memory_order_release, memory_order_relaxed);
          if (v42 != 1)
          {
            WTF::Lock::unlockSlow(MEMORY[0x1E696EBC0]);
          }

          break;
        }
      }
    }

    result = v56;
    v56 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(result, v29);
      }
    }
  }

  else
  {
    __break(0xC471u);
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZNS_13NativePromiseINS_9MediaTimeEN7WebCore18PlatformMediaErrorELj0EE11whenSettledINS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedIS3_S5_EEEEEEEDaRNS_34GuaranteedSerialFunctionDispatcherEOT_RKNS_6Logger17LogSiteIdentifierEEUlSD_E_vJSD_EED1Ev(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F10FDB58;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZNS_13NativePromiseINS_9MediaTimeEN7WebCore18PlatformMediaErrorELj0EE11whenSettledINS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedIS3_S5_EEEEEEEDaRNS_34GuaranteedSerialFunctionDispatcherEOT_RKNS_6Logger17LogSiteIdentifierEEUlSD_E_vJSD_EED0Ev(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F10FDB58;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZNS_13NativePromiseINS_9MediaTimeEN7WebCore18PlatformMediaErrorELj0EE11whenSettledINS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedIS3_S5_EEEEEEEDaRNS_34GuaranteedSerialFunctionDispatcherEOT_RKNS_6Logger17LogSiteIdentifierEEUlSD_E_vJSD_EE4callESD_(uint64_t a1)
{
  v1 = *(a1 + 8);
  *(a1 + 8) = 0;
  (*(*v1 + 16))(v1);
  v2 = *(*v1 + 8);

  return v2(v1);
}

uint64_t WTF::NativePromise<WTF::MediaTime,WebCore::PlatformMediaError,0u>::ThenCallback<false,void>::~ThenCallback(uint64_t a1)
{
  *a1 = &unk_1F10FDB80;
  v2 = *(a1 + 72);
  *(a1 + 72) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  std::unique_ptr<WTF::NativePromiseProducer<void,void,0u>>::reset[abi:sn200100]((a1 + 64), 0);
  *a1 = &unk_1F10FDBB0;
  v3 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WTF::SerialFunctionDispatcher,(WTF::DestructionThread)0>::deref((v3 + 8));
  }

  return a1;
}

{
  *a1 = &unk_1F10FDB80;
  v2 = *(a1 + 72);
  *(a1 + 72) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  std::unique_ptr<WTF::NativePromiseProducer<void,void,0u>>::reset[abi:sn200100]((a1 + 64), 0);
  *a1 = &unk_1F10FDBB0;
  v4 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v4)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WTF::SerialFunctionDispatcher,(WTF::DestructionThread)0>::deref((v4 + 8));
  }

  return WTF::fastFree(a1, v3);
}

uint64_t WTF::NativePromise<WTF::MediaTime,WebCore::PlatformMediaError,0u>::ThenCallback<false,void>::disconnect(uint64_t a1)
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

uint64_t WTF::NativePromise<WTF::MediaTime,WebCore::PlatformMediaError,0u>::ThenCallback<false,void>::processResult(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  v16[0] = a1;
  v7 = WTF::NativePromiseBase::logChannel(a1);
  if (*v7)
  {
    v8 = v7[16] >= 4u;
  }

  else
  {
    v8 = 0;
  }

  if (v8)
  {
    if (v6)
    {
      v9 = "Rejecting";
    }

    else
    {
      v9 = "Resolving";
    }

    WTF::Logger::log<char [10],char [24],WTF::Logger::LogSiteIdentifier,char [2],WTF::NativePromise<void,WebCore::PlatformMediaError,0u>,char [11],void const*,char [2]>(v7, 4u, v9, " then() call made from ", (a1 + 24), "[", a2, " callback:", v16, "]");
  }

  v10 = 0;
  v11 = 1;
  atomic_compare_exchange_strong_explicit((a1 + 57), &v10, 1u, memory_order_acquire, memory_order_acquire);
  if (v10)
  {
    MEMORY[0x19EB01E30](a1 + 57);
  }

  v12 = *(a1 + 64);
  *(a1 + 64) = 0;
  std::unique_ptr<WTF::NativePromiseProducer<void,void,0u>>::reset[abi:sn200100]((a1 + 64), 0);
  atomic_compare_exchange_strong_explicit((a1 + 57), &v11, 0, memory_order_release, memory_order_relaxed);
  if (v11 != 1)
  {
    WTF::Lock::unlockSlow((a1 + 57));
  }

  (*(**(a1 + 72) + 16))(*(a1 + 72), a3);
  if (v12)
  {
    v16[0] = 0;
    v16[1] = 0;
    v16[2] = "<chained completion promise>";
    v16[3] = 0;
    WTF::NativePromiseProducer<void,void,0u>::resolve<std::enable_if<true,void>>(v12, v16);
  }

  result = *(a1 + 72);
  *(a1 + 72) = 0;
  if (result)
  {
    result = (*(*result + 8))(result);
  }

  if (v12)
  {
    v14 = WTF::NativePromiseProducer<void,void,0u>::~NativePromiseProducer(v12);
    return WTF::fastFree(v14, v15);
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZNS_13NativePromiseINS_6VectorINS_6StringELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEN7WebCore18PlatformMediaErrorELj0EE11whenSettledINS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedIS7_S9_EEEEEEEDaRNS_34GuaranteedSerialFunctionDispatcherEOT_RKNS_6Logger17LogSiteIdentifierEEUlSH_E_vJSH_EED1Ev(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F10FDBE0;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZNS_13NativePromiseINS_6VectorINS_6StringELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEN7WebCore18PlatformMediaErrorELj0EE11whenSettledINS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedIS7_S9_EEEEEEEDaRNS_34GuaranteedSerialFunctionDispatcherEOT_RKNS_6Logger17LogSiteIdentifierEEUlSH_E_vJSH_EED0Ev(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F10FDBE0;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZNS_13NativePromiseINS_6VectorINS_6StringELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEN7WebCore18PlatformMediaErrorELj0EE11whenSettledINS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedIS7_S9_EEEEEEEDaRNS_34GuaranteedSerialFunctionDispatcherEOT_RKNS_6Logger17LogSiteIdentifierEEUlSH_E_vJSH_EE4callESH_(uint64_t a1)
{
  v1 = *(a1 + 8);
  *(a1 + 8) = 0;
  (*(*v1 + 16))(v1);
  v2 = *(*v1 + 8);

  return v2(v1);
}

uint64_t WTF::NativePromise<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::PlatformMediaError,0u>::ThenCallback<false,void>::~ThenCallback(uint64_t a1)
{
  *a1 = &unk_1F10FDC08;
  v2 = *(a1 + 72);
  *(a1 + 72) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  std::unique_ptr<WTF::NativePromiseProducer<void,void,0u>>::reset[abi:sn200100]((a1 + 64), 0);
  *a1 = &unk_1F10FDC38;
  v3 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WTF::SerialFunctionDispatcher,(WTF::DestructionThread)0>::deref((v3 + 8));
  }

  return a1;
}

{
  *a1 = &unk_1F10FDC08;
  v2 = *(a1 + 72);
  *(a1 + 72) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  std::unique_ptr<WTF::NativePromiseProducer<void,void,0u>>::reset[abi:sn200100]((a1 + 64), 0);
  *a1 = &unk_1F10FDC38;
  v4 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v4)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WTF::SerialFunctionDispatcher,(WTF::DestructionThread)0>::deref((v4 + 8));
  }

  return WTF::fastFree(a1, v3);
}

uint64_t WTF::NativePromise<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::PlatformMediaError,0u>::ThenCallback<false,void>::disconnect(uint64_t a1)
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

uint64_t WTF::NativePromise<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::PlatformMediaError,0u>::ThenCallback<false,void>::processResult(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v64[1] = *MEMORY[0x1E69E9840];
  v6 = *(a3 + 16);
  v7 = WTF::NativePromiseBase::logChannel(a1);
  if (*v7)
  {
    v8 = v7[16] >= 4u;
  }

  else
  {
    v8 = 0;
  }

  if (v8)
  {
    v9 = v7;
    if (v6)
    {
      v10 = "Rejecting";
    }

    else
    {
      v10 = "Resolving";
    }

    v43 = v10;
    WTF::String::String(&v52, v10);
    WTF::String::String(&v51, " then() call made from ");
    WTF::Logger::LogSiteIdentifier::toString(&v50, (a1 + 24));
    WTF::String::String(&v49, "[");
    WTF::LogArgument<WTF::NativePromise<void,WebCore::PlatformMediaError,0u>>::toString(a2, &v48);
    WTF::String::String(&v47, " callback:");
    WTF::LogArgument<void const*>::toString();
    WTF::String::String(&v45, "]");
    result = WTF::tryMakeString<WTF::String,WTF::String,WTF::String,WTF::String,WTF::String,WTF::String,WTF::String,WTF::String>(&v52, &v51, &v50, &v49, &v48, &v47, &v46, &v45, &v53);
    if (!v53)
    {
      __break(0xC471u);
      return result;
    }

    v13 = v45;
    v45 = 0;
    if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v13, v12);
    }

    v14 = v46;
    v46 = 0;
    if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v14, v12);
    }

    v15 = v47;
    v47 = 0;
    if (v15 && atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v15, v12);
    }

    v16 = v48;
    v48 = 0;
    if (v16 && atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v16, v12);
    }

    v17 = v49;
    v49 = 0;
    if (v17 && atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v17, v12);
    }

    v18 = v50;
    v50 = 0;
    if (v18 && atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v18, v12);
    }

    v19 = v51;
    v51 = 0;
    if (v19 && atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v19, v12);
    }

    v20 = v52;
    v52 = 0;
    if (v20 && atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v20, v12);
    }

    v21 = *(v9 + 4);
    v22 = os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);
    if (v22)
    {
      WTF::String::utf8();
      v24 = v44[0] ? v44[0] + 16 : 0;
      *buf = 136446210;
      *&buf[4] = v24;
      _os_log_impl(&dword_19D52D000, v21, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
      v22 = v44[0];
      v44[0] = 0;
      if (v22)
      {
        if (*v22 == 1)
        {
          v22 = WTF::fastFree(v22, v23);
        }

        else
        {
          --*v22;
        }
      }
    }

    if (*v9 && v9[16] >= 4u)
    {
      v25 = MEMORY[0x1E696EBC0];
      while (1)
      {
        v26 = *v25;
        if (v26)
        {
          break;
        }

        v27 = *v25;
        atomic_compare_exchange_strong_explicit(v25, &v27, v26 | 1, memory_order_acquire, memory_order_acquire);
        if (v27 == v26)
        {
          v28 = WTF::Logger::observers(v22);
          v29 = *(v28 + 12);
          if (v29)
          {
            v30 = *v28;
            v31 = *v28 + 8 * v29;
            do
            {
              v32 = *v30;
              *buf = 0;
              WTF::String::String(&buf[8], v43);
              LODWORD(v55) = 0;
              WTF::String::String(&v56, " then() call made from ");
              v57 = 0;
              WTF::Logger::LogSiteIdentifier::toString(&v58, (a1 + 24));
              v59 = 0;
              WTF::String::String(v60, "[");
              v60[2] = 0;
              WTF::LogArgument<WTF::NativePromise<void,WebCore::PlatformMediaError,0u>>::toString(a2, &v61);
              v62 = 0;
              WTF::String::String(v63, " callback:");
              v63[2] = 0;
              WTF::LogArgument<void const*>::toString();
              v63[6] = 0;
              WTF::String::String(v64, "]");
              WTF::Vector<WTF::JSONLogValue,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v44, buf, 8uLL);
              (*(*v32 + 16))(v32, v9, 4, v44);
              WTF::Vector<std::tuple<Inspector::BackendDispatcher::CommonErrorCode,WTF::String>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v44, v33);
              for (i = 120; i != -8; i -= 16)
              {
                v35 = *&buf[i];
                *&buf[i] = 0;
                if (v35 && atomic_fetch_add_explicit(v35, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v35, v23);
                }
              }

              ++v30;
            }

            while (v30 != v31);
          }

          v36 = 1;
          atomic_compare_exchange_strong_explicit(v25, &v36, 0, memory_order_release, memory_order_relaxed);
          if (v36 != 1)
          {
            WTF::Lock::unlockSlow(MEMORY[0x1E696EBC0]);
          }

          break;
        }
      }
    }

    v37 = v53;
    v53 = 0;
    if (v37 && atomic_fetch_add_explicit(v37, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v37, v23);
    }
  }

  v38 = 0;
  v39 = 1;
  atomic_compare_exchange_strong_explicit((a1 + 57), &v38, 1u, memory_order_acquire, memory_order_acquire);
  if (v38)
  {
    MEMORY[0x19EB01E30](a1 + 57);
  }

  v40 = *(a1 + 64);
  *(a1 + 64) = 0;
  std::unique_ptr<WTF::NativePromiseProducer<void,void,0u>>::reset[abi:sn200100]((a1 + 64), 0);
  atomic_compare_exchange_strong_explicit((a1 + 57), &v39, 0, memory_order_release, memory_order_relaxed);
  if (v39 != 1)
  {
    WTF::Lock::unlockSlow((a1 + 57));
  }

  (*(**(a1 + 72) + 16))(*(a1 + 72), a3);
  if (v40)
  {
    *buf = 0uLL;
    v55 = "<chained completion promise>";
    v56 = 0;
    WTF::NativePromiseProducer<void,void,0u>::resolve<std::enable_if<true,void>>(v40, buf);
  }

  result = *(a1 + 72);
  *(a1 + 72) = 0;
  if (result)
  {
    result = (*(*result + 8))(result);
  }

  if (v40)
  {
    v41 = WTF::NativePromiseProducer<void,void,0u>::~NativePromiseProducer(v40);
    return WTF::fastFree(v41, v42);
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZNS_13NativePromiseIvN7WebCore18PlatformMediaErrorELj0EE11whenSettledIZN6WebKit23RemoteSourceBufferProxy28sourceBufferPrivateDidAttachEONS3_25SourceBufferPrivateClient21InitializationSegmentEE3__0EEDaRNS_34GuaranteedSerialFunctionDispatcherEOT_RKNS_6Logger17LogSiteIdentifierEEUlONSt12experimental15fundamentals_v38expectedIvS4_EEE_NS_3RefIS5_NS_12RawPtrTraitsIS5_EENS_21DefaultRefDerefTraitsIS5_EEEEJSQ_EED1Ev(void *a1, void *a2)
{
  *a1 = &unk_1F10FDC68;
  WTF::Vector<WebKit::ITPThirdPartyDataForSpecificFirstParty,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector((a1 + 9), a2);
  WTF::Vector<WebKit::ITPThirdPartyDataForSpecificFirstParty,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector((a1 + 7), v3);
  WTF::Vector<WebKit::ITPThirdPartyDataForSpecificFirstParty,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector((a1 + 5), v4);
  v6 = a1[2];
  a1[2] = 0;
  if (v6)
  {
    WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v6, v5);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZNS_13NativePromiseIvN7WebCore18PlatformMediaErrorELj0EE11whenSettledIZN6WebKit23RemoteSourceBufferProxy28sourceBufferPrivateDidAttachEONS3_25SourceBufferPrivateClient21InitializationSegmentEE3__0EEDaRNS_34GuaranteedSerialFunctionDispatcherEOT_RKNS_6Logger17LogSiteIdentifierEEUlONSt12experimental15fundamentals_v38expectedIvS4_EEE_NS_3RefIS5_NS_12RawPtrTraitsIS5_EENS_21DefaultRefDerefTraitsIS5_EEEEJSQ_EED0Ev(WTF *a1, void *a2)
{
  *a1 = &unk_1F10FDC68;
  WTF::Vector<WebKit::ITPThirdPartyDataForSpecificFirstParty,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(a1 + 72, a2);
  WTF::Vector<WebKit::ITPThirdPartyDataForSpecificFirstParty,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(a1 + 56, v3);
  WTF::Vector<WebKit::ITPThirdPartyDataForSpecificFirstParty,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(a1 + 40, v4);
  v6 = *(a1 + 2);
  *(a1 + 2) = 0;
  if (v6)
  {
    WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v6, v5);
  }

  return WTF::fastFree(a1, v5);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZNS_13NativePromiseIvN7WebCore18PlatformMediaErrorELj0EE11whenSettledIZN6WebKit23RemoteSourceBufferProxy28sourceBufferPrivateDidAttachEONS3_25SourceBufferPrivateClient21InitializationSegmentEE3__0EEDaRNS_34GuaranteedSerialFunctionDispatcherEOT_RKNS_6Logger17LogSiteIdentifierEEUlONSt12experimental15fundamentals_v38expectedIvS4_EEE_NS_3RefIS5_NS_12RawPtrTraitsIS5_EENS_21DefaultRefDerefTraitsIS5_EEEEJSQ_EE4callESQ_@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = a1[2];
  if (!v5 || (WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::LibWebRTCCodecsProxy>(&v26, v5, a1[1]), (v7 = v26) == 0))
  {
    LOBYTE(v28) = 4;
    v31 = 0;
    *&v32 = 0;
    *(&v32 + 1) = "operator()";
    *&v33 = 0;
    return WTF::NativePromise<void,WebCore::PlatformMediaError,0u>::createAndReject<WebCore::PlatformMediaError,std::enable_if<true,void>>(&v28, &v31, a3);
  }

  v8 = *(v26 + 40);
  if (v8)
  {
    WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::GPUConnectionToWebProcess>(v8, *(v26 + 32), &v25);
  }

  else
  {
    v25 = 0;
  }

  if ((*(a2 + 1) & 1) != 0 || !v25)
  {
    LOBYTE(v28) = 4;
    v31 = 0;
    *&v32 = 0;
    *(&v32 + 1) = "operator()";
    *&v33 = 0;
    result = WTF::NativePromise<void,WebCore::PlatformMediaError,0u>::createAndReject<WebCore::PlatformMediaError,std::enable_if<true,void>>(&v28, &v31, a3);
  }

  else
  {
    v9 = *(v25 + 56);
    v10 = *(v7 + 48);
    v31 = 0;
    *&v32 = 0;
    *(&v32 + 1) = "sendWithPromisedReply";
    *&v33 = 0;
    WTF::NativePromiseProducer<void,WebCore::PlatformMediaError,0u>::NativePromiseProducer<std::enable_if<true,void>>(&v28, 0, &v31);
    v11 = v28;
    if (v28)
    {
      atomic_fetch_add(v28 + 2, 1u);
      v12 = v28;
    }

    else
    {
      v12 = 0;
    }

    *a3 = v11;
    v28 = 0;
    v32 = v29;
    v33 = v30;
    v13 = WTF::fastMalloc(0x30);
    *v13 = &unk_1F10FDC90;
    *(v13 + 8) = v12;
    v31 = 0;
    v14 = v33;
    *(v13 + 16) = v32;
    *(v13 + 32) = v14;
    v27[0] = v13;
    if (WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
    {
      result = 141;
      __break(0xC471u);
      return result;
    }

    v27[1] = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
    WTF::NativePromiseProducer<void,WebCore::PlatformMediaError,0u>::~NativePromiseProducer(&v31);
    v16 = IPC::Encoder::operator new(0x238, v15);
    *v16 = 1732;
    *(v16 + 2) = 0;
    *(v16 + 3) = 0;
    *(v16 + 1) = v10;
    *(v16 + 68) = 0;
    *(v16 + 70) = 0;
    *(v16 + 69) = 0;
    IPC::Encoder::encodeHeader(v16);
    v31 = v16;
    IPC::ArgumentCoder<WebKit::InitializationSegmentInfo,void>::encode(v16, a1 + 3);
    IPC::Connection::sendMessageWithAsyncReplyWithDispatcher(v9, &v31, v27, 0, 0);
    v18 = v31;
    v31 = 0;
    if (v18)
    {
      IPC::Encoder::~Encoder(v18, v17);
      bmalloc::api::tzoneFree(v23, v24);
    }

    v19 = v27[0];
    v27[0] = 0;
    if (v19)
    {
      (*(*v19 + 8))(v19);
    }

    result = WTF::NativePromiseProducer<void,WebCore::PlatformMediaError,0u>::~NativePromiseProducer(&v28);
  }

  v22 = v25;
  v25 = 0;
  if (v22)
  {
    result = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUConnectionToWebProcess,(WTF::DestructionThread)1>::deref((v22 + 16));
  }

  if (v26)
  {
    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::SourceBufferPrivateClient,(WTF::DestructionThread)0>::deref((v26 + 8), v21);
  }

  return result;
}

uint64_t WTF::Detail::CallableWrapper<IPC::Connection::AsyncReplyHandlerWithDispatcher IPC::Connection::makeAsyncReplyHandlerWithDispatcher<WebCore::MediaPromiseConverter,Messages::SourceBufferPrivateRemoteMessageReceiver::SourceBufferPrivateDidAttach,WTF::NativePromise<void,WebCore::PlatformMediaError,0u>>(WTF::NativePromise<void,WebCore::PlatformMediaError,0u>::Producer &&)::{lambda(IPC::Connection*,std::unique_ptr<IPC::Decoder> &&)#1},void,IPC::Connection*,std::unique_ptr<IPC::Decoder> &>::~CallableWrapper(uint64_t a1)
{
  *a1 = &unk_1F10FDC90;
  WTF::NativePromiseProducer<void,WebCore::PlatformMediaError,0u>::~NativePromiseProducer((a1 + 8));
  return a1;
}

uint64_t WTF::Detail::CallableWrapper<IPC::Connection::AsyncReplyHandlerWithDispatcher IPC::Connection::makeAsyncReplyHandlerWithDispatcher<WebCore::MediaPromiseConverter,Messages::SourceBufferPrivateRemoteMessageReceiver::SourceBufferPrivateDidAttach,WTF::NativePromise<void,WebCore::PlatformMediaError,0u>>(WTF::NativePromise<void,WebCore::PlatformMediaError,0u>::Producer &&)::{lambda(IPC::Connection*,std::unique_ptr<IPC::Decoder> &&)#1},void,IPC::Connection*,std::unique_ptr<IPC::Decoder> &>::~CallableWrapper(atomic_uint **a1)
{
  *a1 = &unk_1F10FDC90;
  WTF::NativePromiseProducer<void,WebCore::PlatformMediaError,0u>::~NativePromiseProducer(a1 + 1);

  return WTF::fastFree(a1, v2);
}

uint64_t WTF::Detail::CallableWrapper<IPC::Connection::AsyncReplyHandlerWithDispatcher IPC::Connection::makeAsyncReplyHandlerWithDispatcher<WebCore::MediaPromiseConverter,Messages::SourceBufferPrivateRemoteMessageReceiver::SourceBufferPrivateDidAttach,WTF::NativePromise<void,WebCore::PlatformMediaError,0u>>(WTF::NativePromise<void,WebCore::PlatformMediaError,0u>::Producer &&)::{lambda(IPC::Connection*,std::unique_ptr<IPC::Decoder> &&)#1},void,IPC::Connection*,std::unique_ptr<IPC::Decoder> &>::call(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = *a3;
  *a3 = 0;
  v5 = WTF::fastMalloc(0x10);
  *v5 = &unk_1F10FDCB8;
  v5[1] = v4;
  v8 = v5;
  v7[0] = 0;
  v7[1] = 0;
  v7[2] = "operator()";
  v7[3] = 0;
  WTF::NativePromiseProducer<void,WebCore::PlatformMediaError,0u>::settleWithFunction<std::enable_if<true,void>>((a1 + 8), &v8, v7);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t WTF::Detail::CallableWrapper<IPC::Connection::AsyncReplyHandlerWithDispatcher IPC::Connection::makeAsyncReplyHandlerWithDispatcher<WebCore::MediaPromiseConverter,Messages::SourceBufferPrivateRemoteMessageReceiver::SourceBufferPrivateDidAttach,WTF::NativePromise<void,WebCore::PlatformMediaError,0u>>(WTF::NativePromise<void,WebCore::PlatformMediaError,0u>::Producer &&)::{lambda(IPC::Connection*,std::unique_ptr<IPC::Decoder> &&)#1}::operator()(IPC::Connection*,std::unique_ptr<IPC::Decoder> &)::{lambda(void)#1},std::experimental::fundamentals_v3::expected<void,WebCore::PlatformMediaError>>::~CallableWrapper(uint64_t a1)
{
  *a1 = &unk_1F10FDCB8;
  std::unique_ptr<IPC::Decoder>::reset[abi:sn200100]((a1 + 8), 0);
  return a1;
}

uint64_t WTF::Detail::CallableWrapper<IPC::Connection::AsyncReplyHandlerWithDispatcher IPC::Connection::makeAsyncReplyHandlerWithDispatcher<WebCore::MediaPromiseConverter,Messages::SourceBufferPrivateRemoteMessageReceiver::SourceBufferPrivateDidAttach,WTF::NativePromise<void,WebCore::PlatformMediaError,0u>>(WTF::NativePromise<void,WebCore::PlatformMediaError,0u>::Producer &&)::{lambda(IPC::Connection*,std::unique_ptr<IPC::Decoder> &&)#1}::operator()(IPC::Connection*,std::unique_ptr<IPC::Decoder> &)::{lambda(void)#1},std::experimental::fundamentals_v3::expected<void,WebCore::PlatformMediaError>>::~CallableWrapper(IPC::Decoder **a1)
{
  *a1 = &unk_1F10FDCB8;
  std::unique_ptr<IPC::Decoder>::reset[abi:sn200100](a1 + 1, 0);

  return WTF::fastFree(a1, v2);
}

uint64_t WTF::Detail::CallableWrapper<IPC::Connection::AsyncReplyHandlerWithDispatcher IPC::Connection::makeAsyncReplyHandlerWithDispatcher<WebCore::MediaPromiseConverter,Messages::SourceBufferPrivateRemoteMessageReceiver::SourceBufferPrivateDidAttach,WTF::NativePromise<void,WebCore::PlatformMediaError,0u>>(WTF::NativePromise<void,WebCore::PlatformMediaError,0u>::Producer &&)::{lambda(IPC::Connection*,std::unique_ptr<IPC::Decoder> &&)#1}::operator()(IPC::Connection*,std::unique_ptr<IPC::Decoder> &)::{lambda(void)#1},std::experimental::fundamentals_v3::expected<void,WebCore::PlatformMediaError>>::call@<X0>(uint64_t result@<X0>, __int16 *a2@<X8>)
{
  v3 = *(result + 8);
  if (v3 && *v3 && (result = IPC::Decoder::decode<std::tuple<std::experimental::fundamentals_v3::expected<void,WebCore::PlatformMediaError>>>(&v5, v3), v6 == 1))
  {
    v4 = v5;
  }

  else
  {
    v4 = 260;
  }

  *a2 = v4;
  return result;
}

void IPC::ThreadSafeObjectHeap<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebCore::VideoFrame,WTF::RawPtrTraits<WebCore::VideoFrame>,WTF::DefaultRefDerefTraits<WebCore::VideoFrame>>>::~ThreadSafeObjectHeap(void *a1, void *a2)
{
  *a1 = &unk_1F10FDCE0;
  v2 = a1[2];
  if (v2)
  {
    WTF::HashTable<IPC::ObjectIdentifierReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePair<IPC::ObjectIdentifierReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,IPC::ThreadSafeObjectHeap<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebCore::VideoFrame,WTF::RawPtrTraits<WebCore::VideoFrame>,WTF::DefaultRefDerefTraits<WebCore::VideoFrame>>>::ReferenceState>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<IPC::ObjectIdentifierReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,IPC::ThreadSafeObjectHeap<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebCore::VideoFrame,WTF::RawPtrTraits<WebCore::VideoFrame>,WTF::DefaultRefDerefTraits<WebCore::VideoFrame>>>::ReferenceState>>,WTF::DefaultHash<IPC::ObjectIdentifierReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashMap<IPC::ObjectIdentifierReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,IPC::ThreadSafeObjectHeap<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebCore::VideoFrame,WTF::RawPtrTraits<WebCore::VideoFrame>,WTF::DefaultRefDerefTraits<WebCore::VideoFrame>>>::ReferenceState,WTF::DefaultHash<IPC::ObjectIdentifierReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<IPC::ObjectIdentifierReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<IPC::ThreadSafeObjectHeap<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebCore::VideoFrame,WTF::RawPtrTraits<WebCore::VideoFrame>,WTF::DefaultRefDerefTraits<WebCore::VideoFrame>>>::ReferenceState>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<IPC::ObjectIdentifierReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::deallocateTable(v2, a2);
  }

  JUMPOUT(0x19EB14CF0);
}

IPC::Semaphore **std::unique_ptr<IPC::Semaphore>::reset[abi:sn200100](IPC::Semaphore **result, IPC::Semaphore *a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    IPC::Semaphore::destroy(v2);
    WTF::MachSendRight::~MachSendRight(v2);

    return bmalloc::api::tzoneFree(v3, v4);
  }

  return result;
}

uint64_t WTF::HashTable<IPC::ObjectIdentifierReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePair<IPC::ObjectIdentifierReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,IPC::ThreadSafeObjectHeap<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebCore::VideoFrame,WTF::RawPtrTraits<WebCore::VideoFrame>,WTF::DefaultRefDerefTraits<WebCore::VideoFrame>>>::ReferenceState>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<IPC::ObjectIdentifierReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,IPC::ThreadSafeObjectHeap<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebCore::VideoFrame,WTF::RawPtrTraits<WebCore::VideoFrame>,WTF::DefaultRefDerefTraits<WebCore::VideoFrame>>>::ReferenceState>>,WTF::DefaultHash<IPC::ObjectIdentifierReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashMap<IPC::ObjectIdentifierReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,IPC::ThreadSafeObjectHeap<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebCore::VideoFrame,WTF::RawPtrTraits<WebCore::VideoFrame>,WTF::DefaultRefDerefTraits<WebCore::VideoFrame>>>::ReferenceState,WTF::DefaultHash<IPC::ObjectIdentifierReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<IPC::ObjectIdentifierReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<IPC::ThreadSafeObjectHeap<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebCore::VideoFrame,WTF::RawPtrTraits<WebCore::VideoFrame>,WTF::DefaultRefDerefTraits<WebCore::VideoFrame>>>::ReferenceState>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<IPC::ObjectIdentifierReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::deallocateTable(uint64_t a1, void *a2)
{
  v3 = *(a1 - 4);
  if (v3)
  {
    v4 = a1 + 40;
    do
    {
      if (*(v4 - 40) != -1)
      {
        v4 = std::__optional_destruct_base<WTF::RefPtr<WebCore::VideoFrame,WTF::RawPtrTraits<WebCore::VideoFrame>,WTF::DefaultRefDerefTraits<WebCore::VideoFrame>>,false>::~__optional_destruct_base[abi:sn200100](v4);
      }

      v4 += 56;
      --v3;
    }

    while (v3);
  }

  return WTF::fastFree((a1 - 16), a2);
}

uint64_t std::__optional_destruct_base<WTF::RefPtr<WebCore::VideoFrame,WTF::RawPtrTraits<WebCore::VideoFrame>,WTF::DefaultRefDerefTraits<WebCore::VideoFrame>>,false>::~__optional_destruct_base[abi:sn200100](uint64_t a1)
{
  if (*(a1 + 8) == 1)
  {
    v2 = *a1;
    *a1 = 0;
    if (v2)
    {
      if (atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v2 + 2);
        (*(*v2 + 8))(v2);
      }
    }
  }

  return a1;
}

void _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_10assignmentINS0_6traitsIJDnN3IPC29ObjectIdentifierReadReferenceIN3WTF23ObjectIdentifierGenericIN6WebKit30RemoteVideoFrameIdentifierTypeENS8_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEEEENS8_13MachSendRightEN7WebCore7IntSizeEEEEE14generic_assignINS0_15move_assignmentISJ_LNS0_5TraitE1EEEEEvOT_EUlRSP_OT0_E_JRSK_SO_EEEDcmSQ_DpOT0_(uint64_t a1, WTF::MachSendRight **a2, void *a3, WTF::MachSendRight *a4)
{
  v6 = *a2;
  v7 = *(*a2 + 16);
  if (a1 > 1)
  {
    if (a1 == 2)
    {
      if (v7 == 2)
      {

        WTF::MachSendRight::operator=();
      }

      else
      {
        v9[0] = *a2;
        v9[1] = a4;
        mpark::detail::assignment<mpark::detail::traits<decltype(nullptr),IPC::ObjectIdentifierReadReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::MachSendRight,WebCore::IntSize>>::assign_alt<2ul,WTF::MachSendRight,WTF::MachSendRight>(mpark::detail::alt<2ul,WTF::MachSendRight> &,WTF::MachSendRight &&)::{unnamed type#1}::operator()(v9);
      }

      return;
    }

    if (v7 == 2)
    {
      WTF::MachSendRight::~MachSendRight(v6);
    }

    else if (v7 == 3)
    {
      *a3 = *a4;
      return;
    }

    *(v6 + 16) = -1;
    *v6 = *a4;
    v8 = 3;
LABEL_24:
    *(v6 + 16) = v8;
    return;
  }

  if (a1)
  {
    if (v7 == 2)
    {
      WTF::MachSendRight::~MachSendRight(v6);
    }

    else if (v7 == 1)
    {
      *a3 = *a4;
      return;
    }

    *(v6 + 16) = -1;
    *v6 = *a4;
    v8 = 1;
    goto LABEL_24;
  }

  if (v7 == 2)
  {
    WTF::MachSendRight::~MachSendRight(v6);
  }

  else if (!*(*a2 + 16))
  {
    *a3 = 0;
    return;
  }

  *v6 = 0;
  *(v6 + 16) = 0;
}

uint64_t mpark::detail::assignment<mpark::detail::traits<decltype(nullptr),IPC::ObjectIdentifierReadReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::MachSendRight,WebCore::IntSize>>::assign_alt<2ul,WTF::MachSendRight,WTF::MachSendRight>(mpark::detail::alt<2ul,WTF::MachSendRight> &,WTF::MachSendRight &&)::{unnamed type#1}::operator()(WTF::MachSendRight **a1)
{
  v1 = *a1;
  if (*(v1 + 16) == 2)
  {
    WTF::MachSendRight::~MachSendRight(v1);
  }

  *(v1 + 16) = -1;
  result = WTF::MachSendRight::MachSendRight();
  *(result + 16) = 2;
  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::RemoteMediaResourceManager::~RemoteMediaResourceManager()::$_0,void>::~CallableWrapper(void *a1, void *a2)
{
  *a1 = &unk_1F10FDD00;
  v3 = a1[1];
  if (v3)
  {
    WTF::HashTable<unsigned long long,WTF::KeyValuePair<unsigned long long,WTF::ThreadSafeWeakPtr<WebKit::NetworkDataTaskCocoa,WTF::NoTaggingTraits<WebKit::NetworkDataTaskCocoa>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<unsigned long long,WTF::ThreadSafeWeakPtr<WebKit::NetworkDataTaskCocoa,WTF::NoTaggingTraits<WebKit::NetworkDataTaskCocoa>>>>,WTF::DefaultHash<unsigned long long>,WTF::HashMap<unsigned long long,WTF::ThreadSafeWeakPtr<WebKit::NetworkDataTaskCocoa,WTF::NoTaggingTraits<WebKit::NetworkDataTaskCocoa>>,WTF::DefaultHash<unsigned long long>,WTF::HashTraits<unsigned long long>,WTF::HashTraits<WTF::ThreadSafeWeakPtr<WebKit::NetworkDataTaskCocoa,WTF::NoTaggingTraits<WebKit::NetworkDataTaskCocoa>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<unsigned long long>,WTF::FastMalloc>::deallocateTable(v3, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::RemoteMediaResourceManager::~RemoteMediaResourceManager()::$_0,void>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F10FDD00;
  v3 = *(this + 1);
  if (v3)
  {
    WTF::HashTable<unsigned long long,WTF::KeyValuePair<unsigned long long,WTF::ThreadSafeWeakPtr<WebKit::NetworkDataTaskCocoa,WTF::NoTaggingTraits<WebKit::NetworkDataTaskCocoa>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<unsigned long long,WTF::ThreadSafeWeakPtr<WebKit::NetworkDataTaskCocoa,WTF::NoTaggingTraits<WebKit::NetworkDataTaskCocoa>>>>,WTF::DefaultHash<unsigned long long>,WTF::HashMap<unsigned long long,WTF::ThreadSafeWeakPtr<WebKit::NetworkDataTaskCocoa,WTF::NoTaggingTraits<WebKit::NetworkDataTaskCocoa>>,WTF::DefaultHash<unsigned long long>,WTF::HashTraits<unsigned long long>,WTF::HashTraits<WTF::ThreadSafeWeakPtr<WebKit::NetworkDataTaskCocoa,WTF::NoTaggingTraits<WebKit::NetworkDataTaskCocoa>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<unsigned long long>,WTF::FastMalloc>::deallocateTable(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

void *WTF::Detail::CallableWrapper<WebKit::RemoteMediaResourceManager::~RemoteMediaResourceManager()::$_0,void>::call(void *result)
{
  v1 = result[1];
  if (v1)
  {
    v2 = *(v1 - 4);
    v3 = (v1 + 24 * v2);
    if (*(v1 - 12))
    {
      if (v2)
      {
        v4 = 24 * v2;
        v5 = result[1];
        while ((*v5 + 1) <= 1)
        {
          v5 += 3;
          v4 -= 24;
          if (!v4)
          {
            v5 = v3;
            goto LABEL_13;
          }
        }
      }

      else
      {
        v5 = result[1];
      }

      goto LABEL_13;
    }
  }

  else
  {
    v3 = 0;
    LODWORD(v2) = 0;
  }

  v5 = v3;
  v3 = (v1 + 24 * v2);
  if (!v1)
  {
    v6 = 0;
    goto LABEL_14;
  }

LABEL_13:
  v6 = (v1 + 24 * *(v1 - 4));
LABEL_14:
  while (v5 != v6)
  {
    v7 = v5[2];
    if (v7)
    {
      result = WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::LibWebRTCCodecsProxy>(&v10, v7, v5[1]);
      v8 = v10;
      if (v10)
      {
        WebKit::RemoteMediaResource::shutdown(v10);
        result = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::PlatformMediaResource,(WTF::DestructionThread)0>::deref(v8 + 1, v9);
      }
    }

    do
    {
      v5 += 3;
    }

    while (v5 != v3 && (*v5 + 1) <= 1);
  }

  return result;
}

uint64_t *WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaResourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaResourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ThreadSafeWeakPtr<WebKit::RemoteMediaResource,WTF::NoTaggingTraits<WebKit::RemoteMediaResource>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaResourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ThreadSafeWeakPtr<WebKit::RemoteMediaResource,WTF::NoTaggingTraits<WebKit::RemoteMediaResource>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaResourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaResourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ThreadSafeWeakPtr<WebKit::RemoteMediaResource,WTF::NoTaggingTraits<WebKit::RemoteMediaResource>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaResourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaResourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ThreadSafeWeakPtr<WebKit::RemoteMediaResource,WTF::NoTaggingTraits<WebKit::RemoteMediaResource>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaResourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(uint64_t *a1, uint64_t *a2)
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

  return WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaResourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaResourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ThreadSafeWeakPtr<WebKit::RemoteMediaResource,WTF::NoTaggingTraits<WebKit::RemoteMediaResource>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaResourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ThreadSafeWeakPtr<WebKit::RemoteMediaResource,WTF::NoTaggingTraits<WebKit::RemoteMediaResource>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaResourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaResourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ThreadSafeWeakPtr<WebKit::RemoteMediaResource,WTF::NoTaggingTraits<WebKit::RemoteMediaResource>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaResourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaResourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ThreadSafeWeakPtr<WebKit::RemoteMediaResource,WTF::NoTaggingTraits<WebKit::RemoteMediaResource>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaResourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(a1, v5, a2);
}

uint64_t *WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaResourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaResourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ThreadSafeWeakPtr<WebKit::RemoteMediaResource,WTF::NoTaggingTraits<WebKit::RemoteMediaResource>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaResourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ThreadSafeWeakPtr<WebKit::RemoteMediaResource,WTF::NoTaggingTraits<WebKit::RemoteMediaResource>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaResourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaResourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ThreadSafeWeakPtr<WebKit::RemoteMediaResource,WTF::NoTaggingTraits<WebKit::RemoteMediaResource>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaResourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaResourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ThreadSafeWeakPtr<WebKit::RemoteMediaResource,WTF::NoTaggingTraits<WebKit::RemoteMediaResource>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaResourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(uint64_t *a1, unsigned int a2, uint64_t *a3)
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
      if (*v15 != -1)
      {
        if (v16)
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

          v20 = (v16 + ~(v16 << 32)) ^ ((v16 + ~(v16 << 32)) >> 22);
          v21 = 9 * ((v20 + ~(v20 << 13)) ^ ((v20 + ~(v20 << 13)) >> 8));
          v22 = (v21 ^ (v21 >> 15)) + ~((v21 ^ (v21 >> 15)) << 27);
          v23 = v19 & ((v22 >> 31) ^ v22);
          v24 = 1;
          do
          {
            v25 = (v18 + 24 * v23);
            v23 = (v23 + v24++) & v19;
          }

          while (*v25);
          v26 = v25[2];
          v25[2] = 0;
          if (v26)
          {
            WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v26, v10);
          }

          *v25 = *v15;
          v27 = v15[1];
          v15[1] = 0;
          v25[1] = v27;
          v25[2] = v15[2];
          v15[2] = 0;
          if (v15 == a3)
          {
            v14 = v25;
          }
        }

        else
        {
          v17 = v15[2];
          v15[2] = 0;
          if (v17)
          {
            WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v17, v10);
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

atomic_uchar *WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaResourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaResourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ThreadSafeWeakPtr<WebKit::RemoteMediaResource,WTF::NoTaggingTraits<WebKit::RemoteMediaResource>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaResourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ThreadSafeWeakPtr<WebKit::RemoteMediaResource,WTF::NoTaggingTraits<WebKit::RemoteMediaResource>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaResourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaResourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ThreadSafeWeakPtr<WebKit::RemoteMediaResource,WTF::NoTaggingTraits<WebKit::RemoteMediaResource>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaResourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaResourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ThreadSafeWeakPtr<WebKit::RemoteMediaResource,WTF::NoTaggingTraits<WebKit::RemoteMediaResource>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaResourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::remove(uint64_t *a1, void *a2)
{
  *a2 = -1;
  result = a2[2];
  a2[2] = 0;
  if (result)
  {
    result = WTF::ThreadSafeWeakPtrControlBlock::weakDeref(result, a2);
  }

  v4 = *a1;
  v5 = vadd_s32(*(*a1 - 16), 0xFFFFFFFF00000001);
  *(v4 - 16) = v5;
  v6 = *(v4 - 4);
  if (6 * v5.i32[1] < v6 && v6 >= 9)
  {

    return WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaResourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaResourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ThreadSafeWeakPtr<WebKit::RemoteMediaResource,WTF::NoTaggingTraits<WebKit::RemoteMediaResource>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaResourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ThreadSafeWeakPtr<WebKit::RemoteMediaResource,WTF::NoTaggingTraits<WebKit::RemoteMediaResource>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaResourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaResourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ThreadSafeWeakPtr<WebKit::RemoteMediaResource,WTF::NoTaggingTraits<WebKit::RemoteMediaResource>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaResourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaResourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ThreadSafeWeakPtr<WebKit::RemoteMediaResource,WTF::NoTaggingTraits<WebKit::RemoteMediaResource>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaResourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(a1, v6 >> 1, 0);
  }

  return result;
}

uint64_t *WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaResourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaResourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ThreadSafeWeakPtr<WebKit::RemoteMediaResource,WTF::NoTaggingTraits<WebKit::RemoteMediaResource>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaResourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ThreadSafeWeakPtr<WebKit::RemoteMediaResource,WTF::NoTaggingTraits<WebKit::RemoteMediaResource>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaResourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaResourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ThreadSafeWeakPtr<WebKit::RemoteMediaResource,WTF::NoTaggingTraits<WebKit::RemoteMediaResource>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaResourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaResourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ThreadSafeWeakPtr<WebKit::RemoteMediaResource,WTF::NoTaggingTraits<WebKit::RemoteMediaResource>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaResourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaResourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ThreadSafeWeakPtr<WebKit::RemoteMediaResource,WTF::NoTaggingTraits<WebKit::RemoteMediaResource>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaResourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaResourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ThreadSafeWeakPtr<WebKit::RemoteMediaResource,WTF::NoTaggingTraits<WebKit::RemoteMediaResource>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaResourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaResourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(uint64_t *a1, uint64_t *a2)
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
    JUMPOUT(0x19DBE0E68);
  }

  v4 = *(v2 - 8);
  v5 = (v3 + ~(v3 << 32)) ^ ((v3 + ~(v3 << 32)) >> 22);
  v6 = 9 * ((v5 + ~(v5 << 13)) ^ ((v5 + ~(v5 << 13)) >> 8));
  v7 = (v6 ^ (v6 >> 15)) + ~((v6 ^ (v6 >> 15)) << 27);
  v8 = v4 & ((v7 >> 31) ^ v7);
  result = (v2 + 24 * v8);
  v10 = *result;
  if (*result != v3)
  {
    v11 = 1;
    while (v10)
    {
      v8 = (v8 + v11) & v4;
      result = (v2 + 24 * v8);
      v10 = *result;
      ++v11;
      if (*result == v3)
      {
        return result;
      }
    }

    return (v2 + 24 * *(v2 - 4));
  }

  return result;
}

atomic_uchar **WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::MediaSourcePrivate,(WTF::DestructionThread)0>::deref(atomic_uchar **result, void *a2)
{
  do
  {
    v2 = *result;
    if ((*result & 1) == 0)
    {
      return WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebCore::MediaSourcePrivate,(WTF::DestructionThread)0>(*result, a2);
    }

    v3 = *result;
    atomic_compare_exchange_strong_explicit(result, &v3, (v2 - 2), memory_order_relaxed, memory_order_relaxed);
  }

  while (v3 != v2);
  if (v2 == 3)
  {
    return (*(*(result - 1) + 1))();
  }

  return result;
}

uint64_t WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebCore::MediaSourcePrivate,(WTF::DestructionThread)0>(atomic_uchar *this, void *a2)
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

uint64_t WTF::NativePromiseProducer<WTF::MediaTime,WebCore::PlatformMediaError,0u>::NativePromiseProducer<std::enable_if<true,void>>(uint64_t a1, unsigned __int8 a2, WTF::Logger::LogSiteIdentifier *a3)
{
  v6 = WTF::fastMalloc(0x88);
  v7 = WTF::NativePromise<WTF::MediaTime,WebCore::PlatformMediaError,0u>::NativePromise(v6, a3);
  *a1 = v7;
  v8 = *a3;
  *(a1 + 24) = *(a3 + 1);
  *(a1 + 8) = v8;
  v9 = (v7 + 8);
  atomic_fetch_add((v7 + 8), 1u);
  WTF::NativePromise<WTF::MediaTime,WebCore::PlatformMediaError,0u>::setDispatchMode(v7, a2, a3);
  if (atomic_fetch_add(v9, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v9);
    (*(*v6 + 16))(v6);
  }

  return a1;
}

WTF::StringImpl *WTF::NativePromise<WTF::MediaTime,WebCore::PlatformMediaError,0u>::setDispatchMode(atomic_uchar *a1, unsigned __int8 a2, WTF::Logger::LogSiteIdentifier *a3)
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
    result = WTF::Logger::log<WTF::Logger::LogSiteIdentifier,char [12],WTF::NativePromise<void,WebCore::PlatformMediaError,0u>>(result, 4u, a3, " runSynchronouslyOnTarget ", v5);
  }

  atomic_store(a2, (v5 + 129));
  v10 = 1;
  atomic_compare_exchange_strong_explicit((v5 + 48), &v10, 0, memory_order_release, memory_order_relaxed);
  if (v10 != 1)
  {

    return WTF::Lock::unlockSlow(v7);
  }

  return result;
}

uint64_t WTF::NativePromise<WTF::MediaTime,WebCore::PlatformMediaError,0u>::NativePromise(uint64_t a1, _OWORD *a2)
{
  *(a1 + 8) = 1;
  *a1 = &unk_1F10FDFA8;
  v3 = a2[1];
  *(a1 + 16) = *a2;
  *(a1 + 32) = v3;
  *(a1 + 48) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = a1 + 104;
  *(a1 + 96) = 1;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  v4 = WTF::NativePromiseBase::logChannel(a1);
  if (*v4 && v4[16] >= 4u)
  {
    WTF::Logger::log<char [10],WTF::NativePromise<void,WebCore::PlatformMediaError,0u>>(v4, 4, "creating ", a1);
  }

  return a1;
}

uint64_t WTF::NativePromise<WTF::MediaTime,WebCore::PlatformMediaError,0u>::assertIsDead(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = (result + 48);
  atomic_compare_exchange_strong_explicit((result + 48), &v2, 1u, memory_order_acquire, memory_order_acquire);
  if (v2)
  {
    result = MEMORY[0x19EB01E30](result + 48);
  }

  v4 = *(v1 + 124);
  if (v4)
  {
    v5 = *(v1 + 112);
    v6 = 40 * v4;
    do
    {
      result = WTF::NativePromiseProducer<WTF::MediaTime,WebCore::PlatformMediaError,0u>::assertIsDead(v5);
      v5 += 40;
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

uint64_t WTF::NativePromise<WTF::MediaTime,WebCore::PlatformMediaError,0u>::~NativePromise(uint64_t a1)
{
  v1 = WTF::NativePromise<WTF::MediaTime,WebCore::PlatformMediaError,0u>::~NativePromise(a1);

  return WTF::fastFree(v1, v2);
}

{
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
    WTF::Logger::log<char [10],WTF::NativePromise<void,WebCore::PlatformMediaError,0u>>(v2, 4, "destroying ", a1);
  }

  WTF::NativePromise<WTF::MediaTime,WebCore::PlatformMediaError,0u>::assertIsDead(a1);
  WTF::Vector<WTF::NativePromiseProducer<WTF::MediaTime,WebCore::PlatformMediaError,0u>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(a1 + 112, v4);
  WTF::Vector<WTF::Ref<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase,WTF::RawPtrTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>,WTF::DefaultRefDerefTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>>,1ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(a1 + 88, v5);
  v6 = *(a1 + 80);
  if (v6 >= 2 && v6 != 255)
  {
    v7 = *(a1 + 56);
    *(a1 + 56) = 0;
    if (v7)
    {
      (*(*v7 + 8))(v7);
    }
  }

  *(a1 + 80) = -1;
  return a1;
}

atomic_uint **WTF::NativePromiseProducer<WTF::MediaTime,WebCore::PlatformMediaError,0u>::assertIsDead(atomic_uint **result)
{
  v1 = *result;
  if (*result)
  {
    atomic_fetch_add(v1 + 2, 1u);
    result = WTF::NativePromise<WTF::MediaTime,WebCore::PlatformMediaError,0u>::assertIsDead(v1);
    if (atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v1 + 2);
      v2 = *(*v1 + 16);

      return v2(v1);
    }
  }

  return result;
}

uint64_t WTF::Vector<WTF::NativePromiseProducer<WTF::MediaTime,WebCore::PlatformMediaError,0u>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, void *a2)
{
  v3 = *(a1 + 12);
  if (v3)
  {
    v4 = *a1;
    v5 = 40 * v3;
    do
    {
      v4 = WTF::NativePromiseProducer<WTF::MediaTime,WebCore::PlatformMediaError,0u>::~NativePromiseProducer(v4) + 5;
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

uint64_t WTF::Detail::CallableWrapper<IPC::Connection::AsyncReplyHandlerWithDispatcher IPC::Connection::makeAsyncReplyHandlerWithDispatcher<WebCore::MediaPromiseConverter,Messages::MediaSourcePrivateRemoteMessageReceiver::ProxyWaitForTarget,WTF::NativePromise<WTF::MediaTime,WebCore::PlatformMediaError,0u>>(WTF::NativePromise<WTF::MediaTime,WebCore::PlatformMediaError,0u>::Producer &&)::{lambda(IPC::Connection*,std::unique_ptr<IPC::Decoder> &&)#1},void,IPC::Connection*,std::unique_ptr<IPC::Decoder> &>::~CallableWrapper(uint64_t a1)
{
  *a1 = &unk_1F10FDD28;
  WTF::NativePromiseProducer<WTF::MediaTime,WebCore::PlatformMediaError,0u>::~NativePromiseProducer((a1 + 8));
  return a1;
}

uint64_t WTF::Detail::CallableWrapper<IPC::Connection::AsyncReplyHandlerWithDispatcher IPC::Connection::makeAsyncReplyHandlerWithDispatcher<WebCore::MediaPromiseConverter,Messages::MediaSourcePrivateRemoteMessageReceiver::ProxyWaitForTarget,WTF::NativePromise<WTF::MediaTime,WebCore::PlatformMediaError,0u>>(WTF::NativePromise<WTF::MediaTime,WebCore::PlatformMediaError,0u>::Producer &&)::{lambda(IPC::Connection*,std::unique_ptr<IPC::Decoder> &&)#1},void,IPC::Connection*,std::unique_ptr<IPC::Decoder> &>::~CallableWrapper(atomic_uint **a1)
{
  *a1 = &unk_1F10FDD28;
  WTF::NativePromiseProducer<WTF::MediaTime,WebCore::PlatformMediaError,0u>::~NativePromiseProducer(a1 + 1);

  return WTF::fastFree(a1, v2);
}

uint64_t WTF::Detail::CallableWrapper<IPC::Connection::AsyncReplyHandlerWithDispatcher IPC::Connection::makeAsyncReplyHandlerWithDispatcher<WebCore::MediaPromiseConverter,Messages::MediaSourcePrivateRemoteMessageReceiver::ProxyWaitForTarget,WTF::NativePromise<WTF::MediaTime,WebCore::PlatformMediaError,0u>>(WTF::NativePromise<WTF::MediaTime,WebCore::PlatformMediaError,0u>::Producer &&)::{lambda(IPC::Connection*,std::unique_ptr<IPC::Decoder> &&)#1},void,IPC::Connection*,std::unique_ptr<IPC::Decoder> &>::call(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = *a3;
  *a3 = 0;
  v5 = WTF::fastMalloc(0x10);
  *v5 = &unk_1F10FDD50;
  v5[1] = v4;
  v8 = v5;
  v7[0] = 0;
  v7[1] = 0;
  v7[2] = "operator()";
  v7[3] = 0;
  WTF::NativePromiseProducer<WTF::MediaTime,WebCore::PlatformMediaError,0u>::settleWithFunction<std::enable_if<true,void>>((a1 + 8), &v8, v7);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

WTF::Lock *WTF::NativePromiseProducer<WTF::MediaTime,WebCore::PlatformMediaError,0u>::settleWithFunction<std::enable_if<true,void>>(atomic_uint **a1, uint64_t *a2, WTF::Logger::LogSiteIdentifier *a3)
{
  isNothing = WTF::NativePromiseProducer<WTF::MediaTime,WebCore::PlatformMediaError,0u>::isNothing(a1);
  v7 = *a1;
  if (isNothing)
  {
    if (v7)
    {
      atomic_fetch_add(v7 + 2, 1u);
      result = WTF::NativePromise<WTF::MediaTime,WebCore::PlatformMediaError,0u>::settleWithFunction(v7, a2, a3);
      if (atomic_fetch_add(v7 + 2, 0xFFFFFFFF) != 1)
      {
        return result;
      }

      goto LABEL_16;
    }

    return WTF::NativePromise<WTF::MediaTime,WebCore::PlatformMediaError,0u>::settleWithFunction(0, a2, a3);
  }

  else
  {
    if (v7)
    {
      atomic_fetch_add(v7 + 2, 1u);
    }

    result = WTF::NativePromiseBase::logChannel(isNothing);
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
      result = WTF::Logger::log<WTF::Logger::LogSiteIdentifier,char [12],WTF::NativePromise<void,WebCore::PlatformMediaError,0u>>(result, 4u, a3, " ignored already resolved or rejected ", v7);
    }

    if (v7 && atomic_fetch_add(v7 + 2, 0xFFFFFFFF) == 1)
    {
LABEL_16:
      atomic_store(1u, v7 + 2);
      v10 = *(*v7 + 16);

      return v10(v7);
    }
  }

  return result;
}

BOOL WTF::NativePromiseProducer<WTF::MediaTime,WebCore::PlatformMediaError,0u>::isNothing(atomic_uint **a1)
{
  v1 = *a1;
  if (!*a1)
  {
    return 0;
  }

  atomic_fetch_add(v1 + 2, 1u);
  v2 = !WTF::NativePromise<WTF::MediaTime,WebCore::PlatformMediaError,0u>::isSettled(v1);
  if (atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v1 + 2);
    (*(*v1 + 16))(v1);
  }

  return v2;
}

WTF::Lock *WTF::NativePromise<WTF::MediaTime,WebCore::PlatformMediaError,0u>::settleWithFunction(uint64_t a1, uint64_t *a2, WTF::Logger::LogSiteIdentifier *a3)
{
  v6 = 0;
  v7 = (a1 + 48);
  v12 = v7;
  v13 = 1;
  atomic_compare_exchange_strong_explicit(v7, &v6, 1u, memory_order_acquire, memory_order_acquire);
  if (v6)
  {
    v7 = MEMORY[0x19EB01E30]();
  }

  v8 = WTF::NativePromiseBase::logChannel(v7);
  if (*v8)
  {
    v9 = v8[16] >= 4u;
  }

  else
  {
    v9 = 0;
  }

  if (v9)
  {
    WTF::Logger::log<WTF::Logger::LogSiteIdentifier,char [12],WTF::NativePromise<void,WebCore::PlatformMediaError,0u>>(v8, 4u, a3, " settling ", a1);
  }

  WTF::NativePromise<WTF::MediaTime,WebCore::PlatformMediaError,0u>::Storage::emplace<WTF::Function<std::experimental::fundamentals_v3::expected<WTF::MediaTime,WebCore::PlatformMediaError> ()(void)>>((a1 + 56), a2);
  result = WTF::NativePromise<WTF::MediaTime,WebCore::PlatformMediaError,0u>::dispatchAll(a1, &v12);
  v11 = v13;
  if (v13 == 1)
  {
    result = v12;
    atomic_compare_exchange_strong_explicit(v12, &v11, 0, memory_order_release, memory_order_relaxed);
    if (v11 != 1)
    {
      return WTF::Lock::unlockSlow(result);
    }
  }

  return result;
}

BOOL WTF::NativePromise<WTF::MediaTime,WebCore::PlatformMediaError,0u>::isSettled(uint64_t a1)
{
  v2 = 0;
  v3 = (a1 + 48);
  v4 = 1;
  atomic_compare_exchange_strong_explicit((a1 + 48), &v2, 1u, memory_order_acquire, memory_order_acquire);
  if (v2)
  {
    MEMORY[0x19EB01E30](a1 + 48);
  }

  v5 = *(a1 + 80);
  atomic_compare_exchange_strong_explicit(v3, &v4, 0, memory_order_release, memory_order_relaxed);
  if (v4 != 1)
  {
    WTF::Lock::unlockSlow(v3);
  }

  return v5 != 0;
}

unsigned __int8 *WTF::NativePromise<WTF::MediaTime,WebCore::PlatformMediaError,0u>::Storage::emplace<WTF::Function<std::experimental::fundamentals_v3::expected<WTF::MediaTime,WebCore::PlatformMediaError> ()(void)>>(unsigned __int8 *result, uint64_t *a2)
{
  v3 = result;
  v4 = result[24];
  if (v4 >= 2 && v4 != 255)
  {
    result = *result;
    *v3 = 0;
    if (result)
    {
      result = (*(*result + 8))(result);
    }
  }

  v5 = *a2;
  *a2 = 0;
  *v3 = v5;
  v3[24] = 2;
  return result;
}

uint64_t WTF::NativePromise<WTF::MediaTime,WebCore::PlatformMediaError,0u>::dispatchAll(uint64_t a1, atomic_uchar *volatile *a2)
{
  v18 = &v20;
  v19 = 1;
  __dst = &v23;
  v22 = 1;
  WTF::VectorBuffer<WTF::Ref<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase,WTF::RawPtrTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>,WTF::DefaultRefDerefTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>>,1ul,WTF::FastMalloc>::adopt(&__dst, (a1 + 88));
  v4 = *(a1 + 100);
  if (v4)
  {
    WTF::VectorDestructor<true,WTF::Ref<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase,WTF::RawPtrTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>,WTF::DefaultRefDerefTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>>>::destruct(*(a1 + 88), (*(a1 + 88) + 8 * v4));
  }

  WTF::VectorBuffer<WTF::Ref<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase,WTF::RawPtrTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>,WTF::DefaultRefDerefTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>>,1ul,WTF::FastMalloc>::adopt((a1 + 88), &v18);
  WTF::Vector<WTF::Ref<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase,WTF::RawPtrTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>,WTF::DefaultRefDerefTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>>,1ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v18, v5);
  *&v6 = 0;
  v7 = *(a1 + 112);
  v18 = v7;
  v8 = *(a1 + 124);
  LODWORD(v19) = *(a1 + 120);
  HIDWORD(v19) = v8;
  v17 = v6;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  WTF::Vector<WTF::NativePromiseProducer<WTF::MediaTime,WebCore::PlatformMediaError,0u>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v17, v9);
  if (HIDWORD(v22))
  {
    v11 = __dst;
    v12 = 8 * HIDWORD(v22);
    do
    {
      v13 = *v11++;
      WTF::NativePromise<WTF::MediaTime,WebCore::PlatformMediaError,0u>::ThenCallbackBase::dispatch(v13, a1, a2);
      v12 -= 8;
    }

    while (v12);
  }

  if (v8)
  {
    v14 = 40 * v8;
    do
    {
      WTF::NativePromise<WTF::MediaTime,WebCore::PlatformMediaError,0u>::settleChainedPromise(a1, v7);
      v7 += 40;
      v14 -= 40;
    }

    while (v14);
  }

  WTF::Vector<WTF::NativePromiseProducer<WTF::MediaTime,WebCore::PlatformMediaError,0u>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v18, v10);
  return WTF::Vector<WTF::Ref<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase,WTF::RawPtrTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>,WTF::DefaultRefDerefTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>>,1ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&__dst, v15);
}

unsigned __int8 *WTF::NativePromise<WTF::MediaTime,WebCore::PlatformMediaError,0u>::ThenCallbackBase::dispatch(WTF::NativePromiseBase *a1, uint64_t a2, atomic_uchar *volatile *a3)
{
  v5 = a1;
  if (!*(a1 + 2) || (v6 = atomic_load((a2 + 129)), v6 == 1) && (a1 = (*(**(a1 + 2) + 24))(*(a1 + 2)), a1))
  {
    if (*(v5 + 56) == 1)
    {
      v16[0] = v5;
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
        return WTF::Logger::log<char [32],WTF::NativePromise<void,WebCore::PlatformMediaError,0u>,char [21],void const*,char [11],WTF::Logger::LogSiteIdentifier,char [2]>(result, 4u, "ThenCallback disconnected from ", a2, " aborting [callback:", v16, " callSite:", (v5 + 24), "]");
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

      if (WTF::NativePromise<WTF::MediaTime,WebCore::PlatformMediaError,0u>::hasRunnable(a2))
      {
        WTF::NativePromise<WTF::MediaTime,WebCore::PlatformMediaError,0u>::takeResultRunnable(a2, &v15);
        (*(*v15 + 16))(v16);
        (*(*v5 + 24))(v5, a2, v16);
        v13 = v15;
        v15 = 0;
        if (v13)
        {
          (*(*v13 + 8))(v13);
        }
      }

      else
      {
        WTF::NativePromise<WTF::MediaTime,WebCore::PlatformMediaError,0u>::takeResult(a2, v16);
        (*(*v5 + 24))(v5, a2, v16);
      }

      v14 = 0;
      result = *a3;
      atomic_compare_exchange_strong_explicit(*a3, &v14, 1u, memory_order_acquire, memory_order_acquire);
      if (v14)
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
    *v8 = &unk_1F10FDFD0;
    v8[1] = v5;
    v8[2] = a2;
    v16[0] = v8;
    (*(*v7 + 16))(v7, v16);
    result = v16[0];
    v16[0] = 0;
    if (result)
    {
      return (*(*result + 8))(result);
    }
  }

  return result;
}

atomic_uint **WTF::NativePromise<WTF::MediaTime,WebCore::PlatformMediaError,0u>::settleChainedPromise(uint64_t a1, uint64_t a2)
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
    WTF::NativePromise<WTF::MediaTime,WebCore::PlatformMediaError,0u>::settleAsChainedPromise<WTF::NativePromise<WTF::MediaTime,WebCore::PlatformMediaError,0u>::Storage>(v2, (a1 + 56), &v5);
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
    WTF::NativePromise<WTF::MediaTime,WebCore::PlatformMediaError,0u>::settleAsChainedPromise<WTF::NativePromise<WTF::MediaTime,WebCore::PlatformMediaError,0u>::Storage>(0, (a1 + 56), &v5);
  }

  return WTF::NativePromiseProducer<WTF::MediaTime,WebCore::PlatformMediaError,0u>::~NativePromiseProducer(&v9);
}

BOOL WTF::NativePromise<WTF::MediaTime,WebCore::PlatformMediaError,0u>::hasRunnable(uint64_t a1)
{
  v2 = 0;
  v3 = (a1 + 48);
  v4 = 1;
  atomic_compare_exchange_strong_explicit((a1 + 48), &v2, 1u, memory_order_acquire, memory_order_acquire);
  if (v2)
  {
    MEMORY[0x19EB01E30](a1 + 48);
  }

  v5 = *(a1 + 80);
  atomic_compare_exchange_strong_explicit(v3, &v4, 0, memory_order_release, memory_order_relaxed);
  if (v4 != 1)
  {
    WTF::Lock::unlockSlow(v3);
  }

  return v5 == 2;
}

atomic_uchar *WTF::NativePromise<WTF::MediaTime,WebCore::PlatformMediaError,0u>::takeResultRunnable@<X0>(atomic_uchar *result@<X0>, void *a2@<X8>)
{
  v2 = result;
  v4 = 0;
  v5 = (result + 48);
  atomic_compare_exchange_strong_explicit(result + 48, &v4, 1u, memory_order_acquire, memory_order_acquire);
  if (v4)
  {
    result = MEMORY[0x19EB01E30](result + 48);
  }

  if (v2[80] != 2)
  {
    mpark::throw_bad_variant_access(result);
  }

  v6 = *(v2 + 7);
  *(v2 + 7) = 0;
  *a2 = v6;
  v7 = 1;
  atomic_compare_exchange_strong_explicit(v2 + 48, &v7, 0, memory_order_release, memory_order_relaxed);
  if (v7 != 1)
  {

    return WTF::Lock::unlockSlow(v5);
  }

  return result;
}

atomic_uchar *WTF::NativePromise<WTF::MediaTime,WebCore::PlatformMediaError,0u>::takeResult@<X0>(atomic_uchar *result@<X0>, uint64_t a2@<X8>)
{
  v2 = result;
  v4 = 0;
  v5 = (result + 48);
  atomic_compare_exchange_strong_explicit(result + 48, &v4, 1u, memory_order_acquire, memory_order_acquire);
  if (v4)
  {
    result = MEMORY[0x19EB01E30](result + 48);
  }

  if (v2[80] != 1)
  {
    mpark::throw_bad_variant_access(result);
  }

  *a2 = *(v2 + 56);
  *(a2 + 16) = *(v2 + 9);
  v6 = 1;
  atomic_compare_exchange_strong_explicit(v2 + 48, &v6, 0, memory_order_release, memory_order_relaxed);
  if (v6 != 1)
  {

    return WTF::Lock::unlockSlow(v5);
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WTF::NativePromise<WTF::MediaTime,WebCore::PlatformMediaError,0u>::ThenCallbackBase::dispatch(WTF::NativePromise<WTF::MediaTime,WebCore::PlatformMediaError,0u>&,WTF::Locker<WTF::Lock,void> &)::{lambda(void)#1},void>::~CallableWrapper(void *a1)
{
  *a1 = &unk_1F10FDFD0;
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

uint64_t WTF::Detail::CallableWrapper<WTF::NativePromise<WTF::MediaTime,WebCore::PlatformMediaError,0u>::ThenCallbackBase::dispatch(WTF::NativePromise<WTF::MediaTime,WebCore::PlatformMediaError,0u>&,WTF::Locker<WTF::Lock,void> &)::{lambda(void)#1},void>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F10FDFD0;
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

unsigned __int8 *WTF::NativePromise<WTF::MediaTime,WebCore::PlatformMediaError,0u>::ThenCallbackBase::dispatch(WTF::NativePromise<WTF::MediaTime,WebCore::PlatformMediaError,0u>&,WTF::Locker<WTF::Lock,void> &)::{lambda(void)#1}::operator()(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  if (*(*a1 + 56) == 1)
  {
    v10[0] = *a1;
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
      return WTF::Logger::log<char [32],WTF::NativePromise<void,WebCore::PlatformMediaError,0u>,char [21],void const*,char [11],WTF::Logger::LogSiteIdentifier,char [2]>(result, 4u, "ThenCallback disconnected from ", v1, " aborting [callback:", v10, " callSite:", (v2 + 24), "]");
    }
  }

  else
  {
    hasRunnable = WTF::NativePromise<WTF::MediaTime,WebCore::PlatformMediaError,0u>::hasRunnable(a1[1]);
    v7 = *a1;
    v8 = a1[1];
    if (hasRunnable)
    {
      WTF::NativePromise<WTF::MediaTime,WebCore::PlatformMediaError,0u>::takeResultRunnable(v8, &v9);
      (*(*v9 + 16))(v10);
      (*(*v7 + 24))(v7, v8, v10);
      result = v9;
      v9 = 0;
      if (result)
      {
        return (*(*result + 8))(result);
      }
    }

    else
    {
      WTF::NativePromise<WTF::MediaTime,WebCore::PlatformMediaError,0u>::takeResult(v8, v10);
      return (*(*v7 + 24))(v7, v8, v10);
    }
  }

  return result;
}

WTF::Lock *WTF::NativePromise<WTF::MediaTime,WebCore::PlatformMediaError,0u>::settleAsChainedPromise<WTF::NativePromise<WTF::MediaTime,WebCore::PlatformMediaError,0u>::Storage>(uint64_t a1, uint64_t *a2, WTF::Logger::LogSiteIdentifier *a3)
{
  v6 = 0;
  v7 = (a1 + 48);
  v20 = v7;
  v21 = 1;
  atomic_compare_exchange_strong_explicit(v7, &v6, 1u, memory_order_acquire, memory_order_acquire);
  if (v6)
  {
    v7 = MEMORY[0x19EB01E30]();
  }

  v8 = WTF::NativePromiseBase::logChannel(v7);
  if (*v8)
  {
    v9 = v8[16] >= 4u;
  }

  else
  {
    v9 = 0;
  }

  if (v9)
  {
    WTF::Logger::log<WTF::Logger::LogSiteIdentifier,char [12],WTF::NativePromise<void,WebCore::PlatformMediaError,0u>>(v8, 4u, a3, " settling chained promise ", a1);
  }

  v10 = *(a1 + 80);
  v11 = *(a2 + 24);
  if (v10 != 255 || v11 != 255)
  {
    v12 = (a1 + 56);
    switch(v11)
    {
      case 255:
        if (v10 >= 2 && v10 != 255)
        {
          v13 = *v12;
          *v12 = 0;
          if (v13)
          {
            (*(*v13 + 8))(v13);
          }
        }

        *(a1 + 80) = -1;
        break;
      case 2:
        if (v10 == 2)
        {
          v17 = *a2;
          *a2 = 0;
          v18 = *v12;
          *v12 = v17;
          if (v18)
          {
            (*(*v18 + 8))(v18);
          }
        }

        else
        {
          v22 = a1 + 56;
          v23 = a2;
          mpark::detail::assignment<mpark::detail::traits<WTF::NativePromise<WTF::MediaTime,WebCore::PlatformMediaError,0u>::Storage::NoResult,std::experimental::fundamentals_v3::expected<WTF::MediaTime,WebCore::PlatformMediaError>,WTF::Function<std::experimental::fundamentals_v3::expected<WTF::MediaTime,WebCore::PlatformMediaError> ()(void)>>>::assign_alt<2ul,WTF::Function<std::experimental::fundamentals_v3::expected<WTF::MediaTime,WebCore::PlatformMediaError> ()(void)>,WTF::Function<std::experimental::fundamentals_v3::expected<WTF::MediaTime,WebCore::PlatformMediaError> ()(void)>>(mpark::detail::alt<2ul,WTF::Function<std::experimental::fundamentals_v3::expected<WTF::MediaTime,WebCore::PlatformMediaError> ()(void)>> &,WTF::Function<std::experimental::fundamentals_v3::expected<WTF::MediaTime,WebCore::PlatformMediaError> ()(void)> &&)::{unnamed type#1}::operator()(&v22);
        }

        break;
      case 1:
        if (v10 == 1)
        {
          v16 = *a2;
          *(a1 + 72) = a2[2];
          *v12 = v16;
        }

        else
        {
          v22 = a1 + 56;
          v23 = a2;
          mpark::detail::assignment<mpark::detail::traits<WTF::NativePromise<WTF::MediaTime,WebCore::PlatformMediaError,0u>::Storage::NoResult,std::experimental::fundamentals_v3::expected<WTF::MediaTime,WebCore::PlatformMediaError>,WTF::Function<std::experimental::fundamentals_v3::expected<WTF::MediaTime,WebCore::PlatformMediaError> ()(void)>>>::assign_alt<1ul,std::experimental::fundamentals_v3::expected<WTF::MediaTime,WebCore::PlatformMediaError>,std::experimental::fundamentals_v3::expected<WTF::MediaTime,WebCore::PlatformMediaError>>(mpark::detail::alt<1ul,std::experimental::fundamentals_v3::expected<WTF::MediaTime,WebCore::PlatformMediaError>> &,std::experimental::fundamentals_v3::expected<WTF::MediaTime,WebCore::PlatformMediaError> &&)::{unnamed type#1}::operator()(&v22);
        }

        break;
      default:
        if (*(a1 + 80))
        {
          if (v10 != 1 && v10 != 255)
          {
            v19 = *v12;
            *v12 = 0;
            if (v19)
            {
              (*(*v19 + 8))(v19);
            }
          }

          *(a1 + 80) = 0;
        }

        break;
    }
  }

  result = WTF::NativePromise<WTF::MediaTime,WebCore::PlatformMediaError,0u>::dispatchAll(a1, &v20);
  v15 = v21;
  if (v21 == 1)
  {
    result = v20;
    atomic_compare_exchange_strong_explicit(v20, &v15, 0, memory_order_release, memory_order_relaxed);
    if (v15 != 1)
    {
      return WTF::Lock::unlockSlow(result);
    }
  }

  return result;
}

__n128 mpark::detail::assignment<mpark::detail::traits<WTF::NativePromise<WTF::MediaTime,WebCore::PlatformMediaError,0u>::Storage::NoResult,std::experimental::fundamentals_v3::expected<WTF::MediaTime,WebCore::PlatformMediaError>,WTF::Function<std::experimental::fundamentals_v3::expected<WTF::MediaTime,WebCore::PlatformMediaError> ()(void)>>>::assign_alt<1ul,std::experimental::fundamentals_v3::expected<WTF::MediaTime,WebCore::PlatformMediaError>,std::experimental::fundamentals_v3::expected<WTF::MediaTime,WebCore::PlatformMediaError>>(mpark::detail::alt<1ul,std::experimental::fundamentals_v3::expected<WTF::MediaTime,WebCore::PlatformMediaError>> &,std::experimental::fundamentals_v3::expected<WTF::MediaTime,WebCore::PlatformMediaError> &&)::{unnamed type#1}::operator()(void *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = *(*a1 + 24);
  if (v3 >= 2 && v3 != 255)
  {
    v4 = *v1;
    *v1 = 0;
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }
  }

  *(v1 + 24) = -1;
  result = *v2;
  v1[2] = v2[1].n128_i64[0];
  *v1 = result;
  *(v1 + 24) = 1;
  return result;
}

void *mpark::detail::assignment<mpark::detail::traits<WTF::NativePromise<WTF::MediaTime,WebCore::PlatformMediaError,0u>::Storage::NoResult,std::experimental::fundamentals_v3::expected<WTF::MediaTime,WebCore::PlatformMediaError>,WTF::Function<std::experimental::fundamentals_v3::expected<WTF::MediaTime,WebCore::PlatformMediaError> ()(void)>>>::assign_alt<2ul,WTF::Function<std::experimental::fundamentals_v3::expected<WTF::MediaTime,WebCore::PlatformMediaError> ()(void)>,WTF::Function<std::experimental::fundamentals_v3::expected<WTF::MediaTime,WebCore::PlatformMediaError> ()(void)>>(mpark::detail::alt<2ul,WTF::Function<std::experimental::fundamentals_v3::expected<WTF::MediaTime,WebCore::PlatformMediaError> ()(void)>> &,WTF::Function<std::experimental::fundamentals_v3::expected<WTF::MediaTime,WebCore::PlatformMediaError> ()(void)> &&)::{unnamed type#1}::operator()(void *result)
{
  v1 = *result;
  v2 = result[1];
  v3 = *(*result + 24);
  if (v3 >= 2 && v3 != 255)
  {
    result = *v1;
    *v1 = 0;
    if (result)
    {
      result = (*(*result + 8))(result);
    }
  }

  v4 = *v2;
  *v2 = 0;
  *v1 = v4;
  *(v1 + 24) = 2;
  return result;
}

uint64_t WTF::Detail::CallableWrapper<IPC::Connection::AsyncReplyHandlerWithDispatcher IPC::Connection::makeAsyncReplyHandlerWithDispatcher<WebCore::MediaPromiseConverter,Messages::MediaSourcePrivateRemoteMessageReceiver::ProxyWaitForTarget,WTF::NativePromise<WTF::MediaTime,WebCore::PlatformMediaError,0u>>(WTF::NativePromise<WTF::MediaTime,WebCore::PlatformMediaError,0u>::Producer &&)::{lambda(IPC::Connection*,std::unique_ptr<IPC::Decoder> &&)#1}::operator()(IPC::Connection*,std::unique_ptr<IPC::Decoder> &)::{lambda(void)#1},std::experimental::fundamentals_v3::expected<WTF::MediaTime,WebCore::PlatformMediaError>>::~CallableWrapper(uint64_t a1)
{
  *a1 = &unk_1F10FDD50;
  std::unique_ptr<IPC::Decoder>::reset[abi:sn200100]((a1 + 8), 0);
  return a1;
}

uint64_t WTF::Detail::CallableWrapper<IPC::Connection::AsyncReplyHandlerWithDispatcher IPC::Connection::makeAsyncReplyHandlerWithDispatcher<WebCore::MediaPromiseConverter,Messages::MediaSourcePrivateRemoteMessageReceiver::ProxyWaitForTarget,WTF::NativePromise<WTF::MediaTime,WebCore::PlatformMediaError,0u>>(WTF::NativePromise<WTF::MediaTime,WebCore::PlatformMediaError,0u>::Producer &&)::{lambda(IPC::Connection*,std::unique_ptr<IPC::Decoder> &&)#1}::operator()(IPC::Connection*,std::unique_ptr<IPC::Decoder> &)::{lambda(void)#1},std::experimental::fundamentals_v3::expected<WTF::MediaTime,WebCore::PlatformMediaError>>::~CallableWrapper(IPC::Decoder **a1)
{
  *a1 = &unk_1F10FDD50;
  std::unique_ptr<IPC::Decoder>::reset[abi:sn200100](a1 + 1, 0);

  return WTF::fastFree(a1, v2);
}

IPC::Decoder **WTF::Detail::CallableWrapper<IPC::Connection::AsyncReplyHandlerWithDispatcher IPC::Connection::makeAsyncReplyHandlerWithDispatcher<WebCore::MediaPromiseConverter,Messages::MediaSourcePrivateRemoteMessageReceiver::ProxyWaitForTarget,WTF::NativePromise<WTF::MediaTime,WebCore::PlatformMediaError,0u>>(WTF::NativePromise<WTF::MediaTime,WebCore::PlatformMediaError,0u>::Producer &&)::{lambda(IPC::Connection*,std::unique_ptr<IPC::Decoder> &&)#1}::operator()(IPC::Connection*,std::unique_ptr<IPC::Decoder> &)::{lambda(void)#1},std::experimental::fundamentals_v3::expected<WTF::MediaTime,WebCore::PlatformMediaError>>::call@<X0>(IPC::Decoder **result@<X0>, uint64_t a2@<X8>)
{
  v3 = result[1];
  if (v3 && *v3 && ((result = IPC::ArgumentCoder<std::tuple<std::experimental::fundamentals_v3::expected<WTF::MediaTime,WebCore::PlatformMediaError>>,void>::decode<IPC::Decoder>(result[1], &v7), (v9 & 1) != 0) || ((v4 = *v3, v5 = *(v3 + 1), *v3 = 0, *(v3 + 1) = 0, (result = *(v3 + 3)) != 0) ? (v6 = v5 == 0) : (v6 = 1), !v6 && (result = (*(*result + 2))(result, v4), (v9 & 1) != 0))))
  {
    *a2 = v7;
    *(a2 + 16) = v8;
  }

  else
  {
    *a2 = 4;
    *(a2 + 16) = 1;
  }

  return result;
}

uint64_t IPC::ArgumentCoder<std::tuple<std::experimental::fundamentals_v3::expected<WTF::MediaTime,WebCore::PlatformMediaError>>,void>::decode<IPC::Decoder>@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  result = IPC::ArgumentCoder<std::experimental::fundamentals_v3::expected<WTF::MediaTime,WebCore::PlatformMediaError>,void>::decode<IPC::Decoder>(a1, &v9);
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

  *(a2 + 24) = v5;
  return result;
}

uint64_t IPC::ArgumentCoder<std::experimental::fundamentals_v3::expected<WTF::MediaTime,WebCore::PlatformMediaError>,void>::decode<IPC::Decoder>@<X0>(IPC::Decoder *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *(a1 + 1);
  v5 = *(a1 + 2);
  v6 = *a1;
  if (v4 <= &v5[-*a1])
  {
    *a1 = 0;
    *(a1 + 1) = 0;
    v13 = *(a1 + 3);
    if (v13)
    {
      if (v4)
      {
        (*(*v13 + 16))(v13);
        v4 = *(a1 + 1);
      }
    }

    else
    {
      v4 = 0;
    }

    goto LABEL_19;
  }

  *(a1 + 2) = v5 + 1;
  if (!v5)
  {
LABEL_19:
    *a1 = 0;
    *(a1 + 1) = 0;
    v14 = *(a1 + 3);
    if (v14)
    {
      if (v4)
      {
        (*(*v14 + 16))(v14);
        v6 = *a1;
        v4 = *(a1 + 1);
        goto LABEL_22;
      }
    }

    else
    {
      v4 = 0;
    }

    v6 = 0;
LABEL_22:
    *a1 = 0;
    *(a1 + 1) = 0;
    result = *(a1 + 3);
    if (result && v4)
    {
      result = (*(*result + 16))(result, v6);
    }

    goto LABEL_9;
  }

  v7 = *v5;
  if (v7 >= 2)
  {
    goto LABEL_22;
  }

  if (v7)
  {
    result = IPC::ArgumentCoder<WTF::MediaTime,void>::decode(a1, &v15);
    if (v16 & 1) != 0 || (v11 = *a1, v12 = *(a1 + 1), *a1 = 0, *(a1 + 1) = 0, (result = *(a1 + 3)) != 0) && v12 && (result = (*(*result + 16))(result, v11), (v16))
    {
      *a2 = v15;
      v9 = a2 + 16;
      v10 = 1;
    }

    else
    {
      v10 = 0;
      v9 = a2;
    }

    *v9 = 0;
    goto LABEL_11;
  }

  result = IPC::Decoder::decode<WebCore::PlatformMediaError>(a1);
  if ((result & 0x100) == 0)
  {
LABEL_9:
    *a2 = 0;
    a2[24] = 0;
    return result;
  }

  *a2 = result;
  v10 = 1;
  a2[16] = 1;
LABEL_11:
  a2[24] = v10;
  return result;
}

atomic_uint **WTF::NativePromiseProducer<WTF::MediaTime,WebCore::PlatformMediaError,0u>::~NativePromiseProducer(atomic_uint **a1)
{
  WTF::NativePromiseProducer<WTF::MediaTime,WebCore::PlatformMediaError,0u>::assertIsDead(a1);
  v2 = *a1;
  *a1 = 0;
  if (v2 && atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v2 + 2);
    (*(*v2 + 16))(v2);
  }

  return a1;
}

WTF::Lock *WTF::NativePromise<WTF::MediaTime,WebCore::PlatformMediaError,0u>::reject<WebCore::PlatformMediaError,std::enable_if<true,void>>(uint64_t a1, unsigned __int8 *a2, WTF::Logger::LogSiteIdentifier *a3)
{
  v6 = 0;
  v7 = (a1 + 48);
  v13 = v7;
  v14 = 1;
  atomic_compare_exchange_strong_explicit(v7, &v6, 1u, memory_order_acquire, memory_order_acquire);
  if (v6)
  {
    v7 = MEMORY[0x19EB01E30]();
  }

  v8 = WTF::NativePromiseBase::logChannel(v7);
  if (*v8)
  {
    v9 = v8[16] >= 4u;
  }

  else
  {
    v9 = 0;
  }

  if (v9)
  {
    WTF::Logger::log<WTF::Logger::LogSiteIdentifier,char [12],WTF::NativePromise<void,WebCore::PlatformMediaError,0u>>(v8, 4u, a3, " rejecting ", a1);
  }

  v12 = *a2;
  WTF::NativePromise<WTF::MediaTime,WebCore::PlatformMediaError,0u>::Storage::emplace<std::experimental::fundamentals_v3::unexpected<WebCore::PlatformMediaError>>((a1 + 56), &v12);
  result = WTF::NativePromise<WTF::MediaTime,WebCore::PlatformMediaError,0u>::dispatchAll(a1, &v13);
  v11 = v14;
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

unsigned __int8 *WTF::NativePromise<WTF::MediaTime,WebCore::PlatformMediaError,0u>::Storage::emplace<std::experimental::fundamentals_v3::unexpected<WebCore::PlatformMediaError>>(unsigned __int8 *result, unsigned __int8 *a2)
{
  v3 = result;
  v4 = result[24];
  if (v4 >= 2 && v4 != 255)
  {
    result = *result;
    *v3 = 0;
    if (result)
    {
      result = (*(*result + 8))(result);
    }
  }

  *v3 = *a2;
  v3[16] = 1;
  v3[24] = 1;
  return result;
}

uint64_t WTF::Detail::CallableWrapper<IPC::Connection::AsyncReplyHandlerWithDispatcher IPC::Connection::makeAsyncReplyHandlerWithDispatcher<WebCore::MediaPromiseConverter,Messages::MediaSourcePrivateRemoteMessageReceiver::ProxySeekToTime,WTF::NativePromise<void,WebCore::PlatformMediaError,0u>>(WTF::NativePromise<void,WebCore::PlatformMediaError,0u>::Producer &&)::{lambda(IPC::Connection*,std::unique_ptr<IPC::Decoder> &&)#1},void,IPC::Connection*,std::unique_ptr<IPC::Decoder> &>::~CallableWrapper(uint64_t a1)
{
  *a1 = &unk_1F10FDD78;
  WTF::NativePromiseProducer<void,WebCore::PlatformMediaError,0u>::~NativePromiseProducer((a1 + 8));
  return a1;
}

uint64_t WTF::Detail::CallableWrapper<IPC::Connection::AsyncReplyHandlerWithDispatcher IPC::Connection::makeAsyncReplyHandlerWithDispatcher<WebCore::MediaPromiseConverter,Messages::MediaSourcePrivateRemoteMessageReceiver::ProxySeekToTime,WTF::NativePromise<void,WebCore::PlatformMediaError,0u>>(WTF::NativePromise<void,WebCore::PlatformMediaError,0u>::Producer &&)::{lambda(IPC::Connection*,std::unique_ptr<IPC::Decoder> &&)#1},void,IPC::Connection*,std::unique_ptr<IPC::Decoder> &>::~CallableWrapper(atomic_uint **a1)
{
  *a1 = &unk_1F10FDD78;
  WTF::NativePromiseProducer<void,WebCore::PlatformMediaError,0u>::~NativePromiseProducer(a1 + 1);

  return WTF::fastFree(a1, v2);
}

uint64_t WTF::Detail::CallableWrapper<IPC::Connection::AsyncReplyHandlerWithDispatcher IPC::Connection::makeAsyncReplyHandlerWithDispatcher<WebCore::MediaPromiseConverter,Messages::MediaSourcePrivateRemoteMessageReceiver::ProxySeekToTime,WTF::NativePromise<void,WebCore::PlatformMediaError,0u>>(WTF::NativePromise<void,WebCore::PlatformMediaError,0u>::Producer &&)::{lambda(IPC::Connection*,std::unique_ptr<IPC::Decoder> &&)#1},void,IPC::Connection*,std::unique_ptr<IPC::Decoder> &>::call(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = *a3;
  *a3 = 0;
  v5 = WTF::fastMalloc(0x10);
  *v5 = &unk_1F10FDDA0;
  v5[1] = v4;
  v8 = v5;
  v7[0] = 0;
  v7[1] = 0;
  v7[2] = "operator()";
  v7[3] = 0;
  WTF::NativePromiseProducer<void,WebCore::PlatformMediaError,0u>::settleWithFunction<std::enable_if<true,void>>((a1 + 8), &v8, v7);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t WTF::Detail::CallableWrapper<IPC::Connection::AsyncReplyHandlerWithDispatcher IPC::Connection::makeAsyncReplyHandlerWithDispatcher<WebCore::MediaPromiseConverter,Messages::MediaSourcePrivateRemoteMessageReceiver::ProxySeekToTime,WTF::NativePromise<void,WebCore::PlatformMediaError,0u>>(WTF::NativePromise<void,WebCore::PlatformMediaError,0u>::Producer &&)::{lambda(IPC::Connection*,std::unique_ptr<IPC::Decoder> &&)#1}::operator()(IPC::Connection*,std::unique_ptr<IPC::Decoder> &)::{lambda(void)#1},std::experimental::fundamentals_v3::expected<void,WebCore::PlatformMediaError>>::~CallableWrapper(uint64_t a1)
{
  *a1 = &unk_1F10FDDA0;
  std::unique_ptr<IPC::Decoder>::reset[abi:sn200100]((a1 + 8), 0);
  return a1;
}

uint64_t WTF::Detail::CallableWrapper<IPC::Connection::AsyncReplyHandlerWithDispatcher IPC::Connection::makeAsyncReplyHandlerWithDispatcher<WebCore::MediaPromiseConverter,Messages::MediaSourcePrivateRemoteMessageReceiver::ProxySeekToTime,WTF::NativePromise<void,WebCore::PlatformMediaError,0u>>(WTF::NativePromise<void,WebCore::PlatformMediaError,0u>::Producer &&)::{lambda(IPC::Connection*,std::unique_ptr<IPC::Decoder> &&)#1}::operator()(IPC::Connection*,std::unique_ptr<IPC::Decoder> &)::{lambda(void)#1},std::experimental::fundamentals_v3::expected<void,WebCore::PlatformMediaError>>::~CallableWrapper(IPC::Decoder **a1)
{
  *a1 = &unk_1F10FDDA0;
  std::unique_ptr<IPC::Decoder>::reset[abi:sn200100](a1 + 1, 0);

  return WTF::fastFree(a1, v2);
}

uint64_t WTF::Detail::CallableWrapper<IPC::Connection::AsyncReplyHandlerWithDispatcher IPC::Connection::makeAsyncReplyHandlerWithDispatcher<WebCore::MediaPromiseConverter,Messages::MediaSourcePrivateRemoteMessageReceiver::ProxySeekToTime,WTF::NativePromise<void,WebCore::PlatformMediaError,0u>>(WTF::NativePromise<void,WebCore::PlatformMediaError,0u>::Producer &&)::{lambda(IPC::Connection*,std::unique_ptr<IPC::Decoder> &&)#1}::operator()(IPC::Connection*,std::unique_ptr<IPC::Decoder> &)::{lambda(void)#1},std::experimental::fundamentals_v3::expected<void,WebCore::PlatformMediaError>>::call@<X0>(uint64_t result@<X0>, __int16 *a2@<X8>)
{
  v3 = *(result + 8);
  if (v3 && *v3 && (result = IPC::Decoder::decode<std::tuple<std::experimental::fundamentals_v3::expected<void,WebCore::PlatformMediaError>>>(&v5, v3), v6 == 1))
  {
    v4 = v5;
  }

  else
  {
    v4 = 260;
  }

  *a2 = v4;
  return result;
}

atomic_ullong *WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::SourceBufferPrivate,(WTF::DestructionThread)1>::deref(atomic_ullong *result)
{
  v1 = result;
  while (1)
  {
    v2 = *result;
    if ((*result & 1) == 0)
    {
      break;
    }

    v3 = *result;
    atomic_compare_exchange_strong_explicit(result, &v3, v2 - 2, memory_order_relaxed, memory_order_relaxed);
    if (v3 == v2)
    {
      if (v2 == 3)
      {
        v4 = WTF::fastMalloc(0x10);
        *v4 = &unk_1F10FDF58;
        v4[1] = v1;
        v6 = v4;
        WTF::ensureOnMainThread();
        result = v6;
        if (v6)
        {
          return (*(*v6 + 8))(v6);
        }
      }

      return result;
    }
  }

  v5 = *result;

  return WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebCore::SourceBufferPrivate,(WTF::DestructionThread)1>(v5);
}

atomic_uchar *WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebCore::SourceBufferPrivate,(WTF::DestructionThread)1>(atomic_uchar *this)
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
  *v6 = &unk_1F10FDF80;
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

uint64_t WTF::Detail::CallableWrapper<void WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebCore::SourceBufferPrivate,(WTF::DestructionThread)1>(void)::{lambda(void)#1},void>::call(uint64_t a1, void *a2)
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
  if (v5 == 1)
  {
    if (v6)
    {
      return result;
    }
  }

  else
  {
    v7 = v6;
    result = WTF::Lock::unlockSlow(v3);
    if (v7)
    {
      return result;
    }
  }

  return WTF::fastFree(v3, a2);
}

uint64_t *WTF::NativePromise<void,WebCore::PlatformMediaError,0u>::ThenCommand<WTF::NativePromise<void,WebCore::PlatformMediaError,0u>::ThenCallback<true,WTF::NativePromise<void,WebCore::PlatformMediaError,0u>>>::~ThenCommand(uint64_t *a1)
{
  v2 = a1[1];
  if (v2)
  {
    v3 = *a1;
    a1[1] = 0;
    v8 = v2;
    WTF::NativePromise<void,WebCore::PlatformMediaError,0u>::maybeSettle(v3, &v8, (a1 + 2));
    v4 = v8;
    v8 = 0;
    if (v4 && atomic_fetch_add(v4 + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v4 + 2);
      (*(*v4 + 8))(v4);
    }

    v5 = a1[1];
    a1[1] = 0;
    if (v5 && atomic_fetch_add(v5 + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v5 + 2);
      (*(*v5 + 8))(v5);
    }
  }

  v6 = *a1;
  *a1 = 0;
  if (v6 && atomic_fetch_add(v6 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v6 + 2);
    (*(*v6 + 16))(v6);
  }

  return a1;
}

unsigned __int8 *WTF::NativePromise<void,WebCore::PlatformMediaError,0u>::maybeSettle(uint64_t a1, WTF::NativePromiseBase **a2, WTF::Logger::LogSiteIdentifier *a3)
{
  v6 = 0;
  v7 = (a1 + 48);
  v17 = v7;
  v18 = 1;
  atomic_compare_exchange_strong_explicit(v7, &v6, 1u, memory_order_acquire, memory_order_acquire);
  if (v6)
  {
    v7 = MEMORY[0x19EB01E30]();
  }

  *(a1 + 112) = 1;
  v16 = *a2;
  v15 = *(a1 + 64) == 0;
  result = WTF::NativePromiseBase::logChannel(v7);
  if (*result)
  {
    v9 = result[16] >= 4u;
  }

  else
  {
    v9 = 0;
  }

  if (v9)
  {
    result = WTF::Logger::log<WTF::Logger::LogSiteIdentifier,char [26],WTF::NativePromise<void,WebCore::PlatformMediaError,0u>,char [11],void const*,char [12],BOOL,char [2]>(result, 4u, a3, " invoking maybeSettle() [", a1, " callback:", &v16, " isNothing:", &v15, "]");
  }

  if (*(a1 + 64))
  {
    result = WTF::NativePromise<void,WebCore::PlatformMediaError,0u>::ThenCallbackBase::dispatch(*a2, a1, &v17);
  }

  else
  {
    v10 = *(a1 + 84);
    if (v10 == *(a1 + 80))
    {
      result = WTF::Vector<WTF::Ref<WTF::NativePromise<void,WebCore::PlatformMediaError,0u>::ThenCallbackBase,WTF::RawPtrTraits<WTF::NativePromise<void,WebCore::PlatformMediaError,0u>::ThenCallbackBase>,WTF::DefaultRefDerefTraits<WTF::NativePromise<void,WebCore::PlatformMediaError,0u>::ThenCallbackBase>>,1ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(a1 + 72, v10 + 1, a2);
      v10 = *(a1 + 84);
      v11 = v10 + 1;
      v12 = *(a1 + 72);
      v13 = *result;
      *result = 0;
    }

    else
    {
      v11 = v10 + 1;
      v12 = *(a1 + 72);
      v13 = *a2;
      *a2 = 0;
    }

    *(v12 + 8 * v10) = v13;
    *(a1 + 84) = v11;
  }

  v14 = v18;
  if (v18 == 1)
  {
    result = v17;
    atomic_compare_exchange_strong_explicit(v17, &v14, 0, memory_order_release, memory_order_relaxed);
    if (v14 != 1)
    {
      return WTF::Lock::unlockSlow(result);
    }
  }

  return result;
}

WTF::StringImpl *WTF::Logger::log<WTF::Logger::LogSiteIdentifier,char [26],WTF::NativePromise<void,WebCore::PlatformMediaError,0u>,char [11],void const*,char [12],BOOL,char [2]>(uint64_t a1, unsigned int a2, WTF::Logger::LogSiteIdentifier *this, const char *a4, uint64_t a5, const char *a6, int a7, const char *a8, uint64_t a9, const char *a10)
{
  v63[1] = *MEMORY[0x1E69E9840];
  WTF::Logger::LogSiteIdentifier::toString(&v53, this);
  WTF::String::String(&v52, a4);
  WTF::LogArgument<WTF::NativePromise<void,WebCore::PlatformMediaError,0u>>::toString(a5, &v51);
  v42 = a6;
  WTF::String::String(&v50, a6);
  WTF::LogArgument<void const*>::toString();
  v43 = a8;
  WTF::String::String(&v48, a8);
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  WTF::String::String(&v46, a10);
  result = WTF::tryMakeString<WTF::String,WTF::String,WTF::String,WTF::String,WTF::String,WTF::String,WTF::String,WTF::String>(&v53, &v52, &v51, &v50, &v49, &v48, &v47, &v46, &v54);
  if (v54)
  {
    v18 = v46;
    v46 = 0;
    if (v18 && atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v18, v17);
    }

    v19 = v47;
    v47 = 0;
    if (v19 && atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v19, v17);
    }

    v20 = v48;
    v48 = 0;
    if (v20 && atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v20, v17);
    }

    v21 = v49;
    v49 = 0;
    if (v21 && atomic_fetch_add_explicit(v21, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v21, v17);
    }

    v22 = v50;
    v50 = 0;
    if (v22 && atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v22, v17);
    }

    v23 = v51;
    v51 = 0;
    if (v23 && atomic_fetch_add_explicit(v23, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v23, v17);
    }

    v24 = v52;
    v52 = 0;
    if (v24 && atomic_fetch_add_explicit(v24, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v24, v17);
    }

    v25 = v53;
    v53 = 0;
    if (v25 && atomic_fetch_add_explicit(v25, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v25, v17);
    }

    v26 = *(a1 + 32);
    v27 = os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT);
    if (v27)
    {
      WTF::String::utf8();
      v29 = v45[0] ? v45[0] + 16 : 0;
      *buf = 136446210;
      v56 = v29;
      _os_log_impl(&dword_19D52D000, v26, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
      v27 = v45[0];
      v45[0] = 0;
      if (v27)
      {
        if (*v27 == 1)
        {
          v27 = WTF::fastFree(v27, v28);
        }

        else
        {
          --*v27;
        }
      }
    }

    if (*a1 && *(a1 + 16) >= a2)
    {
      v30 = MEMORY[0x1E696EBC0];
      while (1)
      {
        v31 = *v30;
        if (v31)
        {
          break;
        }

        v32 = *v30;
        atomic_compare_exchange_strong_explicit(v30, &v32, v31 | 1, memory_order_acquire, memory_order_acquire);
        if (v32 == v31)
        {
          v33 = WTF::Logger::observers(v27);
          v34 = *(v33 + 12);
          if (v34)
          {
            v35 = *v33;
            v36 = *v33 + 8 * v34;
            do
            {
              v37 = *v35;
              *buf = 0;
              WTF::Logger::LogSiteIdentifier::toString((&v56 + 4), this);
              v57 = 0;
              WTF::String::String(v58, a4);
              v58[2] = 0;
              WTF::LogArgument<WTF::NativePromise<void,WebCore::PlatformMediaError,0u>>::toString(a5, &v59);
              v60 = 0;
              WTF::String::String(v61, v42);
              v61[2] = 0;
              WTF::LogArgument<void const*>::toString();
              v61[6] = 0;
              WTF::String::String(v62, v43);
              v62[2] = 0;
              WTF::StringImpl::createWithoutCopyingNonEmpty();
              v62[6] = 0;
              WTF::String::String(v63, a10);
              WTF::Vector<WTF::JSONLogValue,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v45, buf, 8uLL);
              (*(*v37 + 16))(v37, a1, a2, v45);
              WTF::Vector<std::tuple<Inspector::BackendDispatcher::CommonErrorCode,WTF::String>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v45, v38);
              for (i = 120; i != -8; i -= 16)
              {
                v40 = *&buf[i];
                *&buf[i] = 0;
                if (v40 && atomic_fetch_add_explicit(v40, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v40, v28);
                }
              }

              ++v35;
            }

            while (v35 != v36);
          }

          v41 = 1;
          atomic_compare_exchange_strong_explicit(v30, &v41, 0, memory_order_release, memory_order_relaxed);
          if (v41 != 1)
          {
            WTF::Lock::unlockSlow(MEMORY[0x1E696EBC0]);
          }

          break;
        }
      }
    }

    result = v54;
    v54 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(result, v28);
      }
    }
  }

  else
  {
    __break(0xC471u);
  }

  return result;
}

unint64_t WTF::Vector<WTF::Ref<WTF::NativePromise<void,WebCore::PlatformMediaError,0u>::ThenCallbackBase,WTF::RawPtrTraits<WTF::NativePromise<void,WebCore::PlatformMediaError,0u>::ThenCallbackBase>,WTF::DefaultRefDerefTraits<WTF::NativePromise<void,WebCore::PlatformMediaError,0u>::ThenCallbackBase>>,1ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2, unint64_t a3)
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

    WTF::Vector<WTF::Ref<WTF::NativePromise<void,WebCore::PlatformMediaError,0u>::ThenCallbackBase,WTF::RawPtrTraits<WTF::NativePromise<void,WebCore::PlatformMediaError,0u>::ThenCallbackBase>,WTF::DefaultRefDerefTraits<WTF::NativePromise<void,WebCore::PlatformMediaError,0u>::ThenCallbackBase>>,1ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v12);
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

    WTF::Vector<WTF::Ref<WTF::NativePromise<void,WebCore::PlatformMediaError,0u>::ThenCallbackBase,WTF::RawPtrTraits<WTF::NativePromise<void,WebCore::PlatformMediaError,0u>::ThenCallbackBase>,WTF::DefaultRefDerefTraits<WTF::NativePromise<void,WebCore::PlatformMediaError,0u>::ThenCallbackBase>>,1ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v9);
    return *a1 + v6;
  }

  return v3;
}

uint64_t WTF::Vector<WTF::Ref<WTF::NativePromise<void,WebCore::PlatformMediaError,0u>::ThenCallbackBase,WTF::RawPtrTraits<WTF::NativePromise<void,WebCore::PlatformMediaError,0u>::ThenCallbackBase>,WTF::DefaultRefDerefTraits<WTF::NativePromise<void,WebCore::PlatformMediaError,0u>::ThenCallbackBase>>,1ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(uint64_t result, unint64_t a2)
{
  if (*(result + 8) >= a2)
  {
    return 1;
  }

  v2 = a2;
  v3 = result;
  v4 = *result;
  v5 = *(result + 12);
  if (a2 < 2)
  {
    v6 = (result + 16);
    *v3 = v3 + 16;
    *(v3 + 8) = 1;
LABEL_6:
    memcpy(v6, v4, 8 * v5);
    if ((v3 + 16) != v4 && v4 != 0)
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

  if (!(a2 >> 29))
  {
    v6 = WTF::fastMalloc((8 * a2));
    *(v3 + 8) = v2;
    *v3 = v6;
    goto LABEL_6;
  }

  __break(0xC471u);
  return result;
}

atomic_uint **WTF::NativePromise<void,WebCore::PlatformMediaError,0u>::ThenCommand<WTF::NativePromise<void,WebCore::PlatformMediaError,0u>::ThenCallback<true,WTF::NativePromise<void,WebCore::PlatformMediaError,0u>>>::completionPromise(atomic_uint **a1, uint64_t *a2)
{
  v13[0] = 0;
  v13[1] = 0;
  v13[2] = "<completion promise>";
  v13[3] = 0;
  v4 = WTF::fastMalloc(0x28);
  v14 = WTF::NativePromiseProducer<void,WebCore::PlatformMediaError,0u>::NativePromiseProducer<std::enable_if<true,void>>(v4, 0, v13);
  v5 = *v14;
  if (*v14)
  {
    atomic_fetch_add(v5 + 2, 1u);
  }

  *a1 = v5;
  v6 = a2[1];
  if (v6)
  {
    atomic_fetch_add(v6 + 2, 1u);
    WTF::NativePromise<void,WebCore::PlatformMediaError,0u>::ThenCallback<true,WTF::NativePromise<void,WebCore::PlatformMediaError,0u>>::setCompletionPromise(v6, &v14);
    if (atomic_fetch_add(v6 + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v6 + 2);
      (*(*v6 + 8))(v6);
    }
  }

  else
  {
    WTF::NativePromise<void,WebCore::PlatformMediaError,0u>::ThenCallback<true,WTF::NativePromise<void,WebCore::PlatformMediaError,0u>>::setCompletionPromise(0, &v14);
  }

  v7 = *a2;
  v8 = a2[1];
  a2[1] = 0;
  v13[0] = v8;
  WTF::NativePromise<void,WebCore::PlatformMediaError,0u>::maybeSettle(v7, v13, (a2 + 2));
  v9 = v13[0];
  v13[0] = 0;
  if (v9 && atomic_fetch_add(v9 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v9 + 2);
    (*(*v9 + 8))(v9);
  }

  result = v14;
  if (v14)
  {
    v11 = WTF::NativePromiseProducer<void,WebCore::PlatformMediaError,0u>::~NativePromiseProducer(v14);
    return WTF::fastFree(v11, v12);
  }

  return result;
}

atomic_uint **WTF::NativePromise<void,WebCore::PlatformMediaError,0u>::ThenCallback<true,WTF::NativePromise<void,WebCore::PlatformMediaError,0u>>::setCompletionPromise(uint64_t a1, atomic_uint ***a2)
{
  v4 = 0;
  v5 = (a1 + 57);
  v6 = 1;
  atomic_compare_exchange_strong_explicit((a1 + 57), &v4, 1u, memory_order_acquire, memory_order_acquire);
  if (v4)
  {
    MEMORY[0x19EB01E30](a1 + 57);
  }

  v7 = *a2;
  *a2 = 0;
  result = std::unique_ptr<WTF::NativePromiseProducer<void,WebCore::PlatformMediaError,0u>>::reset[abi:sn200100]((a1 + 64), v7);
  atomic_compare_exchange_strong_explicit(v5, &v6, 0, memory_order_release, memory_order_relaxed);
  if (v6 != 1)
  {

    return WTF::Lock::unlockSlow(v5);
  }

  return result;
}

uint64_t WTF::Detail::CallableWrapper<IPC::Connection::AsyncReplyHandlerWithDispatcher IPC::Connection::makeAsyncReplyHandlerWithDispatcher<WebCore::MediaPromiseConverter,Messages::SourceBufferPrivateRemoteMessageReceiver::SourceBufferPrivateDurationChanged,WTF::NativePromise<void,WebCore::PlatformMediaError,0u>>(WTF::NativePromise<void,WebCore::PlatformMediaError,0u>::Producer &&)::{lambda(IPC::Connection*,std::unique_ptr<IPC::Decoder> &&)#1},void,IPC::Connection*,std::unique_ptr<IPC::Decoder> &>::~CallableWrapper(uint64_t a1)
{
  *a1 = &unk_1F10FDDC8;
  WTF::NativePromiseProducer<void,WebCore::PlatformMediaError,0u>::~NativePromiseProducer((a1 + 8));
  return a1;
}

uint64_t WTF::Detail::CallableWrapper<IPC::Connection::AsyncReplyHandlerWithDispatcher IPC::Connection::makeAsyncReplyHandlerWithDispatcher<WebCore::MediaPromiseConverter,Messages::SourceBufferPrivateRemoteMessageReceiver::SourceBufferPrivateDurationChanged,WTF::NativePromise<void,WebCore::PlatformMediaError,0u>>(WTF::NativePromise<void,WebCore::PlatformMediaError,0u>::Producer &&)::{lambda(IPC::Connection*,std::unique_ptr<IPC::Decoder> &&)#1},void,IPC::Connection*,std::unique_ptr<IPC::Decoder> &>::~CallableWrapper(atomic_uint **a1)
{
  *a1 = &unk_1F10FDDC8;
  WTF::NativePromiseProducer<void,WebCore::PlatformMediaError,0u>::~NativePromiseProducer(a1 + 1);

  return WTF::fastFree(a1, v2);
}

uint64_t WTF::Detail::CallableWrapper<IPC::Connection::AsyncReplyHandlerWithDispatcher IPC::Connection::makeAsyncReplyHandlerWithDispatcher<WebCore::MediaPromiseConverter,Messages::SourceBufferPrivateRemoteMessageReceiver::SourceBufferPrivateDurationChanged,WTF::NativePromise<void,WebCore::PlatformMediaError,0u>>(WTF::NativePromise<void,WebCore::PlatformMediaError,0u>::Producer &&)::{lambda(IPC::Connection*,std::unique_ptr<IPC::Decoder> &&)#1},void,IPC::Connection*,std::unique_ptr<IPC::Decoder> &>::call(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = *a3;
  *a3 = 0;
  v5 = WTF::fastMalloc(0x10);
  *v5 = &unk_1F10FDDF0;
  v5[1] = v4;
  v8 = v5;
  v7[0] = 0;
  v7[1] = 0;
  v7[2] = "operator()";
  v7[3] = 0;
  WTF::NativePromiseProducer<void,WebCore::PlatformMediaError,0u>::settleWithFunction<std::enable_if<true,void>>((a1 + 8), &v8, v7);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t WTF::Detail::CallableWrapper<IPC::Connection::AsyncReplyHandlerWithDispatcher IPC::Connection::makeAsyncReplyHandlerWithDispatcher<WebCore::MediaPromiseConverter,Messages::SourceBufferPrivateRemoteMessageReceiver::SourceBufferPrivateDurationChanged,WTF::NativePromise<void,WebCore::PlatformMediaError,0u>>(WTF::NativePromise<void,WebCore::PlatformMediaError,0u>::Producer &&)::{lambda(IPC::Connection*,std::unique_ptr<IPC::Decoder> &&)#1}::operator()(IPC::Connection*,std::unique_ptr<IPC::Decoder> &)::{lambda(void)#1},std::experimental::fundamentals_v3::expected<void,WebCore::PlatformMediaError>>::~CallableWrapper(uint64_t a1)
{
  *a1 = &unk_1F10FDDF0;
  std::unique_ptr<IPC::Decoder>::reset[abi:sn200100]((a1 + 8), 0);
  return a1;
}

uint64_t WTF::Detail::CallableWrapper<IPC::Connection::AsyncReplyHandlerWithDispatcher IPC::Connection::makeAsyncReplyHandlerWithDispatcher<WebCore::MediaPromiseConverter,Messages::SourceBufferPrivateRemoteMessageReceiver::SourceBufferPrivateDurationChanged,WTF::NativePromise<void,WebCore::PlatformMediaError,0u>>(WTF::NativePromise<void,WebCore::PlatformMediaError,0u>::Producer &&)::{lambda(IPC::Connection*,std::unique_ptr<IPC::Decoder> &&)#1}::operator()(IPC::Connection*,std::unique_ptr<IPC::Decoder> &)::{lambda(void)#1},std::experimental::fundamentals_v3::expected<void,WebCore::PlatformMediaError>>::~CallableWrapper(IPC::Decoder **a1)
{
  *a1 = &unk_1F10FDDF0;
  std::unique_ptr<IPC::Decoder>::reset[abi:sn200100](a1 + 1, 0);

  return WTF::fastFree(a1, v2);
}

uint64_t WTF::Detail::CallableWrapper<IPC::Connection::AsyncReplyHandlerWithDispatcher IPC::Connection::makeAsyncReplyHandlerWithDispatcher<WebCore::MediaPromiseConverter,Messages::SourceBufferPrivateRemoteMessageReceiver::SourceBufferPrivateDurationChanged,WTF::NativePromise<void,WebCore::PlatformMediaError,0u>>(WTF::NativePromise<void,WebCore::PlatformMediaError,0u>::Producer &&)::{lambda(IPC::Connection*,std::unique_ptr<IPC::Decoder> &&)#1}::operator()(IPC::Connection*,std::unique_ptr<IPC::Decoder> &)::{lambda(void)#1},std::experimental::fundamentals_v3::expected<void,WebCore::PlatformMediaError>>::call@<X0>(uint64_t result@<X0>, _WORD *a2@<X8>)
{
  v2 = *(result + 8);
  if (v2 && *v2)
  {
    *a2 = 0;
  }

  else
  {
    *a2 = 260;
  }

  return result;
}

uint64_t WTF::Detail::CallableWrapper<IPC::Connection::AsyncReplyHandlerWithDispatcher IPC::Connection::makeAsyncReplyHandlerWithDispatcher<WebCore::MediaPromiseConverter,Messages::SourceBufferPrivateRemoteMessageReceiver::SourceBufferPrivateBufferedChanged,WTF::NativePromise<void,WebCore::PlatformMediaError,0u>>(WTF::NativePromise<void,WebCore::PlatformMediaError,0u>::Producer &&)::{lambda(IPC::Connection*,std::unique_ptr<IPC::Decoder> &&)#1},void,IPC::Connection*,std::unique_ptr<IPC::Decoder> &>::~CallableWrapper(uint64_t a1)
{
  *a1 = &unk_1F10FDE18;
  WTF::NativePromiseProducer<void,WebCore::PlatformMediaError,0u>::~NativePromiseProducer((a1 + 8));
  return a1;
}

uint64_t WTF::Detail::CallableWrapper<IPC::Connection::AsyncReplyHandlerWithDispatcher IPC::Connection::makeAsyncReplyHandlerWithDispatcher<WebCore::MediaPromiseConverter,Messages::SourceBufferPrivateRemoteMessageReceiver::SourceBufferPrivateBufferedChanged,WTF::NativePromise<void,WebCore::PlatformMediaError,0u>>(WTF::NativePromise<void,WebCore::PlatformMediaError,0u>::Producer &&)::{lambda(IPC::Connection*,std::unique_ptr<IPC::Decoder> &&)#1},void,IPC::Connection*,std::unique_ptr<IPC::Decoder> &>::~CallableWrapper(atomic_uint **a1)
{
  *a1 = &unk_1F10FDE18;
  WTF::NativePromiseProducer<void,WebCore::PlatformMediaError,0u>::~NativePromiseProducer(a1 + 1);

  return WTF::fastFree(a1, v2);
}

uint64_t WTF::Detail::CallableWrapper<IPC::Connection::AsyncReplyHandlerWithDispatcher IPC::Connection::makeAsyncReplyHandlerWithDispatcher<WebCore::MediaPromiseConverter,Messages::SourceBufferPrivateRemoteMessageReceiver::SourceBufferPrivateBufferedChanged,WTF::NativePromise<void,WebCore::PlatformMediaError,0u>>(WTF::NativePromise<void,WebCore::PlatformMediaError,0u>::Producer &&)::{lambda(IPC::Connection*,std::unique_ptr<IPC::Decoder> &&)#1},void,IPC::Connection*,std::unique_ptr<IPC::Decoder> &>::call(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = *a3;
  *a3 = 0;
  v5 = WTF::fastMalloc(0x10);
  *v5 = &unk_1F10FDE40;
  v5[1] = v4;
  v8 = v5;
  v7[0] = 0;
  v7[1] = 0;
  v7[2] = "operator()";
  v7[3] = 0;
  WTF::NativePromiseProducer<void,WebCore::PlatformMediaError,0u>::settleWithFunction<std::enable_if<true,void>>((a1 + 8), &v8, v7);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t WTF::Detail::CallableWrapper<IPC::Connection::AsyncReplyHandlerWithDispatcher IPC::Connection::makeAsyncReplyHandlerWithDispatcher<WebCore::MediaPromiseConverter,Messages::SourceBufferPrivateRemoteMessageReceiver::SourceBufferPrivateBufferedChanged,WTF::NativePromise<void,WebCore::PlatformMediaError,0u>>(WTF::NativePromise<void,WebCore::PlatformMediaError,0u>::Producer &&)::{lambda(IPC::Connection*,std::unique_ptr<IPC::Decoder> &&)#1}::operator()(IPC::Connection*,std::unique_ptr<IPC::Decoder> &)::{lambda(void)#1},std::experimental::fundamentals_v3::expected<void,WebCore::PlatformMediaError>>::~CallableWrapper(uint64_t a1)
{
  *a1 = &unk_1F10FDE40;
  std::unique_ptr<IPC::Decoder>::reset[abi:sn200100]((a1 + 8), 0);
  return a1;
}

uint64_t WTF::Detail::CallableWrapper<IPC::Connection::AsyncReplyHandlerWithDispatcher IPC::Connection::makeAsyncReplyHandlerWithDispatcher<WebCore::MediaPromiseConverter,Messages::SourceBufferPrivateRemoteMessageReceiver::SourceBufferPrivateBufferedChanged,WTF::NativePromise<void,WebCore::PlatformMediaError,0u>>(WTF::NativePromise<void,WebCore::PlatformMediaError,0u>::Producer &&)::{lambda(IPC::Connection*,std::unique_ptr<IPC::Decoder> &&)#1}::operator()(IPC::Connection*,std::unique_ptr<IPC::Decoder> &)::{lambda(void)#1},std::experimental::fundamentals_v3::expected<void,WebCore::PlatformMediaError>>::~CallableWrapper(IPC::Decoder **a1)
{
  *a1 = &unk_1F10FDE40;
  std::unique_ptr<IPC::Decoder>::reset[abi:sn200100](a1 + 1, 0);

  return WTF::fastFree(a1, v2);
}

uint64_t WTF::Detail::CallableWrapper<IPC::Connection::AsyncReplyHandlerWithDispatcher IPC::Connection::makeAsyncReplyHandlerWithDispatcher<WebCore::MediaPromiseConverter,Messages::SourceBufferPrivateRemoteMessageReceiver::SourceBufferPrivateBufferedChanged,WTF::NativePromise<void,WebCore::PlatformMediaError,0u>>(WTF::NativePromise<void,WebCore::PlatformMediaError,0u>::Producer &&)::{lambda(IPC::Connection*,std::unique_ptr<IPC::Decoder> &&)#1}::operator()(IPC::Connection*,std::unique_ptr<IPC::Decoder> &)::{lambda(void)#1},std::experimental::fundamentals_v3::expected<void,WebCore::PlatformMediaError>>::call@<X0>(uint64_t result@<X0>, _WORD *a2@<X8>)
{
  v2 = *(result + 8);
  if (v2 && *v2)
  {
    *a2 = 0;
  }

  else
  {
    *a2 = 260;
  }

  return result;
}

unsigned __int8 *WTF::NativePromise<void,void,0u>::maybeSettle(uint64_t a1, WTF::NativePromiseBase **a2, WTF::Logger::LogSiteIdentifier *a3)
{
  v6 = 0;
  v7 = (a1 + 48);
  v17 = v7;
  v18 = 1;
  atomic_compare_exchange_strong_explicit(v7, &v6, 1u, memory_order_acquire, memory_order_acquire);
  if (v6)
  {
    v7 = MEMORY[0x19EB01E30]();
  }

  *(a1 + 112) = 1;
  v16 = *a2;
  v15 = *(a1 + 64) == 0;
  result = WTF::NativePromiseBase::logChannel(v7);
  if (*result)
  {
    v9 = result[16] >= 4u;
  }

  else
  {
    v9 = 0;
  }

  if (v9)
  {
    result = WTF::Logger::log<WTF::Logger::LogSiteIdentifier,char [26],WTF::NativePromise<void,void,0u>,char [11],void const*,char [12],BOOL,char [2]>(result, 4u, a3, " invoking maybeSettle() [", a1, " callback:", &v16, " isNothing:", &v15, "]");
  }

  if (*(a1 + 64))
  {
    result = WTF::NativePromise<void,void,0u>::ThenCallbackBase::dispatch(*a2, a1, &v17);
  }

  else
  {
    v10 = *(a1 + 84);
    if (v10 == *(a1 + 80))
    {
      result = WTF::Vector<WTF::Ref<WTF::NativePromise<void,void,0u>::ThenCallbackBase,WTF::RawPtrTraits<WTF::NativePromise<void,void,0u>::ThenCallbackBase>,WTF::DefaultRefDerefTraits<WTF::NativePromise<void,void,0u>::ThenCallbackBase>>,1ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(a1 + 72, v10 + 1, a2);
      v10 = *(a1 + 84);
      v11 = v10 + 1;
      v12 = *(a1 + 72);
      v13 = *result;
      *result = 0;
    }

    else
    {
      v11 = v10 + 1;
      v12 = *(a1 + 72);
      v13 = *a2;
      *a2 = 0;
    }

    *(v12 + 8 * v10) = v13;
    *(a1 + 84) = v11;
  }

  v14 = v18;
  if (v18 == 1)
  {
    result = v17;
    atomic_compare_exchange_strong_explicit(v17, &v14, 0, memory_order_release, memory_order_relaxed);
    if (v14 != 1)
    {
      return WTF::Lock::unlockSlow(result);
    }
  }

  return result;
}

WTF::StringImpl *WTF::Logger::log<WTF::Logger::LogSiteIdentifier,char [26],WTF::NativePromise<void,void,0u>,char [11],void const*,char [12],BOOL,char [2]>(uint64_t a1, unsigned int a2, WTF::Logger::LogSiteIdentifier *this, const char *a4, uint64_t a5, const char *a6, int a7, const char *a8, uint64_t a9, const char *a10)
{
  v63[1] = *MEMORY[0x1E69E9840];
  WTF::Logger::LogSiteIdentifier::toString(&v53, this);
  WTF::String::String(&v52, a4);
  WTF::LogArgument<WTF::NativePromise<void,void,0u>>::toString(a5, &v51);
  v42 = a6;
  WTF::String::String(&v50, a6);
  WTF::LogArgument<void const*>::toString();
  v43 = a8;
  WTF::String::String(&v48, a8);
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  WTF::String::String(&v46, a10);
  result = WTF::tryMakeString<WTF::String,WTF::String,WTF::String,WTF::String,WTF::String,WTF::String,WTF::String,WTF::String>(&v53, &v52, &v51, &v50, &v49, &v48, &v47, &v46, &v54);
  if (v54)
  {
    v18 = v46;
    v46 = 0;
    if (v18 && atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v18, v17);
    }

    v19 = v47;
    v47 = 0;
    if (v19 && atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v19, v17);
    }

    v20 = v48;
    v48 = 0;
    if (v20 && atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v20, v17);
    }

    v21 = v49;
    v49 = 0;
    if (v21 && atomic_fetch_add_explicit(v21, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v21, v17);
    }

    v22 = v50;
    v50 = 0;
    if (v22 && atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v22, v17);
    }

    v23 = v51;
    v51 = 0;
    if (v23 && atomic_fetch_add_explicit(v23, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v23, v17);
    }

    v24 = v52;
    v52 = 0;
    if (v24 && atomic_fetch_add_explicit(v24, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v24, v17);
    }

    v25 = v53;
    v53 = 0;
    if (v25 && atomic_fetch_add_explicit(v25, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v25, v17);
    }

    v26 = *(a1 + 32);
    v27 = os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT);
    if (v27)
    {
      WTF::String::utf8();
      v29 = v45[0] ? v45[0] + 16 : 0;
      *buf = 136446210;
      v56 = v29;
      _os_log_impl(&dword_19D52D000, v26, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
      v27 = v45[0];
      v45[0] = 0;
      if (v27)
      {
        if (*v27 == 1)
        {
          v27 = WTF::fastFree(v27, v28);
        }

        else
        {
          --*v27;
        }
      }
    }

    if (*a1 && *(a1 + 16) >= a2)
    {
      v30 = MEMORY[0x1E696EBC0];
      while (1)
      {
        v31 = *v30;
        if (v31)
        {
          break;
        }

        v32 = *v30;
        atomic_compare_exchange_strong_explicit(v30, &v32, v31 | 1, memory_order_acquire, memory_order_acquire);
        if (v32 == v31)
        {
          v33 = WTF::Logger::observers(v27);
          v34 = *(v33 + 12);
          if (v34)
          {
            v35 = *v33;
            v36 = *v33 + 8 * v34;
            do
            {
              v37 = *v35;
              *buf = 0;
              WTF::Logger::LogSiteIdentifier::toString((&v56 + 4), this);
              v57 = 0;
              WTF::String::String(v58, a4);
              v58[2] = 0;
              WTF::LogArgument<WTF::NativePromise<void,void,0u>>::toString(a5, &v59);
              v60 = 0;
              WTF::String::String(v61, v42);
              v61[2] = 0;
              WTF::LogArgument<void const*>::toString();
              v61[6] = 0;
              WTF::String::String(v62, v43);
              v62[2] = 0;
              WTF::StringImpl::createWithoutCopyingNonEmpty();
              v62[6] = 0;
              WTF::String::String(v63, a10);
              WTF::Vector<WTF::JSONLogValue,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v45, buf, 8uLL);
              (*(*v37 + 16))(v37, a1, a2, v45);
              WTF::Vector<std::tuple<Inspector::BackendDispatcher::CommonErrorCode,WTF::String>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v45, v38);
              for (i = 120; i != -8; i -= 16)
              {
                v40 = *&buf[i];
                *&buf[i] = 0;
                if (v40 && atomic_fetch_add_explicit(v40, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v40, v28);
                }
              }

              ++v35;
            }

            while (v35 != v36);
          }

          v41 = 1;
          atomic_compare_exchange_strong_explicit(v30, &v41, 0, memory_order_release, memory_order_relaxed);
          if (v41 != 1)
          {
            WTF::Lock::unlockSlow(MEMORY[0x1E696EBC0]);
          }

          break;
        }
      }
    }

    result = v54;
    v54 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(result, v28);
      }
    }
  }

  else
  {
    __break(0xC471u);
  }

  return result;
}

unint64_t WTF::Vector<WTF::Ref<WTF::NativePromise<void,void,0u>::ThenCallbackBase,WTF::RawPtrTraits<WTF::NativePromise<void,void,0u>::ThenCallbackBase>,WTF::DefaultRefDerefTraits<WTF::NativePromise<void,void,0u>::ThenCallbackBase>>,1ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2, unint64_t a3)
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

    WTF::Vector<WTF::Ref<WTF::NativePromise<void,void,0u>::ThenCallbackBase,WTF::RawPtrTraits<WTF::NativePromise<void,void,0u>::ThenCallbackBase>,WTF::DefaultRefDerefTraits<WTF::NativePromise<void,void,0u>::ThenCallbackBase>>,1ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v12);
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

    WTF::Vector<WTF::Ref<WTF::NativePromise<void,void,0u>::ThenCallbackBase,WTF::RawPtrTraits<WTF::NativePromise<void,void,0u>::ThenCallbackBase>,WTF::DefaultRefDerefTraits<WTF::NativePromise<void,void,0u>::ThenCallbackBase>>,1ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v9);
    return *a1 + v6;
  }

  return v3;
}

uint64_t WTF::Vector<WTF::Ref<WTF::NativePromise<void,void,0u>::ThenCallbackBase,WTF::RawPtrTraits<WTF::NativePromise<void,void,0u>::ThenCallbackBase>,WTF::DefaultRefDerefTraits<WTF::NativePromise<void,void,0u>::ThenCallbackBase>>,1ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(uint64_t result, unint64_t a2)
{
  if (*(result + 8) >= a2)
  {
    return 1;
  }

  v2 = a2;
  v3 = result;
  v4 = *result;
  v5 = *(result + 12);
  if (a2 < 2)
  {
    v6 = (result + 16);
    *v3 = v3 + 16;
    *(v3 + 8) = 1;
LABEL_6:
    memcpy(v6, v4, 8 * v5);
    if ((v3 + 16) != v4 && v4 != 0)
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

  if (!(a2 >> 29))
  {
    v6 = WTF::fastMalloc((8 * a2));
    *(v3 + 8) = v2;
    *v3 = v6;
    goto LABEL_6;
  }

  __break(0xC471u);
  return result;
}

uint64_t *WTF::NativePromise<WTF::MediaTime,WebCore::PlatformMediaError,0u>::ThenCommand<WTF::NativePromise<WTF::MediaTime,WebCore::PlatformMediaError,0u>::ThenCallback<false,void>>::~ThenCommand(uint64_t *a1)
{
  v2 = a1[1];
  if (v2)
  {
    v3 = *a1;
    a1[1] = 0;
    v8 = v2;
    WTF::NativePromise<WTF::MediaTime,WebCore::PlatformMediaError,0u>::maybeSettle(v3, &v8, (a1 + 2));
    v4 = v8;
    v8 = 0;
    if (v4 && atomic_fetch_add(v4 + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v4 + 2);
      (*(*v4 + 8))(v4);
    }

    v5 = a1[1];
    a1[1] = 0;
    if (v5 && atomic_fetch_add(v5 + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v5 + 2);
      (*(*v5 + 8))(v5);
    }
  }

  v6 = *a1;
  *a1 = 0;
  if (v6 && atomic_fetch_add(v6 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v6 + 2);
    (*(*v6 + 16))(v6);
  }

  return a1;
}

unsigned __int8 *WTF::NativePromise<WTF::MediaTime,WebCore::PlatformMediaError,0u>::maybeSettle(uint64_t a1, WTF::NativePromiseBase **a2, WTF::Logger::LogSiteIdentifier *a3)
{
  v6 = 0;
  v7 = (a1 + 48);
  v17 = v7;
  v18 = 1;
  atomic_compare_exchange_strong_explicit(v7, &v6, 1u, memory_order_acquire, memory_order_acquire);
  if (v6)
  {
    v7 = MEMORY[0x19EB01E30]();
  }

  *(a1 + 128) = 1;
  v16 = *a2;
  v15 = *(a1 + 80) == 0;
  result = WTF::NativePromiseBase::logChannel(v7);
  if (*result)
  {
    v9 = result[16] >= 4u;
  }

  else
  {
    v9 = 0;
  }

  if (v9)
  {
    result = WTF::Logger::log<WTF::Logger::LogSiteIdentifier,char [26],WTF::NativePromise<void,WebCore::PlatformMediaError,0u>,char [11],void const*,char [12],BOOL,char [2]>(result, 4u, a3, " invoking maybeSettle() [", a1, " callback:", &v16, " isNothing:", &v15, "]");
  }

  if (*(a1 + 80))
  {
    result = WTF::NativePromise<WTF::MediaTime,WebCore::PlatformMediaError,0u>::ThenCallbackBase::dispatch(*a2, a1, &v17);
  }

  else
  {
    v10 = *(a1 + 100);
    if (v10 == *(a1 + 96))
    {
      result = WTF::Vector<WTF::Ref<WTF::NativePromise<void,WebCore::PlatformMediaError,0u>::ThenCallbackBase,WTF::RawPtrTraits<WTF::NativePromise<void,WebCore::PlatformMediaError,0u>::ThenCallbackBase>,WTF::DefaultRefDerefTraits<WTF::NativePromise<void,WebCore::PlatformMediaError,0u>::ThenCallbackBase>>,1ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(a1 + 88, v10 + 1, a2);
      v10 = *(a1 + 100);
      v11 = v10 + 1;
      v12 = *(a1 + 88);
      v13 = *result;
      *result = 0;
    }

    else
    {
      v11 = v10 + 1;
      v12 = *(a1 + 88);
      v13 = *a2;
      *a2 = 0;
    }

    *(v12 + 8 * v10) = v13;
    *(a1 + 100) = v11;
  }

  v14 = v18;
  if (v18 == 1)
  {
    result = v17;
    atomic_compare_exchange_strong_explicit(v17, &v14, 0, memory_order_release, memory_order_relaxed);
    if (v14 != 1)
    {
      return WTF::Lock::unlockSlow(result);
    }
  }

  return result;
}

uint64_t WTF::NativePromise<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::PlatformMediaError,0u>::ThenCommand<WTF::NativePromise<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::PlatformMediaError,0u>::ThenCallback<false,void>>::~ThenCommand(uint64_t *a1)
{
  v66[1] = *MEMORY[0x1E69E9840];
  v2 = a1[1];
  if (v2)
  {
    v3 = 0;
    v4 = *a1;
    a1[1] = 0;
    v5 = (v4 + 48);
    v45 = v2;
    v46 = (v4 + 48);
    v47 = 1;
    atomic_compare_exchange_strong_explicit((v4 + 48), &v3, 1u, memory_order_acquire, memory_order_acquire);
    if (v3)
    {
      v5 = MEMORY[0x19EB01E30]();
    }

    *(v4 + 128) = 1;
    v6 = WTF::NativePromiseBase::logChannel(v5);
    if (*v6)
    {
      v7 = v6;
      if (v6[16] >= 4u)
      {
        WTF::Logger::LogSiteIdentifier::toString(&v56, (a1 + 2));
        WTF::String::String(&v55, " invoking maybeSettle() [");
        WTF::LogArgument<WTF::NativePromise<void,WebCore::PlatformMediaError,0u>>::toString(v4, &v54);
        WTF::String::String(&v53, " callback:");
        WTF::LogArgument<void const*>::toString();
        WTF::String::String(&v51, " isNothing:");
        WTF::StringImpl::createWithoutCopyingNonEmpty();
        WTF::String::String(&v49, "]");
        result = WTF::tryMakeString<WTF::String,WTF::String,WTF::String,WTF::String,WTF::String,WTF::String,WTF::String,WTF::String>(&v56, &v55, &v54, &v53, &v52, &v51, &v50, &v49, &v57);
        if (!v57)
        {
          __break(0xC471u);
          return result;
        }

        v10 = v49;
        v49 = 0;
        if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v10, v9);
        }

        v11 = v50;
        v50 = 0;
        if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v11, v9);
        }

        v12 = v51;
        v51 = 0;
        if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v12, v9);
        }

        v13 = v52;
        v52 = 0;
        if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v13, v9);
        }

        v14 = v53;
        v53 = 0;
        if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v14, v9);
        }

        v15 = v54;
        v54 = 0;
        if (v15 && atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v15, v9);
        }

        v16 = v55;
        v55 = 0;
        if (v16 && atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v16, v9);
        }

        v17 = v56;
        v56 = 0;
        if (v17 && atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v17, v9);
        }

        v18 = *(v7 + 4);
        v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
        if (v19)
        {
          WTF::String::utf8();
          v21 = v48[0] ? v48[0] + 16 : 0;
          *buf = 136446210;
          v59 = v21;
          _os_log_impl(&dword_19D52D000, v18, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
          v19 = v48[0];
          v48[0] = 0;
          if (v19)
          {
            if (*v19 == 1)
            {
              v19 = WTF::fastFree(v19, v20);
            }

            else
            {
              --*v19;
            }
          }
        }

        if (*v7 && v7[16] >= 4u)
        {
          v22 = MEMORY[0x1E696EBC0];
          while (1)
          {
            v23 = *v22;
            if (v23)
            {
              break;
            }

            v24 = *v22;
            atomic_compare_exchange_strong_explicit(v22, &v24, v23 | 1, memory_order_acquire, memory_order_acquire);
            if (v24 == v23)
            {
              v25 = WTF::Logger::observers(v19);
              v26 = *(v25 + 12);
              if (v26)
              {
                v27 = *v25;
                v28 = *v25 + 8 * v26;
                do
                {
                  v29 = *v27;
                  *buf = 0;
                  WTF::Logger::LogSiteIdentifier::toString((&v59 + 4), (a1 + 2));
                  v60 = 0;
                  WTF::String::String(v61, " invoking maybeSettle() [");
                  v61[2] = 0;
                  WTF::LogArgument<WTF::NativePromise<void,WebCore::PlatformMediaError,0u>>::toString(v4, &v62);
                  v63 = 0;
                  WTF::String::String(v64, " callback:");
                  v64[2] = 0;
                  WTF::LogArgument<void const*>::toString();
                  v64[6] = 0;
                  WTF::String::String(v65, " isNothing:");
                  v65[2] = 0;
                  WTF::StringImpl::createWithoutCopyingNonEmpty();
                  v65[6] = 0;
                  WTF::String::String(v66, "]");
                  WTF::Vector<WTF::JSONLogValue,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v48, buf, 8uLL);
                  (*(*v29 + 16))(v29, v7, 4, v48);
                  WTF::Vector<std::tuple<Inspector::BackendDispatcher::CommonErrorCode,WTF::String>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v48, v30);
                  for (i = 120; i != -8; i -= 16)
                  {
                    v32 = *&buf[i];
                    *&buf[i] = 0;
                    if (v32 && atomic_fetch_add_explicit(v32, 0xFFFFFFFE, memory_order_relaxed) == 2)
                    {
                      WTF::StringImpl::destroy(v32, v20);
                    }
                  }

                  ++v27;
                }

                while (v27 != v28);
              }

              v33 = 1;
              atomic_compare_exchange_strong_explicit(v22, &v33, 0, memory_order_release, memory_order_relaxed);
              if (v33 != 1)
              {
                WTF::Lock::unlockSlow(MEMORY[0x1E696EBC0]);
              }

              break;
            }
          }
        }

        v34 = v57;
        v57 = 0;
        if (v34 && atomic_fetch_add_explicit(v34, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v34, v20);
        }
      }
    }

    if (*(v4 + 80))
    {
      WTF::NativePromise<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::PlatformMediaError,0u>::ThenCallbackBase::dispatch(v45, v4, &v46);
    }

    else
    {
      v35 = *(v4 + 100);
      if (v35 == *(v4 + 96))
      {
        v36 = WTF::Vector<WTF::Ref<WTF::NativePromise<WebCore::VideoPlaybackQualityMetrics,WebCore::PlatformMediaError,0u>::ThenCallbackBase,WTF::RawPtrTraits<WTF::NativePromise<WebCore::VideoPlaybackQualityMetrics,WebCore::PlatformMediaError,0u>::ThenCallbackBase>,WTF::DefaultRefDerefTraits<WTF::NativePromise<WebCore::VideoPlaybackQualityMetrics,WebCore::PlatformMediaError,0u>::ThenCallbackBase>>,1ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(v4 + 88, v35 + 1, &v45);
        v35 = *(v4 + 100);
        v37 = v35 + 1;
        v38 = *(v4 + 88);
        v39 = *v36;
        *v36 = 0;
      }

      else
      {
        v37 = v35 + 1;
        v38 = *(v4 + 88);
        v39 = v45;
        v45 = 0;
      }

      *(v38 + 8 * v35) = v39;
      *(v4 + 100) = v37;
    }

    v40 = v47;
    if (v47 == 1)
    {
      v41 = v46;
      atomic_compare_exchange_strong_explicit(v46, &v40, 0, memory_order_release, memory_order_relaxed);
      if (v40 != 1)
      {
        WTF::Lock::unlockSlow(v41);
      }
    }

    v42 = v45;
    v45 = 0;
    if (v42 && atomic_fetch_add(v42 + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v42 + 2);
      (*(*v42 + 8))(v42);
    }

    v43 = a1[1];
    a1[1] = 0;
    if (v43 && atomic_fetch_add(v43 + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v43 + 2);
      (*(*v43 + 8))(v43);
    }
  }

  v44 = *a1;
  *a1 = 0;
  if (v44)
  {
    if (atomic_fetch_add(v44 + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v44 + 2);
      (*(*v44 + 16))(v44);
    }
  }

  return a1;
}

unsigned __int8 *WTF::NativePromise<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::PlatformMediaError,0u>::ThenCallbackBase::dispatch(WTF::NativePromiseBase *a1, uint64_t a2, atomic_uchar *volatile *a3)
{
  v5 = a1;
  if (!*(a1 + 2) || (v6 = atomic_load((a2 + 129)), v6 == 1) && (a1 = (*(**(a1 + 2) + 24))(*(a1 + 2)), a1))
  {
    if (*(v5 + 56) == 1)
    {
      v18[0] = v5;
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
        return WTF::Logger::log<char [32],WTF::NativePromise<void,WebCore::PlatformMediaError,0u>,char [21],void const*,char [11],WTF::Logger::LogSiteIdentifier,char [2]>(result, 4u, "ThenCallback disconnected from ", a2, " aborting [callback:", v18, " callSite:", (v5 + 24), "]");
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

      if (WTF::NativePromise<WTF::MediaTime,WebCore::PlatformMediaError,0u>::hasRunnable(a2))
      {
        WTF::NativePromise<WTF::MediaTime,WebCore::PlatformMediaError,0u>::takeResultRunnable(a2, &v17);
        (*(*v17 + 16))(v18);
        (*(*v5 + 24))(v5, a2, v18);
        if (!v19)
        {
          WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v18, v13);
        }

        v19 = -1;
        v14 = v17;
        v17 = 0;
        if (v14)
        {
          (*(*v14 + 8))(v14);
        }
      }

      else
      {
        WTF::NativePromise<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::PlatformMediaError,0u>::takeResult(a2, v18);
        (*(*v5 + 24))(v5, a2, v18);
        if (!v19)
        {
          WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v18, v15);
        }
      }

      v16 = 0;
      result = *a3;
      atomic_compare_exchange_strong_explicit(*a3, &v16, 1u, memory_order_acquire, memory_order_acquire);
      if (v16)
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
    *v8 = &unk_1F10FDFF8;
    v8[1] = v5;
    v8[2] = a2;
    v18[0] = v8;
    (*(*v7 + 16))(v7, v18);
    result = v18[0];
    v18[0] = 0;
    if (result)
    {
      return (*(*result + 8))(result);
    }
  }

  return result;
}