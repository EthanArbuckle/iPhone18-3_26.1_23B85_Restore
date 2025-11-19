@interface INHelperServiceAccessSpecifier
+ (id)accessSpecifierAppropriateForCurrentProcess;
+ (id)accessSpecifierAppropriateForXPCConnection:(id)a3;
+ (id)accessSpecifierFilteredForAssociatedAppBundleIdentifier:(id)a3;
+ (id)accessSpecifierUnrestricted;
+ (id)accessSpecifierWithNoAccess;
+ (void)initialize;
- (INHelperServiceAccessSpecifier)initWithAccessLevel:(unint64_t)a3 associatedAppBundleIdentifier:(id)a4;
- (id)debugDescription;
@end

@implementation INHelperServiceAccessSpecifier

- (id)debugDescription
{
  v3 = [(INHelperServiceAccessSpecifier *)self accessLevel];
  if (v3 == 2)
  {
    v4 = @"Unrestricted";
  }

  else if (v3 == 1)
  {
    v5 = MEMORY[0x1E696AEC0];
    v6 = [(INHelperServiceAccessSpecifier *)self associatedAppBundleIdentifier];
    v4 = [v5 stringWithFormat:@"FilteredByBundleID=%@", v6];
  }

  else if (v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = @"None";
  }

  v7 = MEMORY[0x1E696AEC0];
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  v10 = [v7 stringWithFormat:@"<%@: %p %@>", v9, self, v4];

  return v10;
}

- (INHelperServiceAccessSpecifier)initWithAccessLevel:(unint64_t)a3 associatedAppBundleIdentifier:(id)a4
{
  v6 = a4;
  v12.receiver = self;
  v12.super_class = INHelperServiceAccessSpecifier;
  v7 = [(INHelperServiceAccessSpecifier *)&v12 init];
  v8 = v7;
  if (v7)
  {
    v7->_accessLevel = a3;
    v9 = [v6 copy];
    associatedAppBundleIdentifier = v8->_associatedAppBundleIdentifier;
    v8->_associatedAppBundleIdentifier = v9;
  }

  return v8;
}

+ (id)accessSpecifierAppropriateForXPCConnection:(id)a3
{
  MEMORY[0x1EEE9AC00](a1, a2);
  v29 = *MEMORY[0x1E69E9840];
  v4 = v3;
  v5 = [v4 processIdentifier];
  bzero(buffer, 0x1000uLL);
  v6 = proc_pidpath(v5, buffer, 0x1000u);
  if (v6 >= 1 && (v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:buffer length:v6 encoding:4], v8 = objc_msgSend(objc_alloc(MEMORY[0x1E695DFF8]), "initFileURLWithPath:isDirectory:", v7, 1), v9 = _CFBundleCopyBundleURLForExecutableURL(), v8, v7, v9))
  {
    v10 = [MEMORY[0x1E6963618] bundleProxyForURL:v9];
    if (!v10)
    {
      v11 = INSiriLogContextIntents;
      if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_INFO))
      {
        v24 = 136315394;
        v25 = "bundleProxyForPID";
        v26 = 2112;
        v27 = v9;
        _os_log_impl(&dword_18E991000, v11, OS_LOG_TYPE_INFO, "%s No bundleProxy for bundleURL=%{publid}@", &v24, 0x16u);
      }
    }
  }

  else
  {
    v12 = INSiriLogContextIntents;
    if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_INFO))
    {
      v24 = 136315394;
      v25 = "bundleProxyForPID";
      v26 = 1024;
      LODWORD(v27) = v5;
      _os_log_impl(&dword_18E991000, v12, OS_LOG_TYPE_INFO, "%s No bundleURL for pid=%{publid}d", &v24, 0x12u);
    }

    v10 = 0;
  }

  v13 = [v4 valueForEntitlement:@"com.apple.intents.intents-helper"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v13 BOOLValue])
  {
    v14 = +[INHelperServiceAccessSpecifier accessSpecifierUnrestricted];
  }

  else
  {
    v15 = [v4 valueForEntitlement:@"com.apple.intents.extension.discovery"];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [v15 BOOLValue] || !v10 || (objc_msgSend(v10, "bundleIdentifier"), v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v16, "isEqualToString:", @"com.apple.WorkflowUI.AddShortcutExtension"), v16, v17))
    {
      v14 = +[INHelperServiceAccessSpecifier accessSpecifierUnrestricted];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v18 = v10;
      }

      else
      {
        v18 = 0;
      }

      v19 = v18;
      v20 = v19;
      if (v19 && [v19 if_isSystem])
      {
        v14 = +[INHelperServiceAccessSpecifier accessSpecifierUnrestricted];
      }

      else
      {
        v21 = [v10 bundleIdentifier];
        if (v21)
        {
          [INHelperServiceAccessSpecifier accessSpecifierFilteredForAssociatedAppBundleIdentifier:v21];
        }

        else
        {
          +[INHelperServiceAccessSpecifier accessSpecifierWithNoAccess];
        }
        v14 = ;
      }
    }
  }

  v22 = *MEMORY[0x1E69E9840];

  return v14;
}

+ (id)accessSpecifierAppropriateForCurrentProcess
{
  if (INThisProcessIsAssistantd_onceToken != -1)
  {
    dispatch_once(&INThisProcessIsAssistantd_onceToken, &__block_literal_global_75004);
  }

  if (INThisProcessIsAssistantd_isAssistantd)
  {
    goto LABEL_10;
  }

  if (INThisProcessIsSiri_onceToken != -1)
  {
    dispatch_once(&INThisProcessIsSiri_onceToken, &__block_literal_global_40);
  }

  if (INThisProcessIsSiri_isSiri)
  {
    goto LABEL_10;
  }

  if (INThisProcessIsCarousel_onceToken != -1)
  {
    dispatch_once(&INThisProcessIsCarousel_onceToken, &__block_literal_global_43);
  }

  if (INThisProcessIsCarousel_isCarousel == 1)
  {
LABEL_10:
    v3 = [a1 accessSpecifierUnrestricted];
  }

  else
  {
    v3 = [a1 accessSpecifierWithNoAccess];
  }

  return v3;
}

+ (id)accessSpecifierWithNoAccess
{
  v2 = [[a1 alloc] initWithAccessLevel:0 associatedAppBundleIdentifier:0];

  return v2;
}

+ (id)accessSpecifierFilteredForAssociatedAppBundleIdentifier:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithAccessLevel:1 associatedAppBundleIdentifier:v4];

  return v5;
}

+ (id)accessSpecifierUnrestricted
{
  v2 = [[a1 alloc] initWithAccessLevel:2 associatedAppBundleIdentifier:0];

  return v2;
}

+ (void)initialize
{
  if (objc_opt_class() == a1 && INLogInitIfNeeded_once != -1)
  {

    dispatch_once(&INLogInitIfNeeded_once, &__block_literal_global_72043);
  }
}

@end