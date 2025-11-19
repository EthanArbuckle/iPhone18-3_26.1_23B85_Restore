@interface NFExtensionPointManager
- (BOOL)launchExtension:(id)a3;
- (NFExtensionPointManager)initWithIdentifier:(id)a3;
- (NSSet)availableExtensionIdentities;
- (id)dumpState;
- (void)_initExtensionIdentities;
- (void)_registerIdentityUpdates;
- (void)_unregisterIdentityUpdates;
- (void)_updateExtensionIdentities:(id)a3;
- (void)dealloc;
- (void)queryControllerDidUpdate:(id)a3;
- (void)start;
- (void)stop;
@end

@implementation NFExtensionPointManager

- (NFExtensionPointManager)initWithIdentifier:(id)a3
{
  v5 = a3;
  if (objc_opt_class() && (v11.receiver = self, v11.super_class = NFExtensionPointManager, v6 = [(NFExtensionPointManager *)&v11 init], (self = v6) != 0))
  {
    objc_storeStrong(&v6->_identifier, a3);
    v7 = objc_opt_new();
    availableExtensions = self->_availableExtensions;
    self->_availableExtensions = v7;

    self->_lock._os_unfair_lock_opaque = 0;
    [(NFExtensionPointManager *)self _initExtensionIdentities];
    [(NFExtensionPointManager *)self _registerIdentityUpdates];
    self = self;
    v9 = self;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)dealloc
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [(NFExtensionPointManager *)self availableExtensions];
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v9 + 1) + 8 * v7) invalidate];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  [(NFExtensionPointManager *)self _unregisterIdentityUpdates];
  v8.receiver = self;
  v8.super_class = NFExtensionPointManager;
  [(NFExtensionPointManager *)&v8 dealloc];
}

- (void)_initExtensionIdentities
{
  v3 = NFSharedSignpostLog();
  if (os_signpost_enabled(v3))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v3, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "NFExtensionPointManager _initExtensionIdentities", "", buf, 2u);
  }

  v4 = [_EXQuery alloc];
  v5 = [(NFExtensionPointManager *)self identifier];
  v6 = [v4 initWithExtensionPointIdentifier:v5];

  v67 = v6;
  v7 = [NSArray arrayWithObjects:&v67 count:1];
  v8 = [_EXQueryController executeQueries:v7];

  v9 = NFSharedSignpostLog();
  if (os_signpost_enabled(v9))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v9, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "NFExtensionPointManager _initExtensionIdentities", "", buf, 2u);
  }

  v10 = [(NFExtensionKitWrapper *)v8 count];
  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  v12 = Logger;
  if (v10)
  {
    if (Logger)
    {
      Class = object_getClass(self);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(self);
      Name = sel_getName(a2);
      v15 = 45;
      if (isMetaClass)
      {
        v15 = 43;
      }

      v12(6, "%c[%{public}s %{public}s]:%i Initial set: %@", v15, ClassName, Name, 81, v8);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v16 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = object_getClass(self);
      if (class_isMetaClass(v17))
      {
        v18 = 43;
      }

      else
      {
        v18 = 45;
      }

      v19 = object_getClassName(self);
      v20 = sel_getName(a2);
      *buf = 67110146;
      v58 = v18;
      v59 = 2082;
      v60 = v19;
      v61 = 2082;
      v62 = v20;
      v63 = 1024;
      v64 = 81;
      v65 = 2112;
      v66 = v8;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Initial set: %@", buf, 0x2Cu);
    }

    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    v21 = v8;
    v22 = [v21 countByEnumeratingWithState:&v52 objects:v56 count:16];
    if (v22)
    {
      v23 = v22;
      v50 = v6;
      v24 = *v53;
      do
      {
        for (i = 0; i != v23; i = i + 1)
        {
          if (*v53 != v24)
          {
            objc_enumerationMutation(v21);
          }

          v26 = [[NFExtensionKitWrapper alloc] initWithExtensionIdentity:*(*(&v52 + 1) + 8 * i) extensionProcess:0 xpc:0];
          if ([(NFExtensionPointManager *)self validateExtension:v26])
          {
            [(NSMutableSet *)self->_availableExtensions addObject:v26];
          }

          else
          {
            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            v27 = NFLogGetLogger();
            if (v27)
            {
              v28 = v27;
              v29 = object_getClass(self);
              v30 = class_isMetaClass(v29);
              v46 = object_getClassName(self);
              v48 = sel_getName(a2);
              v31 = 45;
              if (v30)
              {
                v31 = 43;
              }

              v28(3, "%c[%{public}s %{public}s]:%i Invalid extension: %@", v31, v46, v48, 89, v26);
            }

            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            v32 = NFSharedLogGetLogger();
            if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
            {
              v33 = object_getClass(self);
              if (class_isMetaClass(v33))
              {
                v34 = 43;
              }

              else
              {
                v34 = 45;
              }

              v35 = object_getClassName(self);
              v36 = sel_getName(a2);
              *buf = 67110146;
              v58 = v34;
              v59 = 2082;
              v60 = v35;
              v61 = 2082;
              v62 = v36;
              v63 = 1024;
              v64 = 89;
              v65 = 2112;
              v66 = v26;
              _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Invalid extension: %@", buf, 0x2Cu);
            }
          }
        }

        v23 = [v21 countByEnumeratingWithState:&v52 objects:v56 count:16];
      }

      while (v23);
      v6 = v50;
    }
  }

  else
  {
    if (Logger)
    {
      v37 = object_getClass(self);
      v38 = class_isMetaClass(v37);
      v39 = object_getClassName(self);
      v49 = sel_getName(a2);
      v40 = 45;
      if (v38)
      {
        v40 = 43;
      }

      v12(4, "%c[%{public}s %{public}s]:%i No extensions found", v40, v39, v49, 77);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v21 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v41 = object_getClass(self);
      if (class_isMetaClass(v41))
      {
        v42 = 43;
      }

      else
      {
        v42 = 45;
      }

      v43 = object_getClassName(self);
      v44 = sel_getName(a2);
      *buf = 67109890;
      v58 = v42;
      v59 = 2082;
      v60 = v43;
      v61 = 2082;
      v62 = v44;
      v63 = 1024;
      v64 = 77;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i No extensions found", buf, 0x22u);
    }
  }
}

- (void)_registerIdentityUpdates
{
  v3 = [[_EXQuery alloc] initWithExtensionPointIdentifier:self->_identifier];
  v4 = [_EXQueryController alloc];
  v8 = v3;
  v5 = [NSArray arrayWithObjects:&v8 count:1];
  v6 = [v4 initWithQueries:v5 delegate:self];
  exQueryController = self->_exQueryController;
  self->_exQueryController = v6;

  [(_EXQueryController *)self->_exQueryController resume];
}

- (void)_unregisterIdentityUpdates
{
  [(_EXQueryController *)self->_exQueryController suspend];
  exQueryController = self->_exQueryController;
  self->_exQueryController = 0;
}

- (NSSet)availableExtensionIdentities
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(NFExtensionPointManager *)self availableExtensions];
  v4 = [NSSet setWithSet:v3];

  os_unfair_lock_unlock(&self->_lock);

  return v4;
}

- (void)start
{
  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    v5 = Logger;
    Class = object_getClass(self);
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(self);
    Name = sel_getName(a2);
    v9 = 45;
    if (isMetaClass)
    {
      v9 = 43;
    }

    v5(6, "%c[%{public}s %{public}s]:%i ", v9, ClassName, Name, 122);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v10 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = object_getClass(self);
    if (class_isMetaClass(v11))
    {
      v12 = 43;
    }

    else
    {
      v12 = 45;
    }

    *buf = 67109890;
    v15 = v12;
    v16 = 2082;
    v17 = object_getClassName(self);
    v18 = 2082;
    v19 = sel_getName(a2);
    v20 = 1024;
    v21 = 122;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i ", buf, 0x22u);
  }

  os_unfair_lock_lock(&self->_lock);
  [(NFExtensionPointManager *)self setHasStarted:1];
  os_unfair_lock_unlock(&self->_lock);
}

- (void)stop
{
  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    v5 = Logger;
    Class = object_getClass(self);
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(self);
    Name = sel_getName(a2);
    v9 = 45;
    if (isMetaClass)
    {
      v9 = 43;
    }

    v5(6, "%c[%{public}s %{public}s]:%i ", v9, ClassName, Name, 133);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v10 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = object_getClass(self);
    if (class_isMetaClass(v11))
    {
      v12 = 43;
    }

    else
    {
      v12 = 45;
    }

    *buf = 67109890;
    v15 = v12;
    v16 = 2082;
    v17 = object_getClassName(self);
    v18 = 2082;
    v19 = sel_getName(a2);
    v20 = 1024;
    v21 = 133;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i ", buf, 0x22u);
  }

  os_unfair_lock_lock(&self->_lock);
  [(NFExtensionPointManager *)self setHasStarted:0];
  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)launchExtension:(id)a3
{
  v5 = a3;
  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    v7 = Logger;
    Class = object_getClass(self);
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(self);
    Name = sel_getName(a2);
    v10 = 45;
    if (isMetaClass)
    {
      v10 = 43;
    }

    v7(6, "%c[%{public}s %{public}s]:%i %{public}@", v10, ClassName, Name, 198, v5);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v11 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = object_getClass(self);
    if (class_isMetaClass(v12))
    {
      v13 = 43;
    }

    else
    {
      v13 = 45;
    }

    *buf = 67110146;
    *v95 = v13;
    *&v95[4] = 2082;
    *&v95[6] = object_getClassName(self);
    v96 = 2082;
    v97 = sel_getName(a2);
    v98 = 1024;
    v99 = 198;
    v100 = 2114;
    v101 = v5;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i %{public}@", buf, 0x2Cu);
  }

  v14 = [v5 xpcConnection];

  if (!v14)
  {
    v16 = NFSharedSignpostLog();
    if (os_signpost_enabled(v16))
    {
      v17 = [v5 identity];
      v18 = [v17 bundleIdentifier];
      *buf = 138543362;
      *v95 = v18;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v16, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "NFExtensionPointManager launchExtension:", "%{public}@", buf, 0xCu);
    }

    v19 = [v5 extensionProcess];
    v20 = [v5 identity];
    v21 = [v20 bundleIdentifier];
    v22 = [v21 copy];

    if (!v19 || ([v19 isValid] & 1) == 0)
    {
      v23 = [_EXHostConfiguration alloc];
      v24 = [v5 identity];
      v25 = [v23 initWithExtensionIdentity:v24];

      if (!v25)
      {
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v42 = NFLogGetLogger();
        if (v42)
        {
          v43 = v42;
          v44 = object_getClass(self);
          v45 = class_isMetaClass(v44);
          v46 = object_getClassName(self);
          v83 = sel_getName(a2);
          v47 = 45;
          if (v45)
          {
            v47 = 43;
          }

          v43(3, "%c[%{public}s %{public}s]:%i nil config", v47, v46, v83, 216);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v48 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
        {
          v49 = object_getClass(self);
          if (class_isMetaClass(v49))
          {
            v50 = 43;
          }

          else
          {
            v50 = 45;
          }

          v51 = object_getClassName(self);
          v52 = sel_getName(a2);
          *buf = 67109890;
          *v95 = v50;
          *&v95[4] = 2082;
          *&v95[6] = v51;
          v96 = 2082;
          v97 = v52;
          v98 = 1024;
          v99 = 216;
          _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i nil config", buf, 0x22u);
        }

        v29 = 0;
        v15 = 0;
        goto LABEL_74;
      }

      objc_initWeak(&location, self);
      v89[0] = _NSConcreteStackBlock;
      v89[1] = 3221225472;
      v89[2] = sub_10000BD04;
      v89[3] = &unk_100018AA0;
      objc_copyWeak(v92, &location);
      v92[1] = a2;
      sel = v22;
      v26 = v22;
      v90 = v26;
      v27 = v5;
      v91 = v27;
      [v25 setInterruptionHandler:v89];
      v88 = 0;
      v28 = [_EXExtensionProcess extensionProcessWithConfiguration:v25 error:&v88];
      v29 = v88;

      if (v29)
      {
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v30 = NFLogGetLogger();
        if (v30)
        {
          v31 = v30;
          v32 = object_getClass(self);
          v33 = class_isMetaClass(v32);
          v34 = object_getClassName(self);
          v82 = sel_getName(a2);
          v35 = 45;
          if (v33)
          {
            v35 = 43;
          }

          v31(4, "%c[%{public}s %{public}s]:%i Fail to launch extension (%@): %@", v35, v34, v82, 231, v26, v29);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v36 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
        {
          v37 = object_getClass(self);
          if (class_isMetaClass(v37))
          {
            v38 = 43;
          }

          else
          {
            v38 = 45;
          }

          v39 = object_getClassName(self);
          v40 = sel_getName(a2);
          *buf = 67110402;
          *v95 = v38;
          *&v95[4] = 2082;
          *&v95[6] = v39;
          v96 = 2082;
          v97 = v40;
          v98 = 1024;
          v99 = 231;
          v100 = 2112;
          v101 = v26;
          v102 = 2112;
          v103 = v29;
          _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Fail to launch extension (%@): %@", buf, 0x36u);
        }

        v41 = NFSharedSignpostLog();
        if (os_signpost_enabled(v41))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v41, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "NFExtensionPointManager launchExtension:", "process launch error", buf, 2u);
        }
      }

      else
      {
        [v27 setExtensionProcess:v28];
      }

      v22 = sel;

      objc_destroyWeak(v92);
      objc_destroyWeak(&location);

      if (v29)
      {
        v15 = 0;
LABEL_75:

        goto LABEL_76;
      }

      v19 = v28;
    }

    v87 = 0;
    v48 = [v19 makeXPCConnectionWithError:&v87];
    v29 = v87;
    if (v29)
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v53 = NFLogGetLogger();
      if (v53)
      {
        v54 = v53;
        v55 = object_getClass(self);
        v56 = class_isMetaClass(v55);
        v57 = object_getClassName(self);
        v84 = sel_getName(a2);
        v58 = 45;
        if (v56)
        {
          v58 = 43;
        }

        v54(4, "%c[%{public}s %{public}s]:%i Fail to connect to extension's XPC (%@): %@", v58, v57, v84, 243, v22, v29);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v59 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
      {
        v60 = object_getClass(self);
        if (class_isMetaClass(v60))
        {
          v61 = 43;
        }

        else
        {
          v61 = 45;
        }

        v62 = object_getClassName(self);
        v63 = sel_getName(a2);
        *buf = 67110402;
        *v95 = v61;
        *&v95[4] = 2082;
        *&v95[6] = v62;
        v96 = 2082;
        v97 = v63;
        v98 = 1024;
        v99 = 243;
        v100 = 2112;
        v101 = v22;
        v102 = 2112;
        v103 = v29;
        _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Fail to connect to extension's XPC (%@): %@", buf, 0x36u);
      }

      v64 = NFSharedSignpostLog();
      if (!os_signpost_enabled(v64))
      {
        goto LABEL_72;
      }

      *buf = 0;
      v65 = "xpc connect error";
    }

    else
    {
      v66 = [v5 identity];
      v67 = [(NFExtensionPointManager *)self extensionIdentity:v66 shouldAcceptNewConnection:v48];

      if (v67)
      {
        [v5 setXpcConnection:v48];
        v64 = NFSharedSignpostLog();
        if (os_signpost_enabled(v64))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v64, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "NFExtensionPointManager launchExtension:", "", buf, 2u);
        }

        v15 = 1;
        goto LABEL_73;
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v68 = NFLogGetLogger();
      if (v68)
      {
        v69 = v68;
        v70 = object_getClass(self);
        v71 = class_isMetaClass(v70);
        v80 = object_getClassName(self);
        v85 = sel_getName(a2);
        v72 = 45;
        if (v71)
        {
          v72 = 43;
        }

        v29 = 0;
        v69(4, "%c[%{public}s %{public}s]:%i XPC connection from extension %@ is rejected", v72, v80, v85, 250, v22);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v73 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
      {
        v74 = object_getClass(self);
        if (class_isMetaClass(v74))
        {
          v75 = 43;
        }

        else
        {
          v75 = 45;
        }

        v76 = object_getClassName(self);
        v77 = sel_getName(a2);
        *buf = 67110146;
        *v95 = v75;
        *&v95[4] = 2082;
        *&v95[6] = v76;
        v96 = 2082;
        v97 = v77;
        v98 = 1024;
        v99 = 250;
        v100 = 2112;
        v101 = v22;
        _os_log_impl(&_mh_execute_header, v73, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i XPC connection from extension %@ is rejected", buf, 0x2Cu);
      }

      [v19 invalidate];
      [v48 invalidate];
      v64 = NFSharedSignpostLog();
      if (!os_signpost_enabled(v64))
      {
LABEL_72:
        v15 = 0;
LABEL_73:

LABEL_74:
        v28 = v19;
        goto LABEL_75;
      }

      *buf = 0;
      v65 = "xpc rejected";
    }

    _os_signpost_emit_with_name_impl(&_mh_execute_header, v64, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "NFExtensionPointManager launchExtension:", v65, buf, 2u);
    goto LABEL_72;
  }

  v15 = 1;
LABEL_76:

  return v15;
}

- (void)_updateExtensionIdentities:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v5 = objc_opt_new();
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v32 objects:v46 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v33;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v33 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [[NFExtensionKitWrapper alloc] initWithExtensionIdentity:*(*(&v32 + 1) + 8 * i) extensionProcess:0 xpc:0];
        v12 = [(NFExtensionPointManager *)self availableExtensions];
        v13 = [v12 member:v11];

        if (v13)
        {
          v14 = v13;
        }

        else
        {
          v14 = v11;
        }

        [v5 addObject:v14];
      }

      v8 = [v6 countByEnumeratingWithState:&v32 objects:v46 count:16];
    }

    while (v8);
  }

  v15 = [(NFExtensionPointManager *)self availableExtensions];
  [v15 removeAllObjects];

  if ([v5 count])
  {
    v16 = [(NFExtensionPointManager *)self availableExtensions];
    [v16 addObjectsFromArray:v5];
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    v18 = Logger;
    Class = object_getClass(self);
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(self);
    Name = sel_getName(a2);
    v23 = [(NFExtensionPointManager *)self availableExtensions];
    v24 = 45;
    if (isMetaClass)
    {
      v24 = 43;
    }

    v18(6, "%c[%{public}s %{public}s]:%i New set: %{public}@", v24, ClassName, Name, 293, v23);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v25 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    v26 = object_getClass(self);
    if (class_isMetaClass(v26))
    {
      v27 = 43;
    }

    else
    {
      v27 = 45;
    }

    v28 = object_getClassName(self);
    v29 = sel_getName(a2);
    v30 = [(NFExtensionPointManager *)self availableExtensions];
    *buf = 67110146;
    v37 = v27;
    v38 = 2082;
    v39 = v28;
    v40 = 2082;
    v41 = v29;
    v42 = 1024;
    v43 = 293;
    v44 = 2114;
    v45 = v30;
    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i New set: %{public}@", buf, 0x2Cu);
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (id)dumpState
{
  v3 = objc_opt_new();
  v4 = [NSNumber numberWithBool:self->_hasStarted];
  [v3 setObject:v4 forKeyedSubscript:@"started"];

  return v3;
}

- (void)queryControllerDidUpdate:(id)a3
{
  v4 = NFSharedSignpostLog();
  if (os_signpost_enabled(v4))
  {
    *v11 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v4, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "NFExtensionPointManager queryControllerDidUpdate:", "", v11, 2u);
  }

  v5 = [_EXQuery alloc];
  v6 = [(NFExtensionPointManager *)self identifier];
  v7 = [v5 initWithExtensionPointIdentifier:v6];

  v12 = v7;
  v8 = [NSArray arrayWithObjects:&v12 count:1];
  v9 = [_EXQueryController executeQueries:v8];

  [(NFExtensionPointManager *)self _updateExtensionIdentities:v9];
  v10 = NFSharedSignpostLog();
  if (os_signpost_enabled(v10))
  {
    *v11 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v10, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "NFExtensionPointManager queryControllerDidUpdate:", "", v11, 2u);
  }
}

@end