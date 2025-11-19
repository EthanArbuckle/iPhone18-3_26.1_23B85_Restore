@interface AVRoutingDispatchOnce
- (AVRoutingDispatchOnce)init;
- (void)runBlockOnce:(id)a3;
@end

@implementation AVRoutingDispatchOnce

- (AVRoutingDispatchOnce)init
{
  v3.receiver = self;
  v3.super_class = AVRoutingDispatchOnce;
  result = [(AVRoutingDispatchOnce *)&v3 init];
  if (result)
  {
    result->_lock._os_unfair_lock_opaque = 0;
  }

  return result;
}

- (void)runBlockOnce:(id)a3
{
  os_unfair_lock_lock(&self->_lock);
  if (!self->_testFlag)
  {
    self->_testFlag = 1;
    (*(a3 + 2))(a3);
  }

  os_unfair_lock_unlock(&self->_lock);
}

@end