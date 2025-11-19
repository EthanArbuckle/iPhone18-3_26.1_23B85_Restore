@interface CHIconCacheStoreLookup
+ (void)fetchIconWithCHIconParameters:(id)a3 withCompletion:(id)a4;
+ (void)initialize;
@end

@implementation CHIconCacheStoreLookup

+ (void)initialize
{
  v2 = HKSingletonDispatchQueueName();
  v3 = dispatch_queue_create(v2, 0);
  v4 = qword_1008F9A70;
  qword_1008F9A70 = v3;

  _objc_release_x1(v3, v4);
}

+ (void)fetchIconWithCHIconParameters:(id)a3 withCompletion:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (v6)
  {
    v7 = qword_1008F9A70;
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100109D8C;
    v8[3] = &unk_10083C7F8;
    v9 = v5;
    v10 = v6;
    dispatch_async(v7, v8);
  }
}

@end