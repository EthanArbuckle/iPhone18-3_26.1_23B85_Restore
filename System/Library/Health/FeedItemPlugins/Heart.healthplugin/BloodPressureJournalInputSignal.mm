@interface BloodPressureJournalInputSignal
- (_TtC5Heart31BloodPressureJournalInputSignal)init;
- (void)dayChanged;
- (void)didUpdatePreferredClassificationGuidelines:(id)a3;
- (void)journalControl:(id)a3 didAddOrModifyJournals:(id)a4;
@end

@implementation BloodPressureJournalInputSignal

- (void)dayChanged
{
  ObjectType = swift_getObjectType();
  v5 = *(&self->super.isa + OBJC_IVAR____TtC5Heart31BloodPressureJournalInputSignal_todayProvider);
  v4 = *&self->observer[OBJC_IVAR____TtC5Heart31BloodPressureJournalInputSignal_todayProvider];
  v6 = swift_allocObject();
  v6[2] = v5;
  v6[3] = v4;
  v6[4] = self;
  v6[5] = ObjectType;
  v7 = self;

  sub_29D83D444(sub_29D8414E0, v6);
}

- (void)journalControl:(id)a3 didAddOrModifyJournals:(id)a4
{
  sub_29D69567C(0, &qword_2A1A221D0, 0x29EDC51F0);
  v6 = sub_29D939F38();
  v7 = a3;
  v8 = self;
  sub_29D840F64(v6);
}

- (void)didUpdatePreferredClassificationGuidelines:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_29D841210();
}

- (_TtC5Heart31BloodPressureJournalInputSignal)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end