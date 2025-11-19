@interface InternalSettingsTableViewController
- (_TtC24MenstrualCyclesAppPlugin35InternalSettingsTableViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (_TtC24MenstrualCyclesAppPlugin35InternalSettingsTableViewController)initWithStyle:(int64_t)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)analysisProvider:(id)a3 didUpdateAnalysis:(id)a4;
- (void)pregnancyModelDidUpdate:(id)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewDidLoad;
@end

@implementation InternalSettingsTableViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_29E093554();
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = sub_29E2BCFB4();
  v7 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E2BCF44();
  v10 = a3;
  v11 = self;
  sub_29E094430(v10);
  v13 = v12;

  (*(v7 + 8))(v9, v6);

  return v13;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v6 = type metadata accessor for Section() - 8;
  MEMORY[0x2A1C7C4A8](v6);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a4 < 0)
  {
    __break(1u);
  }

  else
  {
    v11 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin35InternalSettingsTableViewController_sections);
    if (*(v11 + 16) > a4)
    {
      sub_29E0984C4(v11 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * a4, &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
      v12 = sub_29E0956F8();
      sub_29E0986F8(v10, type metadata accessor for Section);
      return v12;
    }
  }

  __break(1u);
  return result;
}

- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4
{
  v6 = type metadata accessor for Section() - 8;
  MEMORY[0x2A1C7C4A8](v6);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a4 < 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  v11 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin35InternalSettingsTableViewController_sections);
  if (*(v11 + 16) <= a4)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  sub_29E0984C4(v11 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * a4, &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_29E095930();
  v13 = v12;
  sub_29E0986F8(v10, type metadata accessor for Section);
  if (v13)
  {
    v14 = sub_29E2C33A4();
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = sub_29E2BCFB4();
  v7 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E2BCF44();
  v10 = a3;
  v11 = self;
  sub_29E095CA4(v10);

  (*(v7 + 8))(v9, v6);
}

- (_TtC24MenstrualCyclesAppPlugin35InternalSettingsTableViewController)initWithStyle:(int64_t)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC24MenstrualCyclesAppPlugin35InternalSettingsTableViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)analysisProvider:(id)a3 didUpdateAnalysis:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_29E098264(v7);
}

- (void)pregnancyModelDidUpdate:(id)a3
{
  ObjectType = swift_getObjectType();
  sub_29E097F00(0, &qword_2A1A5E2F0, MEMORY[0x29EDCA398], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v6 - 8);
  v8 = &v17 - v7;
  v9 = sub_29E2C3734();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  sub_29E2C3714();
  v10 = a3;
  v11 = self;
  v12 = v10;
  v13 = v11;
  v14 = sub_29E2C3704();
  v15 = swift_allocObject();
  v16 = MEMORY[0x29EDCA390];
  v15[2] = v14;
  v15[3] = v16;
  v15[4] = v12;
  v15[5] = v13;
  v15[6] = ObjectType;
  sub_29E13C63C(0, 0, v8, &unk_29E2DC3E8, v15);
}

@end