@interface WKContentRuleList
+ (BOOL)_supportsRegularExpression:(id)a3;
+ (id)_parseRuleList:(id)a3;
- (NSString)identifier;
- (void)dealloc;
@end

@implementation WKContentRuleList

- (void)dealloc
{
  v3 = objc_opt_class();
  if ((WebCoreObjCScheduleDeallocateOnMainRunLoop(v3, self) & 1) == 0)
  {
    CFRetain(*&self->_contentRuleList.m_storage.data[8]);
    API::ContentRuleList::~ContentRuleList(&self->_contentRuleList);
    CFRelease(*&self->_contentRuleList.m_storage.data[8]);
    v4.receiver = self;
    v4.super_class = WKContentRuleList;
    [(WKContentRuleList *)&v4 dealloc];
  }
}

- (NSString)identifier
{
  CFRetain(*&self->_contentRuleList.m_storage.data[8]);
  v3 = *(*&self->_contentRuleList.m_storage.data[16] + 16);
  if (v3)
  {
    atomic_fetch_add_explicit(v3, 2u, memory_order_relaxed);
    MEMORY[0x19EB00B70](&v10, v3);
    if (atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v3, v4);
    }
  }

  else
  {
    v10 = &stru_1F1147748;
    v5 = &stru_1F1147748;
  }

  v6 = v10;
  v10 = 0;
  if (v6)
  {
    v7 = v6;
    v8 = v10;
    v10 = 0;
    if (v8)
    {
    }
  }

  CFRelease(*&self->_contentRuleList.m_storage.data[8]);
  return v6;
}

+ (BOOL)_supportsRegularExpression:(id)a3
{
  MEMORY[0x19EB02040](&v8, a3);
  v5 = API::ContentRuleList::supportsRegularExpression(&v8, v3);
  v6 = v8;
  v8 = 0;
  if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v6, v4);
  }

  return v5;
}

+ (id)_parseRuleList:(id)a3
{
  v18[1] = *MEMORY[0x1E69E9840];
  MEMORY[0x19EB02040](&v15, a3);
  v3 = API::ContentRuleList::parseRuleList();
  v5 = v3;
  *&v16.__val_ = v3;
  v16.__cat_ = v4;
  v6 = v15.__r_.__value_.__r.__words[0];
  v15.__r_.__value_.__r.__words[0] = 0;
  if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v6, v4);
    if (v5)
    {
      goto LABEL_4;
    }

    return 0;
  }

  if (!v5)
  {
    return 0;
  }

LABEL_4:
  v17 = *MEMORY[0x1E696A478];
  v7 = objc_alloc(MEMORY[0x1E696AEC0]);
  std::error_code::message(&v15, &v16);
  if ((v15.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v8 = &v15;
  }

  else
  {
    v8 = v15.__r_.__value_.__r.__words[0];
  }

  v9 = [v7 initWithFormat:@"Rule list parsing failed: %s", v8];
  v18[0] = v9;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:&v17 count:1];
  v11 = v10;
  if (v10)
  {
    v12 = v10;
  }

  if (v9)
  {
  }

  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
  }

  v13 = [MEMORY[0x1E696ABC0] errorWithDomain:@"WKErrorDomain" code:6 userInfo:v11];
  if (v11)
  {
  }

  return v13;
}

@end