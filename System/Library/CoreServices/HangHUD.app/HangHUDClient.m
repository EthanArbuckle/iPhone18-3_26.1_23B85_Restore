@interface HangHUDClient
+ (id)sharedInstance;
- (HangHUDClient)initWithIdentifier:(id)a3;
- (HangHUDClientDelegate)delegate;
- (id)obtainKeepHangHUDAliveAssertion:(id)a3;
- (void)clearHUDWithCompletion:(id)a3;
- (void)sendHangHUDInfo:(id)a3 completion:(id)a4;
- (void)sendHudConfiguration:(id)a3 completion:(id)a4;
- (void)sendMonitoredStates:(id)a3 completion:(id)a4;
- (void)sendProcExitRecord:(id)a3 completion:(id)a4;
@end

@implementation HangHUDClient

+ (id)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000CA54;
  block[3] = &unk_100030840;
  block[4] = a1;
  if (qword_10003E798 != -1)
  {
    dispatch_once(&qword_10003E798, block);
  }

  v2 = qword_10003E790;

  return v2;
}

- (HangHUDClient)initWithIdentifier:(id)a3
{
  v4 = a3;
  v20.receiver = self;
  v20.super_class = HangHUDClient;
  v5 = [(HangHUDClient *)&v20 init];
  if (v5)
  {
    v6 = +[HangHUDServiceSpecification machName];
    v7 = +[HangHUDServiceSpecification identifier];
    v8 = [BSServiceConnectionEndpoint endpointForMachName:v6 service:v7 instance:0];
    endpoint = v5->_endpoint;
    v5->_endpoint = v8;

    v10 = v5->_endpoint;
    if (v10)
    {
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_10000CCE4;
      v18[3] = &unk_100030D18;
      v19 = v4;
      v11 = [BSServiceConnection connectionWithEndpoint:v10 clientContextBuilder:v18];
      connection = v5->_connection;
      v5->_connection = v11;

      v13 = v5->_connection;
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_10000CD5C;
      v16[3] = &unk_100030D40;
      v17 = v5;
      [(BSServiceConnectionClient *)v13 configureConnection:v16];

      v14 = v19;
    }

    else
    {
      v14 = sub_100002F0C();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_1000199FC(v14);
      }
    }
  }

  return v5;
}

- (id)obtainKeepHangHUDAliveAssertion:(id)a3
{
  v3 = a3;
  v4 = [RBSAssertion alloc];
  v5 = [RBSProcessIdentity identityForAngelJobLabel:@"com.apple.HangHUD"];
  v6 = [RBSTarget targetWithProcessIdentity:v5];
  v7 = [RBSDomainAttribute attributeWithDomain:@"com.apple.common" name:@"BasicAngelIPC"];
  v11 = v7;
  v8 = [NSArray arrayWithObjects:&v11 count:1];
  v9 = [v4 initWithExplanation:v3 target:v6 attributes:v8];

  return v9;
}

- (void)sendHangHUDInfo:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = sub_100002F0C();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    sub_100019AC4(v8, v9, v10, v11, v12, v13, v14, v15);
  }

  [(BSServiceConnectionClient *)self->_connection activate];
  connection = self->_connection;
  v17 = [RBSDomainAttribute attributeWithDomain:@"com.apple.common" name:@"BasicAngelIPC"];
  v28 = v17;
  v18 = [NSArray arrayWithObjects:&v28 count:1];
  v19 = [(BSServiceConnectionClient *)connection remoteTargetWithLaunchingAssertionAttributes:v18];

  if (v19)
  {
    [v19 receiveHangHUDInfo:v6 completion:v7];
  }

  else
  {
    v20 = sub_100002F0C();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      sub_100019B3C(v20, v21, v22, v23, v24, v25, v26, v27);
    }
  }
}

- (void)sendProcExitRecord:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = sub_100002F0C();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    sub_100019BB4(v8, v9, v10, v11, v12, v13, v14, v15);
  }

  [(BSServiceConnectionClient *)self->_connection activate];
  connection = self->_connection;
  v17 = [RBSDomainAttribute attributeWithDomain:@"com.apple.common" name:@"BasicAngelIPC"];
  v28 = v17;
  v18 = [NSArray arrayWithObjects:&v28 count:1];
  v19 = [(BSServiceConnectionClient *)connection remoteTargetWithLaunchingAssertionAttributes:v18];

  if (v19)
  {
    [v19 receiveProcExitRecord:v6 completion:v7];
  }

  else
  {
    v20 = sub_100002F0C();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      sub_100019B3C(v20, v21, v22, v23, v24, v25, v26, v27);
    }
  }
}

- (void)sendHudConfiguration:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = sub_100002F0C();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    sub_100019C2C(v8, v9, v10, v11, v12, v13, v14, v15);
  }

  [(BSServiceConnectionClient *)self->_connection activate];
  connection = self->_connection;
  v17 = [RBSDomainAttribute attributeWithDomain:@"com.apple.common" name:@"BasicAngelIPC"];
  v28 = v17;
  v18 = [NSArray arrayWithObjects:&v28 count:1];
  v19 = [(BSServiceConnectionClient *)connection remoteTargetWithLaunchingAssertionAttributes:v18];

  if (v19)
  {
    [v19 receiveHudConfiguration:v6 completion:v7];
  }

  else
  {
    v20 = sub_100002F0C();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      sub_100019B3C(v20, v21, v22, v23, v24, v25, v26, v27);
    }
  }
}

- (void)sendMonitoredStates:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = sub_100002F0C();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    sub_100019CA4(v8, v9, v10, v11, v12, v13, v14, v15);
  }

  [(BSServiceConnectionClient *)self->_connection activate];
  connection = self->_connection;
  v17 = [RBSDomainAttribute attributeWithDomain:@"com.apple.common" name:@"BasicAngelIPC"];
  v28 = v17;
  v18 = [NSArray arrayWithObjects:&v28 count:1];
  v19 = [(BSServiceConnectionClient *)connection remoteTargetWithLaunchingAssertionAttributes:v18];

  if (v19)
  {
    [v19 receiveMonitoredStates:v6 completion:v7];
  }

  else
  {
    v20 = sub_100002F0C();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      sub_100019B3C(v20, v21, v22, v23, v24, v25, v26, v27);
    }
  }
}

- (void)clearHUDWithCompletion:(id)a3
{
  v4 = a3;
  v5 = sub_100002F0C();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_100019D1C(v5, v6, v7, v8, v9, v10, v11, v12);
  }

  [(BSServiceConnectionClient *)self->_connection activate];
  connection = self->_connection;
  v14 = [RBSDomainAttribute attributeWithDomain:@"com.apple.common" name:@"BasicAngelIPC"];
  v25 = v14;
  v15 = [NSArray arrayWithObjects:&v25 count:1];
  v16 = [(BSServiceConnectionClient *)connection remoteTargetWithLaunchingAssertionAttributes:v15];

  if (v16)
  {
    [v16 clearHUDWithCompletion:v4];
  }

  else
  {
    v17 = sub_100002F0C();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_100019B3C(v17, v18, v19, v20, v21, v22, v23, v24);
    }
  }
}

- (HangHUDClientDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end