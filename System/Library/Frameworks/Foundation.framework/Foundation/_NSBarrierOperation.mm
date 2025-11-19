@interface _NSBarrierOperation
- (void)dealloc;
- (void)main;
@end

@implementation _NSBarrierOperation

- (void)main
{
  os_unfair_lock_lock(&self->super._iop.__lock);
  block = self->_block;
  self->_block = 0;
  os_unfair_lock_unlock(&self->super._iop.__lock);
  block[2]();
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = _NSBarrierOperation;
  [(NSOperation *)&v3 dealloc];
}

@end