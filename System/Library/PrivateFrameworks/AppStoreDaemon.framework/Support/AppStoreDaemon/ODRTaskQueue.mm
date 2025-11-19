@interface ODRTaskQueue
- (ODRTaskQueue)init;
@end

@implementation ODRTaskQueue

- (ODRTaskQueue)init
{
  v6.receiver = self;
  v6.super_class = ODRTaskQueue;
  v2 = [(ODRTaskQueue *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    queue = v2->_queue;
    v2->_queue = v3;
  }

  return v2;
}

@end