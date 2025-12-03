@interface CDXRetrieveExtensionEnabledStatusOperation
- (CDXRetrieveExtensionEnabledStatusOperation)initWithExtensionIdentifier:(id)identifier queue:(id)queue store:(id)store;
- (CDXRetrieveExtensionEnabledStatusOperation)initWithExtensionIdentifier:(id)identifier store:(id)store;
- (void)performWithCompletionHandler:(id)handler;
@end

@implementation CDXRetrieveExtensionEnabledStatusOperation

- (CDXRetrieveExtensionEnabledStatusOperation)initWithExtensionIdentifier:(id)identifier queue:(id)queue store:(id)store
{
  identifierCopy = identifier;
  queueCopy = queue;
  storeCopy = store;
  v16.receiver = self;
  v16.super_class = CDXRetrieveExtensionEnabledStatusOperation;
  v11 = [(CDXRetrieveExtensionEnabledStatusOperation *)&v16 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_queue, queue);
    v13 = [identifierCopy copy];
    extensionIdentifier = v12->_extensionIdentifier;
    v12->_extensionIdentifier = v13;

    objc_storeStrong(&v12->_store, store);
  }

  return v12;
}

- (CDXRetrieveExtensionEnabledStatusOperation)initWithExtensionIdentifier:(id)identifier store:(id)store
{
  storeCopy = store;
  identifierCopy = identifier;
  v8 = dispatch_queue_create("com.apple.callkit.calldirectory.retrieveextensionenabledstatusoperation", 0);
  v9 = [(CDXRetrieveExtensionEnabledStatusOperation *)self initWithExtensionIdentifier:identifierCopy queue:v8 store:storeCopy];

  return v9;
}

- (void)performWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  queue = [(CDXRetrieveExtensionEnabledStatusOperation *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100008B38;
  v7[3] = &unk_100034B80;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(queue, v7);
}

@end