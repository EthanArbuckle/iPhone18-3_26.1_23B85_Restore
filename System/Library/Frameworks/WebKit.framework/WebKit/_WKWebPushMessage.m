@interface _WKWebPushMessage
- (NSData)data;
- (NSString)partition;
- (Ref<API::WebPushMessage,)_protectedMessage;
- (id)scope;
- (void)dealloc;
@end

@implementation _WKWebPushMessage

- (void)dealloc
{
  v3 = objc_opt_class();
  if ((WebCoreObjCScheduleDeallocateOnMainRunLoop(v3, self) & 1) == 0)
  {
    WebKit::WebPushMessage::~WebPushMessage(&self->_message.m_storage.data[16], v4);
    v5.receiver = self;
    v5.super_class = _WKWebPushMessage;
    [(_WKWebPushMessage *)&v5 dealloc];
  }
}

- (NSData)data
{
  [(_WKWebPushMessage *)self _protectedMessage];
  std::__optional_copy_base<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,false>::__optional_copy_base[abi:sn200100](&v12, v11 + 16);
  v3 = v11;
  v11 = 0;
  if (v3)
  {
    CFRelease(*(v3 + 8));
  }

  if (v15 == 1)
  {
    v4 = v12;
    v5 = v14;
    v6 = objc_alloc(MEMORY[0x1E695DEF0]);
    v7 = [v6 initWithBytes:v4 length:{v5, v11}];
    v8 = v7;
    if (v7)
    {
    }
  }

  else
  {
    v8 = 0;
  }

  if (v15 == 1)
  {
    v10 = v12;
    if (v12)
    {
      v12 = 0;
      v13 = 0;
      WTF::fastFree(v10, v2);
    }
  }

  return v8;
}

- (id)scope
{
  v2 = *self->_anon_38;
  if (v2)
  {
    atomic_fetch_add_explicit(v2, 2u, memory_order_relaxed);
  }

  v10 = v2;
  v3 = *&self->_anon_38[24];
  v11 = *&self->_anon_38[8];
  v12 = v3;
  WTF::URL::createCFURL(&v13, &v10);
  v5 = v13;
  v13 = 0;
  if (v5)
  {
    v6 = v5;
    v7 = v13;
    v13 = 0;
    if (v7)
    {
    }
  }

  v8 = v10;
  v10 = 0;
  if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v8, v4);
  }

  return v5;
}

- (NSString)partition
{
  v2 = *&self->_message.m_storage.data[40];
  if (v2)
  {
    atomic_fetch_add_explicit(v2, 2u, memory_order_relaxed);
    atomic_fetch_add_explicit(v2, 2u, memory_order_relaxed);
    MEMORY[0x19EB00B70](&v9, v2, a2);
    if (atomic_fetch_add_explicit(v2, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v2, v3);
    }

    v4 = v9;
    v9 = 0;
    if (!v4)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v4 = &stru_1F1147748;
    v5 = &stru_1F1147748;
    v9 = 0;
  }

  v6 = v4;
  v7 = v9;
  v9 = 0;
  if (v7)
  {
  }

  if (v2)
  {
LABEL_10:
    if (atomic_fetch_add_explicit(v2, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v2, v3);
    }
  }

  return &v4->isa;
}

- (Ref<API::WebPushMessage,)_protectedMessage
{
  v3 = v2;
  p_message = &self->_message;
  v5 = CFRetain(*&self->_message.m_storage.data[8]);
  *v3 = p_message;
  return v5;
}

@end