@interface _MTL4DispatchGroupCompilerTask
- (void)dealloc;
- (void)waitUntilCompleted;
@end

@implementation _MTL4DispatchGroupCompilerTask

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = _MTL4DispatchGroupCompilerTask;
  [(_MTL4CompilerTask *)&v3 dealloc];
}

- (void)waitUntilCompleted
{
  dispatchGroup = self->_dispatchGroup;
  if (dispatchGroup)
  {
    dispatch_group_wait(dispatchGroup, 0xFFFFFFFFFFFFFFFFLL);
    pthread_mutex_lock(&self->super._statusMutex);
    while (self->super._status != 3)
    {
      pthread_cond_wait(&self->super._statusCondition, &self->super._statusMutex);
    }

    pthread_mutex_unlock(&self->super._statusMutex);
  }

  else
  {
    v4.receiver = self;
    v4.super_class = _MTL4DispatchGroupCompilerTask;
    [(_MTL4CompilerTask *)&v4 waitUntilCompleted];
  }
}

@end