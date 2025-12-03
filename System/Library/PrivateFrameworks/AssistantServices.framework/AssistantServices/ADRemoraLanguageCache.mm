@interface ADRemoraLanguageCache
- (ADRemoraLanguageCache)init;
- (void)_languageCodeDidChange:(id)change forEndpointUUID:(id)d;
- (void)getActiveLanguageCodesWithCompletion:(id)completion;
@end

@implementation ADRemoraLanguageCache

- (void)_languageCodeDidChange:(id)change forEndpointUUID:(id)d
{
  changeCopy = change;
  dCopy = d;
  if (changeCopy && dCopy)
  {
    v7 = [(NSMutableDictionary *)self->_uuidToLanguageMap objectForKey:dCopy];
    if (v7)
    {
      v8 = [(NSMutableDictionary *)self->_languageToUUIDMap objectForKey:v7];
      [v8 removeObject:dCopy];
    }

    v9 = [(NSMutableDictionary *)self->_languageToUUIDMap objectForKey:changeCopy];
    if (!v9)
    {
      v9 = objc_alloc_init(NSMutableSet);
    }

    [v9 addObject:dCopy];
    [(NSMutableDictionary *)self->_languageToUUIDMap setObject:v9 forKey:changeCopy];
    [(NSMutableDictionary *)self->_uuidToLanguageMap setObject:changeCopy forKey:dCopy];
  }
}

- (void)getActiveLanguageCodesWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = completionCopy;
  if (completionCopy)
  {
    queue = self->_queue;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10019EC08;
    v7[3] = &unk_10051E038;
    v7[4] = self;
    v8 = completionCopy;
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