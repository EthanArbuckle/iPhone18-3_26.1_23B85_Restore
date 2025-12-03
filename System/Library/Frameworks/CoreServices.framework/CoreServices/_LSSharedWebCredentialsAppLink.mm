@interface _LSSharedWebCredentialsAppLink
+ (BOOL)_areAppLinksEnabledForServiceDetails:(id)details cachedSettings:(id *)settings;
+ (BOOL)_setSWCSetting:(id)setting forKey:(id)key withApplicationIdentifier:(id)identifier error:(id *)error;
+ (BOOL)removeAllSettingsReturningError:(id *)error;
+ (BOOL)setSettingsSwitchState:(int64_t)state forApplicationIdentifier:(id)identifier error:(id *)error;
+ (id)_SWCSettingsWithApplicationIdentifier:(id)identifier error:(id *)error;
+ (id)_SWCSpecifierForSettingsWithApplicationIdentifier:(id)identifier;
+ (int64_t)settingsSwitchStateForApplicationIdentifier:(id)identifier;
+ (void)afterAppLinksBecomeAvailableForURL:(id)l limit:(unint64_t)limit performBlock:(id)block;
+ (void)initialize;
- (BOOL)_setSWCSetting:(id)setting forKey:(id)key error:(id *)error;
- (BOOL)isEnabled;
- (BOOL)removeSettingsReturningError:(id *)error;
- (_LSSharedWebCredentialsAppLink)initWithCoder:(id)coder;
- (id).cxx_construct;
- (id)_SWCSettingsReturningError:(id *)error;
- (id)_SWCSpecifierForSettings;
- (id)browserSettings;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _LSSharedWebCredentialsAppLink

+ (void)initialize
{
  v3.receiver = self;
  v3.super_class = &OBJC_METACLASS____LSSharedWebCredentialsAppLink;
  objc_msgSendSuper2(&v3, sel_initialize);
  if (objc_opt_class() == self)
  {
    _LSIsSWCAvailable();
  }
}

+ (id)_SWCSpecifierForSettingsWithApplicationIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = objc_alloc(_LSSWCServiceSpecifierClass());
  v5 = _LSSWCServiceTypeAppLinks();
  v6 = [v4 initWithServiceType:v5 applicationIdentifier:identifierCopy domain:0];

  return v6;
}

- (id)_SWCSpecifierForSettings
{
  serviceSpecifier = [(_SWCServiceDetails *)self->_serviceDetails serviceSpecifier];
  applicationIdentifier = [serviceSpecifier applicationIdentifier];

  v4 = [objc_opt_class() _SWCSpecifierForSettingsWithApplicationIdentifier:applicationIdentifier];

  return v4;
}

+ (id)_SWCSettingsWithApplicationIdentifier:(id)identifier error:(id *)error
{
  v5 = [self _SWCSpecifierForSettingsWithApplicationIdentifier:identifier];
  v6 = [_LSSWCServiceSettingsClass() serviceSettingsWithServiceSpecifier:v5 error:error];

  return v6;
}

- (id)_SWCSettingsReturningError:(id *)error
{
  serviceSpecifier = [(_SWCServiceDetails *)self->_serviceDetails serviceSpecifier];
  applicationIdentifier = [serviceSpecifier applicationIdentifier];

  v6 = [objc_opt_class() _SWCSettingsWithApplicationIdentifier:applicationIdentifier error:error];

  return v6;
}

+ (BOOL)_setSWCSetting:(id)setting forKey:(id)key withApplicationIdentifier:(id)identifier error:(id *)error
{
  settingCopy = setting;
  keyCopy = key;
  identifierCopy = identifier;
  while (1)
  {
    v12 = [self _SWCSettingsWithApplicationIdentifier:identifierCopy error:{error, settingCopy}];
    v13 = v12;
    if (!v12)
    {
      break;
    }

    [v12 setObject:settingCopy forKey:keyCopy];
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
      if (error)
      {
        v20 = v16;
        *error = v16;
      }

LABEL_9:

      goto LABEL_11;
    }
  }

  v14 = 0;
LABEL_11:

  return v14;
}

- (BOOL)_setSWCSetting:(id)setting forKey:(id)key error:(id *)error
{
  settingCopy = setting;
  keyCopy = key;
  serviceSpecifier = [(_SWCServiceDetails *)self->_serviceDetails serviceSpecifier];
  applicationIdentifier = [serviceSpecifier applicationIdentifier];

  LOBYTE(error) = [objc_opt_class() _setSWCSetting:settingCopy forKey:keyCopy withApplicationIdentifier:applicationIdentifier error:error];
  return error;
}

+ (BOOL)_areAppLinksEnabledForServiceDetails:(id)details cachedSettings:(id *)settings
{
  detailsCopy = details;
  if ([detailsCopy isAlwaysEnabled])
  {
    bOOLValue = 1;
    v8 = 1;
    goto LABEL_11;
  }

  v9 = *settings;
  if (!v9)
  {
    serviceSpecifier = [detailsCopy serviceSpecifier];
    applicationIdentifier = [serviceSpecifier applicationIdentifier];
    v9 = [self _SWCSettingsWithApplicationIdentifier:applicationIdentifier error:0];

    objc_storeStrong(settings, v9);
  }

  v12 = [v9 objectForKey:@"com.apple.LaunchServices.enabled" ofClass:objc_opt_class()];
  v13 = v12;
  if (v12)
  {
    bOOLValue = [v12 BOOLValue];
  }

  else
  {

    isEnabledByDefault = [detailsCopy isEnabledByDefault];
    v9 = isEnabledByDefault;
    v8 = isEnabledByDefault != 0;
    if (!isEnabledByDefault)
    {
      bOOLValue = 0;
      goto LABEL_10;
    }

    bOOLValue = [isEnabledByDefault BOOLValue];
  }

  v8 = 1;
LABEL_10:

LABEL_11:
  areEnabledByDefault = [objc_opt_class() areEnabledByDefault];
  if (v8)
  {
    v16 = bOOLValue;
  }

  else
  {
    v16 = areEnabledByDefault;
  }

  return v16;
}

+ (void)afterAppLinksBecomeAvailableForURL:(id)l limit:(unint64_t)limit performBlock:(id)block
{
  lCopy = l;
  blockCopy = block;
  _dispatchQueue = [self _dispatchQueue];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __88___LSSharedWebCredentialsAppLink_afterAppLinksBecomeAvailableForURL_limit_performBlock___block_invoke;
  v13[3] = &unk_1E6A1A5C0;
  v14 = lCopy;
  v15 = blockCopy;
  limitCopy = limit;
  selfCopy = self;
  v11 = blockCopy;
  v12 = lCopy;
  dispatch_async(_dispatchQueue, v13);
}

- (BOOL)isEnabled
{
  v4 = 0;
  v2 = [objc_opt_class() _areAppLinksEnabledForServiceDetails:self->_serviceDetails cachedSettings:&v4];

  return v2;
}

+ (int64_t)settingsSwitchStateForApplicationIdentifier:(id)identifier
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = [self _SWCSpecifierForSettingsWithApplicationIdentifier:identifier];
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
          v8 += [self _areAppLinksEnabledForServiceDetails:v12 cachedSettings:&v21];
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

+ (BOOL)setSettingsSwitchState:(int64_t)state forApplicationIdentifier:(id)identifier error:(id *)error
{
  v14[1] = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  if ((state | 2) == 2)
  {
    v9 = [MEMORY[0x1E696AD98] numberWithBool:state == 2];
    LOBYTE(error) = [self _setSWCSetting:v9 forKey:@"com.apple.LaunchServices.enabled" withApplicationIdentifier:identifierCopy error:error];
  }

  else if (error)
  {
    v13 = *MEMORY[0x1E696A278];
    v14[0] = @"state";
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];
    *error = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -50, v10, "+[_LSSharedWebCredentialsAppLink setSettingsSwitchState:forApplicationIdentifier:error:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSAppLinkPlugIn.mm", 391);

    LOBYTE(error) = 0;
  }

  v11 = *MEMORY[0x1E69E9840];
  return error;
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

- (BOOL)removeSettingsReturningError:(id *)error
{
  v12[2] = *MEMORY[0x1E69E9840];
  _SWCSpecifierForSettings = [(_LSSharedWebCredentialsAppLink *)self _SWCSpecifierForSettings];
  v5 = _LSSWCServiceSettingsClass();
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v12[0] = @"com.apple.LaunchServices.enabled";
    v12[1] = @"com.apple.LaunchServices.browserSettings";
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:2];
    v8 = [v6 setWithArray:v7];

    v9 = [v5 removeObjectsForKeys:v8 serviceSpecifier:_SWCSpecifierForSettings error:error];
  }

  else if (error)
  {
    _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -4, 0, "[_LSSharedWebCredentialsAppLink removeSettingsReturningError:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSAppLinkPlugIn.mm", 430);
    *error = v9 = 0;
  }

  else
  {
    v9 = 0;
  }

  v10 = *MEMORY[0x1E69E9840];
  return v9;
}

+ (BOOL)removeAllSettingsReturningError:(id *)error
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
    v10 = [v5 removeObjectsForKeys:v8 serviceType:v9 error:error];
  }

  else if (error)
  {
    _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -4, 0, "+[_LSSharedWebCredentialsAppLink removeAllSettingsReturningError:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSAppLinkPlugIn.mm", 446);
    *error = v10 = 0;
  }

  else
  {
    v10 = 0;
  }

  v11 = *MEMORY[0x1E69E9840];
  return v10;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v5.receiver = self;
  v5.super_class = _LSSharedWebCredentialsAppLink;
  [(LSAppLink *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_serviceDetails forKey:@"serviceDetails"];
}

- (_LSSharedWebCredentialsAppLink)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = _LSSharedWebCredentialsAppLink;
  v5 = [(LSAppLink *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy ls_decodeObjectOfClass:_LSSWCServiceDetailsClass() forKey:@"serviceDetails"];
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