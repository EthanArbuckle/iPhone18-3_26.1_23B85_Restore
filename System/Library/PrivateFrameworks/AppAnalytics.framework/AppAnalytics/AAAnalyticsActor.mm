@interface AAAnalyticsActor
+ (OS_dispatch_queue)underlyingQueue;
- (AAAnalyticsActor)init;
@end

@implementation AAAnalyticsActor

+ (OS_dispatch_queue)underlyingQueue
{
  if (qword_1EDBCAA20 != -1)
  {
    swift_once();
  }

  v3 = qword_1EDBCFDA0;

  return v3;
}

- (AAAnalyticsActor)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(AAAnalyticsActor *)&v3 init];
}

@end