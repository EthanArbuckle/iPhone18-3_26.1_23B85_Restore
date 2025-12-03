@interface _WKAttachment
- (NSString)uniqueIdentifier;
- (_WKAttachmentInfo)info;
- (uint64_t)setFileWrapper:(const void *)wrapper contentType:completion:;
- (uint64_t)setFileWrapper:(uint64_t)wrapper contentType:completion:;
- (void)dealloc;
- (void)requestInfo:(id)info;
- (void)setData:(id)data newContentType:(id)type;
- (void)setData:(id)data newContentType:(id)type newFilename:(id)filename completion:(id)completion;
- (void)setFileWrapper:(id)wrapper contentType:(id)type completion:(id)completion;
@end

@implementation _WKAttachment

- (void)dealloc
{
  v3 = objc_opt_class();
  if ((WebCoreObjCScheduleDeallocateOnMainRunLoop(v3, self) & 1) == 0)
  {
    API::Attachment::~Attachment(&self->_attachment, v4);
    v5.receiver = self;
    v5.super_class = _WKAttachment;
    [(_WKAttachment *)&v5 dealloc];
  }
}

- (_WKAttachmentInfo)info
{
  v2 = *self[1]._attachment.m_storage.data;
  if (!v2 || !*(v2 + 8))
  {
    return 0;
  }

  v3 = [[_WKAttachmentInfo alloc] initWithAttachment:&self->_attachment];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  return v4;
}

- (void)requestInfo:(id)info
{
  info = [(_WKAttachment *)self info];
  v5 = *(info + 2);

  v5(info, info, 0);
}

- (void)setFileWrapper:(id)wrapper contentType:(id)type completion:(id)completion
{
  v6 = *self[1]._attachment.m_storage.data;
  if (v6 && *(v6 + 8))
  {
    v10 = *&self->_attachment.m_storage.data[40];
    *&self->_attachment.m_storage.data[40] = 0;
    if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v10, a2);
    }

    API::Attachment::setFileWrapperAndUpdateContentType(&self->_attachment, wrapper, type);
    v11 = _Block_copy(completion);
    v12 = WTF::fastMalloc(0x10);
    *v12 = &unk_1F10FAFE0;
    v12[1] = v11;
    v16 = v12;
    API::Attachment::updateAttributes(&self->_attachment, &v16);
    v13 = v16;
    v16 = 0;
    if (v13)
    {
      (*(*v13 + 8))(v13);
    }

    _Block_release(0);
  }

  else if (completion)
  {
    v14 = [MEMORY[0x1E696ABC0] errorWithDomain:@"WKErrorDomain" code:2 userInfo:0];
    v15 = *(completion + 2);

    v15(completion, v14);
  }
}

- (void)setData:(id)data newContentType:(id)type
{
  v5 = [objc_alloc(MEMORY[0x1E696AC38]) initRegularFileWithContents:data];
  [_WKAttachment setFileWrapper:"setFileWrapper:contentType:completion:" contentType:? completion:?];
  if (v5)
  {
  }
}

- (void)setData:(id)data newContentType:(id)type newFilename:(id)filename completion:(id)completion
{
  v10 = [objc_alloc(MEMORY[0x1E696AC38]) initRegularFileWithContents:data];
  if (filename)
  {
    [v10 setPreferredFilename:filename];
  }

  [(_WKAttachment *)self setFileWrapper:v10 contentType:type completion:completion];
  if (v10)
  {
  }
}

- (NSString)uniqueIdentifier
{
  v2 = *&self->_attachment.m_storage.data[32];
  if (!v2)
  {
    v4 = &stru_1F1147748;
    v5 = &stru_1F1147748;
    v9 = 0;
LABEL_7:
    v6 = v4;
    v7 = v9;
    v9 = 0;
    if (v7)
    {
    }

    return &v4->isa;
  }

  atomic_fetch_add_explicit(v2, 2u, memory_order_relaxed);
  MEMORY[0x19EB00B70](&v9, v2, a2);
  if (atomic_fetch_add_explicit(v2, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v2, v3);
  }

  v4 = v9;
  v9 = 0;
  if (v4)
  {
    goto LABEL_7;
  }

  return &v4->isa;
}

- (uint64_t)setFileWrapper:(uint64_t)wrapper contentType:completion:
{
  result = *(wrapper + 8);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

- (uint64_t)setFileWrapper:(const void *)wrapper contentType:completion:
{
  *wrapper = &unk_1F10FAFE0;
  _Block_release(wrapper[1]);

  return WTF::fastFree(wrapper, v2);
}

@end