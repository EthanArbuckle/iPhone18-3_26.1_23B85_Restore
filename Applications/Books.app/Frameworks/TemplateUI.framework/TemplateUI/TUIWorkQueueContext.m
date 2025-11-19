@interface TUIWorkQueueContext
- (TUIWorkQueueContext)init;
- (TUIWorkQueueContext)initWithQueue:(id)a3;
- (id)activeCallbackQueue;
- (id)activeQueue;
@end

@implementation TUIWorkQueueContext

- (TUIWorkQueueContext)initWithQueue:(id)a3
{
  v5 = a3;
  v37.receiver = self;
  v37.super_class = TUIWorkQueueContext;
  v6 = [(TUIWorkQueueContext *)&v37 init];
  v7 = v6;
  if (v6)
  {
    v6->_priority = 0.5;
    objc_storeStrong(&v6->_workQueue, a3);
    v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v9 = dispatch_queue_attr_make_with_qos_class(v8, QOS_CLASS_USER_INTERACTIVE, 0);
    v10 = dispatch_queue_create_with_target_V2("TUIWorkQueueContext.syncWorkQueue", v9, v7[6]);
    v11 = v7[7];
    v7[7] = v10;

    v12 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v13 = dispatch_queue_attr_make_with_qos_class(v12, QOS_CLASS_USER_INITIATED, 0);
    v14 = dispatch_queue_create_with_target_V2("TUIWorkQueueContext.foregroundWorkQueue", v13, v7[6]);
    v15 = v7[8];
    v7[8] = v14;

    v16 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v17 = dispatch_queue_attr_make_with_qos_class(v16, QOS_CLASS_BACKGROUND, 0);
    v18 = dispatch_queue_create_with_target_V2("TUIWorkQueueContext.backgroundWorkQueue", v17, v7[6]);
    v19 = v7[9];
    v7[9] = v18;

    v20 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v21 = dispatch_queue_attr_make_with_qos_class(v20, QOS_CLASS_DEFAULT, 0);
    v22 = dispatch_queue_create("TUIWorkQueueContext.callbackQueue", v21);
    v23 = v7[1];
    v7[1] = v22;

    v24 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v25 = dispatch_queue_attr_make_with_qos_class(v24, QOS_CLASS_USER_INTERACTIVE, 0);
    v26 = dispatch_queue_create_with_target_V2("TUIWorkQueueContext.syncCallbackQueue", v25, v7[1]);
    v27 = v7[2];
    v7[2] = v26;

    v28 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v29 = dispatch_queue_attr_make_with_qos_class(v28, QOS_CLASS_USER_INITIATED, 0);
    v30 = dispatch_queue_create_with_target_V2("TUIWorkQueueContext.foregroundCallbackQueue", v29, v7[1]);
    v31 = v7[3];
    v7[3] = v30;

    v32 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v33 = dispatch_queue_attr_make_with_qos_class(v32, QOS_CLASS_BACKGROUND, 0);
    v34 = dispatch_queue_create_with_target_V2("TUIWorkQueueContext.backgroundCallbackQueue", v33, v7[1]);
    v35 = v7[4];
    v7[4] = v34;
  }

  return v7;
}

- (TUIWorkQueueContext)init
{
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v4 = dispatch_queue_attr_make_with_qos_class(v3, QOS_CLASS_DEFAULT, 0);
  v5 = dispatch_queue_create("TUIWorkQueueContext.workQueue", v4);
  v6 = [(TUIWorkQueueContext *)self initWithQueue:v5];

  return v6;
}

- (id)activeQueue
{
  if ([(TUIWorkQueueContext *)self synchronousTransactionInProgress])
  {
    v3 = 56;
  }

  else
  {
    [(TUIWorkQueueContext *)self priority];
    v3 = 64;
    if (v4 < 0.75)
    {
      v3 = 72;
    }
  }

  v5 = *(&self->super.isa + v3);

  return v5;
}

- (id)activeCallbackQueue
{
  if ([(TUIWorkQueueContext *)self synchronousTransactionInProgress])
  {
    v3 = 16;
  }

  else
  {
    [(TUIWorkQueueContext *)self priority];
    v3 = 24;
    if (v4 < 0.75)
    {
      v3 = 32;
    }
  }

  v5 = *(&self->super.isa + v3);

  return v5;
}

@end