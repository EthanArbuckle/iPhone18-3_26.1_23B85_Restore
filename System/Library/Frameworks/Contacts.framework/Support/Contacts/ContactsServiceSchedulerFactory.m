@interface ContactsServiceSchedulerFactory
+ (id)makeHighPriorityScheduler;
+ (id)makeScheduler;
- (ContactsServiceSchedulerFactory)init;
@end

@implementation ContactsServiceSchedulerFactory

+ (id)makeScheduler
{
  v2 = sub_100019CFC();

  return v2;
}

+ (id)makeHighPriorityScheduler
{
  v2 = sub_100019FA8();

  return v2;
}

- (ContactsServiceSchedulerFactory)init
{
  v3.receiver = self;
  v3.super_class = ContactsServiceSchedulerFactory;
  return [(ContactsServiceSchedulerFactory *)&v3 init];
}

@end