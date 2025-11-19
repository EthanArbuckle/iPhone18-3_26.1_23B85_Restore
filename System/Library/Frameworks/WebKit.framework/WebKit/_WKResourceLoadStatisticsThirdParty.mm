@interface _WKResourceLoadStatisticsThirdParty
- (NSArray)underFirstParties;
- (NSString)thirdPartyDomain;
- (void)dealloc;
@end

@implementation _WKResourceLoadStatisticsThirdParty

- (void)dealloc
{
  v3 = objc_opt_class();
  if ((WebCoreObjCScheduleDeallocateOnMainRunLoop(v3, self) & 1) == 0)
  {
    API::ResourceLoadStatisticsThirdParty::~ResourceLoadStatisticsThirdParty(&self->_thirdParty);
    v4.receiver = self;
    v4.super_class = _WKResourceLoadStatisticsThirdParty;
    [(_WKResourceLoadStatisticsThirdParty *)&v4 dealloc];
  }
}

- (NSString)thirdPartyDomain
{
  v2 = *&self->_thirdParty.m_storage.data[16];
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

- (NSArray)underFirstParties
{
  v3 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:*&self->_thirdParty.m_storage.data[36]];
  v4 = v3;
  v5 = *&self->_thirdParty.m_storage.data[36];
  if (v5)
  {
    v6 = *&self->_thirdParty.m_storage.data[24];
    v7 = v6 + 24 * v5;
    do
    {
      v8 = WTF::RunLoop::mainSingleton(v3);
      if ((WTF::RunLoop::isCurrent(v8) & 1) == 0)
      {
LABEL_14:
        __break(0xC471u);
        JUMPOUT(0x19D63DB30);
      }

      v9 = API::Object::newObject(0x28uLL, 94);
      *API::Object::Object(v9) = &unk_1F10E5F90;
      v10 = *v6;
      if (*v6)
      {
        atomic_fetch_add_explicit(v10, 2u, memory_order_relaxed);
      }

      *(v9 + 16) = v10;
      *(v9 + 24) = *(v6 + 8);
      v11 = *(v9 + 8);
      if (v11)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_14;
        }

        v12 = v11;
        CFRelease(*(v9 + 8));
        [(NSArray *)v4 addObject:v11];
      }

      else
      {
        CFRelease(0);
      }

      v6 += 24;
    }

    while (v6 != v7);
  }

  if (v4)
  {
    v13 = v4;
  }

  return v4;
}

@end