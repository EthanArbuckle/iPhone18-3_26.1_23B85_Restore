@interface SearchSuggestionsViewController
- (BOOL)hasSuggestions;
- (UICollectionView)collectionView;
- (UIScrollView)observableScrollView;
- (_TtC10MobileMail31SearchSuggestionsViewController)initWithMailScene:(id)scene contactStore:(id)store delegate:(id)delegate;
- (_TtC10MobileMail31SearchSuggestionsViewController)initWithNibName:(id)name bundle:(id)bundle;
- (id)searchSuggestionsForCategory:(id)category;
- (id)transitionCoordinatorForKeyboardAvoidance:(id)avoidance;
- (id)updateSuggestionsWithResult:(id)result;
- (id)viewForKeyboardAvoidance:(id)avoidance;
- (void)beginUpdatingSuggestions;
- (void)clearSuggestions;
- (void)collectionView:(id)view didEndDisplayingCell:(id)cell forItemAtIndexPath:(id)path;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)didRemoveSearchSuggestion:(id)suggestion;
- (void)didTapCheckInUrlFor:(id)for;
- (void)didTapMapAddressFor:(id)for;
- (void)didTapViewMessageFor:(id)for;
- (void)endUpdatingSuggestions;
- (void)keyboardAvoidance:(id)avoidance adjustForFrameOverlap:(CGRect)overlap;
- (void)reportVisibleSuggestionResults;
- (void)setCollectionView:(id)view;
- (void)shouldReloadSearchSuggestion:(id)suggestion;
- (void)traitCollectionDidChange:(id)change;
- (void)updateLayoutMargins:(UIEdgeInsets)margins;
- (void)viewDidLoad;
- (void)viewLayoutMarginsDidChange;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation SearchSuggestionsViewController

- (BOOL)hasSuggestions
{
  _objc_retain(self);
  sub_1004140E8();
  _objc_release(self);
  return _convertBoolToObjCBool(_:)() & 1;
}

- (UICollectionView)collectionView
{
  _objc_retain(self);
  v4 = sub_10041497C();
  _objc_release(self);

  return v4;
}

- (void)setCollectionView:(id)view
{
  _objc_retain(view);
  _objc_retain(self);
  sub_100414AF0(view);
  _objc_release(self);
}

- (_TtC10MobileMail31SearchSuggestionsViewController)initWithMailScene:(id)scene contactStore:(id)store delegate:(id)delegate
{
  _objc_retain(scene);
  _objc_retain(store);
  swift_unknownObjectRetain();
  return sub_100419A7C(scene, store, delegate);
}

- (void)viewDidLoad
{
  _objc_retain(self);
  sub_10041B43C();
  _objc_release(self);
}

- (void)viewWillAppear:(BOOL)appear
{
  _objc_retain(self);
  v3 = _convertObjCBoolToBool(_:)();
  sub_10041B564(v3 & 1);
  _objc_release(self);
}

- (void)viewLayoutMarginsDidChange
{
  _objc_retain(self);
  sub_10041B80C();
  _objc_release(self);
}

- (void)traitCollectionDidChange:(id)change
{
  _objc_retain(change);
  _objc_retain(self);
  sub_10041B9C0(change);
  _objc_release(self);
  _objc_release(change);
}

- (_TtC10MobileMail31SearchSuggestionsViewController)initWithNibName:(id)name bundle:(id)bundle
{
  _objc_retain(name);
  _objc_retain(bundle);
  if (name)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v4;
    _objc_release(name);
    v5 = v6;
  }

  else
  {
    v5 = 0;
  }

  sub_10041E078(v5);
}

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  selfCopy = self;
  viewCopy = view;
  pathCopy = path;
  v10 = type metadata accessor for IndexPath();
  v7 = *(v10 - 8);
  v8 = v10 - 8;
  v6 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = __chkstk_darwin(viewCopy);
  v9 = &v6 - v6;
  _objc_retain(v5);
  _objc_retain(pathCopy);
  _objc_retain(self);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  sub_10041E1C8(viewCopy, v9);
  (*(v7 + 8))(v9, v10);
  _objc_release(pathCopy);
  _objc_release(selfCopy);
  _objc_release(viewCopy);
}

- (void)collectionView:(id)view didEndDisplayingCell:(id)cell forItemAtIndexPath:(id)path
{
  selfCopy = self;
  viewCopy = view;
  cellCopy = cell;
  pathCopy = path;
  v12 = type metadata accessor for IndexPath();
  v9 = *(v12 - 8);
  v10 = v12 - 8;
  v8 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = __chkstk_darwin(viewCopy);
  v11 = &v7 - v8;
  _objc_retain(v6);
  _objc_retain(cellCopy);
  _objc_retain(pathCopy);
  _objc_retain(self);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  sub_10041F94C(viewCopy);
  (*(v9 + 8))(v11, v12);
  _objc_release(pathCopy);
  _objc_release(selfCopy);
  _objc_release(cellCopy);
  _objc_release(viewCopy);
}

- (UIScrollView)observableScrollView
{
  _objc_retain(self);
  v4 = sub_10041FB74();
  _objc_release(self);

  return v4;
}

- (void)clearSuggestions
{
  _objc_retain(self);
  sub_10041FBA0();
  _objc_release(self);
}

- (void)beginUpdatingSuggestions
{
  _objc_retain(self);
  sub_10041FC74();
  _objc_release(self);
}

- (void)endUpdatingSuggestions
{
  _objc_retain(self);
  sub_10041FD40();
  _objc_release(self);
}

- (id)updateSuggestionsWithResult:(id)result
{
  _objc_retain(result);
  _objc_retain(self);
  sub_10041FDE0(result);
  _objc_release(self);
  _objc_release(result);
  sub_10040BD3C();
  sub_10025C9B0(&qword_1006DBCE8);
  sub_10040BDA0();
  v7.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

  return v7.super.isa;
}

- (id)searchSuggestionsForCategory:(id)category
{
  _objc_retain(category);
  _objc_retain(self);
  sub_100421450(category);
  _objc_release(self);
  _objc_release(category);
  sub_100427EE0();
  isa = Array._bridgeToObjectiveC()().super.isa;

  return isa;
}

- (void)reportVisibleSuggestionResults
{
  _objc_retain(self);
  sub_10042156C();
  _objc_release(self);
}

- (void)updateLayoutMargins:(UIEdgeInsets)margins
{
  _objc_retain(self);
  sub_100421620(margins.top, margins.left, margins.bottom, margins.right);
  _objc_release(self);
}

- (id)viewForKeyboardAvoidance:(id)avoidance
{
  _objc_retain(avoidance);
  _objc_retain(self);
  v7 = sub_100421758();
  _objc_release(self);
  _objc_release(avoidance);

  return v7;
}

- (id)transitionCoordinatorForKeyboardAvoidance:(id)avoidance
{
  _objc_retain(avoidance);
  _objc_retain(self);
  v7 = sub_100421820();
  _objc_release(self);
  _objc_release(avoidance);

  return v7;
}

- (void)keyboardAvoidance:(id)avoidance adjustForFrameOverlap:(CGRect)overlap
{
  _objc_retain(avoidance);
  _objc_retain(self);
  sub_1004218D4(overlap.origin.x, overlap.origin.y, overlap.size.width, overlap.size.height);
  _objc_release(self);
  _objc_release(avoidance);
}

- (void)shouldReloadSearchSuggestion:(id)suggestion
{
  _objc_retain(suggestion);
  _objc_retain(self);
  sub_100421B40(suggestion);
  _objc_release(self);
  _objc_release(suggestion);
}

- (void)didRemoveSearchSuggestion:(id)suggestion
{
  _objc_retain(suggestion);
  _objc_retain(self);
  sub_100421C1C(suggestion);
  _objc_release(self);
  _objc_release(suggestion);
}

- (void)didTapCheckInUrlFor:(id)for
{
  _objc_retain(for);
  _objc_retain(self);
  sub_100423CBC(for);
  _objc_release(self);
  _objc_release(for);
}

- (void)didTapViewMessageFor:(id)for
{
  _objc_retain(for);
  _objc_retain(self);
  sub_10042523C(for);
  _objc_release(self);
  _objc_release(for);
}

- (void)didTapMapAddressFor:(id)for
{
  _objc_retain(for);
  _objc_retain(self);
  sub_100425EDC(for);
  _objc_release(self);
  _objc_release(for);
}

@end