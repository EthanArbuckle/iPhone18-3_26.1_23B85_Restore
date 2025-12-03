@interface BLSHBacklightFBSceneEnvironmentActionHandler
- (id)respondToActions:(id)actions forFBScene:(id)scene;
@end

@implementation BLSHBacklightFBSceneEnvironmentActionHandler

- (id)respondToActions:(id)actions forFBScene:(id)scene
{
  v29 = *MEMORY[0x277D85DE8];
  actionsCopy = actions;
  sceneCopy = scene;
  v7 = [actionsCopy mutableCopy];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v8 = actionsCopy;
  v9 = [v8 countByEnumeratingWithState:&v22 objects:v28 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v23;
    do
    {
      v12 = 0;
      do
      {
        if (*v23 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v22 + 1) + 8 * v12);
        v14 = bls_scenes_log();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v27 = v13;
          _os_log_debug_impl(&dword_21FD11000, v14, OS_LOG_TYPE_DEBUG, "respondToActions: action: %@", buf, 0xCu);
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v15 = v13;
          v16 = bls_scenes_log();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v27 = v15;
            _os_log_debug_impl(&dword_21FD11000, v16, OS_LOG_TYPE_DEBUG, "respondToActions: matched action: %@", buf, 0xCu);
          }

          backlightSceneHostEnvironment = [sceneCopy backlightSceneHostEnvironment];
          reason = [v15 reason];
          [backlightSceneHostEnvironment clientDidRequestInvalidationForReason:reason];

          [v7 removeObject:v15];
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v22 objects:v28 count:16];
    }

    while (v10);
  }

  v19 = [v7 copy];
  v20 = *MEMORY[0x277D85DE8];

  return v19;
}

@end