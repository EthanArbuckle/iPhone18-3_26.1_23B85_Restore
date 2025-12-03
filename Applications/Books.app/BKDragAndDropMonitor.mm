@interface BKDragAndDropMonitor
+ (id)sharedInstance;
- (BKDragAndDropMonitor)init;
- (void)processWithDragSession:(id)session;
@end

@implementation BKDragAndDropMonitor

+ (id)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001AF48;
  block[3] = &unk_100A03560;
  block[4] = self;
  if (qword_100AF7618 != -1)
  {
    dispatch_once(&qword_100AF7618, block);
  }

  v2 = qword_100AF7610;

  return v2;
}

- (BKDragAndDropMonitor)init
{
  v6.receiver = self;
  v6.super_class = BKDragAndDropMonitor;
  v2 = [(BKDragAndDropMonitor *)&v6 init];
  if (v2)
  {
    v3 = [[NSHashTable alloc] initWithOptions:5 capacity:1];
    sessionsTable = v2->_sessionsTable;
    v2->_sessionsTable = v3;
  }

  return v2;
}

- (void)processWithDragSession:(id)session
{
  sessionCopy = session;
  if (![(NSHashTable *)self->_sessionsTable containsObject:sessionCopy])
  {
    [(NSHashTable *)self->_sessionsTable addObject:sessionCopy];
    v5 = objc_opt_new();
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v19 = sessionCopy;
    items = [sessionCopy items];
    v7 = [items countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v21;
      do
      {
        v10 = 0;
        do
        {
          if (*v21 != v9)
          {
            objc_enumerationMutation(items);
          }

          v11 = *(*(&v20 + 1) + 8 * v10);
          objc_opt_class();
          localObject = [v11 localObject];
          v13 = BUDynamicCast();
          storeID = [v13 storeID];

          if (![storeID length])
          {
            objc_opt_class();
            localObject2 = [v11 localObject];
            v16 = BUDynamicCast();
            assetID = [v16 assetID];

            storeID = assetID;
          }

          if ([storeID length])
          {
            [v5 addObject:storeID];
          }

          v10 = v10 + 1;
        }

        while (v8 != v10);
        v8 = [items countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v8);
    }

    v18 = +[BAEventReporter sharedReporter];
    [v18 emitDragDropEventWithContentIDs:v5];

    sessionCopy = v19;
  }
}

@end