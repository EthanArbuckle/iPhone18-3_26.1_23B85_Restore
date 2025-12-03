@interface BSPluginBundle
+ (void)bundleWithPath:(void *)path availableSpecifications:;
- (BOOL)loadPlugin:(id)plugin;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
@end

@implementation BSPluginBundle

+ (void)bundleWithPath:(void *)path availableSpecifications:
{
  v87 = *MEMORY[0x1E69E9840];
  v4 = a2;
  pathCopy = path;
  v5 = objc_opt_self();
  v82 = 0;
  pathExtension = [v4 pathExtension];
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v68 = defaultManager;
  if ([pathExtension length] && objc_msgSend(defaultManager, "fileExistsAtPath:isDirectory:", v4, &v82) && v82 == 1)
  {
    v7 = [MEMORY[0x1E696AAE8] bundleWithPath:v4];
    v8 = v7;
    if (v7)
    {
      obj = v7;
      v9 = [v5 alloc];
      v10 = v8;
      if (v9)
      {
        v86.receiver = v9;
        v86.super_class = BSPluginBundle;
        v11 = objc_msgSendSuper2(&v86, sel_init);
        v12 = v11;
        if (v11)
        {
          objc_storeStrong(v11 + 1, obj);
          bundlePath = [v10 bundlePath];
          infoDictionary = [v10 infoDictionary];
          v65 = [infoDictionary bs_safeObjectForKey:@"BSPluginSpecification" ofType:objc_opt_class()];
          stringByDeletingPathExtension = [v65 bs_safeObjectForKey:@"BSPluginName" ofType:objc_opt_class()];
          if (!stringByDeletingPathExtension)
          {
            lastPathComponent = [bundlePath lastPathComponent];
            stringByDeletingPathExtension = [lastPathComponent stringByDeletingPathExtension];
          }

          pathExtension2 = [v65 bs_safeObjectForKey:@"BSPluginType" ofType:objc_opt_class()];
          if (!pathExtension2)
          {
            pathExtension2 = [bundlePath pathExtension];
          }

          v18 = [v65 bs_safeObjectForKey:@"BSPluginControllerClass" ofType:objc_opt_class()];
          if (!v18)
          {
            v18 = [infoDictionary bs_safeObjectForKey:@"NSPrincipalClass" ofType:objc_opt_class()];
          }

          bundleIdentifier = [v10 bundleIdentifier];
          v20 = [bundleIdentifier copy];
          v21 = v12[4];
          v12[4] = v20;

          v22 = [stringByDeletingPathExtension copy];
          v23 = v12[5];
          v12[5] = v22;

          v24 = [pathExtension2 copy];
          v25 = v12[6];
          v12[6] = v24;

          v26 = [v18 copy];
          v27 = v12[2];
          v12[2] = v26;
        }
      }

      else
      {
        v12 = 0;
      }

      infoDictionary2 = [v10 infoDictionary];
      [infoDictionary2 bs_safeObjectForKey:@"UIRequiredDeviceCapabilities" ofType:objc_opt_class()];
      v80 = 0u;
      v81 = 0u;
      v78 = 0u;
      v28 = v79 = 0u;
      v29 = [v28 countByEnumeratingWithState:&v78 objects:v85 count:16];
      v30 = v28;
      if (v29)
      {
        v31 = *v79;
        v30 = v28;
        do
        {
          for (i = 0; i != v29; ++i)
          {
            if (*v79 != v31)
            {
              objc_enumerationMutation(v28);
            }

            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {

              v30 = 0;
            }
          }

          v29 = [v28 countByEnumeratingWithState:&v78 objects:v85 count:16];
        }

        while (v29);
      }

      if ([v30 count])
      {
        v33 = MGCopyMultipleAnswers();
        if (v33)
        {
          v76 = 0u;
          v77 = 0u;
          v74 = 0u;
          v75 = 0u;
          v34 = v30;
          v35 = [v34 countByEnumeratingWithState:&v74 objects:v84 count:16];
          if (v35)
          {
            v36 = *v75;
            while (2)
            {
              for (j = 0; j != v35; ++j)
              {
                if (*v75 != v36)
                {
                  objc_enumerationMutation(v34);
                }

                v38 = [v33 bs_safeObjectForKey:*(*(&v74 + 1) + 8 * j) ofType:objc_opt_class()];
                v39 = v38;
                if (v38)
                {
                  bOOLValue = [v38 BOOLValue];

                  if (bOOLValue)
                  {
                    continue;
                  }
                }

                goto LABEL_42;
              }

              v35 = [v34 countByEnumeratingWithState:&v74 objects:v84 count:16];
              if (v35)
              {
                continue;
              }

              break;
            }
          }

          v41 = 0;
        }

        else
        {
LABEL_42:
          v34 = BSLogCommon();
          if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
          {
            LODWORD(v86.receiver) = 138543362;
            *(&v86.receiver + 4) = v12;
            _os_log_error_impl(&dword_18FEF6000, v34, OS_LOG_TYPE_ERROR, "Ignoring plugin because this device lacks the required capabilities: %{public}@", &v86, 0xCu);
          }

          v41 = 1;
        }
      }

      else
      {
        v41 = 0;
      }

      v43 = [infoDictionary2 objectForKey:@"UIDeviceFamily"];
      if (v43)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [MEMORY[0x1E695DFD8] setWithArray:v43];
        }

        else
        {
          [MEMORY[0x1E695DFD8] setWithObject:v43];
        }
        v45 = ;
        v46 = MEMORY[0x1E695DFD8];
        v47 = MGCopyAnswer();
        v48 = [v46 setWithArray:v47];

        v49 = [v45 intersectsSet:v48];
        if ((v49 & 1) == 0)
        {
          v50 = BSLogCommon();
          if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
          {
            LODWORD(v86.receiver) = 138543362;
            *(&v86.receiver + 4) = v12;
            _os_log_error_impl(&dword_18FEF6000, v50, OS_LOG_TYPE_ERROR, "Ignoring plugin because it does not support the current device type: %{public}@", &v86, 0xCu);
          }
        }

        v44 = v49 ^ 1;
      }

      else
      {
        v44 = 0;
      }

      if (((v41 | v44) & 1) == 0)
      {
        v72 = 0u;
        v73 = 0u;
        v70 = 0u;
        v71 = 0u;
        v51 = pathCopy;
        v52 = [v51 countByEnumeratingWithState:&v70 objects:v83 count:16];
        if (v52)
        {
          v53 = *v71;
LABEL_59:
          v54 = 0;
          while (1)
          {
            if (*v71 != v53)
            {
              objc_enumerationMutation(v51);
            }

            v55 = *(*(&v70 + 1) + 8 * v54);
            if ([(BSPluginSpecification *)v55 matchesPluginBundle:v12])
            {
              break;
            }

            if (v52 == ++v54)
            {
              v52 = [v51 countByEnumeratingWithState:&v70 objects:v83 count:16];
              if (v52)
              {
                goto LABEL_59;
              }

              goto LABEL_65;
            }
          }

          v56 = v55;
          v57 = v56;
          if (v56)
          {
            v58 = *(v56 + 3);
          }

          else
          {
            v58 = 0;
          }

          v59 = v58;
          v60 = v59;
          if (v12)
          {
            v61 = [v59 copy];
            v62 = v12[3];
            v12[3] = v61;
          }

          if (v57)
          {
            goto LABEL_74;
          }
        }

        else
        {
LABEL_65:
        }

        v63 = BSLogCommon();
        if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
        {
          LODWORD(v86.receiver) = 138543362;
          *(&v86.receiver + 4) = v12;
          _os_log_error_impl(&dword_18FEF6000, v63, OS_LOG_TYPE_ERROR, "Ignoring plugin that does not match any specification: %{public}@", &v86, 0xCu);
        }

        v57 = 0;
        v12 = 0;
LABEL_74:
      }

      v8 = obj;
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (BOOL)loadPlugin:(id)plugin
{
  v34 = *MEMORY[0x1E69E9840];
  pluginCopy = plugin;
  bundle = self->_bundle;
  if (bundle)
  {
    v27 = 0;
    v6 = [(NSBundle *)bundle loadAndReturnError:&v27];
    v7 = v27;
    if (!v6)
    {
      principalClass = BSLogCommon();
      if (os_log_type_enabled(principalClass, OS_LOG_TYPE_ERROR))
      {
        v22 = self->_bundle;
        *buf = 136315650;
        v29 = "[BSPluginBundle loadPlugin:]";
        v30 = 2114;
        v31 = v22;
        v32 = 2114;
        v33 = v7;
        _os_log_error_impl(&dword_18FEF6000, principalClass, OS_LOG_TYPE_ERROR, "%s Error loading %{public}@: %{public}@", buf, 0x20u);
      }

LABEL_11:

      goto LABEL_12;
    }

    if (self->_principalClass)
    {
LABEL_12:

      goto LABEL_13;
    }

    v8 = objc_autoreleasePoolPush();
    v9 = NSClassFromString(self->_specifiedClassName);
    requiredClassOrProtocolName = self->_requiredClassOrProtocolName;
    if (!requiredClassOrProtocolName)
    {
      goto LABEL_28;
    }

    v11 = NSProtocolFromString(requiredClassOrProtocolName);
    if (v11)
    {
      if (([(objc_class *)v9 conformsToProtocol:v11]& 1) == 0)
      {
        v12 = BSLogCommon();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          specifiedClassName = self->_specifiedClassName;
          v14 = self->_requiredClassOrProtocolName;
          *buf = 136315650;
          v29 = "[BSPluginBundle loadPlugin:]";
          v30 = 2114;
          v31 = specifiedClassName;
          v32 = 2114;
          v33 = v14;
          v15 = "%s Specified principal class %{public}@ does not conform to expected protocol <%{public}@>. Ignoring.";
LABEL_32:
          _os_log_error_impl(&dword_18FEF6000, v12, OS_LOG_TYPE_ERROR, v15, buf, 0x20u);
          goto LABEL_26;
        }

        goto LABEL_26;
      }
    }

    else
    {
      v20 = NSClassFromString(self->_requiredClassOrProtocolName);
      if (!v20)
      {
LABEL_27:

LABEL_28:
        v21 = 0;
LABEL_29:
        objc_autoreleasePoolPop(v8);
        if (!v21)
        {
          goto LABEL_12;
        }

        v23 = v9;
        principalClass = self->_principalClass;
        self->_principalClass = v23;
        goto LABEL_11;
      }

      if (([(objc_class *)v9 isSubclassOfClass:v20]& 1) == 0)
      {
        v12 = BSLogCommon();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          v25 = self->_specifiedClassName;
          v26 = self->_requiredClassOrProtocolName;
          *buf = 136315650;
          v29 = "[BSPluginBundle loadPlugin:]";
          v30 = 2114;
          v31 = v25;
          v32 = 2114;
          v33 = v26;
          v15 = "%s Specified principal class %{public}@ is not a subclass of %{public}@. Ignoring.";
          goto LABEL_32;
        }

LABEL_26:

        goto LABEL_27;
      }
    }

    if (([(objc_class *)v9 conformsToProtocol:&unk_1F03C7DD0]& 1) != 0)
    {
      if (objc_opt_respondsToSelector())
      {
        [(objc_class *)v9 awakeFromBundle];
      }

      v21 = 1;
      goto LABEL_29;
    }

    v11 = BSLogCommon();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v24 = self->_specifiedClassName;
      *buf = 136315394;
      v29 = "[BSPluginBundle loadPlugin:]";
      v30 = 2114;
      v31 = v24;
      _os_log_error_impl(&dword_18FEF6000, v11, OS_LOG_TYPE_ERROR, "%s Specified principal class %{public}@ does not conform to <BSPluginBundleController>. Ignoring.", buf, 0x16u);
    }

    goto LABEL_27;
  }

LABEL_13:
  if (pluginCopy)
  {
    v17 = objc_autoreleasePoolPush();
    pluginCopy[2](pluginCopy, self->_principalClass);
    objc_autoreleasePoolPop(v17);
  }

  isLoaded = [(BSPluginBundle *)self isLoaded];

  return isLoaded;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(BSPluginBundle *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)succinctDescriptionBuilder
{
  v3 = [BSDescriptionBuilder builderWithObject:self];
  v4 = [v3 appendObject:self->_identifier withName:@"ID" skipIfNil:1];
  v5 = [v3 appendObject:self->_name withName:@"name"];
  v6 = [v3 appendObject:self->_type withName:@"type"];
  v7 = [v3 appendObject:self->_specifiedClassName withName:@"principalClass" skipIfNil:1];
  v8 = [v3 appendBool:-[BSPluginBundle isValid](self withName:{"isValid"), @"valid"}];
  v9 = [v3 appendBool:-[BSPluginBundle isLoaded](self withName:"isLoaded") ifEqualTo:{@"loaded", 1}];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(BSPluginBundle *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  succinctDescriptionBuilder = [(BSPluginBundle *)self succinctDescriptionBuilder];

  return succinctDescriptionBuilder;
}

@end