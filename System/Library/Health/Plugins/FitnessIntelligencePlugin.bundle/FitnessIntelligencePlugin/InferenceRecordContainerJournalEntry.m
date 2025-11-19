@interface InferenceRecordContainerJournalEntry
+ (void)applyEntries:(id)a3 withProfile:(id)a4;
- (_TtC25FitnessIntelligencePlugin36InferenceRecordContainerJournalEntry)init;
- (void)encodeWithCoder:(id)a3;
@end

@implementation InferenceRecordContainerJournalEntry

+ (void)applyEntries:(id)a3 withProfile:(id)a4
{
  sub_7688(0, &qword_8EF18, HDJournalEntry_ptr);
  v5 = sub_75688();
  v6 = a4;
  sub_1E060(v5, v6);
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1DCD4(v4);
}

- (_TtC25FitnessIntelligencePlugin36InferenceRecordContainerJournalEntry)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end