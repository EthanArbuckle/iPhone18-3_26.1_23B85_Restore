@interface BLSHSystemActivityAssertionConfiguration
- (BLSHOSInterfaceProviding)osInterfaceProvider;
@end

@implementation BLSHSystemActivityAssertionConfiguration

- (BLSHOSInterfaceProviding)osInterfaceProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_osInterfaceProvider);

  return WeakRetained;
}

@end