@interface InternalSettingsTableViewController
- (_TtC24MenstrualCyclesAppPlugin35InternalSettingsTableViewController)initWithNibName:(id)name bundle:(id)bundle;
- (_TtC24MenstrualCyclesAppPlugin35InternalSettingsTableViewController)initWithStyle:(int64_t)style;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)analysisProvider:(id)provider didUpdateAnalysis:(id)analysis;
- (void)pregnancyModelDidUpdate:(id)update;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidLoad;
@end

@implementation InternalSettingsTableViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_29E093554();
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v6 = sub_29E2BCFB4();
  v7 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E2BCF44();
  viewCopy = view;
  selfCopy = self;
  sub_29E094430(viewCopy);
  v13 = v12;

  (*(v7 + 8))(v9, v6);

  return v13;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  v6 = type metadata accessor for Section() - 8;
  MEMORY[0x2A1C7C4A8](v6);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (section < 0)
  {
    __break(1u);
  }

  else
  {
    v11 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin35InternalSettingsTableViewController_sections);
    if (*(v11 + 16) > section)
    {
      sub_29E0984C4(v11 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * section, &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
      v12 = sub_29E0956F8();
      sub_29E0986F8(v10, type metadata accessor for Section);
      return v12;
    }
  }

  __break(1u);
  return result;
}

- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section
{
  v6 = type metadata accessor for Section() - 8;
  MEMORY[0x2A1C7C4A8](v6);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (section < 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  v11 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin35InternalSettingsTableViewController_sections);
  if (*(v11 + 16) <= section)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  sub_29E0984C4(v11 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * section, &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
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

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v6 = sub_29E2BCFB4();
  v7 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E2BCF44();
  viewCopy = view;
  selfCopy = self;
  sub_29E095CA4(viewCopy);

  (*(v7 + 8))(v9, v6);
}

- (_TtC24MenstrualCyclesAppPlugin35InternalSettingsTableViewController)initWithStyle:(int64_t)style
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC24MenstrualCyclesAppPlugin35InternalSettingsTableViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)analysisProvider:(id)provider didUpdateAnalysis:(id)analysis
{
  providerCopy = provider;
  analysisCopy = analysis;
  selfCopy = self;
  sub_29E098264(analysisCopy);
}

- (void)pregnancyModelDidUpdate:(id)update
{
  ObjectType = swift_getObjectType();
  sub_29E097F00(0, &qword_2A1A5E2F0, MEMORY[0x29EDCA398], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v6 - 8);
  v8 = &v17 - v7;
  v9 = sub_29E2C3734();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  sub_29E2C3714();
  updateCopy = update;
  selfCopy = self;
  v12 = updateCopy;
  v13 = selfCopy;
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