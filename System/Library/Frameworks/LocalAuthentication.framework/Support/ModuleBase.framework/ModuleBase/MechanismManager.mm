@interface MechanismManager
- (BOOL)_canLoadPlugin:(int64_t)plugin className:(id)name userId:(id)id request:(id)request error:(id *)error;
- (MechanismManager)init;
- (id)_pathForPlugin:(int64_t)plugin error:(id *)error;
- (id)loadMechanism:(int64_t)mechanism initParams:(id)params request:(id)request className:(id)name error:(id *)error;
- (int64_t)_eventForPlugin:(int64_t)plugin;
- (void)_logClass:(Class)class tag:(id)tag;
@end

@implementation MechanismManager

- (MechanismManager)init
{
  v10.receiver = self;
  v10.super_class = MechanismManager;
  v2 = [(MechanismManager *)&v10 init];
  if (v2)
  {
    v3 = objc_opt_new();
    plugins = v2->_plugins;
    v2->_plugins = v3;

    mEMORY[0x277CD47E8] = [MEMORY[0x277CD47E8] sharedInstance];
    mechanismContext = v2->_mechanismContext;
    v2->_mechanismContext = mEMORY[0x277CD47E8];

    mEMORY[0x277CD47C8] = [MEMORY[0x277CD47C8] sharedInstance];
    serverQueue = [mEMORY[0x277CD47C8] serverQueue];
    [(MechanismContext *)v2->_mechanismContext setServerQueue:serverQueue];
  }

  return v2;
}

- (id)loadMechanism:(int64_t)mechanism initParams:(id)params request:(id)request className:(id)name error:(id *)error
{
  paramsCopy = params;
  requestCopy = request;
  nameCopy = name;
  plugins = self->_plugins;
  v16 = [MEMORY[0x277CCABB0] numberWithInteger:mechanism];
  v17 = [(NSMutableDictionary *)plugins objectForKeyedSubscript:v16];

  if (v17)
  {
    v18 = 0;
  }

  else
  {
    v19 = [paramsCopy objectForKeyedSubscript:@"UserId"];
    v45 = 0;
    v20 = [(MechanismManager *)self _canLoadPlugin:mechanism className:nameCopy userId:v19 request:requestCopy error:&v45];
    v21 = v45;

    if (!v20)
    {
      v17 = 0;
      v25 = 0;
      if (([0 isLoaded] & 1) == 0)
      {
        goto LABEL_38;
      }

      goto LABEL_19;
    }

    v42 = requestCopy;
    v44 = v21;
    v22 = [(MechanismManager *)self _pathForPlugin:mechanism error:&v44];
    v18 = v44;

    if (v22)
    {
      v23 = [MEMORY[0x277CCA8D8] bundleWithPath:v22];
      if (v23)
      {
        v17 = v23;
        v41 = self->_plugins;
        v24 = [MEMORY[0x277CCABB0] numberWithInteger:mechanism];
        [(NSMutableDictionary *)v41 setObject:v17 forKey:v24];
      }

      else
      {
        v26 = MEMORY[0x277CD47F0];
        v24 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to load plugin: %@", v22];
        v27 = [v26 internalErrorWithMessage:v24];

        v17 = 0;
        v18 = v27;
      }
    }

    else
    {
      v17 = 0;
    }

    requestCopy = v42;
  }

  isLoaded = [v17 isLoaded];
  if (!v17 || (isLoaded & 1) != 0)
  {
    if (!isLoaded)
    {
      v25 = 0;
      v21 = v18;
      goto LABEL_38;
    }

    v21 = v18;
  }

  else
  {
    v43 = v18;
    v29 = [v17 loadAndReturnError:&v43];
    v21 = v43;

    if ((v29 & 1) == 0)
    {
      v25 = 0;
      goto LABEL_38;
    }
  }

LABEL_19:
  if (nameCopy)
  {
    principalClass = NSClassFromString(nameCopy);
  }

  else
  {
    principalClass = [v17 principalClass];
  }

  v31 = principalClass;
  if (principalClass)
  {
    v32 = requestCopy;
    v33 = [(objc_class *)principalClass isSubclassOfClass:objc_opt_class()];
    if ((v33 & 1) == 0)
    {
      v34 = LA_LOG_MechanismManager();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        [MechanismManager loadMechanism:v17 initParams:v34 request:? className:? error:?];
      }

      [(MechanismManager *)self _logClass:v31 tag:@"cls"];
      -[MechanismManager _logClass:tag:](self, "_logClass:tag:", [v17 principalClass], @"bundle.principalClass");
      [(MechanismManager *)self _logClass:objc_opt_class() tag:@"MechanismBase.class"];
    }

    if (paramsCopy)
    {
      v35 = [[v31 alloc] initWithParams:paramsCopy request:v32];
    }

    else
    {
      v35 = objc_opt_new();
    }

    v25 = v35;
    if (v33)
    {
      requestCopy = v32;
      goto LABEL_38;
    }

    v37 = LA_LOG_MechanismManager();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      [MechanismManager loadMechanism:v25 initParams:v37 request:? className:? error:?];
    }

    requestCopy = v32;
  }

  else
  {
    v36 = MEMORY[0x277CD47F0];
    v37 = [MEMORY[0x277CCACA8] stringWithFormat:@"No class in bundle: %@", v17];
    v38 = [v36 internalErrorWithMessage:v37];

    v25 = 0;
    v21 = v38;
  }

LABEL_38:
  if (error)
  {
    v39 = v21;
    *error = v21;
  }

  return v25;
}

- (BOOL)_canLoadPlugin:(int64_t)plugin className:(id)name userId:(id)id request:(id)request error:(id *)error
{
  nameCopy = name;
  idCopy = id;
  requestCopy = request;
  if (plugin == 4)
  {
    mEMORY[0x277CD4800] = [MEMORY[0x277CD4800] sharedInstance];
    v39 = 0;
    v24 = [mEMORY[0x277CD4800] isPasscodeSetForUser:objc_msgSend(idCopy error:{"unsignedIntValue"), &v39}];
    v17 = v39;
    if (!v24)
    {
      isPurposeSecureUIRecording = [requestCopy isPurposeSecureUIRecording];

      if (isPurposeSecureUIRecording)
      {
        v23 = 1;
        v20 = v17;
        goto LABEL_27;
      }

      selfCopy4 = self;
      goto LABEL_24;
    }

    selfCopy4 = self;
    faceIdInstance = [MEMORY[0x277CD47C0] faceIdInstance];
    v38 = v17;
    v26 = [faceIdInstance isEnrolled:idCopy error:&v38];
    v20 = v38;

    if (v26)
    {
      v23 = 1;
LABEL_25:

      goto LABEL_26;
    }

    isPurposeSecureUIRecording2 = [requestCopy isPurposeSecureUIRecording];

    if ((isPurposeSecureUIRecording2 & 1) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_12;
  }

  if (plugin != 2)
  {
    if (plugin == 1)
    {
      selfCopy4 = self;
      mEMORY[0x277CD4800]2 = [MEMORY[0x277CD4800] sharedInstance];
      v41 = 0;
      v16 = [mEMORY[0x277CD4800]2 isPasscodeSetForUser:objc_msgSend(idCopy error:{"unsignedIntValue"), &v41}];
      v17 = v41;
      if ((v16 & 1) == 0)
      {

LABEL_24:
        current = [MEMORY[0x277CD47D0] current];
        analytics = [current analytics];
        mEMORY[0x277CD47C0] = [MEMORY[0x277CD47C0] sharedInstance];
        [analytics biometryType:{objc_msgSend(mEMORY[0x277CD47C0], "biometryType")}];

        mEMORY[0x277CD4800] = [MEMORY[0x277CD47D0] current];
        faceIdInstance = [mEMORY[0x277CD4800] analytics];
        [faceIdInstance authenticationResult:objc_msgSend(v17 event:{"code"), objc_msgSend(v36, "_eventForPlugin:", plugin)}];
        v23 = 0;
        v20 = v17;
        goto LABEL_25;
      }

      touchIdInstance = [MEMORY[0x277CD47C0] touchIdInstance];
      v40 = v17;
      v19 = [touchIdInstance isEnrolled:idCopy error:&v40];
      v20 = v40;

      if ((v19 & 1) == 0)
      {
LABEL_22:
        v17 = v20;
        goto LABEL_24;
      }

      goto LABEL_12;
    }

LABEL_11:
    v20 = 0;
    goto LABEL_12;
  }

  if (nameCopy && ![nameCopy isEqualToString:@"MechanismPasscode"])
  {
    goto LABEL_11;
  }

  mEMORY[0x277CD4800] = [MEMORY[0x277CD4800] sharedInstance];
  v37 = 0;
  v22 = [mEMORY[0x277CD4800] isPasscodeSetForUser:objc_msgSend(idCopy error:{"unsignedIntValue"), &v37}];
  v20 = v37;
  if ((v22 & 1) == 0)
  {
    v28 = [MEMORY[0x277D240C0] isPolicyAcceptingEmptyPassword:{objc_msgSend(requestCopy, "policy")}];

    if ((v28 & 1) == 0)
    {
      selfCopy4 = self;
      goto LABEL_22;
    }

LABEL_12:
    v23 = 1;
    goto LABEL_27;
  }

  v23 = 1;
LABEL_26:

LABEL_27:
  if (error)
  {
    v33 = v20;
    *error = v20;
  }

  return v23;
}

- (id)_pathForPlugin:(int64_t)plugin error:(id *)error
{
  if ((plugin - 1) > 3)
  {
    v7 = MEMORY[0x277CD47F0];
    v8 = MEMORY[0x277CCACA8];
    v9 = [MEMORY[0x277CCABB0] numberWithInteger:?];
    v10 = [v8 stringWithFormat:@"Unknown plugin: %@", v9];
    v6 = [v7 internalErrorWithMessage:v10];

    v5 = 0;
    if (!error)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"/System/Library/Frameworks/LocalAuthentication.framework/Support/MechanismPlugins/%@.bundle", off_278A646E0[plugin - 1]];
  v6 = 0;
  if (error)
  {
LABEL_5:
    v11 = v6;
    *error = v6;
  }

LABEL_6:

  return v5;
}

- (int64_t)_eventForPlugin:(int64_t)plugin
{
  if (plugin > 4)
  {
    return 1;
  }

  else
  {
    return qword_238BC7AC0[plugin];
  }
}

- (void)_logClass:(Class)class tag:(id)tag
{
  tagCopy = tag;
  [MechanismManager _logClass:"_logClass:tag:level:" tag:class level:?];
  Superclass = class_getSuperclass(class);
  if (Superclass)
  {
    v7 = Superclass;
    v8 = 1;
    do
    {
      v9 = v8 + 1;
      [(MechanismManager *)self _logClass:v7 tag:tagCopy level:?];
      v7 = class_getSuperclass(v7);
      v8 = v9;
    }

    while (v7);
  }
}

- (void)loadMechanism:(uint64_t)a1 initParams:(NSObject *)a2 request:className:error:.cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_238BBF000, a2, OS_LOG_TYPE_ERROR, "Class issue detected while loading principal class from bundle: %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)loadMechanism:(uint64_t)a1 initParams:(NSObject *)a2 request:className:error:.cold.2(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_238BBF000, a2, OS_LOG_TYPE_ERROR, "Created mechanism: %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end