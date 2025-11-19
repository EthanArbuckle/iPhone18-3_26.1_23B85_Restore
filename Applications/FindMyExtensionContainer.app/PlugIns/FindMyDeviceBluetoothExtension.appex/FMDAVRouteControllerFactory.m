@interface FMDAVRouteControllerFactory
+ (BOOL)isAutomationActive;
+ (id)routeController;
@end

@implementation FMDAVRouteControllerFactory

+ (BOOL)isAutomationActive
{
  if (qword_100028BF0 != -1)
  {
    sub_10000D0B4();
  }

  v2 = sub_100003BEC();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4[0] = 67109120;
    v4[1] = byte_100028BE8;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "FMDAutomationAVRouteController: isAutomationActive: %d", v4, 8u);
  }

  return byte_100028BE8;
}

+ (id)routeController
{
  if (+[FMDAVRouteControllerFactory isAutomationActive])
  {
    v2 = +[FMDAutomationHelperFactory sharedFactory];
    v3 = [v2 automationHelperClassWithName:@"FMDAutomationAVRouteController"];

    v4 = sub_100003BEC();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "FMDAVRouteController: switching to automation", buf, 2u);
    }

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10000336C;
    block[3] = &unk_10001CFB0;
    block[4] = v3;
    if (qword_100028C00 != -1)
    {
      dispatch_once(&qword_100028C00, block);
    }
  }

  else
  {
    v5 = objc_alloc_init(FMDAVRouteController);
    v6 = qword_100028BF8;
    qword_100028BF8 = v5;
  }

  v7 = qword_100028BF8;

  return v7;
}

@end