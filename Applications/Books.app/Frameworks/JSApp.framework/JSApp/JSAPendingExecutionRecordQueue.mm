@interface JSAPendingExecutionRecordQueue
- (JSAPendingExecutionRecordQueue)init;
- (NSMutableArray)records;
- (id)dequeueAllRecords;
- (void)enqueueRecord:(id)record;
@end

@implementation JSAPendingExecutionRecordQueue

- (JSAPendingExecutionRecordQueue)init
{
  v8.receiver = self;
  v8.super_class = JSAPendingExecutionRecordQueue;
  v2 = [(JSAPendingExecutionRecordQueue *)&v8 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_attr_make_with_qos_class(v3, QOS_CLASS_USER_INTERACTIVE, 0);
    v5 = dispatch_queue_create("JSAPendingExecutionRecordQueue.accessQueue", v4);
    accessQueue = v2->_accessQueue;
    v2->_accessQueue = v5;
  }

  return v2;
}

- (void)enqueueRecord:(id)record
{
  recordCopy = record;
  accessQueue = self->_accessQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_7A98;
  v7[3] = &unk_B2128;
  v7[4] = self;
  v8 = recordCopy;
  v6 = recordCopy;
  dispatch_sync(accessQueue, v7);
}

- (id)dequeueAllRecords
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_7BDC;
  v10 = sub_7BEC;
  v11 = 0;
  accessQueue = self->_accessQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_7BF4;
  v5[3] = &unk_B2508;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(accessQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (NSMutableArray)records
{
  records = self->_records;
  if (!records)
  {
    v4 = objc_opt_new();
    v5 = self->_records;
    self->_records = v4;

    records = self->_records;
  }

  return records;
}

@end