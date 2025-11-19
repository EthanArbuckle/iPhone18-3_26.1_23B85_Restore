@interface BCExternalURLOpenPrompterContext
+ (id)sharedContextForOpening;
- (BCExternalURLOpenPrompterContext)init;
- (NSCache)responseCache;
- (void)_resetResponseCache;
- (void)setCacheResponses:(BOOL)a3;
@end

@implementation BCExternalURLOpenPrompterContext

+ (id)sharedContextForOpening
{
  if (qword_345E70 != -1)
  {
    sub_1EA628();
  }

  v3 = qword_345E78;

  return v3;
}

- (BCExternalURLOpenPrompterContext)init
{
  v3.receiver = self;
  v3.super_class = BCExternalURLOpenPrompterContext;
  result = [(BCExternalURLOpenPrompterContext *)&v3 init];
  if (result)
  {
    result->_cacheResponses = 1;
  }

  return result;
}

- (NSCache)responseCache
{
  if (self->_cacheResponses && !self->_responseCache)
  {
    v3 = objc_alloc_init(NSCache);
    [(NSCache *)v3 setTotalCostLimit:0x100000];
    responseCache = self->_responseCache;
    self->_responseCache = v3;

    v5 = objc_alloc_init(_BCExternalURLOpenPrompterResponseValue);
    dummyCacheValue = self->_dummyCacheValue;
    self->_dummyCacheValue = v5;
  }

  v7 = self->_responseCache;

  return v7;
}

- (void)setCacheResponses:(BOOL)a3
{
  if (self->_cacheResponses != a3)
  {
    self->_cacheResponses = a3;
    if (!a3)
    {
      self->_responseCache = 0;
      _objc_release_x1();
    }
  }
}

- (void)_resetResponseCache
{
  v2 = [(BCExternalURLOpenPrompterContext *)self responseCache];
  [v2 removeAllObjects];
}

@end