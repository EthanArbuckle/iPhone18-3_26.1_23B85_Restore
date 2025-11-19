@interface AirDropSystemApertureViewController
- (_TtC9AirDropUI35AirDropSystemApertureViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (int64_t)preferredLayoutMode;
- (void)setActiveLayoutMode:(int64_t)a3;
- (void)setElementIdentifier:(id)a3;
- (void)setKeyColor:(id)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillLayoutSubviewsWithTransitionCoordinator:(id)a3;
@end

@implementation AirDropSystemApertureViewController

- (void)setActiveLayoutMode:(int64_t)a3
{
  v4 = self;
  sub_100063F24(a3);
}

- (int64_t)preferredLayoutMode
{
  if (*(self + OBJC_IVAR____TtC9AirDropUI35AirDropSystemApertureViewController_overridePreferredLayoutMode + 8) != 1)
  {
    return *(self + OBJC_IVAR____TtC9AirDropUI35AirDropSystemApertureViewController_overridePreferredLayoutMode);
  }

  v2 = *(self + OBJC_IVAR____TtC9AirDropUI35AirDropSystemApertureViewController_airDropTransferSession);
  v3 = self;

  v5 = sub_100064084(v4);

  return v5;
}

- (void)setElementIdentifier:(id)a3
{
  v4 = *(self + OBJC_IVAR____TtC9AirDropUI35AirDropSystemApertureViewController_elementIdentifier);
  *(self + OBJC_IVAR____TtC9AirDropUI35AirDropSystemApertureViewController_elementIdentifier) = a3;
  v3 = a3;
}

- (void)setKeyColor:(id)a3
{
  v4 = *(self + OBJC_IVAR____TtC9AirDropUI35AirDropSystemApertureViewController_keyColor);
  *(self + OBJC_IVAR____TtC9AirDropUI35AirDropSystemApertureViewController_keyColor) = a3;
  v3 = a3;
}

- (void)viewDidLoad
{
  v2 = self;
  sub_100065B78();
}

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  sub_100066ED0(a3);
}

- (void)viewWillLayoutSubviewsWithTransitionCoordinator:(id)a3
{
  swift_unknownObjectRetain();
  v5 = self;
  sub_1000670D0(a3);
  swift_unknownObjectRelease();
}

- (_TtC9AirDropUI35AirDropSystemApertureViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end