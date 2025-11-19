@interface _WKPreviewControllerDataSource
- (_WKPreviewControllerDataSource)initWithSystemPreviewController:(void *)a3 MIMEType:(id)a4 originatingPageURL:(URL *)a5;
- (id).cxx_construct;
- (id)previewController:(id)a3 previewItemAtIndex:(int64_t)a4;
- (void)dealloc;
- (void)failWithError:(id)a3;
- (void)finish:(URL *)a3;
- (void)previewItem:(id)a3 didReceiveMessage:(id)a4;
- (void)setProgress:(float)a3;
@end

@implementation _WKPreviewControllerDataSource

- (_WKPreviewControllerDataSource)initWithSystemPreviewController:(void *)a3 MIMEType:(id)a4 originatingPageURL:(URL *)a5
{
  v14.receiver = self;
  v14.super_class = _WKPreviewControllerDataSource;
  v9 = [(_WKPreviewControllerDataSource *)&v14 init];
  if (v9)
  {
    if (a3)
    {
      WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(a3, a3);
      v10 = *a3;
      if (*a3)
      {
        atomic_fetch_add(v10, 1u);
      }
    }

    else
    {
      v10 = 0;
    }

    v11 = *(v9 + 13);
    *(v9 + 13) = v10;
    if (v11 && atomic_fetch_add(v11, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v11);
      WTF::fastFree(v11, v8);
    }

    WTF::String::operator=(v9 + 3, a5);
    v12 = *&a5->m_hostEnd;
    *(v9 + 2) = *(a5 + 8);
    *(v9 + 3) = v12;
    *(v9 + 15) = [a4 copy];
  }

  return v9;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = _WKPreviewControllerDataSource;
  [(_WKPreviewControllerDataSource *)&v3 dealloc];
}

- (id)previewController:(id)a3 previewItemAtIndex:(int64_t)a4
{
  v34[1] = *MEMORY[0x1E69E9840];
  m_ptr = self->_item.m_ptr;
  if (!m_ptr)
  {
    v6 = objc_alloc_init(MEMORY[0x1E696ACA0]);
    v7 = self->_itemProvider.m_ptr;
    self->_itemProvider.m_ptr = v6;
    if (v7)
    {
    }

    WTF::StringImpl::createWithoutCopyingNonEmpty();
    v29 = location;
    WebCore::UTIFromMIMEType(&to, &v29, v8);
    v9 = to;
    if (to)
    {
      atomic_fetch_add_explicit(to, 2u, memory_order_relaxed);
      MEMORY[0x19EB00B70](&v31, v9);
      if (atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v9, v10);
      }
    }

    else
    {
      v31 = &stru_1F1147748;
      v11 = &stru_1F1147748;
    }

    v12 = to;
    to = 0;
    if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v12, v10);
    }

    v13 = v29;
    v29 = 0;
    if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      v13 = WTF::StringImpl::destroy(v13, v10);
    }

    v14 = objc_alloc(WebKit::getARQuickLookPreviewItemClass[0](v13));
    WTF::URL::createCFURL(&location, &self->_downloadedURL);
    v15 = [v14 initWithFileAtURL:location];
    v16 = location;
    location = 0;
    if (v16)
    {
    }

    WTF::URL::createCFURL(&location, &self->_originatingPageURL);
    [v15 setCanonicalWebPageURL:location];
    v17 = location;
    location = 0;
    if (v17)
    {
    }

    v18 = objc_alloc(getARQuickLookWebKitItemClass());
    v19 = [v18 initWithPreviewItemProvider:self->_itemProvider.m_ptr contentType:v31 previewTitle:@"Preview" fileSize:&unk_1F11848C0 previewItem:v15];
    v20 = self->_item.m_ptr;
    self->_item.m_ptr = v19;
    if (v20)
    {

      v19 = self->_item.m_ptr;
    }

    [(ARQuickLookWebKitItem *)v19 setDelegate:self];
    if (objc_opt_respondsToSelector())
    {
      WTF::URL::createCFURL(&location, &self->_originatingPageURL);
      v21 = self->_item.m_ptr;
      v33 = @"ARQLWebsiteURLParameterKey";
      v34[0] = location;
      -[ARQuickLookWebKitItem setAdditionalParameters:](v21, "setAdditionalParameters:", [MEMORY[0x1E695DF20] dictionaryWithObjects:v34 forKeys:&v33 count:1]);
      v22 = location;
      location = 0;
      if (v22)
      {
      }
    }

    [(ARQuickLookWebKitItem *)self->_item.m_ptr setUseLoadingTimeout:0];
    location = 0;
    objc_initWeak(&location, self);
    v23 = self->_itemProvider.m_ptr;
    v24 = v31;
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3321888768;
    v27[2] = __71___WKPreviewControllerDataSource_previewController_previewItemAtIndex___block_invoke;
    v27[3] = &__block_descriptor_40_e8_32c84_ZTSKZ71___WKPreviewControllerDataSource_previewController_previewItemAtIndex__E3__0_e63_v32__0___v_____NSSecureCoding____NSError__8_16__NSDictionary_24l;
    to = 0;
    objc_moveWeak(&to, &location);
    v28 = 0;
    objc_copyWeak(&v28, &to);
    [(NSItemProvider *)v23 registerItemForTypeIdentifier:v24 loadHandler:v27];
    objc_destroyWeak(&to);
    m_ptr = self->_item.m_ptr;
    objc_destroyWeak(&v28);
    objc_destroyWeak(&location);
    if (v15)
    {
    }

    v25 = v31;
    v31 = 0;
    if (v25)
    {
    }
  }

  return m_ptr;
}

- (void)setProgress:(float)a3
{
  m_ptr = self->_item.m_ptr;
  if (m_ptr)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithFloat:?];

    [(ARQuickLookWebKitItem *)m_ptr setPreviewItemProviderProgress:v4];
  }
}

- (void)finish:(URL *)a3
{
  WTF::String::operator=(&self->_downloadedURL, a3);
  v5 = *&a3->m_hostEnd;
  *(&self->_downloadedURL + 8) = *(a3 + 8);
  *&self->_downloadedURL.m_hostEnd = v5;
  if ([(_WKPreviewControllerDataSource *)self completionHandler])
  {
    v6 = [(_WKPreviewControllerDataSource *)self completionHandler];
    WTF::URL::createCFURL(&v8, a3);
    v6[2](v6, v8, 0);
    v7 = v8;
    v8 = 0;
    if (v7)
    {
    }
  }
}

- (void)failWithError:(id)a3
{
  if ([(_WKPreviewControllerDataSource *)self completionHandler])
  {
    v4 = *([(_WKPreviewControllerDataSource *)self completionHandler]+ 16);

    v4();
  }
}

- (void)previewItem:(id)a3 didReceiveMessage:(id)a4
{
  m_ptr = self->_previewController.m_impl.m_ptr;
  if (m_ptr)
  {
    v5 = *(m_ptr + 1);
    if (v5)
    {
      ++*(v5 + 2);
      if ([objc_msgSend(objc_msgSend(a4 objectForKeyedSubscript:{@"callToAction", "stringValue"), "isEqualToString:", @"buttonTapped"}])
      {
        WebKit::SystemPreviewController::triggerSystemPreviewAction(v5);
      }

      WTF::RefCounted<WebKit::SystemPreviewController>::deref(v5 + 1);
    }
  }
}

- (id).cxx_construct
{
  self->_itemProvider.m_ptr = 0;
  self->_item.m_ptr = 0;
  WTF::URL::URL(&self->_originatingPageURL);
  WTF::URL::URL(&self->_downloadedURL);
  self->_previewController.m_impl.m_ptr = 0;
  return self;
}

@end