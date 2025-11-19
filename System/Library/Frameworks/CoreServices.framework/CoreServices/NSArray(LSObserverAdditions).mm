@interface NSArray(LSObserverAdditions)
+ (id)arrayByFilteringLaunchProhibitedAppsFrom:()LSObserverAdditions;
@end

@implementation NSArray(LSObserverAdditions)

+ (id)arrayByFilteringLaunchProhibitedAppsFrom:()LSObserverAdditions
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v3, "count")}];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        if (([v10 isLaunchProhibited] & 1) == 0)
        {
          [v4 addObject:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  v11 = [v4 count];
  if (v11 != [v5 count])
  {
    v12 = _LSInstallLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *v15 = 0;
      _os_log_impl(&dword_18162D000, v12, OS_LOG_TYPE_DEFAULT, "LaunchServices observer: Filtering notification for launch-prohibited apps", v15, 2u);
    }
  }

  v13 = *MEMORY[0x1E69E9840];

  return v4;
}

@end