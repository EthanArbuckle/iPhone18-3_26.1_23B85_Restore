@interface WKUSDPreviewView
- (id).cxx_construct;
- (id)web_initWithFrame:(CGRect)a3 webView:(id)a4 mimeType:(id)a5;
- (void)_layoutThumbnailView;
- (void)thumbnailView:(id)a3 wantsToPresentPreviewController:(id)a4 forItem:(id)a5;
- (void)web_countStringMatches:(id)a3 options:(unint64_t)a4 maxCount:(unint64_t)a5;
- (void)web_findString:(id)a3 options:(unint64_t)a4 maxCount:(unint64_t)a5;
- (void)web_setContentProviderData:(id)a3 suggestedFilename:(id)a4 completionHandler:(id)a5;
@end

@implementation WKUSDPreviewView

- (id)web_initWithFrame:(CGRect)a3 webView:(id)a4 mimeType:(id)a5
{
  v13.receiver = self;
  v13.super_class = WKUSDPreviewView;
  v7 = [(WKApplicationStateTrackingView *)&v13 initWithFrame:a3.origin.x webView:a3.origin.y, a3.size.width, a3.size.height];
  if (v7)
  {
    v8 = [MEMORY[0x1E69DC888] colorWithRed:0.149019608 green:0.149019608 blue:0.149019608 alpha:1.0];
    [(WKUSDPreviewView *)v7 setBackgroundColor:v8];
    v7->_webView = a4;
    if (a5)
    {
      v9 = a5;
    }

    m_ptr = v7->_mimeType.m_ptr;
    v7->_mimeType.m_ptr = a5;
    if (m_ptr)
    {
    }

    v11 = [a4 scrollView];
    [v11 setMinimumZoomScale:1.0];
    [v11 setMaximumZoomScale:1.0];
    [v11 setBackgroundColor:v8];
  }

  return v7;
}

- (void)web_setContentProviderData:(id)a3 suggestedFilename:(id)a4 completionHandler:(id)a5
{
  v8 = [a4 copy];
  m_ptr = self->_suggestedFilename.m_ptr;
  self->_suggestedFilename.m_ptr = v8;
  if (m_ptr)
  {
  }

  v10 = [a3 copy];
  v12 = self->_data.m_ptr;
  self->_data.m_ptr = v10;
  if (v12)
  {
  }

  WebCore::copyLocalizedString(&arg, @"View 3D Object?", v11);
  v14 = arg;
  arg = 0;
  if (v14)
  {
    CFAutorelease(v14);
    v15 = arg;
    arg = 0;
    if (v15)
    {
      CFRelease(v15);
    }
  }

  WebCore::copyLocalizedString(&arg, @"You can see a preview of this object before viewing in 3D.", v13);
  v16 = arg;
  arg = 0;
  if (v16)
  {
    CFAutorelease(v16);
    v17 = arg;
    arg = 0;
    if (v17)
    {
      CFRelease(v17);
    }
  }

  WebKit::createUIAlertController(v14, v16, &v42);
  v18 = MEMORY[0x1E69DC648];
  WebCore::copyLocalizedString(&arg, @"View 3D Object (QuickLook Preview)", v19);
  v20 = arg;
  arg = 0;
  if (v20)
  {
    CFAutorelease(v20);
    v21 = arg;
    arg = 0;
    if (v21)
    {
      CFRelease(v21);
    }
  }

  v39[0] = MEMORY[0x1E69E9820];
  v39[1] = 3321888768;
  v39[2] = __83__WKUSDPreviewView_web_setContentProviderData_suggestedFilename_completionHandler___block_invoke;
  v39[3] = &__block_descriptor_48_e8_32c96_ZTSKZ83__WKUSDPreviewView_web_setContentProviderData_suggestedFilename_completionHandler__E3__1_e23_v16__0__UIAlertAction_8l;
  arg = 0;
  objc_initWeak(&arg, self);
  aBlock = _Block_copy(a5);
  v40 = 0;
  objc_copyWeak(&v40, &arg);
  v41 = _Block_copy(aBlock);
  v22 = [v18 actionWithTitle:v20 style:0 handler:v39];
  _Block_release(aBlock);
  objc_destroyWeak(&arg);
  v23 = MEMORY[0x1E69DC648];
  WebCore::copyLocalizedString(&arg, @"Cancel (QuickLook Preview)", v24);
  v25 = arg;
  arg = 0;
  if (v25)
  {
    CFAutorelease(v25);
    v26 = arg;
    arg = 0;
    if (v26)
    {
      CFRelease(v26);
    }
  }

  v32 = MEMORY[0x1E69E9820];
  v33 = 3321888768;
  v34 = __83__WKUSDPreviewView_web_setContentProviderData_suggestedFilename_completionHandler___block_invoke_65;
  v35 = &__block_descriptor_40_e8_32c96_ZTSKZ83__WKUSDPreviewView_web_setContentProviderData_suggestedFilename_completionHandler__E3__2_e23_v16__0__UIAlertAction_8l;
  v27 = _Block_copy(a5);
  v36 = _Block_copy(v27);
  v28 = [v23 actionWithTitle:v25 style:1 handler:&v32];
  _Block_release(v27);
  [v42 addAction:{v28, v32, v33, v34, v35}];
  [v42 addAction:v22];
  v29 = self->_webView->_page.m_ptr;
  if (v29)
  {
    CFRetain(*(v29 + 1));
  }

  v30 = (*(**(v29 + 15) + 504))(*(v29 + 15));
  [v30 presentViewController:v42 animated:1 completion:0];
  CFRelease(*(v29 + 1));
  _Block_release(v36);
  _Block_release(v41);
  objc_destroyWeak(&v40);
  v31 = v42;
  v42 = 0;
  if (v31)
  {
  }
}

void __83__WKUSDPreviewView_web_setContentProviderData_suggestedFilename_completionHandler___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    MEMORY[0x19EB02040](&v20, WeakRetained[56]);
    if (WebCore::MIMETypeRegistry::isUSDMIMEType(&v20, v4))
    {
      WebCore::UTIFromMIMEType(&v22, &v20, v5);
      v6 = v22;
      if (v22)
      {
        atomic_fetch_add_explicit(v22, 2u, memory_order_relaxed);
        MEMORY[0x19EB00B70](&v21, v6);
        if (atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v6, v5);
        }
      }

      else
      {
        v21 = &stru_1F1147748;
        v8 = &stru_1F1147748;
      }

      v9 = v22;
      v22 = 0;
      if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v9, v5);
      }
    }

    else
    {
      v21 = 0;
    }

    v10 = v20;
    v20 = 0;
    if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      v10 = WTF::StringImpl::destroy(v10, v5);
    }

    v11 = objc_alloc((*MEMORY[0x1E69E2220])(v10));
    v12 = [v11 initWithDataProvider:v3 contentType:v21 previewTitle:*(v3 + 55)];
    v13 = *(v3 + 57);
    *(v3 + 57) = v12;
    if (v13)
    {

      v12 = *(v3 + 57);
    }

    [v12 setUseLoadingTimeout:0];
    v14 = [objc_alloc(getASVThumbnailViewClass()) init];
    v15 = *(v3 + 58);
    *(v3 + 58) = v14;
    if (v15)
    {

      v14 = *(v3 + 58);
    }

    [v14 setDelegate:v3];
    [v3 setAutoresizingMask:18];
    [v3 setAutoresizesSubviews:1];
    [v3 setClipsToBounds:1];
    [v3 addSubview:*(v3 + 58)];
    [v3 _layoutThumbnailView];
    [objc_msgSend(objc_msgSend(objc_msgSend(v3 "window")];
    if (v16 >= v17)
    {
      v18 = v17;
    }

    else
    {
      v18 = v16;
    }

    [*(v3 + 58) setMaxThumbnailSize:{v18, v18}];
    [*(v3 + 58) setThumbnailItem:*(v3 + 57)];
    (*(*(a1 + 40) + 16))();
    v19 = v21;
    v21 = 0;
    if (v19)
    {
    }
  }

  else
  {
    v7 = *(*(a1 + 40) + 16);

    v7();
  }
}

- (void)_layoutThumbnailView
{
  if (self->_thumbnailView.m_ptr)
  {
    [(WKWebView *)self->_webView _computedUnobscuredSafeAreaInset];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9;
    [(WKWebView *)self->_webView _computedObscuredInset];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;
    [(WKUSDPreviewView *)self frame];
    [(ASVThumbnailView *)self->_thumbnailView.m_ptr setFrame:v6 + v19, v4 + v20, v21 - (v6 + v10) - (v14 + v18), v22 - (v4 + v8) - (v12 + v16)];
    m_ptr = self->_thumbnailView.m_ptr;

    [(ASVThumbnailView *)m_ptr setAutoresizingMask:18];
  }
}

- (void)thumbnailView:(id)a3 wantsToPresentPreviewController:(id)a4 forItem:(id)a5
{
  m_ptr = self->_webView->_page.m_ptr;
  if (m_ptr)
  {
    CFRetain(*(m_ptr + 1));
  }

  [(*(**(m_ptr + 15) + 504))(*(m_ptr + 15) a2];
  v7 = *(m_ptr + 1);

  CFRelease(v7);
}

- (void)web_countStringMatches:(id)a3 options:(unint64_t)a4 maxCount:(unint64_t)a5
{
  m_ptr = self->_webView->_page.m_ptr;
  if (m_ptr)
  {
    CFRetain(*(m_ptr + 1));
  }

  v7 = *(m_ptr + 16);
  MEMORY[0x19EB02040](&v10, a3, a3, a4, a5);
  (*(*v7 + 16))(v7, m_ptr, &v10, 0);
  v9 = v10;
  v10 = 0;
  if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v9, v8);
  }

  CFRelease(*(m_ptr + 1));
}

- (void)web_findString:(id)a3 options:(unint64_t)a4 maxCount:(unint64_t)a5
{
  m_ptr = self->_webView->_page.m_ptr;
  if (m_ptr)
  {
    CFRetain(*(m_ptr + 1));
  }

  v7 = *(m_ptr + 16);
  MEMORY[0x19EB02040](&v10, a3, a3, a4, a5);
  (*(*v7 + 32))(v7, m_ptr, &v10);
  v9 = v10;
  v10 = 0;
  if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v9, v8);
  }

  CFRelease(*(m_ptr + 1));
}

- (id).cxx_construct
{
  *(self + 53) = 0;
  *(self + 54) = 0;
  *(self + 55) = 0;
  *(self + 56) = 0;
  *(self + 57) = 0;
  *(self + 58) = 0;
  return self;
}

@end