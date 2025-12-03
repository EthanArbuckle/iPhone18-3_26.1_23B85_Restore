@interface _UNNotificationContentExtensionCache
- (_UNNotificationContentExtensionCache)init;
- (id)_sourceDictForSource:(id)source;
- (id)extensionForNotificationSourceIdentifier:(id)identifier categoryIdentifier:(id)categoryIdentifier;
- (void)_addExtension:(id)extension;
- (void)_removeAllExtensions;
- (void)registerExtensions:(id)extensions;
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

- (id)extensionForNotificationSourceIdentifier:(id)identifier categoryIdentifier:(id)categoryIdentifier
{
  v4 = 0;
  if (identifier && categoryIdentifier)
  {
    categoryIdentifierCopy = categoryIdentifier;
    identifierCopy = identifier;
    extensions = [(_UNNotificationContentExtensionCache *)self extensions];
    v10 = [extensions objectForKey:identifierCopy];

    v11 = [v10 objectForKey:categoryIdentifierCopy];

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

- (void)registerExtensions:(id)extensions
{
  v34 = *MEMORY[0x277D85DE8];
  extensionsCopy = extensions;
  [(_UNNotificationContentExtensionCache *)self _removeAllExtensions];
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = extensionsCopy;
  v5 = [obj countByEnumeratingWithState:&v23 objects:v33 count:16];
  if (v5)
  {
    v7 = v5;
    v8 = *v24;
    v9 = &UNLogExtensions;
    *&v6 = 138543874;
    v20 = v6;
    selfCopy = self;
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
          identifier = [v11 identifier];
          un_supportedCategoryIdentifiers = [v11 un_supportedCategoryIdentifiers];
          [un_supportedCategoryIdentifiers componentsJoinedByString:{@", "}];
          v17 = v16 = v9;
          [v11 attributes];
          v19 = v18 = v8;
          *buf = v20;
          v28 = identifier;
          v29 = 2114;
          v30 = v17;
          v31 = 2114;
          v32 = v19;
          _os_log_impl(&dword_23AB78000, v13, OS_LOG_TYPE_DEFAULT, "Loaded extension %{public}@ for categories [ %{public}@ ] with attributes: %{public}@", buf, 0x20u);

          v8 = v18;
          v9 = v16;
          self = selfCopy;
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

- (void)_addExtension:(id)extension
{
  v32 = *MEMORY[0x277D85DE8];
  extensionCopy = extension;
  un_supportedCategoryIdentifiers = [extensionCopy un_supportedCategoryIdentifiers];
  un_allowedSourceIdentifiers = [extensionCopy un_allowedSourceIdentifiers];
  v5 = un_allowedSourceIdentifiers;
  if (un_allowedSourceIdentifiers)
  {
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v6 = [un_allowedSourceIdentifiers countByEnumeratingWithState:&v26 objects:v31 count:16];
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
          v10 = un_supportedCategoryIdentifiers;
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
                identifier = [extensionCopy identifier];
                [v9 setObject:identifier forKeyedSubscript:v15];
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
      [(_UNNotificationContentExtensionCache *)v17 _addExtension:extensionCopy];
    }
  }
}

- (void)_removeAllExtensions
{
  extensions = [(_UNNotificationContentExtensionCache *)self extensions];
  [extensions removeAllObjects];
}

- (id)_sourceDictForSource:(id)source
{
  sourceCopy = source;
  extensions = [(_UNNotificationContentExtensionCache *)self extensions];
  v6 = [extensions objectForKey:sourceCopy];

  if (sourceCopy && !v6)
  {
    v6 = objc_opt_new();
    extensions2 = [(_UNNotificationContentExtensionCache *)self extensions];
    [extensions2 setObject:v6 forKey:sourceCopy];
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