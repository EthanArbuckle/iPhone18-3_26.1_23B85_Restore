@interface ADDevicePropertiesUtils
+ (int)_SISchemaAppleMediaProductsSubscriptionFrom:(id)from;
+ (void)fetchActiveSubscriptionsWithQueue:(id)queue completion:(id)completion;
@end

@implementation ADDevicePropertiesUtils

+ (int)_SISchemaAppleMediaProductsSubscriptionFrom:(id)from
{
  fromCopy = from;
  statusType = [fromCopy statusType];
  if (statusType == 1)
  {
    v5 = 5;
  }

  else if (statusType == 2)
  {
    if ([fromCopy isMatchEnabled])
    {
      v5 = 8;
    }

    else
    {
      v5 = 1;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (void)fetchActiveSubscriptionsWithQueue:(id)queue completion:(id)completion
{
  queueCopy = queue;
  completionCopy = completion;
  v8 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    LODWORD(buf) = 136315138;
    *(&buf + 4) = "+[ADDevicePropertiesUtils fetchActiveSubscriptionsWithQueue:completion:]";
    _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "%s Retrieving", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v36 = 0x3032000000;
  v37 = sub_1002FAED8;
  v38 = sub_1002FAEE8;
  v39 = 0;
  v9 = [AFOneArgumentSafetyBlock alloc];
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_1002FAEF0;
  v26[3] = &unk_10051B350;
  v10 = queueCopy;
  v27 = v10;
  p_buf = &buf;
  v11 = completionCopy;
  v28 = v11;
  v12 = [v9 initWithBlock:v26];
  v31 = 0;
  v32 = &v31;
  v33 = 0x2050000000;
  v13 = qword_100590930;
  v34 = qword_100590930;
  if (!qword_100590930)
  {
    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = sub_1002FAFB4;
    v30[3] = &unk_10051E1C8;
    v30[4] = &v31;
    sub_1002FAFB4(v30);
    v13 = v32[3];
  }

  v14 = v13;
  _Block_object_dispose(&v31, 8);
  sharedStatusController = [v13 sharedStatusController];
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_1002FB1A0;
  v23[3] = &unk_10051B378;
  selfCopy = self;
  v16 = v12;
  v24 = v16;
  [sharedStatusController getSubscriptionStatusWithCompletionHandler:v23];
  v17 = [AFWatchdogTimer alloc];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_1002FB338;
  v21[3] = &unk_10051DFE8;
  v18 = v16;
  v22 = v18;
  v19 = [v17 initWithTimeoutInterval:v10 onQueue:v21 timeoutHandler:3.0];
  v20 = *(*(&buf + 1) + 40);
  *(*(&buf + 1) + 40) = v19;

  [*(*(&buf + 1) + 40) start];
  _Block_object_dispose(&buf, 8);
}

@end