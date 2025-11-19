@interface CARThemeSelectorViewController
- (_TtC15CarPlaySettings30CARThemeSelectorViewController)initWithCoder:(id)a3;
- (_TtC15CarPlaySettings30CARThemeSelectorViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)clusterThemeManagerDidFinishLoading:(id)a3;
- (void)dealloc;
- (void)synchronizeThemeIfNeeded;
- (void)vehicleDidUpdate;
- (void)viewDidLoad;
@end

@implementation CARThemeSelectorViewController

- (_TtC15CarPlaySettings30CARThemeSelectorViewController)initWithCoder:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC15CarPlaySettings30CARThemeSelectorViewController_displays) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC15CarPlaySettings30CARThemeSelectorViewController_themeData) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC15CarPlaySettings30CARThemeSelectorViewController_themeManagerData) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC15CarPlaySettings30CARThemeSelectorViewController_layoutSelectorViewController) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC15CarPlaySettings30CARThemeSelectorViewController_wasInBackground) = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  v2.receiver = self;
  v2.super_class = type metadata accessor for CARThemeSelectorViewController();
  [(CARThemeSelectorViewController *)&v2 viewDidLoad];
}

- (void)synchronizeThemeIfNeeded
{
  v2 = self;
  sub_100041400();
}

- (void)vehicleDidUpdate
{
  v2 = self;
  sub_100041760();
}

- (void)dealloc
{
  v3 = objc_opt_self();
  v4 = self;
  v5 = [v3 defaultCenter];
  [v5 removeObserver:v4];

  v6.receiver = v4;
  v6.super_class = type metadata accessor for CARThemeSelectorViewController();
  [(CARThemeSelectorViewController *)&v6 dealloc];
}

- (_TtC15CarPlaySettings30CARThemeSelectorViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)clusterThemeManagerDidFinishLoading:(id)a3
{
  v4 = a3;
  v9 = self;
  v5 = [v4 displays];
  sub_1000317B8(0, &qword_1000FF320);
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v7 = [v4 themeData];
  sub_1000317B8(0, &qword_1000FF328);
  v8 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  sub_100041BF4(v6, v8);
}

@end