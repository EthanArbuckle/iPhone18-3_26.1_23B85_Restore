@interface ASOnWristMonitor
- (ASOnWristMonitorDelegate)delegate;
@end

@implementation ASOnWristMonitor

- (ASOnWristMonitorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end