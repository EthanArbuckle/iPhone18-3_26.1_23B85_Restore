@interface _LSSharedWebCredentialsAppLink
+ (BOOL)_areAppLinksEnabledForServiceDetails:(id)a3 cachedSettings:(id *)a4;
+ (BOOL)_setSWCSetting:(id)a3 forKey:(id)a4 withApplicationIdentifier:(id)a5 error:(id *)a6;
+ (BOOL)removeAllSettingsReturningError:(id *)a3;
+ (BOOL)setSettingsSwitchState:(int64_t)a3 forApplicationIdentifier:(id)a4 error:(id *)a5;
+ (id)_SWCSettingsWithApplicationIdentifier:(id)a3 error:(id *)a4;
+ (id)_SWCSpecifierForSettingsWithApplicationIdentifier:(id)a3;
+ (int64_t)settingsSwitchStateForApplicationIdentifier:(id)a3;
+ (void)afterAppLinksBecomeAvailableForURL:(id)a3 limit:(unint64_t)a4 performBlock:(id)a5;
+ (void)initialize;
- (BOOL)_setSWCSetting:(id)a3 forKey:(id)a4 error:(id *)a5;
- (BOOL)isEnabled;
- (BOOL)removeSettingsReturningError:(id *)a3;
- (_LSSharedWebCredentialsAppLink)initWithCoder:(id)a3;
- (id).cxx_construct;
- (id)_SWCSettingsReturningError:(id *)a3;
- (id)_SWCSpecifierForSettings;
- (id)browserSettings;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _LSSharedWebCredentialsAppLink

+ (void)initialize
{
  v3.receiver = a1;
  v3.super_class = &OBJC_METACLASS____LSSharedWebCredentialsAppLink;
  objc_msgSendSuper2(&v3, sel_initialize);
  if (objc_opt_class() == a1)
  {
    _LSIsSWCAvailable();
  }
}

+ (id)_SWCSpecifierForSettingsWithApplicationIdentifier:(id)a3
{
  v3 = a3;
  v4 = objc_alloc(_LSSWCServiceSpecifierClass());
  v5 = _LSSWCServiceTypeAppLinks();
  v6 = [v4 initWithServiceType:v5 applicationIdentifier:v3 domain:0];

  return v6;
}

- (id)_SWCSpecifierForSettings
{
  v2 = [(_SWCServiceDetails *)self->_serviceDetails serviceSpecifier];
  v3 = [v2 applicationIdentifier];

  v4 = [objc_opt_class() _SWCSpecifierForSettingsWithApplicationIdentifier:v3];

  return v4;
}

+ (id)_SWCSettingsWithApplicationIdentifier:(id)a3 error:(id *)a4
{
  v5 = [a1 _SWCSpecifierForSettingsWithApplicationIdentifier:a3];
  v6 = [_LSSWCServiceSettingsClass() serviceSettingsWithServiceSpecifier:v5 error:a4];

  return v6;
}

- (id)_SWCSettingsReturningError:(id *)a3
{
  v4 = [(_SWCServiceDetails *)self->_serviceDetails serviceSpecifier];
  v5 = [v4 applicationIdentifier];

  v6 = [objc_opt_class() _SWCSettingsWithApplicationIdentifier:v5 error:a3];

  return v6;
}

+ (BOOL)_setSWCSetting:(id)a3 forKey:(id)a4 withApplicationIdentifier:(id)a5 error:(id *)a6
{
  v22 = a3;
  v10 = a4;
  v11 = a5;
  while (1)
  {
    v12 = [a1 _SWCSettingsWithApplicationIdentifier:v11 error:{a6, v22}];
    v13 = v12;
    if (!v12)
    {
      break;
    }

    [v12 setObject:v22 forKey:v10];
    v23 = 0;
    v14 = [v13 commitReturningError:&v23];
    v15 = v23;
    v16 = v15;
    if (v14)
    {
      goto LABEL_9;
    }

    if ([v15 code] != 1000 || (objc_msgSend(v16, "domain"), v17 = objc_claimAutoreleasedReturnValue(), _LSSWCErrorDomain(), v18 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend(v17, "isEqual:", v18), v18, v17, (v19 & 1) == 0))
    {
      if (a6)
      {
        v20 = v16;
        *a6 = v16;
      }

LABEL_9:

      goto LABEL_11;
    }
  }

  v14 = 0;
LABEL_11:

  return v14;
}

- (BOOL)_setSWCSetting:(id)a3 forKey:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [(_SWCServiceDetails *)self->_serviceDetails serviceSpecifier];
  v11 = [v10 applicationIdentifier];

  LOBYTE(a5) = [objc_opt_class() _setSWCSetting:v8 forKey:v9 withApplicationIdentifier:v11 error:a5];
  return a5;
}

+ (BOOL)_areAppLinksEnabledForServiceDetails:(id)a3 cachedSettings:(id *)a4
{
  v6 = a3;
  if ([v6 isAlwaysEnabled])
  {
    v7 = 1;
    v8 = 1;
    goto LABEL_11;
  }

  v9 = *a4;
  if (!v9)
  {
    v10 = [v6 serviceSpecifier];
    v11 = [v10 applicationIdentifier];
    v9 = [a1 _SWCSettingsWithApplicationIdentifier:v11 error:0];

    objc_storeStrong(a4, v9);
  }

  v12 = [v9 objectForKey:@"com.apple.LaunchServices.enabled" ofClass:objc_opt_class()];
  v13 = v12;
  if (v12)
  {
    v7 = [v12 BOOLValue];
  }

  else
  {

    v14 = [v6 isEnabledByDefault];
    v9 = v14;
    v8 = v14 != 0;
    if (!v14)
    {
      v7 = 0;
      goto LABEL_10;
    }

    v7 = [v14 BOOLValue];
  }

  v8 = 1;
LABEL_10:

LABEL_11:
  v15 = [objc_opt_class() areEnabledByDefault];
  if (v8)
  {
    v16 = v7;
  }

  else
  {
    v16 = v15;
  }

  return v16;
}

+ (void)afterAppLinksBecomeAvailableForURL:(id)a3 limit:(unint64_t)a4 performBlock:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [a1 _dispatchQueue];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __88___LSSharedWebCredentialsAppLink_afterAppLinksBecomeAvailableForURL_limit_performBlock___block_invoke;
  v13[3] = &unk_1E6A1A5C0;
  v14 = v8;
  v15 = v9;
  v16 = a4;
  v17 = a1;
  v11 = v9;
  v12 = v8;
  dispatch_async(v10, v13);
}

- (BOOL)isEnabled
{
  v4 = 0;
  v2 = [objc_opt_class() _areAppLinksEnabledForServiceDetails:self->_serviceDetails cachedSettings:&v4];

  return v2;
}

+ (int64_t)settingsSwitchStateForApplicationIdentifier:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = [a1 _SWCSpecifierForSettingsWithApplicationIdentifier:a3];
  v5 = [_LSSWCServiceDetailsClass() serviceDetailsWithServiceSpecifier:v4 error:0];
  v21 = 0;
  v6 = [v5 count];
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = v5;
  v8 = 0;
  v9 = [v7 countByEnumeratingWithState:&v17 objects:v22 count:16];
  if (v9)
  {
    v10 = *v18;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v17 + 1) + 8 * i);
        if ([v12 isAlwaysEnabled])
        {
          --v6;
        }

        else
        {
          v8 += [a1 _areAppLinksEnabledForServiceDetails:v12 cachedSettings:&v21];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v17 objects:v22 count:16];
    }

    while (v9);
  }

  if (v6)
  {
    if (v8 == v6)
    {
      v13 = 2;
    }

    else
    {
      v13 = v8 < v6 && v8 != 0;
    }
  }

  else
  {
    v13 = -1;
  }

  v15 = *MEMORY[0x1E69E9840];
  return v13;
}

+ (BOOL)setSettingsSwitchState:(int64_t)a3 forApplicationIdentifier:(id)a4 error:(id *)a5
{
  v14[1] = *MEMORY[0x1E69E9840];
  v8 = a4;
  if ((a3 | 2) == 2)
  {
    v9 = [MEMORY[0x1E696AD98] numberWithBool:a3 == 2];
    LOBYTE(a5) = [a1 _setSWCSetting:v9 forKey:@"com.apple.LaunchServices.enabled" withApplicationIdentifier:v8 error:a5];
  }

  else if (a5)
  {
    v13 = *MEMORY[0x1E696A278];
    v14[0] = @"state";
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];
    *a5 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -50, v10, "+[_LSSharedWebCredentialsAppLink setSettingsSwitchState:forApplicationIdentifier:error:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSAppLinkPlugIn.mm", 391);

    LOBYTE(a5) = 0;
  }

  v11 = *MEMORY[0x1E69E9840];
  return a5;
}

- (id)browserSettings
{
  v2 = [(_LSSharedWebCredentialsAppLink *)self _SWCSettingsReturningError:0];
  if (!v2 || (v3 = v2, [v2 objectForKey:@"com.apple.LaunchServices.browserSettings" ofClass:objc_opt_class()], v4 = objc_claimAutoreleasedReturnValue(), v3, !v4))
  {
    v4 = MEMORY[0x1E695E0F8];
  }

  return v4;
}

- (BOOL)removeSettingsReturningError:(id *)a3
{
  v12[2] = *MEMORY[0x1E69E9840];
  v4 = [(_LSSharedWebCredentialsAppLink *)self _SWCSpecifierForSettings];
  v5 = _LSSWCServiceSettingsClass();
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v12[0] = @"com.apple.LaunchServices.enabled";
    v12[1] = @"com.apple.LaunchServices.browserSettings";
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:2];
    v8 = [v6 setWithArray:v7];

    v9 = [v5 removeObjectsForKeys:v8 serviceSpecifier:v4 error:a3];
  }

  else if (a3)
  {
    _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -4, 0, "[_LSSharedWebCredentialsAppLink removeSettingsReturningError:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSAppLinkPlugIn.mm", 430);
    *a3 = v9 = 0;
  }

  else
  {
    v9 = 0;
  }

  v10 = *MEMORY[0x1E69E9840];
  return v9;
}

+ (BOOL)removeAllSettingsReturningError:(id *)a3
{
  v13[2] = *MEMORY[0x1E69E9840];
  v4 = _LSSWCServiceSettingsClass();
  if (v4)
  {
    v5 = v4;
    v6 = MEMORY[0x1E695DFD8];
    v13[0] = @"com.apple.LaunchServices.enabled";
    v13[1] = @"com.apple.LaunchServices.browserSettings";
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:2];
    v8 = [v6 setWithArray:v7];

    v9 = _LSSWCServiceTypeAppLinks();
    v10 = [v5 removeObjectsForKeys:v8 serviceType:v9 error:a3];
  }

  else if (a3)
  {
    _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -4, 0, "+[_LSSharedWebCredentialsAppLink removeAllSettingsReturningError:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSAppLinkPlugIn.mm", 446);
    *a3 = v10 = 0;
  }

  else
  {
    v10 = 0;
  }

  v11 = *MEMORY[0x1E69E9840];
  return v10;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5.receiver = self;
  v5.super_class = _LSSharedWebCredentialsAppLink;
  [(LSAppLink *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_serviceDetails forKey:@"serviceDetails"];
}

- (_LSSharedWebCredentialsAppLink)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = _LSSharedWebCredentialsAppLink;
  v5 = [(LSAppLink *)&v9 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 ls_decodeObjectOfClass:_LSSWCServiceDetailsClass() forKey:@"serviceDetails"];
    serviceDetails = v5->_serviceDetails;
    v5->_serviceDetails = v6;
  }

  return v5;
}

- (id).cxx_construct
{
  *(self + 8) = 0;
  *(self + 5) = 0;
  *(self + 12) = 0;
  *(self + 56) = 0u;
  *(self + 72) = 0u;
  return self;
}

@end