@interface CLSSaveResponse
- (CLSSaveResponse)init;
- (id)savedObjectWithObjectID:(id)d;
- (void)clientRemote_deliverObject:(id)object;
- (void)clientRemote_saveDone:(id)done;
@end

@implementation CLSSaveResponse

- (CLSSaveResponse)init
{
  v14.receiver = self;
  v14.super_class = CLSSaveResponse;
  v2 = [(CLSSaveResponse *)&v14 init];
  if (v2)
  {
    v3 = objc_opt_new();
    objectsByID = v2->_objectsByID;
    v2->_objectsByID = v3;

    v5 = CLSDispatchQueueName(v2, 0);
    v8 = objc_msgSend_UTF8String(v5, v6, v7);
    v9 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    if (qword_280B2A0C0 != -1)
    {
      dispatch_once(&qword_280B2A0C0, &unk_284A077E8);
    }

    v10 = qword_280B2A0B8;
    v11 = dispatch_queue_create_with_target_V2(v8, v9, v10);
    queue = v2->_queue;
    v2->_queue = v11;
  }

  return v2;
}

- (id)savedObjectWithObjectID:(id)d
{
  dCopy = d;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_236F87DF0;
  v16 = sub_236F87E00;
  v17 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_236F87E08;
  block[3] = &unk_278A17C30;
  v10 = dCopy;
  v11 = &v12;
  block[4] = self;
  v6 = dCopy;
  dispatch_sync(queue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

- (void)clientRemote_deliverObject:(id)object
{
  objectCopy = object;
  objc_initWeak(&location, self);
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_236F87F24;
  block[3] = &unk_278A179D0;
  objc_copyWeak(&v9, &location);
  v8 = objectCopy;
  v6 = objectCopy;
  dispatch_async(queue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (void)clientRemote_saveDone:(id)done
{
  doneCopy = done;
  v5 = MEMORY[0x2383C3E80](self->_completion);
  v6 = v5;
  if (v5)
  {
    queue = self->_queue;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = sub_236F8811C;
    v8[3] = &unk_278A17C80;
    v10 = v5;
    v9 = doneCopy;
    dispatch_async(queue, v8);
  }
}

@end