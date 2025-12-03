@interface WKContentRuleListStore
+ (WKContentRuleListStore)defaultStore;
+ (WKContentRuleListStore)storeWithURL:(NSURL *)url;
+ (WKContentRuleListStore)storeWithURLAndLegacyFilename:(id)filename;
+ (id)defaultStoreWithLegacyFilename;
- (Ref<API::ContentRuleListStore,)_protectedContentListStore;
- (uint64_t)compileContentRuleListForIdentifier:(const void *)identifier encodedContentRuleList:completionHandler:;
- (uint64_t)compileContentRuleListForIdentifier:(uint64_t)identifier encodedContentRuleList:completionHandler:;
- (uint64_t)getAvailableContentRuleListIdentifiers:(const void *)identifiers;
- (uint64_t)getAvailableContentRuleListIdentifiers:(uint64_t)identifiers;
- (uint64_t)lookUpContentRuleListForIdentifier:(const void *)identifier completionHandler:;
- (uint64_t)lookUpContentRuleListForIdentifier:(uint64_t)identifier completionHandler:;
- (uint64_t)removeContentRuleListForIdentifier:(const void *)identifier completionHandler:;
- (uint64_t)removeContentRuleListForIdentifier:(uint64_t)identifier completionHandler:;
- (void)_corruptContentRuleListActionsMatchingEverythingForIdentifier:(id)identifier;
- (void)_corruptContentRuleListHeaderForIdentifier:(id)identifier usingCurrentVersion:(BOOL)version;
- (void)_getContentRuleListSourceForIdentifier:(id)identifier completionHandler:(id)handler;
- (void)_invalidateContentRuleListHeaderForIdentifier:(id)identifier;
- (void)_invalidateContentRuleListVersionForIdentifier:(id)identifier;
- (void)_removeAllContentRuleLists;
- (void)compileContentRuleListForIdentifier:(NSString *)identifier encodedContentRuleList:(NSString *)encodedContentRuleList completionHandler:(void *)completionHandler;
- (void)compileContentRuleListForIdentifier:(uint64_t)identifier encodedContentRuleList:(const std::error_category *)list completionHandler:;
- (void)dealloc;
- (void)getAvailableContentRuleListIdentifiers:(void *)completionHandler;
- (void)lookUpContentRuleListForIdentifier:(NSString *)identifier completionHandler:(void *)completionHandler;
- (void)lookUpContentRuleListForIdentifier:(uint64_t)identifier completionHandler:(const std::error_category *)handler;
- (void)removeContentRuleListForIdentifier:(NSString *)identifier completionHandler:(void *)completionHandler;
- (void)removeContentRuleListForIdentifier:(const std::error_category *)identifier completionHandler:;
@end

@implementation WKContentRuleListStore

- (Ref<API::ContentRuleListStore,)_protectedContentListStore
{
  v3 = v2;
  p_contentRuleListStore = &self->_contentRuleListStore;
  v5 = CFRetain(*&self->_contentRuleListStore.m_storage.data[8]);
  *v3 = p_contentRuleListStore;
  return v5;
}

- (void)dealloc
{
  v3 = objc_opt_class();
  if ((WebCoreObjCScheduleDeallocateOnMainRunLoop(v3, self) & 1) == 0)
  {
    [(WKContentRuleListStore *)self _protectedContentListStore];
    v5 = v8;
    v6 = *(v8 + 16);
    *(v8 + 16) = 0;
    if (v6)
    {
      if (atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v6, v4);
      }

      v5 = v8;
    }

    v8 = 0;
    if (v5)
    {
      CFRelease(*(v5 + 8));
    }

    v7.receiver = self;
    v7.super_class = WKContentRuleListStore;
    [(WKContentRuleListStore *)&v7 dealloc];
  }
}

+ (WKContentRuleListStore)defaultStore
{
  v2 = *(API::ContentRuleListStore::defaultStoreSingleton(self) + 1);
  if (!v2)
  {
    return v2;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return v2;
  }

  result = 117;
  __break(0xC471u);
  return result;
}

+ (WKContentRuleListStore)storeWithURL:(NSURL *)url
{
  MEMORY[0x19EB02040](&v11, [[(NSURL *)url absoluteURL] path]);
  v3 = API::Object::newObject(0x18uLL, 48);
  v4 = *(API::ContentRuleListStore::ContentRuleListStore(v3, &v11) + 1);
  if (v4)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      result = 117;
      __break(0xC471u);
      return result;
    }

    v5 = v4;
    v6 = v4;
    v7 = *(v3 + 1);
  }

  else
  {
    v7 = 0;
  }

  CFRelease(v7);
  v9 = v11;
  v11 = 0;
  if (v9)
  {
    if (atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v9, v8);
    }
  }

  return v4;
}

- (void)compileContentRuleListForIdentifier:(NSString *)identifier encodedContentRuleList:(NSString *)encodedContentRuleList completionHandler:(void *)completionHandler
{
  if (self)
  {
    [(WKContentRuleListStore *)self _protectedContentListStore];
    v8 = v18;
  }

  else
  {
    v8 = 0;
    v18 = 0;
  }

  MEMORY[0x19EB02040](&v17, identifier);
  MEMORY[0x19EB02040](&v16, encodedContentRuleList);
  v9 = _Block_copy(completionHandler);
  v10 = WTF::fastMalloc(0x10);
  *v10 = &unk_1F10F4A28;
  v10[1] = v9;
  v15 = v10;
  API::ContentRuleListStore::compileContentRuleList(v8, &v17, &v16, &v15);
  if (v15)
  {
    (*(*v15 + 8))(v15);
  }

  _Block_release(0);
  v12 = v16;
  v16 = 0;
  if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v12, v11);
  }

  v13 = v17;
  v17 = 0;
  if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v13, v11);
  }

  v14 = v18;
  v18 = 0;
  if (v14)
  {
    CFRelease(v14[1]);
  }
}

- (void)lookUpContentRuleListForIdentifier:(NSString *)identifier completionHandler:(void *)completionHandler
{
  if (self)
  {
    [(WKContentRuleListStore *)self _protectedContentListStore];
    v6 = v14;
  }

  else
  {
    v6 = 0;
    v14 = 0;
  }

  MEMORY[0x19EB02040](&v13, identifier);
  v7 = _Block_copy(completionHandler);
  v8 = WTF::fastMalloc(0x10);
  *v8 = &unk_1F10F4A50;
  v8[1] = v7;
  v12 = v8;
  API::ContentRuleListStore::lookupContentRuleList(v6, &v13, &v12);
  if (v12)
  {
    (*(*v12 + 8))(v12);
  }

  _Block_release(0);
  v10 = v13;
  v13 = 0;
  if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, v9);
  }

  v11 = v14;
  v14 = 0;
  if (v11)
  {
    CFRelease(v11[1]);
  }
}

- (void)getAvailableContentRuleListIdentifiers:(void *)completionHandler
{
  if (self)
  {
    [(WKContentRuleListStore *)self _protectedContentListStore];
    v4 = v9;
  }

  else
  {
    v4 = 0;
    v9 = 0;
  }

  v5 = _Block_copy(completionHandler);
  v6 = WTF::fastMalloc(0x10);
  *v6 = &unk_1F10F4A78;
  *(v6 + 1) = v5;
  v8 = v6;
  API::ContentRuleListStore::getAvailableContentRuleListIdentifiers(v4, &v8);
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  _Block_release(0);
  v7 = v9;
  v9 = 0;
  if (v7)
  {
    CFRelease(v7[1]);
  }
}

- (void)removeContentRuleListForIdentifier:(NSString *)identifier completionHandler:(void *)completionHandler
{
  if (self)
  {
    [(WKContentRuleListStore *)self _protectedContentListStore];
    v6 = v14;
  }

  else
  {
    v6 = 0;
    v14 = 0;
  }

  MEMORY[0x19EB02040](&v13, identifier);
  v7 = _Block_copy(completionHandler);
  v8 = WTF::fastMalloc(0x10);
  *v8 = &unk_1F10F4AA0;
  v8[1] = v7;
  v12 = v8;
  API::ContentRuleListStore::removeContentRuleList(v6, &v13, &v12);
  if (v12)
  {
    (*(*v12 + 8))(v12);
  }

  _Block_release(0);
  v10 = v13;
  v13 = 0;
  if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, v9);
  }

  v11 = v14;
  v14 = 0;
  if (v11)
  {
    CFRelease(v11[1]);
  }
}

- (void)_removeAllContentRuleLists
{
  if (self)
  {
    [(WKContentRuleListStore *)self _protectedContentListStore];
    self = v3;
  }

  else
  {
    v3 = 0;
  }

  API::ContentRuleListStore::synchronousRemoveAllContentRuleLists(self, a2);
  v2 = v3;
  v3 = 0;
  if (v2)
  {
    CFRelease(*(v2 + 1));
  }
}

- (void)_invalidateContentRuleListVersionForIdentifier:(id)identifier
{
  if (self)
  {
    [(WKContentRuleListStore *)self _protectedContentListStore];
    v4 = v10;
  }

  else
  {
    v4 = 0;
    v10 = 0;
  }

  MEMORY[0x19EB02040](&v9, identifier);
  API::ContentRuleListStore::invalidateContentRuleListVersion(v4, &v9, v5);
  v7 = v9;
  v9 = 0;
  if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v7, v6);
  }

  v8 = v10;
  v10 = 0;
  if (v8)
  {
    CFRelease(*(v8 + 1));
  }
}

- (void)_corruptContentRuleListHeaderForIdentifier:(id)identifier usingCurrentVersion:(BOOL)version
{
  versionCopy = version;
  if (self)
  {
    [(WKContentRuleListStore *)self _protectedContentListStore];
    v6 = v11;
  }

  else
  {
    v6 = 0;
    v11 = 0;
  }

  MEMORY[0x19EB02040](&v10, identifier);
  API::ContentRuleListStore::corruptContentRuleListHeader(v6, &v10, versionCopy);
  v8 = v10;
  v10 = 0;
  if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v8, v7);
  }

  v9 = v11;
  v11 = 0;
  if (v9)
  {
    CFRelease(*(v9 + 1));
  }
}

- (void)_corruptContentRuleListActionsMatchingEverythingForIdentifier:(id)identifier
{
  if (self)
  {
    [(WKContentRuleListStore *)self _protectedContentListStore];
    v4 = v10;
  }

  else
  {
    v4 = 0;
    v10 = 0;
  }

  MEMORY[0x19EB02040](&v9, identifier);
  API::ContentRuleListStore::corruptContentRuleListActionsMatchingEverything(v4, &v9, v5);
  v7 = v9;
  v9 = 0;
  if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v7, v6);
  }

  v8 = v10;
  v10 = 0;
  if (v8)
  {
    CFRelease(*(v8 + 1));
  }
}

- (void)_invalidateContentRuleListHeaderForIdentifier:(id)identifier
{
  if (self)
  {
    [(WKContentRuleListStore *)self _protectedContentListStore];
    v4 = v10;
  }

  else
  {
    v4 = 0;
    v10 = 0;
  }

  MEMORY[0x19EB02040](&v9, identifier);
  API::ContentRuleListStore::invalidateContentRuleListHeader(v4, &v9, v5);
  v7 = v9;
  v9 = 0;
  if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v7, v6);
  }

  v8 = v10;
  v10 = 0;
  if (v8)
  {
    CFRelease(*(v8 + 1));
  }
}

- (void)_getContentRuleListSourceForIdentifier:(id)identifier completionHandler:(id)handler
{
  v6 = [handler copy];
  if (self)
  {
    [(WKContentRuleListStore *)self _protectedContentListStore];
    self = v15;
  }

  else
  {
    v15 = 0;
  }

  MEMORY[0x19EB02040](&v14, identifier);
  if (v6)
  {
    v7 = v6;
  }

  v8 = WTF::fastMalloc(0x10);
  *v8 = &unk_1F10F4AC8;
  *(v8 + 1) = v6;
  v13 = v8;
  API::ContentRuleListStore::getContentRuleListSource(&self->super.isa, &v14, &v13);
  v10 = v13;
  v13 = 0;
  if (v10)
  {
    (*(*v10 + 8))(v10);
  }

  v11 = v14;
  v14 = 0;
  if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v11, v9);
  }

  v12 = v15;
  v15 = 0;
  if (v12)
  {
    CFRelease(*v12->_contentRuleListStore.m_storage.data);
  }

  if (v6)
  {
  }
}

+ (id)defaultStoreWithLegacyFilename
{
  v2 = *(API::ContentRuleListStore::defaultStoreSingleton(self) + 1);
  if (!v2)
  {
    return v2;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return v2;
  }

  result = 117;
  __break(0xC471u);
  return result;
}

+ (WKContentRuleListStore)storeWithURLAndLegacyFilename:(id)filename
{
  MEMORY[0x19EB02040](&v11, [objc_msgSend(filename "absoluteURL")]);
  v3 = API::Object::newObject(0x18uLL, 48);
  v4 = *(API::ContentRuleListStore::ContentRuleListStore(v3, &v11) + 1);
  if (v4)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      result = 117;
      __break(0xC471u);
      return result;
    }

    v5 = v4;
    v6 = v4;
    v7 = *(v3 + 1);
  }

  else
  {
    v7 = 0;
  }

  CFRelease(v7);
  v9 = v11;
  v11 = 0;
  if (v9)
  {
    if (atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v9, v8);
    }
  }

  return v4;
}

- (uint64_t)compileContentRuleListForIdentifier:(uint64_t)identifier encodedContentRuleList:completionHandler:
{
  *identifier = &unk_1F10F4A28;
  _Block_release(*(identifier + 8));
  return identifier;
}

- (uint64_t)compileContentRuleListForIdentifier:(const void *)identifier encodedContentRuleList:completionHandler:
{
  *identifier = &unk_1F10F4A28;
  _Block_release(identifier[1]);

  return WTF::fastFree(identifier, v2);
}

- (void)compileContentRuleListForIdentifier:(uint64_t)identifier encodedContentRuleList:(const std::error_category *)list completionHandler:
{
  v15[1] = *MEMORY[0x1E69E9840];
  v5 = *a2;
  *a2 = 0;
  *&v13.__val_ = identifier;
  v13.__cat_ = list;
  if (!identifier)
  {
    if (*(v5 + 8))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        __break(0xC471u);
        return;
      }
    }

    (*(*(self + 8) + 16))();
LABEL_18:
    CFRelease(*(v5 + 8));
    return;
  }

  v14 = *MEMORY[0x1E696A478];
  v6 = objc_alloc(MEMORY[0x1E696AEC0]);
  std::error_code::message(&v12, &v13);
  if ((v12.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v7 = &v12;
  }

  else
  {
    v7 = v12.__r_.__value_.__r.__words[0];
  }

  v8 = [v6 initWithFormat:@"Rule list compilation failed: %s", v7];
  v15[0] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:&v14 count:1];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  if (v8)
  {
  }

  if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v12.__r_.__value_.__l.__data_);
  }

  [MEMORY[0x1E696ABC0] errorWithDomain:@"WKErrorDomain" code:6 userInfo:v10];
  (*(*(self + 8) + 16))();
  if (v10)
  {
  }

  if (v5)
  {
    goto LABEL_18;
  }
}

- (uint64_t)lookUpContentRuleListForIdentifier:(uint64_t)identifier completionHandler:
{
  *identifier = &unk_1F10F4A50;
  _Block_release(*(identifier + 8));
  return identifier;
}

- (uint64_t)lookUpContentRuleListForIdentifier:(const void *)identifier completionHandler:
{
  *identifier = &unk_1F10F4A50;
  _Block_release(identifier[1]);

  return WTF::fastFree(identifier, v2);
}

- (void)lookUpContentRuleListForIdentifier:(uint64_t)identifier completionHandler:(const std::error_category *)handler
{
  v16[1] = *MEMORY[0x1E69E9840];
  v5 = *a2;
  *a2 = 0;
  *&v14.__val_ = identifier;
  v14.__cat_ = handler;
  if (!identifier)
  {
    if (*(v5 + 8))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        __break(0xC471u);
        return;
      }
    }

    (*(*(self + 8) + 16))();
    goto LABEL_20;
  }

  v15 = *MEMORY[0x1E696A478];
  v6 = objc_alloc(MEMORY[0x1E696AEC0]);
  std::error_code::message(&v13, &v14);
  if ((v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v7 = &v13;
  }

  else
  {
    v7 = v13.__r_.__value_.__r.__words[0];
  }

  v8 = [v6 initWithFormat:@"Rule list lookup failed: %s", v7];
  v16[0] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  if (v8)
  {
  }

  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }

  if ((LOBYTE(v14.__val_) - 1) > 3u)
  {
    v12 = 1;
  }

  else
  {
    v12 = qword_19E7034A8[(LOBYTE(v14.__val_) - 1)];
  }

  [MEMORY[0x1E696ABC0] errorWithDomain:@"WKErrorDomain" code:v12 userInfo:v10];
  (*(*(self + 8) + 16))();
  if (v10)
  {
  }

  if (v5)
  {
LABEL_20:
    CFRelease(*(v5 + 8));
  }
}

- (uint64_t)getAvailableContentRuleListIdentifiers:(uint64_t)identifiers
{
  v7[0] = *a2;
  v3 = a2[1];
  *a2 = 0;
  a2[1] = 0;
  v7[1] = v3;
  WTF::createNSArray<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &>(v7, &v8);
  (*(*(identifiers + 8) + 16))();
  v5 = v8;
  v8 = 0;
  if (v5)
  {
  }

  return WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v7, v4);
}

- (uint64_t)getAvailableContentRuleListIdentifiers:(const void *)identifiers
{
  *identifiers = &unk_1F10F4A78;
  _Block_release(identifiers[1]);

  return WTF::fastFree(identifiers, v2);
}

- (uint64_t)removeContentRuleListForIdentifier:(uint64_t)identifier completionHandler:
{
  *identifier = &unk_1F10F4AA0;
  _Block_release(*(identifier + 8));
  return identifier;
}

- (uint64_t)removeContentRuleListForIdentifier:(const void *)identifier completionHandler:
{
  *identifier = &unk_1F10F4AA0;
  _Block_release(identifier[1]);

  return WTF::fastFree(identifier, v2);
}

- (void)removeContentRuleListForIdentifier:(const std::error_category *)identifier completionHandler:
{
  v14[1] = *MEMORY[0x1E69E9840];
  *&v12.__val_ = a2;
  v12.__cat_ = identifier;
  if (a2)
  {
    v13 = *MEMORY[0x1E696A478];
    v4 = objc_alloc(MEMORY[0x1E696AEC0]);
    std::error_code::message(&v11, &v12);
    if ((v11.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v5 = &v11;
    }

    else
    {
      v5 = v11.__r_.__value_.__r.__words[0];
    }

    v6 = [v4 initWithFormat:@"Rule list removal failed: %s", v5];
    v14[0] = v6;
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];
    v8 = v7;
    if (v7)
    {
      v9 = v7;
    }

    if (v6)
    {
    }

    if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v11.__r_.__value_.__l.__data_);
    }

    [MEMORY[0x1E696ABC0] errorWithDomain:@"WKErrorDomain" code:8 userInfo:v8];
    (*(*(self + 8) + 16))();
    if (v8)
    {
    }
  }

  else
  {
    v10 = *(*(self + 8) + 16);

    v10();
  }
}

@end