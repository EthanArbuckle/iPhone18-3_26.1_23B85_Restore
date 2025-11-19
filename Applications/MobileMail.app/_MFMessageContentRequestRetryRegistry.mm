@interface _MFMessageContentRequestRetryRegistry
+ (id)sharedRegistry;
- (_MFMessageContentRequestRetryRegistry)init;
- (unint64_t)numberOfRetryForContentRepresentation:(id)a3;
- (void)logRetryForContentRequest:(id)a3;
- (void)removeContentRequest:(id)a3;
@end

@implementation _MFMessageContentRequestRetryRegistry

+ (id)sharedRegistry
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100147234;
  block[3] = &unk_10064C4F8;
  block[4] = a1;
  if (qword_1006DD278 != -1)
  {
    dispatch_once(&qword_1006DD278, block);
  }

  v2 = qword_1006DD270;

  return v2;
}

- (_MFMessageContentRequestRetryRegistry)init
{
  v6.receiver = self;
  v6.super_class = _MFMessageContentRequestRetryRegistry;
  v2 = [(_MFMessageContentRequestRetryRegistry *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(NSMutableDictionary);
    storage = v2->_storage;
    v2->_storage = v3;
  }

  return v2;
}

- (void)logRetryForContentRequest:(id)a3
{
  v8 = sub_1001473F4(a3);
  if (v8)
  {
    v4 = [(_MFMessageContentRequestRetryRegistry *)self storage];
    v5 = [v4 objectForKeyedSubscript:v8];
    v6 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v5 unsignedIntegerValue] + 1);
    v7 = [(_MFMessageContentRequestRetryRegistry *)self storage];
    [v7 setObject:v6 forKeyedSubscript:v8];
  }
}

- (void)removeContentRequest:(id)a3
{
  v5 = sub_1001473F4(a3);
  if (v5)
  {
    v4 = [(_MFMessageContentRequestRetryRegistry *)self storage];
    [v4 removeObjectForKey:v5];
  }
}

- (unint64_t)numberOfRetryForContentRepresentation:(id)a3
{
  v4 = sub_1001473F4(a3);
  if (v4)
  {
    v5 = [(_MFMessageContentRequestRetryRegistry *)self storage];
    v6 = [v5 objectForKeyedSubscript:v4];
    v7 = [v6 unsignedIntegerValue];
  }

  else
  {
    v7 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v7;
}

@end