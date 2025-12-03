@interface JSAKeychainStorage
+ (id)sharedInstance;
- (JSAKeychainStorage)init;
- (id)getItem:(id)item;
- (void)getItemAsync:(id)async :(id)a4;
- (void)removeItem:(id)item;
- (void)removeItemAsync:(id)async :(id)a4;
- (void)setItem:(id)item :(id)a4;
- (void)setItemAsync:(id)async :(id)a4 :(id)a5;
@end

@implementation JSAKeychainStorage

+ (id)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_9568;
  block[3] = &unk_B25E8;
  block[4] = self;
  if (qword_CC0B0 != -1)
  {
    dispatch_once(&qword_CC0B0, block);
  }

  v2 = qword_CC0B8;

  return v2;
}

- (JSAKeychainStorage)init
{
  v7.receiver = self;
  v7.super_class = JSAKeychainStorage;
  v2 = [(JSAKeychainStorage *)&v7 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("JSAKeychainStorage.accessQueue", v3);
    accessQueue = v2->_accessQueue;
    v2->_accessQueue = v4;
  }

  return v2;
}

- (id)getItem:(id)item
{
  if (item)
  {
    v5 = sub_7F5B0(self, item);
    [v5 setValue:kCFBooleanTrue forKey:kSecReturnData];
    [v5 setValue:kCFBooleanTrue forKey:kSecReturnAttributes];
    result = 0;
    v3 = 0;
    if (!SecItemCopyMatching(v5, &result))
    {
      v6 = result;
      v7 = [result objectForKeyedSubscript:kSecValueData];
      v3 = [[NSString alloc] initWithData:v7 encoding:4];
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)getItemAsync:(id)async :(id)a4
{
  asyncCopy = async;
  v7 = a4;
  accessQueue = self->_accessQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_97F4;
  block[3] = &unk_B2638;
  block[4] = self;
  v13 = asyncCopy;
  v14 = v7;
  v9 = v7;
  v10 = asyncCopy;
  v11 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_USER_INTERACTIVE, 0, block);
  dispatch_async(accessQueue, v11);
}

- (void)setItem:(id)item :(id)a4
{
  if (item && a4)
  {
    v6 = a4;
    v7 = sub_7F5B0(self, item);
    v8 = [v6 dataUsingEncoding:4];

    v9 = 0;
    if (SecItemCopyMatching(v7, &v9))
    {
      [v7 setValue:v8 forKey:kSecValueData];
      SecItemAdd(v7, 0);
    }

    else
    {
      v10 = kSecValueData;
      v11 = v8;
      SecItemUpdate(v7, [NSDictionary dictionaryWithObjects:&v11 forKeys:&v10 count:1]);
    }
  }
}

- (void)setItemAsync:(id)async :(id)a4 :(id)a5
{
  asyncCopy = async;
  v9 = a4;
  v10 = a5;
  accessQueue = self->_accessQueue;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_9AFC;
  v16[3] = &unk_B2660;
  v16[4] = self;
  v17 = asyncCopy;
  v18 = v9;
  v19 = v10;
  v12 = v10;
  v13 = v9;
  v14 = asyncCopy;
  v15 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_USER_INTERACTIVE, 0, v16);
  dispatch_async(accessQueue, v15);
}

- (void)removeItem:(id)item
{
  if (item)
  {
    sub_7F660(self, item);
  }
}

- (void)removeItemAsync:(id)async :(id)a4
{
  asyncCopy = async;
  v7 = a4;
  accessQueue = self->_accessQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_9C78;
  block[3] = &unk_B2638;
  block[4] = self;
  v13 = asyncCopy;
  v14 = v7;
  v9 = v7;
  v10 = asyncCopy;
  v11 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_USER_INITIATED, 0, block);
  dispatch_async(accessQueue, v11);
}

@end