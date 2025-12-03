@interface _WKProcessPoolConfiguration
- ($115C4C562B26FF47E01F9F4EA65B5887)presentingApplicationProcessToken;
- (BOOL)prewarmsProcessesAutomatically;
- (BOOL)processSwapsOnNavigation;
- (NSArray)additionalReadAccessAllowedURLs;
- (NSArray)alwaysRevalidatedURLSchemes;
- (NSArray)cachePartitionedURLSchemes;
- (NSArray)memoryFootprintNotificationThresholds;
- (NSString)description;
- (NSString)timeZoneOverride;
- (NSURL)injectedBundleURL;
- (_WKProcessPoolConfiguration)init;
- (id)copyWithZone:(_NSZone *)zone;
- (void)dealloc;
- (void)setAdditionalReadAccessAllowedURLs:(id)ls;
- (void)setAlwaysRevalidatedURLSchemes:(id)schemes;
- (void)setCachePartitionedURLSchemes:(id)schemes;
- (void)setInjectedBundleURL:(id)l;
- (void)setMemoryFootprintNotificationThresholds:(id)thresholds;
- (void)setPresentingApplicationProcessToken:(id *)token;
- (void)setTimeZoneOverride:(id)override;
@end

@implementation _WKProcessPoolConfiguration

- (_WKProcessPoolConfiguration)init
{
  v7.receiver = self;
  v7.super_class = _WKProcessPoolConfiguration;
  v2 = [(_WKProcessPoolConfiguration *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v4 = API::Object::apiObjectsUnderConstruction(v2);
    _apiObject = [(_WKProcessPoolConfiguration *)v3 _apiObject];
    v9 = v3;
    v10 = _apiObject;
    WTF::HashMap<API::Object *,void const*,WTF::DefaultHash<API::Object *>,WTF::HashTraits<API::Object *>,WTF::HashTraits<void const*>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<void const*>(v4, &v10, &v9, v8);
    API::ProcessPoolConfiguration::ProcessPoolConfiguration([(_WKProcessPoolConfiguration *)v3 _apiObject]);
  }

  return v3;
}

- (void)dealloc
{
  v3 = objc_opt_class();
  if ((WebCoreObjCScheduleDeallocateOnMainRunLoop(v3, self) & 1) == 0)
  {
    API::ProcessPoolConfiguration::~ProcessPoolConfiguration(&self->_processPoolConfiguration, v4);
    v5.receiver = self;
    v5.super_class = _WKProcessPoolConfiguration;
    [(_WKProcessPoolConfiguration *)&v5 dealloc];
  }
}

- (NSURL)injectedBundleURL
{
  v2 = MEMORY[0x1E695DFF8];
  v3 = *&self->_processPoolConfiguration.m_storage.data[16];
  if (v3)
  {
    atomic_fetch_add_explicit(v3, 2u, memory_order_relaxed);
    MEMORY[0x19EB00B70](&v9, v3, a2);
    if (atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v3, v4);
    }
  }

  else
  {
    v9 = &stru_1F1147748;
    v5 = &stru_1F1147748;
  }

  v6 = [v2 fileURLWithPath:v9];
  v7 = v9;
  v9 = 0;
  if (v7)
  {
  }

  return v6;
}

- (void)setInjectedBundleURL:(id)l
{
  if (l && ([l isFileURL] & 1) == 0)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"Injected Bundle URL must be a file URL"];
  }

  MEMORY[0x19EB02040](&v9, [l path]);
  v6 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(v9, 2u, memory_order_relaxed);
  }

  v7 = *&self->_processPoolConfiguration.m_storage.data[16];
  *&self->_processPoolConfiguration.m_storage.data[16] = v6;
  if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v7, v5);
  }

  v8 = v9;
  v9 = 0;
  if (v8)
  {
    if (atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v8, v5);
    }
  }
}

- (NSArray)additionalReadAccessAllowedURLs
{
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(&v13, &self->_anon_38[8]);
  if (v14)
  {
    v3 = objc_alloc(MEMORY[0x1E695DF70]);
    v4 = [v3 initWithCapacity:v14];
    if (v14)
    {
      v5 = v13;
      for (i = 8 * v14; i; i -= 8)
      {
        v7 = MEMORY[0x1E695DFF8];
        WTF::String::utf8();
        if (v15)
        {
          v8 = v15 + 16;
        }

        else
        {
          v8 = 0;
        }

        v9 = [v7 fileURLWithFileSystemRepresentation:v8 isDirectory:0 relativeToURL:0];
        v10 = v15;
        v15 = 0;
        if (v10)
        {
          if (*v10 == 1)
          {
            WTF::fastFree(v10, v2);
            if (!v9)
            {
              goto LABEL_12;
            }

LABEL_11:
            [(NSArray *)v4 addObject:v9];
            goto LABEL_12;
          }

          --*v10;
        }

        if (v9)
        {
          goto LABEL_11;
        }

LABEL_12:
        v5 += 8;
      }
    }

    if (v4)
    {
      v11 = v4;
    }
  }

  else
  {
    v4 = MEMORY[0x1E695E0F0];
  }

  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v13, v2);
  return v4;
}

- (void)setAdditionalReadAccessAllowedURLs:(id)ls
{
  v30 = *MEMORY[0x1E69E9840];
  v27 = 0;
  v28 = 0;
  v5 = [ls count];
  if (v5)
  {
    if (v5 >> 29)
    {
      __break(0xC471u);
      return;
    }

    LODWORD(v28) = v5;
    v27 = WTF::fastMalloc((8 * v5));
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v6 = [ls countByEnumeratingWithState:&v23 objects:v29 count:16];
  if (v6)
  {
    v7 = *v24;
    v8 = *MEMORY[0x1E695D940];
    do
    {
      v9 = 0;
      do
      {
        if (*v24 != v7)
        {
          objc_enumerationMutation(ls);
        }

        v10 = *(*(&v23 + 1) + 8 * v9);
        if (([v10 isFileURL] & 1) == 0)
        {
          [MEMORY[0x1E695DF30] raise:v8 format:{@"%@ is not a file URL", v10}];
        }

        fileSystemRepresentation = [v10 fileSystemRepresentation];
        WTF::String::fromUTF8(&v22, fileSystemRepresentation, v12);
        LODWORD(v14) = HIDWORD(v28);
        if (HIDWORD(v28) == v28)
        {
          v17 = WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v27, HIDWORD(v28) + 1, &v22);
          v14 = HIDWORD(v28);
          v18 = v27;
          v19 = *v17;
          *v17 = 0;
          *(v18 + 8 * v14) = v19;
        }

        else
        {
          v15 = v22;
          v22 = 0;
          *(v27 + 8 * HIDWORD(v28)) = v15;
        }

        HIDWORD(v28) = v14 + 1;
        v16 = v22;
        v22 = 0;
        if (v16 && atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v16, v13);
        }

        ++v9;
      }

      while (v6 != v9);
      v20 = [ls countByEnumeratingWithState:&v23 objects:v29 count:16];
      v6 = v20;
    }

    while (v20);
  }

  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::operator=(&self->_anon_38[8], &v27);
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v27, v21);
}

- (NSArray)cachePartitionedURLSchemes
{
  WTF::createNSArray<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(&self->_processPoolConfiguration.m_storage.data[24], &v6);
  v2 = v6;
  v6 = 0;
  if (v2)
  {
    v3 = v2;
    v4 = v6;
    v6 = 0;
    if (v4)
    {
    }
  }

  return v2;
}

- (void)setCachePartitionedURLSchemes:(id)schemes
{
  schemesCopy = schemes;
  v10 = &schemesCopy;
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> WTF::makeVector<WTF::String>(NSArray *)::{lambda(unsigned long)#1}>(&v8, [schemes count], &v10, 0);
  v5 = *&self->_processPoolConfiguration.m_storage.data[36];
  if (v5)
  {
    WTF::VectorDestructor<true,WTF::String>::destruct(*&self->_processPoolConfiguration.m_storage.data[24], (*&self->_processPoolConfiguration.m_storage.data[24] + 8 * v5));
  }

  v6 = *&self->_processPoolConfiguration.m_storage.data[24];
  if (v6)
  {
    *&self->_processPoolConfiguration.m_storage.data[24] = 0;
    *&self->_processPoolConfiguration.m_storage.data[32] = 0;
    WTF::fastFree(v6, v4);
  }

  *&self->_processPoolConfiguration.m_storage.data[24] = v8;
  v7 = v9;
  v8 = 0;
  v9 = 0;
  *&self->_processPoolConfiguration.m_storage.data[32] = v7;
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v8, v4);
}

- (NSArray)alwaysRevalidatedURLSchemes
{
  WTF::createNSArray<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(&self->_processPoolConfiguration.m_storage.data[40], &v6);
  v2 = v6;
  v6 = 0;
  if (v2)
  {
    v3 = v2;
    v4 = v6;
    v6 = 0;
    if (v4)
    {
    }
  }

  return v2;
}

- (void)setAlwaysRevalidatedURLSchemes:(id)schemes
{
  schemesCopy = schemes;
  v10 = &schemesCopy;
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> WTF::makeVector<WTF::String>(NSArray *)::{lambda(unsigned long)#1}>(&v8, [schemes count], &v10, 0);
  v5 = *&self->_anon_38[4];
  if (v5)
  {
    WTF::VectorDestructor<true,WTF::String>::destruct(*&self->_processPoolConfiguration.m_storage.data[40], (*&self->_processPoolConfiguration.m_storage.data[40] + 8 * v5));
  }

  v6 = *&self->_processPoolConfiguration.m_storage.data[40];
  if (v6)
  {
    *&self->_processPoolConfiguration.m_storage.data[40] = 0;
    *self->_anon_38 = 0;
    WTF::fastFree(v6, v4);
  }

  *&self->_processPoolConfiguration.m_storage.data[40] = v8;
  v7 = v9;
  v8 = 0;
  v9 = 0;
  *self->_anon_38 = v7;
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v8, v4);
}

- (void)setPresentingApplicationProcessToken:(id *)token
{
  v3 = *token->var0;
  *&self->_anon_38[68] = *&token->var0[4];
  *&self->_anon_38[52] = v3;
  self->_anon_38[84] = 1;
}

- ($115C4C562B26FF47E01F9F4EA65B5887)presentingApplicationProcessToken
{
  if (self[4].var0[3])
  {
    v3 = *&self[3].var0[7];
    *retstr->var0 = *&self[3].var0[3];
    *&retstr->var0[4] = v3;
  }

  else
  {
    *retstr->var0 = 0u;
    *&retstr->var0[4] = 0u;
  }

  return self;
}

- (BOOL)processSwapsOnNavigation
{
  v2 = 86;
  if (self->_anon_38[37])
  {
    v2 = 84;
  }

  return self->_processPoolConfiguration.m_storage.data[v2];
}

- (BOOL)prewarmsProcessesAutomatically
{
  v2 = 93;
  if (self->_anon_38[42])
  {
    v2 = 89;
  }

  return self->_processPoolConfiguration.m_storage.data[v2];
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = objc_opt_class();
  v5 = [v3 initWithFormat:@"<%@: %p", NSStringFromClass(v4), self];
  v6 = v5;
  v7 = *&self->_processPoolConfiguration.m_storage.data[16];
  if (v7 && *(v7 + 4))
  {
    v8 = [v5 stringByAppendingFormat:@"; injectedBundleURL: %@>", -[_WKProcessPoolConfiguration injectedBundleURL](self, "injectedBundleURL")];
  }

  else
  {
    v8 = [v5 stringByAppendingString:@">"];
  }

  v9 = v8;
  if (v6)
  {
  }

  return v9;
}

- (id)copyWithZone:(_NSZone *)zone
{
  API::ProcessPoolConfiguration::copy(&self->_processPoolConfiguration, &v8);
  v3 = *(v8 + 1);
  if (v3)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      result = 117;
      __break(0xC471u);
      return result;
    }

    v4 = v3;
  }

  v5 = v3;
  if (v3)
  {
  }

  v6 = v8;
  v8 = 0;
  if (v6)
  {
    CFRelease(*(v6 + 1));
  }

  return v5;
}

- (NSString)timeZoneOverride
{
  v2 = *&self->_anon_38[88];
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

- (void)setTimeZoneOverride:(id)override
{
  MEMORY[0x19EB02040](&v8, override);
  v5 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(v8, 2u, memory_order_relaxed);
  }

  v6 = *&self->_anon_38[88];
  *&self->_anon_38[88] = v5;
  if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v6, v4);
  }

  v7 = v8;
  v8 = 0;
  if (v7)
  {
    if (atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v7, v4);
    }
  }
}

- (NSArray)memoryFootprintNotificationThresholds
{
  v3 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:*&self->_anon_38[116]];
  v4 = *&self->_anon_38[116];
  if (v4)
  {
    v5 = *&self->_anon_38[104];
    v6 = 8 * v4;
    do
    {
      -[NSArray addObject:](v3, "addObject:", [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*v5++]);
      v6 -= 8;
    }

    while (v6);
  }

  if (v3)
  {
    v7 = v3;
  }

  return v3;
}

- (void)setMemoryFootprintNotificationThresholds:(id)thresholds
{
  v21 = *MEMORY[0x1E69E9840];
  v18 = 0;
  v19 = 0;
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(&v18, [thresholds count]);
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = [thresholds countByEnumeratingWithState:&v14 objects:v20 count:16];
  if (v6)
  {
    v7 = *v15;
    do
    {
      v8 = 0;
      do
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(thresholds);
        }

        unsignedLongLongValue = [*(*(&v14 + 1) + 8 * v8) unsignedLongLongValue];
        v13 = unsignedLongLongValue;
        v10 = HIDWORD(v19);
        if (HIDWORD(v19) == v19)
        {
          v11 = WTF::Vector<WTF::Ref<WebCore::SecurityOrigin,WTF::RawPtrTraits<WebCore::SecurityOrigin>,WTF::DefaultRefDerefTraits<WebCore::SecurityOrigin>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v18, HIDWORD(v19) + 1, &v13);
          v10 = HIDWORD(v19);
          *(v18 + 8 * HIDWORD(v19)) = *v11;
        }

        else
        {
          *(v18 + 8 * HIDWORD(v19)) = unsignedLongLongValue;
        }

        HIDWORD(v19) = v10 + 1;
        ++v8;
      }

      while (v6 != v8);
      v6 = [thresholds countByEnumeratingWithState:&v14 objects:v20 count:16];
    }

    while (v6);
  }

  v12 = *&self->_anon_38[104];
  if (v12)
  {
    *&self->_anon_38[104] = 0;
    *&self->_anon_38[112] = 0;
    WTF::fastFree(v12, v5);
  }

  *&self->_anon_38[104] = v18;
  *&self->_anon_38[112] = v19;
}

@end