@interface _MFMessageContentRequestRetryRegistry
+ (id)sharedRegistry;
- (_MFMessageContentRequestRetryRegistry)init;
- (unint64_t)numberOfRetryForContentRepresentation:(id)representation;
- (void)logRetryForContentRequest:(id)request;
- (void)removeContentRequest:(id)request;
@end

@implementation _MFMessageContentRequestRetryRegistry

+ (id)sharedRegistry
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100147234;
  block[3] = &unk_10064C4F8;
  block[4] = self;
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

- (void)logRetryForContentRequest:(id)request
{
  v8 = sub_1001473F4(request);
  if (v8)
  {
    storage = [(_MFMessageContentRequestRetryRegistry *)self storage];
    v5 = [storage objectForKeyedSubscript:v8];
    v6 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v5 unsignedIntegerValue] + 1);
    storage2 = [(_MFMessageContentRequestRetryRegistry *)self storage];
    [storage2 setObject:v6 forKeyedSubscript:v8];
  }
}

- (void)removeContentRequest:(id)request
{
  v5 = sub_1001473F4(request);
  if (v5)
  {
    storage = [(_MFMessageContentRequestRetryRegistry *)self storage];
    [storage removeObjectForKey:v5];
  }
}

- (unint64_t)numberOfRetryForContentRepresentation:(id)representation
{
  v4 = sub_1001473F4(representation);
  if (v4)
  {
    storage = [(_MFMessageContentRequestRetryRegistry *)self storage];
    v6 = [storage objectForKeyedSubscript:v4];
    unsignedIntegerValue = [v6 unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue = 0x7FFFFFFFFFFFFFFFLL;
  }

  return unsignedIntegerValue;
}

@end