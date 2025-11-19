@interface ZhuGeSupportAssistant
+ (id)getSharedInstanceByName:(id)a3 withError:(id *)a4;
+ (id)getXpcProxyWithError:(id *)a3;
+ (id)isKey:(id)a3 withError:(id *)a4;
+ (void)getDylibHandlerWithError:(id *)a3;
@end

@implementation ZhuGeSupportAssistant

+ (void)getDylibHandlerWithError:(id *)a3
{
  if (a3)
  {
    *a3 = 0;
    if (qword_100019F48 != -1)
    {
      sub_1000098BC();
    }

    *a3 = qword_100019F50;
  }

  else
  {
    ZhuGeLog(1040, "/Library/Caches/com.apple.xbs/Sources/ZhuGe_Service/ZhuGeSupport/ZhuGeSupportAssistant.m", "+[ZhuGeSupportAssistant getDylibHandlerWithError:]", 60, @"error p-pointer is nil!", v3, v4, v5, v8);
  }

  return qword_100019F58;
}

+ (id)getSharedInstanceByName:(id)a3 withError:(id *)a4
{
  v6 = a3;
  if ([a1 isInternalAssistant] && (isZhuGeInRestoreOS() & 1) != 0)
  {
    goto LABEL_10;
  }

  if (!a4)
  {
    ZhuGeLog(1040, "/Library/Caches/com.apple.xbs/Sources/ZhuGe_Service/ZhuGeSupport/ZhuGeSupportAssistant.m", "+[ZhuGeSupportAssistant getSharedInstanceByName:withError:]", 95, @"error p-pointer is nil!", v7, v8, v9, v31);
LABEL_10:
    v15 = 0;
    v19 = 0;
    goto LABEL_14;
  }

  *a4 = 0;
  v10 = [a1 classList];
  v11 = [v10 containsObject:v6];

  if ((v11 & 1) == 0)
  {
    ZhuGeLog(1040, "/Library/Caches/com.apple.xbs/Sources/ZhuGe_Service/ZhuGeSupport/ZhuGeSupportAssistant.m", "+[ZhuGeSupportAssistant getSharedInstanceByName:withError:]", 101, @"Unknown class name!", v12, v13, v14, v31);
    v25 = [NSError errorWithZhuGeErrorCode:38 underlyingError:0];
    v15 = 0;
    v19 = 0;
LABEL_12:
    *a4 = v25;
    goto LABEL_14;
  }

  v32 = 0;
  v15 = [a1 getDylibHandlerWithError:&v32];
  v19 = v32;
  if (!v15)
  {
    ZhuGeLog(1040, "/Library/Caches/com.apple.xbs/Sources/ZhuGe_Service/ZhuGeSupport/ZhuGeSupportAssistant.m", "+[ZhuGeSupportAssistant getSharedInstanceByName:withError:]", 109, @"Failed to get ZhuGe armory handler!", v16, v17, v18, v31);
    v26 = v19;
    *a4 = v19;
    goto LABEL_14;
  }

  v20 = dlsym(v15, [v6 UTF8String]);
  if (!v20)
  {
    if (dlerror())
    {
      dlerror();
    }

    ZhuGeLog(1040, "/Library/Caches/com.apple.xbs/Sources/ZhuGe_Service/ZhuGeSupport/ZhuGeSupportAssistant.m", "+[ZhuGeSupportAssistant getSharedInstanceByName:withError:]", 116, @"Failed to find class symbol for %@ with error: %s!", v28, v29, v30, v6);
    v25 = [NSError errorWithZhuGeErrorCode:13 underlyingError:0];
    v15 = 0;
    goto LABEL_12;
  }

  v15 = [v20 sharedInstance];
  if (!v15)
  {
    ZhuGeLog(1040, "/Library/Caches/com.apple.xbs/Sources/ZhuGe_Service/ZhuGeSupport/ZhuGeSupportAssistant.m", "+[ZhuGeSupportAssistant getSharedInstanceByName:withError:]", 123, @"Failed to have shared instance for %@!", v21, v22, v23, v6);
    v24 = [NSError errorWithZhuGeErrorCode:38 underlyingError:0];

    v19 = v24;
  }

LABEL_14:

  return v15;
}

+ (id)isKey:(id)a3 withError:(id *)a4
{
  v6 = a3;
  if ([a1 isInternalAssistant] && (isZhuGeInRestoreOS() & 1) != 0)
  {
    goto LABEL_9;
  }

  if (!a4)
  {
    ZhuGeLog(1040, "/Library/Caches/com.apple.xbs/Sources/ZhuGe_Service/ZhuGeSupport/ZhuGeSupportAssistant.m", "+[ZhuGeSupportAssistant isKey:withError:]", 146, @"error p-pointer is nil!", v7, v8, v9, v25);
LABEL_9:
    v17 = 0;
    v12 = 0;
    v11 = 0;
    v14 = 0;
    goto LABEL_11;
  }

  *a4 = 0;
  v10 = [a1 armoryClassName];
  v27 = 0;
  v11 = [a1 getSharedInstanceByName:v10 withError:&v27];
  v12 = v27;

  if (v11)
  {
    v13 = [v11 helper];
    v26 = v12;
    v14 = [v13 getConfigOfKey:v6 withError:&v26];
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
    v18 = [a1 armoryClassName];
    ZhuGeLog(1040, "/Library/Caches/com.apple.xbs/Sources/ZhuGe_Service/ZhuGeSupport/ZhuGeSupportAssistant.m", "+[ZhuGeSupportAssistant isKey:withError:]", 154, @"Failed to get a shared instance for %@!", v19, v20, v21, v18);

    v22 = v12;
    v17 = 0;
    v11 = 0;
    v14 = 0;
    *a4 = v12;
  }

LABEL_11:
  v23 = v17;

  return v17;
}

+ (id)getXpcProxyWithError:(id *)a3
{
  if ([a1 isInternalAssistant] && (isZhuGeInRestoreOS() & 1) != 0)
  {
    goto LABEL_9;
  }

  if (!a3)
  {
    ZhuGeLog(1040, "/Library/Caches/com.apple.xbs/Sources/ZhuGe_Service/ZhuGeSupport/ZhuGeSupportAssistant.m", "+[ZhuGeSupportAssistant getXpcProxyWithError:]", 182, @"error p-pointer is nil!", v5, v6, v7, v40);
LABEL_9:
    v12 = 0;
    v13 = 0;
    goto LABEL_16;
  }

  *a3 = 0;
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
    v15 = [a1 serviceXpcName];
    v16 = [v14 initWithServiceName:v15];
    v17 = qword_100019FA8;
    qword_100019FA8 = v16;

    if (!qword_100019FA8)
    {
      v35 = [a1 serviceXpcName];
      ZhuGeLog(1040, "/Library/Caches/com.apple.xbs/Sources/ZhuGe_Service/ZhuGeSupport/ZhuGeSupportAssistant.m", "+[ZhuGeSupportAssistant getXpcProxyWithError:]", 201, @"Failed to connect %@!", v36, v37, v38, v35);

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
    v26 = [qword_100019FA8 remoteObjectInterface];
    [v26 setClasses:v12 forSelector:"setBulkKeys:getValuesAndError:" argumentIndex:0 ofReply:1];

    v27 = [qword_100019FA8 remoteObjectInterface];
    [v27 setClasses:v12 forSelector:"setBulkInternalKeys:getValuesAndError:" argumentIndex:0 ofReply:1];

    v28 = [qword_100019FA8 remoteObjectInterface];
    [v28 setClasses:v12 forSelector:"setBulkMGKeys:getValuesAndError:" argumentIndex:0 ofReply:1];

    v29 = [qword_100019FA8 remoteObjectInterface];
    [v29 setClasses:v12 forSelector:"setBulkInternalMGKeys:getValuesAndError:" argumentIndex:0 ofReply:1];

    v46[0] = _NSConcreteStackBlock;
    v46[1] = 3221225472;
    v46[2] = sub_100005F9C;
    v46[3] = &unk_100014418;
    v46[4] = a1;
    [qword_100019FA8 setInvalidationHandler:v46];
    v45[0] = _NSConcreteStackBlock;
    v45[1] = 3221225472;
    v45[2] = sub_100006028;
    v45[3] = &unk_100014418;
    v45[4] = a1;
    [qword_100019FA8 setInterruptionHandler:v45];
    [qword_100019FA8 activate];
    byte_100019FB0 = 1;
  }

  v44[0] = _NSConcreteStackBlock;
  v44[1] = *(v11 + 203);
  v44[2] = sub_1000060B4;
  v44[3] = &unk_100014438;
  v44[4] = a1;
  v13 = [qword_100019FA8 synchronousRemoteObjectProxyWithErrorHandler:v44];
  if (v13)
  {
    goto LABEL_16;
  }

  v30 = [a1 serviceXpcName];
  ZhuGeLog(1040, "/Library/Caches/com.apple.xbs/Sources/ZhuGe_Service/ZhuGeSupport/ZhuGeSupportAssistant.m", "+[ZhuGeSupportAssistant getXpcProxyWithError:]", 261, @"Failed to get proxy for %@!", v31, v32, v33, v30);

  v34 = [NSError errorWithZhuGeErrorCode:66 underlyingError:0];
LABEL_15:
  *a3 = v34;
LABEL_16:
  pthread_mutex_unlock(&stru_100019F68);

  return v13;
}

@end