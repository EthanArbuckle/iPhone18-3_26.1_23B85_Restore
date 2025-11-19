@interface JournalSearchController
- (_TtC7Journal23JournalSearchController)initWithNibName:(id)a3 bundle:(id)a4;
- (_TtC7Journal23JournalSearchController)initWithSearchResultsController:(id)a3;
- (void)searchBarSearchButtonClicked:(id)a3;
- (void)updateSearchResultsForSearchController:(id)a3;
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
  v3 = [v2 searchBar];
  [v3 setDelegate:v2];
}

- (_TtC7Journal23JournalSearchController)initWithSearchResultsController:(id)a3
{
  *&self->searchDelegate[OBJC_IVAR____TtC7Journal23JournalSearchController_searchDelegate] = 0;
  swift_unknownObjectWeakInit();
  v5 = (&self->super.super.super.super.isa + OBJC_IVAR____TtC7Journal23JournalSearchController_currentSearchText);
  *v5 = 0;
  v5[1] = 0xE000000000000000;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC7Journal23JournalSearchController_currentSearchTokens) = _swiftEmptyArrayStorage;
  v7.receiver = self;
  v7.super_class = type metadata accessor for JournalSearchController();
  return [(JournalSearchController *)&v7 initWithSearchResultsController:a3];
}

- (_TtC7Journal23JournalSearchController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a4;
  return sub_100167D7C(v5, v7, a4);
}

- (void)updateSearchResultsForSearchController:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100168030(v4);
}

- (void)searchBarSearchButtonClicked:(id)a3
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    v4 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC7Journal23JournalSearchController_currentSearchText);
    v5 = *&self->searchDelegate[OBJC_IVAR____TtC7Journal23JournalSearchController_currentSearchText];
    v6 = self;

    sub_100561734(v4, v5);

    swift_unknownObjectRelease();
  }
}

@end