@interface JournalSearchViewController
- (_TtC7Journal27JournalSearchViewController)initWithCoder:(id)a3;
- (_TtC7Journal27JournalSearchViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (_TtC7Journal27JournalSearchViewController)initWithSearchResultsController:(id)a3;
- (void)showViewController:(id)a3 sender:(id)a4;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation JournalSearchViewController

- (_TtC7Journal27JournalSearchViewController)initWithCoder:(id)a3
{
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC7Journal27JournalSearchViewController_searchResultsViewModel) = 0;
  type metadata accessor for JournalSearchViewController();
  swift_deallocPartialClassInstance();
  return 0;
}

- (void)viewDidLoad
{
  v2 = self;
  sub_1004B9C04();
}

- (void)viewDidLayoutSubviews
{
  v2 = self;
  sub_1004B9D8C();
}

- (void)viewDidAppear:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = type metadata accessor for JournalSearchViewController();
  v4 = v5.receiver;
  [(JournalSearchViewController *)&v5 viewDidAppear:v3];
  [v4 setActive:{1, v5.receiver, v5.super_class}];
}

- (void)showViewController:(id)a3 sender:(id)a4
{
  if (a4)
  {
    v6 = a3;
    v7 = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    v8 = a3;
    v9 = self;
  }

  sub_1004B9FC4(a3, v10);

  sub_1000261D4(v10);
}

- (_TtC7Journal27JournalSearchViewController)initWithSearchResultsController:(id)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC7Journal27JournalSearchViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end