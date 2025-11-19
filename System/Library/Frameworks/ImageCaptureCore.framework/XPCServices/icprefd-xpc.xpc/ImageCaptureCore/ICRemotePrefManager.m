@interface ICRemotePrefManager
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (ICRemotePrefManager)init;
- (int)checkFilesAndFoldersAccess:(id)a3 shouldPrompt:(BOOL)a4;
- (int)checkTetheringAccess:(id)a3 shouldPrompt:(BOOL)a4;
- (void)addRemoteManagerConnection:(id)a3;
- (void)dealloc;
- (void)removeRemoteManagerConnectionWithProcessIdentifier:(int)a3;
- (void)requestGoodNewsStatusWithReply:(id)a3;
- (void)resetContentsAuthorizationStatusWithReply:(id)a3;
- (void)resetControlAuthorizationStatusWithReply:(id)a3;
@end

@implementation ICRemotePrefManager

- (ICRemotePrefManager)init
{
  v4.receiver = self;
  v4.super_class = ICRemotePrefManager;
  v2 = [(ICRemotePrefManager *)&v4 init];
  if (v2)
  {
    v2->_remoteManagerConnections = objc_alloc_init(NSMutableArray);
    v2->_osTransactions = objc_alloc_init(NSMutableDictionary);
    v2->_remoteManagerConnectionsLock._os_unfair_lock_opaque = 0;
  }

  return v2;
}

- (void)dealloc
{
  if (self->_remoteManagerConnections)
  {
    [(ICRemotePrefManager *)self removeRemoteManagerConnectionWithProcessIdentifier:0xFFFFFFFFLL];

    self->_remoteManagerConnections = 0;
  }

  osTransactions = self->_osTransactions;
  if (osTransactions)
  {

    self->_osTransactions = 0;
  }

  v4.receiver = self;
  v4.super_class = ICRemotePrefManager;
  [(ICRemotePrefManager *)&v4 dealloc];
}

- (void)addRemoteManagerConnection:(id)a3
{
  v12[0] = 0;
  v12[1] = v12;
  v12[2] = 0x3052000000;
  v12[3] = __Block_byref_object_copy_;
  v12[4] = __Block_byref_object_dispose_;
  v12[5] = self;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = __50__ICRemotePrefManager_addRemoteManagerConnection___block_invoke;
  v11[3] = &unk_1000082A0;
  v11[4] = a3;
  v11[5] = v12;
  [a3 setInvalidationHandler:v11];
  [a3 setInterruptionHandler:{objc_msgSend(a3, "invalidationHandler")}];
  os_unfair_lock_lock(&self->_remoteManagerConnectionsLock);
  v5 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%05d", [a3 processIdentifier]);
  [(NSString *)v5 UTF8String];
  v6 = os_transaction_create();
  [(NSMutableDictionary *)self->_osTransactions setObject:v6 forKeyedSubscript:v5];
  __ICOSLogCreate();
  if ([@"PrefRemote" length] < 0x15)
  {
    v7 = @"PrefRemote";
  }

  else
  {
    v7 = [objc_msgSend(@"PrefRemote" substringWithRange:{0, 18), "stringByAppendingString:", @".."}];
  }

  v8 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"+ transactions: [%05lu]", [-[NSMutableDictionary allKeys](-[ICRemotePrefManager osTransactions](self "osTransactions")]);
  v9 = _gICOSLog;
  if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [(__CFString *)v7 UTF8String];
    *buf = 136446466;
    v14 = v10;
    v15 = 2114;
    v16 = v8;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
  }

  [(NSMutableArray *)self->_remoteManagerConnections addObject:a3];
  os_unfair_lock_unlock(&self->_remoteManagerConnectionsLock);
  _Block_object_dispose(v12, 8);
}

id __50__ICRemotePrefManager_addRemoteManagerConnection___block_invoke(id result)
{
  v1 = *(*(*(result + 5) + 8) + 40);
  if (v1)
  {
    v2 = result;
    result = [v1 removeRemoteManagerConnectionWithProcessIdentifier:{objc_msgSend(*(result + 4), "processIdentifier")}];
    *(*(v2[5] + 8) + 40) = 0;
  }

  return result;
}

- (void)removeRemoteManagerConnectionWithProcessIdentifier:(int)a3
{
  os_unfair_lock_lock(&self->_remoteManagerConnectionsLock);
  v5 = [(NSMutableArray *)self->_remoteManagerConnections copy];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = v5;
  v6 = [v5 countByEnumeratingWithState:&v19 objects:v27 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v20;
    v9 = &NSSelectorFromString_ptr;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v19 + 1) + 8 * i);
        v12 = [v11 processIdentifier];
        if (a3 == -1 || v12 == a3)
        {
          -[NSMutableDictionary removeObjectForKey:](-[ICRemotePrefManager osTransactions](self, "osTransactions"), "removeObjectForKey:", [v9[54] stringWithFormat:@"%05d", objc_msgSend(v11, "processIdentifier")]);
          __ICOSLogCreate();
          v13 = @"PrefRemote";
          if ([@"PrefRemote" length] >= 0x15)
          {
            v13 = [objc_msgSend(@"PrefRemote" substringWithRange:{0, 18), "stringByAppendingString:", @".."}];
          }

          v14 = v9;
          v15 = [v9[54] stringWithFormat:@"- transactions: [%05lu]", objc_msgSend(-[NSMutableDictionary allKeys](-[ICRemotePrefManager osTransactions](self, "osTransactions"), "allKeys"), "count")];
          v16 = _gICOSLog;
          if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
          {
            v17 = [(__CFString *)v13 UTF8String];
            *buf = 136446466;
            v24 = v17;
            v25 = 2114;
            v26 = v15;
            _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
          }

          [v11 setInvalidationHandler:0];
          [v11 setInterruptionHandler:0];
          [v11 invalidate];
          [(NSMutableArray *)self->_remoteManagerConnections removeObject:v11];
          v9 = v14;
        }
      }

      v7 = [obj countByEnumeratingWithState:&v19 objects:v27 count:16];
    }

    while (v7);
  }

  os_unfair_lock_unlock(&self->_remoteManagerConnectionsLock);
}

void __68__ICRemotePrefManager_addSelectorToInterface_selectorString_origin___block_invoke(id a1)
{
  v11 = [NSSet alloc];
  v1 = objc_opt_class();
  v2 = objc_opt_class();
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  addSelectorToInterface_selectorString_origin__incomingClasses = [v11 initWithObjects:{v1, v2, v3, v4, v5, v6, v7, v8, v9, v10, objc_opt_class(), 0}];
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  __ICOSLogCreate();
  v6 = @"remoteManager";
  if ([@"remoteManager" length] >= 0x15)
  {
    v6 = [objc_msgSend(@"remoteManager" substringWithRange:{0, 18), "stringByAppendingString:", @".."}];
  }

  v7 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"New Connection: %d", [a4 processIdentifier]);
  v8 = _gICOSLog;
  if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v13 = [(__CFString *)v6 UTF8String];
    v14 = 2114;
    v15 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
  }

  v9 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___ICAuthManagerProtocol];
  v10 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___ICAuthManagerProtocol];
  [(ICRemotePrefManager *)self addSelectorToInterface:v9 selectorString:@"requestContentsAuthorizationStatusShouldPrompt:withReply:" origin:1];
  [(ICRemotePrefManager *)self addSelectorToInterface:v9 selectorString:@"requestControlAuthorizationStatusShouldPrompt:withReply:" origin:1];
  [(ICRemotePrefManager *)self addSelectorToInterface:v9 selectorString:@"requestGoodNewsStatusWithReply:" origin:1];
  [(ICRemotePrefManager *)self addSelectorToInterface:v9 selectorString:@"resetContentsAuthorizationStatusWithReply:" origin:1];
  [(ICRemotePrefManager *)self addSelectorToInterface:v9 selectorString:@"resetControlAuthorizationStatusWithReply:" origin:1];
  [a4 setExportedInterface:v9];
  [a4 setRemoteObjectInterface:v10];
  [a4 setExportedObject:self];
  [(ICRemotePrefManager *)self addRemoteManagerConnection:a4];
  [a4 resume];
  return 1;
}

- (int)checkFilesAndFoldersAccess:(id)a3 shouldPrompt:(BOOL)a4
{
  v4 = a4;
  v72 = 0;
  v73 = &v72;
  v74 = 0x2020000000;
  v75 = 1;
  if (ICRemotePrefManagerEvaluatePrivateEntitlement(a3))
  {
LABEL_2:
    *(v73 + 6) = 0;
    goto LABEL_89;
  }

  if (_os_feature_enabled_impl())
  {
    __ICOSLogCreate();
    if ([@"☀️ TCC" length] < 0x15)
    {
      v6 = @"☀️ TCC";
    }

    else
    {
      v6 = [objc_msgSend(@"☀️ TCC" substringWithRange:{0, 18), "stringByAppendingString:", @".."}];
    }

    v13 = [NSString stringWithFormat:@"(check) ---> New kTCCServiceExternalCameraMedia Service"];
    v14 = _gICOSLog;
    if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [(__CFString *)v6 UTF8String];
      buf.val[0] = 136446466;
      *&buf.val[1] = v15;
      LOWORD(buf.val[3]) = 2114;
      *(&buf.val[3] + 2) = v13;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", &buf, 0x16u);
    }

    memset(&buf, 0, sizeof(buf));
    if (a3)
    {
      [a3 auditToken];
    }

    token = buf;
    v16 = SecTaskCreateWithAuditToken(0, &token);
    v17 = SecTaskCopySigningIdentifier(v16, 0);
    if (v16)
    {
      CFRelease(v16);
    }

    tcc_service_singleton_for_name();
    if (a3)
    {
      [a3 auditToken];
    }

    else
    {
      memset(&token, 0, sizeof(token));
    }

    tcc_credential_create_for_process_with_audit_token();
    tcc_server_create();
    tcc_message_options_create();
    *token.val = 0;
    *&token.val[2] = &token;
    *&token.val[4] = 0x2020000000;
    *&token.val[6] = 1;
    tcc_message_options_set_reply_handler_policy();
    tcc_server_message_request_authorization();
    v19 = *(*&token.val[2] + 24);
    if (v19)
    {
      if (v19 != 4 && v19 != 2)
      {
        goto LABEL_47;
      }

      __ICOSLogCreate();
      if ([@"☀️ TCC" length] < 0x15)
      {
        v20 = @"☀️ TCC";
      }

      else
      {
        v20 = [objc_msgSend(@"☀️ TCC" substringWithRange:{0, 18), "stringByAppendingString:", @".."}];
      }

      v22 = [NSString stringWithFormat:@"(check) Granted %@ access to *contents* on external device", v17];
      v23 = _gICOSLog;
      v24 = os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT);
      v25 = 0;
      if (v24)
      {
        v26 = [(__CFString *)v20 UTF8String];
        *v78 = 136446466;
        *&v78[4] = v26;
        v79 = 2114;
        v80 = v22;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", v78, 0x16u);
        v25 = 0;
      }
    }

    else
    {
      __ICOSLogCreate();
      if ([@"☀️ TCC" length] < 0x15)
      {
        v21 = @"☀️ TCC";
      }

      else
      {
        v21 = [objc_msgSend(@"☀️ TCC" substringWithRange:{0, 18), "stringByAppendingString:", @".."}];
      }

      v30 = [NSString stringWithFormat:@"(check) User denied or disabled %@ access to *contents* on external device", v17];
      v31 = _gICOSLog;
      if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
      {
        v32 = [(__CFString *)v21 UTF8String];
        *v78 = 136446466;
        *&v78[4] = v32;
        v79 = 2114;
        v80 = v30;
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", v78, 0x16u);
      }

      v25 = 1;
    }

    *(v73 + 6) = v25;
LABEL_47:
    if (*(*&token.val[2] + 24) == 1 && v4)
    {
      __ICOSLogCreate();
      if ([@"☀️ TCC" length] < 0x15)
      {
        v33 = @"☀️ TCC";
      }

      else
      {
        v33 = [objc_msgSend(@"☀️ TCC" substringWithRange:{0, 18), "stringByAppendingString:", @".."}];
      }

      v34 = [NSString stringWithFormat:@"(prompt) ---> New kTCCServiceExternalCameraMedia Service"];
      v35 = _gICOSLog;
      if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
      {
        v36 = [(__CFString *)v33 UTF8String];
        *v78 = 136446466;
        *&v78[4] = v36;
        v79 = 2114;
        v80 = v34;
        _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", v78, 0x16u);
      }

      tcc_message_options_set_reply_handler_policy();
      tcc_message_options_set_request_usage_string_policy();
      tcc_server_message_request_authorization_change();
    }

    _Block_object_dispose(&token, 8);
    goto LABEL_89;
  }

  memset(&buf, 0, sizeof(buf));
  if (a3)
  {
    [a3 auditToken];
  }

  token = buf;
  v7 = SecTaskCreateWithAuditToken(0, &token);
  v8 = SecTaskCopySigningIdentifier(v7, 0);
  if (v7)
  {
    CFRelease(v7);
  }

  v9 = +[ICDeviceAccessManager sharedAccessManager];
  if (!v9)
  {
    __ICOSLogCreate();
    if ([@"TCC" length] < 0x15)
    {
      v18 = @"TCC";
    }

    else
    {
      v18 = [objc_msgSend(@"TCC" substringWithRange:{0, 18), "stringByAppendingString:", @".."}];
    }

    v27 = [NSString stringWithFormat:@"Access Manager could not be created"];
    v28 = _gICOSLog;
    if (!os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_89;
    }

LABEL_77:
    v47 = [(__CFString *)v18 UTF8String];
    token.val[0] = 136446466;
    *&token.val[1] = v47;
    LOWORD(token.val[3]) = 2114;
    *(&token.val[3] + 2) = v27;
    _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", &token, 0x16u);
    goto LABEL_89;
  }

  *v78 = 0;
  v10 = v8;
  if (([(__CFString *)v8 containsString:@"com.apple"]& 1) == 0)
  {
    v11 = [[LSApplicationRecord alloc] initWithBundleIdentifier:v8 allowPlaceholder:0 error:v78];
    v12 = v11;
    if (!v11 || *v78)
    {
      __ICOSLogCreate();
      if ([@"TCC" length] < 0x15)
      {
        v29 = @"TCC";
      }

      else
      {
        v29 = [objc_msgSend(@"TCC" substringWithRange:{0, 18), "stringByAppendingString:", @".."}];
      }

      v37 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"LSAppRecord missing, suppressing frobtboard notification with error: %@", [*v78 description]);
      v38 = _gICOSLog;
      if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
      {
        v39 = [(__CFString *)v29 UTF8String];
        token.val[0] = 136446466;
        *&token.val[1] = v39;
        LOWORD(token.val[3]) = 2114;
        *(&token.val[3] + 2) = v37;
        _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", &token, 0x16u);
      }

      if (!v12)
      {
LABEL_65:
        __ICOSLogCreate();
        if ([@"TCC" length] < 0x15)
        {
          v18 = @"TCC";
        }

        else
        {
          v18 = [objc_msgSend(@"TCC" substringWithRange:{0, 18), "stringByAppendingString:", @".."}];
        }

        v27 = [NSString stringWithFormat:@"LSApp Proxy authorization has no application name, suppressing frobtboard notification"];
        v28 = _gICOSLog;
        if (!os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_89;
        }

        goto LABEL_77;
      }

      v10 = 0;
    }

    else
    {
      v10 = [v11 localizedName];
    }
  }

  if (!v10)
  {
    goto LABEL_65;
  }

  __ICOSLogCreate();
  if ([@"TCC" length] < 0x15)
  {
    v40 = @"TCC";
  }

  else
  {
    v40 = [objc_msgSend(@"TCC" substringWithRange:{0, 18), "stringByAppendingString:", @".."}];
  }

  v41 = [NSString stringWithFormat:@"%@ is checking access to *contents* on external device", v10];
  v42 = _gICOSLog;
  if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
  {
    v43 = [(__CFString *)v40 UTF8String];
    token.val[0] = 136446466;
    *&token.val[1] = v43;
    LOWORD(token.val[3]) = 2114;
    *(&token.val[3] + 2) = v41;
    _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", &token, 0x16u);
  }

  v44 = ICAccessTypeRead;
  v45 = [v9 bundleIdentifier:v8 stateForAccessType:ICAccessTypeRead];
  if (v45)
  {
    if (v45 != 1)
    {
      if (v45 != 2)
      {
        goto LABEL_89;
      }

      __ICOSLogCreate();
      if ([@"TCC" length] < 0x15)
      {
        v46 = @"TCC";
      }

      else
      {
        v46 = [objc_msgSend(@"TCC" substringWithRange:{0, 18), "stringByAppendingString:", @".."}];
      }

      v57 = [NSString stringWithFormat:@"Granted %@ access to *contents* on external device", v10];
      v58 = _gICOSLog;
      if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
      {
        v59 = [(__CFString *)v46 UTF8String];
        token.val[0] = 136446466;
        *&token.val[1] = v59;
        LOWORD(token.val[3]) = 2114;
        *(&token.val[3] + 2) = v57;
        _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", &token, 0x16u);
      }

      goto LABEL_2;
    }

    __ICOSLogCreate();
    if ([@"TCC" length] < 0x15)
    {
      v48 = @"TCC";
    }

    else
    {
      v48 = [objc_msgSend(@"TCC" substringWithRange:{0, 18), "stringByAppendingString:", @".."}];
    }

    v52 = [NSString stringWithFormat:@"User denied or disabled %@ access to *contents* on external device", v10];
    v53 = _gICOSLog;
    if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
    {
      v54 = [(__CFString *)v48 UTF8String];
      token.val[0] = 136446466;
      *&token.val[1] = v54;
      LOWORD(token.val[3]) = 2114;
      *(&token.val[3] + 2) = v52;
      _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", &token, 0x16u);
    }

    v50 = v73;
    v51 = 1;
LABEL_88:
    *(v50 + 6) = v51;
    goto LABEL_89;
  }

  if (!v4)
  {
    v50 = v73;
    v51 = 2;
    goto LABEL_88;
  }

  __ICOSLogCreate();
  if ([@"TCC" length] < 0x15)
  {
    v49 = @"TCC";
  }

  else
  {
    v49 = [objc_msgSend(@"TCC" substringWithRange:{0, 18), "stringByAppendingString:", @".."}];
  }

  v60 = [NSString stringWithFormat:@"%@ is requesting a prompt to access to *contents* on external device", v10];
  v61 = _gICOSLog;
  if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
  {
    v62 = [(__CFString *)v49 UTF8String];
    token.val[0] = 136446466;
    *&token.val[1] = v62;
    LOWORD(token.val[3]) = 2114;
    *(&token.val[3] + 2) = v60;
    _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", &token, 0x16u);
  }

  v76[0] = kCFUserNotificationAlertHeaderKey;
  v77[0] = [NSString stringWithFormat:ICLocalizedString(), v10];
  v76[1] = kCFUserNotificationAlertMessageKey;
  v77[1] = [NSString stringWithFormat:ICLocalizedString(), v10];
  v76[2] = kCFUserNotificationDefaultButtonTitleKey;
  v77[2] = ICLocalizedString();
  v76[3] = kCFUserNotificationAlternateButtonTitleKey;
  v77[3] = ICLocalizedString();
  v76[4] = kCFUserNotificationAlertTopMostKey;
  v77[4] = [NSNumber numberWithBool:1];
  v76[5] = SBUserNotificationDontDismissOnUnlock;
  v77[5] = [NSNumber numberWithBool:1];
  v63 = [v9 captureUserIntentForBundleIdentifier:v8 withNotification:{+[NSDictionary dictionaryWithObjects:forKeys:count:](NSDictionary, "dictionaryWithObjects:forKeys:count:", v77, v76, 6)}];
  [v9 addBundleIdentifier:v8];
  if (v63)
  {
    __ICOSLogCreate();
    if ([@"TCC" length] < 0x15)
    {
      v64 = @"TCC";
    }

    else
    {
      v64 = [objc_msgSend(@"TCC" substringWithRange:{0, 18), "stringByAppendingString:", @".."}];
    }

    v66 = [NSString stringWithFormat:@"User allowed %@ access to *contents* on external device", v10];
    v67 = _gICOSLog;
    if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
    {
      v68 = [(__CFString *)v64 UTF8String];
      token.val[0] = 136446466;
      *&token.val[1] = v68;
      LOWORD(token.val[3]) = 2114;
      *(&token.val[3] + 2) = v66;
      _os_log_impl(&_mh_execute_header, v67, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", &token, 0x16u);
    }

    [v9 updateBundleIdentifier:v8 accessType:v44 withState:2];
    goto LABEL_2;
  }

  __ICOSLogCreate();
  if ([@"TCC" length] < 0x15)
  {
    v65 = @"TCC";
  }

  else
  {
    v65 = [objc_msgSend(@"TCC" substringWithRange:{0, 18), "stringByAppendingString:", @".."}];
  }

  v69 = [NSString stringWithFormat:@"User denied %@ access to *contents* on external device", v10];
  v70 = _gICOSLog;
  if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
  {
    v71 = [(__CFString *)v65 UTF8String];
    token.val[0] = 136446466;
    *&token.val[1] = v71;
    LOWORD(token.val[3]) = 2114;
    *(&token.val[3] + 2) = v69;
    _os_log_impl(&_mh_execute_header, v70, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", &token, 0x16u);
  }

  [v9 updateBundleIdentifier:v8 accessType:v44 withState:1];
  *(v73 + 6) = 1;
LABEL_89:
  v55 = *(v73 + 6);
  _Block_object_dispose(&v72, 8);
  return v55;
}

void __63__ICRemotePrefManager_checkFilesAndFoldersAccess_shouldPrompt___block_invoke(uint64_t a1)
{
  *(*(*(a1 + 32) + 8) + 24) = tcc_authorization_record_get_authorization_right();
  __ICOSLogCreate();
  v2 = @"☀️ TCC";
  if ([@"☀️ TCC" length] >= 0x15)
  {
    v2 = [objc_msgSend(@"☀️ TCC" substringWithRange:{0, 18), "stringByAppendingString:", @".."}];
  }

  v3 = [NSString stringWithFormat:@"(check) Authorization Right: %llu", *(*(*(a1 + 32) + 8) + 24)];
  v4 = _gICOSLog;
  if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v6 = [(__CFString *)v2 UTF8String];
    v7 = 2114;
    v8 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
  }
}

void __63__ICRemotePrefManager_checkFilesAndFoldersAccess_shouldPrompt___block_invoke_89(uint64_t a1)
{
  authorization_right = tcc_authorization_record_get_authorization_right();
  if (authorization_right == 4 || authorization_right == 2)
  {
    __ICOSLogCreate();
    v3 = @"☀️ TCC";
    if ([@"☀️ TCC" length] >= 0x15)
    {
      v3 = [objc_msgSend(@"☀️ TCC" substringWithRange:{0, 18), "stringByAppendingString:", @".."}];
    }

    v4 = [NSString stringWithFormat:@"(prompt) Granted %@ access to *contents* on external device", *(a1 + 32)];
    v5 = _gICOSLog;
    v6 = os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT);
    v7 = 0;
    if (v6)
    {
      *buf = 136446466;
      v12 = [(__CFString *)v3 UTF8String];
      v13 = 2114;
      v14 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
      v7 = 0;
    }
  }

  else
  {
    __ICOSLogCreate();
    v8 = @"☀️ TCC";
    if ([@"☀️ TCC" length] >= 0x15)
    {
      v8 = [objc_msgSend(@"☀️ TCC" substringWithRange:{0, 18), "stringByAppendingString:", @".."}];
    }

    v9 = [NSString stringWithFormat:@"(prompt) User denied or disabled %@ access to *contents* on external device", *(a1 + 32)];
    v10 = _gICOSLog;
    if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446466;
      v12 = [(__CFString *)v8 UTF8String];
      v13 = 2114;
      v14 = v9;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
    }

    v7 = 1;
  }

  *(*(*(a1 + 40) + 8) + 24) = v7;
}

- (int)checkTetheringAccess:(id)a3 shouldPrompt:(BOOL)a4
{
  v4 = a4;
  if (a3)
  {
    [a3 auditToken];
  }

  memset(buf, 0, 32);
  v5 = TCCAccessPreflightWithAuditToken();
  __ICOSLogCreate();
  v6 = [@"TCC Prompt" length];
  if (v4)
  {
    if (v6 >= 0x15)
    {
      v7 = [objc_msgSend(@"TCC Prompt" substringWithRange:{0, 18), "stringByAppendingString:", @".."}];
    }

    else
    {
      v7 = @"TCC Prompt";
    }

    v8 = [NSString stringWithFormat:@"Prompting for kTCCServiceCamera", 0, 0];
    v9 = _gICOSLog;
    if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [(__CFString *)v7 UTF8String];
      *buf = 136446466;
      *&buf[4] = v10;
      *&buf[12] = 2114;
      *&buf[14] = v8;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
    }

    v27 = kTCCAccessCheckOptionPrompt;
    v28 = [NSNumber numberWithBool:1];
    [NSDictionary dictionaryWithObjects:&v28 forKeys:&v27 count:1];
    *buf = v25;
    *&buf[16] = v26;
    v11 = TCCAccessCheckAuditToken();
    __ICOSLogCreate();
    if (v11)
    {
      v12 = @"TCC Access";
      if ([@"TCC Access" length] >= 0x15)
      {
        v12 = [objc_msgSend(@"TCC Access" substringWithRange:{0, 18), "stringByAppendingString:", @".."}];
      }

      v13 = [NSString stringWithFormat:@"Access has been granted"];
      v14 = _gICOSLog;
      v5 = 0;
      if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
      {
        v15 = [(__CFString *)v12 UTF8String];
        *buf = 136446466;
        *&buf[4] = v15;
        *&buf[12] = 2114;
        *&buf[14] = v13;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
        return 0;
      }
    }

    else
    {
      v20 = @"TCC Prompt";
      if ([@"TCC Prompt" length] >= 0x15)
      {
        v20 = [objc_msgSend(@"TCC Prompt" substringWithRange:{0, 18), "stringByAppendingString:", @".."}];
      }

      v21 = [NSString stringWithFormat:@"kTCCServiceCamera denied"];
      v22 = _gICOSLog;
      if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
      {
        v23 = [(__CFString *)v20 UTF8String];
        *buf = 136446466;
        *&buf[4] = v23;
        *&buf[12] = 2114;
        *&buf[14] = v21;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
      }

      return 1;
    }
  }

  else
  {
    if (v6 >= 0x15)
    {
      v16 = [objc_msgSend(@"TCC Prompt" substringWithRange:{0, 18), "stringByAppendingString:", @".."}];
    }

    else
    {
      v16 = @"TCC Prompt";
    }

    v17 = [NSString stringWithFormat:@"Not Prompting for kCTCCService", 0, 0];
    v18 = _gICOSLog;
    if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
    {
      v19 = [(__CFString *)v16 UTF8String];
      *buf = 136446466;
      *&buf[4] = v19;
      *&buf[12] = 2114;
      *&buf[14] = v17;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
    }
  }

  return v5;
}

intptr_t __79__ICRemotePrefManager_requestControlAuthorizationStatusShouldPrompt_withReply___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    __ICOSLogCreate();
    v4 = @"fbservice";
    if ([@"fbservice" length] >= 0x15)
    {
      v4 = [objc_msgSend(@"fbservice" substringWithRange:{0, 18), "stringByAppendingString:", @".."}];
    }

    v5 = [NSString stringWithFormat:@"Couldn't send to Settings?"];
    v6 = _gICOSLog;
    if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136446466;
      v9 = [(__CFString *)v4 UTF8String];
      v10 = 2114;
      v11 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", &v8, 0x16u);
    }
  }

  return dispatch_semaphore_signal(*(a1 + 32));
}

- (void)requestGoodNewsStatusWithReply:(id)a3
{
  v4 = +[NSXPCConnection currentConnection];
  v5 = +[NSMutableDictionary dictionary];
  if (ICRemotePrefManagerEvaluatePrivateEntitlement(v4))
  {
    [v5 setObject:@"ICAuthorizationStatusAuthorized" forKeyedSubscript:@"ICAuthorizationStatus"];
  }

  else
  {
    [v5 setObject:@"ICAuthorizationStatusDenied" forKeyedSubscript:@"ICAuthorizationStatus"];
    memset(&v10[1], 0, sizeof(audit_token_t));
    if (v4)
    {
      [(NSXPCConnection *)v4 auditToken];
    }

    v10[0] = v10[1];
    v6 = SecTaskCreateWithAuditToken(0, v10);
    v7 = SecTaskCopySigningIdentifier(v6, 0);
    if (v6)
    {
      CFRelease(v6);
    }

    v8 = +[ICDeviceAccessManager sharedAccessManager];
    if (v8)
    {
      v9 = [v8 bundleIdentifier:v7 stateForAccessType:ICAccessTypeControlInformed];
      if (v9 <= 2)
      {
        [v5 setObject:*(&off_100008378 + v9) forKeyedSubscript:@"ICAuthorizationStatus"];
      }
    }

    if (v7)
    {
    }
  }

  (*(a3 + 2))(a3, v5);
}

- (void)resetContentsAuthorizationStatusWithReply:(id)a3
{
  v4 = +[NSXPCConnection currentConnection];
  v5 = +[NSMutableDictionary dictionary];
  v13 = 0u;
  v14 = 0u;
  if (v4)
  {
    [(NSXPCConnection *)v4 auditToken];
  }

  memset(&token, 0, sizeof(token));
  v6 = SecTaskCreateWithAuditToken(0, &token);
  v7 = SecTaskCopySigningIdentifier(v6, 0);
  if (v6)
  {
    CFRelease(v6);
  }

  if (_os_feature_enabled_impl())
  {
    __ICOSLogCreate();
    v8 = @"☀️ TCC";
    if ([@"☀️ TCC" length] >= 0x15)
    {
      v8 = [objc_msgSend(@"☀️ TCC" substringWithRange:{0, 18), "stringByAppendingString:", @".."}];
    }

    v9 = [NSString stringWithFormat:@"(reset) ---> New kTCCServiceExternalCameraMedia Service", 0, 0];
    v10 = _gICOSLog;
    if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [(__CFString *)v8 UTF8String];
      token.val[0] = 136446466;
      *&token.val[1] = v11;
      LOWORD(token.val[3]) = 2114;
      *(&token.val[3] + 2) = v9;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", &token, 0x16u);
    }

    TCCAccessResetForBundleId();
  }

  else
  {
    v12 = +[ICDeviceAccessManager sharedAccessManager];
    if (v12)
    {
      [v12 updateBundleIdentifier:v7 accessType:ICAccessTypeRead withState:0];
    }

    if (v7)
    {
    }
  }

  [v5 setObject:@"ICAuthorizationStatusNotDetermined" forKeyedSubscript:{@"ICAuthorizationStatus", v13, v14}];
  (*(a3 + 2))(a3, v5);
}

- (void)resetControlAuthorizationStatusWithReply:(id)a3
{
  v4 = +[NSXPCConnection currentConnection];
  v5 = +[NSMutableDictionary dictionary];
  memset(&v9[1], 0, sizeof(audit_token_t));
  if (v4)
  {
    [(NSXPCConnection *)v4 auditToken];
  }

  v9[0] = v9[1];
  v6 = SecTaskCreateWithAuditToken(0, v9);
  v7 = SecTaskCopySigningIdentifier(v6, 0);
  if (v6)
  {
    CFRelease(v6);
  }

  v8 = +[ICDeviceAccessManager sharedAccessManager];
  if (v8)
  {
    [v8 updateBundleIdentifier:v7 accessType:ICAccessTypeControlInformed withState:0];
  }

  if (v7)
  {
  }

  [v5 setObject:@"ICAuthorizationStatusNotDetermined" forKeyedSubscript:@"ICAuthorizationStatus"];
  (*(a3 + 2))(a3, v5);
}

@end