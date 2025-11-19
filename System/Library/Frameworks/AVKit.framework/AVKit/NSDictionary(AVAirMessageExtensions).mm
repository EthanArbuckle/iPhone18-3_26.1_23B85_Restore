@interface NSDictionary(AVAirMessageExtensions)
- (id)airMessageCanonicalForm;
@end

@implementation NSDictionary(AVAirMessageExtensions)

- (id)airMessageCanonicalForm
{
  v25 = *MEMORY[0x1E69E9840];
  v2 = [a1 mutableCopy];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v3 = a1;
  v4 = [v3 countByEnumeratingWithState:&v18 objects:v24 count:16];
  if (v4)
  {
    v6 = v4;
    v7 = *v19;
    *&v5 = 138543362;
    v17 = v5;
    do
    {
      v8 = 0;
      do
      {
        if (*v19 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v18 + 1) + 8 * v8);
        v10 = [v2 objectForKeyedSubscript:{v9, v17, v18}];
        v11 = [MEMORY[0x1E695DFB0] null];
        v12 = [v10 isEqual:v11];

        if (v12)
        {
          goto LABEL_7;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v13 = [v10 stringValue];
          [v2 setObject:v13 forKeyedSubscript:v9];
        }

        else
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v14 = _avairlog();
            if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
            {
              *buf = v17;
              v23 = v9;
              _os_log_impl(&dword_18B49C000, v14, OS_LOG_TYPE_DEFAULT, "value for '%{public}@' is neither a string nor convertible to one", buf, 0xCu);
            }

LABEL_7:
            [v2 removeObjectForKey:v9];
            goto LABEL_10;
          }

          if ([v10 isEqual:&stru_1EFED57D8])
          {
            goto LABEL_7;
          }
        }

LABEL_10:

        ++v8;
      }

      while (v6 != v8);
      v15 = [v3 countByEnumeratingWithState:&v18 objects:v24 count:16];
      v6 = v15;
    }

    while (v15);
  }

  return v2;
}

@end