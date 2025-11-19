@interface CarSearchCategoriesCardViewController
- (BOOL)showSearchBar;
- (NSArray)categories;
- (_TtC4Maps37CarSearchCategoriesCardViewController)initWithCategories:(id)a3 delegate:(id)a4;
- (_TtC4Maps37CarSearchCategoriesCardViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (_TtP4Maps45CarSearchCategoriesCardViewControllerDelegate_)delegate;
- (void)didSelectCategoryWithName:(id)a3;
- (void)didSelectUserInputWithAction:(unint64_t)a3 interactionModel:(unint64_t)a4;
- (void)setCategories:(id)a3;
- (void)setShowSearchBar:(BOOL)a3;
@end

@implementation CarSearchCategoriesCardViewController

- (NSArray)categories
{
  sub_1004A37CC();

  v2.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v2.super.isa;
}

- (void)setCategories:(id)a3
{
  sub_1004A37CC();
  *(self + OBJC_IVAR____TtC4Maps37CarSearchCategoriesCardViewController_categories) = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = self;

  sub_1004A1384();
}

- (_TtP4Maps45CarSearchCategoriesCardViewControllerDelegate_)delegate
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (_TtC4Maps37CarSearchCategoriesCardViewController)initWithCategories:(id)a3 delegate:(id)a4
{
  sub_1004A37CC();
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  swift_unknownObjectRetain();
  v6 = sub_1004A3364(v5, a4);
  swift_unknownObjectRelease();
  return v6;
}

- (BOOL)showSearchBar
{
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = self;
  static Published.subscript.getter();

  return v5;
}

- (void)setShowSearchBar:(BOOL)a3
{
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = self;
  static Published.subscript.setter();
}

- (void)didSelectCategoryWithName:(id)a3
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  v7 = self;
  sub_1004A1CF8(v4, v6);
}

- (void)didSelectUserInputWithAction:(unint64_t)a3 interactionModel:(unint64_t)a4
{
  v6 = self;
  sub_1004A1FAC(a3, a4);
}

- (_TtC4Maps37CarSearchCategoriesCardViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end