@interface NoSessionViewController
- (UIView)substitutableView;
- (_TtC11Diagnostics23NoSessionViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout;
- (_TtC11Diagnostics23NoSessionViewController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout;
- (void)setDeviceInformationView:(id)view;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
@end

@implementation NoSessionViewController

- (UIView)substitutableView
{
  headerView = [(NoSessionViewController *)self headerView];

  return headerView;
}

- (void)setDeviceInformationView:(id)view
{
  v4 = *&self->OBWelcomeController_opaque[OBJC_IVAR____TtC11Diagnostics23NoSessionViewController__deviceInformationView];
  *&self->OBWelcomeController_opaque[OBJC_IVAR____TtC11Diagnostics23NoSessionViewController__deviceInformationView] = view;
  viewCopy = view;
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_1000E5AE8();
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  sub_1000E5DD4(appear);
}

- (_TtC11Diagnostics23NoSessionViewController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC11Diagnostics23NoSessionViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end