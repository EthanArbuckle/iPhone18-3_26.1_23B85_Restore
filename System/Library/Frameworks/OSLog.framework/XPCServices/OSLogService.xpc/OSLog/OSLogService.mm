@interface OSLogService
- (OSLogService)init;
- (id)_queue_getNextOSLogEntryWithReply:(id)reply;
- (void)_queue_setupWithPredicate:(id)predicate reply:(id)reply;
- (void)getNextOSLogEntryWithReply:(id)reply;
- (void)invalidate;
- (void)setUpWithPredicate:(id)predicate reply:(id)reply;
@end

@implementation OSLogService

- (id)_queue_getNextOSLogEntryWithReply:(id)reply
{
  dispatch_assert_queue_V2(self->_serial_queue);
  if (self->_done || ![(NSMutableArray *)self->_events count])
  {
    v4 = 0;
  }

  else
  {
    v4 = [(NSMutableArray *)self->_events objectAtIndexedSubscript:0];
    [(NSMutableArray *)self->_events removeObjectAtIndex:0];
  }

  return v4;
}

- (void)getNextOSLogEntryWithReply:(id)reply
{
  replyCopy = reply;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = sub_100000F28;
  v14 = sub_100000F38;
  v15 = 0;
  serial_queue = self->_serial_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100000F40;
  block[3] = &unk_100004350;
  v9 = &v10;
  block[4] = self;
  v6 = replyCopy;
  v8 = v6;
  dispatch_sync(serial_queue, block);
  (*(v6 + 2))(v6, v11[5]);

  _Block_object_dispose(&v10, 8);
}

- (void)invalidate
{
  serial_queue = self->_serial_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100001004;
  block[3] = &unk_100004300;
  block[4] = self;
  dispatch_sync(serial_queue, block);
}

- (void)_queue_setupWithPredicate:(id)predicate reply:(id)reply
{
  predicateCopy = predicate;
  replyCopy = reply;
  dispatch_assert_queue_V2(self->_serial_queue);
  v8 = [NSPredicate predicateWithFormat:@"processIdentifier == %d and processIdentifierVersion == %u", self->_callingProcessIdentifier, self->_callingProcessIdentifierVersion];
  v9 = v8;
  if (predicateCopy)
  {
    v49[0] = v8;
    v49[1] = predicateCopy;
    v10 = [NSArray arrayWithObjects:v49 count:2];
    v11 = [[NSCompoundPredicate alloc] initWithType:1 subpredicates:v10];
    predicate = self->_predicate;
    self->_predicate = v11;
  }

  else
  {
    objc_storeStrong(&self->_predicate, v8);
  }

  v41 = 0;
  v42 = &v41;
  v43 = 0x3032000000;
  v44 = sub_100000F28;
  v45 = sub_100000F38;
  v46 = 0;
  v13 = +[OSLogEventStore localStore];
  v14 = v13;
  if (v13)
  {
    v35 = 0;
    v36 = &v35;
    v37 = 0x3032000000;
    v38 = sub_100000F28;
    v39 = sub_100000F38;
    v40 = 0;
    v34[0] = _NSConcreteStackBlock;
    v34[1] = 3221225472;
    v34[2] = sub_100001654;
    v34[3] = &unk_100004288;
    v34[4] = &v41;
    v34[5] = &v35;
    [v13 prepareWithCompletionHandler:v34];
    if (v36[5])
    {
      v15 = [OSLogEventStream alloc];
      v16 = [v15 initWithSource:v36[5]];
      stream = self->_stream;
      self->_stream = v16;

      [(OSLogEventStream *)self->_stream setFilterPredicate:self->_predicate];
      [(OSLogEventStream *)self->_stream setFlags:39];
      v18 = objc_alloc_init(NSMutableArray);
      events = self->_events;
      self->_events = v18;

      objc_initWeak(&location, self);
      v20 = self->_stream;
      v31[0] = _NSConcreteStackBlock;
      v31[1] = 3221225472;
      v31[2] = sub_1000016D8;
      v31[3] = &unk_1000042D8;
      objc_copyWeak(&v32, &location);
      [(OSLogEventStream *)v20 setEventHandler:v31];
      v29[0] = 0;
      v29[1] = v29;
      v29[2] = 0x3032000000;
      v29[3] = sub_100000F28;
      v29[4] = sub_100000F38;
      v30 = os_transaction_create();
      v21 = self->_stream;
      v25[0] = _NSConcreteStackBlock;
      v25[1] = 3221225472;
      v25[2] = sub_1000017B0;
      v25[3] = &unk_100004328;
      objc_copyWeak(&v28, &location);
      v26 = replyCopy;
      v27 = v29;
      [(OSLogEventStream *)v21 setInvalidationHandler:v25];
      [(OSLogEventStream *)self->_stream _activateStreamFromTimeIntervalSinceLastBoot:0.0];

      objc_destroyWeak(&v28);
      _Block_object_dispose(v29, 8);

      objc_destroyWeak(&v32);
      objc_destroyWeak(&location);
    }

    else
    {
      (*(replyCopy + 2))(replyCopy, v42[5]);
    }

    _Block_object_dispose(&v35, 8);
  }

  else
  {
    v47 = NSLocalizedDescriptionKey;
    v48 = @"No access to logs";
    v22 = [NSDictionary dictionaryWithObjects:&v48 forKeys:&v47 count:1];
    v23 = [NSError errorWithDomain:OSLogErrorDomain code:-1 userInfo:v22];
    v24 = v42[5];
    v42[5] = v23;

    (*(replyCopy + 2))(replyCopy, v42[5]);
  }

  _Block_object_dispose(&v41, 8);
}

- (void)setUpWithPredicate:(id)predicate reply:(id)reply
{
  predicateCopy = predicate;
  replyCopy = reply;
  serial_queue = self->_serial_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100001A24;
  block[3] = &unk_100004260;
  block[4] = self;
  v12 = predicateCopy;
  v13 = replyCopy;
  v9 = replyCopy;
  v10 = predicateCopy;
  dispatch_sync(serial_queue, block);
}

- (OSLogService)init
{
  v9.receiver = self;
  v9.super_class = OSLogService;
  v2 = [(OSLogService *)&v9 init];
  if (v2)
  {
    v3 = os_transaction_create();
    transaction = v2->_transaction;
    v2->_transaction = v3;

    v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_queue_create("com.apple.OSLogService.serial_queue", v5);
    serial_queue = v2->_serial_queue;
    v2->_serial_queue = v6;

    v2->_done = 0;
  }

  return v2;
}

@end