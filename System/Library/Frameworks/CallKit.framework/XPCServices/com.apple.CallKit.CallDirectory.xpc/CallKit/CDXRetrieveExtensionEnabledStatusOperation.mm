@interface CDXRetrieveExtensionEnabledStatusOperation
- (CDXRetrieveExtensionEnabledStatusOperation)initWithExtensionIdentifier:(id)a3 queue:(id)a4 store:(id)a5;
- (CDXRetrieveExtensionEnabledStatusOperation)initWithExtensionIdentifier:(id)a3 store:(id)a4;
- (void)performWithCompletionHandler:(id)a3;
@end

@implementation CDXRetrieveExtensionEnabledStatusOperation

- (CDXRetrieveExtensionEnabledStatusOperation)initWithExtensionIdentifier:(id)a3 queue:(id)a4 store:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v16.receiver = self;
  v16.super_class = CDXRetrieveExtensionEnabledStatusOperation;
  v11 = [(CDXRetrieveExtensionEnabledStatusOperation *)&v16 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_queue, a4);
    v13 = [v8 copy];
    extensionIdentifier = v12->_extensionIdentifier;
    v12->_extensionIdentifier = v13;

    objc_storeStrong(&v12->_store, a5);
  }

  return v12;
}

- (CDXRetrieveExtensionEnabledStatusOperation)initWithExtensionIdentifier:(id)a3 store:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = dispatch_queue_create("com.apple.callkit.calldirectory.retrieveextensionenabledstatusoperation", 0);
  v9 = [(CDXRetrieveExtensionEnabledStatusOperation *)self initWithExtensionIdentifier:v7 queue:v8 store:v6];

  return v9;
}

- (void)performWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(CDXRetrieveExtensionEnabledStatusOperation *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100008B38;
  v7[3] = &unk_100034B80;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

@end