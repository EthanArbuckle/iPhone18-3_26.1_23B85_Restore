@interface FREmbedConfigurationOperation
- (FREmbedConfigurationOperation)initWithAppConfigManager:(id)manager andResourceManager:(id)resourceManager;
- (void)operationWillFinishWithError:(id)error;
- (void)performOperation;
@end

@implementation FREmbedConfigurationOperation

- (FREmbedConfigurationOperation)initWithAppConfigManager:(id)manager andResourceManager:(id)resourceManager
{
  managerCopy = manager;
  resourceManagerCopy = resourceManager;
  v12.receiver = self;
  v12.super_class = FREmbedConfigurationOperation;
  v9 = [(FREmbedConfigurationOperation *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_appConfigurationManager, manager);
    objc_storeStrong(&v10->_resourceManager, resourceManager);
  }

  return v10;
}

- (void)performOperation
{
  appConfigurationManager = [(FREmbedConfigurationOperation *)self appConfigurationManager];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10000C4AC;
  v4[3] = &unk_1000C19C0;
  v4[4] = self;
  [appConfigurationManager fetchAppConfigurationIfNeededWithCompletion:v4];
}

- (void)operationWillFinishWithError:(id)error
{
  errorCopy = error;
  embedFetchCompletionBlock = [(FREmbedConfigurationOperation *)self embedFetchCompletionBlock];
  embedConfigurationData = [(FREmbedConfigurationOperation *)self embedConfigurationData];
  embedConfigurationIdentifier = [(FREmbedConfigurationOperation *)self embedConfigurationIdentifier];
  embedFetchCompletionBlock[2](embedFetchCompletionBlock, embedConfigurationData, embedConfigurationIdentifier, errorCopy);
}

@end