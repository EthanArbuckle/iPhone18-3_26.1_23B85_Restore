@interface CDXPrioritizeExtensionsOperation
- (CDXPrioritizeExtensionsOperation)initWithPrioritizedExtensionIdentifiers:(id)a3 store:(id)a4;
- (CDXPrioritizeExtensionsOperation)initWithPrioritizedExtensionIdentifiers:(id)a3 store:(id)a4 identificationEntriesChangedNotifier:(id)a5;
- (void)performWithCompletionHandler:(id)a3;
@end

@implementation CDXPrioritizeExtensionsOperation

- (CDXPrioritizeExtensionsOperation)initWithPrioritizedExtensionIdentifiers:(id)a3 store:(id)a4 identificationEntriesChangedNotifier:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v17.receiver = self;
  v17.super_class = CDXPrioritizeExtensionsOperation;
  v11 = [(CDXPrioritizeExtensionsOperation *)&v17 init];
  if (v11)
  {
    v12 = dispatch_queue_create("com.apple.callkit.calldirectory.prioritizeextensionsoperation", 0);
    queue = v11->_queue;
    v11->_queue = v12;

    objc_storeStrong(&v11->_store, a4);
    v14 = [v8 copy];
    prioritizedExtensionIdentifiers = v11->_prioritizedExtensionIdentifiers;
    v11->_prioritizedExtensionIdentifiers = v14;

    objc_storeStrong(&v11->_identificationEntriesChangedNotifier, a5);
  }

  return v11;
}

- (CDXPrioritizeExtensionsOperation)initWithPrioritizedExtensionIdentifiers:(id)a3 store:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [CDXNotifydNotifier alloc];
  v9 = [(CDXNotifydNotifier *)v8 initWithNotificationName:CXCallDirectoryManagerIdentificationEntriesChangedNotification];
  v10 = [(CDXPrioritizeExtensionsOperation *)self initWithPrioritizedExtensionIdentifiers:v7 store:v6 identificationEntriesChangedNotifier:v9];

  return v10;
}

- (void)performWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(CDXPrioritizeExtensionsOperation *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100011A78;
  v7[3] = &unk_100034B80;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

@end