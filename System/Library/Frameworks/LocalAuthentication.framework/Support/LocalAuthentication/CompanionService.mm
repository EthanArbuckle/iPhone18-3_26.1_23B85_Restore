@interface CompanionService
- (BOOL)isCompanionDeviceAvailable;
- (CompanionService)initWithUIController:(id)controller workQueue:(id)queue;
- (id)_subprocessors;
- (id)processor;
- (void)cancelAllRequests;
- (void)cancelRequestsForContextID:(id)d;
- (void)domainStateForRequest:(id)request completion:(id)completion;
- (void)startServices;
@end

@implementation CompanionService

- (id)processor
{
  _subprocessors = [(CompanionService *)self _subprocessors];
  v3 = [LACEvaluationRequestProcessorFactory makeProcessorWithSubprocessors:_subprocessors];

  return v3;
}

- (id)_subprocessors
{
  v3 = objc_opt_new();
  [v3 addObject:self->_phoneIntegrationSessionProcessor];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = self->_services;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        processor = [*(*(&v11 + 1) + 8 * i) processor];
        [v3 addObject:processor];
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v3;
}

- (BOOL)isCompanionDeviceAvailable
{
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = self->_services;
  v3 = [(NSArray *)v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = *v8;
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(v2);
        }

        if ([*(*(&v7 + 1) + 8 * i) isCompanionDeviceAvailable])
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [(NSArray *)v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v3;
}

- (CompanionService)initWithUIController:(id)controller workQueue:(id)queue
{
  controllerCopy = controller;
  queueCopy = queue;
  v35.receiver = self;
  v35.super_class = CompanionService;
  v9 = [(CompanionService *)&v35 init];
  if (v9)
  {
    v10 = objc_opt_new();
    v11 = objc_alloc_init(LACOnenessEnvironmentProvider);
    v12 = [LACCompanionAuthenticationSessionMonitor alloc];
    v33 = v11;
    v13 = [v12 initForCompanion:LACCompanionTypeMac environmentProvider:v11 replyQueue:queueCopy];
    onenessSessionMonitor = v9->_onenessSessionMonitor;
    v9->_onenessSessionMonitor = v13;

    v15 = [[OnenessService alloc] initWithEnvironmentProvider:v11 sessionMonitor:v9->_onenessSessionMonitor uiController:controllerCopy workQueue:queueCopy];
    onenessService = v9->_onenessService;
    v9->_onenessService = v15;

    [(NSArray *)v10 addObject:v9->_onenessService];
    v17 = [LACConcurrencyUtilities createDefaultSerialQueueWithIdentifier:@"LACPhoneIntegrationEnvironmentProvider"];
    v18 = [[LACSharingManager alloc] initWithReplyQueue:v17];
    v19 = [LACPhoneIntegrationEnvironmentProvider alloc];
    +[LACEligibilityHelper sharedInstance];
    v20 = v34 = controllerCopy;
    v21 = [v19 initWithEligibilityHelper:v20 sharingManager:v18 workQueue:v17];

    v22 = [LACCompanionAuthenticationSessionMonitor alloc];
    v23 = [v22 initForCompanion:LACCompanionTypeVision environmentProvider:v21 replyQueue:queueCopy];
    phoneIntegrationSessionMonitor = v9->_phoneIntegrationSessionMonitor;
    v9->_phoneIntegrationSessionMonitor = v23;

    v25 = [[PhoneIntegrationService alloc] initWithEnvironmentProvider:v21 sessionMonitor:v9->_phoneIntegrationSessionMonitor workQueue:queueCopy];
    phoneIntegrationService = v9->_phoneIntegrationService;
    v9->_phoneIntegrationService = v25;

    [(NSArray *)v10 addObject:v9->_phoneIntegrationService];
    v27 = [[LACPhoneIntegrationSessionProcessor alloc] initWithEnvironmentProvider:v21 monitor:v9->_phoneIntegrationSessionMonitor];
    phoneIntegrationSessionProcessor = v9->_phoneIntegrationSessionProcessor;
    v9->_phoneIntegrationSessionProcessor = v27;

    queueCopy2 = queue;
    services = v9->_services;
    v9->_services = v10;
    v31 = v10;

    objc_storeStrong(&v9->_uiController, controller);
    objc_storeStrong(&v9->_workQueue, queueCopy2);

    controllerCopy = v34;
  }

  return v9;
}

- (void)cancelAllRequests
{
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = self->_services;
  v3 = [(NSArray *)v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v7 + 1) + 8 * v6) cancelAllRequests];
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [(NSArray *)v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (void)cancelRequestsForContextID:(id)d
{
  dCopy = d;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = self->_services;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v10 + 1) + 8 * v9) cancelRequestsForContextID:{dCopy, v10}];
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)startServices
{
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = self->_services;
  v3 = [(NSArray *)v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v7 + 1) + 8 * v6) startServices];
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [(NSArray *)v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (void)domainStateForRequest:(id)request completion:(id)completion
{
  requestCopy = request;
  completionCopy = completion;
  v7 = dispatch_group_create();
  v33[0] = 0;
  v33[1] = v33;
  v33[2] = 0x2810000000;
  v33[3] = &unk_10004C36D;
  v34 = 0;
  v31[0] = 0;
  v31[1] = v31;
  v31[2] = 0x3032000000;
  v31[3] = sub_10000EC88;
  v31[4] = sub_10000EC98;
  v32 = objc_opt_new();
  v29[0] = 0;
  v29[1] = v29;
  v29[2] = 0x3032000000;
  v29[3] = sub_10000EC88;
  v29[4] = sub_10000EC98;
  v30 = 0;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = self->_services;
  v8 = [(NSArray *)obj countByEnumeratingWithState:&v25 objects:v35 count:16];
  if (v8)
  {
    v9 = *v26;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v26 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v25 + 1) + 8 * i);
        dispatch_group_enter(v7);
        v20[0] = _NSConcreteStackBlock;
        v20[1] = 3221225472;
        v20[2] = sub_10000ECA0;
        v20[3] = &unk_1000552F0;
        v20[4] = v11;
        v22 = v29;
        v23 = v33;
        v24 = v31;
        v21 = v7;
        [v11 domainStateForRequest:requestCopy completion:v20];
      }

      v8 = [(NSArray *)obj countByEnumeratingWithState:&v25 objects:v35 count:16];
    }

    while (v8);
  }

  workQueue = self->_workQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000EF10;
  block[3] = &unk_100055318;
  v17 = completionCopy;
  v18 = v29;
  v19 = v31;
  v13 = completionCopy;
  dispatch_group_notify(v7, workQueue, block);

  _Block_object_dispose(v29, 8);
  _Block_object_dispose(v31, 8);

  _Block_object_dispose(v33, 8);
}

@end