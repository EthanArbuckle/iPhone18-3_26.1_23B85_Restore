@interface HDCPSUpdateGatewaysOperation
- (HDCPSUpdateGatewaysOperation)initWithManager:(id)manager profile:(id)profile;
- (HDCPSUpdateGatewaysOperation)initWithManager:(id)manager profile:(id)profile batchID:(id)d externalIDs:(id)ds;
- (id)debugDescription;
- (void)_failWithError:(id)error step:(id)step;
- (void)didRefreshGateways:(id)gateways;
- (void)main;
@end

@implementation HDCPSUpdateGatewaysOperation

- (HDCPSUpdateGatewaysOperation)initWithManager:(id)manager profile:(id)profile batchID:(id)d externalIDs:(id)ds
{
  dCopy = d;
  dsCopy = ds;
  v18.receiver = self;
  v18.super_class = HDCPSUpdateGatewaysOperation;
  v12 = [(HDCPSOperation *)&v18 initWithManager:manager profile:profile];
  if (v12)
  {
    v13 = [dCopy copy];
    batchID = v12->_batchID;
    v12->_batchID = v13;

    v15 = [dsCopy copy];
    externalIDs = v12->_externalIDs;
    v12->_externalIDs = v15;
  }

  return v12;
}

- (HDCPSUpdateGatewaysOperation)initWithManager:(id)manager profile:(id)profile
{
  v5 = NSStringFromSelector(a2);
  [NSException raise:NSInvalidArgumentException format:@"The -%@ method is not available on %@", v5, objc_opt_class()];

  return 0;
}

- (void)main
{
  providerServiceManager = [(HDCPSOperation *)self providerServiceManager];
  if (providerServiceManager)
  {
    batchID = [(HDCPSUpdateGatewaysOperation *)self batchID];
    externalIDs = [(HDCPSUpdateGatewaysOperation *)self externalIDs];
    v13 = 0;
    v6 = [providerServiceManager remoteGatewaysWithBatchID:batchID externalIDs:externalIDs error:&v13];
    v7 = v13;

    if (v6)
    {
      profile = [(HDCPSOperation *)self profile];
      if (profile)
      {

        v12 = 0;
        v9 = [HDClinicalGatewayEntity updateGateways:v6 profile:profile error:&v12];
        v7 = v12;
        if (v9)
        {
          [(HDCPSUpdateGatewaysOperation *)self didRefreshGateways:v6];
        }

        else
        {
          [(HDCPSUpdateGatewaysOperation *)self _failWithError:v7 step:@"persist gateways"];
        }
      }

      else
      {
        v11 = [NSError hk_error:100 description:@"No profile."];
        [(HDCPSUpdateGatewaysOperation *)self _failWithError:v11 step:@"fetch profile"];
      }
    }

    else
    {
      [(HDCPSUpdateGatewaysOperation *)self _failWithError:v7 step:@"fetch gateways"];
    }
  }

  else
  {
    v10 = [NSError hk_error:100 description:@"No provider service manager."];
    [(HDCPSUpdateGatewaysOperation *)self _failWithError:v10 step:@"fetch manager"];
  }
}

- (void)didRefreshGateways:(id)gateways
{
  v4 = [gateways copy];
  gateways = self->_gateways;
  self->_gateways = v4;

  _objc_release_x1();
}

- (void)_failWithError:(id)error step:(id)step
{
  errorCopy = error;
  stepCopy = step;
  _HKInitializeLogging();
  v8 = HKLogHealthRecords;
  if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
  {
    v11 = v8;
    v12 = objc_opt_class();
    batchID = [(HDCPSUpdateGatewaysOperation *)self batchID];
    externalIDs = [(HDCPSUpdateGatewaysOperation *)self externalIDs];
    v15 = 138544642;
    v16 = v12;
    v17 = 2050;
    selfCopy = self;
    v19 = 2112;
    v20 = batchID;
    v21 = 2112;
    v22 = externalIDs;
    v23 = 2114;
    v24 = stepCopy;
    v25 = 2114;
    v26 = errorCopy;
    _os_log_error_impl(&dword_0, v11, OS_LOG_TYPE_ERROR, "<%{public}@: %{public}p; batchID: %@; externalIDs: %@;> failure during %{public}@: %{public}@", &v15, 0x3Eu);
  }

  v9 = [errorCopy copy];
  error = self->_error;
  self->_error = v9;
}

- (id)debugDescription
{
  v3 = [NSString alloc];
  v4 = objc_opt_class();
  batchID = [(HDCPSUpdateGatewaysOperation *)self batchID];
  v6 = HKSensitiveLogItem();
  externalIDs = [(HDCPSUpdateGatewaysOperation *)self externalIDs];
  v8 = HKSensitiveLogItem();
  v9 = [v3 initWithFormat:@"<%@: %p; batchID: %@; externalIDs: %@;>", v4, self, v6, v8, 0];

  return v9;
}

@end