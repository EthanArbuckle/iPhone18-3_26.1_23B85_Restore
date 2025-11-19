@interface SuggestedSearchController
- (_TtC7Journal25SuggestedSearchController)initWithNibName:(id)a3 bundle:(id)a4;
- (_TtC7Journal25SuggestedSearchController)initWithSearchResultsController:(id)a3;
- (void)searchBarCancelButtonClicked:(id)a3;
- (void)searchBarSearchButtonClicked:(id)a3;
- (void)searchBarTextDidBeginEditing:(id)a3;
- (void)showViewController:(id)a3 sender:(id)a4;
- (void)updateSearchResultsForSearchController:(id)a3;
- (void)updateSearchResultsForSearchController:(id)a3 selectingSearchSuggestion:(id)a4;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewIsAppearing:(BOOL)a3;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation SuggestedSearchController

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  sub_100473168(a3);
}

- (void)viewIsAppearing:(BOOL)a3
{
  v4 = self;
  sub_100473394(a3);
}

- (void)viewDidAppear:(BOOL)a3
{
  v3 = a3;
  v8.receiver = self;
  v8.super_class = type metadata accessor for SuggestedSearchController();
  v4 = v8.receiver;
  [(SuggestedSearchController *)&v8 viewDidAppear:v3];
  v5 = [v4 traitCollection];
  v6 = [v5 userInterfaceIdiom];

  if (v6 != 5)
  {
    v7 = [v4 searchBar];
    [v7 becomeFirstResponder];
  }

  [v4 updateSearchResultsForSearchController:v4];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v4 = self;
  sub_1004735D8(a3);
}

- (void)viewDidDisappear:(BOOL)a3
{
  v4 = self;
  sub_1004736DC(a3);
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

  sub_1004738E8(a3, v10);

  sub_100004F84(v10, &qword_100AD13D0);
}

- (_TtC7Journal25SuggestedSearchController)initWithSearchResultsController:(id)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC7Journal25SuggestedSearchController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)updateSearchResultsForSearchController:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100477830(v4);
}

- (void)updateSearchResultsForSearchController:(id)a3 selectingSearchSuggestion:(id)a4
{
  v5 = a3;
  swift_unknownObjectRetain();
  v6 = self;
  sub_100479530();

  swift_unknownObjectRelease();
}

- (void)searchBarSearchButtonClicked:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100479754();
}

- (void)searchBarCancelButtonClicked:(id)a3
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    v4 = self;
    sub_10041DCE4();
    swift_unknownObjectRelease();
  }
}

- (void)searchBarTextDidBeginEditing:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1004798F0();
}

@end