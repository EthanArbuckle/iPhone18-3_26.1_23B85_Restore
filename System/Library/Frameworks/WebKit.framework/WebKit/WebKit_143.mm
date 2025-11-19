void sub_19DD920CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, int a13, atomic_uint *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, WTF *a20)
{
  WTF::RefCounted<WebKit::RemoteLayerTreeNode>::deref((a11 + 8));
  WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(a14);
  _Unwind_Resume(a1);
}

uint64_t WTF::CompletionHandler<void ()(IPC::Connection *,IPC::Decoder *)>::operator()(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  (*(*v1 + 16))(v1);
  v2 = *(*v1 + 8);

  return v2(v1);
}

_DWORD *WebKit::RemoteLayerTreeDrawingAreaProxy::asyncSetLayerContents(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 80);
  v11[0] = a2;
  v11[1] = a3;
  v12 = 1;
  result = WTF::HashMap<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::Ref<WebKit::RemoteLayerTreeNode,WTF::RawPtrTraits<WebKit::RemoteLayerTreeNode>,WTF::DefaultRefDerefTraits<WebKit::RemoteLayerTreeNode>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WTF::Ref<WebKit::RemoteLayerTreeNode,WTF::RawPtrTraits<WebKit::RemoteLayerTreeNode>,WTF::DefaultRefDerefTraits<WebKit::RemoteLayerTreeNode>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::Ref<WebKit::RemoteLayerTreeNode,WTF::RawPtrTraits<WebKit::RemoteLayerTreeNode>,WTF::DefaultRefDerefTraits<WebKit::RemoteLayerTreeNode>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WTF::Ref<WebKit::RemoteLayerTreeNode,WTF::RawPtrTraits<WebKit::RemoteLayerTreeNode>,WTF::DefaultRefDerefTraits<WebKit::RemoteLayerTreeNode>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>((v5 + 16), v11);
  if (result)
  {
    v7 = result;
    v8 = result + 2;
    ++result[2];
    v9 = WebKit::RemoteLayerTreeHost::layerContentsType(*v5);
    WebKit::RemoteLayerTreeNode::applyBackingStore(v7, v10, v5, v9, a4);
    return WTF::RefCounted<WebKit::RemoteLayerTreeNode>::deref(v8);
  }

  return result;
}

float WebKit::RemoteLayerTreeDrawingAreaProxy::indicatorLocation(WebKit::RemoteLayerTreeDrawingAreaProxy *this)
{
  if (!this)
  {
    return 0.0;
  }

  v1 = *(this + 1);
  v2 = 0.0;
  if (v1)
  {
    CFRetain(*(v1 - 8));
    v3 = *(v1 + 16);
    v4 = 0.0;
    if (*(v3 + 2784) == 1)
    {
      v5 = *(v3 + 2616);
      v6 = *(v3 + 2600);
      v7 = *(v3 + 2768);
    }

    else
    {
      v7 = 1.0;
      v6 = 0.0;
      v5 = 0.0;
    }

    if (v5 >= 0.0)
    {
      v4 = v5;
    }

    if (v4 < v6)
    {
      v4 = v6;
    }

    v8 = 10.0 / v7;
    v2 = v4 + v8;
    CFRelease(*(v1 - 8));
  }

  return v2;
}

IPC::Encoder *WebKit::RemoteLayerTreeDrawingAreaProxy::didRefreshDisplay(IPC::Encoder *result, _DWORD *a2, uint64_t *a3)
{
  if (*a2 == 1)
  {
    v4 = result;
    *a2 = 0;
    if ((result + 96) == a2)
    {
      v8 = *(result + 5);
      if (v8)
      {
        v9 = *(v8 + 8);
        if (v9)
        {
          CFRetain(*(v9 - 8));
          v10 = *(v9 + 328);
          if (!v10 || (++*(v10 + 4), WebKit::RemoteScrollingCoordinatorProxy::sendScrollingTreeNodeDidScroll(v10), (v11 = *(v10 + 4)) == 0))
          {
            __break(0xC471u);
            JUMPOUT(0x19DD924FCLL);
          }

          *(v10 + 4) = v11 - 1;
          CFRelease(*(v9 - 8));
        }
      }
    }

    v5 = *(v4 + 3);
    v6 = IPC::Encoder::operator new(0x238, a2);
    *v6 = 28;
    *(v6 + 2) = 0;
    *(v6 + 3) = 0;
    *(v6 + 1) = v5;
    *(v6 + 68) = 0;
    *(v6 + 70) = 0;
    *(v6 + 69) = 0;
    IPC::Encoder::encodeHeader(v6);
    v14 = v6;
    IPC::Connection::sendMessageImpl(a3, &v14, 0, 0);
    result = v14;
    v14 = 0;
    if (result)
    {
      IPC::Encoder::~Encoder(result, v7);
      return bmalloc::api::tzoneFree(v12, v13);
    }
  }

  else if (!*a2)
  {
    *a2 = 2;
  }

  return result;
}

void sub_19DD92520(_Unwind_Exception *a1)
{
  v3 = *(v1 + 16);
  if (v3)
  {
    *(v1 + 16) = v3 - 1;
    CFRelease(*(v2 - 8));
    _Unwind_Resume(a1);
  }

  __break(0xC471u);
}

atomic_ullong *WebKit::RemoteLayerTreeDrawingAreaProxy::waitForDidUpdateActivityState(atomic_ullong *this, unint64_t a2)
{
  if (!a2)
  {
    return this;
  }

  v2 = this;
  v3 = *(this[6] + 88);
  if (!v3)
  {
    return this;
  }

  while (1)
  {
    v5 = *v3;
    if ((*v3 & 1) == 0)
    {
      break;
    }

    v6 = *v3;
    atomic_compare_exchange_strong_explicit(v3, &v6, v5 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v6 == v5)
    {
      goto LABEL_8;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v3);
LABEL_8:
  if (*(v2 + 96) == 1)
  {
    WebKit::RemoteLayerTreeDrawingAreaProxy::didRefreshDisplay(v2, v3);
  }

  if ((byte_1ED6426F9 & 1) == 0)
  {
    v26 = [objc_msgSend(MEMORY[0x1E695E000] "standardUserDefaults")];
    v27 = v26;
    if (v26)
    {
      v28 = v26;
      [v27 doubleValue];
      v30 = v29;
    }

    else
    {
      v30 = 0.25;
    }

    qword_1ED642700 = *&v30;
    byte_1ED6426F9 = 1;
  }

  v7 = WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded((v2 + 8), v2);
  v8 = *(v2 + 8);
  atomic_fetch_add(v8, 1u);
  v9 = WTF::MonotonicTime::now(v7);
  v11 = v10;
  while (1)
  {
    v12 = *(v2 + 24);
    v13 = WTF::MonotonicTime::now(v9);
    v15 = v14 - v11;
    v16 = *&qword_1ED642700;
    v17 = vabdd_f64(*&qword_1ED642700, v14 - v11);
    v18 = INFINITY;
    if (v17 != INFINITY)
    {
      WTF::ApproximateTime::now(v13);
      v18 = v16 - v15 + v19;
    }

    v9 = IPC::Connection::waitForMessage(v3, 0x567u, v12, 1, &v31, v18);
    if (v32)
    {
      break;
    }

    v21 = atomic_load((v3 + 33));
    if (v21)
    {
      v22 = *(v3 + 8);
      if (v22)
      {
        v9 = (**v22)(*(v3 + 8));
      }

      if (v32)
      {
LABEL_39:
        mpark::throw_bad_variant_access(v9);
      }

      (*(*v22 + 32))(v22, v3, v31);
      v9 = (*(*v22 + 8))(v22);
      v23 = 0;
    }

    else
    {
      v23 = 1;
    }

    if (!v32 && (v9 = v31, v31 = 0, v9))
    {
      IPC::Decoder::~Decoder(v9);
      v9 = bmalloc::api::tzoneFree(v24, v25);
      if (v23)
      {
        goto LABEL_33;
      }
    }

    else if (v23)
    {
      goto LABEL_33;
    }

LABEL_27:
    if (!v8)
    {
      goto LABEL_36;
    }

    if (!*(v8 + 8) || *(v2 + 272) >= a2)
    {
      goto LABEL_34;
    }

    if (*(v2 + 96) == 1)
    {
      WebKit::RemoteLayerTreeDrawingAreaProxy::didRefreshDisplay(v2, v3);
    }
  }

  if (v32 != 1)
  {
    goto LABEL_39;
  }

  if (!v31)
  {
    goto LABEL_27;
  }

LABEL_33:
  if (!v8)
  {
    goto LABEL_36;
  }

LABEL_34:
  if (atomic_fetch_add(v8, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v8);
    WTF::fastFree(v8, v20);
  }

LABEL_36:

  return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
}

uint64_t WebKit::RemoteLayerTreeDrawingAreaProxy::hideContentUntilPendingUpdate(WebKit::RemoteLayerTreeDrawingAreaProxy *this)
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = qword_1ED6410F8;
  if (os_log_type_enabled(qword_1ED6410F8, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(this + 3);
    LODWORD(buf) = 134217984;
    *(&buf + 4) = v4;
    _os_log_impl(&dword_19D52D000, v2, OS_LOG_TYPE_DEFAULT, "RemoteLayerTreeDrawingAreaProxy(%llu)::hideContentUntilPendingUpdate", &buf, 0xCu);
  }

  v5 = *(this + 6);
  v6 = *(this + 3);
  v7 = IPC::Encoder::operator new(0x238, v3);
  *v7 = 27;
  *(v7 + 2) = 0;
  *(v7 + 3) = 0;
  *(v7 + 1) = v6;
  *(v7 + 68) = 0;
  *(v7 + 70) = 0;
  *(v7 + 69) = 0;
  IPC::Encoder::encodeHeader(v7);
  v18 = v7;
  v8 = WTF::fastMalloc(0x10);
  *v8 = &unk_1F1108C50;
  if (WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
  {
    result = 141;
    __break(0xC471u);
  }

  else
  {
    IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
    *&buf = v8;
    *(&buf + 1) = IdentifierInternal;
    v20 = 1;
    v11 = WebKit::AuxiliaryProcessProxy::sendMessage(v5, &v18, 0, &buf, 0);
    if (v20 == 1)
    {
      v12 = buf;
      *&buf = 0;
      if (v12)
      {
        (*(*v12 + 8))(v12);
      }
    }

    v13 = v18;
    v18 = 0;
    if (v13)
    {
      IPC::Encoder::~Encoder(v13, v10);
      bmalloc::api::tzoneFree(v16, v17);
    }

    if (v11)
    {
      v14 = IdentifierInternal;
    }

    else
    {
      v14 = 0;
    }

    *(this + 28) = v14;
    result = WebKit::RemoteLayerTreeHost::detachRootLayer(*(this + 10), v10);
    *(this + 248) = 1;
  }

  return result;
}

void sub_19DD92AD8(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, IPC::Encoder *a10, uint64_t a11, uint64_t a12, char a13)
{
  if (a13 == 1 && a11)
  {
    (*(*a11 + 8))(a11);
  }

  if (a10)
  {
    IPC::Encoder::~Encoder(a10, a2);
    bmalloc::api::tzoneFree(v14, v15);
  }

  _Unwind_Resume(exception_object);
}

_DWORD *WebKit::RemoteLayerTreeHost::detachRootLayer(WebKit::RemoteLayerTreeHost *this, void *a2)
{
  result = *(this + 1);
  *(this + 1) = 0;
  if (result)
  {
    v4 = *(result + 1);
    if (v4)
    {
      ++*(v4 + 8);
    }

    if (atomic_fetch_add(result, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, result);
      result = WTF::fastFree(result, a2);
      if (!v4)
      {
        return result;
      }
    }

    else if (!v4)
    {
      return result;
    }

    v5 = *(v4 + 56);
    if (v5)
    {
      [v5 removeFromSuperview];
    }

    else
    {
      [*(v4 + 48) removeFromSuperlayer];
    }

    return WTF::RefCounted<WebKit::RemoteLayerTreeNode>::deref((v4 + 8));
  }

  return result;
}

void sub_19DD92C00(_Unwind_Exception *a1)
{
  v2 = v1;
  WTF::RefCounted<WebKit::RemoteLayerTreeNode>::deref((v2 + 8));
  _Unwind_Resume(a1);
}

_DWORD *WebKit::RemoteLayerTreeDrawingAreaProxy::hideContentUntilDidUpdateActivityState(WebKit::RemoteLayerTreeDrawingAreaProxy *this, uint64_t a2)
{
  v10 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v4 = qword_1ED6410F8;
    if (os_log_type_enabled(qword_1ED6410F8, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(this + 3);
      v8 = 134217984;
      v9 = v6;
      _os_log_impl(&dword_19D52D000, v4, OS_LOG_TYPE_DEFAULT, "RemoteLayerTreeDrawingAreaProxy(%llu)::hideContentUntilDidUpdateActivityState", &v8, 0xCu);
    }

    *(this + 29) = a2;
    *(this + 240) = 1;
    result = WebKit::RemoteLayerTreeHost::detachRootLayer(*(this + 10), v5);
    *(this + 248) = 1;
  }

  else
  {

    return WebKit::RemoteLayerTreeDrawingAreaProxy::hideContentUntilAnyUpdate(this);
  }

  return result;
}

_DWORD *WebKit::RemoteLayerTreeDrawingAreaProxy::hideContentUntilAnyUpdate(WebKit::RemoteLayerTreeDrawingAreaProxy *this)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = qword_1ED6410F8;
  if (os_log_type_enabled(qword_1ED6410F8, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(this + 3);
    v6 = 134217984;
    v7 = v4;
    _os_log_impl(&dword_19D52D000, v2, OS_LOG_TYPE_DEFAULT, "RemoteLayerTreeDrawingAreaProxy(%llu)::hideContentUntilAnyUpdate", &v6, 0xCu);
  }

  result = WebKit::RemoteLayerTreeHost::detachRootLayer(*(this + 10), v3);
  *(this + 248) = 1;
  return result;
}

uint64_t WebKit::RemoteLayerTreeDrawingAreaProxy::prepareForAppSuspension(WebKit::RemoteLayerTreeDrawingAreaProxy *this, CALayer *a2)
{
  v2 = *(*(this + 10) + 8);
  if (v2 && (v3 = *(v2 + 8)) != 0)
  {
    v4 = *(v3 + 48);
  }

  else
  {
    v4 = 0;
  }

  return WebKit::recursivelyMapIOSurfaceBackingStore(v4, a2);
}

void WebKit::RemoteLayerTreeDrawingAreaProxy::minimumSizeForAutoLayoutDidChange(WebKit::RemoteLayerTreeDrawingAreaProxy *this)
{
  v1 = *(this + 5);
  if (v1)
  {
    v2 = *(v1 + 8);
    if (v2)
    {
      CFRetain(*(v2 - 8));
      if ((*(v2 + 849) & 1) == 0 && (*(v2 + 848) & 1) != 0 && (*(this + 88) & 1) == 0)
      {
        WebKit::RemoteLayerTreeDrawingAreaProxy::sendUpdateGeometry(this);
      }

      v4 = *(v2 - 8);

      CFRelease(v4);
    }
  }
}

void WebKit::RemoteLayerTreeDrawingAreaProxy::sizeToContentAutoSizeMaximumSizeDidChange(WebKit::RemoteLayerTreeDrawingAreaProxy *this)
{
  v1 = *(this + 5);
  if (v1)
  {
    v2 = *(v1 + 8);
    if (v2)
    {
      CFRetain(*(v2 - 8));
      if ((*(v2 + 849) & 1) == 0 && (*(v2 + 848) & 1) != 0 && (*(this + 88) & 1) == 0)
      {
        WebKit::RemoteLayerTreeDrawingAreaProxy::sendUpdateGeometry(this);
      }

      v4 = *(v2 - 8);

      CFRelease(v4);
    }
  }
}

void WebKit::RemoteLayerTreeHost::~RemoteLayerTreeHost(WebKit::RemoteLayerTreeHost *this, void *a2)
{
  v4 = (this + 48);
  v3 = *(this + 6);
  if (v3)
  {
    v5 = *(v3 - 4);
    v6 = v3 + 24 * v5;
    if (*(v3 - 12))
    {
      if (v5)
      {
        v7 = 24 * v5;
        v8 = *(this + 6);
        while (*v8 == 0 || *(v8 + 8) == -1)
        {
          v8 += 24;
          v7 -= 24;
          if (!v7)
          {
            v8 = v6;
            goto LABEL_16;
          }
        }
      }

      else
      {
        v8 = *(this + 6);
      }

      goto LABEL_16;
    }
  }

  else
  {
    v6 = 0;
    LODWORD(v5) = 0;
  }

  v8 = v6;
  v6 = v3 + 24 * v5;
  if (!v3)
  {
    v10 = 0;
    goto LABEL_17;
  }

LABEL_16:
  v10 = v3 + 24 * *(v3 - 4);
LABEL_17:
  while (v8 != v10)
  {
    [*(v8 + 16) invalidate];
    do
    {
      v8 += 24;
      if (v8 == v6)
      {
        break;
      }
    }

    while (*v8 == 0 || *(v8 + 8) == -1);
  }

  v12 = *(this + 2);
  if (!v12)
  {
    v14 = 0;
    LODWORD(v13) = 0;
LABEL_38:
    v16 = v14;
    v14 = (v12 + 24 * v13);
    if (!v12)
    {
      v19 = 0;
      goto LABEL_42;
    }

    goto LABEL_36;
  }

  v13 = *(v12 - 4);
  v14 = (v12 + 24 * v13);
  if (!*(v12 - 12))
  {
    goto LABEL_38;
  }

  if (!v13)
  {
    v18 = 0;
    v16 = *(this + 2);
    goto LABEL_41;
  }

  v15 = 24 * v13;
  v16 = *(this + 2);
  while (*v16 == 0 || v16[1] == -1)
  {
    v16 += 3;
    v15 -= 24;
    if (!v15)
    {
      v16 = v14;
      break;
    }
  }

LABEL_36:
  v18 = *(v12 - 4);
LABEL_41:
  v19 = (v12 + 24 * v18);
LABEL_42:
  if (v19 == v16)
  {
    goto LABEL_61;
  }

  do
  {
    v20 = WTF::HashTable<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::RetainPtr<WKAnimationDelegate>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::RetainPtr<WKAnimationDelegate>>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashMap<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::RetainPtr<WKAnimationDelegate>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WTF::RetainPtr<WKAnimationDelegate>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::RetainPtr<WKAnimationDelegate>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WTF::RetainPtr<WKAnimationDelegate>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>,(WTF::ShouldValidateKey)1,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(v4, v16);
    if (*v4)
    {
      v21 = *v4 + 24 * *(*v4 - 4);
      if (v21 == v20)
      {
        goto LABEL_50;
      }
    }

    else
    {
      if (!v20)
      {
        goto LABEL_50;
      }

      v21 = 0;
    }

    if (v21 != v20)
    {
      WTF::HashTable<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::RetainPtr<WKAnimationDelegate>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::RetainPtr<WKAnimationDelegate>>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashMap<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::RetainPtr<WKAnimationDelegate>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WTF::RetainPtr<WKAnimationDelegate>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::remove(v4, v20);
    }

LABEL_50:
    v22 = v16[2];
    v23 = (v22 + 8);
    ++*(v22 + 8);
    v24 = *(v22 + 56);
    if (v24)
    {
      [v24 removeFromSuperview];
    }

    else
    {
      [*(v22 + 48) removeFromSuperlayer];
    }

    WTF::RefCounted<WebKit::RemoteLayerTreeNode>::deref(v23);
    do
    {
      v16 += 3;
      if (v16 == v14)
      {
        break;
      }
    }

    while (*v16 == 0 || v16[1] == -1);
  }

  while (v16 != v19);
  v12 = *(this + 2);
LABEL_61:
  if (v12)
  {
    *(this + 2) = 0;
    WTF::HashTable<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::Ref<WebKit::RemoteLayerTreeNode,WTF::RawPtrTraits<WebKit::RemoteLayerTreeNode>,WTF::DefaultRefDerefTraits<WebKit::RemoteLayerTreeNode>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::Ref<WebKit::RemoteLayerTreeNode,WTF::RawPtrTraits<WebKit::RemoteLayerTreeNode>,WTF::DefaultRefDerefTraits<WebKit::RemoteLayerTreeNode>>>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashMap<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::Ref<WebKit::RemoteLayerTreeNode,WTF::RawPtrTraits<WebKit::RemoteLayerTreeNode>,WTF::DefaultRefDerefTraits<WebKit::RemoteLayerTreeNode>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WTF::Ref<WebKit::RemoteLayerTreeNode,WTF::RawPtrTraits<WebKit::RemoteLayerTreeNode>,WTF::DefaultRefDerefTraits<WebKit::RemoteLayerTreeNode>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::deallocateTable(v12, a2);
  }

  v26 = *(this + 1);
  *(this + 1) = 0;
  if (v26 && atomic_fetch_add(v26, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v26);
    WTF::fastFree(v26, a2);
  }

  v27 = *(this + 7);
  if (v27)
  {
    WTF::fastFree((v27 - 16), a2);
  }

  if (*v4)
  {
    WTF::HashTable<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::RetainPtr<WKAnimationDelegate>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::RetainPtr<WKAnimationDelegate>>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashMap<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::RetainPtr<WKAnimationDelegate>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WTF::RetainPtr<WKAnimationDelegate>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::deallocateTable(*v4, a2);
  }

  v28 = *(this + 5);
  if (v28)
  {
    WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::HashCountedSet<std::tuple<WebKit::WebExtensionContentWorldType,WebKit::WebExtensionContentWorldType,WTF::ObjectIdentifierGeneric<WebKit::WebExtensionPortChannelIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::DefaultHash<std::tuple<WebKit::WebExtensionContentWorldType,WebKit::WebExtensionContentWorldType,WTF::ObjectIdentifierGeneric<WebKit::WebExtensionPortChannelIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<std::tuple<WebKit::WebExtensionContentWorldType,WebKit::WebExtensionContentWorldType,WTF::ObjectIdentifierGeneric<WebKit::WebExtensionPortChannelIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::HashCountedSet<std::tuple<WebKit::WebExtensionContentWorldType,WebKit::WebExtensionContentWorldType,WTF::ObjectIdentifierGeneric<WebKit::WebExtensionPortChannelIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::DefaultHash<std::tuple<WebKit::WebExtensionContentWorldType,WebKit::WebExtensionContentWorldType,WTF::ObjectIdentifierGeneric<WebKit::WebExtensionPortChannelIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<std::tuple<WebKit::WebExtensionContentWorldType,WebKit::WebExtensionContentWorldType,WTF::ObjectIdentifierGeneric<WebKit::WebExtensionPortChannelIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::HashCountedSet<std::tuple<WebKit::WebExtensionContentWorldType,WebKit::WebExtensionContentWorldType,WTF::ObjectIdentifierGeneric<WebKit::WebExtensionPortChannelIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::DefaultHash<std::tuple<WebKit::WebExtensionContentWorldType,WebKit::WebExtensionContentWorldType,WTF::ObjectIdentifierGeneric<WebKit::WebExtensionPortChannelIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<std::tuple<WebKit::WebExtensionContentWorldType,WebKit::WebExtensionContentWorldType,WTF::ObjectIdentifierGeneric<WebKit::WebExtensionPortChannelIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::HashCountedSet<std::tuple<WebKit::WebExtensionContentWorldType,WebKit::WebExtensionContentWorldType,WTF::ObjectIdentifierGeneric<WebKit::WebExtensionPortChannelIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::DefaultHash<std::tuple<WebKit::WebExtensionContentWorldType,WebKit::WebExtensionContentWorldType,WTF::ObjectIdentifierGeneric<WebKit::WebExtensionPortChannelIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<std::tuple<WebKit::WebExtensionContentWorldType,WebKit::WebExtensionContentWorldType,WTF::ObjectIdentifierGeneric<WebKit::WebExtensionPortChannelIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::deallocateTable( v28,  a2);
  }

  v29 = *(this + 4);
  if (v29)
  {
    WTF::fastFree((v29 - 16), a2);
  }

  v30 = *(this + 3);
  if (v30)
  {
    WTF::fastFree((v30 - 16), a2);
  }

  v31 = *(this + 2);
  if (v31)
  {
    WTF::HashTable<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::Ref<WebKit::RemoteLayerTreeNode,WTF::RawPtrTraits<WebKit::RemoteLayerTreeNode>,WTF::DefaultRefDerefTraits<WebKit::RemoteLayerTreeNode>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::Ref<WebKit::RemoteLayerTreeNode,WTF::RawPtrTraits<WebKit::RemoteLayerTreeNode>,WTF::DefaultRefDerefTraits<WebKit::RemoteLayerTreeNode>>>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashMap<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::Ref<WebKit::RemoteLayerTreeNode,WTF::RawPtrTraits<WebKit::RemoteLayerTreeNode>,WTF::DefaultRefDerefTraits<WebKit::RemoteLayerTreeNode>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WTF::Ref<WebKit::RemoteLayerTreeNode,WTF::RawPtrTraits<WebKit::RemoteLayerTreeNode>,WTF::DefaultRefDerefTraits<WebKit::RemoteLayerTreeNode>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::deallocateTable(v31, a2);
  }

  v32 = *(this + 1);
  *(this + 1) = 0;
  if (v32 && atomic_fetch_add(v32, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v32);
    WTF::fastFree(v32, a2);
  }

  v33 = *this;
  *this = 0;
  if (v33)
  {
    if (atomic_fetch_add(v33, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v33);
      WTF::fastFree(v33, a2);
    }
  }
}

void sub_19DD93254(_Unwind_Exception *exception_object, void *a2)
{
  v5 = *(v2 + 56);
  if (v5)
  {
    WTF::fastFree((v5 - 16), a2);
  }

  if (*v3)
  {
    WTF::HashTable<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::RetainPtr<WKAnimationDelegate>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::RetainPtr<WKAnimationDelegate>>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashMap<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::RetainPtr<WKAnimationDelegate>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WTF::RetainPtr<WKAnimationDelegate>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::deallocateTable(*v3, a2);
  }

  v6 = *(v2 + 40);
  if (v6)
  {
    WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::HashCountedSet<std::tuple<WebKit::WebExtensionContentWorldType,WebKit::WebExtensionContentWorldType,WTF::ObjectIdentifierGeneric<WebKit::WebExtensionPortChannelIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::DefaultHash<std::tuple<WebKit::WebExtensionContentWorldType,WebKit::WebExtensionContentWorldType,WTF::ObjectIdentifierGeneric<WebKit::WebExtensionPortChannelIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<std::tuple<WebKit::WebExtensionContentWorldType,WebKit::WebExtensionContentWorldType,WTF::ObjectIdentifierGeneric<WebKit::WebExtensionPortChannelIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::HashCountedSet<std::tuple<WebKit::WebExtensionContentWorldType,WebKit::WebExtensionContentWorldType,WTF::ObjectIdentifierGeneric<WebKit::WebExtensionPortChannelIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::DefaultHash<std::tuple<WebKit::WebExtensionContentWorldType,WebKit::WebExtensionContentWorldType,WTF::ObjectIdentifierGeneric<WebKit::WebExtensionPortChannelIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<std::tuple<WebKit::WebExtensionContentWorldType,WebKit::WebExtensionContentWorldType,WTF::ObjectIdentifierGeneric<WebKit::WebExtensionPortChannelIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::HashCountedSet<std::tuple<WebKit::WebExtensionContentWorldType,WebKit::WebExtensionContentWorldType,WTF::ObjectIdentifierGeneric<WebKit::WebExtensionPortChannelIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::DefaultHash<std::tuple<WebKit::WebExtensionContentWorldType,WebKit::WebExtensionContentWorldType,WTF::ObjectIdentifierGeneric<WebKit::WebExtensionPortChannelIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<std::tuple<WebKit::WebExtensionContentWorldType,WebKit::WebExtensionContentWorldType,WTF::ObjectIdentifierGeneric<WebKit::WebExtensionPortChannelIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::HashCountedSet<std::tuple<WebKit::WebExtensionContentWorldType,WebKit::WebExtensionContentWorldType,WTF::ObjectIdentifierGeneric<WebKit::WebExtensionPortChannelIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::DefaultHash<std::tuple<WebKit::WebExtensionContentWorldType,WebKit::WebExtensionContentWorldType,WTF::ObjectIdentifierGeneric<WebKit::WebExtensionPortChannelIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<std::tuple<WebKit::WebExtensionContentWorldType,WebKit::WebExtensionContentWorldType,WTF::ObjectIdentifierGeneric<WebKit::WebExtensionPortChannelIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::deallocateTable( v6,  a2);
  }

  v7 = *(v2 + 32);
  if (v7)
  {
    WTF::fastFree((v7 - 16), a2);
  }

  v8 = *(v2 + 24);
  if (v8)
  {
    WTF::fastFree((v8 - 16), a2);
  }

  v9 = *(v2 + 16);
  if (v9)
  {
    WTF::HashTable<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::Ref<WebKit::RemoteLayerTreeNode,WTF::RawPtrTraits<WebKit::RemoteLayerTreeNode>,WTF::DefaultRefDerefTraits<WebKit::RemoteLayerTreeNode>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::Ref<WebKit::RemoteLayerTreeNode,WTF::RawPtrTraits<WebKit::RemoteLayerTreeNode>,WTF::DefaultRefDerefTraits<WebKit::RemoteLayerTreeNode>>>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashMap<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::Ref<WebKit::RemoteLayerTreeNode,WTF::RawPtrTraits<WebKit::RemoteLayerTreeNode>,WTF::DefaultRefDerefTraits<WebKit::RemoteLayerTreeNode>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WTF::Ref<WebKit::RemoteLayerTreeNode,WTF::RawPtrTraits<WebKit::RemoteLayerTreeNode>,WTF::DefaultRefDerefTraits<WebKit::RemoteLayerTreeNode>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::deallocateTable(v9, a2);
  }

  v10 = *(v2 + 8);
  *(v2 + 8) = 0;
  if (v10 && atomic_fetch_add(v10, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v10);
    WTF::fastFree(v10, a2);
  }

  v11 = *v2;
  *v2 = 0;
  if (v11)
  {
    if (atomic_fetch_add(v11, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v11);
      WTF::fastFree(v11, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t WebKit::RemoteLayerTreeHost::layerContentsType(WebKit::RemoteLayerTreeHost *this)
{
  if (!this || (v1 = *(this + 1)) == 0)
  {
    result = 133;
    __break(0xC471u);
    return result;
  }

  ++*(v1 + 72);
  if (!*(v1 + 200))
  {
    v3 = *(v1 + 40);
    if (v3 && (v4 = *(v3 + 8)) != 0)
    {
      this = CFRetain(*(v4 - 8));
      v5 = 0;
      v2 = 0;
      v6 = v4 - 16;
      if (*(*(v4 + 16) + 2168) == 2)
      {
LABEL_14:
        CFRelease(*(v6 + 8));
        goto LABEL_15;
      }
    }

    else
    {
      v6 = 0;
      v5 = 1;
    }

    if (PAL::canLoad_QuartzCore_CAIOSurfaceCreate(this))
    {
      v2 = 2;
    }

    else
    {
      v2 = 1;
    }

    if (v5)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  v2 = 0;
LABEL_15:
  if (*(v1 + 72) == 1)
  {
    (*(*v1 + 24))(v1);
  }

  else
  {
    --*(v1 + 72);
  }

  return v2;
}

void sub_19DD9342C(_Unwind_Exception *exception_object)
{
  if (v1[18] == 1)
  {
    (*(*v1 + 24))(v1);
  }

  else
  {
    --v1[18];
  }

  _Unwind_Resume(exception_object);
}

uint64_t WebKit::RemoteLayerTreeHost::threadedAnimationResolutionEnabled(WebKit::RemoteLayerTreeHost *this)
{
  if (!*this || (v1 = *(*this + 8)) == 0)
  {
    result = 133;
    __break(0xC471u);
    return result;
  }

  v2 = *(v1 + 72);
  *(v1 + 72) = v2 + 1;
  v3 = *(v1 + 40);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_7;
  }

  v4 = *(v3 + 8);
  if (!v4)
  {
LABEL_7:
    v5 = 1;
    goto LABEL_8;
  }

  CFRetain(*(v4 - 8));
  v5 = 0;
  v4 -= 16;
  v2 = *(v1 + 72) - 1;
LABEL_8:
  if (v2)
  {
    *(v1 + 72) = v2;
    if (v5)
    {
      return 0;
    }
  }

  else
  {
    (*(*v1 + 24))(v1);
    if (v5)
    {
      return 0;
    }
  }

  v7 = *(v4 + 368);
  CFRetain(*(v7 + 8));
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::threadedAnimationResolutionEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::threadedAnimationResolutionEnabledKey(void)::key = WebKit::WebPreferencesKey::threadedAnimationResolutionEnabledKey(void)::$_0::operator() const(void)::impl;
  }

  BoolValueForKey = WebKit::WebPreferencesStore::getBoolValueForKey((v7 + 40), &WebKit::WebPreferencesKey::threadedAnimationResolutionEnabledKey(void)::key, v8);
  CFRelease(*(v7 + 8));
  CFRelease(*(v4 + 8));
  return BoolValueForKey;
}

void sub_19DD935C0(_Unwind_Exception *exception_object)
{
  if (v1[18] == 1)
  {
    (*(*v1 + 24))(v1);
  }

  else
  {
    --v1[18];
  }

  _Unwind_Resume(exception_object);
}

uint64_t WebKit::RemoteLayerTreeHost::layerForID(uint64_t a1, __int128 *a2)
{
  v7 = *a2;
  v8 = *(a2 + 2);
  if ((v8 & 1) == 0)
  {
    return 0;
  }

  v2 = WTF::HashMap<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::Ref<WebKit::RemoteLayerTreeNode,WTF::RawPtrTraits<WebKit::RemoteLayerTreeNode>,WTF::DefaultRefDerefTraits<WebKit::RemoteLayerTreeNode>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WTF::Ref<WebKit::RemoteLayerTreeNode,WTF::RawPtrTraits<WebKit::RemoteLayerTreeNode>,WTF::DefaultRefDerefTraits<WebKit::RemoteLayerTreeNode>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::Ref<WebKit::RemoteLayerTreeNode,WTF::RawPtrTraits<WebKit::RemoteLayerTreeNode>,WTF::DefaultRefDerefTraits<WebKit::RemoteLayerTreeNode>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WTF::Ref<WebKit::RemoteLayerTreeNode,WTF::RawPtrTraits<WebKit::RemoteLayerTreeNode>,WTF::DefaultRefDerefTraits<WebKit::RemoteLayerTreeNode>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>((a1 + 16), &v7);
  if (!v2)
  {
    return 0;
  }

  v4 = *(v2 + 8);
  v3 = v2 + 8;
  *v3 = v4 + 1;
  v5 = *(v3 + 40);
  WTF::RefCounted<WebKit::RemoteLayerTreeNode>::deref(v3);
  return v5;
}

void WebKit::RemoteLayerTreeHost::layerWillBeRemoved(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *&v67 = a3;
  *(&v67 + 1) = a4;
  v6 = WTF::HashTable<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::RetainPtr<WKAnimationDelegate>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::RetainPtr<WKAnimationDelegate>>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashMap<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::RetainPtr<WKAnimationDelegate>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WTF::RetainPtr<WKAnimationDelegate>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::RetainPtr<WKAnimationDelegate>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WTF::RetainPtr<WKAnimationDelegate>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>,(WTF::ShouldValidateKey)1,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(a1 + 6, &v67);
  v7 = v6;
  v8 = a1[6];
  if (v8)
  {
    v8 += 3 * *(v8 - 1);
  }

  if (v8 != v6)
  {
    [v6[2] invalidate];
    v9 = a1[6];
    if (v9)
    {
      v10 = (v9 + 24 * *(v9 - 4));
      if (v10 == v7)
      {
        goto LABEL_11;
      }
    }

    else
    {
      if (!v7)
      {
        goto LABEL_11;
      }

      v10 = 0;
    }

    if (v10 != v7)
    {
      WTF::HashTable<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::RetainPtr<WKAnimationDelegate>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::RetainPtr<WKAnimationDelegate>>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashMap<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::RetainPtr<WKAnimationDelegate>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WTF::RetainPtr<WKAnimationDelegate>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::remove(a1 + 6, v7);
    }
  }

LABEL_11:
  v12 = (a1 + 2);
  v11 = a1[2];
  if (!v11)
  {
    goto LABEL_73;
  }

  if (v67 == 0)
  {
    __break(0xC471u);
    JUMPOUT(0x19DD93C10);
  }

  if (*(&v67 + 1) == -1)
  {
    __break(0xC471u);
    JUMPOUT(0x19DD93C30);
  }

  v13 = *(v11 - 8);
  v14 = WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>::hash(&v67) & v13;
  v15 = (v11 + 24 * v14);
  v16 = *v15;
  v17 = v15[1];
  if (*v15 != v67 || v17 != *(&v67 + 1))
  {
    v19 = 1;
    while (v16 | v17)
    {
      v14 = (v14 + v19) & v13;
      v15 = (v11 + 24 * v14);
      v16 = *v15;
      v17 = v15[1];
      ++v19;
      if (*v15 == v67 && v17 == *(&v67 + 1))
      {
        goto LABEL_25;
      }
    }

    v21 = *v12;
    if (!*v12)
    {
      goto LABEL_73;
    }

    v15 = &v21[3 * *(v21 - 1)];
    goto LABEL_29;
  }

LABEL_25:
  v21 = *v12;
  if (*v12)
  {
LABEL_29:
    v22 = &v21[3 * *(v21 - 1)];
    goto LABEL_30;
  }

  v22 = 0;
LABEL_30:
  if (v22 != v15)
  {
    v23 = v15[2];
    if (v23)
    {
      v15[2] = 0;
      v21 = *v12;
    }

    if (!v21 || (v21 += 3 * *(v21 - 1), v21 != v15))
    {
      if (v21 != v15)
      {
        *v15 = -1;
        v15[1] = -1;
        v15[2] = 0;
        v24 = *(*v12 - 1);
        v25 = vadd_s32(*(*v12 - 2), 0xFFFFFFFF00000001);
        *(*v12 - 2) = v25;
        if (v24 >= 9 && 6 * v25.i32[1] < v24)
        {
          WTF::HashTable<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::Ref<WebKit::RemoteLayerTreeNode,WTF::RawPtrTraits<WebKit::RemoteLayerTreeNode>,WTF::DefaultRefDerefTraits<WebKit::RemoteLayerTreeNode>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::Ref<WebKit::RemoteLayerTreeNode,WTF::RawPtrTraits<WebKit::RemoteLayerTreeNode>,WTF::DefaultRefDerefTraits<WebKit::RemoteLayerTreeNode>>>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashMap<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::Ref<WebKit::RemoteLayerTreeNode,WTF::RawPtrTraits<WebKit::RemoteLayerTreeNode>,WTF::DefaultRefDerefTraits<WebKit::RemoteLayerTreeNode>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WTF::Ref<WebKit::RemoteLayerTreeNode,WTF::RawPtrTraits<WebKit::RemoteLayerTreeNode>,WTF::DefaultRefDerefTraits<WebKit::RemoteLayerTreeNode>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::rehash(a1 + 2, v24 >> 1);
        }
      }
    }

    if (v23)
    {
      WebKit::RemoteLayerTreeHost::animationsWereRemovedFromNode(a1, v23);
      v26 = *(v23 + 32);
      if (!v26)
      {
        goto LABEL_48;
      }

      v27 = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::LayerHostingContextIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::LayerHostingContextIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::LayerHostingContextIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::LayerHostingContextIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::LayerHostingContextIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::LayerHostingContextIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::LayerHostingContextIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::LayerHostingContextIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::LayerHostingContextIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::LayerHostingContextIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::LayerHostingContextIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::LayerHostingContextIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebCore::LayerHostingContextIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>( a1[3],  v26);
      v28 = a1[3];
      if (v28)
      {
        v29 = (v28 + 24 * *(v28 - 4));
        if (v29 == v27)
        {
          goto LABEL_48;
        }
      }

      else
      {
        if (!v27)
        {
          goto LABEL_48;
        }

        v29 = 0;
      }

      if (v29 != v27)
      {
        WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::LayerHostingContextIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::LayerHostingContextIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::LayerHostingContextIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::LayerHostingContextIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::LayerHostingContextIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::LayerHostingContextIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::LayerHostingContextIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::LayerHostingContextIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::remove(a1 + 3, v27);
      }

LABEL_48:
      v30 = *(v23 + 40);
      if (!v30)
      {
        goto LABEL_72;
      }

      v31 = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::LayerHostingContextIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::LayerHostingContextIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::LayerHostingContextIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::LayerHostingContextIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::LayerHostingContextIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::LayerHostingContextIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::LayerHostingContextIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::LayerHostingContextIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::LayerHostingContextIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::LayerHostingContextIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::LayerHostingContextIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::LayerHostingContextIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebCore::LayerHostingContextIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>( a1[4],  v30);
      v32 = a1[4];
      if (v32)
      {
        if ((v32 + 24 * *(v32 - 4)) == v31)
        {
          goto LABEL_72;
        }
      }

      else if (!v31)
      {
        goto LABEL_72;
      }

      v33 = v31[1];
      v34 = v31[2];
      WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::LayerHostingContextIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::LayerHostingContextIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::LayerHostingContextIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::LayerHostingContextIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::LayerHostingContextIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::LayerHostingContextIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::LayerHostingContextIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::LayerHostingContextIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::remove(a1 + 4, v31);
      v65[0] = v33;
      v65[1] = v34;
      v66 = 1;
      v35 = a1 + 5;
      v36 = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::HashSet<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::HashSet<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::HashSet<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::HashSet<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::HashSet<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::HashSet<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>( a1[5],  a2);
      v37 = v36;
      v38 = a1[5];
      if (v38)
      {
        v38 += 16 * *(v38 - 4);
      }

      if (v38 == v36)
      {
        goto LABEL_72;
      }

      v39 = WTF::HashTable<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>,(WTF::ShouldValidateKey)1,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>((v36 + 8), v65);
      v40 = v37[1];
      if (v40)
      {
        v41 = (v40 + 16 * *(v40 - 4));
        if (v41 == v39)
        {
          goto LABEL_64;
        }
      }

      else
      {
        if (!v39)
        {
          goto LABEL_65;
        }

        v41 = 0;
      }

      if (v41 != v39)
      {
        WTF::HashTable<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::remove(v37 + 1, v39);
        v40 = v37[1];
      }

      if (v40)
      {
LABEL_64:
        if (*(v40 - 12))
        {
          goto LABEL_72;
        }
      }

LABEL_65:
      if (*v35)
      {
        v42 = *v35 + 16 * *(*v35 - 4);
        if (v42 == v37)
        {
          goto LABEL_72;
        }

LABEL_70:
        if (v42 != v37)
        {
          WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::HashSet<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::HashSet<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::HashSet<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::HashSet<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::remove( a1 + 5,  v37);
        }

        goto LABEL_72;
      }

      if (v37)
      {
        v42 = 0;
        goto LABEL_70;
      }

LABEL_72:
      WTF::RefCounted<WebKit::RemoteLayerTreeNode>::deref((v23 + 8));
    }
  }

LABEL_73:
  v43 = a1 + 7;
  v44 = a1[7];
  if (!v44)
  {
    return;
  }

  if (v67 == 0)
  {
    __break(0xC471u);
    JUMPOUT(0x19DD93C50);
  }

  if (*(&v67 + 1) == -1)
  {
    goto LABEL_124;
  }

  v45 = *(v44 - 8);
  v46 = WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>::hash(&v67) & v45;
  v47 = (v44 + 32 * v46);
  v48 = *v47;
  v49 = v47[1];
  if (*v47 == v67 && v49 == *(&v67 + 1))
  {
LABEL_87:
    v53 = *v43;
    if (!*v43)
    {
LABEL_92:
      if (v53 == v47)
      {
        return;
      }

      if (*a1)
      {
        v54 = *(*a1 + 8);
        if (v54)
        {
          v55 = *(v54 + 72);
          *(v54 + 72) = v55 + 1;
          v56 = *(v54 + 40);
          if (v56)
          {
            v57 = *(v56 + 8);
            if (v57)
            {
              CFRetain(*(v57 - 8));
              v58 = 0;
              v57 -= 16;
              v55 = *(v54 + 72) - 1;
              goto LABEL_100;
            }
          }

          else
          {
            v57 = 0;
          }

          v58 = 1;
LABEL_100:
          if (v55)
          {
            *(v54 + 72) = v55;
            if ((v58 & 1) == 0)
            {
              goto LABEL_102;
            }
          }

          else
          {
            (*(*v54 + 24))(v54);
            if ((v58 & 1) == 0)
            {
LABEL_102:
              v59 = *(v57 + 528);
              if (v59)
              {
                ++*(v59 + 16);
                WebKit::VideoPresentationManagerProxy::removeClientForContext(v59, v47[2], v47[3]);
                if (*(v59 + 16) == 1)
                {
                  (*(*v59 + 24))(v59);
                }

                else
                {
                  --*(v59 + 16);
                }
              }
            }
          }

          v60 = *v43;
          if (!*v43 || (v60 += 4 * *(v60 - 1), v60 != v47))
          {
            if (v60 != v47)
            {
              *v47 = -1;
              v47[1] = -1;
              v61 = *v43;
              v62 = vadd_s32(*(*v43 - 16), 0xFFFFFFFF00000001);
              *(v61 - 16) = v62;
              v63 = *(v61 - 4);
              if (6 * v62.i32[1] < v63 && v63 >= 9)
              {
                WTF::HashTable<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashMap<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::rehash(v43, v63 >> 1, 0);
              }
            }
          }

          if ((v58 & 1) == 0)
          {
            CFRelease(*(v57 + 8));
          }

          return;
        }
      }

LABEL_124:
      __break(0xC471u);
      JUMPOUT(0x19DD93BF0);
    }

LABEL_91:
    v53 += 32 * *(v53 - 4);
    goto LABEL_92;
  }

  v51 = 1;
  while (v48 | v49)
  {
    v46 = (v46 + v51) & v45;
    v47 = (v44 + 32 * v46);
    v48 = *v47;
    v49 = v47[1];
    ++v51;
    if (*v47 == v67 && v49 == *(&v67 + 1))
    {
      goto LABEL_87;
    }
  }

  v53 = *v43;
  if (*v43)
  {
    v47 = (v53 + 32 * *(v53 - 4));
    goto LABEL_91;
  }
}

void sub_19DD93C74(_Unwind_Exception *exception_object)
{
  v3 = v1;
  if ((v3 & 1) == 0)
  {
    CFRelease(*(v2 + 8));
  }

  _Unwind_Resume(exception_object);
}

void WebKit::RemoteLayerTreeHost::animationsWereRemovedFromNode(uint64_t a1, uint64_t a2)
{
  if (!*a1)
  {
    goto LABEL_15;
  }

  v2 = *(*a1 + 8);
  if (!v2)
  {
    goto LABEL_15;
  }

  v3 = *(v2 + 72);
  *(v2 + 72) = v3 + 1;
  v4 = *(v2 + 40);
  if (v4)
  {
    v5 = *(v4 + 8);
    if (v5)
    {
      CFRetain(*(v5 - 8));
      v7 = *(v5 + 328);
      if (!v7)
      {
        __break(0xC471u);
        JUMPOUT(0x19DD93E84);
      }

      ++v7[4];
      (*(*v7 + 168))(v7, a2);
      v8 = v7[4];
      if (v8)
      {
        v7[4] = v8 - 1;
        CFRelease(*(v5 - 8));
        v3 = *(v2 + 72) - 1;
        goto LABEL_8;
      }

LABEL_15:
      __break(0xC471u);
      JUMPOUT(0x19DD93E64);
    }
  }

LABEL_8:
  if (v3)
  {
    *(v2 + 72) = v3;
  }

  else
  {
    v9 = *(*v2 + 24);

    v9(v2);
  }
}

void sub_19DD93EA8(_Unwind_Exception *a1)
{
  v4 = *(v2 + 16);
  if (v4)
  {
    *(v2 + 16) = v4 - 1;
    CFRelease(*(v3 - 8));
    if (v1[18] == 1)
    {
      (*(*v1 + 24))(v1);
    }

    else
    {
      --v1[18];
    }

    _Unwind_Resume(a1);
  }

  __break(0xC471u);
  JUMPOUT(0x19DD93EE4);
}

void WebKit::RemoteLayerTreeHost::animationDidStart(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v39 = *MEMORY[0x1E69E9840];
  if (*a1)
  {
    if (*(*a1 + 8))
    {
      v35 = *a2;
      v36 = *(a2 + 16);
      v8 = WebKit::RemoteLayerTreeHost::layerForID(a1, &v35);
      v9 = v8;
      if (v8)
      {
        v10 = v8;
        v34 = 0;
        v30 = 0u;
        v31 = 0u;
        v32 = 0u;
        v33 = 0u;
        v11 = [v9 animationKeys];
        v12 = [v11 countByEnumeratingWithState:&v30 objects:v38 count:16];
        if (v12)
        {
          v13 = *v31;
LABEL_6:
          v14 = 0;
          while (1)
          {
            if (*v31 != v13)
            {
              objc_enumerationMutation(v11);
            }

            v15 = *(*(&v30 + 1) + 8 * v14);
            if ([v9 animationForKey:v15] == a3)
            {
              break;
            }

            if (v12 == ++v14)
            {
              v12 = [v11 countByEnumeratingWithState:&v30 objects:v38 count:16];
              if (v12)
              {
                goto LABEL_6;
              }

              goto LABEL_32;
            }
          }

          MEMORY[0x19EB02040](&v35, v15);
          v34 = v35;
          if (!v35)
          {
            goto LABEL_32;
          }

          if (*(v35 + 4))
          {
            if (!*a1 || (v17 = *(*a1 + 8)) == 0)
            {
              __break(0xC471u);
              return;
            }

            ++*(v17 + 72);
            if ((*(a2 + 16) & 1) == 0)
            {
              __break(1u);
            }

            v18 = *(a2 + 8);
            *&v35 = *a2;
            *(&v35 + 1) = v18;
            v19 = WebKit::RemoteLayerTreeDrawingAreaProxy::connectionForIdentifier(v18);
            if (v19)
            {
              v20 = v19;
              while (1)
              {
                v21 = *v19;
                if ((*v19 & 1) == 0)
                {
                  break;
                }

                v22 = *v19;
                atomic_compare_exchange_strong_explicit(v19, &v22, v21 + 2, memory_order_relaxed, memory_order_relaxed);
                if (v22 == v21)
                {
                  goto LABEL_24;
                }
              }

              WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v19);
LABEL_24:
              v23 = *(v17 + 24);
              v24 = IPC::Encoder::operator new(0x238, v16);
              *v24 = 24;
              *(v24 + 2) = 0;
              *(v24 + 3) = 0;
              *(v24 + 1) = v23;
              *(v24 + 68) = 0;
              *(v24 + 70) = 0;
              *(v24 + 69) = 0;
              IPC::Encoder::encodeHeader(v24);
              v37 = v24;
              IPC::ArgumentCoder<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardFrameItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,void>::encode(v24, &v35);
              IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v24, &v34);
              IPC::ArgumentCoder<double,void>::encode<IPC::Encoder>(v24, a4);
              IPC::Connection::sendMessageImpl(v20, &v37, 0, 0);
              v26 = v37;
              v37 = 0;
              if (v26)
              {
                IPC::Encoder::~Encoder(v26, v25);
                bmalloc::api::tzoneFree(v28, v29);
              }

              WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v20);
            }

            if (*(v17 + 72) == 1)
            {
              (*(*v17 + 24))(v17);
            }

            else
            {
              --*(v17 + 72);
            }
          }

          v27 = v34;
          v34 = 0;
          if (v27)
          {
            if (atomic_fetch_add_explicit(v27, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v27, v16);
            }
          }
        }

LABEL_32:
      }
    }
  }
}

void sub_19DD9421C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, WTF::StringImpl *a18)
{
  WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v20);
  if (v19[18] == 1)
  {
    (*(*v19 + 24))(v19);
  }

  else
  {
    --v19[18];
  }

  if (a18)
  {
    if (atomic_fetch_add_explicit(a18, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a18, v22);
    }
  }

  _Unwind_Resume(a1);
}

void WebKit::RemoteLayerTreeHost::animationDidEnd(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v37 = *MEMORY[0x1E69E9840];
  if (*a1)
  {
    if (*(*a1 + 8))
    {
      v33 = *a2;
      v34 = *(a2 + 16);
      v6 = WebKit::RemoteLayerTreeHost::layerForID(a1, &v33);
      v7 = v6;
      if (v6)
      {
        v8 = v6;
        v28 = 0u;
        v29 = 0u;
        v30 = 0u;
        v31 = 0u;
        v9 = [v7 animationKeys];
        v10 = [v9 countByEnumeratingWithState:&v28 objects:v36 count:16];
        if (v10)
        {
          v11 = *v29;
LABEL_6:
          v12 = 0;
          while (1)
          {
            if (*v29 != v11)
            {
              objc_enumerationMutation(v9);
            }

            v13 = *(*(&v28 + 1) + 8 * v12);
            if ([v7 animationForKey:v13] == a3)
            {
              break;
            }

            if (v10 == ++v12)
            {
              v10 = [v9 countByEnumeratingWithState:&v28 objects:v36 count:16];
              if (v10)
              {
                goto LABEL_6;
              }

              goto LABEL_32;
            }
          }

          MEMORY[0x19EB02040](&v33, v13);
          v32 = v33;
          if (!v33)
          {
            goto LABEL_32;
          }

          if (*(v33 + 4))
          {
            if (!*a1 || (v15 = *(*a1 + 8)) == 0)
            {
              __break(0xC471u);
              return;
            }

            ++*(v15 + 72);
            if ((*(a2 + 16) & 1) == 0)
            {
              __break(1u);
            }

            v16 = *(a2 + 8);
            *&v33 = *a2;
            *(&v33 + 1) = v16;
            v17 = WebKit::RemoteLayerTreeDrawingAreaProxy::connectionForIdentifier(v16);
            if (v17)
            {
              v18 = v17;
              while (1)
              {
                v19 = *v17;
                if ((*v17 & 1) == 0)
                {
                  break;
                }

                v20 = *v17;
                atomic_compare_exchange_strong_explicit(v17, &v20, v19 + 2, memory_order_relaxed, memory_order_relaxed);
                if (v20 == v19)
                {
                  goto LABEL_24;
                }
              }

              WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v17);
LABEL_24:
              v21 = *(v15 + 24);
              v22 = IPC::Encoder::operator new(0x238, v14);
              *v22 = 23;
              *(v22 + 2) = 0;
              *(v22 + 3) = 0;
              *(v22 + 1) = v21;
              *(v22 + 68) = 0;
              *(v22 + 70) = 0;
              *(v22 + 69) = 0;
              IPC::Encoder::encodeHeader(v22);
              v35 = v22;
              IPC::ArgumentCoder<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardFrameItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,void>::encode(v22, &v33);
              IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v22, &v32);
              IPC::Connection::sendMessageImpl(v18, &v35, 0, 0);
              v24 = v35;
              v35 = 0;
              if (v24)
              {
                IPC::Encoder::~Encoder(v24, v23);
                bmalloc::api::tzoneFree(v26, v27);
              }

              WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v18);
            }

            if (*(v15 + 72) == 1)
            {
              (*(*v15 + 24))(v15);
            }

            else
            {
              --*(v15 + 72);
            }
          }

          v25 = v32;
          v32 = 0;
          if (v25)
          {
            if (atomic_fetch_add_explicit(v25, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v25, v14);
            }
          }
        }

LABEL_32:
      }
    }
  }
}

void sub_19DD94598(_Unwind_Exception *a1, void *a2)
{
  IPC::Encoder::~Encoder(v6, a2);
  bmalloc::api::tzoneFree(v8, v9);
  WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v4);
  if (v3[18] == 1)
  {
    (*(*v3 + 24))(v3);
  }

  else
  {
    --v3[18];
  }

  if (atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, v10);
  }

  _Unwind_Resume(a1);
}

uint64_t WebKit::recursivelyMapIOSurfaceBackingStore(WebKit *this, CALayer *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  if ([(WebKit *)this contents])
  {
    v3 = CFGetTypeID([(WebKit *)this contents]);
    if (v3 == CAMachPortGetTypeID())
    {
      [(WebKit *)this contents];
      Port = CAMachPortGetPort();
      WTF::MachSendRight::create(Port);
      WebCore::IOSurface::createFromSendRight();
      if (v19)
      {
        v5 = *(v19 + 8);
      }

      else
      {
        v5 = 0;
      }

      [(WebKit *)this setContents:v5];
      v6 = v19;
      v19 = 0;
      if (v6)
      {
        WebCore::IOSurface::~IOSurface(v6);
        bmalloc::api::tzoneFree(v13, v14);
      }

      WTF::MachSendRight::~MachSendRight(v20);
    }
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = [(WebKit *)this sublayers];
  result = [v7 countByEnumeratingWithState:&v15 objects:v21 count:16];
  v10 = result;
  if (result)
  {
    v11 = *v16;
    do
    {
      v12 = 0;
      do
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v7);
        }

        WebKit::recursivelyMapIOSurfaceBackingStore(*(*(&v15 + 1) + 8 * v12++), v9);
      }

      while (v10 != v12);
      result = [v7 countByEnumeratingWithState:&v15 objects:v21 count:16];
      v10 = result;
    }

    while (result);
  }

  return result;
}

void sub_19DD947A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, WebCore::IOSurface *a18, int a19, char a20)
{
  if (a18)
  {
    WebCore::IOSurface::~IOSurface(a18);
    bmalloc::api::tzoneFree(v21, v22);
  }

  WTF::MachSendRight::~MachSendRight(&a20);
  _Unwind_Resume(a1);
}

void WebKit::RemoteLayerTreeHost::animationsWereAddedToNode(uint64_t a1, uint64_t a2)
{
  if (!*a1)
  {
    goto LABEL_15;
  }

  v2 = *(*a1 + 8);
  if (!v2)
  {
    goto LABEL_15;
  }

  v3 = *(v2 + 72);
  *(v2 + 72) = v3 + 1;
  v4 = *(v2 + 40);
  if (v4)
  {
    v5 = *(v4 + 8);
    if (v5)
    {
      CFRetain(*(v5 - 8));
      v7 = *(v5 + 328);
      if (!v7)
      {
        __break(0xC471u);
        JUMPOUT(0x19DD94924);
      }

      ++v7[4];
      (*(*v7 + 160))(v7, a2);
      v8 = v7[4];
      if (v8)
      {
        v7[4] = v8 - 1;
        CFRelease(*(v5 - 8));
        v3 = *(v2 + 72) - 1;
        goto LABEL_8;
      }

LABEL_15:
      __break(0xC471u);
      JUMPOUT(0x19DD94904);
    }
  }

LABEL_8:
  if (v3)
  {
    *(v2 + 72) = v3;
  }

  else
  {
    v9 = *(*v2 + 24);

    v9(v2);
  }
}

void sub_19DD94948(_Unwind_Exception *a1)
{
  v4 = *(v2 + 16);
  if (v4)
  {
    *(v2 + 16) = v4 - 1;
    CFRelease(*(v3 - 8));
    if (v1[18] == 1)
    {
      (*(*v1 + 24))(v1);
    }

    else
    {
      --v1[18];
    }

    _Unwind_Resume(a1);
  }

  __break(0xC471u);
  JUMPOUT(0x19DD94984);
}

uint64_t WebKit::RemoteLayerTreeHost::acceleratedTimelineTimeOrigin(uint64_t a1, uint64_t a2)
{
  if (*a1 && (v2 = *(*a1 + 8)) != 0)
  {
    ++v2[18];
    result = WebKit::RemoteLayerTreeDrawingAreaProxy::processStateForIdentifier(v2, a2);
    if (v2[18] == 1)
    {
      return (*(*v2 + 24))(v2);
    }

    else
    {
      --v2[18];
    }
  }

  else
  {
    result = 133;
    __break(0xC471u);
  }

  return result;
}

void sub_19DD94A7C(_Unwind_Exception *exception_object)
{
  if (v1[18] == 1)
  {
    (*(*v1 + 24))(v1);
  }

  else
  {
    --v1[18];
  }

  _Unwind_Resume(exception_object);
}

uint64_t WebKit::RemoteLayerTreeHost::animationCurrentTime(uint64_t a1, uint64_t a2)
{
  if (*a1 && (v2 = *(*a1 + 8)) != 0)
  {
    ++v2[18];
    result = WebKit::RemoteLayerTreeDrawingAreaProxy::processStateForIdentifier(v2, a2);
    if (v2[18] == 1)
    {
      return (*(*v2 + 24))(v2);
    }

    else
    {
      --v2[18];
    }
  }

  else
  {
    result = 133;
    __break(0xC471u);
  }

  return result;
}

void sub_19DD94B70(_Unwind_Exception *exception_object)
{
  if (v1[18] == 1)
  {
    (*(*v1 + 24))(v1);
  }

  else
  {
    --v1[18];
  }

  _Unwind_Resume(exception_object);
}

void WebKit::NetworkProcessProxy::XPCEventHandler::~XPCEventHandler(WebKit::NetworkProcessProxy::XPCEventHandler *this, void *a2)
{
  *this = &unk_1F11088E0;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    if (atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v3);
      WTF::fastFree(v3, a2);
    }
  }
}

{
  *this = &unk_1F11088E0;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    WTF::fastFree(v3, a2);
  }

  WTF::fastFree(this, a2);
}

void WebKit::RemoteAcceleratedEffectStack::~RemoteAcceleratedEffectStack(WebKit::RemoteAcceleratedEffectStack *this, void *a2)
{
  WebCore::AcceleratedEffectStack::~AcceleratedEffectStack(this, a2);

  bmalloc::api::tzoneFree(v2, v3);
}

_DWORD *WebKit::RemoteLayerTreeDrawingAreaProxy::deref(_DWORD *this)
{
  if (this[18] == 1)
  {
    return (*(*this + 24))();
  }

  --this[18];
  return this;
}

unsigned int *WTF::BlockPtr<void ()(NSNotification *)>::fromCallable<WebKit::NetworkProcessProxy::addBackgroundStateObservers(void)::$_0>(WebKit::NetworkProcessProxy::addBackgroundStateObservers(void)::$_0)::{lambda(void const*)#1}::__invoke(uint64_t a1, void *a2)
{
  result = *(a1 + 32);
  *(a1 + 32) = 0;
  if (result)
  {
    if (atomic_fetch_add(result, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, result);
      return WTF::fastFree(result, a2);
    }
  }

  return result;
}

uint64_t WTF::BlockPtr<void ()(NSNotification *)>::fromCallable<WebKit::NetworkProcessProxy::addBackgroundStateObservers(void)::$_0>(WebKit::NetworkProcessProxy::addBackgroundStateObservers(void)::$_0)::{lambda(void *,NSNotification *)#1}::__invoke(uint64_t result)
{
  v1 = *(result + 32);
  if (v1)
  {
    result = *(v1 + 8);
    if (result)
    {
      return WebKit::AuxiliaryProcessProxy::send<Messages::NetworkProcess::ApplicationDidEnterBackground>(result, &v2, 0, 0);
    }
  }

  return result;
}

unsigned int *WTF::BlockPtr<void ()(NSNotification *)>::fromCallable<WebKit::NetworkProcessProxy::addBackgroundStateObservers(void)::$_1>(WebKit::NetworkProcessProxy::addBackgroundStateObservers(void)::$_1)::{lambda(void const*)#1}::__invoke(uint64_t a1, void *a2)
{
  result = *(a1 + 32);
  *(a1 + 32) = 0;
  if (result)
  {
    if (atomic_fetch_add(result, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, result);
      return WTF::fastFree(result, a2);
    }
  }

  return result;
}

uint64_t WTF::BlockPtr<void ()(NSNotification *)>::fromCallable<WebKit::NetworkProcessProxy::addBackgroundStateObservers(void)::$_1>(WebKit::NetworkProcessProxy::addBackgroundStateObservers(void)::$_1)::{lambda(void *,NSNotification *)#1}::__invoke(uint64_t result)
{
  v1 = *(result + 32);
  if (v1)
  {
    result = *(v1 + 8);
    if (result)
    {
      return WebKit::AuxiliaryProcessProxy::send<Messages::NetworkProcess::ApplicationWillEnterForeground>(result, &v2, 0, 0);
    }
  }

  return result;
}

WebCore::AcceleratedEffectValues *WebCore::AcceleratedEffectValues::AcceleratedEffectValues(WebCore::AcceleratedEffectValues *this, const WebCore::AcceleratedEffectValues *a2)
{
  v4 = *(a2 + 1);
  *this = *a2;
  *(this + 1) = v4;
  v5 = *(a2 + 2);
  v6 = *(a2 + 3);
  v7 = *(a2 + 4);
  *(this + 77) = *(a2 + 77);
  *(this + 3) = v6;
  *(this + 4) = v7;
  *(this + 2) = v5;
  *(this + 24) = 0;
  v8 = (this + 96);
  *(this + 101) = 0;
  *(this + 51) = 0;
  v9 = *(a2 + 100);
  *(this + 100) = v9;
  *(this + 101) = *(a2 + 101);
  *(this + 103) = *(a2 + 103);
  if (v9 <= 0xD)
  {
    v10 = 1 << v9;
    if ((v10 & 0x7FC) != 0)
    {
      *(this + 102) = *(a2 + 102);
      *v8 = *(a2 + 24);
    }

    else if ((v10 & 0x3003) != 0)
    {
      *v8 = 0;
    }

    else
    {
      *v8 = *(a2 + 24);
      WebCore::Length::ref((this + 96));
    }
  }

  *(this + 26) = 0;
  v11 = (this + 104);
  *(this + 109) = 0;
  *(this + 55) = 0;
  v12 = *(a2 + 108);
  *(this + 108) = v12;
  *(this + 109) = *(a2 + 109);
  *(this + 111) = *(a2 + 111);
  if (v12 <= 0xD)
  {
    v13 = 1 << v12;
    if ((v13 & 0x7FC) != 0)
    {
      *(this + 110) = *(a2 + 110);
      *v11 = *(a2 + 26);
    }

    else if ((v13 & 0x3003) != 0)
    {
      *v11 = 0;
    }

    else
    {
      *v11 = *(a2 + 26);
      WebCore::Length::ref((this + 104));
    }
  }

  *(this + 112) = *(a2 + 112);
  WTF::Vector<WTF::Ref<WebCore::TransformOperation,WTF::RawPtrTraits<WebCore::TransformOperation>,WTF::DefaultRefDerefTraits<WebCore::TransformOperation>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(this + 120, a2 + 120);
  v14 = *(a2 + 17);
  if (v14)
  {
    ++*(v14 + 8);
  }

  *(this + 17) = v14;
  v15 = *(a2 + 18);
  if (v15)
  {
    ++*(v15 + 8);
  }

  *(this + 18) = v15;
  v16 = *(a2 + 19);
  if (v16)
  {
    ++*(v16 + 8);
  }

  *(this + 19) = v16;
  v17 = *(a2 + 20);
  if (v17)
  {
    ++*(v17 + 8);
  }

  *(this + 42) = 0;
  v18 = (this + 168);
  *(this + 20) = v17;
  *(this + 173) = 0;
  *(this + 87) = 0;
  v19 = *(a2 + 172);
  *(this + 172) = v19;
  *(this + 173) = *(a2 + 173);
  *(this + 175) = *(a2 + 175);
  if (v19 <= 0xD)
  {
    v20 = 1 << v19;
    if ((v20 & 0x7FC) != 0)
    {
      *(this + 174) = *(a2 + 174);
      *v18 = *(a2 + 42);
    }

    else if ((v20 & 0x3003) != 0)
    {
      *v18 = 0;
    }

    else
    {
      *v18 = *(a2 + 42);
      WebCore::Length::ref((this + 168));
    }
  }

  *(this + 44) = 0;
  v21 = (this + 176);
  *(this + 181) = 0;
  *(this + 91) = 0;
  v22 = *(a2 + 180);
  *(this + 180) = v22;
  *(this + 181) = *(a2 + 181);
  *(this + 183) = *(a2 + 183);
  if (v22 <= 0xD)
  {
    v23 = 1 << v22;
    if ((v23 & 0x7FC) != 0)
    {
      *(this + 182) = *(a2 + 182);
      *v21 = *(a2 + 44);
    }

    else if ((v23 & 0x3003) != 0)
    {
      *v21 = 0;
    }

    else
    {
      *v21 = *(a2 + 44);
      WebCore::Length::ref((this + 176));
    }
  }

  *(this + 46) = 0;
  v24 = (this + 184);
  *(this + 189) = 0;
  *(this + 95) = 0;
  v25 = *(a2 + 188);
  *(this + 188) = v25;
  *(this + 189) = *(a2 + 189);
  *(this + 191) = *(a2 + 191);
  if (v25 <= 0xD)
  {
    v26 = 1 << v25;
    if ((v26 & 0x7FC) != 0)
    {
      *(this + 190) = *(a2 + 190);
      *v24 = *(a2 + 46);
    }

    else if ((v26 & 0x3003) != 0)
    {
      *v24 = 0;
    }

    else
    {
      *v24 = *(a2 + 46);
      WebCore::Length::ref((this + 184));
    }
  }

  *(this + 48) = 0;
  v27 = (this + 192);
  *(this + 197) = 0;
  *(this + 99) = 0;
  v28 = *(a2 + 196);
  *(this + 196) = v28;
  *(this + 197) = *(a2 + 197);
  *(this + 199) = *(a2 + 199);
  if (v28 <= 0xD)
  {
    v29 = 1 << v28;
    if ((v29 & 0x7FC) != 0)
    {
      *(this + 198) = *(a2 + 198);
      *v27 = *(a2 + 48);
    }

    else if ((v29 & 0x3003) != 0)
    {
      *v27 = 0;
    }

    else
    {
      *v27 = *(a2 + 48);
      WebCore::Length::ref((this + 192));
    }
  }

  *(this + 50) = 0;
  v30 = (this + 200);
  *(this + 205) = 0;
  *(this + 103) = 0;
  v31 = *(a2 + 204);
  *(this + 204) = v31;
  *(this + 205) = *(a2 + 205);
  *(this + 207) = *(a2 + 207);
  if (v31 <= 0xD)
  {
    v32 = 1 << v31;
    if ((v32 & 0x7FC) != 0)
    {
      *(this + 206) = *(a2 + 206);
      *v30 = *(a2 + 50);
    }

    else if ((v32 & 0x3003) != 0)
    {
      *v30 = 0;
    }

    else
    {
      *v30 = *(a2 + 50);
      WebCore::Length::ref((this + 200));
    }
  }

  *(this + 26) = *(a2 + 26);
  WTF::Vector<WTF::Ref<WebCore::FilterOperation,WTF::RawPtrTraits<WebCore::FilterOperation>,WTF::DefaultRefDerefTraits<WebCore::FilterOperation>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(this + 216, a2 + 216);
  WTF::Vector<WTF::Ref<WebCore::FilterOperation,WTF::RawPtrTraits<WebCore::FilterOperation>,WTF::DefaultRefDerefTraits<WebCore::FilterOperation>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(this + 232, a2 + 232);
  return this;
}

void sub_19DD95314(_Unwind_Exception *a1, void *a2)
{
  if (*(v2 + 196) == 11)
  {
    WebCore::Length::deref(v8);
  }

  if (*(v2 + 188) == 11)
  {
    WebCore::Length::deref(v7);
  }

  if (*(v2 + 180) == 11)
  {
    WebCore::Length::deref(v6);
  }

  if (*(v2 + 172) == 11)
  {
    WebCore::Length::deref(v5);
  }

  v10 = *(v2 + 160);
  *(v2 + 160) = 0;
  if (v10)
  {
    if (v10[2] == 1)
    {
      (*(*v10 + 8))(v10);
    }

    else
    {
      --v10[2];
    }
  }

  v11 = *(v2 + 152);
  *(v2 + 152) = 0;
  if (v11)
  {
    if (v11[2] == 1)
    {
      (*(*v11 + 8))(v11);
    }

    else
    {
      --v11[2];
    }
  }

  v12 = *(v2 + 144);
  *(v2 + 144) = 0;
  if (v12)
  {
    if (v12[2] == 1)
    {
      (*(*v12 + 8))(v12);
    }

    else
    {
      --v12[2];
    }
  }

  v13 = *(v2 + 136);
  *(v2 + 136) = 0;
  if (v13)
  {
    if (v13[2] == 1)
    {
      (*(*v13 + 8))(v13);
    }

    else
    {
      --v13[2];
    }
  }

  WTF::Vector<WTF::Ref<WebCore::TransformOperation,WTF::RawPtrTraits<WebCore::TransformOperation>,WTF::DefaultRefDerefTraits<WebCore::TransformOperation>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v2 + 120, a2);
  if (*(v2 + 108) == 11)
  {
    WebCore::Length::deref(v4);
  }

  if (*(v2 + 100) == 11)
  {
    WebCore::Length::deref(v3);
  }

  _Unwind_Resume(a1);
}

uint64_t WTF::Vector<WTF::Ref<WebCore::TransformOperation,WTF::RawPtrTraits<WebCore::TransformOperation>,WTF::DefaultRefDerefTraits<WebCore::TransformOperation>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = *(a2 + 12);
  *result = 0;
  *(result + 8) = 0;
  *(result + 12) = v3;
  if (!v3)
  {
    return v2;
  }

  if (!(v3 >> 29))
  {
    v5 = WTF::fastMalloc((8 * v3));
    *(v2 + 8) = v3;
    *v2 = v5;
    v6 = *(a2 + 12);
    if (v6)
    {
      v7 = *a2;
      v8 = 8 * v6;
      do
      {
        v9 = *v7++;
        ++*(v9 + 8);
        *v5++ = v9;
        v8 -= 8;
      }

      while (v8);
    }

    return v2;
  }

  __break(0xC471u);
  return result;
}

WebKit::EditorState::PostLayoutData *std::__optional_copy_base<WebKit::EditorState::PostLayoutData,false>::__optional_copy_base[abi:sn200100](WebKit::EditorState::PostLayoutData *this, const WebKit::EditorState::PostLayoutData *a2)
{
  *this = 0;
  *(this + 224) = 0;
  if (*(a2 + 224) == 1)
  {
    WebKit::EditorState::PostLayoutData::PostLayoutData(this, a2);
    *(this + 224) = 1;
  }

  return this;
}

void sub_19DD9560C(_Unwind_Exception *exception_object, void *a2)
{
  if (*(v2 + 224) == 1)
  {
    WebKit::EditorState::PostLayoutData::~PostLayoutData(v2, a2);
  }

  _Unwind_Resume(exception_object);
}

WebKit::EditorState::PostLayoutData *WebKit::EditorState::PostLayoutData::PostLayoutData(WebKit::EditorState::PostLayoutData *this, const WebKit::EditorState::PostLayoutData *a2)
{
  v4 = *a2;
  *(this + 16) = *(a2 + 16);
  *this = v4;
  v5 = *(a2 + 3);
  *(this + 3) = v5;
  if ((v5 & 0x8000000000000) != 0)
  {
    atomic_fetch_add((v5 & 0xFFFFFFFFFFFFLL), 1u);
  }

  *(this + 8) = *(a2 + 8);
  v6 = *(a2 + 5);
  if (v6)
  {
    atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed);
  }

  *(this + 5) = v6;
  v7 = *(a2 + 6);
  if (v7)
  {
    atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed);
  }

  *(this + 6) = v7;
  v8 = *(a2 + 7);
  *(this + 16) = *(a2 + 16);
  *(this + 7) = v8;
  WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::DictationContextType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(this + 72, a2 + 72);
  v9 = *(a2 + 22);
  *(this + 92) = *(a2 + 92);
  *(this + 22) = v9;
  v10 = *(a2 + 12);
  *(this + 12) = v10;
  if ((v10 & 0x8000000000000) != 0)
  {
    atomic_fetch_add((v10 & 0xFFFFFFFFFFFFLL), 1u);
  }

  v11 = *(a2 + 104);
  v12 = *(a2 + 120);
  *(this + 136) = *(a2 + 136);
  *(this + 120) = v12;
  *(this + 104) = v11;
  v13 = *(a2 + 152);
  v14 = *(a2 + 168);
  v15 = *(a2 + 184);
  *(this + 195) = *(a2 + 195);
  *(this + 184) = v15;
  *(this + 168) = v14;
  *(this + 152) = v13;
  return this;
}

void sub_19DD95730(_Unwind_Exception *exception_object, WTF::StringImpl *a2)
{
  v4 = v2[6];
  v2[6] = 0;
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

  v6 = v2[3];
  if ((v6 & 0x8000000000000) != 0)
  {
    v7 = (v6 & 0xFFFFFFFFFFFFLL);
    if (atomic_fetch_add((v6 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v7);
      WTF::fastFree(v7, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::DictationContextType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = *(a2 + 12);
  *result = 0;
  *(result + 8) = 0;
  *(result + 12) = v3;
  if (!v3)
  {
    return v2;
  }

  if (!(v3 >> 29))
  {
    v5 = WTF::fastMalloc((8 * v3));
    *(v2 + 8) = v3;
    *v2 = v5;
    v6 = *(a2 + 12);
    if (v6)
    {
      v7 = *a2;
      v8 = 8 * v6;
      do
      {
        v9 = *v7++;
        *v5++ = v9;
        v8 -= 8;
      }

      while (v8);
    }

    return v2;
  }

  __break(0xC471u);
  return result;
}

uint64_t std::__optional_copy_base<WebKit::EditorState::VisualData,false>::__optional_copy_base[abi:sn200100](uint64_t a1, __int128 *a2)
{
  *a1 = 0;
  *(a1 + 256) = 0;
  if (*(a2 + 256) == 1)
  {
    v4 = *a2;
    v5 = a2[1];
    v6 = a2[3];
    *(a1 + 32) = a2[2];
    *(a1 + 48) = v6;
    *a1 = v4;
    *(a1 + 16) = v5;
    WTF::Vector<WebCore::SelectionGeometry,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(a1 + 64, a2 + 8);
    WTF::Vector<WebCore::SelectionGeometry,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(a1 + 80, a2 + 10);
    v7 = a2[6];
    v8 = a2[7];
    v9 = a2[8];
    *(a1 + 144) = *(a2 + 144);
    *(a1 + 112) = v8;
    *(a1 + 128) = v9;
    *(a1 + 96) = v7;
    WTF::Vector<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(a1 + 152, a2 + 152);
    v10 = *(a2 + 168);
    *(a1 + 184) = *(a2 + 184);
    *(a1 + 168) = v10;
    v11 = *(a2 + 200);
    v12 = *(a2 + 216);
    v13 = *(a2 + 232);
    *(a1 + 248) = *(a2 + 248);
    *(a1 + 232) = v13;
    *(a1 + 216) = v12;
    *(a1 + 200) = v11;
    *(a1 + 256) = 1;
  }

  return a1;
}

void sub_19DD958E8(_Unwind_Exception *exception_object, void *a2)
{
  v4 = *(v2 + 80);
  if (v4)
  {
    *(v2 + 80) = 0;
    *(v2 + 88) = 0;
    WTF::fastFree(v4, a2);
  }

  v5 = *(v2 + 64);
  if (v5)
  {
    *(v2 + 64) = 0;
    *(v2 + 72) = 0;
    WTF::fastFree(v5, a2);
  }

  if (*(v2 + 256) == 1)
  {
    WebKit::EditorState::VisualData::~VisualData(v2, a2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t WTF::Vector<WebCore::SelectionGeometry,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(uint64_t result, uint64_t *a2)
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

  if (v3 < 0x30C30C4)
  {
    v5 = 84 * v3;
    v6 = WTF::fastMalloc((84 * v3));
    *(v2 + 8) = v5 / 0x54;
    *v2 = v6;
    v7 = *(a2 + 3);
    if (v7)
    {
      v8 = *a2;
      v9 = 84 * v7;
      do
      {
        v10 = *(v8 + 16);
        *v6 = *v8;
        *(v6 + 16) = v10;
        v11 = *(v8 + 32);
        v12 = *(v8 + 48);
        v13 = *(v8 + 64);
        *(v6 + 80) = *(v8 + 80);
        *(v6 + 48) = v12;
        *(v6 + 64) = v13;
        *(v6 + 32) = v11;
        v6 += 84;
        v8 += 84;
        v9 -= 84;
      }

      while (v9);
    }

    return v2;
  }

  __break(0xC471u);
  return result;
}

__n128 std::__optional_storage_base<WebCore::RequestedScrollData,false>::__assign_from[abi:sn200100]<std::__optional_move_assign_base<WebCore::RequestedScrollData,false>>(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 44) == *(a2 + 44))
  {
    if (*(a1 + 44))
    {
      result = *a2;
      *(a1 + 15) = *(a2 + 15);
      *a1 = result;
      if (*(a1 + 40) == *(a2 + 40))
      {
        if (*(a1 + 40))
        {
          *(a1 + 20) = *(a2 + 20);
          v3 = *(a2 + 24);
          *(a1 + 32) = *(a2 + 32);
          *(a1 + 24) = v3;
          *(a1 + 36) = *(a2 + 36);
        }
      }

      else if (*(a1 + 40))
      {
        *(a1 + 40) = 0;
      }

      else
      {
        result = *(a2 + 20);
        *(a1 + 36) = *(a2 + 36);
        *(a1 + 20) = result;
        *(a1 + 40) = 1;
      }
    }
  }

  else if (*(a1 + 44))
  {
    *(a1 + 44) = 0;
  }

  else
  {
    result = *a2;
    v4 = *(a2 + 16);
    *(a1 + 28) = *(a2 + 28);
    *a1 = result;
    *(a1 + 16) = v4;
    *(a1 + 44) = 1;
  }

  return result;
}

uint64_t WTF::HashTable<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::RetainPtr<WKAnimationDelegate>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::RetainPtr<WKAnimationDelegate>>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashMap<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::RetainPtr<WKAnimationDelegate>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WTF::RetainPtr<WKAnimationDelegate>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::deallocateTable(uint64_t a1, void *a2)
{
  v3 = *(a1 - 4);
  if (v3)
  {
    v4 = (a1 + 16);
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

      v4 += 3;
      --v3;
    }

    while (v3);
  }

  return WTF::fastFree((a1 - 16), a2);
}

uint64_t WTF::HashTable<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::Ref<WebKit::RemoteLayerTreeNode,WTF::RawPtrTraits<WebKit::RemoteLayerTreeNode>,WTF::DefaultRefDerefTraits<WebKit::RemoteLayerTreeNode>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::Ref<WebKit::RemoteLayerTreeNode,WTF::RawPtrTraits<WebKit::RemoteLayerTreeNode>,WTF::DefaultRefDerefTraits<WebKit::RemoteLayerTreeNode>>>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashMap<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::Ref<WebKit::RemoteLayerTreeNode,WTF::RawPtrTraits<WebKit::RemoteLayerTreeNode>,WTF::DefaultRefDerefTraits<WebKit::RemoteLayerTreeNode>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WTF::Ref<WebKit::RemoteLayerTreeNode,WTF::RawPtrTraits<WebKit::RemoteLayerTreeNode>,WTF::DefaultRefDerefTraits<WebKit::RemoteLayerTreeNode>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::deallocateTable(uint64_t a1, void *a2)
{
  v3 = *(a1 - 4);
  if (v3)
  {
    v4 = (a1 + 16);
    do
    {
      if (*(v4 - 1) != -1)
      {
        v5 = *v4;
        *v4 = 0;
        if (v5)
        {
          WTF::RefCounted<WebKit::RemoteLayerTreeNode>::deref((v5 + 8));
        }
      }

      v4 += 3;
      --v3;
    }

    while (v3);
  }

  return WTF::fastFree((a1 - 16), a2);
}

void WebCore::AcceleratedEffectStack::~AcceleratedEffectStack(WebCore::AcceleratedEffectStack *this, void *a2)
{
  *this = MEMORY[0x1E69E2E78] + 16;
  WTF::Vector<WTF::Ref<WebCore::AcceleratedEffect,WTF::RawPtrTraits<WebCore::AcceleratedEffect>,WTF::DefaultRefDerefTraits<WebCore::AcceleratedEffect>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 280, a2);
  WTF::Vector<WTF::Ref<WebCore::AcceleratedEffect,WTF::RawPtrTraits<WebCore::AcceleratedEffect>,WTF::DefaultRefDerefTraits<WebCore::AcceleratedEffect>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 264, v3);
  WebCore::AcceleratedEffectValues::~AcceleratedEffectValues((this + 16), v4);
  if (*(this + 2) != 1)
  {
    __break(0xC471u);
  }
}

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::SetBackupExclusionPeriodForTesting,WTF::CompletionHandler<void ()(void)>>(WTF::CompletionHandler<void ()(void)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F1108B88;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::SetBackupExclusionPeriodForTesting,WTF::CompletionHandler<void ()(void)>>(WTF::CompletionHandler<void ()(void)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1108B88;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

_DWORD *WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::RemoteLayerTreeDrawingAreaProxy::ProcessState>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::RemoteLayerTreeDrawingAreaProxy::ProcessState>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::RemoteLayerTreeDrawingAreaProxy::ProcessState,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WebKit::RemoteLayerTreeDrawingAreaProxy::ProcessState>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(uint64_t *a1)
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

  return WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::RemoteLayerTreeDrawingAreaProxy::ProcessState>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::RemoteLayerTreeDrawingAreaProxy::ProcessState>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::RemoteLayerTreeDrawingAreaProxy::ProcessState,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WebKit::RemoteLayerTreeDrawingAreaProxy::ProcessState>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(a1, v3);
}

_DWORD *WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::RemoteLayerTreeDrawingAreaProxy::ProcessState>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::RemoteLayerTreeDrawingAreaProxy::ProcessState>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::RemoteLayerTreeDrawingAreaProxy::ProcessState,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WebKit::RemoteLayerTreeDrawingAreaProxy::ProcessState>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(uint64_t *a1, unsigned int a2)
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
    v10 = result + 20;
    do
    {
      *(v10 - 2) = 0uLL;
      *(v10 - 1) = 0uLL;
      *(v10 - 4) = 0uLL;
      *(v10 - 3) = 0uLL;
      *(v10 - 14) = 3;
      *v10 = 0;
      v10[1] = 0;
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
    for (i = 0; i != v5; ++i)
    {
      v12 = v4 + 80 * i;
      if ((*v12 + 1) >= 2)
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

        v15 = (*v12 + ~(*v12 << 32)) ^ ((*v12 + ~(*v12 << 32)) >> 22);
        v16 = 9 * ((v15 + ~(v15 << 13)) ^ ((v15 + ~(v15 << 13)) >> 8));
        v17 = (v16 ^ (v16 >> 15)) + ~((v16 ^ (v16 >> 15)) << 27);
        v18 = v14 & ((v17 >> 31) ^ v17);
        v19 = 1;
        do
        {
          v20 = v13 + 80 * v18;
          v8 = *v20;
          v18 = (v18 + v19++) & v14;
        }

        while (*v20);
        *v20 = *v12;
        v21 = *(v12 + 16);
        v22 = *(v12 + 32);
        v23 = *(v12 + 64);
        *(v20 + 48) = *(v12 + 48);
        *(v20 + 64) = v23;
        *(v20 + 16) = v21;
        *(v20 + 32) = v22;
      }
    }
  }

  else if (!v4)
  {
    return result;
  }

  return WTF::fastFree((v4 - 16), v8);
}

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::DrawingArea::SetDeviceScaleFactor,WebKit::RemoteLayerTreeDrawingAreaProxy::deviceScaleFactorDidChange(WTF::CompletionHandler<void ()(void)> &&)::$_0::operator() const(WebKit::RemoteLayerTreeDrawingAreaProxy::ProcessState &,WebKit::WebProcessProxy &)::{lambda(void)#1}>(WebKit::RemoteLayerTreeDrawingAreaProxy::deviceScaleFactorDidChange(WTF::CompletionHandler<void ()(void)> &&)::$_0::operator() const(WebKit::RemoteLayerTreeDrawingAreaProxy::ProcessState &,WebKit::WebProcessProxy &)::{lambda(void)#1} &&,WTF::ThreadLikeAssertion)::{lambda(WebKit::RemoteLayerTreeDrawingAreaProxy::deviceScaleFactorDidChange(WTF::CompletionHandler<void ()(void)> &&)::$_0::operator() const(WebKit::RemoteLayerTreeDrawingAreaProxy::ProcessState &,WebKit::WebProcessProxy &)::{lambda(void)#1},IPC::Decoder)#1},void,WebKit::RemoteLayerTreeDrawingAreaProxy::deviceScaleFactorDidChange(WTF::CompletionHandler<void ()(void)> &&)::$_0::operator() const(WebKit::RemoteLayerTreeDrawingAreaProxy::ProcessState &,WebKit::WebProcessProxy &)::{lambda(void)#1},IPC::Decoder>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F1108BD8;
  a1[1] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCounted<WTF::CallbackAggregatorOnThread<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::DrawingArea::SetDeviceScaleFactor,WebKit::RemoteLayerTreeDrawingAreaProxy::deviceScaleFactorDidChange(WTF::CompletionHandler<void ()(void)> &&)::$_0::operator() const(WebKit::RemoteLayerTreeDrawingAreaProxy::ProcessState &,WebKit::WebProcessProxy &)::{lambda(void)#1}>(WebKit::RemoteLayerTreeDrawingAreaProxy::deviceScaleFactorDidChange(WTF::CompletionHandler<void ()(void)> &&)::$_0::operator() const(WebKit::RemoteLayerTreeDrawingAreaProxy::ProcessState &,WebKit::WebProcessProxy &)::{lambda(void)#1} &&,WTF::ThreadLikeAssertion)::{lambda(WebKit::RemoteLayerTreeDrawingAreaProxy::deviceScaleFactorDidChange(WTF::CompletionHandler<void ()(void)> &&)::$_0::operator() const(WebKit::RemoteLayerTreeDrawingAreaProxy::ProcessState &,WebKit::WebProcessProxy &)::{lambda(void)#1},IPC::Decoder)#1},void,WebKit::RemoteLayerTreeDrawingAreaProxy::deviceScaleFactorDidChange(WTF::CompletionHandler<void ()(void)> &&)::$_0::operator() const(WebKit::RemoteLayerTreeDrawingAreaProxy::ProcessState &,WebKit::WebProcessProxy &)::{lambda(void)#1},IPC::Decoder>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1108BD8;
  *(this + 1) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCounted<WTF::CallbackAggregatorOnThread<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::DrawingArea::UpdateGeometry,WebKit::RemoteLayerTreeDrawingAreaProxy::sendUpdateGeometry(void)::$_0>(WebKit::RemoteLayerTreeDrawingAreaProxy::sendUpdateGeometry(void)::$_0 &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(void *a1, void *a2)
{
  v3 = a1[1];
  *a1 = &unk_1F1108C00;
  a1[1] = 0;
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    WTF::fastFree(v3, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::DrawingArea::UpdateGeometry,WebKit::RemoteLayerTreeDrawingAreaProxy::sendUpdateGeometry(void)::$_0>(WebKit::RemoteLayerTreeDrawingAreaProxy::sendUpdateGeometry(void)::$_0 &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1108C00;
  *(this + 1) = 0;
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    WTF::fastFree(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

void WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::DrawingArea::UpdateGeometry,WebKit::RemoteLayerTreeDrawingAreaProxy::sendUpdateGeometry(void)::$_0>(WebKit::RemoteLayerTreeDrawingAreaProxy::sendUpdateGeometry(void)::$_0 &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::call(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1)
  {
    v2 = *(v1 + 8);
    if (v2)
    {
      *(v2 + 88) = 0;
      v3 = *(v2 + 40);
      if (v3)
      {
        v4 = *(v3 + 8);
        if (v4)
        {
          CFRetain(*(v4 - 8));
          v5 = *(v2 + 176) == *(v2 + 56) && *(v2 + 180) == *(v2 + 60);
          if (!v5 || ((v6 = *(v4 + 16), *(v2 + 184) == v6[246]) ? (v7 = *(v2 + 188) == v6[247]) : (v7 = 0), !v7 || ((v8 = v6[489], v9 = v6[490], *(v2 + 192) == v8) ? (v10 = *(v2 + 196) == v9) : (v10 = 0), !v10)))
          {
            WebKit::RemoteLayerTreeDrawingAreaProxy::sendUpdateGeometry(v2);
          }

          v11 = *(v4 - 8);

          CFRelease(v11);
        }
      }
    }
  }
}

void *WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::RemoteLayerTreeDrawingAreaProxy::ProcessState>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::RemoteLayerTreeDrawingAreaProxy::ProcessState>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::RemoteLayerTreeDrawingAreaProxy::ProcessState,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WebKit::RemoteLayerTreeDrawingAreaProxy::ProcessState>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::begin(void *result)
{
  if (!result)
  {
    return 0;
  }

  v1 = *(result - 1);
  v2 = &result[10 * v1];
  if (!*(result - 3))
  {
    return &result[10 * v1];
  }

  if (v1)
  {
    v3 = 80 * v1;
    while ((*result + 1) <= 1)
    {
      result += 10;
      v3 -= 80;
      if (!v3)
      {
        return v2;
      }
    }
  }

  return result;
}

uint64_t WTF::Vector<WTF::MachSendRight,16ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, void *a2)
{
  v3 = *(a1 + 12);
  if (v3)
  {
    v4 = *a1;
    v5 = 4 * v3;
    do
    {
      WTF::MachSendRight::~MachSendRight(v4);
      v4 = (v6 + 4);
      v5 -= 4;
    }

    while (v5);
  }

  v7 = *a1;
  if (a1 + 16 != *a1 && v7 != 0)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    WTF::fastFree(v7, a2);
  }

  return a1;
}

uint64_t WTF::HashTable<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::UniqueRef<WebKit::LayerProperties>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::UniqueRef<WebKit::LayerProperties>>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashMap<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::UniqueRef<WebKit::LayerProperties>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WTF::UniqueRef<WebKit::LayerProperties>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::begin(uint64_t result)
{
  if (!result)
  {
    return 0;
  }

  v1 = *(result - 4);
  v2 = result + 24 * v1;
  if (!*(result - 12))
  {
    return result + 24 * v1;
  }

  if (v1)
  {
    v3 = 24 * v1;
    while (*result == 0 || *(result + 8) == -1)
    {
      result += 24;
      v3 -= 24;
      if (!v3)
      {
        return v2;
      }
    }
  }

  return result;
}

unint64_t WTF::Vector<WTF::MachSendRight,16ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(unsigned int *a1, unint64_t a2, unint64_t a3)
{
  v3 = a3;
  v5 = *a1;
  if (*a1 > a3 || v5 + 4 * a1[3] <= a3)
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

    WTF::Vector<WTF::MachSendRight,16ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v12);
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

    WTF::Vector<WTF::MachSendRight,16ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v9);
    return *a1 + v6;
  }

  return v3;
}

WTF::MachSendRight *WTF::Vector<WTF::MachSendRight,16ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(WTF::MachSendRight *result, unint64_t a2)
{
  if (*(result + 2) < a2)
  {
    v2 = a2;
    v3 = result;
    v4 = *result;
    v5 = *(result + 3);
    if (a2 < 0x11)
    {
      v6 = result + 16;
      *result = result + 16;
      *(result + 2) = 16;
    }

    else
    {
      if (a2 >> 30)
      {
        __break(0xC471u);
        return result;
      }

      v6 = WTF::fastMalloc((4 * a2));
      *(v3 + 2) = v2;
      *v3 = v6;
    }

    result = WTF::VectorMover<false,WTF::MachSendRight>::move(v4, (v4 + 4 * v5), v6);
    if ((v3 + 16) != v4 && v4 != 0)
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

atomic_ullong *WTF::Detail::CallableWrapper<WebKit::RemoteLayerTreeDrawingAreaProxy::didRefreshDisplay(IPC::Connection *)::$_0,void,WebKit::RemoteLayerTreeDrawingAreaProxy::ProcessState &,WebKit::WebProcessProxy &>::call(atomic_ullong *result, _DWORD *a2, WebKit::AuxiliaryProcessProxy *this)
{
  if (*(this + 11))
  {
    v4 = result[1];
    WebKit::AuxiliaryProcessProxy::protectedConnection(this, &v5);
    WebKit::RemoteLayerTreeDrawingAreaProxy::didRefreshDisplay(v4, a2, v5);
    result = v5;
    v5 = 0;
    if (result)
    {
      return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(result);
    }
  }

  return result;
}

void sub_19DD96468(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, atomic_ullong *a10)
{
  if (a10)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(a10);
  }

  _Unwind_Resume(exception_object);
}

_DWORD *WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::LayerHostingContextIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::LayerHostingContextIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::LayerHostingContextIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::LayerHostingContextIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::LayerHostingContextIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::LayerHostingContextIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::LayerHostingContextIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::LayerHostingContextIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(uint64_t *a1)
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

  return WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::LayerHostingContextIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::LayerHostingContextIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::LayerHostingContextIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::LayerHostingContextIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::LayerHostingContextIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::LayerHostingContextIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::LayerHostingContextIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::LayerHostingContextIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(a1, v3);
}

_DWORD *WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::LayerHostingContextIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::LayerHostingContextIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::LayerHostingContextIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::LayerHostingContextIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::LayerHostingContextIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::LayerHostingContextIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::LayerHostingContextIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::LayerHostingContextIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(uint64_t *a1, unsigned int a2)
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
    for (i = 0; i != v5; ++i)
    {
      v10 = (v4 + 24 * i);
      if ((*v10 + 1) >= 2)
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

        v13 = (*v10 + ~(*v10 << 32)) ^ ((*v10 + ~(*v10 << 32)) >> 22);
        v14 = 9 * ((v13 + ~(v13 << 13)) ^ ((v13 + ~(v13 << 13)) >> 8));
        v15 = (v14 ^ (v14 >> 15)) + ~((v14 ^ (v14 >> 15)) << 27);
        v16 = v12 & ((v15 >> 31) ^ v15);
        v17 = 1;
        do
        {
          v18 = (v11 + 24 * v16);
          v16 = (v16 + v17++) & v12;
        }

        while (*v18);
        v19 = *v10;
        v18[2] = v10[2];
        *v18 = v19;
      }
    }
  }

  else if (!v4)
  {
    return result;
  }

  return WTF::fastFree((v4 - 16), v8);
}

uint64_t WTF::HashTable<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  if (*a2 == 0 || a2[1] == -1)
  {
    __break(0xC471u);
    JUMPOUT(0x19DD967DCLL);
  }

  v6 = *a1;
  if (*a1 || (WTF::HashTable<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::expand(a1, 0), (v6 = *a1) != 0))
  {
    v7 = *(v6 - 8);
  }

  else
  {
    v7 = 0;
  }

  result = WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>::hash(a2);
  v9 = result & v7;
  v10 = (v6 + 16 * (result & v7));
  v12 = *v10;
  v11 = v10[1];
  v13 = *a2;
  if (*v10 != 0)
  {
    v14 = 0;
    v15 = 1;
    do
    {
      if (__PAIR128__(v11, v12) == v13)
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
        v22 = v20 + 16 * v21;
        goto LABEL_28;
      }

      if (v11 == -1)
      {
        v14 = v10;
      }

      v9 = (v9 + v15) & v7;
      v10 = (v6 + 16 * v9);
      v12 = *v10;
      v11 = v10[1];
      ++v15;
    }

    while (*v10 != 0);
    if (v14)
    {
      *v14 = 0;
      v14[1] = 0;
      --*(*a1 - 16);
      v13 = *a2;
      v10 = v14;
    }
  }

  *v10 = v13;
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
LABEL_19:
      result = WTF::HashTable<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::expand(a1, v10);
      v10 = result;
      v16 = *a1;
      if (*a1)
      {
        v19 = *(v16 - 4);
      }

      else
      {
        v19 = 0;
      }
    }
  }

  else if (3 * v19 <= 4 * v18)
  {
    goto LABEL_19;
  }

  v22 = v16 + 16 * v19;
  v23 = 1;
LABEL_28:
  *a3 = v10;
  *(a3 + 8) = v22;
  *(a3 + 16) = v23;
  return result;
}

unint64_t WTF::Vector<WebKit::RemoteLayerTreeHost::updateLayerTree(IPC::Connection const&,WebKit::RemoteLayerTreeTransaction const&,float)::LayerAndClone,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v3 = a3;
  v5 = *a1;
  if (*a1 > a3 || v5 + 32 * *(a1 + 12) <= a3)
  {
    WTF::Vector<WebKit::RemoteLayerTreeHost::updateLayerTree(IPC::Connection const&,WebKit::RemoteLayerTreeTransaction const&,float)::LayerAndClone,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(a1, a2);
  }

  else
  {
    v6 = a3 - v5;
    WTF::Vector<WebKit::RemoteLayerTreeHost::updateLayerTree(IPC::Connection const&,WebKit::RemoteLayerTreeTransaction const&,float)::LayerAndClone,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(a1, a2);
    return *a1 + v6;
  }

  return v3;
}

uint64_t WTF::Vector<WebKit::RemoteLayerTreeHost::updateLayerTree(IPC::Connection const&,WebKit::RemoteLayerTreeTransaction const&,float)::LayerAndClone,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(uint64_t result, unint64_t a2)
{
  v2 = *(result + 8);
  if (v2 + (v2 >> 1) <= v2 + 1)
  {
    v3 = v2 + 1;
  }

  else
  {
    v3 = v2 + (v2 >> 1);
  }

  if (v3 <= a2)
  {
    v3 = a2;
  }

  if (v3 >> 27)
  {
    __break(0xC471u);
  }

  else
  {
    v4 = result;
    v5 = *result;
    v6 = *(result + 12);
    if (v3 <= 0x10)
    {
      v7 = 16;
    }

    else
    {
      v7 = v3;
    }

    result = WTF::fastMalloc((32 * v7));
    *(v4 + 8) = v7;
    *v4 = result;
    if (v6)
    {
      v9 = 32 * v6;
      v10 = v5;
      do
      {
        v11 = *v10;
        v12 = *(v10 + 1);
        v10 = (v10 + 32);
        *result = v11;
        *(result + 16) = v12;
        result += 32;
        v9 -= 32;
      }

      while (v9);
    }

    if (v5)
    {
      if (*v4 == v5)
      {
        *v4 = 0;
        *(v4 + 8) = 0;
      }

      return WTF::fastFree(v5, v8);
    }
  }

  return result;
}

uint64_t WTF::HashMap<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::Ref<WebKit::RemoteLayerTreeNode,WTF::RawPtrTraits<WebKit::RemoteLayerTreeNode>,WTF::DefaultRefDerefTraits<WebKit::RemoteLayerTreeNode>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WTF::Ref<WebKit::RemoteLayerTreeNode,WTF::RawPtrTraits<WebKit::RemoteLayerTreeNode>,WTF::DefaultRefDerefTraits<WebKit::RemoteLayerTreeNode>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::Ref<WebKit::RemoteLayerTreeNode,WTF::RawPtrTraits<WebKit::RemoteLayerTreeNode>,WTF::DefaultRefDerefTraits<WebKit::RemoteLayerTreeNode>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WTF::Ref<WebKit::RemoteLayerTreeNode,WTF::RawPtrTraits<WebKit::RemoteLayerTreeNode>,WTF::DefaultRefDerefTraits<WebKit::RemoteLayerTreeNode>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(uint64_t *a1, void *a2)
{
  if (*a2 == 0 || a2[1] == -1)
  {
    __break(0xC471u);
    JUMPOUT(0x19DD96A00);
  }

  v2 = *a1;
  if (*a1)
  {
    v4 = *(v2 - 8);
    v5 = WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>::hash(a2);
    v6 = a2[1];
    v7 = v5 & v4;
    v8 = (v2 + 24 * (v5 & v4));
    v9 = *v8;
    v10 = v8[1];
    if (*v8 == *a2 && v10 == v6)
    {
      return *(v2 + 24 * v7 + 16);
    }

    v12 = 1;
    while (v9 | v10)
    {
      v7 = (v7 + v12) & v4;
      v13 = (v2 + 24 * v7);
      v9 = *v13;
      v10 = v13[1];
      ++v12;
      if (v9 == *a2 && v10 == v6)
      {
        return *(v2 + 24 * v7 + 16);
      }
    }
  }

  return 0;
}

uint64_t *WTF::HashTable<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::RetainPtr<WKAnimationDelegate>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::RetainPtr<WKAnimationDelegate>>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashMap<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::RetainPtr<WKAnimationDelegate>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WTF::RetainPtr<WKAnimationDelegate>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::RetainPtr<WKAnimationDelegate>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WTF::RetainPtr<WKAnimationDelegate>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>,(WTF::ShouldValidateKey)1,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(uint64_t *a1, void *a2)
{
  v2 = *a1;
  if (!*a1)
  {
    return 0;
  }

  if (*a2 == 0 || a2[1] == -1)
  {
    __break(0xC471u);
    JUMPOUT(0x19DD96B00);
  }

  v5 = *(v2 - 8);
  v6 = WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>::hash(a2);
  v7 = a2[1];
  v8 = v6 & v5;
  result = (v2 + 24 * (v6 & v5));
  v10 = *result;
  v11 = result[1];
  if (*result != *a2 || v11 != v7)
  {
    v13 = 1;
    while (v10 | v11)
    {
      v8 = (v8 + v13) & v5;
      result = (v2 + 24 * v8);
      v10 = *result;
      v11 = result[1];
      ++v13;
      if (*result == *a2 && v11 == v7)
      {
        return result;
      }
    }

    if (*a1)
    {
      return (*a1 + 24 * *(*a1 - 4));
    }

    return 0;
  }

  return result;
}

void WTF::HashTable<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::RetainPtr<WKAnimationDelegate>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::RetainPtr<WKAnimationDelegate>>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashMap<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::RetainPtr<WKAnimationDelegate>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WTF::RetainPtr<WKAnimationDelegate>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::remove(uint64_t *a1, void *a2)
{
  *a2 = -1;
  a2[1] = -1;
  v3 = a2[2];
  a2[2] = 0;
  if (v3)
  {
  }

  v4 = *a1;
  v5 = vadd_s32(*(*a1 - 16), 0xFFFFFFFF00000001);
  *(v4 - 16) = v5;
  v6 = *(v4 - 4);
  if (6 * v5.i32[1] < v6 && v6 >= 9)
  {

    WTF::HashTable<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::RetainPtr<WKAnimationDelegate>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::RetainPtr<WKAnimationDelegate>>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashMap<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::RetainPtr<WKAnimationDelegate>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WTF::RetainPtr<WKAnimationDelegate>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::rehash(a1, v6 >> 1, 0);
  }
}

_OWORD *WTF::HashTable<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::RetainPtr<WKAnimationDelegate>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::RetainPtr<WKAnimationDelegate>>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashMap<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::RetainPtr<WKAnimationDelegate>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WTF::RetainPtr<WKAnimationDelegate>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::rehash(uint64_t *a1, unsigned int a2, void *a3)
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

  v9 = WTF::fastZeroedMalloc((24 * a2 + 16));
  *a1 = (v9 + 4);
  v9[2] = a2 - 1;
  v9[3] = a2;
  *v9 = 0;
  v9[1] = v8;
  v11 = 0;
  if (v7)
  {
    v12 = v7;
    v13 = v6;
    do
    {
      if (v13[1] != -1)
      {
        if (*v13 == 0)
        {
          v18 = v13[2];
          v13[2] = 0;
          if (v18)
          {
          }
        }

        else
        {
          v14 = WTF::HashTable<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::RetainPtr<WKAnimationDelegate>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::RetainPtr<WKAnimationDelegate>>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashMap<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::RetainPtr<WKAnimationDelegate>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WTF::RetainPtr<WKAnimationDelegate>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::lookupForReinsert(a1, v13);
          v15 = *(v14 + 2);
          *(v14 + 2) = 0;
          if (v15)
          {
          }

          *v14 = *v13;
          v16 = v13[2];
          v13[2] = 0;
          *(v14 + 2) = v16;
          v17 = v13[2];
          v13[2] = 0;
          if (v17)
          {
          }

          if (v13 == a3)
          {
            v11 = v14;
          }
        }
      }

      v13 += 3;
      --v12;
    }

    while (v12);
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

_OWORD *WTF::HashTable<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::RetainPtr<WKAnimationDelegate>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::RetainPtr<WKAnimationDelegate>>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashMap<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::RetainPtr<WKAnimationDelegate>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WTF::RetainPtr<WKAnimationDelegate>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::lookupForReinsert(uint64_t *a1, void *a2)
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

  v4 = WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>::hash(a2);
  v5 = 0;
  do
  {
    v6 = (v2 + 24 * (v4 & v3));
    v4 = ++v5 + (v4 & v3);
  }

  while (*v6 != 0);
  return v6;
}

_DWORD *WTF::HashTable<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::Ref<WebKit::RemoteLayerTreeNode,WTF::RawPtrTraits<WebKit::RemoteLayerTreeNode>,WTF::DefaultRefDerefTraits<WebKit::RemoteLayerTreeNode>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::Ref<WebKit::RemoteLayerTreeNode,WTF::RawPtrTraits<WebKit::RemoteLayerTreeNode>,WTF::DefaultRefDerefTraits<WebKit::RemoteLayerTreeNode>>>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashMap<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::Ref<WebKit::RemoteLayerTreeNode,WTF::RawPtrTraits<WebKit::RemoteLayerTreeNode>,WTF::DefaultRefDerefTraits<WebKit::RemoteLayerTreeNode>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WTF::Ref<WebKit::RemoteLayerTreeNode,WTF::RawPtrTraits<WebKit::RemoteLayerTreeNode>,WTF::DefaultRefDerefTraits<WebKit::RemoteLayerTreeNode>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::rehash(uint64_t *a1, unsigned int a2)
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
      if (*(v11 + 8) != -1)
      {
        if (*v11 != 0)
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

          v15 = WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>::hash((v4 + 24 * v9));
          v16 = 0;
          do
          {
            v17 = v12 + 24 * (v15 & v13);
            v15 = ++v16 + (v15 & v13);
          }

          while (*v17 != 0);
          v18 = *(v17 + 16);
          *(v17 + 16) = 0;
          if (v18)
          {
            WTF::RefCounted<WebKit::RemoteLayerTreeNode>::deref((v18 + 8));
          }

          *v17 = *v11;
          v19 = *(v11 + 16);
          *(v11 + 16) = 0;
          *(v17 + 16) = v19;
          v14 = *(v11 + 16);
          *(v11 + 16) = 0;
          if (!v14)
          {
            goto LABEL_19;
          }

LABEL_18:
          WTF::RefCounted<WebKit::RemoteLayerTreeNode>::deref((v14 + 8));
          goto LABEL_19;
        }

        v14 = *(v11 + 16);
        *(v11 + 16) = 0;
        if (v14)
        {
          goto LABEL_18;
        }
      }

LABEL_19:
      if (++v9 == v10)
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

uint64_t *WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::LayerHostingContextIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::LayerHostingContextIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::LayerHostingContextIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::LayerHostingContextIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::LayerHostingContextIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::LayerHostingContextIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::LayerHostingContextIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::LayerHostingContextIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::remove(uint64_t *result, void *a2)
{
  *a2 = -1;
  v2 = *result;
  v3 = vadd_s32(*(*result - 16), 0xFFFFFFFF00000001);
  *(v2 - 16) = v3;
  v4 = *(v2 - 4);
  if (6 * v3.i32[1] < v4 && v4 >= 9)
  {
    return WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::LayerHostingContextIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::LayerHostingContextIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::LayerHostingContextIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::LayerHostingContextIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::LayerHostingContextIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::LayerHostingContextIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::LayerHostingContextIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::LayerHostingContextIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(result, v4 >> 1);
  }

  return result;
}

uint64_t *WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::LayerHostingContextIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::LayerHostingContextIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::LayerHostingContextIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::LayerHostingContextIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::LayerHostingContextIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::LayerHostingContextIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::LayerHostingContextIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::LayerHostingContextIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::LayerHostingContextIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::LayerHostingContextIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::LayerHostingContextIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::LayerHostingContextIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebCore::LayerHostingContextIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    return 0;
  }

  if (a2 == -1 || !a2)
  {
    __break(0xC471u);
    JUMPOUT(0x19DD96FF0);
  }

  v2 = *(a1 - 8);
  v3 = (~(a2 << 32) + a2) ^ ((~(a2 << 32) + a2) >> 22);
  v4 = 9 * ((v3 + ~(v3 << 13)) ^ ((v3 + ~(v3 << 13)) >> 8));
  v5 = (v4 ^ (v4 >> 15)) + ~((v4 ^ (v4 >> 15)) << 27);
  v6 = v2 & ((v5 >> 31) ^ v5);
  v7 = (a1 + 24 * v6);
  v8 = *v7;
  if (*v7 != a2)
  {
    v9 = 1;
    while (v8)
    {
      v6 = (v6 + v9) & v2;
      v7 = (a1 + 24 * v6);
      v8 = *v7;
      ++v9;
      if (*v7 == a2)
      {
        return v7;
      }
    }

    return (a1 + 24 * *(a1 - 4));
  }

  return v7;
}

uint64_t WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::HashSet<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::HashSet<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::HashSet<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::HashSet<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::HashSet<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::HashSet<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(uint64_t result, uint64_t a2)
{
  if (result)
  {
    if (a2 == -1 || !a2)
    {
      __break(0xC471u);
      JUMPOUT(0x19DD970C4);
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

uint64_t *WTF::HashTable<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::remove(uint64_t *result, void *a2)
{
  *a2 = -1;
  a2[1] = -1;
  v2 = *result;
  v3 = vadd_s32(*(*result - 16), 0xFFFFFFFF00000001);
  *(v2 - 16) = v3;
  v4 = *(v2 - 4);
  if (6 * v3.i32[1] < v4 && v4 >= 9)
  {
    return WTF::HashTable<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::rehash(result, v4 >> 1, 0);
  }

  return result;
}

uint64_t *WTF::HashTable<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>,(WTF::ShouldValidateKey)1,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(uint64_t *a1, void *a2)
{
  v2 = *a1;
  if (!*a1)
  {
    return 0;
  }

  if (*a2 == 0 || a2[1] == -1)
  {
    __break(0xC471u);
    JUMPOUT(0x19DD97228);
  }

  v5 = *(v2 - 8);
  v6 = WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>::hash(a2);
  v7 = a2[1];
  v8 = v6 & v5;
  result = (v2 + 16 * (v6 & v5));
  v10 = *result;
  v11 = result[1];
  if (*result != *a2 || v11 != v7)
  {
    v13 = 1;
    while (v10 | v11)
    {
      v8 = (v8 + v13) & v5;
      result = (v2 + 16 * v8);
      v10 = *result;
      v11 = result[1];
      ++v13;
      if (*result == *a2 && v11 == v7)
      {
        return result;
      }
    }

    if (*a1)
    {
      return (*a1 + 16 * *(*a1 - 4));
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t *WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::HashSet<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::HashSet<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::HashSet<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::HashSet<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::remove(uint64_t *result, void *a2)
{
  v2 = result;
  *a2 = -1;
  v3 = a2[1];
  if (v3)
  {
    result = WTF::fastFree((v3 - 16), a2);
  }

  v4 = *v2;
  v5 = vadd_s32(*(*v2 - 16), 0xFFFFFFFF00000001);
  *(v4 - 16) = v5;
  v6 = *(v4 - 4);
  if (6 * v5.i32[1] < v6 && v6 >= 9)
  {

    return WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::HashSet<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::SharedWorkerObjectIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::SharedWorkerObjectIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::SharedWorkerObjectIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::HashSet<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::SharedWorkerObjectIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::SharedWorkerObjectIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::SharedWorkerObjectIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::HashSet<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::SharedWorkerObjectIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::SharedWorkerObjectIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::SharedWorkerObjectIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::HashSet<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::SharedWorkerObjectIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::SharedWorkerObjectIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::SharedWorkerObjectIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash( v2,  v6 >> 1,  0);
  }

  return result;
}

_OWORD *WTF::HashTable<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashMap<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::rehash(uint64_t *a1, unsigned int a2, uint64_t a3)
{
  v6 = *a1;
  if (*a1)
  {
    LODWORD(v7) = *(v6 - 4);
    v8 = *(v6 - 12);
  }

  else
  {
    LODWORD(v7) = 0;
    v8 = 0;
  }

  v9 = WTF::fastZeroedMalloc(((32 * a2) | 0x10));
  *a1 = (v9 + 4);
  v9[2] = a2 - 1;
  v9[3] = a2;
  *v9 = 0;
  v9[1] = v8;
  v11 = 0;
  if (v7)
  {
    v7 = v7;
    v12 = v6;
    do
    {
      if (*(v12 + 8) != -1 && *v12 != 0)
      {
        v13 = WTF::HashTable<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashMap<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::lookupForReinsert(a1, v12);
        v14 = *(v12 + 16);
        *v13 = *v12;
        v13[1] = v14;
        if (v12 == a3)
        {
          v11 = v13;
        }
      }

      v12 += 32;
      --v7;
    }

    while (v7);
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

uint64_t WTF::HashTable<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashMap<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::lookupForReinsert(uint64_t *a1, void *a2)
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

  v4 = WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>::hash(a2);
  v5 = 0;
  do
  {
    v6 = v4 & v3;
    v4 = ++v5 + v6;
  }

  while (*(v2 + 32 * v6) != 0);
  return v2 + 32 * v6;
}

_DWORD *WTF::HashTable<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::Ref<WebKit::RemoteLayerTreeNode,WTF::RawPtrTraits<WebKit::RemoteLayerTreeNode>,WTF::DefaultRefDerefTraits<WebKit::RemoteLayerTreeNode>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::Ref<WebKit::RemoteLayerTreeNode,WTF::RawPtrTraits<WebKit::RemoteLayerTreeNode>,WTF::DefaultRefDerefTraits<WebKit::RemoteLayerTreeNode>>>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashMap<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::Ref<WebKit::RemoteLayerTreeNode,WTF::RawPtrTraits<WebKit::RemoteLayerTreeNode>,WTF::DefaultRefDerefTraits<WebKit::RemoteLayerTreeNode>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WTF::Ref<WebKit::RemoteLayerTreeNode,WTF::RawPtrTraits<WebKit::RemoteLayerTreeNode>,WTF::DefaultRefDerefTraits<WebKit::RemoteLayerTreeNode>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::expand(uint64_t *a1)
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

  return WTF::HashTable<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::Ref<WebKit::RemoteLayerTreeNode,WTF::RawPtrTraits<WebKit::RemoteLayerTreeNode>,WTF::DefaultRefDerefTraits<WebKit::RemoteLayerTreeNode>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::Ref<WebKit::RemoteLayerTreeNode,WTF::RawPtrTraits<WebKit::RemoteLayerTreeNode>,WTF::DefaultRefDerefTraits<WebKit::RemoteLayerTreeNode>>>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashMap<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::Ref<WebKit::RemoteLayerTreeNode,WTF::RawPtrTraits<WebKit::RemoteLayerTreeNode>,WTF::DefaultRefDerefTraits<WebKit::RemoteLayerTreeNode>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WTF::Ref<WebKit::RemoteLayerTreeNode,WTF::RawPtrTraits<WebKit::RemoteLayerTreeNode>,WTF::DefaultRefDerefTraits<WebKit::RemoteLayerTreeNode>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::rehash(a1, v3);
}

uint64_t WTF::HashTable<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::begin(uint64_t *a1)
{
  v1 = *a1;
  if (!*a1)
  {
    return 0;
  }

  if (*(v1 - 12))
  {
    return WTF::HashTable<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::makeConstIterator(a1, v1);
  }

  return v1 + 16 * *(v1 - 4);
}

uint64_t WTF::HashTable<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::makeConstIterator(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  if (*a1)
  {
    v4 = *(v3 - 4);
  }

  else
  {
    v4 = 0;
  }

  v5 = v3 + 16 * v4;
  if (v5 != a2)
  {
    while (*a2 == 0 || *(a2 + 8) == -1)
    {
      a2 += 16;
      if (a2 == v5)
      {
        return v3 + 16 * v4;
      }
    }
  }

  return a2;
}

WebKit::NetworkCache::Key *WebKit::NetworkCache::Key::Key(WebKit::NetworkCache::Key *this, const WebKit::NetworkCache::Key *a2)
{
  WTF::String::isolatedCopy();
  WTF::String::isolatedCopy();
  WTF::String::isolatedCopy();
  WTF::String::isolatedCopy();
  v4 = *(a2 + 2);
  *(this + 12) = *(a2 + 12);
  *(this + 2) = v4;
  v5 = *(a2 + 52);
  *(this + 17) = *(a2 + 17);
  *(this + 52) = v5;
  return this;
}

atomic_uint **WebKit::NetworkCache::Key::Key(atomic_uint **a1, atomic_uint **a2, atomic_uint **a3, atomic_uint **a4, atomic_uint **a5, uint64_t a6)
{
  v8 = *a2;
  if (*a2)
  {
    atomic_fetch_add_explicit(v8, 2u, memory_order_relaxed);
  }

  *a1 = v8;
  v9 = *a3;
  if (*a3)
  {
    atomic_fetch_add_explicit(v9, 2u, memory_order_relaxed);
  }

  a1[1] = v9;
  v10 = *a5;
  if (*a5)
  {
    atomic_fetch_add_explicit(v10, 2u, memory_order_relaxed);
  }

  a1[2] = v10;
  v11 = *a4;
  if (*a4)
  {
    atomic_fetch_add_explicit(v11, 2u, memory_order_relaxed);
  }

  a1[3] = v11;
  WebKit::NetworkCache::Key::computeHash(a1, a6);
  WebKit::NetworkCache::Key::partitionToPartitionHash(a1, a6);
  return a1;
}

uint64_t WebKit::NetworkCache::Key::computeHash(uint64_t a1, uint64_t a2)
{
  WTF::SHA1::SHA1(v5);
  MEMORY[0x19EB01E70](v5, a2, 8);
  WebKit::NetworkCache::hashString(v5, a1);
  WebKit::NetworkCache::hashString(v5, a1 + 8);
  WebKit::NetworkCache::hashString(v5, a1 + 16);
  WebKit::NetworkCache::hashString(v5, a1 + 24);
  return WTF::SHA1::computeHash();
}

WTF::StringImpl *WebKit::NetworkCache::Key::hashAsString@<X0>(uint64_t a1@<X0>, WTF::StringImpl **a2@<X8>)
{
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v15 = 1;
  WTF::StringBuilder::reserveCapacity(&v12);
  for (i = 0; i != 20; ++i)
  {
    v5 = *(a1 + i);
    if (v5 >= 0xA0)
    {
      v6 = 55;
    }

    else
    {
      v6 = 48;
    }

    WTF::StringBuilder::append(&v12, v6 + (*(a1 + i) >> 4));
    if ((v5 & 0xF) >= 0xA)
    {
      v7 = 55;
    }

    else
    {
      v7 = 48;
    }

    WTF::StringBuilder::append(&v12, v7 + (v5 & 0xF));
  }

  v9 = v12;
  if (v12 || (WTF::StringBuilder::shrinkToFit(&v12), WTF::StringBuilder::reifyString(&v12), (v9 = v12) != 0))
  {
    atomic_fetch_add_explicit(v9, 2u, memory_order_relaxed);
  }

  *a2 = v9;
  v10 = v13;
  v13 = 0;
  if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, v8);
  }

  result = v12;
  v12 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v8);
    }
  }

  return result;
}

uint64_t WebKit::NetworkCache::Key::operator=(uint64_t a1, uint64_t a2)
{
  WTF::String::isolatedCopy();
  v5 = *a1;
  *a1 = v15;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, v4);
  }

  WTF::String::isolatedCopy();
  v7 = *(a1 + 8);
  *(a1 + 8) = 0;
  if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v7, v6);
  }

  WTF::String::isolatedCopy();
  v9 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v9, v8);
  }

  WTF::String::isolatedCopy();
  v11 = *(a1 + 24);
  *(a1 + 24) = 0;
  if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v11, v10);
  }

  v12 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 32) = v12;
  v13 = *(a2 + 52);
  *(a1 + 68) = *(a2 + 68);
  *(a1 + 52) = v13;
  return a1;
}

uint64_t WebKit::NetworkCache::hashString(uint64_t result, uint64_t a2)
{
  if (*a2)
  {
    return MEMORY[0x1EEDCB498](result, *(*a2 + 8), *(*a2 + 4) | (((*(*a2 + 16) >> 2) & 1) << 32));
  }

  return result;
}

uint64_t WebKit::NetworkCache::Key::partitionToPartitionHash(uint64_t a1, uint64_t a2)
{
  WTF::SHA1::SHA1(v5);
  MEMORY[0x19EB01E70](v5, a2, 8);
  WebKit::NetworkCache::hashString(v5, a1);
  return WTF::SHA1::computeHash();
}

uint64_t WebKit::NetworkCache::Key::operator==(uint64_t a1, uint64_t a2, const WTF::StringImpl *a3)
{
  v4 = *(a1 + 32) == *(a2 + 32) && *(a1 + 40) == *(a2 + 40) && *(a1 + 48) == *(a2 + 48);
  if (!v4 || !WTF::equal(*a1, *a2, a3) || !WTF::equal(*(a1 + 8), *(a2 + 8), v8) || !WTF::equal(*(a1 + 16), *(a2 + 16), v9))
  {
    return 0;
  }

  v11 = *(a1 + 24);
  v12 = *(a2 + 24);

  return WTF::equal(v11, v12, v10);
}

WebKit::NetworkCache::Entry *WebKit::NetworkCache::SpeculativeLoad::create@<X0>(uint64_t a1@<X0>, void *a2@<X1>, WebCore::ResourceRequest *a3@<X2>, WebKit::NetworkCache::Entry **a4@<X3>, __int16 a5@<W4>, char a6@<W5>, __int16 a7@<W6>, uint64_t *a8@<X7>, uint64_t *a9@<X8>)
{
  v18 = WebKit::NetworkCache::SpeculativeLoad::operator new(0x218, a2);
  v19 = *a4;
  *a4 = 0;
  v24 = v19;
  *a9 = WebKit::NetworkCache::SpeculativeLoad::SpeculativeLoad(v18, a1, a2, a3, &v24, a5, a6, a7, a8);
  result = v24;
  if (v24)
  {
    WebKit::NetworkCache::Entry::~Entry(v24, v20);

    return bmalloc::api::tzoneFree(v22, v23);
  }

  return result;
}

uint64_t WebKit::NetworkCache::SpeculativeLoad::operator new(WebKit::NetworkCache::SpeculativeLoad *this, void *a2)
{
  if (this == 536 && WebKit::NetworkCache::SpeculativeLoad::s_heapRef)
  {
    return bmalloc::api::tzoneAllocateNonCompact(WebKit::NetworkCache::SpeculativeLoad::s_heapRef, a2);
  }

  else
  {
    return WebKit::NetworkCache::SpeculativeLoad::operatorNewSlow(this);
  }
}

uint64_t WebKit::NetworkCache::SpeculativeLoad::SpeculativeLoad(uint64_t a1, uint64_t a2, uint64_t a3, WebCore::ResourceRequest *a4, uint64_t *a5, __int16 a6, char a7, __int16 a8, uint64_t *a9)
{
  v53 = *MEMORY[0x1E69E9840];
  *(a1 + 16) = 0x100000000;
  *a1 = &unk_1F1108C78;
  *(a1 + 8) = 0;
  ++*(a2 + 8);
  *(a1 + 24) = a2;
  v15 = *a9;
  *a9 = 0;
  *(a1 + 32) = v15;
  WebCore::ResourceRequest::ResourceRequest((a1 + 40), a4);
  *(a1 + 240) = 0;
  v16 = WebCore::ResourceResponseBase::ResourceResponseBase((a1 + 248));
  *(a1 + 496) = 0;
  *(a1 + 504) = 0;
  *(a1 + 386) = *(a1 + 386) & 0xF1 | 4;
  WebCore::FragmentedSharedBuffer::create(v38, v16);
  *(a1 + 512) = 0;
  WebCore::SharedBufferBuilder::initialize();
  v17 = *&v38[0];
  *&v38[0] = 0;
  if (v17 && atomic_fetch_add(v17 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v17 + 2);
    (*(*v17 + 8))(v17);
  }

  v18 = *a5;
  *a5 = 0;
  *(a1 + 520) = v18;
  *(a1 + 528) = 0;
  v19 = *(a1 + 24);
  v20 = *(v19 + 24);
  *&v38[0] = *(v19 + 80);
  v21 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((v20 + 240), v38);
  if (!v21)
  {
    WTF::RunLoop::mainSingleton(0);
    v35 = *(a1 + 32);
    *(a1 + 32) = 0;
    v36 = WTF::fastMalloc(0x10);
    *v36 = &unk_1F1108EE8;
    v36[1] = v35;
    *&v38[0] = v36;
    WTF::RunLoop::dispatch();
    v37 = *&v38[0];
    *&v38[0] = 0;
    if (v37)
    {
      (*(*v37 + 8))(v37);
    }

    return a1;
  }

  v22 = v21;
  ++*(v21 + 16);
  memset(v38, 0, 44);
  WebCore::ResourceRequest::ResourceRequest(v39);
  v41 = 65537;
  v42 = 1;
  v43 = 0;
  v44 = 0;
  v45 = 0;
  v48 = 0;
  v49 = 0;
  v46 = 0u;
  v47 = 0;
  v50 = 16777472;
  v51 = 0;
  v52 = 0;
  v38[0] = *a3;
  *&v38[1] = *(a3 + 16);
  WebCore::ResourceRequestBase::operator=(v39, a1 + 40);
  v24 = *(a1 + 232);
  if (v24)
  {
    CFRetain(*(a1 + 232));
  }

  v25 = cf;
  cf = v24;
  if (v25)
  {
    CFRelease(v25);
  }

  LOWORD(v50) = a6;
  HIBYTE(v50) = a7;
  v51 = a8;
  v26 = WebKit::NetworkLoad::operator new(0xDD0, v23);
  v27 = WebKit::NetworkLoad::NetworkLoad(v26, a1, v38, v22);
  v29 = (v27 + 16);
  ++*(v27 + 16);
  v30 = *(a1 + 240);
  *(a1 + 240) = v27;
  if (v30)
  {
    WTF::RefCounted<WebKit::NetworkLoad>::deref((v30 + 16), v28);
  }

  WebKit::NetworkLoad::startWithScheduling(v26, v28);
  WTF::RefCounted<WebKit::NetworkLoad>::deref(v29, v31);
  WebKit::NetworkLoadParameters::~NetworkLoadParameters(v38, v32);
  v33 = *(v22 + 4);
  if (v33)
  {
    *(v22 + 4) = v33 - 1;
    return a1;
  }

  result = 290;
  __break(0xC471u);
  return result;
}

void WebKit::NetworkCache::SpeculativeLoad::~SpeculativeLoad(WebKit::NetworkCache::SpeculativeLoad *this)
{
  std::unique_ptr<WebKit::NetworkCache::Entry>::reset[abi:sn200100](this + 65, 0);
  v3 = *(this + 64);
  *(this + 64) = 0;
  if (v3 && atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3 + 2);
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 62);
  *(this + 62) = 0;
  if (v4)
  {
    CFRelease(v4);
  }

  WebCore::ResourceResponseBase::~ResourceResponseBase((this + 248), v2);
  v6 = *(this + 30);
  *(this + 30) = 0;
  if (v6)
  {
    WTF::RefCounted<WebKit::NetworkLoad>::deref((v6 + 16), v5);
  }

  v7 = *(this + 29);
  *(this + 29) = 0;
  if (v7)
  {
    CFRelease(v7);
  }

  v8 = *(this + 26);
  *(this + 26) = 0;
  if (v8)
  {
    WTF::RefCounted<WebCore::FormData>::deref(v8);
  }

  v9 = *(this + 25);
  *(this + 25) = 0;
  if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v9, v5);
  }

  v10 = *(this + 24);
  *(this + 24) = 0;
  if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, v5);
  }

  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 168, v5);
  WTF::Vector<WebCore::HTTPHeaderMap::UncommonHeader,0ul,WTF::CrashOnOverflow,0ul,WTF::FastMalloc>::~Vector(this + 38, v11);
  WTF::Vector<WebCore::HTTPHeaderMap::CommonHeader,0ul,WTF::CrashOnOverflow,6ul,WTF::FastMalloc>::~Vector(this + 136, v12);
  v14 = *(this + 16);
  *(this + 16) = 0;
  if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v14, v13);
  }

  v15 = *(this + 10);
  *(this + 10) = 0;
  if (v15 && atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v15, v13);
  }

  v16 = *(this + 5);
  *(this + 5) = 0;
  if (v16 && atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v16, v13);
  }

  v17 = *(this + 4);
  *(this + 4) = 0;
  if (v17)
  {
    (*(*v17 + 8))(v17);
  }

  v18 = *(this + 3);
  *(this + 3) = 0;
  if (v18)
  {
    WTF::RefCounted<WebKit::NetworkCache::Cache>::deref((v18 + 8), v13);
  }

  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::~WeakPtrFactory(this + 1, v13);
  if (*(this + 5) != 1)
  {
    __break(0xC471u);
  }
}

{
  WebKit::NetworkCache::SpeculativeLoad::~SpeculativeLoad(this);
  if (atomic_load(v1 + 4))
  {

    bzero(v1, 0x218uLL);
  }

  else
  {

    bmalloc::api::tzoneFree(v1, v2);
  }
}

_DWORD *WebKit::NetworkCache::SpeculativeLoad::cancel(_DWORD *this)
{
  v1 = *(this + 30);
  *(this + 30) = 0;
  if (v1)
  {
    v2 = this;
    WebKit::NetworkLoad::cancel(v1);
    v6 = 0;
    WTF::CompletionHandler<void ()(std::unique_ptr<WebKit::NetworkCache::Entry>)>::operator()((v2 + 32), &v6);
    if (v6)
    {
      WebKit::NetworkCache::Entry::~Entry(v6, v3);
      bmalloc::api::tzoneFree(v4, v5);
    }

    return WTF::RefCounted<WebKit::NetworkLoad>::deref((v1 + 16), v3);
  }

  return this;
}

WebKit::NetworkCache::Entry *WTF::CompletionHandler<void ()(std::unique_ptr<WebKit::NetworkCache::Entry>)>::operator()(uint64_t *a1, WebKit::NetworkCache::Entry **a2)
{
  v2 = *a1;
  *a1 = 0;
  v3 = *a2;
  *a2 = 0;
  v9 = v3;
  WTF::Function<void ()(std::unique_ptr<WebKit::NetworkCache::Entry>)>::operator()(v2, &v9);
  result = v9;
  if (v9)
  {
    WebKit::NetworkCache::Entry::~Entry(v9, v4);
    result = bmalloc::api::tzoneFree(v7, v8);
  }

  if (v2)
  {
    v6 = *(*v2 + 8);

    return v6(v2);
  }

  return result;
}

uint64_t WebKit::NetworkCache::SpeculativeLoad::willSendRedirectedRequest(WebKit::NetworkCache::Cache **a1, const WebCore::ResourceRequest *a2, const WebCore::ResourceRequest *a3, WebCore::ResourceRequest *a4, uint64_t *a5)
{
  v10 = a1[3];
  v11 = *(v10 + 3);
  v31[0] = *(v10 + 10);
  v12 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((v11 + 248), v31);
  if (v12)
  {
    v13 = v12;
    ++*(v12 + 2);
    v14 = WebCore::NetworkStorageSession::maxAgeCacheCap(v12, a2);
    v16 = *(v13 + 2);
    if (!v16)
    {
      result = 290;
      __break(0xC471u);
      return result;
    }

    v17 = v14;
    v18 = v15;
    *(v13 + 2) = v16 - 1;
  }

  else
  {
    v18 = 0;
    v17 = 0;
  }

  WebKit::NetworkCache::Cache::storeRedirect(a2, a4, a1[3], a3, v17, v18, v31);
  std::unique_ptr<WebKit::NetworkCache::Entry>::reset[abi:sn200100](a1 + 65, v31[0]);
  if (!a1[65])
  {
    WebKit::NetworkCache::Cache::makeRedirectEntry(a1[3], a2, a4, a3, v31);
    std::unique_ptr<WebKit::NetworkCache::Entry>::reset[abi:sn200100](a1 + 65, v31[0]);
  }

  WebKit::NetworkCache::SpeculativeLoad::didComplete(a1);
  WebCore::ResourceRequest::ResourceRequest(v31);
  v19 = *a5;
  *a5 = 0;
  (*(*v19 + 16))(v19, v31);
  (*(*v19 + 8))(v19);
  v21 = cf;
  cf = 0;
  if (v21)
  {
    CFRelease(v21);
  }

  v22 = v39;
  v39 = 0;
  if (v22)
  {
    WTF::RefCounted<WebCore::FormData>::deref(v22);
  }

  v23 = v38;
  v38 = 0;
  if (v23 && atomic_fetch_add_explicit(v23, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v23, v20);
  }

  v24 = v37;
  v37 = 0;
  if (v24 && atomic_fetch_add_explicit(v24, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v24, v20);
  }

  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v36, v20);
  WTF::Vector<WebCore::HTTPHeaderMap::UncommonHeader,0ul,WTF::CrashOnOverflow,0ul,WTF::FastMalloc>::~Vector(v35, v25);
  WTF::Vector<WebCore::HTTPHeaderMap::CommonHeader,0ul,WTF::CrashOnOverflow,6ul,WTF::FastMalloc>::~Vector(&v34, v26);
  v28 = v33;
  v33 = 0;
  if (v28 && atomic_fetch_add_explicit(v28, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v28, v27);
  }

  v29 = v32;
  v32 = 0;
  if (v29 && atomic_fetch_add_explicit(v29, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v29, v27);
  }

  result = v31[0];
  v31[0] = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v27);
    }
  }

  return result;
}

uint64_t WebKit::NetworkCache::SpeculativeLoad::didComplete(WebKit::NetworkCache::SpeculativeLoad *this)
{
  v2 = WTF::RunLoop::mainSingleton(this);
  result = WTF::RunLoop::isCurrent(v2);
  if (result)
  {
    if ((*(this + 528) & 1) == 0)
    {
      *(this + 528) = 1;
      v5 = *(this + 30);
      *(this + 30) = 0;
      if (v5)
      {
        WTF::RefCounted<WebKit::NetworkLoad>::deref((v5 + 16), v4);
      }

      v6 = *(this + 65);
      if (v6)
      {
        *(v6 + 160) = *(v6 + 160) & 0xC3FF | 0x800;
        v6 = *(this + 65);
      }

      *(this + 65) = 0;
      v10 = v6;
      WTF::CompletionHandler<void ()(std::unique_ptr<WebKit::NetworkCache::Entry>)>::operator()(this + 4, &v10);
      result = v10;
      if (v10)
      {
        WebKit::NetworkCache::Entry::~Entry(v10, v7);

        return bmalloc::api::tzoneFree(v8, v9);
      }
    }
  }

  else
  {
    result = 171;
    __break(0xC471u);
  }

  return result;
}

uint64_t WebKit::NetworkCache::SpeculativeLoad::didReceiveResponse(uint64_t a1, uint64_t a2, char a3, uint64_t *a4)
{
  WebCore::ResourceResponseBase::operator=(a1 + 248, a2);
  v8 = *(a2 + 248);
  if (v8)
  {
    CFRetain(*(a2 + 248));
  }

  v9 = *(a1 + 496);
  *(a1 + 496) = v8;
  if (v9)
  {
    CFRelease(v9);
  }

  *(a1 + 504) = *(a2 + 256);
  *(a1 + 529) = a3;
  v10 = WebCore::ResourceResponseBase::mimeType((a1 + 248));
  if (MEMORY[0x19EB01EF0](*v10, "multipart/x-mixed-replace", 25))
  {
    v19 = *(a1 + 512);
    *(a1 + 512) = 0;
    if (v19)
    {
      if (atomic_fetch_add(v19 + 2, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v19 + 2);
        (*(*v19 + 8))(v19);
      }
    }
  }

  if (WebCore::ResourceResponseBase::httpStatusCode((a1 + 248)) == 304 && (v11 = *(a1 + 520)) != 0)
  {
    WebKit::NetworkCache::Cache::update(*(a1 + 24), (a1 + 40), v11, (a1 + 248), a3, &v20);
    v12 = v20;
    v20 = 0;
    std::unique_ptr<WebKit::NetworkCache::Entry>::reset[abi:sn200100]((a1 + 520), v12);
    v14 = v20;
    v20 = 0;
    if (v14)
    {
      WebKit::NetworkCache::Entry::~Entry(v14, v13);
      bmalloc::api::tzoneFree(v17, v18);
    }
  }

  else
  {
    std::unique_ptr<WebKit::NetworkCache::Entry>::reset[abi:sn200100]((a1 + 520), 0);
  }

  v15 = *a4;
  *a4 = 0;
  (*(*v15 + 16))(v15, 0);
  return (*(*v15 + 8))(v15);
}

uint64_t WebKit::NetworkCache::SpeculativeLoad::didReceiveBuffer(WebKit::NetworkCache::SpeculativeLoad *this, const WebCore::FragmentedSharedBuffer *a2)
{
  result = *(this + 64);
  if (result)
  {
    v4 = (this + 512);
    if (*(a2 + 7) + *(result + 56) > 0xA00000uLL)
    {
      *v4 = 0;
      if (atomic_fetch_add((result + 8), 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, (result + 8));
        return (*(*result + 8))();
      }
    }

    else
    {
      return WebCore::SharedBufferBuilder::append<WebCore::FragmentedSharedBuffer const&>(v4);
    }
  }

  return result;
}

uint64_t WebKit::NetworkCache::SpeculativeLoad::didFinishLoading(uint64_t this, const WebCore::NetworkLoadMetrics *a2)
{
  if ((*(this + 528) & 1) == 0)
  {
    v2 = this;
    if (!*(this + 520))
    {
      v3 = *(this + 512);
      if (v3)
      {
        v4 = (this + 520);
        v5 = *(this + 24);
        v6 = *(this + 529);
        atomic_fetch_add((v3 + 8), 1u);
        v27 = v3;
        v7 = WTF::fastMalloc(0x10);
        *v7 = &unk_1F1108F10;
        v26 = v7;
        WebKit::NetworkCache::Cache::store((v2 + 40), (v2 + 248), v5, v6, &v27, &v26, &v28);
        v8 = v28;
        v28 = 0;
        std::unique_ptr<WebKit::NetworkCache::Entry>::reset[abi:sn200100]((v2 + 520), v8);
        v10 = v28;
        v28 = 0;
        if (v10)
        {
          WebKit::NetworkCache::Entry::~Entry(v10, v9);
          bmalloc::api::tzoneFree(v22, v23);
        }

        v11 = v26;
        v26 = 0;
        if (v11)
        {
          (*(*v11 + 8))(v11);
        }

        v12 = v27;
        v27 = 0;
        if (v12 && atomic_fetch_add(v12 + 2, 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, v12 + 2);
          (*(*v12 + 8))(v12);
        }

        if (!*v4)
        {
          v13 = WebCore::ResourceResponseBase::httpStatusCode((v2 + 248));
          if (WebCore::isStatusCodeCacheableByDefault(v13))
          {
            v14 = *(v2 + 24);
            v15 = *(v2 + 529);
            WebCore::SharedBufferBuilder::take(&v26, (v2 + 512));
            v16 = v26;
            v26 = 0;
            v27 = v16;
            WebKit::NetworkCache::Cache::makeEntry(v14, (v2 + 40), (v2 + 248), v15, &v27, &v28);
            v17 = v28;
            v28 = 0;
            std::unique_ptr<WebKit::NetworkCache::Entry>::reset[abi:sn200100]((v2 + 520), v17);
            v19 = v28;
            v28 = 0;
            if (v19)
            {
              WebKit::NetworkCache::Entry::~Entry(v19, v18);
              bmalloc::api::tzoneFree(v24, v25);
            }

            v20 = v27;
            v27 = 0;
            if (v20 && atomic_fetch_add(v20 + 2, 0xFFFFFFFF) == 1)
            {
              atomic_store(1u, v20 + 2);
              (*(*v20 + 8))(v20);
            }

            v21 = v26;
            v26 = 0;
            if (v21)
            {
              if (atomic_fetch_add(v21 + 2, 0xFFFFFFFF) == 1)
              {
                atomic_store(1u, v21 + 2);
                (*(*v21 + 8))(v21);
              }
            }
          }
        }
      }
    }

    return WebKit::NetworkCache::SpeculativeLoad::didComplete(v2);
  }

  return this;
}

uint64_t WebKit::NetworkCache::SpeculativeLoad::didFailLoading(uint64_t this, const WebCore::ResourceError *a2)
{
  if ((*(this + 528) & 1) == 0)
  {
    v3 = this;
    std::unique_ptr<WebKit::NetworkCache::Entry>::reset[abi:sn200100]((this + 520), 0);

    return WebKit::NetworkCache::SpeculativeLoad::didComplete(v3);
  }

  return this;
}

uint64_t WebKit::NetworkCache::requestsHeadersMatch(WebKit::NetworkCache *this, const WebCore::ResourceRequest *a2, const WebCore::ResourceRequest *a3)
{
  WebCore::ResourceRequest::ResourceRequest(v8, this);
  WebCore::ResourceRequestBase::makeUnconditional(v8);
  v4 = WebCore::ResourceRequestBase::httpHeaderFields(v8);
  v5 = WebCore::ResourceRequestBase::httpHeaderFields(a2);
  v6 = WebCore::operator==(v4, v5);
  WebCore::ResourceRequest::~ResourceRequest(v8);
  return v6;
}

uint64_t WebCore::operator==(unint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 12);
  if (v2 != *(a2 + 12))
  {
    return 0;
  }

  v3 = a1;
  v4 = *(a1 + 28);
  if (v4 != *(a2 + 28))
  {
    return 0;
  }

  if (v2)
  {
    v5 = *a1;
    v6 = *a1 + 16 * v2;
    while (1)
    {
      WebCore::HTTPHeaderMap::get();
      v9 = WTF::equal(v22, *(v5 + 8), v7);
      v10 = v22;
      v22 = 0;
      if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v10, v8);
      }

      if ((v9 & 1) == 0)
      {
        return 0;
      }

      v5 += 16;
      if (v5 == v6)
      {
        v4 = *(v3 + 28);
        break;
      }
    }
  }

  if (!v4)
  {
    return 1;
  }

  v13 = *(v3 + 16);
  v14 = &v13[2 * v4];
  do
  {
    v15 = *v13;
    if (*v13)
    {
      v16 = *(v15 + 16);
      v15 = *(v15 + 4);
      v17 = ((v16 >> 2) & 1) << 32;
    }

    else
    {
      v17 = 0x100000000;
    }

    v3 = v15 | v3 & 0xFFFFFF0000000000 | v17;
    WebCore::HTTPHeaderMap::getUncommonHeader();
    v11 = WTF::equal(v22, v13[1], v18);
    v20 = v22;
    v22 = 0;
    if (v20 && atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v20, v19);
    }

    v13 += 2;
    if (v13 == v14)
    {
      v21 = 0;
    }

    else
    {
      v21 = v11;
    }
  }

  while ((v21 & 1) != 0);
  return v11;
}

WebKit::NetworkCache::SpeculativeLoadManager *WebKit::NetworkCache::SpeculativeLoadManager::SpeculativeLoadManager(WebKit::NetworkCache::SpeculativeLoadManager *this, WebKit::NetworkCache::Cache *a2, Storage *a3)
{
  *this = 0;
  *(this + 2) = 0;
  WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(a2, a2);
  v6 = *a2;
  atomic_fetch_add(*a2, 1u);
  *(this + 2) = v6;
  *(this + 3) = a3;
  v7 = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::NetworkCache::Storage,(WTF::DestructionThread)2>::controlBlock(a3);
  *(this + 4) = WTF::ThreadSafeWeakPtrControlBlock::weakRef(v7);
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 9) = 0;
  return this;
}

void WebKit::NetworkCache::SpeculativeLoadManager::~SpeculativeLoadManager(WebKit::NetworkCache::SpeculativeLoadManager *this, WTF::StringImpl *a2)
{
  v3 = *(this + 9);
  if (v3)
  {
    WTF::HashTable<WebKit::NetworkCache::Key,WTF::KeyValuePair<WebKit::NetworkCache::Key,std::unique_ptr<WebKit::NetworkCache::SpeculativeLoadManager::ExpiringEntry>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebKit::NetworkCache::Key,std::unique_ptr<WebKit::NetworkCache::SpeculativeLoadManager::ExpiringEntry>>>,WTF::DefaultHash<WebKit::NetworkCache::Key>,WTF::HashMap<WebKit::NetworkCache::Key,std::unique_ptr<WebKit::NetworkCache::SpeculativeLoadManager::ExpiringEntry>,WTF::DefaultHash<WebKit::NetworkCache::Key>,WTF::HashTraits<WebKit::NetworkCache::Key>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkCache::SpeculativeLoadManager::ExpiringEntry>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebKit::NetworkCache::Key>,WTF::FastMalloc>::deallocateTable(v3, a2);
  }

  v4 = *(this + 8);
  if (v4)
  {
    WTF::HashTable<WebKit::NetworkCache::Key,WTF::KeyValuePair<WebKit::NetworkCache::Key,std::unique_ptr<WebKit::NetworkCache::SpeculativeLoadManager::PreloadedEntry>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebKit::NetworkCache::Key,std::unique_ptr<WebKit::NetworkCache::SpeculativeLoadManager::PreloadedEntry>>>,WTF::DefaultHash<WebKit::NetworkCache::Key>,WTF::HashMap<WebKit::NetworkCache::Key,std::unique_ptr<WebKit::NetworkCache::SpeculativeLoadManager::PreloadedEntry>,WTF::DefaultHash<WebKit::NetworkCache::Key>,WTF::HashTraits<WebKit::NetworkCache::Key>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkCache::SpeculativeLoadManager::PreloadedEntry>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebKit::NetworkCache::Key>,WTF::FastMalloc>::deallocateTable(v4, a2);
  }

  v5 = *(this + 7);
  if (v5)
  {
    WTF::HashTable<WebKit::NetworkCache::Key,WTF::KeyValuePair<WebKit::NetworkCache::Key,std::unique_ptr<WTF::Vector<WTF::Function<void ()(std::unique_ptr<WebKit::NetworkCache::Entry>)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebKit::NetworkCache::Key,std::unique_ptr<WTF::Vector<WTF::Function<void ()(std::unique_ptr<WebKit::NetworkCache::Entry>)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>>,WTF::DefaultHash<WebKit::NetworkCache::Key>,WTF::HashMap<WebKit::NetworkCache::Key,std::unique_ptr<WTF::Vector<WTF::Function<void ()(std::unique_ptr<WebKit::NetworkCache::Entry>)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::DefaultHash<WebKit::NetworkCache::Key>,WTF::HashTraits<WebKit::NetworkCache::Key>,WTF::HashTraits<std::unique_ptr<WTF::Vector<WTF::Function<void ()(std::unique_ptr<WebKit::NetworkCache::Entry>)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebKit::NetworkCache::Key>,WTF::FastMalloc>::deallocateTable(v5, a2);
  }

  v6 = *(this + 6);
  if (v6)
  {
    WTF::HashTable<WebKit::NetworkCache::Key,WTF::KeyValuePair<WebKit::NetworkCache::Key,WTF::RefPtr<WebKit::NetworkCache::SpeculativeLoad,WTF::RawPtrTraits<WebKit::NetworkCache::SpeculativeLoad>,WTF::DefaultRefDerefTraits<WebKit::NetworkCache::SpeculativeLoad>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebKit::NetworkCache::Key,WTF::RefPtr<WebKit::NetworkCache::SpeculativeLoad,WTF::RawPtrTraits<WebKit::NetworkCache::SpeculativeLoad>,WTF::DefaultRefDerefTraits<WebKit::NetworkCache::SpeculativeLoad>>>>,WTF::DefaultHash<WebKit::NetworkCache::Key>,WTF::HashMap<WebKit::NetworkCache::Key,WTF::RefPtr<WebKit::NetworkCache::SpeculativeLoad,WTF::RawPtrTraits<WebKit::NetworkCache::SpeculativeLoad>,WTF::DefaultRefDerefTraits<WebKit::NetworkCache::SpeculativeLoad>>,WTF::DefaultHash<WebKit::NetworkCache::Key>,WTF::HashTraits<WebKit::NetworkCache::Key>,WTF::HashTraits<WTF::RefPtr<WebKit::NetworkCache::SpeculativeLoad,WTF::RawPtrTraits<WebKit::NetworkCache::SpeculativeLoad>,WTF::DefaultRefDerefTraits<WebKit::NetworkCache::SpeculativeLoad>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebKit::NetworkCache::Key>,WTF::FastMalloc>::deallocateTable(v6, a2);
  }

  v7 = *(this + 5);
  if (v7)
  {
    WTF::HashTable<WebKit::NetworkCache::GlobalFrameID,WTF::KeyValuePair<WebKit::NetworkCache::GlobalFrameID,WTF::RefPtr<WebKit::NetworkCache::SpeculativeLoadManager::PendingFrameLoad,WTF::RawPtrTraits<WebKit::NetworkCache::SpeculativeLoadManager::PendingFrameLoad>,WTF::DefaultRefDerefTraits<WebKit::NetworkCache::SpeculativeLoadManager::PendingFrameLoad>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebKit::NetworkCache::GlobalFrameID,WTF::RefPtr<WebKit::NetworkCache::SpeculativeLoadManager::PendingFrameLoad,WTF::RawPtrTraits<WebKit::NetworkCache::SpeculativeLoadManager::PendingFrameLoad>,WTF::DefaultRefDerefTraits<WebKit::NetworkCache::SpeculativeLoadManager::PendingFrameLoad>>>>,WTF::DefaultHash<WebKit::NetworkCache::GlobalFrameID>,WTF::HashMap<WebKit::NetworkCache::GlobalFrameID,WTF::RefPtr<WebKit::NetworkCache::SpeculativeLoadManager::PendingFrameLoad,WTF::RawPtrTraits<WebKit::NetworkCache::SpeculativeLoadManager::PendingFrameLoad>,WTF::DefaultRefDerefTraits<WebKit::NetworkCache::SpeculativeLoadManager::PendingFrameLoad>>,WTF::DefaultHash<WebKit::NetworkCache::GlobalFrameID>,WTF::HashTraits<WebKit::NetworkCache::GlobalFrameID>,WTF::HashTraits<WTF::RefPtr<WebKit::NetworkCache::SpeculativeLoadManager::PendingFrameLoad,WTF::RawPtrTraits<WebKit::NetworkCache::SpeculativeLoadManager::PendingFrameLoad>,WTF::DefaultRefDerefTraits<WebKit::NetworkCache::SpeculativeLoadManager::PendingFrameLoad>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebKit::NetworkCache::GlobalFrameID>,WTF::FastMalloc>::deallocateTable(v7, a2);
  }

  v8 = *(this + 4);
  *(this + 4) = 0;
  if (v8)
  {
    WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v8, a2);
  }

  v9 = *(this + 2);
  *(this + 2) = 0;
  if (v9 && atomic_fetch_add(v9, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v9);
    WTF::fastFree(v9, a2);
  }

  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::~WeakPtrFactory(this, a2);
}

uint64_t WebKit::NetworkCache::SpeculativeLoadManager::canRetrieve(uint64_t a1, uint64_t a2, const WTF::StringImpl *a3, uint64_t *a4)
{
  v4 = *(*(a1 + 16) + 8);
  if (!v4)
  {
    goto LABEL_65;
  }

  ++*(v4 + 8);
  v6 = *(a2 + 16);
  if (v6 == -1)
  {
    __break(0xC471u);
    JUMPOUT(0x19DD99118);
  }

  if (!v6)
  {
    __break(0xC471u);
    JUMPOUT(0x19DD99138);
  }

  v7 = a1;
  v8 = *(a1 + 64);
  if (!v8)
  {
    goto LABEL_5;
  }

  v19 = 0;
  v20 = *(v8 - 8);
  for (i = *(a2 + 32); ; i = ++v19 + v22)
  {
    v22 = i & v20;
    v23 = v8 + 80 * (i & v20);
    v24 = *(v23 + 16);
    if (!v24)
    {
      goto LABEL_5;
    }

    if (v24 != -1)
    {
      v25 = a3;
      a1 = WebKit::NetworkCache::Key::operator==(v8 + 80 * v22, a2, a3);
      a3 = v25;
      if (a1)
      {
        break;
      }
    }
  }

  v37 = *(v23 + 72);
  if (!v37)
  {
LABEL_5:
    v9 = *(a2 + 16);
    if (v9 == -1)
    {
      __break(0xC471u);
      JUMPOUT(0x19DD99158);
    }

    if (!v9)
    {
      __break(0xC471u);
      JUMPOUT(0x19DD99178);
    }

    v10 = *(v7 + 48);
    if (v10)
    {
      v26 = 0;
      v27 = *(v10 - 8);
      for (j = *(a2 + 32); ; j = v26 + v29)
      {
        v29 = j & v27;
        v30 = v10 + 80 * (j & v27);
        v31 = *(v30 + 16);
        if (v31 != -1)
        {
          if (!v31)
          {
            goto LABEL_8;
          }

          v32 = a3;
          a1 = WebKit::NetworkCache::Key::operator==(v10 + 80 * v29, a2, a3);
          a3 = v32;
          if (a1)
          {
            break;
          }
        }

        ++v26;
      }

      v33 = *(v30 + 72);
      if (v33)
      {
        ++v33[5];
        v34 = WebKit::NetworkCache::requestsHeadersMatch((v33 + 10), v32, v32);
        v17 = v34;
        if ((v34 & 1) == 0)
        {
          v35 = *(v4 + 24);
          WebCore::DiagnosticLoggingKeys::wastedSpeculativeWarmupWithRevalidationKey(&v47, v34);
          WebKit::NetworkCache::logSpeculativeLoadingDiagnosticMessage(v35, *a4, &v47);
          v36 = v47;
          v47 = 0;
          if (v36)
          {
            if (atomic_fetch_add_explicit(v36, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v36, v15);
            }
          }
        }

        if (v33[5] == 1)
        {
          (*(*v33 + 24))(v33);
        }

        else
        {
          --v33[5];
        }

        goto LABEL_16;
      }
    }

LABEL_8:
    v11 = *(a2 + 16);
    if (v11 == -1)
    {
      __break(0xC471u);
      JUMPOUT(0x19DD99198);
    }

    if (v11)
    {
      v12 = *(v7 + 72);
      if (v12)
      {
        v40 = 0;
        v41 = *(v12 - 8);
        for (k = *(a2 + 32); ; k = v40 + v43)
        {
          v43 = k & v41;
          v44 = v12 + 80 * (k & v41);
          v45 = *(v44 + 16);
          if (v45 != -1)
          {
            if (!v45)
            {
              goto LABEL_11;
            }

            a1 = WebKit::NetworkCache::Key::operator==(v12 + 80 * v43, a2, a3);
            if (a1)
            {
              break;
            }
          }

          ++v40;
        }

        v13 = *(v4 + 24);
        if (*(v44 + 72))
        {
          WebCore::DiagnosticLoggingKeys::entryWronglyNotWarmedUpKey(&v47, a1);
          goto LABEL_13;
        }
      }

      else
      {
LABEL_11:
        v13 = *(v4 + 24);
      }

      WebCore::DiagnosticLoggingKeys::unknownEntryRequestKey(&v47, a1);
LABEL_13:
      v14 = *a4;
      goto LABEL_14;
    }

LABEL_65:
    __break(0xC471u);
    JUMPOUT(0x19DD990F8);
  }

  if ((*(v37 + 264) & 1) == 0)
  {
    v13 = *(v4 + 24);
    v38 = a4;
    goto LABEL_38;
  }

  a1 = WebKit::NetworkCache::requestsHeadersMatch((v37 + 64), v25, v25);
  v13 = *(v4 + 24);
  if ((a1 & 1) == 0)
  {
    if (*(v37 + 264))
    {
      WebCore::DiagnosticLoggingKeys::wastedSpeculativeWarmupWithRevalidationKey(&v47, a1);
    }

    else
    {
      WebCore::DiagnosticLoggingKeys::wastedSpeculativeWarmupWithoutRevalidationKey(&v47, a1);
    }

    v14 = *a4;
LABEL_14:
    WebKit::NetworkCache::logSpeculativeLoadingDiagnosticMessage(v13, v14, &v47);
    v16 = v47;
    v47 = 0;
    if (v16 && atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v16, v15);
    }

    v17 = 0;
    goto LABEL_16;
  }

  v38 = a4;
  if ((*(v37 + 264) & 1) == 0)
  {
LABEL_38:
    WebCore::DiagnosticLoggingKeys::successfulSpeculativeWarmupWithoutRevalidationKey(&v47, a1);
    goto LABEL_39;
  }

  WebCore::DiagnosticLoggingKeys::successfulSpeculativeWarmupWithRevalidationKey(&v47, a1);
LABEL_39:
  WebKit::NetworkCache::logSpeculativeLoadingDiagnosticMessage(v13, *v38, &v47);
  v39 = v47;
  v47 = 0;
  if (v39 && atomic_fetch_add_explicit(v39, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v39, v15);
  }

  v17 = 1;
LABEL_16:
  WTF::RefCounted<WebKit::NetworkCache::Cache>::deref((v4 + 8), v15);
  return v17;
}

WTF::StringImpl *WebKit::NetworkCache::logSpeculativeLoadingDiagnosticMessage(WebCore::DiagnosticLoggingKeys *a1, uint64_t a2, uint64_t a3)
{
  WebCore::DiagnosticLoggingKeys::networkCacheKey(&v8, a1);
  WebKit::NetworkProcess::logDiagnosticMessage(a1, a2, &v8, a3, 1);
  result = v8;
  v8 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v6);
    }
  }

  return result;
}

unsigned int *WebKit::NetworkCache::SpeculativeLoadManager::retrieve(uint64_t a1, uint64_t a2, const WTF::StringImpl *a3)
{
  v6 = WTF::HashTable<WebKit::NetworkCache::Key,WTF::KeyValuePair<WebKit::NetworkCache::Key,std::unique_ptr<WebKit::NetworkCache::SpeculativeLoadManager::PreloadedEntry>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebKit::NetworkCache::Key,std::unique_ptr<WebKit::NetworkCache::SpeculativeLoadManager::PreloadedEntry>>>,WTF::DefaultHash<WebKit::NetworkCache::Key>,WTF::HashMap<WebKit::NetworkCache::Key,std::unique_ptr<WebKit::NetworkCache::SpeculativeLoadManager::PreloadedEntry>,WTF::DefaultHash<WebKit::NetworkCache::Key>,WTF::HashTraits<WebKit::NetworkCache::Key>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkCache::SpeculativeLoadManager::PreloadedEntry>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebKit::NetworkCache::Key>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WebKit::NetworkCache::Key,std::unique_ptr<WebKit::NetworkCache::SpeculativeLoadManager::PreloadedEntry>,WTF::DefaultHash<WebKit::NetworkCache::Key>,WTF::HashTraits<WebKit::NetworkCache::Key>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkCache::SpeculativeLoadManager::PreloadedEntry>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WebKit::NetworkCache::Key>>,(WTF::ShouldValidateKey)1,WebKit::NetworkCache::Key>((a1 + 64), a2, a3);
  v7 = WTF::HashMap<WebKit::NetworkCache::Key,std::unique_ptr<WebKit::NetworkCache::SpeculativeLoadManager::PreloadedEntry>,WTF::DefaultHash<WebKit::NetworkCache::Key>,WTF::HashTraits<WebKit::NetworkCache::Key>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkCache::SpeculativeLoadManager::PreloadedEntry>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::take(&v19, (a1 + 64), v6);
  v8 = v19;
  if (v19)
  {
    WTF::RunLoop::mainSingleton(v7);
    v9 = *a3;
    *a3 = 0;
    v10 = *(v8 + 7);
    *(v8 + 7) = 0;
    v11 = WTF::fastMalloc(0x18);
    *v11 = &unk_1F1108F38;
    v11[1] = v9;
    v17[0] = 0;
    v17[1] = 0;
    v11[2] = v10;
    v18 = v11;
    WTF::RunLoop::dispatch();
    v12 = v18;
    v18 = 0;
    if (v12)
    {
      (*(*v12 + 8))(v12);
    }

    WebKit::NetworkCache::SpeculativeLoadManager::retrieve(WebKit::NetworkCache::Key const&,WTF::Function<void ()(std::unique_ptr<WebKit::NetworkCache::Entry>)> &&)::$_1::~$_1(v17);
    return std::unique_ptr<WebKit::NetworkCache::SpeculativeLoadManager::PreloadedEntry>::reset[abi:sn200100](&v19, 0);
  }

  else
  {
    std::unique_ptr<WebKit::NetworkCache::SpeculativeLoadManager::PreloadedEntry>::reset[abi:sn200100](&v19, 0);
    WTF::HashMap<WebKit::NetworkCache::Key,std::unique_ptr<WTF::Vector<WTF::Function<void ()(std::unique_ptr<WebKit::NetworkCache::Entry>)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::DefaultHash<WebKit::NetworkCache::Key>,WTF::HashTraits<WebKit::NetworkCache::Key>,WTF::HashTraits<std::unique_ptr<WTF::Vector<WTF::Function<void ()(std::unique_ptr<WebKit::NetworkCache::Entry>)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::ensure<WebKit::NetworkCache::SpeculativeLoadManager::retrieve(WebKit::NetworkCache::Key const&,WTF::Function<void ()(std::unique_ptr<WebKit::NetworkCache::Entry>)>&&)::$_0>(v17, (a1 + 56), a2);
    result = *(v17[0] + 9);
    v14 = result[3];
    if (v14 == result[2])
    {
      return WTF::Vector<WTF::Function<void ()(std::unique_ptr<WebKit::NetworkCache::Entry>)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::Function<void ()(std::unique_ptr<WebKit::NetworkCache::Entry>)>>(result, a3);
    }

    else
    {
      v15 = *result;
      v16 = *a3;
      *a3 = 0;
      *(v15 + 8 * v14) = v16;
      result[3] = v14 + 1;
    }
  }

  return result;
}

WebKit::NetworkCache::Entry **WebKit::NetworkCache::SpeculativeLoadManager::retrieve(WebKit::NetworkCache::Key const&,WTF::Function<void ()(std::unique_ptr<WebKit::NetworkCache::Entry>)> &&)::$_1::~$_1(WebKit::NetworkCache::Entry **a1)
{
  std::unique_ptr<WebKit::NetworkCache::Entry>::reset[abi:sn200100](a1 + 1, 0);
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::HashMap<WebKit::NetworkCache::Key,std::unique_ptr<WTF::Vector<WTF::Function<void ()(std::unique_ptr<WebKit::NetworkCache::Entry>)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::DefaultHash<WebKit::NetworkCache::Key>,WTF::HashTraits<WebKit::NetworkCache::Key>,WTF::HashTraits<std::unique_ptr<WTF::Vector<WTF::Function<void ()(std::unique_ptr<WebKit::NetworkCache::Entry>)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::ensure<WebKit::NetworkCache::SpeculativeLoadManager::retrieve(WebKit::NetworkCache::Key const&,WTF::Function<void ()(std::unique_ptr<WebKit::NetworkCache::Entry>)>&&)::$_0>(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  if (v3 == -1)
  {
    __break(0xC471u);
    JUMPOUT(0x19DD995B4);
  }

  if (!v3)
  {
    __break(0xC471u);
    JUMPOUT(0x19DD995D4);
  }

  v7 = *a2;
  if (*a2 || (WTF::HashTable<WebKit::NetworkCache::Key,WTF::KeyValuePair<WebKit::NetworkCache::Key,std::unique_ptr<WTF::Vector<WTF::Function<void ()(std::unique_ptr<WebKit::NetworkCache::Entry>)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebKit::NetworkCache::Key,std::unique_ptr<WTF::Vector<WTF::Function<void ()(std::unique_ptr<WebKit::NetworkCache::Entry>)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>>,WTF::DefaultHash<WebKit::NetworkCache::Key>,WTF::HashMap<WebKit::NetworkCache::Key,std::unique_ptr<WTF::Vector<WTF::Function<void ()(std::unique_ptr<WebKit::NetworkCache::Entry>)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::DefaultHash<WebKit::NetworkCache::Key>,WTF::HashTraits<WebKit::NetworkCache::Key>,WTF::HashTraits<std::unique_ptr<WTF::Vector<WTF::Function<void ()(std::unique_ptr<WebKit::NetworkCache::Entry>)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebKit::NetworkCache::Key>,WTF::FastMalloc>::expand(a2, 0), (v7 = *a2) != 0))
  {
    v8 = *(v7 - 8);
  }

  else
  {
    v8 = 0;
  }

  v9 = 0;
  v10 = *(a3 + 32);
  for (i = 1; ; ++i)
  {
    v12 = v10 & v8;
    v13 = v7 + 80 * (v10 & v8);
    v14 = *(v13 + 16);
    if (v14 != -1)
    {
      break;
    }

    v9 = v7 + 80 * v12;
LABEL_12:
    v10 = i + v12;
  }

  if (!v14)
  {
    if (v9)
    {
      *v9 = 0u;
      *(v9 + 16) = 0u;
      *(v9 + 72) = 0;
      --*(*a2 - 16);
      v13 = v9;
    }

    WebKit::NetworkCache::Key::operator=(v13, a3);
    v16 = WTF::fastMalloc(0x10);
    *v16 = 0;
    v16[1] = 0;
    result = std::unique_ptr<WTF::Vector<WTF::Function<void ()(std::unique_ptr<WebKit::NetworkCache::Entry>)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>::reset[abi:sn200100]((v13 + 72), v16);
    v17 = *a2;
    if (*a2)
    {
      v18 = *(v17 - 12) + 1;
    }

    else
    {
      v18 = 1;
    }

    *(v17 - 12) = v18;
    v23 = (*(v17 - 16) + v18);
    v24 = *(v17 - 4);
    if (v24 > 0x400)
    {
      if (v24 <= 2 * v23)
      {
LABEL_23:
        result = WTF::HashTable<WebKit::NetworkCache::Key,WTF::KeyValuePair<WebKit::NetworkCache::Key,std::unique_ptr<WTF::Vector<WTF::Function<void ()(std::unique_ptr<WebKit::NetworkCache::Entry>)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebKit::NetworkCache::Key,std::unique_ptr<WTF::Vector<WTF::Function<void ()(std::unique_ptr<WebKit::NetworkCache::Entry>)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>>,WTF::DefaultHash<WebKit::NetworkCache::Key>,WTF::HashMap<WebKit::NetworkCache::Key,std::unique_ptr<WTF::Vector<WTF::Function<void ()(std::unique_ptr<WebKit::NetworkCache::Entry>)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::DefaultHash<WebKit::NetworkCache::Key>,WTF::HashTraits<WebKit::NetworkCache::Key>,WTF::HashTraits<std::unique_ptr<WTF::Vector<WTF::Function<void ()(std::unique_ptr<WebKit::NetworkCache::Entry>)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebKit::NetworkCache::Key>,WTF::FastMalloc>::expand(a2, v13);
        v13 = result;
        v17 = *a2;
        if (*a2)
        {
          LODWORD(v24) = *(v17 - 4);
        }

        else
        {
          LODWORD(v24) = 0;
        }
      }
    }

    else if (3 * v24 <= 4 * v23)
    {
      goto LABEL_23;
    }

    v22 = v17 + 80 * v24;
    v21 = 1;
    goto LABEL_26;
  }

  result = WebKit::NetworkCache::Key::operator==(v7 + 80 * v12, a3, a3);
  if (!result)
  {
    goto LABEL_12;
  }

  v19 = *a2;
  if (*a2)
  {
    v20 = *(v19 - 4);
  }

  else
  {
    v20 = 0;
  }

  v21 = 0;
  v22 = v19 + 80 * v20;
LABEL_26:
  *a1 = v13;
  *(a1 + 8) = v22;
  *(a1 + 16) = v21;
  return result;
}

BOOL WebKit::NetworkCache::SpeculativeLoadManager::shouldRegisterLoad(WebKit::NetworkCache::SpeculativeLoadManager *this, const WebCore::ResourceRequest *a2)
{
  v2 = WebCore::ResourceRequestBase::httpMethod(this);
  if (!MEMORY[0x19EB01EF0](*v2, "GET", 3))
  {
    return 0;
  }

  WebCore::ResourceRequestBase::httpHeaderField();
  if (!v6)
  {
    return 1;
  }

  v4 = *(v6 + 1) == 0;
  if (atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v6, v3);
  }

  return v4;
}

uint64_t WebKit::NetworkCache::SpeculativeLoadManager::registerLoad(uint64_t a1, uint64_t a2, WebKit::NetworkCache::SpeculativeLoadManager *this, atomic_uint **a4, __int16 a5, char a6, __int16 a7)
{
  v78 = *MEMORY[0x1E69E9840];
  result = WebKit::NetworkCache::SpeculativeLoadManager::shouldRegisterLoad(this, a2);
  if (!result)
  {
    return result;
  }

  v15 = *(this + 147);
  result = WTF::HashMap<WebKit::NetworkCache::GlobalFrameID,WTF::RefPtr<WebKit::NetworkCache::SpeculativeLoadManager::PendingFrameLoad,WTF::RawPtrTraits<WebKit::NetworkCache::SpeculativeLoadManager::PendingFrameLoad>,WTF::DefaultRefDerefTraits<WebKit::NetworkCache::SpeculativeLoadManager::PendingFrameLoad>>,WTF::DefaultHash<WebKit::NetworkCache::GlobalFrameID>,WTF::HashTraits<WebKit::NetworkCache::GlobalFrameID>,WTF::HashTraits<WTF::RefPtr<WebKit::NetworkCache::SpeculativeLoadManager::PendingFrameLoad,WTF::RawPtrTraits<WebKit::NetworkCache::SpeculativeLoadManager::PendingFrameLoad>,WTF::DefaultRefDerefTraits<WebKit::NetworkCache::SpeculativeLoadManager::PendingFrameLoad>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WebKit::NetworkCache::GlobalFrameID,WTF::RefPtr<WebKit::NetworkCache::SpeculativeLoadManager::PendingFrameLoad,WTF::RawPtrTraits<WebKit::NetworkCache::SpeculativeLoadManager::PendingFrameLoad>,WTF::DefaultRefDerefTraits<WebKit::NetworkCache::SpeculativeLoadManager::PendingFrameLoad>>,WTF::DefaultHash<WebKit::NetworkCache::GlobalFrameID>,WTF::HashTraits<WebKit::NetworkCache::GlobalFrameID>,WTF::HashTraits<WTF::RefPtr<WebKit::NetworkCache::SpeculativeLoadManager::PendingFrameLoad,WTF::RawPtrTraits<WebKit::NetworkCache::SpeculativeLoadManager::PendingFrameLoad>,WTF::DefaultRefDerefTraits<WebKit::NetworkCache::SpeculativeLoadManager::PendingFrameLoad>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WebKit::NetworkCache::GlobalFrameID>>,WebKit::NetworkCache::GlobalFrameID>((a1 + 40), a2);
  v17 = result;
  if (v15 != 1)
  {
    if (result)
    {
      ++*result;
      if (qword_1ED642710)
      {
        NonCompact = bmalloc::api::tzoneAllocateNonCompact(qword_1ED642710, v16);
      }

      else
      {
        NonCompact = WebKit::NetworkCache::SubresourceLoad::operatorNewSlow(0);
      }

      v19 = NonCompact;
      v20 = WebCore::ResourceRequest::ResourceRequest(NonCompact, this);
      WebKit::NetworkCache::Key::Key((v20 + 25), a4);
      v75[0] = v19;
      v21 = *(v17 + 108);
      if (v21 == *(v17 + 104))
      {
        v60 = WTF::Vector<WebKit::NetworkLoad *,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(v17 + 96, v21 + 1, v75);
        v62 = *(v17 + 108);
        v63 = *(v17 + 96);
        v64 = *v60;
        *v60 = 0;
        *(v63 + 8 * v62) = v64;
        v65 = v75[0];
        *(v17 + 108) = v62 + 1;
        v75[0] = 0;
        if (v65)
        {
          WebKit::NetworkCache::SubresourceLoad::~SubresourceLoad(v65, v61);
          bmalloc::api::tzoneFree(v66, v67);
        }
      }

      else
      {
        *(*(v17 + 96) + 8 * v21) = v19;
        *(v17 + 108) = v21 + 1;
      }

      PAL::HysteresisActivity::impulse((v17 + 120));

      return WTF::RefCounted<WebKit::NetworkCache::SpeculativeLoadManager::PendingFrameLoad>::deref(v17, v22);
    }

    return result;
  }

  if (result)
  {
    ++*result;
    WebKit::NetworkCache::SpeculativeLoadManager::PendingFrameLoad::markLoadAsCompleted(result);
    WTF::RefCounted<WebKit::NetworkCache::SpeculativeLoadManager::PendingFrameLoad>::deref(v17, v23);
  }

  v68 = a7;
  v69 = a5;
  v24 = *(a1 + 32);
  if (v24)
  {
    WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::NetworkCache::Storage>(v75, v24, *(a1 + 24));
    v25 = v75[0];
  }

  else
  {
    v25 = 0;
  }

  v70 = a6;
  WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(a1, a1);
  v26 = *a1;
  atomic_fetch_add(*a1, 1u);
  *v75 = *a2;
  v76 = *(a2 + 16);
  v27 = WTF::fastMalloc(0x28);
  *v27 = &unk_1F1108F60;
  *(v27 + 8) = v26;
  *(v27 + 16) = *v75;
  *(v27 + 32) = v76;
  v28 = WTF::fastMalloc(0xE0);
  *v28 = 1;
  *(v28 + 8) = v25;
  v29 = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::NetworkCache::Storage,(WTF::DestructionThread)2>::controlBlock(v25);
  *(v28 + 16) = WTF::ThreadSafeWeakPtrControlBlock::weakRef(v29);
  WebKit::NetworkCache::Key::Key((v28 + 24), a4);
  *(v28 + 96) = 0;
  *(v28 + 104) = 0;
  *(v28 + 112) = v27;
  v30 = WTF::fastMalloc(0x10);
  *v30 = &unk_1F1108DD0;
  v30[1] = v28;
  *&v71 = v30;
  PAL::HysteresisActivity::HysteresisActivity(v28 + 120, &v71, 5.0);
  v31 = v71;
  *&v71 = 0;
  if (v31)
  {
    (*(*v31 + 8))(v31);
  }

  *(v28 + 192) = 0;
  *(v28 + 200) = 0;
  *(v28 + 215) = 0;
  *(v28 + 208) = 0;
  PAL::HysteresisActivity::impulse((v28 + 120));
  WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::NetworkCache::Storage,(WTF::DestructionThread)2>::deref(v25);
  ++*v28;
  if (*(a2 + 8) == 0 || *(a2 + 8) == -1)
  {
    __break(0xC471u);
    JUMPOUT(0x19DD99D34);
  }

  v32 = *(a1 + 40);
  if (v32 || (WTF::HashTable<WebKit::NetworkCache::GlobalFrameID,WTF::KeyValuePair<WebKit::NetworkCache::GlobalFrameID,WTF::RefPtr<WebKit::NetworkCache::SpeculativeLoadManager::PendingFrameLoad,WTF::RawPtrTraits<WebKit::NetworkCache::SpeculativeLoadManager::PendingFrameLoad>,WTF::DefaultRefDerefTraits<WebKit::NetworkCache::SpeculativeLoadManager::PendingFrameLoad>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebKit::NetworkCache::GlobalFrameID,WTF::RefPtr<WebKit::NetworkCache::SpeculativeLoadManager::PendingFrameLoad,WTF::RawPtrTraits<WebKit::NetworkCache::SpeculativeLoadManager::PendingFrameLoad>,WTF::DefaultRefDerefTraits<WebKit::NetworkCache::SpeculativeLoadManager::PendingFrameLoad>>>>,WTF::DefaultHash<WebKit::NetworkCache::GlobalFrameID>,WTF::HashMap<WebKit::NetworkCache::GlobalFrameID,WTF::RefPtr<WebKit::NetworkCache::SpeculativeLoadManager::PendingFrameLoad,WTF::RawPtrTraits<WebKit::NetworkCache::SpeculativeLoadManager::PendingFrameLoad>,WTF::DefaultRefDerefTraits<WebKit::NetworkCache::SpeculativeLoadManager::PendingFrameLoad>>,WTF::DefaultHash<WebKit::NetworkCache::GlobalFrameID>,WTF::HashTraits<WebKit::NetworkCache::GlobalFrameID>,WTF::HashTraits<WTF::RefPtr<WebKit::NetworkCache::SpeculativeLoadManager::PendingFrameLoad,WTF::RawPtrTraits<WebKit::NetworkCache::SpeculativeLoadManager::PendingFrameLoad>,WTF::DefaultRefDerefTraits<WebKit::NetworkCache::SpeculativeLoadManager::PendingFrameLoad>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebKit::NetworkCache::GlobalFrameID>,WTF::FastMalloc>::expand((a1 + 40)), (v32 = *(a1 + 40)) != 0))
  {
    v33 = *(v32 - 8);
  }

  else
  {
    v33 = 0;
  }

  LODWORD(v75[0]) = -1640531527;
  WORD2(v75[0]) = 0;
  BYTE6(v75[0]) = 0;
  WTF::add<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PortIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(v75, (a2 + 8), (a2 + 16));
  v35 = WTF::SuperFastHash::hash(v75) & v33;
  v36 = (v32 + 32 * v35);
  v37 = *(v36 + 1);
  v38 = *(v36 + 2);
  if (*(v36 + 8) == 0)
  {
    v41 = v70;
  }

  else
  {
    v39 = 0;
    v40 = 1;
    v41 = v70;
    do
    {
      if (v37 == *(a2 + 8) && v38 == *(a2 + 16))
      {
        WTF::RefCounted<WebKit::NetworkCache::SpeculativeLoadManager::PendingFrameLoad>::deref(v28, v34);
        v44 = v68;
        goto LABEL_36;
      }

      if (v37 == -1)
      {
        v39 = v36;
      }

      v35 = (v35 + v40) & v33;
      v36 = (v32 + 32 * v35);
      v37 = *(v36 + 1);
      v38 = *(v36 + 2);
      ++v40;
    }

    while (*(v36 + 8) != 0);
    if (v39)
    {
      *v39 = 0u;
      v39[1] = 0u;
      --*(*(a1 + 40) - 16);
      v36 = v39;
    }
  }

  v42 = *(a2 + 16);
  *v36 = *a2;
  v43 = *(v36 + 3);
  *(v36 + 2) = v42;
  *(v36 + 3) = v28;
  v44 = v68;
  if (v43)
  {
    WTF::RefCounted<WebKit::NetworkCache::SpeculativeLoadManager::PendingFrameLoad>::deref(v43, v34);
  }

  v45 = *(a1 + 40);
  if (v45)
  {
    v46 = *(v45 - 12) + 1;
  }

  else
  {
    v46 = 1;
  }

  *(v45 - 12) = v46;
  v47 = (*(v45 - 16) + v46);
  v48 = *(v45 - 4);
  if (v48 > 0x400)
  {
    if (v48 > 2 * v47)
    {
      goto LABEL_36;
    }

LABEL_60:
    WTF::HashTable<WebKit::NetworkCache::GlobalFrameID,WTF::KeyValuePair<WebKit::NetworkCache::GlobalFrameID,WTF::RefPtr<WebKit::NetworkCache::SpeculativeLoadManager::PendingFrameLoad,WTF::RawPtrTraits<WebKit::NetworkCache::SpeculativeLoadManager::PendingFrameLoad>,WTF::DefaultRefDerefTraits<WebKit::NetworkCache::SpeculativeLoadManager::PendingFrameLoad>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebKit::NetworkCache::GlobalFrameID,WTF::RefPtr<WebKit::NetworkCache::SpeculativeLoadManager::PendingFrameLoad,WTF::RawPtrTraits<WebKit::NetworkCache::SpeculativeLoadManager::PendingFrameLoad>,WTF::DefaultRefDerefTraits<WebKit::NetworkCache::SpeculativeLoadManager::PendingFrameLoad>>>>,WTF::DefaultHash<WebKit::NetworkCache::GlobalFrameID>,WTF::HashMap<WebKit::NetworkCache::GlobalFrameID,WTF::RefPtr<WebKit::NetworkCache::SpeculativeLoadManager::PendingFrameLoad,WTF::RawPtrTraits<WebKit::NetworkCache::SpeculativeLoadManager::PendingFrameLoad>,WTF::DefaultRefDerefTraits<WebKit::NetworkCache::SpeculativeLoadManager::PendingFrameLoad>>,WTF::DefaultHash<WebKit::NetworkCache::GlobalFrameID>,WTF::HashTraits<WebKit::NetworkCache::GlobalFrameID>,WTF::HashTraits<WTF::RefPtr<WebKit::NetworkCache::SpeculativeLoadManager::PendingFrameLoad,WTF::RawPtrTraits<WebKit::NetworkCache::SpeculativeLoadManager::PendingFrameLoad>,WTF::DefaultRefDerefTraits<WebKit::NetworkCache::SpeculativeLoadManager::PendingFrameLoad>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebKit::NetworkCache::GlobalFrameID>,WTF::FastMalloc>::expand((a1 + 40));
    goto LABEL_36;
  }

  if (3 * v48 <= 4 * v47)
  {
    goto LABEL_60;
  }

LABEL_36:
  WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(a1, a1);
  v49 = *a1;
  atomic_fetch_add(*a1, 1u);
  v71 = *a2;
  v72 = *(a2 + 16);
  v50 = (*(this + 148) >> 2) & 1;
  v51 = WTF::fastMalloc(0x38);
  *v51 = &unk_1F1108F88;
  *(v51 + 8) = v49;
  *(v51 + 16) = v71;
  *(v51 + 32) = v72;
  *(v51 + 40) = v28;
  *(v51 + 48) = v50;
  *(v51 + 49) = v69;
  *(v51 + 51) = v41;
  *(v51 + 52) = v44;
  v52 = *(a1 + 32);
  if (v52)
  {
    WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::NetworkCache::Storage>(&v74, v52, *(a1 + 24));
    v53 = v74;
  }

  else
  {
    v53 = 0;
    v74 = 0;
  }

  if ((_MergedGlobals_80 & 1) == 0)
  {
    WTF::AtomStringImpl::add();
    qword_1ED642718 = v75[0];
    _MergedGlobals_80 = 1;
  }

  WebKit::NetworkCache::Key::Key(v75, a4, &qword_1ED642718, a4 + 3, a4 + 2, v53 + 28);
  v54 = v74;
  v55 = WTF::fastMalloc(0x10);
  *v55 = &unk_1F1109050;
  v55[1] = v51;
  v73 = v55;
  WebKit::NetworkCache::Storage::retrieve(v54, v75, 2, &v73);
  if (v73)
  {
    (*(*v73 + 8))(v73);
  }

  v57 = v77;
  v77 = 0;
  if (v57 && atomic_fetch_add_explicit(v57, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v57, v56);
  }

  v58 = v76;
  v76 = 0;
  if (v58 && atomic_fetch_add_explicit(v58, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v58, v56);
  }

  v59 = v75[1];
  v75[1] = 0;
  if (v59 && atomic_fetch_add_explicit(v59, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v59, v56);
  }

  result = v75[0];
  v75[0] = 0;
  if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    result = WTF::StringImpl::destroy(result, v56);
  }

  if (v54)
  {
    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::NetworkCache::Storage,(WTF::DestructionThread)2>::deref(v54);
  }

  return result;
}

_BYTE *WebKit::NetworkCache::SpeculativeLoadManager::PendingFrameLoad::markLoadAsCompleted(_BYTE *this)
{
  if ((this[216] & 1) == 0)
  {
    v1 = this;
    this[216] = 1;
    WebKit::NetworkCache::SpeculativeLoadManager::PendingFrameLoad::saveToDiskIfReady(this);
    v2 = *(**(v1 + 14) + 16);

    return v2();
  }

  return this;
}

uint64_t WebKit::NetworkCache::SpeculativeLoadManager::registerMainResourceLoadResponse(uint64_t a1, const WebCore::ResourceRequest *a2, WebKit::NetworkCache::SpeculativeLoadManager *this, WebCore::ResourceResponseBase *a4)
{
  result = WebKit::NetworkCache::SpeculativeLoadManager::shouldRegisterLoad(this, a2);
  if (result)
  {
    result = WebCore::ResourceResponseBase::isRedirection(a4);
    if ((result & 1) == 0)
    {
      result = WTF::HashMap<WebKit::NetworkCache::GlobalFrameID,WTF::RefPtr<WebKit::NetworkCache::SpeculativeLoadManager::PendingFrameLoad,WTF::RawPtrTraits<WebKit::NetworkCache::SpeculativeLoadManager::PendingFrameLoad>,WTF::DefaultRefDerefTraits<WebKit::NetworkCache::SpeculativeLoadManager::PendingFrameLoad>>,WTF::DefaultHash<WebKit::NetworkCache::GlobalFrameID>,WTF::HashTraits<WebKit::NetworkCache::GlobalFrameID>,WTF::HashTraits<WTF::RefPtr<WebKit::NetworkCache::SpeculativeLoadManager::PendingFrameLoad,WTF::RawPtrTraits<WebKit::NetworkCache::SpeculativeLoadManager::PendingFrameLoad>,WTF::DefaultRefDerefTraits<WebKit::NetworkCache::SpeculativeLoadManager::PendingFrameLoad>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WebKit::NetworkCache::GlobalFrameID,WTF::RefPtr<WebKit::NetworkCache::SpeculativeLoadManager::PendingFrameLoad,WTF::RawPtrTraits<WebKit::NetworkCache::SpeculativeLoadManager::PendingFrameLoad>,WTF::DefaultRefDerefTraits<WebKit::NetworkCache::SpeculativeLoadManager::PendingFrameLoad>>,WTF::DefaultHash<WebKit::NetworkCache::GlobalFrameID>,WTF::HashTraits<WebKit::NetworkCache::GlobalFrameID>,WTF::HashTraits<WTF::RefPtr<WebKit::NetworkCache::SpeculativeLoadManager::PendingFrameLoad,WTF::RawPtrTraits<WebKit::NetworkCache::SpeculativeLoadManager::PendingFrameLoad>,WTF::DefaultRefDerefTraits<WebKit::NetworkCache::SpeculativeLoadManager::PendingFrameLoad>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WebKit::NetworkCache::GlobalFrameID>>,WebKit::NetworkCache::GlobalFrameID>((a1 + 40), a2);
      if (result)
      {
        v9 = result;
        ++*result;
        *(result + 218) = 1;
        v10 = *(result + 212);
        if (v10)
        {
          v11 = *(result + 200);
          v12 = 8 * v10;
          do
          {
            v13 = *v11++;
            (*(*v13 + 16))(v13);
            v12 -= 8;
          }

          while (v12);
        }

        return WTF::RefCounted<WebKit::NetworkCache::SpeculativeLoadManager::PendingFrameLoad>::deref(v9, v8);
      }
    }
  }

  return result;
}

WTF::StringImpl *WebKit::NetworkCache::SpeculativeLoadManager::addPreloadedEntry(unsigned int *a1, const WebKit::NetworkCache::Key **a2, __int128 *a3, uint64_t *a4)
{
  v67 = *MEMORY[0x1E69E9840];
  WebKit::NetworkCache::Key::Key(&v62, *a2);
  WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(a1, a1);
  v9 = *a1;
  v8 = (a1 + 16);
  atomic_fetch_add(v9, 1u);
  v54[0] = v9;
  WebKit::NetworkCache::Key::Key(&v54[1], &v62);
  v60 = *a3;
  v61 = *(a3 + 2);
  if (WebKit::NetworkCache::SpeculativeLoadManager::PreloadedEntry::s_heapRef)
  {
    NonCompact = bmalloc::api::tzoneAllocateNonCompact(WebKit::NetworkCache::SpeculativeLoadManager::PreloadedEntry::s_heapRef, v10);
  }

  else
  {
    NonCompact = WebKit::NetworkCache::SpeculativeLoadManager::PreloadedEntry::operatorNewSlow(0);
  }

  v12 = NonCompact;
  v13 = *a2;
  *a2 = 0;
  v14 = WTF::fastMalloc(0x70);
  v15 = v54[0];
  *v14 = &unk_1F1108E20;
  *(v14 + 8) = v15;
  *(v14 + 16) = v54[1];
  *(v14 + 24) = v55[0];
  v16 = v55[1];
  *v54 = 0u;
  *v55 = 0u;
  *(v14 + 32) = v16;
  v17 = v56;
  v56 = 0;
  *(v14 + 40) = v17;
  v18 = v57;
  v19 = v58;
  *(v14 + 80) = v59;
  *(v14 + 48) = v18;
  *(v14 + 64) = v19;
  v20 = v60;
  *(v14 + 104) = v61;
  *(v14 + 88) = v20;
  WebCore::TimerBase::TimerBase(v12);
  *v12 = &unk_1F10EB388;
  *(v12 + 48) = v14;
  WebCore::TimerBase::start();
  *(v12 + 64) = 0;
  *(v12 + 56) = v13;
  *(v12 + 264) = 0;
  if (*(a4 + 200) == 1)
  {
    WTF::URL::URL(v12 + 64, a4);
    WTF::URL::URL(v12 + 104, a4 + 5);
    *(v12 + 144) = a4[10];
    v22 = a4[11];
    a4[11] = 0;
    *(v12 + 152) = v22;
    *(v12 + 168) = 0;
    *(v12 + 160) = 0;
    WTF::VectorBuffer<unsigned char,0ul,WTF::FastMalloc>::adopt(v12 + 160, a4 + 12);
    *(v12 + 184) = 0;
    *(v12 + 176) = 0;
    WTF::VectorBuffer<unsigned char,0ul,WTF::FastMalloc>::adopt(v12 + 176, a4 + 14);
    *(v12 + 192) = 0;
    *(v12 + 200) = 0;
    WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt(v12 + 192, a4 + 32);
    v23 = *(a4 + 36);
    *(v12 + 212) = *(a4 + 148);
    *(v12 + 208) = v23;
    v24 = a4[19];
    a4[19] = 0;
    *(v12 + 216) = v24;
    v25 = a4[20];
    a4[20] = 0;
    *(v12 + 224) = v25;
    v26 = a4[21];
    a4[21] = 0;
    *(v12 + 232) = v26;
    v27 = a4[22];
    *(v12 + 248) = *(a4 + 184);
    *(v12 + 240) = v27;
    v28 = a4[24];
    a4[24] = 0;
    *(v12 + 256) = v28;
    *(v12 + 264) = 1;
  }

  v52 = v12;
  if (v64 == -1 || !v64)
  {
    __break(0xC471u);
    JUMPOUT(0x19DD9A3A8);
  }

  v29 = *v8;
  if (*v8 || (WTF::HashTable<WebKit::NetworkCache::Key,WTF::KeyValuePair<WebKit::NetworkCache::Key,std::unique_ptr<WebKit::NetworkCache::SpeculativeLoadManager::PreloadedEntry>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebKit::NetworkCache::Key,std::unique_ptr<WebKit::NetworkCache::SpeculativeLoadManager::PreloadedEntry>>>,WTF::DefaultHash<WebKit::NetworkCache::Key>,WTF::HashMap<WebKit::NetworkCache::Key,std::unique_ptr<WebKit::NetworkCache::SpeculativeLoadManager::PreloadedEntry>,WTF::DefaultHash<WebKit::NetworkCache::Key>,WTF::HashTraits<WebKit::NetworkCache::Key>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkCache::SpeculativeLoadManager::PreloadedEntry>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebKit::NetworkCache::Key>,WTF::FastMalloc>::expand(v8), (v29 = *v8) != 0))
  {
    v30 = *(v29 - 8);
  }

  else
  {
    v30 = 0;
  }

  v31 = 0;
  v32 = 1;
  v33 = v66;
  while (1)
  {
    v34 = v33 & v30;
    v35 = v29 + 80 * (v33 & v30);
    v36 = *(v35 + 16);
    if (!v36)
    {
      break;
    }

    if (v36 == -1)
    {
      v31 = v29 + 80 * v34;
    }

    else if (WebKit::NetworkCache::Key::operator==(v29 + 80 * v34, &v62, v21))
    {
      goto LABEL_20;
    }

    v33 = v32 + v34;
    ++v32;
  }

  if (v31)
  {
    *v31 = 0u;
    *(v31 + 16) = 0u;
    *(v31 + 72) = 0;
    --*(*v8 - 16);
    v35 = v31;
  }

  WebKit::NetworkCache::Key::operator=(v35, &v62);
  v37 = v52;
  v52 = 0;
  v53 = 0;
  std::unique_ptr<WebKit::NetworkCache::SpeculativeLoadManager::PreloadedEntry>::reset[abi:sn200100]((v35 + 72), v37);
  std::unique_ptr<WebKit::NetworkCache::SpeculativeLoadManager::PreloadedEntry>::reset[abi:sn200100](&v53, 0);
  v38 = *v8;
  if (*v8)
  {
    v39 = *(v38 - 12) + 1;
  }

  else
  {
    v39 = 1;
  }

  *(v38 - 12) = v39;
  v40 = (*(v38 - 16) + v39);
  v41 = *(v38 - 4);
  if (v41 > 0x400)
  {
    if (v41 > 2 * v40)
    {
      goto LABEL_20;
    }

LABEL_49:
    WTF::HashTable<WebKit::NetworkCache::Key,WTF::KeyValuePair<WebKit::NetworkCache::Key,std::unique_ptr<WebKit::NetworkCache::SpeculativeLoadManager::PreloadedEntry>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebKit::NetworkCache::Key,std::unique_ptr<WebKit::NetworkCache::SpeculativeLoadManager::PreloadedEntry>>>,WTF::DefaultHash<WebKit::NetworkCache::Key>,WTF::HashMap<WebKit::NetworkCache::Key,std::unique_ptr<WebKit::NetworkCache::SpeculativeLoadManager::PreloadedEntry>,WTF::DefaultHash<WebKit::NetworkCache::Key>,WTF::HashTraits<WebKit::NetworkCache::Key>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkCache::SpeculativeLoadManager::PreloadedEntry>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebKit::NetworkCache::Key>,WTF::FastMalloc>::expand(v8);
    goto LABEL_20;
  }

  if (3 * v41 <= 4 * v40)
  {
    goto LABEL_49;
  }

LABEL_20:
  std::unique_ptr<WebKit::NetworkCache::SpeculativeLoadManager::PreloadedEntry>::reset[abi:sn200100](&v52, 0);
  v43 = v56;
  v56 = 0;
  if (v43 && atomic_fetch_add_explicit(v43, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v43, v42);
  }

  v44 = v55[1];
  v55[1] = 0;
  if (v44 && atomic_fetch_add_explicit(v44, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v44, v42);
  }

  v45 = v55[0];
  v55[0] = 0;
  if (v45 && atomic_fetch_add_explicit(v45, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v45, v42);
  }

  v46 = v54[1];
  v54[1] = 0;
  if (v46 && atomic_fetch_add_explicit(v46, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v46, v42);
  }

  v47 = v54[0];
  v54[0] = 0;
  if (v47 && atomic_fetch_add(v47, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v47);
    WTF::fastFree(v47, v42);
  }

  v48 = v65;
  v65 = 0;
  if (v48 && atomic_fetch_add_explicit(v48, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v48, v42);
  }

  v49 = v64;
  v64 = 0;
  if (v49 && atomic_fetch_add_explicit(v49, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v49, v42);
  }

  v50 = v63;
  v63 = 0;
  if (v50 && atomic_fetch_add_explicit(v50, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v50, v42);
  }

  result = v62;
  v62 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v42);
    }
  }

  return result;
}

void WebKit::NetworkCache::Storage::retrieve(uint64_t a1, const WebKit::NetworkCache::Key *a2, int a3, uint64_t *a4)
{
  v81 = *MEMORY[0x1E69E9840];
  if (!*(a1 + 40))
  {
    memset(v79, 0, sizeof(v79));
    memset(object, 0, sizeof(object));
    v76 = 0u;
    memset(v77, 0, sizeof(v77));
    v75 = 0u;
    *v73 = 0u;
    v74 = 0u;
    *v72 = 0u;
    v70 = 0u;
    memset(v71, 0, sizeof(v71));
    v68 = 0u;
    v69 = 0u;
    v62 = *a4;
    *a4 = 0;
    (*(*v62 + 16))(v62, v72, &v68);
    (*(*v62 + 8))(v62);
    WebKit::NetworkCache::Storage::Record::~Record(v72, v63);
    return;
  }

  mayContain = WebKit::NetworkCache::Storage::mayContain(a1, a2);
  if ((mayContain & 1) == 0)
  {
    memset(v79, 0, sizeof(v79));
    memset(object, 0, sizeof(object));
    v76 = 0u;
    memset(v77, 0, sizeof(v77));
    v75 = 0u;
    *v73 = 0u;
    v74 = 0u;
    *v72 = 0u;
    v70 = 0u;
    memset(v71, 0, sizeof(v71));
    v68 = 0u;
    v69 = 0u;
    v29 = *a4;
    *a4 = 0;
    (*(*v29 + 16))(v29, v72, &v68);
    (*(*v29 + 8))(v29);
    goto LABEL_28;
  }

  v11 = *(a1 + 224);
  v12 = *(a1 + 232);
  if (v11 == v12)
  {
LABEL_10:
    v15 = *(a1 + 256);
    if (v15)
    {
      v16 = *(v15 - 4);
      v17 = (v15 + 16 * v16);
      if (*(v15 - 12))
      {
        v18 = *(a1 + 256);
        if (v16)
        {
          v19 = 16 * v16;
          v18 = *(a1 + 256);
          while ((*v18 + 1) <= 1)
          {
            v18 += 2;
            v19 -= 16;
            if (!v19)
            {
              v18 = v17;
              goto LABEL_17;
            }
          }
        }

        goto LABEL_17;
      }

      v18 = (v15 + 16 * v16);
    }

    else
    {
      v18 = 0;
      v16 = 0;
    }

    v17 = (v15 + 16 * v16);
LABEL_17:
    if (v15)
    {
      v20 = (v15 + 16 * *(v15 - 4));
    }

    else
    {
      v20 = 0;
    }

    while (v18 != v20)
    {
      v61 = WebKit::NetworkCache::Key::operator==(v18[1] + 8, a2, v10);
      if (v61)
      {
        WTF::RunLoop::mainSingleton(v61);
        WebKit::NetworkCache::Storage::Record::Record(v72, (v18[1] + 8));
        v64 = *a4;
        *a4 = 0;
        v80 = v64;
        WTF::Function<void ()(void)>::Function<BOOL WebKit::NetworkCache::retrieveFromMemory<WTF::SizedIteratorRange<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::WriteOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::NetworkCache::Storage::WriteOperation>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::WriteOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::WriteOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkCache::Storage::WriteOperation>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::HashTableValuesIterator<WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::WriteOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::WriteOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::NetworkCache::Storage::WriteOperation>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::WriteOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::NetworkCache::Storage::WriteOperation>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::WriteOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::WriteOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::NetworkCache::Storage::WriteOperation>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::WriteOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::WriteOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkCache::Storage::WriteOperation>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::WriteOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>,WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::WriteOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::NetworkCache::Storage::WriteOperation>>>>(WTF::SizedIteratorRange<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::WriteOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::NetworkCache::Storage::WriteOperation>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::WriteOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::WriteOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkCache::Storage::WriteOperation>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::HashTableValuesIterator<WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::WriteOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::WriteOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::NetworkCache::Storage::WriteOperation>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::WriteOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::NetworkCache::Storage::WriteOperation>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::WriteOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::WriteOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::NetworkCache::Storage::WriteOperation>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::WriteOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::WriteOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkCache::Storage::WriteOperation>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::WriteOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>,WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::WriteOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::NetworkCache::Storage::WriteOperation>>> const&,WebKit::NetworkCache::Key const&,WTF::CompletionHandler<BOOL ()(WebKit::NetworkCache::Storage::Record &&,WebKit::NetworkCache::Storage::Timings const&)> &)::{lambda(void)#1},void>( &v68,  v72);
        WTF::RunLoop::dispatch();
        v66 = v68;
        *&v68 = 0;
        if (v66)
        {
          (*(*v66 + 8))(v66);
        }

        WebKit::NetworkCache::retrieveFromMemory<WTF::SizedIteratorRange<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::WriteOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::NetworkCache::Storage::WriteOperation>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::WriteOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::WriteOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkCache::Storage::WriteOperation>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::HashTableValuesIterator<WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::WriteOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::WriteOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::NetworkCache::Storage::WriteOperation>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::WriteOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::NetworkCache::Storage::WriteOperation>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::WriteOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::WriteOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::NetworkCache::Storage::WriteOperation>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::WriteOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::WriteOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkCache::Storage::WriteOperation>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::WriteOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>,WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::WriteOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::NetworkCache::Storage::WriteOperation>>>>(WTF::SizedIteratorRange<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::WriteOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::NetworkCache::Storage::WriteOperation>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::WriteOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::WriteOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkCache::Storage::WriteOperation>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::HashTableValuesIterator<WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::WriteOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::WriteOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::NetworkCache::Storage::WriteOperation>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::WriteOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::NetworkCache::Storage::WriteOperation>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::WriteOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::WriteOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::NetworkCache::Storage::WriteOperation>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::WriteOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::WriteOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkCache::Storage::WriteOperation>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::WriteOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>,WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::WriteOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::NetworkCache::Storage::WriteOperation>>> const&,WebKit::NetworkCache::Key const&,WTF::CompletionHandler<BOOL ()(WebKit::NetworkCache::Storage::Record &&,WebKit::NetworkCache::Storage::Timings const&)> &)::{lambda(void)#1}::~CompletionHandler( v72,  v65);
        return;
      }

      do
      {
        v18 += 2;
      }

      while (v18 != v17 && (*v18 + 1) <= 1);
    }

    if (WebKit::NetworkCache::Storage::ReadOperation::s_heapRef)
    {
      NonCompact = bmalloc::api::tzoneAllocateNonCompact(WebKit::NetworkCache::Storage::ReadOperation::s_heapRef, v9);
    }

    else
    {
      NonCompact = WebKit::NetworkCache::Storage::ReadOperation::operatorNewSlow(0);
    }

    v22 = NonCompact;
    *NonCompact = WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>::generateIdentifierInternal();
    v23 = WebKit::NetworkCache::Key::Key((v22 + 1), a2);
    *(v22 + 20) = a3;
    v24 = *a4;
    *a4 = 0;
    v22[11] = v24;
    *(v22 + 48) = 1;
    *(v22 + 98) = 0;
    *(v22 + 13) = 0u;
    *(v22 + 15) = 0u;
    *(v22 + 17) = 0u;
    *(v22 + 19) = 0u;
    *(v22 + 163) = 0u;
    *(v22 + 23) = 0u;
    *(v22 + 25) = 0u;
    v22[38] = 0;
    v22[39] = 0;
    v22[37] = 0;
    *(v22 + 320) = 0;
    *(v22 + 328) = 0;
    *(v22 + 348) = 0;
    *(v22 + 288) = 0;
    *(v22 + 16) = 0u;
    *(v22 + 17) = 0u;
    *(v22 + 352) = 0;
    *(v22 + 372) = 0;
    v25 = *(a1 + 88);
    WTF::MonotonicTime::now(v23);
    v22[13] = v26;
    v22[20] = v25;
    v72[0] = 0;
    v67 = v22;
    v27 = *(a1 + 140);
    if (v27 == *(a1 + 136))
    {
      WTF::Vector<std::unique_ptr<WebKit::NetworkCache::Storage::ReadOperation>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,std::unique_ptr<WebKit::NetworkCache::Storage::ReadOperation>>(a1 + 128, &v67);
    }

    else
    {
      v28 = *(a1 + 128);
      v67 = 0;
      *(v28 + 8 * v27) = v22;
      *(a1 + 140) = v27 + 1;
    }

    if (v27)
    {
      v35 = *(a1 + 140);
      do
      {
        v36 = v27 - 1;
        v37 = (v27 - 1) >> 1;
        if (v37 >= v35 || v27 >= v35)
        {
          __break(0xC471u);
          JUMPOUT(0x19DD9AAC8);
        }

        v38 = *(a1 + 128);
        v39 = *(v38 + 8 * v37);
        v40 = *(v39 + 80);
        v41 = *(v38 + 8 * v27);
        v42 = *(v41 + 80);
        if (v40 == v42)
        {
          if (*v39 < *v41)
          {
            break;
          }
        }

        else if (v40 > v42)
        {
          break;
        }

        *(v38 + 8 * v37) = v41;
        *(v38 + 8 * v27) = v39;
        v27 = (v27 - 1) >> 1;
      }

      while (v36 > 1);
    }

    std::unique_ptr<WebKit::NetworkCache::Storage::ReadOperation>::reset[abi:sn200100](&v67, 0);
    WebKit::NetworkCache::Storage::dispatchPendingReadOperations(a1);
    std::unique_ptr<WebKit::NetworkCache::Storage::ReadOperation>::reset[abi:sn200100](v72, 0);
    return;
  }

  v13 = *(a1 + 248);
  while (1)
  {
    if (v11 >= v13)
    {
      __break(1u);
LABEL_67:
      (*(*mayContain + 8))(mayContain);
      goto LABEL_60;
    }

    v14 = *(a1 + 240);
    mayContain = WebKit::NetworkCache::Key::operator==(*(v14 + 8 * v11) + 8, a2, v10);
    if (mayContain)
    {
      break;
    }

    v13 = *(a1 + 248);
    v11 += v13 + 1;
    do
    {
      v11 -= v13;
    }

    while (v11 >= v13);
    if (v12 == v11)
    {
      goto LABEL_10;
    }
  }

  WTF::RunLoop::mainSingleton(mayContain);
  v43 = *(v14 + 8 * v11);
  WebKit::NetworkCache::Key::Key(v72, (v43 + 8));
  v44 = *(v43 + 88);
  *(&v76 + 1) = *(v43 + 80);
  v77[0] = v44;
  if (v44)
  {
    os_retain(v44);
  }

  v45 = *(v43 + 96);
  LOBYTE(v77[3]) = *(v43 + 112);
  *&v77[1] = v45;
  v46 = *(v43 + 120);
  object[0] = v46;
  if (v46)
  {
    os_retain(v46);
  }

  v47 = *(v43 + 128);
  LOBYTE(object[3]) = *(v43 + 144);
  *&object[1] = v47;
  v48 = *(v43 + 165);
  *v79 = *(v43 + 152);
  *&v79[13] = v48;
  v49 = *a4;
  *a4 = 0;
  v80 = v49;
  v50 = WTF::fastMalloc(0xB8);
  *v50 = &unk_1F1109370;
  *(v50 + 8) = v72[0];
  *(v50 + 16) = v72[1];
  *(v50 + 24) = v73[0];
  v51 = v73[1];
  *v72 = 0u;
  *v73 = 0u;
  *(v50 + 32) = v51;
  v52 = v74;
  v53 = v75;
  *(v50 + 72) = v76;
  *(v50 + 56) = v53;
  *(v50 + 40) = v52;
  *(v50 + 80) = *(&v76 + 1);
  v54 = v77[0];
  *(v50 + 88) = v77[0];
  if (v54)
  {
    os_retain(v54);
  }

  v55 = *&v77[1];
  *(v50 + 112) = v77[3];
  *(v50 + 96) = v55;
  v56 = object[0];
  *(v50 + 120) = object[0];
  if (v56)
  {
    os_retain(v56);
  }

  v57 = *&object[1];
  *(v50 + 144) = object[3];
  *(v50 + 128) = v57;
  v58 = *v79;
  *(v50 + 165) = *&v79[13];
  *(v50 + 152) = v58;
  v59 = v80;
  v80 = 0;
  *(v50 + 176) = v59;
  WTF::RunLoop::dispatch();
  mayContain = v50;
  *&v68 = 0;
  if (v50)
  {
    goto LABEL_67;
  }

LABEL_60:
  v60 = v80;
  v80 = 0;
  if (v60)
  {
    (*(*v60 + 8))(v60);
  }

LABEL_28:
  if (object[0])
  {
    os_release(object[0]);
  }

  if (v77[0])
  {
    os_release(v77[0]);
  }

  v31 = v73[1];
  v73[1] = 0;
  if (v31 && atomic_fetch_add_explicit(v31, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v31, v30);
  }

  v32 = v73[0];
  v73[0] = 0;
  if (v32 && atomic_fetch_add_explicit(v32, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v32, v30);
  }

  v33 = v72[1];
  v72[1] = 0;
  if (v33 && atomic_fetch_add_explicit(v33, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v33, v30);
  }

  v34 = v72[0];
  v72[0] = 0;
  if (v34 && atomic_fetch_add_explicit(v34, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v34, v30);
  }
}

uint64_t WebKit::NetworkCache::SpeculativeLoadManager::satisfyPendingRequests(WebKit::NetworkCache::SpeculativeLoadManager *this, const WebKit::NetworkCache::Key *a2, WebKit::NetworkCache::Entry *a3)
{
  v3 = (this + 56);
  if (!*(this + 7))
  {
    return 0;
  }

  v6 = WTF::HashTable<WebKit::NetworkCache::Key,WTF::KeyValuePair<WebKit::NetworkCache::Key,std::unique_ptr<WTF::Vector<WTF::Function<void ()(std::unique_ptr<WebKit::NetworkCache::Entry>)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebKit::NetworkCache::Key,std::unique_ptr<WTF::Vector<WTF::Function<void ()(std::unique_ptr<WebKit::NetworkCache::Entry>)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>>,WTF::DefaultHash<WebKit::NetworkCache::Key>,WTF::HashMap<WebKit::NetworkCache::Key,std::unique_ptr<WTF::Vector<WTF::Function<void ()(std::unique_ptr<WebKit::NetworkCache::Entry>)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::DefaultHash<WebKit::NetworkCache::Key>,WTF::HashTraits<WebKit::NetworkCache::Key>,WTF::HashTraits<std::unique_ptr<WTF::Vector<WTF::Function<void ()(std::unique_ptr<WebKit::NetworkCache::Entry>)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebKit::NetworkCache::Key>,WTF::FastMalloc>::lookup<WTF::IdentityHashTranslator<WTF::HashMap<WebKit::NetworkCache::Key,std::unique_ptr<WTF::Vector<WTF::Function<void ()(std::unique_ptr<WebKit::NetworkCache::Entry>)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::DefaultHash<WebKit::NetworkCache::Key>,WTF::HashTraits<WebKit::NetworkCache::Key>,WTF::HashTraits<std::unique_ptr<WTF::Vector<WTF::Function<void ()(std::unique_ptr<WebKit::NetworkCache::Entry>)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WebKit::NetworkCache::Key>>,(WTF::ShouldValidateKey)1,WebKit::NetworkCache::Key>(this + 7, a2, a3);
  v7 = *v3;
  if (!v6)
  {
    if (!v7)
    {
      return 0;
    }

    v8 = v7 + 80 * *(v7 - 4);
    goto LABEL_20;
  }

  v8 = v6;
  if (v7)
  {
LABEL_20:
    v9 = v7 + 80 * *(v7 - 4);
    goto LABEL_6;
  }

  v9 = 0;
LABEL_6:
  if (v9 == v8)
  {
    return 0;
  }

  v10 = *(v8 + 72);
  *(v8 + 72) = 0;
  WTF::HashMap<WebKit::NetworkCache::Key,std::unique_ptr<WTF::Vector<WTF::Function<void ()(std::unique_ptr<WebKit::NetworkCache::Entry>)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::DefaultHash<WebKit::NetworkCache::Key>,WTF::HashTraits<WebKit::NetworkCache::Key>,WTF::HashTraits<std::unique_ptr<WTF::Vector<WTF::Function<void ()(std::unique_ptr<WebKit::NetworkCache::Entry>)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::remove(v3, v8);
  if (!v10)
  {
    return 0;
  }

  v12 = *(v10 + 12);
  if (v12)
  {
    v13 = *v10;
    v14 = 8 * v12;
    do
    {
      if (a3)
      {
        v15 = WebKit::NetworkCache::Entry::operator new(0x308, v11);
        v21 = WebKit::NetworkCache::Entry::Entry(v15, a3);
      }

      else
      {
        v21 = 0;
      }

      WTF::Function<void ()(std::unique_ptr<WebKit::NetworkCache::Entry>)>::operator()(*v13, &v21);
      v16 = v21;
      v21 = 0;
      if (v16)
      {
        WebKit::NetworkCache::Entry::~Entry(v16, v11);
        bmalloc::api::tzoneFree(v17, v18);
      }

      ++v13;
      v14 -= 8;
    }

    while (v14);
  }

  v19 = WTF::Vector<WTF::Function<void ()(std::unique_ptr<WebKit::NetworkCache::Entry>)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v10, v11);
  WTF::fastFree(v19, v20);
  return 1;
}

WebKit::NetworkCache::Entry *WTF::Function<void ()(std::unique_ptr<WebKit::NetworkCache::Entry>)>::operator()(uint64_t a1, WebKit::NetworkCache::Entry **a2)
{
  v2 = *a2;
  *a2 = 0;
  v7 = v2;
  (*(*a1 + 16))(a1, &v7);
  result = v7;
  v7 = 0;
  if (result)
  {
    WebKit::NetworkCache::Entry::~Entry(result, v3);
    return bmalloc::api::tzoneFree(v5, v6);
  }

  return result;
}

uint64_t WebKit::NetworkCache::constructRevalidationRequest(WebKit::NetworkCache *this, atomic_uint **a2, const WebKit::NetworkCache::SubresourceInfo *a3, const WebKit::NetworkCache::Entry *a4)
{
  WTF::URL::URL(v19, a2 + 2);
  WebCore::ResourceRequestBase::ResourceRequestBase(this, v19, 0);
  *(this + 24) = 0;
  v9 = v19[0];
  v19[0] = 0;
  if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v9, v8);
  }

  WTF::Vector<WebCore::HTTPHeaderMap::CommonHeader,0ul,WTF::CrashOnOverflow,6ul,WTF::FastMalloc>::Vector(v17, a3 + 136);
  WTF::Vector<WebCore::HTTPHeaderMap::UncommonHeader,0ul,WTF::CrashOnOverflow,0ul,WTF::FastMalloc>::Vector(v18, a3 + 152);
  WebCore::ResourceRequestBase::setHTTPHeaderFields();
  WTF::Vector<WebCore::HTTPHeaderMap::UncommonHeader,0ul,WTF::CrashOnOverflow,0ul,WTF::FastMalloc>::~Vector(v18, v10);
  WTF::Vector<WebCore::HTTPHeaderMap::CommonHeader,0ul,WTF::CrashOnOverflow,6ul,WTF::FastMalloc>::~Vector(v17, v11);
  WebCore::ResourceRequestBase::setFirstPartyForCookies(this, (a3 + 96));
  WebCore::ResourceRequestBase::setIsSameSite(this);
  WebCore::ResourceRequestBase::setIsTopSite(this);
  WebCore::ResourceRequestBase::setIsAppInitiated(this);
  if (*a2 && (*a2)[1])
  {
    WebCore::ResourceRequestBase::setCachePartition(this, a2);
  }

  WebCore::ResourceRequestBase::makeUnconditional(this);
  if (a4)
  {
    WebCore::ResourceResponseBase::httpHeaderField();
    if (v19[0] && *(v19[0] + 1))
    {
      WebCore::ResourceRequestBase::setHTTPHeaderField();
    }

    WebCore::ResourceResponseBase::httpHeaderField();
    v13 = v16;
    if (v16)
    {
      if (*(v16 + 1))
      {
        WebCore::ResourceRequestBase::setHTTPHeaderField();
        v13 = v16;
      }

      if (atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v13, v12);
      }
    }

    v14 = v19[0];
    v19[0] = 0;
    if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v14, v12);
    }
  }

  return WebCore::ResourceRequestBase::setPriority();
}

WTF::StringImpl ***WebKit::NetworkCache::SpeculativeLoadManager::revalidateSubresource(WTF::StringImpl ***result, uint64_t a2, const WebKit::NetworkCache::Entry **a3, void *a4, __int16 a5, char a6, __int16 a7)
{
  v11 = result;
  v159 = *MEMORY[0x1E69E9840];
  v12 = *(a2 + 24);
  if (v12 && *(v12 + 4))
  {
    return result;
  }

  v13 = WTF::HashMap<WebKit::NetworkCache::GlobalFrameID,WTF::RefPtr<WebKit::NetworkCache::SpeculativeLoadManager::PendingFrameLoad,WTF::RawPtrTraits<WebKit::NetworkCache::SpeculativeLoadManager::PendingFrameLoad>,WTF::DefaultRefDerefTraits<WebKit::NetworkCache::SpeculativeLoadManager::PendingFrameLoad>>,WTF::DefaultHash<WebKit::NetworkCache::GlobalFrameID>,WTF::HashTraits<WebKit::NetworkCache::GlobalFrameID>,WTF::HashTraits<WTF::RefPtr<WebKit::NetworkCache::SpeculativeLoadManager::PendingFrameLoad,WTF::RawPtrTraits<WebKit::NetworkCache::SpeculativeLoadManager::PendingFrameLoad>,WTF::DefaultRefDerefTraits<WebKit::NetworkCache::SpeculativeLoadManager::PendingFrameLoad>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WebKit::NetworkCache::GlobalFrameID,WTF::RefPtr<WebKit::NetworkCache::SpeculativeLoadManager::PendingFrameLoad,WTF::RawPtrTraits<WebKit::NetworkCache::SpeculativeLoadManager::PendingFrameLoad>,WTF::DefaultRefDerefTraits<WebKit::NetworkCache::SpeculativeLoadManager::PendingFrameLoad>>,WTF::DefaultHash<WebKit::NetworkCache::GlobalFrameID>,WTF::HashTraits<WebKit::NetworkCache::GlobalFrameID>,WTF::HashTraits<WTF::RefPtr<WebKit::NetworkCache::SpeculativeLoadManager::PendingFrameLoad,WTF::RawPtrTraits<WebKit::NetworkCache::SpeculativeLoadManager::PendingFrameLoad>,WTF::DefaultRefDerefTraits<WebKit::NetworkCache::SpeculativeLoadManager::PendingFrameLoad>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WebKit::NetworkCache::GlobalFrameID>>,WebKit::NetworkCache::GlobalFrameID>(result + 5, a4);
  v14 = v13;
  if (v13)
  {
    ++*v13;
    if ((*(v13 + 218) & 1) == 0)
    {
      WebCore::RegistrableDomain::RegistrableDomain(&v118, (a2 + 96));
      v119[0] = 0;
      WTF::URL::invalidate(v119);
      MEMORY[0x19EB01E00](v131, v119, a2 + 16, 0);
      v58 = WTF::URL::host(v131);
      v61 = WebCore::RegistrableDomain::matches(&v118, v58, v59 & 0xFFFFFFFFFFLL);
      v62 = v131[0];
      v131[0] = 0;
      if (v62 && atomic_fetch_add_explicit(v62, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v62, v60);
      }

      v63 = v119[0];
      v119[0] = 0;
      if (v63 && atomic_fetch_add_explicit(v63, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v63, v60);
      }

      v64 = v118;
      v118 = 0;
      if (v64 && atomic_fetch_add_explicit(v64, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v64, v60);
      }

      if (v61)
      {
        v65 = *(*(v11 + 16) + 8);
        if (!v65)
        {
          __break(0xC471u);
          JUMPOUT(0x19DD9B9FCLL);
        }

        v67 = *(v65 + 8);
        v66 = v65 + 8;
        v68 = *a3;
        *v66 = v67 + 1;
        v69 = *(v66 + 16);
        v131[0] = *(v66 + 72);
        v70 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((v69 + 240), v131);
        if (!v70)
        {
          goto LABEL_65;
        }

        v72 = v70;
        ++*(v70 + 16);
        *v131 = 0u;
        memset(v132, 0, 28);
        WebCore::ResourceRequest::ResourceRequest(v133);
        LODWORD(v145) = 65537;
        WORD2(v145) = 1;
        BYTE6(v145) = 0;
        LOBYTE(v146) = 0;
        v151 = 0;
        v154 = 0;
        v155 = 0;
        v152 = 0u;
        v156 = 16777472;
        v157 = 0;
        v158 = 0;
        *v131 = *a4;
        v132[0] = a4[2];
        v153 = 1;
        WebKit::NetworkCache::constructRevalidationRequest(v119, a2, a2, v68);
        WebCore::ResourceRequestBase::RequestData::operator=(v133, v119);
        v74 = v125;
        v125 = 0;
        v75 = *&v142[8];
        *&v142[8] = v74;
        if (v75 && atomic_fetch_add_explicit(v75, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v75, v73);
        }

        v76 = v126;
        v126 = 0;
        v77 = *&v142[16];
        *&v142[16] = v76;
        if (v77 && atomic_fetch_add_explicit(v77, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v77, v73);
        }

        v78 = v127;
        v127 = 0;
        v79 = *&v142[24];
        *&v142[24] = v78;
        if (v79)
        {
          WTF::RefCounted<WebCore::FormData>::deref(v79);
        }

        v143 = v128;
        LOBYTE(v144) = v129;
        v80 = cf;
        cf = 0;
        v81 = *(&v144 + 1);
        *(&v144 + 1) = v80;
        if (v81)
        {
          CFRelease(v81);
          v82 = cf;
          cf = 0;
          if (v82)
          {
            CFRelease(v82);
          }
        }

        v83 = v127;
        v127 = 0;
        if (v83)
        {
          WTF::RefCounted<WebCore::FormData>::deref(v83);
        }

        v84 = v126;
        v126 = 0;
        if (v84 && atomic_fetch_add_explicit(v84, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v84, v73);
        }

        v85 = v125;
        v125 = 0;
        if (v85 && atomic_fetch_add_explicit(v85, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v85, v73);
        }

        WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v124, v73);
        WTF::Vector<WebCore::HTTPHeaderMap::UncommonHeader,0ul,WTF::CrashOnOverflow,0ul,WTF::FastMalloc>::~Vector(v123, v86);
        WTF::Vector<WebCore::HTTPHeaderMap::CommonHeader,0ul,WTF::CrashOnOverflow,6ul,WTF::FastMalloc>::~Vector(v122, v87);
        v89 = v121;
        v121 = 0;
        if (v89 && atomic_fetch_add_explicit(v89, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v89, v88);
        }

        v90 = v120;
        v120 = 0;
        if (v90 && atomic_fetch_add_explicit(v90, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v90, v88);
        }

        v91 = v119[0];
        v119[0] = 0;
        if (v91 && atomic_fetch_add_explicit(v91, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v91, v88);
        }

        LOWORD(v156) = a5;
        v92 = WTF::fastMalloc(0x30);
        v93 = WebKit::PreconnectTask::PreconnectTask(v92, v72, v131);
        v119[0] = 0;
        WebKit::PreconnectTask::start(v93, v119, 60.0);
        v95 = v119[0];
        v119[0] = 0;
        if (v95)
        {
          (*(*v95 + 8))(v95);
        }

        if (*(v92 + 20) == 1)
        {
          (*(*v92 + 24))(v92);
        }

        else
        {
          --*(v92 + 20);
        }

        WebKit::NetworkLoadParameters::~NetworkLoadParameters(v131, v94);
        v96 = v72[4];
        if (v96)
        {
          v72[4] = v96 - 1;
LABEL_65:
          WTF::RefCounted<WebKit::NetworkCache::Cache>::deref(v66, v71);
          WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(v11, v11);
          v97 = *v11;
          atomic_fetch_add(*v11, 1u);
          v131[0] = v97;
          WebKit::NetworkCache::Key::Key(&v131[1], a2);
          *v134 = *(a2 + 72);
          *&v134[15] = *(a2 + 87);
          v98 = *(a2 + 96);
          if (v98)
          {
            atomic_fetch_add_explicit(v98, 2u, memory_order_relaxed);
          }

          v135 = v98;
          v99 = *(a2 + 120);
          v136 = *(a2 + 104);
          v137 = v99;
          WTF::Vector<WebCore::HTTPHeaderMap::CommonHeader,0ul,WTF::CrashOnOverflow,6ul,WTF::FastMalloc>::Vector(v138, a2 + 136);
          WTF::Vector<WebCore::HTTPHeaderMap::UncommonHeader,0ul,WTF::CrashOnOverflow,0ul,WTF::FastMalloc>::Vector(&v139, a2 + 152);
          BYTE8(v140) = *(a2 + 168);
          v100 = *a3;
          *a3 = 0;
          v141 = v100;
          *v142 = *a4;
          *&v142[16] = a4[2];
          *&v142[24] = a5;
          v142[26] = a6;
          *&v142[28] = a7;
          v101 = WTF::fastMalloc(0xE8);
          *v101 = &unk_1F1108FD8;
          v102 = v131[0];
          v131[0] = 0;
          *(v101 + 8) = v102;
          WebKit::NetworkCache::Key::Key((v101 + 16), &v131[1]);
          v103 = *v134;
          *(v101 + 103) = *&v134[15];
          *(v101 + 88) = v103;
          v104 = v135;
          if (v135)
          {
            atomic_fetch_add_explicit(v135, 2u, memory_order_relaxed);
          }

          *(v101 + 112) = v104;
          v105 = v136;
          *(v101 + 136) = v137;
          *(v101 + 120) = v105;
          WTF::Vector<WebCore::HTTPHeaderMap::CommonHeader,0ul,WTF::CrashOnOverflow,6ul,WTF::FastMalloc>::Vector(v101 + 152, v138);
          WTF::Vector<WebCore::HTTPHeaderMap::UncommonHeader,0ul,WTF::CrashOnOverflow,0ul,WTF::FastMalloc>::Vector(v101 + 168, &v139);
          *(v101 + 184) = BYTE8(v140);
          v106 = v141;
          v141 = 0;
          *(v101 + 192) = v106;
          v107 = *v142;
          *(v101 + 214) = *&v142[14];
          *(v101 + 200) = v107;
          v119[0] = v101;
          v108 = *(v14 + 212);
          if (v108 == *(v14 + 208))
          {
            v110 = WTF::Vector<WTF::Function<void ()(void)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(v14 + 200, v108 + 1, v119);
            v108 = *(v14 + 212);
            v109 = (*(v14 + 200) + 8 * v108);
            v101 = *v110;
          }

          else
          {
            v109 = (*(v14 + 200) + 8 * v108);
            v110 = v119;
          }

          *v110 = 0;
          *v109 = v101;
          *(v14 + 212) = v108 + 1;
          v111 = v119[0];
          v119[0] = 0;
          if (v111)
          {
            (*(*v111 + 8))(v111);
          }

          WebKit::NetworkCache::SpeculativeLoadManager::revalidateSubresource(WebKit::NetworkCache::SubresourceInfo const&,std::unique_ptr<WebKit::NetworkCache::Entry>,WebKit::NetworkCache::GlobalFrameID const&,std::optional<WebKit::NavigatingToAppBoundDomain>,BOOL,WTF::OptionSet<WebCore::AdvancedPrivacyProtections>)::$_0::~$_0(v131);
          return WTF::RefCounted<WebKit::NetworkCache::SpeculativeLoadManager::PendingFrameLoad>::deref(v14, v55);
        }

LABEL_123:
        __break(0xC471u);
        JUMPOUT(0x19DD9B99CLL);
      }
    }
  }

  WebKit::NetworkCache::constructRevalidationRequest(v119, a2, a2, *a3);
  v15 = *(*(v11 + 16) + 8);
  if (!v15)
  {
    goto LABEL_123;
  }

  ++*(v15 + 8);
  v16 = *a3;
  *a3 = 0;
  v117 = v16;
  WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(v11, v11);
  v17 = *v11;
  atomic_fetch_add(*v11, 1u);
  v131[0] = v17;
  WebKit::NetworkCache::Key::Key(&v131[1], a2);
  WebCore::ResourceRequest::ResourceRequest(v134, v119);
  v149 = *a4;
  v150 = a4[2];
  v18 = WTF::fastMalloc(0x138);
  *v18 = &unk_1F1109000;
  v19 = v131[0];
  v131[0] = 0;
  *(v18 + 8) = v19;
  WebKit::NetworkCache::Key::Key((v18 + 16), &v131[1]);
  WTF::URL::URL(v18 + 88, v134);
  WTF::URL::URL(v18 + 128, &v136 + 1);
  *&v20 = 0;
  *(v18 + 168) = v139;
  *(v18 + 176) = v140;
  v21 = v141;
  v141 = 0;
  v140 = 0u;
  *(v18 + 192) = v21;
  v22 = *v142;
  v23 = *&v142[8];
  *v142 = v20;
  *(v18 + 200) = v22;
  *(v18 + 208) = v23;
  v24 = *&v142[16];
  v25 = *&v142[24];
  *&v142[16] = v20;
  *(v18 + 216) = v24;
  *(v18 + 224) = v25;
  LODWORD(v24) = v143;
  *(v18 + 236) = BYTE4(v143);
  *(v18 + 232) = v24;
  *(v18 + 240) = v144;
  v26 = *(&v144 + 1);
  v144 = 0u;
  *(v18 + 248) = v26;
  *(v18 + 256) = v145;
  v27 = v146;
  *(v18 + 272) = v147;
  *(v18 + 264) = v27;
  v28 = v148;
  v145 = 0;
  v148 = 0;
  *(v18 + 280) = v28;
  v29 = v149;
  *(v18 + 304) = v150;
  *(v18 + 288) = v29;
  v116 = v18;
  WebKit::NetworkCache::SpeculativeLoad::create(v15, a4, v119, &v117, a5, a6, a7, &v116, &v118);
  if (v116)
  {
    (*(*v116 + 8))(v116);
  }

  WebKit::NetworkCache::SpeculativeLoadManager::revalidateSubresource(WebKit::NetworkCache::SubresourceInfo const&,std::unique_ptr<WebKit::NetworkCache::Entry>,WebKit::NetworkCache::GlobalFrameID const&,std::optional<WebKit::NavigatingToAppBoundDomain>,BOOL,WTF::OptionSet<WebCore::AdvancedPrivacyProtections>)::$_1::~$_1(v131, v30);
  if (v117)
  {
    WebKit::NetworkCache::Entry::~Entry(v117, v31);
    bmalloc::api::tzoneFree(v112, v113);
  }

  WTF::RefCounted<WebKit::NetworkCache::Cache>::deref((v15 + 8), v31);
  v33 = *(a2 + 16);
  if (v33 == -1)
  {
    __break(0xC471u);
    JUMPOUT(0x19DD9B9BCLL);
  }

  if (!v33)
  {
    __break(0xC471u);
    JUMPOUT(0x19DD9B9DCLL);
  }

  v34 = *(v11 + 48);
  if (v34 || (WTF::HashTable<WebKit::NetworkCache::Key,WTF::KeyValuePair<WebKit::NetworkCache::Key,WTF::RefPtr<WebKit::NetworkCache::SpeculativeLoad,WTF::RawPtrTraits<WebKit::NetworkCache::SpeculativeLoad>,WTF::DefaultRefDerefTraits<WebKit::NetworkCache::SpeculativeLoad>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebKit::NetworkCache::Key,WTF::RefPtr<WebKit::NetworkCache::SpeculativeLoad,WTF::RawPtrTraits<WebKit::NetworkCache::SpeculativeLoad>,WTF::DefaultRefDerefTraits<WebKit::NetworkCache::SpeculativeLoad>>>>,WTF::DefaultHash<WebKit::NetworkCache::Key>,WTF::HashMap<WebKit::NetworkCache::Key,WTF::RefPtr<WebKit::NetworkCache::SpeculativeLoad,WTF::RawPtrTraits<WebKit::NetworkCache::SpeculativeLoad>,WTF::DefaultRefDerefTraits<WebKit::NetworkCache::SpeculativeLoad>>,WTF::DefaultHash<WebKit::NetworkCache::Key>,WTF::HashTraits<WebKit::NetworkCache::Key>,WTF::HashTraits<WTF::RefPtr<WebKit::NetworkCache::SpeculativeLoad,WTF::RawPtrTraits<WebKit::NetworkCache::SpeculativeLoad>,WTF::DefaultRefDerefTraits<WebKit::NetworkCache::SpeculativeLoad>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebKit::NetworkCache::Key>,WTF::FastMalloc>::expand((v11 + 48)), (v34 = *(v11 + 48)) != 0))
  {
    v35 = *(v34 - 8);
  }

  else
  {
    v35 = 0;
  }

  v36 = 0;
  v37 = *(a2 + 32);
  for (i = 1; ; ++i)
  {
    v39 = v37 & v35;
    v40 = v34 + 80 * (v37 & v35);
    v41 = *(v40 + 16);
    if (!v41)
    {
      break;
    }

    if (v41 == -1)
    {
      v36 = v34 + 80 * v39;
    }

    else if (WebKit::NetworkCache::Key::operator==(v34 + 80 * v39, a2, v32))
    {
      goto LABEL_27;
    }

    v37 = i + v39;
  }

  if (v36)
  {
    *v36 = 0u;
    *(v36 + 16) = 0u;
    *(v36 + 72) = 0;
    --*(*(v11 + 48) - 16);
    v40 = v36;
  }

  WebKit::NetworkCache::Key::operator=(v40, a2);
  v43 = v118;
  v118 = 0;
  v44 = *(v40 + 72);
  *(v40 + 72) = v43;
  if (v44)
  {
    if (v44[5] == 1)
    {
      (*(*v44 + 24))(v44);
    }

    else
    {
      --v44[5];
    }
  }

  v45 = *(v11 + 48);
  if (v45)
  {
    v46 = *(v45 - 12) + 1;
  }

  else
  {
    v46 = 1;
  }

  *(v45 - 12) = v46;
  v47 = (*(v45 - 16) + v46);
  v48 = *(v45 - 4);
  if (v48 > 0x400)
  {
    if (v48 > 2 * v47)
    {
      goto LABEL_27;
    }
  }

  else if (3 * v48 > 4 * v47)
  {
    goto LABEL_27;
  }

  WTF::HashTable<WebKit::NetworkCache::Key,WTF::KeyValuePair<WebKit::NetworkCache::Key,WTF::RefPtr<WebKit::NetworkCache::SpeculativeLoad,WTF::RawPtrTraits<WebKit::NetworkCache::SpeculativeLoad>,WTF::DefaultRefDerefTraits<WebKit::NetworkCache::SpeculativeLoad>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebKit::NetworkCache::Key,WTF::RefPtr<WebKit::NetworkCache::SpeculativeLoad,WTF::RawPtrTraits<WebKit::NetworkCache::SpeculativeLoad>,WTF::DefaultRefDerefTraits<WebKit::NetworkCache::SpeculativeLoad>>>>,WTF::DefaultHash<WebKit::NetworkCache::Key>,WTF::HashMap<WebKit::NetworkCache::Key,WTF::RefPtr<WebKit::NetworkCache::SpeculativeLoad,WTF::RawPtrTraits<WebKit::NetworkCache::SpeculativeLoad>,WTF::DefaultRefDerefTraits<WebKit::NetworkCache::SpeculativeLoad>>,WTF::DefaultHash<WebKit::NetworkCache::Key>,WTF::HashTraits<WebKit::NetworkCache::Key>,WTF::HashTraits<WTF::RefPtr<WebKit::NetworkCache::SpeculativeLoad,WTF::RawPtrTraits<WebKit::NetworkCache::SpeculativeLoad>,WTF::DefaultRefDerefTraits<WebKit::NetworkCache::SpeculativeLoad>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebKit::NetworkCache::Key>,WTF::FastMalloc>::expand((v11 + 48));
LABEL_27:
  if (v118)
  {
    if (*(v118 + 5) == 1)
    {
      (*(*v118 + 24))();
    }

    else
    {
      --*(v118 + 5);
    }
  }

  v49 = cf;
  cf = 0;
  if (v49)
  {
    CFRelease(v49);
  }

  v50 = v127;
  v127 = 0;
  if (v50)
  {
    WTF::RefCounted<WebCore::FormData>::deref(v50);
  }

  v51 = v126;
  v126 = 0;
  if (v51 && atomic_fetch_add_explicit(v51, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v51, v42);
  }

  v52 = v125;
  v125 = 0;
  if (v52 && atomic_fetch_add_explicit(v52, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v52, v42);
  }

  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v124, v42);
  WTF::Vector<WebCore::HTTPHeaderMap::UncommonHeader,0ul,WTF::CrashOnOverflow,0ul,WTF::FastMalloc>::~Vector(v123, v53);
  WTF::Vector<WebCore::HTTPHeaderMap::CommonHeader,0ul,WTF::CrashOnOverflow,6ul,WTF::FastMalloc>::~Vector(v122, v54);
  v56 = v121;
  v121 = 0;
  if (v56 && atomic_fetch_add_explicit(v56, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v56, v55);
  }

  v57 = v120;
  v120 = 0;
  if (v57 && atomic_fetch_add_explicit(v57, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v57, v55);
  }

  result = v119[0];
  v119[0] = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      result = WTF::StringImpl::destroy(result, v55);
    }
  }

  if (v14)
  {
    return WTF::RefCounted<WebKit::NetworkCache::SpeculativeLoadManager::PendingFrameLoad>::deref(v14, v55);
  }

  return result;
}

uint64_t WebKit::NetworkCache::SpeculativeLoadManager::revalidateSubresource(WebKit::NetworkCache::SubresourceInfo const&,std::unique_ptr<WebKit::NetworkCache::Entry>,WebKit::NetworkCache::GlobalFrameID const&,std::optional<WebKit::NavigatingToAppBoundDomain>,BOOL,WTF::OptionSet<WebCore::AdvancedPrivacyProtections>)::$_0::~$_0(uint64_t a1)
{
  std::unique_ptr<WebKit::NetworkCache::Entry>::reset[abi:sn200100]((a1 + 184), 0);
  WTF::Vector<WebCore::HTTPHeaderMap::UncommonHeader,0ul,WTF::CrashOnOverflow,0ul,WTF::FastMalloc>::~Vector((a1 + 160), v2);
  WTF::Vector<WebCore::HTTPHeaderMap::CommonHeader,0ul,WTF::CrashOnOverflow,6ul,WTF::FastMalloc>::~Vector(a1 + 144, v3);
  v5 = *(a1 + 104);
  *(a1 + 104) = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, v4);
  }

  v6 = *(a1 + 32);
  *(a1 + 32) = 0;
  if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v6, v4);
  }

  v7 = *(a1 + 24);
  *(a1 + 24) = 0;
  if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v7, v4);
  }

  v8 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v8, v4);
  }

  v9 = *(a1 + 8);
  *(a1 + 8) = 0;
  if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v9, v4);
  }

  v10 = *a1;
  *a1 = 0;
  if (v10 && atomic_fetch_add(v10, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v10);
    WTF::fastFree(v10, v4);
  }

  return a1;
}

uint64_t WebKit::NetworkCache::SpeculativeLoadManager::revalidateSubresource(WebKit::NetworkCache::SubresourceInfo const&,std::unique_ptr<WebKit::NetworkCache::Entry>,WebKit::NetworkCache::GlobalFrameID const&,std::optional<WebKit::NavigatingToAppBoundDomain>,BOOL,WTF::OptionSet<WebCore::AdvancedPrivacyProtections>)::$_1::~$_1(uint64_t a1, WTF::StringImpl *a2)
{
  v3 = *(a1 + 272);
  *(a1 + 272) = 0;
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *(a1 + 248);
  *(a1 + 248) = 0;
  if (v4)
  {
    WTF::RefCounted<WebCore::FormData>::deref(v4);
  }

  v5 = *(a1 + 240);
  *(a1 + 240) = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, a2);
  }

  v6 = *(a1 + 232);
  *(a1 + 232) = 0;
  if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v6, a2);
  }

  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(a1 + 208, a2);
  WTF::Vector<WebCore::HTTPHeaderMap::UncommonHeader,0ul,WTF::CrashOnOverflow,0ul,WTF::FastMalloc>::~Vector((a1 + 192), v7);
  WTF::Vector<WebCore::HTTPHeaderMap::CommonHeader,0ul,WTF::CrashOnOverflow,6ul,WTF::FastMalloc>::~Vector(a1 + 176, v8);
  v10 = *(a1 + 168);
  *(a1 + 168) = 0;
  if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, v9);
  }

  v11 = *(a1 + 120);
  *(a1 + 120) = 0;
  if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v11, v9);
  }

  v12 = *(a1 + 80);
  *(a1 + 80) = 0;
  if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v12, v9);
  }

  v13 = *(a1 + 32);
  *(a1 + 32) = 0;
  if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v13, v9);
  }

  v14 = *(a1 + 24);
  *(a1 + 24) = 0;
  if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v14, v9);
  }

  v15 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v15 && atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v15, v9);
  }

  v16 = *(a1 + 8);
  *(a1 + 8) = 0;
  if (v16 && atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v16, v9);
  }

  v17 = *a1;
  *a1 = 0;
  if (v17 && atomic_fetch_add(v17, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v17);
    WTF::fastFree(v17, v9);
  }

  return a1;
}

uint64_t WebKit::NetworkCache::SpeculativeLoadManager::preloadEntry(WebKit::NetworkCache::Key const&,WebKit::NetworkCache::SubresourceInfo const&,WebKit::NetworkCache::GlobalFrameID const&,std::optional<WebKit::NavigatingToAppBoundDomain>,BOOL,WTF::OptionSet<WebCore::AdvancedPrivacyProtections>)::$_0::~$_0(uint64_t a1, WTF::StringImpl *a2)
{
  WTF::Vector<WebCore::HTTPHeaderMap::UncommonHeader,0ul,WTF::CrashOnOverflow,0ul,WTF::FastMalloc>::~Vector((a1 + 232), a2);
  WTF::Vector<WebCore::HTTPHeaderMap::CommonHeader,0ul,WTF::CrashOnOverflow,6ul,WTF::FastMalloc>::~Vector(a1 + 216, v3);
  v5 = *(a1 + 176);
  *(a1 + 176) = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, v4);
  }

  v6 = *(a1 + 104);
  *(a1 + 104) = 0;
  if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v6, v4);
  }

  v7 = *(a1 + 96);
  *(a1 + 96) = 0;
  if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v7, v4);
  }

  v8 = *(a1 + 88);
  *(a1 + 88) = 0;
  if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v8, v4);
  }

  v9 = *(a1 + 80);
  *(a1 + 80) = 0;
  if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v9, v4);
  }

  v10 = *(a1 + 32);
  *(a1 + 32) = 0;
  if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, v4);
  }

  v11 = *(a1 + 24);
  *(a1 + 24) = 0;
  if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v11, v4);
  }

  v12 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v12, v4);
  }

  v13 = *(a1 + 8);
  *(a1 + 8) = 0;
  if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v13, v4);
  }

  v14 = *a1;
  *a1 = 0;
  if (v14 && atomic_fetch_add(v14, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v14);
    WTF::fastFree(v14, v4);
  }

  return a1;
}

uint64_t WTF::HashMap<WebKit::NetworkCache::Key,std::unique_ptr<WebKit::NetworkCache::SpeculativeLoadManager::ExpiringEntry>,WTF::DefaultHash<WebKit::NetworkCache::Key>,WTF::HashTraits<WebKit::NetworkCache::Key>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkCache::SpeculativeLoadManager::ExpiringEntry>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<std::unique_ptr<WebKit::NetworkCache::SpeculativeLoadManager::ExpiringEntry>>(uint64_t a1, uint64_t *a2, uint64_t a3, WebCore::TimerBase **a4)
{
  v4 = *(a3 + 16);
  if (v4 == -1 || !v4)
  {
    __break(0xC471u);
    JUMPOUT(0x19DD9C040);
  }

  v8 = *a2;
  if (*a2 || (WTF::HashTable<WebKit::NetworkCache::Key,WTF::KeyValuePair<WebKit::NetworkCache::Key,std::unique_ptr<WebKit::NetworkCache::SpeculativeLoadManager::ExpiringEntry>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebKit::NetworkCache::Key,std::unique_ptr<WebKit::NetworkCache::SpeculativeLoadManager::ExpiringEntry>>>,WTF::DefaultHash<WebKit::NetworkCache::Key>,WTF::HashMap<WebKit::NetworkCache::Key,std::unique_ptr<WebKit::NetworkCache::SpeculativeLoadManager::ExpiringEntry>,WTF::DefaultHash<WebKit::NetworkCache::Key>,WTF::HashTraits<WebKit::NetworkCache::Key>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkCache::SpeculativeLoadManager::ExpiringEntry>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebKit::NetworkCache::Key>,WTF::FastMalloc>::expand(a2, 0), (v8 = *a2) != 0))
  {
    v9 = *(v8 - 8);
  }

  else
  {
    v9 = 0;
  }

  v10 = a4;
  v11 = 0;
  v12 = *(a3 + 32);
  for (i = 1; ; ++i)
  {
    v14 = v12 & v9;
    v15 = v8 + 80 * (v12 & v9);
    v16 = *(v15 + 16);
    if (v16 != -1)
    {
      break;
    }

    v11 = v8 + 80 * v14;
LABEL_12:
    v12 = i + v14;
  }

  if (!v16)
  {
    if (v11)
    {
      *v11 = 0u;
      *(v11 + 16) = 0u;
      *(v11 + 72) = 0;
      --*(*a2 - 16);
      v15 = v11;
    }

    WebKit::NetworkCache::Key::operator=(v15, a3);
    v18 = *v10;
    *v10 = 0;
    v29 = 0;
    std::unique_ptr<WebKit::NetworkCache::SpeculativeLoadManager::ExpiringEntry>::reset[abi:sn200100]((v15 + 72), v18);
    result = std::unique_ptr<WebKit::NetworkCache::SpeculativeLoadManager::ExpiringEntry>::reset[abi:sn200100](&v29, 0);
    v19 = *a2;
    if (*a2)
    {
      v20 = *(v19 - 12) + 1;
    }

    else
    {
      v20 = 1;
    }

    v23 = a1;
    *(v19 - 12) = v20;
    v24 = (*(v19 - 16) + v20);
    v25 = *(v19 - 4);
    if (v25 > 0x400)
    {
      if (v25 <= 2 * v24)
      {
LABEL_22:
        result = WTF::HashTable<WebKit::NetworkCache::Key,WTF::KeyValuePair<WebKit::NetworkCache::Key,std::unique_ptr<WebKit::NetworkCache::SpeculativeLoadManager::ExpiringEntry>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebKit::NetworkCache::Key,std::unique_ptr<WebKit::NetworkCache::SpeculativeLoadManager::ExpiringEntry>>>,WTF::DefaultHash<WebKit::NetworkCache::Key>,WTF::HashMap<WebKit::NetworkCache::Key,std::unique_ptr<WebKit::NetworkCache::SpeculativeLoadManager::ExpiringEntry>,WTF::DefaultHash<WebKit::NetworkCache::Key>,WTF::HashTraits<WebKit::NetworkCache::Key>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkCache::SpeculativeLoadManager::ExpiringEntry>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebKit::NetworkCache::Key>,WTF::FastMalloc>::expand(a2, v15);
        v15 = result;
        v19 = *a2;
        if (*a2)
        {
          LODWORD(v25) = *(v19 - 4);
        }

        else
        {
          LODWORD(v25) = 0;
        }
      }
    }

    else if (3 * v25 <= 4 * v24)
    {
      goto LABEL_22;
    }

    v27 = v19 + 80 * v25;
    v26 = 1;
    goto LABEL_29;
  }

  result = WebKit::NetworkCache::Key::operator==(v8 + 80 * v14, a3, a3);
  if (!result)
  {
    goto LABEL_12;
  }

  v21 = *a2;
  if (*a2)
  {
    v22 = *(v21 - 4);
  }

  else
  {
    v22 = 0;
  }

  v23 = a1;
  v26 = 0;
  v27 = v21 + 80 * v22;
LABEL_29:
  *v23 = v15;
  *(v23 + 8) = v27;
  *(v23 + 16) = v26;
  return result;
}

uint64_t WebKit::NetworkCache::SpeculativeLoadManager::startSpeculativeRevalidation(WebKit::NetworkCache::GlobalFrameID const&,WebKit::NetworkCache::SubresourcesEntry &,BOOL,std::optional<WebKit::NavigatingToAppBoundDomain>,BOOL,WTF::OptionSet<WebCore::AdvancedPrivacyProtections>)::$_0::~$_0(uint64_t a1, WTF::StringImpl *a2)
{
  v3 = *(a1 + 32);
  *(a1 + 32) = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, a2);
  }

  v4 = *(a1 + 24);
  *(a1 + 24) = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  v5 = *(a1 + 16);
  *(a1 + 16) = 0;
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
  if (v7 && atomic_fetch_add(v7, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v7);
    WTF::fastFree(v7, a2);
  }

  return a1;
}

WTF::StringImpl *WebKit::NetworkCache::Storage::ReadOperation::cancel(WTF::StringImpl *this)
{
  v19 = *MEMORY[0x1E69E9840];
  if ((*(this + 98) & 1) == 0)
  {
    v1 = this;
    *(this + 98) = 1;
    this = WTF::MonotonicTime::now(this);
    *(v1 + 19) = v2;
    *(v1 + 178) = 1;
    v3 = *(v1 + 11);
    if (v3)
    {
      v18 = 0;
      v16 = 0u;
      v17 = 0u;
      v14 = 0u;
      *object = 0u;
      v12 = 0u;
      *v13 = 0u;
      v10 = 0u;
      v11 = 0u;
      *v8 = 0u;
      *v9 = 0u;
      *(v1 + 11) = 0;
      (*(*v3 + 16))(v3, v8, v1 + 104);
      (*(*v3 + 8))(v3);
      if (object[0])
      {
        os_release(object[0]);
      }

      if (v13[0])
      {
        os_release(v13[0]);
      }

      v5 = v9[1];
      v9[1] = 0;
      if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v5, v4);
      }

      v6 = v9[0];
      v9[0] = 0;
      if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v6, v4);
      }

      v7 = v8[1];
      v8[1] = 0;
      if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v7, v4);
      }

      this = v8[0];
      v8[0] = 0;
      if (this)
      {
        if (atomic_fetch_add_explicit(this, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          return WTF::StringImpl::destroy(this, v4);
        }
      }
    }
  }

  return this;
}

uint64_t WebKit::NetworkCache::Storage::Record::operator=(uint64_t a1, uint64_t a2)
{
  WebKit::NetworkCache::Key::operator=(a1, a2);
  *(a1 + 72) = *(a2 + 72);
  WTF::OSObjectPtr<dispatch_data_s *>::operator=((a1 + 80), (a2 + 80));
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 104) = *(a2 + 104);
  WTF::OSObjectPtr<dispatch_data_s *>::operator=((a1 + 112), (a2 + 112));
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 136) = *(a2 + 136);
  v4 = *(a2 + 144);
  *(a1 + 157) = *(a2 + 157);
  *(a1 + 144) = v4;
  return a1;
}

WTF::StringImpl *WebKit::NetworkCache::Storage::open@<X0>(atomic_uint **a1@<X0>, int a2@<W1>, const WTF::StringImpl *a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = *a1;
  if (v8)
  {
    atomic_fetch_add_explicit(v8, 2u, memory_order_relaxed);
    v9 = *a1;
  }

  else
  {
    v9 = 0;
  }

  v24 = v8;
  v11 = WTF::equal(v8, v9, a3);
  if ((v11 & 1) == 0)
  {
    if ((WTF::FileSystemImpl::makeAllDirectories(&v24, v10) & 1) == 0)
    {
      *a4 = 0;
      goto LABEL_11;
    }

    WTF::FileSystemImpl::setExcludedFromBackup(&v24, 1);
  }

  WebKit::NetworkCache::makeVersionedDirectoryPath(&v24, v10);
  if (!WTF::FileSystemImpl::makeAllDirectories(&v23, v12))
  {
    goto LABEL_20;
  }

  if (v11)
  {
    WTF::FileSystemImpl::setExcludedFromBackup(&v23, 1);
  }

  WebKit::NetworkCache::makeSaltFilePath(&v22, &v24);
  Salt = WTF::FileSystemImpl::readOrMakeSalt(&v22, v14);
  v16 = v13;
  v17 = v22;
  v22 = 0;
  if (v17 && atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v17, v13);
  }

  if (v16)
  {
    v18 = WTF::fastMalloc(0x178);
    v19 = WebKit::NetworkCache::Storage::Storage(v18, &v24, a2, Salt, a3);
  }

  else
  {
LABEL_20:
    v19 = 0;
  }

  *a4 = v19;
  v20 = v23;
  v23 = 0;
  if (v20 && atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v20, v13);
  }

LABEL_11:
  result = v24;
  v24 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v13);
    }
  }

  return result;
}

WTF::StringImpl *WebKit::NetworkCache::makeVersionedDirectoryPath(WebKit::NetworkCache *this, const WTF::String *a2)
{
  WTF::makeString<WTF::ASCIILiteral,unsigned int>("Version ", 9, 0x11u, &v4);
  WTF::FileSystemImpl::pathByAppendingComponent();
  result = v4;
  v4 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v2);
    }
  }

  return result;
}

WTF::StringImpl *WebKit::NetworkCache::makeSaltFilePath(WebKit::NetworkCache *this, const WTF::String *a2)
{
  WebKit::NetworkCache::makeVersionedDirectoryPath(a2, a2);
  WTF::FileSystemImpl::pathByAppendingComponent();
  result = v4;
  if (v4)
  {
    if (atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(v4, v2);
    }
  }

  return result;
}

uint64_t WebKit::NetworkCache::Storage::Storage(uint64_t a1, atomic_uint **a2, int a3, uint64_t a4, uint64_t a5)
{
  *a1 = 3;
  v10 = *a2;
  if (*a2)
  {
    atomic_fetch_add_explicit(v10, 2u, memory_order_relaxed);
  }

  *(a1 + 8) = v10;
  WebKit::NetworkCache::makeRecordsDirectoryPath((a1 + 16), a2);
  *(a1 + 24) = a3;
  *(a1 + 28) = a4;
  *(a1 + 40) = a5;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 60) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  WebCore::Timer::Timer<WebKit::NetworkCache::Storage,WebKit::NetworkCache::Storage>((a1 + 152), a1, WebKit::NetworkCache::Storage::cancelAllReadOperations, 0);
  *(a1 + 208) = 0;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 248) = 0u;
  WebCore::Timer::Timer<WebKit::NetworkCache::Storage,WebKit::NetworkCache::Storage>((a1 + 264), a1, WebKit::NetworkCache::Storage::dispatchPendingWriteOperations, 0);
  WTF::ConcurrentWorkQueue::create();
  WTF::ConcurrentWorkQueue::create();
  WTF::WorkQueue::create();
  WebKit::NetworkCache::makeBlobDirectoryPath(&v14, a2);
  WebKit::NetworkCache::BlobStorage::BlobStorage(a1 + 344, &v14, *(a1 + 28));
  v12 = v14;
  v14 = 0;
  if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v12, v11);
  }

  *(a1 + 368) = 0x3FF0000000000000;
  WebKit::NetworkCache::Storage::deleteOldVersions(a1);
  WebKit::NetworkCache::Storage::synchronize(a1);
  return a1;
}

WTF::StringImpl *WebKit::NetworkCache::makeRecordsDirectoryPath(WebKit::NetworkCache *this, const WTF::String *a2)
{
  WebKit::NetworkCache::makeVersionedDirectoryPath(a2, a2);
  WTF::FileSystemImpl::pathByAppendingComponent();
  result = v4;
  if (v4)
  {
    if (atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(v4, v2);
    }
  }

  return result;
}

void *WebKit::NetworkCache::Storage::cancelAllReadOperations(void *this)
{
  v1 = this;
  v2 = this[18];
  if (!v2)
  {
    v4 = 0;
    v3 = 0;
    goto LABEL_10;
  }

  v3 = *(v2 - 4);
  v4 = v2 + 16 * v3;
  if (!*(v2 - 12))
  {
LABEL_10:
    v6 = v4;
    v4 = v2 + 16 * v3;
    goto LABEL_11;
  }

  if (!v3)
  {
    v6 = this[18];
LABEL_12:
    v7 = v2 + 16 * *(v2 - 4);
    goto LABEL_13;
  }

  v5 = 16 * v3;
  v6 = this[18];
  while ((*v6 + 1) <= 1)
  {
    v6 += 16;
    v5 -= 16;
    if (!v5)
    {
      v6 = v4;
      break;
    }
  }

LABEL_11:
  if (v2)
  {
    goto LABEL_12;
  }

  v7 = 0;
LABEL_13:
  while (v6 != v7)
  {
    this = WebKit::NetworkCache::Storage::ReadOperation::cancel(*(v6 + 8));
    do
    {
      v6 += 16;
    }

    while (v6 != v4 && (*v6 + 1) <= 1);
  }

  while (*(v1 + 140))
  {
    WTF::PriorityQueue<std::unique_ptr<WebKit::NetworkCache::Storage::ReadOperation>,&WebKit::NetworkCache::Storage::isHigherPriority,0ul>::dequeue(&v8, (v1 + 128));
    WebKit::NetworkCache::Storage::ReadOperation::cancel(v8);
    this = std::unique_ptr<WebKit::NetworkCache::Storage::ReadOperation>::reset[abi:sn200100](&v8, 0);
  }

  return this;
}

uint64_t *WebKit::NetworkCache::Storage::dispatchPendingWriteOperations(uint64_t *this)
{
  v83 = *MEMORY[0x1E69E9840];
  v3 = this[29];
  if (this[28] != v3)
  {
    v4 = this;
    do
    {
      v5 = v4[32];
      if (v5 && *(v5 - 12))
      {
        return this;
      }

      v6 = *(v4 + 62);
      if (v3)
      {
        v9 = v3 - 1;
        if (v9 >= v6)
        {
LABEL_85:
          __break(1u);
          goto LABEL_86;
        }

        v7 = v4[30];
        v8 = (v7 + 8 * v9);
      }

      else
      {
        if (!v6)
        {
          goto LABEL_85;
        }

        v7 = v4[30];
        v8 = (v7 + 8 * v6 - 8);
        v9 = v6 - 1;
      }

      v1 = *v8;
      *v8 = 0;
      v4[29] = v9;
      if (v9 >= v6)
      {
        goto LABEL_85;
      }

      std::unique_ptr<WebKit::NetworkCache::Storage::WriteOperation>::reset[abi:sn200100]((v7 + 8 * v9), 0);
      v2 = *v1;
      if (*v1 == -1 || !v2)
      {
        __break(0xC471u);
        JUMPOUT(0x19DD9CEE8);
      }

      v10 = v4[32];
      if (!v10)
      {
        WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::WriteOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::WriteOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::NetworkCache::Storage::WriteOperation>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::WriteOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::NetworkCache::Storage::WriteOperation>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::WriteOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::WriteOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::NetworkCache::Storage::WriteOperation>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::WriteOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::WriteOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkCache::Storage::WriteOperation>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::WriteOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(v4 + 32);
        v10 = v4[32];
      }

      v11 = *(v10 - 8);
      v12 = (v2 + ~(v2 << 32)) ^ ((v2 + ~(v2 << 32)) >> 22);
      v13 = 9 * ((v12 + ~(v12 << 13)) ^ ((v12 + ~(v12 << 13)) >> 8));
      v14 = (v13 ^ (v13 >> 15)) + ~((v13 ^ (v13 >> 15)) << 27);
      v15 = v11 & ((v14 >> 31) ^ v14);
      v16 = (v10 + 16 * v15);
      v17 = *v16;
      if (!*v16)
      {
LABEL_21:
        *v16 = v2;
        std::unique_ptr<WebKit::NetworkCache::Storage::WriteOperation>::reset[abi:sn200100](v16 + 1, v1);
        v20 = v4[32];
        if (v20)
        {
          v21 = *(v20 - 12) + 1;
        }

        else
        {
          v21 = 1;
        }

        *(v20 - 12) = v21;
        v22 = (*(v20 - 16) + v21);
        v23 = *(v20 - 4);
        if (v23 > 0x400)
        {
          if (v23 > 2 * v22)
          {
            goto LABEL_25;
          }
        }

        else if (3 * v23 > 4 * v22)
        {
LABEL_25:
          v24 = 0;
          goto LABEL_26;
        }

        WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::WriteOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::WriteOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::NetworkCache::Storage::WriteOperation>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::WriteOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::NetworkCache::Storage::WriteOperation>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::WriteOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::WriteOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::NetworkCache::Storage::WriteOperation>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::WriteOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::WriteOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkCache::Storage::WriteOperation>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::WriteOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(v4 + 32);
        goto LABEL_25;
      }

      v18 = 0;
      v19 = 1;
      while (v17 != v2)
      {
        if (v17 == -1)
        {
          v18 = v16;
        }

        v15 = (v15 + v19) & v11;
        v16 = (v10 + 16 * v15);
        v17 = *v16;
        ++v19;
        if (!*v16)
        {
          if (v18)
          {
            *v18 = 0;
            v18[1] = 0;
            --*(v4[32] - 16);
            v16 = v18;
          }

          goto LABEL_21;
        }
      }

LABEL_86:
      v24 = v1;
LABEL_26:
      WebKit::NetworkCache::Key::Key(&v72, (v1 + 8));
      v25 = *(v1 + 88);
      v75 = *(v1 + 80);
      v76 = v25;
      if (v25)
      {
        os_retain(v25);
      }

      v26 = *(v1 + 96);
      v78 = *(v1 + 112);
      v77 = v26;
      v27 = *(v1 + 120);
      v79 = v27;
      if (v27)
      {
        os_retain(v27);
      }

      v28 = *(v1 + 128);
      v81 = *(v1 + 144);
      v80 = v28;
      v29 = *(v1 + 165);
      *v82 = *(v1 + 152);
      *&v82[13] = v29;
      WebKit::NetworkCache::Storage::addToRecordFilter(v4, &v72);
      v1 = v4[41];
      v56 = v4;
      while (1)
      {
        v30 = *v4;
        if ((*v4 & 1) == 0)
        {
          break;
        }

        v54 = *v4;
        atomic_compare_exchange_strong_explicit(v4, &v54, v30 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v54 == v30)
        {
          goto LABEL_33;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v4);
LABEL_33:
      v57 = v4;
      v58 = v2;
      WebKit::NetworkCache::Storage::Record::isolatedCopy(v59, &v72);
      v2 = WTF::fastMalloc(0xC8);
      v31 = v56;
      *v2 = &unk_1F1109320;
      *(v2 + 8) = v31;
      v32 = v57;
      v57 = 0;
      *(v2 + 16) = v32;
      *(v2 + 24) = v58;
      *(v2 + 32) = v59[0];
      v33 = v59[1];
      *v59 = 0u;
      *(v2 + 40) = v33;
      *(v2 + 48) = v60[0];
      v34 = v60[1];
      *v60 = 0u;
      *(v2 + 56) = v34;
      v35 = v61;
      v36 = v62;
      *(v2 + 96) = v63;
      *(v2 + 64) = v35;
      *(v2 + 80) = v36;
      *(v2 + 104) = v64;
      v37 = object;
      *(v2 + 112) = object;
      if (v37)
      {
        os_retain(v37);
      }

      v38 = v66;
      *(v2 + 136) = v67;
      *(v2 + 120) = v38;
      v39 = v68;
      *(v2 + 144) = v68;
      if (v39)
      {
        os_retain(v39);
      }

      v40 = v69;
      *(v2 + 168) = v70;
      *(v2 + 152) = v40;
      v41 = *v71;
      *(v2 + 189) = *&v71[13];
      *(v2 + 176) = v41;
      v55 = v2;
      MEMORY[0x19EB01930](v1, &v55);
      v43 = v55;
      v55 = 0;
      if (v43)
      {
        (*(*v43 + 8))(v43);
      }

      if (v68)
      {
        os_release(v68);
      }

      if (object)
      {
        os_release(object);
      }

      v44 = v60[1];
      v60[1] = 0;
      if (v44 && atomic_fetch_add_explicit(v44, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v44, v42);
      }

      v45 = v60[0];
      v60[0] = 0;
      if (v45 && atomic_fetch_add_explicit(v45, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v45, v42);
      }

      v46 = v59[1];
      v59[1] = 0;
      if (v46 && atomic_fetch_add_explicit(v46, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v46, v42);
      }

      v47 = v59[0];
      v59[0] = 0;
      if (v47 && atomic_fetch_add_explicit(v47, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v47, v42);
      }

      v48 = v57;
      v57 = 0;
      if (v48)
      {
        WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::NetworkCache::Storage,(WTF::DestructionThread)2>::deref(v48);
      }

      if (v79)
      {
        os_release(v79);
      }

      if (v76)
      {
        os_release(v76);
      }

      v49 = v74;
      v74 = 0;
      if (v49 && atomic_fetch_add_explicit(v49, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v49, v42);
      }

      v50 = v73;
      v73 = 0;
      if (v50 && atomic_fetch_add_explicit(v50, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v50, v42);
      }

      v51 = v72.n128_u64[1];
      v72.n128_u64[1] = 0;
      if (v51 && atomic_fetch_add_explicit(v51, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v51, v42);
      }

      this = v72.n128_u64[0];
      v72.n128_u64[0] = 0;
      if (this && atomic_fetch_add_explicit(this, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        this = WTF::StringImpl::destroy(this, v42);
      }

      if (v24)
      {
        WebKit::NetworkCache::Storage::WriteOperation::~WriteOperation(v24, v42);
        this = bmalloc::api::tzoneFree(v52, v53);
      }

      v3 = v4[29];
    }

    while (v4[28] != v3);
  }

  return this;
}

WTF::StringImpl *WebKit::NetworkCache::makeBlobDirectoryPath(WebKit::NetworkCache *this, const WTF::String *a2)
{
  WebKit::NetworkCache::makeVersionedDirectoryPath(a2, a2);
  WTF::FileSystemImpl::pathByAppendingComponent();
  result = v4;
  if (v4)
  {
    if (atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(v4, v2);
    }
  }

  return result;
}

uint64_t WebKit::NetworkCache::Storage::deleteOldVersions(WebKit::NetworkCache::Storage *this)
{
  v1 = *(this + 41);
  WTF::String::isolatedCopy();
  v2 = WTF::fastMalloc(0x10);
  *v2 = &unk_1F1109528;
  v2[1] = v5;
  v6 = v2;
  MEMORY[0x19EB01930](v1, &v6);
  v3 = v6;
  v6 = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return 0;
}

uint64_t WebKit::NetworkCache::Storage::synchronize(uint64_t this)
{
  if ((*(this + 80) & 1) == 0)
  {
    v1 = this;
    if ((*(this + 81) & 1) == 0)
    {
      *(this + 80) = 1;
      v2 = *(this + 328);
      while (1)
      {
        v3 = *this;
        if ((*this & 1) == 0)
        {
          break;
        }

        v5 = *this;
        atomic_compare_exchange_strong_explicit(this, &v5, v3 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v5 == v3)
        {
          goto LABEL_6;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*this);
LABEL_6:
      v4 = WTF::fastMalloc(0x18);
      *v4 = &unk_1F11090C8;
      v4[1] = v1;
      v4[2] = v1;
      v6 = v4;
      MEMORY[0x19EB01930](v2, &v6);
      this = v6;
      v6 = 0;
      if (this)
      {
        return (*(*this + 8))(this);
      }
    }
  }

  return this;
}

void WebKit::NetworkCache::Storage::~Storage(WebKit::NetworkCache::Storage *this, WTF::StringImpl *a2)
{
  v3 = *(this + 43);
  *(this + 43) = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, a2);
  }

  v4 = *(this + 42);
  *(this + 42) = 0;
  if (v4)
  {
    (*(*v4 + 40))(v4);
  }

  v5 = *(this + 41);
  *(this + 41) = 0;
  if (v5)
  {
    WTF::ThreadSafeRefCounted<WTF::ConcurrentWorkQueue,(WTF::DestructionThread)0>::deref((v5 + 32));
  }

  v6 = *(this + 40);
  *(this + 40) = 0;
  if (v6)
  {
    WTF::ThreadSafeRefCounted<WTF::ConcurrentWorkQueue,(WTF::DestructionThread)0>::deref((v6 + 32));
  }

  *(this + 33) = &unk_1F10EB388;
  v7 = *(this + 39);
  *(this + 39) = 0;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  WebCore::TimerBase::~TimerBase((this + 264));
  v9 = *(this + 32);
  if (v9)
  {
    v10 = *(v9 - 4);
    if (v10)
    {
      v11 = (v9 + 8);
      do
      {
        if (*(v11 - 1) != -1)
        {
          std::unique_ptr<WebKit::NetworkCache::Storage::WriteOperation>::reset[abi:sn200100](v11, 0);
        }

        v11 += 2;
        --v10;
      }

      while (v10);
    }

    WTF::fastFree((v9 - 16), v8);
  }

  v12 = *(this + 29);
  v13 = *(this + 30);
  v14 = *(this + 62);
  v15 = *(this + 28);
  v16 = v12 - v15;
  if (v12 < v15)
  {
    if (v12 <= v14)
    {
      if (v12)
      {
        v17 = 8 * v12;
        v18 = *(this + 30);
        do
        {
          std::unique_ptr<WebKit::NetworkCache::Storage::WriteOperation>::reset[abi:sn200100](v18++, 0);
          v17 -= 8;
        }

        while (v17);
        v15 = *(this + 28);
      }

      if (v15 <= v14)
      {
        if (v15 != v14)
        {
          v19 = (v13 + 8 * v15);
          v20 = 8 * v14 - 8 * v15;
          do
          {
            std::unique_ptr<WebKit::NetworkCache::Storage::WriteOperation>::reset[abi:sn200100](v19++, 0);
            v20 -= 8;
          }

          while (v20);
        }

        goto LABEL_36;
      }
    }

LABEL_71:
    __break(1u);
    return;
  }

  v21 = v14 - v15;
  if (v14 < v15)
  {
    goto LABEL_71;
  }

  if (v16 == -1)
  {
    v16 = v14 - v15;
    if (v21)
    {
LABEL_34:
      v22 = 8 * v16;
      v23 = (v13 + 8 * v15);
      do
      {
        std::unique_ptr<WebKit::NetworkCache::Storage::WriteOperation>::reset[abi:sn200100](v23++, 0);
        v22 -= 8;
      }

      while (v22);
    }
  }

  else
  {
    if (v21 < v16)
    {
      goto LABEL_71;
    }

    if (v16)
    {
      goto LABEL_34;
    }
  }

LABEL_36:
  v24 = *(this + 30);
  if (v24)
  {
    *(this + 30) = 0;
    *(this + 62) = 0;
    WTF::fastFree(v24, v8);
  }

  v25 = *(this + 27);
  if (v25)
  {
    WTF::fastFree((v25 - 16), v8);
  }

  *(this + 19) = &unk_1F10EB388;
  v26 = *(this + 25);
  *(this + 25) = 0;
  if (v26)
  {
    (*(*v26 + 8))(v26);
  }

  WebCore::TimerBase::~TimerBase((this + 152));
  v28 = *(this + 18);
  if (v28)
  {
    v29 = *(v28 - 4);
    if (v29)
    {
      v30 = (v28 + 8);
      do
      {
        if (*(v30 - 1) != -1)
        {
          std::unique_ptr<WebKit::NetworkCache::Storage::ReadOperation>::reset[abi:sn200100](v30, 0);
        }

        v30 += 2;
        --v29;
      }

      while (v29);
    }

    WTF::fastFree((v28 - 16), v27);
  }

  v31 = *(this + 35);
  if (v31)
  {
    v32 = *(this + 16);
    v33 = 8 * v31;
    do
    {
      std::unique_ptr<WebKit::NetworkCache::Storage::ReadOperation>::reset[abi:sn200100](v32++, 0);
      v33 -= 8;
    }

    while (v33);
  }

  v34 = *(this + 16);
  if (v34)
  {
    *(this + 16) = 0;
    *(this + 34) = 0;
    WTF::fastFree(v34, v27);
  }

  v35 = *(this + 14);
  if (v35)
  {
    *(this + 14) = 0;
    *(this + 30) = 0;
    WTF::fastFree(v35, v27);
  }

  v36 = *(this + 12);
  if (v36)
  {
    *(this + 12) = 0;
    *(this + 26) = 0;
    WTF::fastFree(v36, v27);
  }

  v37 = *(this + 9);
  *(this + 9) = 0;
  if (v37)
  {
    WTF::fastFree(v37, v27);
  }

  v38 = *(this + 8);
  *(this + 8) = 0;
  if (v38)
  {
    WTF::fastFree(v38, v27);
  }

  v39 = *(this + 2);
  *(this + 2) = 0;
  if (v39 && atomic_fetch_add_explicit(v39, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v39, v27);
  }

  v40 = *(this + 1);
  *(this + 1) = 0;
  if (v40)
  {
    if (atomic_fetch_add_explicit(v40, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v40, v27);
    }
  }
}

WTF::StringImpl *WebKit::NetworkCache::Storage::versionPath(WebKit::NetworkCache::Storage *this)
{
  WTF::String::isolatedCopy();
  WebKit::NetworkCache::makeVersionedDirectoryPath(&v4, v1);
  result = v4;
  v4 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v2);
    }
  }

  return result;
}

unint64_t WebKit::NetworkCache::Storage::estimateRecordsSize(unint64_t this, const WTF::String *a2, unsigned int a3)
{
  v4 = a2;
  v5 = this;
  if (*(this + 60) == 1)
  {
    v6 = *(this + 56);
  }

  else
  {
    this = WTF::FileSystemImpl::volumeFileBlockSize((this + 8), a2);
    if ((this & 0x100000000) != 0)
    {
      v6 = this;
    }

    else
    {
      v6 = 4096;
    }

    *(v5 + 56) = v6;
    *(v5 + 60) = 1;
  }

  if (v4 >= a3)
  {
    v7 = v4 - a3;
  }

  else
  {
    v7 = 0;
  }

  return v6 * v4 + (WTF::pageSize(this) >> 1) * v7;
}

__n128 WebKit::NetworkCache::Storage::addToRecordFilter(WebKit::NetworkCache::Storage *this, __n128 *a2)
{
  v2 = *(this + 8);
  if (v2)
  {
    v3 = a2[2].n128_u64[0];
    *(v2 + 4 * ((v3 >> 5) & 0x1FFF)) |= 1 << v3;
    *(v2 + 4 * ((v3 >> 37) & 0x1FFF)) |= 1 << SBYTE4(v3);
  }

  if (*(this + 80) == 1)
  {
    v4 = *(this + 27);
    if (v4 == *(this + 26))
    {
      WTF::Vector<std::array<unsigned char,20ul>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,std::array<unsigned char,20ul> const&>(this + 96, a2[2].n128_u64);
    }

    else
    {
      v6 = (*(this + 12) + 20 * v4);
      result = a2[2];
      v6[1].n128_u32[0] = a2[3].n128_u32[0];
      *v6 = result;
      ++*(this + 27);
    }
  }

  return result;
}

uint64_t WebKit::NetworkCache::Storage::mayContain(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 64);
  if (!v2)
  {
    return 1;
  }

  v3 = *(a2 + 32);
  if ((*(v2 + 4 * ((v3 >> 5) & 0x1FFF)) >> v3))
  {
    return (*(v2 + 4 * ((v3 >> 37) & 0x1FFF)) >> SBYTE4(v3)) & 1;
  }

  else
  {
    return 0;
  }
}

WTF::StringImpl *WebKit::NetworkCache::Storage::recordDirectoryPathForKey(WebKit::NetworkCache::Storage *this, const WebKit::NetworkCache::Key *a2, uint64_t a3)
{
  WTF::String::isolatedCopy();
  WebKit::NetworkCache::Key::hashAsString(a3 + 52, &v8);
  v4 = v8;
  WTF::FileSystemImpl::pathByAppendingComponent();
  WTF::FileSystemImpl::pathByAppendingComponent();
  v6 = v10;
  v10 = 0;
  if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v6, v5);
  }

  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, v5);
  }

  result = v9;
  v9 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v5);
    }
  }

  return result;
}

WTF::StringImpl *WebKit::NetworkCache::Storage::recordPathForKey(WebKit::NetworkCache::Storage *this, const WebKit::NetworkCache::Key *a2, uint64_t a3)
{
  WebKit::NetworkCache::Storage::recordDirectoryPathForKey(&v8, a2, a3);
  WebKit::NetworkCache::Key::hashAsString(a3 + 32, &v7);
  v4 = v7;
  if (v7)
  {
    WTF::FileSystemImpl::pathByAppendingComponent();
    if (atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v4, v5);
    }
  }

  else
  {
    WTF::FileSystemImpl::pathByAppendingComponent();
  }

  result = v8;
  v8 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v5);
    }
  }

  return result;
}

WTF::StringImpl *WebKit::NetworkCache::Storage::blobPathForKey(WebKit::NetworkCache::Storage *this, const WebKit::NetworkCache::Key *a2, uint64_t a3)
{
  WebKit::NetworkCache::Storage::recordPathForKey(&v6, a2, a3);
  WebKit::NetworkCache::blobPathForRecordPath(this, v6);
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

WTF::StringImpl *WebKit::NetworkCache::blobPathForRecordPath(WebKit::NetworkCache *this, atomic_uint *a2)
{
  if (a2)
  {
    atomic_fetch_add_explicit(a2, 2u, memory_order_relaxed);
  }

  v5 = a2;
  v6[0] = "-blob";
  v6[1] = 6;
  result = WTF::tryMakeString<WTF::String,WTF::ASCIILiteral>(&v5, v6, this);
  if (*this)
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

  else
  {
    __break(0xC471u);
  }

  return result;
}

BOOL WebKit::NetworkCache::decodeRecordHeader(dispatch_data_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18 = *MEMORY[0x1E69E9840];
  v14 = 0;
  v8 = WTF::fastMalloc(0x18);
  *v8 = &unk_1F1108E70;
  v8[1] = a2;
  v8[2] = &v14;
  object = v8;
  WebKit::NetworkCache::Data::apply(a1);
  if (object)
  {
    (*(*object + 8))(object);
  }

  if (v14 != 1 || *a2 != 17)
  {
    return 0;
  }

  subrange = dispatch_data_create_subrange(*a1, *(a2 + 160), *(a2 + 112));
  v16 = 0uLL;
  object = subrange;
  v17 = 0;
  WTF::OSObjectPtr<dispatch_data_s *>::operator=(a3, &object);
  *(a3 + 8) = v16;
  *(a3 + 24) = v17;
  if (object)
  {
    os_release(object);
  }

  WebKit::NetworkCache::computeSHA1(a3, a4);
  return *(a2 + 88) == object && *(a2 + 96) == v16 && *(a2 + 104) == DWORD2(v16);
}

WTF::StringImpl *WebKit::NetworkCache::Storage::storeBodyAsBlob(uint64_t a1, atomic_ullong *a2, uint64_t a3, uint64_t a4)
{
  v27 = *MEMORY[0x1E69E9840];
  WebKit::NetworkCache::Storage::blobPathForKey(&v19, a2, a4);
  WebKit::NetworkCache::BlobStorage::add(a2 + 43, &v19, (a4 + 112), &object);
  if (object)
  {
    v9 = WebKit::NetworkCache::Storage::addWriteOperationActivity(a2, a3);
    WTF::RunLoop::mainSingleton(v9);
    while (1)
    {
      v10 = *a2;
      if ((*a2 & 1) == 0)
      {
        break;
      }

      v16 = *a2;
      atomic_compare_exchange_strong_explicit(a2, &v16, v10 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v16 == v10)
      {
        goto LABEL_5;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_5:
    v11 = object;
    if (object)
    {
      os_retain(object);
    }

    v17 = v23;
    v18 = v24;
    v20 = v25;
    v21 = v26;
    v12 = WTF::fastMalloc(0x58);
    *v12 = &unk_1F1109208;
    *(v12 + 8) = a2;
    *(v12 + 16) = a2;
    *(v12 + 24) = v11;
    if (v11)
    {
      os_retain(v11);
    }

    *(v12 + 32) = v17;
    *(v12 + 48) = v18;
    *(v12 + 56) = v20;
    *(v12 + 72) = v21;
    *(v12 + 80) = a3;
    WTF::RunLoop::dispatch();
    if (v12)
    {
      (*(*v12 + 8))(v12);
    }

    if (v11)
    {
      os_release(v11);
    }

    v13 = object;
    *a1 = object;
    if (v13)
    {
      os_retain(v13);
      v14 = object;
      *(a1 + 8) = v23;
      *(a1 + 24) = v24;
      *(a1 + 32) = v25;
      *(a1 + 48) = v26;
      *(a1 + 56) = 1;
      if (v14)
      {
        os_release(v14);
      }
    }

    else
    {
      *(a1 + 8) = v23;
      *(a1 + 24) = v24;
      *(a1 + 32) = v25;
      *(a1 + 48) = v26;
      *(a1 + 56) = 1;
    }
  }

  else
  {
    *a1 = 0;
    *(a1 + 56) = 0;
  }

  result = v19;
  v19 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v8);
    }
  }

  return result;
}

atomic_uchar *WebKit::NetworkCache::Storage::addWriteOperationActivity(atomic_uchar *result, uint64_t a2)
{
  v3 = result;
  v4 = 0;
  v5 = result + 208;
  atomic_compare_exchange_strong_explicit(result + 208, &v4, 1u, memory_order_acquire, memory_order_acquire);
  if (v4)
  {
    result = MEMORY[0x19EB01E30](result + 208);
  }

  if (a2 == -1 || !a2)
  {
    __break(0xC471u);
    JUMPOUT(0x19DD9DF70);
  }

  v6 = *(v3 + 27);
  if (!v6)
  {
    result = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::WriteOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::WriteOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,unsigned int>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::WriteOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,unsigned int>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::WriteOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::WriteOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,unsigned int,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::WriteOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::WriteOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::WriteOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(v3 + 27, 0);
    v6 = *(v3 + 27);
  }

  v7 = *(v6 - 8);
  v8 = (~(a2 << 32) + a2) ^ ((~(a2 << 32) + a2) >> 22);
  v9 = 9 * ((v8 + ~(v8 << 13)) ^ ((v8 + ~(v8 << 13)) >> 8));
  v10 = (v9 ^ (v9 >> 15)) + ~((v9 ^ (v9 >> 15)) << 27);
  v11 = v7 & ((v10 >> 31) ^ v10);
  v12 = (v6 + 16 * v11);
  v13 = *v12;
  if (*v12)
  {
    v14 = 0;
    v15 = 1;
    while (v13 != a2)
    {
      if (v13 == -1)
      {
        v14 = v12;
      }

      v11 = (v11 + v15) & v7;
      v12 = (v6 + 16 * v11);
      v13 = *v12;
      ++v15;
      if (!*v12)
      {
        if (v14)
        {
          *v14 = 0;
          *(v14 + 1) = 0;
          --*(*(v3 + 27) - 16);
          v12 = v14;
        }

        goto LABEL_15;
      }
    }
  }

  else
  {
LABEL_15:
    *v12 = a2;
    *(v12 + 2) = 0;
    v16 = *(v3 + 27);
    if (v16)
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
      if (v19 > 2 * v18)
      {
        goto LABEL_19;
      }
    }

    else if (3 * v19 > 4 * v18)
    {
      goto LABEL_19;
    }

    result = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::WriteOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::WriteOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,unsigned int>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::WriteOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,unsigned int>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::WriteOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::WriteOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,unsigned int,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::WriteOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::WriteOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::WriteOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(v3 + 27, v12);
    v12 = result;
  }

LABEL_19:
  ++*(v12 + 2);
  v20 = 1;
  atomic_compare_exchange_strong_explicit(v5, &v20, 0, memory_order_release, memory_order_relaxed);
  if (v20 != 1)
  {

    return WTF::Lock::unlockSlow(v5);
  }

  return result;
}

WTF::StringImpl *WebKit::NetworkCache::Storage::encodeRecord(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = v1;
  v39 = *MEMORY[0x1E69E9840];
  v23 = 17;
  WebKit::NetworkCache::Key::Key(&v24, v4);
  v34 = 0;
  v35 = 0;
  v36 = 0;
  v9 = *(v5 + 9);
  v31 = 0;
  v28 = v9;
  WebKit::NetworkCache::computeSHA1(v5 + 80, v7 + 28);
  v29 = *buffer;
  v30 = *&buffer[16];
  if (*(v5 + 11) || (v10 = *(v5 + 10)) == 0)
  {
    size = *(v5 + 12);
  }

  else
  {
    size = dispatch_data_get_size(v10);
  }

  v31 = size;
  if (*(v3 + 56) == 1)
  {
    *buffer = *(v3 + 32);
    *&buffer[16] = *(v3 + 48);
  }

  else
  {
    WebKit::NetworkCache::computeSHA1(v5 + 112, v7 + 28);
  }

  v32 = *buffer;
  v33 = *&buffer[16];
  if (*(v5 + 15) || (v12 = *(v5 + 14)) == 0)
  {
    v13 = *(v5 + 16);
  }

  else
  {
    v13 = dispatch_data_get_size(v12);
  }

  v34 = v13;
  v35 = *(v3 + 56) ^ 1;
  WTF::Persistence::Encoder::Encoder(buffer);
  WTF::Persistence::Encoder::operator<<();
  WTF::Persistence::Coder<WebKit::NetworkCache::Key>::encodeForPersistence();
  WTF::Persistence::Coder<WTF::WallTime>::encodeForPersistence();
  WTF::Persistence::Coder<std::array<unsigned char,20ul>>::encodeForPersistence();
  WTF::Persistence::Encoder::operator<<();
  WTF::Persistence::Coder<std::array<unsigned char,20ul>>::encodeForPersistence();
  WTF::Persistence::Encoder::operator<<();
  WTF::Persistence::Encoder::operator<<();
  WTF::Persistence::Encoder::encodeChecksum(buffer);
  v14 = dispatch_data_create(*buffer, *&buffer[12], 0, 0);
  v21[1] = 0;
  v21[2] = 0;
  v21[0] = v14;
  v22 = 0;
  WTF::Persistence::Encoder::~Encoder(buffer);
  WebKit::NetworkCache::concatenate(v21, (v5 + 80), buffer);
  if (v35 == 1)
  {
    WebKit::NetworkCache::concatenate(buffer, (v5 + 112), v8);
    v16 = *buffer;
  }

  else
  {
    v16 = *buffer;
    *v8 = *buffer;
    if (v16)
    {
      os_retain(v16);
    }

    *(v8 + 8) = *&buffer[8];
    *(v8 + 24) = v38;
  }

  if (v16)
  {
    os_release(v16);
  }

  if (v14)
  {
    os_release(v14);
  }

  v17 = v27;
  v27 = 0;
  if (v17 && atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v17, v15);
  }

  v18 = v26;
  v26 = 0;
  if (v18 && atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v18, v15);
  }

  v19 = v25;
  v25 = 0;
  if (v19 && atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v19, v15);
  }

  result = v24;
  v24 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v15);
    }
  }

  return result;
}

uint64_t WebKit::NetworkCache::Storage::removeFromPendingWriteOperations(uint64_t this, const WebKit::NetworkCache::Key *a2, const WTF::StringImpl *a3)
{
  v4 = *(this + 224);
  v3 = *(this + 232);
  if (v4 != v3)
  {
    v6 = this;
    v7 = *(this + 248);
    while (1)
    {
      while (1)
      {
        if (v4 >= v7)
        {
LABEL_25:
          __break(1u);
          return this;
        }

        this = WebKit::NetworkCache::Key::operator==(*(*(v6 + 240) + 8 * v4) + 8, a2, a3);
        if ((this & 1) == 0)
        {
          break;
        }

LABEL_10:
        if (v4 == *(v6 + 232))
        {
          return this;
        }

        v8 = *(v6 + 248);
        if (v4 >= v8)
        {
          goto LABEL_25;
        }

        v9 = *(v6 + 240);
        this = std::unique_ptr<WebKit::NetworkCache::Storage::WriteOperation>::reset[abi:sn200100]((v9 + 8 * v4), 0);
        v10 = *(v6 + 224);
        v11 = v4 - v10;
        if (v4 >= v10)
        {
          if (v11 == -1)
          {
            v11 = v8 - v10;
          }

          else if (v8 - v10 < v11)
          {
            goto LABEL_25;
          }

          if (v8 <= v10)
          {
            goto LABEL_25;
          }

          this = memmove((v9 + 8 * v10 + 8), (v9 + 8 * v10), 8 * v11);
          v3 = *(v6 + 232);
          v7 = *(v6 + 248);
          v4 = (*(v6 + 224) + 1) % v7;
          *(v6 + 224) = v4;
        }

        else
        {
          if (v4 >= v8)
          {
            goto LABEL_25;
          }

          v12 = *(v6 + 232) - (v4 + 1);
          if (*(v6 + 232) == v4)
          {
            v12 = v8 - (v4 + 1);
          }

          else if (v8 - (v4 + 1) < v12)
          {
            goto LABEL_25;
          }

          this = memmove((v9 + 8 * v4), (v9 + 8 * (v4 + 1)), 8 * v12);
          v7 = *(v6 + 248);
          v4 = *(v6 + 224);
          v3 = (*(v6 + 232) + v7 - 1) % v7;
          *(v6 + 232) = v3;
        }

        if (v4 == v3)
        {
          return this;
        }
      }

      v7 = *(v6 + 248);
      v4 += v7 + 1;
      do
      {
        v4 -= v7;
      }

      while (v4 >= v7);
      if (v3 == v4)
      {
        v4 = v3;
        goto LABEL_10;
      }
    }
  }

  return this;
}