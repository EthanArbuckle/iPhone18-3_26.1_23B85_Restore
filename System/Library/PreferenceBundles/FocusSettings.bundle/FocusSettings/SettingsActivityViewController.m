@interface SettingsActivityViewController
+ (NSString)dndModeKey;
- (_TtC13FocusSettings30SettingsActivityViewController)init;
- (_TtC13FocusSettings30SettingsActivityViewController)initWithCoder:(id)a3;
- (_TtC13FocusSettings30SettingsActivityViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)viewDidLoad;
@end

@implementation SettingsActivityViewController

+ (NSString)dndModeKey
{
  v2 = sub_13844();

  return v2;
}

- (_TtC13FocusSettings30SettingsActivityViewController)init
{
  v3 = OBJC_IVAR____TtC13FocusSettings30SettingsActivityViewController_hostViewModel;
  v4 = sub_13454();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  *&self->PSViewController_opaque[v3] = sub_13444();
  *&self->PSViewController_opaque[OBJC_IVAR____TtC13FocusSettings30SettingsActivityViewController_cancellableBag] = &_swiftEmptySetSingleton;
  v8.receiver = self;
  v8.super_class = type metadata accessor for SettingsActivityViewController();
  return [(SettingsActivityViewController *)&v8 initWithNibName:0 bundle:0];
}

- (_TtC13FocusSettings30SettingsActivityViewController)initWithCoder:(id)a3
{
  v4 = OBJC_IVAR____TtC13FocusSettings30SettingsActivityViewController_hostViewModel;
  v5 = sub_13454();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  *&self->PSViewController_opaque[v4] = sub_13444();
  *&self->PSViewController_opaque[OBJC_IVAR____TtC13FocusSettings30SettingsActivityViewController_cancellableBag] = &_swiftEmptySetSingleton;
  result = sub_13B04();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  v2 = self;
  sub_CF3C();
}

- (_TtC13FocusSettings30SettingsActivityViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end