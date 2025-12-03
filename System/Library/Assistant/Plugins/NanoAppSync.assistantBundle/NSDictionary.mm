@interface NSDictionary
- (id)nas_arrayValueForKey:(id)key expectedContainingObjectsType:(Class)type;
- (id)nas_stringValueForKey:(id)key;
@end

@implementation NSDictionary

- (id)nas_arrayValueForKey:(id)key expectedContainingObjectsType:(Class)type
{
  keyCopy = key;
  v6 = [(NSDictionary *)self objectForKey:?];
  if (!v6)
  {
LABEL_17:
    v8 = 0;
    goto LABEL_18;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v18 = AFSiriLogContextPlugin;
    if (os_log_type_enabled(AFSiriLogContextPlugin, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v27 = "[NSDictionary(NASIntentsInfoSync) nas_arrayValueForKey:expectedContainingObjectsType:]";
      v28 = 2112;
      v29 = keyCopy;
      v30 = 2112;
      v31 = v6;
      _os_log_error_impl(&dword_0, v18, OS_LOG_TYPE_ERROR, "%s Value for key %@ is not an array: %@", buf, 0x20u);
    }

    goto LABEL_17;
  }

  v20 = v6;
  v7 = v6;
  v8 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v7, "count")}];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v9 = v7;
  v10 = [v9 countByEnumeratingWithState:&v22 objects:v34 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v23;
    do
    {
      v13 = 0;
      do
      {
        if (*v23 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v22 + 1) + 8 * v13);
        if (objc_opt_isKindOfClass())
        {
          [v8 addObject:v14];
        }

        else
        {
          v15 = AFSiriLogContextPlugin;
          if (os_log_type_enabled(AFSiriLogContextPlugin, OS_LOG_TYPE_ERROR))
          {
            v16 = v15;
            v17 = NSStringFromClass(type);
            *buf = 136315906;
            v27 = "[NSDictionary(NASIntentsInfoSync) nas_arrayValueForKey:expectedContainingObjectsType:]";
            v28 = 2112;
            v29 = keyCopy;
            v30 = 2114;
            v31 = v17;
            v32 = 2112;
            v33 = v9;
            _os_log_error_impl(&dword_0, v16, OS_LOG_TYPE_ERROR, "%s Value in array for key %@ is not of expected class %{public}@: %@, skipping", buf, 0x2Au);
          }
        }

        v13 = v13 + 1;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v22 objects:v34 count:16];
    }

    while (v11);
  }

  v6 = v20;
LABEL_18:

  return v8;
}

- (id)nas_stringValueForKey:(id)key
{
  keyCopy = key;
  v5 = [(NSDictionary *)self objectForKey:keyCopy];
  if (v5 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v7 = AFSiriLogContextPlugin;
    if (os_log_type_enabled(AFSiriLogContextPlugin, OS_LOG_TYPE_ERROR))
    {
      v9 = 136315650;
      v10 = "[NSDictionary(NASIntentsInfoSync) nas_stringValueForKey:]";
      v11 = 2112;
      v12 = keyCopy;
      v13 = 2112;
      v14 = v5;
      _os_log_error_impl(&dword_0, v7, OS_LOG_TYPE_ERROR, "%s Value for key %@ is not a string: %@", &v9, 0x20u);
    }

    v6 = 0;
  }

  else
  {
    v6 = v5;
  }

  return v6;
}

@end