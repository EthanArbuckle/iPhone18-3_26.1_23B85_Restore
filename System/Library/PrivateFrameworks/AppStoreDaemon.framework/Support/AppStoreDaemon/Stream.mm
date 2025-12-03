@interface Stream
- (NSError)streamError;
- (Stream)init;
- (StreamDelegate)delegate;
- (unint64_t)streamStatus;
- (void)open;
- (void)setDelegate:(id)delegate;
@end

@implementation Stream

- (Stream)init
{
  v15.receiver = self;
  v15.super_class = Stream;
  v2 = [(Stream *)&v15 init];
  if (v2)
  {
    v3 = objc_alloc_init(UnfairLock);
    v4 = *(v2 + 3);
    *(v2 + 3) = v3;

    v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_queue_create("com.apple.appstored.Stream.DelegateQueue", v5);
    v7 = *(v2 + 1);
    *(v2 + 1) = v6;

    v8 = dispatch_source_create(&_dispatch_source_type_data_or, 0, 0, *(v2 + 1));
    v9 = *(v2 + 2);
    *(v2 + 2) = v8;

    objc_initWeak(&location, v2);
    v10 = *(v2 + 2);
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1002BAD58;
    v12[3] = &unk_10051F888;
    objc_copyWeak(&v13, &location);
    dispatch_source_set_event_handler(v10, v12);
    dispatch_activate(*(v2 + 2));
    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }

  return v2;
}

- (StreamDelegate)delegate
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_1002BAEFC;
  v10 = sub_1002BAF0C;
  v11 = 0;
  lock = self->_lock;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1002BAF14;
  v5[3] = &unk_10051B638;
  v5[4] = self;
  v5[5] = &v6;
  sub_100379C5C(lock, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)setDelegate:(id)delegate
{
  delegateCopy = delegate;
  lock = self->_lock;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1002BAFF8;
  v7[3] = &unk_10051B570;
  v7[4] = self;
  v8 = delegateCopy;
  v6 = delegateCopy;
  sub_100379C5C(lock, v7);
}

- (NSError)streamError
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_1002BAEFC;
  v10 = sub_1002BAF0C;
  v11 = 0;
  lock = self->_lock;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1002BB10C;
  v5[3] = &unk_10051B638;
  v5[4] = self;
  v5[5] = &v6;
  sub_100379C5C(lock, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (unint64_t)streamStatus
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  lock = self->_lock;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1002BB298;
  v5[3] = &unk_10051B638;
  v5[4] = self;
  v5[5] = &v6;
  sub_100379C5C(lock, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)open
{
  sub_1002BB2AC(self, 2);
  if (self)
  {
    delegateSource = self->_delegateSource;

    dispatch_source_merge_data(delegateSource, 1uLL);
  }
}

@end