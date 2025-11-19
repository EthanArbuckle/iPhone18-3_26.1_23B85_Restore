@interface BackgroundTaskRequest
- (BackgroundTaskRequest)init;
@end

@implementation BackgroundTaskRequest

- (BackgroundTaskRequest)init
{
  v6.receiver = self;
  v6.super_class = BackgroundTaskRequest;
  v2 = [(BackgroundTaskRequest *)&v6 init];
  if (v2)
  {
    empty = xpc_dictionary_create_empty();
    job = v2->_job;
    v2->_job = empty;
  }

  return v2;
}

@end