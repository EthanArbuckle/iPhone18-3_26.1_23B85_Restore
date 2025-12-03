@interface AirDropSystemApertureViewController
- (_TtC9AirDropUI35AirDropSystemApertureViewController)initWithNibName:(id)name bundle:(id)bundle;
- (int64_t)preferredLayoutMode;
- (void)setActiveLayoutMode:(int64_t)mode;
- (void)setElementIdentifier:(id)identifier;
- (void)setKeyColor:(id)color;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillLayoutSubviewsWithTransitionCoordinator:(id)coordinator;
@end

@implementation AirDropSystemApertureViewController

- (void)setActiveLayoutMode:(int64_t)mode
{
  selfCopy = self;
  sub_100063F24(mode);
}

- (int64_t)preferredLayoutMode
{
  if (*(self + OBJC_IVAR____TtC9AirDropUI35AirDropSystemApertureViewController_overridePreferredLayoutMode + 8) != 1)
  {
    return *(self + OBJC_IVAR____TtC9AirDropUI35AirDropSystemApertureViewController_overridePreferredLayoutMode);
  }

  v2 = *(self + OBJC_IVAR____TtC9AirDropUI35AirDropSystemApertureViewController_airDropTransferSession);
  selfCopy = self;

  v5 = sub_100064084(v4);

  return v5;
}

- (void)setElementIdentifier:(id)identifier
{
  v4 = *(self + OBJC_IVAR____TtC9AirDropUI35AirDropSystemApertureViewController_elementIdentifier);
  *(self + OBJC_IVAR____TtC9AirDropUI35AirDropSystemApertureViewController_elementIdentifier) = identifier;
  identifierCopy = identifier;
}

- (void)setKeyColor:(id)color
{
  v4 = *(self + OBJC_IVAR____TtC9AirDropUI35AirDropSystemApertureViewController_keyColor);
  *(self + OBJC_IVAR____TtC9AirDropUI35AirDropSystemApertureViewController_keyColor) = color;
  colorCopy = color;
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_100065B78();
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  sub_100066ED0(appear);
}

- (void)viewWillLayoutSubviewsWithTransitionCoordinator:(id)coordinator
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1000670D0(coordinator);
  swift_unknownObjectRelease();
}

- (_TtC9AirDropUI35AirDropSystemApertureViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end