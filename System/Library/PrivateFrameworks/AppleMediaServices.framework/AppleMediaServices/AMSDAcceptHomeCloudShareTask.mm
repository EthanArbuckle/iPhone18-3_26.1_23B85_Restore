@interface AMSDAcceptHomeCloudShareTask
- (AMSDAcceptHomeCloudShareTask)initWithController:(id)a3 cloudShare:(id)a4;
- (id)_generateInviteCode;
- (id)_performAuthKitUpdateTaskWithOptions:(id)a3;
- (id)performTask;
@end

@implementation AMSDAcceptHomeCloudShareTask

- (AMSDAcceptHomeCloudShareTask)initWithController:(id)a3 cloudShare:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = AMSDAcceptHomeCloudShareTask;
  v9 = [(AMSDAcceptHomeCloudShareTask *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_controller, a3);
    objc_storeStrong(&v10->_share, a4);
  }

  return v10;
}

- (id)performTask
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10003D924;
  v4[3] = &unk_1002AFDB0;
  v4[4] = self;
  v2 = [(AMSDAcceptHomeCloudShareTask *)self performTaskWithPromiseBlock:v4];

  return v2;
}

- (id)_generateInviteCode
{
  v3 = objc_alloc_init(AMSMutablePromise);
  v4 = [(AMSDAcceptHomeCloudShareTask *)self controller];
  v5 = [v4 homeManager];
  v6 = [(AMSDAcceptHomeCloudShareTask *)self share];
  v7 = [v6 homeIdentifier];
  v8 = [v5 homeWithHomeIdentifier:v7];

  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_10003E1AC;
  v21[3] = &unk_1002AFDD8;
  v9 = v3;
  v22 = v9;
  [v8 addErrorBlock:v21];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_10003E1B8;
  v20[3] = &unk_1002AFE00;
  v20[4] = self;
  v10 = [v8 thenWithBlock:v20];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10003E254;
  v18[3] = &unk_1002AFDD8;
  v11 = v9;
  v19 = v11;
  [v10 addErrorBlock:v18];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10003E260;
  v16[3] = &unk_1002AFE28;
  v12 = v11;
  v17 = v12;
  [v10 addSuccessBlock:v16];
  v13 = v17;
  v14 = v12;

  return v12;
}

- (id)_performAuthKitUpdateTaskWithOptions:(id)a3
{
  v3 = a3;
  v4 = [AMSAuthKitUpdateTask alloc];
  v5 = +[ACAccountStore ams_sharedAccountStore];
  v6 = [v5 ams_activeiCloudAccount];
  v7 = [v4 initWithAccount:v6 options:v3];

  [v7 setRunMode:1];
  v8 = [v7 performAuthKitUpdate];

  return v8;
}

@end