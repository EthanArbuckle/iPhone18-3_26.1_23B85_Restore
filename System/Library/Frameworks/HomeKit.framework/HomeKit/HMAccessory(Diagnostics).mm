@interface HMAccessory(Diagnostics)
- (HMSupportedAccessoryDiagnostics)supportedDiagnostics;
- (void)setSupportedDiagnostics:()Diagnostics;
@end

@implementation HMAccessory(Diagnostics)

- (void)setSupportedDiagnostics:()Diagnostics
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  supportedDiagnostics = self->_supportedDiagnostics;
  self->_supportedDiagnostics = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (HMSupportedAccessoryDiagnostics)supportedDiagnostics
{
  os_unfair_lock_lock_with_options();
  v3 = self->_supportedDiagnostics;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

@end