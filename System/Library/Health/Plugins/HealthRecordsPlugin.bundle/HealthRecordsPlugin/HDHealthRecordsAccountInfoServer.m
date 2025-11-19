@interface HDHealthRecordsAccountInfoServer
+ (id)requiredEntitlements;
- (void)remote_determineMedicalRecordsAccountInfoStatusWithCompletion:(id)a3;
@end

@implementation HDHealthRecordsAccountInfoServer

- (void)remote_determineMedicalRecordsAccountInfoStatusWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(HDHealthRecordsAccountInfoServer *)self profile];
  v6 = [v5 healthRecordsExtension];
  v7 = [v6 accountManager];

  if (v7)
  {
    v13 = 0;
    v8 = [v7 highPriorityTransactionHasGatewayBackedAccountsWithError:&v13];
    v9 = v13;
    if (v8)
    {
      if (v8 == &dword_0 + 1)
      {
        v10 = 2;
      }

      else
      {
        v10 = 1;
      }

      _HKInitializeLogging();
      if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEBUG))
      {
        sub_A6838();
      }

      v4[2](v4, v10, 0);
    }

    else
    {
      _HKInitializeLogging();
      if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
      {
        sub_A68B0();
      }

      v12 = [NSError hk_error:100 description:@"Unable to determine account info status" underlyingError:v9];
      (v4)[2](v4, 0, v12);
    }
  }

  else
  {
    _HKInitializeLogging();
    v11 = HKLogHealthRecords;
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_FAULT))
    {
      sub_A6928(self, v11);
    }

    v9 = [NSError hk_error:100 format:@"Unable to determine account info status"];
    (v4)[2](v4, 0, v9);
  }
}

+ (id)requiredEntitlements
{
  v4 = HKHealthRecordsAccountInfoEntitlement;
  v2 = [NSArray arrayWithObjects:&v4 count:1];

  return v2;
}

@end