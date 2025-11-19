@interface HDSignedClinicalDataIssuerTitleUpdateJournalEntry
+ (void)applyEntries:(id)a3 withProfile:(id)a4;
@end

@implementation HDSignedClinicalDataIssuerTitleUpdateJournalEntry

+ (void)applyEntries:(id)a3 withProfile:(id)a4
{
  v4 = a4;
  v5 = [v4 healthRecordsExtension];
  v6 = [v5 createSignedClinicalDataRegistry];

  v9 = 0;
  LOBYTE(v5) = [HDSignedClinicalDataIssuerEntity updateIssuerTitlesUsingRegistry:v6 profile:v4 error:&v9];

  v7 = v9;
  if ((v5 & 1) == 0)
  {
    _HKInitializeLogging();
    v8 = HKLogHealthRecords;
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_FAULT))
    {
      sub_9E064(v7, v8);
    }
  }
}

@end