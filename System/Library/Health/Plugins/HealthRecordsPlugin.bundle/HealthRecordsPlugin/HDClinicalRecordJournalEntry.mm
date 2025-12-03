@interface HDClinicalRecordJournalEntry
+ (void)applyEntries:(id)entries withProfile:(id)profile;
- (HDClinicalRecordJournalEntry)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HDClinicalRecordJournalEntry

+ (void)applyEntries:(id)entries withProfile:(id)profile
{
  _HKInitializeLogging();
  v4 = HKLogDatabase;
  if (os_log_type_enabled(HKLogDatabase, OS_LOG_TYPE_ERROR))
  {
    sub_9DDE0(v4);
  }
}

- (HDClinicalRecordJournalEntry)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = HDClinicalRecordJournalEntry;
  return [(HDClinicalRecordJournalEntry *)&v4 initWithCoder:coder];
}

- (void)encodeWithCoder:(id)coder
{
  v5 = +[NSAssertionHandler currentHandler];
  [v5 handleFailureInMethod:a2 object:self file:@"HDClinicalRecordEntity+HealthRecordsPlugin.m" lineNumber:470 description:@"Encoding is not supported"];
}

@end