@interface BSStateCaptureInvalidator
- (void)invalidate;
@end

@implementation BSStateCaptureInvalidator

- (void)invalidate
{
  if (!self->_invalidated)
  {
    self->_invalidated = 1;
    if (self->_handle)
    {
      os_state_remove_handler();
      os_unfair_lock_lock(&_MergedGlobals_33);
      v3 = qword_1ED450058;
      v4 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_handle];
      [v3 removeObjectForKey:v4];

      os_unfair_lock_unlock(&_MergedGlobals_33);
    }
  }
}

@end