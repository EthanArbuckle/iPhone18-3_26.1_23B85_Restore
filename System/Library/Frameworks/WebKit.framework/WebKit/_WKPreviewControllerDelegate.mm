@interface _WKPreviewControllerDelegate
- (CGRect)previewController:(id)controller frameForPreviewItem:(id)item inSourceView:(id *)view;
- (_WKPreviewControllerDelegate)initWithSystemPreviewController:(void *)controller;
- (id).cxx_construct;
- (id)presentingViewController;
- (id)previewController:(id)controller transitionImageForPreviewItem:(id)item contentRect:(CGRect *)rect;
- (void)previewControllerDidDismiss:(id)dismiss;
@end

@implementation _WKPreviewControllerDelegate

- (_WKPreviewControllerDelegate)initWithSystemPreviewController:(void *)controller
{
  v9.receiver = self;
  v9.super_class = _WKPreviewControllerDelegate;
  v5 = [(_WKPreviewControllerDelegate *)&v9 init];
  if (v5)
  {
    if (controller)
    {
      WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(controller, controller);
      v6 = *controller;
      if (*controller)
      {
        atomic_fetch_add(v6, 1u);
      }
    }

    else
    {
      v6 = 0;
    }

    m_ptr = v5->_previewController.m_impl.m_ptr;
    v5->_previewController.m_impl.m_ptr = v6;
    if (m_ptr && atomic_fetch_add(m_ptr, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, m_ptr);
      WTF::fastFree(m_ptr, v4);
    }
  }

  return v5;
}

- (void)previewControllerDidDismiss:(id)dismiss
{
  v13 = *MEMORY[0x1E69E9840];
  m_ptr = self->_previewController.m_impl.m_ptr;
  if (m_ptr)
  {
    v4 = *(m_ptr + 1);
    if (v4)
    {
      ++*(v4 + 8);
      v5 = qword_1ED6413A0;
      if (os_log_type_enabled(qword_1ED6413A0, OS_LOG_TYPE_DEFAULT))
      {
        v6 = *(v4 + 96);
        v11 = 134217984;
        v12 = v6;
        _os_log_impl(&dword_19D52D000, v5, OS_LOG_TYPE_DEFAULT, "SystemPreview ended on %lld", &v11, 0xCu);
      }

      v7 = *(v4 + 240);
      *(v4 + 240) = 0;
      if (v7)
      {
      }

      v8 = *(v4 + 248);
      *(v4 + 248) = 0;
      if (v8)
      {
      }

      v9 = *(v4 + 232);
      *(v4 + 232) = 0;
      if (v9)
      {
      }

      v10 = *(v4 + 256);
      *(v4 + 256) = 0;
      if (v10)
      {
      }

      *(v4 + 12) = 0;

      WTF::RefCounted<WebKit::SystemPreviewController>::deref((v4 + 8));
    }
  }
}

- (id)presentingViewController
{
  m_ptr = self->_previewController.m_impl.m_ptr;
  if (!m_ptr)
  {
    return 0;
  }

  v3 = *(m_ptr + 1);
  if (!v3)
  {
    return 0;
  }

  v5 = *(v3 + 8);
  v4 = v3 + 8;
  *v4 = v5 + 1;
  v6 = *(v4 + 8);
  if (v6 && (v7 = *(v6 + 8)) != 0)
  {
    CFRetain(*(v7 - 8));
    v8 = (*(**(v7 + 104) + 504))(*(v7 + 104));
    CFRelease(*(v7 - 8));
  }

  else
  {
    v8 = 0;
  }

  WTF::RefCounted<WebKit::SystemPreviewController>::deref(v4);
  return v8;
}

- (CGRect)previewController:(id)controller frameForPreviewItem:(id)item inSourceView:(id *)view
{
  v7 = [(_WKPreviewControllerDelegate *)self presentingViewController:controller];
  if (v7 && (m_ptr = self->_previewController.m_impl.m_ptr) != 0 && (v9 = *(m_ptr + 1)) != 0)
  {
    ++*(v9 + 8);
    v10 = *(v9 + 16);
    if (v10 && (v11 = *(v10 + 8)) != 0)
    {
      v12 = v7;
      CFRetain(*(v11 - 8));
      view = [v12 view];
      *view = view;
      if (*(v9 + 120) < 1 || *(v9 + 124) < 1)
      {
        [view frame];
        v23 = v22;
        [*view frame];
        v25 = v24;
        [*view frame];
        v27 = v26;
        [*view frame];
        v19 = v23 * 0.5;
        v21 = v25 * 0.5;
        v15 = (v27 - v23 * 0.5) * 0.5;
        v17 = (v28 - v25 * 0.5) * 0.5;
      }

      else
      {
        WebKit::WebPageProxy::syncRootViewToScreen((v11 - 16), (v9 + 112));
        WebCore::IntRect::operator CGRect();
        v15 = v14;
        v17 = v16;
        v19 = v18;
        v21 = v20;
      }

      CFRelease(*(v11 - 8));
    }

    else
    {
      v15 = *MEMORY[0x1E695F058];
      v17 = *(MEMORY[0x1E695F058] + 8);
      v19 = *(MEMORY[0x1E695F058] + 16);
      v21 = *(MEMORY[0x1E695F058] + 24);
    }

    WTF::RefCounted<WebKit::SystemPreviewController>::deref((v9 + 8));
  }

  else
  {
    v15 = *MEMORY[0x1E695F058];
    v17 = *(MEMORY[0x1E695F058] + 8);
    v19 = *(MEMORY[0x1E695F058] + 16);
    v21 = *(MEMORY[0x1E695F058] + 24);
  }

  v29 = v15;
  v30 = v17;
  v31 = v19;
  v32 = v21;
  result.size.height = v32;
  result.size.width = v31;
  result.origin.y = v30;
  result.origin.x = v29;
  return result;
}

- (id)previewController:(id)controller transitionImageForPreviewItem:(id)item contentRect:(CGRect *)rect
{
  v7 = *(MEMORY[0x1E695F058] + 16);
  rect->origin = *MEMORY[0x1E695F058];
  rect->size = v7;
  v8 = [(_WKPreviewControllerDelegate *)self presentingViewController:controller];
  if (v8)
  {
    v9 = v8;
    if (self->_linkRect.m_size.m_width < 1 || self->_linkRect.m_size.m_height <= 0)
    {
      [objc_msgSend(v8 view];
      v19 = v18 * 0.5;
      [objc_msgSend(v9 "view")];
      rect->origin = v25;
      rect->size.width = v19;
      rect->size.height = v20 * 0.5;
    }

    else
    {
      m_ptr = self->_previewController.m_impl.m_ptr;
      if (m_ptr)
      {
        v11 = *(m_ptr + 1);
        if (v11)
        {
          v13 = *(v11 + 8);
          v12 = v11 + 8;
          *v12 = v13 + 1;
          v14 = *(v12 + 8);
          if (v14)
          {
            v15 = *(v14 + 8);
            if (v15)
            {
              CFRetain(*(v15 - 8));
              WebKit::WebPageProxy::syncRootViewToScreen((v15 - 16), &self->_linkRect);
              rect->origin = *MEMORY[0x1E695EFF8];
              rect->size.width = v16;
              rect->size.height = v17;
              CFRelease(*(v15 - 8));
            }
          }

          WTF::RefCounted<WebKit::SystemPreviewController>::deref(v12);
        }
      }
    }
  }

  v21 = objc_opt_new();
  v22 = v21;
  if (v21)
  {
    v23 = v21;
  }

  return v22;
}

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  *(self + 3) = 0;
  return self;
}

@end