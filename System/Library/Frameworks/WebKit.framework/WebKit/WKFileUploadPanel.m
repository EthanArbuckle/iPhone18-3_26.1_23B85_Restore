@interface WKFileUploadPanel
- (WKFileUploadPanel)initWithView:(id)a3;
- (void)_cancel;
- (void)_chooseFiles:(id)a3 displayString:(id)a4 iconImage:(id)a5;
- (void)_chooseMediaItems:(id)a3;
- (void)_dispatchDidDismiss;
- (void)dealloc;
- (void)presentWithParameters:(void *)a3 resultListener:(void *)a4;
@end

@implementation WKFileUploadPanel

- (WKFileUploadPanel)initWithView:(id)a3
{
  v7.receiver = self;
  v7.super_class = WKFileUploadPanel;
  v4 = [(WKFileUploadPanel *)&v7 init];
  v5 = v4;
  if (v4)
  {
    objc_storeWeak(&v4->_view.m_weakReference, a3);
  }

  return v5;
}

- (void)dealloc
{
  [(UIImagePickerController *)self->_cameraPicker.m_ptr setDelegate:0];
  [(UIDocumentPickerViewController *)self->_documentPickerController.m_ptr setDelegate:0];
  [(WKFileUploadPanel *)self resetContextMenuPresenter];
  v3.receiver = self;
  v3.super_class = WKFileUploadPanel;
  [(WKFileUploadPanel *)&v3 dealloc];
}

- (void)_dispatchDidDismiss
{
  objc_loadWeak(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    Weak = objc_loadWeak(&self->_delegate);

    [Weak fileUploadPanelDidDismiss:self];
  }
}

- (void)_cancel
{
  m_ptr = self->_listener.m_ptr;
  if (m_ptr)
  {
    WebKit::WebOpenPanelResultListenerProxy::cancel(m_ptr);
  }

  [(WKFileUploadPanel *)self _dispatchDidDismiss];
}

- (void)_chooseMediaItems:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = [MEMORY[0x1E695DF70] array];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v6 = 0;
  v7 = 0;
  v8 = [a3 countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v8)
  {
    v9 = *v20;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v20 != v9)
        {
          objc_enumerationMutation(a3);
        }

        v11 = *(*(&v19 + 1) + 8 * i);
        [v5 addObject:{objc_msgSend(v11, "fileURL")}];
        if (!v6)
        {
          if (v11)
          {
            [v11 displayImage];
            v6 = arg;
          }

          else
          {
            v6 = 0;
          }
        }

        v7 += [v11 isVideo];
      }

      v8 = [a3 countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v8);
  }

  v12 = [a3 count];
  if ([a3 count] == 1)
  {
    v14 = [objc_msgSend(objc_msgSend(a3 "firstObject")];
LABEL_19:
    v18 = v14;
    goto LABEL_20;
  }

  if (v12 | v7)
  {
    v15 = MEMORY[0x1E696AEC0];
    WebCore::copyLocalizedString(&arg, @"%lu photo(s) and %lu video(s)", v13);
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

    v14 = [v15 localizedStringWithFormat:v16, v12 - v7, v7];
    goto LABEL_19;
  }

  v18 = 0;
LABEL_20:
  [(WKFileUploadPanel *)self _dismissDisplayAnimated:1];
  [(WKFileUploadPanel *)self _chooseFiles:v5 displayString:v18 iconImage:v6];
  if (v6)
  {
  }
}

- (void)_chooseFiles:(id)a3 displayString:(id)a4 iconImage:(id)a5
{
  v39 = *MEMORY[0x1E69E9840];
  v9 = [a3 count];
  if (v9)
  {
    v35 = 0;
    v36 = 0;
    if (v9 >> 29)
    {
      __break(0xC471u);
    }

    else
    {
      LODWORD(v36) = v9;
      v35 = WTF::fastMalloc((8 * v9));
      v31 = 0u;
      v32 = 0u;
      v33 = 0u;
      v34 = 0u;
      v10 = [a3 countByEnumeratingWithState:&v31 objects:v38 count:16];
      if (v10)
      {
        v11 = *v32;
        do
        {
          v12 = 0;
          do
          {
            if (*v32 != v11)
            {
              objc_enumerationMutation(a3);
            }

            v13 = [*(*(&v31 + 1) + 8 * v12) fileSystemRepresentation];
            WTF::String::fromUTF8(&v37, v13, v14);
            LODWORD(v16) = HIDWORD(v36);
            if (HIDWORD(v36) == v36)
            {
              v19 = WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v35, HIDWORD(v36) + 1, &v37);
              v16 = HIDWORD(v36);
              v20 = v35;
              v21 = *v19;
              *v19 = 0;
              *(v20 + 8 * v16) = v21;
            }

            else
            {
              v17 = v37;
              v37 = 0;
              *(v35 + 8 * HIDWORD(v36)) = v17;
            }

            HIDWORD(v36) = v16 + 1;
            v18 = v37;
            v37 = 0;
            if (v18 && atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v18, v15);
            }

            ++v12;
          }

          while (v10 != v12);
          v22 = [a3 countByEnumeratingWithState:&v31 objects:v38 count:16];
          v10 = v22;
        }

        while (v22);
      }

      v23 = UIImagePNGRepresentation(a5);
      API::Data::create([(NSData *)v23 length], [(NSData *)v23 bytes], &v37);
      if (!v37 || (v24 = *(v37 + 1)) == 0)
      {
        v25 = 0;
        v26 = 1;
LABEL_21:
        m_ptr = self->_listener.m_ptr;
        MEMORY[0x19EB02040](&v37, a4);
        WebKit::WebOpenPanelResultListenerProxy::chooseFiles(m_ptr, &v35, &v37, v25);
        v29 = v37;
        v37 = 0;
        if (v29 && atomic_fetch_add_explicit(v29, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v29, v28);
        }

        [(WKFileUploadPanel *)self _dispatchDidDismiss];
        if ((v26 & 1) == 0)
        {
          CFRelease(v25[1]);
        }

        WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v35, v30);
        return;
      }

      v25 = [v24 _apiObject];
      if ((*(*v25 + 2))(v25) == 8)
      {
        v26 = 0;
        goto LABEL_21;
      }

      __break(0xC471u);
    }

    JUMPOUT(0x19DE8D088);
  }

  [(WKFileUploadPanel *)self _cancel];
}

- (void)presentWithParameters:(void *)a3 resultListener:(void *)a4
{
  v67 = *MEMORY[0x1E69E9840];
  if (a4)
  {
    CFRetain(*(a4 + 1));
  }

  m_ptr = self->_listener.m_ptr;
  self->_listener.m_ptr = a4;
  if (m_ptr)
  {
    CFRelease(*(m_ptr + 1));
  }

  self->_allowDirectories = *(a3 + 16);
  self->_allowMultipleFiles = *(a3 + 17);
  self->_isMenuPreviouslyRepositioned = 0;
  [objc_loadWeak(&self->_view.m_weakReference) lastInteractionLocation];
  self->_interactionPoint.x = v6;
  self->_interactionPoint.y = v7;
  Weak = objc_loadWeak(&self->_view.m_weakReference);
  [Weak convertPoint:objc_msgSend(objc_msgSend(objc_loadWeak(&self->_view.m_weakReference) toView:{"webView"), "window"), self->_interactionPoint.x, self->_interactionPoint.y}];
  self->_interactionPointInWindow.x = v9;
  self->_interactionPointInWindow.y = v10;
  API::Array::createStringArray(a3 + 24, &v58);
  v11 = v58;
  v12 = [MEMORY[0x1E695DF70] arrayWithCapacity:*(v58 + 7)];
  API::Array::elementsOfType<API::String>(v11, v63);
  v13 = v64;
  v14 = v66;
  if (v64 != v66)
  {
    v15 = v65;
    do
    {
      WTF::downcast<API::String,API::Object>(*v13);
      WTF::String::isolatedCopy();
      if (v57)
      {
        atomic_fetch_add_explicit(v57, 2u, memory_order_relaxed);
        MEMORY[0x19EB00B70](v59, v57);
        if (atomic_fetch_add_explicit(v57, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v57, v16);
        }
      }

      else
      {
        v59[0] = &stru_1F1147748;
        v17 = &stru_1F1147748;
      }

      [v12 addObject:v59[0]];
      v19 = v59[0];
      v59[0] = 0;
      if (v19)
      {
      }

      v20 = v57;
      v57 = 0;
      if (v20 && atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v20, v18);
      }

      v21 = v13 + 1;
      while (1)
      {
        if (v21 - 1 == v15)
        {
          v13 = v21 - 1;
          goto LABEL_23;
        }

        if (v21 == v15)
        {
          break;
        }

        v22 = (*(**v21 + 16))();
        ++v13;
        ++v21;
        if (v22 == 20)
        {
          goto LABEL_23;
        }
      }

      v13 = v21;
LABEL_23:
      ;
    }

    while (v13 != v14);
  }

  API::Array::createStringArray(a3 + 40, &v57);
  v23 = v57;
  API::Array::elementsOfType<API::String>(v57, v63);
  v24 = v64;
  v25 = v66;
  if (v64 != v66)
  {
    v26 = v65;
    while (1)
    {
      v27 = *(WTF::downcast<API::String,API::Object>(*v24) + 16);
      if (v27)
      {
        v28 = *(v27 + 4);
        if (v28 >= 2)
        {
          v29 = (v28 - 1);
          v30 = v28 - 1;
          if ((*(v27 + 16) & 4) != 0)
          {
            if (v30 < v29)
            {
              goto LABEL_89;
            }
          }

          else if (v30 < v29)
          {
LABEL_89:
            __break(1u);
          }
        }
      }

      WebCore::MIMETypeRegistry::mimeTypeForExtension();
      v32 = v59[0];
      if (!v59[0])
      {
        goto LABEL_41;
      }

      if (!*(v59[0] + 1))
      {
        break;
      }

      atomic_fetch_add_explicit(v59[0], 2u, memory_order_relaxed);
      MEMORY[0x19EB00B70](&v56, v32);
      if (atomic_fetch_add_explicit(v32, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v32, v33);
      }

      [v12 addObject:v56];
      v34 = v56;
      v56 = 0;
      if (v34)
      {
      }

      v32 = v59[0];
      v59[0] = 0;
      if (v32)
      {
        goto LABEL_39;
      }

LABEL_41:
      v35 = v24 + 1;
      while (1)
      {
        if (v35 - 1 == v26)
        {
          v24 = v35 - 1;
          goto LABEL_48;
        }

        if (v35 == v26)
        {
          break;
        }

        v36 = (*(**v35 + 16))();
        ++v24;
        ++v35;
        if (v36 == 20)
        {
          goto LABEL_48;
        }
      }

      v24 = v35;
LABEL_48:
      if (v24 == v25)
      {
        goto LABEL_53;
      }
    }

    v59[0] = 0;
LABEL_39:
    if (atomic_fetch_add_explicit(v32, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v32, v31);
    }

    goto LABEL_41;
  }

LABEL_53:
  v37 = [MEMORY[0x1E695DFA8] set];
  v61 = 0u;
  v62 = 0u;
  *v59 = 0u;
  v60 = 0u;
  v38 = [v12 countByEnumeratingWithState:v59 objects:v63 count:16];
  if (v38)
  {
    v53 = v23;
    v39 = *v60;
    v40 = *MEMORY[0x1E6982EE8];
    v41 = *MEMORY[0x1E6982E30];
    while (2)
    {
      for (i = 0; i != v38; ++i)
      {
        if (*v60 != v39)
        {
          objc_enumerationMutation(v12);
        }

        v43 = *(v59[1] + i);
            v24[1] = 7;
            WTF::tryMakeString<WTF::String,WTF::ASCIILiteral>(&v22, v24, &v23);
            v12 = v23;
            if (!v23)
            {
              __break(0xC471u);
              goto LABEL_37;
            }

            v13 = v22;
            v22 = 0;
            v23 = 0;
            if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v13, v11);
            }

            v24[0] = v12;
            v14 = *(a2 + 12);
            if (v14 == *(a2 + 8))
            {
              v17 = WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(a2, v14 + 1, v24);
              v14 = *(a2 + 12);
              v18 = *a2;
              v19 = *v17;
              *v17 = 0;
              *(v18 + 8 * v14) = v19;
            }

            else
            {
              v15 = *a2;
              v24[0] = 0;
              *(v15 + 8 * v14) = v12;
            }

            *(a2 + 12) = v14 + 1;
            v16 = v24[0];
            v24[0] = 0;
            if (v16 && atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v16, v11);
            }
          }

          do
          {
            ++v6;
          }

          while (v6 != v8 && *v6 + 1 <= 1);
        }

        while (v6 != v9);
        v21 = *(a2 + 12);
      }

      return WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(a2, v21);
    }

    else
    {
      WebKit::WebExtensionMatchPattern::stringWithScheme(this, MEMORY[0x1E696EBA0], v24);
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(a2, v24, 1uLL);
      this = v24[0];
      v24[0] = 0;
      if (this && atomic_fetch_add_explicit(this, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(this, v20);
      }
    }
  }

  else
  {
    *a2 = 0;
    *(a2 + 8) = 0;
  }

  return this;
}

@end