@interface BSPluginManager
+ (id)mainManager;
+ (id)managerForBundle:(uint64_t)bundle;
- (id)description;
- (id)initWithBundle:(void *)bundle;
- (id)pluginBundleForIdentifier:(id)identifier;
- (id)pluginBundleForName:(id)name type:(id)type;
- (id)pluginBundlesForType:(id)type;
@end

@implementation BSPluginManager

+ (id)mainManager
{
  v2 = +[BSPluginManagerCoordinator sharedInstance];
  mainPluginManager = [v2 mainPluginManager];

  return mainPluginManager;
}

+ (id)managerForBundle:(uint64_t)bundle
{
  v2 = a2;
  v3 = objc_alloc(objc_opt_self());
  v4 = [(BSPluginManager *)v3 initWithBundle:v2];

  return v4;
}

- (id)initWithBundle:(void *)bundle
{
  v75 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v44 = v4;
  if (!bundle)
  {
    goto LABEL_7;
  }

  v45 = v4;
  NSClassFromString(&cfstr_Nsbundle.isa);
  if (!v45)
  {
    v32 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"_bs_assert_object != nil"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v33 = NSStringFromSelector(sel_initWithBundle_);
      v34 = objc_opt_class();
      v35 = NSStringFromClass(v34);
      *buf = 138544642;
      v64 = v33;
      v65 = 2114;
      v66 = v35;
      v67 = 2048;
      bundleCopy2 = bundle;
      v69 = 2114;
      v70 = @"BSPluginManager.m";
      v71 = 1024;
      v72 = 32;
      v73 = 2114;
      v74 = v32;
      _os_log_error_impl(&dword_18FEF6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v36 = v32;
    qword_1EAD33B00 = [v32 UTF8String];
    __break(0);
    JUMPOUT(0x18FF4D680);
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v37 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"[_bs_assert_object isKindOfClass:NSBundleClass]"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v38 = NSStringFromSelector(sel_initWithBundle_);
      v39 = objc_opt_class();
      v40 = NSStringFromClass(v39);
      *buf = 138544642;
      v64 = v38;
      v65 = 2114;
      v66 = v40;
      v67 = 2048;
      bundleCopy2 = bundle;
      v69 = 2114;
      v70 = @"BSPluginManager.m";
      v71 = 1024;
      v72 = 32;
      v73 = 2114;
      v74 = v37;
      _os_log_error_impl(&dword_18FEF6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v41 = v37;
    qword_1EAD33B00 = [v37 UTF8String];
    __break(0);
    JUMPOUT(0x18FF4D78CLL);
  }

  v58.receiver = bundle;
  v58.super_class = BSPluginManager;
  v5 = objc_msgSendSuper2(&v58, sel_init);
  if (v5)
  {
    v49 = v5;
    objc_storeStrong(v5 + 1, a2);
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    v42 = _BSSearchPathForDirectoryInDomain(NSLibraryDirectory, 8uLL);
    infoDictionary = [v49[1] infoDictionary];
    v43 = [infoDictionary bs_safeStringForKey:@"BSPluginDirectoryName"];

    if (v43)
    {
      v7 = [v42 stringByAppendingPathComponent:?];
      v62 = v7;
      v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v62 count:1];
    }

    else
    {
      executablePath = [v45 executablePath];
      lastPathComponent = [executablePath lastPathComponent];
      v7 = [v42 stringByAppendingPathComponent:lastPathComponent];

      v11 = [v7 stringByAppendingPathComponent:@"Plugins"];
      v61[0] = v11;
      v12 = [v7 stringByAppendingString:@"Plugins"];
      v61[1] = v12;
      v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v61 count:2];
    }

    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    obj = v8;
    v13 = [obj countByEnumeratingWithState:&v54 objects:v60 count:16];
    if (v13)
    {
      v14 = *v55;
      while (2)
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v55 != v14)
          {
            objc_enumerationMutation(obj);
          }

          v16 = *(*(&v54 + 1) + 8 * i);
          buf[0] = 0;
          if ([defaultManager fileExistsAtPath:v16 isDirectory:buf] && buf[0] == 1)
          {
            v17 = [v16 copy];
            v18 = v49[2];
            v49[2] = v17;

            goto LABEL_20;
          }
        }

        v13 = [obj countByEnumeratingWithState:&v54 objects:v60 count:16];
        if (v13)
        {
          continue;
        }

        break;
      }
    }

LABEL_20:

    if (v49[2])
    {
      v19 = [BSPluginSpecification specificationsFromHostBundle:?];
      array = [MEMORY[0x1E695DF70] array];
      v52 = 0u;
      v53 = 0u;
      v50 = 0u;
      v51 = 0u;
      v20 = [defaultManager contentsOfDirectoryAtPath:v49[2] error:0];
      v21 = [v20 countByEnumeratingWithState:&v50 objects:v59 count:16];
      if (v21)
      {
        v22 = *v51;
        do
        {
          for (j = 0; j != v21; ++j)
          {
            if (*v51 != v22)
            {
              objc_enumerationMutation(v20);
            }

            v24 = *(*(&v50 + 1) + 8 * j);
            v25 = objc_autoreleasePoolPush();
            v26 = [v49[2] stringByAppendingPathComponent:v24];
            v27 = [BSPluginBundle bundleWithPath:v26 availableSpecifications:v19];
            if ([v27 isValid])
            {
              [array addObject:v27];
            }

            else
            {
              v28 = BSLogCommon();
              if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
              {
                *buf = 138543362;
                v64 = v26;
                _os_log_error_impl(&dword_18FEF6000, v28, OS_LOG_TYPE_ERROR, "Ignoring invalid plugin found at %{public}@", buf, 0xCu);
              }
            }

            objc_autoreleasePoolPop(v25);
          }

          v21 = [v20 countByEnumeratingWithState:&v50 objects:v59 count:16];
        }

        while (v21);
      }

      v29 = [array copy];
      v30 = v49[3];
      v49[3] = v29;
    }

    else
    {
      v19 = BSLogCommon();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v64 = v45;
        _os_log_error_impl(&dword_18FEF6000, v19, OS_LOG_TYPE_ERROR, "No plugin directory found for %{public}@", buf, 0xCu);
      }
    }
  }

  else
  {
LABEL_7:
    v49 = 0;
  }

  return v49;
}

- (id)pluginBundleForName:(id)name type:(id)type
{
  v25 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  typeCopy = type;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  stringByDeletingPathExtension = [nameCopy stringByDeletingPathExtension];
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v10 = selfCopy->_pluginBundles;
  v11 = [(NSArray *)v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v11)
  {
    v12 = *v21;
    while (2)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v21 != v12)
        {
          objc_enumerationMutation(v10);
        }

        v14 = *(*(&v20 + 1) + 8 * i);
        name = [v14 name];
        if (([name isEqualToString:nameCopy] & 1) != 0 || objc_msgSend(name, "isEqualToString:", stringByDeletingPathExtension))
        {
          if (typeCopy && ([v14 type], v17 = objc_claimAutoreleasedReturnValue(), v18 = objc_msgSend(typeCopy, "isEqualToString:", v17), v17, !v18))
          {
            v16 = 0;
          }

          else
          {
            v16 = v14;
          }

          goto LABEL_17;
        }
      }

      v11 = [(NSArray *)v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
      v16 = 0;
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v16 = 0;
  }

LABEL_17:

  objc_sync_exit(selfCopy);

  return v16;
}

- (id)pluginBundleForIdentifier:(id)identifier
{
  v18 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = selfCopy->_pluginBundles;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = *v14;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        identifier = [v10 identifier];
        if ([identifier isEqualToString:identifierCopy])
        {
          v7 = v10;

          goto LABEL_11;
        }
      }

      v7 = [(NSArray *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  objc_sync_exit(selfCopy);

  return v7;
}

- (id)pluginBundlesForType:(id)type
{
  v20 = *MEMORY[0x1E69E9840];
  typeCopy = type;
  array = [MEMORY[0x1E695DF70] array];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = selfCopy->_pluginBundles;
  v8 = [(NSArray *)v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        type = [v11 type];
        v13 = [type isEqualToString:typeCopy];

        if (v13)
        {
          [array addObject:v11];
        }
      }

      v8 = [(NSArray *)v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  objc_sync_exit(selfCopy);

  return array;
}

- (id)description
{
  p_isa = &self->super.isa;
  if (self)
  {
    v3 = [BSDescriptionBuilder builderWithObject:self];
    bundleIdentifier = [p_isa[1] bundleIdentifier];
    v5 = [v3 appendObject:bundleIdentifier withName:0];

    v9 = MEMORY[0x1E69E9820];
    v10 = 3221225472;
    v11 = __57__BSPluginManager_descriptionBuilderWithMultilinePrefix___block_invoke;
    v12 = &unk_1E72CACC0;
    v6 = v3;
    v13 = v6;
    v14 = p_isa;
    [v6 appendBodySectionWithName:0 multilinePrefix:0 block:&v9];
    v7 = v6;

    p_isa = [v7 build];
  }

  return p_isa;
}

uint64_t __57__BSPluginManager_descriptionBuilderWithMultilinePrefix___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 16) withName:@"directory"];
  v3 = *(a1 + 32);
  v4 = *(*(a1 + 40) + 24);

  return [v3 appendArraySection:v4 withName:@"bundles" skipIfEmpty:1];
}

@end