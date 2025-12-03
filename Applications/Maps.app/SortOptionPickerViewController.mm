@interface SortOptionPickerViewController
- (_TtC4Maps30SortOptionPickerViewController)initWithCoder:(id)coder;
- (_TtC4Maps30SortOptionPickerViewController)initWithNibName:(id)name bundle:(id)bundle;
- (_TtC4Maps30SortOptionPickerViewController)initWithSortOptions:(id)options initialSelectedSortOptionIndex:(int64_t)index onDone:(id)done;
- (id)customDismissHandler;
- (void)setCustomDismissHandler:(id)handler;
- (void)viewDidLoad;
@end

@implementation SortOptionPickerViewController

- (id)customDismissHandler
{
  if (*(self + OBJC_IVAR____TtC4Maps30SortOptionPickerViewController_customDismissHandler))
  {
    v2 = *(self + OBJC_IVAR____TtC4Maps30SortOptionPickerViewController_customDismissHandler + 8);
    v5[4] = *(self + OBJC_IVAR____TtC4Maps30SortOptionPickerViewController_customDismissHandler);
    v5[5] = v2;
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 1107296256;
    v5[2] = sub_100039C64;
    v5[3] = &unk_101616230;
    v3 = _Block_copy(v5);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setCustomDismissHandler:(id)handler
{
  v4 = _Block_copy(handler);
  if (v4)
  {
    v5 = v4;
    v4 = swift_allocObject();
    *(v4 + 16) = v5;
    v6 = sub_1000FA694;
  }

  else
  {
    v6 = 0;
  }

  v7 = (self + OBJC_IVAR____TtC4Maps30SortOptionPickerViewController_customDismissHandler);
  v8 = *(self + OBJC_IVAR____TtC4Maps30SortOptionPickerViewController_customDismissHandler);
  v9 = *(self + OBJC_IVAR____TtC4Maps30SortOptionPickerViewController_customDismissHandler + 8);
  *v7 = v6;
  v7[1] = v4;
  selfCopy = self;
  sub_1000D3B90(v8, v9);
}

- (_TtC4Maps30SortOptionPickerViewController)initWithSortOptions:(id)options initialSelectedSortOptionIndex:(int64_t)index onDone:(id)done
{
  ObjectType = swift_getObjectType();
  v9 = _Block_copy(done);
  type metadata accessor for SortOptionPickerSortOption();
  v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = swift_allocObject();
  v12 = (self + OBJC_IVAR____TtC4Maps30SortOptionPickerViewController_customDismissHandler);
  *v12 = 0;
  v12[1] = 0;
  *(self + OBJC_IVAR____TtC4Maps30SortOptionPickerViewController_sortOptions) = v10;
  *(self + OBJC_IVAR____TtC4Maps30SortOptionPickerViewController_initialSelectedSortOptionIndex) = index;
  *(v11 + 16) = v9;
  v13 = (self + OBJC_IVAR____TtC4Maps30SortOptionPickerViewController_onDone);
  *v13 = sub_1001D18BC;
  v13[1] = v11;
  v15.receiver = self;
  v15.super_class = ObjectType;
  return [(MapsHostingContaineeViewController *)&v15 initWithNibName:0 bundle:0];
}

- (_TtC4Maps30SortOptionPickerViewController)initWithCoder:(id)coder
{
  v3 = (self + OBJC_IVAR____TtC4Maps30SortOptionPickerViewController_customDismissHandler);
  *v3 = 0;
  v3[1] = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_1003BFD60();
}

- (_TtC4Maps30SortOptionPickerViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end