@interface NFBSListener_BackgroundTagReading
- (NFBSListener_BackgroundTagReading)init;
- (id)bsInterface;
- (void)activate;
- (void)activateUIRemoteAlertWithExtension:(id)extension ndefMessage:(id)message tag:(id)tag;
- (void)invalidate;
- (void)listener:(id)listener didReceiveConnection:(id)connection withContext:(id)context;
- (void)processNDEF:(id)f tag:(id)tag reply:(id)reply;
- (void)remoteAlertHandle:(id)handle didInvalidateWithError:(id)error;
- (void)remoteAlertHandleDidActivate:(id)activate;
- (void)remoteAlertHandleDidDeactivate:(id)deactivate;
@end

@implementation NFBSListener_BackgroundTagReading

- (NFBSListener_BackgroundTagReading)init
{
  v11.receiver = self;
  v11.super_class = NFBSListener_BackgroundTagReading;
  v2 = [(NFBSListener_BackgroundTagReading *)&v11 init];
  v3 = v2;
  if (v2)
  {
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10000C568;
    v9[3] = &unk_100018AC8;
    v4 = v2;
    v10 = v4;
    v5 = [BSServiceConnectionListener listenerWithConfigurator:v9];
    serviceListener = v4->_serviceListener;
    v4->_serviceListener = v5;

    v7 = v4;
  }

  return v3;
}

- (void)activate
{
  v3 = +[NFCUISceneServiceLogger defaultLogger];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[NFBSListener_BackgroundTagRead] activated", buf, 2u);
  }

  v4 = +[NFCUISceneServiceLogger defaultLogger];
  if (os_signpost_enabled(v4))
  {
    *v10 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v4, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "[NFBSListener_BackgroundTagReading] activate", "", v10, 2u);
  }

  [(BSServiceConnectionListener *)self->_serviceListener activate];
  tagReadExtensionManager = self->_tagReadExtensionManager;
  if (!tagReadExtensionManager)
  {
    v6 = objc_opt_new();
    v7 = self->_tagReadExtensionManager;
    self->_tagReadExtensionManager = v6;

    tagReadExtensionManager = self->_tagReadExtensionManager;
  }

  [(NFExtensionPointManager *)tagReadExtensionManager start];
  v8 = +[NFCUISceneServiceLogger defaultLogger];
  if (os_signpost_enabled(v8))
  {
    *v9 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v8, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "[NFBSListener_BackgroundTagReading] activate", "", v9, 2u);
  }
}

- (void)invalidate
{
  v3 = +[NFCUISceneServiceLogger defaultLogger];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[NFBSListener_BackgroundTagReading] invalidated", v4, 2u);
  }

  [(BSServiceConnectionListener *)self->_serviceListener invalidate];
  [(NFExtensionPointManager *)self->_tagReadExtensionManager stop];
}

- (id)bsInterface
{
  if (qword_10001DF98 != -1)
  {
    dispatch_once(&qword_10001DF98, &stru_100018B08);
  }

  v3 = qword_10001DF90;

  return v3;
}

- (void)activateUIRemoteAlertWithExtension:(id)extension ndefMessage:(id)message tag:(id)tag
{
  messageCopy = message;
  tagCopy = tag;
  extensionCopy = extension;
  v11 = [SBSRemoteAlertDefinition alloc];
  v12 = +[RBSProcessIdentity identityOfCurrentProcess];
  v13 = [v11 initWithSceneProvidingProcess:v12 configurationIdentifier:@"action:remote-alert-on-background-tag-reading"];

  v14 = objc_opt_new();
  v25 = v13;
  v15 = [SBSRemoteAlertHandle newHandleWithDefinition:v13 configurationContext:v14];
  [v15 registerObserver:self];
  v16 = objc_opt_new();
  [v16 setReason:@"Process NDEF"];
  v17 = [NSMutableDictionary alloc];
  v29[0] = @"ExUUID";
  identity = [extensionCopy identity];
  uniqueIdentifier = [identity uniqueIdentifier];
  uUIDString = [uniqueIdentifier UUIDString];
  v30[0] = uUIDString;
  v30[1] = messageCopy;
  v26 = messageCopy;
  v21 = tagCopy;
  v29[1] = @"ndef";
  v29[2] = @"tag";
  v30[2] = tagCopy;
  v22 = [NSDictionary dictionaryWithObjects:v30 forKeys:v29 count:3];
  v23 = [v17 initWithDictionary:v22];

  LODWORD(uUIDString) = [extensionCopy swipeToDismiss];
  if (uUIDString)
  {
    [v23 setObject:&__kCFBooleanTrue forKeyedSubscript:@"swipeToDismiss"];
  }

  [v16 setUserInfo:v23];
  v24 = +[NFCUISceneServiceLogger defaultLogger];
  if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v28 = v16;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "[NFBSListener_BackgroundTagReading] activate remote alert with context %@", buf, 0xCu);
  }

  [v15 activateWithContext:v16];
}

- (void)remoteAlertHandleDidActivate:(id)activate
{
  activateCopy = activate;
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

    v7(6, "%c[%{public}s %{public}s]:%i handle %@ activate", v10, ClassName, Name, 121, activateCopy);
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
    v17 = v13;
    v18 = 2082;
    v19 = object_getClassName(self);
    v20 = 2082;
    v21 = sel_getName(a2);
    v22 = 1024;
    v23 = 121;
    v24 = 2112;
    v25 = activateCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i handle %@ activate", buf, 0x2Cu);
  }
}

- (void)remoteAlertHandleDidDeactivate:(id)deactivate
{
  deactivateCopy = deactivate;
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

    v7(6, "%c[%{public}s %{public}s]:%i handle %@ deactivate", v10, ClassName, Name, 126, deactivateCopy);
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
    v17 = v13;
    v18 = 2082;
    v19 = object_getClassName(self);
    v20 = 2082;
    v21 = sel_getName(a2);
    v22 = 1024;
    v23 = 126;
    v24 = 2112;
    v25 = deactivateCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i handle %@ deactivate", buf, 0x2Cu);
  }
}

- (void)remoteAlertHandle:(id)handle didInvalidateWithError:(id)error
{
  handleCopy = handle;
  errorCopy = error;
  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    v10 = Logger;
    Class = object_getClass(self);
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(self);
    Name = sel_getName(a2);
    v14 = 45;
    if (isMetaClass)
    {
      v14 = 43;
    }

    v10(6, "%c[%{public}s %{public}s]:%i Handle %@ invalidated; error=%@", v14, ClassName, Name, 131, handleCopy, errorCopy);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v15 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = object_getClass(self);
    if (class_isMetaClass(v16))
    {
      v17 = 43;
    }

    else
    {
      v17 = 45;
    }

    *buf = 67110402;
    v20 = v17;
    v21 = 2082;
    v22 = object_getClassName(self);
    v23 = 2082;
    v24 = sel_getName(a2);
    v25 = 1024;
    v26 = 131;
    v27 = 2112;
    v28 = handleCopy;
    v29 = 2112;
    v30 = errorCopy;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Handle %@ invalidated; error=%@", buf, 0x36u);
  }
}

- (void)listener:(id)listener didReceiveConnection:(id)connection withContext:(id)context
{
  connectionCopy = connection;
  v7 = +[NFCUISceneServiceLogger defaultLogger];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "[NFBSListener_BackgroundTagReading] connection requested", buf, 2u);
  }

  remoteProcess = [connectionCopy remoteProcess];
  v9 = remoteProcess;
  if (remoteProcess && ([remoteProcess hasEntitlement:@"com.apple.nfcd.background.tag.reading.extension"] & 1) != 0)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10000D200;
    block[3] = &unk_100018B30;
    block[4] = self;
    if (qword_10001DF88 != -1)
    {
      dispatch_once(&qword_10001DF88, block);
    }

    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10000D23C;
    v11[3] = &unk_100018B98;
    v11[4] = self;
    [connectionCopy configureConnection:v11];
    v10 = +[NFCUISceneServiceLogger defaultLogger];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "[NFBSListener_BackgroundTagReading] connection activated", buf, 2u);
    }

    [connectionCopy activate];
  }

  else
  {
    [connectionCopy invalidate];
  }
}

- (void)processNDEF:(id)f tag:(id)tag reply:(id)reply
{
  fCopy = f;
  tagCopy = tag;
  replyCopy = reply;
  v12 = +[NFCUISceneServiceLogger defaultLogger];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "[NFBSListener_BackgroundTagRead] processNDEF:tag:reply", buf, 2u);
  }

  v13 = +[NFCUISceneServiceLogger defaultLogger];
  if (os_signpost_enabled(v13))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v13, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "[NFBSListener_BackgroundTagReading] processNDEF", "", buf, 2u);
  }

  v14 = objc_opt_class();
  v62 = 0;
  v15 = [NSKeyedUnarchiver unarchivedObjectOfClass:v14 fromData:tagCopy error:&v62];
  v16 = v62;
  v52 = replyCopy;
  if (!v16)
  {
    v22 = objc_opt_class();
    v61 = 0;
    v23 = [NSKeyedUnarchiver unarchivedObjectOfClass:v22 fromData:fCopy error:&v61];
    v24 = v61;
    if (v24)
    {
      v17 = v24;
      v51 = fCopy;
      v48 = [NSError alloc];
      v25 = [NSString stringWithUTF8String:"nfcd"];
      code = [v17 code];
      v65[0] = NSLocalizedDescriptionKey;
      v49 = v15;
      v50 = tagCopy;
      if ([v17 code] > 75)
      {
        code2 = 76;
      }

      else
      {
        code2 = [v17 code];
      }

      v38 = [NSString stringWithUTF8String:(&off_100018BB8)[code2]];
      v66[0] = v38;
      v66[1] = v17;
      v65[1] = NSUnderlyingErrorKey;
      v65[2] = @"Line";
      v66[2] = &off_1000192E8;
      v65[3] = @"Method";
      v39 = [[NSString alloc] initWithFormat:@"%s", sel_getName(a2)];
      v66[3] = v39;
      v65[4] = NSDebugDescriptionErrorKey;
      v40 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(a2), 198];
      v66[4] = v40;
      v41 = [NSDictionary dictionaryWithObjects:v66 forKeys:v65 count:5];
      v42 = [v48 initWithDomain:v25 code:code userInfo:v41];
      (v52[2])(v52, v42);

      v43 = +[NFCUISceneServiceLogger defaultLogger];
      if (os_signpost_enabled(v43))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v43, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "[NFBSListener_BackgroundTagReading] processNDEF", "Unarchive message error", buf, 2u);
      }

      goto LABEL_21;
    }

    *buf = 0;
    v56 = buf;
    v57 = 0x3032000000;
    v58 = sub_10000DB70;
    v59 = sub_10000DB80;
    v60 = 0;
    tagReadExtensionManager = self->_tagReadExtensionManager;
    obj = 0;
    v34 = [(NFBackgroundTagReadingExtensionManager *)tagReadExtensionManager findExtensionWithNdef:v23 error:&obj];
    objc_storeStrong(&v60, obj);
    if (*(v56 + 5))
    {
      v35 = v15;
      replyCopy[2](replyCopy);
      v36 = +[NFCUISceneServiceLogger defaultLogger];
      if (!os_signpost_enabled(v36))
      {
LABEL_34:

        _Block_object_dispose(buf, 8);
        v17 = 0;
        goto LABEL_22;
      }

      *v63 = 0;
      v37 = "[NFBSListener_BackgroundTagReading] processNDEF find extension error";
    }

    else
    {
      v44 = +[NFCUISceneServiceLogger defaultLogger];
      if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
      {
        *v63 = 138412290;
        v64 = v34;
        _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_INFO, "[NFBSListener_BackgroundTagRead] targetExtension=%@", v63, 0xCu);
      }

      if (!v34)
      {
        __assert_rtn("[NFBSListener_BackgroundTagReading processNDEF:tag:reply:]", "NFBSListener_BackgroundTagReading.m", 217, "targetExtension != nil");
      }

      if ([v34 presentUI])
      {
        v45 = +[NFCUISceneServiceLogger defaultLogger];
        if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
        {
          *v63 = 0;
          _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_INFO, "[NFBSListener_BackgroundTagRead] launching remote alert", v63, 2u);
        }

        v35 = v15;

        [(NFBSListener_BackgroundTagReading *)self activateUIRemoteAlertWithExtension:v34 ndefMessage:fCopy tag:tagCopy];
        v46 = *(v56 + 5);
        *(v56 + 5) = 0;
      }

      else
      {
        v47 = self->_tagReadExtensionManager;
        v53[0] = _NSConcreteStackBlock;
        v53[1] = 3221225472;
        v53[2] = sub_10000DB88;
        v53[3] = &unk_100018A50;
        v53[4] = buf;
        v35 = v15;
        [(NFBackgroundTagReadingExtensionManager *)v47 processNdef:v23 tag:v15 targetExtension:v34 completion:v53];
      }

      (replyCopy[2])(replyCopy, *(v56 + 5));
      v36 = +[NFCUISceneServiceLogger defaultLogger];
      if (!os_signpost_enabled(v36))
      {
        goto LABEL_34;
      }

      *v63 = 0;
      v37 = "[NFBSListener_BackgroundTagReading] processNDEF";
    }

    _os_signpost_emit_with_name_impl(&_mh_execute_header, v36, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, v37, "", v63, 2u);
    goto LABEL_34;
  }

  v17 = v16;
  v50 = tagCopy;
  v51 = fCopy;
  v18 = [NSError alloc];
  v19 = [NSString stringWithUTF8String:"nfcd"];
  code3 = [v17 code];
  v67[0] = NSLocalizedDescriptionKey;
  v49 = v15;
  if ([v17 code] > 75)
  {
    code4 = 76;
  }

  else
  {
    code4 = [v17 code];
  }

  v28 = [NSString stringWithUTF8String:(&off_100018BB8)[code4]];
  v68[0] = v28;
  v68[1] = v17;
  v67[1] = NSUnderlyingErrorKey;
  v67[2] = @"Line";
  v68[2] = &off_1000192D0;
  v67[3] = @"Method";
  v29 = [[NSString alloc] initWithFormat:@"%s", sel_getName(a2)];
  v68[3] = v29;
  v67[4] = NSDebugDescriptionErrorKey;
  v30 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(a2), 188];
  v68[4] = v30;
  v31 = [NSDictionary dictionaryWithObjects:v68 forKeys:v67 count:5];
  v32 = [v18 initWithDomain:v19 code:code3 userInfo:v31];
  (v52[2])(v52, v32);

  v23 = +[NFCUISceneServiceLogger defaultLogger];
  if (os_signpost_enabled(v23))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v23, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "[NFBSListener_BackgroundTagReading] processNDEF", "Unarchive tag error", buf, 2u);
  }

LABEL_21:
  tagCopy = v50;
  fCopy = v51;
  replyCopy = v52;
  v35 = v49;
LABEL_22:
}

@end