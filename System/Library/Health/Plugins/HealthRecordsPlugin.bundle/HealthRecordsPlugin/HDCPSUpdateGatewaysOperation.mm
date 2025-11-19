@interface HDCPSUpdateGatewaysOperation
- (HDCPSUpdateGatewaysOperation)initWithManager:(id)a3 profile:(id)a4;
- (HDCPSUpdateGatewaysOperation)initWithManager:(id)a3 profile:(id)a4 batchID:(id)a5 externalIDs:(id)a6;
- (id)debugDescription;
- (void)_failWithError:(id)a3 step:(id)a4;
- (void)didRefreshGateways:(id)a3;
- (void)main;
@end

@implementation HDCPSUpdateGatewaysOperation

- (HDCPSUpdateGatewaysOperation)initWithManager:(id)a3 profile:(id)a4 batchID:(id)a5 externalIDs:(id)a6
{
  v10 = a5;
  v11 = a6;
  v18.receiver = self;
  v18.super_class = HDCPSUpdateGatewaysOperation;
  v12 = [(HDCPSOperation *)&v18 initWithManager:a3 profile:a4];
  if (v12)
  {
    v13 = [v10 copy];
    batchID = v12->_batchID;
    v12->_batchID = v13;

    v15 = [v11 copy];
    externalIDs = v12->_externalIDs;
    v12->_externalIDs = v15;
  }

  return v12;
}

- (HDCPSUpdateGatewaysOperation)initWithManager:(id)a3 profile:(id)a4
{
  v5 = NSStringFromSelector(a2);
  [NSException raise:NSInvalidArgumentException format:@"The -%@ method is not available on %@", v5, objc_opt_class()];

  return 0;
}

- (void)main
{
  v3 = [(HDCPSOperation *)self providerServiceManager];
  if (v3)
  {
    v4 = [(HDCPSUpdateGatewaysOperation *)self batchID];
    v5 = [(HDCPSUpdateGatewaysOperation *)self externalIDs];
    v13 = 0;
    v6 = [v3 remoteGatewaysWithBatchID:v4 externalIDs:v5 error:&v13];
    v7 = v13;

    if (v6)
    {
      v8 = [(HDCPSOperation *)self profile];
      if (v8)
      {

        v12 = 0;
        v9 = [HDClinicalGatewayEntity updateGateways:v6 profile:v8 error:&v12];
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

- (void)didRefreshGateways:(id)a3
{
  v4 = [a3 copy];
  gateways = self->_gateways;
  self->_gateways = v4;

  _objc_release_x1();
}

- (void)_failWithError:(id)a3 step:(id)a4
{
  v6 = a3;
  v7 = a4;
  _HKInitializeLogging();
  v8 = HKLogHealthRecords;
  if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
  {
    v11 = v8;
    v12 = objc_opt_class();
    v13 = [(HDCPSUpdateGatewaysOperation *)self batchID];
    v14 = [(HDCPSUpdateGatewaysOperation *)self externalIDs];
    v15 = 138544642;
    v16 = v12;
    v17 = 2050;
    v18 = self;
    v19 = 2112;
    v20 = v13;
    v21 = 2112;
    v22 = v14;
    v23 = 2114;
    v24 = v7;
    v25 = 2114;
    v26 = v6;
    _os_log_error_impl(&dword_0, v11, OS_LOG_TYPE_ERROR, "<%{public}@: %{public}p; batchID: %@; externalIDs: %@;> failure during %{public}@: %{public}@", &v15, 0x3Eu);
  }

  v9 = [v6 copy];
  error = self->_error;
  self->_error = v9;
}

- (id)debugDescription
{
  v3 = [NSString alloc];
  v4 = objc_opt_class();
  v5 = [(HDCPSUpdateGatewaysOperation *)self batchID];
  v6 = HKSensitiveLogItem();
  v7 = [(HDCPSUpdateGatewaysOperation *)self externalIDs];
  v8 = HKSensitiveLogItem();
  v9 = [v3 initWithFormat:@"<%@: %p; batchID: %@; externalIDs: %@;>", v4, self, v6, v8, 0];

  return v9;
}

@end