@interface HDMedicalRecordJournalEntry
+ (void)applyEntries:(id)entries withProfile:(id)profile;
- (HDMedicalRecordJournalEntry)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HDMedicalRecordJournalEntry

+ (void)applyEntries:(id)entries withProfile:(id)profile
{
  _HKInitializeLogging();
  v4 = HKLogDatabase;
  if (os_log_type_enabled(HKLogDatabase, OS_LOG_TYPE_ERROR))
  {
    sub_9DDE0(v4);
  }
}

- (HDMedicalRecordJournalEntry)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = HDMedicalRecordJournalEntry;
  return [(HDMedicalRecordJournalEntry *)&v4 initWithCoder:coder];
}

- (void)encodeWithCoder:(id)coder
{
  v5 = +[NSAssertionHandler currentHandler];
  [v5 handleFailureInMethod:a2 object:self file:@"HDMedicalRecordEntity+HealthRecordsPlugin.m" lineNumber:546 description:@"Encoding is not supported"];
}

@end