@interface CMStepCounter
+ (BOOL)isStepCountingAvailable;
- (CMStepCounter)init;
- (void)dealloc;
- (void)deleteHistory;
- (void)getTotalCountToQueue:(id)queue withHandler:(id)handler;
- (void)queryStepCountStartingFrom:(NSDate *)start to:(NSDate *)end toQueue:(NSOperationQueue *)queue withHandler:(CMStepQueryHandler)handler;
- (void)startStepCountingUpdatesToQueue:(NSOperationQueue *)queue updateOn:(NSInteger)stepCounts withHandler:(CMStepUpdateHandler)handler;
- (void)stopStepCountingUpdates;
@end

@implementation CMStepCounter

- (CMStepCounter)init
{
  v4.receiver = self;
  v4.super_class = CMStepCounter;
  v2 = [(CMStepCounter *)&v4 init];
  if (v2)
  {
    v2->_stepcounterProxy = objc_alloc_init(CMStepCounterProxy);
  }

  return v2;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CMStepCounter;
  [(CMStepCounter *)&v3 dealloc];
}

+ (BOOL)isStepCountingAvailable
{
  if (sub_19B4215D8())
  {
    return 0;
  }

  return objc_msgSend_isStepCountingAvailable(CMPedometer, v2, v3);
}

- (void)queryStepCountStartingFrom:(NSDate *)start to:(NSDate *)end toQueue:(NSOperationQueue *)queue withHandler:(CMStepQueryHandler)handler
{
  if (start)
  {
    if (end)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v13 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, 0);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v13, v14, a2, self, @"CMStepCounter.mm", 218, @"Invalid parameter not satisfying: %@", @"start");
    if (end)
    {
LABEL_3:
      if (queue)
      {
        goto LABEL_4;
      }

LABEL_8:
      v17 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, start);
      objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v17, v18, a2, self, @"CMStepCounter.mm", 220, @"Invalid parameter not satisfying: %@", @"queue");
      if (handler)
      {
        goto LABEL_5;
      }

LABEL_9:
      v19 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, start);
      objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v19, v20, a2, self, @"CMStepCounter.mm", 221, @"Invalid parameter not satisfying: %@", @"handler");
      goto LABEL_5;
    }
  }

  v15 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, start);
  objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v15, v16, a2, self, @"CMStepCounter.mm", 219, @"Invalid parameter not satisfying: %@", @"end");
  if (!queue)
  {
    goto LABEL_8;
  }

LABEL_4:
  if (!handler)
  {
    goto LABEL_9;
  }

LABEL_5:
  v12 = *(objc_msgSend_stepcounterProxy(self, a2, start) + 24);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_19B75EAE4;
  block[3] = &unk_1E7532C58;
  block[4] = self;
  block[5] = start;
  block[6] = end;
  block[7] = queue;
  block[8] = handler;
  dispatch_async(v12, block);
}

- (void)startStepCountingUpdatesToQueue:(NSOperationQueue *)queue updateOn:(NSInteger)stepCounts withHandler:(CMStepUpdateHandler)handler
{
  if (!queue)
  {
    v11 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, 0);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v11, v12, a2, self, @"CMStepCounter.mm", 237, @"Invalid parameter not satisfying: %@", @"queue");
    if (handler)
    {
      goto LABEL_3;
    }

LABEL_5:
    v13 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, queue);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v13, v14, a2, self, @"CMStepCounter.mm", 238, @"Invalid parameter not satisfying: %@", @"handler");
    goto LABEL_3;
  }

  if (!handler)
  {
    goto LABEL_5;
  }

LABEL_3:
  v10 = *(objc_msgSend_stepcounterProxy(self, a2, queue) + 24);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_19B75ED70;
  block[3] = &unk_1E7533780;
  block[4] = self;
  block[5] = queue;
  block[6] = handler;
  block[7] = stepCounts;
  dispatch_async(v10, block);
}

- (void)stopStepCountingUpdates
{
  v4 = *(objc_msgSend_stepcounterProxy(self, a2, v2) + 24);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_19B75F0E4;
  block[3] = &unk_1E7532988;
  block[4] = self;
  dispatch_sync(v4, block);
}

- (void)getTotalCountToQueue:(id)queue withHandler:(id)handler
{
  v5 = objc_msgSend_date(MEMORY[0x1E695DF00], a2, queue);
  v8 = objc_msgSend_dateByAddingTimeInterval_(v5, v6, v7, -5184000.0);

  MEMORY[0x1EEE66B58](self, sel_queryStepCountStartingFrom_to_toQueue_withHandler_, v8);
}

- (void)deleteHistory
{
  v4 = *(objc_msgSend_stepcounterProxy(self, a2, v2) + 24);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_19B75F4BC;
  block[3] = &unk_1E7532988;
  block[4] = self;
  dispatch_sync(v4, block);
}

@end