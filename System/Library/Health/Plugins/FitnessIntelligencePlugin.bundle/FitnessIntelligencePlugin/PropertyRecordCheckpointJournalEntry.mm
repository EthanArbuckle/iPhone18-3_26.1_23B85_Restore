@interface PropertyRecordCheckpointJournalEntry
+ (void)applyEntries:(id)entries withProfile:(id)profile;
- (_TtC25FitnessIntelligencePlugin36PropertyRecordCheckpointJournalEntry)init;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PropertyRecordCheckpointJournalEntry

+ (void)applyEntries:(id)entries withProfile:(id)profile
{
  sub_7688(0, &qword_8EF18, HDJournalEntry_ptr);
  v5 = sub_75688();
  swift_getObjCClassMetadata();
  profileCopy = profile;
  sub_100D4(v5, profileCopy);
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  sub_11538(coderCopy);
}

- (_TtC25FitnessIntelligencePlugin36PropertyRecordCheckpointJournalEntry)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end