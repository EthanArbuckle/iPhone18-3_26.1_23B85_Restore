@interface _WKSystemPreviewDataTaskDelegate
- (BOOL)isValidFileExtension:(id)extension;
- (BOOL)isValidMIMEType:(id)type;
- (_WKSystemPreviewDataTaskDelegate)initWithSystemPreviewController:(void *)controller;
- (id).cxx_construct;
- (void)completeLoad;
- (void)dataTask:(id)task didCompleteWithError:(id)error;
- (void)dataTask:(id)task didReceiveData:(id)data;
- (void)dataTask:(id)task didReceiveResponse:(id)response decisionHandler:(id)handler;
@end

@implementation _WKSystemPreviewDataTaskDelegate

- (_WKSystemPreviewDataTaskDelegate)initWithSystemPreviewController:(void *)controller
{
  v9.receiver = self;
  v9.super_class = _WKSystemPreviewDataTaskDelegate;
  v5 = [(_WKSystemPreviewDataTaskDelegate *)&v9 init];
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

- (BOOL)isValidMIMEType:(id)type
{
  MEMORY[0x19EB02040](&v9, type);
  if (WebCore::MIMETypeRegistry::isUSDMIMEType(&v9, v4))
  {
    v6 = 1;
  }

  else
  {
    v6 = [type isEqualToString:@"application/octet-stream"];
  }

  v7 = v9;
  v9 = 0;
  if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v7, v5);
  }

  return v6;
}

- (BOOL)isValidFileExtension:(id)extension
{
  MEMORY[0x19EB02040](&v9, extension);
  WebCore::MIMETypeRegistry::mimeTypeForExtension();
  isUSDMIMEType = WebCore::MIMETypeRegistry::isUSDMIMEType(&v10, v3);
  v6 = v10;
  v10 = 0;
  if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v6, v4);
  }

  v7 = v9;
  v9 = 0;
  if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v7, v4);
  }

  return isUSDMIMEType;
}

- (void)dataTask:(id)task didReceiveResponse:(id)response decisionHandler:(id)handler
{
  v35 = *MEMORY[0x1E69E9840];
  m_ptr = self->_previewController.m_impl.m_ptr;
  if (!m_ptr)
  {
    v9 = 0;
    goto LABEL_5;
  }

  v9 = *(m_ptr + 1);
  if (!v9)
  {
LABEL_5:
    v10 = 1;
    goto LABEL_6;
  }

  v10 = 0;
  ++*(v9 + 8);
LABEL_6:
  v11 = WTF::dynamic_objc_cast<NSHTTPURLResponse>(response);
  v12 = v11;
  if (v11 && [MEMORY[0x1E695AC08] isErrorStatusCode:{objc_msgSend(v11, "statusCode")}])
  {
    v13 = qword_1ED6413A0;
    if (os_log_type_enabled(qword_1ED6413A0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      *&buf[4] = [v12 statusCode];
      _os_log_impl(&dword_19D52D000, v13, OS_LOG_TYPE_DEFAULT, "cancelling subresource load due to error status code: %ld", buf, 0xCu);
    }

    (*(handler + 2))(handler, 0);
    if (v9)
    {
LABEL_44:
      WebKit::SystemPreviewController::loadFailed(v9);
    }
  }

  else if (-[_WKSystemPreviewDataTaskDelegate isValidMIMEType:](self, "isValidMIMEType:", [response MIMEType]) || -[_WKSystemPreviewDataTaskDelegate isValidFileExtension:](self, "isValidFileExtension:", objc_msgSend(objc_msgSend(response, "URL"), "pathExtension")))
  {
    expectedContentLength = [response expectedContentLength];
    if (expectedContentLength == -1)
    {
      v15 = 0;
    }

    else
    {
      v15 = expectedContentLength;
    }

    self->_expectedContentLength = v15;
    v16 = [objc_alloc(MEMORY[0x1E695DF88]) initWithCapacity:self->_expectedContentLength];
    v17 = self->_data.m_ptr;
    self->_data.m_ptr = v16;
    if (v17)
    {
    }

    [objc_msgSend(response "MIMEType")];
    WTF::FileSystemImpl::openTemporaryFile();
    if (v29)
    {
      atomic_fetch_add_explicit(v29, 2u, memory_order_relaxed);
    }

    v19 = self->_filePath.m_impl.m_ptr;
    self->_filePath.m_impl.m_ptr = v29;
    if (v19 && atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v19, v18);
    }

    WTF::FileSystemImpl::FileHandle::operator=();
    if (v9)
    {
      WTF::URL::fileURLWithFileSystemPath();
      v20 = qword_1ED6413A0;
      if (os_log_type_enabled(qword_1ED6413A0, OS_LOG_TYPE_DEFAULT))
      {
        v22 = *(v9 + 96);
        *v33 = 134217984;
        v34 = v22;
        _os_log_impl(&dword_19D52D000, v20, OS_LOG_TYPE_DEFAULT, "SystemPreview load has started on %lld", v33, 0xCu);
      }

      if (*buf)
      {
        atomic_fetch_add_explicit(*buf, 2u, memory_order_relaxed);
      }

      v23 = *(v9 + 184);
      *(v9 + 184) = *buf;
      if (v23 && atomic_fetch_add_explicit(v23, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v23, v21);
      }

      v24 = v32;
      *(v9 + 192) = *&buf[8];
      *(v9 + 208) = v24;
      v25 = *(v9 + 224);
      if (v25 && *(v25 + 4))
      {
        WTF::URL::setFragmentIdentifier();
      }

      *(v9 + 12) = 2;
      v26 = *buf;
      *buf = 0;
      if (v26 && atomic_fetch_add_explicit(v26, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v26, v21);
      }
    }

    (*(handler + 2))(handler, 1);
    WTF::FileSystemImpl::FileHandle::~FileHandle(&v30);
    if (v29 && atomic_fetch_add_explicit(v29, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v29, v27);
    }
  }

  else
  {
    v28 = qword_1ED6413A0;
    if (os_log_type_enabled(qword_1ED6413A0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      *&buf[4] = [response MIMEType];
      *&buf[12] = 2112;
      *&buf[14] = [objc_msgSend(response "URL")];
      _os_log_impl(&dword_19D52D000, v28, OS_LOG_TYPE_DEFAULT, "cancelling subresource load due to unhandled MIME type: %@ extension: %@", buf, 0x16u);
    }

    (*(handler + 2))(handler, 0);
    if (v9)
    {
      goto LABEL_44;
    }
  }

  if ((v10 & 1) == 0)
  {
    WTF::RefCounted<WebKit::SystemPreviewController>::deref((v9 + 8));
  }
}

- (void)dataTask:(id)task didReceiveData:(id)data
{
  [(NSMutableData *)self->_data.m_ptr appendData:data];
  if (self->_expectedContentLength)
  {
    m_ptr = self->_previewController.m_impl.m_ptr;
    if (m_ptr)
    {
      v6 = *(m_ptr + 1);
      if (v6)
      {
        ++*(v6 + 8);
        v7 = [(NSMutableData *)self->_data.m_ptr length];
        v9 = *(v6 + 248);
        if (v9)
        {
          *&v8 = v7 / self->_expectedContentLength;
          [v9 setProgress:v8];
        }

        WTF::RefCounted<WebKit::SystemPreviewController>::deref((v6 + 8));
      }
    }
  }
}

- (void)dataTask:(id)task didCompleteWithError:(id)error
{
  if (error)
  {
    WTF::FileSystemImpl::FileHandle::FileHandle(v8);
    WTF::FileSystemImpl::FileHandle::operator=();
    WTF::FileSystemImpl::FileHandle::~FileHandle(v8);
    m_ptr = self->_previewController.m_impl.m_ptr;
    if (m_ptr)
    {
      v6 = *(m_ptr + 1);
      if (v6)
      {
        v7 = v6 + 1;
        ++*(v6 + 2);
        WebKit::SystemPreviewController::loadFailed(v6);
        WTF::RefCounted<WebKit::SystemPreviewController>::deref(v7);
      }
    }
  }

  else
  {

    [(_WKSystemPreviewDataTaskDelegate *)self completeLoad];
  }
}

- (void)completeLoad
{
  v21 = *MEMORY[0x1E69E9840];
  m_ptr = self->_data.m_ptr;
  if (m_ptr)
  {
    [(NSMutableData *)self->_data.m_ptr bytes];
    [(NSMutableData *)m_ptr length];
  }

  v4 = WTF::FileSystemImpl::FileHandle::write();
  v6 = v5;
  WTF::FileSystemImpl::FileHandle::FileHandle(buf);
  WTF::FileSystemImpl::FileHandle::operator=();
  WTF::FileSystemImpl::FileHandle::~FileHandle(buf);
  v7 = self->_previewController.m_impl.m_ptr;
  if (v7)
  {
    v8 = *(v7 + 1);
    if (v8)
    {
      ++*(v8 + 8);
      v9 = [(NSMutableData *)self->_data.m_ptr length];
      if ((v6 & 1) != 0 && v4 == v9)
      {
        WTF::URL::fileURLWithFileSystemPath();
        v10 = qword_1ED6413A0;
        if (os_log_type_enabled(qword_1ED6413A0, OS_LOG_TYPE_DEFAULT))
        {
          v11 = *(v8 + 96);
          *buf = 134217984;
          *&buf[4] = v11;
          _os_log_impl(&dword_19D52D000, v10, OS_LOG_TYPE_DEFAULT, "SystemPreview load has finished on %lld", buf, 0xCu);
        }

        v12 = *(v8 + 248);
        if (v12)
        {
          v13 = *(v8 + 184);
          if (v13)
          {
            atomic_fetch_add_explicit(v13, 2u, memory_order_relaxed);
          }

          *buf = v13;
          v14 = *(v8 + 208);
          *&buf[8] = *(v8 + 192);
          v20 = v14;
          [v12 finish:buf];
          v16 = *buf;
          *buf = 0;
          if (v16 && atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v16, v15);
          }
        }

        *(v8 + 12) = 3;
        WebKit::SystemPreviewController::releaseActivityTokenIfNecessary(v8);
        if (*(v8 + 272))
        {
          WTF::CompletionHandler<void ()(BOOL)>::operator()((v8 + 272), 1);
        }

        if (v18)
        {
          if (atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v18, v17);
          }
        }
      }

      else
      {
        WebKit::SystemPreviewController::loadFailed(v8);
      }

      WTF::RefCounted<WebKit::SystemPreviewController>::deref((v8 + 8));
    }
  }
}

- (id).cxx_construct
{
  self->_previewController.m_impl.m_ptr = 0;
  self->_data.m_ptr = 0;
  WTF::FileSystemImpl::FileHandle::FileHandle(&self->_fileHandle);
  self->_filePath.m_impl.m_ptr = 0;
  return self;
}

@end