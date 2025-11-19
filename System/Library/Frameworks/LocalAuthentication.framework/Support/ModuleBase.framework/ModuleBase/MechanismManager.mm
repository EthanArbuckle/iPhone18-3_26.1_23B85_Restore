@interface MechanismManager
- (BOOL)_canLoadPlugin:(int64_t)a3 className:(id)a4 userId:(id)a5 request:(id)a6 error:(id *)a7;
- (MechanismManager)init;
- (id)_pathForPlugin:(int64_t)a3 error:(id *)a4;
- (id)loadMechanism:(int64_t)a3 initParams:(id)a4 request:(id)a5 className:(id)a6 error:(id *)a7;
- (int64_t)_eventForPlugin:(int64_t)a3;
- (void)_logClass:(Class)a3 tag:(id)a4;
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

    v5 = [MEMORY[0x277CD47E8] sharedInstance];
    mechanismContext = v2->_mechanismContext;
    v2->_mechanismContext = v5;

    v7 = [MEMORY[0x277CD47C8] sharedInstance];
    v8 = [v7 serverQueue];
    [(MechanismContext *)v2->_mechanismContext setServerQueue:v8];
  }

  return v2;
}

- (id)loadMechanism:(int64_t)a3 initParams:(id)a4 request:(id)a5 className:(id)a6 error:(id *)a7
{
  v12 = a4;
  v13 = a5;
  v14 = a6;
  plugins = self->_plugins;
  v16 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  v17 = [(NSMutableDictionary *)plugins objectForKeyedSubscript:v16];

  if (v17)
  {
    v18 = 0;
  }

  else
  {
    v19 = [v12 objectForKeyedSubscript:@"UserId"];
    v45 = 0;
    v20 = [(MechanismManager *)self _canLoadPlugin:a3 className:v14 userId:v19 request:v13 error:&v45];
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

    v42 = v13;
    v44 = v21;
    v22 = [(MechanismManager *)self _pathForPlugin:a3 error:&v44];
    v18 = v44;

    if (v22)
    {
      v23 = [MEMORY[0x277CCA8D8] bundleWithPath:v22];
      if (v23)
      {
        v17 = v23;
        v41 = self->_plugins;
        v24 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
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

    v13 = v42;
  }

  v28 = [v17 isLoaded];
  if (!v17 || (v28 & 1) != 0)
  {
    if (!v28)
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
  if (v14)
  {
    v30 = NSClassFromString(v14);
  }

  else
  {
    v30 = [v17 principalClass];
  }

  v31 = v30;
  if (v30)
  {
    v32 = v13;
    v33 = [(objc_class *)v30 isSubclassOfClass:objc_opt_class()];
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

    if (v12)
    {
      v35 = [[v31 alloc] initWithParams:v12 request:v32];
    }

    else
    {
      v35 = objc_opt_new();
    }

    v25 = v35;
    if (v33)
    {
      v13 = v32;
      goto LABEL_38;
    }

    v37 = LA_LOG_MechanismManager();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      [MechanismManager loadMechanism:v25 initParams:v37 request:? className:? error:?];
    }

    v13 = v32;
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
  if (a7)
  {
    v39 = v21;
    *a7 = v21;
  }

  return v25;
}

- (BOOL)_canLoadPlugin:(int64_t)a3 className:(id)a4 userId:(id)a5 request:(id)a6 error:(id *)a7
{
  v12 = a4;
  v13 = a5;
  v14 = a6;
  if (a3 == 4)
  {
    v21 = [MEMORY[0x277CD4800] sharedInstance];
    v39 = 0;
    v24 = [v21 isPasscodeSetForUser:objc_msgSend(v13 error:{"unsignedIntValue"), &v39}];
    v17 = v39;
    if (!v24)
    {
      v27 = [v14 isPurposeSecureUIRecording];

      if (v27)
      {
        v23 = 1;
        v20 = v17;
        goto LABEL_27;
      }

      v35 = self;
      goto LABEL_24;
    }

    v35 = self;
    v25 = [MEMORY[0x277CD47C0] faceIdInstance];
    v38 = v17;
    v26 = [v25 isEnrolled:v13 error:&v38];
    v20 = v38;

    if (v26)
    {
      v23 = 1;
LABEL_25:

      goto LABEL_26;
    }

    v29 = [v14 isPurposeSecureUIRecording];

    if ((v29 & 1) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_12;
  }

  if (a3 != 2)
  {
    if (a3 == 1)
    {
      v35 = self;
      v15 = [MEMORY[0x277CD4800] sharedInstance];
      v41 = 0;
      v16 = [v15 isPasscodeSetForUser:objc_msgSend(v13 error:{"unsignedIntValue"), &v41}];
      v17 = v41;
      if ((v16 & 1) == 0)
      {

LABEL_24:
        v30 = [MEMORY[0x277CD47D0] current];
        v31 = [v30 analytics];
        v32 = [MEMORY[0x277CD47C0] sharedInstance];
        [v31 biometryType:{objc_msgSend(v32, "biometryType")}];

        v21 = [MEMORY[0x277CD47D0] current];
        v25 = [v21 analytics];
        [v25 authenticationResult:objc_msgSend(v17 event:{"code"), objc_msgSend(v36, "_eventForPlugin:", a3)}];
        v23 = 0;
        v20 = v17;
        goto LABEL_25;
      }

      v18 = [MEMORY[0x277CD47C0] touchIdInstance];
      v40 = v17;
      v19 = [v18 isEnrolled:v13 error:&v40];
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

  if (v12 && ![v12 isEqualToString:@"MechanismPasscode"])
  {
    goto LABEL_11;
  }

  v21 = [MEMORY[0x277CD4800] sharedInstance];
  v37 = 0;
  v22 = [v21 isPasscodeSetForUser:objc_msgSend(v13 error:{"unsignedIntValue"), &v37}];
  v20 = v37;
  if ((v22 & 1) == 0)
  {
    v28 = [MEMORY[0x277D240C0] isPolicyAcceptingEmptyPassword:{objc_msgSend(v14, "policy")}];

    if ((v28 & 1) == 0)
    {
      v35 = self;
      goto LABEL_22;
    }

LABEL_12:
    v23 = 1;
    goto LABEL_27;
  }

  v23 = 1;
LABEL_26:

LABEL_27:
  if (a7)
  {
    v33 = v20;
    *a7 = v20;
  }

  return v23;
}

- (id)_pathForPlugin:(int64_t)a3 error:(id *)a4
{
  if ((a3 - 1) > 3)
  {
    v7 = MEMORY[0x277CD47F0];
    v8 = MEMORY[0x277CCACA8];
    v9 = [MEMORY[0x277CCABB0] numberWithInteger:?];
    v10 = [v8 stringWithFormat:@"Unknown plugin: %@", v9];
    v6 = [v7 internalErrorWithMessage:v10];

    v5 = 0;
    if (!a4)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"/System/Library/Frameworks/LocalAuthentication.framework/Support/MechanismPlugins/%@.bundle", off_278A646E0[a3 - 1]];
  v6 = 0;
  if (a4)
  {
LABEL_5:
    v11 = v6;
    *a4 = v6;
  }

LABEL_6:

  return v5;
}

- (int64_t)_eventForPlugin:(int64_t)a3
{
  if (a3 > 4)
  {
    return 1;
  }

  else
  {
    return qword_238BC7AC0[a3];
  }
}

- (void)_logClass:(Class)a3 tag:(id)a4
{
  v10 = a4;
  [MechanismManager _logClass:"_logClass:tag:level:" tag:a3 level:?];
  Superclass = class_getSuperclass(a3);
  if (Superclass)
  {
    v7 = Superclass;
    v8 = 1;
    do
    {
      v9 = v8 + 1;
      [(MechanismManager *)self _logClass:v7 tag:v10 level:?];
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