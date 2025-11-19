@interface ENUIExposureNotificationsStore
- (ENUIExposureNotificationsStore)init;
- (void)dealloc;
- (void)fetchExposureCheckSessionsWithCompletion:(id)a3;
- (void)fetchExposureChecksWithCompletion:(id)a3;
- (void)fetchExposureLogsExistWithCompletion:(id)a3;
- (void)fetchExtraLoggingEnabledWithCompletion:(id)a3;
- (void)fetchSupportedWithCompletion:(id)a3;
- (void)fetchWeeklySummaryEnabledWithCompletion:(id)a3;
- (void)resetAllDataWithCompletion:(id)a3;
- (void)resetDataWithFlags:(unsigned int)a3 completion:(id)a4;
@end

@implementation ENUIExposureNotificationsStore

- (ENUIExposureNotificationsStore)init
{
  v11.receiver = self;
  v11.super_class = ENUIExposureNotificationsStore;
  v2 = [(ENUIExposureNotificationsStore *)&v11 init];
  if (v2)
  {
    v3 = objc_alloc_init(ENManager);
    v4 = *(v2 + 1);
    *(v2 + 1) = v3;

    [*(v2 + 1) setDispatchQueue:&_dispatch_main_q];
    v5 = dispatch_group_create();
    v6 = *(v2 + 2);
    *(v2 + 2) = v5;

    dispatch_group_enter(*(v2 + 2));
    v7 = *(v2 + 1);
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_F8BC;
    v9[3] = &unk_2CF40;
    v10 = v2;
    [v7 activateWithCompletionHandler:v9];
  }

  return v2;
}

- (void)dealloc
{
  [(ENManager *)self->_manager invalidate];
  v3.receiver = self;
  v3.super_class = ENUIExposureNotificationsStore;
  [(ENUIExposureNotificationsStore *)&v3 dealloc];
}

- (void)fetchExposureChecksWithCompletion:(id)a3
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_FA30;
  v4[3] = &unk_2CA60;
  v5 = self;
  v6 = a3;
  v3 = v6;
  [(ENUIExposureNotificationsStore *)v5 performAfterActivation:v4];
}

- (void)fetchExposureCheckSessionsWithCompletion:(id)a3
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_FC8C;
  v4[3] = &unk_2CA60;
  v5 = self;
  v6 = a3;
  v3 = v6;
  [(ENUIExposureNotificationsStore *)v5 performAfterActivation:v4];
}

- (void)resetDataWithFlags:(unsigned int)a3 completion:(id)a4
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_FEF0;
  v5[3] = &unk_2CFB8;
  v8 = a3;
  v6 = self;
  v7 = a4;
  v4 = v7;
  [(ENUIExposureNotificationsStore *)v6 performAfterActivation:v5];
}

- (void)fetchExtraLoggingEnabledWithCompletion:(id)a3
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10170;
  v4[3] = &unk_2CA60;
  v5 = self;
  v6 = a3;
  v3 = v6;
  [(ENUIExposureNotificationsStore *)v5 performAfterActivation:v4];
}

- (void)fetchWeeklySummaryEnabledWithCompletion:(id)a3
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10370;
  v4[3] = &unk_2CA60;
  v5 = self;
  v6 = a3;
  v3 = v6;
  [(ENUIExposureNotificationsStore *)v5 performAfterActivation:v4];
}

- (void)fetchSupportedWithCompletion:(id)a3
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10570;
  v4[3] = &unk_2CA60;
  v5 = self;
  v6 = a3;
  v3 = v6;
  [(ENUIExposureNotificationsStore *)v5 performAfterActivation:v4];
}

- (void)fetchExposureLogsExistWithCompletion:(id)a3
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10770;
  v4[3] = &unk_2CA60;
  v5 = self;
  v6 = a3;
  v3 = v6;
  [(ENUIExposureNotificationsStore *)v5 performAfterActivation:v4];
}

- (void)resetAllDataWithCompletion:(id)a3
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10980;
  v4[3] = &unk_2CA60;
  v5 = self;
  v6 = a3;
  v3 = v6;
  [(ENUIExposureNotificationsStore *)v5 performAfterActivation:v4];
}

@end