@interface HDCPSOperation
- (HDCPSOperation)init;
- (HDCPSOperation)initWithManager:(id)a3 profile:(id)a4;
- (HDClinicalProviderServiceManager)providerServiceManager;
- (HDProfile)profile;
@end

@implementation HDCPSOperation

- (HDCPSOperation)initWithManager:(id)a3 profile:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = HDCPSOperation;
  v8 = [(HDCPSOperation *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_profile, v7);
    objc_storeWeak(&v9->_providerServiceManager, v6);
  }

  return v9;
}

- (HDCPSOperation)init
{
  v3 = NSStringFromSelector(a2);
  [NSException raise:NSInvalidArgumentException format:@"The -%@ method is not available on %@", v3, objc_opt_class()];

  return self;
}

- (HDProfile)profile
{
  WeakRetained = objc_loadWeakRetained(&self->_profile);

  return WeakRetained;
}

- (HDClinicalProviderServiceManager)providerServiceManager
{
  WeakRetained = objc_loadWeakRetained(&self->_providerServiceManager);

  return WeakRetained;
}

@end