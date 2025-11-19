@interface WKModelView
- (BOOL)createFileForModel:(void *)a3;
- (WKModelView)initWithModel:(void *)a3 layerID:()ProcessQualified<WTF:()WTF:(unsigned long long>>)a4 :(void *)a5 ObjectIdentifierMainThreadAccessTraits<uint64_t> :ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType page:;
- (id).cxx_construct;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (void)createPreview;
- (void)layoutSubviews;
- (void)updateBounds;
@end

@implementation WKModelView

- (WKModelView)initWithModel:(void *)a3 layerID:()ProcessQualified<WTF:()WTF:(unsigned long long>>)a4 :(void *)a5 ObjectIdentifierMainThreadAccessTraits<uint64_t> :ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType page:
{
  m_identifier = a4.m_processIdentifier.m_identifier;
  v7 = a4.m_object.m_identifier;
  v9 = *(MEMORY[0x1E695F058] + 16);
  self->_lastBounds.origin = *MEMORY[0x1E695F058];
  self->_lastBounds.size = v9;
  v9.width = self->_lastBounds.origin.x;
  y = self->_lastBounds.origin.y;
  width = self->_lastBounds.size.width;
  height = self->_lastBounds.size.height;
  v19.receiver = self;
  v19.super_class = WKModelView;
  v13 = [(WKModelView *)&v19 initWithFrame:v9.width, y, width, height];
  v14 = v13;
  if (v13)
  {
    v13->_layerID.m_value.m_object.m_identifier = v7;
    v13->_layerID.m_value.m_processIdentifier.m_identifier = m_identifier;
    WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(a5 + 6, a5 + 16);
    v16 = *(a5 + 3);
    atomic_fetch_add(v16, 1u);
    m_ptr = v14->_page.m_impl.m_ptr;
    v14->_page.m_impl.m_ptr = v16;
    if (m_ptr && atomic_fetch_add(m_ptr, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, m_ptr);
      WTF::fastFree(m_ptr, v15);
    }

    [(WKModelView *)v14 createFileForModel:a3];
    [(WKModelView *)v14 updateBounds];
  }

  return v14;
}

- (BOOL)createFileForModel:(void *)a3
{
  WebKit::WebsiteDataStore::defaultModelElementCacheDirectory(MEMORY[0x1E696EBA0], &v17);
  if (!v17)
  {
    return 0;
  }

  if (!*(v17 + 1))
  {
    goto LABEL_5;
  }

  if (WTF::FileSystemImpl::fileExists(&v17, v5))
  {
    if ((WTF::FileSystemImpl::fileTypeFollowingSymlinks(&v17, v6) & 0x1FFFFFFFFLL) != 0x100000001)
    {
LABEL_5:
      v7 = 0;
LABEL_24:
      v15 = v17;
      v17 = 0;
      if (v15)
      {
        if (atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v15, v5);
        }
      }

      return v7;
    }
  }

  else if (!WTF::FileSystemImpl::makeAllDirectories(&v17, v6))
  {
    goto LABEL_5;
  }

  WTF::UUID::UUID(&v19);
  v18[0] = ".usdz";
  v18[1] = 6;
  result = WTF::tryMakeString<WTF::UUID,WTF::ASCIILiteral>(&v19, v18, &v16);
  if (v16)
  {
    WTF::FileSystemImpl::pathByAppendingComponent();
    WTF::FileSystemImpl::openFile();
    v7 = LODWORD(v18[0]) != -1;
    if (LODWORD(v18[0]) != -1)
    {
      v9 = *(a3 + 1);
      atomic_fetch_add(v9 + 2, 1u);
      WebCore::SharedBuffer::span(v9);
      WTF::FileSystemImpl::FileHandle::write();
      if (v9 && atomic_fetch_add(v9 + 2, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v9 + 2);
        (*(*v9 + 8))(v9);
      }

      v11 = v19;
      if (v19)
      {
        atomic_fetch_add_explicit(v19, 2u, memory_order_relaxed);
      }

      m_ptr = self->_filePath.m_impl.m_ptr;
      self->_filePath.m_impl.m_ptr = v11;
      if (m_ptr && atomic_fetch_add_explicit(m_ptr, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(m_ptr, v10);
      }
    }

    WTF::FileSystemImpl::FileHandle::~FileHandle(v18);
    v13 = v19;
    v19 = 0;
    if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v13, v5);
    }

    v14 = v16;
    v16 = 0;
    if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v14, v5);
    }

    goto LABEL_24;
  }

  __break(0xC471u);
  return result;
}

- (void)createPreview
{
  if (self->_filePath.m_impl.m_ptr)
  {
    [(WKModelView *)self bounds];
    v7 = [objc_alloc(getASVInlinePreviewClass()) initWithFrame:{v3, v4, v5, v6}];
    m_ptr = self->_preview.m_ptr;
    self->_preview.m_ptr = v7;
    if (m_ptr)
    {
    }

    [-[WKModelView layer](self "layer")];
    v9 = objc_alloc(MEMORY[0x1E695DFF8]);
    v10 = self->_filePath.m_impl.m_ptr;
    if (v10)
    {
      atomic_fetch_add_explicit(v10, 2u, memory_order_relaxed);
      MEMORY[0x19EB00B70](&v22, v10);
      if (atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v10, v11);
      }
    }

    else
    {
      v22 = &stru_1F1147748;
      v12 = &stru_1F1147748;
    }

    v13 = [v9 initFileURLWithPath:v22];
    v14 = v22;
    v22 = 0;
    if (v14)
    {
    }

    v15 = self->_preview.m_ptr;
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3321888768;
    v20[2] = __28__WKModelView_createPreview__block_invoke;
    v20[3] = &unk_1F110D888;
    v20[4] = self;
    v21 = v13;
    if (v13)
    {
      v16 = v13;
    }

    [(ASVInlinePreview *)v15 setupRemoteConnectionWithCompletionHandler:v20];
    v17 = objc_alloc_init(WKModelInteractionGestureRecognizer);
    v18 = self->_modelInteractionGestureRecognizer.m_ptr;
    self->_modelInteractionGestureRecognizer.m_ptr = v17;
    if (v18)
    {

      v17 = self->_modelInteractionGestureRecognizer.m_ptr;
    }

    [(WKModelView *)self addGestureRecognizer:v17];
    v19 = v21;
    v21 = 0;
    if (!v19)
    {
      if (!v13)
      {
        return;
      }

LABEL_18:

      return;
    }

    if (v13)
    {
      goto LABEL_18;
    }
  }
}

WTF::StringImpl *__28__WKModelView_createPreview__block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    v3 = v2[60];
    if (!v3 || (v4 = *(v3 + 8)) == 0 || (v5 = v2 + 58, (v6 = *v5) == 0))
    {
      __break(0xC471u);
      JUMPOUT(0x19DE597ECLL);
    }

    v7 = v4 - 16;
    v8 = v5[1];
    MEMORY[0x19EB04D40](&v17);
    v22[0] = v6;
    v22[1] = v8;
    v21[0] = v22;
    v21[1] = &v17;
    WebKit::WebPageProxy::send<Messages::WebPage::ModelInlinePreviewDidFailToLoad>(v7, v21);
    v10 = v20;
    v20 = 0;
    if (v10)
    {
    }

    v11 = v19;
    v19 = 0;
    if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v11, v9);
    }

    v12 = v18;
    v18 = 0;
    if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v12, v9);
    }

    result = v17;
    v17 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(result, v9);
      }
    }
  }

  else
  {
    v14 = v2[51];
    v15 = *(a1 + 40);
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __28__WKModelView_createPreview__block_invoke_2;
    v16[3] = &unk_1E7633858;
    v16[4] = v2;
    return [v14 preparePreviewOfFileAtURL:v15 completionHandler:v16];
  }

  return result;
}

WTF::StringImpl *__28__WKModelView_createPreview__block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 480);
  if (!a2)
  {
    if (!v3 || (v14 = *(v3 + 8)) == 0)
    {
      __break(0xC471u);
      JUMPOUT(0x19DE5998CLL);
    }

    v15 = (v2 + 464);
    v16 = *v15;
    if (*v15)
    {
      v17 = v15[1];
      v18 = v16;
      v19 = v17;
      v23[0] = &v18;
      return WebKit::WebPageProxy::send<Messages::WebPage::ModelInlinePreviewDidLoad>(v14 - 16, v23);
    }

LABEL_24:
    __break(0xC471u);
    JUMPOUT(0x19DE5996CLL);
  }

  if (!v3)
  {
    goto LABEL_24;
  }

  v4 = *(v3 + 8);
  if (!v4)
  {
    goto LABEL_24;
  }

  v5 = (v2 + 464);
  v6 = *v5;
  if (!*v5)
  {
    __break(0xC471u);
    JUMPOUT(0x19DE599ACLL);
  }

  v7 = v4 - 16;
  v8 = v5[1];
  MEMORY[0x19EB04D40](&v18);
  v23[0] = v6;
  v23[1] = v8;
  v22[0] = v23;
  v22[1] = &v18;
  WebKit::WebPageProxy::send<Messages::WebPage::ModelInlinePreviewDidFailToLoad>(v7, v22);
  v10 = v21;
  v21 = 0;
  if (v10)
  {
  }

  v11 = v20;
  v20 = 0;
  if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v11, v9);
  }

  v12 = v19;
  v19 = 0;
  if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v12, v9);
  }

  result = v18;
  v18 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v9);
    }
  }

  return result;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = WKModelView;
  [(WKModelView *)&v3 layoutSubviews];
  [(WKModelView *)self updateBounds];
}

- (void)updateBounds
{
  [(WKModelView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v14.origin.x = v3;
  v14.origin.y = v5;
  v14.size.width = v7;
  v14.size.height = v9;
  if (!CGRectEqualToRect(self->_lastBounds, v14))
  {
    self->_lastBounds.origin.x = v4;
    self->_lastBounds.origin.y = v6;
    self->_lastBounds.size.width = v8;
    self->_lastBounds.size.height = v10;
    m_ptr = self->_preview.m_ptr;
    if (m_ptr)
    {
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __27__WKModelView_updateBounds__block_invoke;
      v12[3] = &unk_1E76338A8;
      v12[4] = self;
      *&v12[5] = v4;
      *&v12[6] = v6;
      *&v12[7] = v8;
      *&v12[8] = v10;
      [(ASVInlinePreview *)m_ptr updateFrame:v12 completionHandler:v4, v6, v8, v10];
    }

    else
    {

      [(WKModelView *)self createPreview];
    }
  }
}

void __27__WKModelView_updateBounds__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  if (a3)
  {

    [a2 invalidate];
  }

  else
  {
    v9 = v3;
    v10 = v4;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __27__WKModelView_updateBounds__block_invoke_2;
    v6[3] = &unk_1E7633880;
    v6[4] = *(a1 + 32);
    v6[5] = a2;
    v5 = *(a1 + 56);
    v7 = *(a1 + 40);
    v8 = v5;
    dispatch_async(MEMORY[0x1E69E96A0], v6);
  }
}

uint64_t __27__WKModelView_updateBounds__block_invoke_2(uint64_t a1)
{
  [objc_msgSend(objc_msgSend(*(a1 + 32) "layer")];
  [*(*(a1 + 32) + 408) setFrameWithinFencedTransaction:{*(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72)}];
  v2 = *(a1 + 40);

  return [v2 invalidate];
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  if ([(WKModelView *)self pointInside:a4 withEvent:a3.x, a3.y])
  {
    return self;
  }

  else
  {
    return 0;
  }
}

- (id).cxx_construct
{
  *(self + 51) = 0;
  *(self + 52) = 0;
  *(self + 53) = 0;
  *(self + 58) = 0;
  *(self + 59) = 0;
  *(self + 60) = 0;
  return self;
}

@end