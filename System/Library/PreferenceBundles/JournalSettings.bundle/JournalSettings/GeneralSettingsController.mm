@interface GeneralSettingsController
- (_TtC15JournalSettings25GeneralSettingsController)initWithCoder:(id)a3;
- (_TtC15JournalSettings25GeneralSettingsController)initWithNibName:(id)a3 bundle:(id)a4;
- (id)specifierValueFor:(id)a3;
- (id)specifiers;
- (void)onSpecifierButtonSelected:(id)a3;
- (void)setSpecifierValue:(id)a3 for:(id)a4;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation GeneralSettingsController

- (void)viewDidLoad
{
  v2 = self;
  sub_89B2C();
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = type metadata accessor for GeneralSettingsController();
  v4 = v5.receiver;
  [(GeneralSettingsController *)&v5 viewWillAppear:v3];
  if (([v4 isMovingToParentViewController] & 1) == 0)
  {
    [v4 reloadSpecifiers];
  }
}

- (void)viewDidAppear:(BOOL)a3
{
  v3 = a3;
  v4 = self;
  sub_89D84(v3);
}

- (id)specifiers
{
  v2 = self;
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

- (_TtC15JournalSettings25GeneralSettingsController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
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
  v9 = a4;
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
  v11 = [(GeneralSettingsController *)&v13 initWithNibName:v10 bundle:v9];

  return v11;
}

- (_TtC15JournalSettings25GeneralSettingsController)initWithCoder:(id)a3
{
  v5 = OBJC_IVAR____TtC15JournalSettings25GeneralSettingsController_defaults;
  sub_2561C(0, &qword_C8648);
  v6 = a3;
  *&self->PSListController_opaque[v5] = sub_90A90();
  *&self->PSListController_opaque[OBJC_IVAR____TtC15JournalSettings25GeneralSettingsController____lazy_storage___appPolicy] = 1;
  v9.receiver = self;
  v9.super_class = type metadata accessor for GeneralSettingsController();
  v7 = [(GeneralSettingsController *)&v9 initWithCoder:v6];

  if (v7)
  {
  }

  return v7;
}

- (void)setSpecifierValue:(id)a3 for:(id)a4
{
  if (a3)
  {
    v6 = a4;
    v7 = self;
    swift_unknownObjectRetain();
    sub_90D80();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    v8 = a4;
    v9 = self;
  }

  sub_8CCE8(v10, a4);

  sub_8EF0(v10, &qword_C5418);
}

- (id)specifierValueFor:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_8D2F8(v4, v13);

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

- (void)onSpecifierButtonSelected:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_8D7CC(v4);
}

@end