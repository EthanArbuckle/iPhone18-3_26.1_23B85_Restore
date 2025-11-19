@interface _ATXBundleIdSet
+ (id)sharedInstance;
- (_ATXBundleIdSet)init;
@end

@implementation _ATXBundleIdSet

+ (id)sharedInstance
{
  if (sharedInstance__pasOnceToken7_25 != -1)
  {
    +[_ATXBundleIdSet sharedInstance];
  }

  v3 = sharedInstance__pasExprOnceResult_30;

  return v3;
}

- (_ATXBundleIdSet)init
{
  v7.receiver = self;
  v7.super_class = _ATXBundleIdSet;
  v2 = [(_ATXBundleIdSet *)&v7 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CEB3C0] pathForResource:@"_ATXBundleIdSet" ofType:@"trie" isDirectory:0];
    if (v3)
    {
      v4 = [objc_alloc(MEMORY[0x277D42558]) initWithPath:v3];
      trie = v2->_trie;
      v2->_trie = v4;
    }

    else
    {
      trie = __atxlog_handle_default();
      if (os_log_type_enabled(trie, OS_LOG_TYPE_ERROR))
      {
        [(_ATXBundleIdSet *)trie init];
      }
    }
  }

  return v2;
}

@end