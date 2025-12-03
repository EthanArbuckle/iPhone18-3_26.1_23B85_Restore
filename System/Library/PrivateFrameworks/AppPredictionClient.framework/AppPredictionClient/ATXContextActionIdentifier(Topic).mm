@interface ATXContextActionIdentifier(Topic)
- (id)initWithTopic:()Topic sectionBundleIdentifier:;
@end

@implementation ATXContextActionIdentifier(Topic)

- (id)initWithTopic:()Topic sectionBundleIdentifier:
{
  v26 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v6 && [v7 length])
  {
    v9 = objc_opt_new();
    if ([ATXSpotlightContextAdapter isSpotlightRecentSectionIdentifier:v8])
    {
      v10 = __atxlog_handle_blending();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v18 = 138412546;
        v19 = v8;
        v20 = 2112;
        v21 = v6;
        _os_log_impl(&dword_1BF549000, v10, OS_LOG_TYPE_DEFAULT, "ATXContextActionIdentifier: skipping recent topic: %@, %@", &v18, 0x16u);
      }

      selfCopy = 0;
    }

    else
    {
      v10 = [v9 contextCodeIdentifierWithSectionBundleIdentifier:v8];
      v12 = [ATXSpotlightAction spotlightActionTypeFromTopic:v6];
      if ([v12 length])
      {
        v13 = [objc_opt_class() actionTypeFromSpotlightActionType:v12];
        v14 = [ATXSpotlightAction actionIdentifierFromTopic:v6];
        v15 = [v14 hash];
        if (-[NSObject length](v10, "length") && [v12 length] && -[NSObject length](v13, "length") && v15)
        {
          self = [self initWithContext:v10 subType:v13 instanceIdentifierInteger:v15];
          selfCopy = self;
        }

        else
        {
          v16 = __atxlog_handle_blending();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
          {
            v18 = 138413058;
            v19 = v10;
            v20 = 2112;
            v21 = v12;
            v22 = 2112;
            v23 = v13;
            v24 = 2112;
            v25 = v14;
            _os_log_debug_impl(&dword_1BF549000, v16, OS_LOG_TYPE_DEBUG, "ATXContextActionIdentifier: expected component missing: %@, %@, %@, %@", &v18, 0x2Au);
          }

          selfCopy = 0;
        }
      }

      else
      {
        v13 = __atxlog_handle_blending();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          [(ATXContextActionIdentifier(Topic) *)v8 initWithTopic:v6 sectionBundleIdentifier:v13];
        }

        selfCopy = 0;
      }
    }
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)initWithTopic:()Topic sectionBundleIdentifier:.cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_error_impl(&dword_1BF549000, log, OS_LOG_TYPE_ERROR, "ATXContextActionIdentifier: spotlightActionType is nil: %@, %@", &v3, 0x16u);
}

@end