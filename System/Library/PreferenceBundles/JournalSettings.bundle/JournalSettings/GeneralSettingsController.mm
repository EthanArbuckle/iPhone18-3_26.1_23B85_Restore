@interface GeneralSettingsController
- (_TtC15JournalSettings25GeneralSettingsController)initWithCoder:(id)coder;
- (_TtC15JournalSettings25GeneralSettingsController)initWithNibName:(id)name bundle:(id)bundle;
- (id)specifierValueFor:(id)for;
- (id)specifiers;
- (void)onSpecifierButtonSelected:(id)selected;
- (void)setSpecifierValue:(id)value for:(id)for;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation GeneralSettingsController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_89B2C();
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v5.receiver = self;
  v5.super_class = type metadata accessor for GeneralSettingsController();
  v4 = v5.receiver;
  [(GeneralSettingsController *)&v5 viewWillAppear:appearCopy];
  if (([v4 isMovingToParentViewController] & 1) == 0)
  {
    [v4 reloadSpecifiers];
  }
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  selfCopy = self;
  sub_89D84(appearCopy);
}

- (id)specifiers
{
  selfCopy = self;
  sub_8A180();
  v4 = v3;

  if (v4)
  {
    v5.super.isa = sub_90730().super.isa;
  }

  else
  {
    v5.super.isa = 0;
  }

  return v5.super.isa;
}

- (_TtC15JournalSettings25GeneralSettingsController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    sub_90590();
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = OBJC_IVAR____TtC15JournalSettings25GeneralSettingsController_defaults;
  sub_2561C(0, &qword_C8648);
  bundleCopy = bundle;
  *&self->PSListController_opaque[v8] = sub_90A90();
  *&self->PSListController_opaque[OBJC_IVAR____TtC15JournalSettings25GeneralSettingsController____lazy_storage___appPolicy] = 1;
  if (v7)
  {
    v10 = sub_90550();
  }

  else
  {
    v10 = 0;
  }

  v13.receiver = self;
  v13.super_class = type metadata accessor for GeneralSettingsController();
  v11 = [(GeneralSettingsController *)&v13 initWithNibName:v10 bundle:bundleCopy];

  return v11;
}

- (_TtC15JournalSettings25GeneralSettingsController)initWithCoder:(id)coder
{
  v5 = OBJC_IVAR____TtC15JournalSettings25GeneralSettingsController_defaults;
  sub_2561C(0, &qword_C8648);
  coderCopy = coder;
  *&self->PSListController_opaque[v5] = sub_90A90();
  *&self->PSListController_opaque[OBJC_IVAR____TtC15JournalSettings25GeneralSettingsController____lazy_storage___appPolicy] = 1;
  v9.receiver = self;
  v9.super_class = type metadata accessor for GeneralSettingsController();
  v7 = [(GeneralSettingsController *)&v9 initWithCoder:coderCopy];

  if (v7)
  {
  }

  return v7;
}

- (void)setSpecifierValue:(id)value for:(id)for
{
  if (value)
  {
    forCopy = for;
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_90D80();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    forCopy2 = for;
    selfCopy2 = self;
  }

  sub_8CCE8(v10, for);

  sub_8EF0(v10, &qword_C5418);
}

- (id)specifierValueFor:(id)for
{
  forCopy = for;
  selfCopy = self;
  sub_8D2F8(forCopy, v13);

  v6 = v14;
  if (v14)
  {
    v7 = sub_FCAC(v13, v14);
    v8 = *(v6 - 8);
    __chkstk_darwin(v7);
    v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v8 + 16))(v10);
    v11 = sub_910D0();
    (*(v8 + 8))(v10, v6);
    sub_7FA4(v13);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)onSpecifierButtonSelected:(id)selected
{
  selectedCopy = selected;
  selfCopy = self;
  sub_8D7CC(selectedCopy);
}

@end