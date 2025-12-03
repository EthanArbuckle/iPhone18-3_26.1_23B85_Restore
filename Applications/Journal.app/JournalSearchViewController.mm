@interface JournalSearchViewController
- (_TtC7Journal27JournalSearchViewController)initWithCoder:(id)coder;
- (_TtC7Journal27JournalSearchViewController)initWithNibName:(id)name bundle:(id)bundle;
- (_TtC7Journal27JournalSearchViewController)initWithSearchResultsController:(id)controller;
- (void)showViewController:(id)controller sender:(id)sender;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation JournalSearchViewController

- (_TtC7Journal27JournalSearchViewController)initWithCoder:(id)coder
{
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC7Journal27JournalSearchViewController_searchResultsViewModel) = 0;
  type metadata accessor for JournalSearchViewController();
  swift_deallocPartialClassInstance();
  return 0;
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_1004B9C04();
}

- (void)viewDidLayoutSubviews
{
  selfCopy = self;
  sub_1004B9D8C();
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  v5.receiver = self;
  v5.super_class = type metadata accessor for JournalSearchViewController();
  v4 = v5.receiver;
  [(JournalSearchViewController *)&v5 viewDidAppear:appearCopy];
  [v4 setActive:{1, v5.receiver, v5.super_class}];
}

- (void)showViewController:(id)controller sender:(id)sender
{
  if (sender)
  {
    controllerCopy = controller;
    selfCopy = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    controllerCopy2 = controller;
    selfCopy2 = self;
  }

  sub_1004B9FC4(controller, v10);

  sub_1000261D4(v10);
}

- (_TtC7Journal27JournalSearchViewController)initWithSearchResultsController:(id)controller
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC7Journal27JournalSearchViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end