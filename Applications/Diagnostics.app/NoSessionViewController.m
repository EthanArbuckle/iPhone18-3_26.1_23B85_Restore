@interface NoSessionViewController
- (UIView)substitutableView;
- (_TtC11Diagnostics23NoSessionViewController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 contentLayout:(int64_t)a6;
- (_TtC11Diagnostics23NoSessionViewController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 contentLayout:(int64_t)a6;
- (void)setDeviceInformationView:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
@end

@implementation NoSessionViewController

- (UIView)substitutableView
{
  v2 = [(NoSessionViewController *)self headerView];

  return v2;
}

- (void)setDeviceInformationView:(id)a3
{
  v4 = *&self->OBWelcomeController_opaque[OBJC_IVAR____TtC11Diagnostics23NoSessionViewController__deviceInformationView];
  *&self->OBWelcomeController_opaque[OBJC_IVAR____TtC11Diagnostics23NoSessionViewController__deviceInformationView] = a3;
  v3 = a3;
}

- (void)viewDidLoad
{
  v2 = self;
  sub_1000E5AE8();
}

- (void)viewDidAppear:(BOOL)a3
{
  v4 = self;
  sub_1000E5DD4(a3);
}

- (_TtC11Diagnostics23NoSessionViewController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 contentLayout:(int64_t)a6
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC11Diagnostics23NoSessionViewController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 contentLayout:(int64_t)a6
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end