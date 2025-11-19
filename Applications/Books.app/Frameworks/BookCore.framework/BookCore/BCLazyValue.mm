@interface BCLazyValue
+ (id)objectAsyncProducer:(id)a3;
+ (id)objectSyncProducer:(id)a3;
- (BCLazyValue)init;
- (id)value;
@end

@implementation BCLazyValue

- (BCLazyValue)init
{
  v3.receiver = self;
  v3.super_class = BCLazyValue;
  result = [(BCLazyValue *)&v3 init];
  if (result)
  {
    result->_onceToken = 0;
    result->_flags = 0;
  }

  __dmb(0xBu);
  return result;
}

+ (id)objectSyncProducer:(id)a3
{
  if (a3)
  {
    v3 = a3;
    v4 = objc_alloc_init(BCLazyValue);
    [(BCLazyValue *)v4 setSyncProducer:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)objectAsyncProducer:(id)a3
{
  if (a3)
  {
    v3 = a3;
    v4 = objc_alloc_init(BCLazyValue);
    [(BCLazyValue *)v4 setAsyncProducer:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)value
{
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = sub_160FC0;
  v22 = sub_160FD0;
  v23 = 0;
  onceToken = self->_onceToken;
  p_onceToken = &self->_onceToken;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_160FD8;
  block[3] = &unk_2C7D40;
  block[4] = self;
  if (onceToken != -1)
  {
    dispatch_once(p_onceToken, block);
  }

  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = sub_161024;
  v15 = sub_161050;
  v16 = 0;
  sync = self->_sync;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_161058;
  v10[3] = &unk_2CB5F8;
  v10[4] = self;
  v10[5] = &v18;
  v10[6] = &v11;
  dispatch_sync(sync, v10);
  v6 = objc_retainBlock(v12[5]);
  v7 = v6;
  if (v6)
  {
    (*(v6 + 2))(v6);
  }

  v8 = v19[5];
  _Block_object_dispose(&v11, 8);

  _Block_object_dispose(&v18, 8);

  return v8;
}

@end