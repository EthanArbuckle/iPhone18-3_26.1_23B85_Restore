@interface NSDictionary
- (BOOL)aap_BOOLValueForKey:(id)a3;
- (id)aap_arrayValueForKey:(id)a3 expectedContainingObjectsType:(Class)a4;
- (id)aap_stringValueForKey:(id)a3;
@end

@implementation NSDictionary

- (BOOL)aap_BOOLValueForKey:(id)a3
{
  v3 = [(NSDictionary *)self objectForKey:?];
  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    if (os_log_type_enabled(AFSiriLogContextPlugin, OS_LOG_TYPE_ERROR))
    {
      sub_120B8();
    }

    return 0;
  }

  else
  {

    return [v3 BOOLValue];
  }
}

- (id)aap_stringValueForKey:(id)a3
{
  v3 = [(NSDictionary *)self objectForKey:?];
  if (v3)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (os_log_type_enabled(AFSiriLogContextPlugin, OS_LOG_TYPE_ERROR))
      {
        sub_1212C();
      }

      return 0;
    }
  }

  return v3;
}

- (id)aap_arrayValueForKey:(id)a3 expectedContainingObjectsType:(Class)a4
{
  result = [(NSDictionary *)self objectForKey:?];
  if (result)
  {
    v7 = result;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v7, "count")}];
      v16 = 0u;
      v17 = 0u;
      v18 = 0u;
      v19 = 0u;
      v9 = [v7 countByEnumeratingWithState:&v16 objects:v28 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v17;
        do
        {
          v12 = 0;
          do
          {
            if (*v17 != v11)
            {
              objc_enumerationMutation(v7);
            }

            v13 = *(*(&v16 + 1) + 8 * v12);
            if (objc_opt_isKindOfClass())
            {
              [v8 addObject:v13];
            }

            else
            {
              v14 = AFSiriLogContextPlugin;
              if (os_log_type_enabled(AFSiriLogContextPlugin, OS_LOG_TYPE_ERROR))
              {
                v15 = NSStringFromClass(a4);
                *buf = 136315906;
                v21 = "[NSDictionary(AAPIntentsInfoSync) aap_arrayValueForKey:expectedContainingObjectsType:]";
                v22 = 2114;
                v23 = a3;
                v24 = 2114;
                v25 = v15;
                v26 = 2112;
                v27 = v7;
                _os_log_error_impl(&dword_0, v14, OS_LOG_TYPE_ERROR, "%s com.apple.siri.applications: Value in array for key %{public}@ is not of expected class %{public}@: %@, skipping", buf, 0x2Au);
              }
            }

            v12 = v12 + 1;
          }

          while (v10 != v12);
          v10 = [v7 countByEnumeratingWithState:&v16 objects:v28 count:16];
        }

        while (v10);
      }

      return v8;
    }

    else
    {
      if (os_log_type_enabled(AFSiriLogContextPlugin, OS_LOG_TYPE_ERROR))
      {
        sub_121A0();
      }

      return 0;
    }
  }

  return result;
}

@end