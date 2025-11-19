@interface MRAPRecordingEndpoint
+ (id)sharedEndpoint;
- (MRAPRecordingEndpoint)init;
- (NSArray)delegates;
- (void)addDelegate:(id)a3;
- (void)dealloc;
- (void)removeAllDelegates;
- (void)removeDelegate:(id)a3;
@end

@implementation MRAPRecordingEndpoint

+ (id)sharedEndpoint
{
  if (qword_CF60 != -1)
  {
    sub_2F3C();
  }

  v3 = qword_CF68;

  return v3;
}

- (MRAPRecordingEndpoint)init
{
  v10.receiver = self;
  v10.super_class = MRAPRecordingEndpoint;
  v2 = [(MRAPRecordingEndpoint *)&v10 init];
  if (v2)
  {
    v3 = objc_opt_class();
    Name = class_getName(v3);
    v5 = dispatch_queue_create(Name, 0);
    serialQueue = v2->_serialQueue;
    v2->_serialQueue = v5;

    v7 = [[NSPointerArray alloc] initWithOptions:5];
    delegates = v2->_delegates;
    v2->_delegates = v7;

    [(MRAPRecordingEndpoint *)v2 _setupVoiceRecordingEndpoint];
  }

  return v2;
}

- (void)dealloc
{
  [(MRAPRecordingEndpoint *)self _tearDownVoiceRecordingEndpoint];
  v3.receiver = self;
  v3.super_class = MRAPRecordingEndpoint;
  [(MRAPRecordingEndpoint *)&v3 dealloc];
}

- (NSArray)delegates
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_F64;
  v10 = sub_F74;
  v11 = 0;
  serialQueue = self->_serialQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_F7C;
  v5[3] = &unk_8280;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(serialQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)addDelegate:(id)a3
{
  v4 = a3;
  serialQueue = self->_serialQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_113C;
  v7[3] = &unk_82A8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(serialQueue, v7);
}

- (void)removeDelegate:(id)a3
{
  v4 = a3;
  serialQueue = self->_serialQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_11E0;
  v7[3] = &unk_82A8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(serialQueue, v7);
}

- (void)removeAllDelegates
{
  serialQueue = self->_serialQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_13A4;
  block[3] = &unk_82D0;
  block[4] = self;
  dispatch_sync(serialQueue, block);
}

@end