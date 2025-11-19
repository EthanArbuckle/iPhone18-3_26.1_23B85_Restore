uint64_t IPC::Connection::cancelReply<Messages::RemoteTextDetector::Detect,WTF::CompletionHandler<void ()(WTF::Vector<WebCore::ShapeDetection::DetectedText,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>>(uint64_t *a1, void *a2, __n128 a3)
{
  a3.n128_u64[0] = 0;
  v7 = a3;
  v8 = a3;
  WTF::Vector<WebCore::ShapeDetection::DetectedText,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v8, a2);
  v4 = *a1;
  *a1 = 0;
  (*(*v4 + 16))(v4, &v7);
  (*(*v4 + 8))(v4);
  return WTF::Vector<WebCore::ShapeDetection::DetectedText,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v7, v5);
}

WTF::StringImpl *IPC::Decoder::decode<WebCore::ShapeDetection::DetectedText>(uint64_t a1, IPC::Decoder *a2)
{
  result = IPC::ArgumentCoder<WebCore::ShapeDetection::DetectedText,void>::decode(a2, a1);
  if ((*(a1 + 40) & 1) == 0)
  {
    v5 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    result = *(a2 + 3);
    if (result && v5 != 0)
    {
      v7 = *(*result + 16);

      return v7();
    }
  }

  return result;
}

WTF *WTF::Vector<WebCore::ShapeDetection::DetectedText,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::ShapeDetection::DetectedText>(unsigned int *a1, unint64_t a2)
{
  v3 = WTF::Vector<WebCore::ShapeDetection::DetectedText,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(a1, a1[3] + 1, a2);
  v4 = *a1 + 40 * a1[3];
  *v4 = *v3;
  v5 = *(v3 + 16);
  *(v3 + 16) = 0;
  *(v4 + 24) = 0;
  v4 += 24;
  *(v4 - 8) = v5;
  *(v4 + 8) = 0;
  result = WTF::VectorBuffer<WebCore::HTTPHeaderField,0ul,WTF::FastMalloc>::adopt(v4, (v3 + 24));
  ++a1[3];
  return result;
}

unint64_t WTF::Vector<WebCore::ShapeDetection::DetectedText,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(unsigned int *a1, unint64_t a2, unint64_t a3)
{
  v3 = a3;
  v5 = *a1;
  if (*a1 > a3 || v5 + 40 * a1[3] <= a3)
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

    WTF::Vector<WebCore::ShapeDetection::DetectedText,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v12);
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

    WTF::Vector<WebCore::ShapeDetection::DetectedText,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v9);
    return *a1 + v6;
  }

  return v3;
}

WTF::StringImpl *WTF::Vector<WebCore::ShapeDetection::DetectedText,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(WTF::StringImpl *result, unint64_t a2)
{
  if (*(result + 2) < a2)
  {
    if (a2 >= 0x6666667)
    {
      __break(0xC471u);
      JUMPOUT(0x19E1A5B44);
    }

    v2 = result;
    v3 = *result;
    v4 = (*result + 40 * *(result + 3));
    v5 = 40 * a2;
    v6 = WTF::fastMalloc((40 * a2));
    *(v2 + 2) = v5 / 0x28;
    *v2 = v6;
    result = WTF::VectorMover<false,WebCore::ShapeDetection::DetectedText>::move(v3, v4, v6);
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

WTF::StringImpl *WTF::VectorMover<false,WebCore::ShapeDetection::DetectedText>::move(WTF::StringImpl *result, WTF::StringImpl *a2, uint64_t a3)
{
  if (result != a2)
  {
    v5 = result;
    do
    {
      *a3 = *v5;
      v6 = *(v5 + 2);
      *(v5 + 2) = 0;
      *(a3 + 24) = 0;
      v7 = a3 + 24;
      *(v7 - 8) = v6;
      *(v7 + 8) = 0;
      WTF::VectorBuffer<WebCore::HTTPHeaderField,0ul,WTF::FastMalloc>::adopt(v7, v5 + 6);
      v9 = *(v5 + 3);
      if (v9)
      {
        *(v5 + 3) = 0;
        *(v5 + 8) = 0;
        WTF::fastFree(v9, v8);
      }

      result = *(v5 + 2);
      *(v5 + 2) = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          result = WTF::StringImpl::destroy(result, v8);
        }
      }

      v5 = (v5 + 40);
      a3 = v7 + 16;
    }

    while (v5 != a2);
  }

  return result;
}

void *WTF::Detail::CallableWrapper<std::optional<WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>> IPC::StreamClientConnection::sendWithAsyncReply<Messages::RemoteTextDetector::Detect,WTF::CompletionHandler<void ()(WTF::Vector<WebCore::ShapeDetection::DetectedText,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>,WebKit::ShapeDetectionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>(Messages::RemoteTextDetector::Detect &&,WTF::CompletionHandler<void ()(WTF::Vector<WebCore::ShapeDetection::DetectedText,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)> &&,std::optional<WebKit::ShapeDetectionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>)::{lambda(void)#1},void>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F11237D8;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<std::optional<WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>> IPC::StreamClientConnection::sendWithAsyncReply<Messages::RemoteTextDetector::Detect,WTF::CompletionHandler<void ()(WTF::Vector<WebCore::ShapeDetection::DetectedText,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>,WebKit::ShapeDetectionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>(Messages::RemoteTextDetector::Detect &&,WTF::CompletionHandler<void ()(WTF::Vector<WebCore::ShapeDetection::DetectedText,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)> &&,std::optional<WebKit::ShapeDetectionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>)::{lambda(void)#1},void>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F11237D8;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<std::optional<WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>> IPC::StreamClientConnection::sendWithAsyncReply<Messages::RemoteTextDetector::Detect,WTF::CompletionHandler<void ()(WTF::Vector<WebCore::ShapeDetection::DetectedText,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>,WebKit::ShapeDetectionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>(Messages::RemoteTextDetector::Detect &&,WTF::CompletionHandler<void ()(WTF::Vector<WebCore::ShapeDetection::DetectedText,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)> &&,std::optional<WebKit::ShapeDetectionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>)::{lambda(void)#1},void>::call(uint64_t a1)
{
  v1 = *(a1 + 8);
  *(a1 + 8) = 0;
  (*(*v1 + 16))(v1, 0, 0);
  v2 = *(*v1 + 8);

  return v2(v1);
}

IntSize WebKit::ImageBufferShareableBitmapBackend::calculateSafeBackendSize(const IntSize *a1, uint64_t a2, const WebCore::DestinationColorSpace *a3)
{
  v6 = *a1;
  if (v6.m_width < 1 || v6.m_height < 1)
  {
    return 0;
  }

  WebCore::ShareableBitmapConfiguration::calculateSizeInBytes(&v5, &v6, a1 + 2, a3);
  if (v5)
  {
    return 0;
  }

  else
  {
    return v6;
  }
}

uint64_t *WebKit::ImageBufferShareableBitmapBackend::calculateMemoryCost(IntSize *a1, uint64_t a2, const WebCore::DestinationColorSpace *a3)
{
  result = WebCore::ShareableBitmapConfiguration::calculateBytesPerRow(&v5, a1, a1 + 2, a3);
  if (!v5)
  {
    return WebCore::ImageBufferBackend::calculateMemoryCost(a1, v6);
  }

  __break(0xC471u);
  return result;
}

void WebKit::ImageBufferShareableBitmapBackend::create(uint64_t a1@<X0>, uint64_t a2@<X1>, const WebCore::DestinationColorSpace *a3@<X2>, uint64_t *a4@<X8>)
{
  v6 = WebKit::ImageBufferShareableBitmapBackend::calculateSafeBackendSize(a1, a2, a3);
  v21 = v6;
  if (v6.m_width < 1 || v6.m_height <= 0)
  {
    goto LABEL_22;
  }

  v7 = *(a1 + 16);
  v15 = v7;
  if (v7)
  {
    CFRetain(v7);
  }

  v16 = 1;
  MEMORY[0x19EB0C920](&v17, &v21, &v15, 0, 1.0);
  WebCore::ShareableBitmap::create();
  if (v19 == 1)
  {
    v8 = cf;
    cf = 0;
    if (v8)
    {
      CFRelease(v8);
    }
  }

  if (v16 == 1)
  {
    v9 = v15;
    v15 = 0;
    if (v9)
    {
      CFRelease(v9);
    }
  }

  if (v20)
  {
    if (WebCore::ProcessIdentity::operator BOOL())
    {
      WebCore::ShareableBitmap::setOwnershipOfMemory();
    }

    WebCore::ShareableBitmap::createGraphicsContext(&v17, v20);
    if (v17)
    {
      v14 = v20;
      v20 = 0;
      v11 = WebKit::ImageBufferShareableBitmapBackend::operator new(0x48, v10);
      *a4 = WebKit::ImageBufferShareableBitmapBackend::ImageBufferShareableBitmapBackend(v11, a1, &v14, &v17);
      if (v14)
      {
        WTF::ThreadSafeRefCounted<WebCore::ShareableBitmap,(WTF::DestructionThread)0>::deref(v14, v10);
      }

      v12 = v17;
      v17 = 0;
      if (v12)
      {
        (*(*v12 + 8))(v12);
      }
    }

    else
    {
      *a4 = 0;
    }

    v13 = v20;
    v20 = 0;
    if (v13)
    {
      WTF::ThreadSafeRefCounted<WebCore::ShareableBitmap,(WTF::DestructionThread)0>::deref(v13, v10);
    }
  }

  else
  {
LABEL_22:
    *a4 = 0;
  }
}

WebCore::ShareableBitmap *WebKit::ImageBufferShareableBitmapBackend::create@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  WebCore::ShareableBitmap::create();
  result = v10;
  if (v10)
  {
    WebCore::ShareableBitmap::createGraphicsContext(&v9, v10);
    if (v9)
    {
      v8 = v10;
      v10 = 0;
      v6 = WebKit::ImageBufferShareableBitmapBackend::operator new(0x48, v5);
      *a2 = WebKit::ImageBufferShareableBitmapBackend::ImageBufferShareableBitmapBackend(v6, a1, &v8, &v9);
      if (v8)
      {
        WTF::ThreadSafeRefCounted<WebCore::ShareableBitmap,(WTF::DestructionThread)0>::deref(v8, v5);
      }

      v7 = v9;
      v9 = 0;
      if (v7)
      {
        (*(*v7 + 8))(v7);
      }
    }

    else
    {
      *a2 = 0;
    }

    result = v10;
    v10 = 0;
    if (result)
    {
      return WTF::ThreadSafeRefCounted<WebCore::ShareableBitmap,(WTF::DestructionThread)0>::deref(result, v5);
    }
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

uint64_t WebKit::ImageBufferShareableBitmapBackend::ImageBufferShareableBitmapBackend(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  WebCore::ImageBufferCGBackend::ImageBufferCGBackend();
  *a1 = &unk_1F1123800;
  v7 = *a3;
  *a3 = 0;
  *(a1 + 48) = &unk_1F11238F8;
  *(a1 + 56) = v7;
  v8 = *a4;
  *a4 = 0;
  *(a1 + 64) = v8;
  v9.n128_u32[0] = *(a1 + 16);
  (*(*v8 + 704))(v9);
  return a1;
}

void WebKit::ImageBufferShareableBitmapBackend::~ImageBufferShareableBitmapBackend(WebKit::ImageBufferShareableBitmapBackend *this, void *a2)
{
  v3 = *(this + 8);
  *(this + 8) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 7);
  *(this + 7) = 0;
  if (v4)
  {
    WTF::ThreadSafeRefCounted<WebCore::ShareableBitmap,(WTF::DestructionThread)0>::deref(v4, a2);
  }

  MEMORY[0x1EEE578C0](this);
}

{
  WebKit::ImageBufferShareableBitmapBackend::~ImageBufferShareableBitmapBackend(this, a2);

  bmalloc::api::tzoneFree(v2, v3);
}

void non-virtual thunk toWebKit::ImageBufferShareableBitmapBackend::~ImageBufferShareableBitmapBackend(WebKit::ImageBufferShareableBitmapBackend *this, void *a2)
{
  WebKit::ImageBufferShareableBitmapBackend::~ImageBufferShareableBitmapBackend((this - 48), a2);
}

{
  WebKit::ImageBufferShareableBitmapBackend::~ImageBufferShareableBitmapBackend((this - 48), a2);

  bmalloc::api::tzoneFree(v2, v3);
}

void WebKit::ImageBufferShareableBitmapBackend::createBackendHandle(_BYTE *a1@<X8>)
{
  WebCore::ShareableBitmap::createHandle();
  if (v7 == 1)
  {
    WebCore::ShareableBitmapHandle::ShareableBitmapHandle(v3, v4);
    v3[80] = 0;
    mpark::variant<WebCore::ShareableBitmapHandle,WTF::MachSendRight>::variant(a1, v3);
    a1[88] = 1;
    mpark::detail::move_constructor<mpark::detail::traits<WebCore::ShareableBitmapHandle,WTF::MachSendRight>,(mpark::detail::Trait)1>::~move_constructor(v3);
    if (v7)
    {
      if (v6 == 1)
      {
        v2 = cf;
        cf = 0;
        if (v2)
        {
          CFRelease(v2);
        }
      }

      WTF::MachSendRight::~MachSendRight(v4);
    }
  }

  else
  {
    *a1 = 0;
    a1[88] = 0;
  }
}

uint64_t WebKit::ImageBufferShareableBitmapBackend::transferToNewContext(WebKit::ImageBufferShareableBitmapBackend *this, const WebCore::ImageBufferCreationContext *a2)
{
  result = WebCore::ProcessIdentity::operator BOOL();
  if (result)
  {

    return WebCore::ShareableBitmap::setOwnershipOfMemory();
  }

  return result;
}

uint64_t WebKit::ImageBufferShareableBitmapBackend::bytesPerRow(uint64_t this)
{
  v1 = *(this + 56);
  if (!*(v1 + 56))
  {
    return *(v1 + 60);
  }

  __break(0xC471u);
  return this;
}

void WebKit::ImageBufferShareableBitmapBackend::copyNativeImage(WebKit::ImageBufferShareableBitmapBackend *this)
{
  WebCore::ShareableBitmap::createPlatformImage();
  if (WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
  {
    __break(0xC471u);
  }

  else
  {
    WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
    WebCore::NativeImage::create();
    if (cf)
    {
      CFRelease(cf);
    }
  }
}

void WebKit::ImageBufferShareableBitmapBackend::createNativeImageReference(WebKit::ImageBufferShareableBitmapBackend *this)
{
  WebCore::ShareableBitmap::createPlatformImage();
  if (WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
  {
    __break(0xC471u);
  }

  else
  {
    WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
    WebCore::NativeImage::create();
    if (cf)
    {
      CFRelease(cf);
    }
  }
}

uint64_t WebKit::ImageBufferShareableBitmapBackend::getPixelBuffer(WebCore::ShareableBitmap **this, const WebCore::IntRect *a2, WebCore::PixelBuffer *a3)
{
  v7 = WebCore::ShareableBitmap::span(this[7]);

  return MEMORY[0x1EEE56F68](this, a2, v7, v6, a3);
}

uint64_t WebKit::ImageBufferShareableBitmapBackend::putPixelBuffer(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = WebCore::ShareableBitmap::mutableSpan(*(a1 + 56));

  return MEMORY[0x1EEE56F70](a1, a2, a3, a4, a5, v11, v10);
}

WTF::StringImpl *WebKit::ImageBufferShareableBitmapBackend::debugDescription@<X0>(uint64_t *a1@<X8>)
{
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = 1;
  v10 = 0;
  v11 = 256;
  v12 = 0;
  WTF::TextStream::operator<<();
  WTF::TextStream::operator<<();
  WTF::TextStream::release(a1, &v6);
  v4 = v7;
  v7 = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, v3);
  }

  result = v6;
  v6 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v3);
    }
  }

  return result;
}

void WebCore::GraphicsContextState::~GraphicsContextState(WebCore::GraphicsContextState *this, void *a2)
{
  if (*(this + 288) == 1)
  {
    mpark::detail::move_constructor<mpark::detail::traits<WebCore::GraphicsDropShadow,WebCore::GraphicsGaussianBlur,WebCore::GraphicsColorMatrix>,(mpark::detail::Trait)1>::~move_constructor(this + 200, a2);
  }

  if (*(this + 192) == 1)
  {
    v3 = *(this + 22);
    if ((v3 & 0x8000000000000) != 0)
    {
      v10 = (v3 & 0xFFFFFFFFFFFFLL);
      if (atomic_fetch_add((v3 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v10);
        WTF::fastFree(v10, a2);
      }
    }
  }

  v4 = *(this + 136);
  if (*(this + 136) && v4 != 255)
  {
    if (v4 == 1)
    {
      WTF::Ref<WebCore::Gradient,WTF::RawPtrTraits<WebCore::Gradient>,WTF::DefaultRefDerefTraits<WebCore::Gradient>>::~Ref(this + 10, a2);
    }

    else
    {
      v11 = *(this + 10);
      *(this + 10) = 0;
      if (v11)
      {
        WTF::ThreadSafeRefCounted<WebCore::Pattern,(WTF::DestructionThread)0>::deref(v11);
      }
    }
  }

  *(this + 136) = -1;
  v5 = *(this + 9);
  if ((v5 & 0x8000000000000) != 0)
  {
    v8 = (v5 & 0xFFFFFFFFFFFFLL);
    if (atomic_fetch_add((v5 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v8);
      WTF::fastFree(v8, a2);
    }
  }

  v6 = *(this + 64);
  if (*(this + 64) && v6 != 255)
  {
    if (v6 == 1)
    {
      WTF::Ref<WebCore::Gradient,WTF::RawPtrTraits<WebCore::Gradient>,WTF::DefaultRefDerefTraits<WebCore::Gradient>>::~Ref(this + 1, a2);
    }

    else
    {
      v12 = *(this + 1);
      *(this + 1) = 0;
      if (v12)
      {
        WTF::ThreadSafeRefCounted<WebCore::Pattern,(WTF::DestructionThread)0>::deref(v12);
      }
    }
  }

  *(this + 64) = -1;
  v7 = *this;
  if ((*this & 0x8000000000000) != 0)
  {
    v9 = (v7 & 0xFFFFFFFFFFFFLL);
    if (atomic_fetch_add((v7 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v9);
      WTF::fastFree(v9, a2);
    }
  }
}

void WebKit::RemoteDisplayListRecorderProxy::~RemoteDisplayListRecorderProxy(WebKit::SharedVideoFrameWriter **this)
{
  *this = &unk_1F1123948;
  std::unique_ptr<WebKit::SharedVideoFrameWriter>::reset[abi:sn200100](this + 445, 0);
  v3 = this[443];
  this[443] = 0;
  if (v3)
  {
    WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v3, v2);
  }

  v4 = this[440];
  this[440] = 0;
  if (v4 && atomic_fetch_add(v4, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v4);
    WTF::fastFree(v4, v2);
  }

  v5 = this[439];
  this[439] = 0;
  if (v5 && atomic_fetch_add(v5, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v5);
    IPC::StreamClientConnection::operator delete(v5);
  }

  MEMORY[0x1EEE54240](this);
}

{
  WebKit::RemoteDisplayListRecorderProxy::~RemoteDisplayListRecorderProxy(this);

  bmalloc::api::tzoneFree(v1, v2);
}

_BYTE *WebKit::RemoteDisplayListRecorderProxy::didBecomeUnresponsive(_BYTE *this)
{
  if (this)
  {
    v1 = *(this + 1);
    if (v1)
    {
      ++*(v1 + 20);
      this = WebKit::RemoteRenderingBackendProxy::didBecomeUnresponsive(v1);
      if (*(v1 + 20) == 1)
      {
        v2 = *(*v1 + 24);

        return v2(v1);
      }

      else
      {
        --*(v1 + 20);
      }
    }
  }

  return this;
}

void WebKit::RemoteDisplayListRecorderProxy::save(uint64_t a1)
{
  v40 = *MEMORY[0x1E69E9840];
  updated = WebCore::DisplayList::Recorder::updateStateForSave();
  v4 = *(a1 + 3512);
  if (!v4)
  {
    goto LABEL_49;
  }

  atomic_fetch_add(v4, 1u);
  while (1)
  {
    if ((*(a1 + 3584) & 1) == 0)
    {
      updated = *(a1 + 3544);
      if (updated)
      {
        WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteImageBufferProxy>(updated, *(a1 + 3536), v39);
        updated = *v39;
        if (*v39)
        {
          updated = WebKit::RemoteImageBufferProxy::ensureBackend(*v39, v36);
          if (updated)
          {
            updated = (*(*updated + 168))(updated);
          }

          v38 = *v39;
          *v39 = 0;
          if (v38)
          {
            updated = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::ImageBuffer,(WTF::DestructionThread)0>::deref((v38 + 8), v37);
          }
        }
      }

      *(a1 + 3584) = 1;
    }

    v5 = *(a1 + 3504);
    v6 = *(v4 + 128);
    v7 = INFINITY;
    if (fabs(v6) != INFINITY)
    {
      WTF::ApproximateTime::now(updated);
      v7 = v6 + v8;
    }

    if (*(v4 + 64) == v5)
    {
      goto LABEL_7;
    }

    IPC::StreamClientConnectionBuffer::tryAcquire(v4 + 72, v39, v7);
    if (v39[16] != 1)
    {
      break;
    }

    v17 = *&v39[8];
    if (*&v39[8] <= 1uLL)
    {
LABEL_67:
      __break(0xC471u);
      JUMPOUT(0x19E1A6D20);
    }

    v18 = *v39;
    **v39 = 3198;
    v19 = v18 + 2;
    if (v17 - 2 < (-v19 & 7 | 8uLL))
    {
      break;
    }

    v20 = -v19 & 7;
    *(v19 + v20) = v5;
    v21 = 6;
    if (v20 > 6)
    {
      v21 = v20;
    }

    v22 = v21 + 10;
    v23 = (*(v4 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
    v24 = *(v4 + 72);
    if (v23 + 16 >= v24)
    {
      v23 = 0;
    }

    v25 = v22 + v23;
    if (v24 <= v25)
    {
      v25 = 0;
    }

    *(v4 + 88) = v25;
    v26 = *(v4 + 80);
    if (*(v26 + 8) <= 0xFFuLL)
    {
      goto LABEL_48;
    }

    v27 = atomic_exchange((*(v26 + 16) + 128), v25);
    v28 = *(v4 + 124);
    if (v27 == 0x80000000 || v28 != 0)
    {
      v30 = v28 + 1;
      *(v4 + 124) = v30;
      if (v30 >= *(v4 + 120))
      {
        if (*(v4 + 112) == 1)
        {
          MEMORY[0x19EB16320](*(v4 + 100));
        }

        *(v4 + 124) = 0;
      }
    }

    *(v4 + 64) = v5;
LABEL_7:
    IPC::StreamClientConnectionBuffer::tryAcquire(v4 + 72, v39, v7);
    if (v39[16] != 1)
    {
      break;
    }

    if (*&v39[8] <= 1uLL)
    {
      goto LABEL_67;
    }

    **v39 = 1100;
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
      v13 = atomic_exchange((*(v10 + 16) + 128), v12);
      v14 = *(v4 + 124);
      if (v13 == 0x80000000 || v14 != 0)
      {
        v16 = v14 + 1;
        *(v4 + 124) = v16;
        if (v16 >= *(v4 + 120))
        {
          if (*(v4 + 112) == 1)
          {
            MEMORY[0x19EB16320](*(v4 + 100));
          }

          *(v4 + 124) = 0;
        }
      }

      goto LABEL_19;
    }

LABEL_48:
    __break(1u);
LABEL_49:
    v31 = *(a1 + 3520);
    if (!v31)
    {
      return;
    }

    v32 = *(v31 + 8);
    if (!v32)
    {
      return;
    }

    ++*(v32 + 5);
    v33 = WebKit::RemoteRenderingBackendProxy::connection(v32, v3, v39);
    v4 = *v39;
    if (*(v32 + 5) == 1)
    {
      (*(*v32 + 24))(v32, v33);
    }

    else
    {
      --*(v32 + 5);
    }

    if (!v4)
    {
      return;
    }

    atomic_fetch_add(v4, 1u);
    updated = *(a1 + 3512);
    *(a1 + 3512) = v4;
    if (updated && atomic_fetch_add(updated, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, updated);
      IPC::StreamClientConnection::operator delete(updated);
    }
  }

  v34 = qword_1ED6410D0;
  if (os_log_type_enabled(qword_1ED6410D0, OS_LOG_TYPE_DEFAULT))
  {
    v35 = IPC::errorAsString();
    *v39 = 136446466;
    *&v39[4] = "RemoteDisplayListRecorder_Save";
    *&v39[12] = 2082;
    *&v39[14] = v35;
    _os_log_impl(&dword_19D52D000, v34, OS_LOG_TYPE_DEFAULT, "RemoteDisplayListRecorderProxy::send - failed, name:%{public}s, error:%{public}s", v39, 0x16u);
  }

  WebKit::RemoteDisplayListRecorderProxy::didBecomeUnresponsive(*(a1 + 3520));
LABEL_19:
  if (atomic_fetch_add(v4, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v4);
    IPC::StreamClientConnection::operator delete(v4);
  }
}

void WebKit::RemoteDisplayListRecorderProxy::restore(uint64_t a1)
{
  v40 = *MEMORY[0x1E69E9840];
  updated = WebCore::DisplayList::Recorder::updateStateForRestore();
  if (!updated)
  {
    return;
  }

  v4 = *(a1 + 3512);
  if (!v4)
  {
    goto LABEL_48;
  }

  atomic_fetch_add(v4, 1u);
  while (1)
  {
    if ((*(a1 + 3584) & 1) == 0)
    {
      updated = *(a1 + 3544);
      if (updated)
      {
        WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteImageBufferProxy>(updated, *(a1 + 3536), v39);
        updated = *v39;
        if (*v39)
        {
          updated = WebKit::RemoteImageBufferProxy::backingStoreWillChange(*v39, v36);
          v38 = *v39;
          *v39 = 0;
          if (v38)
          {
            updated = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::ImageBuffer,(WTF::DestructionThread)0>::deref((v38 + 8), v37);
          }
        }
      }

      *(a1 + 3584) = 1;
    }

    v5 = *(a1 + 3504);
    v6 = *(v4 + 128);
    v7 = INFINITY;
    if (fabs(v6) != INFINITY)
    {
      WTF::ApproximateTime::now(updated);
      v7 = v6 + v8;
    }

    if (*(v4 + 64) == v5)
    {
      goto LABEL_8;
    }

    IPC::StreamClientConnectionBuffer::tryAcquire(v4 + 72, v39, v7);
    if (v39[16] != 1)
    {
      break;
    }

    v17 = *&v39[8];
    if (*&v39[8] <= 1uLL)
    {
LABEL_65:
      __break(0xC471u);
      JUMPOUT(0x19E1A7108);
    }

    v18 = *v39;
    **v39 = 3198;
    v19 = v18 + 2;
    if (v17 - 2 < (-v19 & 7 | 8uLL))
    {
      break;
    }

    v20 = -v19 & 7;
    *(v19 + v20) = v5;
    v21 = 6;
    if (v20 > 6)
    {
      v21 = v20;
    }

    v22 = v21 + 10;
    v23 = (*(v4 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
    v24 = *(v4 + 72);
    if (v23 + 16 >= v24)
    {
      v23 = 0;
    }

    v25 = v22 + v23;
    if (v24 <= v25)
    {
      v25 = 0;
    }

    *(v4 + 88) = v25;
    v26 = *(v4 + 80);
    if (*(v26 + 8) <= 0xFFuLL)
    {
      goto LABEL_47;
    }

    v27 = atomic_exchange((*(v26 + 16) + 128), v25);
    v28 = *(v4 + 124);
    if (v27 == 0x80000000 || v28 != 0)
    {
      v30 = v28 + 1;
      *(v4 + 124) = v30;
      if (v30 >= *(v4 + 120))
      {
        if (*(v4 + 112) == 1)
        {
          MEMORY[0x19EB16320](*(v4 + 100));
        }

        *(v4 + 124) = 0;
      }
    }

    *(v4 + 64) = v5;
LABEL_8:
    IPC::StreamClientConnectionBuffer::tryAcquire(v4 + 72, v39, v7);
    if (v39[16] != 1)
    {
      break;
    }

    if (*&v39[8] <= 1uLL)
    {
      goto LABEL_65;
    }

    **v39 = 1098;
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
      v13 = atomic_exchange((*(v10 + 16) + 128), v12);
      v14 = *(v4 + 124);
      if (v13 == 0x80000000 || v14 != 0)
      {
        v16 = v14 + 1;
        *(v4 + 124) = v16;
        if (v16 >= *(v4 + 120))
        {
          if (*(v4 + 112) == 1)
          {
            MEMORY[0x19EB16320](*(v4 + 100));
          }

          *(v4 + 124) = 0;
        }
      }

      goto LABEL_20;
    }

LABEL_47:
    __break(1u);
LABEL_48:
    v31 = *(a1 + 3520);
    if (!v31)
    {
      return;
    }

    v32 = *(v31 + 8);
    if (!v32)
    {
      return;
    }

    ++*(v32 + 5);
    v33 = WebKit::RemoteRenderingBackendProxy::connection(v32, v3, v39);
    v4 = *v39;
    if (*(v32 + 5) == 1)
    {
      (*(*v32 + 24))(v32, v33);
    }

    else
    {
      --*(v32 + 5);
    }

    if (!v4)
    {
      return;
    }

    updated = WTF::RefPtr<IPC::StreamClientConnection,WTF::RawPtrTraits<IPC::StreamClientConnection>,WTF::DefaultRefDerefTraits<IPC::StreamClientConnection>>::operator=((a1 + 3512), v4);
  }

  v34 = qword_1ED6410D0;
  if (os_log_type_enabled(qword_1ED6410D0, OS_LOG_TYPE_DEFAULT))
  {
    v35 = IPC::errorAsString();
    *v39 = 136446466;
    *&v39[4] = "RemoteDisplayListRecorder_Restore";
    *&v39[12] = 2082;
    *&v39[14] = v35;
    _os_log_impl(&dword_19D52D000, v34, OS_LOG_TYPE_DEFAULT, "RemoteDisplayListRecorderProxy::send - failed, name:%{public}s, error:%{public}s", v39, 0x16u);
  }

  WebKit::RemoteDisplayListRecorderProxy::didBecomeUnresponsive(*(a1 + 3520));
LABEL_20:
  if (atomic_fetch_add(v4, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v4);
    IPC::StreamClientConnection::operator delete(v4);
  }
}

void WebKit::RemoteDisplayListRecorderProxy::translate(WebKit::RemoteDisplayListRecorderProxy *this, float a2, float a3)
{
  v60 = *MEMORY[0x1E69E9840];
  updated = WebCore::DisplayList::Recorder::updateStateForTranslate(this, a2, a3);
  if (updated)
  {
    v8 = *(this + 439);
    if (v8)
    {
      atomic_fetch_add(v8, 1u);
      goto LABEL_4;
    }

    v39 = *(this + 440);
    if (v39)
    {
      v40 = *(v39 + 8);
      if (v40)
      {
        ++*(v40 + 5);
        v41 = WebKit::RemoteRenderingBackendProxy::connection(v40, v7, buf);
        v8 = *buf;
        if (*(v40 + 5) == 1)
        {
          (*(*v40 + 24))(v40, v41);
        }

        else
        {
          --*(v40 + 5);
        }

        if (v8)
        {
          atomic_fetch_add(v8, 1u);
          updated = *(this + 439);
          *(this + 439) = v8;
          if (updated && atomic_fetch_add(updated, 0xFFFFFFFF) == 1)
          {
            atomic_store(1u, updated);
            IPC::StreamClientConnection::operator delete(updated);
          }

LABEL_4:
          if ((*(this + 3584) & 1) == 0)
          {
            updated = *(this + 443);
            if (updated)
            {
              WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteImageBufferProxy>(updated, *(this + 442), buf);
              updated = *buf;
              if (*buf)
              {
                updated = WebKit::RemoteImageBufferProxy::backingStoreWillChange(*buf, v54);
                v56 = *buf;
                *buf = 0;
                if (v56)
                {
                  updated = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::ImageBuffer,(WTF::DestructionThread)0>::deref((v56 + 8), v55);
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
            WTF::ApproximateTime::now(updated);
            v11 = v10 + v12;
          }

          if (*(v8 + 64) != v9)
          {
            IPC::StreamClientConnectionBuffer::tryAcquire(v8 + 72, buf, v11);
            if (buf[16] != 1)
            {
              goto LABEL_73;
            }

            v27 = *&buf[8];
            if (*&buf[8] <= 1uLL)
            {
              __break(0xC471u);
              JUMPOUT(0x19E1A76D0);
            }

            v28 = *buf;
            **buf = 3198;
            v29 = v28 + 2;
            if (v27 - 2 < (-v29 & 7 | 8uLL))
            {
              goto LABEL_73;
            }

            v30 = -v29 & 7;
            *(v29 + v30) = v9;
            v31 = 6;
            if (v30 > 6)
            {
              v31 = v30;
            }

            v32 = v31 + 10;
            v33 = (*(v8 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
            v34 = *(v8 + 72);
            if (v33 + 16 >= v34)
            {
              v33 = 0;
            }

            v21 = v32 + v33;
            if (v34 <= v21)
            {
              v21 = 0;
            }

            *(v8 + 88) = v21;
            v18 = *(v8 + 80);
            if (*(v18 + 8) <= 0xFFuLL)
            {
              goto LABEL_70;
            }

            v35 = atomic_exchange((*(v18 + 16) + 128), v21);
            v36 = *(v8 + 124);
            if (v35 == 0x80000000 || v36 != 0)
            {
              v38 = v36 + 1;
              *(v8 + 124) = v38;
              if (v38 >= *(v8 + 120))
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

          IPC::StreamClientConnectionBuffer::tryAcquire(v8 + 72, buf, v11);
          if (buf[16])
          {
            v14 = *&buf[8];
            if (*&buf[8] <= 1uLL)
            {
              goto LABEL_84;
            }

            v15 = *buf;
            **buf = 1145;
            v16 = v15 + 2;
            v17 = -v16 & 3 | 4;
            v18 = v14 - 2 - v17;
            if (v14 - 2 >= v17)
            {
              *(v16 + (-v16 & 3)) = a2;
              v19 = v16 + v17;
              v20 = -v19 & 3 | 4;
              if (v18 >= v20)
              {
                *(v19 + (-v19 & 3)) = a3;
                v21 = v14 - v18 + v20;
                if (v21 <= 0x10)
                {
                  v21 = 16;
                }

                v22 = (*(v8 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
                v18 = *(v8 + 72);
                if (v22 + 16 >= v18)
                {
                  goto LABEL_71;
                }

                while (1)
                {
                  v21 += v22;
                  if (v18 <= v21)
                  {
                    v21 = 0;
                  }

                  *(v8 + 88) = v21;
                  v18 = *(v8 + 80);
                  if (*(v18 + 8) > 0xFFuLL)
                  {
                    break;
                  }

LABEL_70:
                  __break(1u);
LABEL_71:
                  v22 = 0;
                }

                v23 = atomic_exchange((*(v18 + 16) + 128), v21);
                v24 = *(v8 + 124);
                if (v23 == 0x80000000 || v24 != 0)
                {
                  v26 = v24 + 1;
                  *(v8 + 124) = v26;
                  if (v26 >= *(v8 + 120))
                  {
                    if (*(v8 + 112) == 1)
                    {
                      MEMORY[0x19EB16320](*(v8 + 100));
                    }

                    *(v8 + 124) = 0;
                  }
                }

                goto LABEL_23;
              }
            }

            v57 = v9;
            v21 = buf[16];
            if ((buf[16] & 1) == 0)
            {
              goto LABEL_70;
            }

            if (*&buf[8] <= 1uLL)
            {
LABEL_84:
              __break(0xC471u);
              JUMPOUT(0x19E1A76B0);
            }

            **buf = 3197;
            v42 = (*(v8 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
            v43 = *(v8 + 72);
            if (v42 + 16 >= v43)
            {
              v42 = 0;
            }

            v44 = v42 + 16;
            if (v43 <= v44)
            {
              v21 = 0;
            }

            else
            {
              v21 = v44;
            }

            *(v8 + 88) = v21;
            v18 = *(v8 + 80);
            if (*(v18 + 8) <= 0xFFuLL)
            {
              goto LABEL_70;
            }

            atomic_exchange((*(v18 + 16) + 128), v21);
            *(v8 + 124) = 0;
            v45 = *(v8 + 8);
            v46 = IPC::Encoder::operator new(0x238, v13);
            *v46 = 1145;
            *(v46 + 2) = 0;
            *(v46 + 3) = 0;
            *(v46 + 1) = v57;
            *(v46 + 68) = 0;
            *(v46 + 70) = 0;
            *(v46 + 69) = 0;
            IPC::Encoder::encodeHeader(v46);
            v58 = v46;
            IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(v46, a2);
            IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(v46, a3);
            v48 = IPC::Connection::sendMessageImpl(v45, &v58, 1, 0);
            v49 = v58;
            v58 = 0;
            if (v49)
            {
              IPC::Encoder::~Encoder(v49, v47);
              bmalloc::api::tzoneFree(v50, v51);
            }

            if (!v48)
            {
LABEL_23:
              if (atomic_fetch_add(v8, 0xFFFFFFFF) == 1)
              {
                atomic_store(1u, v8);
                IPC::StreamClientConnection::operator delete(v8);
              }

              return;
            }
          }

LABEL_73:
          v52 = qword_1ED6410D0;
          if (os_log_type_enabled(qword_1ED6410D0, OS_LOG_TYPE_DEFAULT))
          {
            v53 = IPC::errorAsString();
            *buf = 136446466;
            *&buf[4] = "RemoteDisplayListRecorder_Translate";
            *&buf[12] = 2082;
            *&buf[14] = v53;
            _os_log_impl(&dword_19D52D000, v52, OS_LOG_TYPE_DEFAULT, "RemoteDisplayListRecorderProxy::send - failed, name:%{public}s, error:%{public}s", buf, 0x16u);
          }

          WebKit::RemoteDisplayListRecorderProxy::didBecomeUnresponsive(*(this + 440));
          goto LABEL_23;
        }
      }
    }
  }
}

void WebKit::RemoteDisplayListRecorderProxy::rotate(WebKit::RemoteDisplayListRecorderProxy *this, float a2)
{
  v41 = *MEMORY[0x1E69E9840];
  updated = WebCore::DisplayList::Recorder::updateStateForRotate(this, a2);
  if (updated)
  {
    v39 = a2;
    v6 = *(this + 439);
    if (v6)
    {
      atomic_fetch_add(v6, 1u);
      goto LABEL_4;
    }

    v33 = *(this + 440);
    if (v33)
    {
      v34 = *(v33 + 8);
      if (v34)
      {
        ++*(v34 + 5);
        v35 = WebKit::RemoteRenderingBackendProxy::connection(v34, v5, buf);
        v6 = *buf;
        if (*(v34 + 5) == 1)
        {
          (*(*v34 + 24))(v34, v35);
        }

        else
        {
          --*(v34 + 5);
        }

        if (v6)
        {
          updated = WTF::RefPtr<IPC::StreamClientConnection,WTF::RawPtrTraits<IPC::StreamClientConnection>,WTF::DefaultRefDerefTraits<IPC::StreamClientConnection>>::operator=(this + 439, v6);
LABEL_4:
          if ((*(this + 3584) & 1) == 0)
          {
            updated = *(this + 443);
            if (updated)
            {
              WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteImageBufferProxy>(updated, *(this + 442), buf);
              updated = *buf;
              if (*buf)
              {
                updated = WebKit::RemoteImageBufferProxy::backingStoreWillChange(*buf, v36);
                v38 = *buf;
                *buf = 0;
                if (v38)
                {
                  updated = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::ImageBuffer,(WTF::DestructionThread)0>::deref((v38 + 8), v37);
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
              goto LABEL_41;
            }

            v22 = *&buf[8];
            if (*&buf[8] <= 1uLL)
            {
              goto LABEL_60;
            }

            v23 = *buf;
            **buf = 3198;
            v24 = v23 + 2;
            if (v22 - 2 < (-v24 & 7 | 8uLL))
            {
              goto LABEL_41;
            }

            v25 = -v24 & 7;
            *(v24 + v25) = v7;
            v26 = 6;
            if (v25 > 6)
            {
              v26 = v25;
            }

            v27 = v26 + 10;
            v28 = (*(v6 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
            v29 = *(v6 + 72);
            if (v28 + 16 >= v29)
            {
              v28 = 0;
            }

            v15 = v27 + v28;
            if (v29 <= v15)
            {
              v15 = 0;
            }

            *(v6 + 88) = v15;
            v30 = *(v6 + 80);
            if (*(v30 + 8) <= 0xFFuLL)
            {
              goto LABEL_53;
            }

            IPC::StreamClientConnection::wakeUpServerBatched(v6, atomic_exchange((*(v30 + 16) + 128), v15) == 0x80000000);
            *(v6 + 64) = v7;
          }

          IPC::StreamClientConnectionBuffer::tryAcquire(v6 + 72, buf, v9);
          if ((buf[16] & 1) == 0)
          {
            goto LABEL_41;
          }

          v11 = *&buf[8];
          if (*&buf[8] > 1uLL)
          {
            v12 = *buf;
            **buf = 1099;
            v13 = v12 + 2;
            if (v11 - 2 >= (-v13 & 3 | 4uLL))
            {
              *(v13 + (-v13 & 3)) = v39;
              v14 = (*(v6 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
              v15 = *(v6 + 72);
              if (v14 + 16 >= v15)
              {
                goto LABEL_54;
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

LABEL_53:
                __break(1u);
LABEL_54:
                v14 = 0;
              }

              v18 = atomic_exchange((*(v17 + 16) + 128), v15);
              v19 = *(v6 + 124);
              if (v18 == 0x80000000 || v19 != 0)
              {
                v21 = v19 + 1;
                *(v6 + 124) = v21;
                if (v21 >= *(v6 + 120))
                {
                  if (*(v6 + 112) == 1)
                  {
                    MEMORY[0x19EB16320](*(v6 + 100));
                  }

                  *(v6 + 124) = 0;
                }
              }

              goto LABEL_21;
            }

            v15 = buf[16];
            if ((buf[16] & 1) == 0)
            {
              goto LABEL_53;
            }

            IPC::StreamClientConnection::sendProcessOutOfStreamMessage(v6, *buf, *&buf[8]);
            if (!IPC::Connection::send<Messages::RemoteDisplayListRecorder::Rotate>(*(v6 + 8), &v39, v7))
            {
              goto LABEL_21;
            }

LABEL_41:
            v31 = qword_1ED6410D0;
            if (os_log_type_enabled(qword_1ED6410D0, OS_LOG_TYPE_DEFAULT))
            {
              v32 = IPC::errorAsString();
              *buf = 136446466;
              *&buf[4] = "RemoteDisplayListRecorder_Rotate";
              *&buf[12] = 2082;
              *&buf[14] = v32;
              _os_log_impl(&dword_19D52D000, v31, OS_LOG_TYPE_DEFAULT, "RemoteDisplayListRecorderProxy::send - failed, name:%{public}s, error:%{public}s", buf, 0x16u);
            }

            WebKit::RemoteDisplayListRecorderProxy::didBecomeUnresponsive(*(this + 440));
LABEL_21:
            if (atomic_fetch_add(v6, 0xFFFFFFFF) == 1)
            {
              atomic_store(1u, v6);
              IPC::StreamClientConnection::operator delete(v6);
            }

            return;
          }

LABEL_60:
          __break(0xC471u);
          JUMPOUT(0x19E1A7B4CLL);
        }
      }
    }
  }
}

void WebKit::RemoteDisplayListRecorderProxy::scale(WebKit::RemoteDisplayListRecorderProxy *this, const WebCore::FloatSize *a2)
{
  v45 = *MEMORY[0x1E69E9840];
  updated = WebCore::DisplayList::Recorder::updateStateForScale(this, a2);
  if (updated)
  {
    v40 = a2;
    v6 = *(this + 439);
    if (v6)
    {
      atomic_fetch_add(v6, 1u);
      goto LABEL_4;
    }

    v32 = *(this + 440);
    if (v32)
    {
      v33 = *(v32 + 8);
      if (v33)
      {
        ++*(v33 + 5);
        v34 = WebKit::RemoteRenderingBackendProxy::connection(v33, v5, buf);
        v6 = *buf;
        if (*(v33 + 5) == 1)
        {
          (*(*v33 + 24))(v33, v34);
        }

        else
        {
          --*(v33 + 5);
        }

        if (v6)
        {
          updated = WTF::RefPtr<IPC::StreamClientConnection,WTF::RawPtrTraits<IPC::StreamClientConnection>,WTF::DefaultRefDerefTraits<IPC::StreamClientConnection>>::operator=(this + 439, v6);
LABEL_4:
          if ((*(this + 3584) & 1) == 0)
          {
            updated = *(this + 443);
            if (updated)
            {
              WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteImageBufferProxy>(updated, *(this + 442), buf);
              updated = *buf;
              if (*buf)
              {
                updated = WebKit::RemoteImageBufferProxy::ensureBackend(*buf, v37);
                if (updated)
                {
                  updated = (*(*updated + 168))(updated);
                }

                v39 = *buf;
                *buf = 0;
                if (v39)
                {
                  updated = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::ImageBuffer,(WTF::DestructionThread)0>::deref((v39 + 8), v38);
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
              goto LABEL_57;
            }

            v20 = *&buf[8];
            if (*&buf[8] <= 1uLL)
            {
              __break(0xC471u);
              goto LABEL_74;
            }

            v21 = *buf;
            **buf = 3198;
            v22 = v21 + 2;
            if (v20 - 2 < (-v22 & 7 | 8uLL))
            {
              goto LABEL_57;
            }

            v23 = -v22 & 7;
            *(v22 + v23) = v7;
            v24 = 6;
            if (v23 > 6)
            {
              v24 = v23;
            }

            v25 = v24 + 10;
            v26 = (*(v6 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
            v27 = *(v6 + 72);
            if (v26 + 16 >= v27)
            {
              v26 = 0;
            }

            v14 = v25 + v26;
            if (v27 <= v14)
            {
              v14 = 0;
            }

            *(v6 + 88) = v14;
            v13 = *(v6 + 80);
            if (*(v13 + 8) <= 0xFFuLL)
            {
              goto LABEL_63;
            }

            v28 = atomic_exchange((*(v13 + 16) + 128), v14);
            v29 = *(v6 + 124);
            if (v28 == 0x80000000 || v29 != 0)
            {
              v31 = v29 + 1;
              *(v6 + 124) = v31;
              if (v31 >= *(v6 + 120))
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

          IPC::StreamClientConnectionBuffer::tryAcquire(v6 + 72, &v41, v9);
          if ((v43 & 1) == 0)
          {
            goto LABEL_57;
          }

          v11 = v41;
          v12 = v42;
          *&buf[16] = v42;
          if (v42 > 1)
          {
            *v41 = 1101;
            *buf = v11 + 1;
            *&buf[8] = v12 - 2;
            IPC::StreamConnectionEncoder::operator<<<WebCore::FloatPoint const&>(buf, v40);
            if (*buf)
            {
              v14 = *&buf[16] - *&buf[8];
              if (*&buf[16] - *&buf[8] <= 0x10uLL)
              {
                v14 = 16;
              }

              v15 = (*(v6 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
              v13 = *(v6 + 72);
              if (v15 + 16 >= v13)
              {
                goto LABEL_64;
              }

              while (1)
              {
                v14 += v15;
                if (v13 <= v14)
                {
                  v14 = 0;
                }

                *(v6 + 88) = v14;
                v13 = *(v6 + 80);
                if (*(v13 + 8) > 0xFFuLL)
                {
                  break;
                }

LABEL_63:
                __break(1u);
LABEL_64:
                v15 = 0;
              }

              v16 = atomic_exchange((*(v13 + 16) + 128), v14);
              v17 = *(v6 + 124);
              if (v16 == 0x80000000 || v17 != 0)
              {
                v19 = v17 + 1;
                *(v6 + 124) = v19;
                if (v19 >= *(v6 + 120))
                {
                  if (*(v6 + 112) == 1)
                  {
                    MEMORY[0x19EB16320](*(v6 + 100));
                  }

                  *(v6 + 124) = 0;
                }
              }

              goto LABEL_22;
            }

            v14 = v43;
            if ((v43 & 1) == 0)
            {
              goto LABEL_63;
            }

            IPC::StreamClientConnection::sendProcessOutOfStreamMessage(v6, v41, v42);
            if (!IPC::Connection::send<Messages::RemoteDisplayListRecorder::Scale>(*(v6 + 8), &v40, v7))
            {
              goto LABEL_22;
            }

LABEL_57:
            v35 = qword_1ED6410D0;
            if (os_log_type_enabled(qword_1ED6410D0, OS_LOG_TYPE_DEFAULT))
            {
              v36 = IPC::errorAsString();
              *buf = 136446466;
              *&buf[4] = "RemoteDisplayListRecorder_Scale";
              *&buf[12] = 2082;
              *&buf[14] = v36;
              _os_log_impl(&dword_19D52D000, v35, OS_LOG_TYPE_DEFAULT, "RemoteDisplayListRecorderProxy::send - failed, name:%{public}s, error:%{public}s", buf, 0x16u);
            }

            WebKit::RemoteDisplayListRecorderProxy::didBecomeUnresponsive(*(this + 440));
LABEL_22:
            if (atomic_fetch_add(v6, 0xFFFFFFFF) == 1)
            {
              atomic_store(1u, v6);
              IPC::StreamClientConnection::operator delete(v6);
            }

            return;
          }

          __break(0xC471u);
LABEL_74:
          JUMPOUT(0x19E1A7FFCLL);
        }
      }
    }
  }
}

void WebKit::RemoteDisplayListRecorderProxy::setCTM(WebKit::RemoteDisplayListRecorderProxy *this, const WebCore::AffineTransform *a2)
{
  v60 = *MEMORY[0x1E69E9840];
  updated = WebCore::DisplayList::Recorder::updateStateForSetCTM();
  v6 = *(this + 439);
  if (v6)
  {
    atomic_fetch_add(v6, 1u);
    goto LABEL_3;
  }

  v39 = *(this + 440);
  if (v39)
  {
    v40 = *(v39 + 8);
    if (v40)
    {
      ++*(v40 + 5);
      v41 = WebKit::RemoteRenderingBackendProxy::connection(v40, v5, buf);
      v6 = *buf;
      if (*(v40 + 5) == 1)
      {
        (*(*v40 + 24))(v40, v41);
      }

      else
      {
        --*(v40 + 5);
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
              updated = WebKit::RemoteImageBufferProxy::backingStoreWillChange(*buf, v54);
              v56 = *buf;
              *buf = 0;
              if (v56)
              {
                updated = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::ImageBuffer,(WTF::DestructionThread)0>::deref((v56 + 8), v55);
              }
            }
          }

          *(this + 3584) = 1;
        }

        v7 = *(this + 438);
        v8 = *(v6 + 16);
        v9 = INFINITY;
        if (fabs(v8) != INFINITY)
        {
          WTF::ApproximateTime::now(updated);
          v9 = v8 + v10;
        }

        if (*(v6 + 8) != v7)
        {
          IPC::StreamClientConnectionBuffer::tryAcquire((v6 + 18), buf, v9);
          if (buf[16] != 1)
          {
            goto LABEL_67;
          }

          v27 = *&buf[8];
          if (*&buf[8] <= 1uLL)
          {
            __break(0xC471u);
            JUMPOUT(0x19E1A853CLL);
          }

          v28 = *buf;
          **buf = 3198;
          v29 = v28 + 2;
          if (v27 - 2 < (-v29 & 7 | 8uLL))
          {
            goto LABEL_67;
          }

          v30 = -v29 & 7;
          *(v29 + v30) = v7;
          v31 = 6;
          if (v30 > 6)
          {
            v31 = v30;
          }

          v32 = v31 + 10;
          v33 = (*(v6 + 11) + 1) & 0xFFFFFFFFFFFFFFFELL;
          v34 = *(v6 + 9);
          if (v33 + 16 >= v34)
          {
            v33 = 0;
          }

          v21 = v32 + v33;
          if (v34 <= v21)
          {
            v21 = 0;
          }

          *(v6 + 11) = v21;
          v16 = *(v6 + 10);
          if (*(v16 + 8) <= 0xFFuLL)
          {
            goto LABEL_64;
          }

          v35 = atomic_exchange((*(v16 + 16) + 128), v21);
          v36 = v6[31];
          if (v35 == 0x80000000 || v36 != 0)
          {
            v38 = v36 + 1;
            v6[31] = v38;
            if (v38 >= v6[30])
            {
              if (*(v6 + 112) == 1)
              {
                MEMORY[0x19EB16320](v6[25]);
              }

              v6[31] = 0;
            }
          }

          *(v6 + 8) = v7;
        }

        IPC::StreamClientConnectionBuffer::tryAcquire((v6 + 18), buf, v9);
        if (buf[16])
        {
          v12 = *&buf[8];
          if (*&buf[8] <= 1uLL)
          {
            goto LABEL_78;
          }

          v13 = *buf;
          **buf = 1103;
          v14 = v13 + 2;
          v15 = v12 - 2;
          v16 = -v14;
          if (v15 >= (-v14 & 7 | 0x30uLL))
          {
            v17 = -v14 & 7;
            v18 = (v14 + v17);
            v19 = *a2;
            v20 = *(a2 + 2);
            v18[1] = *(a2 + 1);
            v18[2] = v20;
            *v18 = v19;
            v21 = v17 + 50;
            v22 = (*(v6 + 11) + 1) & 0xFFFFFFFFFFFFFFFELL;
            v16 = *(v6 + 9);
            if (v22 + 16 >= v16)
            {
              goto LABEL_65;
            }

            while (1)
            {
              v21 += v22;
              if (v16 <= v21)
              {
                v21 = 0;
              }

              *(v6 + 11) = v21;
              v16 = *(v6 + 10);
              if (*(v16 + 8) > 0xFFuLL)
              {
                break;
              }

LABEL_64:
              __break(1u);
LABEL_65:
              v22 = 0;
            }

            v23 = atomic_exchange((*(v16 + 16) + 128), v21);
            v24 = v6[31];
            if (v23 == 0x80000000 || v24 != 0)
            {
              v26 = v24 + 1;
              v6[31] = v26;
              if (v26 >= v6[30])
              {
                if (*(v6 + 112) == 1)
                {
                  MEMORY[0x19EB16320](v6[25]);
                }

                v6[31] = 0;
              }
            }

            goto LABEL_19;
          }

          v57 = v7;
          v21 = buf[16];
          if ((buf[16] & 1) == 0)
          {
            goto LABEL_64;
          }

          if (*&buf[8] <= 1uLL)
          {
LABEL_78:
            __break(0xC471u);
            JUMPOUT(0x19E1A851CLL);
          }

          **buf = 3197;
          v42 = (*(v6 + 11) + 1) & 0xFFFFFFFFFFFFFFFELL;
          v43 = *(v6 + 9);
          if (v42 + 16 >= v43)
          {
            v42 = 0;
          }

          v44 = v42 + 16;
          if (v43 <= v44)
          {
            v21 = 0;
          }

          else
          {
            v21 = v44;
          }

          *(v6 + 11) = v21;
          v16 = *(v6 + 10);
          if (*(v16 + 8) <= 0xFFuLL)
          {
            goto LABEL_64;
          }

          atomic_exchange((*(v16 + 16) + 128), v21);
          v6[31] = 0;
          v45 = *(v6 + 1);
          v46 = IPC::Encoder::operator new(0x238, v11);
          *v46 = 1103;
          *(v46 + 2) = 0;
          *(v46 + 3) = 0;
          *(v46 + 1) = v57;
          *(v46 + 68) = 0;
          *(v46 + 70) = 0;
          *(v46 + 69) = 0;
          IPC::Encoder::encodeHeader(v46);
          v58 = v46;
          IPC::ArgumentCoder<std::span<double const,6ul>,void>::encode<IPC::Encoder>(v46, a2);
          v48 = IPC::Connection::sendMessageImpl(v45, &v58, 1, 0);
          v49 = v58;
          v58 = 0;
          if (v49)
          {
            IPC::Encoder::~Encoder(v49, v47);
            bmalloc::api::tzoneFree(v50, v51);
          }

          if (!v48)
          {
LABEL_19:
            if (atomic_fetch_add(v6, 0xFFFFFFFF) == 1)
            {
              atomic_store(1u, v6);
              IPC::StreamClientConnection::operator delete(v6);
            }

            return;
          }
        }

LABEL_67:
        v52 = qword_1ED6410D0;
        if (os_log_type_enabled(qword_1ED6410D0, OS_LOG_TYPE_DEFAULT))
        {
          v53 = IPC::errorAsString();
          *buf = 136446466;
          *&buf[4] = "RemoteDisplayListRecorder_SetCTM";
          *&buf[12] = 2082;
          *&buf[14] = v53;
          _os_log_impl(&dword_19D52D000, v52, OS_LOG_TYPE_DEFAULT, "RemoteDisplayListRecorderProxy::send - failed, name:%{public}s, error:%{public}s", buf, 0x16u);
        }

        WebKit::RemoteDisplayListRecorderProxy::didBecomeUnresponsive(*(this + 440));
        goto LABEL_19;
      }
    }
  }
}

void WebKit::RemoteDisplayListRecorderProxy::concatCTM(WebKit::RemoteDisplayListRecorderProxy *this, const WebCore::AffineTransform *a2)
{
  v60 = *MEMORY[0x1E69E9840];
  updated = WebCore::DisplayList::Recorder::updateStateForConcatCTM();
  if (updated)
  {
    v6 = *(this + 439);
    if (v6)
    {
      atomic_fetch_add(v6, 1u);
      goto LABEL_4;
    }

    v39 = *(this + 440);
    if (v39)
    {
      v40 = *(v39 + 8);
      if (v40)
      {
        ++*(v40 + 5);
        v41 = WebKit::RemoteRenderingBackendProxy::connection(v40, v5, buf);
        v6 = *buf;
        if (*(v40 + 5) == 1)
        {
          (*(*v40 + 24))(v40, v41);
        }

        else
        {
          --*(v40 + 5);
        }

        if (v6)
        {
          updated = WTF::RefPtr<IPC::StreamClientConnection,WTF::RawPtrTraits<IPC::StreamClientConnection>,WTF::DefaultRefDerefTraits<IPC::StreamClientConnection>>::operator=(this + 439, v6);
LABEL_4:
          if ((*(this + 3584) & 1) == 0)
          {
            updated = *(this + 443);
            if (updated)
            {
              WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteImageBufferProxy>(updated, *(this + 442), buf);
              updated = *buf;
              if (*buf)
              {
                updated = WebKit::RemoteImageBufferProxy::backingStoreWillChange(*buf, v54);
                v56 = *buf;
                *buf = 0;
                if (v56)
                {
                  updated = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::ImageBuffer,(WTF::DestructionThread)0>::deref((v56 + 8), v55);
                }
              }
            }

            *(this + 3584) = 1;
          }

          v7 = *(this + 438);
          v8 = *(v6 + 16);
          v9 = INFINITY;
          if (fabs(v8) != INFINITY)
          {
            WTF::ApproximateTime::now(updated);
            v9 = v8 + v10;
          }

          if (*(v6 + 8) != v7)
          {
            IPC::StreamClientConnectionBuffer::tryAcquire((v6 + 18), buf, v9);
            if (buf[16] != 1)
            {
              goto LABEL_68;
            }

            v27 = *&buf[8];
            if (*&buf[8] <= 1uLL)
            {
              __break(0xC471u);
              JUMPOUT(0x19E1A8AB0);
            }

            v28 = *buf;
            **buf = 3198;
            v29 = v28 + 2;
            if (v27 - 2 < (-v29 & 7 | 8uLL))
            {
              goto LABEL_68;
            }

            v30 = -v29 & 7;
            *(v29 + v30) = v7;
            v31 = 6;
            if (v30 > 6)
            {
              v31 = v30;
            }

            v32 = v31 + 10;
            v33 = (*(v6 + 11) + 1) & 0xFFFFFFFFFFFFFFFELL;
            v34 = *(v6 + 9);
            if (v33 + 16 >= v34)
            {
              v33 = 0;
            }

            v21 = v32 + v33;
            if (v34 <= v21)
            {
              v21 = 0;
            }

            *(v6 + 11) = v21;
            v16 = *(v6 + 10);
            if (*(v16 + 8) <= 0xFFuLL)
            {
              goto LABEL_65;
            }

            v35 = atomic_exchange((*(v16 + 16) + 128), v21);
            v36 = v6[31];
            if (v35 == 0x80000000 || v36 != 0)
            {
              v38 = v36 + 1;
              v6[31] = v38;
              if (v38 >= v6[30])
              {
                if (*(v6 + 112) == 1)
                {
                  MEMORY[0x19EB16320](v6[25]);
                }

                v6[31] = 0;
              }
            }

            *(v6 + 8) = v7;
          }

          IPC::StreamClientConnectionBuffer::tryAcquire((v6 + 18), buf, v9);
          if (buf[16])
          {
            v12 = *&buf[8];
            if (*&buf[8] <= 1uLL)
            {
              goto LABEL_79;
            }

            v13 = *buf;
            **buf = 1061;
            v14 = v13 + 2;
            v15 = v12 - 2;
            v16 = -v14;
            if (v15 >= (-v14 & 7 | 0x30uLL))
            {
              v17 = -v14 & 7;
              v18 = (v14 + v17);
              v19 = *a2;
              v20 = *(a2 + 2);
              v18[1] = *(a2 + 1);
              v18[2] = v20;
              *v18 = v19;
              v21 = v17 + 50;
              v22 = (*(v6 + 11) + 1) & 0xFFFFFFFFFFFFFFFELL;
              v16 = *(v6 + 9);
              if (v22 + 16 >= v16)
              {
                goto LABEL_66;
              }

              while (1)
              {
                v21 += v22;
                if (v16 <= v21)
                {
                  v21 = 0;
                }

                *(v6 + 11) = v21;
                v16 = *(v6 + 10);
                if (*(v16 + 8) > 0xFFuLL)
                {
                  break;
                }

LABEL_65:
                __break(1u);
LABEL_66:
                v22 = 0;
              }

              v23 = atomic_exchange((*(v16 + 16) + 128), v21);
              v24 = v6[31];
              if (v23 == 0x80000000 || v24 != 0)
              {
                v26 = v24 + 1;
                v6[31] = v26;
                if (v26 >= v6[30])
                {
                  if (*(v6 + 112) == 1)
                  {
                    MEMORY[0x19EB16320](v6[25]);
                  }

                  v6[31] = 0;
                }
              }

              goto LABEL_20;
            }

            v57 = v7;
            v21 = buf[16];
            if ((buf[16] & 1) == 0)
            {
              goto LABEL_65;
            }

            if (*&buf[8] <= 1uLL)
            {
LABEL_79:
              __break(0xC471u);
              JUMPOUT(0x19E1A8A90);
            }

            **buf = 3197;
            v42 = (*(v6 + 11) + 1) & 0xFFFFFFFFFFFFFFFELL;
            v43 = *(v6 + 9);
            if (v42 + 16 >= v43)
            {
              v42 = 0;
            }

            v44 = v42 + 16;
            if (v43 <= v44)
            {
              v21 = 0;
            }

            else
            {
              v21 = v44;
            }

            *(v6 + 11) = v21;
            v16 = *(v6 + 10);
            if (*(v16 + 8) <= 0xFFuLL)
            {
              goto LABEL_65;
            }

            atomic_exchange((*(v16 + 16) + 128), v21);
            v6[31] = 0;
            v45 = *(v6 + 1);
            v46 = IPC::Encoder::operator new(0x238, v11);
            *v46 = 1061;
            *(v46 + 2) = 0;
            *(v46 + 3) = 0;
            *(v46 + 1) = v57;
            *(v46 + 68) = 0;
            *(v46 + 70) = 0;
            *(v46 + 69) = 0;
            IPC::Encoder::encodeHeader(v46);
            v58 = v46;
            IPC::ArgumentCoder<std::span<double const,6ul>,void>::encode<IPC::Encoder>(v46, a2);
            v48 = IPC::Connection::sendMessageImpl(v45, &v58, 1, 0);
            v49 = v58;
            v58 = 0;
            if (v49)
            {
              IPC::Encoder::~Encoder(v49, v47);
              bmalloc::api::tzoneFree(v50, v51);
            }

            if (!v48)
            {
LABEL_20:
              if (atomic_fetch_add(v6, 0xFFFFFFFF) == 1)
              {
                atomic_store(1u, v6);
                IPC::StreamClientConnection::operator delete(v6);
              }

              return;
            }
          }

LABEL_68:
          v52 = qword_1ED6410D0;
          if (os_log_type_enabled(qword_1ED6410D0, OS_LOG_TYPE_DEFAULT))
          {
            v53 = IPC::errorAsString();
            *buf = 136446466;
            *&buf[4] = "RemoteDisplayListRecorder_ConcatCTM";
            *&buf[12] = 2082;
            *&buf[14] = v53;
            _os_log_impl(&dword_19D52D000, v52, OS_LOG_TYPE_DEFAULT, "RemoteDisplayListRecorderProxy::send - failed, name:%{public}s, error:%{public}s", buf, 0x16u);
          }

          WebKit::RemoteDisplayListRecorderProxy::didBecomeUnresponsive(*(this + 440));
          goto LABEL_20;
        }
      }
    }
  }
}

void WebKit::RemoteDisplayListRecorderProxy::setLineCap(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = a1;
  v55 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 3512);
  if (!v4)
  {
    goto LABEL_60;
  }

  atomic_fetch_add(v4, 1u);
  while (1)
  {
    if ((*(v3 + 3584) & 1) == 0)
    {
      a1 = *(v3 + 3544);
      if (a1)
      {
        WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteImageBufferProxy>(a1, *(v3 + 3536), buf);
        a1 = *buf;
        if (*buf)
        {
          a1 = WebKit::RemoteImageBufferProxy::backingStoreWillChange(*buf, v50);
          v52 = *buf;
          *buf = 0;
          if (v52)
          {
            a1 = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::ImageBuffer,(WTF::DestructionThread)0>::deref((v52 + 8), v51);
          }
        }
      }

      *(v3 + 3584) = 1;
    }

    v5 = *(v3 + 3504);
    v6 = *(v4 + 128);
    v7 = INFINITY;
    if (fabs(v6) != INFINITY)
    {
      WTF::ApproximateTime::now(a1);
      v7 = v6 + v8;
    }

    if (*(v4 + 64) == v5)
    {
      break;
    }

    IPC::StreamClientConnectionBuffer::tryAcquire(v4 + 72, buf, v7);
    if (buf[16] != 1)
    {
      goto LABEL_66;
    }

    v19 = *&buf[8];
    if (*&buf[8] <= 1uLL)
    {
      __break(0xC471u);
      JUMPOUT(0x19E1A9010);
    }

    v20 = *buf;
    **buf = 3198;
    v21 = v20 + 2;
    if (v19 - 2 < (-v21 & 7 | 8uLL))
    {
      goto LABEL_66;
    }

    v22 = -v21 & 7;
    *(v21 + v22) = v5;
    v23 = 6;
    if (v22 > 6)
    {
      v23 = v22;
    }

    v24 = v23 + 10;
    v25 = (*(v4 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
    v26 = *(v4 + 72);
    if (v25 + 16 >= v26)
    {
      v25 = 0;
    }

    v27 = v24 + v25;
    if (v26 <= v27)
    {
      v27 = 0;
    }

    *(v4 + 88) = v27;
    v28 = *(v4 + 80);
    if (*(v28 + 8) > 0xFFuLL)
    {
      v29 = atomic_exchange((*(v28 + 16) + 128), v27);
      v30 = *(v4 + 124);
      if (v29 == 0x80000000 || v30 != 0)
      {
        v32 = v30 + 1;
        *(v4 + 124) = v32;
        if (v32 >= *(v4 + 120))
        {
          if (*(v4 + 112) == 1)
          {
            MEMORY[0x19EB16320](*(v4 + 100));
          }

          *(v4 + 124) = 0;
        }
      }

      *(v4 + 64) = v5;
      break;
    }

LABEL_59:
    __break(1u);
LABEL_60:
    v43 = *(v3 + 3520);
    if (!v43)
    {
      return;
    }

    v44 = *(v43 + 8);
    if (!v44)
    {
      return;
    }

    ++*(v44 + 5);
    v45 = WebKit::RemoteRenderingBackendProxy::connection(v44, a2, buf);
    v4 = *buf;
    if (*(v44 + 5) == 1)
    {
      (*(*v44 + 24))(v44, v45);
    }

    else
    {
      --*(v44 + 5);
    }

    if (!v4)
    {
      return;
    }

    a1 = WTF::RefPtr<IPC::StreamClientConnection,WTF::RawPtrTraits<IPC::StreamClientConnection>,WTF::DefaultRefDerefTraits<IPC::StreamClientConnection>>::operator=((v3 + 3512), v4);
  }

  IPC::StreamClientConnectionBuffer::tryAcquire(v4 + 72, buf, v7);
  if ((buf[16] & 1) == 0)
  {
    goto LABEL_66;
  }

  v9 = *&buf[8];
  if (*&buf[8] <= 1uLL)
  {
LABEL_78:
    __break(0xC471u);
    JUMPOUT(0x19E1A8FC0);
  }

  v10 = *buf;
  **buf = 1114;
  if (v9 != 2)
  {
    *(v10 + 2) = v2;
    v11 = (*(v4 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
    v13 = *(v4 + 72);
    v12 = *(v4 + 80);
    if (v11 + 16 >= v13)
    {
      v11 = 0;
    }

    v14 = v11 + 16;
    if (v13 <= v14)
    {
      v14 = 0;
    }

    *(v4 + 88) = v14;
    if (*(v12 + 8) > 0xFFuLL)
    {
      v15 = atomic_exchange((*(v12 + 16) + 128), v14);
      v16 = *(v4 + 124);
      if (v15 == 0x80000000 || v16 != 0)
      {
        v18 = v16 + 1;
        *(v4 + 124) = v18;
        if (v18 >= *(v4 + 120))
        {
          if (*(v4 + 112) == 1)
          {
            MEMORY[0x19EB16320](*(v4 + 100));
          }

          *(v4 + 124) = 0;
        }
      }

      goto LABEL_20;
    }

    goto LABEL_59;
  }

  if ((buf[16] & 1) == 0)
  {
    goto LABEL_59;
  }

  if (*&buf[8] <= 1uLL)
  {
    goto LABEL_78;
  }

  **buf = 3197;
  v33 = (*(v4 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
  v34 = *(v4 + 72);
  if (v33 + 16 >= v34)
  {
    v33 = 0;
  }

  v35 = v33 + 16;
  v36 = v34 <= v35 ? 0 : v35;
  *(v4 + 88) = v36;
  v37 = *(v4 + 80);
  if (*(v37 + 8) <= 0xFFuLL)
  {
    goto LABEL_59;
  }

  atomic_exchange((*(v37 + 16) + 128), v36);
  *(v4 + 124) = 0;
  v38 = *(v4 + 8);
  v39 = IPC::Encoder::operator new(0x238, a2);
  *v39 = 1114;
  *(v39 + 2) = 0;
  *(v39 + 3) = 0;
  *(v39 + 1) = v5;
  *(v39 + 68) = 0;
  *(v39 + 70) = 0;
  *(v39 + 69) = 0;
  IPC::Encoder::encodeHeader(v39);
  v53 = v39;
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(v39, v2);
  v41 = IPC::Connection::sendMessageImpl(v38, &v53, 1, 0);
  v42 = v53;
  v53 = 0;
  if (v42)
  {
    IPC::Encoder::~Encoder(v42, v40);
    bmalloc::api::tzoneFree(v46, v47);
  }

  if (v41)
  {
LABEL_66:
    v48 = qword_1ED6410D0;
    if (os_log_type_enabled(qword_1ED6410D0, OS_LOG_TYPE_DEFAULT))
    {
      v49 = IPC::errorAsString();
      *buf = 136446466;
      *&buf[4] = "RemoteDisplayListRecorder_SetLineCap";
      *&buf[12] = 2082;
      *&buf[14] = v49;
      _os_log_impl(&dword_19D52D000, v48, OS_LOG_TYPE_DEFAULT, "RemoteDisplayListRecorderProxy::send - failed, name:%{public}s, error:%{public}s", buf, 0x16u);
    }

    WebKit::RemoteDisplayListRecorderProxy::didBecomeUnresponsive(*(v3 + 3520));
  }

LABEL_20:
  if (atomic_fetch_add(v4, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v4);
    IPC::StreamClientConnection::operator delete(v4);
  }
}

WTF *WebKit::RemoteDisplayListRecorderProxy::setLineDash(atomic_uchar *a1, unint64_t a2, float a3)
{
  v4 = a1;
  v52 = *MEMORY[0x1E69E9840];
  v5 = *a2;
  if (*a2 && (a2 = *v5, a2))
  {
    a1 = WTF::EmbeddedFixedVector<double,WTF::FastMalloc>::create<double const,18446744073709551615ul>(v5 + 1, a2, buf);
    v6 = *buf;
  }

  else
  {
    v6 = 0;
  }

  v45 = v6;
  v46 = &v45;
  v47 = a3;
  v7 = *(v4 + 439);
  if (v7)
  {
    atomic_fetch_add(v7, 1u);
  }

  else
  {
    v39 = *(v4 + 440);
    if (!v39)
    {
      goto LABEL_28;
    }

    v40 = *(v39 + 8);
    if (!v40)
    {
      goto LABEL_28;
    }

    ++*(v40 + 5);
    v41 = WebKit::RemoteRenderingBackendProxy::connection(v40, a2, buf);
    v7 = *buf;
    if (*(v40 + 5) == 1)
    {
      (*(*v40 + 24))(v40, v41);
    }

    else
    {
      --*(v40 + 5);
    }

    if (!v7)
    {
      goto LABEL_28;
    }

    a1 = WTF::RefPtr<IPC::StreamClientConnection,WTF::RawPtrTraits<IPC::StreamClientConnection>,WTF::DefaultRefDerefTraits<IPC::StreamClientConnection>>::operator=(v4 + 439, v7);
  }

  if ((v4[3584] & 1) == 0)
  {
    a1 = *(v4 + 443);
    if (a1)
    {
      WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteImageBufferProxy>(a1, *(v4 + 442), buf);
      a1 = *buf;
      if (*buf)
      {
        a1 = WebKit::RemoteImageBufferProxy::backingStoreWillChange(*buf, v42);
        v44 = *buf;
        *buf = 0;
        if (v44)
        {
          a1 = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::ImageBuffer,(WTF::DestructionThread)0>::deref((v44 + 8), v43);
        }
      }
    }

    v4[3584] = 1;
  }

  v8 = *(v4 + 438);
  v9 = *(v7 + 128);
  v10 = INFINITY;
  if (fabs(v9) != INFINITY)
  {
    WTF::ApproximateTime::now(a1);
    v10 = v9 + v11;
  }

  if (*(v7 + 64) != v8)
  {
    IPC::StreamClientConnectionBuffer::tryAcquire(v7 + 72, buf, v10);
    if (buf[16] != 1)
    {
      goto LABEL_55;
    }

    v24 = *&buf[8];
    if (*&buf[8] <= 1uLL)
    {
LABEL_80:
      __break(0xC471u);
      JUMPOUT(0x19E1A94F0);
    }

    v25 = *buf;
    **buf = 3198;
    v26 = v25 + 2;
    if (v24 - 2 < (-v26 & 7 | 8uLL))
    {
LABEL_55:
      v36 = qword_1ED6410D0;
      if (os_log_type_enabled(qword_1ED6410D0, OS_LOG_TYPE_DEFAULT))
      {
        v37 = IPC::errorAsString();
        *buf = 136446466;
        *&buf[4] = "RemoteDisplayListRecorder_SetLineDash";
        *&buf[12] = 2082;
        *&buf[14] = v37;
        _os_log_impl(&dword_19D52D000, v36, OS_LOG_TYPE_DEFAULT, "RemoteDisplayListRecorderProxy::send - failed, name:%{public}s, error:%{public}s", buf, 0x16u);
      }

      WebKit::RemoteDisplayListRecorderProxy::didBecomeUnresponsive(*(v4 + 440));
      goto LABEL_26;
    }

    v27 = -v26 & 7;
    *(v26 + v27) = v8;
    v28 = 6;
    if (v27 > 6)
    {
      v28 = v27;
    }

    v29 = v28 + 10;
    v30 = (*(v7 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
    v31 = *(v7 + 72);
    if (v30 + 16 >= v31)
    {
      v30 = 0;
    }

    v17 = v29 + v30;
    if (v31 <= v17)
    {
      v17 = 0;
    }

    *(v7 + 88) = v17;
    v16 = *(v7 + 80);
    if (*(v16 + 8) <= 0xFFuLL)
    {
      goto LABEL_72;
    }

    v32 = atomic_exchange((*(v16 + 16) + 128), v17);
    v33 = *(v7 + 124);
    if (v32 == 0x80000000 || v33 != 0)
    {
      v35 = v33 + 1;
      *(v7 + 124) = v35;
      if (v35 >= *(v7 + 120))
      {
        if (*(v7 + 112) == 1)
        {
          MEMORY[0x19EB16320](*(v7 + 100));
        }

        *(v7 + 124) = 0;
      }
    }

    *(v7 + 64) = v8;
  }

  IPC::StreamClientConnectionBuffer::tryAcquire(v7 + 72, &v48, v10);
  if ((v50 & 1) == 0)
  {
    goto LABEL_55;
  }

  v12 = v48;
  v13 = v49;
  *&buf[16] = v49;
  if (v49 <= 1)
  {
    goto LABEL_80;
  }

  *v48 = 1115;
  *buf = v12 + 1;
  *&buf[8] = v13 - 2;
  v14 = *v46;
  if (*v46)
  {
    v38 = *v14;
    v14 = (v14 + 8);
    v15 = v38;
  }

  else
  {
    v15 = 0;
  }

  IPC::ArgumentCoder<std::span<double const,18446744073709551615ul>,void>::encode<IPC::StreamConnectionEncoder>(buf, v14, v15);
  v16 = -*buf & 3 | 4;
  if (*&buf[8] >= v16)
  {
    *(*buf + (-*buf & 3)) = v47;
    v17 = *&buf[8] - v16;
    if (*&buf[8] < v16)
    {
      goto LABEL_72;
    }

    *buf += v16;
    *&buf[8] -= v16;
    v17 = *&buf[16] - v17;
    if (v17 <= 0x10)
    {
      v17 = 16;
    }

    v18 = (*(v7 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
    v16 = *(v7 + 72);
    if (v18 + 16 >= v16)
    {
      goto LABEL_73;
    }

    while (1)
    {
      v17 += v18;
      if (v16 <= v17)
      {
        v17 = 0;
      }

      *(v7 + 88) = v17;
      v16 = *(v7 + 80);
      if (*(v16 + 8) > 0xFFuLL)
      {
        break;
      }

LABEL_72:
      __break(1u);
LABEL_73:
      v18 = 0;
    }

    v19 = atomic_exchange((*(v16 + 16) + 128), v17);
    v20 = *(v7 + 124);
    if (v19 == 0x80000000 || v20 != 0)
    {
      v23 = v20 + 1;
      *(v7 + 124) = v23;
      if (v23 >= *(v7 + 120))
      {
        if (*(v7 + 112) == 1)
        {
          MEMORY[0x19EB16320](*(v7 + 100));
        }

        *(v7 + 124) = 0;
      }
    }

    goto LABEL_26;
  }

  v17 = v50;
  if ((v50 & 1) == 0)
  {
    goto LABEL_72;
  }

  IPC::StreamClientConnection::sendProcessOutOfStreamMessage(v7, v48, v49);
  if (IPC::Connection::send<Messages::RemoteDisplayListRecorder::SetLineDash>(*(v7 + 8), &v46, v8))
  {
    goto LABEL_55;
  }

LABEL_26:
  if (atomic_fetch_add(v7, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v7);
    IPC::StreamClientConnection::operator delete(v7);
  }

LABEL_28:
  result = v45;
  v45 = 0;
  if (result)
  {
    return WTF::fastFree(result, a2);
  }

  return result;
}

void WebKit::RemoteDisplayListRecorderProxy::setLineJoin(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = a1;
  v55 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 3512);
  if (!v4)
  {
    goto LABEL_60;
  }

  atomic_fetch_add(v4, 1u);
  while (1)
  {
    if ((*(v3 + 3584) & 1) == 0)
    {
      a1 = *(v3 + 3544);
      if (a1)
      {
        WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteImageBufferProxy>(a1, *(v3 + 3536), buf);
        a1 = *buf;
        if (*buf)
        {
          a1 = WebKit::RemoteImageBufferProxy::backingStoreWillChange(*buf, v50);
          v52 = *buf;
          *buf = 0;
          if (v52)
          {
            a1 = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::ImageBuffer,(WTF::DestructionThread)0>::deref((v52 + 8), v51);
          }
        }
      }

      *(v3 + 3584) = 1;
    }

    v5 = *(v3 + 3504);
    v6 = *(v4 + 128);
    v7 = INFINITY;
    if (fabs(v6) != INFINITY)
    {
      WTF::ApproximateTime::now(a1);
      v7 = v6 + v8;
    }

    if (*(v4 + 64) == v5)
    {
      break;
    }

    IPC::StreamClientConnectionBuffer::tryAcquire(v4 + 72, buf, v7);
    if (buf[16] != 1)
    {
      goto LABEL_66;
    }

    v19 = *&buf[8];
    if (*&buf[8] <= 1uLL)
    {
      __break(0xC471u);
      JUMPOUT(0x19E1A9A50);
    }

    v20 = *buf;
    **buf = 3198;
    v21 = v20 + 2;
    if (v19 - 2 < (-v21 & 7 | 8uLL))
    {
      goto LABEL_66;
    }

    v22 = -v21 & 7;
    *(v21 + v22) = v5;
    v23 = 6;
    if (v22 > 6)
    {
      v23 = v22;
    }

    v24 = v23 + 10;
    v25 = (*(v4 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
    v26 = *(v4 + 72);
    if (v25 + 16 >= v26)
    {
      v25 = 0;
    }

    v27 = v24 + v25;
    if (v26 <= v27)
    {
      v27 = 0;
    }

    *(v4 + 88) = v27;
    v28 = *(v4 + 80);
    if (*(v28 + 8) > 0xFFuLL)
    {
      v29 = atomic_exchange((*(v28 + 16) + 128), v27);
      v30 = *(v4 + 124);
      if (v29 == 0x80000000 || v30 != 0)
      {
        v32 = v30 + 1;
        *(v4 + 124) = v32;
        if (v32 >= *(v4 + 120))
        {
          if (*(v4 + 112) == 1)
          {
            MEMORY[0x19EB16320](*(v4 + 100));
          }

          *(v4 + 124) = 0;
        }
      }

      *(v4 + 64) = v5;
      break;
    }

LABEL_59:
    __break(1u);
LABEL_60:
    v43 = *(v3 + 3520);
    if (!v43)
    {
      return;
    }

    v44 = *(v43 + 8);
    if (!v44)
    {
      return;
    }

    ++*(v44 + 5);
    v45 = WebKit::RemoteRenderingBackendProxy::connection(v44, a2, buf);
    v4 = *buf;
    if (*(v44 + 5) == 1)
    {
      (*(*v44 + 24))(v44, v45);
    }

    else
    {
      --*(v44 + 5);
    }

    if (!v4)
    {
      return;
    }

    a1 = WTF::RefPtr<IPC::StreamClientConnection,WTF::RawPtrTraits<IPC::StreamClientConnection>,WTF::DefaultRefDerefTraits<IPC::StreamClientConnection>>::operator=((v3 + 3512), v4);
  }

  IPC::StreamClientConnectionBuffer::tryAcquire(v4 + 72, buf, v7);
  if ((buf[16] & 1) == 0)
  {
    goto LABEL_66;
  }

  v9 = *&buf[8];
  if (*&buf[8] <= 1uLL)
  {
LABEL_78:
    __break(0xC471u);
    JUMPOUT(0x19E1A9A00);
  }

  v10 = *buf;
  **buf = 1116;
  if (v9 != 2)
  {
    *(v10 + 2) = v2;
    v11 = (*(v4 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
    v13 = *(v4 + 72);
    v12 = *(v4 + 80);
    if (v11 + 16 >= v13)
    {
      v11 = 0;
    }

    v14 = v11 + 16;
    if (v13 <= v14)
    {
      v14 = 0;
    }

    *(v4 + 88) = v14;
    if (*(v12 + 8) > 0xFFuLL)
    {
      v15 = atomic_exchange((*(v12 + 16) + 128), v14);
      v16 = *(v4 + 124);
      if (v15 == 0x80000000 || v16 != 0)
      {
        v18 = v16 + 1;
        *(v4 + 124) = v18;
        if (v18 >= *(v4 + 120))
        {
          if (*(v4 + 112) == 1)
          {
            MEMORY[0x19EB16320](*(v4 + 100));
          }

          *(v4 + 124) = 0;
        }
      }

      goto LABEL_20;
    }

    goto LABEL_59;
  }

  if ((buf[16] & 1) == 0)
  {
    goto LABEL_59;
  }

  if (*&buf[8] <= 1uLL)
  {
    goto LABEL_78;
  }

  **buf = 3197;
  v33 = (*(v4 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
  v34 = *(v4 + 72);
  if (v33 + 16 >= v34)
  {
    v33 = 0;
  }

  v35 = v33 + 16;
  v36 = v34 <= v35 ? 0 : v35;
  *(v4 + 88) = v36;
  v37 = *(v4 + 80);
  if (*(v37 + 8) <= 0xFFuLL)
  {
    goto LABEL_59;
  }

  atomic_exchange((*(v37 + 16) + 128), v36);
  *(v4 + 124) = 0;
  v38 = *(v4 + 8);
  v39 = IPC::Encoder::operator new(0x238, a2);
  *v39 = 1116;
  *(v39 + 2) = 0;
  *(v39 + 3) = 0;
  *(v39 + 1) = v5;
  *(v39 + 68) = 0;
  *(v39 + 70) = 0;
  *(v39 + 69) = 0;
  IPC::Encoder::encodeHeader(v39);
  v53 = v39;
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(v39, v2);
  v41 = IPC::Connection::sendMessageImpl(v38, &v53, 1, 0);
  v42 = v53;
  v53 = 0;
  if (v42)
  {
    IPC::Encoder::~Encoder(v42, v40);
    bmalloc::api::tzoneFree(v46, v47);
  }

  if (v41)
  {
LABEL_66:
    v48 = qword_1ED6410D0;
    if (os_log_type_enabled(qword_1ED6410D0, OS_LOG_TYPE_DEFAULT))
    {
      v49 = IPC::errorAsString();
      *buf = 136446466;
      *&buf[4] = "RemoteDisplayListRecorder_SetLineJoin";
      *&buf[12] = 2082;
      *&buf[14] = v49;
      _os_log_impl(&dword_19D52D000, v48, OS_LOG_TYPE_DEFAULT, "RemoteDisplayListRecorderProxy::send - failed, name:%{public}s, error:%{public}s", buf, 0x16u);
    }

    WebKit::RemoteDisplayListRecorderProxy::didBecomeUnresponsive(*(v3 + 3520));
  }

LABEL_20:
  if (atomic_fetch_add(v4, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v4);
    IPC::StreamClientConnection::operator delete(v4);
  }
}

void WebKit::RemoteDisplayListRecorderProxy::setMiterLimit(WebKit::RemoteDisplayListRecorderProxy *this, float a2, void *a3)
{
  v3 = this;
  v44 = *MEMORY[0x1E69E9840];
  v42 = a2;
  v4 = *(this + 439);
  if (v4)
  {
    atomic_fetch_add(v4, 1u);
    goto LABEL_3;
  }

  v34 = *(this + 440);
  if (v34)
  {
    v35 = *(v34 + 8);
    if (v35)
    {
      ++*(v35 + 5);
      v36 = WebKit::RemoteRenderingBackendProxy::connection(v35, a3, buf);
      v4 = *buf;
      if (*(v35 + 5) == 1)
      {
        (*(*v35 + 24))(v35, v36);
      }

      else
      {
        --*(v35 + 5);
      }

      if (v4)
      {
        this = WTF::RefPtr<IPC::StreamClientConnection,WTF::RawPtrTraits<IPC::StreamClientConnection>,WTF::DefaultRefDerefTraits<IPC::StreamClientConnection>>::operator=(v3 + 439, v4);
LABEL_3:
        if ((*(v3 + 3584) & 1) == 0)
        {
          this = *(v3 + 443);
          if (this)
          {
            WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteImageBufferProxy>(this, *(v3 + 442), buf);
            this = *buf;
            if (*buf)
            {
              this = WebKit::RemoteImageBufferProxy::backingStoreWillChange(*buf, v39);
              v41 = *buf;
              *buf = 0;
              if (v41)
              {
                this = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::ImageBuffer,(WTF::DestructionThread)0>::deref((v41 + 8), v40);
              }
            }
          }

          *(v3 + 3584) = 1;
        }

        v5 = *(v3 + 438);
        v6 = *(v4 + 128);
        v7 = INFINITY;
        if (fabs(v6) != INFINITY)
        {
          WTF::ApproximateTime::now(this);
          v7 = v6 + v8;
        }

        if (*(v4 + 64) != v5)
        {
          IPC::StreamClientConnectionBuffer::tryAcquire(v4 + 72, buf, v7);
          if (buf[16] != 1)
          {
            goto LABEL_57;
          }

          v20 = *&buf[8];
          if (*&buf[8] <= 1uLL)
          {
            goto LABEL_68;
          }

          v21 = *buf;
          **buf = 3198;
          v22 = v21 + 2;
          if (v20 - 2 < (-v22 & 7 | 8uLL))
          {
            goto LABEL_57;
          }

          v23 = -v22 & 7;
          *(v22 + v23) = v5;
          v24 = 6;
          if (v23 > 6)
          {
            v24 = v23;
          }

          v25 = v24 + 10;
          v26 = (*(v4 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
          v27 = *(v4 + 72);
          if (v26 + 16 >= v27)
          {
            v26 = 0;
          }

          v28 = v25 + v26;
          if (v27 <= v28)
          {
            v28 = 0;
          }

          *(v4 + 88) = v28;
          v29 = *(v4 + 80);
          if (*(v29 + 8) <= 0xFFuLL)
          {
            goto LABEL_56;
          }

          v30 = atomic_exchange((*(v29 + 16) + 128), v28);
          v31 = *(v4 + 124);
          if (v30 == 0x80000000 || v31 != 0)
          {
            v33 = v31 + 1;
            *(v4 + 124) = v33;
            if (v33 >= *(v4 + 120))
            {
              if (*(v4 + 112) == 1)
              {
                MEMORY[0x19EB16320](*(v4 + 100));
              }

              *(v4 + 124) = 0;
            }
          }

          *(v4 + 64) = v5;
        }

        IPC::StreamClientConnectionBuffer::tryAcquire(v4 + 72, buf, v7);
        if ((buf[16] & 1) == 0)
        {
          goto LABEL_57;
        }

        v9 = *&buf[8];
        if (*&buf[8] > 1uLL)
        {
          v10 = *buf;
          **buf = 1117;
          v11 = v10 + 2;
          if (v9 - 2 >= (-v11 & 3 | 4uLL))
          {
            *(v11 + (-v11 & 3)) = v42;
            v12 = (*(v4 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
            v14 = *(v4 + 72);
            v13 = *(v4 + 80);
            if (v12 + 16 >= v14)
            {
              v12 = 0;
            }

            v15 = v12 + 16;
            if (v14 <= v15)
            {
              v15 = 0;
            }

            *(v4 + 88) = v15;
            if (*(v13 + 8) > 0xFFuLL)
            {
              v16 = atomic_exchange((*(v13 + 16) + 128), v15);
              v17 = *(v4 + 124);
              if (v16 == 0x80000000 || v17 != 0)
              {
                v19 = v17 + 1;
                *(v4 + 124) = v19;
                if (v19 >= *(v4 + 120))
                {
                  if (*(v4 + 112) == 1)
                  {
                    MEMORY[0x19EB16320](*(v4 + 100));
                  }

                  *(v4 + 124) = 0;
                }
              }

              goto LABEL_20;
            }

            goto LABEL_56;
          }

          if ((buf[16] & 1) == 0)
          {
LABEL_56:
            __break(1u);
            goto LABEL_57;
          }

          IPC::StreamClientConnection::sendProcessOutOfStreamMessage(v4, *buf, *&buf[8]);
          if (!IPC::Connection::send<Messages::RemoteDisplayListRecorder::SetMiterLimit>(*(v4 + 8), &v42, v5))
          {
LABEL_20:
            if (atomic_fetch_add(v4, 0xFFFFFFFF) == 1)
            {
              atomic_store(1u, v4);
              IPC::StreamClientConnection::operator delete(v4);
            }

            return;
          }

LABEL_57:
          v37 = qword_1ED6410D0;
          if (os_log_type_enabled(qword_1ED6410D0, OS_LOG_TYPE_DEFAULT))
          {
            v38 = IPC::errorAsString();
            *buf = 136446466;
            *&buf[4] = "RemoteDisplayListRecorder_SetMiterLimit";
            *&buf[12] = 2082;
            *&buf[14] = v38;
            _os_log_impl(&dword_19D52D000, v37, OS_LOG_TYPE_DEFAULT, "RemoteDisplayListRecorderProxy::send - failed, name:%{public}s, error:%{public}s", buf, 0x16u);
          }

          WebKit::RemoteDisplayListRecorderProxy::didBecomeUnresponsive(*(v3 + 440));
          goto LABEL_20;
        }

LABEL_68:
        __break(0xC471u);
        JUMPOUT(0x19E1A9E84);
      }
    }
  }
}

void WebKit::RemoteDisplayListRecorderProxy::clip(WebKit::RemoteDisplayListRecorderProxy *this, const FloatRect *a2)
{
  v45 = *MEMORY[0x1E69E9840];
  updated = WebCore::DisplayList::Recorder::updateStateForClip(this, a2);
  v40 = a2;
  v6 = *(this + 439);
  if (v6)
  {
    atomic_fetch_add(v6, 1u);
    goto LABEL_3;
  }

  v32 = *(this + 440);
  if (v32)
  {
    v33 = *(v32 + 8);
    if (v33)
    {
      ++*(v33 + 5);
      v34 = WebKit::RemoteRenderingBackendProxy::connection(v33, v5, buf);
      v6 = *buf;
      if (*(v33 + 5) == 1)
      {
        (*(*v33 + 24))(v33, v34);
      }

      else
      {
        --*(v33 + 5);
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
              updated = WebKit::RemoteImageBufferProxy::backingStoreWillChange(*buf, v37);
              v39 = *buf;
              *buf = 0;
              if (v39)
              {
                updated = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::ImageBuffer,(WTF::DestructionThread)0>::deref((v39 + 8), v38);
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
            goto LABEL_51;
          }

          v18 = *&buf[8];
          if (*&buf[8] <= 1uLL)
          {
            __break(0xC471u);
            goto LABEL_67;
          }

          v19 = *buf;
          **buf = 3198;
          v20 = v19 + 2;
          if (v18 - 2 < (-v20 & 7 | 8uLL))
          {
            goto LABEL_51;
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
            goto LABEL_59;
          }

          v28 = atomic_exchange((*(v27 + 16) + 128), v26);
          v29 = *(v6 + 124);
          if (v28 == 0x80000000 || v29 != 0)
          {
            v31 = v29 + 1;
            *(v6 + 124) = v31;
            if (v31 >= *(v6 + 120))
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

        IPC::StreamClientConnectionBuffer::tryAcquire(v6 + 72, &v41, v9);
        if ((v43 & 1) == 0)
        {
          goto LABEL_51;
        }

        v11 = v41;
        v12 = v42;
        *&buf[16] = v42;
        if (v42 > 1)
        {
          *v41 = 1054;
          *buf = v11 + 1;
          *&buf[8] = v12 - 2;
          IPC::ArgumentCoder<WebCore::PathEllipseInRect,void>::encode(buf, v40);
          if (*buf)
          {
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

LABEL_59:
            __break(1u);
          }

          if ((v43 & 1) == 0)
          {
            goto LABEL_59;
          }

          IPC::StreamClientConnection::sendProcessOutOfStreamMessage(v6, v41, v42);
          if (!IPC::Connection::send<Messages::RemoteDisplayListRecorder::Clip>(*(v6 + 8), &v40, v7))
          {
LABEL_19:
            if (atomic_fetch_add(v6, 0xFFFFFFFF) == 1)
            {
              atomic_store(1u, v6);
              IPC::StreamClientConnection::operator delete(v6);
            }

            return;
          }

LABEL_51:
          v35 = qword_1ED6410D0;
          if (os_log_type_enabled(qword_1ED6410D0, OS_LOG_TYPE_DEFAULT))
          {
            v36 = IPC::errorAsString();
            *buf = 136446466;
            *&buf[4] = "RemoteDisplayListRecorder_Clip";
            *&buf[12] = 2082;
            *&buf[14] = v36;
            _os_log_impl(&dword_19D52D000, v35, OS_LOG_TYPE_DEFAULT, "RemoteDisplayListRecorderProxy::send - failed, name:%{public}s, error:%{public}s", buf, 0x16u);
          }

          WebKit::RemoteDisplayListRecorderProxy::didBecomeUnresponsive(*(this + 440));
          goto LABEL_19;
        }

        __break(0xC471u);
LABEL_67:
        JUMPOUT(0x19E1AA2F4);
      }
    }
  }
}

void WebKit::RemoteDisplayListRecorderProxy::clipRoundedRect(WebKit::RemoteDisplayListRecorderProxy *this, const FloatRoundedRect *a2)
{
  v41 = *MEMORY[0x1E69E9840];
  updated = WebCore::DisplayList::Recorder::updateStateForClipRoundedRect(this, a2);
  v36 = a2;
  v6 = *(this + 439);
  if (v6)
  {
    atomic_fetch_add(v6, 1u);
    goto LABEL_3;
  }

  v30 = *(this + 440);
  if (v30)
  {
    v31 = *(v30 + 8);
    if (v31)
    {
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
              updated = WebKit::RemoteImageBufferProxy::backingStoreWillChange(*buf, v33);
              v35 = *buf;
              *buf = 0;
              if (v35)
              {
                updated = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::ImageBuffer,(WTF::DestructionThread)0>::deref((v35 + 8), v34);
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
            goto LABEL_40;
          }

          v18 = *&buf[8];
          if (*&buf[8] <= 1uLL)
          {
            __break(0xC471u);
            goto LABEL_58;
          }

          v19 = *buf;
          **buf = 3198;
          v20 = v19 + 2;
          if (v18 - 2 < (-v20 & 7 | 8uLL))
          {
            goto LABEL_40;
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
            goto LABEL_39;
          }

          IPC::StreamClientConnection::wakeUpServerBatched(v6, atomic_exchange((*(v27 + 16) + 128), v26) == 0x80000000);
          *(v6 + 64) = v7;
        }

        IPC::StreamClientConnectionBuffer::tryAcquire(v6 + 72, &v37, v9);
        if ((v39 & 1) == 0)
        {
          goto LABEL_40;
        }

        v11 = v37;
        v12 = v38;
        *&buf[16] = v38;
        if (v38 > 1)
        {
          *v37 = 1059;
          *buf = v11 + 1;
          *&buf[8] = v12 - 2;
          IPC::ArgumentCoder<WebCore::FloatRoundedRect,void>::encode(buf, v36);
          if (*buf)
          {
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

            goto LABEL_39;
          }

          if ((v39 & 1) == 0)
          {
LABEL_39:
            __break(1u);
            goto LABEL_40;
          }

          IPC::StreamClientConnection::sendProcessOutOfStreamMessage(v6, v37, v38);
          if (!IPC::Connection::send<Messages::RemoteDisplayListRecorder::ClipRoundedRect>(*(v6 + 8), &v36, v7))
          {
LABEL_19:
            if (atomic_fetch_add(v6, 0xFFFFFFFF) == 1)
            {
              atomic_store(1u, v6);
              IPC::StreamClientConnection::operator delete(v6);
            }

            return;
          }

LABEL_40:
          v28 = qword_1ED6410D0;
          if (os_log_type_enabled(qword_1ED6410D0, OS_LOG_TYPE_DEFAULT))
          {
            v29 = IPC::errorAsString();
            *buf = 136446466;
            *&buf[4] = "RemoteDisplayListRecorder_ClipRoundedRect";
            *&buf[12] = 2082;
            *&buf[14] = v29;
            _os_log_impl(&dword_19D52D000, v28, OS_LOG_TYPE_DEFAULT, "RemoteDisplayListRecorderProxy::send - failed, name:%{public}s, error:%{public}s", buf, 0x16u);
          }

          WebKit::RemoteDisplayListRecorderProxy::didBecomeUnresponsive(*(this + 440));
          goto LABEL_19;
        }

        __break(0xC471u);
LABEL_58:
        JUMPOUT(0x19E1AA764);
      }
    }
  }
}

void WebKit::RemoteDisplayListRecorderProxy::clipOut(WebKit::RemoteDisplayListRecorderProxy *this, const FloatRect *a2)
{
  v45 = *MEMORY[0x1E69E9840];
  updated = WebCore::DisplayList::Recorder::updateStateForClipOut(this, a2);
  v40 = a2;
  v6 = *(this + 439);
  if (!v6)
  {
    goto LABEL_54;
  }

  atomic_fetch_add(v6, 1u);
  while (1)
  {
    if ((*(this + 3584) & 1) == 0)
    {
      updated = *(this + 443);
      if (updated)
      {
        WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteImageBufferProxy>(updated, *(this + 442), buf);
        updated = *buf;
        if (*buf)
        {
          updated = WebKit::RemoteImageBufferProxy::backingStoreWillChange(*buf, v37);
          v39 = *buf;
          *buf = 0;
          if (v39)
          {
            updated = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::ImageBuffer,(WTF::DestructionThread)0>::deref((v39 + 8), v38);
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
        goto LABEL_45;
      }

      v18 = *&buf[8];
      if (*&buf[8] <= 1uLL)
      {
LABEL_66:
        __break(0xC471u);
        JUMPOUT(0x19E1AABA4);
      }

      v19 = *buf;
      **buf = 3198;
      v20 = v19 + 2;
      if (v18 - 2 < (-v20 & 7 | 8uLL))
      {
        goto LABEL_45;
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
        goto LABEL_53;
      }

      v28 = atomic_exchange((*(v27 + 16) + 128), v26);
      v29 = *(v6 + 124);
      if (v28 == 0x80000000 || v29 != 0)
      {
        v31 = v29 + 1;
        *(v6 + 124) = v31;
        if (v31 >= *(v6 + 120))
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

    IPC::StreamClientConnectionBuffer::tryAcquire(v6 + 72, &v41, v9);
    if ((v43 & 1) == 0)
    {
      goto LABEL_45;
    }

    v11 = v41;
    v12 = v42;
    *&buf[16] = v42;
    if (v42 <= 1)
    {
      goto LABEL_66;
    }

    *v41 = 1055;
    *buf = v11 + 1;
    *&buf[8] = v12 - 2;
    IPC::ArgumentCoder<WebCore::PathEllipseInRect,void>::encode(buf, v40);
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

LABEL_53:
    __break(1u);
LABEL_54:
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
    v36 = WebKit::RemoteRenderingBackendProxy::connection(v35, v5, buf);
    v6 = *buf;
    if (*(v35 + 5) == 1)
    {
      (*(*v35 + 24))(v35, v36);
    }

    else
    {
      --*(v35 + 5);
    }

    if (!v6)
    {
      return;
    }

    updated = WTF::RefPtr<IPC::StreamClientConnection,WTF::RawPtrTraits<IPC::StreamClientConnection>,WTF::DefaultRefDerefTraits<IPC::StreamClientConnection>>::operator=(this + 439, v6);
  }

  if ((v43 & 1) == 0)
  {
    goto LABEL_53;
  }

  IPC::StreamClientConnection::sendProcessOutOfStreamMessage(v6, v41, v42);
  if (IPC::Connection::send<Messages::RemoteDisplayListRecorder::ClipOut>(*(v6 + 8), &v40, v7))
  {
LABEL_45:
    v32 = qword_1ED6410D0;
    if (os_log_type_enabled(qword_1ED6410D0, OS_LOG_TYPE_DEFAULT))
    {
      v33 = IPC::errorAsString();
      *buf = 136446466;
      *&buf[4] = "RemoteDisplayListRecorder_ClipOut";
      *&buf[12] = 2082;
      *&buf[14] = v33;
      _os_log_impl(&dword_19D52D000, v32, OS_LOG_TYPE_DEFAULT, "RemoteDisplayListRecorderProxy::send - failed, name:%{public}s, error:%{public}s", buf, 0x16u);
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

void WebKit::RemoteDisplayListRecorderProxy::clipOutRoundedRect(WebKit::RemoteDisplayListRecorderProxy *this, const FloatRoundedRect *a2)
{
  v41 = *MEMORY[0x1E69E9840];
  updated = WebCore::DisplayList::Recorder::updateStateForClipOutRoundedRect(this, a2);
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
      updated = *(this + 443);
      if (updated)
      {
        WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteImageBufferProxy>(updated, *(this + 442), buf);
        updated = *buf;
        if (*buf)
        {
          updated = WebKit::RemoteImageBufferProxy::backingStoreWillChange(*buf, v33);
          v35 = *buf;
          *buf = 0;
          if (v35)
          {
            updated = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::ImageBuffer,(WTF::DestructionThread)0>::deref((v35 + 8), v34);
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
        goto LABEL_38;
      }

      v18 = *&buf[8];
      if (*&buf[8] <= 1uLL)
      {
LABEL_56:
        __break(0xC471u);
        JUMPOUT(0x19E1AB014);
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

    *v37 = 1056;
    *buf = v11 + 1;
    *&buf[8] = v12 - 2;
    IPC::ArgumentCoder<WebCore::FloatRoundedRect,void>::encode(buf, v36);
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

    updated = WTF::RefPtr<IPC::StreamClientConnection,WTF::RawPtrTraits<IPC::StreamClientConnection>,WTF::DefaultRefDerefTraits<IPC::StreamClientConnection>>::operator=(this + 439, v6);
  }

  if ((v39 & 1) == 0)
  {
    goto LABEL_44;
  }

  IPC::StreamClientConnection::sendProcessOutOfStreamMessage(v6, v37, v38);
  if (IPC::Connection::send<Messages::RemoteDisplayListRecorder::ClipOutRoundedRect>(*(v6 + 8), &v36, v7))
  {
LABEL_38:
    v28 = qword_1ED6410D0;
    if (os_log_type_enabled(qword_1ED6410D0, OS_LOG_TYPE_DEFAULT))
    {
      v29 = IPC::errorAsString();
      *buf = 136446466;
      *&buf[4] = "RemoteDisplayListRecorder_ClipOutRoundedRect";
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

void WebKit::RemoteDisplayListRecorderProxy::clipToImageBuffer(WebKit::RemoteDisplayListRecorderProxy *this, WebCore::ImageBuffer *a2, FloatRect *a3)
{
  v64 = *MEMORY[0x1E69E9840];
  WebCore::DisplayList::Recorder::updateStateForClipToImageBuffer(this, a3);
  v6 = WebKit::RemoteDisplayListRecorderProxy::recordResourceUse(*(this + 440), a2);
  v8 = *(a2 + 15);
  v9 = *(this + 439);
  if (!v9)
  {
    goto LABEL_63;
  }

  atomic_fetch_add(v9, 1u);
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
          v6 = WebKit::RemoteImageBufferProxy::ensureBackend(*buf, v57);
          if (v6)
          {
            v6 = (*(*v6 + 168))(v6);
          }

          v59 = *buf;
          *buf = 0;
          if (v59)
          {
            v6 = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::ImageBuffer,(WTF::DestructionThread)0>::deref((v59 + 8), v58);
          }
        }
      }

      *(this + 3584) = 1;
    }

    v10 = *(this + 438);
    v11 = *(v9 + 128);
    v12 = INFINITY;
    if (fabs(v11) != INFINITY)
    {
      WTF::ApproximateTime::now(v6);
      v12 = v11 + v13;
    }

    if (*(v9 + 64) != v10)
    {
      IPC::StreamClientConnectionBuffer::tryAcquire(v9 + 72, buf, v12);
      if (buf[16] != 1)
      {
        goto LABEL_56;
      }

      v38 = *&buf[8];
      if (*&buf[8] <= 1uLL)
      {
LABEL_83:
        __break(0xC471u);
        JUMPOUT(0x19E1AB5E4);
      }

      v39 = *buf;
      **buf = 3198;
      v40 = v39 + 2;
      if (v38 - 2 < (-v40 & 7 | 8uLL))
      {
        goto LABEL_56;
      }

      v41 = -v40 & 7;
      *(v40 + v41) = v10;
      v42 = 6;
      if (v41 > 6)
      {
        v42 = v41;
      }

      v43 = v42 + 10;
      v44 = (*(v9 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
      v45 = *(v9 + 72);
      if (v44 + 16 >= v45)
      {
        v44 = 0;
      }

      v46 = v43 + v44;
      if (v45 <= v46)
      {
        v46 = 0;
      }

      *(v9 + 88) = v46;
      v47 = *(v9 + 80);
      if (*(v47 + 8) <= 0xFFuLL)
      {
        goto LABEL_62;
      }

      v48 = atomic_exchange((*(v47 + 16) + 128), v46);
      v49 = *(v9 + 124);
      if (v48 == 0x80000000 || v49 != 0)
      {
        v51 = v49 + 1;
        *(v9 + 124) = v51;
        if (v51 >= *(v9 + 120))
        {
          if (*(v9 + 112) == 1)
          {
            MEMORY[0x19EB16320](*(v9 + 100));
          }

          *(v9 + 124) = 0;
        }
      }

      *(v9 + 64) = v10;
    }

    IPC::StreamClientConnectionBuffer::tryAcquire(v9 + 72, &v60, v12);
    if ((v62 & 1) == 0)
    {
      goto LABEL_56;
    }

    v14 = v60;
    v15 = v61;
    *&buf[16] = v61;
    if (v61 <= 1)
    {
      goto LABEL_83;
    }

    *v60 = 1060;
    v16 = v14 + 1;
    v17 = v15 - 2;
    v18 = -v16 & 7 | 8;
    v19 = v17 >= v18;
    v20 = v17 - v18;
    if (v19)
    {
      *(v16 + (-v16 & 7)) = v8;
      *buf = v16 + v18;
      *&buf[8] = v20;
    }

    else
    {
      *buf = 0;
      *&buf[8] = 0;
    }

    IPC::ArgumentCoder<WebCore::PathEllipseInRect,void>::encode(buf, a3);
    if (!*buf)
    {
      break;
    }

    v21 = *&buf[16] - *&buf[8];
    if (*&buf[16] - *&buf[8] <= 0x10uLL)
    {
      v21 = 16;
    }

    v22 = (*(v9 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
    v23 = *(v9 + 72);
    if (v22 + 16 >= v23)
    {
      v22 = 0;
    }

    v24 = v22 + v21;
    if (v23 <= v24)
    {
      v24 = 0;
    }

    *(v9 + 88) = v24;
    v25 = *(v9 + 80);
    if (*(v25 + 8) > 0xFFuLL)
    {
      if (atomic_exchange((*(v25 + 16) + 128), v24) == 0x80000000 || *(v9 + 124))
      {
        if (*(v9 + 112) == 1)
        {
          MEMORY[0x19EB16320](*(v9 + 100));
        }

        *(v9 + 124) = 0;
      }

      goto LABEL_59;
    }

LABEL_62:
    __break(1u);
LABEL_63:
    v54 = *(this + 440);
    if (!v54)
    {
      return;
    }

    v55 = *(v54 + 8);
    if (!v55)
    {
      return;
    }

    ++*(v55 + 5);
    v56 = WebKit::RemoteRenderingBackendProxy::connection(v55, v7, buf);
    v9 = *buf;
    if (*(v55 + 5) == 1)
    {
      (*(*v55 + 24))(v55, v56);
      if (!v9)
      {
        return;
      }
    }

    else
    {
      --*(v55 + 5);
      if (!v9)
      {
        return;
      }
    }

    atomic_fetch_add(v9, 1u);
    v6 = *(this + 439);
    *(this + 439) = v9;
    if (v6 && atomic_fetch_add(v6, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v6);
      IPC::StreamClientConnection::operator delete(v6);
    }
  }

  if ((v62 & 1) == 0)
  {
    goto LABEL_62;
  }

  if (v61 <= 1)
  {
    __break(0xC471u);
    JUMPOUT(0x19E1AB604);
  }

  *v60 = 3197;
  v26 = (*(v9 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
  v27 = *(v9 + 72);
  if (v26 + 16 >= v27)
  {
    v26 = 0;
  }

  v28 = v26 + 16;
  v29 = v27 <= v28 ? 0 : v28;
  *(v9 + 88) = v29;
  v30 = *(v9 + 80);
  if (*(v30 + 8) <= 0xFFuLL)
  {
    goto LABEL_62;
  }

  atomic_exchange((*(v30 + 16) + 128), v29);
  *(v9 + 124) = 0;
  v31 = *(v9 + 8);
  v32 = IPC::Encoder::operator new(0x238, v7);
  *v32 = 1060;
  *(v32 + 2) = 0;
  *(v32 + 3) = 0;
  *(v32 + 1) = v10;
  *(v32 + 68) = 0;
  *(v32 + 70) = 0;
  *(v32 + 69) = 0;
  IPC::Encoder::encodeHeader(v32);
  *buf = v32;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v32, v8);
  IPC::ArgumentCoder<WebCore::FloatRect,void>::encode(v32, &a3->m_location);
  v34 = IPC::Connection::sendMessageImpl(v31, buf, 1, 0);
  v35 = *buf;
  *buf = 0;
  if (v35)
  {
    IPC::Encoder::~Encoder(v35, v33);
    bmalloc::api::tzoneFree(v36, v37);
    if (!v34)
    {
      goto LABEL_59;
    }
  }

  else if (!v34)
  {
    goto LABEL_59;
  }

LABEL_56:
  v52 = qword_1ED6410D0;
  if (os_log_type_enabled(qword_1ED6410D0, OS_LOG_TYPE_DEFAULT))
  {
    v53 = IPC::errorAsString();
    *buf = 136446466;
    *&buf[4] = "RemoteDisplayListRecorder_ClipToImageBuffer";
    *&buf[12] = 2082;
    *&buf[14] = v53;
    _os_log_impl(&dword_19D52D000, v52, OS_LOG_TYPE_DEFAULT, "RemoteDisplayListRecorderProxy::send - failed, name:%{public}s, error:%{public}s", buf, 0x16u);
  }

  WebKit::RemoteDisplayListRecorderProxy::didBecomeUnresponsive(*(this + 440));
LABEL_59:
  if (atomic_fetch_add(v9, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v9);
    IPC::StreamClientConnection::operator delete(v9);
  }
}

WTF::ThreadSafeWeakPtrControlBlock *WebKit::RemoteDisplayListRecorderProxy::recordResourceUse(WebKit::RemoteDisplayListRecorderProxy *this, WebCore::ImageBuffer *a2)
{
  if (!this)
  {
    return 0;
  }

  v2 = *(this + 1);
  if (!v2)
  {
    return 0;
  }

  ++*(v2 + 20);
  v3 = WebKit::RemoteRenderingBackendProxy::isCached(v2, a2);
  if (*(v2 + 20) == 1)
  {
    (*(*v2 + 24))(v2);
  }

  else
  {
    --*(v2 + 20);
  }

  return v3;
}

void WebKit::RemoteDisplayListRecorderProxy::clipOut(WebKit::RemoteDisplayListRecorderProxy *this, Path *a2)
{
  v56 = *MEMORY[0x1E69E9840];
  updated = WebCore::DisplayList::Recorder::updateStateForClipOut(this, a2);
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
      updated = *(this + 443);
      if (updated)
      {
        WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteImageBufferProxy>(updated, *(this + 442), buf);
        updated = *buf;
        if (*buf)
        {
          updated = WebKit::RemoteImageBufferProxy::ensureBackend(*buf, v49);
          if (updated)
          {
            updated = (*(*updated + 168))(updated);
          }

          v51 = *buf;
          *buf = 0;
          if (v51)
          {
            updated = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::ImageBuffer,(WTF::DestructionThread)0>::deref((v51 + 8), v50);
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
        goto LABEL_53;
      }

      v30 = *&buf[8];
      if (*&buf[8] <= 1uLL)
      {
LABEL_80:
        __break(0xC471u);
        JUMPOUT(0x19E1ABC08);
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

    *v52 = 1057;
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
    updated = *(this + 439);
    *(this + 439) = v6;
    if (updated && atomic_fetch_add(updated, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, updated);
      IPC::StreamClientConnection::operator delete(updated);
    }
  }

  if ((v54 & 1) == 0)
  {
    goto LABEL_59;
  }

  if (v53 <= 1)
  {
    __break(0xC471u);
    JUMPOUT(0x19E1ABC28);
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
  *v24 = 1057;
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
    *&buf[4] = "RemoteDisplayListRecorder_ClipOutToPath";
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

void WebKit::RemoteDisplayListRecorderProxy::clipPath(uint64_t a1, Path *a2, char a3)
{
  v60 = *MEMORY[0x1E69E9840];
  updated = WebCore::DisplayList::Recorder::updateStateForClipPath(a1, a2);
  v8 = *(a1 + 3512);
  if (!v8)
  {
    goto LABEL_59;
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
          updated = WebKit::RemoteImageBufferProxy::backingStoreWillChange(*buf, v52);
          v54 = *buf;
          *buf = 0;
          if (v54)
          {
            updated = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::ImageBuffer,(WTF::DestructionThread)0>::deref((v54 + 8), v53);
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

    if (*(v8 + 64) == v9)
    {
      break;
    }

    IPC::StreamClientConnectionBuffer::tryAcquire(v8 + 72, buf, v11);
    if (buf[16] != 1)
    {
      goto LABEL_65;
    }

    v21 = *&buf[8];
    if (*&buf[8] <= 1uLL)
    {
      __break(0xC471u);
      JUMPOUT(0x19E1AC184);
    }

    v22 = *buf;
    **buf = 3198;
    v23 = v22 + 2;
    if (v21 - 2 < (-v23 & 7 | 8uLL))
    {
      goto LABEL_65;
    }

    v24 = -v23 & 7;
    *(v23 + v24) = v9;
    v25 = 6;
    if (v24 > 6)
    {
      v25 = v24;
    }

    v26 = v25 + 10;
    v27 = (*(v8 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
    v28 = *(v8 + 72);
    if (v27 + 16 >= v28)
    {
      v27 = 0;
    }

    v29 = v26 + v27;
    if (v28 <= v29)
    {
      v29 = 0;
    }

    *(v8 + 88) = v29;
    v30 = *(v8 + 80);
    if (*(v30 + 8) > 0xFFuLL)
    {
      v31 = atomic_exchange((*(v30 + 16) + 128), v29);
      v32 = *(v8 + 124);
      if (v31 == 0x80000000 || v32 != 0)
      {
        v34 = v32 + 1;
        *(v8 + 124) = v34;
        if (v34 >= *(v8 + 120))
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
    v47 = WebKit::RemoteRenderingBackendProxy::connection(v46, v7, buf);
    v8 = *buf;
    if (*(v46 + 5) == 1)
    {
      (*(*v46 + 24))(v46, v47);
    }

    else
    {
      --*(v46 + 5);
    }

    if (!v8)
    {
      return;
    }

    updated = WTF::RefPtr<IPC::StreamClientConnection,WTF::RawPtrTraits<IPC::StreamClientConnection>,WTF::DefaultRefDerefTraits<IPC::StreamClientConnection>>::operator=((a1 + 3512), v8);
  }

  IPC::StreamClientConnectionBuffer::tryAcquire(v8 + 72, &v55, v11);
  if ((v57 & 1) == 0)
  {
    goto LABEL_65;
  }

  v13 = v55;
  v14 = v56;
  *&buf[16] = v56;
  if (v56 <= 1)
  {
LABEL_77:
    __break(0xC471u);
    JUMPOUT(0x19E1AC164);
  }

  *v55 = 1058;
  *buf = v13 + 1;
  *&buf[8] = v14 - 2;
  IPC::ArgumentCoder<WebCore::Path,void>::encode(buf, a2);
  if (*&buf[8])
  {
    **buf = a3;
    v15 = *&buf[8];
    if (*&buf[8])
    {
      ++*buf;
      --*&buf[8];
      v16 = *&buf[16] - (v15 - 1);
      if (v16 <= 0x10)
      {
        v16 = 16;
      }

      v17 = (*(v8 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
      v18 = *(v8 + 72);
      if (v17 + 16 >= v18)
      {
        v17 = 0;
      }

      v19 = v17 + v16;
      if (v18 <= v19)
      {
        v19 = 0;
      }

      *(v8 + 88) = v19;
      v20 = *(v8 + 80);
      if (*(v20 + 8) > 0xFFuLL)
      {
        if (atomic_exchange((*(v20 + 16) + 128), v19) == 0x80000000 || *(v8 + 124))
        {
          if (*(v8 + 112) == 1)
          {
            MEMORY[0x19EB16320](*(v8 + 100));
          }

          *(v8 + 124) = 0;
        }

        goto LABEL_20;
      }
    }

    goto LABEL_58;
  }

  if ((v57 & 1) == 0)
  {
    goto LABEL_58;
  }

  if (v56 <= 1)
  {
    goto LABEL_77;
  }

  *v55 = 3197;
  v35 = (*(v8 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
  v36 = *(v8 + 72);
  if (v35 + 16 >= v36)
  {
    v35 = 0;
  }

  v37 = v35 + 16;
  v38 = v36 <= v37 ? 0 : v37;
  *(v8 + 88) = v38;
  v39 = *(v8 + 80);
  if (*(v39 + 8) <= 0xFFuLL)
  {
    goto LABEL_58;
  }

  atomic_exchange((*(v39 + 16) + 128), v38);
  *(v8 + 124) = 0;
  v40 = *(v8 + 8);
  v41 = IPC::Encoder::operator new(0x238, v7);
  *v41 = 1058;
  *(v41 + 2) = 0;
  *(v41 + 3) = 0;
  *(v41 + 1) = v9;
  *(v41 + 68) = 0;
  *(v41 + 70) = 0;
  *(v41 + 69) = 0;
  IPC::Encoder::encodeHeader(v41);
  *buf = v41;
  IPC::ArgumentCoder<WebCore::Path,void>::encode(v41, a2);
  v58 = a3;
  IPC::Encoder::operator<<<BOOL>(v41, &v58);
  v43 = IPC::Connection::sendMessageImpl(v40, buf, 1, 0);
  v44 = *buf;
  *buf = 0;
  if (v44)
  {
    IPC::Encoder::~Encoder(v44, v42);
    bmalloc::api::tzoneFree(v48, v49);
  }

  if (v43)
  {
LABEL_65:
    v50 = qword_1ED6410D0;
    if (os_log_type_enabled(qword_1ED6410D0, OS_LOG_TYPE_DEFAULT))
    {
      v51 = IPC::errorAsString();
      *buf = 136446466;
      *&buf[4] = "RemoteDisplayListRecorder_ClipPath";
      *&buf[12] = 2082;
      *&buf[14] = v51;
      _os_log_impl(&dword_19D52D000, v50, OS_LOG_TYPE_DEFAULT, "RemoteDisplayListRecorderProxy::send - failed, name:%{public}s, error:%{public}s", buf, 0x16u);
    }

    WebKit::RemoteDisplayListRecorderProxy::didBecomeUnresponsive(*(a1 + 3520));
  }

LABEL_20:
  if (atomic_fetch_add(v8, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v8);
    IPC::StreamClientConnection::operator delete(v8);
  }
}

void WebKit::RemoteDisplayListRecorderProxy::resetClip(WebKit::RemoteDisplayListRecorderProxy *this)
{
  v36 = *MEMORY[0x1E69E9840];
  updated = WebCore::DisplayList::Recorder::updateStateForResetClip(this);
  v4 = *(this + 439);
  if (!v4)
  {
    goto LABEL_44;
  }

  atomic_fetch_add(v4, 1u);
  while (1)
  {
    if ((*(this + 3584) & 1) == 0)
    {
      updated = *(this + 443);
      if (updated)
      {
        WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteImageBufferProxy>(updated, *(this + 442), v35);
        updated = *v35;
        if (*v35)
        {
          updated = WebKit::RemoteImageBufferProxy::ensureBackend(*v35, v32);
          if (updated)
          {
            updated = (*(*updated + 168))(updated);
          }

          v34 = *v35;
          *v35 = 0;
          if (v34)
          {
            updated = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::ImageBuffer,(WTF::DestructionThread)0>::deref((v34 + 8), v33);
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

    if (*(v4 + 64) == v5)
    {
      goto LABEL_9;
    }

    IPC::StreamClientConnectionBuffer::tryAcquire(v4 + 72, v35, v7);
    if (v35[16] != 1)
    {
      break;
    }

    v13 = *&v35[8];
    if (*&v35[8] <= 1uLL)
    {
LABEL_62:
      __break(0xC471u);
      JUMPOUT(0x19E1AC614);
    }

    v14 = *v35;
    **v35 = 3198;
    v15 = v14 + 2;
    if (v13 - 2 < (-v15 & 7 | 8uLL))
    {
      break;
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
      goto LABEL_43;
    }

    v23 = atomic_exchange((*(v22 + 16) + 128), v21);
    v24 = *(v4 + 124);
    if (v23 == 0x80000000 || v24 != 0)
    {
      v26 = v24 + 1;
      *(v4 + 124) = v26;
      if (v26 >= *(v4 + 120))
      {
        if (*(v4 + 112) == 1)
        {
          MEMORY[0x19EB16320](*(v4 + 100));
        }

        *(v4 + 124) = 0;
      }
    }

    *(v4 + 64) = v5;
LABEL_9:
    IPC::StreamClientConnectionBuffer::tryAcquire(v4 + 72, v35, v7);
    if (v35[16] != 1)
    {
      break;
    }

    if (*&v35[8] <= 1uLL)
    {
      goto LABEL_62;
    }

    **v35 = 1097;
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

      goto LABEL_40;
    }

LABEL_43:
    __break(1u);
LABEL_44:
    v29 = *(this + 440);
    if (!v29)
    {
      goto LABEL_42;
    }

    v30 = *(v29 + 8);
    if (!v30)
    {
      goto LABEL_42;
    }

    ++*(v30 + 5);
    v31 = WebKit::RemoteRenderingBackendProxy::connection(v30, v3, v35);
    v4 = *v35;
    if (*(v30 + 5) == 1)
    {
      (*(*v30 + 24))(v30, v31);
      if (!v4)
      {
        goto LABEL_42;
      }
    }

    else
    {
      --*(v30 + 5);
      if (!v4)
      {
        goto LABEL_42;
      }
    }

    atomic_fetch_add(v4, 1u);
    updated = *(this + 439);
    *(this + 439) = v4;
    if (updated && atomic_fetch_add(updated, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, updated);
      IPC::StreamClientConnection::operator delete(updated);
    }
  }

  v27 = qword_1ED6410D0;
  if (os_log_type_enabled(qword_1ED6410D0, OS_LOG_TYPE_DEFAULT))
  {
    v28 = IPC::errorAsString();
    *v35 = 136446466;
    *&v35[4] = "RemoteDisplayListRecorder_ResetClip";
    *&v35[12] = 2082;
    *&v35[14] = v28;
    _os_log_impl(&dword_19D52D000, v27, OS_LOG_TYPE_DEFAULT, "RemoteDisplayListRecorderProxy::send - failed, name:%{public}s, error:%{public}s", v35, 0x16u);
  }

  WebKit::RemoteDisplayListRecorderProxy::didBecomeUnresponsive(*(this + 440));
LABEL_40:
  if (atomic_fetch_add(v4, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v4);
    IPC::StreamClientConnection::operator delete(v4);
  }

LABEL_42:
  *v35 = *(this + 3464);
  WebKit::RemoteDisplayListRecorderProxy::clip(this, v35);
}

uint64_t WebKit::RemoteDisplayListRecorderProxy::drawFilteredImageBuffer(uint64_t a1, uint64_t a2, _DWORD *a3, atomic_uchar **a4)
{
  v72 = *MEMORY[0x1E69E9840];
  WebKit::RemoteDisplayListRecorderProxy::appendStateChangeItemIfNecessary(a1, a2);
  (*(*a4 + 12))(buf, a4, 12);
  if (*&buf[12])
  {
    v46 = *buf;
    v47 = *buf + 8 * *&buf[12];
    while (1)
    {
      v48 = *v46;
      if (*(*v46 + 48) != 12)
      {
        break;
      }

      while (1)
      {
        v49 = *(v48 + 8);
        if ((v49 & 1) == 0)
        {
          break;
        }

        v50 = *(v48 + 8);
        atomic_compare_exchange_strong_explicit((v48 + 8), &v50, v49 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v50 == v49)
        {
          goto LABEL_64;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*(v48 + 8));
LABEL_64:
      v68 = v48;
      if (!WebKit::RemoteDisplayListRecorderProxy::recordResourceUse(a1, (v48 + 64)))
      {
        goto LABEL_77;
      }

      WTF::Ref<WebCore::FEBlend,WTF::RawPtrTraits<WebCore::FEBlend>,WTF::DefaultRefDerefTraits<WebCore::FEBlend>>::~Ref(&v68, v51);
      if (++v46 == v47)
      {
        goto LABEL_2;
      }
    }

    __break(0xC471u);
LABEL_96:
    JUMPOUT(0x19E1ACD0CLL);
  }

LABEL_2:
  v9 = WTF::Vector<WTF::Ref<WebCore::FilterEffect,WTF::RawPtrTraits<WebCore::FilterEffect>,WTF::DefaultRefDerefTraits<WebCore::FilterEffect>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(buf, v8);
  v11 = *(a4 + 48);
  if (v11 == 1)
  {
    v12 = a4;
  }

  else
  {
    v12 = 0;
  }

  if (v11 == 1)
  {
    while (1)
    {
      v13 = a4[1];
      if ((v13 & 1) == 0)
      {
        break;
      }

      v14 = a4[1];
      atomic_compare_exchange_strong_explicit(a4 + 1, &v14, (v13 + 2), memory_order_relaxed, memory_order_relaxed);
      if (v14 == v13)
      {
        goto LABEL_8;
      }
    }

    v9 = WTF::ThreadSafeWeakPtrControlBlock::strongRef(a4[1]);
LABEL_8:
    if (*(a4 + 40) == 1)
    {
      v15 = *(a1 + 3520);
      if (v15)
      {
        v16 = *(v15 + 8);
        if (v16)
        {
          ++v16[5];
          v9 = WebKit::RemoteResourceCacheProxy::recordFilterUse((v16 + 22), a4);
          if (v16[5] == 1)
          {
            v9 = (*(*v16 + 24))(v16);
          }

          else
          {
            --v16[5];
          }
        }
      }
    }
  }

  LOBYTE(v66) = 0;
  v67 = 0;
  if (!a2)
  {
    goto LABEL_16;
  }

  v9 = WebKit::RemoteDisplayListRecorderProxy::recordResourceUse(*(a1 + 3520), a2);
  if ((v9 & 1) == 0)
  {
    result = WebCore::GraphicsContext::drawFilteredImageBuffer();
LABEL_39:
    if (v11 == 1)
    {
      do
      {
        v34 = a4[1];
        if ((v34 & 1) == 0)
        {
          return WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebCore::RenderingResource,(WTF::DestructionThread)0>(a4[1], v33);
        }

        v35 = a4[1];
        atomic_compare_exchange_strong_explicit(a4 + 1, &v35, (v34 - 2), memory_order_relaxed, memory_order_relaxed);
      }

      while (v35 != v34);
      if (v34 == 3)
      {
        return (*(*v12 + 1))(v12);
      }
    }

    return result;
  }

  v17 = *(a2 + 120);
  v67 = !v67;
  v66 = v17;
LABEL_16:
  while (1)
  {
    v18 = a4[1];
    if ((v18 & 1) == 0)
    {
      break;
    }

    v19 = a4[1];
    atomic_compare_exchange_strong_explicit(a4 + 1, &v19, (v18 + 2), memory_order_relaxed, memory_order_relaxed);
    if (v19 == v18)
    {
      goto LABEL_18;
    }
  }

  v9 = WTF::ThreadSafeWeakPtrControlBlock::strongRef(a4[1]);
LABEL_18:
  v62 = a4;
  v63 = &v66;
  v64 = a3;
  v65 = &v62;
  v20 = *(a1 + 3512);
  if (v20)
  {
    atomic_fetch_add(v20, 1u);
  }

  else
  {
    v56 = *(a1 + 3520);
    if (!v56)
    {
      goto LABEL_38;
    }

    v57 = *(v56 + 8);
    if (!v57)
    {
      goto LABEL_38;
    }

    ++*(v57 + 5);
    v58 = WebKit::RemoteRenderingBackendProxy::connection(v57, v10, buf);
    v20 = *buf;
    if (*(v57 + 5) == 1)
    {
      (*(*v57 + 24))(v57, v58);
    }

    else
    {
      --*(v57 + 5);
    }

    if (!v20)
    {
      goto LABEL_38;
    }

    v9 = WTF::RefPtr<IPC::StreamClientConnection,WTF::RawPtrTraits<IPC::StreamClientConnection>,WTF::DefaultRefDerefTraits<IPC::StreamClientConnection>>::operator=((a1 + 3512), v20);
  }

  if ((*(a1 + 3584) & 1) == 0)
  {
    v9 = *(a1 + 3544);
    if (v9)
    {
      WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteImageBufferProxy>(v9, *(a1 + 3536), buf);
      v9 = *buf;
      if (*buf)
      {
        v9 = WebKit::RemoteImageBufferProxy::backingStoreWillChange(*buf, v59);
        v61 = *buf;
        *buf = 0;
        if (v61)
        {
          v9 = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::ImageBuffer,(WTF::DestructionThread)0>::deref((v61 + 8), v60);
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
    WTF::ApproximateTime::now(v9);
    v23 = v22 + v24;
  }

  if (*(v20 + 64) != v21)
  {
    IPC::StreamClientConnectionBuffer::tryAcquire(v20 + 72, buf, v23);
    if (buf[16] != 1)
    {
      goto LABEL_70;
    }

    v36 = *&buf[8];
    if (*&buf[8] <= 1uLL)
    {
      __break(0xC471u);
      JUMPOUT(0x19E1ACD2CLL);
    }

    v37 = *buf;
    **buf = 3198;
    v38 = v37 + 2;
    if (v36 - 2 < (-v38 & 7 | 8uLL))
    {
      goto LABEL_70;
    }

    v39 = -v38 & 7;
    *(v38 + v39) = v21;
    v40 = 6;
    if (v39 > 6)
    {
      v40 = v39;
    }

    v41 = v40 + 10;
    v42 = (*(v20 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
    v43 = *(v20 + 72);
    if (v42 + 16 >= v43)
    {
      v42 = 0;
    }

    v44 = v41 + v42;
    if (v43 <= v44)
    {
      v44 = 0;
    }

    *(v20 + 88) = v44;
    v45 = *(v20 + 80);
    if (*(v45 + 8) <= 0xFFuLL)
    {
      goto LABEL_76;
    }

    IPC::StreamClientConnection::wakeUpServerBatched(v20, atomic_exchange((*(v45 + 16) + 128), v44) == 0x80000000);
    *(v20 + 64) = v21;
  }

  IPC::StreamClientConnectionBuffer::tryAcquire(v20 + 72, &v68, v23);
  if ((v70 & 1) == 0)
  {
LABEL_70:
    v52 = qword_1ED6410D0;
    if (os_log_type_enabled(qword_1ED6410D0, OS_LOG_TYPE_DEFAULT))
    {
      v53 = IPC::errorAsString();
      *buf = 136446466;
      *&buf[4] = "RemoteDisplayListRecorder_DrawFilteredImageBuffer";
      *&buf[12] = 2082;
      *&buf[14] = v53;
      _os_log_impl(&dword_19D52D000, v52, OS_LOG_TYPE_DEFAULT, "RemoteDisplayListRecorderProxy::send - failed, name:%{public}s, error:%{public}s", buf, 0x16u);
    }

    WebKit::RemoteDisplayListRecorderProxy::didBecomeUnresponsive(*(a1 + 3520));
    goto LABEL_36;
  }

  v25 = v68;
  v26 = v69;
  *&buf[16] = v69;
  if (v69 <= 1)
  {
    __break(0xC471u);
    goto LABEL_96;
  }

  *v68 = 1066;
  *buf = v25 + 2;
  *&buf[8] = v26 - 2;
  IPC::ArgumentCoder<std::optional<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,void>::encode<IPC::StreamConnectionEncoder,std::optional<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>> const&>(buf, v63);
  IPC::ArgumentCoder<WebCore::PathEllipseInRect,void>::encode(buf, v64);
  IPC::ArgumentCoder<WebCore::Filter,void>::encode(buf, *v65);
  if (!*buf)
  {
    if ((v70 & 1) == 0)
    {
      goto LABEL_76;
    }

    IPC::StreamClientConnection::sendProcessOutOfStreamMessage(v20, v68, v69);
    if (!IPC::Connection::send<Messages::RemoteDisplayListRecorder::DrawFilteredImageBuffer>(*(v20 + 8), &v63, v21))
    {
LABEL_36:
      if (atomic_fetch_add(v20, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v20);
        IPC::StreamClientConnection::operator delete(v20);
      }

LABEL_38:
      result = WTF::Ref<WebCore::FEBlend,WTF::RawPtrTraits<WebCore::FEBlend>,WTF::DefaultRefDerefTraits<WebCore::FEBlend>>::~Ref(&v62, v10);
      goto LABEL_39;
    }

    goto LABEL_70;
  }

  v27 = *&buf[16] - *&buf[8];
  if (*&buf[16] - *&buf[8] <= 0x10uLL)
  {
    v27 = 16;
  }

  v28 = (*(v20 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
  v29 = *(v20 + 72);
  if (v28 + 16 >= v29)
  {
    v28 = 0;
  }

  v30 = v28 + v27;
  if (v29 <= v30)
  {
    v30 = 0;
  }

  *(v20 + 88) = v30;
  v31 = *(v20 + 80);
  if (*(v31 + 8) > 0xFFuLL)
  {
    if (atomic_exchange((*(v31 + 16) + 128), v30) == 0x80000000 || *(v20 + 124))
    {
      if (*(v20 + 112) == 1)
      {
        MEMORY[0x19EB16320](*(v20 + 100));
      }

      *(v20 + 124) = 0;
    }

    goto LABEL_36;
  }

LABEL_76:
  __break(1u);
LABEL_77:
  WebCore::GraphicsContext::drawFilteredImageBuffer();
  WTF::Ref<WebCore::FEBlend,WTF::RawPtrTraits<WebCore::FEBlend>,WTF::DefaultRefDerefTraits<WebCore::FEBlend>>::~Ref(&v68, v54);
  return WTF::Vector<WTF::Ref<WebCore::FilterEffect,WTF::RawPtrTraits<WebCore::FilterEffect>,WTF::DefaultRefDerefTraits<WebCore::FilterEffect>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(buf, v55);
}

atomic_uchar **WebKit::RemoteDisplayListRecorderProxy::appendStateChangeItemIfNecessary(atomic_uchar **this, __int128 *a2)
{
  v770 = *MEMORY[0x1E69E9840];
  v3 = *(this + 167);
  if (!v3)
  {
    __break(0xC471u);
    goto LABEL_1386;
  }

  v4 = this;
  v5 = &this[82][696 * v3];
  v6 = *(v5 - 552);
  if (!v6)
  {
    return this;
  }

  v7 = (v5 - 696);
  if (v6)
  {
    if (*(v5 - 632))
    {
      BYTE4(v765) = 0;
      LODWORD(v765) = 0;
    }

    else
    {
      v50 = *v7;
      v51 = *v7 & 0x8000000000000;
      if (v51)
      {
        v50 = 0;
      }

      LODWORD(v765) = v50 | (v51 >> 19);
      v52 = (v51 >> 51) ^ 1;
      BYTE4(v765) = v52;
      if (v52)
      {
        v766 = &v765;
        v12 = this[439];
        if (v12)
        {
          atomic_fetch_add(v12, 1u);
        }

        else
        {
          v421 = this[440];
          if (!v421)
          {
            goto LABEL_4;
          }

          v2 = *(v421 + 1);
          if (!v2)
          {
            goto LABEL_4;
          }

          ++*(v2 + 20);
          v422 = WebKit::RemoteRenderingBackendProxy::connection(v2, a2, buf);
          v12 = *buf;
          if (*(v2 + 20) == 1)
          {
            this = (*(*v2 + 24))(v2, v422);
          }

          else
          {
            --*(v2 + 20);
          }

          if (!v12)
          {
            goto LABEL_4;
          }

          this = WTF::RefPtr<IPC::StreamClientConnection,WTF::RawPtrTraits<IPC::StreamClientConnection>,WTF::DefaultRefDerefTraits<IPC::StreamClientConnection>>::operator=((v4 + 3512), v12);
        }

        if ((*(v4 + 3584) & 1) == 0)
        {
          this = *(v4 + 3544);
          if (this)
          {
            WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteImageBufferProxy>(this, *(v4 + 3536), buf);
            this = *buf;
            if (*buf)
            {
              this = WebKit::RemoteImageBufferProxy::backingStoreWillChange(*buf, v690);
              v692 = *buf;
              *buf = 0;
              if (v692)
              {
                this = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::ImageBuffer,(WTF::DestructionThread)0>::deref((v692 + 8), v691);
              }
            }
          }

          *(v4 + 3584) = 1;
        }

        v2 = *(v4 + 3504);
        v53 = *(v12 + 128);
        v54 = INFINITY;
        if (fabs(v53) != INFINITY)
        {
          WTF::ApproximateTime::now(this);
          v54 = v53 + v55;
        }

        if (*(v12 + 64) != v2)
        {
          IPC::StreamClientConnectionBuffer::tryAcquire(v12 + 72, buf, v54);
          if (buf[16] != 1)
          {
            goto LABEL_966;
          }

          v233 = *&buf[8];
          if (*&buf[8] <= 1uLL)
          {
            __break(0xC471u);
            JUMPOUT(0x19E1B1F5CLL);
          }

          v234 = *buf;
          **buf = 3198;
          v235 = v234 + 2;
          if (v233 - 2 < (-v235 & 7 | 8uLL))
          {
LABEL_966:
            v2 = qword_1ED6410D0;
            if (!os_log_type_enabled(qword_1ED6410D0, OS_LOG_TYPE_DEFAULT))
            {
LABEL_969:
              this = WebKit::RemoteDisplayListRecorderProxy::didBecomeUnresponsive(*(v4 + 3520));
LABEL_93:
              if (atomic_fetch_add(v12, 0xFFFFFFFF) == 1)
              {
                atomic_store(1u, v12);
                IPC::StreamClientConnection::operator delete(v12);
              }

              goto LABEL_4;
            }

            v588 = IPC::errorAsString();
            *buf = 136446466;
            v589 = "RemoteDisplayListRecorder_SetFillPackedColor";
LABEL_968:
            *&buf[4] = v589;
            *&buf[12] = 2082;
            *&buf[14] = v588;
            _os_log_impl(&dword_19D52D000, v2, OS_LOG_TYPE_DEFAULT, "RemoteDisplayListRecorderProxy::send - failed, name:%{public}s, error:%{public}s", buf, 0x16u);
            goto LABEL_969;
          }

          v236 = -v235 & 7;
          *(v235 + v236) = v2;
          v237 = 6;
          if (v236 > 6)
          {
            v237 = v236;
          }

          v238 = v237 + 10;
          v239 = (*(v12 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
          v240 = *(v12 + 72);
          if (v239 + 16 >= v240)
          {
            v239 = 0;
          }

          v27 = v238 + v239;
          if (v240 <= v27)
          {
            v27 = 0;
          }

          *(v12 + 88) = v27;
          v241 = *(v12 + 80);
          if (*(v241 + 8) <= 0xFFuLL)
          {
            goto LABEL_1174;
          }

          v242 = atomic_exchange((*(v241 + 16) + 128), v27);
          v243 = *(v12 + 124);
          if (v242 == 0x80000000 || v243)
          {
            v306 = v243 + 1;
            *(v12 + 124) = v306;
            if (v306 >= *(v12 + 120))
            {
              if (*(v12 + 112) == 1)
              {
                MEMORY[0x19EB16320](*(v12 + 100));
              }

              *(v12 + 124) = 0;
            }
          }

          *(v12 + 64) = v2;
        }

        this = IPC::StreamClientConnectionBuffer::tryAcquire(v12 + 72, buf, v54);
        if (buf[16])
        {
          v56 = *&buf[8];
          if (*&buf[8] <= 1uLL)
          {
            __break(0xC471u);
            JUMPOUT(0x19E1B1768);
          }

          v57 = *buf;
          **buf = 1110;
          v58 = v57 + 2;
          if (v56 - 2 >= (-v58 & 3 | 4uLL))
          {
            *(v58 + (-v58 & 3)) = *v766;
            v59 = (*(v12 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
            v60 = *(v12 + 72);
            if (v59 + 16 >= v60)
            {
              v59 = 0;
            }

            v61 = v59 + 16;
            if (v60 <= v61)
            {
              v27 = 0;
            }

            else
            {
              v27 = v61;
            }

            *(v12 + 88) = v27;
            v62 = *(v12 + 80);
            if (*(v62 + 8) <= 0xFFuLL)
            {
              goto LABEL_1174;
            }

            v63 = atomic_exchange((*(v62 + 16) + 128), v27);
            v64 = *(v12 + 124);
            if (v63 == 0x80000000 || v64)
            {
              v81 = v64 + 1;
              *(v12 + 124) = v81;
              if (v81 >= *(v12 + 120))
              {
                if (*(v12 + 112) == 1)
                {
                  this = MEMORY[0x19EB16320](*(v12 + 100));
                }

                *(v12 + 124) = 0;
              }
            }

            goto LABEL_93;
          }

          LODWORD(v27) = buf[16];
          if ((buf[16] & 1) == 0)
          {
            goto LABEL_1174;
          }

          IPC::StreamClientConnection::sendProcessOutOfStreamMessage(v12, *buf, *&buf[8]);
          this = IPC::Connection::send<Messages::RemoteDisplayListRecorder::SetFillPackedColor>(*(v12 + 8), &v766, v2);
          if (!this)
          {
            goto LABEL_93;
          }
        }

        goto LABEL_966;
      }
    }

    v135 = WebCore::SourceBrush::pattern((v5 - 696));
    if (!v135)
    {
      this = WebCore::SourceBrush::gradient((v5 - 696));
      if (!this)
      {
        v766 = (v5 - 696);
        v12 = *(v4 + 3512);
        if (v12)
        {
          atomic_fetch_add(v12, 1u);
        }

        else
        {
          v683 = *(v4 + 3520);
          if (!v683)
          {
            goto LABEL_4;
          }

          v2 = *(v683 + 8);
          if (!v2)
          {
            goto LABEL_4;
          }

          ++*(v2 + 20);
          v684 = WebKit::RemoteRenderingBackendProxy::connection(v2, a2, buf);
          v12 = *buf;
          if (*(v2 + 20) == 1)
          {
            this = (*(*v2 + 24))(v2, v684);
          }

          else
          {
            --*(v2 + 20);
          }

          if (!v12)
          {
            goto LABEL_4;
          }

          WTF::RefPtr<IPC::StreamClientConnection,WTF::RawPtrTraits<IPC::StreamClientConnection>,WTF::DefaultRefDerefTraits<IPC::StreamClientConnection>>::operator=((v4 + 3512), v12);
        }

        if ((*(v4 + 3584) & 1) == 0)
        {
          v632 = *(v4 + 3544);
          if (v632)
          {
            WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteImageBufferProxy>(v632, *(v4 + 3536), buf);
            if (*buf)
            {
              WebKit::RemoteImageBufferProxy::backingStoreWillChange(*buf, v750);
              v752 = *buf;
              *buf = 0;
              if (v752)
              {
                WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::ImageBuffer,(WTF::DestructionThread)0>::deref((v752 + 8), v751);
              }
            }
          }

          *(v4 + 3584) = 1;
        }

        this = IPC::StreamClientConnection::send<Messages::RemoteDisplayListRecorder::SetFillColor,WebKit::RemoteDisplayListRecorderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v12, &v766, *(v4 + 3504));
        if (!this)
        {
          goto LABEL_93;
        }

        v2 = qword_1ED6410D0;
        if (!os_log_type_enabled(qword_1ED6410D0, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_969;
        }

        v588 = IPC::errorAsString();
        *buf = 136446466;
        v589 = "RemoteDisplayListRecorder_SetFillColor";
        goto LABEL_968;
      }

      v12 = this;
      while (1)
      {
        v136 = this[1];
        if ((v136 & 1) == 0)
        {
          break;
        }

        v137 = this[1];
        atomic_compare_exchange_strong_explicit(this + 1, &v137, (v136 + 2), memory_order_relaxed, memory_order_relaxed);
        if (v137 == v136)
        {
          goto LABEL_199;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(this[1]);
LABEL_199:
      if (*(v12 + 40) == 1)
      {
        WebKit::RemoteDisplayListRecorderProxy::recordResourceUse(*(v4 + 3520), v12);
        LODWORD(v27) = *(v12 + 40);
        if ((v27 & 1) == 0)
        {
          goto LABEL_1174;
        }

        v138 = *(v12 + 32);
        this = WebCore::SourceBrush::gradientSpaceTransform((v5 - 696));
        v139 = this;
        v2 = *(v4 + 3512);
        if (v2)
        {
          atomic_fetch_add(v2, 1u);
        }

        else
        {
          v435 = *(v4 + 3520);
          if (!v435)
          {
            goto LABEL_225;
          }

          v436 = *(v435 + 8);
          if (!v436)
          {
            goto LABEL_225;
          }

          ++*(v436 + 5);
          v437 = WebKit::RemoteRenderingBackendProxy::connection(v436, a2, buf);
          v2 = *buf;
          if (*(v436 + 5) == 1)
          {
            this = (*(*v436 + 24))(v436, v437);
          }

          else
          {
            --*(v436 + 5);
          }

          if (!v2)
          {
            goto LABEL_225;
          }

          this = WTF::RefPtr<IPC::StreamClientConnection,WTF::RawPtrTraits<IPC::StreamClientConnection>,WTF::DefaultRefDerefTraits<IPC::StreamClientConnection>>::operator=((v4 + 3512), v2);
        }

        if ((*(v4 + 3584) & 1) == 0)
        {
          this = *(v4 + 3544);
          if (this)
          {
            WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteImageBufferProxy>(this, *(v4 + 3536), buf);
            this = *buf;
            if (*buf)
            {
              this = WebKit::RemoteImageBufferProxy::backingStoreWillChange(*buf, v696);
              v698 = *buf;
              *buf = 0;
              if (v698)
              {
                this = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::ImageBuffer,(WTF::DestructionThread)0>::deref((v698 + 8), v697);
              }
            }
          }

          *(v4 + 3584) = 1;
        }

        v140 = *(v4 + 3504);
        v141 = *(v2 + 128);
        v142 = INFINITY;
        if (fabs(v141) != INFINITY)
        {
          WTF::ApproximateTime::now(this);
          v142 = v141 + v143;
        }

        if (*(v2 + 64) != v140)
        {
          IPC::StreamClientConnectionBuffer::tryAcquire(v2 + 72, buf, v142);
          if (buf[16] != 1)
          {
            goto LABEL_970;
          }

          v258 = *&buf[8];
          if (*&buf[8] <= 1uLL)
          {
            __break(0xC471u);
            JUMPOUT(0x19E1B1F9CLL);
          }

          v259 = *buf;
          **buf = 3198;
          v260 = v259 + 2;
          if (v258 - 2 < (-v260 & 7 | 8uLL))
          {
            goto LABEL_970;
          }

          v261 = -v260 & 7;
          *(v260 + v261) = v140;
          v262 = 6;
          if (v261 > 6)
          {
            v262 = v261;
          }

          v263 = v262 + 10;
          v264 = (*(v2 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
          v265 = *(v2 + 72);
          if (v264 + 16 >= v265)
          {
            v264 = 0;
          }

          v27 = v263 + v264;
          if (v265 <= v27)
          {
            v27 = 0;
          }

          *(v2 + 88) = v27;
          v266 = *(v2 + 80);
          if (*(v266 + 8) <= 0xFFuLL)
          {
            goto LABEL_1174;
          }

          v267 = atomic_exchange((*(v266 + 16) + 128), v27);
          v268 = *(v2 + 124);
          if (v267 == 0x80000000 || v268)
          {
            v342 = v268 + 1;
            *(v2 + 124) = v342;
            if (v342 >= *(v2 + 120))
            {
              if (*(v2 + 112) == 1)
              {
                MEMORY[0x19EB16320](*(v2 + 100));
              }

              *(v2 + 124) = 0;
            }
          }

          *(v2 + 64) = v140;
        }

        this = IPC::StreamClientConnectionBuffer::tryAcquire(v2 + 72, buf, v142);
        if (buf[16])
        {
          v144 = *&buf[8];
          if (*&buf[8] <= 1uLL)
          {
            __break(0xC471u);
            JUMPOUT(0x19E1B1860);
          }

          v145 = *buf;
          **buf = 1107;
          v146 = v145 + 2;
          v147 = -v146 & 7 | 8;
          v148 = v144 - 2 - v147;
          if (v144 - 2 >= v147)
          {
            *(v146 + (-v146 & 7)) = v138;
            v149 = v146 + v147;
            v150 = -v149 & 7 | 0x30;
            if (v148 >= v150)
            {
              v151 = (v149 + (-v149 & 7));
              v152 = *v139;
              v153 = v139[2];
              v151[1] = v139[1];
              v151[2] = v153;
              *v151 = v152;
              v154 = v144 - v148 + v150;
              if (v154 <= 0x10)
              {
                v154 = 16;
              }

              v155 = (*(v2 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
              v156 = *(v2 + 72);
              if (v155 + 16 >= v156)
              {
                v155 = 0;
              }

              v27 = v155 + v154;
              if (v156 <= v27)
              {
                v27 = 0;
              }

              *(v2 + 88) = v27;
              v157 = *(v2 + 80);
              if (*(v157 + 8) <= 0xFFuLL)
              {
                goto LABEL_1174;
              }

              v158 = atomic_exchange((*(v157 + 16) + 128), v27);
              v159 = *(v2 + 124);
              if (v158 == 0x80000000 || v159 != 0)
              {
                v163 = v159 + 1;
                *(v2 + 124) = v163;
                if (v163 >= *(v2 + 120))
                {
                  if (*(v2 + 112) == 1)
                  {
                    this = MEMORY[0x19EB16320](*(v2 + 100));
                  }

                  *(v2 + 124) = 0;
                }
              }

LABEL_223:
              if (atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
              {
                atomic_store(1u, v2);
                IPC::StreamClientConnection::operator delete(v2);
              }

              do
              {
LABEL_225:
                v161 = *(v12 + 8);
                if ((v161 & 1) == 0)
                {
                  this = WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebCore::RenderingResource,(WTF::DestructionThread)0>(*(v12 + 8), a2);
                  goto LABEL_4;
                }

                v162 = *(v12 + 8);
                atomic_compare_exchange_strong_explicit((v12 + 8), &v162, v161 - 2, memory_order_relaxed, memory_order_relaxed);
              }

              while (v162 != v161);
              if (v161 == 3)
              {
                this = (*(*v12 + 8))(v12);
              }

              goto LABEL_4;
            }
          }

          LODWORD(v27) = buf[16];
          if ((buf[16] & 1) == 0)
          {
            goto LABEL_1174;
          }

          if (*&buf[8] <= 1uLL)
          {
            __break(0xC471u);
            JUMPOUT(0x19E1B276CLL);
          }

          **buf = 3197;
          v461 = (*(v2 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
          v462 = *(v2 + 72);
          if (v461 + 16 >= v462)
          {
            v461 = 0;
          }

          v463 = v461 + 16;
          v27 = v462 <= v463 ? 0 : v463;
          *(v2 + 88) = v27;
          v464 = *(v2 + 80);
          if (*(v464 + 8) <= 0xFFuLL)
          {
            goto LABEL_1174;
          }

          atomic_exchange((*(v464 + 16) + 128), v27);
          *(v2 + 124) = 0;
          v759 = *(v2 + 8);
          v465 = IPC::Encoder::operator new(0x238, a2);
          *v465 = 1107;
          *(v465 + 2) = 0;
          *(v465 + 3) = 0;
          *(v465 + 1) = v140;
          *(v465 + 68) = 0;
          *(v465 + 70) = 0;
          *(v465 + 69) = 0;
          v466 = v465;
          IPC::Encoder::encodeHeader(v465);
          v766 = v466;
          IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v466, v138);
          IPC::ArgumentCoder<std::span<double const,6ul>,void>::encode<IPC::Encoder>(v466, v139);
          v467 = IPC::Connection::sendMessageImpl(v759, &v766, 1, 0);
          this = v766;
          v766 = 0;
          if (this)
          {
            IPC::Encoder::~Encoder(this, a2);
            this = bmalloc::api::tzoneFree(v562, v563);
          }

          if (!v467)
          {
            goto LABEL_223;
          }
        }

LABEL_970:
        v590 = qword_1ED6410D0;
        if (os_log_type_enabled(qword_1ED6410D0, OS_LOG_TYPE_DEFAULT))
        {
          v591 = IPC::errorAsString();
          *buf = 136446466;
          *&buf[4] = "RemoteDisplayListRecorder_SetFillCachedGradient";
          *&buf[12] = 2082;
          *&buf[14] = v591;
          _os_log_impl(&dword_19D52D000, v590, OS_LOG_TYPE_DEFAULT, "RemoteDisplayListRecorderProxy::send - failed, name:%{public}s, error:%{public}s", buf, 0x16u);
        }

        this = WebKit::RemoteDisplayListRecorderProxy::didBecomeUnresponsive(*(v4 + 3520));
        goto LABEL_223;
      }

      while (1)
      {
        v164 = *(v12 + 8);
        if ((v164 & 1) == 0)
        {
          break;
        }

        v165 = *(v12 + 8);
        atomic_compare_exchange_strong_explicit((v12 + 8), &v165, v164 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v165 == v164)
        {
          goto LABEL_235;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*(v12 + 8));
LABEL_235:
      v762 = v12;
      v166 = WebCore::SourceBrush::gradientSpaceTransform((v5 - 696));
      v763 = &v762;
      v764 = v166;
      v2 = *(v4 + 3512);
      if (v2)
      {
        atomic_fetch_add(v2, 1u);
      }

      else
      {
        v629 = *(v4 + 3520);
        if (!v629)
        {
          goto LABEL_255;
        }

        v630 = *(v629 + 8);
        if (!v630)
        {
          goto LABEL_255;
        }

        ++*(v630 + 5);
        v631 = WebKit::RemoteRenderingBackendProxy::connection(v630, v167, buf);
        v2 = *buf;
        if (*(v630 + 5) == 1)
        {
          (*(*v630 + 24))(v630, v631);
        }

        else
        {
          --*(v630 + 5);
        }

        if (!v2)
        {
LABEL_255:
          this = WTF::Ref<WebCore::Gradient,WTF::RawPtrTraits<WebCore::Gradient>,WTF::DefaultRefDerefTraits<WebCore::Gradient>>::~Ref(&v762, v167);
          goto LABEL_225;
        }

        v166 = WTF::RefPtr<IPC::StreamClientConnection,WTF::RawPtrTraits<IPC::StreamClientConnection>,WTF::DefaultRefDerefTraits<IPC::StreamClientConnection>>::operator=((v4 + 3512), v2);
      }

      if ((*(v4 + 3584) & 1) == 0)
      {
        v166 = *(v4 + 3544);
        if (v166)
        {
          WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteImageBufferProxy>(v166, *(v4 + 3536), buf);
          v166 = *buf;
          if (*buf)
          {
            v166 = WebKit::RemoteImageBufferProxy::backingStoreWillChange(*buf, v693);
            v695 = *buf;
            *buf = 0;
            if (v695)
            {
              v166 = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::ImageBuffer,(WTF::DestructionThread)0>::deref((v695 + 8), v694);
            }
          }
        }

        *(v4 + 3584) = 1;
      }

      v168 = *(v4 + 3504);
      v169 = *(v2 + 128);
      v170 = INFINITY;
      if (fabs(v169) != INFINITY)
      {
        WTF::ApproximateTime::now(v166);
        v170 = v169 + v171;
      }

      if (*(v2 + 64) != v168)
      {
        IPC::StreamClientConnectionBuffer::tryAcquire(v2 + 72, buf, v170);
        if (buf[16] != 1)
        {
          goto LABEL_990;
        }

        v468 = *&buf[8];
        if (*&buf[8] <= 1uLL)
        {
          __break(0xC471u);
          JUMPOUT(0x19E1B278CLL);
        }

        v469 = *buf;
        **buf = 3198;
        v470 = v469 + 2;
        if (v468 - 2 < (-v470 & 7 | 8uLL))
        {
          goto LABEL_990;
        }

        v471 = -v470 & 7;
        *(v470 + v471) = v168;
        v472 = 6;
        if (v471 > 6)
        {
          v472 = v471;
        }

        v473 = v472 + 10;
        v474 = (*(v2 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
        v475 = *(v2 + 72);
        if (v474 + 16 >= v475)
        {
          v474 = 0;
        }

        v27 = v473 + v474;
        if (v475 <= v27)
        {
          v27 = 0;
        }

        *(v2 + 88) = v27;
        v476 = *(v2 + 80);
        if (*(v476 + 8) <= 0xFFuLL)
        {
          goto LABEL_1174;
        }

        v477 = atomic_exchange((*(v476 + 16) + 128), v27);
        v478 = *(v2 + 124);
        if (v477 == 0x80000000 || v478 != 0)
        {
          v546 = v478 + 1;
          *(v2 + 124) = v546;
          if (v546 >= *(v2 + 120))
          {
            if (*(v2 + 112) == 1)
            {
              MEMORY[0x19EB16320](*(v2 + 100));
            }

            *(v2 + 124) = 0;
          }
        }

        *(v2 + 64) = v168;
      }

      IPC::StreamClientConnectionBuffer::tryAcquire(v2 + 72, &v766, v170);
      if (v768)
      {
        v172 = v766;
        v173 = v767;
        *&buf[16] = v767;
        if (v767 <= 1)
        {
          __break(0xC471u);
          JUMPOUT(0x19E1B1FDCLL);
        }

        *v766 = 1109;
        *buf = v172 + 2;
        *&buf[8] = v173 - 2;
        IPC::ArgumentCoder<WebCore::Gradient,void>::encode(buf, *v763);
        v174 = *buf;
        v175 = -*buf & 7 | 0x30;
        v176 = *&buf[8] - v175;
        if (*&buf[8] >= v175)
        {
          v177 = (*buf + (-*buf & 7));
          v178 = *(v764 + 2);
          v179 = *v764;
          v177[1] = *(v764 + 1);
          v177[2] = v178;
          *v177 = v179;
          *buf = v174 + v175;
          *&buf[8] = v176;
          v180 = *&buf[16] - v176;
          if (*&buf[16] - v176 <= 0x10)
          {
            v180 = 16;
          }

          v181 = (*(v2 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
          v182 = *(v2 + 72);
          if (v181 + 16 >= v182)
          {
            v181 = 0;
          }

          v27 = v181 + v180;
          if (v182 <= v27)
          {
            v27 = 0;
          }

          *(v2 + 88) = v27;
          v183 = *(v2 + 80);
          if (*(v183 + 8) <= 0xFFuLL)
          {
            goto LABEL_1174;
          }

          v184 = atomic_exchange((*(v183 + 16) + 128), v27);
          v185 = *(v2 + 124);
          if (v184 == 0x80000000 || v185)
          {
            v373 = v185 + 1;
            *(v2 + 124) = v373;
            if (v373 >= *(v2 + 120))
            {
              if (*(v2 + 112) == 1)
              {
                MEMORY[0x19EB16320](*(v2 + 100));
              }

              *(v2 + 124) = 0;
            }
          }

          goto LABEL_253;
        }

        LODWORD(v27) = v768;
        if ((v768 & 1) == 0)
        {
          goto LABEL_1174;
        }

        IPC::StreamClientConnection::sendProcessOutOfStreamMessage(v2, v766, v767);
        if (!IPC::Connection::send<Messages::RemoteDisplayListRecorder::SetFillGradient>(*(v2 + 8), &v763, v168))
        {
          goto LABEL_253;
        }
      }

LABEL_990:
      v601 = qword_1ED6410D0;
      if (os_log_type_enabled(qword_1ED6410D0, OS_LOG_TYPE_DEFAULT))
      {
        v602 = IPC::errorAsString();
        *buf = 136446466;
        *&buf[4] = "RemoteDisplayListRecorder_SetFillGradient";
        *&buf[12] = 2082;
        *&buf[14] = v602;
        _os_log_impl(&dword_19D52D000, v601, OS_LOG_TYPE_DEFAULT, "RemoteDisplayListRecorderProxy::send - failed, name:%{public}s, error:%{public}s", buf, 0x16u);
      }

      WebKit::RemoteDisplayListRecorderProxy::didBecomeUnresponsive(*(v4 + 3520));
LABEL_253:
      if (atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v2);
        IPC::StreamClientConnection::operator delete(v2);
      }

      goto LABEL_255;
    }

    v594 = v135;
    atomic_fetch_add(v135, 1u);
    v595 = WebCore::Pattern::tileImage(v135);
    WebKit::RemoteDisplayListRecorderProxy::recordResourceUse(v4, v595);
    v596 = WebCore::Pattern::tileImage(v594);
    v763 = WebCore::SourceImage::imageIdentifier(v596);
    v766 = &v763;
    v767 = v594 + 48;
    v2 = *(v4 + 3512);
    if (v2)
    {
      atomic_fetch_add(v2, 1u);
    }

    else
    {
      v669 = *(v4 + 3520);
      if (!v669)
      {
        goto LABEL_986;
      }

      v670 = *(v669 + 8);
      if (!v670)
      {
        goto LABEL_986;
      }

      ++*(v670 + 5);
      v671 = WebKit::RemoteRenderingBackendProxy::connection(v670, v597, buf);
      v2 = *buf;
      if (*(v670 + 5) == 1)
      {
        (*(*v670 + 24))(v670, v671);
      }

      else
      {
        --*(v670 + 5);
      }

      if (!v2)
      {
LABEL_986:
        this = WTF::ThreadSafeRefCounted<WebCore::Pattern,(WTF::DestructionThread)0>::deref(v594);
        goto LABEL_4;
      }

      WTF::RefPtr<IPC::StreamClientConnection,WTF::RawPtrTraits<IPC::StreamClientConnection>,WTF::DefaultRefDerefTraits<IPC::StreamClientConnection>>::operator=((v4 + 3512), v2);
    }

    if ((*(v4 + 3584) & 1) == 0)
    {
      v598 = *(v4 + 3544);
      if (v598)
      {
        WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteImageBufferProxy>(v598, *(v4 + 3536), buf);
        if (*buf)
        {
          WebKit::RemoteImageBufferProxy::backingStoreWillChange(*buf, v735);
          v737 = *buf;
          *buf = 0;
          if (v737)
          {
            WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::ImageBuffer,(WTF::DestructionThread)0>::deref((v737 + 8), v736);
          }
        }
      }

      *(v4 + 3584) = 1;
    }

    if (IPC::StreamClientConnection::send<Messages::RemoteDisplayListRecorder::SetFillPattern,WebKit::RemoteDisplayListRecorderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v2, &v766, *(v4 + 3504)))
    {
      v658 = qword_1ED6410D0;
      if (os_log_type_enabled(qword_1ED6410D0, OS_LOG_TYPE_DEFAULT))
      {
        v659 = IPC::errorAsString();
        *buf = 136446466;
        *&buf[4] = "RemoteDisplayListRecorder_SetFillPattern";
        *&buf[12] = 2082;
        *&buf[14] = v659;
        _os_log_impl(&dword_19D52D000, v658, OS_LOG_TYPE_DEFAULT, "RemoteDisplayListRecorderProxy::send - failed, name:%{public}s, error:%{public}s", buf, 0x16u);
      }

      WebKit::RemoteDisplayListRecorderProxy::didBecomeUnresponsive(*(v4 + 3520));
    }

    if (atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v2);
      IPC::StreamClientConnection::operator delete(v2);
    }

    goto LABEL_986;
  }

LABEL_4:
  if ((v6 & 4) == 0)
  {
    goto LABEL_32;
  }

  v2 = v5 - 624;
  if (*(v5 - 560))
  {
    BYTE4(v763) = 0;
    LODWORD(v763) = 0;
  }

  else
  {
    v8 = *v2;
    v9 = *v2 & 0x8000000000000;
    if (v9)
    {
      v8 = 0;
    }

    LODWORD(v763) = v8 | (v9 >> 19);
    v10 = (v9 >> 51) ^ 1;
    BYTE4(v763) = v10;
    if (v10)
    {
      v2 = v4 + 3512;
      if ((v6 & 8) != 0)
      {
        v11 = *(v5 - 548);
        v12 = *v2;
        if (*v2)
        {
          atomic_fetch_add(v12, 1u);
        }

        else
        {
          v389 = *(v4 + 3520);
          if (!v389 || (v390 = *(v389 + 8)) == 0 || ((++*(v390 + 5), v391 = WebKit::RemoteRenderingBackendProxy::connection(v390, a2, buf), v12 = *buf, *(v390 + 5) == 1) ? (this = (*(*v390 + 24))(v390, v391)) : --*(v390 + 5), !v12))
          {
LABEL_31:
            LOWORD(v6) = v6 & 0xFFF7;
            goto LABEL_32;
          }

          this = WTF::RefPtr<IPC::StreamClientConnection,WTF::RawPtrTraits<IPC::StreamClientConnection>,WTF::DefaultRefDerefTraits<IPC::StreamClientConnection>>::operator=((v4 + 3512), v12);
        }

        if ((*(v4 + 3584) & 1) == 0)
        {
          this = *(v4 + 3544);
          if (this)
          {
            WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteImageBufferProxy>(this, *(v4 + 3536), buf);
            this = *buf;
            if (*buf)
            {
              this = WebKit::RemoteImageBufferProxy::backingStoreWillChange(*buf, v729);
              v731 = *buf;
              *buf = 0;
              if (v731)
              {
                this = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::ImageBuffer,(WTF::DestructionThread)0>::deref((v731 + 8), v730);
              }
            }
          }

          *(v4 + 3584) = 1;
        }

        v13 = *(v4 + 3504);
        v14 = *(v12 + 128);
        v15 = INFINITY;
        if (fabs(v14) != INFINITY)
        {
          WTF::ApproximateTime::now(this);
          v15 = v14 + v16;
        }

        if (*(v12 + 64) != v13)
        {
          IPC::StreamClientConnectionBuffer::tryAcquire(v12 + 72, buf, v15);
          if (buf[16] != 1)
          {
            goto LABEL_958;
          }

          v186 = *&buf[8];
          if (*&buf[8] <= 1uLL)
          {
            __break(0xC471u);
            JUMPOUT(0x19E1B1DE4);
          }

          v187 = *buf;
          **buf = 3198;
          v188 = v187 + 2;
          if (v186 - 2 < (-v188 & 7 | 8uLL))
          {
            v2 = 18;
            goto LABEL_959;
          }

          v189 = -v188 & 7;
          *(v188 + v189) = v13;
          v190 = 6;
          if (v189 > 6)
          {
            v190 = v189;
          }

          v191 = v190 + 10;
          v192 = (*(v12 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
          v193 = *(v12 + 72);
          if (v192 + 16 >= v193)
          {
            v192 = 0;
          }

          v27 = v191 + v192;
          if (v193 <= v27)
          {
            v27 = 0;
          }

          *(v12 + 88) = v27;
          v194 = *(v12 + 80);
          if (*(v194 + 8) <= 0xFFuLL)
          {
            goto LABEL_1174;
          }

          v195 = atomic_exchange((*(v194 + 16) + 128), v27);
          v196 = *(v12 + 124);
          if (v195 == 0x80000000 || v196)
          {
            v220 = v196 + 1;
            *(v12 + 124) = v220;
            if (v220 >= *(v12 + 120))
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

        this = IPC::StreamClientConnectionBuffer::tryAcquire(v12 + 72, buf, v15);
        if (buf[16])
        {
          v17 = *&buf[8];
          if (*&buf[8] <= 1uLL)
          {
            __break(0xC471u);
            JUMPOUT(0x19E1B1648);
          }

          v18 = *buf;
          **buf = 1128;
          v19 = v18 + 2;
          v20 = -v19 & 3 | 4;
          v21 = v17 - 2 - v20;
          if (v17 - 2 >= v20)
          {
            *(v19 + (-v19 & 3)) = v763;
            v22 = v19 + v20;
            v23 = -v22 & 3 | 4;
            if (v21 >= v23)
            {
              *(v22 + (-v22 & 3)) = v11;
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
              if (*(v28 + 8) <= 0xFFuLL)
              {
                goto LABEL_1174;
              }

              v29 = atomic_exchange((*(v28 + 16) + 128), v27);
              v30 = *(v12 + 124);
              if (v29 == 0x80000000 || v30)
              {
                v65 = v30 + 1;
                *(v12 + 124) = v65;
                if (v65 >= *(v12 + 120))
                {
                  if (*(v12 + 112) == 1)
                  {
                    this = MEMORY[0x19EB16320](*(v12 + 100));
                  }

                  *(v12 + 124) = 0;
                }
              }

              goto LABEL_29;
            }
          }

          LODWORD(v27) = buf[16];
          if ((buf[16] & 1) == 0)
          {
            goto LABEL_1174;
          }

          if (*&buf[8] <= 1uLL)
          {
            __break(0xC471u);
            JUMPOUT(0x19E1B24ECLL);
          }

          **buf = 3197;
          v393 = (*(v12 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
          v394 = *(v12 + 72);
          if (v393 + 16 >= v394)
          {
            v393 = 0;
          }

          v395 = v393 + 16;
          v27 = v394 <= v395 ? 0 : v395;
          *(v12 + 88) = v27;
          v396 = *(v12 + 80);
          if (*(v396 + 8) <= 0xFFuLL)
          {
            goto LABEL_1174;
          }

          atomic_exchange((*(v396 + 16) + 128), v27);
          *(v12 + 124) = 0;
          v397 = *(v12 + 8);
          v398 = IPC::Encoder::operator new(0x238, a2);
          *v398 = 1128;
          *(v398 + 2) = 0;
          *(v398 + 3) = 0;
          *(v398 + 1) = v13;
          *(v398 + 68) = 0;
          *(v398 + 70) = 0;
          *(v398 + 69) = 0;
          IPC::Encoder::encodeHeader(v398);
          v766 = v398;
          IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v398, v763);
          IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(v398, v11);
          v2 = IPC::Connection::sendMessageImpl(v397, &v766, 1, 0);
          this = v766;
          v766 = 0;
          if (this)
          {
            IPC::Encoder::~Encoder(this, a2);
            this = bmalloc::api::tzoneFree(v450, v451);
          }

          if (!v2)
          {
LABEL_29:
            if (atomic_fetch_add(v12, 0xFFFFFFFF) == 1)
            {
              atomic_store(1u, v12);
              IPC::StreamClientConnection::operator delete(v12);
            }

            goto LABEL_31;
          }

LABEL_959:
          v584 = qword_1ED6410D0;
          if (os_log_type_enabled(qword_1ED6410D0, OS_LOG_TYPE_DEFAULT))
          {
            v585 = IPC::errorAsString();
            *buf = 136446466;
            *&buf[4] = "RemoteDisplayListRecorder_SetStrokePackedColorAndThickness";
            *&buf[12] = 2082;
            *&buf[14] = v585;
            _os_log_impl(&dword_19D52D000, v584, OS_LOG_TYPE_DEFAULT, "RemoteDisplayListRecorderProxy::send - failed, name:%{public}s, error:%{public}s", buf, 0x16u);
          }

          this = WebKit::RemoteDisplayListRecorderProxy::didBecomeUnresponsive(*(v4 + 3520));
          goto LABEL_29;
        }

LABEL_958:
        v2 = 16;
        goto LABEL_959;
      }

      v766 = &v763;
      v12 = *v2;
      if (*v2)
      {
        atomic_fetch_add(v12, 1u);
      }

      else
      {
        v622 = *(v4 + 3520);
        if (!v622)
        {
          goto LABEL_32;
        }

        v623 = *(v622 + 8);
        if (!v623)
        {
          goto LABEL_32;
        }

        ++*(v623 + 5);
        v624 = WebKit::RemoteRenderingBackendProxy::connection(v623, a2, buf);
        v12 = *buf;
        if (*(v623 + 5) == 1)
        {
          this = (*(*v623 + 24))(v623, v624);
        }

        else
        {
          --*(v623 + 5);
        }

        if (!v12)
        {
          goto LABEL_32;
        }

        this = WTF::RefPtr<IPC::StreamClientConnection,WTF::RawPtrTraits<IPC::StreamClientConnection>,WTF::DefaultRefDerefTraits<IPC::StreamClientConnection>>::operator=((v4 + 3512), v12);
      }

      if ((*(v4 + 3584) & 1) == 0)
      {
        this = *(v4 + 3544);
        if (this)
        {
          WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteImageBufferProxy>(this, *(v4 + 3536), buf);
          this = *buf;
          if (*buf)
          {
            this = WebKit::RemoteImageBufferProxy::backingStoreWillChange(*buf, v732);
            v734 = *buf;
            *buf = 0;
            if (v734)
            {
              this = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::ImageBuffer,(WTF::DestructionThread)0>::deref((v734 + 8), v733);
            }
          }
        }

        *(v4 + 3584) = 1;
      }

      v2 = *(v4 + 3504);
      v245 = *(v12 + 128);
      v246 = INFINITY;
      if (fabs(v245) != INFINITY)
      {
        WTF::ApproximateTime::now(this);
        v246 = v245 + v247;
      }

      if (*(v12 + 64) != v2)
      {
        IPC::StreamClientConnectionBuffer::tryAcquire(v12 + 72, buf, v246);
        if (buf[16] != 1)
        {
          goto LABEL_1074;
        }

        v439 = *&buf[8];
        if (*&buf[8] <= 1uLL)
        {
          __break(0xC471u);
          JUMPOUT(0x19E1B272CLL);
        }

        v440 = *buf;
        **buf = 3198;
        v441 = v440 + 2;
        if (v439 - 2 < (-v441 & 7 | 8uLL))
        {
LABEL_1074:
          v2 = qword_1ED6410D0;
          if (!os_log_type_enabled(qword_1ED6410D0, OS_LOG_TYPE_DEFAULT))
          {
LABEL_1077:
            this = WebKit::RemoteDisplayListRecorderProxy::didBecomeUnresponsive(*(v4 + 3520));
LABEL_368:
            if (atomic_fetch_add(v12, 0xFFFFFFFF) == 1)
            {
              atomic_store(1u, v12);
              IPC::StreamClientConnection::operator delete(v12);
            }

            goto LABEL_32;
          }

          v620 = IPC::errorAsString();
          *buf = 136446466;
          v621 = "RemoteDisplayListRecorder_SetStrokePackedColor";
LABEL_1076:
          *&buf[4] = v621;
          *&buf[12] = 2082;
          *&buf[14] = v620;
          _os_log_impl(&dword_19D52D000, v2, OS_LOG_TYPE_DEFAULT, "RemoteDisplayListRecorderProxy::send - failed, name:%{public}s, error:%{public}s", buf, 0x16u);
          goto LABEL_1077;
        }

        v442 = -v441 & 7;
        *(v441 + v442) = v2;
        v443 = 6;
        if (v442 > 6)
        {
          v443 = v442;
        }

        v444 = v443 + 10;
        v445 = (*(v12 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
        v446 = *(v12 + 72);
        if (v445 + 16 >= v446)
        {
          v445 = 0;
        }

        v27 = v444 + v445;
        if (v446 <= v27)
        {
          v27 = 0;
        }

        *(v12 + 88) = v27;
        v447 = *(v12 + 80);
        if (*(v447 + 8) <= 0xFFuLL)
        {
          goto LABEL_1174;
        }

        v448 = atomic_exchange((*(v447 + 16) + 128), v27);
        v449 = *(v12 + 124);
        if (v448 == 0x80000000 || v449)
        {
          v539 = v449 + 1;
          *(v12 + 124) = v539;
          if (v539 >= *(v12 + 120))
          {
            if (*(v12 + 112) == 1)
            {
              MEMORY[0x19EB16320](*(v12 + 100));
            }

            *(v12 + 124) = 0;
          }
        }

        *(v12 + 64) = v2;
      }

      this = IPC::StreamClientConnectionBuffer::tryAcquire(v12 + 72, buf, v246);
      if (buf[16])
      {
        v248 = *&buf[8];
        if (*&buf[8] <= 1uLL)
        {
          __break(0xC471u);
          JUMPOUT(0x19E1B1F7CLL);
        }

        v249 = *buf;
        **buf = 1127;
        v250 = v249 + 2;
        if (v248 - 2 >= (-v250 & 3 | 4uLL))
        {
          *(v250 + (-v250 & 3)) = *v766;
          v251 = (*(v12 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
          v252 = *(v12 + 72);
          if (v251 + 16 >= v252)
          {
            v251 = 0;
          }

          v253 = v251 + 16;
          if (v252 <= v253)
          {
            v27 = 0;
          }

          else
          {
            v27 = v253;
          }

          *(v12 + 88) = v27;
          v254 = *(v12 + 80);
          if (*(v254 + 8) <= 0xFFuLL)
          {
            goto LABEL_1174;
          }

          v255 = atomic_exchange((*(v254 + 16) + 128), v27);
          v256 = *(v12 + 124);
          if (v255 == 0x80000000 || v256 != 0)
          {
            v341 = v256 + 1;
            *(v12 + 124) = v341;
            if (v341 >= *(v12 + 120))
            {
              if (*(v12 + 112) == 1)
              {
                this = MEMORY[0x19EB16320](*(v12 + 100));
              }

              *(v12 + 124) = 0;
            }
          }

          goto LABEL_368;
        }

        LODWORD(v27) = buf[16];
        if ((buf[16] & 1) == 0)
        {
          goto LABEL_1174;
        }

        IPC::StreamClientConnection::sendProcessOutOfStreamMessage(v12, *buf, *&buf[8]);
        this = IPC::Connection::send<Messages::RemoteDisplayListRecorder::SetStrokePackedColor>(*(v12 + 8), &v766, v2);
        if (!this)
        {
          goto LABEL_368;
        }
      }

      goto LABEL_1074;
    }
  }

  v82 = WebCore::SourceBrush::pattern((v5 - 624));
  if (v82)
  {
    v12 = v82;
    atomic_fetch_add(v82, 1u);
    v635 = WebCore::Pattern::tileImage(v82);
    WebKit::RemoteDisplayListRecorderProxy::recordResourceUse(v4, v635);
    v636 = WebCore::Pattern::tileImage(v12);
    v765 = WebCore::SourceImage::imageIdentifier(v636);
    v766 = &v765;
    v767 = v12 + 48;
    v2 = *(v4 + 3512);
    if (v2)
    {
      atomic_fetch_add(v2, 1u);
    }

    else
    {
      v685 = *(v4 + 3520);
      if (!v685)
      {
        goto LABEL_1117;
      }

      v686 = *(v685 + 8);
      if (!v686)
      {
        goto LABEL_1117;
      }

      ++*(v686 + 5);
      v687 = WebKit::RemoteRenderingBackendProxy::connection(v686, v637, buf);
      v2 = *buf;
      if (*(v686 + 5) == 1)
      {
        (*(*v686 + 24))(v686, v687);
      }

      else
      {
        --*(v686 + 5);
      }

      if (!v2)
      {
        goto LABEL_1117;
      }

      WTF::RefPtr<IPC::StreamClientConnection,WTF::RawPtrTraits<IPC::StreamClientConnection>,WTF::DefaultRefDerefTraits<IPC::StreamClientConnection>>::operator=((v4 + 3512), v2);
    }

    if ((*(v4 + 3584) & 1) == 0)
    {
      v638 = *(v4 + 3544);
      if (v638)
      {
        WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteImageBufferProxy>(v638, *(v4 + 3536), buf);
        if (*buf)
        {
          WebKit::RemoteImageBufferProxy::backingStoreWillChange(*buf, v753);
          v755 = *buf;
          *buf = 0;
          if (v755)
          {
            WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::ImageBuffer,(WTF::DestructionThread)0>::deref((v755 + 8), v754);
          }
        }
      }

      *(v4 + 3584) = 1;
    }

    if (IPC::StreamClientConnection::send<Messages::RemoteDisplayListRecorder::SetStrokePattern,WebKit::RemoteDisplayListRecorderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v2, &v766, *(v4 + 3504)))
    {
      v667 = qword_1ED6410D0;
      if (os_log_type_enabled(qword_1ED6410D0, OS_LOG_TYPE_DEFAULT))
      {
        v668 = IPC::errorAsString();
        *buf = 136446466;
        *&buf[4] = "RemoteDisplayListRecorder_SetStrokePattern";
        *&buf[12] = 2082;
        *&buf[14] = v668;
        _os_log_impl(&dword_19D52D000, v667, OS_LOG_TYPE_DEFAULT, "RemoteDisplayListRecorderProxy::send - failed, name:%{public}s, error:%{public}s", buf, 0x16u);
      }

      WebKit::RemoteDisplayListRecorderProxy::didBecomeUnresponsive(*(v4 + 3520));
    }

    LODWORD(v27) = atomic_fetch_add(v2, 0xFFFFFFFF);
    if (v27 == 1)
    {
      goto LABEL_1175;
    }

    goto LABEL_1117;
  }

  this = WebCore::SourceBrush::gradient((v5 - 624));
  if (!this)
  {
    v766 = (v5 - 624);
    v12 = *(v4 + 3512);
    if (v12)
    {
      atomic_fetch_add(v12, 1u);
    }

    else
    {
      v688 = *(v4 + 3520);
      if (!v688)
      {
        goto LABEL_32;
      }

      v2 = *(v688 + 8);
      if (!v2)
      {
        goto LABEL_32;
      }

      ++*(v2 + 20);
      v689 = WebKit::RemoteRenderingBackendProxy::connection(v2, a2, buf);
      v12 = *buf;
      if (*(v2 + 20) == 1)
      {
        this = (*(*v2 + 24))(v2, v689);
      }

      else
      {
        --*(v2 + 20);
      }

      if (!v12)
      {
        goto LABEL_32;
      }

      WTF::RefPtr<IPC::StreamClientConnection,WTF::RawPtrTraits<IPC::StreamClientConnection>,WTF::DefaultRefDerefTraits<IPC::StreamClientConnection>>::operator=((v4 + 3512), v12);
    }

    if ((*(v4 + 3584) & 1) == 0)
    {
      v655 = *(v4 + 3544);
      if (v655)
      {
        WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteImageBufferProxy>(v655, *(v4 + 3536), buf);
        if (*buf)
        {
          WebKit::RemoteImageBufferProxy::backingStoreWillChange(*buf, v756);
          v758 = *buf;
          *buf = 0;
          if (v758)
          {
            WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::ImageBuffer,(WTF::DestructionThread)0>::deref((v758 + 8), v757);
          }
        }
      }

      *(v4 + 3584) = 1;
    }

    this = IPC::StreamClientConnection::send<Messages::RemoteDisplayListRecorder::SetStrokeColor,WebKit::RemoteDisplayListRecorderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v12, &v766, *(v4 + 3504));
    if (!this)
    {
      goto LABEL_368;
    }

    v2 = qword_1ED6410D0;
    if (!os_log_type_enabled(qword_1ED6410D0, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_1077;
    }

    v620 = IPC::errorAsString();
    *buf = 136446466;
    v621 = "RemoteDisplayListRecorder_SetStrokeColor";
    goto LABEL_1076;
  }

  v12 = this;
  while (1)
  {
    v83 = this[1];
    if ((v83 & 1) == 0)
    {
      break;
    }

    v84 = this[1];
    atomic_compare_exchange_strong_explicit(this + 1, &v84, (v83 + 2), memory_order_relaxed, memory_order_relaxed);
    if (v84 == v83)
    {
      goto LABEL_132;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(this[1]);
LABEL_132:
  if (*(v12 + 40) != 1)
  {
    while (1)
    {
      v109 = *(v12 + 8);
      if ((v109 & 1) == 0)
      {
        break;
      }

      v110 = *(v12 + 8);
      atomic_compare_exchange_strong_explicit((v12 + 8), &v110, v109 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v110 == v109)
      {
        goto LABEL_163;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*(v12 + 8));
LABEL_163:
    v765 = v12;
    v111 = WebCore::SourceBrush::gradientSpaceTransform((v5 - 624));
    v113 = v111;
    v2 = *(v4 + 3512);
    if (v2)
    {
      atomic_fetch_add(v2, 1u);
    }

    else
    {
      v540 = *(v4 + 3520);
      if (!v540)
      {
        goto LABEL_541;
      }

      v541 = *(v540 + 8);
      if (!v541)
      {
        goto LABEL_541;
      }

      ++*(v541 + 5);
      v542 = WebKit::RemoteRenderingBackendProxy::connection(v541, v112, buf);
      v2 = *buf;
      if (*(v541 + 5) == 1)
      {
        (*(*v541 + 24))(v541, v542);
      }

      else
      {
        --*(v541 + 5);
      }

      if (!v2)
      {
LABEL_541:
        this = WTF::Ref<WebCore::Gradient,WTF::RawPtrTraits<WebCore::Gradient>,WTF::DefaultRefDerefTraits<WebCore::Gradient>>::~Ref(&v765, v112);
        goto LABEL_542;
      }

      v111 = WTF::RefPtr<IPC::StreamClientConnection,WTF::RawPtrTraits<IPC::StreamClientConnection>,WTF::DefaultRefDerefTraits<IPC::StreamClientConnection>>::operator=((v4 + 3512), v2);
    }

    if ((*(v4 + 3584) & 1) == 0)
    {
      v111 = *(v4 + 3544);
      if (v111)
      {
        WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteImageBufferProxy>(v111, *(v4 + 3536), buf);
        v111 = *buf;
        if (*buf)
        {
          v111 = WebKit::RemoteImageBufferProxy::backingStoreWillChange(*buf, v646);
          v648 = *buf;
          *buf = 0;
          if (v648)
          {
            v111 = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::ImageBuffer,(WTF::DestructionThread)0>::deref((v648 + 8), v647);
          }
        }
      }

      *(v4 + 3584) = 1;
    }

    v114 = *(v4 + 3504);
    v115 = *(v2 + 128);
    v116 = INFINITY;
    if (fabs(v115) != INFINITY)
    {
      WTF::ApproximateTime::now(v111);
      v116 = v115 + v117;
    }

    if (*(v2 + 64) != v114)
    {
      IPC::StreamClientConnectionBuffer::tryAcquire(v2 + 72, buf, v116);
      if (buf[16] != 1)
      {
        goto LABEL_536;
      }

      v343 = *&buf[8];
      if (*&buf[8] <= 1uLL)
      {
        __break(0xC471u);
        JUMPOUT(0x19E1B236CLL);
      }

      v344 = *buf;
      **buf = 3198;
      v345 = v344 + 2;
      if (v343 - 2 < (-v345 & 7 | 8uLL))
      {
        goto LABEL_536;
      }

      v346 = -v345 & 7;
      *(v345 + v346) = v114;
      v347 = 6;
      if (v346 > 6)
      {
        v347 = v346;
      }

      v348 = v347 + 10;
      v349 = (*(v2 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
      v350 = *(v2 + 72);
      if (v349 + 16 >= v350)
      {
        v349 = 0;
      }

      v27 = v348 + v349;
      if (v350 <= v27)
      {
        v27 = 0;
      }

      *(v2 + 88) = v27;
      v351 = *(v2 + 80);
      if (*(v351 + 8) <= 0xFFuLL)
      {
        goto LABEL_1174;
      }

      v352 = atomic_exchange((*(v351 + 16) + 128), v27);
      v353 = *(v2 + 124);
      if (v352 == 0x80000000 || v353 != 0)
      {
        v399 = v353 + 1;
        *(v2 + 124) = v399;
        if (v399 >= *(v2 + 120))
        {
          if (*(v2 + 112) == 1)
          {
            MEMORY[0x19EB16320](*(v2 + 100));
          }

          *(v2 + 124) = 0;
        }
      }

      *(v2 + 64) = v114;
    }

    IPC::StreamClientConnectionBuffer::tryAcquire(v2 + 72, &v766, v116);
    if (v768)
    {
      v118 = v766;
      v119 = v767;
      *&buf[16] = v767;
      if (v767 <= 1)
      {
        __break(0xC471u);
        JUMPOUT(0x19E1B1C04);
      }

      *v766 = 1126;
      *buf = v118 + 2;
      *&buf[8] = v119 - 2;
      IPC::ArgumentCoder<WebCore::Gradient,void>::encode(buf, v765);
      v120 = *buf;
      v121 = -*buf & 7 | 0x30;
      v122 = *&buf[8] - v121;
      if (*&buf[8] >= v121)
      {
        v123 = (*buf + (-*buf & 7));
        v124 = v113[2];
        v125 = *v113;
        v123[1] = v113[1];
        v123[2] = v124;
        *v123 = v125;
        *buf = v120 + v121;
        *&buf[8] = v122;
        v126 = *&buf[16] - v122;
        if (*&buf[16] - v122 <= 0x10)
        {
          v126 = 16;
        }

        v127 = (*(v2 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
        v128 = *(v2 + 72);
        if (v127 + 16 >= v128)
        {
          v127 = 0;
        }

        v27 = v127 + v126;
        if (v128 <= v27)
        {
          v27 = 0;
        }

        *(v2 + 88) = v27;
        v129 = *(v2 + 80);
        if (*(v129 + 8) <= 0xFFuLL)
        {
          goto LABEL_1174;
        }

        v130 = atomic_exchange((*(v129 + 16) + 128), v27);
        v131 = *(v2 + 124);
        if (v130 == 0x80000000 || v131 != 0)
        {
          v133 = v131 + 1;
          *(v2 + 124) = v133;
          if (v133 >= *(v2 + 120))
          {
            if (*(v2 + 112) == 1)
            {
              MEMORY[0x19EB16320](*(v2 + 100));
            }

            *(v2 + 124) = 0;
          }
        }

        goto LABEL_539;
      }

      LODWORD(v27) = v768;
      if ((v768 & 1) == 0)
      {
        goto LABEL_1174;
      }

      if (v767 <= 1)
      {
        __break(0xC471u);
        JUMPOUT(0x19E1B286CLL);
      }

      *v766 = 3197;
      v565 = (*(v2 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
      v566 = *(v2 + 72);
      if (v565 + 16 >= v566)
      {
        v565 = 0;
      }

      v567 = v565 + 16;
      v27 = v566 <= v567 ? 0 : v567;
      *(v2 + 88) = v27;
      v568 = *(v2 + 80);
      if (*(v568 + 8) <= 0xFFuLL)
      {
        goto LABEL_1174;
      }

      atomic_exchange((*(v568 + 16) + 128), v27);
      *(v2 + 124) = 0;
      v760 = *(v2 + 8);
      v569 = IPC::Encoder::operator new(0x238, v112);
      *v569 = 1126;
      *(v569 + 2) = 0;
      *(v569 + 3) = 0;
      *(v569 + 1) = v114;
      *(v569 + 68) = 0;
      *(v569 + 70) = 0;
      *(v569 + 69) = 0;
      IPC::Encoder::encodeHeader(v569);
      *buf = v569;
      IPC::ArgumentCoder<WebCore::Gradient,void>::encode(v569, v765);
      IPC::ArgumentCoder<std::span<double const,6ul>,void>::encode<IPC::Encoder>(v569, v113);
      v570 = IPC::Connection::sendMessageImpl(v760, buf, 1, 0);
      v571 = *buf;
      *buf = 0;
      if (v571)
      {
        IPC::Encoder::~Encoder(v571, v112);
        bmalloc::api::tzoneFree(v625, v626);
      }

      if (!v570)
      {
LABEL_539:
        if (atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, v2);
          IPC::StreamClientConnection::operator delete(v2);
        }

        goto LABEL_541;
      }
    }

LABEL_536:
    v355 = qword_1ED6410D0;
    if (os_log_type_enabled(qword_1ED6410D0, OS_LOG_TYPE_DEFAULT))
    {
      v356 = IPC::errorAsString();
      *buf = 136446466;
      *&buf[4] = "RemoteDisplayListRecorder_SetStrokeGradient";
      *&buf[12] = 2082;
      *&buf[14] = v356;
      _os_log_impl(&dword_19D52D000, v355, OS_LOG_TYPE_DEFAULT, "RemoteDisplayListRecorderProxy::send - failed, name:%{public}s, error:%{public}s", buf, 0x16u);
    }

    WebKit::RemoteDisplayListRecorderProxy::didBecomeUnresponsive(*(v4 + 3520));
    goto LABEL_539;
  }

  WebKit::RemoteDisplayListRecorderProxy::recordResourceUse(*(v4 + 3520), v12);
  LODWORD(v27) = *(v12 + 40);
  if ((v27 & 1) == 0)
  {
    goto LABEL_1174;
  }

  v85 = *(v12 + 32);
  this = WebCore::SourceBrush::gradientSpaceTransform((v5 - 624));
  v86 = this;
  v2 = *(v4 + 3512);
  if (v2)
  {
    atomic_fetch_add(v2, 1u);
    goto LABEL_136;
  }

  v543 = *(v4 + 3520);
  if (v543)
  {
    v544 = *(v543 + 8);
    if (v544)
    {
      ++*(v544 + 5);
      v545 = WebKit::RemoteRenderingBackendProxy::connection(v544, a2, buf);
      v2 = *buf;
      if (*(v544 + 5) == 1)
      {
        this = (*(*v544 + 24))(v544, v545);
      }

      else
      {
        --*(v544 + 5);
      }

      if (v2)
      {
        this = WTF::RefPtr<IPC::StreamClientConnection,WTF::RawPtrTraits<IPC::StreamClientConnection>,WTF::DefaultRefDerefTraits<IPC::StreamClientConnection>>::operator=((v4 + 3512), v2);
LABEL_136:
        if ((*(v4 + 3584) & 1) == 0)
        {
          this = *(v4 + 3544);
          if (this)
          {
            WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteImageBufferProxy>(this, *(v4 + 3536), buf);
            this = *buf;
            if (*buf)
            {
              this = WebKit::RemoteImageBufferProxy::backingStoreWillChange(*buf, v649);
              v651 = *buf;
              *buf = 0;
              if (v651)
              {
                this = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::ImageBuffer,(WTF::DestructionThread)0>::deref((v651 + 8), v650);
              }
            }
          }

          *(v4 + 3584) = 1;
        }

        v87 = *(v4 + 3504);
        v88 = *(v2 + 128);
        v89 = INFINITY;
        if (fabs(v88) != INFINITY)
        {
          WTF::ApproximateTime::now(this);
          v89 = v88 + v90;
        }

        if (*(v2 + 64) != v87)
        {
          IPC::StreamClientConnectionBuffer::tryAcquire(v2 + 72, buf, v89);
          if (buf[16] != 1)
          {
            goto LABEL_559;
          }

          v359 = *&buf[8];
          if (*&buf[8] <= 1uLL)
          {
            __break(0xC471u);
            JUMPOUT(0x19E1B238CLL);
          }

          v360 = *buf;
          **buf = 3198;
          v361 = v360 + 2;
          if (v359 - 2 < (-v361 & 7 | 8uLL))
          {
            goto LABEL_559;
          }

          v362 = -v361 & 7;
          *(v361 + v362) = v87;
          v363 = 6;
          if (v362 > 6)
          {
            v363 = v362;
          }

          v364 = v363 + 10;
          v365 = (*(v2 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
          v366 = *(v2 + 72);
          if (v365 + 16 >= v366)
          {
            v365 = 0;
          }

          v27 = v364 + v365;
          if (v366 <= v27)
          {
            v27 = 0;
          }

          *(v2 + 88) = v27;
          v367 = *(v2 + 80);
          if (*(v367 + 8) <= 0xFFuLL)
          {
            goto LABEL_1174;
          }

          v368 = atomic_exchange((*(v367 + 16) + 128), v27);
          v369 = *(v2 + 124);
          if (v368 == 0x80000000 || v369)
          {
            v400 = v369 + 1;
            *(v2 + 124) = v400;
            if (v400 >= *(v2 + 120))
            {
              if (*(v2 + 112) == 1)
              {
                MEMORY[0x19EB16320](*(v2 + 100));
              }

              *(v2 + 124) = 0;
            }
          }

          *(v2 + 64) = v87;
        }

        this = IPC::StreamClientConnectionBuffer::tryAcquire(v2 + 72, buf, v89);
        if (buf[16])
        {
          v91 = *&buf[8];
          if (*&buf[8] <= 1uLL)
          {
            __break(0xC471u);
            JUMPOUT(0x19E1B1C24);
          }

          v92 = *buf;
          **buf = 1124;
          v93 = v92 + 2;
          v94 = -v93 & 7 | 8;
          v95 = v91 - 2 - v94;
          if (v91 - 2 >= v94)
          {
            *(v93 + (-v93 & 7)) = v85;
            v96 = v93 + v94;
            v97 = -v96 & 7 | 0x30;
            if (v95 >= v97)
            {
              v98 = (v96 + (-v96 & 7));
              v99 = *v86;
              v100 = v86[2];
              v98[1] = v86[1];
              v98[2] = v100;
              *v98 = v99;
              v101 = v91 - v95 + v97;
              if (v101 <= 0x10)
              {
                v101 = 16;
              }

              v102 = (*(v2 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
              v103 = *(v2 + 72);
              if (v102 + 16 >= v103)
              {
                v102 = 0;
              }

              v27 = v102 + v101;
              if (v103 <= v27)
              {
                v27 = 0;
              }

              *(v2 + 88) = v27;
              v104 = *(v2 + 80);
              if (*(v104 + 8) <= 0xFFuLL)
              {
                goto LABEL_1174;
              }

              v105 = atomic_exchange((*(v104 + 16) + 128), v27);
              v106 = *(v2 + 124);
              if (v105 == 0x80000000 || v106 != 0)
              {
                v108 = v106 + 1;
                *(v2 + 124) = v108;
                if (v108 >= *(v2 + 120))
                {
                  if (*(v2 + 112) == 1)
                  {
                    this = MEMORY[0x19EB16320](*(v2 + 100));
                  }

                  *(v2 + 124) = 0;
                }
              }

              goto LABEL_562;
            }
          }

          LODWORD(v27) = buf[16];
          if ((buf[16] & 1) == 0)
          {
            goto LABEL_1174;
          }

          if (*&buf[8] > 1uLL)
          {
            **buf = 3197;
            v572 = (*(v2 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
            v573 = *(v2 + 72);
            if (v572 + 16 >= v573)
            {
              v572 = 0;
            }

            v574 = v572 + 16;
            if (v573 <= v574)
            {
              v27 = 0;
            }

            else
            {
              v27 = v574;
            }

            *(v2 + 88) = v27;
            v575 = *(v2 + 80);
            if (*(v575 + 8) <= 0xFFuLL)
            {
              goto LABEL_1174;
            }

            atomic_exchange((*(v575 + 16) + 128), v27);
            *(v2 + 124) = 0;
            v761 = *(v2 + 8);
            v576 = IPC::Encoder::operator new(0x238, a2);
            *v576 = 1124;
            *(v576 + 2) = 0;
            *(v576 + 3) = 0;
            *(v576 + 1) = v87;
            *(v576 + 68) = 0;
            *(v576 + 70) = 0;
            *(v576 + 69) = 0;
            v577 = v576;
            IPC::Encoder::encodeHeader(v576);
            v766 = v577;
            IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v577, v85);
            IPC::ArgumentCoder<std::span<double const,6ul>,void>::encode<IPC::Encoder>(v577, v86);
            v578 = IPC::Connection::sendMessageImpl(v761, &v766, 1, 0);
            this = v766;
            v766 = 0;
            if (this)
            {
              IPC::Encoder::~Encoder(this, a2);
              this = bmalloc::api::tzoneFree(v627, v628);
            }

            if (!v578)
            {
              goto LABEL_562;
            }

            goto LABEL_559;
          }

          __break(0xC471u);
LABEL_1386:
          JUMPOUT(0x19E1B15E4);
        }

LABEL_559:
        v370 = qword_1ED6410D0;
        if (os_log_type_enabled(qword_1ED6410D0, OS_LOG_TYPE_DEFAULT))
        {
          v371 = IPC::errorAsString();
          *buf = 136446466;
          *&buf[4] = "RemoteDisplayListRecorder_SetStrokeCachedGradient";
          *&buf[12] = 2082;
          *&buf[14] = v371;
          _os_log_impl(&dword_19D52D000, v370, OS_LOG_TYPE_DEFAULT, "RemoteDisplayListRecorderProxy::send - failed, name:%{public}s, error:%{public}s", buf, 0x16u);
        }

        this = WebKit::RemoteDisplayListRecorderProxy::didBecomeUnresponsive(*(v4 + 3520));
LABEL_562:
        if (atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, v2);
          IPC::StreamClientConnection::operator delete(v2);
        }

        goto LABEL_542;
      }
    }
  }

  do
  {
LABEL_542:
    v357 = *(v12 + 8);
    if ((v357 & 1) == 0)
    {
      this = WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebCore::RenderingResource,(WTF::DestructionThread)0>(*(v12 + 8), a2);
      goto LABEL_32;
    }

    v358 = *(v12 + 8);
    atomic_compare_exchange_strong_explicit((v12 + 8), &v358, v357 - 2, memory_order_relaxed, memory_order_relaxed);
  }

  while (v358 != v357);
  if (v357 == 3)
  {
    this = (*(*v12 + 8))(v12);
  }

  while (1)
  {
LABEL_32:
    if ((v6 & 2) == 0)
    {
      goto LABEL_33;
    }

    LOBYTE(v766) = *(v5 - 544);
    v12 = *(v4 + 3512);
    if (v12)
    {
      atomic_fetch_add(v12, 1u);
    }

    else
    {
      v641 = *(v4 + 3520);
      if (!v641)
      {
        goto LABEL_33;
      }

      v2 = *(v641 + 8);
      if (!v2)
      {
        goto LABEL_33;
      }

      ++*(v2 + 20);
      v642 = WebKit::RemoteRenderingBackendProxy::connection(v2, a2, buf);
      v12 = *buf;
      if (*(v2 + 20) == 1)
      {
        this = (*(*v2 + 24))(v2, v642);
      }

      else
      {
        --*(v2 + 20);
      }

      if (!v12)
      {
        goto LABEL_33;
      }

      this = WTF::RefPtr<IPC::StreamClientConnection,WTF::RawPtrTraits<IPC::StreamClientConnection>,WTF::DefaultRefDerefTraits<IPC::StreamClientConnection>>::operator=((v4 + 3512), v12);
    }

    if ((*(v4 + 3584) & 1) == 0)
    {
      this = *(v4 + 3544);
      if (this)
      {
        WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteImageBufferProxy>(this, *(v4 + 3536), buf);
        this = *buf;
        if (*buf)
        {
          this = WebKit::RemoteImageBufferProxy::backingStoreWillChange(*buf, v711);
          v713 = *buf;
          *buf = 0;
          if (v713)
          {
            this = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::ImageBuffer,(WTF::DestructionThread)0>::deref((v713 + 8), v712);
          }
        }
      }

      *(v4 + 3584) = 1;
    }

    v2 = *(v4 + 3504);
    v307 = *(v12 + 128);
    v308 = INFINITY;
    if (fabs(v307) != INFINITY)
    {
      WTF::ApproximateTime::now(this);
      v308 = v307 + v309;
    }

    if (*(v12 + 64) != v2)
    {
      IPC::StreamClientConnectionBuffer::tryAcquire(v12 + 72, buf, v308);
      if (buf[16] != 1)
      {
        goto LABEL_1004;
      }

      v503 = *&buf[8];
      if (*&buf[8] <= 1uLL)
      {
        __break(0xC471u);
        JUMPOUT(0x19E1B27ECLL);
      }

      v504 = *buf;
      **buf = 3198;
      v505 = v504 + 2;
      if (v503 - 2 < (-v505 & 7 | 8uLL))
      {
        goto LABEL_1004;
      }

      v506 = -v505 & 7;
      *(v505 + v506) = v2;
      v507 = 6;
      if (v506 > 6)
      {
        v507 = v506;
      }

      v508 = v507 + 10;
      v509 = (*(v12 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
      v510 = *(v12 + 72);
      if (v509 + 16 >= v510)
      {
        v509 = 0;
      }

      v27 = v508 + v509;
      if (v510 <= v27)
      {
        v27 = 0;
      }

      *(v12 + 88) = v27;
      v511 = *(v12 + 80);
      if (*(v511 + 8) <= 0xFFuLL)
      {
        goto LABEL_1174;
      }

      v512 = atomic_exchange((*(v511 + 16) + 128), v27);
      v513 = *(v12 + 124);
      if (v512 == 0x80000000 || v513 != 0)
      {
        v549 = v513 + 1;
        *(v12 + 124) = v549;
        if (v549 >= *(v12 + 120))
        {
          if (*(v12 + 112) == 1)
          {
            MEMORY[0x19EB16320](*(v12 + 100));
          }

          *(v12 + 124) = 0;
        }
      }

      *(v12 + 64) = v2;
    }

    this = IPC::StreamClientConnectionBuffer::tryAcquire(v12 + 72, buf, v308);
    if ((buf[16] & 1) == 0)
    {
      goto LABEL_1004;
    }

    v310 = *&buf[8];
    if (*&buf[8] <= 1uLL)
    {
      __break(0xC471u);
      JUMPOUT(0x19E1B203CLL);
    }

    v311 = *buf;
    **buf = 1112;
    if (v310 != 2)
    {
      *(v311 + 2) = v766;
      v312 = (*(v12 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
      v313 = *(v12 + 72);
      if (v312 + 16 >= v313)
      {
        v312 = 0;
      }

      v314 = v312 + 16;
      if (v313 <= v314)
      {
        v27 = 0;
      }

      else
      {
        v27 = v314;
      }

      *(v12 + 88) = v27;
      v315 = *(v12 + 80);
      if (*(v315 + 8) <= 0xFFuLL)
      {
        goto LABEL_1174;
      }

      v316 = atomic_exchange((*(v315 + 16) + 128), v27);
      v317 = *(v12 + 124);
      if (v316 == 0x80000000 || v317 != 0)
      {
        v376 = v317 + 1;
        *(v12 + 124) = v376;
        if (v376 >= *(v12 + 120))
        {
          if (*(v12 + 112) == 1)
          {
            this = MEMORY[0x19EB16320](*(v12 + 100));
          }

          *(v12 + 124) = 0;
        }
      }

      goto LABEL_472;
    }

    LODWORD(v27) = buf[16];
    if ((buf[16] & 1) == 0)
    {
      goto LABEL_1174;
    }

    IPC::StreamClientConnection::sendProcessOutOfStreamMessage(v12, *buf, *&buf[8]);
    this = IPC::Connection::send<Messages::RemoteDisplayListRecorder::SetFillRule>(*(v12 + 8), &v766, v2);
    if (this)
    {
LABEL_1004:
      v2 = qword_1ED6410D0;
      if (os_log_type_enabled(qword_1ED6410D0, OS_LOG_TYPE_DEFAULT))
      {
        v604 = IPC::errorAsString();
        *buf = 136446466;
        *&buf[4] = "RemoteDisplayListRecorder_SetFillRule";
        *&buf[12] = 2082;
        *&buf[14] = v604;
        _os_log_impl(&dword_19D52D000, v2, OS_LOG_TYPE_DEFAULT, "RemoteDisplayListRecorderProxy::send - failed, name:%{public}s, error:%{public}s", buf, 0x16u);
      }

      this = WebKit::RemoteDisplayListRecorderProxy::didBecomeUnresponsive(*(v4 + 3520));
    }

LABEL_472:
    if (atomic_fetch_add(v12, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v12);
      IPC::StreamClientConnection::operator delete(v12);
    }

LABEL_33:
    if ((v6 & 8) == 0)
    {
      goto LABEL_34;
    }

    v35 = *(v5 - 548);
    v12 = *(v4 + 3512);
    if (v12)
    {
      atomic_fetch_add(v12, 1u);
    }

    else
    {
      v412 = *(v4 + 3520);
      if (!v412)
      {
        goto LABEL_34;
      }

      v2 = *(v412 + 8);
      if (!v2)
      {
        goto LABEL_34;
      }

      ++*(v2 + 20);
      v413 = WebKit::RemoteRenderingBackendProxy::connection(v2, a2, buf);
      v12 = *buf;
      if (*(v2 + 20) == 1)
      {
        this = (*(*v2 + 24))(v2, v413);
      }

      else
      {
        --*(v2 + 20);
      }

      if (!v12)
      {
        goto LABEL_34;
      }

      atomic_fetch_add(v12, 1u);
      this = *(v4 + 3512);
      *(v4 + 3512) = v12;
      if (this && atomic_fetch_add(this, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, this);
        IPC::StreamClientConnection::operator delete(this);
      }
    }

    if ((*(v4 + 3584) & 1) == 0)
    {
      this = *(v4 + 3544);
      if (this)
      {
        WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteImageBufferProxy>(this, *(v4 + 3536), buf);
        this = *buf;
        if (*buf)
        {
          this = WebKit::RemoteImageBufferProxy::backingStoreWillChange(*buf, v699);
          v701 = *buf;
          *buf = 0;
          if (v701)
          {
            this = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::ImageBuffer,(WTF::DestructionThread)0>::deref((v701 + 8), v700);
          }
        }
      }

      *(v4 + 3584) = 1;
    }

    v36 = *(v4 + 3504);
    v37 = *(v12 + 128);
    v38 = INFINITY;
    if (fabs(v37) != INFINITY)
    {
      WTF::ApproximateTime::now(this);
      v38 = v37 + v39;
    }

    if (*(v12 + 64) != v36)
    {
      IPC::StreamClientConnectionBuffer::tryAcquire(v12 + 72, buf, v38);
      if (buf[16] != 1)
      {
LABEL_962:
        v2 = 16;
        goto LABEL_963;
      }

      v208 = *&buf[8];
      if (*&buf[8] <= 1uLL)
      {
        __break(0xC471u);
        JUMPOUT(0x19E1B1ECCLL);
      }

      v209 = *buf;
      **buf = 3198;
      v210 = v209 + 2;
      if (v208 - 2 < (-v210 & 7 | 8uLL))
      {
        v2 = 18;
        goto LABEL_963;
      }

      v211 = -v210 & 7;
      *(v210 + v211) = v36;
      v212 = 6;
      if (v211 > 6)
      {
        v212 = v211;
      }

      v213 = v212 + 10;
      v214 = (*(v12 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
      v215 = *(v12 + 72);
      if (v214 + 16 >= v215)
      {
        v214 = 0;
      }

      v27 = v213 + v214;
      if (v215 <= v27)
      {
        v27 = 0;
      }

      *(v12 + 88) = v27;
      v216 = *(v12 + 80);
      if (*(v216 + 8) <= 0xFFuLL)
      {
        goto LABEL_1174;
      }

      v217 = atomic_exchange((*(v216 + 16) + 128), v27);
      v218 = *(v12 + 124);
      if (v217 == 0x80000000 || v218 != 0)
      {
        v280 = v218 + 1;
        *(v12 + 124) = v280;
        if (v280 >= *(v12 + 120))
        {
          if (*(v12 + 112) == 1)
          {
            MEMORY[0x19EB16320](*(v12 + 100));
          }

          *(v12 + 124) = 0;
        }
      }

      *(v12 + 64) = v36;
    }

    this = IPC::StreamClientConnectionBuffer::tryAcquire(v12 + 72, buf, v38);
    if ((buf[16] & 1) == 0)
    {
      goto LABEL_962;
    }

    v40 = *&buf[8];
    if (*&buf[8] <= 1uLL)
    {
      __break(0xC471u);
      JUMPOUT(0x19E1B16E8);
    }

    v41 = *buf;
    **buf = 1131;
    v42 = v41 + 2;
    if (v40 - 2 >= (-v42 & 3 | 4uLL))
    {
      *(v42 + (-v42 & 3)) = v35;
      v43 = (*(v12 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
      v44 = *(v12 + 72);
      if (v43 + 16 >= v44)
      {
        v43 = 0;
      }

      v45 = v43 + 16;
      if (v44 <= v45)
      {
        v27 = 0;
      }

      else
      {
        v27 = v45;
      }

      *(v12 + 88) = v27;
      v46 = *(v12 + 80);
      if (*(v46 + 8) <= 0xFFuLL)
      {
        goto LABEL_1174;
      }

      v47 = atomic_exchange((*(v46 + 16) + 128), v27);
      v48 = *(v12 + 124);
      if (v47 == 0x80000000 || v48 != 0)
      {
        v80 = v48 + 1;
        *(v12 + 124) = v80;
        if (v80 >= *(v12 + 120))
        {
          if (*(v12 + 112) == 1)
          {
            this = MEMORY[0x19EB16320](*(v12 + 100));
          }

          *(v12 + 124) = 0;
        }
      }

      goto LABEL_70;
    }

    LODWORD(v27) = buf[16];
    if ((buf[16] & 1) == 0)
    {
      goto LABEL_1174;
    }

    if (*&buf[8] <= 1uLL)
    {
      __break(0xC471u);
      JUMPOUT(0x19E1B2694);
    }

    **buf = 3197;
    v415 = (*(v12 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
    v416 = *(v12 + 72);
    if (v415 + 16 >= v416)
    {
      v415 = 0;
    }

    v417 = v415 + 16;
    v27 = v416 <= v417 ? 0 : v417;
    *(v12 + 88) = v27;
    v418 = *(v12 + 80);
    if (*(v418 + 8) <= 0xFFuLL)
    {
      goto LABEL_1174;
    }

    atomic_exchange((*(v418 + 16) + 128), v27);
    *(v12 + 124) = 0;
    v419 = *(v12 + 8);
    v420 = IPC::Encoder::operator new(0x238, a2);
    *v420 = 1131;
    *(v420 + 2) = 0;
    *(v420 + 3) = 0;
    *(v420 + 1) = v36;
    *(v420 + 68) = 0;
    *(v420 + 70) = 0;
    *(v420 + 69) = 0;
    IPC::Encoder::encodeHeader(v420);
    v766 = v420;
    IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(v420, v35);
    v2 = IPC::Connection::sendMessageImpl(v419, &v766, 1, 0);
    this = v766;
    v766 = 0;
    if (this)
    {
      IPC::Encoder::~Encoder(this, a2);
      this = bmalloc::api::tzoneFree(v526, v527);
    }

    if (!v2)
    {
      goto LABEL_70;
    }

LABEL_963:
    v586 = qword_1ED6410D0;
    if (os_log_type_enabled(qword_1ED6410D0, OS_LOG_TYPE_DEFAULT))
    {
      v587 = IPC::errorAsString();
      *buf = 136446466;
      *&buf[4] = "RemoteDisplayListRecorder_SetStrokeThickness";
      *&buf[12] = 2082;
      *&buf[14] = v587;
      _os_log_impl(&dword_19D52D000, v586, OS_LOG_TYPE_DEFAULT, "RemoteDisplayListRecorderProxy::send - failed, name:%{public}s, error:%{public}s", buf, 0x16u);
    }

    this = WebKit::RemoteDisplayListRecorderProxy::didBecomeUnresponsive(*(v4 + 3520));
LABEL_70:
    if (atomic_fetch_add(v12, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v12);
      IPC::StreamClientConnection::operator delete(v12);
    }

LABEL_34:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_35;
    }

    LOBYTE(v766) = *(v5 - 543);
    v12 = *(v4 + 3512);
    if (v12)
    {
      atomic_fetch_add(v12, 1u);
    }

    else
    {
      v582 = *(v4 + 3520);
      if (!v582)
      {
        goto LABEL_35;
      }

      v2 = *(v582 + 8);
      if (!v2)
      {
        goto LABEL_35;
      }

      ++*(v2 + 20);
      v583 = WebKit::RemoteRenderingBackendProxy::connection(v2, a2, buf);
      v12 = *buf;
      if (*(v2 + 20) == 1)
      {
        this = (*(*v2 + 24))(v2, v583);
      }

      else
      {
        --*(v2 + 20);
      }

      if (!v12)
      {
        goto LABEL_35;
      }

      this = WTF::RefPtr<IPC::StreamClientConnection,WTF::RawPtrTraits<IPC::StreamClientConnection>,WTF::DefaultRefDerefTraits<IPC::StreamClientConnection>>::operator=((v4 + 3512), v12);
    }

    if ((*(v4 + 3584) & 1) == 0)
    {
      this = *(v4 + 3544);
      if (this)
      {
        WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteImageBufferProxy>(this, *(v4 + 3536), buf);
        this = *buf;
        if (*buf)
        {
          this = WebKit::RemoteImageBufferProxy::backingStoreWillChange(*buf, v705);
          v707 = *buf;
          *buf = 0;
          if (v707)
          {
            this = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::ImageBuffer,(WTF::DestructionThread)0>::deref((v707 + 8), v706);
          }
        }
      }

      *(v4 + 3584) = 1;
    }

    v2 = *(v4 + 3504);
    v221 = *(v12 + 128);
    v222 = INFINITY;
    if (fabs(v221) != INFINITY)
    {
      WTF::ApproximateTime::now(this);
      v222 = v221 + v223;
    }

    if (*(v12 + 64) != v2)
    {
      IPC::StreamClientConnectionBuffer::tryAcquire(v12 + 72, buf, v222);
      if (buf[16] != 1)
      {
        goto LABEL_997;
      }

      v423 = *&buf[8];
      if (*&buf[8] <= 1uLL)
      {
        __break(0xC471u);
        JUMPOUT(0x19E1B26E0);
      }

      v424 = *buf;
      **buf = 3198;
      v425 = v424 + 2;
      if (v423 - 2 < (-v425 & 7 | 8uLL))
      {
        goto LABEL_997;
      }

      v426 = -v425 & 7;
      *(v425 + v426) = v2;
      v427 = 6;
      if (v426 > 6)
      {
        v427 = v426;
      }

      v428 = v427 + 10;
      v429 = (*(v12 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
      v430 = *(v12 + 72);
      if (v429 + 16 >= v430)
      {
        v429 = 0;
      }

      v27 = v428 + v429;
      if (v430 <= v27)
      {
        v27 = 0;
      }

      *(v12 + 88) = v27;
      v431 = *(v12 + 80);
      if (*(v431 + 8) <= 0xFFuLL)
      {
        goto LABEL_1174;
      }

      v432 = atomic_exchange((*(v431 + 16) + 128), v27);
      v433 = *(v12 + 124);
      if (v432 == 0x80000000 || v433 != 0)
      {
        v491 = v433 + 1;
        *(v12 + 124) = v491;
        if (v491 >= *(v12 + 120))
        {
          if (*(v12 + 112) == 1)
          {
            MEMORY[0x19EB16320](*(v12 + 100));
          }

          *(v12 + 124) = 0;
        }
      }

      *(v12 + 64) = v2;
    }

    this = IPC::StreamClientConnectionBuffer::tryAcquire(v12 + 72, buf, v222);
    if ((buf[16] & 1) == 0)
    {
      goto LABEL_997;
    }

    v224 = *&buf[8];
    if (*&buf[8] <= 1uLL)
    {
      __break(0xC471u);
      JUMPOUT(0x19E1B1EECLL);
    }

    v225 = *buf;
    **buf = 1130;
    if (v224 != 2)
    {
      *(v225 + 2) = v766;
      v226 = (*(v12 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
      v227 = *(v12 + 72);
      if (v226 + 16 >= v227)
      {
        v226 = 0;
      }

      v228 = v226 + 16;
      if (v227 <= v228)
      {
        v27 = 0;
      }

      else
      {
        v27 = v228;
      }

      *(v12 + 88) = v27;
      v229 = *(v12 + 80);
      if (*(v229 + 8) <= 0xFFuLL)
      {
        goto LABEL_1174;
      }

      v230 = atomic_exchange((*(v229 + 16) + 128), v27);
      v231 = *(v12 + 124);
      if (v230 == 0x80000000 || v231 != 0)
      {
        v293 = v231 + 1;
        *(v12 + 124) = v293;
        if (v293 >= *(v12 + 120))
        {
          if (*(v12 + 112) == 1)
          {
            this = MEMORY[0x19EB16320](*(v12 + 100));
          }

          *(v12 + 124) = 0;
        }
      }

      goto LABEL_329;
    }

    LODWORD(v27) = buf[16];
    if ((buf[16] & 1) == 0)
    {
      goto LABEL_1174;
    }

    IPC::StreamClientConnection::sendProcessOutOfStreamMessage(v12, *buf, *&buf[8]);
    this = IPC::Connection::send<Messages::RemoteDisplayListRecorder::SetStrokeStyle>(*(v12 + 8), &v766, v2);
    if (this)
    {
LABEL_997:
      v2 = qword_1ED6410D0;
      if (os_log_type_enabled(qword_1ED6410D0, OS_LOG_TYPE_DEFAULT))
      {
        v603 = IPC::errorAsString();
        *buf = 136446466;
        *&buf[4] = "RemoteDisplayListRecorder_SetStrokeStyle";
        *&buf[12] = 2082;
        *&buf[14] = v603;
        _os_log_impl(&dword_19D52D000, v2, OS_LOG_TYPE_DEFAULT, "RemoteDisplayListRecorderProxy::send - failed, name:%{public}s, error:%{public}s", buf, 0x16u);
      }

      this = WebKit::RemoteDisplayListRecorderProxy::didBecomeUnresponsive(*(v4 + 3520));
    }

LABEL_329:
    if (atomic_fetch_add(v12, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v12);
      IPC::StreamClientConnection::operator delete(v12);
    }

LABEL_35:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_36;
    }

    v766 = (v5 - 542);
    v12 = *(v4 + 3512);
    if (v12)
    {
      atomic_fetch_add(v12, 1u);
    }

    else
    {
      v633 = *(v4 + 3520);
      if (!v633)
      {
        goto LABEL_36;
      }

      v2 = *(v633 + 8);
      if (!v2)
      {
        goto LABEL_36;
      }

      ++*(v2 + 20);
      v634 = WebKit::RemoteRenderingBackendProxy::connection(v2, a2, buf);
      v12 = *buf;
      if (*(v2 + 20) == 1)
      {
        this = (*(*v2 + 24))(v2, v634);
      }

      else
      {
        --*(v2 + 20);
      }

      if (!v12)
      {
        goto LABEL_36;
      }

      this = WTF::RefPtr<IPC::StreamClientConnection,WTF::RawPtrTraits<IPC::StreamClientConnection>,WTF::DefaultRefDerefTraits<IPC::StreamClientConnection>>::operator=((v4 + 3512), v12);
    }

    if ((*(v4 + 3584) & 1) == 0)
    {
      this = *(v4 + 3544);
      if (this)
      {
        WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteImageBufferProxy>(this, *(v4 + 3536), buf);
        this = *buf;
        if (*buf)
        {
          this = WebKit::RemoteImageBufferProxy::backingStoreWillChange(*buf, v714);
          v716 = *buf;
          *buf = 0;
          if (v716)
          {
            this = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::ImageBuffer,(WTF::DestructionThread)0>::deref((v716 + 8), v715);
          }
        }
      }

      *(v4 + 3584) = 1;
    }

    v2 = *(v4 + 3504);
    v281 = *(v12 + 128);
    v282 = INFINITY;
    if (fabs(v281) != INFINITY)
    {
      WTF::ApproximateTime::now(this);
      v282 = v281 + v283;
    }

    if (*(v12 + 64) != v2)
    {
      IPC::StreamClientConnectionBuffer::tryAcquire(v12 + 72, buf, v282);
      if (buf[16] != 1)
      {
        goto LABEL_1011;
      }

      v480 = *&buf[8];
      if (*&buf[8] <= 1uLL)
      {
        __break(0xC471u);
        JUMPOUT(0x19E1B27ACLL);
      }

      v481 = *buf;
      **buf = 3198;
      v482 = v481 + 2;
      if (v480 - 2 < (-v482 & 7 | 8uLL))
      {
        goto LABEL_1011;
      }

      v483 = -v482 & 7;
      *(v482 + v483) = v2;
      v484 = 6;
      if (v483 > 6)
      {
        v484 = v483;
      }

      v485 = v484 + 10;
      v486 = (*(v12 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
      v487 = *(v12 + 72);
      if (v486 + 16 >= v487)
      {
        v486 = 0;
      }

      v27 = v485 + v486;
      if (v487 <= v27)
      {
        v27 = 0;
      }

      *(v12 + 88) = v27;
      v488 = *(v12 + 80);
      if (*(v488 + 8) <= 0xFFuLL)
      {
        goto LABEL_1174;
      }

      v489 = atomic_exchange((*(v488 + 16) + 128), v27);
      v490 = *(v12 + 124);
      if (v489 == 0x80000000 || v490)
      {
        v547 = v490 + 1;
        *(v12 + 124) = v547;
        if (v547 >= *(v12 + 120))
        {
          if (*(v12 + 112) == 1)
          {
            MEMORY[0x19EB16320](*(v12 + 100));
          }

          *(v12 + 124) = 0;
        }
      }

      *(v12 + 64) = v2;
    }

    this = IPC::StreamClientConnectionBuffer::tryAcquire(v12 + 72, buf, v282);
    if ((buf[16] & 1) == 0)
    {
      goto LABEL_1011;
    }

    v284 = *&buf[8];
    if (*&buf[8] <= 1uLL)
    {
      __break(0xC471u);
      JUMPOUT(0x19E1B1FFCLL);
    }

    v285 = *buf;
    **buf = 1104;
    if (v284 != 2)
    {
      v286 = v766;
      *(v285 + 2) = *v766;
      if (v284 != 3)
      {
        *(v285 + 3) = *(v286 + 1);
        v287 = (*(v12 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
        v288 = *(v12 + 72);
        if (v287 + 16 >= v288)
        {
          v287 = 0;
        }

        v289 = v287 + 16;
        if (v288 <= v289)
        {
          v27 = 0;
        }

        else
        {
          v27 = v289;
        }

        *(v12 + 88) = v27;
        v290 = *(v12 + 80);
        if (*(v290 + 8) <= 0xFFuLL)
        {
          goto LABEL_1174;
        }

        v291 = atomic_exchange((*(v290 + 16) + 128), v27);
        v292 = *(v12 + 124);
        if (v291 == 0x80000000 || v292)
        {
          v374 = v292 + 1;
          *(v12 + 124) = v374;
          if (v374 >= *(v12 + 120))
          {
            if (*(v12 + 112) == 1)
            {
              this = MEMORY[0x19EB16320](*(v12 + 100));
            }

            *(v12 + 124) = 0;
          }
        }

        goto LABEL_418;
      }
    }

    LODWORD(v27) = buf[16];
    if ((buf[16] & 1) == 0)
    {
      goto LABEL_1174;
    }

    IPC::StreamClientConnection::sendProcessOutOfStreamMessage(v12, *buf, *&buf[8]);
    this = IPC::Connection::send<Messages::RemoteDisplayListRecorder::SetCompositeMode>(*(v12 + 8), &v766, v2);
    if (this)
    {
LABEL_1011:
      v2 = qword_1ED6410D0;
      if (os_log_type_enabled(qword_1ED6410D0, OS_LOG_TYPE_DEFAULT))
      {
        v605 = IPC::errorAsString();
        *buf = 136446466;
        *&buf[4] = "RemoteDisplayListRecorder_SetCompositeMode";
        *&buf[12] = 2082;
        *&buf[14] = v605;
        _os_log_impl(&dword_19D52D000, v2, OS_LOG_TYPE_DEFAULT, "RemoteDisplayListRecorderProxy::send - failed, name:%{public}s, error:%{public}s", buf, 0x16u);
      }

      this = WebKit::RemoteDisplayListRecorderProxy::didBecomeUnresponsive(*(v4 + 3520));
    }

LABEL_418:
    if (atomic_fetch_add(v12, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v12);
      IPC::StreamClientConnection::operator delete(v12);
    }

LABEL_36:
    if ((v6 & 0x4000) == 0)
    {
      goto LABEL_37;
    }

    LOBYTE(v766) = *(v5 - 391);
    v12 = *(v4 + 3512);
    if (v12)
    {
      atomic_fetch_add(v12, 1u);
    }

    else
    {
      v656 = *(v4 + 3520);
      if (!v656)
      {
        goto LABEL_37;
      }

      v2 = *(v656 + 8);
      if (!v2)
      {
        goto LABEL_37;
      }

      ++*(v2 + 20);
      v657 = WebKit::RemoteRenderingBackendProxy::connection(v2, a2, buf);
      v12 = *buf;
      if (*(v2 + 20) == 1)
      {
        this = (*(*v2 + 24))(v2, v657);
      }

      else
      {
        --*(v2 + 20);
      }

      if (!v12)
      {
        goto LABEL_37;
      }

      this = WTF::RefPtr<IPC::StreamClientConnection,WTF::RawPtrTraits<IPC::StreamClientConnection>,WTF::DefaultRefDerefTraits<IPC::StreamClientConnection>>::operator=((v4 + 3512), v12);
    }

    if ((*(v4 + 3584) & 1) == 0)
    {
      this = *(v4 + 3544);
      if (this)
      {
        WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteImageBufferProxy>(this, *(v4 + 3536), buf);
        this = *buf;
        if (*buf)
        {
          this = WebKit::RemoteImageBufferProxy::backingStoreWillChange(*buf, v726);
          v728 = *buf;
          *buf = 0;
          if (v728)
          {
            this = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::ImageBuffer,(WTF::DestructionThread)0>::deref((v728 + 8), v727);
          }
        }
      }

      *(v4 + 3584) = 1;
    }

    v2 = *(v4 + 3504);
    v377 = *(v12 + 128);
    v378 = INFINITY;
    if (fabs(v377) != INFINITY)
    {
      WTF::ApproximateTime::now(this);
      v378 = v377 + v379;
    }

    if (*(v12 + 64) != v2)
    {
      IPC::StreamClientConnectionBuffer::tryAcquire(v12 + 72, buf, v378);
      if (buf[16] != 1)
      {
        goto LABEL_1033;
      }

      v550 = *&buf[8];
      if (*&buf[8] <= 1uLL)
      {
        __break(0xC471u);
        JUMPOUT(0x19E1B284CLL);
      }

      v551 = *buf;
      **buf = 3198;
      v552 = v551 + 2;
      if (v550 - 2 < (-v552 & 7 | 8uLL))
      {
        goto LABEL_1033;
      }

      v553 = -v552 & 7;
      *(v552 + v553) = v2;
      v554 = 6;
      if (v553 > 6)
      {
        v554 = v553;
      }

      v555 = v554 + 10;
      v556 = (*(v12 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
      v557 = *(v12 + 72);
      if (v556 + 16 >= v557)
      {
        v556 = 0;
      }

      v27 = v555 + v556;
      if (v557 <= v27)
      {
        v27 = 0;
      }

      *(v12 + 88) = v27;
      v558 = *(v12 + 80);
      if (*(v558 + 8) <= 0xFFuLL)
      {
        goto LABEL_1174;
      }

      IPC::StreamClientConnection::wakeUpServerBatched(v12, atomic_exchange((*(v558 + 16) + 128), v27) == 0x80000000);
      *(v12 + 64) = v2;
    }

    this = IPC::StreamClientConnectionBuffer::tryAcquire(v12 + 72, buf, v378);
    if ((buf[16] & 1) == 0)
    {
      goto LABEL_1033;
    }

    v380 = *&buf[8];
    if (*&buf[8] <= 1uLL)
    {
      __break(0xC471u);
      JUMPOUT(0x19E1B249CLL);
    }

    v381 = *buf;
    **buf = 1118;
    if (v380 != 2)
    {
      *(v381 + 2) = v766;
      v382 = (*(v12 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
      v383 = *(v12 + 72);
      if (v382 + 16 >= v383)
      {
        v382 = 0;
      }

      v384 = v382 + 16;
      if (v383 <= v384)
      {
        v27 = 0;
      }

      else
      {
        v27 = v384;
      }

      *(v12 + 88) = v27;
      v385 = *(v12 + 80);
      if (*(v385 + 8) <= 0xFFuLL)
      {
        goto LABEL_1174;
      }

      v386 = atomic_exchange((*(v385 + 16) + 128), v27);
      v387 = *(v12 + 124);
      if (v386 == 0x80000000 || v387)
      {
        v414 = v387 + 1;
        *(v12 + 124) = v414;
        if (v414 >= *(v12 + 120))
        {
          if (*(v12 + 112) == 1)
          {
            this = MEMORY[0x19EB16320](*(v12 + 100));
          }

          *(v12 + 124) = 0;
        }
      }

      goto LABEL_601;
    }

    LODWORD(v27) = buf[16];
    if ((buf[16] & 1) == 0)
    {
      goto LABEL_1174;
    }

    IPC::StreamClientConnection::sendProcessOutOfStreamMessage(v12, *buf, *&buf[8]);
    this = IPC::Connection::send<Messages::RemoteDisplayListRecorder::SetShadowsIgnoreTransforms>(*(v12 + 8), &v766, v2);
    if (this)
    {
LABEL_1033:
      v2 = qword_1ED6410D0;
      if (os_log_type_enabled(qword_1ED6410D0, OS_LOG_TYPE_DEFAULT))
      {
        v611 = IPC::errorAsString();
        *buf = 136446466;
        *&buf[4] = "RemoteDisplayListRecorder_SetShadowsIgnoreTransforms";
        *&buf[12] = 2082;
        *&buf[14] = v611;
        _os_log_impl(&dword_19D52D000, v2, OS_LOG_TYPE_DEFAULT, "RemoteDisplayListRecorderProxy::send - failed, name:%{public}s, error:%{public}s", buf, 0x16u);
      }

      this = WebKit::RemoteDisplayListRecorderProxy::didBecomeUnresponsive(*(v4 + 3520));
    }

LABEL_601:
    if (atomic_fetch_add(v12, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v12);
      IPC::StreamClientConnection::operator delete(v12);
    }

LABEL_37:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_38;
    }

    v763 = (v5 - 536);
    v12 = *(v4 + 3512);
    if (v12)
    {
      atomic_fetch_add(v12, 1u);
    }

    else
    {
      v639 = *(v4 + 3520);
      if (!v639)
      {
        goto LABEL_38;
      }

      v2 = *(v639 + 8);
      if (!v2)
      {
        goto LABEL_38;
      }

      ++*(v2 + 20);
      v640 = WebKit::RemoteRenderingBackendProxy::connection(v2, a2, buf);
      v12 = *buf;
      if (*(v2 + 20) == 1)
      {
        this = (*(*v2 + 24))(v2, v640);
      }

      else
      {
        --*(v2 + 20);
      }

      if (!v12)
      {
        goto LABEL_38;
      }

      this = WTF::RefPtr<IPC::StreamClientConnection,WTF::RawPtrTraits<IPC::StreamClientConnection>,WTF::DefaultRefDerefTraits<IPC::StreamClientConnection>>::operator=((v4 + 3512), v12);
    }

    if ((*(v4 + 3584) & 1) == 0)
    {
      this = *(v4 + 3544);
      if (this)
      {
        WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteImageBufferProxy>(this, *(v4 + 3536), buf);
        this = *buf;
        if (*buf)
        {
          this = WebKit::RemoteImageBufferProxy::backingStoreWillChange(*buf, v717);
          v719 = *buf;
          *buf = 0;
          if (v719)
          {
            this = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::ImageBuffer,(WTF::DestructionThread)0>::deref((v719 + 8), v718);
          }
        }
      }

      *(v4 + 3584) = 1;
    }

    v2 = *(v4 + 3504);
    v294 = *(v12 + 128);
    v295 = INFINITY;
    if (fabs(v294) != INFINITY)
    {
      WTF::ApproximateTime::now(this);
      v295 = v294 + v296;
    }

    if (*(v12 + 64) != v2)
    {
      IPC::StreamClientConnectionBuffer::tryAcquire(v12 + 72, buf, v295);
      if (buf[16] != 1)
      {
        goto LABEL_1016;
      }

      v492 = *&buf[8];
      if (*&buf[8] <= 1uLL)
      {
        __break(0xC471u);
        JUMPOUT(0x19E1B27CCLL);
      }

      v493 = *buf;
      **buf = 3198;
      v494 = v493 + 2;
      if (v492 - 2 < (-v494 & 7 | 8uLL))
      {
        goto LABEL_1016;
      }

      v495 = -v494 & 7;
      *(v494 + v495) = v2;
      v496 = 6;
      if (v495 > 6)
      {
        v496 = v495;
      }

      v497 = v496 + 10;
      v498 = (*(v12 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
      v499 = *(v12 + 72);
      if (v498 + 16 >= v499)
      {
        v498 = 0;
      }

      v27 = v497 + v498;
      if (v499 <= v27)
      {
        v27 = 0;
      }

      *(v12 + 88) = v27;
      v500 = *(v12 + 80);
      if (*(v500 + 8) <= 0xFFuLL)
      {
        goto LABEL_1174;
      }

      v501 = atomic_exchange((*(v500 + 16) + 128), v27);
      v502 = *(v12 + 124);
      if (v501 == 0x80000000 || v502)
      {
        v548 = v502 + 1;
        *(v12 + 124) = v548;
        if (v548 >= *(v12 + 120))
        {
          if (*(v12 + 112) == 1)
          {
            MEMORY[0x19EB16320](*(v12 + 100));
          }

          *(v12 + 124) = 0;
        }
      }

      *(v12 + 64) = v2;
    }

    this = IPC::StreamClientConnectionBuffer::tryAcquire(v12 + 72, &v766, v295);
    if ((v768 & 1) == 0)
    {
      goto LABEL_1016;
    }

    v298 = v766;
    v297 = v767;
    *&buf[16] = v767;
    if (v767 <= 1)
    {
      __break(0xC471u);
      JUMPOUT(0x19E1B201CLL);
    }

    *v766 = 1106;
    a2 = v763;
    if (v763[4])
    {
      if (v297 == 2)
      {
        *buf = 0;
        *&buf[8] = 0;
      }

      else
      {
        *(v298 + 2) = 1;
        *buf = v298 + 3;
        *&buf[8] = v297 - 3;
        if ((a2[2] & 1) == 0)
        {
          this = std::__throw_bad_optional_access[abi:sn200100]();
          goto LABEL_1039;
        }
      }

      this = IPC::ArgumentCoder<WebCore::GraphicsDropShadow,void>::encode(buf, a2);
      if (*buf)
      {
        v299 = *&buf[8];
        v297 = *&buf[16];
LABEL_437:
        v300 = v297 - v299;
        if (v300 <= 0x10)
        {
          v300 = 16;
        }

        v301 = (*(v12 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
        v302 = *(v12 + 72);
        if (v301 + 16 >= v302)
        {
          v301 = 0;
        }

        v27 = v301 + v300;
        if (v302 <= v27)
        {
          v27 = 0;
        }

        *(v12 + 88) = v27;
        v303 = *(v12 + 80);
        if (*(v303 + 8) <= 0xFFuLL)
        {
          goto LABEL_1174;
        }

        v304 = atomic_exchange((*(v303 + 16) + 128), v27);
        v305 = *(v12 + 124);
        if (v304 == 0x80000000 || v305)
        {
          v375 = v305 + 1;
          *(v12 + 124) = v375;
          if (v375 >= *(v12 + 120))
          {
            if (*(v12 + 112) == 1)
            {
              this = MEMORY[0x19EB16320](*(v12 + 100));
            }

            *(v12 + 124) = 0;
          }
        }

        goto LABEL_446;
      }
    }

    else if (v297 != 2)
    {
      *(v298 + 2) = 0;
      v299 = v297 - 3;
      *buf = v298 + 3;
      *&buf[8] = v297 - 3;
      goto LABEL_437;
    }

    LODWORD(v27) = v768;
    if ((v768 & 1) == 0)
    {
      goto LABEL_1174;
    }

    IPC::StreamClientConnection::sendProcessOutOfStreamMessage(v12, v766, v767);
    this = IPC::Connection::send<Messages::RemoteDisplayListRecorder::SetDropShadow>(*(v12 + 8), &v763, v2);
    if (this)
    {
LABEL_1016:
      v2 = qword_1ED6410D0;
      if (os_log_type_enabled(qword_1ED6410D0, OS_LOG_TYPE_DEFAULT))
      {
        v606 = IPC::errorAsString();
        *buf = 136446466;
        *&buf[4] = "RemoteDisplayListRecorder_SetDropShadow";
        *&buf[12] = 2082;
        *&buf[14] = v606;
        _os_log_impl(&dword_19D52D000, v2, OS_LOG_TYPE_DEFAULT, "RemoteDisplayListRecorderProxy::send - failed, name:%{public}s, error:%{public}s", buf, 0x16u);
      }

      this = WebKit::RemoteDisplayListRecorderProxy::didBecomeUnresponsive(*(v4 + 3520));
    }

LABEL_446:
    if (atomic_fetch_add(v12, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v12);
      IPC::StreamClientConnection::operator delete(v12);
    }

LABEL_38:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_39;
    }

LABEL_1039:
    v766 = (v5 - 496);
    v612 = *(v4 + 3512);
    if (v612)
    {
      atomic_fetch_add(v612, 1u);
    }

    else
    {
      v672 = *(v4 + 3520);
      if (!v672)
      {
        goto LABEL_39;
      }

      v2 = *(v672 + 8);
      if (!v2)
      {
        goto LABEL_39;
      }

      ++*(v2 + 20);
      v673 = WebKit::RemoteRenderingBackendProxy::connection(v2, a2, buf);
      v612 = *buf;
      if (*(v2 + 20) == 1)
      {
        this = (*(*v2 + 24))(v2, v673);
      }

      else
      {
        --*(v2 + 20);
      }

      if (!v612)
      {
        goto LABEL_39;
      }

      WTF::RefPtr<IPC::StreamClientConnection,WTF::RawPtrTraits<IPC::StreamClientConnection>,WTF::DefaultRefDerefTraits<IPC::StreamClientConnection>>::operator=((v4 + 3512), v612);
    }

    if ((*(v4 + 3584) & 1) == 0)
    {
      v613 = *(v4 + 3544);
      if (v613)
      {
        WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteImageBufferProxy>(v613, *(v4 + 3536), buf);
        if (*buf)
        {
          WebKit::RemoteImageBufferProxy::backingStoreWillChange(*buf, v738);
          v740 = *buf;
          *buf = 0;
          if (v740)
          {
            WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::ImageBuffer,(WTF::DestructionThread)0>::deref((v740 + 8), v739);
          }
        }
      }

      *(v4 + 3584) = 1;
    }

    this = IPC::StreamClientConnection::send<Messages::RemoteDisplayListRecorder::SetStyle,WebKit::RemoteDisplayListRecorderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v612, &v766, *(v4 + 3504));
    if (this)
    {
      v2 = qword_1ED6410D0;
      if (os_log_type_enabled(qword_1ED6410D0, OS_LOG_TYPE_DEFAULT))
      {
        v660 = IPC::errorAsString();
        *buf = 136446466;
        *&buf[4] = "RemoteDisplayListRecorder_SetStyle";
        *&buf[12] = 2082;
        *&buf[14] = v660;
        _os_log_impl(&dword_19D52D000, v2, OS_LOG_TYPE_DEFAULT, "RemoteDisplayListRecorderProxy::send - failed, name:%{public}s, error:%{public}s", buf, 0x16u);
      }

      this = WebKit::RemoteDisplayListRecorderProxy::didBecomeUnresponsive(*(v4 + 3520));
    }

    if (atomic_fetch_add(v612, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v612);
      IPC::StreamClientConnection::operator delete(v612);
    }

LABEL_39:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_40;
    }

    v66 = *(v5 - 400);
    v12 = *(v4 + 3512);
    if (v12)
    {
      atomic_fetch_add(v12, 1u);
    }

    else
    {
      v452 = *(v4 + 3520);
      if (!v452)
      {
        goto LABEL_40;
      }

      v2 = *(v452 + 8);
      if (!v2)
      {
        goto LABEL_40;
      }

      ++*(v2 + 20);
      v453 = WebKit::RemoteRenderingBackendProxy::connection(v2, a2, buf);
      v12 = *buf;
      if (*(v2 + 20) == 1)
      {
        this = (*(*v2 + 24))(v2, v453);
      }

      else
      {
        --*(v2 + 20);
      }

      if (!v12)
      {
        goto LABEL_40;
      }

      this = WTF::RefPtr<IPC::StreamClientConnection,WTF::RawPtrTraits<IPC::StreamClientConnection>,WTF::DefaultRefDerefTraits<IPC::StreamClientConnection>>::operator=((v4 + 3512), v12);
    }

    if ((*(v4 + 3584) & 1) == 0)
    {
      this = *(v4 + 3544);
      if (this)
      {
        WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteImageBufferProxy>(this, *(v4 + 3536), buf);
        this = *buf;
        if (*buf)
        {
          this = WebKit::RemoteImageBufferProxy::backingStoreWillChange(*buf, v702);
          v704 = *buf;
          *buf = 0;
          if (v704)
          {
            this = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::ImageBuffer,(WTF::DestructionThread)0>::deref((v704 + 8), v703);
          }
        }
      }

      *(v4 + 3584) = 1;
    }

    v67 = *(v4 + 3504);
    v68 = *(v12 + 128);
    v69 = INFINITY;
    if (fabs(v68) != INFINITY)
    {
      WTF::ApproximateTime::now(this);
      v69 = v68 + v70;
    }

    if (*(v12 + 64) != v67)
    {
      IPC::StreamClientConnectionBuffer::tryAcquire(v12 + 72, buf, v69);
      if (buf[16] != 1)
      {
        goto LABEL_973;
      }

      v269 = *&buf[8];
      if (*&buf[8] <= 1uLL)
      {
        __break(0xC471u);
        JUMPOUT(0x19E1B1FBCLL);
      }

      v270 = *buf;
      **buf = 3198;
      v271 = v270 + 2;
      if (v269 - 2 < (-v271 & 7 | 8uLL))
      {
        goto LABEL_973;
      }

      v272 = -v271 & 7;
      *(v271 + v272) = v67;
      v273 = 6;
      if (v272 > 6)
      {
        v273 = v272;
      }

      v274 = v273 + 10;
      v275 = (*(v12 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
      v276 = *(v12 + 72);
      if (v275 + 16 >= v276)
      {
        v275 = 0;
      }

      v27 = v274 + v275;
      if (v276 <= v27)
      {
        v27 = 0;
      }

      *(v12 + 88) = v27;
      v277 = *(v12 + 80);
      if (*(v277 + 8) <= 0xFFuLL)
      {
        goto LABEL_1174;
      }

      v278 = atomic_exchange((*(v277 + 16) + 128), v27);
      v279 = *(v12 + 124);
      if (v278 == 0x80000000 || v279)
      {
        v372 = v279 + 1;
        *(v12 + 124) = v372;
        if (v372 >= *(v12 + 120))
        {
          if (*(v12 + 112) == 1)
          {
            MEMORY[0x19EB16320](*(v12 + 100));
          }

          *(v12 + 124) = 0;
        }
      }

      *(v12 + 64) = v67;
    }

    this = IPC::StreamClientConnectionBuffer::tryAcquire(v12 + 72, buf, v69);
    if (buf[16])
    {
      v71 = *&buf[8];
      if (*&buf[8] <= 1uLL)
      {
        __break(0xC471u);
        JUMPOUT(0x19E1B1890);
      }

      v72 = *buf;
      **buf = 1102;
      v73 = v72 + 2;
      if (v71 - 2 >= (-v73 & 3 | 4uLL))
      {
        *(v73 + (-v73 & 3)) = v66;
        v74 = (*(v12 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
        v75 = *(v12 + 72);
        if (v74 + 16 >= v75)
        {
          v74 = 0;
        }

        v76 = v74 + 16;
        if (v75 <= v76)
        {
          v27 = 0;
        }

        else
        {
          v27 = v76;
        }

        *(v12 + 88) = v27;
        v77 = *(v12 + 80);
        if (*(v77 + 8) <= 0xFFuLL)
        {
          goto LABEL_1174;
        }

        v78 = atomic_exchange((*(v77 + 16) + 128), v27);
        v79 = *(v12 + 124);
        if (v78 == 0x80000000 || v79)
        {
          v134 = v79 + 1;
          *(v12 + 124) = v134;
          if (v134 >= *(v12 + 120))
          {
            if (*(v12 + 112) == 1)
            {
              this = MEMORY[0x19EB16320](*(v12 + 100));
            }

            *(v12 + 124) = 0;
          }
        }

        goto LABEL_116;
      }

      LODWORD(v27) = buf[16];
      if ((buf[16] & 1) == 0)
      {
        goto LABEL_1174;
      }

      if (*&buf[8] <= 1uLL)
      {
        __break(0xC471u);
        JUMPOUT(0x19E1B274CLL);
      }

      **buf = 3197;
      v454 = (*(v12 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
      v455 = *(v12 + 72);
      if (v454 + 16 >= v455)
      {
        v454 = 0;
      }

      v456 = v454 + 16;
      v27 = v455 <= v456 ? 0 : v456;
      *(v12 + 88) = v27;
      v457 = *(v12 + 80);
      if (*(v457 + 8) <= 0xFFuLL)
      {
        goto LABEL_1174;
      }

      atomic_exchange((*(v457 + 16) + 128), v27);
      *(v12 + 124) = 0;
      v458 = *(v12 + 8);
      v459 = IPC::Encoder::operator new(0x238, a2);
      *v459 = 1102;
      *(v459 + 2) = 0;
      *(v459 + 3) = 0;
      *(v459 + 1) = v67;
      *(v459 + 68) = 0;
      *(v459 + 70) = 0;
      *(v459 + 69) = 0;
      IPC::Encoder::encodeHeader(v459);
      v766 = v459;
      IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(v459, v66);
      v460 = IPC::Connection::sendMessageImpl(v458, &v766, 1, 0);
      this = v766;
      v766 = 0;
      if (this)
      {
        IPC::Encoder::~Encoder(this, a2);
        this = bmalloc::api::tzoneFree(v560, v561);
      }

      if (!v460)
      {
        goto LABEL_116;
      }
    }

LABEL_973:
    v592 = qword_1ED6410D0;
    if (os_log_type_enabled(qword_1ED6410D0, OS_LOG_TYPE_DEFAULT))
    {
      v593 = IPC::errorAsString();
      *buf = 136446466;
      *&buf[4] = "RemoteDisplayListRecorder_SetAlpha";
      *&buf[12] = 2082;
      *&buf[14] = v593;
      _os_log_impl(&dword_19D52D000, v592, OS_LOG_TYPE_DEFAULT, "RemoteDisplayListRecorderProxy::send - failed, name:%{public}s, error:%{public}s", buf, 0x16u);
    }

    this = WebKit::RemoteDisplayListRecorderProxy::didBecomeUnresponsive(*(v4 + 3520));
LABEL_116:
    if (atomic_fetch_add(v12, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v12);
      IPC::StreamClientConnection::operator delete(v12);
    }

LABEL_40:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_41;
    }

    LOBYTE(v763) = *(v5 - 395);
    v766 = &v763;
    v614 = *(v4 + 3512);
    if (v614)
    {
      atomic_fetch_add(v614, 1u);
    }

    else
    {
      v674 = *(v4 + 3520);
      if (!v674)
      {
        goto LABEL_41;
      }

      v675 = *(v674 + 8);
      if (!v675)
      {
        goto LABEL_41;
      }

      ++*(v675 + 5);
      v676 = WebKit::RemoteRenderingBackendProxy::connection(v675, a2, buf);
      v614 = *buf;
      if (*(v675 + 5) == 1)
      {
        this = (*(*v675 + 24))(v675, v676);
      }

      else
      {
        --*(v675 + 5);
      }

      if (!v614)
      {
        goto LABEL_41;
      }

      WTF::RefPtr<IPC::StreamClientConnection,WTF::RawPtrTraits<IPC::StreamClientConnection>,WTF::DefaultRefDerefTraits<IPC::StreamClientConnection>>::operator=((v4 + 3512), v614);
    }

    if ((*(v4 + 3584) & 1) == 0)
    {
      v615 = *(v4 + 3544);
      if (v615)
      {
        WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteImageBufferProxy>(v615, *(v4 + 3536), buf);
        if (*buf)
        {
          WebKit::RemoteImageBufferProxy::backingStoreWillChange(*buf, v741);
          v743 = *buf;
          *buf = 0;
          if (v743)
          {
            WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::ImageBuffer,(WTF::DestructionThread)0>::deref((v743 + 8), v742);
          }
        }
      }

      *(v4 + 3584) = 1;
    }

    this = IPC::StreamClientConnection::send<Messages::RemoteDisplayListRecorder::SetTextDrawingMode,WebKit::RemoteDisplayListRecorderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v614, &v766, *(v4 + 3504));
    if (this)
    {
      v661 = qword_1ED6410D0;
      if (os_log_type_enabled(qword_1ED6410D0, OS_LOG_TYPE_DEFAULT))
      {
        v662 = IPC::errorAsString();
        *buf = 136446466;
        *&buf[4] = "RemoteDisplayListRecorder_SetTextDrawingMode";
        *&buf[12] = 2082;
        *&buf[14] = v662;
        _os_log_impl(&dword_19D52D000, v661, OS_LOG_TYPE_DEFAULT, "RemoteDisplayListRecorderProxy::send - failed, name:%{public}s, error:%{public}s", buf, 0x16u);
      }

      this = WebKit::RemoteDisplayListRecorderProxy::didBecomeUnresponsive(*(v4 + 3520));
    }

    if (atomic_fetch_add(v614, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v614);
      IPC::StreamClientConnection::operator delete(v614);
    }

LABEL_41:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_42;
    }

    LOBYTE(v766) = *(v5 - 396);
    v12 = *(v4 + 3512);
    if (v12)
    {
      atomic_fetch_add(v12, 1u);
    }

    else
    {
      v643 = *(v4 + 3520);
      if (!v643)
      {
        goto LABEL_42;
      }

      v644 = *(v643 + 8);
      if (!v644)
      {
        goto LABEL_42;
      }

      ++*(v644 + 5);
      v645 = WebKit::RemoteRenderingBackendProxy::connection(v644, a2, buf);
      v12 = *buf;
      if (*(v644 + 5) == 1)
      {
        this = (*(*v644 + 24))(v644, v645);
      }

      else
      {
        --*(v644 + 5);
      }

      if (!v12)
      {
        goto LABEL_42;
      }

      this = WTF::RefPtr<IPC::StreamClientConnection,WTF::RawPtrTraits<IPC::StreamClientConnection>,WTF::DefaultRefDerefTraits<IPC::StreamClientConnection>>::operator=((v4 + 3512), v12);
    }

    if ((*(v4 + 3584) & 1) == 0)
    {
      this = *(v4 + 3544);
      if (this)
      {
        WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteImageBufferProxy>(this, *(v4 + 3536), buf);
        this = *buf;
        if (*buf)
        {
          this = WebKit::RemoteImageBufferProxy::backingStoreWillChange(*buf, v720);
          v722 = *buf;
          *buf = 0;
          if (v722)
          {
            this = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::ImageBuffer,(WTF::DestructionThread)0>::deref((v722 + 8), v721);
          }
        }
      }

      *(v4 + 3584) = 1;
    }

    v2 = *(v4 + 3504);
    v319 = *(v12 + 128);
    v320 = INFINITY;
    if (fabs(v319) != INFINITY)
    {
      WTF::ApproximateTime::now(this);
      v320 = v319 + v321;
    }

    if (*(v12 + 64) != v2)
    {
      IPC::StreamClientConnectionBuffer::tryAcquire(v12 + 72, buf, v320);
      if (buf[16] != 1)
      {
        goto LABEL_1023;
      }

      v515 = *&buf[8];
      if (*&buf[8] <= 1uLL)
      {
        __break(0xC471u);
        JUMPOUT(0x19E1B280CLL);
      }

      v516 = *buf;
      **buf = 3198;
      v517 = v516 + 2;
      if (v515 - 2 < (-v517 & 7 | 8uLL))
      {
        goto LABEL_1023;
      }

      v518 = -v517 & 7;
      *(v517 + v518) = v2;
      v519 = 6;
      if (v518 > 6)
      {
        v519 = v518;
      }

      v520 = v519 + 10;
      v521 = (*(v12 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
      v522 = *(v12 + 72);
      if (v521 + 16 >= v522)
      {
        v521 = 0;
      }

      v27 = v520 + v521;
      if (v522 <= v27)
      {
        v27 = 0;
      }

      *(v12 + 88) = v27;
      v523 = *(v12 + 80);
      if (*(v523 + 8) <= 0xFFuLL)
      {
        goto LABEL_1174;
      }

      v524 = atomic_exchange((*(v523 + 16) + 128), v27);
      v525 = *(v12 + 124);
      if (v524 == 0x80000000 || v525)
      {
        v559 = v525 + 1;
        *(v12 + 124) = v559;
        if (v559 >= *(v12 + 120))
        {
          if (*(v12 + 112) == 1)
          {
            MEMORY[0x19EB16320](*(v12 + 100));
          }

          *(v12 + 124) = 0;
        }
      }

      *(v12 + 64) = v2;
    }

    this = IPC::StreamClientConnectionBuffer::tryAcquire(v12 + 72, buf, v320);
    if ((buf[16] & 1) == 0)
    {
      goto LABEL_1023;
    }

    v322 = *&buf[8];
    if (*&buf[8] <= 1uLL)
    {
      __break(0xC471u);
      JUMPOUT(0x19E1B205CLL);
    }

    v323 = *buf;
    **buf = 1113;
    if (v322 != 2)
    {
      *(v323 + 2) = v766;
      v324 = (*(v12 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
      v325 = *(v12 + 72);
      if (v324 + 16 >= v325)
      {
        v324 = 0;
      }

      v326 = v324 + 16;
      if (v325 <= v326)
      {
        v27 = 0;
      }

      else
      {
        v27 = v326;
      }

      *(v12 + 88) = v27;
      v327 = *(v12 + 80);
      if (*(v327 + 8) <= 0xFFuLL)
      {
        goto LABEL_1174;
      }

      v328 = atomic_exchange((*(v327 + 16) + 128), v27);
      v329 = *(v12 + 124);
      if (v328 == 0x80000000 || v329)
      {
        v388 = v329 + 1;
        *(v12 + 124) = v388;
        if (v388 >= *(v12 + 120))
        {
          if (*(v12 + 112) == 1)
          {
            this = MEMORY[0x19EB16320](*(v12 + 100));
          }

          *(v12 + 124) = 0;
        }
      }

      goto LABEL_491;
    }

    LODWORD(v27) = buf[16];
    if ((buf[16] & 1) == 0)
    {
      goto LABEL_1174;
    }

    IPC::StreamClientConnection::sendProcessOutOfStreamMessage(v12, *buf, *&buf[8]);
    this = IPC::Connection::send<Messages::RemoteDisplayListRecorder::SetImageInterpolationQuality>(*(v12 + 8), &v766, v2);
    if (this)
    {
LABEL_1023:
      v607 = qword_1ED6410D0;
      if (os_log_type_enabled(qword_1ED6410D0, OS_LOG_TYPE_DEFAULT))
      {
        v608 = IPC::errorAsString();
        *buf = 136446466;
        *&buf[4] = "RemoteDisplayListRecorder_SetImageInterpolationQuality";
        *&buf[12] = 2082;
        *&buf[14] = v608;
        _os_log_impl(&dword_19D52D000, v607, OS_LOG_TYPE_DEFAULT, "RemoteDisplayListRecorderProxy::send - failed, name:%{public}s, error:%{public}s", buf, 0x16u);
      }

      this = WebKit::RemoteDisplayListRecorderProxy::didBecomeUnresponsive(*(v4 + 3520));
    }

LABEL_491:
    if (atomic_fetch_add(v12, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v12);
      IPC::StreamClientConnection::operator delete(v12);
    }

LABEL_42:
    if ((v6 & 0x800) == 0)
    {
      goto LABEL_43;
    }

    LOBYTE(v766) = *(v5 - 394);
    v12 = *(v4 + 3512);
    if (v12)
    {
      atomic_fetch_add(v12, 1u);
    }

    else
    {
      v652 = *(v4 + 3520);
      if (!v652)
      {
        goto LABEL_43;
      }

      v653 = *(v652 + 8);
      if (!v653)
      {
        goto LABEL_43;
      }

      ++*(v653 + 5);
      v654 = WebKit::RemoteRenderingBackendProxy::connection(v653, a2, buf);
      v12 = *buf;
      if (*(v653 + 5) == 1)
      {
        this = (*(*v653 + 24))(v653, v654);
      }

      else
      {
        --*(v653 + 5);
      }

      if (!v12)
      {
        goto LABEL_43;
      }

      this = WTF::RefPtr<IPC::StreamClientConnection,WTF::RawPtrTraits<IPC::StreamClientConnection>,WTF::DefaultRefDerefTraits<IPC::StreamClientConnection>>::operator=((v4 + 3512), v12);
    }

    if ((*(v4 + 3584) & 1) == 0)
    {
      this = *(v4 + 3544);
      if (this)
      {
        WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteImageBufferProxy>(this, *(v4 + 3536), buf);
        this = *buf;
        if (*buf)
        {
          this = WebKit::RemoteImageBufferProxy::backingStoreWillChange(*buf, v723);
          v725 = *buf;
          *buf = 0;
          if (v725)
          {
            this = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::ImageBuffer,(WTF::DestructionThread)0>::deref((v725 + 8), v724);
          }
        }
      }

      *(v4 + 3584) = 1;
    }

    v2 = *(v4 + 3504);
    v330 = *(v12 + 128);
    v331 = INFINITY;
    if (fabs(v330) != INFINITY)
    {
      WTF::ApproximateTime::now(this);
      v331 = v330 + v332;
    }

    if (*(v12 + 64) != v2)
    {
      IPC::StreamClientConnectionBuffer::tryAcquire(v12 + 72, buf, v331);
      if (buf[16] != 1)
      {
        goto LABEL_1028;
      }

      v528 = *&buf[8];
      if (*&buf[8] <= 1uLL)
      {
        __break(0xC471u);
        JUMPOUT(0x19E1B282CLL);
      }

      v529 = *buf;
      **buf = 3198;
      v530 = v529 + 2;
      if (v528 - 2 < (-v530 & 7 | 8uLL))
      {
        goto LABEL_1028;
      }

      v531 = -v530 & 7;
      *(v530 + v531) = v2;
      v532 = 6;
      if (v531 > 6)
      {
        v532 = v531;
      }

      v533 = v532 + 10;
      v534 = (*(v12 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
      v535 = *(v12 + 72);
      if (v534 + 16 >= v535)
      {
        v534 = 0;
      }

      v27 = v533 + v534;
      if (v535 <= v27)
      {
        v27 = 0;
      }

      *(v12 + 88) = v27;
      v536 = *(v12 + 80);
      if (*(v536 + 8) <= 0xFFuLL)
      {
        goto LABEL_1174;
      }

      v537 = atomic_exchange((*(v536 + 16) + 128), v27);
      v538 = *(v12 + 124);
      if (v537 == 0x80000000 || v538)
      {
        v564 = v538 + 1;
        *(v12 + 124) = v564;
        if (v564 >= *(v12 + 120))
        {
          if (*(v12 + 112) == 1)
          {
            MEMORY[0x19EB16320](*(v12 + 100));
          }

          *(v12 + 124) = 0;
        }
      }

      *(v12 + 64) = v2;
    }

    this = IPC::StreamClientConnectionBuffer::tryAcquire(v12 + 72, buf, v331);
    if ((buf[16] & 1) == 0)
    {
      goto LABEL_1028;
    }

    v333 = *&buf[8];
    if (*&buf[8] <= 1uLL)
    {
      __break(0xC471u);
      JUMPOUT(0x19E1B207CLL);
    }

    v334 = *buf;
    **buf = 1121;
    if (v333 != 2)
    {
      *(v334 + 2) = v766;
      v335 = (*(v12 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
      v336 = *(v12 + 72);
      if (v335 + 16 >= v336)
      {
        v335 = 0;
      }

      v337 = v335 + 16;
      if (v336 <= v337)
      {
        v27 = 0;
      }

      else
      {
        v27 = v337;
      }

      *(v12 + 88) = v27;
      v338 = *(v12 + 80);
      if (*(v338 + 8) <= 0xFFuLL)
      {
        goto LABEL_1174;
      }

      v339 = atomic_exchange((*(v338 + 16) + 128), v27);
      v340 = *(v12 + 124);
      if (v339 == 0x80000000 || v340)
      {
        v392 = v340 + 1;
        *(v12 + 124) = v392;
        if (v392 >= *(v12 + 120))
        {
          if (*(v12 + 112) == 1)
          {
            this = MEMORY[0x19EB16320](*(v12 + 100));
          }

          *(v12 + 124) = 0;
        }
      }

      goto LABEL_510;
    }

    LODWORD(v27) = buf[16];
    if ((buf[16] & 1) == 0)
    {
      goto LABEL_1174;
    }

    IPC::StreamClientConnection::sendProcessOutOfStreamMessage(v12, *buf, *&buf[8]);
    this = IPC::Connection::send<Messages::RemoteDisplayListRecorder::SetShouldAntialias>(*(v12 + 8), &v766, v2);
    if (this)
    {
LABEL_1028:
      v609 = qword_1ED6410D0;
      if (os_log_type_enabled(qword_1ED6410D0, OS_LOG_TYPE_DEFAULT))
      {
        v610 = IPC::errorAsString();
        *buf = 136446466;
        *&buf[4] = "RemoteDisplayListRecorder_SetShouldAntialias";
        *&buf[12] = 2082;
        *&buf[14] = v610;
        _os_log_impl(&dword_19D52D000, v609, OS_LOG_TYPE_DEFAULT, "RemoteDisplayListRecorderProxy::send - failed, name:%{public}s, error:%{public}s", buf, 0x16u);
      }

      this = WebKit::RemoteDisplayListRecorderProxy::didBecomeUnresponsive(*(v4 + 3520));
    }

LABEL_510:
    if (atomic_fetch_add(v12, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v12);
      IPC::StreamClientConnection::operator delete(v12);
    }

LABEL_43:
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_44;
    }

    LOBYTE(v766) = *(v5 - 393);
    v616 = *(v4 + 3512);
    if (v616)
    {
      atomic_fetch_add(v616, 1u);
    }

    else
    {
      v677 = *(v4 + 3520);
      if (!v677)
      {
        goto LABEL_44;
      }

      v678 = *(v677 + 8);
      if (!v678)
      {
        goto LABEL_44;
      }

      ++*(v678 + 5);
      v679 = WebKit::RemoteRenderingBackendProxy::connection(v678, a2, buf);
      v616 = *buf;
      if (*(v678 + 5) == 1)
      {
        this = (*(*v678 + 24))(v678, v679);
      }

      else
      {
        --*(v678 + 5);
      }

      if (!v616)
      {
        goto LABEL_44;
      }

      WTF::RefPtr<IPC::StreamClientConnection,WTF::RawPtrTraits<IPC::StreamClientConnection>,WTF::DefaultRefDerefTraits<IPC::StreamClientConnection>>::operator=((v4 + 3512), v616);
    }

    if ((*(v4 + 3584) & 1) == 0)
    {
      v617 = *(v4 + 3544);
      if (v617)
      {
        WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteImageBufferProxy>(v617, *(v4 + 3536), buf);
        if (*buf)
        {
          WebKit::RemoteImageBufferProxy::backingStoreWillChange(*buf, v744);
          v746 = *buf;
          *buf = 0;
          if (v746)
          {
            WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::ImageBuffer,(WTF::DestructionThread)0>::deref((v746 + 8), v745);
          }
        }
      }

      *(v4 + 3584) = 1;
    }

    this = IPC::StreamClientConnection::send<Messages::RemoteDisplayListRecorder::SetShouldSmoothFonts,WebKit::RemoteDisplayListRecorderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v616, &v766, *(v4 + 3504));
    if (this)
    {
      v663 = qword_1ED6410D0;
      if (os_log_type_enabled(qword_1ED6410D0, OS_LOG_TYPE_DEFAULT))
      {
        v664 = IPC::errorAsString();
        *buf = 136446466;
        *&buf[4] = "RemoteDisplayListRecorder_SetShouldSmoothFonts";
        *&buf[12] = 2082;
        *&buf[14] = v664;
        _os_log_impl(&dword_19D52D000, v663, OS_LOG_TYPE_DEFAULT, "RemoteDisplayListRecorderProxy::send - failed, name:%{public}s, error:%{public}s", buf, 0x16u);
      }

      this = WebKit::RemoteDisplayListRecorderProxy::didBecomeUnresponsive(*(v4 + 3520));
    }

    if (atomic_fetch_add(v616, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v616);
      IPC::StreamClientConnection::operator delete(v616);
    }

LABEL_44:
    if ((v6 & 0x2000) == 0)
    {
      goto LABEL_45;
    }

    LOBYTE(v766) = *(v5 - 392);
    v12 = *(v4 + 3512);
    if (v12)
    {
      atomic_fetch_add(v12, 1u);
    }

    else
    {
      v579 = *(v4 + 3520);
      if (!v579)
      {
        goto LABEL_45;
      }

      v580 = *(v579 + 8);
      if (!v580)
      {
        goto LABEL_45;
      }

      ++*(v580 + 5);
      v581 = WebKit::RemoteRenderingBackendProxy::connection(v580, a2, buf);
      v12 = *buf;
      if (*(v580 + 5) == 1)
      {
        (*(*v580 + 24))(v580, v581);
      }

      else
      {
        --*(v580 + 5);
      }

      if (!v12)
      {
        goto LABEL_45;
      }

      this = WTF::RefPtr<IPC::StreamClientConnection,WTF::RawPtrTraits<IPC::StreamClientConnection>,WTF::DefaultRefDerefTraits<IPC::StreamClientConnection>>::operator=((v4 + 3512), v12);
    }

    if ((*(v4 + 3584) & 1) == 0)
    {
      this = *(v4 + 3544);
      if (this)
      {
        WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteImageBufferProxy>(this, *(v4 + 3536), buf);
        this = *buf;
        if (*buf)
        {
          this = WebKit::RemoteImageBufferProxy::backingStoreWillChange(*buf, v708);
          v710 = *buf;
          *buf = 0;
          if (v710)
          {
            this = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::ImageBuffer,(WTF::DestructionThread)0>::deref((v710 + 8), v709);
          }
        }
      }

      *(v4 + 3584) = 1;
    }

    v2 = *(v4 + 3504);
    v197 = *(v12 + 128);
    v198 = INFINITY;
    if (fabs(v197) != INFINITY)
    {
      WTF::ApproximateTime::now(this);
      v198 = v197 + v199;
    }

    if (*(v12 + 64) == v2)
    {
      goto LABEL_275;
    }

    IPC::StreamClientConnectionBuffer::tryAcquire(v12 + 72, buf, v198);
    if (buf[16] != 1)
    {
      goto LABEL_987;
    }

    v401 = *&buf[8];
    if (*&buf[8] <= 1uLL)
    {
      __break(0xC471u);
      JUMPOUT(0x19E1B2618);
    }

    v402 = *buf;
    **buf = 3198;
    v403 = v402 + 2;
    if (v401 - 2 < (-v403 & 7 | 8uLL))
    {
      goto LABEL_987;
    }

    v404 = -v403 & 7;
    *(v403 + v404) = v2;
    v405 = 6;
    if (v404 > 6)
    {
      v405 = v404;
    }

    v406 = v405 + 10;
    v407 = (*(v12 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
    v408 = *(v12 + 72);
    if (v407 + 16 >= v408)
    {
      v407 = 0;
    }

    v27 = v406 + v407;
    if (v408 <= v27)
    {
      v27 = 0;
    }

    *(v12 + 88) = v27;
    v409 = *(v12 + 80);
    if (*(v409 + 8) > 0xFFuLL)
    {
      break;
    }

LABEL_1174:
    __break(1u);
LABEL_1175:
    atomic_store(v27, v2);
    IPC::StreamClientConnection::operator delete(v2);
LABEL_1117:
    this = WTF::ThreadSafeRefCounted<WebCore::Pattern,(WTF::DestructionThread)0>::deref(v12);
  }

  v410 = atomic_exchange((*(v409 + 16) + 128), v27);
  v411 = *(v12 + 124);
  if (v410 == 0x80000000 || v411)
  {
    v438 = v411 + 1;
    *(v12 + 124) = v438;
    if (v438 >= *(v12 + 120))
    {
      if (*(v12 + 112) == 1)
      {
        MEMORY[0x19EB16320](*(v12 + 100));
      }

      *(v12 + 124) = 0;
    }
  }

  *(v12 + 64) = v2;
LABEL_275:
  IPC::StreamClientConnectionBuffer::tryAcquire(v12 + 72, buf, v198);
  if ((buf[16] & 1) == 0)
  {
    goto LABEL_987;
  }

  v200 = *&buf[8];
  if (*&buf[8] <= 1uLL)
  {
    __break(0xC471u);
    JUMPOUT(0x19E1B1E04);
  }

  v201 = *buf;
  **buf = 1123;
  if (v200 != 2)
  {
    *(v201 + 2) = v766;
    v202 = (*(v12 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
    v203 = *(v12 + 72);
    if (v202 + 16 >= v203)
    {
      v202 = 0;
    }

    v204 = v202 + 16;
    if (v203 <= v204)
    {
      v27 = 0;
    }

    else
    {
      v27 = v204;
    }

    *(v12 + 88) = v27;
    v205 = *(v12 + 80);
    if (*(v205 + 8) > 0xFFuLL)
    {
      v206 = atomic_exchange((*(v205 + 16) + 128), v27);
      v207 = *(v12 + 124);
      if (v206 == 0x80000000 || v207)
      {
        v244 = v207 + 1;
        *(v12 + 124) = v244;
        if (v244 >= *(v12 + 120))
        {
          if (*(v12 + 112) == 1)
          {
            MEMORY[0x19EB16320](*(v12 + 100));
          }

          *(v12 + 124) = 0;
        }
      }

      goto LABEL_286;
    }

    goto LABEL_1174;
  }

  LODWORD(v27) = buf[16];
  if ((buf[16] & 1) == 0)
  {
    goto LABEL_1174;
  }

  IPC::StreamClientConnection::sendProcessOutOfStreamMessage(v12, *buf, *&buf[8]);
  if (!IPC::Connection::send<Messages::RemoteDisplayListRecorder::SetShouldSubpixelQuantizeFonts>(*(v12 + 8), &v766, v2))
  {
    goto LABEL_286;
  }

LABEL_987:
  v599 = qword_1ED6410D0;
  if (os_log_type_enabled(qword_1ED6410D0, OS_LOG_TYPE_DEFAULT))
  {
    v600 = IPC::errorAsString();
    *buf = 136446466;
    *&buf[4] = "RemoteDisplayListRecorder_SetShouldSubpixelQuantizeFonts";
    *&buf[12] = 2082;
    *&buf[14] = v600;
    _os_log_impl(&dword_19D52D000, v599, OS_LOG_TYPE_DEFAULT, "RemoteDisplayListRecorderProxy::send - failed, name:%{public}s, error:%{public}s", buf, 0x16u);
  }

  WebKit::RemoteDisplayListRecorderProxy::didBecomeUnresponsive(*(v4 + 3520));
LABEL_286:
  if (atomic_fetch_add(v12, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v12);
    IPC::StreamClientConnection::operator delete(v12);
  }

LABEL_45:
  if ((v6 & 0x8000) != 0)
  {
    LOBYTE(v766) = *(v5 - 390);
    v618 = *(v4 + 3512);
    if (v618)
    {
      atomic_fetch_add(v618, 1u);
    }

    else
    {
      v680 = *(v4 + 3520);
      if (!v680)
      {
        goto LABEL_46;
      }

      v681 = *(v680 + 8);
      if (!v681)
      {
        goto LABEL_46;
      }

      ++*(v681 + 5);
      v682 = WebKit::RemoteRenderingBackendProxy::connection(v681, a2, buf);
      v618 = *buf;
      if (*(v681 + 5) == 1)
      {
        (*(*v681 + 24))(v681, v682);
      }

      else
      {
        --*(v681 + 5);
      }

      if (!v618)
      {
        goto LABEL_46;
      }

      WTF::RefPtr<IPC::StreamClientConnection,WTF::RawPtrTraits<IPC::StreamClientConnection>,WTF::DefaultRefDerefTraits<IPC::StreamClientConnection>>::operator=((v4 + 3512), v618);
    }

    if ((*(v4 + 3584) & 1) == 0)
    {
      v619 = *(v4 + 3544);
      if (v619)
      {
        WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteImageBufferProxy>(v619, *(v4 + 3536), buf);
        if (*buf)
        {
          WebKit::RemoteImageBufferProxy::backingStoreWillChange(*buf, v747);
          v749 = *buf;
          *buf = 0;
          if (v749)
          {
            WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::ImageBuffer,(WTF::DestructionThread)0>::deref((v749 + 8), v748);
          }
        }
      }

      *(v4 + 3584) = 1;
    }

    if (IPC::StreamClientConnection::send<Messages::RemoteDisplayListRecorder::SetDrawLuminanceMask,WebKit::RemoteDisplayListRecorderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v618, &v766, *(v4 + 3504)))
    {
      v665 = qword_1ED6410D0;
      if (os_log_type_enabled(qword_1ED6410D0, OS_LOG_TYPE_DEFAULT))
      {
        v666 = IPC::errorAsString();
        *buf = 136446466;
        *&buf[4] = "RemoteDisplayListRecorder_SetDrawLuminanceMask";
        *&buf[12] = 2082;
        *&buf[14] = v666;
        _os_log_impl(&dword_19D52D000, v665, OS_LOG_TYPE_DEFAULT, "RemoteDisplayListRecorderProxy::send - failed, name:%{public}s, error:%{public}s", buf, 0x16u);
      }

      WebKit::RemoteDisplayListRecorderProxy::didBecomeUnresponsive(*(v4 + 3520));
    }

    if (atomic_fetch_add(v618, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v618);
      IPC::StreamClientConnection::operator delete(v618);
    }
  }

LABEL_46:
  *(v5 - 552) = 0;
  v31 = *(v4 + 668);
  if (!v31)
  {
    __break(0xC471u);
    JUMPOUT(0x19E1B1620);
  }

  v32 = *(v4 + 656) + 696 * v31;
  v33 = (v32 - 320);
  v34 = (v5 - 696);
  if (*(v32 - 8) == 1)
  {
    return WebCore::GraphicsContextState::operator=(v33, v34);
  }

  this = WebCore::GraphicsContextState::GraphicsContextState(v33, v34);
  *(v32 - 8) = 1;
  return this;
}