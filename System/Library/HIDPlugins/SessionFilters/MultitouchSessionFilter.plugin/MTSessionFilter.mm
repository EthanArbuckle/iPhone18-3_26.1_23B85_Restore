@interface MTSessionFilter
- (MTSessionFilter)initWithSession:(id)session;
- (id)filterEvent:(id)event forService:(id)service;
- (void)serviceNotification:(id)notification added:(BOOL)added;
- (void)setDispatchQueue:(id)queue;
@end

@implementation MTSessionFilter

- (MTSessionFilter)initWithSession:(id)session
{
  v8.receiver = self;
  v8.super_class = MTSessionFilter;
  v3 = [(MTSessionFilter *)&v8 init];
  if (v3)
  {
    v4 = objc_opt_new();
    v5 = v4;
    if (v4 && [v4 count])
    {
      [(MTSessionFilter *)v3 setManagers:v5];
      v6 = v3;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)serviceNotification:(id)notification added:(BOOL)added
{
  addedCopy = added;
  notificationCopy = notification;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  managers = [(MTSessionFilter *)self managers];
  v8 = [managers countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(managers);
        }

        v12 = *(*(&v13 + 1) + 8 * i);
        if (addedCopy)
        {
          [v12 registerService:notificationCopy];
        }

        else
        {
          [v12 unregisterService:notificationCopy];
        }
      }

      v9 = [managers countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }
}

- (void)setDispatchQueue:(id)queue
{
  queueCopy = queue;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  managers = [(MTSessionFilter *)self managers];
  v6 = [managers countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(managers);
        }

        [*(*(&v10 + 1) + 8 * v9) setQueue:queueCopy];
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [managers countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (id)filterEvent:(id)event forService:(id)service
{
  eventCopy = event;
  serviceCopy = service;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  managers = [(MTSessionFilter *)self managers];
  v9 = [managers countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
LABEL_3:
    v12 = 0;
    v13 = eventCopy;
    while (1)
    {
      if (*v16 != v11)
      {
        objc_enumerationMutation(managers);
      }

      eventCopy = [*(*(&v15 + 1) + 8 * v12) filterEvent:v13 fromService:serviceCopy];

      if (!eventCopy)
      {
        break;
      }

      v12 = v12 + 1;
      v13 = eventCopy;
      if (v10 == v12)
      {
        v10 = [managers countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v10)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  return eventCopy;
}

@end