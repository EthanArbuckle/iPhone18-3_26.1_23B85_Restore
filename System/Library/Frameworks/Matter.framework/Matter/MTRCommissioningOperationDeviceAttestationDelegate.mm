@interface MTRCommissioningOperationDeviceAttestationDelegate
- (MTRCommissioningOperation)commissioningOperation;
- (void)deviceAttestationCompletedForController:(id)controller opaqueDeviceHandle:(void *)handle attestationDeviceInfo:(id)info error:(id)error;
@end

@implementation MTRCommissioningOperationDeviceAttestationDelegate

- (void)deviceAttestationCompletedForController:(id)controller opaqueDeviceHandle:(void *)handle attestationDeviceInfo:(id)info error:(id)error
{
  controllerCopy = controller;
  infoCopy = info;
  errorCopy = error;
  commissioningOperation = [(MTRCommissioningOperationDeviceAttestationDelegate *)self commissioningOperation];
  v13 = commissioningOperation;
  if (commissioningOperation)
  {
    [commissioningOperation deviceAttestationCompletedForController:controllerCopy opaqueDeviceHandle:handle attestationDeviceInfo:infoCopy error:errorCopy];
  }
}

- (MTRCommissioningOperation)commissioningOperation
{
  WeakRetained = objc_loadWeakRetained(&self->_commissioningOperation);

  return WeakRetained;
}

@end