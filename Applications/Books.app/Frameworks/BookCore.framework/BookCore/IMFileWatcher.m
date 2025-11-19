@interface IMFileWatcher
+ (id)defaultWatcher;
- (IMFileWatcher)init;
- (id)watchFileAtPath:(id)a3 queue:(id)a4 usingBlock:(id)a5;
- (void)dealloc;
- (void)removeWatcher:(id)a3;
@end

@implementation IMFileWatcher

+ (id)defaultWatcher
{
  if (qword_3428A0 != -1)
  {
    sub_1E9CFC();
  }

  v3 = qword_342898;

  return v3;
}

- (IMFileWatcher)init
{
  v9.receiver = self;
  v9.super_class = IMFileWatcher;
  v2 = [(IMFileWatcher *)&v9 init];
  if (v2)
  {
    v3 = [NSString stringWithFormat:@"com.apple.iBooks.IMFileWatcher.%p", v2];
    v4 = dispatch_queue_create([v3 UTF8String], 0);
    queue = v2->_queue;
    v2->_queue = v4;

    v6 = objc_alloc_init(NSMutableDictionary);
    groups = v2->_groups;
    v2->_groups = v6;
  }

  return v2;
}

- (void)dealloc
{
  v3 = self->_groups;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_DFFA0;
  block[3] = &unk_2C7D40;
  v8 = v3;
  v5 = v3;
  dispatch_async(queue, block);

  v6.receiver = self;
  v6.super_class = IMFileWatcher;
  [(IMFileWatcher *)&v6 dealloc];
}

- (id)watchFileAtPath:(id)a3 queue:(id)a4 usingBlock:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = sub_E0150;
  v26 = sub_E0160;
  v27 = 0;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_E0168;
  block[3] = &unk_2CCFB8;
  block[4] = self;
  v18 = v8;
  v20 = v10;
  v21 = &v22;
  v19 = v9;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_sync(queue, block);
  v15 = v23[5];

  _Block_object_dispose(&v22, 8);

  return v15;
}

- (void)removeWatcher:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    queue = self->_queue;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_E02F4;
    v7[3] = &unk_2C7BE8;
    v8 = v4;
    v9 = self;
    dispatch_sync(queue, v7);
  }
}

@end