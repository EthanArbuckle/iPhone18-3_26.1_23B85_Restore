@interface Environment
+ (id)sharedInstance;
- (Environment)init;
- (SQLiteDatabase)userDatabase;
@end

@implementation Environment

+ (id)sharedInstance
{
  if (qword_1003D4708 != -1)
  {
    sub_1002D0954();
  }

  v3 = qword_1003D4700;

  return v3;
}

- (Environment)init
{
  v6.receiver = self;
  v6.super_class = Environment;
  v2 = [(Environment *)&v6 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.storekit.Environment", 0);
    dispatchQueue = v2->_dispatchQueue;
    v2->_dispatchQueue = v3;
  }

  return v2;
}

- (SQLiteDatabase)userDatabase
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_100067BB0;
  v10 = sub_100067BC0;
  v11 = 0;
  dispatchQueue = self->_dispatchQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100067BC8;
  v5[3] = &unk_1003807A0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

@end