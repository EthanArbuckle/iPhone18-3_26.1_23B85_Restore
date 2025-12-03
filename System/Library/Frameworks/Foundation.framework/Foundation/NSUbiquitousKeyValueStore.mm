@interface NSUbiquitousKeyValueStore
+ (NSUbiquitousKeyValueStore)defaultStore;
+ (id)additionalStoreWithIdentifier:(id)identifier;
- (BOOL)BOOLForKey:(NSString *)aKey;
- (NSArray)arrayForKey:(NSString *)aKey;
- (NSData)dataForKey:(NSString *)aKey;
- (NSDictionary)dictionaryForKey:(NSString *)aKey;
- (NSString)stringForKey:(NSString *)aKey;
- (NSUbiquitousKeyValueStore)initWithStoreIdentifier:(id)identifier type:(int64_t)type;
- (double)doubleForKey:(NSString *)aKey;
- (id)_initWithStoreIdentifier:(id)identifier type:(int64_t)type;
- (uint64_t)longLongForKey:(NSString *)aKey;
- (void)_sourceDidChangePassthroughNotification:(id)notification;
- (void)dealloc;
- (void)setArray:(NSArray *)anArray forKey:(NSString *)aKey;
- (void)setBool:(BOOL)value forKey:(NSString *)aKey;
- (void)setData:(NSData *)aData forKey:(NSString *)aKey;
- (void)setDictionary:(NSDictionary *)aDictionary forKey:(NSString *)aKey;
- (void)setDouble:(double)value forKey:(NSString *)aKey;
- (void)setLongLong:(uint64_t)value forKey:(NSString *)aKey;
- (void)setString:(NSString *)aString forKey:(NSString *)aKey;
@end

@implementation NSUbiquitousKeyValueStore

+ (NSUbiquitousKeyValueStore)defaultStore
{
  if (_MergedGlobals_150 != -1)
  {
    dispatch_once(&_MergedGlobals_150, &__block_literal_global_83);
  }

  return qword_1ED440220;
}

NSUbiquitousKeyValueStore *__41__NSUbiquitousKeyValueStore_defaultStore__block_invoke()
{
  result = objc_alloc_init(NSUbiquitousKeyValueStore);
  qword_1ED440220 = result;
  return result;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = NSUbiquitousKeyValueStore;
  [(NSUbiquitousKeyValueStore *)&v3 dealloc];
}

- (NSUbiquitousKeyValueStore)initWithStoreIdentifier:(id)identifier type:(int64_t)type
{
  v10 = *MEMORY[0x1E69E9840];
  if (type >= 4)
  {
    v7 = _NSOSLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      v8 = 134217984;
      typeCopy = type;
      _os_log_fault_impl(&dword_18075C000, v7, OS_LOG_TYPE_FAULT, "Unsupported store type: %zd", &v8, 0xCu);
    }

    return 0;
  }

  else
  {

    return [(NSUbiquitousKeyValueStore *)self _initWithStoreIdentifier:identifier type:?];
  }
}

- (id)_initWithStoreIdentifier:(id)identifier type:(int64_t)type
{
  v11 = *MEMORY[0x1E69E9840];
  v10.receiver = self;
  v10.super_class = NSUbiquitousKeyValueStore;
  v6 = [(NSUbiquitousKeyValueStore *)&v10 init];
  if (v6)
  {
    if (qword_1ED440230 != -1)
    {
      dispatch_once(&qword_1ED440230, &__block_literal_global_9_0);
    }

    if (qword_1ED440228)
    {
      if ([qword_1ED440228 instancesRespondToSelector:sel_initWithStoreIdentifier_type_])
      {
        v7 = [[qword_1ED440228 alloc] initWithStoreIdentifier:identifier type:type];
        v6->_source = v7;
        if (!v7)
        {
          return v6;
        }

        goto LABEL_10;
      }

      NSLog(@"Unable to find initializer for SYDClientToDaemonConnection");
      if (v6->_source)
      {
LABEL_10:
        v8 = +[NSNotificationCenter defaultCenter];
        -[NSNotificationCenter addObserver:selector:name:object:](v8, "addObserver:selector:name:object:", v6, sel__sourceDidChangePassthroughNotification_, [qword_1ED440228 SYDUbiquitousKeyValueStoreDidChangeExternallyNotification], v6->_source);
      }
    }

    else
    {

      return 0;
    }
  }

  return v6;
}

void __59__NSUbiquitousKeyValueStore__initWithStoreIdentifier_type___block_invoke()
{
  if (dlopen([@"/System/Library/PrivateFrameworks/SyncedDefaults.framework/SyncedDefaults" fileSystemRepresentation], 256))
  {
    qword_1ED440228 = objc_lookUpClass("SYDClientToDaemonConnection");
  }

  else
  {
    v0 = dlerror();
    NSLog(@"NSUbiquitousKeyValueStore is unavailable: %s.", v0);
  }
}

+ (id)additionalStoreWithIdentifier:(id)identifier
{
  v3 = [[self alloc] initWithBundleIdentifier:0 storeIdentifier:identifier additionalStore:1];

  return v3;
}

- (void)_sourceDidChangePassthroughNotification:(id)notification
{
  v5 = +[NSNotificationCenter defaultCenter];
  userInfo = [notification userInfo];

  [(NSNotificationCenter *)v5 postNotificationName:@"NSUbiquitousKeyValueStoreDidChangeExternallyNotification" object:self userInfo:userInfo];
}

- (NSString)stringForKey:(NSString *)aKey
{
  v3 = [(NSUbiquitousKeyValueStore *)self objectForKey:aKey];
  if (!v3 || (_NSIsNSString() & 1) != 0)
  {
    return v3;
  }

  if (!_NSIsNSNumber())
  {
    return 0;
  }

  return [(NSString *)v3 stringValue];
}

- (void)setString:(NSString *)aString forKey:(NSString *)aKey
{
  if (aString && ([(NSString *)aString isNSString]& 1) == 0)
  {
    v8 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: expected value should be an %s.", _NSMethodExceptionProem(self, a2), "NSString"), 0}];
    objc_exception_throw(v8);
  }

  [(NSUbiquitousKeyValueStore *)self setObject:aString forKey:aKey];
}

- (NSArray)arrayForKey:(NSString *)aKey
{
  result = [(NSUbiquitousKeyValueStore *)self objectForKey:aKey];
  if (result)
  {
    v4 = result;
    if (_NSIsNSArray())
    {
      return v4;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

- (void)setArray:(NSArray *)anArray forKey:(NSString *)aKey
{
  if (anArray && ([(NSArray *)anArray isNSArray]& 1) == 0)
  {
    v8 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: expected value should be an %s.", _NSMethodExceptionProem(self, a2), "NSArray"), 0}];
    objc_exception_throw(v8);
  }

  [(NSUbiquitousKeyValueStore *)self setObject:anArray forKey:aKey];
}

- (NSDictionary)dictionaryForKey:(NSString *)aKey
{
  result = [(NSUbiquitousKeyValueStore *)self objectForKey:aKey];
  if (result)
  {
    v4 = result;
    if (_NSIsNSDictionary())
    {
      return v4;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

- (void)setDictionary:(NSDictionary *)aDictionary forKey:(NSString *)aKey
{
  if (aDictionary && ([(NSDictionary *)aDictionary isNSDictionary]& 1) == 0)
  {
    v8 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: expected value should be an %s.", _NSMethodExceptionProem(self, a2), "NSDictionary"), 0}];
    objc_exception_throw(v8);
  }

  [(NSUbiquitousKeyValueStore *)self setObject:aDictionary forKey:aKey];
}

- (NSData)dataForKey:(NSString *)aKey
{
  result = [(NSUbiquitousKeyValueStore *)self objectForKey:aKey];
  if (result)
  {
    v4 = result;
    if (_NSIsNSData())
    {
      return v4;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

- (void)setData:(NSData *)aData forKey:(NSString *)aKey
{
  if (aData && ([(NSData *)aData isNSData]& 1) == 0)
  {
    v8 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: expected value should be an %s.", _NSMethodExceptionProem(self, a2), "NSData"), 0}];
    objc_exception_throw(v8);
  }

  [(NSUbiquitousKeyValueStore *)self setObject:aData forKey:aKey];
}

- (uint64_t)longLongForKey:(NSString *)aKey
{
  v6[1] = *MEMORY[0x1E69E9840];
  result = [(NSUbiquitousKeyValueStore *)self objectForKey:aKey];
  v6[0] = 0;
  if (result)
  {
    v4 = result;
    if (_NSIsNSString())
    {
      v5 = 0;
      if (_NSScanLongLongFromString(v4, +[NSCharacterSet whitespaceAndNewlineCharacterSet], v6, &v5))
      {
        return v6[0];
      }

      else
      {
        return 0;
      }
    }

    else if (_NSIsNSNumber())
    {

      return [v4 longLongValue];
    }

    else
    {
      return 0;
    }
  }

  return result;
}

- (void)setLongLong:(uint64_t)value forKey:(NSString *)aKey
{
  v6 = [NSNumber numberWithLongLong:value];

  [(NSUbiquitousKeyValueStore *)self setObject:v6 forKey:aKey];
}

- (double)doubleForKey:(NSString *)aKey
{
  v3 = [(NSUbiquitousKeyValueStore *)self objectForKey:aKey];
  if (!v3)
  {
    return 0.0;
  }

  v4 = v3;
  if ((_NSIsNSString() & 1) == 0 && !_NSIsNSNumber())
  {
    return 0.0;
  }

  [v4 doubleValue];
  return result;
}

- (void)setDouble:(double)value forKey:(NSString *)aKey
{
  v6 = [NSNumber numberWithDouble:value];

  [(NSUbiquitousKeyValueStore *)self setObject:v6 forKey:aKey];
}

- (BOOL)BOOLForKey:(NSString *)aKey
{
  v3 = [(NSUbiquitousKeyValueStore *)self objectForKey:aKey];
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  if (_NSIsNSString())
  {
    if ([v4 isEqual:@"YES"])
    {
      return 1;
    }

    v7 = [v4 length];
    v5 = 1;
    if ([v4 compare:@"YES" options:1 range:{0, v7}])
    {
      v5 = 1;
      if ([v4 compare:@"Y" options:1 range:{0, v7}])
      {
        return [v4 integerValue] != 0;
      }
    }

    return v5;
  }

  if (!_NSIsNSNumber())
  {
    return 0;
  }

  return [v4 BOOLValue];
}

- (void)setBool:(BOOL)value forKey:(NSString *)aKey
{
  v6 = [NSNumber numberWithBool:value];

  [(NSUbiquitousKeyValueStore *)self setObject:v6 forKey:aKey];
}

@end