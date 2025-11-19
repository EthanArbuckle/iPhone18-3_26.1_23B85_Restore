@interface MTRCommissioningOperationDeviceAttestationDelegate
- (MTRCommissioningOperation)commissioningOperation;
- (void)deviceAttestationCompletedForController:(id)a3 opaqueDeviceHandle:(void *)a4 attestationDeviceInfo:(id)a5 error:(id)a6;
@end

@implementation MTRCommissioningOperationDeviceAttestationDelegate

- (void)deviceAttestationCompletedForController:(id)a3 opaqueDeviceHandle:(void *)a4 attestationDeviceInfo:(id)a5 error:(id)a6
{
  v14 = a3;
  v10 = a5;
  v11 = a6;
  v12 = [(MTRCommissioningOperationDeviceAttestationDelegate *)self commissioningOperation];
  v13 = v12;
  if (v12)
  {
    [v12 deviceAttestationCompletedForController:v14 opaqueDeviceHandle:a4 attestationDeviceInfo:v10 error:v11];
  }
}

- (MTRCommissioningOperation)commissioningOperation
{
  WeakRetained = objc_loadWeakRetained(&self->_commissioningOperation);

  return WeakRetained;
}

@end