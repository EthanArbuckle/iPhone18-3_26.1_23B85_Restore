@interface _EXExtensionIdentity(SceneProviding)
- (_EXViewControllerSceneConfiguration)configurationWithParameters:()SceneProviding;
- (id)scenes;
- (void)extensionViewControllerClassForSceneRole:()SceneProviding;
@end

@implementation _EXExtensionIdentity(SceneProviding)

- (_EXViewControllerSceneConfiguration)configurationWithParameters:()SceneProviding
{
  v4 = a3;
  sceneIdentifier = [v4 sceneIdentifier];
  if (!sceneIdentifier)
  {
    sceneIdentifier = *MEMORY[0x1E6966D28];
  }

  v6 = [(_EXSceneConfiguration *)[_EXViewControllerSceneConfiguration alloc] initWithParameters:v4];

  attributes = [self attributes];
  v8 = [attributes _EX_dictionaryForKey:@"EXSceneManifest"];
  v9 = [v8 _EX_dictionaryForKey:sceneIdentifier];

  if (v9)
  {
    v10 = [v9 _EX_stringForKey:@"EXStoryboardName"];
    [(_EXViewControllerSceneConfiguration *)v6 setStoryboardName:v10];

    storyboardName = [(_EXViewControllerSceneConfiguration *)v6 storyboardName];

    if (!storyboardName)
    {
      v12 = _EXDefaultLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        [(_EXExtensionIdentity(SceneProviding) *)sceneIdentifier configurationWithParameters:v12, v13, v14, v15, v16, v17, v18];
      }
    }

    v19 = [v9 _EX_stringForKeys:&unk_1F4DF7E60];
    if (v19)
    {
      [(_EXViewControllerSceneConfiguration *)v6 setViewControllerClassName:v19];
    }

    else
    {
      v20 = _EXDefaultLog();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        [(_EXExtensionIdentity(SceneProviding) *)sceneIdentifier configurationWithParameters:v20, v21, v22, v23, v24, v25, v26];
      }
    }

    v27 = [v9 _EX_stringForKey:@"EXSceneDelegateClass"];
    if (v27)
    {
      [(_EXSceneConfiguration *)v6 setSceneDelegateClassName:v27];
    }

    else
    {
      v28 = _EXDefaultLog();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
      {
        [(_EXExtensionIdentity(SceneProviding) *)sceneIdentifier configurationWithParameters:v28, v29, v30, v31, v32, v33, v34];
      }
    }
  }

  return v6;
}

- (void)extensionViewControllerClassForSceneRole:()SceneProviding
{
  v4 = a3;
  if (!v4)
  {
    v4 = *MEMORY[0x1E6966D28];
  }

  sdkDictionary = [self sdkDictionary];
  v6 = [sdkDictionary _EX_dictionaryForKey:@"EXSceneManifest"];
  v7 = [v6 _EX_dictionaryForKey:v4];

  if (!v7 || ([v7 _EX_stringForKeys:&unk_1F4DF7E78], (v8 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v11 = objc_opt_class();
    goto LABEL_8;
  }

  v9 = v8;
  v10 = NSClassFromString(v8);
  if (v10)
  {
    v11 = v10;

LABEL_8:
    v12 = v11;

    return;
  }

  v13 = _EXDefaultLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
  {
    [(_EXExtensionIdentity(SceneProviding) *)v9 extensionViewControllerClassForSceneRole:v13];
  }

  __break(1u);
}

- (id)scenes
{
  sdkDictionary = [self sdkDictionary];
  v2 = [sdkDictionary _EX_dictionaryForKey:@"EXSceneManifest"];
  allKeys = [v2 allKeys];

  return allKeys;
}

- (void)configurationWithParameters:()SceneProviding .cold.1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_1(&dword_1D29CC000, a2, a3, "Storyboard name not provided for scene ID: %{public}@ falling back to view controller name.", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)configurationWithParameters:()SceneProviding .cold.2(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_1(&dword_1D29CC000, a2, a3, "No view controller class available scene ID: %{public}@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)extensionViewControllerClassForSceneRole:()SceneProviding .cold.1(uint64_t a1, NSObject *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = 136315906;
  v4 = "viewControllerClass";
  v5 = 2080;
  v6 = "/Library/Caches/com.apple.xbs/Sources/ExtensionKit/ExtensionKit/Source/Util/EXExtension+UserInterfaceConfiguration.m";
  v7 = 1024;
  v8 = 65;
  v9 = 2114;
  v10 = a1;
  v2 = *MEMORY[0x1E69E9840];
}

@end