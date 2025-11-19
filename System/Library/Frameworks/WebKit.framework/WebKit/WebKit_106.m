void WebKit::RemoteRenderingBackend::releaseImageBufferSet(uint64_t a1, uint64_t a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = (a1 + 152);
  v3 = *(a1 + 152);
  if (!v3)
  {
    goto LABEL_20;
  }

  if (a2 == -1)
  {
    __break(0xC471u);
    JUMPOUT(0x19DB5C274);
  }

  if (!a2)
  {
    __break(0xC471u);
    goto LABEL_30;
  }

  v5 = *(v3 - 8);
  v6 = (~(a2 << 32) + a2) ^ ((~(a2 << 32) + a2) >> 22);
  v7 = 9 * ((v6 + ~(v6 << 13)) ^ ((v6 + ~(v6 << 13)) >> 8));
  v8 = (v7 ^ (v7 >> 15)) + ~((v7 ^ (v7 >> 15)) << 27);
  v9 = v5 & ((v8 >> 31) ^ v8);
  v10 = *(v3 + 16 * v9);
  if (v10 != a2)
  {
    v18 = 1;
    while (v10)
    {
      v9 = (v9 + v18) & v5;
      v10 = *(v3 + 16 * v9);
      ++v18;
      if (v10 == a2)
      {
        goto LABEL_5;
      }
    }

    v9 = *(v3 - 4);
  }

LABEL_5:
  if (v9 == *(v3 - 4))
  {
LABEL_20:
    v21 = 0;
    *buf = 0;
    IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteImageBufferSet,WTF::RefPtr<WebKit::RemoteImageBufferSet,WTF::RawPtrTraits<WebKit::RemoteImageBufferSet>,WTF::DefaultRefDerefTraits<WebKit::RemoteImageBufferSet>>>::~ScopedActiveMessageReceiveQueue(buf);
    IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteImageBufferSet,WTF::RefPtr<WebKit::RemoteImageBufferSet,WTF::RawPtrTraits<WebKit::RemoteImageBufferSet>,WTF::DefaultRefDerefTraits<WebKit::RemoteImageBufferSet>>>::~ScopedActiveMessageReceiveQueue(&v21);
LABEL_21:
    v19 = qword_1ED6416C8;
    if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446210;
      *&buf[4] = "void WebKit::RemoteRenderingBackend::releaseImageBufferSet(RemoteImageBufferSetIdentifier)";
      _os_log_fault_impl(&dword_19D52D000, v19, OS_LOG_TYPE_FAULT, "/Library/Caches/com.apple.xbs/Sources/WebKit/Source/WebKit/GPUProcess/graphics/RemoteRenderingBackend.cpp 331: Invalid message dispatched %{public}s: Missing ImageBufferSet", buf, 0xCu);
    }

    v20 = *(*(a1 + 48) + 56);
    if (v20)
    {
      *(v20 + 94) = 1;
    }

    if (IPC::s_shouldCrashOnMessageCheckFailure != 1)
    {
      return;
    }

    __break(0xC471u);
LABEL_30:
    JUMPOUT(0x19DB5C208);
  }

  v11 = v3 + 16 * v9;
  v12 = *(v11 + 8);
  v21 = v12;
  *(v11 + 8) = 0;
  v13 = *v4;
  if (!*v4 || (v13 += 16 * *(v13 - 4), v13 != v11))
  {
    if (v13 != v11)
    {
      *v11 = -1;
      IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteImageBufferSet,WTF::RefPtr<WebKit::RemoteImageBufferSet,WTF::RawPtrTraits<WebKit::RemoteImageBufferSet>,WTF::DefaultRefDerefTraits<WebKit::RemoteImageBufferSet>>>::~ScopedActiveMessageReceiveQueue((v11 + 8));
      v14 = *v4;
      v15 = vadd_s32(*(*v4 - 16), 0xFFFFFFFF00000001);
      *(v14 - 16) = v15;
      v16 = *(v14 - 4);
      if (6 * v15.i32[1] < v16 && v16 >= 9)
      {
        WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteImageBufferSet,WTF::RefPtr<WebKit::RemoteImageBufferSet,WTF::RawPtrTraits<WebKit::RemoteImageBufferSet>,WTF::DefaultRefDerefTraits<WebKit::RemoteImageBufferSet>>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteImageBufferSet,WTF::RefPtr<WebKit::RemoteImageBufferSet,WTF::RawPtrTraits<WebKit::RemoteImageBufferSet>,WTF::DefaultRefDerefTraits<WebKit::RemoteImageBufferSet>>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteImageBufferSet,WTF::RefPtr<WebKit::RemoteImageBufferSet,WTF::RawPtrTraits<WebKit::RemoteImageBufferSet>,WTF::DefaultRefDerefTraits<WebKit::RemoteImageBufferSet>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteImageBufferSet,WTF::RefPtr<WebKit::RemoteImageBufferSet,WTF::RawPtrTraits<WebKit::RemoteImageBufferSet>,WTF::DefaultRefDerefTraits<WebKit::RemoteImageBufferSet>>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(v4, v16 >> 1);
      }
    }
  }

  IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteImageBufferSet,WTF::RefPtr<WebKit::RemoteImageBufferSet,WTF::RawPtrTraits<WebKit::RemoteImageBufferSet>,WTF::DefaultRefDerefTraits<WebKit::RemoteImageBufferSet>>>::~ScopedActiveMessageReceiveQueue(&v21);
  if (!v12)
  {
    goto LABEL_21;
  }
}

atomic_uint *WebKit::RemoteRenderingBackend::destroyGetPixelBufferSharedMemory(WebKit::RemoteRenderingBackend *this)
{
  result = *(this + 17);
  *(this + 17) = 0;
  if (result)
  {
    return WTF::ThreadSafeRefCounted<WebCore::SharedMemory,(WTF::DestructionThread)0>::deref(result);
  }

  return result;
}

WTF *WebKit::RemoteRenderingBackend::cacheNativeImage(uint64_t a1)
{
  WebCore::ShareableBitmap::create();
  result = v28;
  if (v28)
  {
    WebCore::ShareableBitmap::createPlatformImage();
    WebCore::NativeImage::create();
    v4 = cf;
    cf = 0;
    if (v4)
    {
      goto LABEL_28;
    }

    while (1)
    {
      v5 = v27;
      if (!v27)
      {
        break;
      }

      v26 = v27;
      v27 = 0;
      if (v5[5])
      {
        v6 = v5[4];
        v9 = *(a1 + 72);
        v8 = (a1 + 72);
        v7 = v9;
        if (!v9)
        {
          WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::NativeImage,WTF::RawPtrTraits<WebCore::NativeImage>,WTF::DefaultRefDerefTraits<WebCore::NativeImage>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::NativeImage,WTF::RawPtrTraits<WebCore::NativeImage>,WTF::DefaultRefDerefTraits<WebCore::NativeImage>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::NativeImage,WTF::RawPtrTraits<WebCore::NativeImage>,WTF::DefaultRefDerefTraits<WebCore::NativeImage>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebCore::NativeImage,WTF::RawPtrTraits<WebCore::NativeImage>,WTF::DefaultRefDerefTraits<WebCore::NativeImage>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(v8);
          v7 = *v8;
        }

        v10 = *(v7 - 8);
        v11 = &v6[~(v6 << 32)] ^ (&v6[~(v6 << 32)] >> 22);
        v12 = 9 * ((v11 + ~(v11 << 13)) ^ ((v11 + ~(v11 << 13)) >> 8));
        v13 = (v12 ^ (v12 >> 15)) + ~((v12 ^ (v12 >> 15)) << 27);
        v14 = v10 & ((v13 >> 31) ^ v13);
        v15 = (v7 + 16 * v14);
        v16 = *v15;
        if (*v15)
        {
          v17 = 0;
          v18 = 1;
          while (v16 != v6)
          {
            if (v16 == -1)
            {
              v17 = v15;
            }

            v14 = (v14 + v18) & v10;
            v15 = (v7 + 16 * v14);
            v16 = *v15;
            ++v18;
            if (!*v15)
            {
              if (v17)
              {
                *v17 = 0;
                v17[1] = 0;
                --*(*v8 - 16);
                v15 = v17;
              }

              goto LABEL_15;
            }
          }

          goto LABEL_19;
        }

LABEL_15:
        v19 = v15[1];
        *v15 = v6;
        v15[1] = v5;
        v26 = 0;
        v29 = 0;
        cf = v19;
        WTF::Ref<WebCore::Gradient,WTF::RawPtrTraits<WebCore::Gradient>,WTF::DefaultRefDerefTraits<WebCore::Gradient>>::~Ref(&cf, v3);
        WTF::Ref<WebCore::Gradient,WTF::RawPtrTraits<WebCore::Gradient>,WTF::DefaultRefDerefTraits<WebCore::Gradient>>::~Ref(&v29, v20);
        v21 = *v8;
        if (*v8)
        {
          v22 = *(v21 - 12) + 1;
        }

        else
        {
          v22 = 1;
        }

        *(v21 - 12) = v22;
        v23 = (*(v21 - 16) + v22);
        v24 = *(v21 - 4);
        if (v24 > 0x400)
        {
          if (v24 <= 2 * v23)
          {
            goto LABEL_25;
          }
        }

        else
        {
          if (3 * v24 > 4 * v23)
          {
            goto LABEL_19;
          }

LABEL_25:
          WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::NativeImage,WTF::RawPtrTraits<WebCore::NativeImage>,WTF::DefaultRefDerefTraits<WebCore::NativeImage>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::NativeImage,WTF::RawPtrTraits<WebCore::NativeImage>,WTF::DefaultRefDerefTraits<WebCore::NativeImage>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::NativeImage,WTF::RawPtrTraits<WebCore::NativeImage>,WTF::DefaultRefDerefTraits<WebCore::NativeImage>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebCore::NativeImage,WTF::RawPtrTraits<WebCore::NativeImage>,WTF::DefaultRefDerefTraits<WebCore::NativeImage>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(v8);
        }

LABEL_19:
        WTF::Ref<WebCore::Gradient,WTF::RawPtrTraits<WebCore::Gradient>,WTF::DefaultRefDerefTraits<WebCore::Gradient>>::~Ref(&v26, v3);
        v25 = v27;
        v27 = 0;
        if (v25)
        {
          WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::RenderingResource,(WTF::DestructionThread)0>::deref(v25 + 1, v3);
        }

        break;
      }

      __break(1u);
LABEL_28:
      CFRelease(v4);
    }

    result = v28;
    v28 = 0;
    if (result)
    {
      return WTF::ThreadSafeRefCounted<WebCore::ShareableBitmap,(WTF::DestructionThread)0>::deref(result, v3);
    }
  }

  return result;
}

void WebKit::RemoteRenderingBackend::releaseNativeImage(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = (a1 + 72);
  v3 = *(a1 + 72);
  if (!v3)
  {
    goto LABEL_12;
  }

  v5 = *(v3 - 8);
  v6 = (a2 + ~(a2 << 32)) ^ ((a2 + ~(a2 << 32)) >> 22);
  v7 = 9 * ((v6 + ~(v6 << 13)) ^ ((v6 + ~(v6 << 13)) >> 8));
  v8 = (v7 ^ (v7 >> 15)) + ~((v7 ^ (v7 >> 15)) << 27);
  v9 = v5 & ((v8 >> 31) ^ v8);
  v10 = *(v3 + 16 * v9);
  if (v10 != a2)
  {
    v11 = 1;
    while (v10)
    {
      v9 = (v9 + v11) & v5;
      v10 = *(v3 + 16 * v9);
      ++v11;
      if (v10 == a2)
      {
        goto LABEL_6;
      }
    }

    v9 = *(v3 - 4);
  }

LABEL_6:
  if (v9 == *(v3 - 4))
  {
LABEL_12:
    v17 = qword_1ED6416C8;
    if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_FAULT))
    {
      v19 = 136446210;
      v20 = "void WebKit::RemoteRenderingBackend::releaseNativeImage(RenderingResourceIdentifier)";
      _os_log_fault_impl(&dword_19D52D000, v17, OS_LOG_TYPE_FAULT, "/Library/Caches/com.apple.xbs/Sources/WebKit/Source/WebKit/GPUProcess/graphics/RemoteRenderingBackend.cpp 359: Invalid message dispatched %{public}s: NativeImage released before being cached.", &v19, 0xCu);
    }

    v18 = *(*(a1 + 48) + 56);
    if (v18)
    {
      *(v18 + 94) = 1;
    }

    if (IPC::s_shouldCrashOnMessageCheckFailure == 1)
    {
      __break(0xC471u);
      JUMPOUT(0x19DB5C5F8);
    }
  }

  else
  {
    v12 = v3 + 16 * v9;
    *v12 = -1;
    WTF::Ref<WebCore::Gradient,WTF::RawPtrTraits<WebCore::Gradient>,WTF::DefaultRefDerefTraits<WebCore::Gradient>>::~Ref((v12 + 8), a2);
    v13 = *v4;
    v14 = vadd_s32(*(*v4 - 16), 0xFFFFFFFF00000001);
    *(v13 - 16) = v14;
    v15 = *(v13 - 4);
    if (6 * v14.i32[1] < v15 && v15 >= 9)
    {

      WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::NativeImage,WTF::RawPtrTraits<WebCore::NativeImage>,WTF::DefaultRefDerefTraits<WebCore::NativeImage>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::NativeImage,WTF::RawPtrTraits<WebCore::NativeImage>,WTF::DefaultRefDerefTraits<WebCore::NativeImage>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::NativeImage,WTF::RawPtrTraits<WebCore::NativeImage>,WTF::DefaultRefDerefTraits<WebCore::NativeImage>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebCore::NativeImage,WTF::RawPtrTraits<WebCore::NativeImage>,WTF::DefaultRefDerefTraits<WebCore::NativeImage>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(v4, v15 >> 1);
    }
  }
}

void WebKit::RemoteRenderingBackend::cacheFont(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v34 = *MEMORY[0x1E69E9840];
  if ((a5 & 1) == 0)
  {
    v6 = 0;
    goto LABEL_3;
  }

  v26 = WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::FontCustomPlatformData,WTF::RawPtrTraits<WebCore::FontCustomPlatformData>,WTF::DefaultRefDerefTraits<WebCore::FontCustomPlatformData>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebCore::FontCustomPlatformData,WTF::RawPtrTraits<WebCore::FontCustomPlatformData>,WTF::DefaultRefDerefTraits<WebCore::FontCustomPlatformData>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::FontCustomPlatformData,WTF::RawPtrTraits<WebCore::FontCustomPlatformData>,WTF::DefaultRefDerefTraits<WebCore::FontCustomPlatformData>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebCore::FontCustomPlatformData,WTF::RawPtrTraits<WebCore::FontCustomPlatformData>,WTF::DefaultRefDerefTraits<WebCore::FontCustomPlatformData>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a1[14], a4);
  if (v26)
  {
    v6 = v26;
    ++*v26;
LABEL_3:
    WebCore::FontPlatformData::create();
    WebCore::Font::create();
    v7 = WebCore::Font::renderingResourceIdentifier(v29);
    v10 = a1[13];
    v9 = a1 + 13;
    v8 = v10;
    if (!v10)
    {
      WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::Font,WTF::RawPtrTraits<WebCore::Font>,WTF::DefaultRefDerefTraits<WebCore::Font>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::Font,WTF::RawPtrTraits<WebCore::Font>,WTF::DefaultRefDerefTraits<WebCore::Font>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::Font,WTF::RawPtrTraits<WebCore::Font>,WTF::DefaultRefDerefTraits<WebCore::Font>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebCore::Font,WTF::RawPtrTraits<WebCore::Font>,WTF::DefaultRefDerefTraits<WebCore::Font>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(v9);
      v8 = *v9;
    }

    v11 = *(v8 - 8);
    v12 = (v7 + ~(v7 << 32)) ^ ((v7 + ~(v7 << 32)) >> 22);
    v13 = 9 * ((v12 + ~(v12 << 13)) ^ ((v12 + ~(v12 << 13)) >> 8));
    v14 = (v13 ^ (v13 >> 15)) + ~((v13 ^ (v13 >> 15)) << 27);
    v15 = v11 & ((v14 >> 31) ^ v14);
    v16 = (v8 + 16 * v15);
    v17 = *v16;
    if (*v16)
    {
      v18 = 0;
      v19 = 1;
      while (v17 != v7)
      {
        if (v17 == -1)
        {
          v18 = v16;
        }

        v15 = (v15 + v19) & v11;
        v16 = (v8 + 16 * v15);
        v17 = *v16;
        ++v19;
        if (!*v16)
        {
          if (v18)
          {
            *v18 = 0;
            v18[1] = 0;
            --*(*v9 - 16);
            v16 = v18;
          }

          goto LABEL_13;
        }
      }

      goto LABEL_17;
    }

LABEL_13:
    *v16 = v7;
    v20 = v29;
    v29 = 0;
    v30 = 0;
    v21 = v16[1];
    v16[1] = v20;
    v31 = v21;
    WTF::Ref<WebCore::Font,WTF::RawPtrTraits<WebCore::Font>,WTF::DefaultRefDerefTraits<WebCore::Font>>::~Ref(&v31);
    WTF::Ref<WebCore::Font,WTF::RawPtrTraits<WebCore::Font>,WTF::DefaultRefDerefTraits<WebCore::Font>>::~Ref(&v30);
    v22 = *v9;
    if (*v9)
    {
      v23 = *(v22 - 12) + 1;
    }

    else
    {
      v23 = 1;
    }

    *(v22 - 12) = v23;
    v24 = (*(v22 - 16) + v23);
    v25 = *(v22 - 4);
    if (v25 > 0x400)
    {
      if (v25 > 2 * v24)
      {
        goto LABEL_17;
      }
    }

    else if (3 * v25 > 4 * v24)
    {
      goto LABEL_17;
    }

    WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::Font,WTF::RawPtrTraits<WebCore::Font>,WTF::DefaultRefDerefTraits<WebCore::Font>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::Font,WTF::RawPtrTraits<WebCore::Font>,WTF::DefaultRefDerefTraits<WebCore::Font>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::Font,WTF::RawPtrTraits<WebCore::Font>,WTF::DefaultRefDerefTraits<WebCore::Font>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebCore::Font,WTF::RawPtrTraits<WebCore::Font>,WTF::DefaultRefDerefTraits<WebCore::Font>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(v9);
LABEL_17:
    WTF::Ref<WebCore::Font,WTF::RawPtrTraits<WebCore::Font>,WTF::DefaultRefDerefTraits<WebCore::Font>>::~Ref(&v29);
    WebCore::FontPlatformData::~FontPlatformData(buf);
    if (v6)
    {
      WTF::RefCounted<WebCore::FontCustomPlatformData>::deref(v6);
    }

    return;
  }

  v27 = qword_1ED6416C8;
  if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_FAULT))
  {
    *buf = 136446210;
    v33 = "void WebKit::RemoteRenderingBackend::cacheFont(const Font::Attributes &, FontPlatformDataAttributes, std::optional<RenderingResourceIdentifier>)";
    _os_log_fault_impl(&dword_19D52D000, v27, OS_LOG_TYPE_FAULT, "/Library/Caches/com.apple.xbs/Sources/WebKit/Source/WebKit/GPUProcess/graphics/RemoteRenderingBackend.cpp 369: Invalid message dispatched %{public}s: CacheFont without caching custom data", buf, 0xCu);
  }

  v28 = *(a1[6] + 56);
  if (v28)
  {
    *(v28 + 94) = 1;
  }

  if (IPC::s_shouldCrashOnMessageCheckFailure == 1)
  {
    __break(0xC471u);
    JUMPOUT(0x19DB5C8E8);
  }
}

void WebKit::RemoteRenderingBackend::releaseFont(uint64_t a1, uint64_t a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = (a1 + 104);
  v3 = *(a1 + 104);
  if (!v3)
  {
    goto LABEL_15;
  }

  v5 = *(v3 - 8);
  v6 = (~(a2 << 32) + a2) ^ ((~(a2 << 32) + a2) >> 22);
  v7 = 9 * ((v6 + ~(v6 << 13)) ^ ((v6 + ~(v6 << 13)) >> 8));
  v8 = (v7 ^ (v7 >> 15)) + ~((v7 ^ (v7 >> 15)) << 27);
  v9 = v5 & ((v8 >> 31) ^ v8);
  v10 = *(v3 + 16 * v9);
  if (v10 != a2)
  {
    v11 = 1;
    while (v10)
    {
      v9 = (v9 + v11) & v5;
      v10 = *(v3 + 16 * v9);
      ++v11;
      if (v10 == a2)
      {
        goto LABEL_6;
      }
    }

    v9 = *(v3 - 4);
  }

LABEL_6:
  if (v9 == *(v3 - 4))
  {
LABEL_15:
    v17 = qword_1ED6416C8;
    if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_FAULT))
    {
      v19 = 136446210;
      v20 = "void WebKit::RemoteRenderingBackend::releaseFont(WebCore::RenderingResourceIdentifier)";
      _os_log_fault_impl(&dword_19D52D000, v17, OS_LOG_TYPE_FAULT, "/Library/Caches/com.apple.xbs/Sources/WebKit/Source/WebKit/GPUProcess/graphics/RemoteRenderingBackend.cpp 383: Invalid message dispatched %{public}s: Font released before being cached.", &v19, 0xCu);
    }

    v18 = *(*(a1 + 48) + 56);
    if (v18)
    {
      *(v18 + 94) = 1;
    }

    if (IPC::s_shouldCrashOnMessageCheckFailure == 1)
    {
      __break(0xC471u);
      JUMPOUT(0x19DB5CACCLL);
    }
  }

  else
  {
    v12 = v3 + 16 * v9;
    *v12 = -1;
    WTF::Ref<WebCore::Font,WTF::RawPtrTraits<WebCore::Font>,WTF::DefaultRefDerefTraits<WebCore::Font>>::~Ref((v12 + 8));
    v13 = *v4;
    v14 = vadd_s32(*(*v4 - 16), 0xFFFFFFFF00000001);
    *(v13 - 16) = v14;
    v15 = *(v13 - 4);
    if (6 * v14.i32[1] < v15 && v15 >= 9)
    {

      WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::Font,WTF::RawPtrTraits<WebCore::Font>,WTF::DefaultRefDerefTraits<WebCore::Font>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::Font,WTF::RawPtrTraits<WebCore::Font>,WTF::DefaultRefDerefTraits<WebCore::Font>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::Font,WTF::RawPtrTraits<WebCore::Font>,WTF::DefaultRefDerefTraits<WebCore::Font>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebCore::Font,WTF::RawPtrTraits<WebCore::Font>,WTF::DefaultRefDerefTraits<WebCore::Font>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(v4, v15 >> 1);
    }
  }
}

void WebKit::RemoteRenderingBackend::cacheFontCustomPlatformData(uint64_t a1)
{
  v27 = *MEMORY[0x1E69E9840];
  WebCore::FontCustomPlatformData::tryMakeFromSerializationData();
  if (v24)
  {
    v2 = *(v23 + 4);
    v5 = *(a1 + 112);
    v4 = (a1 + 112);
    v3 = v5;
    if (!v5)
    {
      WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::FontCustomPlatformData,WTF::RawPtrTraits<WebCore::FontCustomPlatformData>,WTF::DefaultRefDerefTraits<WebCore::FontCustomPlatformData>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::FontCustomPlatformData,WTF::RawPtrTraits<WebCore::FontCustomPlatformData>,WTF::DefaultRefDerefTraits<WebCore::FontCustomPlatformData>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::FontCustomPlatformData,WTF::RawPtrTraits<WebCore::FontCustomPlatformData>,WTF::DefaultRefDerefTraits<WebCore::FontCustomPlatformData>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebCore::FontCustomPlatformData,WTF::RawPtrTraits<WebCore::FontCustomPlatformData>,WTF::DefaultRefDerefTraits<WebCore::FontCustomPlatformData>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(v4);
      v3 = *v4;
    }

    v6 = *(v3 - 8);
    v7 = (v2 + ~(v2 << 32)) ^ ((v2 + ~(v2 << 32)) >> 22);
    v8 = 9 * ((v7 + ~(v7 << 13)) ^ ((v7 + ~(v7 << 13)) >> 8));
    v9 = (v8 ^ (v8 >> 15)) + ~((v8 ^ (v8 >> 15)) << 27);
    v10 = v6 & ((v9 >> 31) ^ v9);
    v11 = (v3 + 16 * v10);
    v12 = *v11;
    if (!*v11)
    {
LABEL_12:
      *v11 = v2;
      v15 = v23;
      v23 = 0;
      v16 = v11[1];
      v11[1] = v15;
      if (v16)
      {
        WTF::RefCounted<WebCore::FontCustomPlatformData>::deref(v16);
      }

      v17 = *v4;
      if (*v4)
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
        if (v20 > 2 * v19)
        {
          goto LABEL_20;
        }
      }

      else if (3 * v20 > 4 * v19)
      {
        goto LABEL_20;
      }

      WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::FontCustomPlatformData,WTF::RawPtrTraits<WebCore::FontCustomPlatformData>,WTF::DefaultRefDerefTraits<WebCore::FontCustomPlatformData>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::FontCustomPlatformData,WTF::RawPtrTraits<WebCore::FontCustomPlatformData>,WTF::DefaultRefDerefTraits<WebCore::FontCustomPlatformData>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::FontCustomPlatformData,WTF::RawPtrTraits<WebCore::FontCustomPlatformData>,WTF::DefaultRefDerefTraits<WebCore::FontCustomPlatformData>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebCore::FontCustomPlatformData,WTF::RawPtrTraits<WebCore::FontCustomPlatformData>,WTF::DefaultRefDerefTraits<WebCore::FontCustomPlatformData>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(v4);
      goto LABEL_20;
    }

    v13 = 0;
    v14 = 1;
    while (v12 != v2)
    {
      if (v12 == -1)
      {
        v13 = v11;
      }

      v10 = (v10 + v14) & v6;
      v11 = (v3 + 16 * v10);
      v12 = *v11;
      ++v14;
      if (!*v11)
      {
        if (v13)
        {
          *v13 = 0;
          v13[1] = 0;
          --*(*v4 - 16);
          v11 = v13;
        }

        goto LABEL_12;
      }
    }
  }

  else
  {
    v21 = qword_1ED6416C8;
    if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446210;
      v26 = "void WebKit::RemoteRenderingBackend::cacheFontCustomPlatformData(WebCore::FontCustomPlatformSerializedData &&)";
      _os_log_fault_impl(&dword_19D52D000, v21, OS_LOG_TYPE_FAULT, "/Library/Caches/com.apple.xbs/Sources/WebKit/Source/WebKit/GPUProcess/graphics/RemoteRenderingBackend.cpp 391: Invalid message dispatched %{public}s: cacheFontCustomPlatformData couldn't deserialize FontCustomPlatformData", buf, 0xCu);
    }

    v22 = *(*(a1 + 48) + 56);
    if (v22)
    {
      *(v22 + 94) = 1;
    }

    if (IPC::s_shouldCrashOnMessageCheckFailure == 1)
    {
      __break(0xC471u);
      JUMPOUT(0x19DB5CD2CLL);
    }
  }

LABEL_20:
  if (v24 == 1)
  {
    if (v23)
    {
      WTF::RefCounted<WebCore::FontCustomPlatformData>::deref(v23);
    }
  }
}

void WebKit::RemoteRenderingBackend::releaseFontCustomPlatformData(uint64_t a1, uint64_t a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = (a1 + 112);
  v3 = *(a1 + 112);
  if (!v3)
  {
    goto LABEL_19;
  }

  v5 = *(v3 - 8);
  v6 = (~(a2 << 32) + a2) ^ ((~(a2 << 32) + a2) >> 22);
  v7 = 9 * ((v6 + ~(v6 << 13)) ^ ((v6 + ~(v6 << 13)) >> 8));
  v8 = (v7 ^ (v7 >> 15)) + ~((v7 ^ (v7 >> 15)) << 27);
  v9 = v5 & ((v8 >> 31) ^ v8);
  v10 = *(v3 + 16 * v9);
  if (v10 != a2)
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

    v9 = *(v3 - 4);
  }

LABEL_8:
  if (v9 == *(v3 - 4))
  {
LABEL_19:
    v18 = qword_1ED6416C8;
    if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_FAULT))
    {
      v20 = 136446210;
      v21 = "void WebKit::RemoteRenderingBackend::releaseFontCustomPlatformData(WebCore::RenderingResourceIdentifier)";
      _os_log_fault_impl(&dword_19D52D000, v18, OS_LOG_TYPE_FAULT, "/Library/Caches/com.apple.xbs/Sources/WebKit/Source/WebKit/GPUProcess/graphics/RemoteRenderingBackend.cpp 400: Invalid message dispatched %{public}s: FontCustomPlatformData released before being cached.", &v20, 0xCu);
    }

    v19 = *(*(a1 + 48) + 56);
    if (v19)
    {
      *(v19 + 94) = 1;
    }

    if (IPC::s_shouldCrashOnMessageCheckFailure == 1)
    {
      __break(0xC471u);
      JUMPOUT(0x19DB5CF24);
    }
  }

  else
  {
    v12 = (v3 + 16 * v9);
    v13 = v12[1];
    *v12 = -1;
    v12[1] = 0;
    if (v13)
    {
      WTF::RefCounted<WebCore::FontCustomPlatformData>::deref(v13);
    }

    v14 = *v4;
    v15 = vadd_s32(*(*v4 - 16), 0xFFFFFFFF00000001);
    *(v14 - 16) = v15;
    v16 = *(v14 - 4);
    if (6 * v15.i32[1] < v16 && v16 >= 9)
    {

      WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::FontCustomPlatformData,WTF::RawPtrTraits<WebCore::FontCustomPlatformData>,WTF::DefaultRefDerefTraits<WebCore::FontCustomPlatformData>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::FontCustomPlatformData,WTF::RawPtrTraits<WebCore::FontCustomPlatformData>,WTF::DefaultRefDerefTraits<WebCore::FontCustomPlatformData>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::FontCustomPlatformData,WTF::RawPtrTraits<WebCore::FontCustomPlatformData>,WTF::DefaultRefDerefTraits<WebCore::FontCustomPlatformData>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebCore::FontCustomPlatformData,WTF::RawPtrTraits<WebCore::FontCustomPlatformData>,WTF::DefaultRefDerefTraits<WebCore::FontCustomPlatformData>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(v4, v16 >> 1);
    }
  }
}

WTF *WebKit::RemoteRenderingBackend::cacheDecomposedGlyphs(uint64_t *a1, uint64_t a2, atomic_uchar *a3, float a4, float a5)
{
  v35 = a4;
  v36 = a5;
  WTF::Vector<unsigned short,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector<unsigned short const,18446744073709551615ul>(&v32, *(a2 + 8), *a2);
  WTF::Vector<CGSize,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector<WebCore::FloatSize const,18446744073709551615ul>(&v30, *(a2 + 16), *a2);
  WebCore::DecomposedGlyphs::create();
  if (v34[5])
  {
    a3 = v34[4];
    v10 = a1[11];
    a1 += 11;
    v9 = v10;
    if (v10)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::DecomposedGlyphs,WTF::RawPtrTraits<WebCore::DecomposedGlyphs>,WTF::DefaultRefDerefTraits<WebCore::DecomposedGlyphs>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::DecomposedGlyphs,WTF::RawPtrTraits<WebCore::DecomposedGlyphs>,WTF::DefaultRefDerefTraits<WebCore::DecomposedGlyphs>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::DecomposedGlyphs,WTF::RawPtrTraits<WebCore::DecomposedGlyphs>,WTF::DefaultRefDerefTraits<WebCore::DecomposedGlyphs>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebCore::DecomposedGlyphs,WTF::RawPtrTraits<WebCore::DecomposedGlyphs>,WTF::DefaultRefDerefTraits<WebCore::DecomposedGlyphs>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(a1);
  v9 = *a1;
LABEL_3:
  v11 = *(v9 - 8);
  v12 = &a3[~(a3 << 32)] ^ (&a3[~(a3 << 32)] >> 22);
  v13 = 9 * ((v12 + ~(v12 << 13)) ^ ((v12 + ~(v12 << 13)) >> 8));
  v14 = (v13 ^ (v13 >> 15)) + ~((v13 ^ (v13 >> 15)) << 27);
  v15 = v11 & ((v14 >> 31) ^ v14);
  v16 = (v9 + 16 * v15);
  v17 = *v16;
  if (*v16)
  {
    v18 = 0;
    v19 = 1;
    while (v17 != a3)
    {
      if (v17 == -1)
      {
        v18 = v16;
      }

      v15 = (v15 + v19) & v11;
      v16 = (v9 + 16 * v15);
      v17 = *v16;
      ++v19;
      if (!*v16)
      {
        if (v18)
        {
          *v18 = 0;
          v18[1] = 0;
          --*(*a1 - 16);
          v16 = v18;
        }

        goto LABEL_11;
      }
    }
  }

  else
  {
LABEL_11:
    *v16 = a3;
    v20 = v34;
    v34 = 0;
    v37 = 0;
    v21 = v16[1];
    v16[1] = v20;
    v38 = v21;
    WTF::Ref<WebCore::Gradient,WTF::RawPtrTraits<WebCore::Gradient>,WTF::DefaultRefDerefTraits<WebCore::Gradient>>::~Ref(&v38, v8);
    WTF::Ref<WebCore::Gradient,WTF::RawPtrTraits<WebCore::Gradient>,WTF::DefaultRefDerefTraits<WebCore::Gradient>>::~Ref(&v37, v22);
    v23 = *a1;
    if (*a1)
    {
      v24 = *(v23 - 12) + 1;
    }

    else
    {
      v24 = 1;
    }

    *(v23 - 12) = v24;
    v25 = (*(v23 - 16) + v24);
    v26 = *(v23 - 4);
    if (v26 > 0x400)
    {
      if (v26 > 2 * v25)
      {
        goto LABEL_15;
      }
    }

    else if (3 * v26 > 4 * v25)
    {
      goto LABEL_15;
    }

    WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::DecomposedGlyphs,WTF::RawPtrTraits<WebCore::DecomposedGlyphs>,WTF::DefaultRefDerefTraits<WebCore::DecomposedGlyphs>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::DecomposedGlyphs,WTF::RawPtrTraits<WebCore::DecomposedGlyphs>,WTF::DefaultRefDerefTraits<WebCore::DecomposedGlyphs>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::DecomposedGlyphs,WTF::RawPtrTraits<WebCore::DecomposedGlyphs>,WTF::DefaultRefDerefTraits<WebCore::DecomposedGlyphs>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebCore::DecomposedGlyphs,WTF::RawPtrTraits<WebCore::DecomposedGlyphs>,WTF::DefaultRefDerefTraits<WebCore::DecomposedGlyphs>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(a1);
  }

LABEL_15:
  WTF::Ref<WebCore::Gradient,WTF::RawPtrTraits<WebCore::Gradient>,WTF::DefaultRefDerefTraits<WebCore::Gradient>>::~Ref(&v34, v8);
  v28 = v30;
  if (v30)
  {
    v30 = 0;
    v31 = 0;
    WTF::fastFree(v28, v27);
  }

  result = v32;
  if (v32)
  {
    v32 = 0;
    v33 = 0;
    return WTF::fastFree(result, v27);
  }

  return result;
}

void WebKit::RemoteRenderingBackend::releaseDecomposedGlyphs(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = (a1 + 88);
  v2 = *(a1 + 88);
  if (!v2)
  {
    goto LABEL_16;
  }

  v4 = *(v2 - 8);
  v5 = (a2 + ~(a2 << 32)) ^ ((a2 + ~(a2 << 32)) >> 22);
  v6 = 9 * ((v5 + ~(v5 << 13)) ^ ((v5 + ~(v5 << 13)) >> 8));
  v7 = (v6 ^ (v6 >> 15)) + ~((v6 ^ (v6 >> 15)) << 27);
  v8 = v4 & ((v7 >> 31) ^ v7);
  v9 = *(v2 + 16 * v8);
  if (v9 != a2)
  {
    v15 = 1;
    while (v9)
    {
      v8 = (v8 + v15) & v4;
      v9 = *(v2 + 16 * v8);
      ++v15;
      if (v9 == a2)
      {
        goto LABEL_3;
      }
    }

    v8 = *(v2 - 4);
  }

LABEL_3:
  if (v8 == *(v2 - 4))
  {
LABEL_16:
    v16 = qword_1ED6416C8;
    if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446210;
      v20 = "void WebKit::RemoteRenderingBackend::releaseDecomposedGlyphs(RenderingResourceIdentifier)";
      _os_log_fault_impl(&dword_19D52D000, v16, OS_LOG_TYPE_FAULT, "/Library/Caches/com.apple.xbs/Sources/WebKit/Source/WebKit/GPUProcess/graphics/RemoteRenderingBackend.cpp 413: Invalid message dispatched %{public}s: DecomposedGlyphs released before being cached.", buf, 0xCu);
    }

    v17 = *(*(a1 + 48) + 56);
    if (v17)
    {
      *(v17 + 94) = 1;
    }

    if (IPC::s_shouldCrashOnMessageCheckFailure == 1)
    {
      __break(0xC471u);
      JUMPOUT(0x19DB5D30CLL);
    }
  }

  else
  {
    v10 = v2 + 16 * v8;
    *v10 = -1;
    WTF::Ref<WebCore::Gradient,WTF::RawPtrTraits<WebCore::Gradient>,WTF::DefaultRefDerefTraits<WebCore::Gradient>>::~Ref((v10 + 8), a2);
    v11 = *v3;
    v12 = vadd_s32(*(*v3 - 16), 0xFFFFFFFF00000001);
    *(v11 - 16) = v12;
    v13 = *(v11 - 4);
    if (6 * v12.i32[1] < v13 && v13 >= 9)
    {

      WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::DecomposedGlyphs,WTF::RawPtrTraits<WebCore::DecomposedGlyphs>,WTF::DefaultRefDerefTraits<WebCore::DecomposedGlyphs>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::DecomposedGlyphs,WTF::RawPtrTraits<WebCore::DecomposedGlyphs>,WTF::DefaultRefDerefTraits<WebCore::DecomposedGlyphs>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::DecomposedGlyphs,WTF::RawPtrTraits<WebCore::DecomposedGlyphs>,WTF::DefaultRefDerefTraits<WebCore::DecomposedGlyphs>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebCore::DecomposedGlyphs,WTF::RawPtrTraits<WebCore::DecomposedGlyphs>,WTF::DefaultRefDerefTraits<WebCore::DecomposedGlyphs>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(v3, v13 >> 1);
    }
  }
}

void WebKit::RemoteRenderingBackend::cacheGradient(uint64_t a1, void *a2, uint64_t a3)
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = (a1 + 80);
  v4 = *(a1 + 80);
  if (!v4)
  {
    v25 = a2;
    v22 = a3;
    WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::Gradient,WTF::RawPtrTraits<WebCore::Gradient>,WTF::DefaultRefDerefTraits<WebCore::Gradient>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::Gradient,WTF::RawPtrTraits<WebCore::Gradient>,WTF::DefaultRefDerefTraits<WebCore::Gradient>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::Gradient,WTF::RawPtrTraits<WebCore::Gradient>,WTF::DefaultRefDerefTraits<WebCore::Gradient>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebCore::Gradient,WTF::RawPtrTraits<WebCore::Gradient>,WTF::DefaultRefDerefTraits<WebCore::Gradient>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand((a1 + 80));
    a3 = v22;
    a2 = v25;
    v4 = *v5;
  }

  v6 = *(v4 - 8);
  v7 = (~(a3 << 32) + a3) ^ ((~(a3 << 32) + a3) >> 22);
  v8 = 9 * ((v7 + ~(v7 << 13)) ^ ((v7 + ~(v7 << 13)) >> 8));
  v9 = (v8 ^ (v8 >> 15)) + ~((v8 ^ (v8 >> 15)) << 27);
  v10 = v6 & ((v9 >> 31) ^ v9);
  v11 = (v4 + 16 * v10);
  v12 = *v11;
  if (!*v11)
  {
LABEL_11:
    *v11 = a3;
    v15 = *a2;
    *a2 = 0;
    v16 = v11[1];
    v11[1] = v15;
    v26 = 0;
    *buf = v16;
    WTF::Ref<WebCore::Gradient,WTF::RawPtrTraits<WebCore::Gradient>,WTF::DefaultRefDerefTraits<WebCore::Gradient>>::~Ref(buf, a2);
    WTF::Ref<WebCore::Gradient,WTF::RawPtrTraits<WebCore::Gradient>,WTF::DefaultRefDerefTraits<WebCore::Gradient>>::~Ref(&v26, v17);
    v18 = *v5;
    if (*v5)
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
        return;
      }
    }

    else if (3 * v21 > 4 * v20)
    {
      return;
    }

    WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::Gradient,WTF::RawPtrTraits<WebCore::Gradient>,WTF::DefaultRefDerefTraits<WebCore::Gradient>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::Gradient,WTF::RawPtrTraits<WebCore::Gradient>,WTF::DefaultRefDerefTraits<WebCore::Gradient>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::Gradient,WTF::RawPtrTraits<WebCore::Gradient>,WTF::DefaultRefDerefTraits<WebCore::Gradient>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebCore::Gradient,WTF::RawPtrTraits<WebCore::Gradient>,WTF::DefaultRefDerefTraits<WebCore::Gradient>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(v5);
    return;
  }

  v13 = 0;
  v14 = 1;
  while (v12 != a3)
  {
    if (v12 == -1)
    {
      v13 = v11;
    }

    v10 = (v10 + v14) & v6;
    v11 = (v4 + 16 * v10);
    v12 = *v11;
    ++v14;
    if (!*v11)
    {
      if (v13)
      {
        *v13 = 0;
        v13[1] = 0;
        --*(*v5 - 16);
        v11 = v13;
      }

      goto LABEL_11;
    }
  }

  v23 = qword_1ED6416C8;
  if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_FAULT))
  {
    *buf = 136446210;
    *&buf[4] = "void WebKit::RemoteRenderingBackend::cacheGradient(Ref<Gradient> &&, RenderingResourceIdentifier)";
    _os_log_fault_impl(&dword_19D52D000, v23, OS_LOG_TYPE_FAULT, "/Library/Caches/com.apple.xbs/Sources/WebKit/Source/WebKit/GPUProcess/graphics/RemoteRenderingBackend.cpp 420: Invalid message dispatched %{public}s: Gradient already cached.", buf, 0xCu);
  }

  v24 = *(*(a1 + 48) + 56);
  if (v24)
  {
    *(v24 + 94) = 1;
  }

  if (IPC::s_shouldCrashOnMessageCheckFailure == 1)
  {
    __break(0xC471u);
    JUMPOUT(0x19DB5D530);
  }
}

void WebKit::RemoteRenderingBackend::releaseGradient(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = (a1 + 80);
  v2 = *(a1 + 80);
  if (!v2)
  {
    goto LABEL_16;
  }

  v4 = *(v2 - 8);
  v5 = (a2 + ~(a2 << 32)) ^ ((a2 + ~(a2 << 32)) >> 22);
  v6 = 9 * ((v5 + ~(v5 << 13)) ^ ((v5 + ~(v5 << 13)) >> 8));
  v7 = (v6 ^ (v6 >> 15)) + ~((v6 ^ (v6 >> 15)) << 27);
  v8 = v4 & ((v7 >> 31) ^ v7);
  v9 = *(v2 + 16 * v8);
  if (v9 != a2)
  {
    v15 = 1;
    while (v9)
    {
      v8 = (v8 + v15) & v4;
      v9 = *(v2 + 16 * v8);
      ++v15;
      if (v9 == a2)
      {
        goto LABEL_3;
      }
    }

    v8 = *(v2 - 4);
  }

LABEL_3:
  if (v8 == *(v2 - 4))
  {
LABEL_16:
    v16 = qword_1ED6416C8;
    if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446210;
      v20 = "void WebKit::RemoteRenderingBackend::releaseGradient(RenderingResourceIdentifier)";
      _os_log_fault_impl(&dword_19D52D000, v16, OS_LOG_TYPE_FAULT, "/Library/Caches/com.apple.xbs/Sources/WebKit/Source/WebKit/GPUProcess/graphics/RemoteRenderingBackend.cpp 427: Invalid message dispatched %{public}s: Gradient released before being cached.", buf, 0xCu);
    }

    v17 = *(*(a1 + 48) + 56);
    if (v17)
    {
      *(v17 + 94) = 1;
    }

    if (IPC::s_shouldCrashOnMessageCheckFailure == 1)
    {
      __break(0xC471u);
      JUMPOUT(0x19DB5D728);
    }
  }

  else
  {
    v10 = v2 + 16 * v8;
    *v10 = -1;
    WTF::Ref<WebCore::Gradient,WTF::RawPtrTraits<WebCore::Gradient>,WTF::DefaultRefDerefTraits<WebCore::Gradient>>::~Ref((v10 + 8), a2);
    v11 = *v3;
    v12 = vadd_s32(*(*v3 - 16), 0xFFFFFFFF00000001);
    *(v11 - 16) = v12;
    v13 = *(v11 - 4);
    if (6 * v12.i32[1] < v13 && v13 >= 9)
    {

      WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::Gradient,WTF::RawPtrTraits<WebCore::Gradient>,WTF::DefaultRefDerefTraits<WebCore::Gradient>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::Gradient,WTF::RawPtrTraits<WebCore::Gradient>,WTF::DefaultRefDerefTraits<WebCore::Gradient>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::Gradient,WTF::RawPtrTraits<WebCore::Gradient>,WTF::DefaultRefDerefTraits<WebCore::Gradient>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebCore::Gradient,WTF::RawPtrTraits<WebCore::Gradient>,WTF::DefaultRefDerefTraits<WebCore::Gradient>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(v3, v13 >> 1);
    }
  }
}

unint64_t WebKit::RemoteRenderingBackend::cacheFilter(unint64_t result, uint64_t *a2)
{
  if (*(*a2 + 40) == 1)
  {
    return WebKit::RemoteResourceCache::cacheFilter(result + 64, a2);
  }

  return result;
}

unint64_t WebKit::RemoteResourceCache::cacheFilter(unint64_t result, uint64_t *a2)
{
  if (*(*a2 + 40))
  {
    v3 = *(*a2 + 32);
    return WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::Filter,WTF::RawPtrTraits<WebCore::Filter>,WTF::DefaultRefDerefTraits<WebCore::Filter>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebCore::Filter,WTF::RawPtrTraits<WebCore::Filter>,WTF::DefaultRefDerefTraits<WebCore::Filter>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::add<WTF::Ref<WebCore::Filter,WTF::RawPtrTraits<WebCore::Filter>,WTF::DefaultRefDerefTraits<WebCore::Filter>>>(&v2, (result + 32), &v3, a2);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void WebKit::RemoteRenderingBackend::releaseFilter(uint64_t a1, uint64_t a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = (a1 + 96);
  v4 = *(a1 + 96);
  if (!v4)
  {
    goto LABEL_17;
  }

  v6 = *(v4 - 8);
  v8 = WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::SessionSet,WTF::RawPtrTraits<WebKit::SessionSet>,WTF::DefaultRefDerefTraits<WebKit::SessionSet>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::SessionSet,WTF::RawPtrTraits<WebKit::SessionSet>,WTF::DefaultRefDerefTraits<WebKit::SessionSet>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>::hash<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2) & v6;
  v9 = *(v4 + 16 * v8);
  if (v9 != a2)
  {
    v10 = 1;
    while (v9)
    {
      v8 = (v8 + v10) & v6;
      v9 = *(v4 + 16 * v8);
      ++v10;
      if (v9 == a2)
      {
        goto LABEL_8;
      }
    }

    v8 = *(v4 - 4);
  }

LABEL_8:
  if (v8 == *(v4 - 4))
  {
LABEL_17:
    v16 = qword_1ED6416C8;
    if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_FAULT))
    {
      v18 = 136446210;
      v19 = "void WebKit::RemoteRenderingBackend::releaseFilter(RenderingResourceIdentifier)";
      _os_log_fault_impl(&dword_19D52D000, v16, OS_LOG_TYPE_FAULT, "/Library/Caches/com.apple.xbs/Sources/WebKit/Source/WebKit/GPUProcess/graphics/RemoteRenderingBackend.cpp 444: Invalid message dispatched %{public}s: Filter released before being cached.", &v18, 0xCu);
    }

    v17 = *(*(a1 + 48) + 56);
    if (v17)
    {
      *(v17 + 94) = 1;
    }

    if (IPC::s_shouldCrashOnMessageCheckFailure == 1)
    {
      __break(0xC471u);
      JUMPOUT(0x19DB5D978);
    }
  }

  else
  {
    v11 = v4 + 16 * v8;
    *v11 = -1;
    WTF::Ref<WebCore::FEBlend,WTF::RawPtrTraits<WebCore::FEBlend>,WTF::DefaultRefDerefTraits<WebCore::FEBlend>>::~Ref((v11 + 8), v7);
    v12 = *v3;
    v13 = vadd_s32(*(*v3 - 16), 0xFFFFFFFF00000001);
    *(v12 - 16) = v13;
    v14 = *(v12 - 4);
    if (6 * v13.i32[1] < v14 && v14 >= 9)
    {

      WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::Filter,WTF::RawPtrTraits<WebCore::Filter>,WTF::DefaultRefDerefTraits<WebCore::Filter>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::Filter,WTF::RawPtrTraits<WebCore::Filter>,WTF::DefaultRefDerefTraits<WebCore::Filter>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::Filter,WTF::RawPtrTraits<WebCore::Filter>,WTF::DefaultRefDerefTraits<WebCore::Filter>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebCore::Filter,WTF::RawPtrTraits<WebCore::Filter>,WTF::DefaultRefDerefTraits<WebCore::Filter>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(v3, v14 >> 1, 0);
    }
  }
}

uint64_t WebKit::RemoteResourceCache::releaseMemory(WebKit::RemoteResourceCache *this, void *a2)
{
  v3 = *(this + 1);
  if (v3)
  {
    *(this + 1) = 0;
    WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::DecomposedGlyphs,WTF::RawPtrTraits<WebCore::DecomposedGlyphs>,WTF::DefaultRefDerefTraits<WebCore::DecomposedGlyphs>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::DecomposedGlyphs,WTF::RawPtrTraits<WebCore::DecomposedGlyphs>,WTF::DefaultRefDerefTraits<WebCore::DecomposedGlyphs>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::DecomposedGlyphs,WTF::RawPtrTraits<WebCore::DecomposedGlyphs>,WTF::DefaultRefDerefTraits<WebCore::DecomposedGlyphs>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebCore::DecomposedGlyphs,WTF::RawPtrTraits<WebCore::DecomposedGlyphs>,WTF::DefaultRefDerefTraits<WebCore::DecomposedGlyphs>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::deallocateTable(v3, a2);
  }

  v4 = *(this + 2);
  if (v4)
  {
    *(this + 2) = 0;
    WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::DecomposedGlyphs,WTF::RawPtrTraits<WebCore::DecomposedGlyphs>,WTF::DefaultRefDerefTraits<WebCore::DecomposedGlyphs>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::DecomposedGlyphs,WTF::RawPtrTraits<WebCore::DecomposedGlyphs>,WTF::DefaultRefDerefTraits<WebCore::DecomposedGlyphs>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::DecomposedGlyphs,WTF::RawPtrTraits<WebCore::DecomposedGlyphs>,WTF::DefaultRefDerefTraits<WebCore::DecomposedGlyphs>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebCore::DecomposedGlyphs,WTF::RawPtrTraits<WebCore::DecomposedGlyphs>,WTF::DefaultRefDerefTraits<WebCore::DecomposedGlyphs>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::deallocateTable(v4, a2);
  }

  v5 = *(this + 3);
  if (v5)
  {
    *(this + 3) = 0;
    WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::DecomposedGlyphs,WTF::RawPtrTraits<WebCore::DecomposedGlyphs>,WTF::DefaultRefDerefTraits<WebCore::DecomposedGlyphs>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::DecomposedGlyphs,WTF::RawPtrTraits<WebCore::DecomposedGlyphs>,WTF::DefaultRefDerefTraits<WebCore::DecomposedGlyphs>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::DecomposedGlyphs,WTF::RawPtrTraits<WebCore::DecomposedGlyphs>,WTF::DefaultRefDerefTraits<WebCore::DecomposedGlyphs>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebCore::DecomposedGlyphs,WTF::RawPtrTraits<WebCore::DecomposedGlyphs>,WTF::DefaultRefDerefTraits<WebCore::DecomposedGlyphs>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::deallocateTable(v5, a2);
  }

  v6 = *(this + 4);
  if (v6)
  {
    *(this + 4) = 0;
    WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::Filter,WTF::RawPtrTraits<WebCore::Filter>,WTF::DefaultRefDerefTraits<WebCore::Filter>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::Filter,WTF::RawPtrTraits<WebCore::Filter>,WTF::DefaultRefDerefTraits<WebCore::Filter>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::Filter,WTF::RawPtrTraits<WebCore::Filter>,WTF::DefaultRefDerefTraits<WebCore::Filter>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebCore::Filter,WTF::RawPtrTraits<WebCore::Filter>,WTF::DefaultRefDerefTraits<WebCore::Filter>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::deallocateTable(v6, a2);
  }

  v7 = *(this + 5);
  if (v7)
  {
    *(this + 5) = 0;
    WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::Font,WTF::RawPtrTraits<WebCore::Font>,WTF::DefaultRefDerefTraits<WebCore::Font>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::Font,WTF::RawPtrTraits<WebCore::Font>,WTF::DefaultRefDerefTraits<WebCore::Font>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::Font,WTF::RawPtrTraits<WebCore::Font>,WTF::DefaultRefDerefTraits<WebCore::Font>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebCore::Font,WTF::RawPtrTraits<WebCore::Font>,WTF::DefaultRefDerefTraits<WebCore::Font>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::deallocateTable(v7, a2);
  }

  result = *(this + 6);
  if (result)
  {
    *(this + 6) = 0;

    return WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::FontCustomPlatformData,WTF::RawPtrTraits<WebCore::FontCustomPlatformData>,WTF::DefaultRefDerefTraits<WebCore::FontCustomPlatformData>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::FontCustomPlatformData,WTF::RawPtrTraits<WebCore::FontCustomPlatformData>,WTF::DefaultRefDerefTraits<WebCore::FontCustomPlatformData>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::FontCustomPlatformData,WTF::RawPtrTraits<WebCore::FontCustomPlatformData>,WTF::DefaultRefDerefTraits<WebCore::FontCustomPlatformData>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebCore::FontCustomPlatformData,WTF::RawPtrTraits<WebCore::FontCustomPlatformData>,WTF::DefaultRefDerefTraits<WebCore::FontCustomPlatformData>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::deallocateTable(result, a2);
  }

  return result;
}

uint64_t WebKit::RemoteRenderingBackend::releaseNativeImages(WebKit::RemoteRenderingBackend *this, void *a2)
{
  result = *(this + 9);
  if (result)
  {
    *(this + 9) = 0;
    return WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::DecomposedGlyphs,WTF::RawPtrTraits<WebCore::DecomposedGlyphs>,WTF::DefaultRefDerefTraits<WebCore::DecomposedGlyphs>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::DecomposedGlyphs,WTF::RawPtrTraits<WebCore::DecomposedGlyphs>,WTF::DefaultRefDerefTraits<WebCore::DecomposedGlyphs>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::DecomposedGlyphs,WTF::RawPtrTraits<WebCore::DecomposedGlyphs>,WTF::DefaultRefDerefTraits<WebCore::DecomposedGlyphs>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebCore::DecomposedGlyphs,WTF::RawPtrTraits<WebCore::DecomposedGlyphs>,WTF::DefaultRefDerefTraits<WebCore::DecomposedGlyphs>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::deallocateTable(result, a2);
  }

  return result;
}

void WebKit::RemoteRenderingBackend::prepareImageBufferSetsForDisplay(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x1E69E9840];
  if (*(a2 + 12))
  {
    v4 = 0;
    v5 = 0;
    while (1)
    {
      v6 = WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteImageBufferSet,WTF::RefPtr<WebKit::RemoteImageBufferSet,WTF::RawPtrTraits<WebKit::RemoteImageBufferSet>,WTF::DefaultRefDerefTraits<WebKit::RemoteImageBufferSet>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteImageBufferSet,WTF::RefPtr<WebKit::RemoteImageBufferSet,WTF::RawPtrTraits<WebKit::RemoteImageBufferSet>,WTF::DefaultRefDerefTraits<WebKit::RemoteImageBufferSet>>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteImageBufferSet,WTF::RefPtr<WebKit::RemoteImageBufferSet,WTF::RawPtrTraits<WebKit::RemoteImageBufferSet>,WTF::DefaultRefDerefTraits<WebKit::RemoteImageBufferSet>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteImageBufferSet,WTF::RefPtr<WebKit::RemoteImageBufferSet,WTF::RawPtrTraits<WebKit::RemoteImageBufferSet>,WTF::DefaultRefDerefTraits<WebKit::RemoteImageBufferSet>>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>((a1 + 152), *(*a2 + v4));
      if (!v6)
      {
        break;
      }

      v7 = v6;
      atomic_fetch_add((v6 + 8), 1u);
      LOBYTE(v10) = 1;
      if (v5 >= *(a2 + 12))
      {
        __break(0xC471u);
        JUMPOUT(0x19DB5DC68);
      }

      WebKit::RemoteImageBufferSet::ensureBufferForDisplay(v6, (*a2 + v4), &v10, 0);
      if (v10 != 2)
      {
        if (v5 >= *(a2 + 12))
        {
          goto LABEL_19;
        }

        WebKit::RemoteImageBufferSet::prepareBufferForDisplay(v7, (*a2 + v4 + 8), *(*a2 + v4 + 34));
      }

      if (atomic_fetch_add(v7 + 2, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v7 + 2);
        (*(*v7 + 8))(v7);
      }

      ++v5;
      v4 += 40;
      if (v5 >= *(a2 + 12))
      {
        return;
      }
    }

    v8 = qword_1ED6416C8;
    if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_FAULT))
    {
      v10 = 136446210;
      v11 = "void WebKit::RemoteRenderingBackend::prepareImageBufferSetsForDisplay(Vector<ImageBufferSetPrepareBufferForDisplayInputData>)";
      _os_log_fault_impl(&dword_19D52D000, v8, OS_LOG_TYPE_FAULT, "/Library/Caches/com.apple.xbs/Sources/WebKit/Source/WebKit/GPUProcess/graphics/RemoteRenderingBackend.cpp 474: Invalid message dispatched %{public}s: BufferSet is being updated before being created", &v10, 0xCu);
    }

    v9 = *(*(a1 + 48) + 56);
    if (v9)
    {
      *(v9 + 94) = 1;
    }

    if (IPC::s_shouldCrashOnMessageCheckFailure == 1)
    {
LABEL_19:
      __break(0xC471u);
      JUMPOUT(0x19DB5DC1CLL);
    }
  }
}

WTF *WebKit::RemoteRenderingBackend::prepareImageBufferSetsForDisplaySync(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v28 = *MEMORY[0x1E69E9840];
  v24 = 0;
  v25 = 0;
  v6 = *(a2 + 12);
  WTF::Vector<WebCore::ContactProperty,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(&v24, v6);
  if (HIDWORD(v25) < v6 && v25 < v6)
  {
    if (v25 + (v25 >> 1) <= v25 + 1)
    {
      v7 = v25 + 1;
    }

    else
    {
      v7 = v25 + (v25 >> 1);
    }

    if (v7 <= v6)
    {
      v7 = v6;
    }

    if (v7 <= 0x10)
    {
      v8 = 16;
    }

    else
    {
      v8 = v7;
    }

    WTF::Vector<WebCore::ContactProperty,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(&v24, v8);
  }

  HIDWORD(v25) = v6;
  if (*(a2 + 12))
  {
    v9 = 0;
    v10 = 0;
    while (1)
    {
      v11 = WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteImageBufferSet,WTF::RefPtr<WebKit::RemoteImageBufferSet,WTF::RawPtrTraits<WebKit::RemoteImageBufferSet>,WTF::DefaultRefDerefTraits<WebKit::RemoteImageBufferSet>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteImageBufferSet,WTF::RefPtr<WebKit::RemoteImageBufferSet,WTF::RawPtrTraits<WebKit::RemoteImageBufferSet>,WTF::DefaultRefDerefTraits<WebKit::RemoteImageBufferSet>>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteImageBufferSet,WTF::RefPtr<WebKit::RemoteImageBufferSet,WTF::RawPtrTraits<WebKit::RemoteImageBufferSet>,WTF::DefaultRefDerefTraits<WebKit::RemoteImageBufferSet>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteImageBufferSet,WTF::RefPtr<WebKit::RemoteImageBufferSet,WTF::RawPtrTraits<WebKit::RemoteImageBufferSet>,WTF::DefaultRefDerefTraits<WebKit::RemoteImageBufferSet>>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>((a1 + 152), *(*a2 + v9));
      if (!v11)
      {
        break;
      }

      v12 = v11;
      atomic_fetch_add((v11 + 8), 1u);
      if (v10 >= *(a2 + 12))
      {
        __break(0xC471u);
        JUMPOUT(0x19DB5E04CLL);
      }

      if (v10 >= HIDWORD(v25))
      {
        __break(0xC471u);
        JUMPOUT(0x19DB5E054);
      }

      WebKit::RemoteImageBufferSet::ensureBufferForDisplay(v11, (*a2 + v9), v24 + v10, 1);
      if (atomic_fetch_add(v12 + 2, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v12 + 2);
        (*(*v12 + 8))(v12);
      }

      ++v10;
      v9 += 40;
      if (v10 >= *(a2 + 12))
      {
        goto LABEL_20;
      }
    }

    v19 = qword_1ED6416C8;
    if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446210;
      v27 = "void WebKit::RemoteRenderingBackend::prepareImageBufferSetsForDisplaySync(Vector<ImageBufferSetPrepareBufferForDisplayInputData>, CompletionHandler<void (Vector<SwapBuffersDisplayRequirement> &&)> &&)";
      _os_log_fault_impl(&dword_19D52D000, v19, OS_LOG_TYPE_FAULT, "/Library/Caches/com.apple.xbs/Sources/WebKit/Source/WebKit/GPUProcess/graphics/RemoteRenderingBackend.cpp 492: Invalid message dispatched %{public}s: BufferSet is being updated before being created", buf, 0xCu);
    }

    v20 = *(*(a1 + 48) + 56);
    if (v20)
    {
      *(v20 + 94) = 1;
    }

    if (IPC::s_shouldCrashOnMessageCheckFailure == 1)
    {
LABEL_49:
      __break(0xC471u);
      JUMPOUT(0x19DB5DF3CLL);
    }
  }

  else
  {
LABEL_20:
    v13 = *a3;
    *a3 = 0;
    (*(*v13 + 16))(v13, &v24);
    (*(*v13 + 8))(v13);
    if (*(a2 + 12))
    {
      v15 = 0;
      v16 = 0;
      while (1)
      {
        v17 = WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteImageBufferSet,WTF::RefPtr<WebKit::RemoteImageBufferSet,WTF::RawPtrTraits<WebKit::RemoteImageBufferSet>,WTF::DefaultRefDerefTraits<WebKit::RemoteImageBufferSet>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteImageBufferSet,WTF::RefPtr<WebKit::RemoteImageBufferSet,WTF::RawPtrTraits<WebKit::RemoteImageBufferSet>,WTF::DefaultRefDerefTraits<WebKit::RemoteImageBufferSet>>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteImageBufferSet,WTF::RefPtr<WebKit::RemoteImageBufferSet,WTF::RawPtrTraits<WebKit::RemoteImageBufferSet>,WTF::DefaultRefDerefTraits<WebKit::RemoteImageBufferSet>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteImageBufferSet,WTF::RefPtr<WebKit::RemoteImageBufferSet,WTF::RawPtrTraits<WebKit::RemoteImageBufferSet>,WTF::DefaultRefDerefTraits<WebKit::RemoteImageBufferSet>>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>((a1 + 152), *(*a2 + v15));
        if (!v17)
        {
          break;
        }

        v18 = v17;
        atomic_fetch_add(v17 + 2, 1u);
        if (v16 >= HIDWORD(v25))
        {
          __break(0xC471u);
          JUMPOUT(0x19DB5E05CLL);
        }

        if (*(v24 + v16) != 2)
        {
          if (v16 >= *(a2 + 12))
          {
            __break(0xC471u);
            JUMPOUT(0x19DB5E064);
          }

          WebKit::RemoteImageBufferSet::prepareBufferForDisplay(v17, (*a2 + v15 + 8), *(*a2 + v15 + 34));
        }

        if (atomic_fetch_add(v18 + 2, 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, v18 + 2);
          (*(*v18 + 8))(v18);
        }

        ++v16;
        v15 += 40;
        if (v16 >= *(a2 + 12))
        {
          goto LABEL_42;
        }
      }

      v21 = qword_1ED6416C8;
      if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_FAULT))
      {
        *buf = 136446210;
        v27 = "void WebKit::RemoteRenderingBackend::prepareImageBufferSetsForDisplaySync(Vector<ImageBufferSetPrepareBufferForDisplayInputData>, CompletionHandler<void (Vector<SwapBuffersDisplayRequirement> &&)> &&)";
        _os_log_fault_impl(&dword_19D52D000, v21, OS_LOG_TYPE_FAULT, "/Library/Caches/com.apple.xbs/Sources/WebKit/Source/WebKit/GPUProcess/graphics/RemoteRenderingBackend.cpp 504: Invalid message dispatched %{public}s: BufferSet is being updated before being created", buf, 0xCu);
      }

      v22 = *(*(a1 + 48) + 56);
      if (v22)
      {
        *(v22 + 94) = 1;
      }

      if (IPC::s_shouldCrashOnMessageCheckFailure == 1)
      {
        goto LABEL_49;
      }
    }
  }

LABEL_42:
  result = v24;
  if (v24)
  {
    v24 = 0;
    LODWORD(v25) = 0;
    return WTF::fastFree(result, v14);
  }

  return result;
}

WTF *WebKit::RemoteRenderingBackend::markSurfacesVolatile(uint64_t *a1, void *a2, uint64_t *a3, int a4)
{
  v48 = *MEMORY[0x1E69E9840];
  v43 = 0;
  v44 = a2;
  v42 = 0;
  v5 = *(a3 + 3);
  if (v5)
  {
    v7 = *a3;
    v41 = *a3 + 16 * v5;
    v40 = 1;
    while (1)
    {
      v8 = *v7;
      v9 = *(v7 + 8);
      v10 = WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteImageBufferSet,WTF::RefPtr<WebKit::RemoteImageBufferSet,WTF::RawPtrTraits<WebKit::RemoteImageBufferSet>,WTF::DefaultRefDerefTraits<WebKit::RemoteImageBufferSet>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteImageBufferSet,WTF::RefPtr<WebKit::RemoteImageBufferSet,WTF::RawPtrTraits<WebKit::RemoteImageBufferSet>,WTF::DefaultRefDerefTraits<WebKit::RemoteImageBufferSet>>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteImageBufferSet,WTF::RefPtr<WebKit::RemoteImageBufferSet,WTF::RawPtrTraits<WebKit::RemoteImageBufferSet>,WTF::DefaultRefDerefTraits<WebKit::RemoteImageBufferSet>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteImageBufferSet,WTF::RefPtr<WebKit::RemoteImageBufferSet,WTF::RawPtrTraits<WebKit::RemoteImageBufferSet>,WTF::DefaultRefDerefTraits<WebKit::RemoteImageBufferSet>>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a1 + 19, *v7);
      if (!v10)
      {
        v38 = qword_1ED6416C8;
        if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_FAULT))
        {
          *buf = 136446210;
          *&buf[4] = "void WebKit::RemoteRenderingBackend::markSurfacesVolatile(MarkSurfacesAsVolatileRequestIdentifier, const Vector<std::pair<RemoteImageBufferSetIdentifier, OptionSet<BufferInSetType>>> &, BOOL)";
          _os_log_fault_impl(&dword_19D52D000, v38, OS_LOG_TYPE_FAULT, "/Library/Caches/com.apple.xbs/Sources/WebKit/Source/WebKit/GPUProcess/graphics/RemoteRenderingBackend.cpp 523: Invalid message dispatched %{public}s: BufferSet is being marked volatile before being created", buf, 0xCu);
        }

        v39 = *(a1[6] + 56);
        if (v39)
        {
          *(v39 + 94) = 1;
        }

        if (IPC::s_shouldCrashOnMessageCheckFailure == 1)
        {
          __break(0xC471u);
          JUMPOUT(0x19DB5E4D8);
        }

        goto LABEL_58;
      }

      v11 = v10;
      v12 = 1;
      atomic_fetch_add((v10 + 8), 1u);
      v13 = *(v10 + 16);
      if (v13)
      {
        break;
      }

      v17 = 0;
LABEL_14:
      v18 = *(v11 + 24);
      if (!v18)
      {
        goto LABEL_23;
      }

      v19 = (v18 + 1);
      while (1)
      {
        v20 = *v19;
        if ((*v19 & 1) == 0)
        {
          break;
        }

        v21 = *v19;
        atomic_compare_exchange_strong_explicit(v19, &v21, v20 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v21 == v20)
        {
          goto LABEL_18;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v19);
LABEL_18:
      if ((v9 & 2) != 0)
      {
        if (a4)
        {
          WebCore::ImageBuffer::setVolatileAndPurgeForTesting(v18);
        }

        else
        {
          (*(*v18 + 14))(v18);
          if (!WebCore::ImageBuffer::setVolatile(v18))
          {
            v12 = 0;
            goto LABEL_22;
          }
        }

        v17 |= 2u;
      }

LABEL_22:
      WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::ImageBuffer,(WTF::DestructionThread)0>::deref(v18 + 1, a2);
LABEL_23:
      v22 = *(v11 + 32);
      if (!v22)
      {
        goto LABEL_40;
      }

      v23 = (v22 + 1);
      while (1)
      {
        v24 = *v23;
        if ((*v23 & 1) == 0)
        {
          break;
        }

        v25 = *v23;
        atomic_compare_exchange_strong_explicit(v23, &v25, v24 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v25 == v24)
        {
          goto LABEL_27;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v23);
LABEL_27:
      if ((v9 & 4) == 0)
      {
        WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::ImageBuffer,(WTF::DestructionThread)0>::deref(v22 + 1, a2);
LABEL_40:
        if (v12)
        {
          goto LABEL_41;
        }

        goto LABEL_51;
      }

      if (a4)
      {
        WebCore::ImageBuffer::setVolatileAndPurgeForTesting(v22);
LABEL_30:
        v17 |= 4u;
        WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::ImageBuffer,(WTF::DestructionThread)0>::deref(v22 + 1, v26);
        if (v12)
        {
          goto LABEL_31;
        }

        goto LABEL_51;
      }

      (*(*v22 + 14))(v22);
      if (WebCore::ImageBuffer::setVolatile(v22))
      {
        goto LABEL_30;
      }

      WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::ImageBuffer,(WTF::DestructionThread)0>::deref(v22 + 1, v26);
LABEL_51:
      v40 = 0;
LABEL_41:
      if (v17)
      {
LABEL_31:
        *buf = v8;
        buf[8] = v17;
        v27 = HIDWORD(v43);
        if (HIDWORD(v43) == v43)
        {
          v30 = WTF::Vector<std::pair<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::OptionSet<WebKit::BufferInSetType>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v42, HIDWORD(v43) + 1, buf);
          v27 = HIDWORD(v43);
          v28 = v42;
          v29 = *v30;
        }

        else
        {
          v28 = v42;
          v29 = *buf;
        }

        *(v28 + v27) = v29;
        ++HIDWORD(v43);
      }

      if (atomic_fetch_add((v11 + 8), 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, (v11 + 8));
        (*(*v11 + 8))(v11);
      }

      v7 += 16;
      if (v7 == v41)
      {
        goto LABEL_56;
      }
    }

    v14 = (v13 + 1);
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
        goto LABEL_8;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v14);
LABEL_8:
    if (v9)
    {
      if (a4)
      {
        WebCore::ImageBuffer::setVolatileAndPurgeForTesting(v13);
      }

      else
      {
        (*(*v13 + 14))(v13);
        if (!WebCore::ImageBuffer::setVolatile(v13))
        {
          v17 = 0;
          v12 = 0;
          goto LABEL_13;
        }
      }

      v17 = 1;
    }

    else
    {
      v17 = 0;
    }

    v12 = 1;
LABEL_13:
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::ImageBuffer,(WTF::DestructionThread)0>::deref(v13 + 1, a2);
    goto LABEL_14;
  }

  v40 = 1;
LABEL_56:
  *buf = &v44;
  *&buf[8] = &v42;
  v47[0] = v40 & 1;
  v31 = a1[16];
  v32 = IPC::Encoder::operator new(0x238, a2);
  *v32 = 1570;
  *(v32 + 2) = 0;
  *(v32 + 3) = 0;
  *(v32 + 1) = v31;
  *(v32 + 68) = 0;
  *(v32 + 70) = 0;
  *(v32 + 69) = 0;
  IPC::Encoder::encodeHeader(v32);
  v45 = v32;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v32, v44);
  IPC::VectorArgumentCoder<false,std::pair<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::OptionSet<WebKit::BufferInSetType>>,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<std::pair<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::OptionSet<WebKit::BufferInSetType>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(v32, &v42);
  IPC::Encoder::operator<<<BOOL &>(v32, v47);
  (*(*a1 + 32))(a1, &v45, 0);
  v34 = v45;
  v45 = 0;
  if (v34)
  {
    IPC::Encoder::~Encoder(v34, v33);
    bmalloc::api::tzoneFree(v36, v37);
  }

LABEL_58:
  result = v42;
  if (v42)
  {
    v42 = 0;
    LODWORD(v43) = 0;
    return WTF::fastFree(result, v33);
  }

  return result;
}

IPC::Encoder *WebKit::RemoteRenderingBackend::finalizeRenderingUpdate(void *a1, void *a2)
{
  v4 = a1[16];
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 1568;
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  *(v5 + 1) = v4;
  *(v5 + 68) = 0;
  *(v5 + 70) = 0;
  *(v5 + 69) = 0;
  IPC::Encoder::encodeHeader(v5);
  v10 = v5;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v5, a2);
  (*(*a1 + 32))(a1, &v10, 0);
  result = v10;
  v10 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v6);
    return bmalloc::api::tzoneFree(v8, v9);
  }

  return result;
}

uint64_t WebKit::RemoteRenderingBackend::createRemoteBarcodeDetector(void *a1, void *a2, uint64_t a3)
{
  if (*MEMORY[0x1E69E2540])
  {
    NonCompact = bmalloc::api::tzoneAllocateNonCompact(*MEMORY[0x1E69E2540], a2);
  }

  else
  {
    NonCompact = WebCore::ShapeDetection::BarcodeDetectorImpl::operatorNewSlow(0x20);
  }

  v16[0] = MEMORY[0x19EB05AF0](NonCompact, a3);
  v8 = a1[20];
  v9 = *(a1[6] + 88);
  if (WebKit::RemoteBarcodeDetector::s_heapRef)
  {
    v10 = bmalloc::api::tzoneAllocateNonCompact(WebKit::RemoteBarcodeDetector::s_heapRef, v7);
  }

  else
  {
    v10 = WebKit::RemoteBarcodeDetector::operatorNewSlow(0x38);
  }

  v11 = v10;
  WebKit::RemoteBarcodeDetector::RemoteBarcodeDetector(v10, v16, v8, a1, a2, v9);
  if (v16[0])
  {
    if (*(v16[0] + 8) == 1)
    {
      (*(*v16[0] + 8))();
    }

    else
    {
      --*(v16[0] + 8);
    }
  }

  v12 = a1[20];
  v13 = *(v12 + 8);
  v12 += 8;
  *v12 = v13 + 1;
  v17 = a2;
  WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::ShapeDetectionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteBarcodeDetector,WTF::RawPtrTraits<WebKit::RemoteBarcodeDetector>,WTF::DefaultRefDerefTraits<WebKit::RemoteBarcodeDetector>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::ShapeDetectionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::ShapeDetectionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::RemoteBarcodeDetector,WTF::RawPtrTraits<WebKit::RemoteBarcodeDetector>,WTF::DefaultRefDerefTraits<WebKit::RemoteBarcodeDetector>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<WebKit::RemoteBarcodeDetector&>((v12 + 8), &v17, v11, v16);
  WTF::RefCounted<WebKit::ShapeDetection::ObjectHeap>::deref(v12);
  v14 = a1[5];
  atomic_fetch_add(v14 + 2, 1u);
  result = IPC::StreamServerConnection::startReceivingMessages(v14, v11, 0x3Du, a2);
  if (v14 && atomic_fetch_add(v14 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v14 + 2);
    result = (*(*v14 + 8))(v14);
  }

  if (atomic_fetch_add(v11 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v11 + 2);
    return (*(*v11 + 8))(v11);
  }

  return result;
}

_DWORD *WebKit::RemoteRenderingBackend::releaseRemoteBarcodeDetector(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 40);
  atomic_fetch_add(v4 + 2, 1u);
  IPC::StreamServerConnection::stopReceivingMessages(v4, 0x3Du, a2);
  if (v4 && atomic_fetch_add(v4 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v4 + 2);
    (*(*v4 + 8))(v4);
  }

  v5 = *(a1 + 160);
  v6 = (v5 + 8);
  ++*(v5 + 8);
  WebKit::ShapeDetection::ObjectHeap::removeObject(v5, a2);

  return WTF::RefCounted<WebKit::ShapeDetection::ObjectHeap>::deref(v6);
}

uint64_t WebKit::RemoteRenderingBackend::createRemoteFaceDetector(void *a1, void *a2)
{
  if (*MEMORY[0x1E69E2530])
  {
    bmalloc::api::tzoneAllocateNonCompact(*MEMORY[0x1E69E2530], a2);
  }

  else
  {
    WebCore::ShapeDetection::FaceDetectorImpl::operatorNewSlow(0x10);
  }

  v13[0] = WebCore::ShapeDetection::FaceDetectorImpl::FaceDetectorImpl();
  v5 = a1[20];
  v6 = *(a1[6] + 88);
  if (WebKit::RemoteFaceDetector::s_heapRef)
  {
    NonCompact = bmalloc::api::tzoneAllocateNonCompact(WebKit::RemoteFaceDetector::s_heapRef, v4);
  }

  else
  {
    NonCompact = WebKit::RemoteFaceDetector::operatorNewSlow(0x38);
  }

  v8 = NonCompact;
  WebKit::RemoteFaceDetector::RemoteFaceDetector(NonCompact, v13, v5, a1, a2, v6);
  if (v13[0])
  {
    if (*(v13[0] + 8) == 1)
    {
      (*(*v13[0] + 8))();
    }

    else
    {
      --*(v13[0] + 8);
    }
  }

  v9 = a1[20];
  v10 = *(v9 + 8);
  v9 += 8;
  *v9 = v10 + 1;
  v14 = a2;
  WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::ShapeDetectionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteFaceDetector,WTF::RawPtrTraits<WebKit::RemoteFaceDetector>,WTF::DefaultRefDerefTraits<WebKit::RemoteFaceDetector>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::ShapeDetectionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::ShapeDetectionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::RemoteFaceDetector,WTF::RawPtrTraits<WebKit::RemoteFaceDetector>,WTF::DefaultRefDerefTraits<WebKit::RemoteFaceDetector>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<WebKit::RemoteFaceDetector&>((v9 + 16), &v14, v8, v13);
  WTF::RefCounted<WebKit::ShapeDetection::ObjectHeap>::deref(v9);
  v11 = a1[5];
  atomic_fetch_add(v11 + 2, 1u);
  result = IPC::StreamServerConnection::startReceivingMessages(v11, v8, 0x50u, a2);
  if (v11 && atomic_fetch_add(v11 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v11 + 2);
    result = (*(*v11 + 8))(v11);
  }

  if (atomic_fetch_add(v8 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v8 + 2);
    return (*(*v8 + 8))(v8);
  }

  return result;
}

_DWORD *WebKit::RemoteRenderingBackend::releaseRemoteFaceDetector(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 40);
  atomic_fetch_add(v4 + 2, 1u);
  IPC::StreamServerConnection::stopReceivingMessages(v4, 0x50u, a2);
  if (v4 && atomic_fetch_add(v4 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v4 + 2);
    (*(*v4 + 8))(v4);
  }

  v5 = *(a1 + 160);
  v6 = (v5 + 8);
  ++*(v5 + 8);
  WebKit::ShapeDetection::ObjectHeap::removeObject(v5, a2);

  return WTF::RefCounted<WebKit::ShapeDetection::ObjectHeap>::deref(v6);
}

uint64_t WebKit::RemoteRenderingBackend::createRemoteTextDetector(void *a1, void *a2)
{
  if (*MEMORY[0x1E69E2538])
  {
    NonCompact = bmalloc::api::tzoneAllocateNonCompact(*MEMORY[0x1E69E2538], a2);
  }

  else
  {
    NonCompact = WebCore::ShapeDetection::TextDetectorImpl::operatorNewSlow(0x10);
  }

  v14[0] = WebCore::ShapeDetection::TextDetectorImpl::TextDetectorImpl(NonCompact);
  v6 = a1[20];
  v7 = *(a1[6] + 88);
  if (WebKit::RemoteTextDetector::s_heapRef)
  {
    v8 = bmalloc::api::tzoneAllocateNonCompact(WebKit::RemoteTextDetector::s_heapRef, v5);
  }

  else
  {
    v8 = WebKit::RemoteTextDetector::operatorNewSlow(0x38);
  }

  v9 = v8;
  WebKit::RemoteTextDetector::RemoteTextDetector(v8, v14, v6, a1, a2, v7);
  if (v14[0])
  {
    if (*(v14[0] + 8) == 1)
    {
      (*(*v14[0] + 8))();
    }

    else
    {
      --*(v14[0] + 8);
    }
  }

  v10 = a1[20];
  v11 = *(v10 + 8);
  v10 += 8;
  *v10 = v11 + 1;
  v15 = a2;
  WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::ShapeDetectionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteTextDetector,WTF::RawPtrTraits<WebKit::RemoteTextDetector>,WTF::DefaultRefDerefTraits<WebKit::RemoteTextDetector>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::ShapeDetectionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::ShapeDetectionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::RemoteTextDetector,WTF::RawPtrTraits<WebKit::RemoteTextDetector>,WTF::DefaultRefDerefTraits<WebKit::RemoteTextDetector>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<WebKit::RemoteTextDetector&>((v10 + 24), &v15, v9, v14);
  WTF::RefCounted<WebKit::ShapeDetection::ObjectHeap>::deref(v10);
  v12 = a1[5];
  atomic_fetch_add(v12 + 2, 1u);
  result = IPC::StreamServerConnection::startReceivingMessages(v12, v9, 0x7Du, a2);
  if (v12 && atomic_fetch_add(v12 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v12 + 2);
    result = (*(*v12 + 8))(v12);
  }

  if (atomic_fetch_add(v9 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v9 + 2);
    return (*(*v9 + 8))(v9);
  }

  return result;
}

_DWORD *WebKit::RemoteRenderingBackend::releaseRemoteTextDetector(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 40);
  atomic_fetch_add(v4 + 2, 1u);
  IPC::StreamServerConnection::stopReceivingMessages(v4, 0x7Du, a2);
  if (v4 && atomic_fetch_add(v4 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v4 + 2);
    (*(*v4 + 8))(v4);
  }

  v5 = *(a1 + 160);
  v6 = (v5 + 8);
  ++*(v5 + 8);
  WebKit::ShapeDetection::ObjectHeap::removeObject(v5, a2);

  return WTF::RefCounted<WebKit::ShapeDetection::ObjectHeap>::deref(v6);
}

atomic_uint *WebKit::RemoteRenderingBackend::getImageBufferResourceLimitsForTesting(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 56);
  v3 = (v2 + 16);
  atomic_fetch_add((v2 + 16), 1u);
  v4 = atomic_load((v2 + 64));
  v5 = atomic_load(&WebKit::globalAcceleratedImageBufferCount);
  v6 = atomic_load(&WebKit::globalImageBufferForCanvasCount);
  v7 = atomic_load((v2 + 72));
  v8 = *a2;
  *a2 = 0;
  v10[0] = v4;
  v10[1] = 5000;
  v10[2] = v5;
  v10[3] = 10000;
  v10[4] = v6;
  v10[5] = 200000;
  v10[6] = v7;
  v10[7] = 50000;
  (*(*v8 + 16))(v8, v10);
  (*(*v8 + 8))(v8);
  return WTF::ThreadSafeRefCounted<WebKit::RemoteSharedResourceCache,(WTF::DestructionThread)0>::deref(v3);
}

void WebKit::RemoteResourceCache::~RemoteResourceCache(WebKit::RemoteResourceCache *this, void *a2)
{
  v3 = *(this + 6);
  if (v3)
  {
    WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::FontCustomPlatformData,WTF::RawPtrTraits<WebCore::FontCustomPlatformData>,WTF::DefaultRefDerefTraits<WebCore::FontCustomPlatformData>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::FontCustomPlatformData,WTF::RawPtrTraits<WebCore::FontCustomPlatformData>,WTF::DefaultRefDerefTraits<WebCore::FontCustomPlatformData>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::FontCustomPlatformData,WTF::RawPtrTraits<WebCore::FontCustomPlatformData>,WTF::DefaultRefDerefTraits<WebCore::FontCustomPlatformData>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebCore::FontCustomPlatformData,WTF::RawPtrTraits<WebCore::FontCustomPlatformData>,WTF::DefaultRefDerefTraits<WebCore::FontCustomPlatformData>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::deallocateTable(v3, a2);
  }

  v4 = *(this + 5);
  if (v4)
  {
    WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::Font,WTF::RawPtrTraits<WebCore::Font>,WTF::DefaultRefDerefTraits<WebCore::Font>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::Font,WTF::RawPtrTraits<WebCore::Font>,WTF::DefaultRefDerefTraits<WebCore::Font>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::Font,WTF::RawPtrTraits<WebCore::Font>,WTF::DefaultRefDerefTraits<WebCore::Font>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebCore::Font,WTF::RawPtrTraits<WebCore::Font>,WTF::DefaultRefDerefTraits<WebCore::Font>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::deallocateTable(v4, a2);
  }

  v5 = *(this + 4);
  if (v5)
  {
    WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::Filter,WTF::RawPtrTraits<WebCore::Filter>,WTF::DefaultRefDerefTraits<WebCore::Filter>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::Filter,WTF::RawPtrTraits<WebCore::Filter>,WTF::DefaultRefDerefTraits<WebCore::Filter>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::Filter,WTF::RawPtrTraits<WebCore::Filter>,WTF::DefaultRefDerefTraits<WebCore::Filter>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebCore::Filter,WTF::RawPtrTraits<WebCore::Filter>,WTF::DefaultRefDerefTraits<WebCore::Filter>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::deallocateTable(v5, a2);
  }

  v6 = *(this + 3);
  if (v6)
  {
    WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::DecomposedGlyphs,WTF::RawPtrTraits<WebCore::DecomposedGlyphs>,WTF::DefaultRefDerefTraits<WebCore::DecomposedGlyphs>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::DecomposedGlyphs,WTF::RawPtrTraits<WebCore::DecomposedGlyphs>,WTF::DefaultRefDerefTraits<WebCore::DecomposedGlyphs>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::DecomposedGlyphs,WTF::RawPtrTraits<WebCore::DecomposedGlyphs>,WTF::DefaultRefDerefTraits<WebCore::DecomposedGlyphs>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebCore::DecomposedGlyphs,WTF::RawPtrTraits<WebCore::DecomposedGlyphs>,WTF::DefaultRefDerefTraits<WebCore::DecomposedGlyphs>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::deallocateTable(v6, a2);
  }

  v7 = *(this + 2);
  if (v7)
  {
    WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::DecomposedGlyphs,WTF::RawPtrTraits<WebCore::DecomposedGlyphs>,WTF::DefaultRefDerefTraits<WebCore::DecomposedGlyphs>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::DecomposedGlyphs,WTF::RawPtrTraits<WebCore::DecomposedGlyphs>,WTF::DefaultRefDerefTraits<WebCore::DecomposedGlyphs>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::DecomposedGlyphs,WTF::RawPtrTraits<WebCore::DecomposedGlyphs>,WTF::DefaultRefDerefTraits<WebCore::DecomposedGlyphs>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebCore::DecomposedGlyphs,WTF::RawPtrTraits<WebCore::DecomposedGlyphs>,WTF::DefaultRefDerefTraits<WebCore::DecomposedGlyphs>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::deallocateTable(v7, a2);
  }

  v8 = *(this + 1);
  if (v8)
  {
    WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::DecomposedGlyphs,WTF::RawPtrTraits<WebCore::DecomposedGlyphs>,WTF::DefaultRefDerefTraits<WebCore::DecomposedGlyphs>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::DecomposedGlyphs,WTF::RawPtrTraits<WebCore::DecomposedGlyphs>,WTF::DefaultRefDerefTraits<WebCore::DecomposedGlyphs>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::DecomposedGlyphs,WTF::RawPtrTraits<WebCore::DecomposedGlyphs>,WTF::DefaultRefDerefTraits<WebCore::DecomposedGlyphs>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebCore::DecomposedGlyphs,WTF::RawPtrTraits<WebCore::DecomposedGlyphs>,WTF::DefaultRefDerefTraits<WebCore::DecomposedGlyphs>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::deallocateTable(v8, a2);
  }

  if (*this)
  {
    WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::ImageBuffer,WTF::RawPtrTraits<WebCore::ImageBuffer>,WTF::DefaultRefDerefTraits<WebCore::ImageBuffer>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::ImageBuffer,WTF::RawPtrTraits<WebCore::ImageBuffer>,WTF::DefaultRefDerefTraits<WebCore::ImageBuffer>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::ImageBuffer,WTF::RawPtrTraits<WebCore::ImageBuffer>,WTF::DefaultRefDerefTraits<WebCore::ImageBuffer>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebCore::ImageBuffer,WTF::RawPtrTraits<WebCore::ImageBuffer>,WTF::DefaultRefDerefTraits<WebCore::ImageBuffer>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::deallocateTable(*this, a2);
  }
}

unint64_t WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::Filter,WTF::RawPtrTraits<WebCore::Filter>,WTF::DefaultRefDerefTraits<WebCore::Filter>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebCore::Filter,WTF::RawPtrTraits<WebCore::Filter>,WTF::DefaultRefDerefTraits<WebCore::Filter>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::add<WTF::Ref<WebCore::Filter,WTF::RawPtrTraits<WebCore::Filter>,WTF::DefaultRefDerefTraits<WebCore::Filter>>>(uint64_t a1, uint64_t *a2, WTF **a3, uint64_t *a4)
{
  v24 = a4;
  v7 = *a2;
  if (*a2 || (WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::Filter,WTF::RawPtrTraits<WebCore::Filter>,WTF::DefaultRefDerefTraits<WebCore::Filter>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::Filter,WTF::RawPtrTraits<WebCore::Filter>,WTF::DefaultRefDerefTraits<WebCore::Filter>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::Filter,WTF::RawPtrTraits<WebCore::Filter>,WTF::DefaultRefDerefTraits<WebCore::Filter>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebCore::Filter,WTF::RawPtrTraits<WebCore::Filter>,WTF::DefaultRefDerefTraits<WebCore::Filter>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(a2, 0), (v7 = *a2) != 0))
  {
    v8 = *(v7 - 8);
  }

  else
  {
    v8 = 0;
  }

  result = WTF::intHash(*a3);
  v10 = result & v8;
  v11 = (v7 + 16 * (result & v8));
  v12 = *v11;
  v13 = *a3;
  if (*v11)
  {
    v20 = 0;
    v21 = 1;
    do
    {
      if (v12 == v13)
      {
        v22 = *a2;
        if (*a2)
        {
          v23 = *(v22 - 4);
        }

        else
        {
          v23 = 0;
        }

        v19 = 0;
        v18 = v22 + 16 * v23;
        goto LABEL_10;
      }

      if (v12 == -1)
      {
        v20 = v11;
      }

      v10 = (v10 + v21) & v8;
      v11 = (v7 + 16 * v10);
      v12 = *v11;
      ++v21;
    }

    while (*v11);
    if (v20)
    {
      *v20 = 0;
      v20[1] = 0;
      --*(*a2 - 16);
      v13 = *a3;
      v11 = v20;
    }
  }

  result = WTF::HashMapTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::Filter,WTF::RawPtrTraits<WebCore::Filter>,WTF::DefaultRefDerefTraits<WebCore::Filter>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebCore::Filter,WTF::RawPtrTraits<WebCore::Filter>,WTF::DefaultRefDerefTraits<WebCore::Filter>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>::translate<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long> const&,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::Filter,WTF::RawPtrTraits<WebCore::Filter>,WTF::DefaultRefDerefTraits<WebCore::Filter>>>,WTF::HashTableAddResult<WTF::HashTableIterator<WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::Filter,WTF::RawPtrTraits<WebCore::Filter>,WTF::DefaultRefDerefTraits<WebCore::Filter>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::Filter,WTF::RawPtrTraits<WebCore::Filter>,WTF::DefaultRefDerefTraits<WebCore::Filter>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::Filter,WTF::RawPtrTraits<WebCore::Filter>,WTF::DefaultRefDerefTraits<WebCore::Filter>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebCore::Filter,WTF::RawPtrTraits<WebCore::Filter>,WTF::DefaultRefDerefTraits<WebCore::Filter>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>,WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::Filter,WTF::RawPtrTraits<WebCore::Filter>,WTF::DefaultRefDerefTraits<WebCore::Filter>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::Filter,WTF::RawPtrTraits<WebCore::Filter>,WTF::DefaultRefDerefTraits<WebCore::Filter>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::Filter,WTF::RawPtrTraits<WebCore::Filter>,WTF::DefaultRefDerefTraits<WebCore::Filter>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebCore::Filter,WTF::RawPtrTraits<WebCore::Filter>,WTF::DefaultRefDerefTraits<WebCore::Filter>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>> WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::Filter,WTF::RawPtrTraits<WebCore::Filter>,WTF::DefaultRefDerefTraits<WebCore::Filter>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebCore::Filter,WTF::RawPtrTraits<WebCore::Filter>,WTF::DefaultRefDerefTraits<WebCore::Filter>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::inlineAdd<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long> const&,WTF::Ref<WebCore::Filter,WTF::RawPtrTraits<WebCore::Filter>,WTF::DefaultRefDerefTraits<WebCore::Filter>>>(WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long> const&,WTF::Ref<WebCore::Filter,WTF::RawPtrTraits<WebCore::Filter>,WTF::DefaultRefDerefTraits<WebCore::Filter>> &&)::{lambda(void)#1}>( v11,  v13,  &v24);
  v14 = *a2;
  if (*a2)
  {
    v15 = *(v14 - 12) + 1;
  }

  else
  {
    v15 = 1;
  }

  *(v14 - 12) = v15;
  v16 = (*(v14 - 16) + v15);
  v17 = *(v14 - 4);
  if (v17 > 0x400)
  {
    if (v17 > 2 * v16)
    {
      goto LABEL_9;
    }

LABEL_20:
    result = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::Filter,WTF::RawPtrTraits<WebCore::Filter>,WTF::DefaultRefDerefTraits<WebCore::Filter>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::Filter,WTF::RawPtrTraits<WebCore::Filter>,WTF::DefaultRefDerefTraits<WebCore::Filter>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::Filter,WTF::RawPtrTraits<WebCore::Filter>,WTF::DefaultRefDerefTraits<WebCore::Filter>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebCore::Filter,WTF::RawPtrTraits<WebCore::Filter>,WTF::DefaultRefDerefTraits<WebCore::Filter>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(a2, v11);
    v11 = result;
    v14 = *a2;
    if (*a2)
    {
      v17 = *(v14 - 4);
    }

    else
    {
      v17 = 0;
    }

    goto LABEL_9;
  }

  if (3 * v17 <= 4 * v16)
  {
    goto LABEL_20;
  }

LABEL_9:
  v18 = v14 + 16 * v17;
  v19 = 1;
LABEL_10:
  *a1 = v11;
  *(a1 + 8) = v18;
  *(a1 + 16) = v19;
  return result;
}

void WebKit::ImageBufferShareableAllocator::~ImageBufferShareableAllocator(WebKit::ImageBufferShareableAllocator *this)
{
  WTF::MachSendRight::~MachSendRight((this + 8));

  WebCore::ImageBufferAllocator::~ImageBufferAllocator(this);
}

{
  WTF::MachSendRight::~MachSendRight((this + 8));
  WebCore::ImageBufferAllocator::~ImageBufferAllocator(this);

  bmalloc::api::tzoneFree(v2, v3);
}

uint64_t WebCore::GraphicsContextState::setProperty<WebCore::SourceBrush>(uint64_t result, unint64_t a2, const Color *a3, Color *a4)
{
  v4 = (a3 + result);
  v5 = *(&a3->m_colorAndFlags + result);
  if ((v5 & 0x8000000000000) != 0 || (a4->m_colorAndFlags & 0x8000000000000) != 0)
  {
    v25 = (a3 + result);
    v30 = result;
    v34 = a2;
    v22 = a4;
    v12 = WebCore::outOfLineComponentsEqual((a3 + result), a4, a3);
    a4 = v22;
    v4 = v25;
    a2 = v34;
    v13 = v12;
    result = v30;
    if (!v13)
    {
      goto LABEL_4;
    }
  }

  else if (v5 != a4->m_colorAndFlags)
  {
    goto LABEL_4;
  }

  m_colorAndFlags_low = LOBYTE(v4[8].m_colorAndFlags);
  if (LOBYTE(a4[8].m_colorAndFlags) != m_colorAndFlags_low)
  {
    goto LABEL_4;
  }

  if (m_colorAndFlags_low == 1)
  {
    if (v4[1].m_colorAndFlags == a4[1].m_colorAndFlags)
    {
      v15 = 2;
      do
      {
        v16 = *&v4[v15].m_colorAndFlags;
        v17 = *&a4[v15].m_colorAndFlags;
        if (v16 != v17)
        {
          break;
        }
      }

      while (v15++ != 7);
      if (v16 == v17)
      {
        return result;
      }
    }

LABEL_4:
    if (v4 != a4)
    {
      if ((v4->m_colorAndFlags & 0x8000000000000) != 0)
      {
        v19 = (v4->m_colorAndFlags & 0xFFFFFFFFFFFFLL);
        if (atomic_fetch_add(v19, 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, v19);
          v27 = v4;
          v31 = result;
          v35 = a2;
          v23 = a4;
          WTF::fastFree(v19, a2);
          a4 = v23;
          v4 = v27;
          a2 = v35;
          result = v31;
        }
      }

      m_colorAndFlags = a4->m_colorAndFlags;
      a4->m_colorAndFlags = 0;
      v4->m_colorAndFlags = m_colorAndFlags;
    }

    v7 = &v4[1];
    v8 = LOBYTE(v4[8].m_colorAndFlags);
    v9 = LOBYTE(a4[8].m_colorAndFlags);
    if (v8 == 255)
    {
      if (v9 == 255)
      {
        goto LABEL_11;
      }
    }

    else if (v9 == 255)
    {
      v26 = v4;
      v33 = a2;
      v29 = result;
      if (LOBYTE(v4[8].m_colorAndFlags))
      {
        if (v8 == 1)
        {
          WTF::Ref<WebCore::Gradient,WTF::RawPtrTraits<WebCore::Gradient>,WTF::DefaultRefDerefTraits<WebCore::Gradient>>::~Ref(&v4[1], a2);
        }

        else
        {
          v21 = *v7;
          *v7 = 0;
          if (v21)
          {
            WTF::ThreadSafeRefCounted<WebCore::Pattern,(WTF::DestructionThread)0>::deref(v21);
          }
        }
      }

      LOBYTE(v26[8].m_colorAndFlags) = -1;
      goto LABEL_31;
    }

    v36 = &v4[1];
    if (!v9)
    {
      if (!v8)
      {
LABEL_11:
        *(result + 144) |= a2;
        return result;
      }

      if (v8 != 255)
      {
        v24 = v4;
        v32 = a2;
        v28 = result;
        if (v8 == 1)
        {
          WTF::Ref<WebCore::Gradient,WTF::RawPtrTraits<WebCore::Gradient>,WTF::DefaultRefDerefTraits<WebCore::Gradient>>::~Ref(&v4[1], a2);
        }

        else
        {
          v20 = *v7;
          *v7 = 0;
          if (!v20)
          {
            goto LABEL_14;
          }

          WTF::ThreadSafeRefCounted<WebCore::Pattern,(WTF::DestructionThread)0>::deref(v20);
        }

        v4 = v24;
        result = v28;
        LODWORD(a2) = v32;
      }

LABEL_14:
      LOBYTE(v4[8].m_colorAndFlags) = 0;
      goto LABEL_11;
    }

    v33 = a2;
    v29 = result;
    v10 = a4 + 1;
    v11 = &v4[1];
    if (v9 == 1)
    {
      _ZN5mpark3lib5cpp176invokeIZNS_6detail10assignmentINS3_6traitsIJNSt3__19monostateEN7WebCore26SourceBrushLogicalGradientEN3WTF3RefINS8_7PatternENSA_12RawPtrTraitsISC_EENSA_21DefaultRefDerefTraitsISC_EEEEEEEE14generic_assignINS3_15move_assignmentISI_LNS3_5TraitE1EEEEEvOT_EUlRSO_OT0_E_JRNS3_3altILm1ES9_EESV_EEEDTclsr6detailE6invokeclsr3libE7forwardISO_Efp_Espclsr3libE7forwardIT0_Efp0_EEESP_DpOSX_(&v36, v11, v10);
    }

    else
    {
      _ZN5mpark3lib5cpp176invokeIZNS_6detail10assignmentINS3_6traitsIJNSt3__19monostateEN7WebCore26SourceBrushLogicalGradientEN3WTF3RefINS8_7PatternENSA_12RawPtrTraitsISC_EENSA_21DefaultRefDerefTraitsISC_EEEEEEEE14generic_assignINS3_15move_assignmentISI_LNS3_5TraitE1EEEEEvOT_EUlRSO_OT0_E_JRNS3_3altILm2ESH_EESV_EEEDTclsr6detailE6invokeclsr3libE7forwardISO_Efp_Espclsr3libE7forwardIT0_Efp0_EEESP_DpOSX_(&v36, v11, v10);
    }

LABEL_31:
    result = v29;
    LODWORD(a2) = v33;
    goto LABEL_11;
  }

  if (m_colorAndFlags_low == 2 && v4[1].m_colorAndFlags != a4[1].m_colorAndFlags)
  {
    goto LABEL_4;
  }

  return result;
}

BOOL WebCore::outOfLineComponentsEqual(WebCore *this, const Color *a2, const Color *a3)
{
  v3 = *this;
  if ((*this & 0x8000000000000) == 0)
  {
    return 0;
  }

  m_colorAndFlags = a2->m_colorAndFlags;
  if ((a2->m_colorAndFlags & 0x8000000000000) == 0)
  {
    return 0;
  }

  v6 = 0;
  v7 = 0;
  v8 = *((v3 & 0xFFFFFFFFFFFFLL) + 4);
  v11 = *((m_colorAndFlags & 0xFFFFFFFFFFFFLL) + 4);
  v12 = v8;
  do
  {
    if (*(&v12 + v7) != *(&v11 + v7))
    {
      break;
    }

    v6 = v7++ > 2;
  }

  while (v7 != 4);
  v9 = (m_colorAndFlags ^ v3) >> 56;
  v10 = BYTE6(v3) == BYTE6(m_colorAndFlags);
  if (!v6)
  {
    v10 = 0;
  }

  return !v9 && v10;
}

__n128 _ZN5mpark3lib5cpp176invokeIZNS_6detail10assignmentINS3_6traitsIJNSt3__19monostateEN7WebCore26SourceBrushLogicalGradientEN3WTF3RefINS8_7PatternENSA_12RawPtrTraitsISC_EENSA_21DefaultRefDerefTraitsISC_EEEEEEEE14generic_assignINS3_15move_assignmentISI_LNS3_5TraitE1EEEEEvOT_EUlRSO_OT0_E_JRNS3_3altILm1ES9_EESV_EEEDTclsr6detailE6invokeclsr3libE7forwardISO_Efp_Espclsr3libE7forwardIT0_Efp0_EEESP_DpOSX_(uint64_t *a1, void *a2, uint64_t *a3)
{
  v4 = *a1;
  v5 = *(*a1 + 56);
  if (*(*a1 + 56))
  {
    if (v5 == 1)
    {
      v7 = *a3;
      *a3 = 0;
      v8 = *a2;
      *a2 = v7;
      v15 = v8;
      WTF::Ref<WebCore::Gradient,WTF::RawPtrTraits<WebCore::Gradient>,WTF::DefaultRefDerefTraits<WebCore::Gradient>>::~Ref(&v15, a2);
      result = *(a3 + 1);
      v10 = *(a3 + 3);
      *(a2 + 5) = *(a3 + 5);
      *(a2 + 3) = v10;
      *(a2 + 1) = result;
      return result;
    }

    if (v5 != 255)
    {
      v13 = *v4;
      *v4 = 0;
      if (v13)
      {
        v14 = v4;
        WTF::ThreadSafeRefCounted<WebCore::Pattern,(WTF::DestructionThread)0>::deref(v13);
        v4 = v14;
      }
    }
  }

  *(v4 + 56) = -1;
  v11 = *a3;
  *a3 = 0;
  *v4 = v11;
  result = *(a3 + 1);
  v12 = *(a3 + 3);
  *(v4 + 40) = *(a3 + 5);
  *(v4 + 24) = v12;
  *(v4 + 8) = result;
  *(v4 + 56) = 1;
  return result;
}

atomic_uchar ***_ZN5mpark3lib5cpp176invokeIZNS_6detail10assignmentINS3_6traitsIJNSt3__19monostateEN7WebCore26SourceBrushLogicalGradientEN3WTF3RefINS8_7PatternENSA_12RawPtrTraitsISC_EENSA_21DefaultRefDerefTraitsISC_EEEEEEEE14generic_assignINS3_15move_assignmentISI_LNS3_5TraitE1EEEEEvOT_EUlRSO_OT0_E_JRNS3_3altILm2ESH_EESV_EEEDTclsr6detailE6invokeclsr3libE7forwardISO_Efp_Espclsr3libE7forwardIT0_Efp0_EEESP_DpOSX_(atomic_uchar ****a1, atomic_uchar ***a2, atomic_uchar ***a3)
{
  result = *a1;
  if (*(result + 56) <= 1u)
  {
    if (*(result + 56))
    {
      result = WTF::Ref<WebCore::Gradient,WTF::RawPtrTraits<WebCore::Gradient>,WTF::DefaultRefDerefTraits<WebCore::Gradient>>::~Ref(result, a2);
    }

    goto LABEL_9;
  }

  if (*(result + 56) != 2)
  {
LABEL_9:
    v6 = *a3;
    *a3 = 0;
    *result = v6;
    *(result + 56) = 2;
    return result;
  }

  v5 = *a3;
  *a3 = 0;
  result = *a2;
  *a2 = v5;
  if (result)
  {

    return WTF::ThreadSafeRefCounted<WebCore::Pattern,(WTF::DestructionThread)0>::deref(result);
  }

  return result;
}

uint64_t WebCore::GraphicsContextState::setProperty<std::optional<WebCore::GraphicsDropShadow>>(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = result + a3;
  v5 = *(result + a3 + 32);
  v6 = *(a4 + 32);
  if (v5 != v6)
  {
LABEL_2:
    if (v5 != v6)
    {
      if (v5)
      {
        v17 = a2;
        v14 = result;
        v9 = *(v4 + 16);
        if ((v9 & 0x8000000000000) != 0)
        {
          v12 = (v9 & 0xFFFFFFFFFFFFLL);
          if (atomic_fetch_add((v9 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
          {
            atomic_store(1u, v12);
            WTF::fastFree(v12, a2);
          }
        }

        *(v4 + 32) = 0;
        result = v14;
        LODWORD(a2) = v17;
      }

      else
      {
        v7 = *a4;
        *(v4 + 8) = *(a4 + 8);
        *v4 = v7;
        v8 = *(a4 + 16);
        *(v4 + 16) = v8;
        if ((v8 & 0x8000000000000) != 0)
        {
          atomic_fetch_add((v8 & 0xFFFFFFFFFFFFLL), 1u);
        }

        *(v4 + 24) = *(a4 + 24);
        *(v4 + 32) = 1;
      }

      goto LABEL_4;
    }

    if ((v5 & 1) == 0)
    {
LABEL_4:
      *(result + 144) |= a2;
      return result;
    }

LABEL_17:
    v10 = *a4;
    *(v4 + 8) = *(a4 + 8);
    *v4 = v10;
    v15 = result;
    v18 = a2;
    v11 = a4;
    WebCore::Color::operator=((v4 + 16), (a4 + 16));
    LODWORD(a2) = v18;
    result = v15;
    *(v4 + 24) = *(v11 + 24);
    goto LABEL_4;
  }

  v16 = a2;
  v13 = result;
  if (*(result + a3 + 32))
  {
    if ((v6 & 1) == 0)
    {
      __break(1u);
      goto LABEL_17;
    }

    v19 = a4;
    result = WebCore::operator==(result + a3, a4);
    a4 = v19;
    if ((result & 1) == 0)
    {
      v5 = *(v4 + 32);
      v6 = v19[32];
      result = v13;
      a2 = v16;
      goto LABEL_2;
    }
  }

  return result;
}

BOOL WebCore::operator==(uint64_t a1, uint64_t a2)
{
  v2 = *a1 == *a2 && *(a1 + 4) == *(a2 + 4);
  if (!v2 || *(a1 + 8) != *(a2 + 8))
  {
    return 0;
  }

  v3 = *(a1 + 16);
  v4 = *(a2 + 16);
  if ((v3 & 0x8000000000000) == 0)
  {
    return (v4 & 0x8000000000000) == 0 && v3 == v4;
  }

  if ((v4 & 0x8000000000000) == 0)
  {
    return 0;
  }

  v7 = 0;
  v8 = 0;
  v9 = *((v3 & 0xFFFFFFFFFFFFLL) + 4);
  v12 = *((v4 & 0xFFFFFFFFFFFFLL) + 4);
  v13 = v9;
  do
  {
    if (*(&v13 + v8) != *(&v12 + v8))
    {
      break;
    }

    v7 = v8++ > 2;
  }

  while (v8 != 4);
  v10 = (v4 ^ v3) >> 56;
  v11 = BYTE6(v3) == BYTE6(v4);
  if (!v7)
  {
    v11 = 0;
  }

  return !v10 && v11;
}

{
  v2 = *a1 == *a2 && *(a1 + 4) == *(a2 + 4);
  return v2 && *(a1 + 8) == *(a2 + 8) && *(a1 + 12) == *(a2 + 12) && *(a1 + 16) == *(a2 + 16);
}

void *WebCore::Color::operator=(void *result, void *a2)
{
  v2 = *result;
  if (*result != *a2)
  {
    if ((v2 & 0x8000000000000) != 0)
    {
      v4 = (v2 & 0xFFFFFFFFFFFFLL);
      if (atomic_fetch_add(v4, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v4);
        v5 = a2;
        v6 = result;
        WTF::fastFree(v4, a2);
        a2 = v5;
        result = v6;
      }
    }

    v3 = *a2;
    *result = *a2;
    if ((v3 & 0x8000000000000) != 0)
    {
      atomic_fetch_add((v3 & 0xFFFFFFFFFFFFLL), 1u);
    }
  }

  return result;
}

void _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_10assignmentINS0_6traitsIJN7WebCore18GraphicsDropShadowENS6_20GraphicsGaussianBlurENS6_19GraphicsColorMatrixEEEEE14generic_assignIRKNS0_15copy_assignmentISA_LNS0_5TraitE1EEEEEvOT_EUlRSI_OT0_E_JRSB_SH_EEEDcmSJ_DpOT0_(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4)
{
  v4 = *a2;
  v5 = *(*a2 + 80);
  if (a1 == 2)
  {
    if (v5 == 2)
    {
      *a3 = *a4;
      v6 = *(a4 + 1);
      v7 = *(a4 + 2);
      v8 = *(a4 + 4);
      *(a3 + 48) = *(a4 + 3);
      *(a3 + 64) = v8;
      *(a3 + 16) = v6;
      *(a3 + 32) = v7;
    }

    else
    {
      v21[0] = *a2;
      v21[1] = a4;
      mpark::detail::assignment<mpark::detail::traits<WebCore::GraphicsDropShadow,WebCore::GraphicsGaussianBlur,WebCore::GraphicsColorMatrix>>::assign_alt<2ul,WebCore::GraphicsColorMatrix,WebCore::GraphicsColorMatrix const&>(mpark::detail::alt<2ul,WebCore::GraphicsColorMatrix> &,WebCore::GraphicsColorMatrix const&)::{unnamed type#1}::operator()(v21, a2);
    }
  }

  else if (a1 == 1)
  {
    if (*(*a2 + 80))
    {
      if (v5 == 1)
      {
        *a3 = *a4;
        return;
      }
    }

    else
    {
      v14 = *(v4 + 16);
      if ((v14 & 0x8000000000000) != 0)
      {
        v15 = (v14 & 0xFFFFFFFFFFFFLL);
        if (atomic_fetch_add((v14 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, v15);
          v17 = v4;
          v19 = a4;
          WTF::fastFree(v15, a2);
          v4 = v17;
          a4 = v19;
        }
      }
    }

    *(v4 + 80) = -1;
    *v4 = *a4;
    *(v4 + 80) = 1;
  }

  else if (*(*a2 + 80))
  {
    *(v4 + 80) = -1;
    v9 = *a4;
    *(v4 + 8) = *(a4 + 2);
    *v4 = v9;
    v10 = a4[2];
    *(v4 + 16) = v10;
    if ((v10 & 0x8000000000000) != 0)
    {
      atomic_fetch_add((v10 & 0xFFFFFFFFFFFFLL), 1u);
    }

    *(v4 + 24) = a4[3];
    *(v4 + 80) = 0;
  }

  else
  {
    v11 = *a4;
    *(a3 + 8) = *(a4 + 2);
    *a3 = v11;
    v12 = *(a3 + 16);
    if (v12 != a4[2])
    {
      if ((v12 & 0x8000000000000) != 0)
      {
        v16 = (v12 & 0xFFFFFFFFFFFFLL);
        if (atomic_fetch_add((v12 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, v16);
          v18 = a3;
          v20 = a4;
          WTF::fastFree(v16, a2);
          a3 = v18;
          a4 = v20;
        }
      }

      v13 = a4[2];
      *(a3 + 16) = v13;
      if ((v13 & 0x8000000000000) != 0)
      {
        atomic_fetch_add((v13 & 0xFFFFFFFFFFFFLL), 1u);
      }
    }

    *(a3 + 24) = a4[3];
  }
}

__n128 mpark::detail::assignment<mpark::detail::traits<WebCore::GraphicsDropShadow,WebCore::GraphicsGaussianBlur,WebCore::GraphicsColorMatrix>>::assign_alt<2ul,WebCore::GraphicsColorMatrix,WebCore::GraphicsColorMatrix const&>(mpark::detail::alt<2ul,WebCore::GraphicsColorMatrix> &,WebCore::GraphicsColorMatrix const&)::{unnamed type#1}::operator()(void *a1, void *a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (!*(*a1 + 80))
  {
    v4 = *(v2 + 16);
    if ((v4 & 0x8000000000000) != 0)
    {
      v8 = (v4 & 0xFFFFFFFFFFFFLL);
      if (atomic_fetch_add((v4 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v8);
        v9 = v3;
        v10 = v2;
        WTF::fastFree(v8, a2);
        v3 = v9;
        v2 = v10;
      }
    }
  }

  *(v2 + 80) = -1;
  *v2 = *v3;
  result = *(v3 + 16);
  v6 = *(v3 + 32);
  v7 = *(v3 + 64);
  *(v2 + 48) = *(v3 + 48);
  *(v2 + 64) = v7;
  *(v2 + 16) = result;
  *(v2 + 32) = v6;
  *(v2 + 80) = 2;
  return result;
}

uint64_t WebKit::ImageBufferShareableAllocator::operator new(WebKit::ImageBufferShareableAllocator *this, void *a2)
{
  if (WebKit::ImageBufferShareableAllocator::s_heapRef)
  {
    return bmalloc::api::tzoneAllocateNonCompact(WebKit::ImageBufferShareableAllocator::s_heapRef, a2);
  }

  else
  {
    return WebKit::ImageBufferShareableAllocator::operatorNewSlow(0x10);
  }
}

void WebCore::FilterResults::~FilterResults(WebCore::FilterResults *this, void *a2)
{
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 1);
  if (v4)
  {
    v5 = *(v4 - 4);
    if (v5)
    {
      for (i = 0; i != v5; ++i)
      {
        v7 = (v4 + 16 * i);
        v8 = *v7;
        if (*v7 != -1)
        {
          v9 = v7[1];
          if (v9)
          {
            v10 = *(v9 - 4);
            if (v10)
            {
              v11 = v7[1];
              do
              {
                if (*v11 != -1)
                {
                  v11 = WTF::Ref<WebCore::FEColorMatrix,WTF::RawPtrTraits<WebCore::FEColorMatrix>,WTF::DefaultRefDerefTraits<WebCore::FEColorMatrix>>::~Ref(v11, a2);
                }

                ++v11;
                --v10;
              }

              while (v10);
            }

            WTF::fastFree((v9 - 16), a2);
            v8 = *v7;
          }

          *v7 = 0;
          if (v8)
          {
            WTF::RefCounted<WebCore::FilterImage>::deref(v8, a2);
          }
        }
      }
    }

    WTF::fastFree((v4 - 16), a2);
  }

  v12 = *this;
  if (*this)
  {
    v13 = *(v12 - 4);
    if (v13)
    {
      v14 = *this;
      do
      {
        if (*v14 != -1)
        {
          v15 = *(v14 + 8);
          *(v14 + 8) = 0;
          if (v15)
          {
            WTF::RefCounted<WebCore::FilterImage>::deref(v15, a2);
          }

          WTF::Ref<WebCore::FEColorMatrix,WTF::RawPtrTraits<WebCore::FEColorMatrix>,WTF::DefaultRefDerefTraits<WebCore::FEColorMatrix>>::~Ref(v14, a2);
        }

        v14 += 16;
        --v13;
      }

      while (v13);
    }

    WTF::fastFree((v12 - 16), a2);
  }
}

atomic_uchar **WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::RenderingResource,(WTF::DestructionThread)0>::deref(atomic_uchar **result, void *a2)
{
  do
  {
    v2 = *result;
    if ((*result & 1) == 0)
    {
      return WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebCore::RenderingResource,(WTF::DestructionThread)0>(*result, a2);
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

uint64_t WTF::RefCounted<WebCore::FilterImage>::deref(uint64_t this, void *a2)
{
  v2 = this;
  if (*this == 1)
  {
    v3 = *(this + 88);
    *(v2 + 11) = 0;
    if (v3)
    {
      CFRelease(v3);
    }

    v4 = *(v2 + 10);
    *(v2 + 10) = 0;
    if (v4)
    {
      if (v4[2] == 1)
      {
        (*(*v4 + 8))(v4);
      }

      else
      {
        --v4[2];
      }
    }

    v5 = *(v2 + 9);
    *(v2 + 9) = 0;
    if (v5)
    {
      if (v5[2] == 1)
      {
        (*(*v5 + 8))(v5);
      }

      else
      {
        --v5[2];
      }
    }

    v6 = *(v2 + 8);
    *(v2 + 8) = 0;
    if (v6)
    {
      WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::ImageBuffer,(WTF::DestructionThread)0>::deref((v6 + 8), a2);
    }

    v7 = *(v2 + 7);
    *(v2 + 7) = 0;
    if (v7)
    {
      CFRelease(v7);
    }

    if (*v2 == 1)
    {

      return WTF::fastFree(v2, a2);
    }

    else
    {
      this = 191;
      __break(0xC471u);
    }
  }

  else
  {
    --*this;
  }

  return this;
}

void WebKit::ScopedWebGLRenderingResourcesRequest::~ScopedWebGLRenderingResourcesRequest(WebKit::ScopedWebGLRenderingResourcesRequest *this)
{
  v1 = this;
  if (*this == 1)
  {
    atomic_fetch_add(WebKit::ScopedWebGLRenderingResourcesRequest::s_requests, 0xFFFFFFFF);
    if (!atomic_load(WebKit::ScopedWebGLRenderingResourcesRequest::s_requests))
    {
      this = WebKit::ScopedWebGLRenderingResourcesRequest::scheduleFreeWebGLRenderingResources(this);
    }
  }

  if (*(v1 + 1) == 1)
  {
    atomic_fetch_add(WebKit::ScopedRenderingResourcesRequest::s_requests, 0xFFFFFFFF);
    if (!atomic_load(WebKit::ScopedRenderingResourcesRequest::s_requests))
    {
      WebKit::ScopedRenderingResourcesRequest::scheduleFreeRenderingResources(this);
    }
  }
}

uint64_t WebKit::ShapeDetection::ObjectHeap::operator new(WebKit::ShapeDetection::ObjectHeap *this, void *a2)
{
  if (WebKit::ShapeDetection::ObjectHeap::s_heapRef)
  {
    return bmalloc::api::tzoneAllocateNonCompact(WebKit::ShapeDetection::ObjectHeap::s_heapRef, a2);
  }

  else
  {
    return WebKit::ShapeDetection::ObjectHeap::operatorNewSlow(0x28);
  }
}

uint64_t WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteImageBufferSet,WTF::RefPtr<WebKit::RemoteImageBufferSet,WTF::RawPtrTraits<WebKit::RemoteImageBufferSet>,WTF::DefaultRefDerefTraits<WebKit::RemoteImageBufferSet>>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteImageBufferSet,WTF::RefPtr<WebKit::RemoteImageBufferSet,WTF::RawPtrTraits<WebKit::RemoteImageBufferSet>,WTF::DefaultRefDerefTraits<WebKit::RemoteImageBufferSet>>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteImageBufferSet,WTF::RefPtr<WebKit::RemoteImageBufferSet,WTF::RawPtrTraits<WebKit::RemoteImageBufferSet>,WTF::DefaultRefDerefTraits<WebKit::RemoteImageBufferSet>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteImageBufferSet,WTF::RefPtr<WebKit::RemoteImageBufferSet,WTF::RawPtrTraits<WebKit::RemoteImageBufferSet>,WTF::DefaultRefDerefTraits<WebKit::RemoteImageBufferSet>>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::deallocateTable(uint64_t a1, void *a2)
{
  v3 = *(a1 - 4);
  if (v3)
  {
    v4 = (a1 + 8);
    do
    {
      if (*(v4 - 1) != -1)
      {
        v4 = IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteImageBufferSet,WTF::RefPtr<WebKit::RemoteImageBufferSet,WTF::RawPtrTraits<WebKit::RemoteImageBufferSet>,WTF::DefaultRefDerefTraits<WebKit::RemoteImageBufferSet>>>::~ScopedActiveMessageReceiveQueue(v4);
      }

      v4 += 2;
      --v3;
    }

    while (v3);
  }

  return WTF::fastFree((a1 - 16), a2);
}

uint64_t WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteImageBuffer,WTF::RefPtr<WebKit::RemoteImageBuffer,WTF::RawPtrTraits<WebKit::RemoteImageBuffer>,WTF::DefaultRefDerefTraits<WebKit::RemoteImageBuffer>>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteImageBuffer,WTF::RefPtr<WebKit::RemoteImageBuffer,WTF::RawPtrTraits<WebKit::RemoteImageBuffer>,WTF::DefaultRefDerefTraits<WebKit::RemoteImageBuffer>>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteImageBuffer,WTF::RefPtr<WebKit::RemoteImageBuffer,WTF::RawPtrTraits<WebKit::RemoteImageBuffer>,WTF::DefaultRefDerefTraits<WebKit::RemoteImageBuffer>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteImageBuffer,WTF::RefPtr<WebKit::RemoteImageBuffer,WTF::RawPtrTraits<WebKit::RemoteImageBuffer>,WTF::DefaultRefDerefTraits<WebKit::RemoteImageBuffer>>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::deallocateTable(uint64_t a1, void *a2)
{
  v3 = *(a1 - 4);
  if (v3)
  {
    v4 = (a1 + 8);
    do
    {
      if (*(v4 - 1) != -1)
      {
        v4 = IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteImageBuffer,WTF::RefPtr<WebKit::RemoteImageBuffer,WTF::RawPtrTraits<WebKit::RemoteImageBuffer>,WTF::DefaultRefDerefTraits<WebKit::RemoteImageBuffer>>>::~ScopedActiveMessageReceiveQueue(v4);
      }

      v4 += 2;
      --v3;
    }

    while (v3);
  }

  return WTF::fastFree((a1 - 16), a2);
}

WebCore::FontCustomPlatformData *WTF::RefCounted<WebCore::FontCustomPlatformData>::deref(WebCore::FontCustomPlatformData *result)
{
  if (*result == 1)
  {
    WebCore::FontCustomPlatformData::~FontCustomPlatformData(result);

    return bmalloc::api::tzoneFree(v2, v3);
  }

  else
  {
    --*result;
  }

  return result;
}

uint64_t WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::FontCustomPlatformData,WTF::RawPtrTraits<WebCore::FontCustomPlatformData>,WTF::DefaultRefDerefTraits<WebCore::FontCustomPlatformData>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::FontCustomPlatformData,WTF::RawPtrTraits<WebCore::FontCustomPlatformData>,WTF::DefaultRefDerefTraits<WebCore::FontCustomPlatformData>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::FontCustomPlatformData,WTF::RawPtrTraits<WebCore::FontCustomPlatformData>,WTF::DefaultRefDerefTraits<WebCore::FontCustomPlatformData>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebCore::FontCustomPlatformData,WTF::RawPtrTraits<WebCore::FontCustomPlatformData>,WTF::DefaultRefDerefTraits<WebCore::FontCustomPlatformData>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::deallocateTable(uint64_t a1, void *a2)
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
          WTF::RefCounted<WebCore::FontCustomPlatformData>::deref(v5);
        }
      }

      v4 += 2;
      --v3;
    }

    while (v3);
  }

  return WTF::fastFree((a1 - 16), a2);
}

uint64_t WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::Font,WTF::RawPtrTraits<WebCore::Font>,WTF::DefaultRefDerefTraits<WebCore::Font>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::Font,WTF::RawPtrTraits<WebCore::Font>,WTF::DefaultRefDerefTraits<WebCore::Font>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::Font,WTF::RawPtrTraits<WebCore::Font>,WTF::DefaultRefDerefTraits<WebCore::Font>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebCore::Font,WTF::RawPtrTraits<WebCore::Font>,WTF::DefaultRefDerefTraits<WebCore::Font>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::deallocateTable(uint64_t a1, void *a2)
{
  v3 = *(a1 - 4);
  if (v3)
  {
    v4 = (a1 + 8);
    do
    {
      if (*(v4 - 1) != -1)
      {
        v4 = WTF::Ref<WebCore::Font,WTF::RawPtrTraits<WebCore::Font>,WTF::DefaultRefDerefTraits<WebCore::Font>>::~Ref(v4);
      }

      v4 += 2;
      --v3;
    }

    while (v3);
  }

  return WTF::fastFree((a1 - 16), a2);
}

uint64_t WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::Filter,WTF::RawPtrTraits<WebCore::Filter>,WTF::DefaultRefDerefTraits<WebCore::Filter>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::Filter,WTF::RawPtrTraits<WebCore::Filter>,WTF::DefaultRefDerefTraits<WebCore::Filter>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::Filter,WTF::RawPtrTraits<WebCore::Filter>,WTF::DefaultRefDerefTraits<WebCore::Filter>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebCore::Filter,WTF::RawPtrTraits<WebCore::Filter>,WTF::DefaultRefDerefTraits<WebCore::Filter>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::deallocateTable(uint64_t a1, void *a2)
{
  v3 = *(a1 - 4);
  if (v3)
  {
    v4 = (a1 + 8);
    do
    {
      if (*(v4 - 1) != -1)
      {
        v4 = WTF::Ref<WebCore::FEBlend,WTF::RawPtrTraits<WebCore::FEBlend>,WTF::DefaultRefDerefTraits<WebCore::FEBlend>>::~Ref(v4, a2);
      }

      v4 += 2;
      --v3;
    }

    while (v3);
  }

  return WTF::fastFree((a1 - 16), a2);
}

uint64_t WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::DecomposedGlyphs,WTF::RawPtrTraits<WebCore::DecomposedGlyphs>,WTF::DefaultRefDerefTraits<WebCore::DecomposedGlyphs>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::DecomposedGlyphs,WTF::RawPtrTraits<WebCore::DecomposedGlyphs>,WTF::DefaultRefDerefTraits<WebCore::DecomposedGlyphs>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::DecomposedGlyphs,WTF::RawPtrTraits<WebCore::DecomposedGlyphs>,WTF::DefaultRefDerefTraits<WebCore::DecomposedGlyphs>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebCore::DecomposedGlyphs,WTF::RawPtrTraits<WebCore::DecomposedGlyphs>,WTF::DefaultRefDerefTraits<WebCore::DecomposedGlyphs>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::deallocateTable(uint64_t a1, void *a2)
{
  v3 = *(a1 - 4);
  if (v3)
  {
    v4 = (a1 + 8);
    do
    {
      if (*(v4 - 1) != -1)
      {
        v4 = WTF::Ref<WebCore::Gradient,WTF::RawPtrTraits<WebCore::Gradient>,WTF::DefaultRefDerefTraits<WebCore::Gradient>>::~Ref(v4, a2);
      }

      v4 += 2;
      --v3;
    }

    while (v3);
  }

  return WTF::fastFree((a1 - 16), a2);
}

uint64_t WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::ImageBuffer,WTF::RawPtrTraits<WebCore::ImageBuffer>,WTF::DefaultRefDerefTraits<WebCore::ImageBuffer>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::ImageBuffer,WTF::RawPtrTraits<WebCore::ImageBuffer>,WTF::DefaultRefDerefTraits<WebCore::ImageBuffer>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::ImageBuffer,WTF::RawPtrTraits<WebCore::ImageBuffer>,WTF::DefaultRefDerefTraits<WebCore::ImageBuffer>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebCore::ImageBuffer,WTF::RawPtrTraits<WebCore::ImageBuffer>,WTF::DefaultRefDerefTraits<WebCore::ImageBuffer>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::deallocateTable(uint64_t a1, void *a2)
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
          WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::ImageBuffer,(WTF::DestructionThread)0>::deref((v5 + 8), a2);
        }
      }

      v4 += 2;
      --v3;
    }

    while (v3);
  }

  return WTF::fastFree((a1 - 16), a2);
}

atomic_uint *WTF::ThreadSafeRefCounted<WebCore::Pattern,(WTF::DestructionThread)0>::deref(atomic_uint *result)
{
  add = atomic_fetch_add(result, 0xFFFFFFFF);
  if (add == 1)
  {
    v5 = v1;
    atomic_store(add, result);
    WebCore::Pattern::~Pattern(result);

    return WTF::fastFree(v3, v4);
  }

  return result;
}

uint64_t *WebKit::RemoteDisplayListRecorder::drawFilteredImageBuffer(std::optional<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WebCore::FloatRect const&,WTF::Ref<WebCore::Filter,WTF::RawPtrTraits<WebCore::Filter>,WTF::DefaultRefDerefTraits<WebCore::Filter>> &&)::$_0::operator()(WebCore::FilterResults *a1, uint64_t a2)
{
  v4 = WebKit::ImageBufferShareableAllocator::operator new(0x10, a2);
  v6 = WebKit::ImageBufferShareableAllocator::ImageBufferShareableAllocator(v4, (a2 + 48));
  std::make_unique[abi:sn200100]<WebCore::FilterResults,std::unique_ptr<WebKit::ImageBufferShareableAllocator>,0>(a1, &v6);
  return std::unique_ptr<WebKit::ImageBufferShareableAllocator>::~unique_ptr[abi:sn200100](&v6);
}

uint64_t std::make_unique[abi:sn200100]<WebCore::FilterResults,std::unique_ptr<WebKit::ImageBufferShareableAllocator>,0>(WebCore::FilterResults *a1, uint64_t *a2)
{
  WebCore::FilterResults::operator new(a1, a2);
  v4 = *a2;
  *a2 = 0;
  v6 = v4;
  *a1 = WebCore::FilterResults::FilterResults();
  result = v6;
  if (v6)
  {
    return (*(*v6 + 8))(v6);
  }

  return result;
}

uint64_t WebCore::FilterResults::operator new(WebCore::FilterResults *this, void *a2)
{
  if (*MEMORY[0x1E69E2510])
  {
    return bmalloc::api::tzoneAllocateNonCompact(*MEMORY[0x1E69E2510], a2);
  }

  else
  {
    return MEMORY[0x1EEE55120](24);
  }
}

uint64_t WTF::Vector<CGSize,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector<WebCore::FloatSize const,18446744073709551615ul>(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  *result = 0;
  *(result + 8) = 0;
  *(result + 12) = a3;
  if (!a3)
  {
    return v4;
  }

  if (!(a3 >> 28))
  {
    v6 = WTF::fastMalloc((16 * a3));
    *(v4 + 8) = a3;
    *v4 = v6;
    v7 = 8 * a3;
    do
    {
      WebCore::FloatSize::operator CGSize();
      *v6 = v8;
      v6[1] = v9;
      v6 += 2;
      a2 += 8;
      v7 -= 8;
    }

    while (v7);
    return v4;
  }

  __break(0xC471u);
  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::RemoteGraphicsContextGL::initialize(WebCore::GraphicsContextGLAttributes &&)::$_0,void>::~CallableWrapper(void *a1)
{
  *a1 = &unk_1F10FB1C8;
  v2 = a1[3];
  a1[3] = 0;
  if (v2 && atomic_fetch_add((v2 + 16), 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, (v2 + 16));
    (*(*(v2 + 8) + 8))();
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::RemoteGraphicsContextGL::initialize(WebCore::GraphicsContextGLAttributes &&)::$_0,void>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F10FB1C8;
  v3 = *(this + 3);
  *(this + 3) = 0;
  if (v3 && atomic_fetch_add((v3 + 16), 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, (v3 + 16));
    (*(*(v3 + 8) + 8))();
  }

  return WTF::fastFree(this, a2);
}

void WTF::Detail::CallableWrapper<WebKit::RemoteGraphicsContextGL::initialize(WebCore::GraphicsContextGLAttributes &&)::$_0,void>::call(uint64_t a1)
{
  v1 = *(a1 + 24);
  (*(*v1 + 40))(v1, a1 + 8);
  v2 = v1[6];
  if (v2)
  {
    atomic_fetch_add(v2 + 2, 1u);
  }

  v3 = v1[5];
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
  IPC::StreamServerConnection::open(v2, v3);
  WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WTF::SerialFunctionDispatcher,(WTF::DestructionThread)0>::deref(v3 + 1);
  v7 = v1[7];
  if (v7)
  {
    ++*(v7 + 8);
    *(v7 + 24) = v1;
    WebCore::GraphicsContextGLANGLE::getString(v7);
    WebCore::GraphicsContextGLANGLE::getString(v7);
    v8 = WebCore::GraphicsContextGLCocoa::externalImageTextureBindingPoint(v7);
    v9 = v30;
    if (v30)
    {
      atomic_fetch_add_explicit(v30, 2u, memory_order_relaxed);
    }

    v10 = v29;
    if (v29)
    {
      atomic_fetch_add_explicit(v29, 2u, memory_order_relaxed);
    }

    v11 = (v1[5] + 32);
    if (v30)
    {
      atomic_fetch_add_explicit(v30, 2u, memory_order_relaxed);
    }

    v22 = v30;
    if (v29)
    {
      atomic_fetch_add_explicit(v29, 2u, memory_order_relaxed);
    }

    v23 = v29;
    v24 = v8;
    v25 = 1;
    v26 = v11;
    v27 = (v2 + 40);
    v28 = &v22;
    WebKit::RemoteGraphicsContextGL::send<Messages::RemoteGraphicsContextGLProxy::WasCreated>(v1, &v26);
    if (v25 == 1)
    {
      v13 = v23;
      v23 = 0;
      if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v13, v12);
      }

      v14 = v22;
      v22 = 0;
      if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v14, v12);
      }
    }

    IPC::StreamServerConnection::startReceivingMessages(v2, (v1 + 1), 0x53u, v1[8]);
    if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v10, v15);
      if (v9)
      {
LABEL_27:
        if (atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v9, v15);
        }
      }
    }

    else if (v9)
    {
      goto LABEL_27;
    }

    v16 = v29;
    v29 = 0;
    if (v16 && atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v16, v15);
    }

    v17 = v30;
    v30 = 0;
    if (v17 && atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v17, v15);
    }

    if (*(v7 + 8) == 1)
    {
      (*(*v7 + 16))(v7);
    }

    else
    {
      --*(v7 + 8);
    }

    goto LABEL_38;
  }

  v30 = 0;
  v18 = MEMORY[0x1E69E9A60];
  semaphore_create(*MEMORY[0x1E69E9A60], &v30 + 1, 0, 0);
  v29 = 0;
  semaphore_create(*v18, &v29 + 1, 0, 0);
  LOBYTE(v22) = 0;
  v25 = 0;
  v26 = &v30;
  v27 = &v29;
  v28 = &v22;
  WebKit::RemoteGraphicsContextGL::send<Messages::RemoteGraphicsContextGLProxy::WasCreated>(v1, &v26);
  if (v25 == 1)
  {
    v20 = v23;
    v23 = 0;
    if (v20 && atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v20, v19);
    }

    v21 = v22;
    v22 = 0;
    if (v21 && atomic_fetch_add_explicit(v21, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v21, v19);
    }
  }

  IPC::Semaphore::destroy(&v29);
  WTF::MachSendRight::~MachSendRight(&v29);
  IPC::Semaphore::destroy(&v30);
  WTF::MachSendRight::~MachSendRight(&v30);
LABEL_38:
  if (v2)
  {
    if (atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v2 + 2);
      (*(*v2 + 8))(v2);
    }
  }
}

void *WTF::Detail::CallableWrapper<WebKit::RemoteGraphicsContextGL::stopListeningForIPC(WTF::Ref<WebKit::RemoteGraphicsContextGL,WTF::RawPtrTraits<WebKit::RemoteGraphicsContextGL>,WTF::DefaultRefDerefTraits<WebKit::RemoteGraphicsContextGL>> &&)::$_0,void>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F10FB1F0;
  a1[1] = 0;
  if (v2 && atomic_fetch_add((v2 + 16), 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, (v2 + 16));
    (*(*(v2 + 8) + 8))();
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::RemoteGraphicsContextGL::stopListeningForIPC(WTF::Ref<WebKit::RemoteGraphicsContextGL,WTF::RawPtrTraits<WebKit::RemoteGraphicsContextGL>,WTF::DefaultRefDerefTraits<WebKit::RemoteGraphicsContextGL>> &&)::$_0,void>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F10FB1F0;
  *(this + 1) = 0;
  if (v3 && atomic_fetch_add((v3 + 16), 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, (v3 + 16));
    (*(*(v3 + 8) + 8))();
  }

  return WTF::fastFree(this, a2);
}

void WTF::Detail::CallableWrapper<WebKit::RemoteGraphicsContextGL::stopListeningForIPC(WTF::Ref<WebKit::RemoteGraphicsContextGL,WTF::RawPtrTraits<WebKit::RemoteGraphicsContextGL>,WTF::DefaultRefDerefTraits<WebKit::RemoteGraphicsContextGL>> &&)::$_0,void>::call(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(v1 + 48);
  if (v2)
  {
    atomic_fetch_add(v2 + 2, 1u);
  }

  v3 = *(v1 + 56);
  if (v3)
  {
    *(v3 + 24) = 0;
    v4 = *(v1 + 56);
    *(v1 + 56) = 0;
    if (v4)
    {
      if (v4[2] == 1)
      {
        (*(*v4 + 16))(v4);
      }

      else
      {
        --v4[2];
      }
    }

    IPC::StreamServerConnection::stopReceivingMessages(v2, 0x53u, *(v1 + 64));
  }

  IPC::StreamServerConnection::invalidate(v2);
  v5 = *(v1 + 48);
  *(v1 + 48) = 0;
  if (v5 && atomic_fetch_add(v5 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v5 + 2);
    v5 = (*(*v5 + 8))(v5);
  }

  v10 = 0;
  if ((v1 + 176) != &v10)
  {
    if (*(v1 + 176) == 1)
    {
      atomic_fetch_add(WebKit::ScopedWebGLRenderingResourcesRequest::s_requests, 0xFFFFFFFF);
      if (!atomic_load(WebKit::ScopedWebGLRenderingResourcesRequest::s_requests))
      {
        v5 = WebKit::ScopedWebGLRenderingResourcesRequest::scheduleFreeWebGLRenderingResources(v5);
      }
    }

    v7 = v10;
    LOBYTE(v10) = 0;
    *(v1 + 176) = v7;
    if (*(v1 + 177) == 1)
    {
      atomic_fetch_add(WebKit::ScopedRenderingResourcesRequest::s_requests, 0xFFFFFFFF);
      if (!atomic_load(WebKit::ScopedRenderingResourcesRequest::s_requests))
      {
        WebKit::ScopedRenderingResourcesRequest::scheduleFreeRenderingResources(v5);
      }
    }

    v9 = HIBYTE(v10);
    HIBYTE(v10) = 0;
    *(v1 + 177) = v9;
  }

  WebKit::ScopedWebGLRenderingResourcesRequest::~ScopedWebGLRenderingResourcesRequest(&v10);
  if (v2)
  {
    if (atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v2 + 2);
      (*(*v2 + 8))(v2);
    }
  }
}

uint64_t IPC::Connection::send<Messages::RemoteGraphicsContextGLProxy::WasLost>(uint64_t *a1, void *a2, uint64_t a3, char a4, uint64_t a5)
{
  v9 = IPC::Encoder::operator new(0x238, a2);
  *v9 = 1155;
  *(v9 + 2) = 0;
  *(v9 + 3) = 0;
  *(v9 + 1) = a3;
  *(v9 + 68) = 0;
  *(v9 + 70) = 0;
  *(v9 + 69) = 0;
  IPC::Encoder::encodeHeader(v9);
  v16 = v9;
  v11 = IPC::Connection::sendMessageImpl(a1, &v16, a4, a5);
  v12 = v16;
  v16 = 0;
  if (v12)
  {
    IPC::Encoder::~Encoder(v12, v10);
    bmalloc::api::tzoneFree(v14, v15);
  }

  return v11;
}

void *WTF::Detail::CallableWrapper<WebKit::RemoteGraphicsContextGL::paintNativeImageToImageBuffer(WebCore::NativeImage &,WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>)::$_0,void>::~CallableWrapper(void *a1, void *a2)
{
  *a1 = &unk_1F10FB218;
  v3 = a1[2];
  a1[2] = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::RenderingResource,(WTF::DestructionThread)0>::deref((v3 + 8), a2);
  }

  v4 = a1[1];
  a1[1] = 0;
  if (v4 && atomic_fetch_add((v4 + 16), 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, (v4 + 16));
    (*(*(v4 + 8) + 8))();
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::RemoteGraphicsContextGL::paintNativeImageToImageBuffer(WebCore::NativeImage &,WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>)::$_0,void>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F10FB218;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::RenderingResource,(WTF::DestructionThread)0>::deref((v3 + 8), a2);
  }

  v4 = *(this + 1);
  *(this + 1) = 0;
  if (v4 && atomic_fetch_add((v4 + 16), 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, (v4 + 16));
    (*(*(v4 + 8) + 8))();
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::RemoteGraphicsContextGL::paintNativeImageToImageBuffer(WebCore::NativeImage &,WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>)::$_0,void>::call(uint64_t a1)
{
  WebKit::RemoteRenderingBackend::imageBuffer(*(a1 + 8), *(a1 + 24), &v9);
  v2 = v9;
  if (v9)
  {
    WebCore::ImageBuffer::backendSize(v9);
    (*(*v2 + 2))(v2);
    WebCore::GraphicsContextGL::paintToCanvas();
    (*(*v2 + 3))(v2);
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::ImageBuffer,(WTF::DestructionThread)0>::deref(v2 + 1, v3);
  }

  v4 = 0;
  v5 = *(a1 + 32);
  v6 = 1;
  atomic_compare_exchange_strong_explicit(v5, &v4, 1u, memory_order_acquire, memory_order_acquire);
  if (v4)
  {
    MEMORY[0x19EB01E30](v5);
  }

  v7 = *(a1 + 40);
  **(a1 + 48) = 1;
  result = WTF::Condition::notifyOne(v7);
  atomic_compare_exchange_strong_explicit(v5, &v6, 0, memory_order_release, memory_order_relaxed);
  if (v6 != 1)
  {
    return WTF::Lock::unlockSlow(v5);
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::RemoteGraphicsContextGL::simulateEventForTesting(WebCore::GraphicsContextGLSimulatedEventForTesting)::$_0,void>::~CallableWrapper(void *a1, void *a2)
{
  *a1 = &unk_1F10FB240;
  v3 = a1[2];
  a1[2] = 0;
  if (v3)
  {
    WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v3, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::RemoteGraphicsContextGL::simulateEventForTesting(WebCore::GraphicsContextGLSimulatedEventForTesting)::$_0,void>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F10FB240;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

void WTF::Detail::CallableWrapper<WebKit::RemoteGraphicsContextGL::simulateEventForTesting(WebCore::GraphicsContextGLSimulatedEventForTesting)::$_0,void>::call(uint64_t *a1)
{
  v2 = a1[2];
  if (v2)
  {
    WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::GPUConnectionToWebProcess>(v2, a1[1], &v4);
    if (v4)
    {
      WebKit::GPUConnectionToWebProcess::releaseGraphicsContextGL(v4, a1[3]);
      v3 = v4;
      v4 = 0;
      if (v3)
      {
        WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUConnectionToWebProcess,(WTF::DestructionThread)1>::deref((v3 + 16));
      }
    }
  }
}

unsigned int **IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteDisplayListRecorder,WTF::RefPtr<WebKit::RemoteDisplayListRecorder,WTF::RawPtrTraits<WebKit::RemoteDisplayListRecorder>,WTF::DefaultRefDerefTraits<WebKit::RemoteDisplayListRecorder>>>::~ScopedActiveMessageReceiveQueue(unsigned int **a1)
{
  if (*a1)
  {
    IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteDisplayListRecorder,WTF::RefPtr<WebKit::RemoteDisplayListRecorder,WTF::RawPtrTraits<WebKit::RemoteDisplayListRecorder>,WTF::DefaultRefDerefTraits<WebKit::RemoteDisplayListRecorder>>>::stopListeningForIPCAndRelease<WTF::RefPtr<WebKit::RemoteDisplayListRecorder,WTF::RawPtrTraits<WebKit::RemoteDisplayListRecorder>,WTF::DefaultRefDerefTraits<WebKit::RemoteDisplayListRecorder>>>(a1);
    v3 = *a1;
    *a1 = 0;
    if (v3)
    {
      if (atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v3 + 2);
        (*(*v3 + 8))(v3);
      }
    }
  }

  return a1;
}

unsigned int *IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteDisplayListRecorder,WTF::RefPtr<WebKit::RemoteDisplayListRecorder,WTF::RawPtrTraits<WebKit::RemoteDisplayListRecorder>,WTF::DefaultRefDerefTraits<WebKit::RemoteDisplayListRecorder>>>::stopListeningForIPCAndRelease<WTF::RefPtr<WebKit::RemoteDisplayListRecorder,WTF::RawPtrTraits<WebKit::RemoteDisplayListRecorder>,WTF::DefaultRefDerefTraits<WebKit::RemoteDisplayListRecorder>>>(unsigned int **a1)
{
  v2 = *a1;
  v3 = *(*(*a1 + 5) + 40);
  atomic_fetch_add(v3 + 2, 1u);
  IPC::StreamServerConnection::stopReceivingMessages(v3, 0x4Eu, *(v2 + 4));
  if (v3 && atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3 + 2);
    (*(*v3 + 8))(v3);
  }

  result = *a1;
  *a1 = 0;
  if (result && atomic_fetch_add(result + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, result + 2);
    v5 = *(*result + 8);

    return v5();
  }

  return result;
}

_DWORD *WTF::RefCounted<WebKit::ShapeDetection::ObjectHeap>::deref(_DWORD *result)
{
  if (*result == 1)
  {
    WebKit::ShapeDetection::ObjectHeap::~ObjectHeap((result - 2));

    return bmalloc::api::tzoneFree(v2, v3);
  }

  else
  {
    --*result;
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::RemoteRenderingBackend::startListeningForIPC(void)::$_0,void>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F10FB268;
  a1[1] = 0;
  if (v2 && atomic_fetch_add((v2 + 16), 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, (v2 + 16));
    (*(*(v2 + 8) + 8))();
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::RemoteRenderingBackend::startListeningForIPC(void)::$_0,void>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F10FB268;
  *(this + 1) = 0;
  if (v3 && atomic_fetch_add((v3 + 16), 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, (v3 + 16));
    (*(*(v3 + 8) + 8))();
  }

  return WTF::fastFree(this, a2);
}

void *WTF::Detail::CallableWrapper<WebKit::RemoteRenderingBackend::stopListeningForIPC(void)::$_0,void>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F10FB290;
  a1[1] = 0;
  if (v2 && atomic_fetch_add((v2 + 16), 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, (v2 + 16));
    (*(*(v2 + 8) + 8))();
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::RemoteRenderingBackend::stopListeningForIPC(void)::$_0,void>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F10FB290;
  *(this + 1) = 0;
  if (v3 && atomic_fetch_add((v3 + 16), 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, (v3 + 16));
    (*(*(v3 + 8) + 8))();
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *IPC::MessageSender::send<Messages::RemoteRenderingBackendProxy::DidInitialize>(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = IPC::Encoder::operator new(0x238, a2);
  *v6 = 1569;
  *(v6 + 2) = 0;
  *(v6 + 3) = 0;
  *(v6 + 1) = a3;
  *(v6 + 68) = 0;
  *(v6 + 70) = 0;
  *(v6 + 69) = 0;
  IPC::Encoder::encodeHeader(v6);
  v11 = v6;
  Messages::RemoteRenderingBackendProxy::DidInitialize::encode<IPC::Encoder>(a2, v6);
  (*(*a1 + 32))(a1, &v11, 0);
  result = v11;
  v11 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v7);
    return bmalloc::api::tzoneFree(v9, v10);
  }

  return result;
}

void Messages::RemoteRenderingBackendProxy::DidInitialize::encode<IPC::Encoder>(IPC::Semaphore **a1, uint64_t a2)
{
  IPC::ArgumentCoder<IPC::Semaphore,void>::encode(a2, *a1);
  v4 = a1[1];

  IPC::ArgumentCoder<IPC::Semaphore,void>::encode(a2, v4);
}

unsigned int **WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteImageBuffer,WTF::RefPtr<WebKit::RemoteImageBuffer,WTF::RawPtrTraits<WebKit::RemoteImageBuffer>,WTF::DefaultRefDerefTraits<WebKit::RemoteImageBuffer>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteImageBuffer,WTF::RefPtr<WebKit::RemoteImageBuffer,WTF::RawPtrTraits<WebKit::RemoteImageBuffer>,WTF::DefaultRefDerefTraits<WebKit::RemoteImageBuffer>>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::take(void *a1, uint64_t *a2, void *a3)
{
  v5 = *a2;
  if (*a2)
  {
    v5 += 16 * *(v5 - 4);
  }

  if (v5 == a3)
  {
    *a1 = 0;
    v12 = 0;
    return IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteImageBuffer,WTF::RefPtr<WebKit::RemoteImageBuffer,WTF::RawPtrTraits<WebKit::RemoteImageBuffer>,WTF::DefaultRefDerefTraits<WebKit::RemoteImageBuffer>>>::~ScopedActiveMessageReceiveQueue(&v12);
  }

  result = (a3 + 1);
  *a1 = a3[1];
  a3[1] = 0;
  if (*a2)
  {
    v7 = *a2 + 16 * *(*a2 - 4);
    if (v7 == a3)
    {
      return result;
    }
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v7 = 0;
  }

  if (v7 != a3)
  {
    *a3 = -1;
    result = IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteImageBuffer,WTF::RefPtr<WebKit::RemoteImageBuffer,WTF::RawPtrTraits<WebKit::RemoteImageBuffer>,WTF::DefaultRefDerefTraits<WebKit::RemoteImageBuffer>>>::~ScopedActiveMessageReceiveQueue(result);
    v8 = *a2;
    v9 = vadd_s32(*(*a2 - 16), 0xFFFFFFFF00000001);
    *(v8 - 16) = v9;
    v10 = *(v8 - 4);
    if (6 * v9.i32[1] < v10 && v10 >= 9)
    {

      return WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteImageBuffer,WTF::RefPtr<WebKit::RemoteImageBuffer,WTF::RawPtrTraits<WebKit::RemoteImageBuffer>,WTF::DefaultRefDerefTraits<WebKit::RemoteImageBuffer>>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteImageBuffer,WTF::RefPtr<WebKit::RemoteImageBuffer,WTF::RawPtrTraits<WebKit::RemoteImageBuffer>,WTF::DefaultRefDerefTraits<WebKit::RemoteImageBuffer>>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteImageBuffer,WTF::RefPtr<WebKit::RemoteImageBuffer,WTF::RawPtrTraits<WebKit::RemoteImageBuffer>,WTF::DefaultRefDerefTraits<WebKit::RemoteImageBuffer>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteImageBuffer,WTF::RefPtr<WebKit::RemoteImageBuffer,WTF::RawPtrTraits<WebKit::RemoteImageBuffer>,WTF::DefaultRefDerefTraits<WebKit::RemoteImageBuffer>>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(a2, v10 >> 1, 0);
    }
  }

  return result;
}

uint64_t WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteImageBuffer,WTF::RefPtr<WebKit::RemoteImageBuffer,WTF::RawPtrTraits<WebKit::RemoteImageBuffer>,WTF::DefaultRefDerefTraits<WebKit::RemoteImageBuffer>>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteImageBuffer,WTF::RefPtr<WebKit::RemoteImageBuffer,WTF::RawPtrTraits<WebKit::RemoteImageBuffer>,WTF::DefaultRefDerefTraits<WebKit::RemoteImageBuffer>>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteImageBuffer,WTF::RefPtr<WebKit::RemoteImageBuffer,WTF::RawPtrTraits<WebKit::RemoteImageBuffer>,WTF::DefaultRefDerefTraits<WebKit::RemoteImageBuffer>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteImageBuffer,WTF::RefPtr<WebKit::RemoteImageBuffer,WTF::RawPtrTraits<WebKit::RemoteImageBuffer>,WTF::DefaultRefDerefTraits<WebKit::RemoteImageBuffer>>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(uint64_t *a1, unsigned int a2, uint64_t *a3)
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

  v9 = WTF::fastMalloc((16 * a2 + 16));
  v11 = v9;
  v12 = v9 + 16;
  if (a2)
  {
    bzero((v9 + 16), 16 * a2);
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
    v15 = v7;
    do
    {
      v16 = (v6 + 16 * v13);
      v17 = *v16;
      if (*v16)
      {
        if (v17 != -1)
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

          v20 = (v17 + ~(v17 << 32)) ^ ((v17 + ~(v17 << 32)) >> 22);
          v21 = 9 * ((v20 + ~(v20 << 13)) ^ ((v20 + ~(v20 << 13)) >> 8));
          v22 = (v21 ^ (v21 >> 15)) + ~((v21 ^ (v21 >> 15)) << 27);
          v23 = v19 & ((v22 >> 31) ^ v22);
          v24 = 1;
          do
          {
            v25 = v23;
            v26 = *(v18 + 16 * v23);
            v23 = (v23 + v24++) & v19;
          }

          while (v26);
          v27 = v18 + 16 * v25;
          IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteImageBuffer,WTF::RefPtr<WebKit::RemoteImageBuffer,WTF::RawPtrTraits<WebKit::RemoteImageBuffer>,WTF::DefaultRefDerefTraits<WebKit::RemoteImageBuffer>>>::~ScopedActiveMessageReceiveQueue((v27 + 8));
          *v27 = *v16;
          *(v27 + 8) = v16[1];
          v16[1] = 0;
          IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteImageBuffer,WTF::RefPtr<WebKit::RemoteImageBuffer,WTF::RawPtrTraits<WebKit::RemoteImageBuffer>,WTF::DefaultRefDerefTraits<WebKit::RemoteImageBuffer>>>::~ScopedActiveMessageReceiveQueue(v16 + 1);
          if (v16 == a3)
          {
            v14 = v27;
          }
        }
      }

      else
      {
        IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteImageBuffer,WTF::RefPtr<WebKit::RemoteImageBuffer,WTF::RawPtrTraits<WebKit::RemoteImageBuffer>,WTF::DefaultRefDerefTraits<WebKit::RemoteImageBuffer>>>::~ScopedActiveMessageReceiveQueue(v16 + 1);
      }

      ++v13;
    }

    while (v13 != v15);
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

uint64_t WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteImageBuffer,WTF::RefPtr<WebKit::RemoteImageBuffer,WTF::RawPtrTraits<WebKit::RemoteImageBuffer>,WTF::DefaultRefDerefTraits<WebKit::RemoteImageBuffer>>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteImageBuffer,WTF::RefPtr<WebKit::RemoteImageBuffer,WTF::RawPtrTraits<WebKit::RemoteImageBuffer>,WTF::DefaultRefDerefTraits<WebKit::RemoteImageBuffer>>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteImageBuffer,WTF::RefPtr<WebKit::RemoteImageBuffer,WTF::RawPtrTraits<WebKit::RemoteImageBuffer>,WTF::DefaultRefDerefTraits<WebKit::RemoteImageBuffer>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteImageBuffer,WTF::RefPtr<WebKit::RemoteImageBuffer,WTF::RawPtrTraits<WebKit::RemoteImageBuffer>,WTF::DefaultRefDerefTraits<WebKit::RemoteImageBuffer>>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteImageBuffer,WTF::RefPtr<WebKit::RemoteImageBuffer,WTF::RawPtrTraits<WebKit::RemoteImageBuffer>,WTF::DefaultRefDerefTraits<WebKit::RemoteImageBuffer>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteImageBuffer,WTF::RefPtr<WebKit::RemoteImageBuffer,WTF::RawPtrTraits<WebKit::RemoteImageBuffer>,WTF::DefaultRefDerefTraits<WebKit::RemoteImageBuffer>>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    return 0;
  }

  if (a2 == -1 || !a2)
  {
    __break(0xC471u);
    JUMPOUT(0x19DB61678);
  }

  v2 = *(a1 - 8);
  v3 = (~(a2 << 32) + a2) ^ ((~(a2 << 32) + a2) >> 22);
  v4 = 9 * ((v3 + ~(v3 << 13)) ^ ((v3 + ~(v3 << 13)) >> 8));
  v5 = (v4 ^ (v4 >> 15)) + ~((v4 ^ (v4 >> 15)) << 27);
  v6 = v2 & ((v5 >> 31) ^ v5);
  v7 = *(a1 + 16 * v6);
  if (v7 == a2)
  {
    return a1 + 16 * v6;
  }

  v10 = 1;
  while (v7)
  {
    v6 = (v6 + v10) & v2;
    v7 = *(a1 + 16 * v6);
    ++v10;
    if (v7 == a2)
    {
      return a1 + 16 * v6;
    }
  }

  return a1 + 16 * *(a1 - 4);
}

unsigned int **IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteImageBuffer,WTF::RefPtr<WebKit::RemoteImageBuffer,WTF::RawPtrTraits<WebKit::RemoteImageBuffer>,WTF::DefaultRefDerefTraits<WebKit::RemoteImageBuffer>>>::~ScopedActiveMessageReceiveQueue(unsigned int **a1)
{
  if (*a1)
  {
    IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteImageBuffer,WTF::RefPtr<WebKit::RemoteImageBuffer,WTF::RawPtrTraits<WebKit::RemoteImageBuffer>,WTF::DefaultRefDerefTraits<WebKit::RemoteImageBuffer>>>::stopListeningForIPCAndRelease<WTF::RefPtr<WebKit::RemoteImageBuffer,WTF::RawPtrTraits<WebKit::RemoteImageBuffer>,WTF::DefaultRefDerefTraits<WebKit::RemoteImageBuffer>>>(a1);
    v3 = *a1;
    *a1 = 0;
    if (v3)
    {
      if (atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v3 + 2);
        (*(*v3 + 8))(v3);
      }
    }
  }

  return a1;
}

unsigned int *IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteImageBuffer,WTF::RefPtr<WebKit::RemoteImageBuffer,WTF::RawPtrTraits<WebKit::RemoteImageBuffer>,WTF::DefaultRefDerefTraits<WebKit::RemoteImageBuffer>>>::stopListeningForIPCAndRelease<WTF::RefPtr<WebKit::RemoteImageBuffer,WTF::RawPtrTraits<WebKit::RemoteImageBuffer>,WTF::DefaultRefDerefTraits<WebKit::RemoteImageBuffer>>>(unsigned int **a1)
{
  v2 = *a1;
  v3 = *a1;
  v5 = *(v3 + 5);
  v4 = (v3 + 10);
  if (v5)
  {
    IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteDisplayListRecorder,WTF::RefPtr<WebKit::RemoteDisplayListRecorder,WTF::RawPtrTraits<WebKit::RemoteDisplayListRecorder>,WTF::DefaultRefDerefTraits<WebKit::RemoteDisplayListRecorder>>>::stopListeningForIPCAndRelease<WTF::RefPtr<WebKit::RemoteDisplayListRecorder,WTF::RawPtrTraits<WebKit::RemoteDisplayListRecorder>,WTF::DefaultRefDerefTraits<WebKit::RemoteDisplayListRecorder>>>(v4);
  }

  v6 = *(*(v2 + 4) + 40);
  atomic_fetch_add(v6 + 2, 1u);
  IPC::StreamServerConnection::stopReceivingMessages(v6, 0x55u, *(v2 + 3));
  if (v6 && atomic_fetch_add(v6 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v6 + 2);
    (*(*v6 + 8))(v6);
  }

  result = *a1;
  *a1 = 0;
  if (result && atomic_fetch_add(result + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, result + 2);
    v8 = *(*result + 8);

    return v8();
  }

  return result;
}

uint64_t WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteImageBuffer,WTF::RefPtr<WebKit::RemoteImageBuffer,WTF::RawPtrTraits<WebKit::RemoteImageBuffer>,WTF::DefaultRefDerefTraits<WebKit::RemoteImageBuffer>>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteImageBuffer,WTF::RefPtr<WebKit::RemoteImageBuffer,WTF::RawPtrTraits<WebKit::RemoteImageBuffer>,WTF::DefaultRefDerefTraits<WebKit::RemoteImageBuffer>>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteImageBuffer,WTF::RefPtr<WebKit::RemoteImageBuffer,WTF::RawPtrTraits<WebKit::RemoteImageBuffer>,WTF::DefaultRefDerefTraits<WebKit::RemoteImageBuffer>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteImageBuffer,WTF::RefPtr<WebKit::RemoteImageBuffer,WTF::RawPtrTraits<WebKit::RemoteImageBuffer>,WTF::DefaultRefDerefTraits<WebKit::RemoteImageBuffer>>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(uint64_t *a1, uint64_t *a2)
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

  return WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteImageBuffer,WTF::RefPtr<WebKit::RemoteImageBuffer,WTF::RawPtrTraits<WebKit::RemoteImageBuffer>,WTF::DefaultRefDerefTraits<WebKit::RemoteImageBuffer>>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteImageBuffer,WTF::RefPtr<WebKit::RemoteImageBuffer,WTF::RawPtrTraits<WebKit::RemoteImageBuffer>,WTF::DefaultRefDerefTraits<WebKit::RemoteImageBuffer>>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteImageBuffer,WTF::RefPtr<WebKit::RemoteImageBuffer,WTF::RawPtrTraits<WebKit::RemoteImageBuffer>,WTF::DefaultRefDerefTraits<WebKit::RemoteImageBuffer>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteImageBuffer,WTF::RefPtr<WebKit::RemoteImageBuffer,WTF::RawPtrTraits<WebKit::RemoteImageBuffer>,WTF::DefaultRefDerefTraits<WebKit::RemoteImageBuffer>>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(a1, v5, a2);
}

void *WTF::Detail::CallableWrapper<WebKit::RemoteRenderingBackend::didDrawRemoteToPDF(WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::SnapshotIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>)::$_0,void>::~CallableWrapper(void *a1)
{
  *a1 = &unk_1F10FB2B8;
  v2 = a1[2];
  a1[2] = 0;
  if (v2 && atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v2 + 2);
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::RemoteRenderingBackend::didDrawRemoteToPDF(WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::SnapshotIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>)::$_0,void>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F10FB2B8;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3 && atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3 + 2);
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

atomic_ullong *WTF::Detail::CallableWrapper<WebKit::RemoteRenderingBackend::didDrawRemoteToPDF(WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::SnapshotIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>)::$_0,void>::call(uint64_t a1)
{
  {
    v5 = a1;
    WebKit::GPUProcess::GPUProcess(&WebKit::GPUProcess::singleton(void)::gpuProcess);
    a1 = v5;
  }

  v2 = *(a1 + 8);
  v3 = *(a1 + 24);

  return WebKit::GPUProcess::didDrawRemoteToPDF(&WebKit::GPUProcess::singleton(void)::gpuProcess, v2, a1 + 16, v3);
}

void WebCore::ImageBuffer::create<WebKit::ImageBufferShareableMappedIOSurfaceBitmapBackend,WebCore::ImageBuffer>(uint64_t *a1, uint64_t a2, CFTypeRef cf, __int16 a4, char a5, atomic_uint **a6, float a7)
{
  v29 = a2;
  v30 = a7;
  v31 = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  v32 = a4;
  v33 = a5;
  WebCore::ImageBuffer::backendParameters();
  WebKit::ImageBufferShareableMappedIOSurfaceBitmapBackend::create(v27, a6, &v26);
  if (v26)
  {
    v24[0] = 1;
    WebCore::ImageBufferBackend::calculateBaseTransform();
    v25 = WebCore::ImageBufferIOSurfaceBackend::calculateMemoryCost();
    v19 = v29;
    v20 = v30;
    cfa = v31;
    if (v31)
    {
      CFRetain(v31);
    }

    v22 = v32;
    v23 = v33;
    v11 = v26;
    v26 = 0;
    v18 = v11;
    WebCore::ImageBuffer::create<WebCore::ImageBuffer>(&v19, v24, a1);
    if (v18)
    {
      (*(*v18 + 8))(v18);
    }

    v12 = cfa;
    cfa = 0;
    if (v12)
    {
      CFRelease(v12);
    }

    v13 = v26;
    v26 = 0;
    if (v13)
    {
      WebKit::ImageBufferShareableMappedIOSurfaceBitmapBackend::~ImageBufferShareableMappedIOSurfaceBitmapBackend(v13);
      bmalloc::api::tzoneFree(v14, v15);
    }
  }

  else
  {
    *a1 = 0;
  }

  v16 = v28;
  v28 = 0;
  if (v16)
  {
    CFRelease(v16);
  }

  v17 = v31;
  v31 = 0;
  if (v17)
  {
    CFRelease(v17);
  }
}

void WebCore::ImageBuffer::create<WebCore::ImageBufferCGPDFDocumentBackend,WebCore::ImageBuffer>(uint64_t *a1, uint64_t a2, CFTypeRef cf, __int16 a4, char a5, float a6)
{
  v24 = a2;
  v25 = a6;
  v26 = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  v27 = a4;
  v28 = a5;
  WebCore::ImageBuffer::backendParameters();
  WebCore::ImageBufferCGPDFDocumentBackend::create();
  if (v22)
  {
    v20[0] = 2;
    WebCore::ImageBufferBackend::calculateBaseTransform();
    v21 = WebCore::ImageBufferCGPDFDocumentBackend::calculateMemoryCost();
    v15 = v24;
    v16 = v25;
    cfa = v26;
    if (v26)
    {
      CFRetain(v26);
    }

    v18 = v27;
    v19 = v28;
    v9 = v22;
    v22 = 0;
    v14 = v9;
    WebCore::ImageBuffer::create<WebCore::ImageBuffer>(&v15, v20, a1);
    (*(*v14 + 8))(v14);
    v10 = cfa;
    cfa = 0;
    if (v10)
    {
      CFRelease(v10);
    }

    v11 = v22;
    v22 = 0;
    if (v11)
    {
      (*(*v11 + 8))(v11);
    }
  }

  else
  {
    *a1 = 0;
  }

  v12 = v23;
  v23 = 0;
  if (v12)
  {
    CFRelease(v12);
  }

  v13 = v26;
  v26 = 0;
  if (v13)
  {
    CFRelease(v13);
  }
}

void WebCore::ImageBuffer::create<WebCore::ImageBufferDisplayListBackend,WebCore::ImageBuffer>(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t *a4)
{
  v6 = *a4;
  v7 = *(*a4 + 8);
  v21 = *(*a4 + 16);
  v20 = v7;
  v8 = *(v6 + 24);
  v22 = v8;
  if (v8)
  {
    CFRetain(v8);
    v23 = *(v6 + 32);
    v24 = *(v6 + 34);
    v9 = v21;
    v10 = *a2;
    CFRetain(v8);
  }

  else
  {
    v23 = *(v6 + 32);
    v24 = *(v6 + 34);
    v10 = *a2;
    v9 = v21;
  }

  v18[0] = 3;
  WebCore::ImageBufferBackend::calculateBaseTransform();
  v19 = 0;
  v13 = v10;
  v14 = v9;
  cf = v8;
  if (v8)
  {
    CFRetain(v8);
  }

  v16 = v23;
  v17 = v24;
  WebCore::ImageBuffer::create<WebCore::ImageBuffer>(&v13, v18, a1);
  v11 = cf;
  cf = 0;
  if (v11)
  {
    CFRelease(v11);
  }

  if (v8)
  {
    CFRelease(v8);
  }

  v12 = v22;
  v22 = 0;
  if (v12)
  {
    CFRelease(v12);
  }
}

void WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteImageBufferSet,WTF::RefPtr<WebKit::RemoteImageBufferSet,WTF::RawPtrTraits<WebKit::RemoteImageBufferSet>,WTF::DefaultRefDerefTraits<WebKit::RemoteImageBufferSet>>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteImageBufferSet,WTF::RefPtr<WebKit::RemoteImageBufferSet,WTF::RawPtrTraits<WebKit::RemoteImageBufferSet>,WTF::DefaultRefDerefTraits<WebKit::RemoteImageBufferSet>>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteImageBufferSet,WTF::RefPtr<WebKit::RemoteImageBufferSet,WTF::RawPtrTraits<WebKit::RemoteImageBufferSet>,WTF::DefaultRefDerefTraits<WebKit::RemoteImageBufferSet>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteImageBufferSet,WTF::RefPtr<WebKit::RemoteImageBufferSet,WTF::RawPtrTraits<WebKit::RemoteImageBufferSet>,WTF::DefaultRefDerefTraits<WebKit::RemoteImageBufferSet>>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(uint64_t *a1)
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

  WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteImageBufferSet,WTF::RefPtr<WebKit::RemoteImageBufferSet,WTF::RawPtrTraits<WebKit::RemoteImageBufferSet>,WTF::DefaultRefDerefTraits<WebKit::RemoteImageBufferSet>>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteImageBufferSet,WTF::RefPtr<WebKit::RemoteImageBufferSet,WTF::RawPtrTraits<WebKit::RemoteImageBufferSet>,WTF::DefaultRefDerefTraits<WebKit::RemoteImageBufferSet>>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteImageBufferSet,WTF::RefPtr<WebKit::RemoteImageBufferSet,WTF::RawPtrTraits<WebKit::RemoteImageBufferSet>,WTF::DefaultRefDerefTraits<WebKit::RemoteImageBufferSet>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteImageBufferSet,WTF::RefPtr<WebKit::RemoteImageBufferSet,WTF::RawPtrTraits<WebKit::RemoteImageBufferSet>,WTF::DefaultRefDerefTraits<WebKit::RemoteImageBufferSet>>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(a1, v3);
}

void WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteImageBufferSet,WTF::RefPtr<WebKit::RemoteImageBufferSet,WTF::RawPtrTraits<WebKit::RemoteImageBufferSet>,WTF::DefaultRefDerefTraits<WebKit::RemoteImageBufferSet>>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteImageBufferSet,WTF::RefPtr<WebKit::RemoteImageBufferSet,WTF::RawPtrTraits<WebKit::RemoteImageBufferSet>,WTF::DefaultRefDerefTraits<WebKit::RemoteImageBufferSet>>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteImageBufferSet,WTF::RefPtr<WebKit::RemoteImageBufferSet,WTF::RawPtrTraits<WebKit::RemoteImageBufferSet>,WTF::DefaultRefDerefTraits<WebKit::RemoteImageBufferSet>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteImageBufferSet,WTF::RefPtr<WebKit::RemoteImageBufferSet,WTF::RawPtrTraits<WebKit::RemoteImageBufferSet>,WTF::DefaultRefDerefTraits<WebKit::RemoteImageBufferSet>>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(uint64_t *a1, unsigned int a2)
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

  v7 = WTF::fastMalloc((16 * a2 + 16));
  v9 = v7;
  v10 = v7 + 16;
  if (a2)
  {
    bzero((v7 + 16), 16 * a2);
  }

  *a1 = v10;
  v9[2] = a2 - 1;
  v9[3] = a2;
  *v9 = 0;
  v9[1] = v6;
  if (v5)
  {
    v11 = 0;
    v12 = v5;
    do
    {
      v13 = (v4 + 16 * v11);
      v14 = *v13;
      if (*v13)
      {
        if (v14 != -1)
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

          v17 = (v14 + ~(v14 << 32)) ^ ((v14 + ~(v14 << 32)) >> 22);
          v18 = 9 * ((v17 + ~(v17 << 13)) ^ ((v17 + ~(v17 << 13)) >> 8));
          v19 = (v18 ^ (v18 >> 15)) + ~((v18 ^ (v18 >> 15)) << 27);
          v20 = v16 & ((v19 >> 31) ^ v19);
          v21 = 1;
          do
          {
            v22 = v20;
            v23 = *(v15 + 16 * v20);
            v20 = (v20 + v21++) & v16;
          }

          while (v23);
          v24 = v15 + 16 * v22;
          IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteImageBufferSet,WTF::RefPtr<WebKit::RemoteImageBufferSet,WTF::RawPtrTraits<WebKit::RemoteImageBufferSet>,WTF::DefaultRefDerefTraits<WebKit::RemoteImageBufferSet>>>::~ScopedActiveMessageReceiveQueue((v24 + 8));
          *v24 = *v13;
          *(v24 + 8) = v13[1];
          v13[1] = 0;
          IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteImageBufferSet,WTF::RefPtr<WebKit::RemoteImageBufferSet,WTF::RawPtrTraits<WebKit::RemoteImageBufferSet>,WTF::DefaultRefDerefTraits<WebKit::RemoteImageBufferSet>>>::~ScopedActiveMessageReceiveQueue(v13 + 1);
        }
      }

      else
      {
        IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteImageBufferSet,WTF::RefPtr<WebKit::RemoteImageBufferSet,WTF::RawPtrTraits<WebKit::RemoteImageBufferSet>,WTF::DefaultRefDerefTraits<WebKit::RemoteImageBufferSet>>>::~ScopedActiveMessageReceiveQueue(v13 + 1);
      }

      ++v11;
    }

    while (v11 != v12);
  }

  else if (!v4)
  {
    return;
  }

  WTF::fastFree((v4 - 16), v8);
}

unsigned int *IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteImageBufferSet,WTF::RefPtr<WebKit::RemoteImageBufferSet,WTF::RawPtrTraits<WebKit::RemoteImageBufferSet>,WTF::DefaultRefDerefTraits<WebKit::RemoteImageBufferSet>>>::stopListeningForIPCAndRelease<WTF::RefPtr<WebKit::RemoteImageBufferSet,WTF::RawPtrTraits<WebKit::RemoteImageBufferSet>,WTF::DefaultRefDerefTraits<WebKit::RemoteImageBufferSet>>>(unsigned int **a1)
{
  v2 = *a1;
  v3 = *(*(*a1 + 10) + 40);
  atomic_fetch_add(v3 + 2, 1u);
  IPC::StreamServerConnection::stopReceivingMessages(v3, 0x57u, *(v2 + 8));
  if (v3 && atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3 + 2);
    (*(*v3 + 8))(v3);
  }

  result = *a1;
  *a1 = 0;
  if (result && atomic_fetch_add(result + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, result + 2);
    v5 = *(*result + 8);

    return v5();
  }

  return result;
}

unsigned int **IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteImageBufferSet,WTF::RefPtr<WebKit::RemoteImageBufferSet,WTF::RawPtrTraits<WebKit::RemoteImageBufferSet>,WTF::DefaultRefDerefTraits<WebKit::RemoteImageBufferSet>>>::~ScopedActiveMessageReceiveQueue(unsigned int **a1)
{
  if (*a1)
  {
    IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteImageBufferSet,WTF::RefPtr<WebKit::RemoteImageBufferSet,WTF::RawPtrTraits<WebKit::RemoteImageBufferSet>,WTF::DefaultRefDerefTraits<WebKit::RemoteImageBufferSet>>>::stopListeningForIPCAndRelease<WTF::RefPtr<WebKit::RemoteImageBufferSet,WTF::RawPtrTraits<WebKit::RemoteImageBufferSet>,WTF::DefaultRefDerefTraits<WebKit::RemoteImageBufferSet>>>(a1);
    v3 = *a1;
    *a1 = 0;
    if (v3)
    {
      if (atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v3 + 2);
        (*(*v3 + 8))(v3);
      }
    }
  }

  return a1;
}

uint64_t WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteImageBufferSet,WTF::RefPtr<WebKit::RemoteImageBufferSet,WTF::RawPtrTraits<WebKit::RemoteImageBufferSet>,WTF::DefaultRefDerefTraits<WebKit::RemoteImageBufferSet>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteImageBufferSet,WTF::RefPtr<WebKit::RemoteImageBufferSet,WTF::RawPtrTraits<WebKit::RemoteImageBufferSet>,WTF::DefaultRefDerefTraits<WebKit::RemoteImageBufferSet>>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteImageBufferSet,WTF::RefPtr<WebKit::RemoteImageBufferSet,WTF::RawPtrTraits<WebKit::RemoteImageBufferSet>,WTF::DefaultRefDerefTraits<WebKit::RemoteImageBufferSet>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteImageBufferSet,WTF::RefPtr<WebKit::RemoteImageBufferSet,WTF::RawPtrTraits<WebKit::RemoteImageBufferSet>,WTF::DefaultRefDerefTraits<WebKit::RemoteImageBufferSet>>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(uint64_t *a1, uint64_t a2)
{
  if (a2 == -1 || !a2)
  {
    __break(0xC471u);
    JUMPOUT(0x19DB622B0);
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

  v11 = 0;
  IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteImageBufferSet,WTF::RefPtr<WebKit::RemoteImageBufferSet,WTF::RawPtrTraits<WebKit::RemoteImageBufferSet>,WTF::DefaultRefDerefTraits<WebKit::RemoteImageBufferSet>>>::~ScopedActiveMessageReceiveQueue(&v11);
  return 0;
}

uint64_t IPC::VectorArgumentCoder<false,std::pair<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::OptionSet<WebKit::BufferInSetType>>,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<std::pair<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::OptionSet<WebKit::BufferInSetType>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(IPC::Encoder *a1, uint64_t *a2)
{
  result = IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *(a2 + 3));
  v5 = *(a2 + 3);
  if (v5)
  {
    v6 = *a2;
    v7 = v6 + 16 * v5;
    do
    {
      IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *v6);
      result = IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *(v6 + 8));
      v6 += 16;
    }

    while (v6 != v7);
  }

  return result;
}

uint64_t WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteImageBuffer,WTF::RefPtr<WebKit::RemoteImageBuffer,WTF::RawPtrTraits<WebKit::RemoteImageBuffer>,WTF::DefaultRefDerefTraits<WebKit::RemoteImageBuffer>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteImageBuffer,WTF::RefPtr<WebKit::RemoteImageBuffer,WTF::RawPtrTraits<WebKit::RemoteImageBuffer>,WTF::DefaultRefDerefTraits<WebKit::RemoteImageBuffer>>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteImageBuffer,WTF::RefPtr<WebKit::RemoteImageBuffer,WTF::RawPtrTraits<WebKit::RemoteImageBuffer>,WTF::DefaultRefDerefTraits<WebKit::RemoteImageBuffer>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteImageBuffer,WTF::RefPtr<WebKit::RemoteImageBuffer,WTF::RawPtrTraits<WebKit::RemoteImageBuffer>,WTF::DefaultRefDerefTraits<WebKit::RemoteImageBuffer>>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  if (*a2 == -1 || !v2)
  {
    __break(0xC471u);
    JUMPOUT(0x19DB62420);
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
      return *(v3 + 16 * v8 + 8);
    }

    v11 = 1;
    while (v9)
    {
      v8 = (v8 + v11) & v4;
      v9 = *(v3 + 16 * v8);
      ++v11;
      if (v9 == v2)
      {
        return *(v3 + 16 * v8 + 8);
      }
    }
  }

  v12 = 0;
  IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteImageBuffer,WTF::RefPtr<WebKit::RemoteImageBuffer,WTF::RawPtrTraits<WebKit::RemoteImageBuffer>,WTF::DefaultRefDerefTraits<WebKit::RemoteImageBuffer>>>::~ScopedActiveMessageReceiveQueue(&v12);
  return 0;
}

_DWORD *WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::NativeImage,WTF::RawPtrTraits<WebCore::NativeImage>,WTF::DefaultRefDerefTraits<WebCore::NativeImage>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::NativeImage,WTF::RawPtrTraits<WebCore::NativeImage>,WTF::DefaultRefDerefTraits<WebCore::NativeImage>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::NativeImage,WTF::RawPtrTraits<WebCore::NativeImage>,WTF::DefaultRefDerefTraits<WebCore::NativeImage>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebCore::NativeImage,WTF::RawPtrTraits<WebCore::NativeImage>,WTF::DefaultRefDerefTraits<WebCore::NativeImage>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(uint64_t *a1)
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

  return WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::NativeImage,WTF::RawPtrTraits<WebCore::NativeImage>,WTF::DefaultRefDerefTraits<WebCore::NativeImage>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::NativeImage,WTF::RawPtrTraits<WebCore::NativeImage>,WTF::DefaultRefDerefTraits<WebCore::NativeImage>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::NativeImage,WTF::RawPtrTraits<WebCore::NativeImage>,WTF::DefaultRefDerefTraits<WebCore::NativeImage>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebCore::NativeImage,WTF::RawPtrTraits<WebCore::NativeImage>,WTF::DefaultRefDerefTraits<WebCore::NativeImage>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(a1, v3);
}

_DWORD *WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::NativeImage,WTF::RawPtrTraits<WebCore::NativeImage>,WTF::DefaultRefDerefTraits<WebCore::NativeImage>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::NativeImage,WTF::RawPtrTraits<WebCore::NativeImage>,WTF::DefaultRefDerefTraits<WebCore::NativeImage>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::NativeImage,WTF::RawPtrTraits<WebCore::NativeImage>,WTF::DefaultRefDerefTraits<WebCore::NativeImage>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebCore::NativeImage,WTF::RawPtrTraits<WebCore::NativeImage>,WTF::DefaultRefDerefTraits<WebCore::NativeImage>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(uint64_t *a1, unsigned int a2)
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
          WTF::Ref<WebCore::Gradient,WTF::RawPtrTraits<WebCore::Gradient>,WTF::DefaultRefDerefTraits<WebCore::Gradient>>::~Ref((v21 + 8), v8);
          *v21 = *v10;
          v22 = v10[1];
          v10[1] = 0;
          *(v21 + 8) = v22;
          WTF::Ref<WebCore::Gradient,WTF::RawPtrTraits<WebCore::Gradient>,WTF::DefaultRefDerefTraits<WebCore::Gradient>>::~Ref(v10 + 1, v23);
        }

        else
        {
          WTF::Ref<WebCore::Gradient,WTF::RawPtrTraits<WebCore::Gradient>,WTF::DefaultRefDerefTraits<WebCore::Gradient>>::~Ref(v10 + 1, v8);
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

_DWORD *WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::DecomposedGlyphs,WTF::RawPtrTraits<WebCore::DecomposedGlyphs>,WTF::DefaultRefDerefTraits<WebCore::DecomposedGlyphs>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::DecomposedGlyphs,WTF::RawPtrTraits<WebCore::DecomposedGlyphs>,WTF::DefaultRefDerefTraits<WebCore::DecomposedGlyphs>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::DecomposedGlyphs,WTF::RawPtrTraits<WebCore::DecomposedGlyphs>,WTF::DefaultRefDerefTraits<WebCore::DecomposedGlyphs>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebCore::DecomposedGlyphs,WTF::RawPtrTraits<WebCore::DecomposedGlyphs>,WTF::DefaultRefDerefTraits<WebCore::DecomposedGlyphs>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(uint64_t *a1)
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

  return WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::DecomposedGlyphs,WTF::RawPtrTraits<WebCore::DecomposedGlyphs>,WTF::DefaultRefDerefTraits<WebCore::DecomposedGlyphs>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::DecomposedGlyphs,WTF::RawPtrTraits<WebCore::DecomposedGlyphs>,WTF::DefaultRefDerefTraits<WebCore::DecomposedGlyphs>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::DecomposedGlyphs,WTF::RawPtrTraits<WebCore::DecomposedGlyphs>,WTF::DefaultRefDerefTraits<WebCore::DecomposedGlyphs>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebCore::DecomposedGlyphs,WTF::RawPtrTraits<WebCore::DecomposedGlyphs>,WTF::DefaultRefDerefTraits<WebCore::DecomposedGlyphs>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(a1, v3);
}

_DWORD *WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::DecomposedGlyphs,WTF::RawPtrTraits<WebCore::DecomposedGlyphs>,WTF::DefaultRefDerefTraits<WebCore::DecomposedGlyphs>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::DecomposedGlyphs,WTF::RawPtrTraits<WebCore::DecomposedGlyphs>,WTF::DefaultRefDerefTraits<WebCore::DecomposedGlyphs>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::DecomposedGlyphs,WTF::RawPtrTraits<WebCore::DecomposedGlyphs>,WTF::DefaultRefDerefTraits<WebCore::DecomposedGlyphs>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebCore::DecomposedGlyphs,WTF::RawPtrTraits<WebCore::DecomposedGlyphs>,WTF::DefaultRefDerefTraits<WebCore::DecomposedGlyphs>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(uint64_t *a1, unsigned int a2)
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
          WTF::Ref<WebCore::Gradient,WTF::RawPtrTraits<WebCore::Gradient>,WTF::DefaultRefDerefTraits<WebCore::Gradient>>::~Ref((v21 + 8), v8);
          *v21 = *v10;
          v22 = v10[1];
          v10[1] = 0;
          *(v21 + 8) = v22;
          WTF::Ref<WebCore::Gradient,WTF::RawPtrTraits<WebCore::Gradient>,WTF::DefaultRefDerefTraits<WebCore::Gradient>>::~Ref(v10 + 1, v23);
        }
      }

      else
      {
        WTF::Ref<WebCore::Gradient,WTF::RawPtrTraits<WebCore::Gradient>,WTF::DefaultRefDerefTraits<WebCore::Gradient>>::~Ref(v10 + 1, v8);
      }
    }
  }

  else if (!v4)
  {
    return result;
  }

  return WTF::fastFree((v4 - 16), v8);
}

_DWORD *WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::Gradient,WTF::RawPtrTraits<WebCore::Gradient>,WTF::DefaultRefDerefTraits<WebCore::Gradient>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::Gradient,WTF::RawPtrTraits<WebCore::Gradient>,WTF::DefaultRefDerefTraits<WebCore::Gradient>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::Gradient,WTF::RawPtrTraits<WebCore::Gradient>,WTF::DefaultRefDerefTraits<WebCore::Gradient>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebCore::Gradient,WTF::RawPtrTraits<WebCore::Gradient>,WTF::DefaultRefDerefTraits<WebCore::Gradient>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(uint64_t *a1)
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

  return WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::Gradient,WTF::RawPtrTraits<WebCore::Gradient>,WTF::DefaultRefDerefTraits<WebCore::Gradient>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::Gradient,WTF::RawPtrTraits<WebCore::Gradient>,WTF::DefaultRefDerefTraits<WebCore::Gradient>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::Gradient,WTF::RawPtrTraits<WebCore::Gradient>,WTF::DefaultRefDerefTraits<WebCore::Gradient>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebCore::Gradient,WTF::RawPtrTraits<WebCore::Gradient>,WTF::DefaultRefDerefTraits<WebCore::Gradient>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(a1, v3);
}

_DWORD *WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::Gradient,WTF::RawPtrTraits<WebCore::Gradient>,WTF::DefaultRefDerefTraits<WebCore::Gradient>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::Gradient,WTF::RawPtrTraits<WebCore::Gradient>,WTF::DefaultRefDerefTraits<WebCore::Gradient>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::Gradient,WTF::RawPtrTraits<WebCore::Gradient>,WTF::DefaultRefDerefTraits<WebCore::Gradient>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebCore::Gradient,WTF::RawPtrTraits<WebCore::Gradient>,WTF::DefaultRefDerefTraits<WebCore::Gradient>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(uint64_t *a1, unsigned int a2)
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
      if (*v10)
      {
        if (v11 == -1)
        {
          goto LABEL_8;
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
        v22 = v13 + 16 * v20;
        WTF::Ref<WebCore::Gradient,WTF::RawPtrTraits<WebCore::Gradient>,WTF::DefaultRefDerefTraits<WebCore::Gradient>>::~Ref((v22 + 8), v8);
        *v22 = *v10;
        v24 = v10[1];
        v23 = (v10 + 1);
        *v23 = 0;
        *(v22 + 8) = v24;
        v12 = v23;
      }

      else
      {
        v12 = (v10 + 1);
      }

      WTF::Ref<WebCore::Gradient,WTF::RawPtrTraits<WebCore::Gradient>,WTF::DefaultRefDerefTraits<WebCore::Gradient>>::~Ref(v12, v8);
LABEL_8:
      if (++v9 == v5)
      {
        goto LABEL_17;
      }
    }
  }

  if (v4)
  {
LABEL_17:

    return WTF::fastFree((v4 - 16), v8);
  }

  return result;
}

uint64_t WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::Filter,WTF::RawPtrTraits<WebCore::Filter>,WTF::DefaultRefDerefTraits<WebCore::Filter>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::Filter,WTF::RawPtrTraits<WebCore::Filter>,WTF::DefaultRefDerefTraits<WebCore::Filter>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::Filter,WTF::RawPtrTraits<WebCore::Filter>,WTF::DefaultRefDerefTraits<WebCore::Filter>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebCore::Filter,WTF::RawPtrTraits<WebCore::Filter>,WTF::DefaultRefDerefTraits<WebCore::Filter>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(uint64_t *a1, uint64_t a2)
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

  return WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::Filter,WTF::RawPtrTraits<WebCore::Filter>,WTF::DefaultRefDerefTraits<WebCore::Filter>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::Filter,WTF::RawPtrTraits<WebCore::Filter>,WTF::DefaultRefDerefTraits<WebCore::Filter>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::Filter,WTF::RawPtrTraits<WebCore::Filter>,WTF::DefaultRefDerefTraits<WebCore::Filter>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebCore::Filter,WTF::RawPtrTraits<WebCore::Filter>,WTF::DefaultRefDerefTraits<WebCore::Filter>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(a1, v4, a2);
}

atomic_uchar ***WTF::HashMapTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::Filter,WTF::RawPtrTraits<WebCore::Filter>,WTF::DefaultRefDerefTraits<WebCore::Filter>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebCore::Filter,WTF::RawPtrTraits<WebCore::Filter>,WTF::DefaultRefDerefTraits<WebCore::Filter>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>::translate<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long> const&,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::Filter,WTF::RawPtrTraits<WebCore::Filter>,WTF::DefaultRefDerefTraits<WebCore::Filter>>>,WTF::HashTableAddResult<WTF::HashTableIterator<WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::Filter,WTF::RawPtrTraits<WebCore::Filter>,WTF::DefaultRefDerefTraits<WebCore::Filter>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::Filter,WTF::RawPtrTraits<WebCore::Filter>,WTF::DefaultRefDerefTraits<WebCore::Filter>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::Filter,WTF::RawPtrTraits<WebCore::Filter>,WTF::DefaultRefDerefTraits<WebCore::Filter>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebCore::Filter,WTF::RawPtrTraits<WebCore::Filter>,WTF::DefaultRefDerefTraits<WebCore::Filter>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>,WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::Filter,WTF::RawPtrTraits<WebCore::Filter>,WTF::DefaultRefDerefTraits<WebCore::Filter>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::Filter,WTF::RawPtrTraits<WebCore::Filter>,WTF::DefaultRefDerefTraits<WebCore::Filter>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::Filter,WTF::RawPtrTraits<WebCore::Filter>,WTF::DefaultRefDerefTraits<WebCore::Filter>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebCore::Filter,WTF::RawPtrTraits<WebCore::Filter>,WTF::DefaultRefDerefTraits<WebCore::Filter>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>> WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::Filter,WTF::RawPtrTraits<WebCore::Filter>,WTF::DefaultRefDerefTraits<WebCore::Filter>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebCore::Filter,WTF::RawPtrTraits<WebCore::Filter>,WTF::DefaultRefDerefTraits<WebCore::Filter>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::inlineAdd<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long> const&,WTF::Ref<WebCore::Filter,WTF::RawPtrTraits<WebCore::Filter>,WTF::DefaultRefDerefTraits<WebCore::Filter>>>(WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long> const&,WTF::Ref<WebCore::Filter,WTF::RawPtrTraits<WebCore::Filter>,WTF::DefaultRefDerefTraits<WebCore::Filter>> &&)::{lambda(void)#1}>(void *a1, void *a2, uint64_t **a3)
{
  *a1 = a2;
  v3 = **a3;
  **a3 = 0;
  v4 = a1[1];
  a1[1] = v3;
  v7 = 0;
  v8 = v4;
  WTF::Ref<WebCore::FEBlend,WTF::RawPtrTraits<WebCore::FEBlend>,WTF::DefaultRefDerefTraits<WebCore::FEBlend>>::~Ref(&v8, a2);
  return WTF::Ref<WebCore::FEBlend,WTF::RawPtrTraits<WebCore::FEBlend>,WTF::DefaultRefDerefTraits<WebCore::FEBlend>>::~Ref(&v7, v5);
}

uint64_t WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::Filter,WTF::RawPtrTraits<WebCore::Filter>,WTF::DefaultRefDerefTraits<WebCore::Filter>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::Filter,WTF::RawPtrTraits<WebCore::Filter>,WTF::DefaultRefDerefTraits<WebCore::Filter>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::Filter,WTF::RawPtrTraits<WebCore::Filter>,WTF::DefaultRefDerefTraits<WebCore::Filter>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebCore::Filter,WTF::RawPtrTraits<WebCore::Filter>,WTF::DefaultRefDerefTraits<WebCore::Filter>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(uint64_t *a1, unsigned int a2, uint64_t a3)
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
          v15 = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::Filter,WTF::RawPtrTraits<WebCore::Filter>,WTF::DefaultRefDerefTraits<WebCore::Filter>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::Filter,WTF::RawPtrTraits<WebCore::Filter>,WTF::DefaultRefDerefTraits<WebCore::Filter>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::Filter,WTF::RawPtrTraits<WebCore::Filter>,WTF::DefaultRefDerefTraits<WebCore::Filter>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebCore::Filter,WTF::RawPtrTraits<WebCore::Filter>,WTF::DefaultRefDerefTraits<WebCore::Filter>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::reinsert(*a1, v14);
          WTF::Ref<WebCore::FEBlend,WTF::RawPtrTraits<WebCore::FEBlend>,WTF::DefaultRefDerefTraits<WebCore::FEBlend>>::~Ref((v14 + 8), v16);
          if (v14 == a3)
          {
            v11 = v15;
          }
        }

        else
        {
          WTF::Ref<WebCore::FEBlend,WTF::RawPtrTraits<WebCore::FEBlend>,WTF::DefaultRefDerefTraits<WebCore::FEBlend>>::~Ref((v14 + 8), v10);
        }
      }

      v14 += 16;
      --v13;
    }

    while (v13);
  }

  else
  {
    result = 0;
    if (!v6)
    {
      return result;
    }
  }

  WTF::fastFree((v6 - 16), v10);
  return v11;
}

uint64_t WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::Filter,WTF::RawPtrTraits<WebCore::Filter>,WTF::DefaultRefDerefTraits<WebCore::Filter>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::Filter,WTF::RawPtrTraits<WebCore::Filter>,WTF::DefaultRefDerefTraits<WebCore::Filter>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::Filter,WTF::RawPtrTraits<WebCore::Filter>,WTF::DefaultRefDerefTraits<WebCore::Filter>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebCore::Filter,WTF::RawPtrTraits<WebCore::Filter>,WTF::DefaultRefDerefTraits<WebCore::Filter>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::reinsert(uint64_t a1, uint64_t *a2)
{
  if (a1)
  {
    v4 = *(a1 - 8);
  }

  else
  {
    v4 = 0;
  }

  v5 = WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::SessionSet,WTF::RawPtrTraits<WebKit::SessionSet>,WTF::DefaultRefDerefTraits<WebKit::SessionSet>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::SessionSet,WTF::RawPtrTraits<WebKit::SessionSet>,WTF::DefaultRefDerefTraits<WebKit::SessionSet>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>::hash<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(*a2);
  v7 = 0;
  do
  {
    v8 = v5 & v4;
    v5 = ++v7 + v8;
  }

  while (*(a1 + 16 * v8));
  v9 = a1 + 16 * v8;
  WTF::Ref<WebCore::FEBlend,WTF::RawPtrTraits<WebCore::FEBlend>,WTF::DefaultRefDerefTraits<WebCore::FEBlend>>::~Ref((v9 + 8), v6);
  *v9 = *a2;
  v10 = a2[1];
  a2[1] = 0;
  *(v9 + 8) = v10;
  return v9;
}

_DWORD *WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::Font,WTF::RawPtrTraits<WebCore::Font>,WTF::DefaultRefDerefTraits<WebCore::Font>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::Font,WTF::RawPtrTraits<WebCore::Font>,WTF::DefaultRefDerefTraits<WebCore::Font>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::Font,WTF::RawPtrTraits<WebCore::Font>,WTF::DefaultRefDerefTraits<WebCore::Font>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebCore::Font,WTF::RawPtrTraits<WebCore::Font>,WTF::DefaultRefDerefTraits<WebCore::Font>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(uint64_t *a1)
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

  return WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::Font,WTF::RawPtrTraits<WebCore::Font>,WTF::DefaultRefDerefTraits<WebCore::Font>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::Font,WTF::RawPtrTraits<WebCore::Font>,WTF::DefaultRefDerefTraits<WebCore::Font>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::Font,WTF::RawPtrTraits<WebCore::Font>,WTF::DefaultRefDerefTraits<WebCore::Font>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebCore::Font,WTF::RawPtrTraits<WebCore::Font>,WTF::DefaultRefDerefTraits<WebCore::Font>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(a1, v3);
}

_DWORD *WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::Font,WTF::RawPtrTraits<WebCore::Font>,WTF::DefaultRefDerefTraits<WebCore::Font>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::Font,WTF::RawPtrTraits<WebCore::Font>,WTF::DefaultRefDerefTraits<WebCore::Font>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::Font,WTF::RawPtrTraits<WebCore::Font>,WTF::DefaultRefDerefTraits<WebCore::Font>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebCore::Font,WTF::RawPtrTraits<WebCore::Font>,WTF::DefaultRefDerefTraits<WebCore::Font>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(uint64_t *a1, unsigned int a2)
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
          WTF::Ref<WebCore::Font,WTF::RawPtrTraits<WebCore::Font>,WTF::DefaultRefDerefTraits<WebCore::Font>>::~Ref((v21 + 8));
          *v21 = *v10;
          v22 = v10[1];
          v10[1] = 0;
          *(v21 + 8) = v22;
          WTF::Ref<WebCore::Font,WTF::RawPtrTraits<WebCore::Font>,WTF::DefaultRefDerefTraits<WebCore::Font>>::~Ref(v10 + 1);
        }
      }

      else
      {
        WTF::Ref<WebCore::Font,WTF::RawPtrTraits<WebCore::Font>,WTF::DefaultRefDerefTraits<WebCore::Font>>::~Ref(v10 + 1);
      }
    }
  }

  else if (!v4)
  {
    return result;
  }

  return WTF::fastFree((v4 - 16), v8);
}

_DWORD *WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::FontCustomPlatformData,WTF::RawPtrTraits<WebCore::FontCustomPlatformData>,WTF::DefaultRefDerefTraits<WebCore::FontCustomPlatformData>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::FontCustomPlatformData,WTF::RawPtrTraits<WebCore::FontCustomPlatformData>,WTF::DefaultRefDerefTraits<WebCore::FontCustomPlatformData>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::FontCustomPlatformData,WTF::RawPtrTraits<WebCore::FontCustomPlatformData>,WTF::DefaultRefDerefTraits<WebCore::FontCustomPlatformData>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebCore::FontCustomPlatformData,WTF::RawPtrTraits<WebCore::FontCustomPlatformData>,WTF::DefaultRefDerefTraits<WebCore::FontCustomPlatformData>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(uint64_t *a1)
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

  return WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::FontCustomPlatformData,WTF::RawPtrTraits<WebCore::FontCustomPlatformData>,WTF::DefaultRefDerefTraits<WebCore::FontCustomPlatformData>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::FontCustomPlatformData,WTF::RawPtrTraits<WebCore::FontCustomPlatformData>,WTF::DefaultRefDerefTraits<WebCore::FontCustomPlatformData>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::FontCustomPlatformData,WTF::RawPtrTraits<WebCore::FontCustomPlatformData>,WTF::DefaultRefDerefTraits<WebCore::FontCustomPlatformData>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebCore::FontCustomPlatformData,WTF::RawPtrTraits<WebCore::FontCustomPlatformData>,WTF::DefaultRefDerefTraits<WebCore::FontCustomPlatformData>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(a1, v3);
}

_DWORD *WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::FontCustomPlatformData,WTF::RawPtrTraits<WebCore::FontCustomPlatformData>,WTF::DefaultRefDerefTraits<WebCore::FontCustomPlatformData>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::FontCustomPlatformData,WTF::RawPtrTraits<WebCore::FontCustomPlatformData>,WTF::DefaultRefDerefTraits<WebCore::FontCustomPlatformData>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::FontCustomPlatformData,WTF::RawPtrTraits<WebCore::FontCustomPlatformData>,WTF::DefaultRefDerefTraits<WebCore::FontCustomPlatformData>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebCore::FontCustomPlatformData,WTF::RawPtrTraits<WebCore::FontCustomPlatformData>,WTF::DefaultRefDerefTraits<WebCore::FontCustomPlatformData>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(uint64_t *a1, unsigned int a2)
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
            WTF::RefCounted<WebCore::FontCustomPlatformData>::deref(v23);
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
          WTF::RefCounted<WebCore::FontCustomPlatformData>::deref(v12);
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

uint64_t WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::FontCustomPlatformData,WTF::RawPtrTraits<WebCore::FontCustomPlatformData>,WTF::DefaultRefDerefTraits<WebCore::FontCustomPlatformData>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebCore::FontCustomPlatformData,WTF::RawPtrTraits<WebCore::FontCustomPlatformData>,WTF::DefaultRefDerefTraits<WebCore::FontCustomPlatformData>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::FontCustomPlatformData,WTF::RawPtrTraits<WebCore::FontCustomPlatformData>,WTF::DefaultRefDerefTraits<WebCore::FontCustomPlatformData>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebCore::FontCustomPlatformData,WTF::RawPtrTraits<WebCore::FontCustomPlatformData>,WTF::DefaultRefDerefTraits<WebCore::FontCustomPlatformData>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v2 = *(result - 8);
    v3 = (~(a2 << 32) + a2) ^ ((~(a2 << 32) + a2) >> 22);
    v4 = 9 * ((v3 + ~(v3 << 13)) ^ ((v3 + ~(v3 << 13)) >> 8));
    v5 = (v4 ^ (v4 >> 15)) + ~((v4 ^ (v4 >> 15)) << 27);
    v6 = v2 & ((v5 >> 31) ^ v5);
    v7 = *(result + 16 * v6);
    if (v7 == a2)
    {
      return *(result + 16 * v6 + 8);
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
          return *(result + 16 * v6 + 8);
        }
      }

      return 0;
    }
  }

  return result;
}

void sub_19DB63254(_Unwind_Exception *a1, void *a2)
{
  if (*(v2 + 2) == 1)
  {
    bmalloc::api::tzoneFree(v2, a2);
    _Unwind_Resume(a1);
  }

  __break(0xC471u);
}

void sub_19DB63420(_Unwind_Exception *exception_object)
{
  if (v1)
  {
  }

  _Unwind_Resume(exception_object);
}

uint64_t downloadWrapperMap(void)
{
  if ((_MergedGlobals_67 & 1) == 0)
  {
    qword_1ED642498 = 0;
    _MergedGlobals_67 = 1;
    goto LABEL_5;
  }

  result = qword_1ED642498;
  if (!qword_1ED642498)
  {
LABEL_5:
    WTF::RetainPtr<NSNumber>::operator=(&qword_1ED642498, [MEMORY[0x1E696AD18] weakToWeakObjectsMapTable]);
    return qword_1ED642498;
  }

  return result;
}

void sub_19DB63540(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 8))(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_19DB635F0(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
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

void sub_19DB63750(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  if (a10)
  {
  }

  if (v10)
  {
  }

  _Unwind_Resume(exception_object);
}

void sub_19DB644EC(_Unwind_Exception *a1, WTF::StringImpl *a2)
{
  v4 = *(v2 - 80);
  *(v2 - 80) = 0;
  if (v4)
  {
    if (atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v4, a2);
    }
  }

  _Unwind_Resume(a1);
}

void sub_19DB64818(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_19DB64918(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

__CFString *elementActionTypeToUIActionIdentifier(uint64_t a1)
{
  if ((a1 - 1) > 0xF)
  {
    return @"WKElementActionTypeCustom";
  }

  else
  {
    return off_1E76317E8[a1 - 1];
  }
}

void sub_19DB64DFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13)
{
  if (a13)
  {
  }

  if (v13)
  {
  }

  _Unwind_Resume(a1);
}

void sub_19DB64E74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  if (a14)
  {
  }

  if (!a13)
  {
    JUMPOUT(0x19DB64E58);
  }

  JUMPOUT(0x19DB64E54);
}

void *__copy_helper_block_e8_32c56_ZTSKZ43___WKElementAction_uiActionForElementInfo__E3__2(void *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 32);
  result[4] = v4;
  if (v4)
  {
    result = v4;
  }

  v5 = *(a2 + 40);
  v3[5] = v5;
  if (v5)
  {
    return v5;
  }

  return result;
}

void sub_19DB64FA4(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 32);
  *(v1 + 32) = 0;
  if (v3)
  {
  }

  _Unwind_Resume(exception_object);
}

void __destroy_helper_block_e8_32c56_ZTSKZ43___WKElementAction_uiActionForElementInfo__E3__2(uint64_t a1)
{
  v2 = *(a1 + 40);
  *(a1 + 40) = 0;
  if (v2)
  {
  }

  v3 = *(a1 + 32);
  *(a1 + 32) = 0;
  if (v3)
  {
  }
}

void sub_19DB6524C(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
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

void sub_19DB65384(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
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

void sub_19DB6562C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, void *a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, WTF::StringImpl *a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, CFTypeRef cf)
{
  CFRelease(*(v49 + 8));
  if (a10)
  {
    CFRelease(*(a10 + 8));
  }

  v52 = cf;
  cf = 0;
  if (v52)
  {
    CFRelease(v52);
  }

  v53 = a41;
  a41 = 0;
  if (v53 && atomic_fetch_add_explicit(v53, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v53, v51);
  }

  mpark::detail::move_constructor<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::~move_constructor(&a37);
  v54 = a36;
  a36 = 0;
  if (v54)
  {
  }

  WebCore::ResourceRequestBase::~ResourceRequestBase(&a12);
  _Unwind_Resume(a1);
}

void WKDataTaskClient::~WKDataTaskClient(id *this)
{
  objc_destroyWeak(this + 2);
  if (*(this + 2) != 1)
  {
    __break(0xC471u);
  }
}

{
  objc_destroyWeak(this + 2);
  if (*(this + 2) == 1)
  {

    bmalloc::api::tzoneFree(this, v2);
  }

  else
  {
    __break(0xC471u);
  }
}

void WKDataTaskClient::didReceiveChallenge(uint64_t a1, uint64_t a2, WebCore *a3, uint64_t *a4)
{
  WeakRetained = objc_loadWeakRetained((a1 + 16));
  if (WeakRetained && (WeakRetained, (*(a1 + 24) & 1) != 0))
  {
    v9 = objc_loadWeakRetained((a1 + 16));
    WebKit::CompletionHandlerCallChecker::create(v9, sel_dataTask_didReceiveAuthenticationChallenge_completionHandler_, &v21);
    if (v9)
    {
    }

    Weak = objc_loadWeak((a1 + 16));
    v12 = *(a2 + 8);
    if (v12 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      __break(0xC471u);
    }

    else
    {
      v13 = WebCore::mac(a3, v10);
      v14 = v21;
      v15 = *a4;
      *a4 = 0;
      v16 = malloc_type_malloc(0x30uLL, 0x10E0040FAC56454uLL);
      *v16 = MEMORY[0x1E69E9818];
      v16[1] = 50331650;
      v16[2] = WTF::BlockPtr<void ()(NSURLSessionAuthChallengeDisposition,NSURLCredential *)>::fromCallable<WKDataTaskClient::didReceiveChallenge(API::DataTask &,WebCore::AuthenticationChallenge &&,WTF::CompletionHandler<void ()(WebKit::AuthenticationChallengeDisposition,WebCore::Credential &&)> &&)::{lambda(NSURLSessionAuthChallengeDisposition,NSURLCredential *)#1}>(WKDataTaskClient::didReceiveChallenge(API::DataTask &,WebCore::AuthenticationChallenge &&,WTF::CompletionHandler<void ()(WebKit::AuthenticationChallengeDisposition,WebCore::Credential &&)> &&)::{lambda(NSURLSessionAuthChallengeDisposition,NSURLCredential *)#1})::{lambda(void *,NSURLSessionAuthChallengeDisposition,NSURLCredential *)#1}::__invoke;
      v16[3] = &WTF::BlockPtr<void ()(NSURLSessionAuthChallengeDisposition,NSURLCredential *)>::fromCallable<WKDataTaskClient::didReceiveChallenge(API::DataTask &,WebCore::AuthenticationChallenge &&,WTF::CompletionHandler<void ()(WebKit::AuthenticationChallengeDisposition,WebCore::Credential &&)> &&)::{lambda(NSURLSessionAuthChallengeDisposition,NSURLCredential *)#1}>(WKDataTaskClient::didReceiveChallenge(API::DataTask &,WebCore::AuthenticationChallenge &&,WTF::CompletionHandler<void ()(WebKit::AuthenticationChallengeDisposition,WebCore::Credential &&)> &&)::{lambda(NSURLSessionAuthChallengeDisposition,NSURLCredential *)#1})::descriptor;
      v16[4] = v14;
      v16[5] = v15;
      [Weak dataTask:v12 didReceiveAuthenticationChallenge:v13 completionHandler:v16];
      _Block_release(v16);
    }
  }

  else
  {
    WebCore::CredentialBase::CredentialBase(&v21);
    v23 = 0;
    WTF::CompletionHandler<void ()(WebKit::AuthenticationChallengeDisposition,WebCore::Credential &&)>::operator()(a4);
    v18 = v23;
    v23 = 0;
    if (v18)
    {
    }

    v19 = v22;
    v22 = 0;
    if (v19 && atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v19, v17);
    }

    v20 = v21;
    v21 = 0;
    if (v20 && atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v20, v17);
    }
  }
}

void sub_19DB65BD4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, WTF::StringImpl *a10, uint64_t a11, uint64_t a12)
{
  v13 = v12;
  _Block_release(v13);
  _Unwind_Resume(a1);
}

void WKDataTaskClient::willPerformHTTPRedirection(uint64_t a1, uint64_t a2, WebCore::ResourceResponse *a3, uint64_t a4, WTF::RefCountedBase *a5)
{
  WeakRetained = objc_loadWeakRetained((a1 + 16));
  if (WeakRetained && (WeakRetained, (*(a1 + 24) & 2) != 0))
  {
    v10 = objc_loadWeakRetained((a1 + 16));
    WebKit::CompletionHandlerCallChecker::create(v10, sel_dataTask_willPerformHTTPRedirection_newRequest_decisionHandler_, &v18);
    if (v10)
    {
    }

    Weak = objc_loadWeak((a1 + 16));
    v12 = *(a2 + 8);
    if (v12 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || (v13 = WebCore::ResourceResponse::nsURLResponse(a3)) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      __break(0xC471u);
      JUMPOUT(0x19DB65E88);
    }

    v14 = WebCore::ResourceRequest::nsURLRequest();
    v15 = v18;
    v16 = *a5;
    *a5 = 0;
    v17 = malloc_type_malloc(0x30uLL, 0x10E0040FAC56454uLL);
    *v17 = MEMORY[0x1E69E9818];
    v17[1] = 50331650;
    v17[2] = WTF::BlockPtr<void ()(_WKDataTaskRedirectPolicy)>::fromCallable<WKDataTaskClient::willPerformHTTPRedirection(API::DataTask &,WebCore::ResourceResponse &&,WebCore::ResourceRequest &&,WTF::CompletionHandler<void ()(BOOL)> &&)::{lambda(_WKDataTaskRedirectPolicy)#1}>(WKDataTaskClient::willPerformHTTPRedirection(API::DataTask &,WebCore::ResourceResponse &&,WebCore::ResourceRequest &&,WTF::CompletionHandler<void ()(BOOL)> &&)::{lambda(_WKDataTaskRedirectPolicy)#1})::{lambda(void *,_WKDataTaskRedirectPolicy)#1}::__invoke;
    v17[3] = &WTF::BlockPtr<void ()(_WKDataTaskRedirectPolicy)>::fromCallable<WKDataTaskClient::willPerformHTTPRedirection(API::DataTask &,WebCore::ResourceResponse &&,WebCore::ResourceRequest &&,WTF::CompletionHandler<void ()(BOOL)> &&)::{lambda(_WKDataTaskRedirectPolicy)#1}>(WKDataTaskClient::willPerformHTTPRedirection(API::DataTask &,WebCore::ResourceResponse &&,WebCore::ResourceRequest &&,WTF::CompletionHandler<void ()(BOOL)> &&)::{lambda(_WKDataTaskRedirectPolicy)#1})::descriptor;
    v17[4] = v15;
    v17[5] = v16;
    [Weak dataTask:v12 willPerformHTTPRedirection:v13 newRequest:v14 decisionHandler:v17];

    _Block_release(v17);
  }

  else
  {

    WTF::CompletionHandler<void ()(BOOL)>::operator()(a5, 1);
  }
}

void sub_19DB65EAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  v11 = v10;
  _Block_release(v11);
  _Unwind_Resume(a1);
}

void WKDataTaskClient::didReceiveResponse(uint64_t a1, uint64_t a2, WebCore::ResourceResponse *a3, WTF::RefCountedBase *a4)
{
  WeakRetained = objc_loadWeakRetained((a1 + 16));
  if (WeakRetained && (WeakRetained, (*(a1 + 24) & 4) != 0))
  {
    v9 = objc_loadWeakRetained((a1 + 16));
    WebKit::CompletionHandlerCallChecker::create(v9, sel_dataTask_didReceiveResponse_decisionHandler_, &v16);
    if (v9)
    {
    }

    Weak = objc_loadWeak((a1 + 16));
    v11 = *(a2 + 8);
    if (v11 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      __break(0xC471u);
    }

    else
    {
      v12 = WebCore::ResourceResponse::nsURLResponse(a3);
      v13 = v16;
      v14 = *a4;
      *a4 = 0;
      v15 = malloc_type_malloc(0x30uLL, 0x10E0040FAC56454uLL);
      *v15 = MEMORY[0x1E69E9818];
      v15[1] = 50331650;
      v15[2] = WTF::BlockPtr<void ()(_WKDataTaskResponsePolicy)>::fromCallable<WKDataTaskClient::didReceiveResponse(API::DataTask &,WebCore::ResourceResponse &&,WTF::CompletionHandler<void ()(BOOL)> &&)::{lambda(_WKDataTaskResponsePolicy)#1}>(WKDataTaskClient::didReceiveResponse(API::DataTask &,WebCore::ResourceResponse &&,WTF::CompletionHandler<void ()(BOOL)> &&)::{lambda(_WKDataTaskResponsePolicy)#1})::{lambda(void *,_WKDataTaskResponsePolicy)#1}::__invoke;
      v15[3] = &WTF::BlockPtr<void ()(_WKDataTaskResponsePolicy)>::fromCallable<WKDataTaskClient::didReceiveResponse(API::DataTask &,WebCore::ResourceResponse &&,WTF::CompletionHandler<void ()(BOOL)> &&)::{lambda(_WKDataTaskResponsePolicy)#1}>(WKDataTaskClient::didReceiveResponse(API::DataTask &,WebCore::ResourceResponse &&,WTF::CompletionHandler<void ()(BOOL)> &&)::{lambda(_WKDataTaskResponsePolicy)#1})::descriptor;
      v15[4] = v13;
      v15[5] = v14;
      [Weak dataTask:v11 didReceiveResponse:v12 decisionHandler:v15];

      _Block_release(v15);
    }
  }

  else
  {

    WTF::CompletionHandler<void ()(BOOL)>::operator()(a4, 1);
  }
}

void sub_19DB660C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  v11 = v10;
  _Block_release(v11);
  _Unwind_Resume(a1);
}

void WKDataTaskClient::didReceiveData(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WeakRetained = objc_loadWeakRetained((a1 + 16));
  if (WeakRetained)
  {

    if ((*(a1 + 24) & 8) != 0)
    {
      Weak = objc_loadWeak((a1 + 16));
      v10 = *(a2 + 8);
      if (v10 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        __break(0xC471u);
      }

      else
      {
        v11 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:a3 length:a4];
        [Weak dataTask:v10 didReceiveData:?];
        if (v11)
        {
        }
      }
    }
  }
}

void sub_19DB66238(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void WKDataTaskClient::didCompleteWithError(uint64_t a1, uint64_t a2, WebCore::ResourceError *a3)
{
  WeakRetained = objc_loadWeakRetained((a1 + 16));
  if (WeakRetained)
  {

    if ((*(a1 + 24) & 0x10) != 0)
    {
      Weak = objc_loadWeak((a1 + 16));
      v8 = *(a2 + 8);
      if (v8 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || ([Weak dataTask:v8 didCompleteWithError:WebCore::ResourceError::nsError(a3)], (v9 = *(a2 + 8)) != 0) && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        __break(0xC471u);
        JUMPOUT(0x19DB66358);
      }

      v10 = *(v9 + 120);
      *(v9 + 120) = 0;
      if (v10)
      {
      }
    }
  }
}

uint64_t WTF::CompletionHandler<void ()(WebKit::AuthenticationChallengeDisposition,WebCore::Credential &&)>::operator()(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  (*(*v1 + 16))(v1);
  v2 = *(*v1 + 8);

  return v2(v1);
}

atomic_uint *WTF::BlockPtr<void ()(NSURLSessionAuthChallengeDisposition,NSURLCredential *)>::fromCallable<WKDataTaskClient::didReceiveChallenge(API::DataTask &,WebCore::AuthenticationChallenge &&,WTF::CompletionHandler<void ()(WebKit::AuthenticationChallengeDisposition,WebCore::Credential &&)> &&)::{lambda(NSURLSessionAuthChallengeDisposition,NSURLCredential *)#1}>(WKDataTaskClient::didReceiveChallenge(API::DataTask &,WebCore::AuthenticationChallenge &&,WTF::CompletionHandler<void ()(WebKit::AuthenticationChallengeDisposition,WebCore::Credential &&)> &&)::{lambda(NSURLSessionAuthChallengeDisposition,NSURLCredential *)#1})::{lambda(void const*)#1}::__invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  *(a1 + 40) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  result = *(a1 + 32);
  *(a1 + 32) = 0;
  if (result)
  {

    return WTF::ThreadSafeRefCounted<WebKit::CompletionHandlerCallChecker,(WTF::DestructionThread)0>::deref(result);
  }

  return result;
}

uint64_t WTF::BlockPtr<void ()(NSURLSessionAuthChallengeDisposition,NSURLCredential *)>::fromCallable<WKDataTaskClient::didReceiveChallenge(API::DataTask &,WebCore::AuthenticationChallenge &&,WTF::CompletionHandler<void ()(WebKit::AuthenticationChallengeDisposition,WebCore::Credential &&)> &&)::{lambda(NSURLSessionAuthChallengeDisposition,NSURLCredential *)#1}>(WKDataTaskClient::didReceiveChallenge(API::DataTask &,WebCore::AuthenticationChallenge &&,WTF::CompletionHandler<void ()(WebKit::AuthenticationChallengeDisposition,WebCore::Credential &&)> &&)::{lambda(NSURLSessionAuthChallengeDisposition,NSURLCredential *)#1})::{lambda(void *,NSURLSessionAuthChallengeDisposition,NSURLCredential *)#1}::__invoke(uint64_t a1, unint64_t a2, uint64_t a3)
{
  result = WebKit::CompletionHandlerCallChecker::completionHandlerHasBeenCalled(*(a1 + 32));
  if ((result & 1) == 0)
  {
    *(*(a1 + 32) + 24) = 1;
    WebKit::toAuthenticationChallengeDisposition(a2, v7);
    MEMORY[0x19EB02B50](&v11, a3);
    WTF::CompletionHandler<void ()(WebKit::AuthenticationChallengeDisposition,WebCore::Credential &&)>::operator()((a1 + 40));
    v9 = v13;
    v13 = 0;
    if (v9)
    {
    }

    v10 = v12;
    v12 = 0;
    if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v10, v8);
    }

    result = v11;
    v11 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(result, v8);
      }
    }
  }

  return result;
}

void sub_19DB66574(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, WTF::StringImpl *a10, uint64_t a11, void *a12)
{
  if (a12)
  {
  }

  if (a10 && atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a10, a2);
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

atomic_uint *WTF::BlockPtr<void ()(_WKDataTaskRedirectPolicy)>::fromCallable<WKDataTaskClient::willPerformHTTPRedirection(API::DataTask &,WebCore::ResourceResponse &&,WebCore::ResourceRequest &&,WTF::CompletionHandler<void ()(BOOL)> &&)::{lambda(_WKDataTaskRedirectPolicy)#1}>(WKDataTaskClient::willPerformHTTPRedirection(API::DataTask &,WebCore::ResourceResponse &&,WebCore::ResourceRequest &&,WTF::CompletionHandler<void ()(BOOL)> &&)::{lambda(_WKDataTaskRedirectPolicy)#1})::{lambda(void const*)#1}::__invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  *(a1 + 40) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  result = *(a1 + 32);
  *(a1 + 32) = 0;
  if (result)
  {

    return WTF::ThreadSafeRefCounted<WebKit::CompletionHandlerCallChecker,(WTF::DestructionThread)0>::deref(result);
  }

  return result;
}

uint64_t WTF::BlockPtr<void ()(_WKDataTaskRedirectPolicy)>::fromCallable<WKDataTaskClient::willPerformHTTPRedirection(API::DataTask &,WebCore::ResourceResponse &&,WebCore::ResourceRequest &&,WTF::CompletionHandler<void ()(BOOL)> &&)::{lambda(_WKDataTaskRedirectPolicy)#1}>(WKDataTaskClient::willPerformHTTPRedirection(API::DataTask &,WebCore::ResourceResponse &&,WebCore::ResourceRequest &&,WTF::CompletionHandler<void ()(BOOL)> &&)::{lambda(_WKDataTaskRedirectPolicy)#1})::{lambda(void *,_WKDataTaskRedirectPolicy)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = WebKit::CompletionHandlerCallChecker::completionHandlerHasBeenCalled(*(a1 + 32));
  if ((result & 1) == 0)
  {
    *(*(a1 + 32) + 24) = 1;

    return WTF::CompletionHandler<void ()(BOOL)>::operator()((a1 + 40), a2 == 1);
  }

  return result;
}

atomic_uint *WTF::BlockPtr<void ()(_WKDataTaskResponsePolicy)>::fromCallable<WKDataTaskClient::didReceiveResponse(API::DataTask &,WebCore::ResourceResponse &&,WTF::CompletionHandler<void ()(BOOL)> &&)::{lambda(_WKDataTaskResponsePolicy)#1}>(WKDataTaskClient::didReceiveResponse(API::DataTask &,WebCore::ResourceResponse &&,WTF::CompletionHandler<void ()(BOOL)> &&)::{lambda(_WKDataTaskResponsePolicy)#1})::{lambda(void const*)#1}::__invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  *(a1 + 40) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  result = *(a1 + 32);
  *(a1 + 32) = 0;
  if (result)
  {

    return WTF::ThreadSafeRefCounted<WebKit::CompletionHandlerCallChecker,(WTF::DestructionThread)0>::deref(result);
  }

  return result;
}

uint64_t WTF::BlockPtr<void ()(_WKDataTaskResponsePolicy)>::fromCallable<WKDataTaskClient::didReceiveResponse(API::DataTask &,WebCore::ResourceResponse &&,WTF::CompletionHandler<void ()(BOOL)> &&)::{lambda(_WKDataTaskResponsePolicy)#1}>(WKDataTaskClient::didReceiveResponse(API::DataTask &,WebCore::ResourceResponse &&,WTF::CompletionHandler<void ()(BOOL)> &&)::{lambda(_WKDataTaskResponsePolicy)#1})::{lambda(void *,_WKDataTaskResponsePolicy)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = WebKit::CompletionHandlerCallChecker::completionHandlerHasBeenCalled(*(a1 + 32));
  if ((result & 1) == 0)
  {
    *(*(a1 + 32) + 24) = 1;

    return WTF::CompletionHandler<void ()(BOOL)>::operator()((a1 + 40), a2 == 1);
  }

  return result;
}

Class initSSReadingList(void)
{
  if ((byte_1ED642491 & 1) == 0)
  {
    v1 = dlopen("/System/Library/Frameworks/SafariServices.framework/SafariServices", 2);
    if (!v1)
    {
      goto LABEL_6;
    }

    *algn_1ED6424A8 = v1;
    byte_1ED642491 = 1;
  }

  result = objc_getClass("SSReadingList");
  qword_1ED6424A0 = result;
  if (!result)
  {
LABEL_6:
    __break(0xC471u);
    JUMPOUT(0x19DB66820);
  }

  getSSReadingListClass = SSReadingListFunction;
  return result;
}

{
  if ((byte_1EB01D606 & 1) == 0)
  {
    v1 = dlopen("/System/Library/Frameworks/SafariServices.framework/SafariServices", 2);
    if (!v1)
    {
      goto LABEL_6;
    }

    unk_1EB01D610 = v1;
    byte_1EB01D606 = 1;
  }

  result = objc_getClass("SSReadingList");
  qword_1EB01D608 = result;
  if (!result)
  {
LABEL_6:
    __break(0xC471u);
    JUMPOUT(0x19DE53534);
  }

  getSSReadingListClass = SSReadingListFunction;
  return result;
}

uint64_t SSReadingListFunction(void)
{
  return qword_1ED6424A0;
}

{
  return qword_1EB01D608;
}

void API::Feature::~Feature(API::Feature *this, WTF::StringImpl *a2)
{
  v3 = *(this + 4);
  *(this + 4) = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, a2);
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
    if (atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v5, a2);
    }
  }
}

uint64_t WTF::Vector<WebKit::FrameTreeNodeData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(uint64_t result, uint64_t *a2)
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

  if (v3 < 0xB21643)
  {
    v5 = 368 * v3;
    v6 = WTF::fastMalloc((368 * v3));
    *(v2 + 8) = v5 / 0x170;
    *v2 = v6;
    v7 = *(a2 + 3);
    if (v7)
    {
      v8 = v6;
      v9 = 0;
      v10 = *a2;
      v11 = 368 * v7;
      do
      {
        v12 = WebKit::FrameInfoData::FrameInfoData((v8 + v9), (v10 + v9));
        WTF::Vector<WebKit::FrameTreeNodeData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v12 + 44, v10 + v9 + 352);
        v9 += 368;
      }

      while (v11 != v9);
    }

    return v2;
  }

  __break(0xC471u);
  return result;
}

void sub_19DB66A80(_Unwind_Exception *exception_object, void *a2)
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

WTF::RunLoop *WebKit::ScopedWebGLRenderingResourcesRequest::scheduleFreeWebGLRenderingResources(WTF::RunLoop *this)
{
  if ((WebKit::didScheduleFreeWebGLRenderingResources & 1) == 0)
  {
    WTF::RunLoop::mainSingleton(this);
    v1 = WTF::fastMalloc(0x10);
    *v1 = &unk_1F10EB420;
    *(v1 + 1) = WebKit::ScopedWebGLRenderingResourcesRequest::freeWebGLRenderingResources;
    v2 = v1;
    WTF::RunLoop::dispatchAfter();
    if (v3)
    {
      WTF::ThreadSafeRefCounted<WTF::RunLoop::DispatchTimer,(WTF::DestructionThread)0>::deref((v3 + 40));
    }

    this = v2;
    if (v2)
    {
      this = (*(*v2 + 8))(v2);
    }

    WebKit::didScheduleFreeWebGLRenderingResources = 1;
  }

  return this;
}

WebKit *WebKit::ScopedWebGLRenderingResourcesRequest::freeWebGLRenderingResources(WebKit *this)
{
  WebKit::didScheduleFreeWebGLRenderingResources = 0;
  if (!atomic_load(WebKit::ScopedWebGLRenderingResourcesRequest::s_requests))
  {
    v6[3] = v1;
    v6[4] = v2;
    v4 = WebKit::remoteGraphicsContextGLStreamWorkQueueSingleton(this);
    v5 = WTF::fastMalloc(0x10);
    *v5 = &unk_1F10FB590;
    v6[0] = v5;
    IPC::StreamConnectionWorkQueue::dispatch(v4, v6);
    this = v6[0];
    v6[0] = 0;
    if (this)
    {
      return (*(*this + 8))(this);
    }
  }

  return this;
}

atomic_uint *WebKit::ShareablePixelBuffer::tryCreate@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = WebCore::PixelBuffer::computeBufferSize();
  if (v10 || (result = WebCore::SharedMemory::allocate(v11), !v9))
  {
    *a3 = 0;
  }

  else
  {
    v7 = WTF::fastMalloc(0x40);
    v8 = v9;
    v9 = 0;
    *a3 = WebKit::ShareablePixelBuffer::ShareablePixelBuffer(v7, a1, a2, &v8);
    if (v8)
    {
      WTF::ThreadSafeRefCounted<WebCore::SharedMemory,(WTF::DestructionThread)0>::deref(v8);
    }

    result = v9;
    v9 = 0;
    if (result)
    {
      return WTF::ThreadSafeRefCounted<WebCore::SharedMemory,(WTF::DestructionThread)0>::deref(result);
    }
  }

  return result;
}

uint64_t WebKit::ShareablePixelBuffer::ShareablePixelBuffer(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  result = WebCore::PixelBuffer::PixelBuffer();
  *result = &unk_1F10FB400;
  v6 = *a4;
  *a4 = 0;
  *(result + 56) = v6;
  v7 = *(result + 32);
  v8 = *(result + 36);
  if (v7 < 0)
  {
    v7 = -v7;
  }

  if (v8 < 0)
  {
    v8 = -v8;
  }

  v9 = v7 * v8;
  if ((v9 & 0xFFFFFFFF00000000) != 0)
  {
    goto LABEL_11;
  }

  if (v9 >> 30)
  {
    __break(0xC471u);
    JUMPOUT(0x19DB66DCCLL);
  }

  if (*(result + 48) < (4 * v9))
  {
LABEL_11:
    __break(0xC471u);
    JUMPOUT(0x19DB66DC4);
  }

  return result;
}

uint64_t WebKit::ShareablePixelBuffer::protectedData@<X0>(uint64_t this@<X0>, atomic_uint **a2@<X8>)
{
  v2 = *(this + 56);
  atomic_fetch_add(v2, 1u);
  *a2 = v2;
  return this;
}

void WebKit::RemoteGraphicsContextGL::copyTextureFromVideoFrame(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4, int a5, unsigned int a6, unsigned int a7, unsigned int a8, BOOL a9, BOOL a10, uint64_t *a11)
{
  v24 = a3;
  WebKit::SharedVideoFrameReader::read(a1 + 96, a2, &v23);
  v18 = v23;
  if (!v23)
  {
    v21 = 0;
    goto LABEL_7;
  }

  if (a3 < 0xFFFFFFFE)
  {
    v19 = WTF::HashMap<unsigned int,unsigned int,WTF::IntHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<unsigned int,unsigned int,WTF::IntHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::IntHash<unsigned int>>,unsigned int>((a1 + 216), &v24);
    v24 = v19;
    v20 = *(a1 + 56);
    if (v20)
    {
      ++*(v20 + 2);
      v21 = WebCore::GraphicsContextGLCocoa::copyTextureFromVideoFrame(v20, v18, v19, a4, a5, a6, a7, a8, a9, a10);
      if (*(v20 + 2) == 1)
      {
        (*(*v20 + 16))(v20);
      }

      else
      {
        --*(v20 + 2);
      }
    }

    else
    {
      v21 = WebCore::GraphicsContextGLCocoa::copyTextureFromVideoFrame(0, v18, v19, a4, a5, a6, a7, a8, a9, a10);
    }

LABEL_7:
    v22 = *a11;
    *a11 = 0;
    (*(*v22 + 16))(v22, v21);
    (*(*v22 + 8))(v22);
    v23 = 0;
    if (!v18)
    {
      return;
    }

    goto LABEL_10;
  }

  v23 = 0;
LABEL_10:
  if (atomic_fetch_add(v18 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v18 + 2);
    (*(*v18 + 8))(v18);
  }
}

uint64_t WebKit::RemoteGraphicsContextGL::create@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, uint64_t *a6@<X8>)
{
  v12 = WebKit::RemoteGraphicsContextGL::operator new(0xE0, a2);
  v13 = WebKit::RemoteGraphicsContextGL::RemoteGraphicsContextGL(v12, a1, a3, a4, a5);
  *v13 = &unk_1F10FB4F8;
  v13[1] = &unk_1F10FB540;
  result = WebKit::RemoteGraphicsContextGL::initialize(v13, a2);
  *a6 = v12;
  return result;
}

uint64_t WebKit::RemoteGraphicsContextGL::operator new(WebKit::RemoteGraphicsContextGL *this, void *a2)
{
  if (this == 224 && WebKit::RemoteGraphicsContextGL::s_heapRef)
  {
    return bmalloc::api::tzoneAllocateNonCompact(WebKit::RemoteGraphicsContextGL::s_heapRef, a2);
  }

  else
  {
    return WebKit::RemoteGraphicsContextGL::operatorNewSlow(this);
  }
}

uint64_t WebKit::RemoteAdapter::RemoteAdapter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t a7)
{
  *(a1 + 8) = 1;
  *a1 = &unk_1F10FB430;
  ++*(a4 + 16);
  *(a1 + 16) = a4;
  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded((a5 + 8), a5);
  v13 = *(a5 + 8);
  atomic_fetch_add(v13, 1u);
  *(a1 + 24) = v13;
  v14 = *a6;
  *a6 = 0;
  *(a1 + 32) = v14;
  *(a1 + 40) = a2;
  v15 = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUConnectionToWebProcess,(WTF::DestructionThread)1>::controlBlock((a2 + 16));
  *(a1 + 48) = WTF::ThreadSafeWeakPtrControlBlock::weakRef(v15);
  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded((a3 + 16), a3);
  v16 = *(a3 + 16);
  atomic_fetch_add(v16, 1u);
  *(a1 + 56) = v16;
  *(a1 + 64) = a7;
  v17 = *(a1 + 32);
  atomic_fetch_add(v17 + 2, 1u);
  IPC::StreamServerConnection::startReceivingMessages(v17, a1, 0x36u, *(a1 + 64));
  if (v17 && atomic_fetch_add(v17 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v17 + 2);
    (*(*v17 + 8))(v17);
  }

  return a1;
}

void WebKit::RemoteAdapter::~RemoteAdapter(WebKit::RemoteAdapter *this, void *a2)
{
  v3 = *(this + 7);
  *(this + 7) = 0;
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    WTF::fastFree(v3, a2);
  }

  v4 = *(this + 6);
  *(this + 6) = 0;
  if (v4)
  {
    WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v4, a2);
  }

  v5 = *(this + 4);
  *(this + 4) = 0;
  if (v5 && atomic_fetch_add(v5 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v5 + 2);
    (*(*v5 + 8))(v5);
  }

  v6 = *(this + 3);
  *(this + 3) = 0;
  if (v6 && atomic_fetch_add(v6, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v6);
    WTF::fastFree(v6, a2);
  }

  v7 = *(this + 2);
  *(this + 2) = 0;
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
}

{
  WebKit::RemoteAdapter::~RemoteAdapter(this, a2);

  bmalloc::api::tzoneFree(v2, v3);
}

uint64_t WebKit::RemoteAdapter::destruct(WebKit::RemoteAdapter *this)
{
  v1 = *(*(this + 3) + 8);
  if (v1)
  {
    v2 = (v1 + 16);
    ++*(v1 + 16);
    WebKit::WebGPU::ObjectHeap::removeObject(v1, *(this + 8));

    return WTF::RefCounted<WebKit::WebGPU::ObjectHeap>::deref(v2, v3);
  }

  else
  {
    result = 103;
    __break(0xC471u);
  }

  return result;
}

void *WebKit::RemoteAdapter::stopListeningForIPC(WebKit::RemoteAdapter *this)
{
  v1 = *(this + 4);
  atomic_fetch_add(v1 + 2, 1u);
  result = IPC::StreamServerConnection::stopReceivingMessages(v1, 0x36u, *(this + 8));
  if (v1 && atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v1 + 2);
    v3 = *(*v1 + 8);

    return v3(v1);
  }

  return result;
}

WTF::StringImpl *WebKit::RemoteAdapter::requestDevice(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  if (!*(a1[3] + 8))
  {
    __break(0xC471u);
    goto LABEL_36;
  }

  WebKit::WebGPU::ConvertToBackingContext::convertToBacking(a2, &v38);
  if ((v42 & 1) == 0)
  {
    v37[0] = 0;
    v37[1] = 0;
    v31 = 0;
    memset(v30, 0, sizeof(v30));
    v36 = 0;
    v35 = 0u;
    v34 = 0u;
    v33 = 0u;
    v32 = 0u;
    v26 = *a5;
    *a5 = 0;
    (*(*v26 + 16))(v26, v37, v30);
    (*(*v26 + 8))(v26);
    result = WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v37, v27);
    goto LABEL_24;
  }

  v9 = a1[2];
  ++v9[4];
  v10 = *a5;
  *a5 = 0;
  *&v30[0] = v10;
  v11 = *(a1[3] + 8);
  if (!v11)
  {
    __break(0xC471u);
    JUMPOUT(0x19DB67880);
  }

  ++*(v11 + 16);
  *(&v30[0] + 1) = v11;
  v12 = a1[4];
  atomic_fetch_add((v12 + 8), 1u);
  *&v30[1] = v12;
  *(&v30[1] + 1) = a3;
  *&v30[2] = a4;
  v13 = a1[6];
  if (v13)
  {
    WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::GPUConnectionToWebProcess>(v13, a1[5], &v30[2] + 1);
  }

  else
  {
    *(&v30[2] + 1) = 0;
  }

  v14 = *(a1[7] + 8);
  if (!v14)
  {
    __break(0xC471u);
LABEL_36:
    JUMPOUT(0x19DB67860);
  }

  atomic_fetch_add((v14 + 8), 1u);
  *&v30[3] = v14;
  v15 = WTF::fastMalloc(0x40);
  *v15 = &unk_1F10FB5B8;
  *(v15 + 8) = *&v30[0];
  v16 = *(&v30[0] + 1);
  v30[0] = 0u;
  *(v15 + 16) = v16;
  v17 = *&v30[1];
  *&v30[1] = 0;
  *(v15 + 24) = v17;
  *(v15 + 32) = *(&v30[1] + 8);
  *(v15 + 48) = *(&v30[2] + 1);
  v18 = *&v30[3];
  *(&v30[2] + 8) = 0u;
  *(v15 + 56) = v18;
  v37[0] = v15;
  (*(*v9 + 24))(v9, &v38, v37);
  v20 = v37[0];
  v37[0] = 0;
  if (v20)
  {
    (*(*v20 + 8))(v20);
  }

  v21 = *&v30[3];
  *&v30[3] = 0;
  if (v21 && atomic_fetch_add(v21 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v21 + 2);
    (*(*v21 + 8))(v21);
  }

  v22 = *(&v30[2] + 1);
  *(&v30[2] + 1) = 0;
  if (v22)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUConnectionToWebProcess,(WTF::DestructionThread)1>::deref((v22 + 16));
  }

  v23 = *&v30[1];
  *&v30[1] = 0;
  if (v23 && atomic_fetch_add(v23 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v23 + 2);
    (*(*v23 + 8))(v23);
  }

  v24 = *(&v30[0] + 1);
  *(&v30[0] + 1) = 0;
  if (v24)
  {
    WTF::RefCounted<WebKit::WebGPU::ObjectHeap>::deref((v24 + 16), v19);
  }

  result = *&v30[0];
  *&v30[0] = 0;
  if (result)
  {
    result = (*(*result + 8))(result);
  }

  if (v9[4] == 1)
  {
    result = (*(*v9 + 8))(v9);
  }

  else
  {
    --v9[4];
  }

LABEL_24:
  if (v42 == 1)
  {
    WTF::Vector<WebCore::SpeechRecognitionAlternativeData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v41, v19);
    v29 = v39;
    if (v39)
    {
      v39 = 0;
      v40 = 0;
      WTF::fastFree(v29, v28);
    }

    result = v38;
    v38 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(result, v28);
      }
    }
  }

  return result;
}

uint64_t WebKit::RemoteBindGroup::RemoteBindGroup(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  *(a1 + 8) = 1;
  *a1 = &unk_1F10FB458;
  ++*(a2 + 16);
  *(a1 + 16) = a2;
  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded((a3 + 8), a3);
  v11 = *(a3 + 8);
  atomic_fetch_add(v11, 1u);
  *(a1 + 24) = v11;
  v12 = *a4;
  *a4 = 0;
  *(a1 + 32) = v12;
  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded((a5 + 16), a5);
  v13 = *(a5 + 16);
  atomic_fetch_add(v13, 1u);
  *(a1 + 40) = v13;
  *(a1 + 48) = a6;
  v14 = *(a1 + 32);
  atomic_fetch_add(v14 + 2, 1u);
  IPC::StreamServerConnection::startReceivingMessages(v14, a1, 0x3Eu, *(a1 + 48));
  if (v14 && atomic_fetch_add(v14 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v14 + 2);
    (*(*v14 + 8))(v14);
  }

  return a1;
}

void WebKit::RemoteBindGroup::~RemoteBindGroup(WebKit::RemoteBindGroup *this, void *a2)
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
  if (v4 && atomic_fetch_add(v4 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v4 + 2);
    (*(*v4 + 8))(v4);
  }

  v5 = *(this + 3);
  *(this + 3) = 0;
  if (v5 && atomic_fetch_add(v5, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v5);
    WTF::fastFree(v5, a2);
  }

  v6 = *(this + 2);
  *(this + 2) = 0;
  if (v6)
  {
    if (v6[4] == 1)
    {
      (*(*v6 + 8))(v6);
    }

    else
    {
      --v6[4];
    }
  }
}

{
  WebKit::RemoteBindGroup::~RemoteBindGroup(this, a2);

  bmalloc::api::tzoneFree(v2, v3);
}

uint64_t WebKit::RemoteBindGroup::destruct(WebKit::RemoteBindGroup *this)
{
  v1 = *(*(this + 3) + 8);
  if (v1)
  {
    v2 = (v1 + 16);
    ++*(v1 + 16);
    WebKit::WebGPU::ObjectHeap::removeObject(v1, *(this + 6));

    return WTF::RefCounted<WebKit::WebGPU::ObjectHeap>::deref(v2, v3);
  }

  else
  {
    result = 103;
    __break(0xC471u);
  }

  return result;
}

atomic_uchar *WebKit::RemoteBindGroup::updateExternalTextures(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = *(*(a1 + 24) + 8);
  if (v4)
  {
    v6 = (v4 + 16);
    ++*(v4 + 16);
    WebKit::WebGPU::ObjectHeap::convertExternalTextureFromBacking(v4, a2, &v19);
    WTF::RefCounted<WebKit::WebGPU::ObjectHeap>::deref(v6, v7);
    if (v20 && (WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteMediaPlayerManager>(v20, v19, &v18), v9 = v18, v18 = 0, v9))
    {
      WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::WebGPU::ExternalTexture,(WTF::DestructionThread)0>::deref((v9 + 8), v8);
      v10 = *(a1 + 16);
      ++v10[4];
      if (v20)
      {
        WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteMediaPlayerManager>(v20, v19, &v18);
        v11 = v18;
      }

      else
      {
        v11 = 0;
        v18 = 0;
      }

      v14 = (*(*v10 + 16))(v10, v11);
      v15 = *a3;
      *a3 = 0;
      (*(*v15 + 16))(v15, v14);
      (*(*v15 + 8))(v15);
      v16 = v18;
      v18 = 0;
      if (v16)
      {
        WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::WebGPU::ExternalTexture,(WTF::DestructionThread)0>::deref((v16 + 8), v13);
      }

      if (v10[4] == 1)
      {
        (*(*v10 + 8))(v10);
      }

      else
      {
        --v10[4];
      }
    }

    else
    {
      v12 = *a3;
      *a3 = 0;
      (*(*v12 + 16))(v12, 0);
      (*(*v12 + 8))(v12);
    }

    result = v20;
    v20 = 0;
    if (result)
    {
      return WTF::ThreadSafeWeakPtrControlBlock::weakDeref(result, v13);
    }
  }

  else
  {
    result = 103;
    __break(0xC471u);
  }

  return result;
}

void *WebKit::RemoteBindGroup::stopListeningForIPC(WebKit::RemoteBindGroup *this)
{
  v1 = *(this + 4);
  atomic_fetch_add(v1 + 2, 1u);
  result = IPC::StreamServerConnection::stopReceivingMessages(v1, 0x3Eu, *(this + 6));
  if (v1 && atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v1 + 2);
    v3 = *(*v1 + 8);

    return v3(v1);
  }

  return result;
}

uint64_t WebKit::RemoteBindGroup::setLabel(uint64_t a1, WTF::StringImpl *a2)
{
  v2 = *(a1 + 16);
  ++*(v2 + 16);
  result = WebCore::WebGPU::BindGroup::setLabel(v2, a2);
  if (*(v2 + 16) == 1)
  {
    v4 = *(*v2 + 8);

    return v4(v2);
  }

  else
  {
    --*(v2 + 16);
  }

  return result;
}

uint64_t WebCore::WebGPU::BindGroup::setLabel(void *a1, WTF::StringImpl *a2)
{
  v3 = *a2;
  *a2 = 0;
  v5 = a1 + 3;
  v4 = a1[3];
  *v5 = v3;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  v6 = *(*a1 + 24);

  return v6(a1, v5);
}

uint64_t WebKit::RemoteBindGroupLayout::RemoteBindGroupLayout(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  *(a1 + 8) = 1;
  *a1 = &unk_1F10FB480;
  ++*(a2 + 16);
  *(a1 + 16) = a2;
  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded((a3 + 8), a3);
  v11 = *(a3 + 8);
  atomic_fetch_add(v11, 1u);
  *(a1 + 24) = v11;
  v12 = *a4;
  *a4 = 0;
  *(a1 + 32) = v12;
  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded((a5 + 16), a5);
  v13 = *(a5 + 16);
  atomic_fetch_add(v13, 1u);
  *(a1 + 40) = v13;
  *(a1 + 48) = a6;
  v14 = *(a1 + 32);
  atomic_fetch_add(v14 + 2, 1u);
  IPC::StreamServerConnection::startReceivingMessages(v14, a1, 0x3Fu, *(a1 + 48));
  if (v14 && atomic_fetch_add(v14 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v14 + 2);
    (*(*v14 + 8))(v14);
  }

  return a1;
}

void WebKit::RemoteBindGroupLayout::~RemoteBindGroupLayout(WebKit::RemoteBindGroupLayout *this, void *a2)
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
  if (v4 && atomic_fetch_add(v4 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v4 + 2);
    (*(*v4 + 8))(v4);
  }

  v5 = *(this + 3);
  *(this + 3) = 0;
  if (v5 && atomic_fetch_add(v5, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v5);
    WTF::fastFree(v5, a2);
  }

  v6 = *(this + 2);
  *(this + 2) = 0;
  if (v6)
  {
    if (v6[4] == 1)
    {
      (*(*v6 + 8))(v6);
    }

    else
    {
      --v6[4];
    }
  }
}

{
  WebKit::RemoteBindGroupLayout::~RemoteBindGroupLayout(this, a2);

  bmalloc::api::tzoneFree(v2, v3);
}

void *WebKit::RemoteBindGroupLayout::stopListeningForIPC(WebKit::RemoteBindGroupLayout *this)
{
  v1 = *(this + 4);
  atomic_fetch_add(v1 + 2, 1u);
  result = IPC::StreamServerConnection::stopReceivingMessages(v1, 0x3Fu, *(this + 6));
  if (v1 && atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v1 + 2);
    v3 = *(*v1 + 8);

    return v3(v1);
  }

  return result;
}

uint64_t WebKit::RemoteBindGroupLayout::setLabel(uint64_t a1, WTF::StringImpl *a2)
{
  v2 = *(a1 + 16);
  ++*(v2 + 16);
  result = WebCore::WebGPU::BindGroupLayout::setLabel(v2, a2);
  if (*(v2 + 16) == 1)
  {
    v4 = *(*v2 + 8);

    return v4(v2);
  }

  else
  {
    --*(v2 + 16);
  }

  return result;
}

uint64_t WebCore::WebGPU::BindGroupLayout::setLabel(void *a1, WTF::StringImpl *a2)
{
  v3 = *a2;
  *a2 = 0;
  v5 = a1 + 3;
  v4 = a1[3];
  *v5 = v3;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  v6 = *(*a1 + 16);

  return v6(a1, v5);
}

uint64_t WebKit::RemoteBuffer::RemoteBuffer(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, int a6, uint64_t a7)
{
  *(a1 + 8) = 1;
  *a1 = &unk_1F10FB4A8;
  ++*(a2 + 16);
  *(a1 + 16) = a2;
  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded((a3 + 8), a3);
  v13 = *(a3 + 8);
  atomic_fetch_add(v13, 1u);
  *(a1 + 24) = v13;
  v14 = *a4;
  *a4 = 0;
  *(a1 + 32) = v14;
  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded((a5 + 16), a5);
  v15 = *(a5 + 16);
  atomic_fetch_add(v15, 1u);
  *(a1 + 40) = v15;
  *(a1 + 48) = a7;
  *(a1 + 56) = a6;
  if (a6)
  {
    v16 = 2;
  }

  else
  {
    v16 = 0;
  }

  *(a1 + 57) = v16;
  v17 = *(a1 + 32);
  atomic_fetch_add(v17 + 2, 1u);
  IPC::StreamServerConnection::startReceivingMessages(v17, a1, 0x40u, *(a1 + 48));
  if (v17 && atomic_fetch_add(v17 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v17 + 2);
    (*(*v17 + 8))(v17);
  }

  return a1;
}

void WebKit::RemoteBuffer::~RemoteBuffer(WebKit::RemoteBuffer *this, void *a2)
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
  if (v4 && atomic_fetch_add(v4 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v4 + 2);
    (*(*v4 + 8))(v4);
  }

  v5 = *(this + 3);
  *(this + 3) = 0;
  if (v5 && atomic_fetch_add(v5, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v5);
    WTF::fastFree(v5, a2);
  }

  v6 = *(this + 2);
  *(this + 2) = 0;
  if (v6)
  {
    if (v6[4] == 1)
    {
      (*(*v6 + 8))(v6);
    }

    else
    {
      --v6[4];
    }
  }
}

{
  WebKit::RemoteBuffer::~RemoteBuffer(this, a2);

  bmalloc::api::tzoneFree(v2, v3);
}

void *WebKit::RemoteBuffer::stopListeningForIPC(WebKit::RemoteBuffer *this)
{
  v1 = *(this + 4);
  atomic_fetch_add(v1 + 2, 1u);
  result = IPC::StreamServerConnection::stopReceivingMessages(v1, 0x40u, *(this + 6));
  if (v1 && atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v1 + 2);
    v3 = *(*v1 + 8);

    return v3(v1);
  }

  return result;
}

uint64_t WebKit::RemoteBuffer::mapAsync(uint64_t a1, unsigned __int8 a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  *(a1 + 56) = 1;
  *(a1 + 57) = a2;
  v11 = *(a1 + 16);
  ++v11[4];
  atomic_fetch_add((a1 + 8), 1u);
  v12 = *a6;
  *a6 = 0;
  v13 = WTF::fastMalloc(0x18);
  *v13 = &unk_1F10FB5E0;
  v13[1] = a1;
  v13[2] = v12;
  v15 = v13;
  (*(*v11 + 16))(v11, a2, a3, a4, a5, &v15);
  result = v15;
  v15 = 0;
  if (result)
  {
    result = (*(*result + 8))(result);
  }

  if (v11[4] == 1)
  {
    return (*(*v11 + 8))(v11);
  }

  --v11[4];
  return result;
}

uint64_t WebKit::RemoteBuffer::getMappedRange(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(a1 + 16);
  ++v10[4];
  atomic_fetch_add((a1 + 8), 1u);
  v11 = WTF::fastMalloc(0x18);
  *v11 = &unk_1F10FB608;
  v11[1] = a1;
  v11[2] = a5;
  v14 = v11;
  (*(*v10 + 24))(v10, a2, a3, a4, &v14);
  result = v14;
  if (v14)
  {
    result = (*(*v14 + 8))(v14);
  }

  if (v10[4] == 1)
  {
    v13 = *(*v10 + 8);

    return v13(v10);
  }

  else
  {
    --v10[4];
  }

  return result;
}

uint64_t WebKit::RemoteBuffer::unmap(uint64_t this)
{
  v1 = this;
  if (*(this + 56) == 1)
  {
    v2 = *(this + 16);
    ++v2[4];
    this = (*(*v2 + 32))(v2);
    if (v2[4] == 1)
    {
      this = (*(*v2 + 8))(v2);
    }

    else
    {
      --v2[4];
    }
  }

  *(v1 + 56) = 0;
  return this;
}

uint64_t WebKit::RemoteBuffer::copyWithCopy(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (*(result + 56) == 1 && (*(result + 57) & 2) != 0)
  {
    v5 = *(result + 16);
    ++v5[4];
    result = (*(*v5 + 48))(v5);
    v7 = result;
    v8 = v6;
    if (v5[4] == 1)
    {
      result = (*(*v5 + 8))(v5);
      if (!v8)
      {
        return result;
      }
    }

    else
    {
      --v5[4];
      if (!v6)
      {
        return result;
      }
    }

    v9 = *(a2 + 12);
    if (!__CFADD__(a3, v9) && a3 + v9 <= v8)
    {
      if (v8 < a3)
      {
        __break(1u);
      }

      else if (v8 - a3 >= v9)
      {
        v10 = *a2;

        return memcpy((v7 + a3), v10, v9);
      }

      result = 1067;
      __break(0xC471u);
    }
  }

  return result;
}

uint64_t WebKit::RemoteBuffer::copy(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t *a4)
{
  if (*(a2 + 16))
  {
    WebCore::SharedMemory::map();
    if (v16)
    {
      v7 = *(v16 + 8);
      v8 = *(v16 + 16);
    }

    else
    {
      v7 = 0;
      v8 = 0;
    }
  }

  else
  {
    v7 = 0;
    v8 = 0;
    v16 = 0;
  }

  if (*(a1 + 56) == 1 && (*(a1 + 57) & 2) != 0)
  {
    v9 = *(a1 + 16);
    ++v9[4];
    v11 = (*(*v9 + 48))(v9);
    v12 = v10;
    if (v9[4] == 1)
    {
      (*(*v9 + 8))(v9);
      if (v12)
      {
        goto LABEL_10;
      }
    }

    else
    {
      --v9[4];
      if (v10)
      {
LABEL_10:
        v13 = 0;
        if (__CFADD__(a3, v7) || a3 + v7 > v12)
        {
          goto LABEL_17;
        }

        if (v12 < a3)
        {
          __break(1u);
        }

        else if (v12 - a3 >= v7)
        {
          memcpy((v11 + a3), v8, v7);
          v13 = 1;
          goto LABEL_17;
        }

        result = 1067;
        __break(0xC471u);
        return result;
      }
    }
  }

  v13 = 0;
LABEL_17:
  v14 = *a4;
  *a4 = 0;
  (*(*v14 + 16))(v14, v13);
  (*(*v14 + 8))(v14);
  result = v16;
  if (v16)
  {
    return WTF::ThreadSafeRefCounted<WebCore::SharedMemory,(WTF::DestructionThread)0>::deref(v16);
  }

  return result;
}

uint64_t WebKit::RemoteBuffer::destroy(WebKit::RemoteBuffer *this)
{
  WebKit::RemoteBuffer::unmap(this);
  v2 = *(this + 2);
  ++v2[4];
  result = (*(*v2 + 40))(v2);
  if (v2[4] == 1)
  {
    v4 = *(*v2 + 8);

    return v4(v2);
  }

  else
  {
    --v2[4];
  }

  return result;
}

uint64_t WebKit::RemoteBuffer::setLabel(uint64_t a1, WTF::StringImpl *a2)
{
  v2 = *(a1 + 16);
  ++*(v2 + 16);
  result = WebCore::WebGPU::Buffer::setLabel(v2, a2);
  if (*(v2 + 16) == 1)
  {
    v4 = *(*v2 + 8);

    return v4(v2);
  }

  else
  {
    --*(v2 + 16);
  }

  return result;
}

uint64_t WebCore::WebGPU::Buffer::setLabel(void *a1, WTF::StringImpl *a2)
{
  v3 = *a2;
  *a2 = 0;
  v5 = a1 + 3;
  v4 = a1[3];
  *v5 = v3;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  v6 = *(*a1 + 64);

  return v6(a1, v5);
}

uint64_t WebKit::RemoteCommandBuffer::RemoteCommandBuffer(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  *(a1 + 8) = 1;
  *a1 = &unk_1F10FB4D0;
  ++*(a2 + 16);
  *(a1 + 16) = a2;
  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded((a3 + 8), a3);
  v11 = *(a3 + 8);
  atomic_fetch_add(v11, 1u);
  *(a1 + 24) = v11;
  v12 = *a4;
  *a4 = 0;
  *(a1 + 32) = v12;
  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded((a5 + 16), a5);
  v13 = *(a5 + 16);
  atomic_fetch_add(v13, 1u);
  *(a1 + 40) = v13;
  *(a1 + 48) = a6;
  v14 = *(a1 + 32);
  atomic_fetch_add(v14 + 2, 1u);
  IPC::StreamServerConnection::startReceivingMessages(v14, a1, 0x48u, *(a1 + 48));
  if (v14 && atomic_fetch_add(v14 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v14 + 2);
    (*(*v14 + 8))(v14);
  }

  return a1;
}

void WebKit::RemoteCommandBuffer::~RemoteCommandBuffer(WebKit::RemoteCommandBuffer *this, void *a2)
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
  if (v4 && atomic_fetch_add(v4 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v4 + 2);
    (*(*v4 + 8))(v4);
  }

  v5 = *(this + 3);
  *(this + 3) = 0;
  if (v5 && atomic_fetch_add(v5, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v5);
    WTF::fastFree(v5, a2);
  }

  v6 = *(this + 2);
  *(this + 2) = 0;
  if (v6)
  {
    if (v6[4] == 1)
    {
      (*(*v6 + 8))(v6);
    }

    else
    {
      --v6[4];
    }
  }
}

{
  WebKit::RemoteCommandBuffer::~RemoteCommandBuffer(this, a2);

  bmalloc::api::tzoneFree(v2, v3);
}

void *WebKit::RemoteCommandBuffer::stopListeningForIPC(WebKit::RemoteCommandBuffer *this)
{
  v1 = *(this + 4);
  atomic_fetch_add(v1 + 2, 1u);
  result = IPC::StreamServerConnection::stopReceivingMessages(v1, 0x48u, *(this + 6));
  if (v1 && atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v1 + 2);
    v3 = *(*v1 + 8);

    return v3(v1);
  }

  return result;
}

uint64_t WebKit::RemoteCommandBuffer::setLabel(uint64_t a1, WTF::StringImpl *a2)
{
  v2 = *(a1 + 16);
  ++*(v2 + 16);
  result = WebCore::WebGPU::CommandBuffer::setLabel(v2, a2);
  if (*(v2 + 16) == 1)
  {
    v4 = *(*v2 + 8);

    return v4(v2);
  }

  else
  {
    --*(v2 + 16);
  }

  return result;
}

uint64_t WebCore::WebGPU::CommandBuffer::setLabel(void *a1, WTF::StringImpl *a2)
{
  v3 = *a2;
  *a2 = 0;
  v5 = a1 + 3;
  v4 = a1[3];
  *v5 = v3;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  v6 = *(*a1 + 16);

  return v6(a1, v5);
}

void WebKit::ShareablePixelBuffer::~ShareablePixelBuffer(WebKit::ShareablePixelBuffer *this)
{
  *this = &unk_1F10FB400;
  v2 = *(this + 7);
  *(this + 7) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCounted<WebCore::SharedMemory,(WTF::DestructionThread)0>::deref(v2);
  }

  WebCore::PixelBuffer::~PixelBuffer(this);
}

{
  *this = &unk_1F10FB400;
  v2 = *(this + 7);
  *(this + 7) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCounted<WebCore::SharedMemory,(WTF::DestructionThread)0>::deref(v2);
  }

  WebCore::PixelBuffer::~PixelBuffer(this);

  WTF::fastFree(v3, v4);
}

void WebKit::anonymous namespace::RemoteGraphicsContextGLCocoa::~RemoteGraphicsContextGLCocoa(WebKit::_anonymous_namespace_::RemoteGraphicsContextGLCocoa *this, void *a2)
{
  WebKit::RemoteGraphicsContextGL::~RemoteGraphicsContextGL(this, a2);

  bmalloc::api::tzoneFree(v2, v3);
}

void WebKit::anonymous namespace::RemoteGraphicsContextGLCocoa::platformWorkQueueInitialize(uint64_t a1)
{
  WTF::MachSendRight::MachSendRight(v5, (*(a1 + 80) + 48));
  WebCore::GraphicsContextGLCocoa::create();
  v2 = v6;
  v6 = 0;
  v3 = *(a1 + 56);
  *(a1 + 56) = v2;
  if (v3)
  {
    if (v3[2] == 1)
    {
      (*(*v3 + 16))(v3);
      v4 = v6;
      v6 = 0;
      if (v4)
      {
        if (v4[2] == 1)
        {
          (*(*v4 + 16))(v4);
        }

        else
        {
          --v4[2];
        }
      }
    }

    else
    {
      --v3[2];
      v6 = 0;
    }
  }

  WTF::MachSendRight::~MachSendRight(v5);
}

void WebKit::anonymous namespace::RemoteGraphicsContextGLCocoa::prepareForDisplay(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = *(a1 + 56);
  if (v5)
  {
    ++*(v5 + 2);
  }

  WTF::MachSendRight::MachSendRight();
  v6 = *(a2 + 4);
  *(a2 + 4) = 0;
  v12 = v6;
  v7 = WTF::fastMalloc(0x10);
  *v7 = &unk_1F10FB568;
  WTF::MachSendRight::MachSendRight();
  v8 = v12;
  v12 = 0;
  v7[3] = v8;
  WebCore::GraphicsContextGLCocoa::prepareForDisplayWithFinishedSignal();
  v13 = 0;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  IPC::Semaphore::destroy((&v11 + 4));
  WTF::MachSendRight::~MachSendRight((&v11 + 4));
  HIDWORD(v11) = 0;
  v9 = WebCore::GraphicsContextGLCocoa::displayBufferSurface(v5);
  if (v9)
  {
    WebCore::IOSurface::createSendRight(&v11, v9);
    WTF::MachSendRight::operator=();
    WTF::MachSendRight::~MachSendRight(&v11);
  }

  v10 = *a3;
  *a3 = 0;
  (*(*v10 + 16))(v10, &v11 + 4);
  (*(*v10 + 8))(v10);
  WTF::MachSendRight::~MachSendRight((&v11 + 4));
  if (v5)
  {
    if (*(v5 + 2) == 1)
    {
      (*(*v5 + 16))(v5);
    }

    else
    {
      --*(v5 + 2);
    }
  }
}

uint64_t non-virtual thunk toWebKit::anonymous namespace::RemoteGraphicsContextGLCocoa::~RemoteGraphicsContextGLCocoa(uint64_t a1, void *a2)
{
  WebKit::RemoteGraphicsContextGL::~RemoteGraphicsContextGL((a1 - 8), a2);

  return bmalloc::api::tzoneFree(v2, v3);
}

void *WTF::Detail::CallableWrapper<WebKit::anonymous namespace::RemoteGraphicsContextGLCocoa::prepareForDisplay(IPC::Semaphore &&,WTF::CompletionHandler<void ()(WTF::MachSendRight &&)> &&)::$_0,void>::~CallableWrapper(void *a1)
{
  *a1 = &unk_1F10FB568;
  v2 = (a1 + 1);
  IPC::Semaphore::destroy((a1 + 1));
  WTF::MachSendRight::~MachSendRight(v2);
  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::anonymous namespace::RemoteGraphicsContextGLCocoa::prepareForDisplay(IPC::Semaphore &&,WTF::CompletionHandler<void ()(WTF::MachSendRight &&)> &&)::$_0,void>::~CallableWrapper(uint64_t a1)
{
  *a1 = &unk_1F10FB568;
  v2 = (a1 + 8);
  IPC::Semaphore::destroy((a1 + 8));
  WTF::MachSendRight::~MachSendRight(v2);

  return WTF::fastFree(a1, v3);
}

_DWORD *WTF::RefCounted<WebKit::WebGPU::ObjectHeap>::deref(_DWORD *result, void *a2)
{
  if (*result == 1)
  {
    WebKit::WebGPU::ObjectHeap::~ObjectHeap((result - 4), a2);

    return bmalloc::api::tzoneFree(v3, v4);
  }

  else
  {
    --*result;
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::RemoteAdapter::requestDevice(WebKit::WebGPU::DeviceDescriptor const&,WTF::ObjectIdentifierGeneric<WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(WebKit::WebGPU::SupportedFeatures &&,WebKit::WebGPU::SupportedLimits &&)> &&)::$_0,void,WTF::RefPtr<WebCore::WebGPU::Device,WTF::RawPtrTraits<WTF::RefPtr>,WTF::DefaultRefDerefTraits<WTF::RefPtr>> &&>::~CallableWrapper(void *a1, void *a2)
{
  *a1 = &unk_1F10FB5B8;
  v3 = a1[7];
  a1[7] = 0;
  if (v3 && atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3 + 2);
    (*(*v3 + 8))(v3);
  }

  v4 = a1[6];
  a1[6] = 0;
  if (v4)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUConnectionToWebProcess,(WTF::DestructionThread)1>::deref((v4 + 16));
  }

  v5 = a1[3];
  a1[3] = 0;
  if (v5 && atomic_fetch_add(v5 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v5 + 2);
    (*(*v5 + 8))(v5);
  }

  v6 = a1[2];
  a1[2] = 0;
  if (v6)
  {
    WTF::RefCounted<WebKit::WebGPU::ObjectHeap>::deref((v6 + 16), a2);
  }

  v7 = a1[1];
  a1[1] = 0;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::RemoteAdapter::requestDevice(WebKit::WebGPU::DeviceDescriptor const&,WTF::ObjectIdentifierGeneric<WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(WebKit::WebGPU::SupportedFeatures &&,WebKit::WebGPU::SupportedLimits &&)> &&)::$_0,void,WTF::RefPtr<WebCore::WebGPU::Device,WTF::RawPtrTraits<WTF::RefPtr>,WTF::DefaultRefDerefTraits<WTF::RefPtr>> &&>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F10FB5B8;
  v3 = *(this + 7);
  *(this + 7) = 0;
  if (v3 && atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3 + 2);
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 6);
  *(this + 6) = 0;
  if (v4)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUConnectionToWebProcess,(WTF::DestructionThread)1>::deref((v4 + 16));
  }

  v5 = *(this + 3);
  *(this + 3) = 0;
  if (v5 && atomic_fetch_add(v5 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v5 + 2);
    (*(*v5 + 8))(v5);
  }

  v6 = *(this + 2);
  *(this + 2) = 0;
  if (v6)
  {
    WTF::RefCounted<WebKit::WebGPU::ObjectHeap>::deref((v6 + 16), a2);
  }

  v7 = *(this + 1);
  *(this + 1) = 0;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::RemoteAdapter::requestDevice(WebKit::WebGPU::DeviceDescriptor const&,WTF::ObjectIdentifierGeneric<WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(WebKit::WebGPU::SupportedFeatures &&,WebKit::WebGPU::SupportedLimits &&)> &&)::$_0,void,WTF::RefPtr<WebCore::WebGPU::Device,WTF::RawPtrTraits<WTF::RefPtr>,WTF::DefaultRefDerefTraits<WTF::RefPtr>> &&>::call(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  if (*a2 && *(a1 + 48))
  {
    *a2 = 0;
    v4 = *(a1 + 48);
    v5 = *(a1 + 56);
    v6 = *(a1 + 16);
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    if (WebKit::RemoteDevice::s_heapRef)
    {
      NonCompact = bmalloc::api::tzoneAllocateNonCompact(WebKit::RemoteDevice::s_heapRef, a2);
    }

    else
    {
      NonCompact = WebKit::RemoteDevice::operatorNewSlow(0xA8);
    }

    v10 = NonCompact;
    WebKit::RemoteDevice::RemoteDevice(NonCompact, v4, v5, v3, v6, (a1 + 24), v7, v8);
    WebKit::WebGPU::ObjectHeap::addObject(*(a1 + 16), *(a1 + 32), v10);
    WebKit::WebGPU::ObjectHeap::addObject(*(a1 + 16), *(a1 + 40), *(v10 + 48));
    v11 = *(v3 + 32);
    ++*v11;
    v12 = *(v3 + 40);
    ++*v12;
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v28, (v11 + 2));
    v13 = *(v12 + 20);
    v22 = *(v12 + 4);
    v23 = v13;
    v24 = *(v12 + 36);
    *&v25[0] = *(v12 + 52);
    *(v25 + 8) = *(v12 + 64);
    *(&v25[1] + 1) = *(v12 + 80);
    v26 = *(v12 + 88);
    *v27 = *(v12 + 96);
    v14 = *(v12 + 120);
    *&v27[8] = *(v12 + 104);
    *&v27[24] = v14;
    v15 = *(v12 + 152);
    *&v27[40] = *(v12 + 136);
    *&v27[56] = v15;
    v16 = *(a1 + 8);
    *(a1 + 8) = 0;
    (*(*v16 + 16))(v16, v28, &v22);
    (*(*v16 + 8))(v16);
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v28, v17);
    if (*v12 == 1)
    {
      WTF::fastFree(v12, v18);
    }

    else
    {
      --*v12;
    }

    result = WTF::RefCounted<WebCore::WebGPU::SupportedFeatures>::deref(v11, v18);
    if (atomic_fetch_add((v10 + 8), 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, (v10 + 8));
      result = (*(*v10 + 8))(v10);
    }

    if (*(v3 + 16) == 1)
    {
      return (*(*v3 + 8))(v3);
    }

    else
    {
      --*(v3 + 16);
    }
  }

  else
  {
    v28[0] = 0;
    v28[1] = 0;
    v26 = 0;
    memset(v25, 0, sizeof(v25));
    v23 = 0u;
    v24 = 0u;
    v22 = 0u;
    memset(v27, 0, sizeof(v27));
    v20 = *(a1 + 8);
    *(a1 + 8) = 0;
    (*(*v20 + 16))(v20, v28, &v22);
    (*(*v20 + 8))(v20);
    return WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v28, v21);
  }

  return result;
}

uint64_t WTF::RefCounted<WebCore::WebGPU::SupportedFeatures>::deref(uint64_t result, void *a2)
{
  v2 = result;
  if (*result == 1)
  {
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(result + 8, a2);
    if (*v2 == 1)
    {

      return WTF::fastFree(v2, v3);
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

atomic_uchar **WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::WebGPU::ExternalTexture,(WTF::DestructionThread)0>::deref(atomic_uchar **result, void *a2)
{
  do
  {
    v2 = *result;
    if ((*result & 1) == 0)
    {
      return WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebCore::WebGPU::ExternalTexture,(WTF::DestructionThread)0>(*result, a2);
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

uint64_t WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebCore::WebGPU::ExternalTexture,(WTF::DestructionThread)0>(atomic_uchar *this, void *a2)
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

void *WTF::Detail::CallableWrapper<WebKit::RemoteBuffer::mapAsync(WTF::OptionSet<WebCore::WebGPU::MapMode>,unsigned long long,std::optional<unsigned long long>,WTF::CompletionHandler<void ()(BOOL)> &&)::$_0,void,BOOL>::~CallableWrapper(void *a1)
{
  *a1 = &unk_1F10FB5E0;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
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

uint64_t WTF::Detail::CallableWrapper<WebKit::RemoteBuffer::mapAsync(WTF::OptionSet<WebCore::WebGPU::MapMode>,unsigned long long,std::optional<unsigned long long>,WTF::CompletionHandler<void ()(BOOL)> &&)::$_0,void,BOOL>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F10FB5E0;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
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

uint64_t WTF::Detail::CallableWrapper<WebKit::RemoteBuffer::mapAsync(WTF::OptionSet<WebCore::WebGPU::MapMode>,unsigned long long,std::optional<unsigned long long>,WTF::CompletionHandler<void ()(BOOL)> &&)::$_0,void,BOOL>::call(uint64_t a1)
{
  v1 = *(a1 + 16);
  *(a1 + 16) = 0;
  (*(*v1 + 16))(v1);
  v2 = *(*v1 + 8);

  return v2(v1);
}

void *WTF::Detail::CallableWrapper<WebKit::RemoteBuffer::getMappedRange(unsigned long long,std::optional<unsigned long long>,WTF::CompletionHandler<void ()(std::optional<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>> &&)> &&)::$_0,void,std::span<unsigned char,18446744073709551615ul>>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F10FB608;
  a1[1] = 0;
  if (v2 && atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v2 + 2);
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::RemoteBuffer::getMappedRange(unsigned long long,std::optional<unsigned long long>,WTF::CompletionHandler<void ()(std::optional<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>> &&)> &&)::$_0,void,std::span<unsigned char,18446744073709551615ul>>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F10FB608;
  *(this + 1) = 0;
  if (v3 && atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3 + 2);
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

WTF *WTF::Detail::CallableWrapper<WebKit::RemoteBuffer::getMappedRange(unsigned long long,std::optional<unsigned long long>,WTF::CompletionHandler<void ()(std::optional<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>> &&)> &&)::$_0,void,std::span<unsigned char,18446744073709551615ul>>::call(WTF *result, const void *a2, unint64_t this)
{
  v4 = *(result + 2);
  *(*(result + 1) + 56) = 1;
  v8 = 0;
  v9 = 0;
  v10 = this;
  if (this)
  {
    if (HIDWORD(this))
    {
      __break(0xC471u);
      return result;
    }

    v9 = this;
    v8 = WTF::fastMalloc(this);
    memcpy(v8, a2, this);
  }

  v11 = 1;
  v6 = *v4;
  *v4 = 0;
  (*(*v6 + 16))(v6, &v8);
  result = (*(*v6 + 8))(v6);
  if (v11 == 1)
  {
    result = v8;
    if (v8)
    {
      v8 = 0;
      v9 = 0;
      return WTF::fastFree(result, v7);
    }
  }

  return result;
}

void sub_19DB6A7B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void sub_19DB6A8C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void sub_19DB6A96C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void sub_19DB6AB74(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    if (v1[2] == 1)
    {
      (*(*v1 + 8))(v1);
    }

    else
    {
      --v1[2];
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_19DB6AE4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (v10[2] == 1)
  {
    (*(*v10 + 8))(v10);
    if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v11, v13);
    }
  }

  else
  {
    --v10[2];
  }

  if (v10[2] == 1)
  {
    (*(*v10 + 8))(v10);
  }

  else
  {
    --v10[2];
  }

  _Unwind_Resume(exception_object);
}

void sub_19DB6B164(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (v10[2] == 1)
  {
    (*(*v10 + 8))(v10);
    if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v11, v13);
    }
  }

  else
  {
    --v10[2];
  }

  if (v10[2] == 1)
  {
    (*(*v10 + 8))(v10);
  }

  else
  {
    --v10[2];
  }

  _Unwind_Resume(exception_object);
}

void sub_19DB6B400(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, a2);
  }

  _Unwind_Resume(exception_object);
}

void sub_19DB6B554(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, a2);
  }

  _Unwind_Resume(exception_object);
}

void sub_19DB6B6A8(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, a2);
  }

  _Unwind_Resume(exception_object);
}

void InspectorClient::~InspectorClient(id *this)
{
  objc_destroyWeak(this + 1);
}

{
  objc_destroyWeak(this + 1);

  bmalloc::api::tzoneFree(this, v2);
}

void InspectorClient::openURLExternally(id *this, WebKit::WebInspectorUIProxy *a2, atomic_uint **a3)
{
  WeakRetained = objc_loadWeakRetained(this + 1);
  if (WeakRetained)
  {

    if (this[2])
    {
      Weak = objc_loadWeak(this + 1);
      v8 = *(a2 + 1);
      if (v8 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        __break(0xC471u);
      }

      else
      {
        v9 = objc_alloc(MEMORY[0x1E695DFF8]);
        v10 = *a3;
        if (v10)
        {
          atomic_fetch_add_explicit(v10, 2u, memory_order_relaxed);
          MEMORY[0x19EB00B70](&v15, v10);
          if (atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v10, v11);
          }
        }

        else
        {
          v15 = &stru_1F1147748;
          v12 = &stru_1F1147748;
        }

        v13 = [v9 initWithString:v15];
        [Weak inspector:v8 openURLExternally:v13];
        if (v13)
        {
        }

        v14 = v15;
        v15 = 0;
        if (v14)
        {
        }
      }
    }
  }
}

void sub_19DB6BBF8(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, a2);
  }

  _Unwind_Resume(exception_object);
}

void InspectorClient::frontendLoaded(id *this, WebKit::WebInspectorUIProxy *a2)
{
  WeakRetained = objc_loadWeakRetained(this + 1);
  if (WeakRetained)
  {

    if ((this[2] & 2) != 0)
    {
      Weak = objc_loadWeak(this + 1);
      v6 = *(a2 + 1);
      if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        __break(0xC471u);
      }

      else
      {

        [Weak inspectorFrontendLoaded:v6];
      }
    }
  }
}

void WebKit::RemoteCommandEncoder::~RemoteCommandEncoder(WebKit::RemoteCommandEncoder *this, void *a2)
{
  v3 = *(this + 8);
  *(this + 8) = 0;
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    WTF::fastFree(v3, a2);
  }

  v4 = *(this + 7);
  *(this + 7) = 0;
  if (v4)
  {
    WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v4, a2);
  }

  v5 = *(this + 4);
  *(this + 4) = 0;
  if (v5 && atomic_fetch_add(v5 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v5 + 2);
    (*(*v5 + 8))(v5);
  }

  v6 = *(this + 3);
  *(this + 3) = 0;
  if (v6 && atomic_fetch_add(v6, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v6);
    WTF::fastFree(v6, a2);
  }

  v7 = *(this + 2);
  *(this + 2) = 0;
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
}

{
  WebKit::RemoteCommandEncoder::~RemoteCommandEncoder(this, a2);

  bmalloc::api::tzoneFree(v2, v3);
}

atomic_uchar *WebKit::RemoteCommandEncoder::connection(WebKit::RemoteCommandEncoder *this, uint64_t a2)
{
  result = *(a2 + 56);
  if (result && (result = WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::GPUConnectionToWebProcess>(result, *(a2 + 48), &v8), v8))
  {
    v4 = *(v8 + 56);
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
        goto LABEL_10;
      }
    }

    result = WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v4);
LABEL_10:
    v7 = v8;
    *this = v4;
    v8 = 0;
    if (v7)
    {
      return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUConnectionToWebProcess,(WTF::DestructionThread)1>::deref((v7 + 16));
    }
  }

  else
  {
    *this = 0;
  }

  return result;
}

uint64_t WebKit::RemoteCommandEncoder::destruct(WebKit::RemoteCommandEncoder *this)
{
  v1 = *(*(this + 3) + 8);
  if (v1)
  {
    v2 = (v1 + 16);
    ++*(v1 + 16);
    WebKit::WebGPU::ObjectHeap::removeObject(v1, *(this + 5));

    return WTF::RefCounted<WebKit::WebGPU::ObjectHeap>::deref(v2, v3);
  }

  else
  {
    result = 103;
    __break(0xC471u);
  }

  return result;
}

void *WebKit::RemoteCommandEncoder::stopListeningForIPC(WebKit::RemoteCommandEncoder *this)
{
  v1 = *(this + 4);
  atomic_fetch_add(v1 + 2, 1u);
  result = IPC::StreamServerConnection::stopReceivingMessages(v1, 0x49u, *(this + 5));
  if (v1 && atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v1 + 2);
    v3 = *(*v1 + 8);

    return v3(v1);
  }

  return result;
}

_DWORD *WebKit::RemoteCommandEncoder::beginRenderPass(void *a1, uint64_t a2, void *a3)
{
  v35 = *MEMORY[0x1E69E9840];
  v3 = *(a1[3] + 8);
  if (!v3)
  {
    __break(0xC471u);
    JUMPOUT(0x19DB6C4A4);
  }

  ++*(v3 + 4);
  WebKit::WebGPU::ConvertFromBackingContext::convertFromBacking(v3, a2, &v26);
  if (v33)
  {
    v6 = a1[2];
    ++v6[4];
    (*(*v6 + 16))(&v25, v6, &v26);
    if (v6[4] == 1)
    {
      (*(*v6 + 8))(v6);
    }

    else
    {
      --v6[4];
    }

    v8 = v25;
    if (!v25)
    {
      v23 = qword_1ED6416C8;
      if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_FAULT))
      {
        *buf = 136446210;
        *&buf[4] = "void WebKit::RemoteCommandEncoder::beginRenderPass(const WebGPU::RenderPassDescriptor &, WebGPUIdentifier)";
        _os_log_fault_impl(&dword_19D52D000, v23, OS_LOG_TYPE_FAULT, "/Library/Caches/com.apple.xbs/Sources/WebKit/Source/WebKit/GPUProcess/graphics/WebGPU/RemoteCommandEncoder.cpp 88: Invalid message dispatched %{public}s", buf, 0xCu);
      }

      WebKit::RemoteCommandEncoder::connection(buf, a1);
      v24 = *buf;
      if (*buf)
      {
        *(*buf + 94) = 1;
        WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v24);
      }

      if (IPC::s_shouldCrashOnMessageCheckFailure == 1)
      {
        __break(0xC471u);
        JUMPOUT(0x19DB6C400);
      }

      goto LABEL_16;
    }

    v9 = a1[4];
    atomic_fetch_add((v9 + 8), 1u);
    *buf = v9;
    v10 = *(a1[8] + 8);
    if (v10)
    {
      atomic_fetch_add(v10 + 2, 1u);
      if (WebKit::RemoteRenderPassEncoder::s_heapRef)
      {
        NonCompact = bmalloc::api::tzoneAllocateNonCompact(WebKit::RemoteRenderPassEncoder::s_heapRef, v7);
      }

      else
      {
        NonCompact = WebKit::RemoteRenderPassEncoder::operatorNewSlow(0x38);
      }

      v12 = NonCompact;
      WebKit::RemoteRenderPassEncoder::RemoteRenderPassEncoder(NonCompact, v8, v3, buf, v10, a3);
      if (atomic_fetch_add(v10 + 2, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v10 + 2);
        (*(*v10 + 8))(v10);
      }

      v13 = *buf;
      *buf = 0;
      if (v13 && atomic_fetch_add(v13 + 2, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v13 + 2);
        (*(*v13 + 8))(v13);
      }

      WebKit::WebGPU::ObjectHeap::addObject(v3, a3, v12);
      if (atomic_fetch_add((v12 + 8), 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, (v12 + 8));
        (*(*v12 + 8))(v12);
      }

LABEL_16:
      v15 = v25;
      v25 = 0;
      if (v15)
      {
        if (v15[4] == 1)
        {
          (*(*v15 + 8))(v15);
        }

        else
        {
          --v15[4];
        }
      }

      goto LABEL_19;
    }

    __break(0xC471u);
LABEL_52:
    JUMPOUT(0x19DB6C3B0);
  }

  v21 = qword_1ED6416C8;
  if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_FAULT))
  {
    *buf = 136446210;
    *&buf[4] = "void WebKit::RemoteCommandEncoder::beginRenderPass(const WebGPU::RenderPassDescriptor &, WebGPUIdentifier)";
    _os_log_fault_impl(&dword_19D52D000, v21, OS_LOG_TYPE_FAULT, "/Library/Caches/com.apple.xbs/Sources/WebKit/Source/WebKit/GPUProcess/graphics/WebGPU/RemoteCommandEncoder.cpp 85: Invalid message dispatched %{public}s", buf, 0xCu);
  }

  WebKit::RemoteCommandEncoder::connection(buf, a1);
  v22 = *buf;
  if (*buf)
  {
    *(*buf + 94) = 1;
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v22);
  }

  if (IPC::s_shouldCrashOnMessageCheckFailure == 1)
  {
    __break(0xC471u);
    goto LABEL_52;
  }

LABEL_19:
  if (v33 == 1)
  {
    if (v32 == 1)
    {
      v16 = v31;
      v31 = 0;
      if (v16)
      {
        if (atomic_fetch_add(v16, 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, v16);
          WTF::fastFree(v16, v14);
        }
      }
    }

    v17 = v30;
    v30 = 0;
    if (v17 && atomic_fetch_add(v17, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v17);
      WTF::fastFree(v17, v14);
    }

    if (v29 == 1)
    {
      v18 = v28;
      v28 = 0;
      if (v18)
      {
        if (atomic_fetch_add(v18, 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, v18);
          WTF::fastFree(v18, v14);
        }
      }
    }

    WTF::Vector<std::optional<WebCore::WebGPU::RenderPassColorAttachment>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v27, v14);
    v19 = v26;
    v26 = 0;
    if (v19 && atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v19, v14);
    }
  }

  return WTF::RefCounted<WebKit::WebGPU::ObjectHeap>::deref(v3 + 4, v14);
}

_DWORD *WebKit::RemoteCommandEncoder::beginComputePass(void *a1, uint64_t a2, void *a3)
{
  v40 = *MEMORY[0x1E69E9840];
  v3 = *(a1[3] + 8);
  if (!v3)
  {
    __break(0xC471u);
    JUMPOUT(0x19DB6CB64);
  }

  ++v3[4];
  LOBYTE(v30) = 0;
  v34 = 0;
  if (*(a2 + 32) == 1)
  {
    WebKit::WebGPU::ConvertFromBackingContext::convertFromBacking(v3, a2, &buf);
    v7 = v39;
    if (v39)
    {
      if (v34 != v39)
      {
        v8 = buf;
        *&buf = 0;
        v30 = v8;
        LOBYTE(v31) = 0;
        v33 = 0;
        if (v38 == 1)
        {
          v9 = *(&buf + 1);
          *(&buf + 1) = 0;
          v31 = v9;
          v32 = v37;
          v33 = 1;
        }

        v34 = 1;
      }
    }

    else
    {
      v28 = qword_1ED6416C8;
      if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_FAULT))
      {
        *v35 = 136446210;
        *&v35[4] = "void WebKit::RemoteCommandEncoder::beginComputePass(const std::optional<WebGPU::ComputePassDescriptor> &, WebGPUIdentifier)";
        _os_log_fault_impl(&dword_19D52D000, v28, OS_LOG_TYPE_FAULT, "/Library/Caches/com.apple.xbs/Sources/WebKit/Source/WebKit/GPUProcess/graphics/WebGPU/RemoteCommandEncoder.cpp 99: Invalid message dispatched %{public}s", v35, 0xCu);
      }

      WebKit::RemoteCommandEncoder::connection(v35, a1);
      v29 = *v35;
      if (*v35)
      {
        *(*v35 + 94) = 1;
        WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v29);
      }

      if (IPC::s_shouldCrashOnMessageCheckFailure == 1)
      {
        __break(0xC471u);
        JUMPOUT(0x19DB6CAC0);
      }
    }

    if (v39 != 1)
    {
      goto LABEL_15;
    }

    if (v38 == 1)
    {
      v10 = *(&buf + 1);
      *(&buf + 1) = 0;
      if (v10)
      {
        if (atomic_fetch_add(v10, 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, v10);
          WTF::fastFree(v10, v6);
        }
      }
    }

    v11 = buf;
    if (buf && atomic_fetch_add_explicit(buf, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v11, v6);
      if (!v7)
      {
        goto LABEL_32;
      }
    }

    else
    {
LABEL_15:
      if (!v7)
      {
        goto LABEL_32;
      }
    }
  }

  v12 = a1[2];
  ++v12[4];
  (*(*v12 + 24))(v35, v12, &v30);
  if (v12[4] == 1)
  {
    (*(*v12 + 8))(v12);
  }

  else
  {
    --v12[4];
  }

  v14 = *v35;
  if (!*v35)
  {
    v26 = qword_1ED6416C8;
    if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_FAULT))
    {
      LODWORD(buf) = 136446210;
      *(&buf + 4) = "void WebKit::RemoteCommandEncoder::beginComputePass(const std::optional<WebGPU::ComputePassDescriptor> &, WebGPUIdentifier)";
      _os_log_fault_impl(&dword_19D52D000, v26, OS_LOG_TYPE_FAULT, "/Library/Caches/com.apple.xbs/Sources/WebKit/Source/WebKit/GPUProcess/graphics/WebGPU/RemoteCommandEncoder.cpp 104: Invalid message dispatched %{public}s", &buf, 0xCu);
    }

    WebKit::RemoteCommandEncoder::connection(&buf, a1);
    v27 = buf;
    if (buf)
    {
      *(buf + 94) = 1;
      WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v27);
    }

    if (IPC::s_shouldCrashOnMessageCheckFailure != 1)
    {
      goto LABEL_29;
    }

LABEL_59:
    __break(0xC471u);
    JUMPOUT(0x19DB6CA70);
  }

  v15 = a1[4];
  atomic_fetch_add((v15 + 8), 1u);
  v16 = *(a1[8] + 8);
  if (!v16)
  {
    goto LABEL_59;
  }

  atomic_fetch_add((v16 + 8), 1u);
  if (WebKit::RemoteComputePassEncoder::s_heapRef)
  {
    NonCompact = bmalloc::api::tzoneAllocateNonCompact(WebKit::RemoteComputePassEncoder::s_heapRef, v13);
  }

  else
  {
    NonCompact = WebKit::RemoteComputePassEncoder::operatorNewSlow(0);
  }

  v18 = NonCompact;
  *(NonCompact + 8) = 1;
  *NonCompact = &unk_1F10FB6B0;
  ++*(v14 + 16);
  *(NonCompact + 16) = v14;
  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(v3 + 2, v3);
  v19 = *(v3 + 1);
  atomic_fetch_add(v19, 1u);
  *(v18 + 24) = v19;
  *(v18 + 32) = v15;
  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded((v16 + 16), v16);
  v20 = *(v16 + 16);
  atomic_fetch_add(v20, 1u);
  *(v18 + 40) = v20;
  *(v18 + 48) = a3;
  v21 = *(v18 + 32);
  atomic_fetch_add(v21 + 2, 1u);
  IPC::StreamServerConnection::startReceivingMessages(v21, v18, 0x4Bu, *(v18 + 48));
  if (v21 && atomic_fetch_add(v21 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v21 + 2);
    (*(*v21 + 8))(v21);
  }

  if (atomic_fetch_add((v16 + 8), 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, (v16 + 8));
    (*(*v16 + 8))(v16);
  }

  WebKit::WebGPU::ObjectHeap::addObject(v3, a3, v18);
  if (atomic_fetch_add((v18 + 8), 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, (v18 + 8));
    (*(*v18 + 8))(v18);
  }

LABEL_29:
  v22 = *v35;
  *v35 = 0;
  if (v22)
  {
    if (v22[4] == 1)
    {
      (*(*v22 + 8))(v22);
    }

    else
    {
      --v22[4];
    }
  }

LABEL_32:
  if (v34 == 1)
  {
    if (v33 == 1)
    {
      v23 = v31;
      v31 = 0;
      if (v23)
      {
        if (atomic_fetch_add(v23, 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, v23);
          WTF::fastFree(v23, v6);
        }
      }
    }

    v24 = v30;
    v30 = 0;
    if (v24 && atomic_fetch_add_explicit(v24, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v24, v6);
    }
  }

  return WTF::RefCounted<WebKit::WebGPU::ObjectHeap>::deref(v3 + 4, v6);
}

uint64_t WebKit::RemoteCommandEncoder::copyBufferToBuffer(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(*(a1 + 24) + 8);
  if (!v4)
  {
    result = 103;
    __break(0xC471u);
    return result;
  }

  ++*(v4 + 16);
  WebKit::WebGPU::ObjectHeap::convertBufferFromBacking(v4, a2, &v13);
  WebKit::WebGPU::ObjectHeap::convertBufferFromBacking(v4, a4, &v12);
  if (v13)
  {
    v7 = *(v13 + 1);
    v8 = v12;
    if (v7)
    {
      if (v12)
      {
        if (*(v12 + 1))
        {
          v9 = *(a1 + 16);
          ++v9[4];
          (*(*v9 + 32))(v9);
          if (v9[4] == 1)
          {
            (*(*v9 + 8))(v9);
          }

          else
          {
            --v9[4];
          }
        }

        v12 = 0;
        goto LABEL_11;
      }

      goto LABEL_13;
    }
  }

  else
  {
    v8 = v12;
  }

  v12 = 0;
  if (v8)
  {
LABEL_11:
    if (atomic_fetch_add(v8, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v8);
      WTF::fastFree(v8, v7);
    }
  }

LABEL_13:
  v10 = v13;
  v13 = 0;
  if (v10 && atomic_fetch_add(v10, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v10);
    WTF::fastFree(v10, v7);
  }

  return WTF::RefCounted<WebKit::WebGPU::ObjectHeap>::deref((v4 + 16), v7);
}

WTF *WebKit::RemoteCommandEncoder::copyBufferToTexture(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = *(*(a1 + 24) + 8);
  if (!v5)
  {
    __break(0xC471u);
    goto LABEL_31;
  }

  WebKit::WebGPU::ConvertFromBackingContext::convertFromBacking(v5, a2, v24);
  v8 = *(*(a1 + 24) + 8);
  if (!v8)
  {
    __break(0xC471u);
    JUMPOUT(0x19DB6CF64);
  }

  WebKit::WebGPU::ConvertFromBackingContext::convertFromBacking(v8, a3, v18);
  v9 = *(*(a1 + 24) + 8);
  if (!v9)
  {
    __break(0xC471u);
LABEL_31:
    JUMPOUT(0x19DB6CF44);
  }

  result = WebKit::WebGPU::ConvertToBackingContext::convertToBacking(v9, a4, &v14);
  if (v26 == 1 && v23 == 1 && v17 == 1)
  {
    v12 = *(a1 + 16);
    ++v12[4];
    result = (*(*v12 + 40))(v12, v24, v18, &v14);
    if (v12[4] == 1)
    {
      result = (*(*v12 + 8))(v12);
    }

    else
    {
      --v12[4];
    }
  }

  if (v17 == 1 && !v16)
  {
    result = v14;
    if (v14)
    {
      v14 = 0;
      v15 = 0;
      result = WTF::fastFree(result, v11);
    }
  }

  if (v23 == 1)
  {
    if (v22 == 1)
    {
      if (!v21)
      {
        v13 = v19;
        if (v19)
        {
          v19 = 0;
          v20 = 0;
          WTF::fastFree(v13, v11);
        }
      }

      v21 = -1;
    }

    result = v18[0];
    v18[0] = 0;
    if (result && atomic_fetch_add(result, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, result);
      result = WTF::fastFree(result, v11);
    }
  }

  if (v26 == 1)
  {
    result = v25;
    v25 = 0;
    if (result)
    {
      if (atomic_fetch_add(result, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, result);
        return WTF::fastFree(result, v11);
      }
    }
  }

  return result;
}

WTF *WebKit::RemoteCommandEncoder::copyTextureToBuffer(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = *(*(a1 + 24) + 8);
  if (!v5)
  {
    __break(0xC471u);
    goto LABEL_31;
  }

  WebKit::WebGPU::ConvertFromBackingContext::convertFromBacking(v5, a2, v21);
  v8 = *(*(a1 + 24) + 8);
  if (!v8)
  {
    __break(0xC471u);
    JUMPOUT(0x19DB6D1ACLL);
  }

  WebKit::WebGPU::ConvertFromBackingContext::convertFromBacking(v8, a3, v18);
  v9 = *(*(a1 + 24) + 8);
  if (!v9)
  {
    __break(0xC471u);
LABEL_31:
    JUMPOUT(0x19DB6D18CLL);
  }

  result = WebKit::WebGPU::ConvertToBackingContext::convertToBacking(v9, a4, &v14);
  if (v26 == 1 && v20 == 1 && v17 == 1)
  {
    v12 = *(a1 + 16);
    ++v12[4];
    result = (*(*v12 + 48))(v12, v21, v18, &v14);
    if (v12[4] == 1)
    {
      result = (*(*v12 + 8))(v12);
    }

    else
    {
      --v12[4];
    }
  }

  if (v17 == 1 && !v16)
  {
    result = v14;
    if (v14)
    {
      v14 = 0;
      v15 = 0;
      result = WTF::fastFree(result, v11);
    }
  }

  if (v20 == 1)
  {
    result = v19;
    v19 = 0;
    if (result)
    {
      if (atomic_fetch_add(result, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, result);
        result = WTF::fastFree(result, v11);
      }
    }
  }

  if (v26 == 1)
  {
    if (v25 == 1)
    {
      if (!v24)
      {
        v13 = v22;
        if (v22)
        {
          v22 = 0;
          v23 = 0;
          WTF::fastFree(v13, v11);
        }
      }

      v24 = -1;
    }

    result = v21[0];
    v21[0] = 0;
    if (result)
    {
      if (atomic_fetch_add(result, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, result);
        return WTF::fastFree(result, v11);
      }
    }
  }

  return result;
}

WTF *WebKit::RemoteCommandEncoder::copyTextureToTexture(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(*(a1 + 24) + 8);
  if (!v5)
  {
    __break(0xC471u);
    goto LABEL_36;
  }

  WebKit::WebGPU::ConvertFromBackingContext::convertFromBacking(v5, a2, v25);
  v8 = *(*(a1 + 24) + 8);
  if (!v8)
  {
    __break(0xC471u);
    JUMPOUT(0x19DB6D428);
  }

  WebKit::WebGPU::ConvertFromBackingContext::convertFromBacking(v8, a3, v19);
  v9 = *(*(a1 + 24) + 8);
  if (!v9)
  {
    __break(0xC471u);
LABEL_36:
    JUMPOUT(0x19DB6D408);
  }

  result = WebKit::WebGPU::ConvertToBackingContext::convertToBacking(v9, a4, &v15);
  if (v30 == 1 && v24 == 1 && v18 == 1)
  {
    v12 = *(a1 + 16);
    ++v12[4];
    result = (*(*v12 + 56))(v12, v25, v19, &v15);
    if (v12[4] == 1)
    {
      result = (*(*v12 + 8))(v12);
    }

    else
    {
      --v12[4];
    }
  }

  if (v18 == 1 && !v17)
  {
    result = v15;
    if (v15)
    {
      v15 = 0;
      v16 = 0;
      result = WTF::fastFree(result, v11);
    }
  }

  if (v24 == 1)
  {
    if (v23 == 1)
    {
      if (!v22)
      {
        v13 = v20;
        if (v20)
        {
          v20 = 0;
          v21 = 0;
          WTF::fastFree(v13, v11);
        }
      }

      v22 = -1;
    }

    result = v19[0];
    v19[0] = 0;
    if (result && atomic_fetch_add(result, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, result);
      result = WTF::fastFree(result, v11);
    }
  }

  if (v30 == 1)
  {
    if (v29 == 1)
    {
      if (!v28)
      {
        v14 = v26;
        if (v26)
        {
          v26 = 0;
          v27 = 0;
          WTF::fastFree(v14, v11);
        }
      }

      v28 = -1;
    }

    result = v25[0];
    v25[0] = 0;
    if (result)
    {
      if (atomic_fetch_add(result, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, result);
        return WTF::fastFree(result, v11);
      }
    }
  }

  return result;
}

uint64_t WebKit::RemoteCommandEncoder::clearBuffer(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(*(a1 + 24) + 8);
  if (v6)
  {
    v10 = (v6 + 16);
    ++*(v6 + 16);
    WebKit::WebGPU::ObjectHeap::convertBufferFromBacking(v6, a2, &v16);
    result = WTF::RefCounted<WebKit::WebGPU::ObjectHeap>::deref(v10, v11);
    v13 = v16;
    if (v16)
    {
      v14 = *(v16 + 1);
      if (v14)
      {
        v15 = *(a1 + 16);
        ++v15[4];
        result = (*(*v15 + 64))(v15, v14, a3, a4, a5);
        if (v15[4] == 1)
        {
          result = (*(*v15 + 8))(v15);
        }

        else
        {
          --v15[4];
        }
      }

      v16 = 0;
      if (atomic_fetch_add(v13, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v13);

        return WTF::fastFree(v13, v14);
      }
    }
  }

  else
  {
    result = 103;
    __break(0xC471u);
  }

  return result;
}

uint64_t WebKit::RemoteCommandEncoder::pushDebugGroup(uint64_t a1)
{
  v1 = *(a1 + 16);
  ++v1[4];
  result = (*(*v1 + 72))(v1);
  if (v1[4] == 1)
  {
    v3 = *(*v1 + 8);

    return v3(v1);
  }

  else
  {
    --v1[4];
  }

  return result;
}

uint64_t WebKit::RemoteCommandEncoder::popDebugGroup(WebKit::RemoteCommandEncoder *this)
{
  v1 = *(this + 2);
  ++v1[4];
  result = (*(*v1 + 80))(v1);
  if (v1[4] == 1)
  {
    v3 = *(*v1 + 8);

    return v3(v1);
  }

  else
  {
    --v1[4];
  }

  return result;
}

uint64_t WebKit::RemoteCommandEncoder::insertDebugMarker(uint64_t a1)
{
  v1 = *(a1 + 16);
  ++v1[4];
  result = (*(*v1 + 88))(v1);
  if (v1[4] == 1)
  {
    v3 = *(*v1 + 8);

    return v3(v1);
  }

  else
  {
    --v1[4];
  }

  return result;
}

uint64_t WebKit::RemoteCommandEncoder::writeTimestamp(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(*(a1 + 24) + 8);
  if (v4)
  {
    v6 = (v4 + 16);
    ++*(v4 + 16);
    WebKit::WebGPU::ObjectHeap::convertQuerySetFromBacking(v4, a2, &v12);
    result = WTF::RefCounted<WebKit::WebGPU::ObjectHeap>::deref(v6, v7);
    v9 = v12;
    if (v12)
    {
      v10 = *(v12 + 1);
      if (v10)
      {
        v11 = *(a1 + 16);
        ++v11[4];
        result = (*(*v11 + 96))(v11, v10, a3);
        if (v11[4] == 1)
        {
          result = (*(*v11 + 8))(v11);
        }

        else
        {
          --v11[4];
        }
      }

      v12 = 0;
      if (atomic_fetch_add(v9, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v9);

        return WTF::fastFree(v9, v10);
      }
    }
  }

  else
  {
    result = 103;
    __break(0xC471u);
  }

  return result;
}

uint64_t WebKit::RemoteCommandEncoder::resolveQuerySet(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(*(a1 + 24) + 8);
  if (!v5)
  {
    result = 103;
    __break(0xC471u);
    return result;
  }

  ++*(v5 + 16);
  WebKit::WebGPU::ObjectHeap::convertQuerySetFromBacking(v5, a2, &v14);
  WebKit::WebGPU::ObjectHeap::convertBufferFromBacking(v5, a5, &v13);
  if (v14)
  {
    v8 = *(v14 + 1);
    v9 = v13;
    if (v8)
    {
      if (v13)
      {
        if (*(v13 + 1))
        {
          v10 = *(a1 + 16);
          ++v10[4];
          (*(*v10 + 104))(v10);
          if (v10[4] == 1)
          {
            (*(*v10 + 8))(v10);
          }

          else
          {
            --v10[4];
          }
        }

        v13 = 0;
        goto LABEL_11;
      }

      goto LABEL_13;
    }
  }

  else
  {
    v9 = v13;
  }

  v13 = 0;
  if (v9)
  {
LABEL_11:
    if (atomic_fetch_add(v9, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v9);
      WTF::fastFree(v9, v8);
    }
  }

LABEL_13:
  v11 = v14;
  v14 = 0;
  if (v11 && atomic_fetch_add(v11, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v11);
    WTF::fastFree(v11, v8);
  }

  return WTF::RefCounted<WebKit::WebGPU::ObjectHeap>::deref((v5 + 16), v8);
}