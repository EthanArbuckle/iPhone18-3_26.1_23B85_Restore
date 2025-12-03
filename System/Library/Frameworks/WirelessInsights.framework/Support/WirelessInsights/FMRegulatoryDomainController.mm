@interface FMRegulatoryDomainController
- (FMModel)fmModel;
- (FMRegulatoryDomainController)initWithFMModel:(id)model;
- (id)getCurrentEstimates;
- (void)dealloc;
- (void)notifyClient;
@end

@implementation FMRegulatoryDomainController

- (FMRegulatoryDomainController)initWithFMModel:(id)model
{
  modelCopy = model;
  v15.receiver = self;
  v15.super_class = FMRegulatoryDomainController;
  v5 = [(FMRegulatoryDomainController *)&v15 init];
  v6 = v5;
  if (!v5)
  {
    if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_ERROR))
    {
      sub_1001FBA20();
    }

    goto LABEL_9;
  }

  [(FMRegulatoryDomainController *)v5 setFmModel:modelCopy];
  [(FMRegulatoryDomainController *)v6 setQueue:dispatch_queue_create("com.apple.wirelessinsightsd.FederatedMobility.RegulatoryDomainController", 0)];
  if (![(FMRegulatoryDomainController *)v6 queue])
  {
LABEL_9:
    v9 = 0;
    goto LABEL_14;
  }

  out_token = -1;
  objc_initWeak(&location, v6);
  uTF8String = [kRegulatoryDomainUpdateNotification UTF8String];
  queue = [(FMRegulatoryDomainController *)v6 queue];
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_100029B2C;
  handler[3] = &unk_1002AB2D8;
  objc_copyWeak(&v12, &location);
  if (notify_register_dispatch(uTF8String, &out_token, queue, handler))
  {
    if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_ERROR))
    {
      sub_1001FB9AC();
    }

    v9 = 0;
  }

  else
  {
    [(FMRegulatoryDomainController *)v6 setNotificationToken:out_token];
    if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_DEBUG))
    {
      sub_1001FB9EC();
    }

    v9 = v6;
  }

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
LABEL_14:

  return v9;
}

- (void)dealloc
{
  if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_DEBUG))
  {
    sub_1001FBA94();
  }

  if ([(FMRegulatoryDomainController *)self notificationToken]!= -1)
  {
    notify_cancel([(FMRegulatoryDomainController *)self notificationToken]);
  }

  if ([(FMRegulatoryDomainController *)self queue])
  {
    dispatch_release([(FMRegulatoryDomainController *)self queue]);
  }

  v3.receiver = self;
  v3.super_class = FMRegulatoryDomainController;
  [(FMRegulatoryDomainController *)&v3 dealloc];
}

- (void)notifyClient
{
  fmModel = [(FMRegulatoryDomainController *)self fmModel];
  getCurrentEstimates = [(FMRegulatoryDomainController *)self getCurrentEstimates];
  [fmModel handleRegulatoryDomainEstimateUpdate:getCurrentEstimates];
}

- (id)getCurrentEstimates
{
  v2 = +[RDEstimate currentEstimates];
  if (v2)
  {
    v3 = objc_alloc_init(NSMutableArray);
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v4 = v2;
    v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v5)
    {
      v6 = *v13;
      do
      {
        for (i = 0; i != v5; i = i + 1)
        {
          if (*v13 != v6)
          {
            objc_enumerationMutation(v4);
          }

          countryCode = [*(*(&v12 + 1) + 8 * i) countryCode];
          [v3 addObject:countryCode];
        }

        v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v5);
    }

    v9 = *(qword_1002DBE98 + 136);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      sub_1001FBAC8(v3, v9);
    }

    v10 = [v3 copy];
  }

  else
  {
    v10 = &__NSArray0__struct;
  }

  return v10;
}

- (FMModel)fmModel
{
  WeakRetained = objc_loadWeakRetained(&self->_fmModel);

  return WeakRetained;
}

@end