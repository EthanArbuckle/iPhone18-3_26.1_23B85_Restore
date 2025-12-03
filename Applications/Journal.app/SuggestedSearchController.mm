@interface SuggestedSearchController
- (_TtC7Journal25SuggestedSearchController)initWithNibName:(id)name bundle:(id)bundle;
- (_TtC7Journal25SuggestedSearchController)initWithSearchResultsController:(id)controller;
- (void)searchBarCancelButtonClicked:(id)clicked;
- (void)searchBarSearchButtonClicked:(id)clicked;
- (void)searchBarTextDidBeginEditing:(id)editing;
- (void)showViewController:(id)controller sender:(id)sender;
- (void)updateSearchResultsForSearchController:(id)controller;
- (void)updateSearchResultsForSearchController:(id)controller selectingSearchSuggestion:(id)suggestion;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewIsAppearing:(BOOL)appearing;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation SuggestedSearchController

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  sub_100473168(appear);
}

- (void)viewIsAppearing:(BOOL)appearing
{
  selfCopy = self;
  sub_100473394(appearing);
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  v8.receiver = self;
  v8.super_class = type metadata accessor for SuggestedSearchController();
  v4 = v8.receiver;
  [(SuggestedSearchController *)&v8 viewDidAppear:appearCopy];
  traitCollection = [v4 traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  if (userInterfaceIdiom != 5)
  {
    searchBar = [v4 searchBar];
    [searchBar becomeFirstResponder];
  }

  [v4 updateSearchResultsForSearchController:v4];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  selfCopy = self;
  sub_1004735D8(disappear);
}

- (void)viewDidDisappear:(BOOL)disappear
{
  selfCopy = self;
  sub_1004736DC(disappear);
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

  sub_1004738E8(controller, v10);

  sub_100004F84(v10, &qword_100AD13D0);
}

- (_TtC7Journal25SuggestedSearchController)initWithSearchResultsController:(id)controller
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC7Journal25SuggestedSearchController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)updateSearchResultsForSearchController:(id)controller
{
  controllerCopy = controller;
  selfCopy = self;
  sub_100477830(controllerCopy);
}

- (void)updateSearchResultsForSearchController:(id)controller selectingSearchSuggestion:(id)suggestion
{
  controllerCopy = controller;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_100479530();

  swift_unknownObjectRelease();
}

- (void)searchBarSearchButtonClicked:(id)clicked
{
  clickedCopy = clicked;
  selfCopy = self;
  sub_100479754();
}

- (void)searchBarCancelButtonClicked:(id)clicked
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    selfCopy = self;
    sub_10041DCE4();
    swift_unknownObjectRelease();
  }
}

- (void)searchBarTextDidBeginEditing:(id)editing
{
  editingCopy = editing;
  selfCopy = self;
  sub_1004798F0();
}

@end