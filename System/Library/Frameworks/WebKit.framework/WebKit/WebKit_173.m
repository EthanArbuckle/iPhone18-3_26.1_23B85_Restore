WTF::ThreadSafeWeakPtrControlBlock *WebKit::RemoteDisplayListRecorderProxy::recordResourceUse(WebKit::RemoteDisplayListRecorderProxy **this, const WebCore::SourceImage *a2)
{
  v4 = WebCore::SourceImage::imageBufferIfExists(a2);
  if (v4)
  {
    v5 = v4;
    v6 = (v4 + 8);
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
        goto LABEL_5;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v6);
LABEL_5:
    v9 = WebKit::RemoteDisplayListRecorderProxy::recordResourceUse(this[440], v5);
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::ImageBuffer,(WTF::DestructionThread)0>::deref(v6, v10);
  }

  else
  {
    v12 = WebCore::SourceImage::nativeImageIfExists(a2);
    if (v12)
    {
      v13 = v12;
      while (1)
      {
        v14 = *(v12 + 8);
        if ((v14 & 1) == 0)
        {
          break;
        }

        v15 = *(v12 + 8);
        atomic_compare_exchange_strong_explicit((v12 + 8), &v15, v14 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v15 == v14)
        {
          goto LABEL_11;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*(v12 + 8));
LABEL_11:
      v9 = WebKit::RemoteDisplayListRecorderProxy::recordResourceUse(this, v13);
      do
      {
        v17 = v13[1];
        if ((v17 & 1) == 0)
        {
          WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebCore::RenderingResource,(WTF::DestructionThread)0>(v13[1], v16);
          return v9;
        }

        v18 = v13[1];
        atomic_compare_exchange_strong_explicit(v13 + 1, &v18, (v17 - 2), memory_order_relaxed, memory_order_relaxed);
      }

      while (v18 != v17);
      if (v17 == 3)
      {
        (*(*v13 + 1))(v13);
      }
    }

    else
    {
      return 1;
    }
  }

  return v9;
}

uint64_t WebKit::RemoteDisplayListRecorderProxy::drawGlyphs(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, const CGSize *a5, unint64_t a6, _DWORD *a7, char a8)
{
  result = WebCore::DisplayList::Recorder::decomposeDrawGlyphsIfNeeded();
  if ((result & 1) == 0)
  {

    return WebKit::RemoteDisplayListRecorderProxy::drawGlyphsImmediate(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return result;
}

WTF *WebKit::RemoteDisplayListRecorderProxy::drawGlyphsImmediate(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, const CGSize *a5, unint64_t a6, _DWORD *a7, char a8)
{
  v80 = *MEMORY[0x1E69E9840];
  WebKit::RemoteDisplayListRecorderProxy::appendStateChangeItemIfNecessary(a1, a2);
  v16 = *(a1 + 3520);
  if (v16)
  {
    v17 = *(v16 + 8);
    if (v17)
    {
      ++v17[5];
      WebKit::RemoteResourceCacheProxy::recordFontUse((v17 + 22), a2);
      if (v17[5] == 1)
      {
        (*(*v17 + 24))(v17);
      }

      else
      {
        --v17[5];
      }
    }
  }

  v71 = WebCore::Font::renderingResourceIdentifier(a2);
  v18 = WTF::Vector<WebCore::FloatSize,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector<CGSize const,18446744073709551615ul>(&v66, a5, a6);
  v69 = 0;
  v70 = 0;
  v68 = a4;
  if (a4)
  {
    v69 = a3;
    v70 = v66;
  }

  v72 = &v71;
  v73 = &v68;
  v74 = a7;
  v75 = a8;
  v20 = *(a1 + 3512);
  if (!v20)
  {
    goto LABEL_69;
  }

  atomic_fetch_add(v20, 1u);
  while (1)
  {
    if ((*(a1 + 3584) & 1) == 0)
    {
      v18 = *(a1 + 3544);
      if (v18)
      {
        WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteImageBufferProxy>(v18, *(a1 + 3536), buf);
        v18 = *buf;
        if (*buf)
        {
          v18 = WebKit::RemoteImageBufferProxy::backingStoreWillChange(*buf, v63);
          v65 = *buf;
          *buf = 0;
          if (v65)
          {
            v18 = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::ImageBuffer,(WTF::DestructionThread)0>::deref((v65 + 8), v64);
          }
        }
      }

      *(a1 + 3584) = 1;
    }

    v21 = *(a1 + 3504);
    v22 = *(v20 + 128);
    v23 = INFINITY;
    if (fabs(v22) != INFINITY)
    {
      WTF::ApproximateTime::now(v18);
      v23 = v22 + v24;
    }

    if (*(v20 + 64) == v21)
    {
      break;
    }

    IPC::StreamClientConnectionBuffer::tryAcquire(v20 + 72, buf, v23);
    if (buf[16] != 1)
    {
      goto LABEL_75;
    }

    v39 = *&buf[8];
    if (*&buf[8] <= 1uLL)
    {
      __break(0xC471u);
      JUMPOUT(0x19E1B3080);
    }

    v40 = *buf;
    **buf = 3198;
    v41 = v40 + 2;
    if (v39 - 2 < (-v41 & 7 | 8uLL))
    {
      goto LABEL_75;
    }

    v42 = -v41 & 7;
    *(v41 + v42) = v21;
    v43 = 6;
    if (v42 > 6)
    {
      v43 = v42;
    }

    v44 = v43 + 10;
    v45 = (*(v20 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
    v46 = *(v20 + 72);
    if (v45 + 16 >= v46)
    {
      v45 = 0;
    }

    v47 = v44 + v45;
    if (v46 <= v47)
    {
      v47 = 0;
    }

    *(v20 + 88) = v47;
    v48 = *(v20 + 80);
    if (*(v48 + 8) > 0xFFuLL)
    {
      v49 = atomic_exchange((*(v48 + 16) + 128), v47);
      v50 = *(v20 + 124);
      if (v49 == 0x80000000 || v50 != 0)
      {
        v52 = v50 + 1;
        *(v20 + 124) = v52;
        if (v52 >= *(v20 + 120))
        {
          if (*(v20 + 112) == 1)
          {
            MEMORY[0x19EB16320](*(v20 + 100));
          }

          *(v20 + 124) = 0;
        }
      }

      *(v20 + 64) = v21;
      break;
    }

LABEL_68:
    __break(1u);
LABEL_69:
    v58 = *(a1 + 3520);
    if (!v58)
    {
      goto LABEL_31;
    }

    v59 = *(v58 + 8);
    if (!v59)
    {
      goto LABEL_31;
    }

    ++*(v59 + 5);
    v60 = WebKit::RemoteRenderingBackendProxy::connection(v59, v19, buf);
    v20 = *buf;
    if (*(v59 + 5) == 1)
    {
      (*(*v59 + 24))(v59, v60);
    }

    else
    {
      --*(v59 + 5);
    }

    if (!v20)
    {
      goto LABEL_31;
    }

    v18 = WTF::RefPtr<IPC::StreamClientConnection,WTF::RawPtrTraits<IPC::StreamClientConnection>,WTF::DefaultRefDerefTraits<IPC::StreamClientConnection>>::operator=((a1 + 3512), v20);
  }

  IPC::StreamClientConnectionBuffer::tryAcquire(v20 + 72, &v76, v23);
  if ((v78 & 1) == 0)
  {
    goto LABEL_75;
  }

  v25 = v76;
  v26 = v77;
  *&buf[16] = v77;
  if (v77 <= 1)
  {
LABEL_87:
    __break(0xC471u);
    JUMPOUT(0x19E1B3030);
  }

  *v76 = 1069;
  v27 = v25 + 1;
  v28 = v26 - 2;
  v29 = -v27 & 7 | 8;
  v30 = v28 >= v29;
  v31 = v28 - v29;
  if (v30)
  {
    *(v27 + (-v27 & 7)) = *v72;
    *buf = v27 + v29;
    *&buf[8] = v31;
  }

  else
  {
    *buf = 0;
    *&buf[8] = 0;
  }

  IPC::ArgumentCoder<IPC::ArrayReferenceTuple<unsigned short,WebCore::FloatSize>,void>::encode<IPC::StreamConnectionEncoder,0ul,1ul>(buf, v73);
  IPC::StreamConnectionEncoder::operator<<<WebCore::FloatPoint const&>(buf, v74);
  if (*&buf[8])
  {
    **buf = v75;
    v32 = *&buf[8];
    if (*&buf[8])
    {
      ++*buf;
      --*&buf[8];
      v33 = *&buf[16] - (v32 - 1);
      if (v33 <= 0x10)
      {
        v33 = 16;
      }

      v34 = (*(v20 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
      v35 = *(v20 + 72);
      if (v34 + 16 >= v35)
      {
        v34 = 0;
      }

      v36 = v34 + v33;
      if (v35 <= v36)
      {
        v36 = 0;
      }

      *(v20 + 88) = v36;
      v37 = *(v20 + 80);
      if (*(v37 + 8) > 0xFFuLL)
      {
        if (atomic_exchange((*(v37 + 16) + 128), v36) == 0x80000000 || *(v20 + 124))
        {
          if (*(v20 + 112) == 1)
          {
            MEMORY[0x19EB16320](*(v20 + 100));
          }

          *(v20 + 124) = 0;
        }

        goto LABEL_29;
      }
    }

    goto LABEL_68;
  }

  if ((v78 & 1) == 0)
  {
    goto LABEL_68;
  }

  if (v77 <= 1)
  {
    goto LABEL_87;
  }

  *v76 = 3197;
  v53 = (*(v20 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
  v54 = *(v20 + 72);
  if (v53 + 16 >= v54)
  {
    v53 = 0;
  }

  v55 = v53 + 16;
  v56 = v54 <= v55 ? 0 : v55;
  *(v20 + 88) = v56;
  v57 = *(v20 + 80);
  if (*(v57 + 8) <= 0xFFuLL)
  {
    goto LABEL_68;
  }

  atomic_exchange((*(v57 + 16) + 128), v56);
  *(v20 + 124) = 0;
  if (!IPC::Connection::send<Messages::RemoteDisplayListRecorder::DrawGlyphs>(*(v20 + 8), &v72, v21))
  {
    goto LABEL_29;
  }

LABEL_75:
  v61 = qword_1ED6410D0;
  if (os_log_type_enabled(qword_1ED6410D0, OS_LOG_TYPE_DEFAULT))
  {
    v62 = IPC::errorAsString();
    *buf = 136446466;
    *&buf[4] = "RemoteDisplayListRecorder_DrawGlyphs";
    *&buf[12] = 2082;
    *&buf[14] = v62;
    _os_log_impl(&dword_19D52D000, v61, OS_LOG_TYPE_DEFAULT, "RemoteDisplayListRecorderProxy::send - failed, name:%{public}s, error:%{public}s", buf, 0x16u);
  }

  WebKit::RemoteDisplayListRecorderProxy::didBecomeUnresponsive(*(a1 + 3520));
LABEL_29:
  if (atomic_fetch_add(v20, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v20);
    IPC::StreamClientConnection::operator delete(v20);
  }

LABEL_31:
  result = v66;
  if (v66)
  {
    v66 = 0;
    v67 = 0;
    return WTF::fastFree(result, v19);
  }

  return result;
}

void WebKit::RemoteDisplayListRecorderProxy::drawDecomposedGlyphs(uint64_t a1, __int128 *a2, uint64_t a3)
{
  v60 = *MEMORY[0x1E69E9840];
  WebKit::RemoteDisplayListRecorderProxy::appendStateChangeItemIfNecessary(a1, a2);
  v6 = *(a1 + 3520);
  if (v6)
  {
    v7 = *(v6 + 8);
    if (v7)
    {
      ++v7[5];
      WebKit::RemoteResourceCacheProxy::recordFontUse((v7 + 22), a2);
      if (v7[5] == 1)
      {
        (*(*v7 + 24))(v7);
      }

      else
      {
        --v7[5];
      }
    }

    v8 = *(a1 + 3520);
    if (v8)
    {
      v9 = *(v8 + 8);
      if (v9)
      {
        ++*(v9 + 20);
        if ((*(a3 + 40) & 1) == 0)
        {
          goto LABEL_73;
        }

        v57 = *(a3 + 32);
        WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>((v9 + 120), &v57, buf);
        if (buf[16] == 1)
        {
          WTF::WeakPtrFactory<WebCore::RenderingResourceObserver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded((v9 + 136), v9 + 88);
          v29 = *(v9 + 136);
          atomic_fetch_add(v29, 1u);
          *buf = v29;
          WebCore::RenderingResource::addObserver(a3, buf);
          v31 = *buf;
          *buf = 0;
          if (v31 && atomic_fetch_add(v31, 0xFFFFFFFF) == 1)
          {
            atomic_store(1u, v31);
            WTF::fastFree(v31, v30);
          }

          v32 = *(v9 + 176);
          if (!v32)
          {
            __break(0xC471u);
            JUMPOUT(0x19E1B3688);
          }

          WebKit::RemoteRenderingBackendProxy::cacheDecomposedGlyphs(v32, a3);
        }

        if (*(v9 + 20) == 1)
        {
          (*(*v9 + 24))(v9);
        }

        else
        {
          --*(v9 + 20);
        }
      }
    }
  }

  v10 = WebCore::Font::renderingResourceIdentifier(a2);
  v56 = v10;
  if ((*(a3 + 40) & 1) == 0)
  {
LABEL_73:
    __break(1u);
  }

  v55 = *(a3 + 32);
  v57 = &v56;
  v58 = &v55;
  v12 = *(a1 + 3512);
  if (v12)
  {
    atomic_fetch_add(v12, 1u);
    goto LABEL_14;
  }

  v47 = *(a1 + 3520);
  if (v47)
  {
    v48 = *(v47 + 8);
    if (v48)
    {
      ++*(v48 + 5);
      v49 = WebKit::RemoteRenderingBackendProxy::connection(v48, v11, buf);
      v12 = *buf;
      if (*(v48 + 5) == 1)
      {
        (*(*v48 + 24))(v48, v49);
      }

      else
      {
        --*(v48 + 5);
      }

      if (v12)
      {
        v10 = WTF::RefPtr<IPC::StreamClientConnection,WTF::RawPtrTraits<IPC::StreamClientConnection>,WTF::DefaultRefDerefTraits<IPC::StreamClientConnection>>::operator=((a1 + 3512), v12);
LABEL_14:
        if ((*(a1 + 3584) & 1) == 0)
        {
          v10 = *(a1 + 3544);
          if (v10)
          {
            WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteImageBufferProxy>(v10, *(a1 + 3536), buf);
            v10 = *buf;
            if (*buf)
            {
              v10 = WebKit::RemoteImageBufferProxy::backingStoreWillChange(*buf, v52);
              v54 = *buf;
              *buf = 0;
              if (v54)
              {
                v10 = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::ImageBuffer,(WTF::DestructionThread)0>::deref((v54 + 8), v53);
              }
            }
          }

          *(a1 + 3584) = 1;
        }

        v13 = *(a1 + 3504);
        v14 = *(v12 + 128);
        v15 = INFINITY;
        if (fabs(v14) != INFINITY)
        {
          WTF::ApproximateTime::now(v10);
          v15 = v14 + v16;
        }

        if (*(v12 + 64) != v13)
        {
          IPC::StreamClientConnectionBuffer::tryAcquire(v12 + 72, buf, v15);
          if (buf[16] != 1)
          {
            goto LABEL_74;
          }

          v33 = *&buf[8];
          if (*&buf[8] <= 1uLL)
          {
            __break(0xC471u);
            JUMPOUT(0x19E1B36A8);
          }

          v34 = *buf;
          **buf = 3198;
          v35 = v34 + 2;
          if (v33 - 2 < (-v35 & 7 | 8uLL))
          {
            goto LABEL_74;
          }

          v36 = -v35 & 7;
          *(v35 + v36) = v13;
          v37 = 6;
          if (v36 > 6)
          {
            v37 = v36;
          }

          v38 = v37 + 10;
          v39 = (*(v12 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
          v40 = *(v12 + 72);
          if (v39 + 16 >= v40)
          {
            v39 = 0;
          }

          v41 = v38 + v39;
          if (v40 <= v41)
          {
            v41 = 0;
          }

          *(v12 + 88) = v41;
          v42 = *(v12 + 80);
          if (*(v42 + 8) <= 0xFFuLL)
          {
            goto LABEL_73;
          }

          v43 = atomic_exchange((*(v42 + 16) + 128), v41);
          v44 = *(v12 + 124);
          if (v43 == 0x80000000 || v44 != 0)
          {
            v46 = v44 + 1;
            *(v12 + 124) = v46;
            if (v46 >= *(v12 + 120))
            {
              if (*(v12 + 112) == 1)
              {
                MEMORY[0x19EB16320](*(v12 + 100));
              }

              *(v12 + 124) = 0;
            }
          }

          *(v12 + 64) = v13;
        }

        IPC::StreamClientConnectionBuffer::tryAcquire(v12 + 72, buf, v15);
        if (buf[16])
        {
          v17 = *&buf[8];
          if (*&buf[8] <= 1uLL)
          {
            __break(0xC471u);
            JUMPOUT(0x19E1B3668);
          }

          v18 = *buf;
          **buf = 1063;
          v19 = v18 + 2;
          v20 = -v19 & 7 | 8;
          v21 = v17 - 2 - v20;
          if (v17 - 2 >= v20)
          {
            *(v19 + (-v19 & 7)) = *v57;
            v22 = v19 + v20;
            v23 = -v22 & 7 | 8;
            if (v21 >= v23)
            {
              *(v22 + (-v22 & 7)) = *v58;
              v24 = v17 - v21 + v23;
              if (v24 <= 0x10)
              {
                v24 = 16;
              }

              v25 = (*(v12 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
              v26 = *(v12 + 72);
              if (v25 + 16 >= v26)
              {
                v25 = 0;
              }

              v27 = v25 + v24;
              if (v26 <= v27)
              {
                v27 = 0;
              }

              *(v12 + 88) = v27;
              v28 = *(v12 + 80);
              if (*(v28 + 8) > 0xFFuLL)
              {
                if (atomic_exchange((*(v28 + 16) + 128), v27) == 0x80000000 || *(v12 + 124))
                {
                  if (*(v12 + 112) == 1)
                  {
                    MEMORY[0x19EB16320](*(v12 + 100));
                  }

                  *(v12 + 124) = 0;
                }

                goto LABEL_31;
              }

              goto LABEL_73;
            }
          }

          if ((buf[16] & 1) == 0)
          {
            goto LABEL_73;
          }

          IPC::StreamClientConnection::sendProcessOutOfStreamMessage(v12, *buf, *&buf[8]);
          if (!IPC::Connection::send<Messages::RemoteDisplayListRecorder::DrawDecomposedGlyphs>(*(v12 + 8), &v57, v13))
          {
LABEL_31:
            if (atomic_fetch_add(v12, 0xFFFFFFFF) == 1)
            {
              atomic_store(1u, v12);
              IPC::StreamClientConnection::operator delete(v12);
            }

            return;
          }
        }

LABEL_74:
        v50 = qword_1ED6410D0;
        if (os_log_type_enabled(qword_1ED6410D0, OS_LOG_TYPE_DEFAULT))
        {
          v51 = IPC::errorAsString();
          *buf = 136446466;
          *&buf[4] = "RemoteDisplayListRecorder_DrawDecomposedGlyphs";
          *&buf[12] = 2082;
          *&buf[14] = v51;
          _os_log_impl(&dword_19D52D000, v50, OS_LOG_TYPE_DEFAULT, "RemoteDisplayListRecorderProxy::send - failed, name:%{public}s, error:%{public}s", buf, 0x16u);
        }

        WebKit::RemoteDisplayListRecorderProxy::didBecomeUnresponsive(*(a1 + 3520));
        goto LABEL_31;
      }
    }
  }
}

void WebKit::RemoteDisplayListRecorderProxy::drawImageBuffer(uint64_t a1, uint64_t a2, char *a3, float *a4, uint64_t a5, unsigned int a6)
{
  v74 = *MEMORY[0x1E69E9840];
  v68 = a5;
  v69 = a6;
  WebKit::RemoteDisplayListRecorderProxy::appendStateChangeItemIfNecessary(a1, a2);
  v12 = WebKit::RemoteDisplayListRecorderProxy::recordResourceUse(*(a1 + 3520), a2);
  if ((v12 & 1) == 0)
  {
    v29 = a6;
    v60 = a1;
    v61 = a2;
    v62 = a3;
    v63 = a4;
    v28 = a5;

    goto __ZN7WebCore15GraphicsContext15drawImageBufferERNS_11ImageBufferERKNS_9FloatRectES5_NS_20ImagePaintingOptionsE;
  }

  v14 = *(a2 + 120);
  v15 = *(a1 + 3512);
  if (v15)
  {
    atomic_fetch_add(v15, 1u);
    goto LABEL_4;
  }

  v45 = *(a1 + 3520);
  if (v45)
  {
    v46 = *(v45 + 8);
    if (v46)
    {
      ++*(v46 + 5);
      v47 = WebKit::RemoteRenderingBackendProxy::connection(v46, v13, buf);
      v15 = *buf;
      if (*(v46 + 5) == 1)
      {
        (*(*v46 + 24))(v46, v47);
      }

      else
      {
        --*(v46 + 5);
      }

      if (v15)
      {
        v12 = WTF::RefPtr<IPC::StreamClientConnection,WTF::RawPtrTraits<IPC::StreamClientConnection>,WTF::DefaultRefDerefTraits<IPC::StreamClientConnection>>::operator=((a1 + 3512), v15);
LABEL_4:
        if ((*(a1 + 3584) & 1) == 0)
        {
          v12 = *(a1 + 3544);
          if (v12)
          {
            WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteImageBufferProxy>(v12, *(a1 + 3536), buf);
            v12 = *buf;
            if (*buf)
            {
              v12 = WebKit::RemoteImageBufferProxy::backingStoreWillChange(*buf, v64);
              v66 = *buf;
              *buf = 0;
              if (v66)
              {
                v12 = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::ImageBuffer,(WTF::DestructionThread)0>::deref((v66 + 8), v65);
              }
            }
          }

          *(a1 + 3584) = 1;
        }

        v16 = *(a1 + 3504);
        v17 = *(v15 + 128);
        v18 = INFINITY;
        if (fabs(v17) != INFINITY)
        {
          WTF::ApproximateTime::now(v12);
          v18 = v17 + v19;
        }

        if (*(v15 + 64) != v16)
        {
          IPC::StreamClientConnectionBuffer::tryAcquire(v15 + 72, buf, v18);
          if (buf[16] != 1)
          {
            goto LABEL_68;
          }

          v33 = *&buf[8];
          if (*&buf[8] <= 1uLL)
          {
            __break(0xC471u);
            JUMPOUT(0x19E1B3CD8);
          }

          v34 = *buf;
          **buf = 3198;
          v35 = v34 + 2;
          if (v33 - 2 < (-v35 & 7 | 8uLL))
          {
            goto LABEL_68;
          }

          v36 = -v35 & 7;
          *(v35 + v36) = v16;
          v37 = 6;
          if (v36 > 6)
          {
            v37 = v36;
          }

          v38 = v37 + 10;
          v39 = (*(v15 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
          v40 = *(v15 + 72);
          if (v39 + 16 >= v40)
          {
            v39 = 0;
          }

          v31 = v38 + v39;
          if (v40 <= v31)
          {
            v31 = 0;
          }

          *(v15 + 88) = v31;
          v30 = *(v15 + 80);
          if (*(v30 + 8) <= 0xFFuLL)
          {
            goto LABEL_66;
          }

          v41 = atomic_exchange((*(v30 + 16) + 128), v31);
          v42 = *(v15 + 124);
          if (v41 == 0x80000000 || v42 != 0)
          {
            v44 = v42 + 1;
            *(v15 + 124) = v44;
            if (v44 >= *(v15 + 120))
            {
              if (*(v15 + 112) == 1)
              {
                MEMORY[0x19EB16320](*(v15 + 100));
              }

              *(v15 + 124) = 0;
            }
          }

          *(v15 + 64) = v16;
        }

        IPC::StreamClientConnectionBuffer::tryAcquire(v15 + 72, &v70, v18);
        if (v72)
        {
          v20 = v70;
          v21 = v71;
          *&buf[16] = v71;
          if (v71 <= 1)
          {
            __break(0xC471u);
            JUMPOUT(0x19E1B3CB8);
          }

          *v70 = 1070;
          v22 = v20 + 1;
          v23 = v21 - 2;
          v24 = -v22 & 7 | 8;
          v25 = v23 >= v24;
          v26 = v23 - v24;
          if (v25)
          {
            *(v22 + (-v22 & 7)) = v14;
            *buf = v22 + v24;
            *&buf[8] = v26;
          }

          else
          {
            *buf = 0;
            *&buf[8] = 0;
          }

          IPC::ArgumentCoder<WebCore::PathEllipseInRect,void>::encode(buf, a3);
          IPC::ArgumentCoder<WebCore::PathEllipseInRect,void>::encode(buf, a4);
          IPC::ArgumentCoder<WebCore::ImagePaintingOptions,void>::encode(buf, &v68);
          if (*buf)
          {
            v31 = *&buf[16] - *&buf[8];
            if (*&buf[16] - *&buf[8] <= 0x10uLL)
            {
              v31 = 16;
            }

            v32 = (*(v15 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
            v30 = *(v15 + 72);
            if (v32 + 16 >= v30)
            {
              goto LABEL_67;
            }

            while (1)
            {
              v31 += v32;
              if (v30 <= v31)
              {
                v31 = 0;
              }

              *(v15 + 88) = v31;
              v30 = *(v15 + 80);
              if (*(v30 + 8) > 0xFFuLL)
              {
                break;
              }

LABEL_66:
              __break(1u);
LABEL_67:
              v32 = 0;
            }

            if (atomic_exchange((*(v30 + 16) + 128), v31) == 0x80000000 || *(v15 + 124))
            {
              if (*(v15 + 112) == 1)
              {
                MEMORY[0x19EB16320](*(v15 + 100));
              }

              *(v15 + 124) = 0;
            }

            goto LABEL_22;
          }

          v67 = v16;
          v31 = v72;
          if ((v72 & 1) == 0)
          {
            goto LABEL_66;
          }

          if (v71 > 1)
          {
            *v70 = 3197;
            v48 = (*(v15 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
            v49 = *(v15 + 72);
            if (v48 + 16 >= v49)
            {
              v48 = 0;
            }

            v50 = v48 + 16;
            if (v49 <= v50)
            {
              v31 = 0;
            }

            else
            {
              v31 = v50;
            }

            *(v15 + 88) = v31;
            v30 = *(v15 + 80);
            if (*(v30 + 8) <= 0xFFuLL)
            {
              goto LABEL_66;
            }

            atomic_exchange((*(v30 + 16) + 128), v31);
            *(v15 + 124) = 0;
            v51 = *(v15 + 8);
            v52 = IPC::Encoder::operator new(0x238, v27);
            *v52 = 1070;
            *(v52 + 2) = 0;
            *(v52 + 3) = 0;
            *(v52 + 1) = v67;
            *(v52 + 68) = 0;
            *(v52 + 70) = 0;
            *(v52 + 69) = 0;
            IPC::Encoder::encodeHeader(v52);
            *buf = v52;
            IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v52, v14);
            IPC::ArgumentCoder<WebCore::FloatRect,void>::encode(v52, a3);
            IPC::ArgumentCoder<WebCore::FloatRect,void>::encode(v52, a4);
            IPC::ArgumentCoder<WebCore::ImagePaintingOptions,void>::encode(v52, &v68);
            v54 = IPC::Connection::sendMessageImpl(v51, buf, 1, 0);
            v55 = *buf;
            *buf = 0;
            if (v55)
            {
              IPC::Encoder::~Encoder(v55, v53);
              bmalloc::api::tzoneFree(v56, v57);
            }

            if (!v54)
            {
              goto LABEL_22;
            }

            goto LABEL_68;
          }

          v61 = "/AppleInternal/Library/BuildRoots/4~CAtBugAdX2ypK3woS13W0YBGfMX4uuy1xhucdh4/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/local/include/wtf/StdLibExtras.h";
          v62 = "void WTF::memcpySpan(std::span<T, TExtent>, std::span<U, UExtent>) [T = unsigned char, TExtent = 18446744073709551615UL, U = const unsigned char, UExtent = 18446744073709551615UL]";
          v60 = 1067;
          v63 = 2;
          __break(0xC471u);
__ZN7WebCore15GraphicsContext15drawImageBufferERNS_11ImageBufferERKNS_9FloatRectES5_NS_20ImagePaintingOptionsE:
          MEMORY[0x1EEE55E58](v60, v61, v62, v63, v28, v29);
          return;
        }

LABEL_68:
        v58 = qword_1ED6410D0;
        if (os_log_type_enabled(qword_1ED6410D0, OS_LOG_TYPE_DEFAULT))
        {
          v59 = IPC::errorAsString();
          *buf = 136446466;
          *&buf[4] = "RemoteDisplayListRecorder_DrawImageBuffer";
          *&buf[12] = 2082;
          *&buf[14] = v59;
          _os_log_impl(&dword_19D52D000, v58, OS_LOG_TYPE_DEFAULT, "RemoteDisplayListRecorderProxy::send - failed, name:%{public}s, error:%{public}s", buf, 0x16u);
        }

        WebKit::RemoteDisplayListRecorderProxy::didBecomeUnresponsive(*(a1 + 3520));
LABEL_22:
        if (atomic_fetch_add(v15, 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, v15);
          IPC::StreamClientConnection::operator delete(v15);
        }
      }
    }
  }
}

void WebKit::RemoteDisplayListRecorderProxy::drawNativeImageInternal(uint64_t a1, WebCore::NativeImage *this, float *a3, float *a4, uint64_t a5, int a6)
{
  v7 = a5;
  v10 = this;
  v71 = *MEMORY[0x1E69E9840];
  v12 = *(&a5 + 1);
  if (*(&a5 + 1) == 0.0)
  {
    WebCore::NativeImage::headroom(this);
    v12 = v46;
  }

  if (*(a1 + 3572) == 1 && *(a1 + 3568) < v12)
  {
    v12 = *(a1 + 3568);
  }

  v13 = *(a1 + 3576);
  if (v13 < v12)
  {
    v13 = v12;
  }

  *(a1 + 3576) = v13;
  WebCore::NativeImage::headroom(v10);
  if (*(a1 + 3580) >= v15)
  {
    v15 = *(a1 + 3580);
  }

  *(a1 + 3580) = v15;
  v66[0] = v7;
  v66[2] = a6;
  *&v66[1] = v12;
  WebKit::RemoteDisplayListRecorderProxy::appendStateChangeItemIfNecessary(a1, v14);
  v16 = WebKit::RemoteDisplayListRecorderProxy::recordResourceUse(a1, v10);
  v19 = *(v10 + 40);
  if ((v19 & 1) == 0)
  {
    goto LABEL_75;
  }

  v20 = *(v10 + 4);
  v10 = *(a1 + 3512);
  if (v10)
  {
    atomic_fetch_add(v10, 1u);
    goto LABEL_13;
  }

  v47 = *(a1 + 3520);
  if (v47)
  {
    v48 = *(v47 + 8);
    if (v48)
    {
      ++*(v48 + 5);
      v49 = WebKit::RemoteRenderingBackendProxy::connection(v48, v17, buf);
      v10 = *buf;
      if (*(v48 + 5) == 1)
      {
        (*(*v48 + 24))(v48, v49);
      }

      else
      {
        --*(v48 + 5);
      }

      if (v10)
      {
        v16 = WTF::RefPtr<IPC::StreamClientConnection,WTF::RawPtrTraits<IPC::StreamClientConnection>,WTF::DefaultRefDerefTraits<IPC::StreamClientConnection>>::operator=((a1 + 3512), v10);
LABEL_13:
        if ((*(a1 + 3584) & 1) == 0)
        {
          v16 = *(a1 + 3544);
          if (v16)
          {
            WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteImageBufferProxy>(v16, *(a1 + 3536), buf);
            v16 = *buf;
            if (*buf)
            {
              v16 = WebKit::RemoteImageBufferProxy::backingStoreWillChange(*buf, v62);
              v64 = *buf;
              *buf = 0;
              if (v64)
              {
                v16 = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::ImageBuffer,(WTF::DestructionThread)0>::deref((v64 + 8), v63);
              }
            }
          }

          *(a1 + 3584) = 1;
        }

        v21 = *(a1 + 3504);
        v22 = *(v10 + 16);
        v23 = INFINITY;
        if (fabs(v22) != INFINITY)
        {
          WTF::ApproximateTime::now(v16);
          v23 = v22 + v24;
        }

        if (*(v10 + 8) != v21)
        {
          IPC::StreamClientConnectionBuffer::tryAcquire(v10 + 72, buf, v23);
          if (buf[16] != 1)
          {
            goto LABEL_77;
          }

          v34 = *&buf[8];
          if (*&buf[8] <= 1uLL)
          {
            __break(0xC471u);
            JUMPOUT(0x19E1B433CLL);
          }

          v35 = *buf;
          **buf = 3198;
          v36 = v35 + 2;
          if (v34 - 2 < (-v36 & 7 | 8uLL))
          {
            goto LABEL_77;
          }

          v37 = -v36 & 7;
          *(v36 + v37) = v21;
          v38 = 6;
          if (v37 > 6)
          {
            v38 = v37;
          }

          v39 = v38 + 10;
          v40 = (*(v10 + 11) + 1) & 0xFFFFFFFFFFFFFFFELL;
          v41 = *(v10 + 9);
          if (v40 + 16 >= v41)
          {
            v40 = 0;
          }

          v19 = v39 + v40;
          if (v41 <= v19)
          {
            v19 = 0;
          }

          *(v10 + 11) = v19;
          v18 = *(v10 + 10);
          if (*(v18 + 8) <= 0xFFuLL)
          {
            goto LABEL_75;
          }

          v42 = atomic_exchange((*(v18 + 16) + 128), v19);
          v43 = *(v10 + 31);
          if (v42 == 0x80000000 || v43 != 0)
          {
            v45 = v43 + 1;
            *(v10 + 31) = v45;
            if (v45 >= *(v10 + 30))
            {
              if (*(v10 + 112) == 1)
              {
                MEMORY[0x19EB16320](*(v10 + 25));
              }

              *(v10 + 31) = 0;
            }
          }

          *(v10 + 8) = v21;
        }

        IPC::StreamClientConnectionBuffer::tryAcquire(v10 + 72, &v67, v23);
        if (v69)
        {
          v25 = v67;
          v26 = v68;
          *&buf[16] = v68;
          if (v68 <= 1)
          {
            __break(0xC471u);
          }

          else
          {
            *v67 = 1073;
            v27 = v25 + 1;
            v28 = v26 - 2;
            v29 = -v27 & 7 | 8;
            v30 = v28 >= v29;
            v31 = v28 - v29;
            if (v30)
            {
              *(v27 + (-v27 & 7)) = v20;
              *buf = v27 + v29;
              *&buf[8] = v31;
            }

            else
            {
              *buf = 0;
              *&buf[8] = 0;
            }

            IPC::ArgumentCoder<WebCore::PathEllipseInRect,void>::encode(buf, a3);
            IPC::ArgumentCoder<WebCore::PathEllipseInRect,void>::encode(buf, a4);
            IPC::ArgumentCoder<WebCore::ImagePaintingOptions,void>::encode(buf, v66);
            if (*buf)
            {
              v19 = *&buf[16] - *&buf[8];
              if (*&buf[16] - *&buf[8] <= 0x10uLL)
              {
                v19 = 16;
              }

              v33 = (*(v10 + 11) + 1) & 0xFFFFFFFFFFFFFFFELL;
              v18 = *(v10 + 9);
              if (v33 + 16 >= v18)
              {
                goto LABEL_76;
              }

              while (1)
              {
                v19 += v33;
                if (v18 <= v19)
                {
                  v19 = 0;
                }

                *(v10 + 11) = v19;
                v18 = *(v10 + 10);
                if (*(v18 + 8) > 0xFFuLL)
                {
                  break;
                }

LABEL_75:
                __break(1u);
LABEL_76:
                v33 = 0;
              }

              if (atomic_exchange((*(v18 + 16) + 128), v19) == 0x80000000 || *(v10 + 31))
              {
                if (*(v10 + 112) == 1)
                {
                  MEMORY[0x19EB16320](*(v10 + 25));
                }

                *(v10 + 31) = 0;
              }

              goto LABEL_31;
            }

            v65 = v21;
            v19 = v69;
            if ((v69 & 1) == 0)
            {
              goto LABEL_75;
            }

            if (v68 > 1)
            {
              *v67 = 3197;
              v50 = (*(v10 + 11) + 1) & 0xFFFFFFFFFFFFFFFELL;
              v51 = *(v10 + 9);
              if (v50 + 16 >= v51)
              {
                v50 = 0;
              }

              v52 = v50 + 16;
              if (v51 <= v52)
              {
                v19 = 0;
              }

              else
              {
                v19 = v52;
              }

              *(v10 + 11) = v19;
              v18 = *(v10 + 10);
              if (*(v18 + 8) <= 0xFFuLL)
              {
                goto LABEL_75;
              }

              atomic_exchange((*(v18 + 16) + 128), v19);
              *(v10 + 31) = 0;
              v53 = *(v10 + 1);
              v54 = IPC::Encoder::operator new(0x238, v32);
              *v54 = 1073;
              *(v54 + 2) = 0;
              *(v54 + 3) = 0;
              *(v54 + 1) = v65;
              *(v54 + 68) = 0;
              *(v54 + 70) = 0;
              *(v54 + 69) = 0;
              IPC::Encoder::encodeHeader(v54);
              *buf = v54;
              IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v54, v20);
              IPC::ArgumentCoder<WebCore::FloatRect,void>::encode(v54, a3);
              IPC::ArgumentCoder<WebCore::FloatRect,void>::encode(v54, a4);
              IPC::ArgumentCoder<WebCore::ImagePaintingOptions,void>::encode(v54, v66);
              v56 = IPC::Connection::sendMessageImpl(v53, buf, 1, 0);
              v57 = *buf;
              *buf = 0;
              if (v57)
              {
                IPC::Encoder::~Encoder(v57, v55);
                bmalloc::api::tzoneFree(v58, v59);
              }

              if (!v56)
              {
                goto LABEL_31;
              }

              goto LABEL_77;
            }

            __break(0xC471u);
          }

          JUMPOUT(0x19E1B4314);
        }

LABEL_77:
        v60 = qword_1ED6410D0;
        if (os_log_type_enabled(qword_1ED6410D0, OS_LOG_TYPE_DEFAULT))
        {
          v61 = IPC::errorAsString();
          *buf = 136446466;
          *&buf[4] = "RemoteDisplayListRecorder_DrawNativeImage";
          *&buf[12] = 2082;
          *&buf[14] = v61;
          _os_log_impl(&dword_19D52D000, v60, OS_LOG_TYPE_DEFAULT, "RemoteDisplayListRecorderProxy::send - failed, name:%{public}s, error:%{public}s", buf, 0x16u);
        }

        WebKit::RemoteDisplayListRecorderProxy::didBecomeUnresponsive(*(a1 + 3520));
LABEL_31:
        if (atomic_fetch_add(v10, 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, v10);
          IPC::StreamClientConnection::operator delete(v10);
        }
      }
    }
  }
}

uint64_t WebKit::RemoteDisplayListRecorderProxy::recordResourceUse(WebKit::RemoteDisplayListRecorderProxy *this, WebCore::NativeImage *a2)
{
  v2 = *(this + 440);
  if (!v2)
  {
    return 0;
  }

  v3 = *(v2 + 8);
  if (!v3)
  {
    return 0;
  }

  ++v3[5];
  WebCore::NativeImage::colorSpace(&cf, a2);
  v6 = WebCore::NativeImage::headroom(a2);
  if (v7 > 1.0)
  {
    if (*(this + 3529) == 1 && *(this + 3528) == 4)
    {
      v10 = WebCore::DestinationColorSpace::ExtendedSRGB(v6);
    }

    else
    {
      v10 = WebCore::DestinationColorSpace::DisplayP3(v6);
    }

    WTF::RetainPtr<void const*>::operator=(&cf, *v10);
  }

  WebKit::RemoteResourceCacheProxy::recordNativeImageUse((v3 + 22), a2, &cf);
  v8 = cf;
  cf = 0;
  if (v8)
  {
    CFRelease(v8);
  }

  if (v3[5] == 1)
  {
    (*(*v3 + 24))(v3);
  }

  else
  {
    --v3[5];
  }

  return 1;
}

void WebKit::RemoteDisplayListRecorderProxy::drawSystemImage(uint64_t a1, unsigned int *a2, float *a3)
{
  v62 = *MEMORY[0x1E69E9840];
  v6 = WebKit::RemoteDisplayListRecorderProxy::appendStateChangeItemIfNecessary(a1, a2);
  if (*(a2 + 12) == 1)
  {
    v8 = *(a2 + 2);
    if (v8)
    {
      v9 = WebCore::DestinationColorSpace::SRGB(v6);
      (*(*v8 + 304))(buf, v8, v9);
      if (!*buf)
      {
        return;
      }

      WebKit::RemoteDisplayListRecorderProxy::recordResourceUse(a1, *buf);
      v6 = *buf;
      *buf = 0;
      if (v6)
      {
        do
        {
          v10 = v6[1];
          if ((v10 & 1) == 0)
          {
            v6 = WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebCore::RenderingResource,(WTF::DestructionThread)0>(v6[1], v7);
            goto LABEL_9;
          }

          v11 = v6[1];
          atomic_compare_exchange_strong_explicit(v6 + 1, &v11, (v10 - 2), memory_order_relaxed, memory_order_relaxed);
        }

        while (v11 != v10);
        if (v10 == 3)
        {
          v6 = (*(*v6 + 1))(v6);
        }
      }
    }
  }

LABEL_9:
  atomic_fetch_add(a2 + 2, 1u);
  v12 = *(a1 + 3512);
  if (!v12)
  {
    goto LABEL_70;
  }

  atomic_fetch_add(v12, 1u);
  while (1)
  {
    if ((*(a1 + 3584) & 1) == 0)
    {
      v6 = *(a1 + 3544);
      if (v6)
      {
        WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteImageBufferProxy>(v6, *(a1 + 3536), buf);
        v6 = *buf;
        if (*buf)
        {
          v6 = WebKit::RemoteImageBufferProxy::ensureBackend(*buf, v55);
          if (v6)
          {
            v6 = (*(*v6 + 21))(v6);
          }

          v57 = *buf;
          *buf = 0;
          if (v57)
          {
            v6 = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::ImageBuffer,(WTF::DestructionThread)0>::deref((v57 + 8), v56);
          }
        }
      }

      *(a1 + 3584) = 1;
    }

    v13 = *(a1 + 3504);
    v14 = *(v12 + 128);
    v15 = INFINITY;
    if (fabs(v14) != INFINITY)
    {
      WTF::ApproximateTime::now(v6);
      v15 = v14 + v16;
    }

    if (*(v12 + 64) != v13)
    {
      IPC::StreamClientConnectionBuffer::tryAcquire(v12 + 72, buf, v15);
      if (buf[16] != 1)
      {
        goto LABEL_61;
      }

      v36 = *&buf[8];
      if (*&buf[8] <= 1uLL)
      {
LABEL_91:
        __break(0xC471u);
        JUMPOUT(0x19E1B4B38);
      }

      v37 = *buf;
      **buf = 3198;
      v38 = v37 + 2;
      if (v36 - 2 < (-v38 & 7 | 8uLL))
      {
        goto LABEL_61;
      }

      v39 = -v38 & 7;
      *(v38 + v39) = v13;
      v40 = 6;
      if (v39 > 6)
      {
        v40 = v39;
      }

      v41 = v40 + 10;
      v42 = (*(v12 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
      v43 = *(v12 + 72);
      if (v42 + 16 >= v43)
      {
        v42 = 0;
      }

      v44 = v41 + v42;
      if (v43 <= v44)
      {
        v44 = 0;
      }

      *(v12 + 88) = v44;
      v45 = *(v12 + 80);
      if (*(v45 + 8) <= 0xFFuLL)
      {
        goto LABEL_69;
      }

      v46 = atomic_exchange((*(v45 + 16) + 128), v44);
      v47 = *(v12 + 124);
      if (v46 == 0x80000000 || v47 != 0)
      {
        v49 = v47 + 1;
        *(v12 + 124) = v49;
        if (v49 >= *(v12 + 120))
        {
          if (*(v12 + 112) == 1)
          {
            MEMORY[0x19EB16320](*(v12 + 100));
          }

          *(v12 + 124) = 0;
        }
      }

      *(v12 + 64) = v13;
    }

    IPC::StreamClientConnectionBuffer::tryAcquire(v12 + 72, &v58, v15);
    if ((v60 & 1) == 0)
    {
      goto LABEL_61;
    }

    v17 = v58;
    v18 = v59;
    *&buf[16] = v59;
    if (v59 <= 1)
    {
      goto LABEL_91;
    }

    *v58 = 1078;
    *buf = v17 + 1;
    *&buf[8] = v18 - 2;
    IPC::ArgumentCoder<WebCore::SystemImage,void>::encode(buf, a2);
    IPC::ArgumentCoder<WebCore::PathEllipseInRect,void>::encode(buf, a3);
    if (!*buf)
    {
      break;
    }

    v19 = *&buf[16] - *&buf[8];
    if (*&buf[16] - *&buf[8] <= 0x10uLL)
    {
      v19 = 16;
    }

    v20 = (*(v12 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
    v21 = *(v12 + 72);
    if (v20 + 16 >= v21)
    {
      v20 = 0;
    }

    v22 = v20 + v19;
    if (v21 <= v22)
    {
      v22 = 0;
    }

    *(v12 + 88) = v22;
    v23 = *(v12 + 80);
    if (*(v23 + 8) > 0xFFuLL)
    {
      if (atomic_exchange((*(v23 + 16) + 128), v22) == 0x80000000 || *(v12 + 124))
      {
        if (*(v12 + 112) == 1)
        {
          MEMORY[0x19EB16320](*(v12 + 100));
        }

        *(v12 + 124) = 0;
      }

      goto LABEL_64;
    }

LABEL_69:
    __break(1u);
LABEL_70:
    v52 = *(a1 + 3520);
    if (!v52)
    {
      goto LABEL_66;
    }

    v53 = *(v52 + 8);
    if (!v53)
    {
      goto LABEL_66;
    }

    ++*(v53 + 5);
    v54 = WebKit::RemoteRenderingBackendProxy::connection(v53, v7, buf);
    v12 = *buf;
    if (*(v53 + 5) == 1)
    {
      (*(*v53 + 24))(v53, v54);
      if (!v12)
      {
        goto LABEL_66;
      }
    }

    else
    {
      --*(v53 + 5);
      if (!v12)
      {
        goto LABEL_66;
      }
    }

    atomic_fetch_add(v12, 1u);
    v6 = *(a1 + 3512);
    *(a1 + 3512) = v12;
    if (v6 && atomic_fetch_add(v6, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v6);
      IPC::StreamClientConnection::operator delete(v6);
    }
  }

  if ((v60 & 1) == 0)
  {
    goto LABEL_69;
  }

  if (v59 <= 1)
  {
    __break(0xC471u);
    JUMPOUT(0x19E1B4B58);
  }

  *v58 = 3197;
  v24 = (*(v12 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
  v25 = *(v12 + 72);
  if (v24 + 16 >= v25)
  {
    v24 = 0;
  }

  v26 = v24 + 16;
  v27 = v25 <= v26 ? 0 : v26;
  *(v12 + 88) = v27;
  v28 = *(v12 + 80);
  if (*(v28 + 8) <= 0xFFuLL)
  {
    goto LABEL_69;
  }

  atomic_exchange((*(v28 + 16) + 128), v27);
  *(v12 + 124) = 0;
  v29 = *(v12 + 8);
  v30 = IPC::Encoder::operator new(0x238, v7);
  *v30 = 1078;
  *(v30 + 2) = 0;
  *(v30 + 3) = 0;
  *(v30 + 1) = v13;
  *(v30 + 68) = 0;
  *(v30 + 70) = 0;
  *(v30 + 69) = 0;
  IPC::Encoder::encodeHeader(v30);
  *buf = v30;
  IPC::ArgumentCoder<WebCore::SystemImage,void>::encode(v30, a2);
  IPC::ArgumentCoder<WebCore::FloatRect,void>::encode(v30, a3);
  v32 = IPC::Connection::sendMessageImpl(v29, buf, 1, 0);
  v33 = *buf;
  *buf = 0;
  if (v33)
  {
    IPC::Encoder::~Encoder(v33, v31);
    bmalloc::api::tzoneFree(v34, v35);
    if (!v32)
    {
      goto LABEL_64;
    }
  }

  else if (!v32)
  {
    goto LABEL_64;
  }

LABEL_61:
  v50 = qword_1ED6410D0;
  if (os_log_type_enabled(qword_1ED6410D0, OS_LOG_TYPE_DEFAULT))
  {
    v51 = IPC::errorAsString();
    *buf = 136446466;
    *&buf[4] = "RemoteDisplayListRecorder_DrawSystemImage";
    *&buf[12] = 2082;
    *&buf[14] = v51;
    _os_log_impl(&dword_19D52D000, v50, OS_LOG_TYPE_DEFAULT, "RemoteDisplayListRecorderProxy::send - failed, name:%{public}s, error:%{public}s", buf, 0x16u);
  }

  WebKit::RemoteDisplayListRecorderProxy::didBecomeUnresponsive(*(a1 + 3520));
LABEL_64:
  if (atomic_fetch_add(v12, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v12);
    IPC::StreamClientConnection::operator delete(v12);
  }

LABEL_66:
  if (atomic_fetch_add(a2 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, a2 + 2);
    (*(*a2 + 8))(a2);
  }
}

void WebKit::RemoteDisplayListRecorderProxy::drawPattern(uint64_t a1, uint64_t a2, float *a3, float *a4, __int128 *a5, float *a6, float *a7, uint64_t a8, uint64_t a9, int a10)
{
  v86 = *MEMORY[0x1E69E9840];
  v80 = a9;
  v81 = a10;
  WebKit::RemoteDisplayListRecorderProxy::appendStateChangeItemIfNecessary(a1, a2);
  v18 = WebKit::RemoteDisplayListRecorderProxy::recordResourceUse(a1, a2);
  if ((*(a2 + 40) & 1) == 0)
  {
    goto LABEL_65;
  }

  v10 = *(a2 + 32);
  v20 = *(a1 + 3512);
  if (!v20)
  {
    goto LABEL_66;
  }

  atomic_fetch_add(v20, 1u);
  while (1)
  {
    if ((*(a1 + 3584) & 1) == 0)
    {
      v18 = *(a1 + 3544);
      if (v18)
      {
        WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteImageBufferProxy>(v18, *(a1 + 3536), buf);
        v18 = *buf;
        if (*buf)
        {
          v18 = WebKit::RemoteImageBufferProxy::ensureBackend(*buf, v76);
          if (v18)
          {
            v18 = (*(*v18 + 168))(v18);
          }

          v78 = *buf;
          *buf = 0;
          if (v78)
          {
            v18 = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::ImageBuffer,(WTF::DestructionThread)0>::deref((v78 + 8), v77);
          }
        }
      }

      *(a1 + 3584) = 1;
    }

    v21 = *(a1 + 3504);
    v22 = *(v20 + 128);
    v23 = INFINITY;
    if (fabs(v22) != INFINITY)
    {
      WTF::ApproximateTime::now(v18);
      v23 = v22 + v24;
    }

    if (*(v20 + 64) != v21)
    {
      IPC::StreamClientConnectionBuffer::tryAcquire(v20 + 72, buf, v23);
      if (buf[16] != 1)
      {
        goto LABEL_59;
      }

      v56 = *&buf[8];
      if (*&buf[8] <= 1uLL)
      {
LABEL_88:
        __break(0xC471u);
        JUMPOUT(0x19E1B5210);
      }

      v57 = *buf;
      **buf = 3198;
      v58 = v57 + 2;
      if (v56 - 2 < (-v58 & 7 | 8uLL))
      {
        goto LABEL_59;
      }

      v59 = -v58 & 7;
      *(v58 + v59) = v21;
      v60 = 6;
      if (v59 > 6)
      {
        v60 = v59;
      }

      v61 = v60 + 10;
      v62 = (*(v20 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
      v63 = *(v20 + 72);
      if (v62 + 16 >= v63)
      {
        v62 = 0;
      }

      v64 = v61 + v62;
      if (v63 <= v64)
      {
        v64 = 0;
      }

      *(v20 + 88) = v64;
      v65 = *(v20 + 80);
      if (*(v65 + 8) <= 0xFFuLL)
      {
        goto LABEL_65;
      }

      v66 = atomic_exchange((*(v65 + 16) + 128), v64);
      v67 = *(v20 + 124);
      if (v66 == 0x80000000 || v67 != 0)
      {
        v69 = v67 + 1;
        *(v20 + 124) = v69;
        if (v69 >= *(v20 + 120))
        {
          if (*(v20 + 112) == 1)
          {
            MEMORY[0x19EB16320](*(v20 + 100));
          }

          *(v20 + 124) = 0;
        }
      }

      *(v20 + 64) = v21;
    }

    IPC::StreamClientConnectionBuffer::tryAcquire(v20 + 72, &v82, v23);
    if ((v84 & 1) == 0)
    {
      goto LABEL_59;
    }

    v25 = v82;
    v26 = v83;
    *&buf[16] = v83;
    if (v83 <= 1)
    {
      goto LABEL_88;
    }

    *v82 = 1076;
    v27 = v25 + 1;
    v28 = v26 - 2;
    v29 = -v27 & 7 | 8;
    v30 = v28 >= v29;
    v31 = v28 - v29;
    if (v30)
    {
      *(v27 + (-v27 & 7)) = v10;
      *buf = v27 + v29;
      *&buf[8] = v31;
    }

    else
    {
      *buf = 0;
      *&buf[8] = 0;
    }

    IPC::ArgumentCoder<WebCore::PathEllipseInRect,void>::encode(buf, a3);
    IPC::ArgumentCoder<WebCore::PathEllipseInRect,void>::encode(buf, a4);
    v32 = *buf;
    v33 = -*buf & 7 | 0x30;
    v34 = *&buf[8] - v33;
    if (*&buf[8] < v33)
    {
      *buf = 0;
      *&buf[8] = 0;
    }

    else
    {
      v35 = (*buf + (-*buf & 7));
      v36 = a5[2];
      v37 = *a5;
      v35[1] = a5[1];
      v35[2] = v36;
      *v35 = v37;
      *buf = v32 + v33;
      *&buf[8] = v34;
    }

    IPC::StreamConnectionEncoder::operator<<<WebCore::FloatPoint const&>(buf, a6);
    IPC::StreamConnectionEncoder::operator<<<WebCore::FloatPoint const&>(buf, a7);
    IPC::ArgumentCoder<WebCore::ImagePaintingOptions,void>::encode(buf, &v80);
    if (!*buf)
    {
      break;
    }

    v38 = *&buf[16] - *&buf[8];
    if (*&buf[16] - *&buf[8] <= 0x10uLL)
    {
      v38 = 16;
    }

    v39 = (*(v20 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
    v40 = *(v20 + 72);
    if (v39 + 16 >= v40)
    {
      v39 = 0;
    }

    v41 = v39 + v38;
    if (v40 <= v41)
    {
      v41 = 0;
    }

    *(v20 + 88) = v41;
    v42 = *(v20 + 80);
    if (*(v42 + 8) > 0xFFuLL)
    {
      if (atomic_exchange((*(v42 + 16) + 128), v41) == 0x80000000 || *(v20 + 124))
      {
        if (*(v20 + 112) == 1)
        {
          MEMORY[0x19EB16320](*(v20 + 100));
        }

        *(v20 + 124) = 0;
      }

      goto LABEL_62;
    }

LABEL_65:
    __break(1u);
LABEL_66:
    v72 = *(a1 + 3520);
    if (!v72)
    {
      return;
    }

    v73 = a7;
    v74 = *(v72 + 8);
    if (!v74)
    {
      return;
    }

    ++*(v74 + 5);
    v75 = WebKit::RemoteRenderingBackendProxy::connection(v74, v19, buf);
    v20 = *buf;
    if (*(v74 + 5) == 1)
    {
      (*(*v74 + 24))(v74, v75);
      if (!v20)
      {
        return;
      }
    }

    else
    {
      --*(v74 + 5);
      if (!v20)
      {
        return;
      }
    }

    atomic_fetch_add(v20, 1u);
    v18 = *(a1 + 3512);
    *(a1 + 3512) = v20;
    if (v18 && atomic_fetch_add(v18, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v18);
      IPC::StreamClientConnection::operator delete(v18);
    }

    a7 = v73;
  }

  if ((v84 & 1) == 0)
  {
    goto LABEL_65;
  }

  if (v83 <= 1)
  {
    __break(0xC471u);
    JUMPOUT(0x19E1B5230);
  }

  v79 = a6;
  *v82 = 3197;
  v43 = (*(v20 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
  v44 = *(v20 + 72);
  if (v43 + 16 >= v44)
  {
    v43 = 0;
  }

  v45 = v43 + 16;
  v46 = v44 <= v45 ? 0 : v45;
  *(v20 + 88) = v46;
  v47 = *(v20 + 80);
  if (*(v47 + 8) <= 0xFFuLL)
  {
    goto LABEL_65;
  }

  v48 = a7;
  atomic_exchange((*(v47 + 16) + 128), v46);
  *(v20 + 124) = 0;
  v49 = *(v20 + 8);
  v50 = IPC::Encoder::operator new(0x238, v19);
  *v50 = 1076;
  *(v50 + 2) = 0;
  *(v50 + 3) = 0;
  *(v50 + 1) = v21;
  *(v50 + 68) = 0;
  *(v50 + 70) = 0;
  *(v50 + 69) = 0;
  IPC::Encoder::encodeHeader(v50);
  *buf = v50;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v50, v10);
  IPC::ArgumentCoder<WebCore::FloatRect,void>::encode(v50, a3);
  IPC::ArgumentCoder<WebCore::FloatRect,void>::encode(v50, a4);
  IPC::ArgumentCoder<std::span<double const,6ul>,void>::encode<IPC::Encoder>(v50, a5);
  IPC::ArgumentCoder<WebCore::FloatPoint,void>::encode(v50, v79);
  IPC::ArgumentCoder<WebCore::FloatPoint,void>::encode(v50, v48);
  IPC::ArgumentCoder<WebCore::ImagePaintingOptions,void>::encode(v50, &v80);
  v52 = IPC::Connection::sendMessageImpl(v49, buf, 1, 0);
  v53 = *buf;
  *buf = 0;
  if (v53)
  {
    IPC::Encoder::~Encoder(v53, v51);
    bmalloc::api::tzoneFree(v54, v55);
    if (!v52)
    {
      goto LABEL_62;
    }
  }

  else if (!v52)
  {
    goto LABEL_62;
  }

LABEL_59:
  v70 = qword_1ED6410D0;
  if (os_log_type_enabled(qword_1ED6410D0, OS_LOG_TYPE_DEFAULT))
  {
    v71 = IPC::errorAsString();
    *buf = 136446466;
    *&buf[4] = "RemoteDisplayListRecorder_DrawPatternNativeImage";
    *&buf[12] = 2082;
    *&buf[14] = v71;
    _os_log_impl(&dword_19D52D000, v70, OS_LOG_TYPE_DEFAULT, "RemoteDisplayListRecorderProxy::send - failed, name:%{public}s, error:%{public}s", buf, 0x16u);
  }

  WebKit::RemoteDisplayListRecorderProxy::didBecomeUnresponsive(*(a1 + 3520));
LABEL_62:
  if (atomic_fetch_add(v20, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v20);
    IPC::StreamClientConnection::operator delete(v20);
  }
}

void WebKit::RemoteDisplayListRecorderProxy::drawPattern(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6, void *a7, uint64_t a8, uint64_t a9, int a10)
{
  v35 = *MEMORY[0x1E69E9840];
  v30 = a9;
  v31 = a10;
  WebKit::RemoteDisplayListRecorderProxy::appendStateChangeItemIfNecessary(a1, a2);
  if (WebKit::RemoteDisplayListRecorderProxy::recordResourceUse(*(a1 + 3520), a2))
  {
    v28 = *(a2 + 120);
    v29[0] = &v28;
    v29[1] = a3;
    v29[2] = a4;
    v29[3] = a5;
    v29[4] = a6;
    v29[5] = a7;
    v29[6] = &v30;
    v18 = *(a1 + 3512);
    if (v18)
    {
      atomic_fetch_add(v18, 1u);
    }

    else
    {
      v22 = *(a1 + 3520);
      if (!v22)
      {
        return;
      }

      v23 = *(v22 + 8);
      if (!v23)
      {
        return;
      }

      ++*(v23 + 5);
      v24 = WebKit::RemoteRenderingBackendProxy::connection(v23, v17, buf);
      v18 = *buf;
      if (*(v23 + 5) == 1)
      {
        (*(*v23 + 24))(v23, v24);
      }

      else
      {
        --*(v23 + 5);
      }

      if (!v18)
      {
        return;
      }

      WTF::RefPtr<IPC::StreamClientConnection,WTF::RawPtrTraits<IPC::StreamClientConnection>,WTF::DefaultRefDerefTraits<IPC::StreamClientConnection>>::operator=((a1 + 3512), v18);
    }

    if ((*(a1 + 3584) & 1) == 0)
    {
      v19 = *(a1 + 3544);
      if (v19)
      {
        WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteImageBufferProxy>(v19, *(a1 + 3536), buf);
        if (*buf)
        {
          WebKit::RemoteImageBufferProxy::backingStoreWillChange(*buf, v25);
          v27 = *buf;
          *buf = 0;
          if (v27)
          {
            WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::ImageBuffer,(WTF::DestructionThread)0>::deref((v27 + 8), v26);
          }
        }
      }

      *(a1 + 3584) = 1;
    }

    if (IPC::StreamClientConnection::send<Messages::RemoteDisplayListRecorder::DrawPatternImageBuffer,WebKit::RemoteDisplayListRecorderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v18, v29, *(a1 + 3504)))
    {
      v20 = qword_1ED6410D0;
      if (os_log_type_enabled(qword_1ED6410D0, OS_LOG_TYPE_DEFAULT))
      {
        v21 = IPC::errorAsString();
        *buf = 136446466;
        *&buf[4] = "RemoteDisplayListRecorder_DrawPatternImageBuffer";
        v33 = 2082;
        v34 = v21;
        _os_log_impl(&dword_19D52D000, v20, OS_LOG_TYPE_DEFAULT, "RemoteDisplayListRecorderProxy::send - failed, name:%{public}s, error:%{public}s", buf, 0x16u);
      }

      WebKit::RemoteDisplayListRecorderProxy::didBecomeUnresponsive(*(a1 + 3520));
    }

    if (atomic_fetch_add(v18, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v18);
      IPC::StreamClientConnection::operator delete(v18);
    }
  }

  else
  {

    MEMORY[0x1EEE55E48](a1, a2, a3, a4, a5, a6, a7);
  }
}

void WebKit::RemoteDisplayListRecorderProxy::beginTransparencyLayer(WebKit::RemoteDisplayListRecorderProxy *this, float a2)
{
  v37 = *MEMORY[0x1E69E9840];
  updated = WebCore::DisplayList::Recorder::updateStateForBeginTransparencyLayer(this, a2);
  v35 = a2;
  v6 = *(this + 439);
  if (v6)
  {
    atomic_fetch_add(v6, 1u);
    goto LABEL_3;
  }

  v29 = *(this + 440);
  if (v29)
  {
    v30 = *(v29 + 8);
    if (v30)
    {
      ++*(v30 + 5);
      v31 = WebKit::RemoteRenderingBackendProxy::connection(v30, v5, buf);
      v6 = *buf;
      if (*(v30 + 5) == 1)
      {
        (*(*v30 + 24))(v30, v31);
      }

      else
      {
        --*(v30 + 5);
      }

      if (v6)
      {
        updated = WTF::RefPtr<IPC::StreamClientConnection,WTF::RawPtrTraits<IPC::StreamClientConnection>,WTF::DefaultRefDerefTraits<IPC::StreamClientConnection>>::operator=(this + 439, v6);
LABEL_3:
        if ((*(this + 3584) & 1) == 0)
        {
          updated = *(this + 443);
          if (updated)
          {
            WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteImageBufferProxy>(updated, *(this + 442), buf);
            updated = *buf;
            if (*buf)
            {
              updated = WebKit::RemoteImageBufferProxy::backingStoreWillChange(*buf, v32);
              v34 = *buf;
              *buf = 0;
              if (v34)
              {
                updated = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::ImageBuffer,(WTF::DestructionThread)0>::deref((v34 + 8), v33);
              }
            }
          }

          *(this + 3584) = 1;
        }

        v7 = *(this + 438);
        v8 = *(v6 + 128);
        v9 = INFINITY;
        if (fabs(v8) != INFINITY)
        {
          WTF::ApproximateTime::now(updated);
          v9 = v8 + v10;
        }

        if (*(v6 + 64) != v7)
        {
          IPC::StreamClientConnectionBuffer::tryAcquire(v6 + 72, buf, v9);
          if (buf[16] != 1)
          {
            goto LABEL_34;
          }

          v18 = *&buf[8];
          if (*&buf[8] <= 1uLL)
          {
            goto LABEL_55;
          }

          v19 = *buf;
          **buf = 3198;
          v20 = v19 + 2;
          if (v18 - 2 < (-v20 & 7 | 8uLL))
          {
            goto LABEL_34;
          }

          v21 = -v20 & 7;
          *(v20 + v21) = v7;
          v22 = 6;
          if (v21 > 6)
          {
            v22 = v21;
          }

          v23 = v22 + 10;
          v24 = (*(v6 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
          v25 = *(v6 + 72);
          if (v24 + 16 >= v25)
          {
            v24 = 0;
          }

          v15 = v23 + v24;
          if (v25 <= v15)
          {
            v15 = 0;
          }

          *(v6 + 88) = v15;
          v26 = *(v6 + 80);
          if (*(v26 + 8) <= 0xFFuLL)
          {
            goto LABEL_48;
          }

          IPC::StreamClientConnection::wakeUpServerBatched(v6, atomic_exchange((*(v26 + 16) + 128), v15) == 0x80000000);
          *(v6 + 64) = v7;
        }

        IPC::StreamClientConnectionBuffer::tryAcquire(v6 + 72, buf, v9);
        if ((buf[16] & 1) == 0)
        {
          goto LABEL_34;
        }

        v11 = *&buf[8];
        if (*&buf[8] > 1uLL)
        {
          v12 = *buf;
          **buf = 1051;
          v13 = v12 + 2;
          if (v11 - 2 >= (-v13 & 3 | 4uLL))
          {
            *(v13 + (-v13 & 3)) = v35;
            v14 = (*(v6 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
            v15 = *(v6 + 72);
            if (v14 + 16 >= v15)
            {
              goto LABEL_49;
            }

            while (1)
            {
              v16 = v14 + 16;
              v15 = v15 <= v16 ? 0 : v16;
              *(v6 + 88) = v15;
              v17 = *(v6 + 80);
              if (*(v17 + 8) > 0xFFuLL)
              {
                break;
              }

LABEL_48:
              __break(1u);
LABEL_49:
              v14 = 0;
            }

            if (atomic_exchange((*(v17 + 16) + 128), v15) == 0x80000000 || *(v6 + 124))
            {
              if (*(v6 + 112) == 1)
              {
                MEMORY[0x19EB16320](*(v6 + 100));
              }

              *(v6 + 124) = 0;
            }

            goto LABEL_17;
          }

          v15 = buf[16];
          if ((buf[16] & 1) == 0)
          {
            goto LABEL_48;
          }

          IPC::StreamClientConnection::sendProcessOutOfStreamMessage(v6, *buf, *&buf[8]);
          if (!IPC::Connection::send<Messages::RemoteDisplayListRecorder::BeginTransparencyLayer>(*(v6 + 8), &v35, v7))
          {
            goto LABEL_17;
          }

LABEL_34:
          v27 = qword_1ED6410D0;
          if (os_log_type_enabled(qword_1ED6410D0, OS_LOG_TYPE_DEFAULT))
          {
            v28 = IPC::errorAsString();
            *buf = 136446466;
            *&buf[4] = "RemoteDisplayListRecorder_BeginTransparencyLayer";
            *&buf[12] = 2082;
            *&buf[14] = v28;
            _os_log_impl(&dword_19D52D000, v27, OS_LOG_TYPE_DEFAULT, "RemoteDisplayListRecorderProxy::send - failed, name:%{public}s, error:%{public}s", buf, 0x16u);
          }

          WebKit::RemoteDisplayListRecorderProxy::didBecomeUnresponsive(*(this + 440));
LABEL_17:
          if (atomic_fetch_add(v6, 0xFFFFFFFF) == 1)
          {
            atomic_store(1u, v6);
            IPC::StreamClientConnection::operator delete(v6);
          }

          return;
        }

LABEL_55:
        __break(0xC471u);
        JUMPOUT(0x19E1B5920);
      }
    }
  }
}

void WebKit::RemoteDisplayListRecorderProxy::beginTransparencyLayer(uint64_t a1, char a2, char a3)
{
  v60 = *MEMORY[0x1E69E9840];
  updated = WebCore::DisplayList::Recorder::updateStateForBeginTransparencyLayer();
  v54 = a2;
  v55 = a3;
  v8 = *(a1 + 3512);
  if (!v8)
  {
    goto LABEL_60;
  }

  atomic_fetch_add(v8, 1u);
  while (1)
  {
    if ((*(a1 + 3584) & 1) == 0)
    {
      updated = *(a1 + 3544);
      if (updated)
      {
        WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteImageBufferProxy>(updated, *(a1 + 3536), buf);
        updated = *buf;
        if (*buf)
        {
          updated = WebKit::RemoteImageBufferProxy::ensureBackend(*buf, v51);
          if (updated)
          {
            updated = (*(*updated + 168))(updated);
          }

          v53 = *buf;
          *buf = 0;
          if (v53)
          {
            updated = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::ImageBuffer,(WTF::DestructionThread)0>::deref((v53 + 8), v52);
          }
        }
      }

      *(a1 + 3584) = 1;
    }

    v9 = *(a1 + 3504);
    v10 = *(v8 + 128);
    v11 = INFINITY;
    if (fabs(v10) != INFINITY)
    {
      WTF::ApproximateTime::now(updated);
      v11 = v10 + v12;
    }

    if (*(v8 + 64) != v9)
    {
      IPC::StreamClientConnectionBuffer::tryAcquire(v8 + 72, buf, v11);
      if (buf[16] != 1)
      {
        goto LABEL_53;
      }

      v32 = *&buf[8];
      if (*&buf[8] <= 1uLL)
      {
LABEL_80:
        __break(0xC471u);
        JUMPOUT(0x19E1B5EB4);
      }

      v33 = *buf;
      **buf = 3198;
      v34 = v33 + 2;
      if (v32 - 2 < (-v34 & 7 | 8uLL))
      {
        goto LABEL_53;
      }

      v35 = -v34 & 7;
      *(v34 + v35) = v9;
      v36 = 6;
      if (v35 > 6)
      {
        v36 = v35;
      }

      v37 = v36 + 10;
      v38 = (*(v8 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
      v39 = *(v8 + 72);
      if (v38 + 16 >= v39)
      {
        v38 = 0;
      }

      v40 = v37 + v38;
      if (v39 <= v40)
      {
        v40 = 0;
      }

      *(v8 + 88) = v40;
      v41 = *(v8 + 80);
      if (*(v41 + 8) <= 0xFFuLL)
      {
        goto LABEL_59;
      }

      v42 = atomic_exchange((*(v41 + 16) + 128), v40);
      v43 = *(v8 + 124);
      if (v42 == 0x80000000 || v43 != 0)
      {
        v45 = v43 + 1;
        *(v8 + 124) = v45;
        if (v45 >= *(v8 + 120))
        {
          if (*(v8 + 112) == 1)
          {
            MEMORY[0x19EB16320](*(v8 + 100));
          }

          *(v8 + 124) = 0;
        }
      }

      *(v8 + 64) = v9;
    }

    IPC::StreamClientConnectionBuffer::tryAcquire(v8 + 72, &v56, v11);
    if ((v58 & 1) == 0)
    {
      goto LABEL_53;
    }

    v13 = v56;
    v14 = v57;
    *&buf[16] = v57;
    if (v57 <= 1)
    {
      goto LABEL_80;
    }

    *v56 = 1052;
    *buf = v13 + 1;
    *&buf[8] = v14 - 2;
    IPC::ArgumentCoder<WebCore::ImageBufferFormat,void>::encode(buf, &v54);
    if (!*buf)
    {
      break;
    }

    v15 = *&buf[16] - *&buf[8];
    if (*&buf[16] - *&buf[8] <= 0x10uLL)
    {
      v15 = 16;
    }

    v16 = (*(v8 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
    v17 = *(v8 + 72);
    if (v16 + 16 >= v17)
    {
      v16 = 0;
    }

    v18 = v16 + v15;
    if (v17 <= v18)
    {
      v18 = 0;
    }

    *(v8 + 88) = v18;
    v19 = *(v8 + 80);
    if (*(v19 + 8) > 0xFFuLL)
    {
      if (atomic_exchange((*(v19 + 16) + 128), v18) == 0x80000000 || *(v8 + 124))
      {
        if (*(v8 + 112) == 1)
        {
          MEMORY[0x19EB16320](*(v8 + 100));
        }

        *(v8 + 124) = 0;
      }

      goto LABEL_56;
    }

LABEL_59:
    __break(1u);
LABEL_60:
    v48 = *(a1 + 3520);
    if (!v48)
    {
      return;
    }

    v49 = *(v48 + 8);
    if (!v49)
    {
      return;
    }

    ++*(v49 + 5);
    v50 = WebKit::RemoteRenderingBackendProxy::connection(v49, v7, buf);
    v8 = *buf;
    if (*(v49 + 5) == 1)
    {
      (*(*v49 + 24))(v49, v50);
      if (!v8)
      {
        return;
      }
    }

    else
    {
      --*(v49 + 5);
      if (!v8)
      {
        return;
      }
    }

    atomic_fetch_add(v8, 1u);
    updated = *(a1 + 3512);
    *(a1 + 3512) = v8;
    if (updated && atomic_fetch_add(updated, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, updated);
      IPC::StreamClientConnection::operator delete(updated);
    }
  }

  if ((v58 & 1) == 0)
  {
    goto LABEL_59;
  }

  if (v57 <= 1)
  {
    __break(0xC471u);
    JUMPOUT(0x19E1B5ED4);
  }

  *v56 = 3197;
  v20 = (*(v8 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
  v21 = *(v8 + 72);
  if (v20 + 16 >= v21)
  {
    v20 = 0;
  }

  v22 = v20 + 16;
  v23 = v21 <= v22 ? 0 : v22;
  *(v8 + 88) = v23;
  v24 = *(v8 + 80);
  if (*(v24 + 8) <= 0xFFuLL)
  {
    goto LABEL_59;
  }

  atomic_exchange((*(v24 + 16) + 128), v23);
  *(v8 + 124) = 0;
  v25 = *(v8 + 8);
  v26 = IPC::Encoder::operator new(0x238, v7);
  *v26 = 1052;
  *(v26 + 2) = 0;
  *(v26 + 3) = 0;
  *(v26 + 1) = v9;
  *(v26 + 68) = 0;
  *(v26 + 70) = 0;
  *(v26 + 69) = 0;
  IPC::Encoder::encodeHeader(v26);
  *buf = v26;
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(v26, v54);
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(v26, v55);
  v28 = IPC::Connection::sendMessageImpl(v25, buf, 1, 0);
  v29 = *buf;
  *buf = 0;
  if (v29)
  {
    IPC::Encoder::~Encoder(v29, v27);
    bmalloc::api::tzoneFree(v30, v31);
    if (!v28)
    {
      goto LABEL_56;
    }
  }

  else if (!v28)
  {
    goto LABEL_56;
  }

LABEL_53:
  v46 = qword_1ED6410D0;
  if (os_log_type_enabled(qword_1ED6410D0, OS_LOG_TYPE_DEFAULT))
  {
    v47 = IPC::errorAsString();
    *buf = 136446466;
    *&buf[4] = "RemoteDisplayListRecorder_BeginTransparencyLayerWithCompositeMode";
    *&buf[12] = 2082;
    *&buf[14] = v47;
    _os_log_impl(&dword_19D52D000, v46, OS_LOG_TYPE_DEFAULT, "RemoteDisplayListRecorderProxy::send - failed, name:%{public}s, error:%{public}s", buf, 0x16u);
  }

  WebKit::RemoteDisplayListRecorderProxy::didBecomeUnresponsive(*(a1 + 3520));
LABEL_56:
  if (atomic_fetch_add(v8, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v8);
    IPC::StreamClientConnection::operator delete(v8);
  }
}

void WebKit::RemoteDisplayListRecorderProxy::endTransparencyLayer(WebKit::RemoteDisplayListRecorderProxy *this)
{
  v32 = *MEMORY[0x1E69E9840];
  updated = WebCore::DisplayList::Recorder::updateStateForEndTransparencyLayer(this);
  v4 = *(this + 439);
  if (v4)
  {
    atomic_fetch_add(v4, 1u);
    goto LABEL_3;
  }

  v25 = *(this + 440);
  if (v25)
  {
    v26 = *(v25 + 8);
    if (v26)
    {
      ++*(v26 + 5);
      v27 = WebKit::RemoteRenderingBackendProxy::connection(v26, v3, v31);
      v4 = *v31;
      if (*(v26 + 5) == 1)
      {
        (*(*v26 + 24))(v26, v27);
      }

      else
      {
        --*(v26 + 5);
      }

      if (v4)
      {
        updated = WTF::RefPtr<IPC::StreamClientConnection,WTF::RawPtrTraits<IPC::StreamClientConnection>,WTF::DefaultRefDerefTraits<IPC::StreamClientConnection>>::operator=(this + 439, v4);
LABEL_3:
        if ((*(this + 3584) & 1) == 0)
        {
          updated = *(this + 443);
          if (updated)
          {
            WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteImageBufferProxy>(updated, *(this + 442), v31);
            updated = *v31;
            if (*v31)
            {
              updated = WebKit::RemoteImageBufferProxy::backingStoreWillChange(*v31, v28);
              v30 = *v31;
              *v31 = 0;
              if (v30)
              {
                updated = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::ImageBuffer,(WTF::DestructionThread)0>::deref((v30 + 8), v29);
              }
            }
          }

          *(this + 3584) = 1;
        }

        v5 = *(this + 438);
        v6 = *(v4 + 128);
        v7 = INFINITY;
        if (fabs(v6) != INFINITY)
        {
          WTF::ApproximateTime::now(updated);
          v7 = v6 + v8;
        }

        if (*(v4 + 64) != v5)
        {
          IPC::StreamClientConnectionBuffer::tryAcquire(v4 + 72, v31, v7);
          if (v31[16] != 1)
          {
            goto LABEL_34;
          }

          v13 = *&v31[8];
          if (*&v31[8] <= 1uLL)
          {
            goto LABEL_50;
          }

          v14 = *v31;
          **v31 = 3198;
          v15 = v14 + 2;
          if (v13 - 2 < (-v15 & 7 | 8uLL))
          {
            goto LABEL_34;
          }

          v16 = -v15 & 7;
          *(v15 + v16) = v5;
          v17 = 6;
          if (v16 > 6)
          {
            v17 = v16;
          }

          v18 = v17 + 10;
          v19 = (*(v4 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
          v20 = *(v4 + 72);
          if (v19 + 16 >= v20)
          {
            v19 = 0;
          }

          v21 = v18 + v19;
          if (v20 <= v21)
          {
            v21 = 0;
          }

          *(v4 + 88) = v21;
          v22 = *(v4 + 80);
          if (*(v22 + 8) <= 0xFFuLL)
          {
            goto LABEL_33;
          }

          IPC::StreamClientConnection::wakeUpServerBatched(v4, atomic_exchange((*(v22 + 16) + 128), v21) == 0x80000000);
          *(v4 + 64) = v5;
        }

        IPC::StreamClientConnectionBuffer::tryAcquire(v4 + 72, v31, v7);
        if (v31[16] == 1)
        {
          if (*&v31[8] > 1uLL)
          {
            **v31 = 1081;
            v9 = (*(v4 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
            v11 = *(v4 + 72);
            v10 = *(v4 + 80);
            if (v9 + 16 >= v11)
            {
              v9 = 0;
            }

            v12 = v9 + 16;
            if (v11 <= v12)
            {
              v12 = 0;
            }

            *(v4 + 88) = v12;
            if (*(v10 + 8) > 0xFFuLL)
            {
              if (atomic_exchange((*(v10 + 16) + 128), v12) == 0x80000000 || *(v4 + 124))
              {
                if (*(v4 + 112) == 1)
                {
                  MEMORY[0x19EB16320](*(v4 + 100));
                }

                *(v4 + 124) = 0;
              }

LABEL_16:
              if (atomic_fetch_add(v4, 0xFFFFFFFF) == 1)
              {
                atomic_store(1u, v4);
                IPC::StreamClientConnection::operator delete(v4);
              }

              return;
            }

LABEL_33:
            __break(1u);
            goto LABEL_34;
          }

LABEL_50:
          __break(0xC471u);
          JUMPOUT(0x19E1B62A4);
        }

LABEL_34:
        v23 = qword_1ED6410D0;
        if (os_log_type_enabled(qword_1ED6410D0, OS_LOG_TYPE_DEFAULT))
        {
          v24 = IPC::errorAsString();
          *v31 = 136446466;
          *&v31[4] = "RemoteDisplayListRecorder_EndTransparencyLayer";
          *&v31[12] = 2082;
          *&v31[14] = v24;
          _os_log_impl(&dword_19D52D000, v23, OS_LOG_TYPE_DEFAULT, "RemoteDisplayListRecorderProxy::send - failed, name:%{public}s, error:%{public}s", v31, 0x16u);
        }

        WebKit::RemoteDisplayListRecorderProxy::didBecomeUnresponsive(*(this + 440));
        goto LABEL_16;
      }
    }
  }
}

void WebKit::RemoteDisplayListRecorderProxy::drawRect(WebKit::RemoteDisplayListRecorderProxy *this, const WebCore::FloatRect *a2, float a3)
{
  v46 = *MEMORY[0x1E69E9840];
  v6 = WebKit::RemoteDisplayListRecorderProxy::appendStateChangeItemIfNecessary(this, a2);
  v40 = a2;
  v41 = a3;
  v8 = *(this + 439);
  if (v8)
  {
    atomic_fetch_add(v8, 1u);
    goto LABEL_3;
  }

  v32 = *(this + 440);
  if (v32)
  {
    v33 = *(v32 + 8);
    if (v33)
    {
      ++*(v33 + 5);
      v34 = WebKit::RemoteRenderingBackendProxy::connection(v33, v7, buf);
      v8 = *buf;
      if (*(v33 + 5) == 1)
      {
        (*(*v33 + 24))(v33, v34);
      }

      else
      {
        --*(v33 + 5);
      }

      if (v8)
      {
        v6 = WTF::RefPtr<IPC::StreamClientConnection,WTF::RawPtrTraits<IPC::StreamClientConnection>,WTF::DefaultRefDerefTraits<IPC::StreamClientConnection>>::operator=(this + 439, v8);
LABEL_3:
        if ((*(this + 3584) & 1) == 0)
        {
          v6 = *(this + 443);
          if (v6)
          {
            WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteImageBufferProxy>(v6, *(this + 442), buf);
            v6 = *buf;
            if (*buf)
            {
              v6 = WebKit::RemoteImageBufferProxy::backingStoreWillChange(*buf, v37);
              v39 = *buf;
              *buf = 0;
              if (v39)
              {
                v6 = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::ImageBuffer,(WTF::DestructionThread)0>::deref((v39 + 8), v38);
              }
            }
          }

          *(this + 3584) = 1;
        }

        v9 = *(this + 438);
        v10 = *(v8 + 128);
        v11 = INFINITY;
        if (fabs(v10) != INFINITY)
        {
          WTF::ApproximateTime::now(v6);
          v11 = v10 + v12;
        }

        if (*(v8 + 64) != v9)
        {
          IPC::StreamClientConnectionBuffer::tryAcquire(v8 + 72, buf, v11);
          if (buf[16] != 1)
          {
            goto LABEL_50;
          }

          v20 = *&buf[8];
          if (*&buf[8] <= 1uLL)
          {
            __break(0xC471u);
            goto LABEL_67;
          }

          v21 = *buf;
          **buf = 3198;
          v22 = v21 + 2;
          if (v20 - 2 < (-v22 & 7 | 8uLL))
          {
            goto LABEL_50;
          }

          v23 = -v22 & 7;
          *(v22 + v23) = v9;
          v24 = 6;
          if (v23 > 6)
          {
            v24 = v23;
          }

          v25 = v24 + 10;
          v26 = (*(v8 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
          v27 = *(v8 + 72);
          if (v26 + 16 >= v27)
          {
            v26 = 0;
          }

          v18 = v25 + v26;
          if (v27 <= v18)
          {
            v18 = 0;
          }

          *(v8 + 88) = v18;
          v17 = *(v8 + 80);
          if (*(v17 + 8) <= 0xFFuLL)
          {
            goto LABEL_58;
          }

          v28 = atomic_exchange((*(v17 + 16) + 128), v18);
          v29 = *(v8 + 124);
          if (v28 == 0x80000000 || v29 != 0)
          {
            v31 = v29 + 1;
            *(v8 + 124) = v31;
            if (v31 >= *(v8 + 120))
            {
              if (*(v8 + 112) == 1)
              {
                MEMORY[0x19EB16320](*(v8 + 100));
              }

              *(v8 + 124) = 0;
            }
          }

          *(v8 + 64) = v9;
        }

        IPC::StreamClientConnectionBuffer::tryAcquire(v8 + 72, &v42, v11);
        if ((v44 & 1) == 0)
        {
          goto LABEL_50;
        }

        v13 = v42;
        v14 = v43;
        *&buf[16] = v43;
        if (v43 > 1)
        {
          *v42 = 1077;
          *buf = v13 + 1;
          *&buf[8] = v14 - 2;
          IPC::ArgumentCoder<WebCore::PathEllipseInRect,void>::encode(buf, v40);
          v15 = *buf;
          v16 = -*buf & 3 | 4;
          v17 = *&buf[8] - v16;
          if (*&buf[8] >= v16)
          {
            *(*buf + (-*buf & 3)) = v41;
            *buf = v15 + v16;
            *&buf[8] = v17;
            v18 = *&buf[16] - v17;
            if (*&buf[16] - v17 <= 0x10)
            {
              v18 = 16;
            }

            v19 = (*(v8 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
            v17 = *(v8 + 72);
            if (v19 + 16 >= v17)
            {
              goto LABEL_59;
            }

            while (1)
            {
              v18 += v19;
              if (v17 <= v18)
              {
                v18 = 0;
              }

              *(v8 + 88) = v18;
              v17 = *(v8 + 80);
              if (*(v17 + 8) > 0xFFuLL)
              {
                break;
              }

LABEL_58:
              __break(1u);
LABEL_59:
              v19 = 0;
            }

            if (atomic_exchange((*(v17 + 16) + 128), v18) == 0x80000000 || *(v8 + 124))
            {
              if (*(v8 + 112) == 1)
              {
                MEMORY[0x19EB16320](*(v8 + 100));
              }

              *(v8 + 124) = 0;
            }

            goto LABEL_18;
          }

          v18 = v44;
          if ((v44 & 1) == 0)
          {
            goto LABEL_58;
          }

          IPC::StreamClientConnection::sendProcessOutOfStreamMessage(v8, v42, v43);
          if (!IPC::Connection::send<Messages::RemoteDisplayListRecorder::DrawRect>(*(v8 + 8), &v40, v9))
          {
            goto LABEL_18;
          }

LABEL_50:
          v35 = qword_1ED6410D0;
          if (os_log_type_enabled(qword_1ED6410D0, OS_LOG_TYPE_DEFAULT))
          {
            v36 = IPC::errorAsString();
            *buf = 136446466;
            *&buf[4] = "RemoteDisplayListRecorder_DrawRect";
            *&buf[12] = 2082;
            *&buf[14] = v36;
            _os_log_impl(&dword_19D52D000, v35, OS_LOG_TYPE_DEFAULT, "RemoteDisplayListRecorderProxy::send - failed, name:%{public}s, error:%{public}s", buf, 0x16u);
          }

          WebKit::RemoteDisplayListRecorderProxy::didBecomeUnresponsive(*(this + 440));
LABEL_18:
          if (atomic_fetch_add(v8, 0xFFFFFFFF) == 1)
          {
            atomic_store(1u, v8);
            IPC::StreamClientConnection::operator delete(v8);
          }

          return;
        }

        __break(0xC471u);
LABEL_67:
        JUMPOUT(0x19E1B6710);
      }
    }
  }
}

void WebKit::RemoteDisplayListRecorderProxy::drawLine(WebKit::RemoteDisplayListRecorderProxy *this, const WebCore::FloatPoint *a2, const WebCore::FloatPoint *a3)
{
  v58 = *MEMORY[0x1E69E9840];
  v6 = WebKit::RemoteDisplayListRecorderProxy::appendStateChangeItemIfNecessary(this, a2);
  v8 = *(this + 439);
  if (!v8)
  {
    goto LABEL_60;
  }

  atomic_fetch_add(v8, 1u);
  while (1)
  {
    if ((*(this + 3584) & 1) == 0)
    {
      v6 = *(this + 443);
      if (v6)
      {
        WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteImageBufferProxy>(v6, *(this + 442), buf);
        v6 = *buf;
        if (*buf)
        {
          v6 = WebKit::RemoteImageBufferProxy::ensureBackend(*buf, v51);
          if (v6)
          {
            v6 = (*(*v6 + 168))(v6);
          }

          v53 = *buf;
          *buf = 0;
          if (v53)
          {
            v6 = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::ImageBuffer,(WTF::DestructionThread)0>::deref((v53 + 8), v52);
          }
        }
      }

      *(this + 3584) = 1;
    }

    v9 = *(this + 438);
    v10 = *(v8 + 128);
    v11 = INFINITY;
    if (fabs(v10) != INFINITY)
    {
      WTF::ApproximateTime::now(v6);
      v11 = v10 + v12;
    }

    if (*(v8 + 64) != v9)
    {
      IPC::StreamClientConnectionBuffer::tryAcquire(v8 + 72, buf, v11);
      if (buf[16] != 1)
      {
        goto LABEL_53;
      }

      v32 = *&buf[8];
      if (*&buf[8] <= 1uLL)
      {
LABEL_80:
        __break(0xC471u);
        JUMPOUT(0x19E1B6CE0);
      }

      v33 = *buf;
      **buf = 3198;
      v34 = v33 + 2;
      if (v32 - 2 < (-v34 & 7 | 8uLL))
      {
        goto LABEL_53;
      }

      v35 = -v34 & 7;
      *(v34 + v35) = v9;
      v36 = 6;
      if (v35 > 6)
      {
        v36 = v35;
      }

      v37 = v36 + 10;
      v38 = (*(v8 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
      v39 = *(v8 + 72);
      if (v38 + 16 >= v39)
      {
        v38 = 0;
      }

      v40 = v37 + v38;
      if (v39 <= v40)
      {
        v40 = 0;
      }

      *(v8 + 88) = v40;
      v41 = *(v8 + 80);
      if (*(v41 + 8) <= 0xFFuLL)
      {
        goto LABEL_59;
      }

      v42 = atomic_exchange((*(v41 + 16) + 128), v40);
      v43 = *(v8 + 124);
      if (v42 == 0x80000000 || v43 != 0)
      {
        v45 = v43 + 1;
        *(v8 + 124) = v45;
        if (v45 >= *(v8 + 120))
        {
          if (*(v8 + 112) == 1)
          {
            MEMORY[0x19EB16320](*(v8 + 100));
          }

          *(v8 + 124) = 0;
        }
      }

      *(v8 + 64) = v9;
    }

    IPC::StreamClientConnectionBuffer::tryAcquire(v8 + 72, &v54, v11);
    if ((v56 & 1) == 0)
    {
      goto LABEL_53;
    }

    v13 = v54;
    v14 = v55;
    *&buf[16] = v55;
    if (v55 <= 1)
    {
      goto LABEL_80;
    }

    *v54 = 1071;
    *buf = v13 + 1;
    *&buf[8] = v14 - 2;
    IPC::StreamConnectionEncoder::operator<<<WebCore::FloatPoint const&>(buf, a2);
    IPC::StreamConnectionEncoder::operator<<<WebCore::FloatPoint const&>(buf, a3);
    if (!*buf)
    {
      break;
    }

    v15 = *&buf[16] - *&buf[8];
    if (*&buf[16] - *&buf[8] <= 0x10uLL)
    {
      v15 = 16;
    }

    v16 = (*(v8 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
    v17 = *(v8 + 72);
    if (v16 + 16 >= v17)
    {
      v16 = 0;
    }

    v18 = v16 + v15;
    if (v17 <= v18)
    {
      v18 = 0;
    }

    *(v8 + 88) = v18;
    v19 = *(v8 + 80);
    if (*(v19 + 8) > 0xFFuLL)
    {
      if (atomic_exchange((*(v19 + 16) + 128), v18) == 0x80000000 || *(v8 + 124))
      {
        if (*(v8 + 112) == 1)
        {
          MEMORY[0x19EB16320](*(v8 + 100));
        }

        *(v8 + 124) = 0;
      }

      goto LABEL_56;
    }

LABEL_59:
    __break(1u);
LABEL_60:
    v48 = *(this + 440);
    if (!v48)
    {
      return;
    }

    v49 = *(v48 + 8);
    if (!v49)
    {
      return;
    }

    ++*(v49 + 5);
    v50 = WebKit::RemoteRenderingBackendProxy::connection(v49, v7, buf);
    v8 = *buf;
    if (*(v49 + 5) == 1)
    {
      (*(*v49 + 24))(v49, v50);
      if (!v8)
      {
        return;
      }
    }

    else
    {
      --*(v49 + 5);
      if (!v8)
      {
        return;
      }
    }

    atomic_fetch_add(v8, 1u);
    v6 = *(this + 439);
    *(this + 439) = v8;
    if (v6 && atomic_fetch_add(v6, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v6);
      IPC::StreamClientConnection::operator delete(v6);
    }
  }

  if ((v56 & 1) == 0)
  {
    goto LABEL_59;
  }

  if (v55 <= 1)
  {
    __break(0xC471u);
    JUMPOUT(0x19E1B6D00);
  }

  *v54 = 3197;
  v20 = (*(v8 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
  v21 = *(v8 + 72);
  if (v20 + 16 >= v21)
  {
    v20 = 0;
  }

  v22 = v20 + 16;
  v23 = v21 <= v22 ? 0 : v22;
  *(v8 + 88) = v23;
  v24 = *(v8 + 80);
  if (*(v24 + 8) <= 0xFFuLL)
  {
    goto LABEL_59;
  }

  atomic_exchange((*(v24 + 16) + 128), v23);
  *(v8 + 124) = 0;
  v25 = *(v8 + 8);
  v26 = IPC::Encoder::operator new(0x238, v7);
  *v26 = 1071;
  *(v26 + 2) = 0;
  *(v26 + 3) = 0;
  *(v26 + 1) = v9;
  *(v26 + 68) = 0;
  *(v26 + 70) = 0;
  *(v26 + 69) = 0;
  IPC::Encoder::encodeHeader(v26);
  *buf = v26;
  IPC::ArgumentCoder<WebCore::FloatPoint,void>::encode(v26, a2);
  IPC::ArgumentCoder<WebCore::FloatPoint,void>::encode(v26, a3);
  v28 = IPC::Connection::sendMessageImpl(v25, buf, 1, 0);
  v29 = *buf;
  *buf = 0;
  if (v29)
  {
    IPC::Encoder::~Encoder(v29, v27);
    bmalloc::api::tzoneFree(v30, v31);
    if (!v28)
    {
      goto LABEL_56;
    }
  }

  else if (!v28)
  {
    goto LABEL_56;
  }

LABEL_53:
  v46 = qword_1ED6410D0;
  if (os_log_type_enabled(qword_1ED6410D0, OS_LOG_TYPE_DEFAULT))
  {
    v47 = IPC::errorAsString();
    *buf = 136446466;
    *&buf[4] = "RemoteDisplayListRecorder_DrawLine";
    *&buf[12] = 2082;
    *&buf[14] = v47;
    _os_log_impl(&dword_19D52D000, v46, OS_LOG_TYPE_DEFAULT, "RemoteDisplayListRecorderProxy::send - failed, name:%{public}s, error:%{public}s", buf, 0x16u);
  }

  WebKit::RemoteDisplayListRecorderProxy::didBecomeUnresponsive(*(this + 440));
LABEL_56:
  if (atomic_fetch_add(v8, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v8);
    IPC::StreamClientConnection::operator delete(v8);
  }
}

void WebKit::RemoteDisplayListRecorderProxy::drawLinesForText(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, char a5, char a6, char a7, float a8)
{
  v78 = *MEMORY[0x1E69E9840];
  v73[0] = a3;
  v73[1] = a4;
  v14 = WebKit::RemoteDisplayListRecorderProxy::appendStateChangeItemIfNecessary(a1, a2);
  v67 = a2;
  v68 = a8;
  v69 = v73;
  v70 = a5;
  v71 = a6;
  v72 = a7;
  v16 = *(a1 + 3512);
  if (v16)
  {
    atomic_fetch_add(v16, 1u);
    goto LABEL_3;
  }

  v60 = *(a1 + 3520);
  if (v60)
  {
    v61 = *(v60 + 8);
    if (v61)
    {
      ++*(v61 + 5);
      v62 = WebKit::RemoteRenderingBackendProxy::connection(v61, v15, buf);
      v16 = *buf;
      if (*(v61 + 5) == 1)
      {
        (*(*v61 + 24))(v61, v62);
      }

      else
      {
        --*(v61 + 5);
      }

      if (v16)
      {
        v14 = WTF::RefPtr<IPC::StreamClientConnection,WTF::RawPtrTraits<IPC::StreamClientConnection>,WTF::DefaultRefDerefTraits<IPC::StreamClientConnection>>::operator=((a1 + 3512), v16);
LABEL_3:
        if ((*(a1 + 3584) & 1) == 0)
        {
          v14 = *(a1 + 3544);
          if (v14)
          {
            WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteImageBufferProxy>(v14, *(a1 + 3536), buf);
            v14 = *buf;
            if (*buf)
            {
              v14 = WebKit::RemoteImageBufferProxy::backingStoreWillChange(*buf, v64);
              v66 = *buf;
              *buf = 0;
              if (v66)
              {
                v14 = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::ImageBuffer,(WTF::DestructionThread)0>::deref((v66 + 8), v65);
              }
            }
          }

          *(a1 + 3584) = 1;
        }

        v17 = *(a1 + 3504);
        v18 = *(v16 + 128);
        v19 = INFINITY;
        if (fabs(v18) != INFINITY)
        {
          WTF::ApproximateTime::now(v14);
          v19 = v18 + v20;
        }

        if (*(v16 + 64) != v17)
        {
          IPC::StreamClientConnectionBuffer::tryAcquire(v16 + 72, buf, v19);
          if (buf[16] != 1)
          {
            goto LABEL_63;
          }

          v44 = *&buf[8];
          if (*&buf[8] <= 1uLL)
          {
            goto LABEL_82;
          }

          v45 = *buf;
          **buf = 3198;
          v46 = v45 + 2;
          if (v44 - 2 < (-v46 & 7 | 8uLL))
          {
            goto LABEL_63;
          }

          v47 = -v46 & 7;
          *(v46 + v47) = v17;
          v48 = 6;
          if (v47 > 6)
          {
            v48 = v47;
          }

          v49 = v48 + 10;
          v50 = (*(v16 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
          v51 = *(v16 + 72);
          if (v50 + 16 >= v51)
          {
            v50 = 0;
          }

          v52 = v49 + v50;
          if (v51 <= v52)
          {
            v52 = 0;
          }

          *(v16 + 88) = v52;
          v53 = *(v16 + 80);
          if (*(v53 + 8) <= 0xFFuLL)
          {
            goto LABEL_62;
          }

          v54 = atomic_exchange((*(v53 + 16) + 128), v52);
          v55 = *(v16 + 124);
          if (v54 == 0x80000000 || v55 != 0)
          {
            v57 = v55 + 1;
            *(v16 + 124) = v57;
            if (v57 >= *(v16 + 120))
            {
              if (*(v16 + 112) == 1)
              {
                MEMORY[0x19EB16320](*(v16 + 100));
              }

              *(v16 + 124) = 0;
            }
          }

          *(v16 + 64) = v17;
        }

        IPC::StreamClientConnectionBuffer::tryAcquire(v16 + 72, &v74, v19);
        if ((v76 & 1) == 0)
        {
          goto LABEL_63;
        }

        v21 = v74;
        v22 = v75;
        *&buf[16] = v75;
        if (v75 > 1)
        {
          *v74 = 1072;
          *buf = v21 + 1;
          *&buf[8] = v22 - 2;
          IPC::StreamConnectionEncoder::operator<<<WebCore::FloatPoint const&>(buf, v67);
          v23 = *buf;
          v24 = -*buf & 3 | 4;
          v25 = *&buf[8] - v24;
          if (*&buf[8] < v24)
          {
            v26 = 0;
            v25 = 0;
          }

          else
          {
            *(*buf + (-*buf & 3)) = v68;
            v26 = v23 + v24;
          }

          v27 = *v69;
          v28 = v69[1];
          v29 = -v26 & 7 | 8;
          v30 = v25 >= v29;
          v31 = v25 - v29;
          if (v30)
          {
            *(v26 + (-v26 & 7)) = v28;
            v63 = (v26 + v29);
            *buf = v26 + v29;
            *&buf[8] = v31;
          }

          else
          {
            v63 = 0;
            v31 = 0;
            *buf = 0;
            *&buf[8] = 0;
          }

          if (v28)
          {
            v32 = 8 * v28;
            v33 = (8 * v28) | -v63 & 3;
            v34 = v31 - v33;
            if (v31 < v33)
            {
              goto LABEL_59;
            }

            v35 = -v63 & 3;
            v30 = v31 >= v35;
            v36 = v31 - v35;
            if (!v30)
            {
              goto LABEL_62;
            }

            if (v36 < v32)
            {
              __break(0xC471u);
              JUMPOUT(0x19E1B72B8);
            }

            memcpy(&v63[v35], v27, v32);
            v63 += v33;
            *buf = v63;
            *&buf[8] = v34;
            v31 = v34;
          }

          if (v31)
          {
            *v63 = v70;
            v37 = *&buf[8];
            if (!*&buf[8])
            {
              goto LABEL_62;
            }

            if (*&buf[8] != 1)
            {
              v38 = *buf;
              *(*buf + 1) = v71;
              if (v37 != 2)
              {
                *(v38 + 2) = v72;
                *buf = v38 + 3;
                *&buf[8] = v37 - 3;
                v39 = *&buf[16] - (v37 - 3);
                if (v39 <= 0x10)
                {
                  v39 = 16;
                }

                v40 = (*(v16 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
                v41 = *(v16 + 72);
                if (v40 + 16 >= v41)
                {
                  v40 = 0;
                }

                v42 = v40 + v39;
                if (v41 <= v42)
                {
                  v42 = 0;
                }

                *(v16 + 88) = v42;
                v43 = *(v16 + 80);
                if (*(v43 + 8) > 0xFFuLL)
                {
                  if (atomic_exchange((*(v43 + 16) + 128), v42) == 0x80000000 || *(v16 + 124))
                  {
                    if (*(v16 + 112) == 1)
                    {
                      MEMORY[0x19EB16320](*(v16 + 100));
                    }

                    *(v16 + 124) = 0;
                  }

                  goto LABEL_33;
                }

                goto LABEL_62;
              }
            }
          }

LABEL_59:
          if (v76)
          {
            IPC::StreamClientConnection::sendProcessOutOfStreamMessage(v16, v74, v75);
            if (!IPC::Connection::send<Messages::RemoteDisplayListRecorder::DrawLinesForText>(*(v16 + 8), &v67, v17))
            {
LABEL_33:
              if (atomic_fetch_add(v16, 0xFFFFFFFF) == 1)
              {
                atomic_store(1u, v16);
                IPC::StreamClientConnection::operator delete(v16);
              }

              return;
            }

LABEL_63:
            v58 = qword_1ED6410D0;
            if (os_log_type_enabled(qword_1ED6410D0, OS_LOG_TYPE_DEFAULT))
            {
              v59 = IPC::errorAsString();
              *buf = 136446466;
              *&buf[4] = "RemoteDisplayListRecorder_DrawLinesForText";
              *&buf[12] = 2082;
              *&buf[14] = v59;
              _os_log_impl(&dword_19D52D000, v58, OS_LOG_TYPE_DEFAULT, "RemoteDisplayListRecorderProxy::send - failed, name:%{public}s, error:%{public}s", buf, 0x16u);
            }

            WebKit::RemoteDisplayListRecorderProxy::didBecomeUnresponsive(*(a1 + 3520));
            goto LABEL_33;
          }

LABEL_62:
          __break(1u);
          goto LABEL_63;
        }

LABEL_82:
        __break(0xC471u);
        JUMPOUT(0x19E1B7268);
      }
    }
  }
}

void WebKit::RemoteDisplayListRecorderProxy::drawDotsForDocumentMarker(uint64_t a1, __int128 *a2, char *a3)
{
  v58 = *MEMORY[0x1E69E9840];
  v6 = WebKit::RemoteDisplayListRecorderProxy::appendStateChangeItemIfNecessary(a1, a2);
  v8 = *(a1 + 3512);
  if (!v8)
  {
    goto LABEL_60;
  }

  atomic_fetch_add(v8, 1u);
  while (1)
  {
    if ((*(a1 + 3584) & 1) == 0)
    {
      v6 = *(a1 + 3544);
      if (v6)
      {
        WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteImageBufferProxy>(v6, *(a1 + 3536), buf);
        v6 = *buf;
        if (*buf)
        {
          v6 = WebKit::RemoteImageBufferProxy::ensureBackend(*buf, v51);
          if (v6)
          {
            v6 = (*(*v6 + 168))(v6);
          }

          v53 = *buf;
          *buf = 0;
          if (v53)
          {
            v6 = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::ImageBuffer,(WTF::DestructionThread)0>::deref((v53 + 8), v52);
          }
        }
      }

      *(a1 + 3584) = 1;
    }

    v9 = *(a1 + 3504);
    v10 = *(v8 + 128);
    v11 = INFINITY;
    if (fabs(v10) != INFINITY)
    {
      WTF::ApproximateTime::now(v6);
      v11 = v10 + v12;
    }

    if (*(v8 + 64) != v9)
    {
      IPC::StreamClientConnectionBuffer::tryAcquire(v8 + 72, buf, v11);
      if (buf[16] != 1)
      {
        goto LABEL_53;
      }

      v32 = *&buf[8];
      if (*&buf[8] <= 1uLL)
      {
LABEL_80:
        __break(0xC471u);
        JUMPOUT(0x19E1B7864);
      }

      v33 = *buf;
      **buf = 3198;
      v34 = v33 + 2;
      if (v32 - 2 < (-v34 & 7 | 8uLL))
      {
        goto LABEL_53;
      }

      v35 = -v34 & 7;
      *(v34 + v35) = v9;
      v36 = 6;
      if (v35 > 6)
      {
        v36 = v35;
      }

      v37 = v36 + 10;
      v38 = (*(v8 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
      v39 = *(v8 + 72);
      if (v38 + 16 >= v39)
      {
        v38 = 0;
      }

      v40 = v37 + v38;
      if (v39 <= v40)
      {
        v40 = 0;
      }

      *(v8 + 88) = v40;
      v41 = *(v8 + 80);
      if (*(v41 + 8) <= 0xFFuLL)
      {
        goto LABEL_59;
      }

      v42 = atomic_exchange((*(v41 + 16) + 128), v40);
      v43 = *(v8 + 124);
      if (v42 == 0x80000000 || v43 != 0)
      {
        v45 = v43 + 1;
        *(v8 + 124) = v45;
        if (v45 >= *(v8 + 120))
        {
          if (*(v8 + 112) == 1)
          {
            MEMORY[0x19EB16320](*(v8 + 100));
          }

          *(v8 + 124) = 0;
        }
      }

      *(v8 + 64) = v9;
    }

    IPC::StreamClientConnectionBuffer::tryAcquire(v8 + 72, &v54, v11);
    if ((v56 & 1) == 0)
    {
      goto LABEL_53;
    }

    v13 = v54;
    v14 = v55;
    *&buf[16] = v55;
    if (v55 <= 1)
    {
      goto LABEL_80;
    }

    *v54 = 1064;
    *buf = v13 + 1;
    *&buf[8] = v14 - 2;
    IPC::ArgumentCoder<WebCore::PathEllipseInRect,void>::encode(buf, a2);
    IPC::ArgumentCoder<WebCore::DocumentMarkerLineStyle,void>::encode(buf, a3);
    if (!*buf)
    {
      break;
    }

    v15 = *&buf[16] - *&buf[8];
    if (*&buf[16] - *&buf[8] <= 0x10uLL)
    {
      v15 = 16;
    }

    v16 = (*(v8 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
    v17 = *(v8 + 72);
    if (v16 + 16 >= v17)
    {
      v16 = 0;
    }

    v18 = v16 + v15;
    if (v17 <= v18)
    {
      v18 = 0;
    }

    *(v8 + 88) = v18;
    v19 = *(v8 + 80);
    if (*(v19 + 8) > 0xFFuLL)
    {
      if (atomic_exchange((*(v19 + 16) + 128), v18) == 0x80000000 || *(v8 + 124))
      {
        if (*(v8 + 112) == 1)
        {
          MEMORY[0x19EB16320](*(v8 + 100));
        }

        *(v8 + 124) = 0;
      }

      goto LABEL_56;
    }

LABEL_59:
    __break(1u);
LABEL_60:
    v48 = *(a1 + 3520);
    if (!v48)
    {
      return;
    }

    v49 = *(v48 + 8);
    if (!v49)
    {
      return;
    }

    ++*(v49 + 5);
    v50 = WebKit::RemoteRenderingBackendProxy::connection(v49, v7, buf);
    v8 = *buf;
    if (*(v49 + 5) == 1)
    {
      (*(*v49 + 24))(v49, v50);
      if (!v8)
      {
        return;
      }
    }

    else
    {
      --*(v49 + 5);
      if (!v8)
      {
        return;
      }
    }

    atomic_fetch_add(v8, 1u);
    v6 = *(a1 + 3512);
    *(a1 + 3512) = v8;
    if (v6 && atomic_fetch_add(v6, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v6);
      IPC::StreamClientConnection::operator delete(v6);
    }
  }

  if ((v56 & 1) == 0)
  {
    goto LABEL_59;
  }

  if (v55 <= 1)
  {
    __break(0xC471u);
    JUMPOUT(0x19E1B7884);
  }

  *v54 = 3197;
  v20 = (*(v8 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
  v21 = *(v8 + 72);
  if (v20 + 16 >= v21)
  {
    v20 = 0;
  }

  v22 = v20 + 16;
  v23 = v21 <= v22 ? 0 : v22;
  *(v8 + 88) = v23;
  v24 = *(v8 + 80);
  if (*(v24 + 8) <= 0xFFuLL)
  {
    goto LABEL_59;
  }

  atomic_exchange((*(v24 + 16) + 128), v23);
  *(v8 + 124) = 0;
  v25 = *(v8 + 8);
  v26 = IPC::Encoder::operator new(0x238, v7);
  *v26 = 1064;
  *(v26 + 2) = 0;
  *(v26 + 3) = 0;
  *(v26 + 1) = v9;
  *(v26 + 68) = 0;
  *(v26 + 70) = 0;
  *(v26 + 69) = 0;
  IPC::Encoder::encodeHeader(v26);
  *buf = v26;
  IPC::ArgumentCoder<WebCore::FloatRect,void>::encode(v26, a2);
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(v26, *a3);
  IPC::ArgumentCoder<WebCore::Color,void>::encode(v26, (a3 + 8));
  v28 = IPC::Connection::sendMessageImpl(v25, buf, 1, 0);
  v29 = *buf;
  *buf = 0;
  if (v29)
  {
    IPC::Encoder::~Encoder(v29, v27);
    bmalloc::api::tzoneFree(v30, v31);
    if (!v28)
    {
      goto LABEL_56;
    }
  }

  else if (!v28)
  {
    goto LABEL_56;
  }

LABEL_53:
  v46 = qword_1ED6410D0;
  if (os_log_type_enabled(qword_1ED6410D0, OS_LOG_TYPE_DEFAULT))
  {
    v47 = IPC::errorAsString();
    *buf = 136446466;
    *&buf[4] = "RemoteDisplayListRecorder_DrawDotsForDocumentMarker";
    *&buf[12] = 2082;
    *&buf[14] = v47;
    _os_log_impl(&dword_19D52D000, v46, OS_LOG_TYPE_DEFAULT, "RemoteDisplayListRecorderProxy::send - failed, name:%{public}s, error:%{public}s", buf, 0x16u);
  }

  WebKit::RemoteDisplayListRecorderProxy::didBecomeUnresponsive(*(a1 + 3520));
LABEL_56:
  if (atomic_fetch_add(v8, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v8);
    IPC::StreamClientConnection::operator delete(v8);
  }
}

void WebKit::RemoteDisplayListRecorderProxy::drawEllipse(WebKit::RemoteDisplayListRecorderProxy *this, const WebCore::FloatRect *a2)
{
  v56 = *MEMORY[0x1E69E9840];
  v4 = WebKit::RemoteDisplayListRecorderProxy::appendStateChangeItemIfNecessary(this, a2);
  v6 = *(this + 439);
  if (!v6)
  {
    goto LABEL_60;
  }

  atomic_fetch_add(v6, 1u);
  while (1)
  {
    if ((*(this + 3584) & 1) == 0)
    {
      v4 = *(this + 443);
      if (v4)
      {
        WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteImageBufferProxy>(v4, *(this + 442), buf);
        v4 = *buf;
        if (*buf)
        {
          v4 = WebKit::RemoteImageBufferProxy::ensureBackend(*buf, v49);
          if (v4)
          {
            v4 = (*(*v4 + 168))(v4);
          }

          v51 = *buf;
          *buf = 0;
          if (v51)
          {
            v4 = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::ImageBuffer,(WTF::DestructionThread)0>::deref((v51 + 8), v50);
          }
        }
      }

      *(this + 3584) = 1;
    }

    v7 = *(this + 438);
    v8 = *(v6 + 128);
    v9 = INFINITY;
    if (fabs(v8) != INFINITY)
    {
      WTF::ApproximateTime::now(v4);
      v9 = v8 + v10;
    }

    if (*(v6 + 64) != v7)
    {
      IPC::StreamClientConnectionBuffer::tryAcquire(v6 + 72, buf, v9);
      if (buf[16] != 1)
      {
        goto LABEL_53;
      }

      v30 = *&buf[8];
      if (*&buf[8] <= 1uLL)
      {
LABEL_80:
        __break(0xC471u);
        JUMPOUT(0x19E1B7E00);
      }

      v31 = *buf;
      **buf = 3198;
      v32 = v31 + 2;
      if (v30 - 2 < (-v32 & 7 | 8uLL))
      {
        goto LABEL_53;
      }

      v33 = -v32 & 7;
      *(v32 + v33) = v7;
      v34 = 6;
      if (v33 > 6)
      {
        v34 = v33;
      }

      v35 = v34 + 10;
      v36 = (*(v6 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
      v37 = *(v6 + 72);
      if (v36 + 16 >= v37)
      {
        v36 = 0;
      }

      v38 = v35 + v36;
      if (v37 <= v38)
      {
        v38 = 0;
      }

      *(v6 + 88) = v38;
      v39 = *(v6 + 80);
      if (*(v39 + 8) <= 0xFFuLL)
      {
        goto LABEL_59;
      }

      v40 = atomic_exchange((*(v39 + 16) + 128), v38);
      v41 = *(v6 + 124);
      if (v40 == 0x80000000 || v41 != 0)
      {
        v43 = v41 + 1;
        *(v6 + 124) = v43;
        if (v43 >= *(v6 + 120))
        {
          if (*(v6 + 112) == 1)
          {
            MEMORY[0x19EB16320](*(v6 + 100));
          }

          *(v6 + 124) = 0;
        }
      }

      *(v6 + 64) = v7;
    }

    IPC::StreamClientConnectionBuffer::tryAcquire(v6 + 72, &v52, v9);
    if ((v54 & 1) == 0)
    {
      goto LABEL_53;
    }

    v11 = v52;
    v12 = v53;
    *&buf[16] = v53;
    if (v53 <= 1)
    {
      goto LABEL_80;
    }

    *v52 = 1065;
    *buf = v11 + 1;
    *&buf[8] = v12 - 2;
    IPC::ArgumentCoder<WebCore::PathEllipseInRect,void>::encode(buf, a2);
    if (!*buf)
    {
      break;
    }

    v13 = *&buf[16] - *&buf[8];
    if (*&buf[16] - *&buf[8] <= 0x10uLL)
    {
      v13 = 16;
    }

    v14 = (*(v6 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
    v15 = *(v6 + 72);
    if (v14 + 16 >= v15)
    {
      v14 = 0;
    }

    v16 = v14 + v13;
    if (v15 <= v16)
    {
      v16 = 0;
    }

    *(v6 + 88) = v16;
    v17 = *(v6 + 80);
    if (*(v17 + 8) > 0xFFuLL)
    {
      if (atomic_exchange((*(v17 + 16) + 128), v16) == 0x80000000 || *(v6 + 124))
      {
        if (*(v6 + 112) == 1)
        {
          MEMORY[0x19EB16320](*(v6 + 100));
        }

        *(v6 + 124) = 0;
      }

      goto LABEL_56;
    }

LABEL_59:
    __break(1u);
LABEL_60:
    v46 = *(this + 440);
    if (!v46)
    {
      return;
    }

    v47 = *(v46 + 8);
    if (!v47)
    {
      return;
    }

    ++*(v47 + 5);
    v48 = WebKit::RemoteRenderingBackendProxy::connection(v47, v5, buf);
    v6 = *buf;
    if (*(v47 + 5) == 1)
    {
      (*(*v47 + 24))(v47, v48);
      if (!v6)
      {
        return;
      }
    }

    else
    {
      --*(v47 + 5);
      if (!v6)
      {
        return;
      }
    }

    atomic_fetch_add(v6, 1u);
    v4 = *(this + 439);
    *(this + 439) = v6;
    if (v4 && atomic_fetch_add(v4, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v4);
      IPC::StreamClientConnection::operator delete(v4);
    }
  }

  if ((v54 & 1) == 0)
  {
    goto LABEL_59;
  }

  if (v53 <= 1)
  {
    __break(0xC471u);
    JUMPOUT(0x19E1B7E20);
  }

  *v52 = 3197;
  v18 = (*(v6 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
  v19 = *(v6 + 72);
  if (v18 + 16 >= v19)
  {
    v18 = 0;
  }

  v20 = v18 + 16;
  v21 = v19 <= v20 ? 0 : v20;
  *(v6 + 88) = v21;
  v22 = *(v6 + 80);
  if (*(v22 + 8) <= 0xFFuLL)
  {
    goto LABEL_59;
  }

  atomic_exchange((*(v22 + 16) + 128), v21);
  *(v6 + 124) = 0;
  v23 = *(v6 + 8);
  v24 = IPC::Encoder::operator new(0x238, v5);
  *v24 = 1065;
  *(v24 + 2) = 0;
  *(v24 + 3) = 0;
  *(v24 + 1) = v7;
  *(v24 + 68) = 0;
  *(v24 + 70) = 0;
  *(v24 + 69) = 0;
  IPC::Encoder::encodeHeader(v24);
  *buf = v24;
  IPC::ArgumentCoder<WebCore::FloatRect,void>::encode(v24, a2);
  v26 = IPC::Connection::sendMessageImpl(v23, buf, 1, 0);
  v27 = *buf;
  *buf = 0;
  if (v27)
  {
    IPC::Encoder::~Encoder(v27, v25);
    bmalloc::api::tzoneFree(v28, v29);
    if (!v26)
    {
      goto LABEL_56;
    }
  }

  else if (!v26)
  {
    goto LABEL_56;
  }

LABEL_53:
  v44 = qword_1ED6410D0;
  if (os_log_type_enabled(qword_1ED6410D0, OS_LOG_TYPE_DEFAULT))
  {
    v45 = IPC::errorAsString();
    *buf = 136446466;
    *&buf[4] = "RemoteDisplayListRecorder_DrawEllipse";
    *&buf[12] = 2082;
    *&buf[14] = v45;
    _os_log_impl(&dword_19D52D000, v44, OS_LOG_TYPE_DEFAULT, "RemoteDisplayListRecorderProxy::send - failed, name:%{public}s, error:%{public}s", buf, 0x16u);
  }

  WebKit::RemoteDisplayListRecorderProxy::didBecomeUnresponsive(*(this + 440));
LABEL_56:
  if (atomic_fetch_add(v6, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v6);
    IPC::StreamClientConnection::operator delete(v6);
  }
}

void WebKit::RemoteDisplayListRecorderProxy::drawPath(WebKit::RemoteDisplayListRecorderProxy *this, const WebCore::Path *a2)
{
  v56 = *MEMORY[0x1E69E9840];
  v4 = WebKit::RemoteDisplayListRecorderProxy::appendStateChangeItemIfNecessary(this, a2);
  v6 = *(this + 439);
  if (!v6)
  {
    goto LABEL_60;
  }

  atomic_fetch_add(v6, 1u);
  while (1)
  {
    if ((*(this + 3584) & 1) == 0)
    {
      v4 = *(this + 443);
      if (v4)
      {
        WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteImageBufferProxy>(v4, *(this + 442), buf);
        v4 = *buf;
        if (*buf)
        {
          v4 = WebKit::RemoteImageBufferProxy::ensureBackend(*buf, v49);
          if (v4)
          {
            v4 = (*(*v4 + 168))(v4);
          }

          v51 = *buf;
          *buf = 0;
          if (v51)
          {
            v4 = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::ImageBuffer,(WTF::DestructionThread)0>::deref((v51 + 8), v50);
          }
        }
      }

      *(this + 3584) = 1;
    }

    v7 = *(this + 438);
    v8 = *(v6 + 128);
    v9 = INFINITY;
    if (fabs(v8) != INFINITY)
    {
      WTF::ApproximateTime::now(v4);
      v9 = v8 + v10;
    }

    if (*(v6 + 64) != v7)
    {
      IPC::StreamClientConnectionBuffer::tryAcquire(v6 + 72, buf, v9);
      if (buf[16] != 1)
      {
        goto LABEL_53;
      }

      v30 = *&buf[8];
      if (*&buf[8] <= 1uLL)
      {
LABEL_80:
        __break(0xC471u);
        JUMPOUT(0x19E1B839CLL);
      }

      v31 = *buf;
      **buf = 3198;
      v32 = v31 + 2;
      if (v30 - 2 < (-v32 & 7 | 8uLL))
      {
        goto LABEL_53;
      }

      v33 = -v32 & 7;
      *(v32 + v33) = v7;
      v34 = 6;
      if (v33 > 6)
      {
        v34 = v33;
      }

      v35 = v34 + 10;
      v36 = (*(v6 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
      v37 = *(v6 + 72);
      if (v36 + 16 >= v37)
      {
        v36 = 0;
      }

      v38 = v35 + v36;
      if (v37 <= v38)
      {
        v38 = 0;
      }

      *(v6 + 88) = v38;
      v39 = *(v6 + 80);
      if (*(v39 + 8) <= 0xFFuLL)
      {
        goto LABEL_59;
      }

      v40 = atomic_exchange((*(v39 + 16) + 128), v38);
      v41 = *(v6 + 124);
      if (v40 == 0x80000000 || v41 != 0)
      {
        v43 = v41 + 1;
        *(v6 + 124) = v43;
        if (v43 >= *(v6 + 120))
        {
          if (*(v6 + 112) == 1)
          {
            MEMORY[0x19EB16320](*(v6 + 100));
          }

          *(v6 + 124) = 0;
        }
      }

      *(v6 + 64) = v7;
    }

    IPC::StreamClientConnectionBuffer::tryAcquire(v6 + 72, &v52, v9);
    if ((v54 & 1) == 0)
    {
      goto LABEL_53;
    }

    v11 = v52;
    v12 = v53;
    *&buf[16] = v53;
    if (v53 <= 1)
    {
      goto LABEL_80;
    }

    *v52 = 1074;
    *buf = v11 + 1;
    *&buf[8] = v12 - 2;
    IPC::ArgumentCoder<WebCore::Path,void>::encode(buf, a2);
    if (!*buf)
    {
      break;
    }

    v13 = *&buf[16] - *&buf[8];
    if (*&buf[16] - *&buf[8] <= 0x10uLL)
    {
      v13 = 16;
    }

    v14 = (*(v6 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
    v15 = *(v6 + 72);
    if (v14 + 16 >= v15)
    {
      v14 = 0;
    }

    v16 = v14 + v13;
    if (v15 <= v16)
    {
      v16 = 0;
    }

    *(v6 + 88) = v16;
    v17 = *(v6 + 80);
    if (*(v17 + 8) > 0xFFuLL)
    {
      if (atomic_exchange((*(v17 + 16) + 128), v16) == 0x80000000 || *(v6 + 124))
      {
        if (*(v6 + 112) == 1)
        {
          MEMORY[0x19EB16320](*(v6 + 100));
        }

        *(v6 + 124) = 0;
      }

      goto LABEL_56;
    }

LABEL_59:
    __break(1u);
LABEL_60:
    v46 = *(this + 440);
    if (!v46)
    {
      return;
    }

    v47 = *(v46 + 8);
    if (!v47)
    {
      return;
    }

    ++*(v47 + 5);
    v48 = WebKit::RemoteRenderingBackendProxy::connection(v47, v5, buf);
    v6 = *buf;
    if (*(v47 + 5) == 1)
    {
      (*(*v47 + 24))(v47, v48);
      if (!v6)
      {
        return;
      }
    }

    else
    {
      --*(v47 + 5);
      if (!v6)
      {
        return;
      }
    }

    atomic_fetch_add(v6, 1u);
    v4 = *(this + 439);
    *(this + 439) = v6;
    if (v4 && atomic_fetch_add(v4, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v4);
      IPC::StreamClientConnection::operator delete(v4);
    }
  }

  if ((v54 & 1) == 0)
  {
    goto LABEL_59;
  }

  if (v53 <= 1)
  {
    __break(0xC471u);
    JUMPOUT(0x19E1B83BCLL);
  }

  *v52 = 3197;
  v18 = (*(v6 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
  v19 = *(v6 + 72);
  if (v18 + 16 >= v19)
  {
    v18 = 0;
  }

  v20 = v18 + 16;
  v21 = v19 <= v20 ? 0 : v20;
  *(v6 + 88) = v21;
  v22 = *(v6 + 80);
  if (*(v22 + 8) <= 0xFFuLL)
  {
    goto LABEL_59;
  }

  atomic_exchange((*(v22 + 16) + 128), v21);
  *(v6 + 124) = 0;
  v23 = *(v6 + 8);
  v24 = IPC::Encoder::operator new(0x238, v5);
  *v24 = 1074;
  *(v24 + 2) = 0;
  *(v24 + 3) = 0;
  *(v24 + 1) = v7;
  *(v24 + 68) = 0;
  *(v24 + 70) = 0;
  *(v24 + 69) = 0;
  IPC::Encoder::encodeHeader(v24);
  *buf = v24;
  IPC::ArgumentCoder<WebCore::Path,void>::encode(v24, a2);
  v26 = IPC::Connection::sendMessageImpl(v23, buf, 1, 0);
  v27 = *buf;
  *buf = 0;
  if (v27)
  {
    IPC::Encoder::~Encoder(v27, v25);
    bmalloc::api::tzoneFree(v28, v29);
    if (!v26)
    {
      goto LABEL_56;
    }
  }

  else if (!v26)
  {
    goto LABEL_56;
  }

LABEL_53:
  v44 = qword_1ED6410D0;
  if (os_log_type_enabled(qword_1ED6410D0, OS_LOG_TYPE_DEFAULT))
  {
    v45 = IPC::errorAsString();
    *buf = 136446466;
    *&buf[4] = "RemoteDisplayListRecorder_DrawPath";
    *&buf[12] = 2082;
    *&buf[14] = v45;
    _os_log_impl(&dword_19D52D000, v44, OS_LOG_TYPE_DEFAULT, "RemoteDisplayListRecorderProxy::send - failed, name:%{public}s, error:%{public}s", buf, 0x16u);
  }

  WebKit::RemoteDisplayListRecorderProxy::didBecomeUnresponsive(*(this + 440));
LABEL_56:
  if (atomic_fetch_add(v6, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v6);
    IPC::StreamClientConnection::operator delete(v6);
  }
}

void WebKit::RemoteDisplayListRecorderProxy::drawFocusRing(WebKit::RemoteDisplayListRecorderProxy *this, const WebCore::Path *a2, float a3, const WebCore::Color *a4)
{
  v61 = *MEMORY[0x1E69E9840];
  v8 = WebKit::RemoteDisplayListRecorderProxy::appendStateChangeItemIfNecessary(this, a2);
  v10 = *(this + 439);
  if (!v10)
  {
    goto LABEL_63;
  }

  atomic_fetch_add(v10, 1u);
  while (1)
  {
    if ((*(this + 3584) & 1) == 0)
    {
      v8 = *(this + 443);
      if (v8)
      {
        WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteImageBufferProxy>(v8, *(this + 442), buf);
        v8 = *buf;
        if (*buf)
        {
          v8 = WebKit::RemoteImageBufferProxy::ensureBackend(*buf, v54);
          if (v8)
          {
            v8 = (*(*v8 + 168))(v8);
          }

          v56 = *buf;
          *buf = 0;
          if (v56)
          {
            v8 = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::ImageBuffer,(WTF::DestructionThread)0>::deref((v56 + 8), v55);
          }
        }
      }

      *(this + 3584) = 1;
    }

    v11 = *(this + 438);
    v12 = *(v10 + 128);
    v13 = INFINITY;
    if (fabs(v12) != INFINITY)
    {
      WTF::ApproximateTime::now(v8);
      v13 = v12 + v14;
    }

    if (*(v10 + 64) != v11)
    {
      IPC::StreamClientConnectionBuffer::tryAcquire(v10 + 72, buf, v13);
      if (buf[16] != 1)
      {
        goto LABEL_56;
      }

      v35 = *&buf[8];
      if (*&buf[8] <= 1uLL)
      {
LABEL_84:
        __break(0xC471u);
        JUMPOUT(0x19E1B89B4);
      }

      v36 = *buf;
      **buf = 3198;
      v37 = v36 + 2;
      if (v35 - 2 < (-v37 & 7 | 8uLL))
      {
        goto LABEL_56;
      }

      v38 = -v37 & 7;
      *(v37 + v38) = v11;
      v39 = 6;
      if (v38 > 6)
      {
        v39 = v38;
      }

      v40 = v39 + 10;
      v41 = (*(v10 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
      v42 = *(v10 + 72);
      if (v41 + 16 >= v42)
      {
        v41 = 0;
      }

      v43 = v40 + v41;
      if (v42 <= v43)
      {
        v43 = 0;
      }

      *(v10 + 88) = v43;
      v44 = *(v10 + 80);
      if (*(v44 + 8) <= 0xFFuLL)
      {
        goto LABEL_62;
      }

      v45 = atomic_exchange((*(v44 + 16) + 128), v43);
      v46 = *(v10 + 124);
      if (v45 == 0x80000000 || v46 != 0)
      {
        v48 = v46 + 1;
        *(v10 + 124) = v48;
        if (v48 >= *(v10 + 120))
        {
          if (*(v10 + 112) == 1)
          {
            MEMORY[0x19EB16320](*(v10 + 100));
          }

          *(v10 + 124) = 0;
        }
      }

      *(v10 + 64) = v11;
    }

    IPC::StreamClientConnectionBuffer::tryAcquire(v10 + 72, &v57, v13);
    if ((v59 & 1) == 0)
    {
      goto LABEL_56;
    }

    v15 = v57;
    v16 = v58;
    *&buf[16] = v58;
    if (v58 <= 1)
    {
      goto LABEL_84;
    }

    *v57 = 1067;
    *buf = v15 + 1;
    *&buf[8] = v16 - 2;
    IPC::ArgumentCoder<WebCore::Path,void>::encode(buf, a2);
    v17 = -*buf & 3 | 4;
    if (*&buf[8] < v17)
    {
      *buf = 0;
      *&buf[8] = 0;
    }

    else
    {
      *(*buf + (-*buf & 3)) = a3;
      if (*&buf[8] < v17)
      {
        goto LABEL_62;
      }

      *buf += v17;
      *&buf[8] -= v17;
    }

    IPC::ArgumentCoder<WebCore::Color,void>::encode(buf, a4);
    if (!*buf)
    {
      break;
    }

    v18 = *&buf[16] - *&buf[8];
    if (*&buf[16] - *&buf[8] <= 0x10uLL)
    {
      v18 = 16;
    }

    v19 = (*(v10 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
    v20 = *(v10 + 72);
    if (v19 + 16 >= v20)
    {
      v19 = 0;
    }

    v21 = v19 + v18;
    if (v20 <= v21)
    {
      v21 = 0;
    }

    *(v10 + 88) = v21;
    v22 = *(v10 + 80);
    if (*(v22 + 8) > 0xFFuLL)
    {
      if (atomic_exchange((*(v22 + 16) + 128), v21) == 0x80000000 || *(v10 + 124))
      {
        if (*(v10 + 112) == 1)
        {
          MEMORY[0x19EB16320](*(v10 + 100));
        }

        *(v10 + 124) = 0;
      }

      goto LABEL_59;
    }

LABEL_62:
    __break(1u);
LABEL_63:
    v51 = *(this + 440);
    if (!v51)
    {
      return;
    }

    v52 = *(v51 + 8);
    if (!v52)
    {
      return;
    }

    ++*(v52 + 5);
    v53 = WebKit::RemoteRenderingBackendProxy::connection(v52, v9, buf);
    v10 = *buf;
    if (*(v52 + 5) == 1)
    {
      (*(*v52 + 24))(v52, v53);
      if (!v10)
      {
        return;
      }
    }

    else
    {
      --*(v52 + 5);
      if (!v10)
      {
        return;
      }
    }

    atomic_fetch_add(v10, 1u);
    v8 = *(this + 439);
    *(this + 439) = v10;
    if (v8 && atomic_fetch_add(v8, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v8);
      IPC::StreamClientConnection::operator delete(v8);
    }
  }

  if ((v59 & 1) == 0)
  {
    goto LABEL_62;
  }

  if (v58 <= 1)
  {
    __break(0xC471u);
    JUMPOUT(0x19E1B89D4);
  }

  *v57 = 3197;
  v23 = (*(v10 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
  v24 = *(v10 + 72);
  if (v23 + 16 >= v24)
  {
    v23 = 0;
  }

  v25 = v23 + 16;
  v26 = v24 <= v25 ? 0 : v25;
  *(v10 + 88) = v26;
  v27 = *(v10 + 80);
  if (*(v27 + 8) <= 0xFFuLL)
  {
    goto LABEL_62;
  }

  atomic_exchange((*(v27 + 16) + 128), v26);
  *(v10 + 124) = 0;
  v28 = *(v10 + 8);
  v29 = IPC::Encoder::operator new(0x238, v9);
  *v29 = 1067;
  *(v29 + 2) = 0;
  *(v29 + 3) = 0;
  *(v29 + 1) = v11;
  *(v29 + 68) = 0;
  *(v29 + 70) = 0;
  *(v29 + 69) = 0;
  IPC::Encoder::encodeHeader(v29);
  *buf = v29;
  IPC::ArgumentCoder<WebCore::Path,void>::encode(v29, a2);
  IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(v29, a3);
  IPC::ArgumentCoder<WebCore::Color,void>::encode(v29, a4);
  v31 = IPC::Connection::sendMessageImpl(v28, buf, 1, 0);
  v32 = *buf;
  *buf = 0;
  if (v32)
  {
    IPC::Encoder::~Encoder(v32, v30);
    bmalloc::api::tzoneFree(v33, v34);
    if (!v31)
    {
      goto LABEL_59;
    }
  }

  else if (!v31)
  {
    goto LABEL_59;
  }

LABEL_56:
  v49 = qword_1ED6410D0;
  if (os_log_type_enabled(qword_1ED6410D0, OS_LOG_TYPE_DEFAULT))
  {
    v50 = IPC::errorAsString();
    *buf = 136446466;
    *&buf[4] = "RemoteDisplayListRecorder_DrawFocusRingPath";
    *&buf[12] = 2082;
    *&buf[14] = v50;
    _os_log_impl(&dword_19D52D000, v49, OS_LOG_TYPE_DEFAULT, "RemoteDisplayListRecorderProxy::send - failed, name:%{public}s, error:%{public}s", buf, 0x16u);
  }

  WebKit::RemoteDisplayListRecorderProxy::didBecomeUnresponsive(*(this + 440));
LABEL_59:
  if (atomic_fetch_add(v10, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v10);
    IPC::StreamClientConnection::operator delete(v10);
  }
}

void WebKit::RemoteDisplayListRecorderProxy::drawFocusRing(uint64_t a1, __int128 *a2, WebCore::Color *a3, float a4, float a5)
{
  v66 = *MEMORY[0x1E69E9840];
  v10 = WebKit::RemoteDisplayListRecorderProxy::appendStateChangeItemIfNecessary(a1, a2);
  v58 = a2;
  v59 = a4;
  v60 = a5;
  v61 = a3;
  v12 = *(a1 + 3512);
  if (!v12)
  {
    goto LABEL_57;
  }

  atomic_fetch_add(v12, 1u);
  while (1)
  {
    if ((*(a1 + 3584) & 1) == 0)
    {
      v10 = *(a1 + 3544);
      if (v10)
      {
        WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteImageBufferProxy>(v10, *(a1 + 3536), buf);
        v10 = *buf;
        if (*buf)
        {
          v10 = WebKit::RemoteImageBufferProxy::backingStoreWillChange(*buf, v55);
          v57 = *buf;
          *buf = 0;
          if (v57)
          {
            v10 = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::ImageBuffer,(WTF::DestructionThread)0>::deref((v57 + 8), v56);
          }
        }
      }

      *(a1 + 3584) = 1;
    }

    v13 = *(a1 + 3504);
    v14 = *(v12 + 16);
    v15 = INFINITY;
    if (fabs(v14) != INFINITY)
    {
      WTF::ApproximateTime::now(v10);
      v15 = v14 + v16;
    }

    if (*(v12 + 8) != v13)
    {
      IPC::StreamClientConnectionBuffer::tryAcquire((v12 + 18), buf, v15);
      if (buf[16] != 1)
      {
        goto LABEL_53;
      }

      v39 = *&buf[8];
      if (*&buf[8] <= 1uLL)
      {
LABEL_69:
        __break(0xC471u);
        JUMPOUT(0x19E1B8EECLL);
      }

      v40 = *buf;
      **buf = 3198;
      v41 = v40 + 2;
      if (v39 - 2 < (-v41 & 7 | 8uLL))
      {
        goto LABEL_53;
      }

      v42 = -v41 & 7;
      *(v41 + v42) = v13;
      v43 = 6;
      if (v42 > 6)
      {
        v43 = v42;
      }

      v44 = v43 + 10;
      v45 = (*(v12 + 11) + 1) & 0xFFFFFFFFFFFFFFFELL;
      v46 = *(v12 + 9);
      if (v45 + 16 >= v46)
      {
        v45 = 0;
      }

      v47 = v44 + v45;
      if (v46 <= v47)
      {
        v47 = 0;
      }

      *(v12 + 11) = v47;
      v48 = *(v12 + 10);
      if (*(v48 + 8) <= 0xFFuLL)
      {
        goto LABEL_56;
      }

      IPC::StreamClientConnection::wakeUpServerBatched(v12, atomic_exchange((*(v48 + 16) + 128), v47) == 0x80000000);
      *(v12 + 8) = v13;
    }

    IPC::StreamClientConnectionBuffer::tryAcquire((v12 + 18), &v62, v15);
    if ((v64 & 1) == 0)
    {
      goto LABEL_53;
    }

    v18 = v62;
    v17 = v63;
    *&buf[16] = v63;
    if (v63 <= 1)
    {
      goto LABEL_69;
    }

    *v62 = 1068;
    v19 = v18 + 1;
    v20 = v17 - 2;
    v21 = v58;
    v22 = -v19 & 7 | 8;
    v23 = v20 >= v22;
    v24 = v20 - v22;
    if (v23)
    {
      *(v19 + (-v19 & 7)) = *(v58 + 3);
      v54 = v19 + v22;
      *buf = v54;
      *&buf[8] = v24;
    }

    else
    {
      v24 = 0;
      v54 = 0;
      *buf = 0;
      *&buf[8] = 0;
    }

    v25 = *(v21 + 3);
    if (v25)
    {
      v26 = *v21;
      v27 = 16 * v25;
      do
      {
        IPC::ArgumentCoder<WebCore::PathEllipseInRect,void>::encode(buf, v26);
        v26 += 4;
        v27 -= 16;
      }

      while (v27);
      v54 = *buf;
      v24 = *&buf[8];
    }

    v28 = -v54 & 3 | 4;
    if (v24 < v28)
    {
      goto LABEL_63;
    }

    *&v54[-v54 & 3] = v59;
    v29 = *&buf[8] - v28;
    if (*&buf[8] < v28)
    {
      goto LABEL_56;
    }

    v30 = *buf + v28;
    v31 = -(*buf + v28);
    v32 = v31 & 3 | 4;
    v23 = v29 >= v32;
    v33 = v29 - v32;
    if (v23)
    {
      *(v30 + (v31 & 3)) = v60;
      *buf = v30 + v32;
      *&buf[8] = v33;
    }

    else
    {
LABEL_63:
      *buf = 0;
      *&buf[8] = 0;
    }

    IPC::ArgumentCoder<WebCore::Color,void>::encode(buf, v61);
    if (!*buf)
    {
      break;
    }

    v34 = 16;
    if (*&buf[16] - *&buf[8] > 0x10uLL)
    {
      v34 = *&buf[16] - *&buf[8];
    }

    v35 = (*(v12 + 11) + 1) & 0xFFFFFFFFFFFFFFFELL;
    v37 = *(v12 + 9);
    v36 = *(v12 + 10);
    if (v35 + 16 >= v37)
    {
      v35 = 0;
    }

    v38 = v35 + v34;
    if (v37 <= v38)
    {
      v38 = 0;
    }

    *(v12 + 11) = v38;
    if (*(v36 + 8) > 0xFFuLL)
    {
      if (atomic_exchange((*(v36 + 16) + 128), v38) == 0x80000000 || v12[31])
      {
        if (*(v12 + 112) == 1)
        {
          MEMORY[0x19EB16320](v12[25]);
        }

        v12[31] = 0;
      }

      goto LABEL_31;
    }

LABEL_56:
    __break(1u);
LABEL_57:
    v51 = *(a1 + 3520);
    if (!v51)
    {
      return;
    }

    v52 = *(v51 + 8);
    if (!v52)
    {
      return;
    }

    ++*(v52 + 5);
    v53 = WebKit::RemoteRenderingBackendProxy::connection(v52, v11, buf);
    v12 = *buf;
    if (*(v52 + 5) == 1)
    {
      (*(*v52 + 24))(v52, v53);
    }

    else
    {
      --*(v52 + 5);
    }

    if (!v12)
    {
      return;
    }

    v10 = WTF::RefPtr<IPC::StreamClientConnection,WTF::RawPtrTraits<IPC::StreamClientConnection>,WTF::DefaultRefDerefTraits<IPC::StreamClientConnection>>::operator=((a1 + 3512), v12);
  }

  if ((v64 & 1) == 0)
  {
    goto LABEL_56;
  }

  IPC::StreamClientConnection::sendProcessOutOfStreamMessage(v12, v62, v63);
  if (IPC::Connection::send<Messages::RemoteDisplayListRecorder::DrawFocusRingRects>(*(v12 + 1), &v58, v13))
  {
LABEL_53:
    v49 = qword_1ED6410D0;
    if (os_log_type_enabled(qword_1ED6410D0, OS_LOG_TYPE_DEFAULT))
    {
      v50 = IPC::errorAsString();
      *buf = 136446466;
      *&buf[4] = "RemoteDisplayListRecorder_DrawFocusRingRects";
      *&buf[12] = 2082;
      *&buf[14] = v50;
      _os_log_impl(&dword_19D52D000, v49, OS_LOG_TYPE_DEFAULT, "RemoteDisplayListRecorderProxy::send - failed, name:%{public}s, error:%{public}s", buf, 0x16u);
    }

    WebKit::RemoteDisplayListRecorderProxy::didBecomeUnresponsive(*(a1 + 3520));
  }

LABEL_31:
  if (atomic_fetch_add(v12, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v12);
    IPC::StreamClientConnection::operator delete(v12);
  }
}

void WebKit::RemoteDisplayListRecorderProxy::fillPath(WebKit::RemoteDisplayListRecorderProxy *this, const WebCore::Path *a2)
{
  v208 = *MEMORY[0x1E69E9840];
  WebKit::RemoteDisplayListRecorderProxy::appendStateChangeItemIfNecessary(this, a2);
  v4 = WebCore::Path::singleSegment(v204, a2);
  if (v206 == 1)
  {
    if (v205 == 255)
    {
      v19 = -1;
    }

    else
    {
      v19 = v205;
    }

    switch(v19)
    {
      case 1:
        if (v205 == 1)
        {
          goto LABEL_254;
        }

        goto LABEL_140;
      case 2:
        if (v205 == 2)
        {
          goto LABEL_254;
        }

        goto LABEL_140;
      case 3:
        if (v205 == 3)
        {
          goto LABEL_254;
        }

        goto LABEL_140;
      case 4:
        if (v205 == 4)
        {
          goto LABEL_254;
        }

        goto LABEL_140;
      case 5:
        if (v205 != 5)
        {
          goto LABEL_140;
        }

        v203 = v204;
        v6 = *(this + 439);
        if (v6)
        {
          atomic_fetch_add(v6, 1u);
        }

        else
        {
          v169 = *(this + 440);
          if (!v169)
          {
            return;
          }

          v170 = *(v169 + 8);
          if (!v170)
          {
            return;
          }

          ++*(v170 + 5);
          v171 = WebKit::RemoteRenderingBackendProxy::connection(v170, v5, buf);
          v6 = *buf;
          if (*(v170 + 5) == 1)
          {
            (*(*v170 + 24))(v170, v171);
          }

          else
          {
            --*(v170 + 5);
          }

          if (!v6)
          {
            return;
          }

          v4 = WTF::RefPtr<IPC::StreamClientConnection,WTF::RawPtrTraits<IPC::StreamClientConnection>,WTF::DefaultRefDerefTraits<IPC::StreamClientConnection>>::operator=(this + 439, v6);
        }

        if ((*(this + 3584) & 1) == 0)
        {
          v4 = *(this + 443);
          if (v4)
          {
            WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteImageBufferProxy>(v4, *(this + 442), buf);
            v4 = *buf;
            if (*buf)
            {
              v4 = WebKit::RemoteImageBufferProxy::backingStoreWillChange(*buf, v193);
              v195 = *buf;
              *buf = 0;
              if (v195)
              {
                v4 = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::ImageBuffer,(WTF::DestructionThread)0>::deref((v195 + 8), v194);
              }
            }
          }

          *(this + 3584) = 1;
        }

        v45 = *(this + 438);
        v46 = *(v6 + 128);
        v47 = INFINITY;
        if (fabs(v46) != INFINITY)
        {
          WTF::ApproximateTime::now(v4);
          v47 = v46 + v48;
        }

        if (*(v6 + 64) == v45)
        {
          goto LABEL_57;
        }

        IPC::StreamClientConnectionBuffer::tryAcquire(v6 + 72, buf, v47);
        if (buf[16] != 1)
        {
          goto LABEL_229;
        }

        v108 = *&buf[8];
        if (*&buf[8] <= 1uLL)
        {
          __break(0xC471u);
          JUMPOUT(0x19E1BA308);
        }

        v109 = *buf;
        **buf = 3198;
        v110 = v109 + 2;
        if (v108 - 2 < (-v110 & 7 | 8uLL))
        {
          goto LABEL_229;
        }

        v111 = -v110 & 7;
        *(v110 + v111) = v45;
        v112 = 6;
        if (v111 > 6)
        {
          v112 = v111;
        }

        v113 = v112 + 10;
        v114 = (*(v6 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
        v115 = *(v6 + 72);
        if (v114 + 16 >= v115)
        {
          v114 = 0;
        }

        v116 = v113 + v114;
        if (v115 <= v116)
        {
          v116 = 0;
        }

        *(v6 + 88) = v116;
        v117 = *(v6 + 80);
        if (*(v117 + 8) <= 0xFFuLL)
        {
          goto LABEL_286;
        }

        v118 = atomic_exchange((*(v117 + 16) + 128), v116);
        v119 = *(v6 + 124);
        if (v118 == 0x80000000 || v119 != 0)
        {
          v122 = v119 + 1;
          *(v6 + 124) = v122;
          if (v122 >= *(v6 + 120))
          {
            if (*(v6 + 112) == 1)
            {
              MEMORY[0x19EB16320](*(v6 + 100));
            }

            *(v6 + 124) = 0;
          }
        }

        *(v6 + 64) = v45;
LABEL_57:
        IPC::StreamClientConnectionBuffer::tryAcquire(v6 + 72, buf, v47);
        if ((buf[16] & 1) == 0)
        {
          goto LABEL_229;
        }

        v49 = *&buf[8];
        if (*&buf[8] <= 1uLL)
        {
          __break(0xC471u);
          JUMPOUT(0x19E1BA190);
        }

        v50 = *buf;
        **buf = 1082;
        v51 = v50 + 2;
        v52 = -v51 & 3 | 4;
        v53 = v49 - 2 - v52;
        if (v49 - 2 >= v52)
        {
          v54 = v203;
          *(v51 + (-v51 & 3)) = *v203;
          v55 = v51 + v52;
          v56 = -v55 & 3 | 4;
          v32 = v53 >= v56;
          v57 = v53 - v56;
          if (v32)
          {
            *(v55 + (-v55 & 3)) = *(v54 + 1);
            v58 = v55 + v56;
            v59 = -v58 & 3 | 4;
            v60 = v57 - v59;
            if (v57 >= v59)
            {
              *(v58 + (-v58 & 3)) = *(v54 + 2);
              v61 = v58 + v59;
              v62 = -(v58 + v59);
              v63 = v62 & 3 | 4;
              v64 = v60 - v63;
              if (v60 >= v63)
              {
                *(v61 + (v62 & 3)) = *(v54 + 3);
                v65 = v61 + v63;
                v66 = -v65 & 3 | 4;
                if (v64 >= v66)
                {
                  v67 = -v65 & 3;
                  *(v65 + v67) = *(v54 + 4);
                  if (v64 != v66)
                  {
                    *(v65 + v66) = *(v54 + 20);
                    v44 = v49 - v64 + v67;
                    goto LABEL_49;
                  }
                }
              }
            }
          }
        }

        if ((buf[16] & 1) == 0)
        {
          goto LABEL_286;
        }

        if (*&buf[8] <= 1uLL)
        {
          __break(0xC471u);
          JUMPOUT(0x19E1BA368);
        }

        **buf = 3197;
        v146 = (*(v6 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
        v147 = *(v6 + 72);
        if (v146 + 16 >= v147)
        {
          v146 = 0;
        }

        v148 = v146 + 16;
        v149 = v147 <= v148 ? 0 : v148;
        *(v6 + 88) = v149;
        v150 = *(v6 + 80);
        if (*(v150 + 8) <= 0xFFuLL)
        {
          goto LABEL_286;
        }

        atomic_exchange((*(v150 + 16) + 128), v149);
        *(v6 + 124) = 0;
        if (!IPC::Connection::send<Messages::RemoteDisplayListRecorder::FillArc>(*(v6 + 8), &v203, v45))
        {
          goto LABEL_22;
        }

LABEL_229:
        v92 = qword_1ED6410D0;
        if (!os_log_type_enabled(qword_1ED6410D0, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_265;
        }

        v93 = IPC::errorAsString();
        *buf = 136446466;
        v94 = "RemoteDisplayListRecorder_FillArc";
        goto LABEL_263;
      case 6:
        if (v205 != 6)
        {
          goto LABEL_140;
        }

        v6 = *(this + 439);
        if (v6)
        {
          atomic_fetch_add(v6, 1u);
        }

        else
        {
          v166 = *(this + 440);
          if (!v166)
          {
            return;
          }

          v167 = *(v166 + 8);
          if (!v167)
          {
            return;
          }

          ++*(v167 + 5);
          v168 = WebKit::RemoteRenderingBackendProxy::connection(v167, v5, buf);
          v6 = *buf;
          if (*(v167 + 5) == 1)
          {
            (*(*v167 + 24))(v167, v168);
          }

          else
          {
            --*(v167 + 5);
          }

          if (!v6)
          {
            return;
          }

          v4 = WTF::RefPtr<IPC::StreamClientConnection,WTF::RawPtrTraits<IPC::StreamClientConnection>,WTF::DefaultRefDerefTraits<IPC::StreamClientConnection>>::operator=(this + 439, v6);
        }

        if ((*(this + 3584) & 1) == 0)
        {
          v4 = *(this + 443);
          if (v4)
          {
            WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteImageBufferProxy>(v4, *(this + 442), buf);
            v4 = *buf;
            if (*buf)
            {
              v4 = WebKit::RemoteImageBufferProxy::backingStoreWillChange(*buf, v190);
              v192 = *buf;
              *buf = 0;
              if (v192)
              {
                v4 = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::ImageBuffer,(WTF::DestructionThread)0>::deref((v192 + 8), v191);
              }
            }
          }

          *(this + 3584) = 1;
        }

        v20 = *(this + 438);
        v21 = *(v6 + 128);
        v22 = INFINITY;
        if (fabs(v21) != INFINITY)
        {
          WTF::ApproximateTime::now(v4);
          v22 = v21 + v23;
        }

        if (*(v6 + 64) == v20)
        {
          goto LABEL_39;
        }

        IPC::StreamClientConnectionBuffer::tryAcquire(v6 + 72, buf, v22);
        if (buf[16] != 1)
        {
          goto LABEL_227;
        }

        v95 = *&buf[8];
        if (*&buf[8] <= 1uLL)
        {
          __break(0xC471u);
          JUMPOUT(0x19E1BA1F8);
        }

        v96 = *buf;
        **buf = 3198;
        v97 = v96 + 2;
        if (v95 - 2 < (-v97 & 7 | 8uLL))
        {
          goto LABEL_227;
        }

        v98 = -v97 & 7;
        *(v97 + v98) = v20;
        v99 = 6;
        if (v98 > 6)
        {
          v99 = v98;
        }

        v100 = v99 + 10;
        v101 = (*(v6 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
        v102 = *(v6 + 72);
        if (v101 + 16 >= v102)
        {
          v101 = 0;
        }

        v103 = v100 + v101;
        if (v102 <= v103)
        {
          v103 = 0;
        }

        *(v6 + 88) = v103;
        v104 = *(v6 + 80);
        if (*(v104 + 8) <= 0xFFuLL)
        {
          goto LABEL_286;
        }

        v105 = atomic_exchange((*(v104 + 16) + 128), v103);
        v106 = *(v6 + 124);
        if (v105 == 0x80000000 || v106 != 0)
        {
          v121 = v106 + 1;
          *(v6 + 124) = v121;
          if (v121 >= *(v6 + 120))
          {
            if (*(v6 + 112) == 1)
            {
              MEMORY[0x19EB16320](*(v6 + 100));
            }

            *(v6 + 124) = 0;
          }
        }

        *(v6 + 64) = v20;
LABEL_39:
        IPC::StreamClientConnectionBuffer::tryAcquire(v6 + 72, buf, v22);
        if ((buf[16] & 1) == 0)
        {
          goto LABEL_227;
        }

        v25 = *&buf[8];
        if (*&buf[8] <= 1uLL)
        {
          __break(0xC471u);
          JUMPOUT(0x19E1BA170);
        }

        v26 = *buf;
        **buf = 1084;
        v27 = v26 + 2;
        v28 = -v27 & 3 | 4;
        v29 = v25 - 2 - v28;
        if (v25 - 2 >= v28)
        {
          *(v27 + (-v27 & 3)) = *v204;
          v30 = v27 + v28;
          v31 = -v30 & 3 | 4;
          v32 = v29 >= v31;
          v33 = v29 - v31;
          if (v32)
          {
            *(v30 + (-v30 & 3)) = *&v204[4];
            v34 = v30 + v31;
            v35 = -v34 & 3 | 4;
            v36 = v33 - v35;
            if (v33 >= v35)
            {
              *(v34 + (-v34 & 3)) = *&v204[8];
              v37 = v34 + v35;
              v38 = -(v34 + v35);
              v39 = v38 & 3 | 4;
              v40 = v36 - v39;
              if (v36 >= v39)
              {
                *(v37 + (v38 & 3)) = *&v204[12];
                v41 = v37 + v39;
                v42 = -v41 & 3 | 4;
                if (v40 >= v42)
                {
                  v43 = -v41 & 3;
                  *(v41 + v43) = *&v204[16];
                  if (v40 != v42)
                  {
                    *(v41 + v42) = v204[20];
                    v44 = v25 - v40 + v43;
LABEL_49:
                    v14 = v44 + 5;
                    goto LABEL_12;
                  }
                }
              }
            }
          }
        }

        if ((buf[16] & 1) == 0)
        {
          goto LABEL_286;
        }

        if (*&buf[8] <= 1uLL)
        {
          __break(0xC471u);
          JUMPOUT(0x19E1BA348);
        }

        **buf = 3197;
        v136 = (*(v6 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
        v137 = *(v6 + 72);
        if (v136 + 16 >= v137)
        {
          v136 = 0;
        }

        v138 = v136 + 16;
        v139 = v137 <= v138 ? 0 : v138;
        *(v6 + 88) = v139;
        v140 = *(v6 + 80);
        if (*(v140 + 8) <= 0xFFuLL)
        {
          goto LABEL_286;
        }

        atomic_exchange((*(v140 + 16) + 128), v139);
        *(v6 + 124) = 0;
        v141 = *(v6 + 8);
        v142 = IPC::Encoder::operator new(0x238, v24);
        *v142 = 1084;
        *(v142 + 2) = 0;
        *(v142 + 3) = 0;
        *(v142 + 1) = v20;
        *(v142 + 68) = 0;
        *(v142 + 70) = 0;
        *(v142 + 69) = 0;
        IPC::Encoder::encodeHeader(v142);
        v203 = v142;
        IPC::ArgumentCoder<WebCore::PathArc,void>::encode(v142, v204);
        v144 = IPC::Connection::sendMessageImpl(v141, &v203, 1, 0);
        v145 = v203;
        v203 = 0;
        if (v145)
        {
          IPC::Encoder::~Encoder(v145, v143);
          bmalloc::api::tzoneFree(v172, v173);
        }

        if (!v144)
        {
          goto LABEL_22;
        }

        goto LABEL_227;
      case 7:
        if (v205 == 7)
        {
          goto LABEL_254;
        }

        goto LABEL_140;
      case 8:
        if (v205 == 8)
        {
          goto LABEL_254;
        }

        goto LABEL_140;
      case 9:
        if (v205 != 9)
        {
          goto LABEL_140;
        }

        goto LABEL_101;
      case 10:
        if (v205 == 10)
        {
          goto LABEL_101;
        }

        goto LABEL_140;
      case 11:
        if (v205 != 11)
        {
          goto LABEL_140;
        }

LABEL_101:
        v203 = v204;
        v6 = *(this + 439);
        if (v6)
        {
          atomic_fetch_add(v6, 1u);
        }

        else
        {
          v181 = *(this + 440);
          if (!v181)
          {
            return;
          }

          v182 = *(v181 + 8);
          if (!v182)
          {
            return;
          }

          ++*(v182 + 5);
          v183 = WebKit::RemoteRenderingBackendProxy::connection(v182, v5, buf);
          v6 = *buf;
          if (*(v182 + 5) == 1)
          {
            (*(*v182 + 24))(v182, v183);
          }

          else
          {
            --*(v182 + 5);
          }

          if (!v6)
          {
            return;
          }

          WTF::RefPtr<IPC::StreamClientConnection,WTF::RawPtrTraits<IPC::StreamClientConnection>,WTF::DefaultRefDerefTraits<IPC::StreamClientConnection>>::operator=(this + 439, v6);
        }

        if ((*(this + 3584) & 1) == 0)
        {
          v180 = *(this + 443);
          if (v180)
          {
            WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteImageBufferProxy>(v180, *(this + 442), buf);
            if (*buf)
            {
              WebKit::RemoteImageBufferProxy::backingStoreWillChange(*buf, v196);
              v198 = *buf;
              *buf = 0;
              if (v198)
              {
                WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::ImageBuffer,(WTF::DestructionThread)0>::deref((v198 + 8), v197);
              }
            }
          }

          *(this + 3584) = 1;
        }

        if (!IPC::StreamClientConnection::send<Messages::RemoteDisplayListRecorder::FillPathSegment,WebKit::RemoteDisplayListRecorderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v6, &v203, *(this + 438)))
        {
          goto LABEL_22;
        }

        v92 = qword_1ED6410D0;
        if (!os_log_type_enabled(qword_1ED6410D0, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_265;
        }

        v93 = IPC::errorAsString();
        *buf = 136446466;
        v94 = "RemoteDisplayListRecorder_FillPathSegment";
        goto LABEL_263;
      case 12:
        if (v205 != 12)
        {
          goto LABEL_140;
        }

        v203 = v204;
        v6 = *(this + 439);
        if (v6)
        {
          atomic_fetch_add(v6, 1u);
        }

        else
        {
          v184 = *(this + 440);
          if (!v184)
          {
            return;
          }

          v185 = *(v184 + 8);
          if (!v185)
          {
            return;
          }

          ++*(v185 + 5);
          v186 = WebKit::RemoteRenderingBackendProxy::connection(v185, v5, buf);
          v6 = *buf;
          if (*(v185 + 5) == 1)
          {
            (*(*v185 + 24))(v185, v186);
          }

          else
          {
            --*(v185 + 5);
          }

          if (!v6)
          {
            return;
          }

          v4 = WTF::RefPtr<IPC::StreamClientConnection,WTF::RawPtrTraits<IPC::StreamClientConnection>,WTF::DefaultRefDerefTraits<IPC::StreamClientConnection>>::operator=(this + 439, v6);
        }

        if ((*(this + 3584) & 1) == 0)
        {
          v4 = *(this + 443);
          if (v4)
          {
            WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteImageBufferProxy>(v4, *(this + 442), buf);
            v4 = *buf;
            if (*buf)
            {
              v4 = WebKit::RemoteImageBufferProxy::backingStoreWillChange(*buf, v199);
              v201 = *buf;
              *buf = 0;
              if (v201)
              {
                v4 = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::ImageBuffer,(WTF::DestructionThread)0>::deref((v201 + 8), v200);
              }
            }
          }

          *(this + 3584) = 1;
        }

        v81 = *(this + 438);
        v82 = *(v6 + 128);
        v83 = INFINITY;
        if (fabs(v82) != INFINITY)
        {
          WTF::ApproximateTime::now(v4);
          v83 = v82 + v84;
        }

        if (*(v6 + 64) == v81)
        {
          goto LABEL_90;
        }

        IPC::StreamClientConnectionBuffer::tryAcquire(v6 + 72, buf, v83);
        if (buf[16] == 1)
        {
          v151 = *&buf[8];
          if (*&buf[8] <= 1uLL)
          {
            goto LABEL_317;
          }

          v152 = *buf;
          **buf = 3198;
          v153 = v152 + 2;
          if (v151 - 2 >= (-v153 & 7 | 8uLL))
          {
            v154 = -v153 & 7;
            *(v153 + v154) = v81;
            v155 = 6;
            if (v154 > 6)
            {
              v155 = v154;
            }

            v156 = v155 + 10;
            v157 = (*(v6 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
            v158 = *(v6 + 72);
            if (v157 + 16 >= v158)
            {
              v157 = 0;
            }

            v159 = v156 + v157;
            if (v158 <= v159)
            {
              v159 = 0;
            }

            *(v6 + 88) = v159;
            v160 = *(v6 + 80);
            if (*(v160 + 8) <= 0xFFuLL)
            {
              goto LABEL_286;
            }

            v161 = atomic_exchange((*(v160 + 16) + 128), v159);
            v162 = *(v6 + 124);
            if (v161 == 0x80000000 || v162 != 0)
            {
              v174 = v162 + 1;
              *(v6 + 124) = v174;
              if (v174 >= *(v6 + 120))
              {
                if (*(v6 + 112) == 1)
                {
                  MEMORY[0x19EB16320](*(v6 + 100));
                }

                *(v6 + 124) = 0;
              }
            }

            *(v6 + 64) = v81;
LABEL_90:
            IPC::StreamClientConnectionBuffer::tryAcquire(v6 + 72, buf, v83);
            if (buf[16])
            {
              v85 = *&buf[8];
              if (*&buf[8] <= 1uLL)
              {
                __break(0xC471u);
                JUMPOUT(0x19E1BA1D8);
              }

              v86 = *buf;
              **buf = 1087;
              v87 = v86 + 2;
              if (v85 - 2 >= (-v87 & 3 | 0x10uLL))
              {
                v88 = -v87 & 3;
                *(v87 + v88) = *v203;
                v89 = v88 + 18;
                v90 = (*(v6 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
                v16 = *(v6 + 72);
                if (v90 + 16 >= v16)
                {
                  v90 = 0;
                }

                v17 = v89 + v90;
                goto LABEL_17;
              }

              if ((buf[16] & 1) == 0)
              {
                goto LABEL_286;
              }

              IPC::StreamClientConnection::sendProcessOutOfStreamMessage(v6, *buf, *&buf[8]);
              if (!IPC::Connection::send<Messages::RemoteDisplayListRecorder::FillLine>(*(v6 + 8), &v203, v81))
              {
LABEL_22:
                if (atomic_fetch_add(v6, 0xFFFFFFFF) == 1)
                {
                  atomic_store(1u, v6);
                  IPC::StreamClientConnection::operator delete(v6);
                }

                return;
              }
            }
          }
        }

        v92 = qword_1ED6410D0;
        if (os_log_type_enabled(qword_1ED6410D0, OS_LOG_TYPE_DEFAULT))
        {
          v93 = IPC::errorAsString();
          *buf = 136446466;
          v94 = "RemoteDisplayListRecorder_FillLine";
LABEL_263:
          *&buf[4] = v94;
          *&buf[12] = 2082;
          *&buf[14] = v93;
          v177 = buf;
          v178 = v92;
          goto LABEL_264;
        }

        goto LABEL_265;
      case 13:
        if (v205 != 13)
        {
          goto LABEL_140;
        }

        WebKit::RemoteDisplayListRecorderProxy::fillPath(WebCore::Path const&)::$_4::operator()(this, v204);
        return;
      case 14:
        if (v205 != 14)
        {
          goto LABEL_140;
        }

        WebKit::RemoteDisplayListRecorderProxy::fillPath(WebCore::Path const&)::$_5::operator()(this, v204);
        return;
      case 15:
        if (v205 == 15)
        {
          goto LABEL_254;
        }

        goto LABEL_140;
      case 16:
        if (v205 == 16)
        {
          goto LABEL_254;
        }

        goto LABEL_140;
      default:
        if (v205)
        {
LABEL_140:
          mpark::throw_bad_variant_access(v4);
        }

LABEL_254:
        WebKit::RemoteDisplayListRecorderProxy::fillPath(WebCore::Path const&)::$_0::operator()<WebCore::PathMoveTo const&>(this, v204);
        return;
    }
  }

  v6 = *(this + 439);
  if (v6)
  {
    atomic_fetch_add(v6, 1u);
LABEL_4:
    if ((*(this + 3584) & 1) == 0)
    {
      v4 = *(this + 443);
      if (v4)
      {
        WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteImageBufferProxy>(v4, *(this + 442), v204);
        v4 = *v204;
        if (*v204)
        {
          v4 = WebKit::RemoteImageBufferProxy::backingStoreWillChange(*v204, v187);
          v189 = *v204;
          *v204 = 0;
          if (v189)
          {
            v4 = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::ImageBuffer,(WTF::DestructionThread)0>::deref((v189 + 8), v188);
          }
        }
      }

      *(this + 3584) = 1;
    }

    v7 = *(this + 438);
    v8 = *(v6 + 128);
    v9 = INFINITY;
    if (fabs(v8) != INFINITY)
    {
      WTF::ApproximateTime::now(v4);
      v9 = v8 + v10;
    }

    if (*(v6 + 64) != v7)
    {
      IPC::StreamClientConnectionBuffer::tryAcquire(v6 + 72, v204, v9);
      if (v204[16] != 1)
      {
        goto LABEL_224;
      }

      v68 = *&v204[8];
      if (*&v204[8] <= 1uLL)
      {
        __break(0xC471u);
        JUMPOUT(0x19E1BA1B8);
      }

      v69 = *v204;
      **v204 = 3198;
      v70 = v69 + 2;
      if (v68 - 2 < (-v70 & 7 | 8uLL))
      {
        goto LABEL_224;
      }

      v71 = -v70 & 7;
      *(v70 + v71) = v7;
      v72 = 6;
      if (v71 > 6)
      {
        v72 = v71;
      }

      v73 = v72 + 10;
      v74 = (*(v6 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
      v75 = *(v6 + 72);
      if (v74 + 16 >= v75)
      {
        v74 = 0;
      }

      v76 = v73 + v74;
      if (v75 <= v76)
      {
        v76 = 0;
      }

      *(v6 + 88) = v76;
      v77 = *(v6 + 80);
      if (*(v77 + 8) <= 0xFFuLL)
      {
LABEL_286:
        __break(1u);
LABEL_227:
        v175 = qword_1ED6410D0;
        if (!os_log_type_enabled(qword_1ED6410D0, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_265;
        }

        v179 = IPC::errorAsString();
        *buf = 136446466;
        *&buf[4] = "RemoteDisplayListRecorder_FillClosedArc";
        *&buf[12] = 2082;
        *&buf[14] = v179;
        v177 = buf;
        goto LABEL_226;
      }

      v78 = atomic_exchange((*(v77 + 16) + 128), v76);
      v79 = *(v6 + 124);
      if (v78 == 0x80000000 || v79 != 0)
      {
        v91 = v79 + 1;
        *(v6 + 124) = v91;
        if (v91 >= *(v6 + 120))
        {
          if (*(v6 + 112) == 1)
          {
            MEMORY[0x19EB16320](*(v6 + 100));
          }

          *(v6 + 124) = 0;
        }
      }

      *(v6 + 64) = v7;
    }

    IPC::StreamClientConnectionBuffer::tryAcquire(v6 + 72, buf, v9);
    if ((buf[16] & 1) == 0)
    {
      goto LABEL_224;
    }

    v11 = *buf;
    v12 = *&buf[8];
    *&v204[16] = *&buf[8];
    if (*&buf[8] > 1uLL)
    {
      **buf = 1088;
      *v204 = v11 + 2;
      *&v204[8] = v12 - 2;
      IPC::ArgumentCoder<WebCore::Path,void>::encode(v204, a2);
      if (*v204)
      {
        v14 = *&v204[16] - *&v204[8];
LABEL_12:
        if (v14 <= 0x10)
        {
          v14 = 16;
        }

        v15 = (*(v6 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
        v16 = *(v6 + 72);
        if (v15 + 16 >= v16)
        {
          v15 = 0;
        }

        v17 = v15 + v14;
LABEL_17:
        if (v16 <= v17)
        {
          v17 = 0;
        }

        *(v6 + 88) = v17;
        v18 = *(v6 + 80);
        if (*(v18 + 8) > 0xFFuLL)
        {
          if (atomic_exchange((*(v18 + 16) + 128), v17) == 0x80000000 || *(v6 + 124))
          {
            if (*(v6 + 112) == 1)
            {
              MEMORY[0x19EB16320](*(v6 + 100));
            }

            *(v6 + 124) = 0;
          }

          goto LABEL_22;
        }

        goto LABEL_286;
      }

      v202 = v7;
      if (buf[16])
      {
        if (*&buf[8] <= 1uLL)
        {
          __break(0xC471u);
          JUMPOUT(0x19E1BA328);
        }

        **buf = 3197;
        v126 = (*(v6 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
        v127 = *(v6 + 72);
        if (v126 + 16 >= v127)
        {
          v126 = 0;
        }

        v128 = v126 + 16;
        v129 = v127 <= v128 ? 0 : v128;
        *(v6 + 88) = v129;
        v130 = *(v6 + 80);
        if (*(v130 + 8) > 0xFFuLL)
        {
          atomic_exchange((*(v130 + 16) + 128), v129);
          *(v6 + 124) = 0;
          v131 = *(v6 + 8);
          v132 = IPC::Encoder::operator new(0x238, v13);
          *v132 = 1088;
          *(v132 + 2) = 0;
          *(v132 + 3) = 0;
          *(v132 + 1) = v202;
          *(v132 + 68) = 0;
          *(v132 + 70) = 0;
          *(v132 + 69) = 0;
          IPC::Encoder::encodeHeader(v132);
          *v204 = v132;
          IPC::ArgumentCoder<WebCore::Path,void>::encode(v132, a2);
          v134 = IPC::Connection::sendMessageImpl(v131, v204, 1, 0);
          v135 = *v204;
          *v204 = 0;
          if (v135)
          {
            IPC::Encoder::~Encoder(v135, v133);
            bmalloc::api::tzoneFree(v164, v165);
          }

          if (!v134)
          {
            goto LABEL_22;
          }

LABEL_224:
          v175 = qword_1ED6410D0;
          if (os_log_type_enabled(qword_1ED6410D0, OS_LOG_TYPE_DEFAULT))
          {
            v176 = IPC::errorAsString();
            *v204 = 136446466;
            *&v204[4] = "RemoteDisplayListRecorder_FillPath";
            *&v204[12] = 2082;
            *&v204[14] = v176;
            v177 = v204;
LABEL_226:
            v178 = v175;
LABEL_264:
            _os_log_impl(&dword_19D52D000, v178, OS_LOG_TYPE_DEFAULT, "RemoteDisplayListRecorderProxy::send - failed, name:%{public}s, error:%{public}s", v177, 0x16u);
          }

LABEL_265:
          WebKit::RemoteDisplayListRecorderProxy::didBecomeUnresponsive(*(this + 440));
          goto LABEL_22;
        }
      }

      goto LABEL_286;
    }

LABEL_317:
    __break(0xC471u);
    JUMPOUT(0x19E1BA11CLL);
  }

  v123 = *(this + 440);
  if (v123)
  {
    v124 = *(v123 + 8);
    if (v124)
    {
      ++*(v124 + 5);
      v125 = WebKit::RemoteRenderingBackendProxy::connection(v124, v5, v204);
      v6 = *v204;
      if (*(v124 + 5) == 1)
      {
        (*(*v124 + 24))(v124, v125);
      }

      else
      {
        --*(v124 + 5);
      }

      if (v6)
      {
        v4 = WTF::RefPtr<IPC::StreamClientConnection,WTF::RawPtrTraits<IPC::StreamClientConnection>,WTF::DefaultRefDerefTraits<IPC::StreamClientConnection>>::operator=(this + 439, v6);
        goto LABEL_4;
      }
    }
  }
}

void WebKit::RemoteDisplayListRecorderProxy::fillRect(uint64_t a1, __int128 *a2, char a3)
{
  v55 = *MEMORY[0x1E69E9840];
  v6 = WebKit::RemoteDisplayListRecorderProxy::appendStateChangeItemIfNecessary(a1, a2);
  v49 = a2;
  v50 = a3;
  v8 = *(a1 + 3512);
  if (!v8)
  {
    goto LABEL_56;
  }

  atomic_fetch_add(v8, 1u);
  while (1)
  {
    if ((*(a1 + 3584) & 1) == 0)
    {
      v6 = *(a1 + 3544);
      if (v6)
      {
        WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteImageBufferProxy>(v6, *(a1 + 3536), buf);
        v6 = *buf;
        if (*buf)
        {
          v6 = WebKit::RemoteImageBufferProxy::backingStoreWillChange(*buf, v46);
          v48 = *buf;
          *buf = 0;
          if (v48)
          {
            v6 = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::ImageBuffer,(WTF::DestructionThread)0>::deref((v48 + 8), v47);
          }
        }
      }

      *(a1 + 3584) = 1;
    }

    v9 = *(a1 + 3504);
    v10 = *(v8 + 128);
    v11 = INFINITY;
    if (fabs(v10) != INFINITY)
    {
      WTF::ApproximateTime::now(v6);
      v11 = v10 + v12;
    }

    if (*(v8 + 64) == v9)
    {
      break;
    }

    IPC::StreamClientConnectionBuffer::tryAcquire(v8 + 72, buf, v11);
    if (buf[16] != 1)
    {
      goto LABEL_62;
    }

    v22 = *&buf[8];
    if (*&buf[8] <= 1uLL)
    {
      __break(0xC471u);
      JUMPOUT(0x19E1BA848);
    }

    v23 = *buf;
    **buf = 3198;
    v24 = v23 + 2;
    if (v22 - 2 < (-v24 & 7 | 8uLL))
    {
      goto LABEL_62;
    }

    v25 = -v24 & 7;
    *(v24 + v25) = v9;
    v26 = 6;
    if (v25 > 6)
    {
      v26 = v25;
    }

    v27 = v26 + 10;
    v28 = (*(v8 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
    v29 = *(v8 + 72);
    if (v28 + 16 >= v29)
    {
      v28 = 0;
    }

    v30 = v27 + v28;
    if (v29 <= v30)
    {
      v30 = 0;
    }

    *(v8 + 88) = v30;
    v31 = *(v8 + 80);
    if (*(v31 + 8) > 0xFFuLL)
    {
      v32 = atomic_exchange((*(v31 + 16) + 128), v30);
      v33 = *(v8 + 124);
      if (v32 == 0x80000000 || v33 != 0)
      {
        v35 = v33 + 1;
        *(v8 + 124) = v35;
        if (v35 >= *(v8 + 120))
        {
          if (*(v8 + 112) == 1)
          {
            MEMORY[0x19EB16320](*(v8 + 100));
          }

          *(v8 + 124) = 0;
        }
      }

      *(v8 + 64) = v9;
      break;
    }

LABEL_55:
    __break(1u);
LABEL_56:
    v41 = *(a1 + 3520);
    if (!v41)
    {
      return;
    }

    v42 = *(v41 + 8);
    if (!v42)
    {
      return;
    }

    ++*(v42 + 5);
    v43 = WebKit::RemoteRenderingBackendProxy::connection(v42, v7, buf);
    v8 = *buf;
    if (*(v42 + 5) == 1)
    {
      (*(*v42 + 24))(v42, v43);
    }

    else
    {
      --*(v42 + 5);
    }

    if (!v8)
    {
      return;
    }

    v6 = WTF::RefPtr<IPC::StreamClientConnection,WTF::RawPtrTraits<IPC::StreamClientConnection>,WTF::DefaultRefDerefTraits<IPC::StreamClientConnection>>::operator=((a1 + 3512), v8);
  }

  IPC::StreamClientConnectionBuffer::tryAcquire(v8 + 72, &v51, v11);
  if ((v53 & 1) == 0)
  {
    goto LABEL_62;
  }

  v13 = v51;
  v14 = v52;
  *&buf[16] = v52;
  if (v52 <= 1)
  {
LABEL_74:
    __break(0xC471u);
    JUMPOUT(0x19E1BA828);
  }

  *v51 = 1091;
  *buf = v13 + 1;
  *&buf[8] = v14 - 2;
  IPC::ArgumentCoder<WebCore::PathEllipseInRect,void>::encode(buf, v49);
  v15 = *&buf[8];
  if (*&buf[8])
  {
    v16 = *buf;
    **buf = v50;
    *buf = v16 + 1;
    *&buf[8] = v15 - 1;
    v17 = *&buf[16] - (v15 - 1);
    if (v17 <= 0x10)
    {
      v17 = 16;
    }

    v18 = (*(v8 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
    v19 = *(v8 + 72);
    if (v18 + 16 >= v19)
    {
      v18 = 0;
    }

    v20 = v18 + v17;
    if (v19 <= v20)
    {
      v20 = 0;
    }

    *(v8 + 88) = v20;
    v21 = *(v8 + 80);
    if (*(v21 + 8) > 0xFFuLL)
    {
      if (atomic_exchange((*(v21 + 16) + 128), v20) == 0x80000000 || *(v8 + 124))
      {
        if (*(v8 + 112) == 1)
        {
          MEMORY[0x19EB16320](*(v8 + 100));
        }

        *(v8 + 124) = 0;
      }

      goto LABEL_19;
    }

    goto LABEL_55;
  }

  if ((v53 & 1) == 0)
  {
    goto LABEL_55;
  }

  if (v52 <= 1)
  {
    goto LABEL_74;
  }

  *v51 = 3197;
  v36 = (*(v8 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
  v37 = *(v8 + 72);
  if (v36 + 16 >= v37)
  {
    v36 = 0;
  }

  v38 = v36 + 16;
  v39 = v37 <= v38 ? 0 : v38;
  *(v8 + 88) = v39;
  v40 = *(v8 + 80);
  if (*(v40 + 8) <= 0xFFuLL)
  {
    goto LABEL_55;
  }

  atomic_exchange((*(v40 + 16) + 128), v39);
  *(v8 + 124) = 0;
  if (!IPC::Connection::send<Messages::RemoteDisplayListRecorder::FillRect>(*(v8 + 8), &v49, v9))
  {
    goto LABEL_19;
  }

LABEL_62:
  v44 = qword_1ED6410D0;
  if (os_log_type_enabled(qword_1ED6410D0, OS_LOG_TYPE_DEFAULT))
  {
    v45 = IPC::errorAsString();
    *buf = 136446466;
    *&buf[4] = "RemoteDisplayListRecorder_FillRect";
    *&buf[12] = 2082;
    *&buf[14] = v45;
    _os_log_impl(&dword_19D52D000, v44, OS_LOG_TYPE_DEFAULT, "RemoteDisplayListRecorderProxy::send - failed, name:%{public}s, error:%{public}s", buf, 0x16u);
  }

  WebKit::RemoteDisplayListRecorderProxy::didBecomeUnresponsive(*(a1 + 3520));
LABEL_19:
  if (atomic_fetch_add(v8, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v8);
    IPC::StreamClientConnection::operator delete(v8);
  }
}

void WebKit::RemoteDisplayListRecorderProxy::fillRect(WebKit::RemoteDisplayListRecorderProxy *this, const WebCore::FloatRect *a2, const WebCore::Color *a3)
{
  v48 = *MEMORY[0x1E69E9840];
  v6 = WebKit::RemoteDisplayListRecorderProxy::appendStateChangeItemIfNecessary(this, a2);
  v42 = a2;
  v43 = a3;
  v8 = *(this + 439);
  if (!v8)
  {
    goto LABEL_54;
  }

  atomic_fetch_add(v8, 1u);
  while (1)
  {
    if ((*(this + 3584) & 1) == 0)
    {
      v6 = *(this + 443);
      if (v6)
      {
        WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteImageBufferProxy>(v6, *(this + 442), buf);
        v6 = *buf;
        if (*buf)
        {
          v6 = WebKit::RemoteImageBufferProxy::backingStoreWillChange(*buf, v39);
          v41 = *buf;
          *buf = 0;
          if (v41)
          {
            v6 = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::ImageBuffer,(WTF::DestructionThread)0>::deref((v41 + 8), v40);
          }
        }
      }

      *(this + 3584) = 1;
    }

    v9 = *(this + 438);
    v10 = *(v8 + 128);
    v11 = INFINITY;
    if (fabs(v10) != INFINITY)
    {
      WTF::ApproximateTime::now(v6);
      v11 = v10 + v12;
    }

    if (*(v8 + 64) != v9)
    {
      IPC::StreamClientConnectionBuffer::tryAcquire(v8 + 72, buf, v11);
      if (buf[16] != 1)
      {
        goto LABEL_45;
      }

      v20 = *&buf[8];
      if (*&buf[8] <= 1uLL)
      {
LABEL_66:
        __break(0xC471u);
        JUMPOUT(0x19E1BACCCLL);
      }

      v21 = *buf;
      **buf = 3198;
      v22 = v21 + 2;
      if (v20 - 2 < (-v22 & 7 | 8uLL))
      {
        goto LABEL_45;
      }

      v23 = -v22 & 7;
      *(v22 + v23) = v9;
      v24 = 6;
      if (v23 > 6)
      {
        v24 = v23;
      }

      v25 = v24 + 10;
      v26 = (*(v8 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
      v27 = *(v8 + 72);
      if (v26 + 16 >= v27)
      {
        v26 = 0;
      }

      v28 = v25 + v26;
      if (v27 <= v28)
      {
        v28 = 0;
      }

      *(v8 + 88) = v28;
      v29 = *(v8 + 80);
      if (*(v29 + 8) <= 0xFFuLL)
      {
        goto LABEL_53;
      }

      v30 = atomic_exchange((*(v29 + 16) + 128), v28);
      v31 = *(v8 + 124);
      if (v30 == 0x80000000 || v31 != 0)
      {
        v33 = v31 + 1;
        *(v8 + 124) = v33;
        if (v33 >= *(v8 + 120))
        {
          if (*(v8 + 112) == 1)
          {
            MEMORY[0x19EB16320](*(v8 + 100));
          }

          *(v8 + 124) = 0;
        }
      }

      *(v8 + 64) = v9;
    }

    IPC::StreamClientConnectionBuffer::tryAcquire(v8 + 72, &v44, v11);
    if ((v46 & 1) == 0)
    {
      goto LABEL_45;
    }

    v13 = v44;
    v14 = v45;
    *&buf[16] = v45;
    if (v45 <= 1)
    {
      goto LABEL_66;
    }

    *v44 = 1092;
    *buf = v13 + 1;
    *&buf[8] = v14 - 2;
    IPC::ArgumentCoder<WebCore::PathEllipseInRect,void>::encode(buf, v42);
    IPC::ArgumentCoder<WebCore::Color,void>::encode(buf, v43);
    if (!*buf)
    {
      break;
    }

    v15 = *&buf[16] - *&buf[8];
    if (*&buf[16] - *&buf[8] <= 0x10uLL)
    {
      v15 = 16;
    }

    v16 = (*(v8 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
    v17 = *(v8 + 72);
    if (v16 + 16 >= v17)
    {
      v16 = 0;
    }

    v18 = v16 + v15;
    if (v17 <= v18)
    {
      v18 = 0;
    }

    *(v8 + 88) = v18;
    v19 = *(v8 + 80);
    if (*(v19 + 8) > 0xFFuLL)
    {
      if (atomic_exchange((*(v19 + 16) + 128), v18) == 0x80000000 || *(v8 + 124))
      {
        if (*(v8 + 112) == 1)
        {
          MEMORY[0x19EB16320](*(v8 + 100));
        }

        *(v8 + 124) = 0;
      }

      goto LABEL_19;
    }

LABEL_53:
    __break(1u);
LABEL_54:
    v36 = *(this + 440);
    if (!v36)
    {
      return;
    }

    v37 = *(v36 + 8);
    if (!v37)
    {
      return;
    }

    ++*(v37 + 5);
    v38 = WebKit::RemoteRenderingBackendProxy::connection(v37, v7, buf);
    v8 = *buf;
    if (*(v37 + 5) == 1)
    {
      (*(*v37 + 24))(v37, v38);
    }

    else
    {
      --*(v37 + 5);
    }

    if (!v8)
    {
      return;
    }

    v6 = WTF::RefPtr<IPC::StreamClientConnection,WTF::RawPtrTraits<IPC::StreamClientConnection>,WTF::DefaultRefDerefTraits<IPC::StreamClientConnection>>::operator=(this + 439, v8);
  }

  if ((v46 & 1) == 0)
  {
    goto LABEL_53;
  }

  IPC::StreamClientConnection::sendProcessOutOfStreamMessage(v8, v44, v45);
  if (IPC::Connection::send<Messages::RemoteDisplayListRecorder::FillRectWithColor>(*(v8 + 8), &v42, v9))
  {
LABEL_45:
    v34 = qword_1ED6410D0;
    if (os_log_type_enabled(qword_1ED6410D0, OS_LOG_TYPE_DEFAULT))
    {
      v35 = IPC::errorAsString();
      *buf = 136446466;
      *&buf[4] = "RemoteDisplayListRecorder_FillRectWithColor";
      *&buf[12] = 2082;
      *&buf[14] = v35;
      _os_log_impl(&dword_19D52D000, v34, OS_LOG_TYPE_DEFAULT, "RemoteDisplayListRecorderProxy::send - failed, name:%{public}s, error:%{public}s", buf, 0x16u);
    }

    WebKit::RemoteDisplayListRecorderProxy::didBecomeUnresponsive(*(this + 440));
  }

LABEL_19:
  if (atomic_fetch_add(v8, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v8);
    IPC::StreamClientConnection::operator delete(v8);
  }
}

atomic_uchar ***WebKit::RemoteDisplayListRecorderProxy::fillRect(uint64_t a1, __int128 *a2, uint64_t a3)
{
  v48 = *MEMORY[0x1E69E9840];
  v6 = WebKit::RemoteDisplayListRecorderProxy::appendStateChangeItemIfNecessary(a1, a2);
  while (1)
  {
    v8 = *(a3 + 8);
    if ((v8 & 1) == 0)
    {
      break;
    }

    v9 = *(a3 + 8);
    atomic_compare_exchange_strong_explicit((a3 + 8), &v9, v8 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v9 == v8)
    {
      goto LABEL_4;
    }
  }

  v6 = WTF::ThreadSafeWeakPtrControlBlock::strongRef(*(a3 + 8));
LABEL_4:
  v41 = a3;
  v42 = a2;
  v43 = &v41;
  v10 = *(a1 + 3512);
  if (!v10)
  {
    goto LABEL_48;
  }

  atomic_fetch_add(v10, 1u);
  while (1)
  {
    if ((*(a1 + 3584) & 1) == 0)
    {
      v6 = *(a1 + 3544);
      if (v6)
      {
        WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteImageBufferProxy>(v6, *(a1 + 3536), buf);
        v6 = *buf;
        if (*buf)
        {
          v6 = WebKit::RemoteImageBufferProxy::backingStoreWillChange(*buf, v38);
          v40 = *buf;
          *buf = 0;
          if (v40)
          {
            v6 = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::ImageBuffer,(WTF::DestructionThread)0>::deref((v40 + 8), v39);
          }
        }
      }

      *(a1 + 3584) = 1;
    }

    v11 = *(a1 + 3504);
    v12 = *(v10 + 128);
    v13 = INFINITY;
    if (fabs(v12) != INFINITY)
    {
      WTF::ApproximateTime::now(v6);
      v13 = v12 + v14;
    }

    if (*(v10 + 64) != v11)
    {
      IPC::StreamClientConnectionBuffer::tryAcquire(v10 + 72, buf, v13);
      if (buf[16] != 1)
      {
        goto LABEL_41;
      }

      v23 = *&buf[8];
      if (*&buf[8] <= 1uLL)
      {
LABEL_60:
        __break(0xC471u);
        JUMPOUT(0x19E1BB18CLL);
      }

      v24 = *buf;
      **buf = 3198;
      v25 = v24 + 2;
      if (v23 - 2 < (-v25 & 7 | 8uLL))
      {
        goto LABEL_41;
      }

      v26 = -v25 & 7;
      *(v25 + v26) = v11;
      v27 = 6;
      if (v26 > 6)
      {
        v27 = v26;
      }

      v28 = v27 + 10;
      v29 = (*(v10 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
      v30 = *(v10 + 72);
      if (v29 + 16 >= v30)
      {
        v29 = 0;
      }

      v31 = v28 + v29;
      if (v30 <= v31)
      {
        v31 = 0;
      }

      *(v10 + 88) = v31;
      v32 = *(v10 + 80);
      if (*(v32 + 8) <= 0xFFuLL)
      {
        goto LABEL_47;
      }

      IPC::StreamClientConnection::wakeUpServerBatched(v10, atomic_exchange((*(v32 + 16) + 128), v31) == 0x80000000);
      *(v10 + 64) = v11;
    }

    IPC::StreamClientConnectionBuffer::tryAcquire(v10 + 72, &v44, v13);
    if ((v46 & 1) == 0)
    {
      goto LABEL_41;
    }

    v15 = v44;
    v16 = v45;
    *&buf[16] = v45;
    if (v45 <= 1)
    {
      goto LABEL_60;
    }

    *v44 = 1093;
    *buf = v15 + 1;
    *&buf[8] = v16 - 2;
    IPC::ArgumentCoder<WebCore::PathEllipseInRect,void>::encode(buf, v42);
    IPC::ArgumentCoder<WebCore::Gradient,void>::encode(buf, *v43);
    if (!*buf)
    {
      break;
    }

    v17 = *&buf[16] - *&buf[8];
    if (*&buf[16] - *&buf[8] <= 0x10uLL)
    {
      v17 = 16;
    }

    v18 = (*(v10 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
    v19 = *(v10 + 72);
    if (v18 + 16 >= v19)
    {
      v18 = 0;
    }

    v20 = v18 + v17;
    if (v19 <= v20)
    {
      v20 = 0;
    }

    *(v10 + 88) = v20;
    v21 = *(v10 + 80);
    if (*(v21 + 8) > 0xFFuLL)
    {
      if (atomic_exchange((*(v21 + 16) + 128), v20) == 0x80000000 || *(v10 + 124))
      {
        if (*(v10 + 112) == 1)
        {
          MEMORY[0x19EB16320](*(v10 + 100));
        }

        *(v10 + 124) = 0;
      }

      goto LABEL_22;
    }

LABEL_47:
    __break(1u);
LABEL_48:
    v35 = *(a1 + 3520);
    if (!v35)
    {
      return WTF::Ref<WebCore::Gradient,WTF::RawPtrTraits<WebCore::Gradient>,WTF::DefaultRefDerefTraits<WebCore::Gradient>>::~Ref(&v41, v7);
    }

    v36 = *(v35 + 8);
    if (!v36)
    {
      return WTF::Ref<WebCore::Gradient,WTF::RawPtrTraits<WebCore::Gradient>,WTF::DefaultRefDerefTraits<WebCore::Gradient>>::~Ref(&v41, v7);
    }

    ++*(v36 + 5);
    v37 = WebKit::RemoteRenderingBackendProxy::connection(v36, v7, buf);
    v10 = *buf;
    if (*(v36 + 5) == 1)
    {
      (*(*v36 + 24))(v36, v37);
    }

    else
    {
      --*(v36 + 5);
    }

    if (!v10)
    {
      return WTF::Ref<WebCore::Gradient,WTF::RawPtrTraits<WebCore::Gradient>,WTF::DefaultRefDerefTraits<WebCore::Gradient>>::~Ref(&v41, v7);
    }

    v6 = WTF::RefPtr<IPC::StreamClientConnection,WTF::RawPtrTraits<IPC::StreamClientConnection>,WTF::DefaultRefDerefTraits<IPC::StreamClientConnection>>::operator=((a1 + 3512), v10);
  }

  if ((v46 & 1) == 0)
  {
    goto LABEL_47;
  }

  IPC::StreamClientConnection::sendProcessOutOfStreamMessage(v10, v44, v45);
  if (IPC::Connection::send<Messages::RemoteDisplayListRecorder::FillRectWithGradient>(*(v10 + 8), &v42, v11))
  {
LABEL_41:
    v33 = qword_1ED6410D0;
    if (os_log_type_enabled(qword_1ED6410D0, OS_LOG_TYPE_DEFAULT))
    {
      v34 = IPC::errorAsString();
      *buf = 136446466;
      *&buf[4] = "RemoteDisplayListRecorder_FillRectWithGradient";
      *&buf[12] = 2082;
      *&buf[14] = v34;
      _os_log_impl(&dword_19D52D000, v33, OS_LOG_TYPE_DEFAULT, "RemoteDisplayListRecorderProxy::send - failed, name:%{public}s, error:%{public}s", buf, 0x16u);
    }

    WebKit::RemoteDisplayListRecorderProxy::didBecomeUnresponsive(*(a1 + 3520));
  }

LABEL_22:
  if (atomic_fetch_add(v10, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v10);
    IPC::StreamClientConnection::operator delete(v10);
  }

  return WTF::Ref<WebCore::Gradient,WTF::RawPtrTraits<WebCore::Gradient>,WTF::DefaultRefDerefTraits<WebCore::Gradient>>::~Ref(&v41, v7);
}

atomic_uchar ***WebKit::RemoteDisplayListRecorderProxy::fillRect(uint64_t a1, __int128 *a2, uint64_t a3, __int128 *a4, char a5)
{
  v74 = *MEMORY[0x1E69E9840];
  v10 = WebKit::RemoteDisplayListRecorderProxy::appendStateChangeItemIfNecessary(a1, a2);
  while (1)
  {
    v12 = *(a3 + 8);
    if ((v12 & 1) == 0)
    {
      break;
    }

    v13 = *(a3 + 8);
    atomic_compare_exchange_strong_explicit((a3 + 8), &v13, v12 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v13 == v12)
    {
      goto LABEL_4;
    }
  }

  v10 = WTF::ThreadSafeWeakPtrControlBlock::strongRef(*(a3 + 8));
LABEL_4:
  v68 = a3;
  v14 = *(a1 + 3512);
  if (!v14)
  {
    goto LABEL_63;
  }

  atomic_fetch_add(v14, 1u);
  while (1)
  {
    if ((*(a1 + 3584) & 1) == 0)
    {
      v10 = *(a1 + 3544);
      if (v10)
      {
        WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteImageBufferProxy>(v10, *(a1 + 3536), buf);
        v10 = *buf;
        if (*buf)
        {
          v10 = WebKit::RemoteImageBufferProxy::ensureBackend(*buf, v65);
          if (v10)
          {
            v10 = (*(*v10 + 168))(v10);
          }

          v67 = *buf;
          *buf = 0;
          if (v67)
          {
            v10 = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::ImageBuffer,(WTF::DestructionThread)0>::deref((v67 + 8), v66);
          }
        }
      }

      *(a1 + 3584) = 1;
    }

    v15 = *(a1 + 3504);
    v16 = *(v14 + 128);
    v17 = INFINITY;
    if (fabs(v16) != INFINITY)
    {
      WTF::ApproximateTime::now(v10);
      v17 = v16 + v18;
    }

    if (*(v14 + 64) == v15)
    {
      break;
    }

    IPC::StreamClientConnectionBuffer::tryAcquire(v14 + 72, buf, v17);
    if (buf[16] != 1)
    {
      goto LABEL_45;
    }

    v34 = *&buf[8];
    if (*&buf[8] <= 1uLL)
    {
      __break(0xC471u);
      JUMPOUT(0x19E1BB7FCLL);
    }

    v35 = *buf;
    **buf = 3198;
    v36 = v35 + 2;
    if (v34 - 2 < (-v36 & 7 | 8uLL))
    {
      goto LABEL_45;
    }

    v37 = -v36 & 7;
    *(v36 + v37) = v15;
    v38 = 6;
    if (v37 > 6)
    {
      v38 = v37;
    }

    v39 = v38 + 10;
    v40 = (*(v14 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
    v41 = *(v14 + 72);
    if (v40 + 16 >= v41)
    {
      v40 = 0;
    }

    v42 = v39 + v40;
    if (v41 <= v42)
    {
      v42 = 0;
    }

    *(v14 + 88) = v42;
    v43 = *(v14 + 80);
    if (*(v43 + 8) > 0xFFuLL)
    {
      v44 = atomic_exchange((*(v43 + 16) + 128), v42);
      v45 = *(v14 + 124);
      if (v44 == 0x80000000 || v45 != 0)
      {
        v47 = v45 + 1;
        *(v14 + 124) = v47;
        if (v47 >= *(v14 + 120))
        {
          if (*(v14 + 112) == 1)
          {
            MEMORY[0x19EB16320](*(v14 + 100));
          }

          *(v14 + 124) = 0;
        }
      }

      *(v14 + 64) = v15;
      break;
    }

LABEL_62:
    __break(1u);
LABEL_63:
    v60 = *(a1 + 3520);
    if (!v60)
    {
      return WTF::Ref<WebCore::Gradient,WTF::RawPtrTraits<WebCore::Gradient>,WTF::DefaultRefDerefTraits<WebCore::Gradient>>::~Ref(&v68, v11);
    }

    v61 = *(v60 + 8);
    if (!v61)
    {
      return WTF::Ref<WebCore::Gradient,WTF::RawPtrTraits<WebCore::Gradient>,WTF::DefaultRefDerefTraits<WebCore::Gradient>>::~Ref(&v68, v11);
    }

    ++*(v61 + 5);
    v62 = WebKit::RemoteRenderingBackendProxy::connection(v61, v11, buf);
    v14 = *buf;
    if (*(v61 + 5) == 1)
    {
      (*(*v61 + 24))(v61, v62);
      if (!v14)
      {
        return WTF::Ref<WebCore::Gradient,WTF::RawPtrTraits<WebCore::Gradient>,WTF::DefaultRefDerefTraits<WebCore::Gradient>>::~Ref(&v68, v11);
      }
    }

    else
    {
      --*(v61 + 5);
      if (!v14)
      {
        return WTF::Ref<WebCore::Gradient,WTF::RawPtrTraits<WebCore::Gradient>,WTF::DefaultRefDerefTraits<WebCore::Gradient>>::~Ref(&v68, v11);
      }
    }

    atomic_fetch_add(v14, 1u);
    v10 = *(a1 + 3512);
    *(a1 + 3512) = v14;
    if (v10 && atomic_fetch_add(v10, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v10);
      IPC::StreamClientConnection::operator delete(v10);
    }
  }

  IPC::StreamClientConnectionBuffer::tryAcquire(v14 + 72, &v69, v17);
  if ((v71 & 1) == 0)
  {
    goto LABEL_45;
  }

  v19 = v69;
  v20 = v70;
  *&buf[16] = v70;
  if (v70 <= 1)
  {
LABEL_86:
    __break(0xC471u);
    JUMPOUT(0x19E1BB7DCLL);
  }

  *v69 = 1094;
  *buf = v19 + 1;
  *&buf[8] = v20 - 2;
  IPC::ArgumentCoder<WebCore::PathEllipseInRect,void>::encode(buf, a2);
  IPC::ArgumentCoder<WebCore::Gradient,void>::encode(buf, v68);
  v21 = *buf;
  v22 = *&buf[8];
  v23 = -*buf & 7 | 0x30;
  if (*&buf[8] >= v23)
  {
    v24 = (*buf + (-*buf & 7));
    v25 = a4[2];
    v26 = *a4;
    v24[1] = a4[1];
    v24[2] = v25;
    *v24 = v26;
    v27 = (v21 + v23);
    *buf = v27;
    *&buf[8] = v22 - v23;
    if (v22 != v23)
    {
      *v27 = a5;
      v28 = *&buf[8];
      if (*&buf[8])
      {
        ++*buf;
        --*&buf[8];
        v29 = *&buf[16] - (v28 - 1);
        if (v29 <= 0x10)
        {
          v29 = 16;
        }

        v30 = (*(v14 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
        v31 = *(v14 + 72);
        if (v30 + 16 >= v31)
        {
          v30 = 0;
        }

        v32 = v30 + v29;
        if (v31 <= v32)
        {
          v32 = 0;
        }

        *(v14 + 88) = v32;
        v33 = *(v14 + 80);
        if (*(v33 + 8) > 0xFFuLL)
        {
          if (atomic_exchange((*(v33 + 16) + 128), v32) == 0x80000000 || *(v14 + 124))
          {
            if (*(v14 + 112) == 1)
            {
              MEMORY[0x19EB16320](*(v14 + 100));
            }

            *(v14 + 124) = 0;
          }

          goto LABEL_48;
        }
      }

      goto LABEL_62;
    }
  }

  if ((v71 & 1) == 0)
  {
    goto LABEL_62;
  }

  if (v70 <= 1)
  {
    goto LABEL_86;
  }

  *v69 = 3197;
  v51 = (*(v14 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
  v52 = *(v14 + 72);
  if (v51 + 16 >= v52)
  {
    v51 = 0;
  }

  v53 = v51 + 16;
  v54 = v52 <= v53 ? 0 : v53;
  *(v14 + 88) = v54;
  v55 = *(v14 + 80);
  if (*(v55 + 8) <= 0xFFuLL)
  {
    goto LABEL_62;
  }

  atomic_exchange((*(v55 + 16) + 128), v54);
  *(v14 + 124) = 0;
  v56 = *(v14 + 8);
  v57 = IPC::Encoder::operator new(0x238, v11);
  *v57 = 1094;
  *(v57 + 2) = 0;
  *(v57 + 3) = 0;
  *(v57 + 1) = v15;
  *(v57 + 68) = 0;
  *(v57 + 70) = 0;
  *(v57 + 69) = 0;
  IPC::Encoder::encodeHeader(v57);
  *buf = v57;
  IPC::ArgumentCoder<WebCore::FloatRect,void>::encode(v57, a2);
  IPC::ArgumentCoder<WebCore::Gradient,void>::encode(v57, v68);
  IPC::ArgumentCoder<std::span<double const,6ul>,void>::encode<IPC::Encoder>(v57, a4);
  v72 = a5;
  IPC::Encoder::operator<<<BOOL>(v57, &v72);
  v58 = IPC::Connection::sendMessageImpl(v56, buf, 1, 0);
  v59 = *buf;
  *buf = 0;
  if (v59)
  {
    IPC::Encoder::~Encoder(v59, v11);
    bmalloc::api::tzoneFree(v63, v64);
    if (!v58)
    {
      goto LABEL_48;
    }
  }

  else if (!v58)
  {
    goto LABEL_48;
  }

LABEL_45:
  v48 = qword_1ED6410D0;
  if (os_log_type_enabled(qword_1ED6410D0, OS_LOG_TYPE_DEFAULT))
  {
    v49 = IPC::errorAsString();
    *buf = 136446466;
    *&buf[4] = "RemoteDisplayListRecorder_FillRectWithGradientAndSpaceTransform";
    *&buf[12] = 2082;
    *&buf[14] = v49;
    _os_log_impl(&dword_19D52D000, v48, OS_LOG_TYPE_DEFAULT, "RemoteDisplayListRecorderProxy::send - failed, name:%{public}s, error:%{public}s", buf, 0x16u);
  }

  WebKit::RemoteDisplayListRecorderProxy::didBecomeUnresponsive(*(a1 + 3520));
LABEL_48:
  if (atomic_fetch_add(v14, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v14);
    IPC::StreamClientConnection::operator delete(v14);
  }

  return WTF::Ref<WebCore::Gradient,WTF::RawPtrTraits<WebCore::Gradient>,WTF::DefaultRefDerefTraits<WebCore::Gradient>>::~Ref(&v68, v11);
}

void WebKit::RemoteDisplayListRecorderProxy::fillRect(uint64_t a1, __int128 *a2, WebCore::Color *a3, char a4, char a5)
{
  v61 = *MEMORY[0x1E69E9840];
  v10 = WebKit::RemoteDisplayListRecorderProxy::appendStateChangeItemIfNecessary(a1, a2);
  v53 = a2;
  v54 = a3;
  v55 = a4;
  v56 = a5;
  v12 = *(a1 + 3512);
  if (!v12)
  {
    goto LABEL_59;
  }

  atomic_fetch_add(v12, 1u);
  while (1)
  {
    if ((*(a1 + 3584) & 1) == 0)
    {
      v10 = *(a1 + 3544);
      if (v10)
      {
        WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteImageBufferProxy>(v10, *(a1 + 3536), buf);
        v10 = *buf;
        if (*buf)
        {
          v10 = WebKit::RemoteImageBufferProxy::backingStoreWillChange(*buf, v50);
          v52 = *buf;
          *buf = 0;
          if (v52)
          {
            v10 = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::ImageBuffer,(WTF::DestructionThread)0>::deref((v52 + 8), v51);
          }
        }
      }

      *(a1 + 3584) = 1;
    }

    v13 = *(a1 + 3504);
    v14 = *(v12 + 128);
    v15 = INFINITY;
    if (fabs(v14) != INFINITY)
    {
      WTF::ApproximateTime::now(v10);
      v15 = v14 + v16;
    }

    if (*(v12 + 64) == v13)
    {
      break;
    }

    IPC::StreamClientConnectionBuffer::tryAcquire(v12 + 72, buf, v15);
    if (buf[16] != 1)
    {
      goto LABEL_65;
    }

    v26 = *&buf[8];
    if (*&buf[8] <= 1uLL)
    {
      __break(0xC471u);
      JUMPOUT(0x19E1BBD60);
    }

    v27 = *buf;
    **buf = 3198;
    v28 = v27 + 2;
    if (v26 - 2 < (-v28 & 7 | 8uLL))
    {
      goto LABEL_65;
    }

    v29 = -v28 & 7;
    *(v28 + v29) = v13;
    v30 = 6;
    if (v29 > 6)
    {
      v30 = v29;
    }

    v31 = v30 + 10;
    v32 = (*(v12 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
    v33 = *(v12 + 72);
    if (v32 + 16 >= v33)
    {
      v32 = 0;
    }

    v34 = v31 + v32;
    if (v33 <= v34)
    {
      v34 = 0;
    }

    *(v12 + 88) = v34;
    v35 = *(v12 + 80);
    if (*(v35 + 8) > 0xFFuLL)
    {
      v36 = atomic_exchange((*(v35 + 16) + 128), v34);
      v37 = *(v12 + 124);
      v38 = v36 != 0x80000000 && v37 == 0;
      if (!v38)
      {
        v39 = v37 + 1;
        *(v12 + 124) = v39;
        if (v39 >= *(v12 + 120))
        {
          if (*(v12 + 112) == 1)
          {
            MEMORY[0x19EB16320](*(v12 + 100));
          }

          *(v12 + 124) = 0;
        }
      }

      *(v12 + 64) = v13;
      break;
    }

LABEL_58:
    __break(1u);
LABEL_59:
    v45 = *(a1 + 3520);
    if (!v45)
    {
      return;
    }

    v46 = *(v45 + 8);
    if (!v46)
    {
      return;
    }

    ++*(v46 + 5);
    v47 = WebKit::RemoteRenderingBackendProxy::connection(v46, v11, buf);
    v12 = *buf;
    if (*(v46 + 5) == 1)
    {
      (*(*v46 + 24))(v46, v47);
    }

    else
    {
      --*(v46 + 5);
    }

    if (!v12)
    {
      return;
    }

    v10 = WTF::RefPtr<IPC::StreamClientConnection,WTF::RawPtrTraits<IPC::StreamClientConnection>,WTF::DefaultRefDerefTraits<IPC::StreamClientConnection>>::operator=((a1 + 3512), v12);
  }

  IPC::StreamClientConnectionBuffer::tryAcquire(v12 + 72, &v57, v15);
  if ((v59 & 1) == 0)
  {
    goto LABEL_65;
  }

  v17 = v57;
  v18 = v58;
  *&buf[16] = v58;
  if (v58 <= 1)
  {
LABEL_77:
    __break(0xC471u);
    JUMPOUT(0x19E1BBD10);
  }

  *v57 = 1085;
  *buf = v17 + 1;
  *&buf[8] = v18 - 2;
  IPC::ArgumentCoder<WebCore::PathEllipseInRect,void>::encode(buf, v53);
  IPC::ArgumentCoder<WebCore::Color,void>::encode(buf, v54);
  if (*&buf[8])
  {
    **buf = v55;
    if (!*&buf[8])
    {
      goto LABEL_58;
    }

    v38 = *&buf[8] == 1;
    v19 = ++*buf;
    --*&buf[8];
    if (!v38)
    {
      *v19 = v56;
      v20 = *&buf[8];
      if (*&buf[8])
      {
        ++*buf;
        --*&buf[8];
        v21 = *&buf[16] - (v20 - 1);
        if (v21 <= 0x10)
        {
          v21 = 16;
        }

        v22 = (*(v12 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
        v23 = *(v12 + 72);
        if (v22 + 16 >= v23)
        {
          v22 = 0;
        }

        v24 = v22 + v21;
        if (v23 <= v24)
        {
          v24 = 0;
        }

        *(v12 + 88) = v24;
        v25 = *(v12 + 80);
        if (*(v25 + 8) > 0xFFuLL)
        {
          if (atomic_exchange((*(v25 + 16) + 128), v24) == 0x80000000 || *(v12 + 124))
          {
            if (*(v12 + 112) == 1)
            {
              MEMORY[0x19EB16320](*(v12 + 100));
            }

            *(v12 + 124) = 0;
          }

          goto LABEL_22;
        }
      }

      goto LABEL_58;
    }
  }

  if ((v59 & 1) == 0)
  {
    goto LABEL_58;
  }

  if (v58 <= 1)
  {
    goto LABEL_77;
  }

  *v57 = 3197;
  v40 = (*(v12 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
  v41 = *(v12 + 72);
  if (v40 + 16 >= v41)
  {
    v40 = 0;
  }

  v42 = v40 + 16;
  v43 = v41 <= v42 ? 0 : v42;
  *(v12 + 88) = v43;
  v44 = *(v12 + 80);
  if (*(v44 + 8) <= 0xFFuLL)
  {
    goto LABEL_58;
  }

  atomic_exchange((*(v44 + 16) + 128), v43);
  *(v12 + 124) = 0;
  if (!IPC::Connection::send<Messages::RemoteDisplayListRecorder::FillCompositedRect>(*(v12 + 8), &v53, v13))
  {
    goto LABEL_22;
  }

LABEL_65:
  v48 = qword_1ED6410D0;
  if (os_log_type_enabled(qword_1ED6410D0, OS_LOG_TYPE_DEFAULT))
  {
    v49 = IPC::errorAsString();
    *buf = 136446466;
    *&buf[4] = "RemoteDisplayListRecorder_FillCompositedRect";
    *&buf[12] = 2082;
    *&buf[14] = v49;
    _os_log_impl(&dword_19D52D000, v48, OS_LOG_TYPE_DEFAULT, "RemoteDisplayListRecorderProxy::send - failed, name:%{public}s, error:%{public}s", buf, 0x16u);
  }

  WebKit::RemoteDisplayListRecorderProxy::didBecomeUnresponsive(*(a1 + 3520));
LABEL_22:
  if (atomic_fetch_add(v12, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v12);
    IPC::StreamClientConnection::operator delete(v12);
  }
}

void WebKit::RemoteDisplayListRecorderProxy::fillRoundedRect(uint64_t a1, __int128 *a2, WebCore::Color *a3, char a4)
{
  v61 = *MEMORY[0x1E69E9840];
  v8 = WebKit::RemoteDisplayListRecorderProxy::appendStateChangeItemIfNecessary(a1, a2);
  v10 = *(a1 + 3512);
  if (!v10)
  {
    goto LABEL_59;
  }

  atomic_fetch_add(v10, 1u);
  while (1)
  {
    if ((*(a1 + 3584) & 1) == 0)
    {
      v8 = *(a1 + 3544);
      if (v8)
      {
        WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteImageBufferProxy>(v8, *(a1 + 3536), buf);
        v8 = *buf;
        if (*buf)
        {
          v8 = WebKit::RemoteImageBufferProxy::backingStoreWillChange(*buf, v54);
          v56 = *buf;
          *buf = 0;
          if (v56)
          {
            v8 = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::ImageBuffer,(WTF::DestructionThread)0>::deref((v56 + 8), v55);
          }
        }
      }

      *(a1 + 3584) = 1;
    }

    v11 = *(a1 + 3504);
    v12 = *(v10 + 128);
    v13 = INFINITY;
    if (fabs(v12) != INFINITY)
    {
      WTF::ApproximateTime::now(v8);
      v13 = v12 + v14;
    }

    if (*(v10 + 64) == v11)
    {
      break;
    }

    IPC::StreamClientConnectionBuffer::tryAcquire(v10 + 72, buf, v13);
    if (buf[16] != 1)
    {
      goto LABEL_65;
    }

    v23 = *&buf[8];
    if (*&buf[8] <= 1uLL)
    {
      __break(0xC471u);
      JUMPOUT(0x19E1BC2D4);
    }

    v24 = *buf;
    **buf = 3198;
    v25 = v24 + 2;
    if (v23 - 2 < (-v25 & 7 | 8uLL))
    {
      goto LABEL_65;
    }

    v26 = -v25 & 7;
    *(v25 + v26) = v11;
    v27 = 6;
    if (v26 > 6)
    {
      v27 = v26;
    }

    v28 = v27 + 10;
    v29 = (*(v10 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
    v30 = *(v10 + 72);
    if (v29 + 16 >= v30)
    {
      v29 = 0;
    }

    v31 = v28 + v29;
    if (v30 <= v31)
    {
      v31 = 0;
    }

    *(v10 + 88) = v31;
    v32 = *(v10 + 80);
    if (*(v32 + 8) > 0xFFuLL)
    {
      v33 = atomic_exchange((*(v32 + 16) + 128), v31);
      v34 = *(v10 + 124);
      if (v33 == 0x80000000 || v34 != 0)
      {
        v36 = v34 + 1;
        *(v10 + 124) = v36;
        if (v36 >= *(v10 + 120))
        {
          if (*(v10 + 112) == 1)
          {
            MEMORY[0x19EB16320](*(v10 + 100));
          }

          *(v10 + 124) = 0;
        }
      }

      *(v10 + 64) = v11;
      break;
    }

LABEL_58:
    __break(1u);
LABEL_59:
    v47 = *(a1 + 3520);
    if (!v47)
    {
      return;
    }

    v48 = *(v47 + 8);
    if (!v48)
    {
      return;
    }

    ++*(v48 + 5);
    v49 = WebKit::RemoteRenderingBackendProxy::connection(v48, v9, buf);
    v10 = *buf;
    if (*(v48 + 5) == 1)
    {
      (*(*v48 + 24))(v48, v49);
    }

    else
    {
      --*(v48 + 5);
    }

    if (!v10)
    {
      return;
    }

    v8 = WTF::RefPtr<IPC::StreamClientConnection,WTF::RawPtrTraits<IPC::StreamClientConnection>,WTF::DefaultRefDerefTraits<IPC::StreamClientConnection>>::operator=((a1 + 3512), v10);
  }

  IPC::StreamClientConnectionBuffer::tryAcquire(v10 + 72, &v57, v13);
  if ((v59 & 1) == 0)
  {
    goto LABEL_65;
  }

  v15 = v57;
  v16 = v58;
  *&buf[16] = v58;
  if (v58 <= 1)
  {
LABEL_77:
    __break(0xC471u);
    JUMPOUT(0x19E1BC2B4);
  }

  *v57 = 1096;
  *buf = v15 + 1;
  *&buf[8] = v16 - 2;
  IPC::ArgumentCoder<WebCore::FloatRoundedRect,void>::encode(buf, a2);
  IPC::ArgumentCoder<WebCore::Color,void>::encode(buf, a3);
  if (*&buf[8])
  {
    **buf = a4;
    v17 = *&buf[8];
    if (*&buf[8])
    {
      ++*buf;
      --*&buf[8];
      v18 = *&buf[16] - (v17 - 1);
      if (v18 <= 0x10)
      {
        v18 = 16;
      }

      v19 = (*(v10 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
      v20 = *(v10 + 72);
      if (v19 + 16 >= v20)
      {
        v19 = 0;
      }

      v21 = v19 + v18;
      if (v20 <= v21)
      {
        v21 = 0;
      }

      *(v10 + 88) = v21;
      v22 = *(v10 + 80);
      if (*(v22 + 8) > 0xFFuLL)
      {
        if (atomic_exchange((*(v22 + 16) + 128), v21) == 0x80000000 || *(v10 + 124))
        {
          if (*(v10 + 112) == 1)
          {
            MEMORY[0x19EB16320](*(v10 + 100));
          }

          *(v10 + 124) = 0;
        }

        goto LABEL_20;
      }
    }

    goto LABEL_58;
  }

  if ((v59 & 1) == 0)
  {
    goto LABEL_58;
  }

  if (v58 <= 1)
  {
    goto LABEL_77;
  }

  *v57 = 3197;
  v37 = (*(v10 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
  v38 = *(v10 + 72);
  if (v37 + 16 >= v38)
  {
    v37 = 0;
  }

  v39 = v37 + 16;
  v40 = v38 <= v39 ? 0 : v39;
  *(v10 + 88) = v40;
  v41 = *(v10 + 80);
  if (*(v41 + 8) <= 0xFFuLL)
  {
    goto LABEL_58;
  }

  atomic_exchange((*(v41 + 16) + 128), v40);
  *(v10 + 124) = 0;
  v42 = *(v10 + 8);
  v43 = IPC::Encoder::operator new(0x238, v9);
  *v43 = 1096;
  *(v43 + 2) = 0;
  *(v43 + 3) = 0;
  *(v43 + 1) = v11;
  *(v43 + 68) = 0;
  *(v43 + 70) = 0;
  *(v43 + 69) = 0;
  IPC::Encoder::encodeHeader(v43);
  *buf = v43;
  IPC::ArgumentCoder<WebCore::FloatRoundedRect,void>::encode(v43, a2);
  IPC::ArgumentCoder<WebCore::Color,void>::encode(v43, a3);
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(v43, a4);
  v45 = IPC::Connection::sendMessageImpl(v42, buf, 1, 0);
  v46 = *buf;
  *buf = 0;
  if (v46)
  {
    IPC::Encoder::~Encoder(v46, v44);
    bmalloc::api::tzoneFree(v50, v51);
  }

  if (v45)
  {
LABEL_65:
    v52 = qword_1ED6410D0;
    if (os_log_type_enabled(qword_1ED6410D0, OS_LOG_TYPE_DEFAULT))
    {
      v53 = IPC::errorAsString();
      *buf = 136446466;
      *&buf[4] = "RemoteDisplayListRecorder_FillRoundedRect";
      *&buf[12] = 2082;
      *&buf[14] = v53;
      _os_log_impl(&dword_19D52D000, v52, OS_LOG_TYPE_DEFAULT, "RemoteDisplayListRecorderProxy::send - failed, name:%{public}s, error:%{public}s", buf, 0x16u);
    }

    WebKit::RemoteDisplayListRecorderProxy::didBecomeUnresponsive(*(a1 + 3520));
  }

LABEL_20:
  if (atomic_fetch_add(v10, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v10);
    IPC::StreamClientConnection::operator delete(v10);
  }
}

void WebKit::RemoteDisplayListRecorderProxy::fillRectWithRoundedHole(WebKit::RemoteDisplayListRecorderProxy *this, const WebCore::FloatRect *a2, const WebCore::FloatRoundedRect *a3, const WebCore::Color *a4)
{
  v47 = *MEMORY[0x1E69E9840];
  v8 = WebKit::RemoteDisplayListRecorderProxy::appendStateChangeItemIfNecessary(this, a2);
  v40 = a2;
  v41 = a3;
  v42 = a4;
  v10 = *(this + 439);
  if (!v10)
  {
    goto LABEL_45;
  }

  atomic_fetch_add(v10, 1u);
  while (1)
  {
    if ((*(this + 3584) & 1) == 0)
    {
      v8 = *(this + 443);
      if (v8)
      {
        WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteImageBufferProxy>(v8, *(this + 442), buf);
        v8 = *buf;
        if (*buf)
        {
          v8 = WebKit::RemoteImageBufferProxy::backingStoreWillChange(*buf, v37);
          v39 = *buf;
          *buf = 0;
          if (v39)
          {
            v8 = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::ImageBuffer,(WTF::DestructionThread)0>::deref((v39 + 8), v38);
          }
        }
      }

      *(this + 3584) = 1;
    }

    v11 = *(this + 438);
    v12 = *(v10 + 128);
    v13 = INFINITY;
    if (fabs(v12) != INFINITY)
    {
      WTF::ApproximateTime::now(v8);
      v13 = v12 + v14;
    }

    if (*(v10 + 64) != v11)
    {
      IPC::StreamClientConnectionBuffer::tryAcquire(v10 + 72, buf, v13);
      if (buf[16] != 1)
      {
        goto LABEL_38;
      }

      v22 = *&buf[8];
      if (*&buf[8] <= 1uLL)
      {
LABEL_56:
        __break(0xC471u);
        JUMPOUT(0x19E1BC768);
      }

      v23 = *buf;
      **buf = 3198;
      v24 = v23 + 2;
      if (v22 - 2 < (-v24 & 7 | 8uLL))
      {
        goto LABEL_38;
      }

      v25 = -v24 & 7;
      *(v24 + v25) = v11;
      v26 = 6;
      if (v25 > 6)
      {
        v26 = v25;
      }

      v27 = v26 + 10;
      v28 = (*(v10 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
      v29 = *(v10 + 72);
      if (v28 + 16 >= v29)
      {
        v28 = 0;
      }

      v30 = v27 + v28;
      if (v29 <= v30)
      {
        v30 = 0;
      }

      *(v10 + 88) = v30;
      v31 = *(v10 + 80);
      if (*(v31 + 8) <= 0xFFuLL)
      {
        goto LABEL_44;
      }

      IPC::StreamClientConnection::wakeUpServerBatched(v10, atomic_exchange((*(v31 + 16) + 128), v30) == 0x80000000);
      *(v10 + 64) = v11;
    }

    IPC::StreamClientConnectionBuffer::tryAcquire(v10 + 72, &v43, v13);
    if ((v45 & 1) == 0)
    {
      goto LABEL_38;
    }

    v15 = v43;
    v16 = v44;
    *&buf[16] = v44;
    if (v44 <= 1)
    {
      goto LABEL_56;
    }

    *v43 = 1095;
    *buf = v15 + 1;
    *&buf[8] = v16 - 2;
    IPC::ArgumentCoder<WebCore::PathEllipseInRect,void>::encode(buf, v40);
    IPC::ArgumentCoder<WebCore::FloatRoundedRect,void>::encode(buf, v41);
    IPC::ArgumentCoder<WebCore::Color,void>::encode(buf, v42);
    if (!*buf)
    {
      break;
    }

    v17 = *&buf[16] - *&buf[8];
    if (*&buf[16] - *&buf[8] <= 0x10uLL)
    {
      v17 = 16;
    }

    v18 = (*(v10 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
    v19 = *(v10 + 72);
    if (v18 + 16 >= v19)
    {
      v18 = 0;
    }

    v20 = v18 + v17;
    if (v19 <= v20)
    {
      v20 = 0;
    }

    *(v10 + 88) = v20;
    v21 = *(v10 + 80);
    if (*(v21 + 8) > 0xFFuLL)
    {
      if (atomic_exchange((*(v21 + 16) + 128), v20) == 0x80000000 || *(v10 + 124))
      {
        if (*(v10 + 112) == 1)
        {
          MEMORY[0x19EB16320](*(v10 + 100));
        }

        *(v10 + 124) = 0;
      }

      goto LABEL_19;
    }

LABEL_44:
    __break(1u);
LABEL_45:
    v34 = *(this + 440);
    if (!v34)
    {
      return;
    }

    v35 = *(v34 + 8);
    if (!v35)
    {
      return;
    }

    ++*(v35 + 5);
    v36 = WebKit::RemoteRenderingBackendProxy::connection(v35, v9, buf);
    v10 = *buf;
    if (*(v35 + 5) == 1)
    {
      (*(*v35 + 24))(v35, v36);
    }

    else
    {
      --*(v35 + 5);
    }

    if (!v10)
    {
      return;
    }

    v8 = WTF::RefPtr<IPC::StreamClientConnection,WTF::RawPtrTraits<IPC::StreamClientConnection>,WTF::DefaultRefDerefTraits<IPC::StreamClientConnection>>::operator=(this + 439, v10);
  }

  if ((v45 & 1) == 0)
  {
    goto LABEL_44;
  }

  IPC::StreamClientConnection::sendProcessOutOfStreamMessage(v10, v43, v44);
  if (IPC::Connection::send<Messages::RemoteDisplayListRecorder::FillRectWithRoundedHole>(*(v10 + 8), &v40, v11))
  {
LABEL_38:
    v32 = qword_1ED6410D0;
    if (os_log_type_enabled(qword_1ED6410D0, OS_LOG_TYPE_DEFAULT))
    {
      v33 = IPC::errorAsString();
      *buf = 136446466;
      *&buf[4] = "RemoteDisplayListRecorder_FillRectWithRoundedHole";
      *&buf[12] = 2082;
      *&buf[14] = v33;
      _os_log_impl(&dword_19D52D000, v32, OS_LOG_TYPE_DEFAULT, "RemoteDisplayListRecorderProxy::send - failed, name:%{public}s, error:%{public}s", buf, 0x16u);
    }

    WebKit::RemoteDisplayListRecorderProxy::didBecomeUnresponsive(*(this + 440));
  }

LABEL_19:
  if (atomic_fetch_add(v10, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v10);
    IPC::StreamClientConnection::operator delete(v10);
  }
}

void WebKit::RemoteDisplayListRecorderProxy::fillEllipse(WebKit::RemoteDisplayListRecorderProxy *this, const WebCore::FloatRect *a2)
{
  v41 = *MEMORY[0x1E69E9840];
  v4 = WebKit::RemoteDisplayListRecorderProxy::appendStateChangeItemIfNecessary(this, a2);
  v36 = a2;
  v6 = *(this + 439);
  if (!v6)
  {
    goto LABEL_45;
  }

  atomic_fetch_add(v6, 1u);
  while (1)
  {
    if ((*(this + 3584) & 1) == 0)
    {
      v4 = *(this + 443);
      if (v4)
      {
        WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteImageBufferProxy>(v4, *(this + 442), buf);
        v4 = *buf;
        if (*buf)
        {
          v4 = WebKit::RemoteImageBufferProxy::backingStoreWillChange(*buf, v33);
          v35 = *buf;
          *buf = 0;
          if (v35)
          {
            v4 = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::ImageBuffer,(WTF::DestructionThread)0>::deref((v35 + 8), v34);
          }
        }
      }

      *(this + 3584) = 1;
    }

    v7 = *(this + 438);
    v8 = *(v6 + 128);
    v9 = INFINITY;
    if (fabs(v8) != INFINITY)
    {
      WTF::ApproximateTime::now(v4);
      v9 = v8 + v10;
    }

    if (*(v6 + 64) != v7)
    {
      IPC::StreamClientConnectionBuffer::tryAcquire(v6 + 72, buf, v9);
      if (buf[16] != 1)
      {
        goto LABEL_38;
      }

      v18 = *&buf[8];
      if (*&buf[8] <= 1uLL)
      {
LABEL_56:
        __break(0xC471u);
        JUMPOUT(0x19E1BCBA8);
      }

      v19 = *buf;
      **buf = 3198;
      v20 = v19 + 2;
      if (v18 - 2 < (-v20 & 7 | 8uLL))
      {
        goto LABEL_38;
      }

      v21 = -v20 & 7;
      *(v20 + v21) = v7;
      v22 = 6;
      if (v21 > 6)
      {
        v22 = v21;
      }

      v23 = v22 + 10;
      v24 = (*(v6 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
      v25 = *(v6 + 72);
      if (v24 + 16 >= v25)
      {
        v24 = 0;
      }

      v26 = v23 + v24;
      if (v25 <= v26)
      {
        v26 = 0;
      }

      *(v6 + 88) = v26;
      v27 = *(v6 + 80);
      if (*(v27 + 8) <= 0xFFuLL)
      {
        goto LABEL_44;
      }

      IPC::StreamClientConnection::wakeUpServerBatched(v6, atomic_exchange((*(v27 + 16) + 128), v26) == 0x80000000);
      *(v6 + 64) = v7;
    }

    IPC::StreamClientConnectionBuffer::tryAcquire(v6 + 72, &v37, v9);
    if ((v39 & 1) == 0)
    {
      goto LABEL_38;
    }

    v11 = v37;
    v12 = v38;
    *&buf[16] = v38;
    if (v38 <= 1)
    {
      goto LABEL_56;
    }

    *v37 = 1086;
    *buf = v11 + 1;
    *&buf[8] = v12 - 2;
    IPC::ArgumentCoder<WebCore::PathEllipseInRect,void>::encode(buf, v36);
    if (!*buf)
    {
      break;
    }

    v13 = *&buf[16] - *&buf[8];
    if (*&buf[16] - *&buf[8] <= 0x10uLL)
    {
      v13 = 16;
    }

    v14 = (*(v6 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
    v15 = *(v6 + 72);
    if (v14 + 16 >= v15)
    {
      v14 = 0;
    }

    v16 = v14 + v13;
    if (v15 <= v16)
    {
      v16 = 0;
    }

    *(v6 + 88) = v16;
    v17 = *(v6 + 80);
    if (*(v17 + 8) > 0xFFuLL)
    {
      if (atomic_exchange((*(v17 + 16) + 128), v16) == 0x80000000 || *(v6 + 124))
      {
        if (*(v6 + 112) == 1)
        {
          MEMORY[0x19EB16320](*(v6 + 100));
        }

        *(v6 + 124) = 0;
      }

      goto LABEL_19;
    }

LABEL_44:
    __break(1u);
LABEL_45:
    v30 = *(this + 440);
    if (!v30)
    {
      return;
    }

    v31 = *(v30 + 8);
    if (!v31)
    {
      return;
    }

    ++*(v31 + 5);
    v32 = WebKit::RemoteRenderingBackendProxy::connection(v31, v5, buf);
    v6 = *buf;
    if (*(v31 + 5) == 1)
    {
      (*(*v31 + 24))(v31, v32);
    }

    else
    {
      --*(v31 + 5);
    }

    if (!v6)
    {
      return;
    }

    v4 = WTF::RefPtr<IPC::StreamClientConnection,WTF::RawPtrTraits<IPC::StreamClientConnection>,WTF::DefaultRefDerefTraits<IPC::StreamClientConnection>>::operator=(this + 439, v6);
  }

  if ((v39 & 1) == 0)
  {
    goto LABEL_44;
  }

  IPC::StreamClientConnection::sendProcessOutOfStreamMessage(v6, v37, v38);
  if (IPC::Connection::send<Messages::RemoteDisplayListRecorder::FillEllipse>(*(v6 + 8), &v36, v7))
  {
LABEL_38:
    v28 = qword_1ED6410D0;
    if (os_log_type_enabled(qword_1ED6410D0, OS_LOG_TYPE_DEFAULT))
    {
      v29 = IPC::errorAsString();
      *buf = 136446466;
      *&buf[4] = "RemoteDisplayListRecorder_FillEllipse";
      *&buf[12] = 2082;
      *&buf[14] = v29;
      _os_log_impl(&dword_19D52D000, v28, OS_LOG_TYPE_DEFAULT, "RemoteDisplayListRecorderProxy::send - failed, name:%{public}s, error:%{public}s", buf, 0x16u);
    }

    WebKit::RemoteDisplayListRecorderProxy::didBecomeUnresponsive(*(this + 440));
  }

LABEL_19:
  if (atomic_fetch_add(v6, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v6);
    IPC::StreamClientConnection::operator delete(v6);
  }
}

void WebKit::RemoteDisplayListRecorderProxy::drawVideoFrame(uint64_t a1, __int128 *a2, float *a3, char a4, char a5)
{
  v68 = *MEMORY[0x1E69E9840];
  v65 = a4;
  WebKit::RemoteDisplayListRecorderProxy::appendStateChangeItemIfNecessary(a1, a2);
  v10 = 0;
  atomic_compare_exchange_strong_explicit((a1 + 3552), &v10, 1u, memory_order_acquire, memory_order_acquire);
  if (v10)
  {
    MEMORY[0x19EB01E30](a1 + 3552);
  }

  v11 = *(a1 + 3560);
  if (!v11)
  {
    if (WebKit::SharedVideoFrameWriter::s_heapRef)
    {
      NonCompact = bmalloc::api::tzoneAllocateNonCompact(WebKit::SharedVideoFrameWriter::s_heapRef, v9);
    }

    else
    {
      NonCompact = WebKit::SharedVideoFrameWriter::operatorNewSlow(0x20);
    }

    v14 = NonCompact;
    WebKit::SharedVideoFrameWriter::SharedVideoFrameWriter(NonCompact, v13);
    std::unique_ptr<WebKit::SharedVideoFrameWriter>::reset[abi:sn200100]((a1 + 3560), v14);
    v11 = *(a1 + 3560);
  }

  v15 = WTF::fastMalloc(0x10);
  *v15 = &unk_1F11250D0;
  v15[1] = a1;
  v58 = v15;
  v16 = WTF::fastMalloc(0x10);
  *v16 = &unk_1F11250F8;
  v16[1] = a1;
  *buf = v16;
  WebKit::SharedVideoFrameWriter::write(v11, a2, &v58, buf, v62);
  (*(*v16 + 8))(v16);
  v17 = (*(*v15 + 8))(v15);
  if (v64 != 1)
  {
    goto LABEL_51;
  }

  v58 = v62;
  v59 = a3;
  v60 = &v65;
  v61[0] = a5;
  v19 = *(a1 + 3512);
  if (!v19)
  {
    goto LABEL_55;
  }

  atomic_fetch_add(v19, 1u);
  while (1)
  {
    if ((*(a1 + 3584) & 1) == 0)
    {
      v17 = *(a1 + 3544);
      if (v17)
      {
        WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteImageBufferProxy>(v17, *(a1 + 3536), buf);
        v17 = *buf;
        if (*buf)
        {
          v17 = WebKit::RemoteImageBufferProxy::ensureBackend(*buf, v55);
          if (v17)
          {
            v17 = (*(*v17 + 168))(v17);
          }

          v57 = *buf;
          *buf = 0;
          if (v57)
          {
            v17 = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::ImageBuffer,(WTF::DestructionThread)0>::deref((v57 + 8), v56);
          }
        }
      }

      *(a1 + 3584) = 1;
    }

    v20 = *(a1 + 3504);
    v21 = *(v19 + 128);
    v22 = INFINITY;
    if (fabs(v21) != INFINITY)
    {
      WTF::ApproximateTime::now(v17);
      v22 = v21 + v23;
    }

    if (*(v19 + 64) == v20)
    {
      break;
    }

    IPC::StreamClientConnectionBuffer::tryAcquire(v19 + 72, buf, v22);
    if (buf[16] != 1)
    {
      goto LABEL_43;
    }

    v36 = *&buf[8];
    if (*&buf[8] <= 1uLL)
    {
LABEL_74:
      __break(0xC471u);
      JUMPOUT(0x19E1BD21CLL);
    }

    v37 = *buf;
    **buf = 3198;
    v38 = v37 + 2;
    if (v36 - 2 < (-v38 & 7 | 8uLL))
    {
      goto LABEL_43;
    }

    v39 = -v38 & 7;
    *(v38 + v39) = v20;
    v40 = 6;
    if (v39 > 6)
    {
      v40 = v39;
    }

    v41 = v40 + 10;
    v42 = (*(v19 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
    v43 = *(v19 + 72);
    if (v42 + 16 >= v43)
    {
      v42 = 0;
    }

    v44 = v41 + v42;
    if (v43 <= v44)
    {
      v44 = 0;
    }

    *(v19 + 88) = v44;
    v45 = *(v19 + 80);
    if (*(v45 + 8) > 0xFFuLL)
    {
      v46 = atomic_exchange((*(v45 + 16) + 128), v44);
      v47 = *(v19 + 124);
      if (v46 == 0x80000000 || v47)
      {
        v48 = v47 + 1;
        *(v19 + 124) = v48;
        if (v48 >= *(v19 + 120))
        {
          if (*(v19 + 112) == 1)
          {
            MEMORY[0x19EB16320](*(v19 + 100));
          }

          *(v19 + 124) = 0;
        }
      }

      *(v19 + 64) = v20;
      break;
    }

LABEL_54:
    __break(1u);
LABEL_55:
    v52 = *(a1 + 3520);
    if (!v52)
    {
      goto LABEL_48;
    }

    v53 = *(v52 + 8);
    if (!v53)
    {
      goto LABEL_48;
    }

    ++*(v53 + 5);
    v54 = WebKit::RemoteRenderingBackendProxy::connection(v53, v18, buf);
    v19 = *buf;
    if (*(v53 + 5) == 1)
    {
      (*(*v53 + 24))(v53, v54);
      if (!v19)
      {
        goto LABEL_48;
      }
    }

    else
    {
      --*(v53 + 5);
      if (!v19)
      {
        goto LABEL_48;
      }
    }

    atomic_fetch_add(v19, 1u);
    v17 = *(a1 + 3512);
    *(a1 + 3512) = v19;
    if (v17 && atomic_fetch_add(v17, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v17);
      IPC::StreamClientConnection::operator delete(v17);
    }
  }

  IPC::StreamClientConnectionBuffer::tryAcquire(v19 + 72, buf, v22);
  if ((buf[16] & 1) == 0)
  {
    goto LABEL_43;
  }

  if (*&buf[8] <= 1uLL)
  {
    goto LABEL_74;
  }

  **buf = 3197;
  v24 = (*(v19 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
  v25 = *(v19 + 72);
  if (v24 + 16 >= v25)
  {
    v24 = 0;
  }

  v26 = v24 + 16;
  if (v25 <= v26)
  {
    v27 = 0;
  }

  else
  {
    v27 = v26;
  }

  *(v19 + 88) = v27;
  v28 = *(v19 + 80);
  if (*(v28 + 8) <= 0xFFuLL)
  {
    goto LABEL_54;
  }

  atomic_exchange((*(v28 + 16) + 128), v27);
  *(v19 + 124) = 0;
  v29 = *(v19 + 8);
  v30 = IPC::Encoder::operator new(0x238, v18);
  *v30 = 1079;
  *(v30 + 2) = 0;
  *(v30 + 3) = 0;
  *(v30 + 1) = v20;
  *(v30 + 68) = 0;
  *(v30 + 70) = 0;
  *(v30 + 69) = 0;
  IPC::Encoder::encodeHeader(v30);
  v66 = v30;
  IPC::ArgumentCoder<WebKit::SharedVideoFrame,void>::encode(v30, v58);
  IPC::ArgumentCoder<WebCore::FloatRect,void>::encode(v30, v59);
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(v30, *v60);
  IPC::Encoder::operator<<<BOOL &>(v30, v61);
  v32 = IPC::Connection::sendMessageImpl(v29, &v66, 1, 0);
  v33 = v66;
  v66 = 0;
  if (v33)
  {
    IPC::Encoder::~Encoder(v33, v31);
    bmalloc::api::tzoneFree(v34, v35);
    if (v32)
    {
LABEL_43:
      v49 = qword_1ED6410D0;
      if (os_log_type_enabled(qword_1ED6410D0, OS_LOG_TYPE_DEFAULT))
      {
        v50 = IPC::errorAsString();
        *buf = 136446466;
        *&buf[4] = "RemoteDisplayListRecorder_DrawVideoFrame";
        *&buf[12] = 2082;
        *&buf[14] = v50;
        _os_log_impl(&dword_19D52D000, v49, OS_LOG_TYPE_DEFAULT, "RemoteDisplayListRecorderProxy::send - failed, name:%{public}s, error:%{public}s", buf, 0x16u);
      }

      WebKit::RemoteDisplayListRecorderProxy::didBecomeUnresponsive(*(a1 + 3520));
    }
  }

  else if (v32)
  {
    goto LABEL_43;
  }

  if (atomic_fetch_add(v19, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v19);
    IPC::StreamClientConnection::operator delete(v19);
  }

LABEL_48:
  if ((v64 & 1) != 0 && v63[16] == 2)
  {
    WTF::MachSendRight::~MachSendRight(v63);
  }

LABEL_51:
  v51 = 1;
  atomic_compare_exchange_strong_explicit((a1 + 3552), &v51, 0, memory_order_release, memory_order_relaxed);
  if (v51 != 1)
  {
    WTF::Lock::unlockSlow((a1 + 3552));
  }
}

void WebKit::RemoteDisplayListRecorderProxy::strokePath(atomic_uchar **this, const WebCore::Path *a2)
{
  v3 = this;
  v325 = *MEMORY[0x1E69E9840];
  if (*(a2 + 56) != 1)
  {
    v80 = WebKit::RemoteDisplayListRecorderProxy::appendStateChangeItemIfNecessary(this, a2);
    v15 = *(v3 + 439);
    if (v15)
    {
      atomic_fetch_add(v15, 1u);
    }

    else
    {
      v247 = *(v3 + 440);
      if (!v247)
      {
        return;
      }

      v248 = *(v247 + 8);
      if (!v248)
      {
        return;
      }

      ++*(v248 + 5);
      v249 = WebKit::RemoteRenderingBackendProxy::connection(v248, v81, buf);
      v15 = *buf;
      if (*(v248 + 5) == 1)
      {
        (*(*v248 + 24))(v248, v249);
      }

      else
      {
        --*(v248 + 5);
      }

      if (!v15)
      {
        return;
      }

      v80 = WTF::RefPtr<IPC::StreamClientConnection,WTF::RawPtrTraits<IPC::StreamClientConnection>,WTF::DefaultRefDerefTraits<IPC::StreamClientConnection>>::operator=(v3 + 439, v15);
    }

    if ((*(v3 + 3584) & 1) == 0)
    {
      v80 = *(v3 + 443);
      if (v80)
      {
        WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteImageBufferProxy>(v80, *(v3 + 442), buf);
        v80 = *buf;
        if (*buf)
        {
          v80 = WebKit::RemoteImageBufferProxy::backingStoreWillChange(*buf, v309);
          v311 = *buf;
          *buf = 0;
          if (v311)
          {
            v80 = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::ImageBuffer,(WTF::DestructionThread)0>::deref((v311 + 8), v310);
          }
        }
      }

      *(v3 + 3584) = 1;
    }

    v82 = *(v3 + 438);
    v83 = *(v15 + 128);
    v84 = INFINITY;
    if (fabs(v83) != INFINITY)
    {
      WTF::ApproximateTime::now(v80);
      v84 = v83 + v85;
    }

    if (*(v15 + 64) != v82)
    {
      IPC::StreamClientConnectionBuffer::tryAcquire(v15 + 72, buf, v84);
      if (buf[16] != 1)
      {
        goto LABEL_405;
      }

      v162 = *&buf[8];
      if (*&buf[8] <= 1uLL)
      {
        __break(0xC471u);
        JUMPOUT(0x19E1BF2F4);
      }

      v163 = *buf;
      **buf = 3198;
      v164 = v163 + 2;
      if (v162 - 2 < (-v164 & 7 | 8uLL))
      {
        goto LABEL_405;
      }

      v165 = -v164 & 7;
      *(v164 + v165) = v82;
      v166 = 6;
      if (v165 > 6)
      {
        v166 = v165;
      }

      v167 = v166 + 10;
      v168 = (*(v15 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
      v169 = *(v15 + 72);
      if (v168 + 16 >= v169)
      {
        v168 = 0;
      }

      v170 = v167 + v168;
      if (v169 <= v170)
      {
        v170 = 0;
      }

      *(v15 + 88) = v170;
      v171 = *(v15 + 80);
      if (*(v171 + 8) <= 0xFFuLL)
      {
        goto LABEL_491;
      }

      v172 = atomic_exchange((*(v171 + 16) + 128), v170);
      v173 = *(v15 + 124);
      if (v172 == 0x80000000 || v173 != 0)
      {
        v189 = v173 + 1;
        *(v15 + 124) = v189;
        if (v189 >= *(v15 + 120))
        {
          if (*(v15 + 112) == 1)
          {
            MEMORY[0x19EB16320](*(v15 + 100));
          }

          *(v15 + 124) = 0;
        }
      }

      *(v15 + 64) = v82;
    }

    IPC::StreamClientConnectionBuffer::tryAcquire(v15 + 72, &v321, v84);
    if (v323)
    {
      v86 = v321;
      v87 = v322;
      *&buf[16] = v322;
      if (v322 <= 1)
      {
        __break(0xC471u);
        JUMPOUT(0x19E1BF200);
      }

      *v321 = 1141;
      *buf = v86 + 2;
      *&buf[8] = v87 - 2;
      IPC::ArgumentCoder<WebCore::Path,void>::encode(buf, a2);
      if (*buf)
      {
        v72 = *&buf[16] - *&buf[8];
LABEL_72:
        if (v72 <= 0x10)
        {
          v72 = 16;
        }

        v73 = (*(v15 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
        v74 = *(v15 + 72);
        if (v73 + 16 >= v74)
        {
          v73 = 0;
        }

        v75 = v73 + v72;
        if (v74 <= v75)
        {
          v75 = 0;
        }

        *(v15 + 88) = v75;
        v76 = *(v15 + 80);
        if (*(v76 + 8) > 0xFFuLL)
        {
          v77 = atomic_exchange((*(v76 + 16) + 128), v75);
          v44 = *(v15 + 124);
          if (v77 != 0x80000000 && v44 == 0)
          {
            goto LABEL_84;
          }

          goto LABEL_83;
        }

LABEL_491:
        __break(1u);
        goto LABEL_492;
      }

      if ((v323 & 1) == 0)
      {
        goto LABEL_491;
      }

      if (v322 <= 1)
      {
        __break(0xC471u);
        JUMPOUT(0x19E1BF534);
      }

      *v321 = 3197;
      v250 = (*(v15 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
      v251 = *(v15 + 72);
      if (v250 + 16 >= v251)
      {
        v250 = 0;
      }

      v252 = v250 + 16;
      v253 = v251 <= v252 ? 0 : v252;
      *(v15 + 88) = v253;
      v254 = *(v15 + 80);
      if (*(v254 + 8) <= 0xFFuLL)
      {
        goto LABEL_491;
      }

      atomic_exchange((*(v254 + 16) + 128), v253);
      *(v15 + 124) = 0;
      v255 = *(v15 + 8);
      v256 = IPC::Encoder::operator new(0x238, v88);
      *v256 = 1141;
      *(v256 + 2) = 0;
      *(v256 + 3) = 0;
      *(v256 + 1) = v82;
      *(v256 + 68) = 0;
      *(v256 + 70) = 0;
      *(v256 + 69) = 0;
      IPC::Encoder::encodeHeader(v256);
      *buf = v256;
      IPC::ArgumentCoder<WebCore::Path,void>::encode(v256, a2);
      v258 = IPC::Connection::sendMessageImpl(v255, buf, 1, 0);
      v259 = *buf;
      *buf = 0;
      if (v259)
      {
        IPC::Encoder::~Encoder(v259, v257);
        bmalloc::api::tzoneFree(v271, v272);
      }

      if (!v258)
      {
        goto LABEL_84;
      }
    }

LABEL_405:
    v279 = qword_1ED6410D0;
    if (!os_log_type_enabled(qword_1ED6410D0, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_402;
    }

    v280 = IPC::errorAsString();
    *buf = 136446466;
    v281 = "RemoteDisplayListRecorder_StrokePath";
    goto LABEL_401;
  }

  if (*(a2 + 52) != 12)
  {
    v45 = WebKit::RemoteDisplayListRecorderProxy::appendStateChangeItemIfNecessary(this, a2);
    v47 = *(a2 + 52);
    if (v47 == 255)
    {
      v48 = -1;
    }

    else
    {
      v48 = *(a2 + 52);
    }

    if (v48 != 5)
    {
      switch(v48)
      {
        case 1:
          if (v47 != 1)
          {
            goto LABEL_333;
          }

          v282 = v3;
          v283 = a2;

          goto LABEL_418;
        case 2:
          if (v47 != 2)
          {
            goto LABEL_333;
          }

          v282 = v3;
          v283 = a2;

          goto LABEL_418;
        case 3:
          if (v47 != 3)
          {
            goto LABEL_333;
          }

          v282 = v3;
          v283 = a2;

          goto LABEL_418;
        case 4:
          if (v47 != 4)
          {
            goto LABEL_333;
          }

          v282 = v3;
          v283 = a2;

          goto LABEL_418;
        case 5:
          goto LABEL_491;
        case 6:
          if (v47 != 6)
          {
            goto LABEL_333;
          }

          v321 = a2;
          v90 = *(v3 + 439);
          if (v90)
          {
            atomic_fetch_add(v90, 1u);
          }

          else
          {
            v273 = *(v3 + 440);
            if (!v273)
            {
              return;
            }

            v274 = *(v273 + 8);
            if (!v274)
            {
              return;
            }

            ++*(v274 + 5);
            v275 = WebKit::RemoteRenderingBackendProxy::connection(v274, v46, buf);
            v90 = *buf;
            if (*(v274 + 5) == 1)
            {
              (*(*v274 + 24))(v274, v275);
            }

            else
            {
              --*(v274 + 5);
            }

            if (!v90)
            {
              return;
            }

            atomic_fetch_add(v90, 1u);
            v45 = *(v3 + 439);
            *(v3 + 439) = v90;
            if (v45 && atomic_fetch_add(v45, 0xFFFFFFFF) == 1)
            {
              atomic_store(1u, v45);
              IPC::StreamClientConnection::operator delete(v45);
            }
          }

          if ((*(v3 + 3584) & 1) == 0)
          {
            v45 = *(v3 + 443);
            if (v45)
            {
              WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteImageBufferProxy>(v45, *(v3 + 442), buf);
              v45 = *buf;
              if (*buf)
              {
                v45 = WebKit::RemoteImageBufferProxy::backingStoreWillChange(*buf, v300);
                v302 = *buf;
                *buf = 0;
                if (v302)
                {
                  v45 = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::ImageBuffer,(WTF::DestructionThread)0>::deref((v302 + 8), v301);
                }
              }
            }

            *(v3 + 3584) = 1;
          }

          v112 = *(v3 + 438);
          v113 = *(v90 + 128);
          v114 = INFINITY;
          if (fabs(v113) != INFINITY)
          {
            WTF::ApproximateTime::now(v45);
            v114 = v113 + v115;
          }

          if (*(v90 + 64) == v112)
          {
            goto LABEL_156;
          }

          IPC::StreamClientConnectionBuffer::tryAcquire(v90 + 72, buf, v114);
          if (buf[16] == 1)
          {
            v224 = *&buf[8];
            if (*&buf[8] <= 1uLL)
            {
              __break(0xC471u);
              JUMPOUT(0x19E1BF394);
            }

            v225 = *buf;
            **buf = 3198;
            v226 = v225 + 2;
            if (v224 - 2 >= (-v226 & 7 | 8uLL))
            {
              v227 = -v226 & 7;
              *(v226 + v227) = v112;
              v228 = 6;
              if (v227 > 6)
              {
                v228 = v227;
              }

              v229 = v228 + 10;
              v230 = (*(v90 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
              v231 = *(v90 + 72);
              if (v230 + 16 >= v231)
              {
                v230 = 0;
              }

              v232 = v229 + v230;
              if (v231 <= v232)
              {
                v232 = 0;
              }

              *(v90 + 88) = v232;
              v233 = *(v90 + 80);
              if (*(v233 + 8) <= 0xFFuLL)
              {
                goto LABEL_491;
              }

              v234 = atomic_exchange((*(v233 + 16) + 128), v232);
              v235 = *(v90 + 124);
              if (v234 == 0x80000000 || v235)
              {
                v244 = v235 + 1;
                *(v90 + 124) = v244;
                if (v244 >= *(v90 + 120))
                {
                  if (*(v90 + 112) == 1)
                  {
                    MEMORY[0x19EB16320](*(v90 + 100));
                  }

                  *(v90 + 124) = 0;
                }
              }

              *(v90 + 64) = v112;
LABEL_156:
              IPC::StreamClientConnectionBuffer::tryAcquire(v90 + 72, buf, v114);
              if (buf[16])
              {
                v116 = *&buf[8];
                if (*&buf[8] <= 1uLL)
                {
                  __break(0xC471u);
                  JUMPOUT(0x19E1BF294);
                }

                v117 = *buf;
                **buf = 1137;
                v118 = v117 + 2;
                v119 = -v118 & 3 | 4;
                v120 = v116 - 2 - v119;
                if (v116 - 2 >= v119)
                {
                  v121 = v321;
                  *(v118 + (-v118 & 3)) = *v321;
                  v122 = v118 + v119;
                  v123 = -v122 & 3 | 4;
                  v36 = v120 >= v123;
                  v124 = v120 - v123;
                  if (v36)
                  {
                    *(v122 + (-v122 & 3)) = *(v121 + 1);
                    v125 = v122 + v123;
                    v126 = -v125 & 3 | 4;
                    v127 = v124 - v126;
                    if (v124 >= v126)
                    {
                      *(v125 + (-v125 & 3)) = *(v121 + 2);
                      v128 = v125 + v126;
                      v129 = -(v125 + v126);
                      v130 = v129 & 3 | 4;
                      v131 = v127 - v130;
                      if (v127 >= v130)
                      {
                        *(v128 + (v129 & 3)) = *(v121 + 3);
                        v132 = v128 + v130;
                        v133 = -v132 & 3 | 4;
                        if (v131 >= v133)
                        {
                          v134 = -v132 & 3;
                          *(v132 + v134) = *(v121 + 4);
                          if (v131 != v133)
                          {
                            *(v132 + v133) = *(v121 + 20);
                            v103 = v116 - v131 + v134 + 5;
                            goto LABEL_126;
                          }
                        }
                      }
                    }
                  }
                }

                if ((buf[16] & 1) == 0)
                {
                  goto LABEL_491;
                }

                if (*&buf[8] <= 1uLL)
                {
                  __break(0xC471u);
LABEL_534:
                  JUMPOUT(0x19E1BF1B0);
                }

                **buf = 3197;
                v260 = (*(v90 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
                v261 = *(v90 + 72);
                if (v260 + 16 >= v261)
                {
                  v260 = 0;
                }

                v262 = v260 + 16;
                v263 = v261 <= v262 ? 0 : v262;
                *(v90 + 88) = v263;
                v264 = *(v90 + 80);
                if (*(v264 + 8) <= 0xFFuLL)
                {
                  goto LABEL_491;
                }

                atomic_exchange((*(v264 + 16) + 128), v263);
                *(v90 + 124) = 0;
                if (!IPC::Connection::send<Messages::RemoteDisplayListRecorder::StrokeClosedArc>(*(v90 + 8), &v321, v112))
                {
                  goto LABEL_138;
                }
              }
            }
          }

          v135 = qword_1ED6410D0;
          if (!os_log_type_enabled(qword_1ED6410D0, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_414;
          }

          v136 = IPC::errorAsString();
          *buf = 136446466;
          v137 = "RemoteDisplayListRecorder_StrokeClosedArc";
          goto LABEL_413;
        case 7:
          if (v47 != 7)
          {
            goto LABEL_333;
          }

          v282 = v3;
          v283 = a2;

          goto LABEL_418;
        case 8:
          if (v47 != 8)
          {
            goto LABEL_333;
          }

          v282 = v3;
          v283 = a2;

          goto LABEL_418;
        case 9:
          if (v47 != 9)
          {
            goto LABEL_333;
          }

          goto LABEL_303;
        case 10:
          if (v47 != 10)
          {
            goto LABEL_333;
          }

          goto LABEL_303;
        case 11:
          if (v47 == 11)
          {
            goto LABEL_303;
          }

          goto LABEL_333;
        case 12:
          if (v47 != 12)
          {
            goto LABEL_333;
          }

          WebKit::RemoteDisplayListRecorderProxy::strokePath(WebCore::Path const&)::$_3::operator()(v3, a2);
          return;
        case 13:
          if (v47 != 13)
          {
            goto LABEL_333;
          }

          v319 = a2;
          v90 = *(v3 + 439);
          if (v90)
          {
            atomic_fetch_add(v90, 1u);
          }

          else
          {
            v268 = *(v3 + 440);
            if (!v268)
            {
              return;
            }

            v269 = *(v268 + 8);
            if (!v269)
            {
              return;
            }

            ++*(v269 + 5);
            v270 = WebKit::RemoteRenderingBackendProxy::connection(v269, v46, buf);
            v90 = *buf;
            if (*(v269 + 5) == 1)
            {
              (*(*v269 + 24))(v269, v270);
            }

            else
            {
              --*(v269 + 5);
            }

            if (!v90)
            {
              return;
            }

            atomic_fetch_add(v90, 1u);
            v45 = *(v3 + 439);
            *(v3 + 439) = v90;
            if (v45 && atomic_fetch_add(v45, 0xFFFFFFFF) == 1)
            {
              atomic_store(1u, v45);
              IPC::StreamClientConnection::operator delete(v45);
            }
          }

          if ((*(v3 + 3584) & 1) == 0)
          {
            v45 = *(v3 + 443);
            if (v45)
            {
              WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteImageBufferProxy>(v45, *(v3 + 442), buf);
              v45 = *buf;
              if (*buf)
              {
                v45 = WebKit::RemoteImageBufferProxy::backingStoreWillChange(*buf, v297);
                v299 = *buf;
                *buf = 0;
                if (v299)
                {
                  v45 = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::ImageBuffer,(WTF::DestructionThread)0>::deref((v299 + 8), v298);
                }
              }
            }

            *(v3 + 3584) = 1;
          }

          v97 = *(v3 + 438);
          v98 = *(v90 + 128);
          v99 = INFINITY;
          if (fabs(v98) != INFINITY)
          {
            WTF::ApproximateTime::now(v45);
            v99 = v98 + v100;
          }

          if (*(v90 + 64) == v97)
          {
            goto LABEL_122;
          }

          IPC::StreamClientConnectionBuffer::tryAcquire(v90 + 72, buf, v99);
          if (buf[16] != 1)
          {
            goto LABEL_409;
          }

          v190 = *&buf[8];
          if (*&buf[8] <= 1uLL)
          {
            __break(0xC471u);
            JUMPOUT(0x19E1BF334);
          }

          v191 = *buf;
          **buf = 3198;
          v192 = v191 + 2;
          if (v190 - 2 < (-v192 & 7 | 8uLL))
          {
            goto LABEL_409;
          }

          v193 = -v192 & 7;
          *(v192 + v193) = v97;
          v194 = 6;
          if (v193 > 6)
          {
            v194 = v193;
          }

          v195 = v194 + 10;
          v196 = (*(v90 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
          v197 = *(v90 + 72);
          if (v196 + 16 >= v197)
          {
            v196 = 0;
          }

          v198 = v195 + v196;
          if (v197 <= v198)
          {
            v198 = 0;
          }

          *(v90 + 88) = v198;
          v199 = *(v90 + 80);
          if (*(v199 + 8) <= 0xFFuLL)
          {
            goto LABEL_491;
          }

          v200 = atomic_exchange((*(v199 + 16) + 128), v198);
          v201 = *(v90 + 124);
          if (v200 == 0x80000000 || v201)
          {
            v223 = v201 + 1;
            *(v90 + 124) = v223;
            if (v223 >= *(v90 + 120))
            {
              if (*(v90 + 112) == 1)
              {
                MEMORY[0x19EB16320](*(v90 + 100));
              }

              *(v90 + 124) = 0;
            }
          }

          *(v90 + 64) = v97;
LABEL_122:
          IPC::StreamClientConnectionBuffer::tryAcquire(v90 + 72, &v321, v99);
          if ((v323 & 1) == 0)
          {
            goto LABEL_409;
          }

          v101 = v321;
          v102 = v322;
          *&buf[16] = v322;
          if (v322 <= 1)
          {
            __break(0xC471u);
            JUMPOUT(0x19E1BF274);
          }

          *v321 = 1143;
          *buf = v101 + 2;
          *&buf[8] = v102 - 2;
          IPC::ArgumentCoder<WebCore::PathBezierCurveTo,void>::encode(buf, v319);
          if (*buf)
          {
            goto LABEL_125;
          }

          if ((v323 & 1) == 0)
          {
            goto LABEL_491;
          }

          IPC::StreamClientConnection::sendProcessOutOfStreamMessage(v90, v321, v322);
          if (!IPC::Connection::send<Messages::RemoteDisplayListRecorder::StrokeQuadCurve>(*(v90 + 8), &v319, v97))
          {
            goto LABEL_138;
          }

LABEL_409:
          v135 = qword_1ED6410D0;
          if (!os_log_type_enabled(qword_1ED6410D0, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_414;
          }

          v136 = IPC::errorAsString();
          *buf = 136446466;
          v137 = "RemoteDisplayListRecorder_StrokeQuadCurve";
          goto LABEL_413;
        case 14:
          if (v47 != 14)
          {
            goto LABEL_333;
          }

          v319 = a2;
          v90 = *(v3 + 439);
          if (v90)
          {
            atomic_fetch_add(v90, 1u);
          }

          else
          {
            v265 = *(v3 + 440);
            if (!v265)
            {
              return;
            }

            v266 = *(v265 + 8);
            if (!v266)
            {
              return;
            }

            ++*(v266 + 5);
            v267 = WebKit::RemoteRenderingBackendProxy::connection(v266, v46, buf);
            v90 = *buf;
            if (*(v266 + 5) == 1)
            {
              (*(*v266 + 24))(v266, v267);
            }

            else
            {
              --*(v266 + 5);
            }

            if (!v90)
            {
              return;
            }

            atomic_fetch_add(v90, 1u);
            v45 = *(v3 + 439);
            *(v3 + 439) = v90;
            if (v45 && atomic_fetch_add(v45, 0xFFFFFFFF) == 1)
            {
              atomic_store(1u, v45);
              IPC::StreamClientConnection::operator delete(v45);
            }
          }

          if ((*(v3 + 3584) & 1) == 0)
          {
            v45 = *(v3 + 443);
            if (v45)
            {
              WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteImageBufferProxy>(v45, *(v3 + 442), buf);
              v45 = *buf;
              if (*buf)
              {
                v45 = WebKit::RemoteImageBufferProxy::backingStoreWillChange(*buf, v303);
                v305 = *buf;
                *buf = 0;
                if (v305)
                {
                  v45 = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::ImageBuffer,(WTF::DestructionThread)0>::deref((v305 + 8), v304);
                }
              }
            }

            *(v3 + 3584) = 1;
          }

          v91 = *(v3 + 438);
          v92 = *(v90 + 128);
          v93 = INFINITY;
          if (fabs(v92) != INFINITY)
          {
            WTF::ApproximateTime::now(v45);
            v93 = v92 + v94;
          }

          if (*(v90 + 64) == v91)
          {
            goto LABEL_109;
          }

          IPC::StreamClientConnectionBuffer::tryAcquire(v90 + 72, buf, v93);
          if (buf[16] != 1)
          {
            goto LABEL_407;
          }

          v177 = *&buf[8];
          if (*&buf[8] <= 1uLL)
          {
            __break(0xC471u);
            JUMPOUT(0x19E1BF314);
          }

          v178 = *buf;
          **buf = 3198;
          v179 = v178 + 2;
          if (v177 - 2 < (-v179 & 7 | 8uLL))
          {
            goto LABEL_407;
          }

          v180 = -v179 & 7;
          *(v179 + v180) = v91;
          v181 = 6;
          if (v180 > 6)
          {
            v181 = v180;
          }

          v182 = v181 + 10;
          v183 = (*(v90 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
          v184 = *(v90 + 72);
          if (v183 + 16 >= v184)
          {
            v183 = 0;
          }

          v185 = v182 + v183;
          if (v184 <= v185)
          {
            v185 = 0;
          }

          *(v90 + 88) = v185;
          v186 = *(v90 + 80);
          if (*(v186 + 8) <= 0xFFuLL)
          {
            goto LABEL_491;
          }

          v187 = atomic_exchange((*(v186 + 16) + 128), v185);
          v188 = *(v90 + 124);
          if (v187 == 0x80000000 || v188)
          {
            v222 = v188 + 1;
            *(v90 + 124) = v222;
            if (v222 >= *(v90 + 120))
            {
              if (*(v90 + 112) == 1)
              {
                MEMORY[0x19EB16320](*(v90 + 100));
              }

              *(v90 + 124) = 0;
            }
          }

          *(v90 + 64) = v91;
LABEL_109:
          IPC::StreamClientConnectionBuffer::tryAcquire(v90 + 72, &v321, v93);
          if ((v323 & 1) == 0)
          {
            goto LABEL_407;
          }

          v95 = v321;
          v96 = v322;
          *&buf[16] = v322;
          if (v322 <= 1)
          {
            __break(0xC471u);
            JUMPOUT(0x19E1BF254);
          }

          *v321 = 1136;
          *buf = v95 + 2;
          *&buf[8] = v96 - 2;
          IPC::ArgumentCoder<WebCore::PathDataBezierCurve,void>::encode(buf, v319);
          if (*buf)
          {
LABEL_125:
            v103 = *&buf[16] - *&buf[8];
LABEL_126:
            if (v103 <= 0x10)
            {
              v103 = 16;
            }

            v104 = (*(v90 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
            v105 = *(v90 + 72);
            if (v104 + 16 >= v105)
            {
              v104 = 0;
            }

            v106 = v104 + v103;
            if (v105 <= v106)
            {
              v106 = 0;
            }

            *(v90 + 88) = v106;
            v107 = *(v90 + 80);
            if (*(v107 + 8) <= 0xFFuLL)
            {
              goto LABEL_491;
            }

            v108 = atomic_exchange((*(v107 + 16) + 128), v106);
            v109 = *(v90 + 124);
            if (v108 == 0x80000000 || v109 != 0)
            {
              v111 = v109 + 1;
              *(v90 + 124) = v111;
              if (v111 >= *(v90 + 120))
              {
                if (*(v90 + 112) == 1)
                {
                  MEMORY[0x19EB16320](*(v90 + 100));
                }

                *(v90 + 124) = 0;
              }
            }

            goto LABEL_138;
          }

          if ((v323 & 1) == 0)
          {
            goto LABEL_491;
          }

          IPC::StreamClientConnection::sendProcessOutOfStreamMessage(v90, v321, v322);
          if (!IPC::Connection::send<Messages::RemoteDisplayListRecorder::StrokeBezierCurve>(*(v90 + 8), &v319, v91))
          {
            goto LABEL_138;
          }

LABEL_407:
          v135 = qword_1ED6410D0;
          if (!os_log_type_enabled(qword_1ED6410D0, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_414;
          }

          v136 = IPC::errorAsString();
          *buf = 136446466;
          v137 = "RemoteDisplayListRecorder_StrokeBezierCurve";
          break;
        case 15:
          if (v47 != 15)
          {
            goto LABEL_333;
          }

          v282 = v3;
          v283 = a2;

          goto LABEL_418;
        case 16:
          if (v47 != 16)
          {
            goto LABEL_333;
          }

          v282 = v3;
          v283 = a2;

LABEL_418:
          WebKit::RemoteDisplayListRecorderProxy::strokePath(WebCore::Path const&)::$_0::operator()<WebCore::PathLineTo const&>(v282, v283);
          return;
        default:
          if (*(a2 + 52))
          {
            goto LABEL_333;
          }

LABEL_303:
          v321 = a2;
          v90 = *(v3 + 439);
          if (v90)
          {
            atomic_fetch_add(v90, 1u);
          }

          else
          {
            v288 = *(v3 + 440);
            if (!v288)
            {
              return;
            }

            v289 = *(v288 + 8);
            if (!v289)
            {
              return;
            }

            ++*(v289 + 5);
            v290 = WebKit::RemoteRenderingBackendProxy::connection(v289, v46, buf);
            v90 = *buf;
            if (*(v289 + 5) == 1)
            {
              (*(*v289 + 24))(v289, v290);
            }

            else
            {
              --*(v289 + 5);
            }

            if (!v90)
            {
              return;
            }

            WTF::RefPtr<IPC::StreamClientConnection,WTF::RawPtrTraits<IPC::StreamClientConnection>,WTF::DefaultRefDerefTraits<IPC::StreamClientConnection>>::operator=(v3 + 439, v90);
          }

          if ((*(v3 + 3584) & 1) == 0)
          {
            v284 = *(v3 + 443);
            if (v284)
            {
              WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteImageBufferProxy>(v284, *(v3 + 442), buf);
              if (*buf)
              {
                WebKit::RemoteImageBufferProxy::backingStoreWillChange(*buf, v312);
                v314 = *buf;
                *buf = 0;
                if (v314)
                {
                  WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::ImageBuffer,(WTF::DestructionThread)0>::deref((v314 + 8), v313);
                }
              }
            }

            *(v3 + 3584) = 1;
          }

          if (!IPC::StreamClientConnection::send<Messages::RemoteDisplayListRecorder::StrokePathSegment,WebKit::RemoteDisplayListRecorderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v90, &v321, *(v3 + 438)))
          {
            goto LABEL_138;
          }

          v135 = qword_1ED6410D0;
          if (!os_log_type_enabled(qword_1ED6410D0, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_414;
          }

          v136 = IPC::errorAsString();
          *buf = 136446466;
          v137 = "RemoteDisplayListRecorder_StrokePathSegment";
          goto LABEL_413;
      }

      goto LABEL_413;
    }

    if (v47 != 5)
    {
LABEL_333:
      mpark::throw_bad_variant_access(v45);
    }

    v15 = *(v3 + 439);
    if (v15)
    {
      atomic_fetch_add(v15, 1u);
    }

    else
    {
      v241 = *(v3 + 440);
      if (!v241)
      {
        return;
      }

      v242 = *(v241 + 8);
      if (!v242)
      {
        return;
      }

      ++*(v242 + 5);
      v243 = WebKit::RemoteRenderingBackendProxy::connection(v242, v46, buf);
      v15 = *buf;
      if (*(v242 + 5) == 1)
      {
        (*(*v242 + 24))(v242, v243);
      }

      else
      {
        --*(v242 + 5);
      }

      if (!v15)
      {
        return;
      }

      atomic_fetch_add(v15, 1u);
      v45 = *(v3 + 439);
      *(v3 + 439) = v15;
      if (v45 && atomic_fetch_add(v45, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v45);
        IPC::StreamClientConnection::operator delete(v45);
      }
    }

    if ((*(v3 + 3584) & 1) == 0)
    {
      v45 = *(v3 + 443);
      if (v45)
      {
        WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteImageBufferProxy>(v45, *(v3 + 442), buf);
        v45 = *buf;
        if (*buf)
        {
          v45 = WebKit::RemoteImageBufferProxy::backingStoreWillChange(*buf, v294);
          v296 = *buf;
          *buf = 0;
          if (v296)
          {
            v45 = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::ImageBuffer,(WTF::DestructionThread)0>::deref((v296 + 8), v295);
          }
        }
      }

      *(v3 + 3584) = 1;
    }

    v49 = *(v3 + 438);
    v50 = *(v15 + 128);
    v51 = INFINITY;
    if (fabs(v50) != INFINITY)
    {
      WTF::ApproximateTime::now(v45);
      v51 = v50 + v52;
    }

    if (*(v15 + 64) != v49)
    {
      IPC::StreamClientConnectionBuffer::tryAcquire(v15 + 72, buf, v51);
      if (buf[16] != 1)
      {
        goto LABEL_403;
      }

      v150 = *&buf[8];
      if (*&buf[8] <= 1uLL)
      {
        __break(0xC471u);
        JUMPOUT(0x19E1BF2D4);
      }

      v151 = *buf;
      **buf = 3198;
      v152 = v151 + 2;
      if (v150 - 2 < (-v152 & 7 | 8uLL))
      {
        goto LABEL_403;
      }

      v153 = -v152 & 7;
      *(v152 + v153) = v49;
      v154 = 6;
      if (v153 > 6)
      {
        v154 = v153;
      }

      v155 = v154 + 10;
      v156 = (*(v15 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
      v157 = *(v15 + 72);
      if (v156 + 16 >= v157)
      {
        v156 = 0;
      }

      v158 = v155 + v156;
      if (v157 <= v158)
      {
        v158 = 0;
      }

      *(v15 + 88) = v158;
      v159 = *(v15 + 80);
      if (*(v159 + 8) <= 0xFFuLL)
      {
        goto LABEL_491;
      }

      v160 = atomic_exchange((*(v159 + 16) + 128), v158);
      v161 = *(v15 + 124);
      if (v160 == 0x80000000 || v161)
      {
        v176 = v161 + 1;
        *(v15 + 124) = v176;
        if (v176 >= *(v15 + 120))
        {
          if (*(v15 + 112) == 1)
          {
            MEMORY[0x19EB16320](*(v15 + 100));
          }

          *(v15 + 124) = 0;
        }
      }

      *(v15 + 64) = v49;
    }

    IPC::StreamClientConnectionBuffer::tryAcquire(v15 + 72, buf, v51);
    if (buf[16])
    {
      v54 = *&buf[8];
      if (*&buf[8] <= 1uLL)
      {
        __break(0xC471u);
        JUMPOUT(0x19E1BF1D8);
      }

      v55 = *buf;
      **buf = 1135;
      v56 = v55 + 2;
      v57 = -v56 & 3 | 4;
      v58 = v54 - 2 - v57;
      if (v54 - 2 >= v57)
      {
        *(v56 + (-v56 & 3)) = *a2;
        v59 = v56 + v57;
        v60 = -v59 & 3 | 4;
        v36 = v58 >= v60;
        v61 = v58 - v60;
        if (v36)
        {
          *(v59 + (-v59 & 3)) = *(a2 + 1);
          v62 = v59 + v60;
          v63 = -v62 & 3 | 4;
          v64 = v61 - v63;
          if (v61 >= v63)
          {
            *(v62 + (-v62 & 3)) = *(a2 + 2);
            v65 = v62 + v63;
            v66 = -(v62 + v63);
            v67 = v66 & 3 | 4;
            v68 = v64 - v67;
            if (v64 >= v67)
            {
              *(v65 + (v66 & 3)) = *(a2 + 3);
              v69 = v65 + v67;
              v70 = -v69 & 3 | 4;
              if (v68 >= v70)
              {
                v71 = -v69 & 3;
                *(v69 + v71) = *(a2 + 4);
                if (v68 != v70)
                {
                  *(v69 + v70) = *(a2 + 20);
                  v72 = v54 - v68 + v71 + 5;
                  goto LABEL_72;
                }
              }
            }
          }
        }
      }

      if ((buf[16] & 1) == 0)
      {
        goto LABEL_491;
      }

      if (*&buf[8] <= 1uLL)
      {
        __break(0xC471u);
        JUMPOUT(0x19E1BF374);
      }

      **buf = 3197;
      v212 = (*(v15 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
      v213 = *(v15 + 72);
      if (v212 + 16 >= v213)
      {
        v212 = 0;
      }

      v214 = v212 + 16;
      v215 = v213 <= v214 ? 0 : v214;
      *(v15 + 88) = v215;
      v216 = *(v15 + 80);
      if (*(v216 + 8) <= 0xFFuLL)
      {
        goto LABEL_491;
      }

      atomic_exchange((*(v216 + 16) + 128), v215);
      *(v15 + 124) = 0;
      v217 = *(v15 + 8);
      v218 = IPC::Encoder::operator new(0x238, v53);
      *v218 = 1135;
      *(v218 + 2) = 0;
      *(v218 + 3) = 0;
      *(v218 + 1) = v49;
      *(v218 + 68) = 0;
      *(v218 + 70) = 0;
      *(v218 + 69) = 0;
      IPC::Encoder::encodeHeader(v218);
      v321 = v218;
      IPC::ArgumentCoder<WebCore::PathArc,void>::encode(v218, a2);
      v220 = IPC::Connection::sendMessageImpl(v217, &v321, 1, 0);
      v221 = v321;
      v321 = 0;
      if (v221)
      {
        IPC::Encoder::~Encoder(v221, v219);
        bmalloc::api::tzoneFree(v245, v246);
      }

      if (!v220)
      {
        goto LABEL_84;
      }
    }

LABEL_403:
    v279 = qword_1ED6410D0;
    if (!os_log_type_enabled(qword_1ED6410D0, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_402;
    }

    v280 = IPC::errorAsString();
    *buf = 136446466;
    v281 = "RemoteDisplayListRecorder_StrokeArc";
    goto LABEL_401;
  }

  v4 = *(this + 167);
  if (!v4)
  {
    __break(0xC471u);
    goto LABEL_491;
  }

  v5 = &this[82][696 * v4];
  v6 = *(v5 - 552);
  if (!v6)
  {
    goto LABEL_145;
  }

  if ((v6 & 0xFFFFFFF3) != 0)
  {
LABEL_144:
    this = WebKit::RemoteDisplayListRecorderProxy::appendStateChangeItemIfNecessary(v3, a2);
LABEL_145:
    v12 = 0;
    v14 = 0;
    v13 = 0;
    v10 = 0;
    v9 = 0;
    goto LABEL_21;
  }

  this = (v5 - 320);
  if ((v6 & 4) != 0)
  {
    if (!*(v5 - 560))
    {
      v7 = *(v5 - 624);
      if ((v7 & 0x8000000000000) == 0)
      {
        if (*(v5 - 8))
        {
          v8 = *(v5 - 248);
          v9 = *(v5 - 624) & 0xFFFFFF00;
          if (v8 != v7)
          {
            if ((v8 & 0x8000000000000) != 0)
            {
              v291 = (v8 & 0xFFFFFFFFFFFFLL);
              if (atomic_fetch_add(v291, 0xFFFFFFFF) == 1)
              {
                atomic_store(1u, v291);
                v318 = v6;
                WTF::fastFree(v291, a2);
                v6 = v318;
                this = (v5 - 320);
              }
            }

            *(v5 - 248) = v7;
          }
        }

        else
        {
          v287 = *(v5 - 624);
          LODWORD(v7) = *(v5 - 552);
          this = std::optional<WebCore::GraphicsContextState>::operator=[abi:sn200100]<WebCore::GraphicsContextState&,void>(this, (v5 - 696));
          v6 = v7;
          LOBYTE(v7) = v287;
          v9 = v287 & 0xFFFFFF00;
        }

        v10 = 0x100000000;
        goto LABEL_14;
      }
    }

    goto LABEL_144;
  }

  LOBYTE(v7) = 0;
  v9 = 0;
  v10 = 0;
LABEL_14:
  if (v6 < 8)
  {
    v12 = 0;
    v11 = 0.0;
  }

  else
  {
    v11 = *(v5 - 548);
    if (*(v5 - 8))
    {
      if (*(v5 - 172) != v11)
      {
        *(v5 - 172) = v11;
      }
    }

    else
    {
      v286 = v7;
      v7 = v10;
      this = std::optional<WebCore::GraphicsContextState>::operator=[abi:sn200100]<WebCore::GraphicsContextState&,void>(this, (v5 - 696));
      v10 = v7;
      LOBYTE(v7) = v286;
    }

    v12 = 0x100000000;
  }

  *(v5 - 552) = 0;
  if ((*(v5 - 8) & 1) == 0)
  {
    goto LABEL_491;
  }

  *(v5 - 176) = 0;
  v13 = v7;
  v14 = LODWORD(v11);
LABEL_21:
  v321 = (v13 | v9 | v10);
  v322 = v14 | v12;
  if (((v10 | v12) & 0x100000000) == 0)
  {
    v319 = a2;
    v90 = *(v3 + 439);
    if (v90)
    {
      atomic_fetch_add(v90, 1u);
    }

    else
    {
      v276 = *(v3 + 440);
      if (!v276)
      {
        return;
      }

      v277 = *(v276 + 8);
      if (!v277)
      {
        return;
      }

      ++*(v277 + 5);
      v278 = WebKit::RemoteRenderingBackendProxy::connection(v277, a2, buf);
      v90 = *buf;
      if (*(v277 + 5) == 1)
      {
        (*(*v277 + 24))(v277, v278);
      }

      else
      {
        --*(v277 + 5);
      }

      if (!v90)
      {
        return;
      }

      WTF::RefPtr<IPC::StreamClientConnection,WTF::RawPtrTraits<IPC::StreamClientConnection>,WTF::DefaultRefDerefTraits<IPC::StreamClientConnection>>::operator=(v3 + 439, v90);
    }

    if ((*(v3 + 3584) & 1) == 0)
    {
      v285 = *(v3 + 443);
      if (v285)
      {
        WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteImageBufferProxy>(v285, *(v3 + 442), buf);
        if (*buf)
        {
          WebKit::RemoteImageBufferProxy::backingStoreWillChange(*buf, v306);
          v308 = *buf;
          *buf = 0;
          if (v308)
          {
            WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::ImageBuffer,(WTF::DestructionThread)0>::deref((v308 + 8), v307);
          }
        }
      }

      *(v3 + 3584) = 1;
    }

    if (!IPC::StreamClientConnection::send<Messages::RemoteDisplayListRecorder::StrokeLine,WebKit::RemoteDisplayListRecorderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v90, &v319, *(v3 + 438)))
    {
      goto LABEL_138;
    }

    v135 = qword_1ED6410D0;
    if (!os_log_type_enabled(qword_1ED6410D0, OS_LOG_TYPE_DEFAULT))
    {
LABEL_414:
      WebKit::RemoteDisplayListRecorderProxy::didBecomeUnresponsive(*(v3 + 440));
LABEL_138:
      if (atomic_fetch_add(v90, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v90);
        v89 = v90;
        goto LABEL_100;
      }

      return;
    }

    v136 = IPC::errorAsString();
    *buf = 136446466;
    v137 = "RemoteDisplayListRecorder_StrokeLine";
LABEL_413:
    *&buf[4] = v137;
    *&buf[12] = 2082;
    *&buf[14] = v136;
    _os_log_impl(&dword_19D52D000, v135, OS_LOG_TYPE_DEFAULT, "RemoteDisplayListRecorderProxy::send - failed, name:%{public}s, error:%{public}s", buf, 0x16u);
    goto LABEL_414;
  }

  v15 = *(v3 + 439);
  if (v15)
  {
    atomic_fetch_add(v15, 1u);
    goto LABEL_24;
  }

  v236 = *(v3 + 440);
  if (v236)
  {
    v237 = *(v236 + 8);
    if (v237)
    {
      ++*(v237 + 5);
      v238 = WebKit::RemoteRenderingBackendProxy::connection(v237, a2, buf);
      v15 = *buf;
      if (*(v237 + 5) == 1)
      {
        (*(*v237 + 24))(v237, v238);
      }

      else
      {
        --*(v237 + 5);
      }

      if (v15)
      {
        this = WTF::RefPtr<IPC::StreamClientConnection,WTF::RawPtrTraits<IPC::StreamClientConnection>,WTF::DefaultRefDerefTraits<IPC::StreamClientConnection>>::operator=(v3 + 439, v15);
LABEL_24:
        if ((*(v3 + 3584) & 1) == 0)
        {
          this = *(v3 + 443);
          if (this)
          {
            WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteImageBufferProxy>(this, *(v3 + 442), buf);
            this = *buf;
            if (*buf)
            {
              this = WebKit::RemoteImageBufferProxy::backingStoreWillChange(*buf, v315);
              v317 = *buf;
              *buf = 0;
              if (v317)
              {
                this = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::ImageBuffer,(WTF::DestructionThread)0>::deref((v317 + 8), v316);
              }
            }
          }

          *(v3 + 3584) = 1;
        }

        v16 = *(v3 + 438);
        v17 = *(v15 + 128);
        v18 = INFINITY;
        if (fabs(v17) != INFINITY)
        {
          WTF::ApproximateTime::now(this);
          v18 = v17 + v19;
        }

        if (*(v15 + 64) != v16)
        {
          IPC::StreamClientConnectionBuffer::tryAcquire(v15 + 72, buf, v18);
          if (buf[16] != 1)
          {
            goto LABEL_399;
          }

          v138 = *&buf[8];
          if (*&buf[8] <= 1uLL)
          {
            __break(0xC471u);
            JUMPOUT(0x19E1BF2B4);
          }

          v139 = *buf;
          **buf = 3198;
          v140 = v139 + 2;
          if (v138 - 2 < (-v140 & 7 | 8uLL))
          {
            goto LABEL_399;
          }

          v141 = -v140 & 7;
          *(v140 + v141) = v16;
          v142 = 6;
          if (v141 > 6)
          {
            v142 = v141;
          }

          v143 = v142 + 10;
          v144 = (*(v15 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
          v145 = *(v15 + 72);
          if (v144 + 16 >= v145)
          {
            v144 = 0;
          }

          v146 = v143 + v144;
          if (v145 <= v146)
          {
            v146 = 0;
          }

          *(v15 + 88) = v146;
          v147 = *(v15 + 80);
          if (*(v147 + 8) <= 0xFFuLL)
          {
            goto LABEL_491;
          }

          v148 = atomic_exchange((*(v147 + 16) + 128), v146);
          v149 = *(v15 + 124);
          if (v148 == 0x80000000 || v149)
          {
            v175 = v149 + 1;
            *(v15 + 124) = v175;
            if (v175 >= *(v15 + 120))
            {
              if (*(v15 + 112) == 1)
              {
                MEMORY[0x19EB16320](*(v15 + 100));
              }

              *(v15 + 124) = 0;
            }
          }

          *(v15 + 64) = v16;
        }

        IPC::StreamClientConnectionBuffer::tryAcquire(v15 + 72, buf, v18);
        if (buf[16])
        {
          v21 = *&buf[8];
          if (*&buf[8] <= 1uLL)
          {
LABEL_492:
            __break(0xC471u);
            goto LABEL_534;
          }

          v22 = *buf;
          **buf = 1140;
          v23 = v22 + 2;
          v24 = -v23 & 3 | 0x10;
          if (v21 - 2 < v24)
          {
            v26 = 0;
            v25 = 0;
          }

          else
          {
            *(v23 + (-v23 & 3)) = *a2;
            v25 = v21 - 2 - v24;
            v26 = (v23 + v24);
          }

          if (BYTE4(v321))
          {
            v27 = v25 - 1;
            if (v25)
            {
              v28 = v26 + 1;
              v29 = -(v26 + 1);
              v30 = v29 & 3 | 4;
              v31 = v27 - v30;
              if (v27 >= v30)
              {
                *v26 = 1;
                *&v28[v29 & 3] = v321;
                v32 = &v28[v30];
                goto LABEL_36;
              }
            }

            if (v25)
            {
              *v26 = 1;
              v292 = v26 + 1;
              v293 = -v292 & 3 | 4;
              v31 = v27 - v293;
              if (v27 >= v293)
              {
                *&v292[-v292 & 3] = v321;
                v32 = &v292[v293];
                goto LABEL_36;
              }
            }
          }

          else if (v25)
          {
            *v26 = 0;
            v32 = v26 + 1;
            v31 = v25 - 1;
            goto LABEL_36;
          }

          v32 = 0;
          v31 = 0;
LABEL_36:
          if ((v322 & 0x100000000) != 0)
          {
            if (!v31)
            {
              goto LABEL_255;
            }

            *v32 = 1;
            v33 = v32 + 1;
            v34 = v31 - 1;
            v35 = -v33 & 3 | 4;
            v36 = v34 >= v35;
            v37 = v34 - v35;
            if (!v36)
            {
              goto LABEL_255;
            }

            *&v33[-v33 & 3] = v322;
          }

          else
          {
            if (!v31)
            {
LABEL_255:
              if (buf[16])
              {
                if (*&buf[8] <= 1uLL)
                {
                  __break(0xC471u);
                  JUMPOUT(0x19E1BF354);
                }

                **buf = 3197;
                v202 = (*(v15 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
                v203 = *(v15 + 72);
                if (v202 + 16 >= v203)
                {
                  v202 = 0;
                }

                v204 = v202 + 16;
                v205 = v203 <= v204 ? 0 : v204;
                *(v15 + 88) = v205;
                v206 = *(v15 + 80);
                if (*(v206 + 8) > 0xFFuLL)
                {
                  atomic_exchange((*(v206 + 16) + 128), v205);
                  *(v15 + 124) = 0;
                  v207 = *(v15 + 8);
                  v208 = IPC::Encoder::operator new(0x238, v20);
                  *v208 = 1140;
                  *(v208 + 2) = 0;
                  *(v208 + 3) = 0;
                  *(v208 + 1) = v16;
                  *(v208 + 68) = 0;
                  *(v208 + 70) = 0;
                  *(v208 + 69) = 0;
                  IPC::Encoder::encodeHeader(v208);
                  v319 = v208;
                  IPC::ArgumentCoder<std::span<float const,4ul>,void>::encode<IPC::Encoder>(v208, a2);
                  if (BYTE4(v321))
                  {
                    v320 = 1;
                    IPC::Encoder::operator<<<BOOL>(v208, &v320);
                    IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v208, v321);
                  }

                  else
                  {
                    v320 = 0;
                    IPC::Encoder::operator<<<BOOL>(v208, &v320);
                  }

                  IPC::ArgumentCoder<std::optional<float>,void>::encode<IPC::Encoder,std::optional<float> const&>(v208, &v322);
                  v210 = IPC::Connection::sendMessageImpl(v207, &v319, 1, 0);
                  v211 = v319;
                  v319 = 0;
                  if (v211)
                  {
                    IPC::Encoder::~Encoder(v211, v209);
                    bmalloc::api::tzoneFree(v239, v240);
                  }

                  if (!v210)
                  {
                    goto LABEL_84;
                  }

                  goto LABEL_399;
                }
              }

              goto LABEL_491;
            }

            *v32 = 0;
            v37 = v31 - 1;
          }

          v38 = v21 - v37;
          if (v38 <= 0x10)
          {
            v38 = 16;
          }

          v39 = (*(v15 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
          v40 = *(v15 + 72);
          if (v39 + 16 >= v40)
          {
            v39 = 0;
          }

          v41 = v39 + v38;
          if (v40 <= v41)
          {
            v41 = 0;
          }

          *(v15 + 88) = v41;
          v42 = *(v15 + 80);
          if (*(v42 + 8) > 0xFFuLL)
          {
            v43 = atomic_exchange((*(v42 + 16) + 128), v41);
            v44 = *(v15 + 124);
            if (v43 != 0x80000000 && !v44)
            {
              goto LABEL_84;
            }

LABEL_83:
            v79 = v44 + 1;
            *(v15 + 124) = v79;
            if (v79 >= *(v15 + 120))
            {
              if (*(v15 + 112) == 1)
              {
                MEMORY[0x19EB16320](*(v15 + 100));
              }

              *(v15 + 124) = 0;
            }

            goto LABEL_84;
          }

          goto LABEL_491;
        }

LABEL_399:
        v279 = qword_1ED6410D0;
        if (!os_log_type_enabled(qword_1ED6410D0, OS_LOG_TYPE_DEFAULT))
        {
LABEL_402:
          WebKit::RemoteDisplayListRecorderProxy::didBecomeUnresponsive(*(v3 + 440));
LABEL_84:
          if (atomic_fetch_add(v15, 0xFFFFFFFF) != 1)
          {
            return;
          }

          atomic_store(1u, v15);
          v89 = v15;
LABEL_100:
          IPC::StreamClientConnection::operator delete(v89);
          return;
        }

        v280 = IPC::errorAsString();
        *buf = 136446466;
        v281 = "RemoteDisplayListRecorder_StrokeLineWithColorAndThickness";
LABEL_401:
        *&buf[4] = v281;
        *&buf[12] = 2082;
        *&buf[14] = v280;
        _os_log_impl(&dword_19D52D000, v279, OS_LOG_TYPE_DEFAULT, "RemoteDisplayListRecorderProxy::send - failed, name:%{public}s, error:%{public}s", buf, 0x16u);
        goto LABEL_402;
      }
    }
  }
}