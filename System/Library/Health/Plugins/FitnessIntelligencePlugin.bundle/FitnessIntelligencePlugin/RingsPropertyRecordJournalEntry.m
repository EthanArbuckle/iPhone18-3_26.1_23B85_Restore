@interface RingsPropertyRecordJournalEntry
+ (void)applyEntries:(id)a3 withProfile:(id)a4;
- (_TtC25FitnessIntelligencePlugin31RingsPropertyRecordJournalEntry)init;
- (void)encodeWithCoder:(id)a3;
@end

@implementation RingsPropertyRecordJournalEntry

+ (void)applyEntries:(id)a3 withProfile:(id)a4
{
  sub_7688(0, &qword_8EF18, HDJournalEntry_ptr);
  v5 = sub_75688();
  swift_getObjCClassMetadata();
  v6 = a4;
  sub_6218(v5, v6);
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_7318(v4);
}

- (_TtC25FitnessIntelligencePlugin31RingsPropertyRecordJournalEntry)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end