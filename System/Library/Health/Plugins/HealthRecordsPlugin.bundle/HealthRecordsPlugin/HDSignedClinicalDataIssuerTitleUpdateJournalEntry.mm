@interface HDSignedClinicalDataIssuerTitleUpdateJournalEntry
+ (void)applyEntries:(id)entries withProfile:(id)profile;
@end

@implementation HDSignedClinicalDataIssuerTitleUpdateJournalEntry

+ (void)applyEntries:(id)entries withProfile:(id)profile
{
  profileCopy = profile;
  healthRecordsExtension = [profileCopy healthRecordsExtension];
  createSignedClinicalDataRegistry = [healthRecordsExtension createSignedClinicalDataRegistry];

  v9 = 0;
  LOBYTE(healthRecordsExtension) = [HDSignedClinicalDataIssuerEntity updateIssuerTitlesUsingRegistry:createSignedClinicalDataRegistry profile:profileCopy error:&v9];

  v7 = v9;
  if ((healthRecordsExtension & 1) == 0)
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