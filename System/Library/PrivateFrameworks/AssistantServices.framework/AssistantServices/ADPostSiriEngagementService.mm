@interface ADPostSiriEngagementService
- (ADPostSiriEngagementService)init;
- (ActivityDispatcher)_getActivityDispatcher;
- (void)runMaintenanceWorkWithCompletion:(id)a3;
@end

@implementation ADPostSiriEngagementService

- (void)runMaintenanceWorkWithCompletion:(id)a3
{
  v4 = a3;
  v5 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v11 = "[ADPostSiriEngagementService runMaintenanceWorkWithCompletion:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s Run service maintenance for PSE collection", buf, 0xCu);
  }

  v6 = [(ADPostSiriEngagementService *)self _getActivityDispatcher];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10029C4E0;
  v8[3] = &unk_10051D2F0;
  v9 = v4;
  v7 = v4;
  [v6 runCollectorsDefinedInParameters:&stru_10051F508 completion:v8];
}

- (ActivityDispatcher)_getActivityDispatcher
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10029C664;
  block[3] = &unk_10051DFE8;
  block[4] = self;
  if (qword_1005907C8 != -1)
  {
    dispatch_once(&qword_1005907C8, block);
  }

  return self->_activityDispatcher;
}

- (ADPostSiriEngagementService)init
{
  v6.receiver = self;
  v6.super_class = ADPostSiriEngagementService;
  v2 = [(ADPostSiriEngagementService *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_class();
    v4 = NSStringFromClass(v3);
    [(ADService *)v2 setIdentifier:v4];
  }

  return v2;
}

@end