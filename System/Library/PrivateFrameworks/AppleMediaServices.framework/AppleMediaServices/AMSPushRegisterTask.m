@interface AMSPushRegisterTask
- (AMSPushRegisterTask)initWithAccount:(id)a3 token:(id)a4 environment:(id)a5 bag:(id)a6;
- (id)performTask;
@end

@implementation AMSPushRegisterTask

- (AMSPushRegisterTask)initWithAccount:(id)a3 token:(id)a4 environment:(id)a5 bag:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v22.receiver = self;
  v22.super_class = AMSPushRegisterTask;
  v15 = [(AMSTask *)&v22 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_account, a3);
    v17 = [v12 copy];
    token = v16->_token;
    v16->_token = v17;

    v19 = [v13 copy];
    environment = v16->_environment;
    v16->_environment = v19;

    objc_storeStrong(&v16->_bag, a6);
  }

  return v16;
}

- (id)performTask
{
  v3 = [(AMSPushRegisterTask *)self environment];

  if (v3)
  {
    v4 = [(AMSPushRegisterTask *)self token];

    if (v4)
    {
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __34__AMSPushRegisterTask_performTask__block_invoke;
      v10[3] = &unk_1E73B3588;
      v10[4] = self;
      v9.receiver = self;
      v9.super_class = AMSPushRegisterTask;
      v5 = [(AMSTask *)&v9 performTaskWithPromiseBlock:v10];
      goto LABEL_7;
    }

    v6 = @"Missing Token";
  }

  else
  {
    v6 = @"Missing Environment";
  }

  v7 = AMSError(2, v6, 0, 0);
  v5 = [AMSPromise promiseWithError:v7];

LABEL_7:

  return v5;
}

id __34__AMSPushRegisterTask_performTask__block_invoke(uint64_t a1)
{
  v23[3] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E695DF90]);
  v22[0] = @"environment";
  v3 = [*(a1 + 32) environment];
  v23[0] = v3;
  v22[1] = @"token";
  v4 = [*(a1 + 32) token];
  v23[1] = v4;
  v22[2] = @"guid";
  v5 = +[AMSDevice deviceGUID];
  v23[2] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:v22 count:3];
  v7 = [v2 initWithDictionary:v6];

  v8 = +[AMSDevice deviceName];
  v9 = [v8 dataUsingEncoding:4 allowLossyConversion:1];
  [v7 setObject:v9 forKeyedSubscript:@"device-name-data"];

  v10 = +[AMSDevice serialNumber];
  [v7 setObject:v10 forKeyedSubscript:@"serial-number"];

  v11 = [*(a1 + 32) bag];
  v12 = [*(a1 + 32) account];
  v13 = [v11 URLForKey:@"push-notifications/register-success" account:v12];

  v14 = [AMSURLRequestEncoder alloc];
  v15 = [*(a1 + 32) bag];
  v16 = [(AMSURLRequestEncoder *)v14 initWithBag:v15];

  [(AMSURLRequestEncoder *)v16 setRequestEncoding:2];
  v17 = [*(a1 + 32) account];
  [(AMSURLRequestEncoder *)v16 setAccount:v17];

  v18 = [(AMSURLRequestEncoder *)v16 requestWithMethod:4 bagURL:v13 parameters:v7];
  v19 = +[AMSURLSession defaultSession];
  v20 = [v19 dataTaskPromiseWithRequestPromise:v18];

  return v20;
}

@end