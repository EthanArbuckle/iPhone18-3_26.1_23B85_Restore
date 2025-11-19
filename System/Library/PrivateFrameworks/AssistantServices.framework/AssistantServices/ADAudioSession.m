@interface ADAudioSession
+ (id)sharedSession;
- (ADAudioSession)init;
- (id)currentInputRoute;
- (id)currentOutputRoute;
@end

@implementation ADAudioSession

- (id)currentOutputRoute
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_10008BB9C;
  v10 = sub_10008BBAC;
  v11 = 0;
  queue = self->_queue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10008BBB4;
  v5[3] = &unk_10051D4A0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (id)currentInputRoute
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_10008BB9C;
  v10 = sub_10008BBAC;
  v11 = 0;
  queue = self->_queue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10008D0D8;
  v5[3] = &unk_10051D4A0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (ADAudioSession)init
{
  v7.receiver = self;
  v7.super_class = ADAudioSession;
  v2 = [(ADAudioSession *)&v7 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create(0, v3);

    queue = v2->_queue;
    v2->_queue = v4;
  }

  return v2;
}

+ (id)sharedSession
{
  if (qword_10058FE70 != -1)
  {
    dispatch_once(&qword_10058FE70, &stru_10050FBD0);
  }

  v3 = qword_10058FE68;

  return v3;
}

@end