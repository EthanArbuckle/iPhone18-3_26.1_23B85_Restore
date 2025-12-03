@interface DiscoverySheetViewController
- (_TtC10FitnessApp28DiscoverySheetViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout;
- (_TtC10FitnessApp28DiscoverySheetViewController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout;
- (void)didTapContinueButton;
- (void)didTapXButton;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
@end

@implementation DiscoverySheetViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_1005C7148();
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  v5.receiver = self;
  v5.super_class = type metadata accessor for DiscoverySheetViewController();
  v4 = v5.receiver;
  [(DiscoverySheetViewController *)&v5 viewDidAppear:appearCopy];
  sub_1005C7880();
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_100329EB8(v4[OBJC_IVAR____TtC10FitnessApp28DiscoverySheetViewController_dataModel]);
    swift_unknownObjectRelease();
  }
}

- (void)didTapXButton
{
  selfCopy = self;
  sub_1005C7F98();
  [(DiscoverySheetViewController *)selfCopy dismissViewControllerAnimated:1 completion:0];
}

- (void)didTapContinueButton
{
  selfCopy = self;
  sub_1005C7F78();
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_10032A418(selfCopy);
    swift_unknownObjectRelease();
  }
}

- (_TtC10FitnessApp28DiscoverySheetViewController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC10FitnessApp28DiscoverySheetViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end