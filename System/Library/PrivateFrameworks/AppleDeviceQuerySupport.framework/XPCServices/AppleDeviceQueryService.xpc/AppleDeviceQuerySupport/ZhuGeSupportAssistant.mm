@interface ZhuGeSupportAssistant
+ (id)getSharedInstanceByName:(id)name withError:(id *)error;
+ (id)getXpcProxyWithError:(id *)error;
+ (id)isKey:(id)key withError:(id *)error;
+ (void)getDylibHandlerWithError:(id *)error;
@end

@implementation ZhuGeSupportAssistant

+ (void)getDylibHandlerWithError:(id *)error
{
  if (error)
  {
    *error = 0;
    if (qword_100019F48 != -1)
    {
      sub_1000098BC();
    }

    *error = qword_100019F50;
  }

  else
  {
    ZhuGeLog(1040, "/Library/Caches/com.apple.xbs/Sources/ZhuGe_Service/ZhuGeSupport/ZhuGeSupportAssistant.m", "+[ZhuGeSupportAssistant getDylibHandlerWithError:]", 60, @"error p-pointer is nil!", v3, v4, v5, v8);
  }

  return qword_100019F58;
}

+ (id)getSharedInstanceByName:(id)name withError:(id *)error
{
  nameCopy = name;
  if ([self isInternalAssistant] && (isZhuGeInRestoreOS() & 1) != 0)
  {
    goto LABEL_10;
  }

  if (!error)
  {
    ZhuGeLog(1040, "/Library/Caches/com.apple.xbs/Sources/ZhuGe_Service/ZhuGeSupport/ZhuGeSupportAssistant.m", "+[ZhuGeSupportAssistant getSharedInstanceByName:withError:]", 95, @"error p-pointer is nil!", v7, v8, v9, v31);
LABEL_10:
    sharedInstance = 0;
    v19 = 0;
    goto LABEL_14;
  }

  *error = 0;
  classList = [self classList];
  v11 = [classList containsObject:nameCopy];

  if ((v11 & 1) == 0)
  {
    ZhuGeLog(1040, "/Library/Caches/com.apple.xbs/Sources/ZhuGe_Service/ZhuGeSupport/ZhuGeSupportAssistant.m", "+[ZhuGeSupportAssistant getSharedInstanceByName:withError:]", 101, @"Unknown class name!", v12, v13, v14, v31);
    v25 = [NSError errorWithZhuGeErrorCode:38 underlyingError:0];
    sharedInstance = 0;
    v19 = 0;
LABEL_12:
    *error = v25;
    goto LABEL_14;
  }

  v32 = 0;
  sharedInstance = [self getDylibHandlerWithError:&v32];
  v19 = v32;
  if (!sharedInstance)
  {
    ZhuGeLog(1040, "/Library/Caches/com.apple.xbs/Sources/ZhuGe_Service/ZhuGeSupport/ZhuGeSupportAssistant.m", "+[ZhuGeSupportAssistant getSharedInstanceByName:withError:]", 109, @"Failed to get ZhuGe armory handler!", v16, v17, v18, v31);
    v26 = v19;
    *error = v19;
    goto LABEL_14;
  }

  v20 = dlsym(sharedInstance, [nameCopy UTF8String]);
  if (!v20)
  {
    if (dlerror())
    {
      dlerror();
    }

    ZhuGeLog(1040, "/Library/Caches/com.apple.xbs/Sources/ZhuGe_Service/ZhuGeSupport/ZhuGeSupportAssistant.m", "+[ZhuGeSupportAssistant getSharedInstanceByName:withError:]", 116, @"Failed to find class symbol for %@ with error: %s!", v28, v29, v30, nameCopy);
    v25 = [NSError errorWithZhuGeErrorCode:13 underlyingError:0];
    sharedInstance = 0;
    goto LABEL_12;
  }

  sharedInstance = [v20 sharedInstance];
  if (!sharedInstance)
  {
    ZhuGeLog(1040, "/Library/Caches/com.apple.xbs/Sources/ZhuGe_Service/ZhuGeSupport/ZhuGeSupportAssistant.m", "+[ZhuGeSupportAssistant getSharedInstanceByName:withError:]", 123, @"Failed to have shared instance for %@!", v21, v22, v23, nameCopy);
    v24 = [NSError errorWithZhuGeErrorCode:38 underlyingError:0];

    v19 = v24;
  }

LABEL_14:

  return sharedInstance;
}

+ (id)isKey:(id)key withError:(id *)error
{
  keyCopy = key;
  if ([self isInternalAssistant] && (isZhuGeInRestoreOS() & 1) != 0)
  {
    goto LABEL_9;
  }

  if (!error)
  {
    ZhuGeLog(1040, "/Library/Caches/com.apple.xbs/Sources/ZhuGe_Service/ZhuGeSupport/ZhuGeSupportAssistant.m", "+[ZhuGeSupportAssistant isKey:withError:]", 146, @"error p-pointer is nil!", v7, v8, v9, v25);
LABEL_9:
    v17 = 0;
    v12 = 0;
    v11 = 0;
    v14 = 0;
    goto LABEL_11;
  }

  *error = 0;
  armoryClassName = [self armoryClassName];
  v27 = 0;
  v11 = [self getSharedInstanceByName:armoryClassName withError:&v27];
  v12 = v27;

  if (v11)
  {
    helper = [v11 helper];
    v26 = v12;
    v14 = [helper getConfigOfKey:keyCopy withError:&v26];
    v15 = v26;

    v16 = &__kCFBooleanTrue;
    if (!v14)
    {
      v16 = &__kCFBooleanFalse;
    }

    v17 = v16;
    v12 = v15;
  }

  else
  {
    armoryClassName2 = [self armoryClassName];
    ZhuGeLog(1040, "/Library/Caches/com.apple.xbs/Sources/ZhuGe_Service/ZhuGeSupport/ZhuGeSupportAssistant.m", "+[ZhuGeSupportAssistant isKey:withError:]", 154, @"Failed to get a shared instance for %@!", v19, v20, v21, armoryClassName2);

    v22 = v12;
    v17 = 0;
    v11 = 0;
    v14 = 0;
    *error = v12;
  }

LABEL_11:
  v23 = v17;

  return v17;
}

+ (id)getXpcProxyWithError:(id *)error
{
  if ([self isInternalAssistant] && (isZhuGeInRestoreOS() & 1) != 0)
  {
    goto LABEL_9;
  }

  if (!error)
  {
    ZhuGeLog(1040, "/Library/Caches/com.apple.xbs/Sources/ZhuGe_Service/ZhuGeSupport/ZhuGeSupportAssistant.m", "+[ZhuGeSupportAssistant getXpcProxyWithError:]", 182, @"error p-pointer is nil!", v5, v6, v7, v40);
LABEL_9:
    v12 = 0;
    v13 = 0;
    goto LABEL_16;
  }

  *error = 0;
  if (qword_100019F60 != -1)
  {
    sub_1000098D0();
  }

  pthread_mutex_lock(&stru_100019F68);
  v11 = &off_10000B000;
  if (byte_100019FB0 == 1)
  {
    ZhuGeLog(524544, "/Library/Caches/com.apple.xbs/Sources/ZhuGe_Service/ZhuGeSupport/ZhuGeSupportAssistant.m", "+[ZhuGeSupportAssistant getXpcProxyWithError:]", 194, @"XPC connection is already available", v8, v9, v10, v40);
    v12 = 0;
  }

  else
  {
    v14 = [NSXPCConnection alloc];
    serviceXpcName = [self serviceXpcName];
    v16 = [v14 initWithServiceName:serviceXpcName];
    v17 = qword_100019FA8;
    qword_100019FA8 = v16;

    if (!qword_100019FA8)
    {
      serviceXpcName2 = [self serviceXpcName];
      ZhuGeLog(1040, "/Library/Caches/com.apple.xbs/Sources/ZhuGe_Service/ZhuGeSupport/ZhuGeSupportAssistant.m", "+[ZhuGeSupportAssistant getXpcProxyWithError:]", 201, @"Failed to connect %@!", v36, v37, v38, serviceXpcName2);

      v34 = [NSError errorWithZhuGeErrorCode:67 underlyingError:0];
      v12 = 0;
      v13 = 0;
      goto LABEL_15;
    }

    v18 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___ZhuGeServiceProtocol];
    [qword_100019FA8 setRemoteObjectInterface:v18];

    v43 = objc_opt_class();
    v42 = objc_opt_class();
    v19 = objc_opt_class();
    v20 = objc_opt_class();
    v21 = objc_opt_class();
    v22 = objc_opt_class();
    v23 = objc_opt_class();
    v24 = objc_opt_class();
    v25 = objc_opt_class();
    v41 = v20;
    v11 = &off_10000B000;
    v12 = [NSSet setWithObjects:v43, v42, v19, v41, v21, v22, v23, v24, v25, objc_opt_class(), 0];
    remoteObjectInterface = [qword_100019FA8 remoteObjectInterface];
    [remoteObjectInterface setClasses:v12 forSelector:"setBulkKeys:getValuesAndError:" argumentIndex:0 ofReply:1];

    remoteObjectInterface2 = [qword_100019FA8 remoteObjectInterface];
    [remoteObjectInterface2 setClasses:v12 forSelector:"setBulkInternalKeys:getValuesAndError:" argumentIndex:0 ofReply:1];

    remoteObjectInterface3 = [qword_100019FA8 remoteObjectInterface];
    [remoteObjectInterface3 setClasses:v12 forSelector:"setBulkMGKeys:getValuesAndError:" argumentIndex:0 ofReply:1];

    remoteObjectInterface4 = [qword_100019FA8 remoteObjectInterface];
    [remoteObjectInterface4 setClasses:v12 forSelector:"setBulkInternalMGKeys:getValuesAndError:" argumentIndex:0 ofReply:1];

    v46[0] = _NSConcreteStackBlock;
    v46[1] = 3221225472;
    v46[2] = sub_100005F9C;
    v46[3] = &unk_100014418;
    v46[4] = self;
    [qword_100019FA8 setInvalidationHandler:v46];
    v45[0] = _NSConcreteStackBlock;
    v45[1] = 3221225472;
    v45[2] = sub_100006028;
    v45[3] = &unk_100014418;
    v45[4] = self;
    [qword_100019FA8 setInterruptionHandler:v45];
    [qword_100019FA8 activate];
    byte_100019FB0 = 1;
  }

  v44[0] = _NSConcreteStackBlock;
  v44[1] = *(v11 + 203);
  v44[2] = sub_1000060B4;
  v44[3] = &unk_100014438;
  v44[4] = self;
  v13 = [qword_100019FA8 synchronousRemoteObjectProxyWithErrorHandler:v44];
  if (v13)
  {
    goto LABEL_16;
  }

  serviceXpcName3 = [self serviceXpcName];
  ZhuGeLog(1040, "/Library/Caches/com.apple.xbs/Sources/ZhuGe_Service/ZhuGeSupport/ZhuGeSupportAssistant.m", "+[ZhuGeSupportAssistant getXpcProxyWithError:]", 261, @"Failed to get proxy for %@!", v31, v32, v33, serviceXpcName3);

  v34 = [NSError errorWithZhuGeErrorCode:66 underlyingError:0];
LABEL_15:
  *error = v34;
LABEL_16:
  pthread_mutex_unlock(&stru_100019F68);

  return v13;
}

@end