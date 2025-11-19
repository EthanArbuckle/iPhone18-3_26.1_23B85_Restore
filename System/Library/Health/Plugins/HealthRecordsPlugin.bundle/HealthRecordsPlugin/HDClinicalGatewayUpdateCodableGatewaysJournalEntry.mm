@interface HDClinicalGatewayUpdateCodableGatewaysJournalEntry
+ (void)applyEntries:(id)a3 withProfile:(id)a4;
@end

@implementation HDClinicalGatewayUpdateCodableGatewaysJournalEntry

+ (void)applyEntries:(id)a3 withProfile:(id)a4
{
  v5 = a3;
  v6 = a4;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v7 = [v5 countByEnumeratingWithState:&v22 objects:v30 count:16];
  if (v7)
  {
    v9 = v7;
    v10 = *v23;
    *&v8 = 138543362;
    v19 = v8;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v23 != v10)
        {
          objc_enumerationMutation(v5);
        }

        v12 = *(*(&v22 + 1) + 8 * i);
        v13 = [v12 codableResources];
        v14 = [v12 syncProvenance];
        v21 = 0;
        v15 = [HDClinicalGatewayEntity _updateCodableGateways:v13 syncProvenance:v14 profile:v6 error:&v21];
        v16 = v21;

        if ((v15 & 1) == 0)
        {
          v17 = [v16 hk_isDatabaseAccessibilityError];
          _HKInitializeLogging();
          v18 = HKLogHealthRecords;
          if (v17)
          {
            if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
            {
              *buf = 138543618;
              v27 = a1;
              v28 = 2114;
              v29 = v16;
              _os_log_error_impl(&dword_0, v18, OS_LOG_TYPE_ERROR, "%{public}@ failed to update journaled clinical gateways: %{public}@", buf, 0x16u);
            }
          }

          else if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_FAULT))
          {
            *buf = v19;
            v27 = v16;
            _os_log_fault_impl(&dword_0, v18, OS_LOG_TYPE_FAULT, "HDClinicalGatewayUpdateCodableGatewaysJournalEntry failed to update journaled clinical gateways: %{public}@", buf, 0xCu);
          }
        }
      }

      v9 = [v5 countByEnumeratingWithState:&v22 objects:v30 count:16];
    }

    while (v9);
  }
}

@end