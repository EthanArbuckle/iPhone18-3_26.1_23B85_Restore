@interface FMMapSettingsViewController
- (void)attributionPressed;
- (void)selectSatelliteOption;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation FMMapSettingsViewController

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  v4 = v5.receiver;
  [(FMMapSettingsViewController *)&v5 viewWillAppear:appearCopy];
  sub_10010DCC4();
  sub_10010DE9C();
}

- (void)viewWillDisappear:(BOOL)disappear
{
  selfCopy = self;
  sub_10010C5F4(disappear);
}

- (void)selectSatelliteOption
{
  v2 = (*(&self->super.super.super.super.isa + OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_mediator))[7];
  v3 = qword_1006AEB58;
  selfCopy = self;

  if (v3 != -1)
  {
    swift_once();
  }

  v4 = HIBYTE(word_1006D41A0);
  v5 = byte_1006D41A2;
  v6 = (v2 + OBJC_IVAR____TtC6FindMy21FMSelectionController_selectedMapMode);
  *v6 = word_1006D41A0;
  v6[1] = v4;
  v6[2] = v5;
  sub_1002467BC();

  sub_10010DCC4();
}

- (void)attributionPressed
{
  selfCopy = self;
  sub_10010E248();
}

@end