@interface InferenceRecordContainerJournalEntry
+ (void)applyEntries:(id)entries withProfile:(id)profile;
- (_TtC25FitnessIntelligencePlugin36InferenceRecordContainerJournalEntry)init;
- (void)encodeWithCoder:(id)coder;
@end

@implementation InferenceRecordContainerJournalEntry

+ (void)applyEntries:(id)entries withProfile:(id)profile
{
  sub_7688(0, &qword_8EF18, HDJournalEntry_ptr);
  v5 = sub_75688();
  profileCopy = profile;
  sub_1E060(v5, profileCopy);
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  sub_1DCD4(coderCopy);
}

- (_TtC25FitnessIntelligencePlugin36InferenceRecordContainerJournalEntry)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end