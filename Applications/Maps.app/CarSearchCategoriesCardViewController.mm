@interface CarSearchCategoriesCardViewController
- (BOOL)showSearchBar;
- (NSArray)categories;
- (_TtC4Maps37CarSearchCategoriesCardViewController)initWithCategories:(id)categories delegate:(id)delegate;
- (_TtC4Maps37CarSearchCategoriesCardViewController)initWithNibName:(id)name bundle:(id)bundle;
- (_TtP4Maps45CarSearchCategoriesCardViewControllerDelegate_)delegate;
- (void)didSelectCategoryWithName:(id)name;
- (void)didSelectUserInputWithAction:(unint64_t)action interactionModel:(unint64_t)model;
- (void)setCategories:(id)categories;
- (void)setShowSearchBar:(BOOL)bar;
@end

@implementation CarSearchCategoriesCardViewController

- (NSArray)categories
{
  sub_1004A37CC();

  v2.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v2.super.isa;
}

- (void)setCategories:(id)categories
{
  sub_1004A37CC();
  *(self + OBJC_IVAR____TtC4Maps37CarSearchCategoriesCardViewController_categories) = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;

  sub_1004A1384();
}

- (_TtP4Maps45CarSearchCategoriesCardViewControllerDelegate_)delegate
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (_TtC4Maps37CarSearchCategoriesCardViewController)initWithCategories:(id)categories delegate:(id)delegate
{
  sub_1004A37CC();
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  swift_unknownObjectRetain();
  v6 = sub_1004A3364(v5, delegate);
  swift_unknownObjectRelease();
  return v6;
}

- (BOOL)showSearchBar
{
  swift_getKeyPath();
  swift_getKeyPath();
  selfCopy = self;
  static Published.subscript.getter();

  return v5;
}

- (void)setShowSearchBar:(BOOL)bar
{
  swift_getKeyPath();
  swift_getKeyPath();
  selfCopy = self;
  static Published.subscript.setter();
}

- (void)didSelectCategoryWithName:(id)name
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  selfCopy = self;
  sub_1004A1CF8(v4, v6);
}

- (void)didSelectUserInputWithAction:(unint64_t)action interactionModel:(unint64_t)model
{
  selfCopy = self;
  sub_1004A1FAC(action, model);
}

- (_TtC4Maps37CarSearchCategoriesCardViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end