@interface _MTL4DispatchBlockCompilerTask
- (void)dealloc;
- (void)waitUntilCompleted;
@end

@implementation _MTL4DispatchBlockCompilerTask

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = _MTL4DispatchBlockCompilerTask;
  [(_MTL4CompilerTask *)&v3 dealloc];
}

- (void)waitUntilCompleted
{
  compilationBlock = self->_compilationBlock;
  if (compilationBlock)
  {
    dispatch_block_wait(compilationBlock, 0xFFFFFFFFFFFFFFFFLL);
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
    v4.super_class = _MTL4DispatchBlockCompilerTask;
    [(_MTL4CompilerTask *)&v4 waitUntilCompleted];
  }
}

@end