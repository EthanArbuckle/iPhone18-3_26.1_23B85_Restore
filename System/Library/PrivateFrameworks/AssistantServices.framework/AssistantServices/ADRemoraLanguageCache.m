@interface ADRemoraLanguageCache
- (ADRemoraLanguageCache)init;
- (void)_languageCodeDidChange:(id)a3 forEndpointUUID:(id)a4;
- (void)getActiveLanguageCodesWithCompletion:(id)a3;
@end

@implementation ADRemoraLanguageCache

- (void)_languageCodeDidChange:(id)a3 forEndpointUUID:(id)a4
{
  v10 = a3;
  v6 = a4;
  if (v10 && v6)
  {
    v7 = [(NSMutableDictionary *)self->_uuidToLanguageMap objectForKey:v6];
    if (v7)
    {
      v8 = [(NSMutableDictionary *)self->_languageToUUIDMap objectForKey:v7];
      [v8 removeObject:v6];
    }

    v9 = [(NSMutableDictionary *)self->_languageToUUIDMap objectForKey:v10];
    if (!v9)
    {
      v9 = objc_alloc_init(NSMutableSet);
    }

    [v9 addObject:v6];
    [(NSMutableDictionary *)self->_languageToUUIDMap setObject:v9 forKey:v10];
    [(NSMutableDictionary *)self->_uuidToLanguageMap setObject:v10 forKey:v6];
  }
}

- (void)getActiveLanguageCodesWithCompletion:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    queue = self->_queue;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10019EC08;
    v7[3] = &unk_10051E038;
    v7[4] = self;
    v8 = v4;
    dispatch_async(queue, v7);
  }
}

- (ADRemoraLanguageCache)init
{
  v11.receiver = self;
  v11.super_class = ADRemoraLanguageCache;
  v2 = [(ADRemoraLanguageCache *)&v11 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("languageCacheQueue", v3);

    queue = v2->_queue;
    v2->_queue = v4;

    v6 = objc_alloc_init(NSMutableDictionary);
    languageToUUIDMap = v2->_languageToUUIDMap;
    v2->_languageToUUIDMap = v6;

    v8 = objc_alloc_init(NSMutableDictionary);
    uuidToLanguageMap = v2->_uuidToLanguageMap;
    v2->_uuidToLanguageMap = v8;
  }

  return v2;
}

@end