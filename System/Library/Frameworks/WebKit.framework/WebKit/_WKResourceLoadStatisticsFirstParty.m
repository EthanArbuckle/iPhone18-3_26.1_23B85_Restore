@interface _WKResourceLoadStatisticsFirstParty
- (NSString)firstPartyDomain;
- (void)dealloc;
@end

@implementation _WKResourceLoadStatisticsFirstParty

- (void)dealloc
{
  v3 = objc_opt_class();
  if ((WebCoreObjCScheduleDeallocateOnMainRunLoop(v3, self) & 1) == 0)
  {
    API::ResourceLoadStatisticsFirstParty::~ResourceLoadStatisticsFirstParty(&self->_firstParty);
    v4.receiver = self;
    v4.super_class = _WKResourceLoadStatisticsFirstParty;
    [(_WKResourceLoadStatisticsFirstParty *)&v4 dealloc];
  }
}

- (NSString)firstPartyDomain
{
  v2 = *&self->_firstParty.m_storage.data[16];
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

@end