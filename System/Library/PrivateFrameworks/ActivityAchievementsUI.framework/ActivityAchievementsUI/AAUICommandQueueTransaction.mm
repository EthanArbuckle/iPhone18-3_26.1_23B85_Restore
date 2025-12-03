@interface AAUICommandQueueTransaction
+ (id)sharedDevice;
- (AAUICommandQueueTransaction)init;
- (id)commandQueue;
- (void)dealloc;
@end

@implementation AAUICommandQueueTransaction

+ (id)sharedDevice
{
  v2 = +[AAUICommandQueueRegistry sharedRegistry];
  sharedDevice = [v2 sharedDevice];

  return sharedDevice;
}

- (AAUICommandQueueTransaction)init
{
  v5.receiver = self;
  v5.super_class = AAUICommandQueueTransaction;
  v2 = [(AAUICommandQueueTransaction *)&v5 init];
  if (v2)
  {
    v3 = +[AAUICommandQueueRegistry sharedRegistry];
    [v3 addCommandQueueTransaction:v2];
  }

  return v2;
}

- (void)dealloc
{
  v3 = +[AAUICommandQueueRegistry sharedRegistry];
  [v3 removeCommandQueueTransaction:self];

  v4.receiver = self;
  v4.super_class = AAUICommandQueueTransaction;
  [(AAUICommandQueueTransaction *)&v4 dealloc];
}

- (id)commandQueue
{
  v2 = +[AAUICommandQueueRegistry sharedRegistry];
  commandQueue = [v2 commandQueue];

  return commandQueue;
}

@end