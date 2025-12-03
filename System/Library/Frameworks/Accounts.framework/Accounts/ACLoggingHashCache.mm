@interface ACLoggingHashCache
+ (id)sharedCache;
- (ACLoggingHashCache)initWithMaxCapacity:(unint64_t)capacity;
- (id)hashedString:(id)string;
@end

@implementation ACLoggingHashCache

+ (id)sharedCache
{
  if (sharedCache_onceToken != -1)
  {
    +[ACLoggingHashCache sharedCache];
  }

  v3 = sharedCache_sharedCache;

  return v3;
}

uint64_t __33__ACLoggingHashCache_sharedCache__block_invoke()
{
  sharedCache_sharedCache = [[ACLoggingHashCache alloc] initWithMaxCapacity:25];

  return MEMORY[0x1EEE66BB8]();
}

- (ACLoggingHashCache)initWithMaxCapacity:(unint64_t)capacity
{
  v11.receiver = self;
  v11.super_class = ACLoggingHashCache;
  v4 = [(ACLoggingHashCache *)&v11 init];
  v5 = v4;
  if (v4)
  {
    v4->_maxCapacity = capacity;
    v4->_cacheLock._os_unfair_lock_opaque = 0;
    v6 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:capacity];
    cacheDictionary = v5->_cacheDictionary;
    v5->_cacheDictionary = v6;

    v8 = [MEMORY[0x1E695DF70] arrayWithCapacity:capacity];
    oldestKeys = v5->_oldestKeys;
    v5->_oldestKeys = v8;
  }

  return v5;
}

- (id)hashedString:(id)string
{
  stringCopy = string;
  if (stringCopy)
  {
    if (_os_feature_enabled_impl())
    {
      v5 = stringCopy;
    }

    else
    {
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v9 = __35__ACLoggingHashCache_hashedString___block_invoke;
      v10 = &unk_1E7975450;
      selfCopy = self;
      v12 = stringCopy;
      v6 = v8;
      os_unfair_lock_lock(&self->_cacheLock);
      v5 = v9(v6);
      os_unfair_lock_unlock(&self->_cacheLock);
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

id __35__ACLoggingHashCache_hashedString___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 16) objectForKeyedSubscript:*(a1 + 40)];

  if (v2)
  {
    v3 = [*(*(a1 + 32) + 16) objectForKeyedSubscript:*(a1 + 40)];
  }

  else
  {
    v3 = [*(a1 + 40) ac_sha512HashString];
    if (v3)
    {
      v4 = [*(*(a1 + 32) + 16) count];
      v5 = *(a1 + 32);
      if ((v4 + 1) > *(v5 + 32))
      {
        v6 = [*(v5 + 24) firstObject];
        v7 = v6;
        if (v6 && ([v6 isEqualToString:*(a1 + 40)] & 1) == 0)
        {
          [*(*(a1 + 32) + 16) setObject:0 forKeyedSubscript:v7];
          [*(*(a1 + 32) + 24) removeObject:v7];
        }

        v5 = *(a1 + 32);
      }

      v8 = [*(v5 + 24) lastObject];
      v9 = [v8 isEqualToString:*(a1 + 40)];

      if ((v9 & 1) == 0)
      {
        [*(*(a1 + 32) + 24) removeObject:*(a1 + 40)];
        [*(*(a1 + 32) + 24) addObject:*(a1 + 40)];
      }

      [*(*(a1 + 32) + 16) setObject:v3 forKeyedSubscript:*(a1 + 40)];
    }
  }

  return v3;
}

@end