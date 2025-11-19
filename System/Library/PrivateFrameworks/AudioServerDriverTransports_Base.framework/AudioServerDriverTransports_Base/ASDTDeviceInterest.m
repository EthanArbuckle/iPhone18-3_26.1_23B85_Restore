@interface ASDTDeviceInterest
- (ASDTDeviceInterestProtocol)interested;
@end

@implementation ASDTDeviceInterest

- (ASDTDeviceInterestProtocol)interested
{
  WeakRetained = objc_loadWeakRetained(&self->_interested);

  return WeakRetained;
}

@end