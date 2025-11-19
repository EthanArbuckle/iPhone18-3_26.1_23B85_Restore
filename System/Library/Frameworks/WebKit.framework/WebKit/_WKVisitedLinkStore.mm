@interface _WKVisitedLinkStore
- (BOOL)containsVisitedLinkWithURL:(id)a3;
- (_WKVisitedLinkStore)init;
- (void)addVisitedLinkWithString:(id)a3;
- (void)addVisitedLinkWithURL:(id)a3;
- (void)dealloc;
- (void)removeAll;
- (void)removeVisitedLinkWithURL:(id)a3;
@end

@implementation _WKVisitedLinkStore

- (_WKVisitedLinkStore)init
{
  v7.receiver = self;
  v7.super_class = _WKVisitedLinkStore;
  v2 = [(_WKVisitedLinkStore *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v4 = API::Object::apiObjectsUnderConstruction(v2);
    v5 = [(_WKVisitedLinkStore *)v3 _apiObject];
    v9 = v3;
    v10 = v5;
    WTF::HashMap<API::Object *,void const*,WTF::DefaultHash<API::Object *>,WTF::HashTraits<API::Object *>,WTF::HashTraits<void const*>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<void const*>(v4, &v10, &v9, v8);
    WebKit::VisitedLinkStore::VisitedLinkStore([(_WKVisitedLinkStore *)v3 _apiObject]);
  }

  return v3;
}

- (void)dealloc
{
  v3 = objc_opt_class();
  if ((WebCoreObjCScheduleDeallocateOnMainRunLoop(v3, self) & 1) == 0)
  {
    CFRetain(*&self->_visitedLinkStore.m_storage.data[8]);
    WebKit::VisitedLinkStore::~VisitedLinkStore(&self->_visitedLinkStore);
    CFRelease(*&self->_visitedLinkStore.m_storage.data[8]);
    v4.receiver = self;
    v4.super_class = _WKVisitedLinkStore;
    [(_WKVisitedLinkStore *)&v4 dealloc];
  }
}

- (void)addVisitedLinkWithURL:(id)a3
{
  MEMORY[0x19EB02040](&v8, [a3 absoluteString]);
  v6 = WebCore::computeSharedStringHash(&v8, v4);
  v7 = v8;
  v8 = 0;
  if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v7, v5);
  }

  CFRetain(*&self->_visitedLinkStore.m_storage.data[8]);
  WebKit::SharedStringHashStore::scheduleAddition(&self[1]._visitedLinkStore.m_storage.data[8], v6);
  CFRelease(*&self->_visitedLinkStore.m_storage.data[8]);
}

- (void)addVisitedLinkWithString:(id)a3
{
  CFRetain(*&self->_visitedLinkStore.m_storage.data[8]);
  MEMORY[0x19EB02040](&v9, a3);
  v6 = WebCore::computeSharedStringHash(&v9, v5);
  WebKit::SharedStringHashStore::scheduleAddition(&self[1]._visitedLinkStore.m_storage.data[8], v6);
  v8 = v9;
  v9 = 0;
  if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v8, v7);
  }

  CFRelease(*&self->_visitedLinkStore.m_storage.data[8]);
}

- (void)removeAll
{
  CFRetain(*&self->_visitedLinkStore.m_storage.data[8]);
  WebKit::VisitedLinkStore::removeAll(&self->_visitedLinkStore);
  v3 = *&self->_visitedLinkStore.m_storage.data[8];

  CFRelease(v3);
}

- (BOOL)containsVisitedLinkWithURL:(id)a3
{
  MEMORY[0x19EB02040](&v10, [a3 absoluteString]);
  v6 = WebCore::computeSharedStringHash(&v10, v4);
  v7 = v10;
  v10 = 0;
  if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v7, v5);
  }

  CFRetain(*&self->_visitedLinkStore.m_storage.data[8]);
  v8 = WebKit::SharedStringHashStore::contains(&self[1]._visitedLinkStore.m_storage.data[8], v6);
  CFRelease(*&self->_visitedLinkStore.m_storage.data[8]);
  return v8;
}

- (void)removeVisitedLinkWithURL:(id)a3
{
  MEMORY[0x19EB02040](&v8, [a3 absoluteString]);
  v6 = WebCore::computeSharedStringHash(&v8, v4);
  v7 = v8;
  v8 = 0;
  if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v7, v5);
  }

  CFRetain(*&self->_visitedLinkStore.m_storage.data[8]);
  WebKit::SharedStringHashStore::scheduleRemoval(&self[1]._visitedLinkStore.m_storage.data[8], v6);
  CFRelease(*&self->_visitedLinkStore.m_storage.data[8]);
}

@end