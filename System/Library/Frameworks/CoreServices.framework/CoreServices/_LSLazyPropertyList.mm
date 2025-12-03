@interface _LSLazyPropertyList
+ (_LSAggregatePropertyList)lazyPropertyListWithLazyPropertyLists:(uint64_t)lists;
+ (_LSDataBackedPropertyList)lazyPropertyListWithPropertyListData:(uint64_t)data;
+ (_LSDictionaryBackedPropertyList)lazyPropertyListWithPropertyList:(uint64_t)list;
+ (_LSLazyPropertyList)lazyPropertyListWithDatabase:(id)database unit:(unsigned int)unit;
+ (id)lazyPropertyListWithPropertyListURL:(uint64_t)l;
+ (id)lazyPropertyListWithPropertyListURL:(uint64_t)l options:(uint64_t)options error:;
- (_LSLazyPropertyList)init;
- (id)objectForKey:(id)key checkingKeyClass:(Class)class checkingValueClass:(Class)valueClass;
- (id)objectForKey:(id)key ofClass:(Class)class;
- (id)objectForKey:(id)key ofClass:(Class)class valuesOfClass:(Class)ofClass;
- (id)objectsForKeys:(id)keys;
- (id)propertyList;
- (id)uncheckedObjectsForKeys:(id)keys;
@end

@implementation _LSLazyPropertyList

- (_LSLazyPropertyList)init
{
  v3.receiver = self;
  v3.super_class = _LSLazyPropertyList;
  return [(LSPropertyList *)&v3 _init];
}

- (id)propertyList
{
  if (self)
  {
    var8[0] = 0;
    [self _getPropertyList:var8];
    self = var8[0];
    v1 = var8[2];
  }

  return self;
}

+ (_LSDataBackedPropertyList)lazyPropertyListWithPropertyListData:(uint64_t)data
{
  v2 = a2;
  objc_opt_self();
  v3 = [[_LSDataBackedPropertyList alloc] initWithPropertyListData:v2];

  return v3;
}

+ (id)lazyPropertyListWithPropertyListURL:(uint64_t)l
{
  v2 = a2;
  v3 = objc_opt_self();
  v8 = 0;
  v4 = [(_LSLazyPropertyList *)v3 lazyPropertyListWithPropertyListURL:v2 options:1 error:&v8];
  v5 = v8;
  if (v4)
  {
    v6 = _LSDefaultLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [(_LSLazyPropertyList *)v2 lazyPropertyListWithPropertyListURL:v6];
    }
  }

  else
  {
    v6 = _LSDefaultLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(_LSLazyPropertyList *)v2 lazyPropertyListWithPropertyListURL:v5, v6];
    }
  }

  return v4;
}

+ (id)lazyPropertyListWithPropertyListURL:(uint64_t)l options:(uint64_t)options error:
{
  v6 = a2;
  v7 = objc_opt_self();
  v8 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithContentsOfURL:v6 options:l error:options];
  if (v8)
  {
    v9 = [(_LSLazyPropertyList *)v7 lazyPropertyListWithPropertyListData:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (_LSDictionaryBackedPropertyList)lazyPropertyListWithPropertyList:(uint64_t)list
{
  v2 = a2;
  objc_opt_self();
  if ([v2 count])
  {
    v3 = [[_LSDictionaryBackedPropertyList alloc] initWithPropertyList:v2];
  }

  else
  {
    v3 = +[_LSEmptyPropertyList sharedInstance];
  }

  v4 = v3;

  return v4;
}

+ (_LSAggregatePropertyList)lazyPropertyListWithLazyPropertyLists:(uint64_t)lists
{
  v2 = a2;
  objc_opt_self();
  v3 = [[_LSAggregatePropertyList alloc] initWithLazyPropertyLists:v2];

  return v3;
}

- (id)uncheckedObjectsForKeys:(id)keys
{
  v22 = *MEMORY[0x1E69E9840];
  keysCopy = keys;
  if (!keysCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"LSLazyPropertyList.mm" lineNumber:152 description:{@"Invalid parameter not satisfying: %@", @"keys != nil"}];
  }

  v6 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(keysCopy, "count")}];
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = keysCopy;
  v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v8)
  {
    v9 = *v18;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        v12 = [(_LSLazyPropertyList *)self objectForKey:v11 ofClass:0];
        if (v12)
        {
          [v6 setObject:v12 forKeyedSubscript:v11];
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }

  v13 = [v6 copy];
  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

- (id)objectsForKeys:(id)keys
{
  keysCopy = keys;
  v5 = objc_autoreleasePoolPush();
  v6 = [(_LSLazyPropertyList *)self uncheckedObjectsForKeys:keysCopy];
  v7 = [[LSBundleInfoCachedValues alloc] _initWithKeys:keysCopy forDictionary:v6];

  objc_autoreleasePoolPop(v5);

  return v7;
}

- (id)objectForKey:(id)key ofClass:(Class)class
{
  v4 = [(_LSLazyPropertyList *)self objectForKey:key checkingKeyClass:class checkingValueClass:0];

  return v4;
}

- (id)objectForKey:(id)key ofClass:(Class)class valuesOfClass:(Class)ofClass
{
  v5 = [(_LSLazyPropertyList *)self objectForKey:key checkingKeyClass:class checkingValueClass:ofClass];

  return v5;
}

- (id)objectForKey:(id)key checkingKeyClass:(Class)class checkingValueClass:(Class)valueClass
{
  v34 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  v10 = objc_autoreleasePoolPush();
  if (!keyCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"LSLazyPropertyList.mm" lineNumber:204 description:{@"Invalid parameter not satisfying: %@", @"key != nil"}];
  }

  v26 = 0;
  v11 = [(_LSLazyPropertyList *)self _getValue:&v26 forPropertyListKey:keyCopy];
  v12 = v26;
  v13 = v12;
  if (v12)
  {
    v14 = v11;
  }

  else
  {
    v14 = 0;
  }

  if (v14)
  {
    v15 = v12;
    if (class && (objc_opt_isKindOfClass() & 1) == 0)
    {
      v13 = 0;
      v16 = v15;
LABEL_25:

      goto LABEL_26;
    }

    v13 = v15;
    if (valueClass)
    {
      if (_NSIsNSArray())
      {
        v16 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v15, "count")}];
        v29 = 0u;
        v30 = 0u;
        v27 = 0u;
        v28 = 0u;
        v17 = v15;
        v18 = [v17 countByEnumeratingWithState:&v27 objects:v31 count:16];
        if (v18)
        {
          v19 = *v28;
          do
          {
            for (i = 0; i != v18; ++i)
            {
              if (*v28 != v19)
              {
                objc_enumerationMutation(v17);
              }

              v21 = *(*(&v27 + 1) + 8 * i);
              if (objc_opt_isKindOfClass())
              {
                [v16 addObject:v21];
              }
            }

            v18 = [v17 countByEnumeratingWithState:&v27 objects:v31 count:16];
          }

          while (v18);
        }

        v13 = [v16 copy];
        goto LABEL_24;
      }

      v13 = v15;
      if (_NSIsNSDictionary())
      {
        v22 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v15, "count")}];
        v31[0] = MEMORY[0x1E69E9820];
        v31[1] = 3221225472;
        v31[2] = ___ZN14LaunchServices13PropertyListsL27filterValueFromPropertyListEP11objc_objectP10objc_classS4__block_invoke;
        v31[3] = &unk_1E6A1D1D8;
        valueClassCopy = valueClass;
        v16 = v22;
        v32 = v16;
        [v15 enumerateKeysAndObjectsUsingBlock:v31];
        v13 = [v16 copy];

        v17 = v32;
LABEL_24:

        goto LABEL_25;
      }
    }

LABEL_26:
  }

  objc_autoreleasePoolPop(v10);

  v23 = *MEMORY[0x1E69E9840];

  return v13;
}

+ (_LSLazyPropertyList)lazyPropertyListWithDatabase:(id)database unit:(unsigned int)unit
{
  databaseCopy = database;
  v7 = databaseCopy;
  if (!databaseCopy || !unit || (_LSPlistGet(databaseCopy, unit), (v8 = objc_claimAutoreleasedReturnValue()) == 0) || ([(_LSLazyPropertyList *)self lazyPropertyListWithPropertyListData:v8], v9 = objc_claimAutoreleasedReturnValue(), v8, !v9))
  {
    v9 = +[_LSEmptyPropertyList sharedInstance];
  }

  return v9;
}

+ (void)lazyPropertyListWithPropertyListURL:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138477827;
  v4 = a1;
  _os_log_debug_impl(&dword_18162D000, a2, OS_LOG_TYPE_DEBUG, "Loaded plist data at %{private}@ (don't know if valid yet)", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

+ (void)lazyPropertyListWithPropertyListURL:(os_log_t)log .cold.2(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = 138478083;
  v5 = a1;
  v6 = 2114;
  v7 = a2;
  _os_log_error_impl(&dword_18162D000, log, OS_LOG_TYPE_ERROR, "Failed to load plist data from %{private}@: %{public}@", &v4, 0x16u);
  v3 = *MEMORY[0x1E69E9840];
}

@end