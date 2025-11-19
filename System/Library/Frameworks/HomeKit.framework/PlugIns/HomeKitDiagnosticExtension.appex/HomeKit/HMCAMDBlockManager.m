@interface HMCAMDBlockManager
- (HMCAMDBlockManager)initWithService:(id)a3;
- (id)forwardingBlockWithArgumentCount:(unint64_t)a3 forKey:(id)a4;
- (id)keyForBlock:(id)a3;
- (void)addBlock:(id)a3 forKey:(id)a4;
- (void)addBlockNoCopy:(id)a3 forKey:(id)a4;
- (void)invokeForwardedBlockWithArguments:(id)a3 forKey:(id)a4;
- (void)removeBlock:(id)a3;
@end

@implementation HMCAMDBlockManager

- (id)forwardingBlockWithArgumentCount:(unint64_t)a3 forKey:(id)a4
{
  v6 = a4;
  v7 = +[NSNull null];
  v33[0] = _NSConcreteStackBlock;
  v33[1] = 3221225472;
  v33[2] = sub_100015018;
  v33[3] = &unk_100030C90;
  v33[4] = self;
  v8 = v6;
  v34 = v8;
  v9 = objc_retainBlock(v33);
  v10 = v9;
  v11 = 0;
  if (a3 > 2)
  {
    switch(a3)
    {
      case 3uLL:
        v22[0] = _NSConcreteStackBlock;
        v22[1] = 3221225472;
        v22[2] = sub_100015264;
        v22[3] = &unk_100030D30;
        v12 = &v24;
        v24 = v9;
        v23 = v7;
        v11 = objc_retainBlock(v22);
        v13 = v23;
        break;
      case 4uLL:
        v19[0] = _NSConcreteStackBlock;
        v19[1] = 3221225472;
        v19[2] = sub_10001535C;
        v19[3] = &unk_100030D58;
        v12 = &v21;
        v21 = v9;
        v20 = v7;
        v11 = objc_retainBlock(v19);
        v13 = v20;
        break;
      case 5uLL:
        v16[0] = _NSConcreteStackBlock;
        v16[1] = 3221225472;
        v16[2] = sub_100015474;
        v16[3] = &unk_100030D80;
        v12 = &v18;
        v18 = v9;
        v17 = v7;
        v11 = objc_retainBlock(v16);
        v13 = v17;
        break;
      default:
        goto LABEL_16;
    }

    goto LABEL_14;
  }

  if (a3)
  {
    if (a3 == 1)
    {
      v28[0] = _NSConcreteStackBlock;
      v28[1] = 3221225472;
      v28[2] = sub_1000150E4;
      v28[3] = &unk_100030CE0;
      v12 = &v30;
      v30 = v9;
      v29 = v7;
      v11 = objc_retainBlock(v28);
      v13 = v29;
    }

    else
    {
      if (a3 != 2)
      {
        goto LABEL_16;
      }

      v25[0] = _NSConcreteStackBlock;
      v25[1] = 3221225472;
      v25[2] = sub_100015194;
      v25[3] = &unk_100030D08;
      v12 = &v27;
      v27 = v9;
      v26 = v7;
      v11 = objc_retainBlock(v25);
      v13 = v26;
    }

LABEL_14:

    goto LABEL_15;
  }

  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v31[2] = sub_1000150D0;
  v31[3] = &unk_100030CB8;
  v12 = &v32;
  v32 = v9;
  v11 = objc_retainBlock(v31);
LABEL_15:

LABEL_16:
  v14 = [v11 copy];

  return v14;
}

- (void)invokeForwardedBlockWithArguments:(id)a3 forKey:(id)a4
{
  v6 = a3;
  v7 = [(NSMutableDictionary *)self->_blockHandlerMap objectForKey:a4];
  v8 = v7;
  if (v7)
  {
    v9 = [NSMethodSignature signatureWithObjCTypes:_Block_signature(v7)];
    v10 = [v9 numberOfArguments];
    v11 = [NSInvocation invocationWithMethodSignature:v9];
    if (v10 >= 2)
    {
      for (i = 1; i != v10; ++i)
      {
        v13 = [v6 objectAtIndex:i - 1];
        v16 = v13;
        v14 = +[NSNull null];

        if (v13 == v14)
        {
          v15 = v16;
          v16 = 0;
        }

        [v11 setArgument:&v16 atIndex:i];
      }
    }

    [v11 setTarget:v8];
    [v11 invoke];
  }
}

- (id)keyForBlock:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_1000159C8;
  v16 = sub_1000159D8;
  v17 = 0;
  blockHandlerMap = self->_blockHandlerMap;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000159E0;
  v9[3] = &unk_100030C40;
  v6 = v4;
  v10 = v6;
  v11 = &v12;
  [(NSMutableDictionary *)blockHandlerMap enumerateKeysAndObjectsUsingBlock:v9];
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

- (void)removeBlock:(id)a3
{
  v4 = [(HMCAMDBlockManager *)self keyForBlock:a3];
  if (v4)
  {
    [(HMCAMDBlockManager *)self removeBlockForKey:v4];
    blockQueue = self->_blockQueue;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100015B28;
    v6[3] = &unk_100030F30;
    v6[4] = self;
    v7 = v4;
    dispatch_async(blockQueue, v6);
  }
}

- (void)addBlock:(id)a3 forKey:(id)a4
{
  blockHandlerMap = self->_blockHandlerMap;
  v6 = a4;
  v7 = [a3 copy];
  [(NSMutableDictionary *)blockHandlerMap setObject:v7 forKey:v6];
}

- (void)addBlockNoCopy:(id)a3 forKey:(id)a4
{
  if (a3)
  {
    [(NSMutableDictionary *)self->_blockHandlerMap setObject:a3 forKey:a4];
  }
}

- (HMCAMDBlockManager)initWithService:(id)a3
{
  v5 = a3;
  v14.receiver = self;
  v14.super_class = HMCAMDBlockManager;
  v6 = [(HMCAMDBlockManager *)&v14 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_service, a3);
    v8 = objc_opt_new();
    blockHandlerMap = v7->_blockHandlerMap;
    v7->_blockHandlerMap = v8;

    v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v11 = dispatch_queue_create("com.apple.homed.xpc.HMDCAMDBlockManager.blockQueue", v10);
    blockQueue = v7->_blockQueue;
    v7->_blockQueue = v11;
  }

  return v7;
}

@end