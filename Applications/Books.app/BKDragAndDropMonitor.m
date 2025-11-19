@interface BKDragAndDropMonitor
+ (id)sharedInstance;
- (BKDragAndDropMonitor)init;
- (void)processWithDragSession:(id)a3;
@end

@implementation BKDragAndDropMonitor

+ (id)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001AF48;
  block[3] = &unk_100A03560;
  block[4] = a1;
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

- (void)processWithDragSession:(id)a3
{
  v4 = a3;
  if (![(NSHashTable *)self->_sessionsTable containsObject:v4])
  {
    [(NSHashTable *)self->_sessionsTable addObject:v4];
    v5 = objc_opt_new();
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v19 = v4;
    v6 = [v4 items];
    v7 = [v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
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
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v20 + 1) + 8 * v10);
          objc_opt_class();
          v12 = [v11 localObject];
          v13 = BUDynamicCast();
          v14 = [v13 storeID];

          if (![v14 length])
          {
            objc_opt_class();
            v15 = [v11 localObject];
            v16 = BUDynamicCast();
            v17 = [v16 assetID];

            v14 = v17;
          }

          if ([v14 length])
          {
            [v5 addObject:v14];
          }

          v10 = v10 + 1;
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v8);
    }

    v18 = +[BAEventReporter sharedReporter];
    [v18 emitDragDropEventWithContentIDs:v5];

    v4 = v19;
  }
}

@end