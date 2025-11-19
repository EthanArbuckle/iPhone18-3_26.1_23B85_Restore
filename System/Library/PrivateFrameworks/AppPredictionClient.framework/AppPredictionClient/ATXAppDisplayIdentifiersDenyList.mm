@interface ATXAppDisplayIdentifiersDenyList
- (ATXAppDisplayIdentifiersDenyList)init;
- (id)bundleIdentifiersNotAllowed;
- (void)bundleIdentifiersNotAllowed;
@end

@implementation ATXAppDisplayIdentifiersDenyList

- (ATXAppDisplayIdentifiersDenyList)init
{
  v6.receiver = self;
  v6.super_class = ATXAppDisplayIdentifiersDenyList;
  v2 = [(ATXAppDisplayIdentifiersDenyList *)&v6 init];
  if (v2)
  {
    v3 = [ATXAssets2 pathForResource:@"ATXAppDisplayIdentifiersDenyList" ofType:@"plist" isDirectory:0];
    path = v2->_path;
    v2->_path = v3;
  }

  return v2;
}

- (id)bundleIdentifiersNotAllowed
{
  v45 = *MEMORY[0x1E69E9840];
  p_path = &self->_path;
  if (self->_path)
  {
    v3 = objc_autoreleasePoolPush();
    v4 = objc_alloc(MEMORY[0x1E695DEF0]);
    v5 = *p_path;
    v43 = 0;
    v6 = [v4 initWithContentsOfFile:v5 options:1 error:&v43];
    v7 = v43;
    objc_autoreleasePoolPop(v3);
    if (v6)
    {
      v42 = 0;
      v8 = [MEMORY[0x1E696AE40] propertyListWithData:v6 options:0 format:0 error:&v42];
      v9 = v42;

      if (v8)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v40 = 0u;
          v41 = 0u;
          v38 = 0u;
          v39 = 0u;
          v8 = v8;
          v10 = [v8 countByEnumeratingWithState:&v38 objects:v44 count:16];
          if (v10)
          {
            v11 = v10;
            v12 = *v39;
            while (2)
            {
              for (i = 0; i != v11; ++i)
              {
                if (*v39 != v12)
                {
                  objc_enumerationMutation(v8);
                }

                v14 = *(*(&v38 + 1) + 8 * i);
                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) == 0)
                {
                  v30 = __atxlog_handle_default();
                  if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
                  {
                    [(ATXAppDisplayIdentifiersDenyList *)v14 bundleIdentifiersNotAllowed:v30];
                  }

                  goto LABEL_29;
                }
              }

              v11 = [v8 countByEnumeratingWithState:&v38 objects:v44 count:16];
              if (v11)
              {
                continue;
              }

              break;
            }
          }

          v15 = [MEMORY[0x1E695DFD8] setWithArray:{v8, v38}];
          goto LABEL_30;
        }

        v23 = __atxlog_handle_default();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          [(ATXAppDisplayIdentifiersDenyList *)p_path bundleIdentifiersNotAllowed:v23];
        }
      }

      else
      {
        v16 = __atxlog_handle_default();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          [(ATXAppDisplayIdentifiersDenyList *)v9 bundleIdentifiersNotAllowed:v16];
        }
      }

LABEL_29:
      v15 = 0;
    }

    else
    {
      v8 = __atxlog_handle_default();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [(ATXAppDisplayIdentifiersDenyList *)p_path bundleIdentifiersNotAllowed];
      }

      v15 = 0;
      v9 = v7;
    }

LABEL_30:

    goto LABEL_31;
  }

  v9 = __atxlog_handle_default();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    [(ATXAppDisplayIdentifiersDenyList *)v9 bundleIdentifiersNotAllowed];
  }

  v15 = 0;
LABEL_31:

  return v15;
}

- (void)bundleIdentifiersNotAllowed
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = *a1;
  v4 = 138412546;
  v5 = v3;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&dword_1BF549000, log, OS_LOG_TYPE_ERROR, "Error loading ATXAppDisplayIdentifiersDenyList with path %@: %@", &v4, 0x16u);
}

@end