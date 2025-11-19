@interface DiscoverySheetViewController
- (_TtC10FitnessApp28DiscoverySheetViewController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 contentLayout:(int64_t)a6;
- (_TtC10FitnessApp28DiscoverySheetViewController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 contentLayout:(int64_t)a6;
- (void)didTapContinueButton;
- (void)didTapXButton;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
@end

@implementation DiscoverySheetViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_1005C7148();
}

- (void)viewDidAppear:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = type metadata accessor for DiscoverySheetViewController();
  v4 = v5.receiver;
  [(DiscoverySheetViewController *)&v5 viewDidAppear:v3];
  sub_1005C7880();
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_100329EB8(v4[OBJC_IVAR____TtC10FitnessApp28DiscoverySheetViewController_dataModel]);
    swift_unknownObjectRelease();
  }
}

- (void)didTapXButton
{
  v2 = self;
  sub_1005C7F98();
  [(DiscoverySheetViewController *)v2 dismissViewControllerAnimated:1 completion:0];
}

- (void)didTapContinueButton
{
  v2 = self;
  sub_1005C7F78();
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_10032A418(v2);
    swift_unknownObjectRelease();
  }
}

- (_TtC10FitnessApp28DiscoverySheetViewController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 contentLayout:(int64_t)a6
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC10FitnessApp28DiscoverySheetViewController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 contentLayout:(int64_t)a6
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end