@interface JournalSearchController
- (_TtC7Journal23JournalSearchController)initWithNibName:(id)name bundle:(id)bundle;
- (_TtC7Journal23JournalSearchController)initWithSearchResultsController:(id)controller;
- (void)searchBarSearchButtonClicked:(id)clicked;
- (void)updateSearchResultsForSearchController:(id)controller;
- (void)viewDidLoad;
@end

@implementation JournalSearchController

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for JournalSearchController();
  v2 = v4.receiver;
  [(JournalSearchController *)&v4 viewDidLoad];
  [v2 setSearchResultsUpdater:{v2, v4.receiver, v4.super_class}];
  searchBar = [v2 searchBar];
  [searchBar setDelegate:v2];
}

- (_TtC7Journal23JournalSearchController)initWithSearchResultsController:(id)controller
{
  *&self->searchDelegate[OBJC_IVAR____TtC7Journal23JournalSearchController_searchDelegate] = 0;
  swift_unknownObjectWeakInit();
  v5 = (&self->super.super.super.super.isa + OBJC_IVAR____TtC7Journal23JournalSearchController_currentSearchText);
  *v5 = 0;
  v5[1] = 0xE000000000000000;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC7Journal23JournalSearchController_currentSearchTokens) = _swiftEmptyArrayStorage;
  v7.receiver = self;
  v7.super_class = type metadata accessor for JournalSearchController();
  return [(JournalSearchController *)&v7 initWithSearchResultsController:controller];
}

- (_TtC7Journal23JournalSearchController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  bundleCopy = bundle;
  return sub_100167D7C(v5, v7, bundle);
}

- (void)updateSearchResultsForSearchController:(id)controller
{
  controllerCopy = controller;
  selfCopy = self;
  sub_100168030(controllerCopy);
}

- (void)searchBarSearchButtonClicked:(id)clicked
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    v4 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC7Journal23JournalSearchController_currentSearchText);
    v5 = *&self->searchDelegate[OBJC_IVAR____TtC7Journal23JournalSearchController_currentSearchText];
    selfCopy = self;

    sub_100561734(v4, v5);

    swift_unknownObjectRelease();
  }
}

@end