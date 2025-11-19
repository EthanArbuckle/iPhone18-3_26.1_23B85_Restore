@interface FREmbedConfigurationOperation
- (FREmbedConfigurationOperation)initWithAppConfigManager:(id)a3 andResourceManager:(id)a4;
- (void)operationWillFinishWithError:(id)a3;
- (void)performOperation;
@end

@implementation FREmbedConfigurationOperation

- (FREmbedConfigurationOperation)initWithAppConfigManager:(id)a3 andResourceManager:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = FREmbedConfigurationOperation;
  v9 = [(FREmbedConfigurationOperation *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_appConfigurationManager, a3);
    objc_storeStrong(&v10->_resourceManager, a4);
  }

  return v10;
}

- (void)performOperation
{
  v3 = [(FREmbedConfigurationOperation *)self appConfigurationManager];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10000C4AC;
  v4[3] = &unk_1000C19C0;
  v4[4] = self;
  [v3 fetchAppConfigurationIfNeededWithCompletion:v4];
}

- (void)operationWillFinishWithError:(id)a3
{
  v4 = a3;
  v7 = [(FREmbedConfigurationOperation *)self embedFetchCompletionBlock];
  v5 = [(FREmbedConfigurationOperation *)self embedConfigurationData];
  v6 = [(FREmbedConfigurationOperation *)self embedConfigurationIdentifier];
  v7[2](v7, v5, v6, v4);
}

@end