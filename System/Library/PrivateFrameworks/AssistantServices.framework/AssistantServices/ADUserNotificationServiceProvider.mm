@interface ADUserNotificationServiceProvider
+ (id)personalDomainNotificationProvider;
- (ADUserNotificationServiceProvider)initWithConnection:(id)connection bundleIdentifier:(id)identifier notificationCategories:(id)categories;
- (void)_clearNotificationWithIdentifier:(id)identifier;
- (void)_snoozeNotifications;
- (void)_startMonitoringUnlockActivity;
- (void)_stopMonitoringUnlockActivity;
- (void)postNotificationRequest:(id)request options:(unint64_t)options responseHandler:(id)handler;
- (void)setDelegate:(id)delegate;
- (void)userNotificationCenter:(id)center didReceiveNotificationResponse:(id)response withCompletionHandler:(id)handler;
- (void)withdrawNotificationRequestWithIdentifier:(id)identifier;
@end

@implementation ADUserNotificationServiceProvider

- (void)userNotificationCenter:(id)center didReceiveNotificationResponse:(id)response withCompletionHandler:(id)handler
{
  responseCopy = response;
  handlerCopy = handler;
  v9 = AFSiriLogContextUtility;
  if (os_log_type_enabled(AFSiriLogContextUtility, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v17 = "[ADUserNotificationServiceProvider userNotificationCenter:didReceiveNotificationResponse:withCompletionHandler:]";
    v18 = 2112;
    v19 = responseCopy;
    _os_log_debug_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "%s %@", buf, 0x16u);
  }

  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1002FFBE0;
  block[3] = &unk_10051E088;
  block[4] = self;
  v14 = responseCopy;
  v15 = handlerCopy;
  v11 = handlerCopy;
  v12 = responseCopy;
  dispatch_async(queue, block);
}

- (void)postNotificationRequest:(id)request options:(unint64_t)options responseHandler:(id)handler
{
  requestCopy = request;
  handlerCopy = handler;
  queue = self->_queue;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1002FFF98;
  v13[3] = &unk_10051C0D8;
  v14 = requestCopy;
  selfCopy = self;
  v16 = handlerCopy;
  optionsCopy = options;
  v11 = handlerCopy;
  v12 = requestCopy;
  dispatch_async(queue, v13);
}

- (void)setDelegate:(id)delegate
{
  delegateCopy = delegate;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1003003CC;
  v7[3] = &unk_10051E010;
  v7[4] = self;
  v8 = delegateCopy;
  v6 = delegateCopy;
  dispatch_async(queue, v7);
}

- (void)_clearNotificationWithIdentifier:(id)identifier
{
  responseHandlersByNotificationID = self->_responseHandlersByNotificationID;
  identifierCopy = identifier;
  [(NSMutableDictionary *)responseHandlersByNotificationID removeObjectForKey:identifierCopy];
  [(NSMutableDictionary *)self->_notificationsToBeSnoozed removeObjectForKey:identifierCopy];

  if (![(NSMutableDictionary *)self->_notificationsToBeSnoozed count])
  {

    [(ADUserNotificationServiceProvider *)self _stopMonitoringUnlockActivity];
  }
}

- (void)_snoozeNotifications
{
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  obj = [(NSMutableDictionary *)self->_notificationsToBeSnoozed allKeys];
  v3 = [obj countByEnumeratingWithState:&v15 objects:v20 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v16;
    do
    {
      v6 = 0;
      do
      {
        if (*v16 != v5)
        {
          objc_enumerationMutation(obj);
        }

        notificationCenter = self->_notificationCenter;
        v19 = *(*(&v15 + 1) + 8 * v6);
        v7 = v19;
        v9 = [NSArray arrayWithObjects:&v19 count:1];
        [(UNUserNotificationCenter *)notificationCenter removeDeliveredNotificationsWithIdentifiers:v9];

        v10 = [(NSMutableDictionary *)self->_notificationsToBeSnoozed objectForKey:v7];
        v13[0] = _NSConcreteStackBlock;
        v13[1] = 3221225472;
        v13[2] = sub_100019D3C;
        v13[3] = &unk_10051C498;
        v14 = v10;
        v11 = v10;
        [(ADUserNotificationServiceProvider *)self postNotificationRequest:v11 completion:v13];

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [obj countByEnumeratingWithState:&v15 objects:v20 count:16];
    }

    while (v4);
  }

  [(ADUserNotificationServiceProvider *)self _stopMonitoringUnlockActivity];
  [(NSMutableDictionary *)self->_notificationsToBeSnoozed removeAllObjects];
}

- (void)_stopMonitoringUnlockActivity
{
  [(FBSDisplayLayoutMonitor *)self->_layoutMonitor invalidate];
  layoutMonitor = self->_layoutMonitor;
  self->_layoutMonitor = 0;
}

- (void)_startMonitoringUnlockActivity
{
  v3 = +[FBSDisplayLayoutMonitorConfiguration configurationForDefaultMainDisplayMonitor];
  [v3 setNeedsUserInteractivePriority:1];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100300724;
  v6[3] = &unk_10051B5A8;
  v6[4] = self;
  [v3 setTransitionHandler:v6];
  v4 = [FBSDisplayLayoutMonitor monitorWithConfiguration:v3];
  layoutMonitor = self->_layoutMonitor;
  self->_layoutMonitor = v4;
}

- (void)withdrawNotificationRequestWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100300A6C;
  v7[3] = &unk_10051E010;
  v8 = identifierCopy;
  selfCopy = self;
  v6 = identifierCopy;
  dispatch_async(queue, v7);
}

- (ADUserNotificationServiceProvider)initWithConnection:(id)connection bundleIdentifier:(id)identifier notificationCategories:(id)categories
{
  connectionCopy = connection;
  identifierCopy = identifier;
  categoriesCopy = categories;
  v29.receiver = self;
  v29.super_class = ADUserNotificationServiceProvider;
  v11 = [(ADUserNotificationServiceProvider *)&v29 init];
  if (v11)
  {
    v12 = kAssistantNotificationBundleID;
    if (identifierCopy)
    {
      v12 = identifierCopy;
    }

    v13 = v12;
    v14 = objc_opt_class();
    v15 = NSStringFromClass(v14);
    uTF8String = [v15 UTF8String];
    v17 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v18 = dispatch_queue_create(uTF8String, v17);

    queue = v11->_queue;
    v11->_queue = v18;

    v20 = [[UNUserNotificationCenter alloc] initWithBundleIdentifier:v13];
    notificationCenter = v11->_notificationCenter;
    v11->_notificationCenter = v20;

    [(UNUserNotificationCenter *)v11->_notificationCenter setDelegate:v11];
    [(UNUserNotificationCenter *)v11->_notificationCenter setWantsNotificationResponsesDelivered];
    [(UNUserNotificationCenter *)v11->_notificationCenter setNotificationCategories:categoriesCopy];
    v22 = objc_alloc_init(NSMutableDictionary);
    responseHandlersByNotificationID = v11->_responseHandlersByNotificationID;
    v11->_responseHandlersByNotificationID = v22;

    v24 = objc_alloc_init(NSMutableDictionary);
    notificationsToBeSnoozed = v11->_notificationsToBeSnoozed;
    v11->_notificationsToBeSnoozed = v24;

    v26 = connectionCopy;
    connection = v11->_connection;
    v11->_connection = v26;
  }

  return v11;
}

+ (id)personalDomainNotificationProvider
{
  if (qword_100590BB0 != -1)
  {
    dispatch_once(&qword_100590BB0, &stru_10051E2C8);
  }

  v3 = qword_100590BB8;

  return v3;
}

@end