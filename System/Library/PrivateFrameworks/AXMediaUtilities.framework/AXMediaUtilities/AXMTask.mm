@interface AXMTask
- (void)markAsComplete:(BOOL)complete;
@end

@implementation AXMTask

- (void)markAsComplete:(BOOL)complete
{
  completeCopy = complete;
  if (self->_complete)
  {
    v5 = AXMediaLogCommon();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      [AXMTask markAsComplete:];
    }
  }

  self->_complete = 1;
  taskCompleteBlock = [(AXMTask *)self taskCompleteBlock];
  (taskCompleteBlock)[2](taskCompleteBlock, self, completeCopy);
}

@end