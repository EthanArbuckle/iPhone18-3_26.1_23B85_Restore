@interface AXMTask
- (void)markAsComplete:(BOOL)a3;
@end

@implementation AXMTask

- (void)markAsComplete:(BOOL)a3
{
  v3 = a3;
  if (self->_complete)
  {
    v5 = AXMediaLogCommon();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      [AXMTask markAsComplete:];
    }
  }

  self->_complete = 1;
  v6 = [(AXMTask *)self taskCompleteBlock];
  (v6)[2](v6, self, v3);
}

@end