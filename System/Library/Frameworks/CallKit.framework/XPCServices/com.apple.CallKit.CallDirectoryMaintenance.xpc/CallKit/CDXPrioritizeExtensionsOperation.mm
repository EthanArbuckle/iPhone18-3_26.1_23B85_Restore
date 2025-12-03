@interface CDXPrioritizeExtensionsOperation
- (CDXPrioritizeExtensionsOperation)initWithPrioritizedExtensionIdentifiers:(id)identifiers store:(id)store;
- (CDXPrioritizeExtensionsOperation)initWithPrioritizedExtensionIdentifiers:(id)identifiers store:(id)store identificationEntriesChangedNotifier:(id)notifier;
- (void)performWithCompletionHandler:(id)handler;
@end

@implementation CDXPrioritizeExtensionsOperation

- (CDXPrioritizeExtensionsOperation)initWithPrioritizedExtensionIdentifiers:(id)identifiers store:(id)store identificationEntriesChangedNotifier:(id)notifier
{
  identifiersCopy = identifiers;
  storeCopy = store;
  notifierCopy = notifier;
  v17.receiver = self;
  v17.super_class = CDXPrioritizeExtensionsOperation;
  v11 = [(CDXPrioritizeExtensionsOperation *)&v17 init];
  if (v11)
  {
    v12 = dispatch_queue_create("com.apple.callkit.calldirectory.prioritizeextensionsoperation", 0);
    queue = v11->_queue;
    v11->_queue = v12;

    objc_storeStrong(&v11->_store, store);
    v14 = [identifiersCopy copy];
    prioritizedExtensionIdentifiers = v11->_prioritizedExtensionIdentifiers;
    v11->_prioritizedExtensionIdentifiers = v14;

    objc_storeStrong(&v11->_identificationEntriesChangedNotifier, notifier);
  }

  return v11;
}

- (CDXPrioritizeExtensionsOperation)initWithPrioritizedExtensionIdentifiers:(id)identifiers store:(id)store
{
  storeCopy = store;
  identifiersCopy = identifiers;
  v8 = [CDXNotifydNotifier alloc];
  v9 = [(CDXNotifydNotifier *)v8 initWithNotificationName:CXCallDirectoryManagerIdentificationEntriesChangedNotification];
  v10 = [(CDXPrioritizeExtensionsOperation *)self initWithPrioritizedExtensionIdentifiers:identifiersCopy store:storeCopy identificationEntriesChangedNotifier:v9];

  return v10;
}

- (void)performWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  queue = [(CDXPrioritizeExtensionsOperation *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100011A78;
  v7[3] = &unk_100034B80;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(queue, v7);
}

@end