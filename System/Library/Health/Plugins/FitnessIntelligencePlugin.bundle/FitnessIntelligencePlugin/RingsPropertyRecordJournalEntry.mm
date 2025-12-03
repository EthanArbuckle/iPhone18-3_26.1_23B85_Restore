@interface RingsPropertyRecordJournalEntry
+ (void)applyEntries:(id)entries withProfile:(id)profile;
- (_TtC25FitnessIntelligencePlugin31RingsPropertyRecordJournalEntry)init;
- (void)encodeWithCoder:(id)coder;
@end

@implementation RingsPropertyRecordJournalEntry

+ (void)applyEntries:(id)entries withProfile:(id)profile
{
  sub_7688(0, &qword_8EF18, HDJournalEntry_ptr);
  v5 = sub_75688();
  swift_getObjCClassMetadata();
  profileCopy = profile;
  sub_6218(v5, profileCopy);
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  sub_7318(coderCopy);
}

- (_TtC25FitnessIntelligencePlugin31RingsPropertyRecordJournalEntry)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end