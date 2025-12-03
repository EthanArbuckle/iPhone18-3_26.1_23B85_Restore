@interface HDClinicalGatewayInsertCodableGatewaysJournalEntry
+ (void)applyEntries:(id)entries withProfile:(id)profile;
@end

@implementation HDClinicalGatewayInsertCodableGatewaysJournalEntry

+ (void)applyEntries:(id)entries withProfile:(id)profile
{
  entriesCopy = entries;
  profileCopy = profile;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v7 = [entriesCopy countByEnumeratingWithState:&v21 objects:v29 count:16];
  if (v7)
  {
    v9 = v7;
    v10 = *v22;
    *&v8 = 138543618;
    v18 = v8;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v22 != v10)
        {
          objc_enumerationMutation(entriesCopy);
        }

        v12 = *(*(&v21 + 1) + 8 * i);
        codableResources = [v12 codableResources];
        syncProvenance = [v12 syncProvenance];
        v20 = 0;
        v15 = [HDClinicalGatewayEntity _insertCodableGateways:codableResources syncProvenance:syncProvenance profile:profileCopy error:&v20];
        v16 = v20;

        if ((v15 & 1) == 0)
        {
          _HKInitializeLogging();
          v17 = HKLogHealthRecords;
          if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
          {
            *buf = v18;
            selfCopy = self;
            v27 = 2114;
            v28 = v16;
            _os_log_error_impl(&dword_0, v17, OS_LOG_TYPE_ERROR, "%{public}@ failed to insert journaled clinical gateways: %{public}@", buf, 0x16u);
          }
        }
      }

      v9 = [entriesCopy countByEnumeratingWithState:&v21 objects:v29 count:16];
    }

    while (v9);
  }
}

@end