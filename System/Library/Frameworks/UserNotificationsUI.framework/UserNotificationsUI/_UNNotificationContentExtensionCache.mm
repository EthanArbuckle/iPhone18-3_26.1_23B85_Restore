@interface _UNNotificationContentExtensionCache
- (_UNNotificationContentExtensionCache)init;
- (id)_sourceDictForSource:(id)a3;
- (id)extensionForNotificationSourceIdentifier:(id)a3 categoryIdentifier:(id)a4;
- (void)_addExtension:(id)a3;
- (void)_removeAllExtensions;
- (void)registerExtensions:(id)a3;
@end

@implementation _UNNotificationContentExtensionCache

- (_UNNotificationContentExtensionCache)init
{
  v6.receiver = self;
  v6.super_class = _UNNotificationContentExtensionCache;
  v2 = [(_UNNotificationContentExtensionCache *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    extensions = v2->_extensions;
    v2->_extensions = v3;
  }

  return v2;
}

- (id)extensionForNotificationSourceIdentifier:(id)a3 categoryIdentifier:(id)a4
{
  v4 = 0;
  if (a3 && a4)
  {
    v7 = a4;
    v8 = a3;
    v9 = [(_UNNotificationContentExtensionCache *)self extensions];
    v10 = [v9 objectForKey:v8];

    v11 = [v10 objectForKey:v7];

    if (v11)
    {
      v15 = 0;
      v4 = [MEMORY[0x277CCA9C8] extensionWithIdentifier:v11 error:&v15];
      v12 = v15;
      if (v12)
      {
        v13 = UNLogExtensions;
        if (os_log_type_enabled(UNLogExtensions, OS_LOG_TYPE_ERROR))
        {
          [(_UNNotificationContentExtensionCache *)v11 extensionForNotificationSourceIdentifier:v12 categoryIdentifier:v13];
        }
      }
    }

    else
    {
      v4 = 0;
    }
  }

  return v4;
}

- (void)registerExtensions:(id)a3
{
  v34 = *MEMORY[0x277D85DE8];
  v4 = a3;
  [(_UNNotificationContentExtensionCache *)self _removeAllExtensions];
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = v4;
  v5 = [obj countByEnumeratingWithState:&v23 objects:v33 count:16];
  if (v5)
  {
    v7 = v5;
    v8 = *v24;
    v9 = &UNLogExtensions;
    *&v6 = 138543874;
    v20 = v6;
    v21 = self;
    do
    {
      v10 = 0;
      do
      {
        if (*v24 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v23 + 1) + 8 * v10);
        v12 = *v9;
        if (os_log_type_enabled(*v9, OS_LOG_TYPE_DEFAULT))
        {
          v13 = v12;
          v14 = [v11 identifier];
          v15 = [v11 un_supportedCategoryIdentifiers];
          [v15 componentsJoinedByString:{@", "}];
          v17 = v16 = v9;
          [v11 attributes];
          v19 = v18 = v8;
          *buf = v20;
          v28 = v14;
          v29 = 2114;
          v30 = v17;
          v31 = 2114;
          v32 = v19;
          _os_log_impl(&dword_23AB78000, v13, OS_LOG_TYPE_DEFAULT, "Loaded extension %{public}@ for categories [ %{public}@ ] with attributes: %{public}@", buf, 0x20u);

          v8 = v18;
          v9 = v16;
          self = v21;
        }

        [(_UNNotificationContentExtensionCache *)self _addExtension:v11, v20];
        ++v10;
      }

      while (v7 != v10);
      v7 = [obj countByEnumeratingWithState:&v23 objects:v33 count:16];
    }

    while (v7);
  }
}

- (void)_addExtension:(id)a3
{
  v32 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v21 = [v3 un_supportedCategoryIdentifiers];
  v4 = [v3 un_allowedSourceIdentifiers];
  v5 = v4;
  if (v4)
  {
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v6 = [v4 countByEnumeratingWithState:&v26 objects:v31 count:16];
    if (v6)
    {
      v7 = v6;
      obj = v5;
      v19 = *v27;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v27 != v19)
          {
            objc_enumerationMutation(obj);
          }

          v9 = [(_UNNotificationContentExtensionCache *)self _sourceDictForSource:*(*(&v26 + 1) + 8 * i), obj];
          v22 = 0u;
          v23 = 0u;
          v24 = 0u;
          v25 = 0u;
          v10 = v21;
          v11 = [v10 countByEnumeratingWithState:&v22 objects:v30 count:16];
          if (v11)
          {
            v12 = v11;
            v13 = *v23;
            do
            {
              for (j = 0; j != v12; ++j)
              {
                if (*v23 != v13)
                {
                  objc_enumerationMutation(v10);
                }

                v15 = *(*(&v22 + 1) + 8 * j);
                v16 = [v3 identifier];
                [v9 setObject:v16 forKeyedSubscript:v15];
              }

              v12 = [v10 countByEnumeratingWithState:&v22 objects:v30 count:16];
            }

            while (v12);
          }
        }

        v5 = obj;
        v7 = [obj countByEnumeratingWithState:&v26 objects:v31 count:16];
      }

      while (v7);
    }
  }

  else
  {
    v17 = UNLogExtensions;
    if (os_log_type_enabled(UNLogExtensions, OS_LOG_TYPE_ERROR))
    {
      [(_UNNotificationContentExtensionCache *)v17 _addExtension:v3];
    }
  }
}

- (void)_removeAllExtensions
{
  v2 = [(_UNNotificationContentExtensionCache *)self extensions];
  [v2 removeAllObjects];
}

- (id)_sourceDictForSource:(id)a3
{
  v4 = a3;
  v5 = [(_UNNotificationContentExtensionCache *)self extensions];
  v6 = [v5 objectForKey:v4];

  if (v4 && !v6)
  {
    v6 = objc_opt_new();
    v7 = [(_UNNotificationContentExtensionCache *)self extensions];
    [v7 setObject:v6 forKey:v4];
  }

  return v6;
}

- (void)extensionForNotificationSourceIdentifier:(os_log_t)log categoryIdentifier:.cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 138543618;
  v4 = a1;
  v5 = 2114;
  v6 = a2;
  _os_log_error_impl(&dword_23AB78000, log, OS_LOG_TYPE_ERROR, "Loaded extension %{public}@ failed: %{public}@", &v3, 0x16u);
}

- (void)_addExtension:(void *)a1 .cold.1(void *a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = [a2 identifier];
  v5 = 138543362;
  v6 = v4;
  _os_log_error_impl(&dword_23AB78000, v3, OS_LOG_TYPE_ERROR, "Could not find container bundle id for extension %{public}@", &v5, 0xCu);
}

@end