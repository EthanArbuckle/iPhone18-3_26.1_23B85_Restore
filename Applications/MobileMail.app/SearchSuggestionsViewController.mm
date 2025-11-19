@interface SearchSuggestionsViewController
- (BOOL)hasSuggestions;
- (UICollectionView)collectionView;
- (UIScrollView)observableScrollView;
- (_TtC10MobileMail31SearchSuggestionsViewController)initWithMailScene:(id)a3 contactStore:(id)a4 delegate:(id)a5;
- (_TtC10MobileMail31SearchSuggestionsViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (id)searchSuggestionsForCategory:(id)a3;
- (id)transitionCoordinatorForKeyboardAvoidance:(id)a3;
- (id)updateSuggestionsWithResult:(id)a3;
- (id)viewForKeyboardAvoidance:(id)a3;
- (void)beginUpdatingSuggestions;
- (void)clearSuggestions;
- (void)collectionView:(id)a3 didEndDisplayingCell:(id)a4 forItemAtIndexPath:(id)a5;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)didRemoveSearchSuggestion:(id)a3;
- (void)didTapCheckInUrlFor:(id)a3;
- (void)didTapMapAddressFor:(id)a3;
- (void)didTapViewMessageFor:(id)a3;
- (void)endUpdatingSuggestions;
- (void)keyboardAvoidance:(id)a3 adjustForFrameOverlap:(CGRect)a4;
- (void)reportVisibleSuggestionResults;
- (void)setCollectionView:(id)a3;
- (void)shouldReloadSearchSuggestion:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)updateLayoutMargins:(UIEdgeInsets)a3;
- (void)viewDidLoad;
- (void)viewLayoutMarginsDidChange;
- (void)viewWillAppear:(BOOL)a3;
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

- (void)setCollectionView:(id)a3
{
  _objc_retain(a3);
  _objc_retain(self);
  sub_100414AF0(a3);
  _objc_release(self);
}

- (_TtC10MobileMail31SearchSuggestionsViewController)initWithMailScene:(id)a3 contactStore:(id)a4 delegate:(id)a5
{
  _objc_retain(a3);
  _objc_retain(a4);
  swift_unknownObjectRetain();
  return sub_100419A7C(a3, a4, a5);
}

- (void)viewDidLoad
{
  _objc_retain(self);
  sub_10041B43C();
  _objc_release(self);
}

- (void)viewWillAppear:(BOOL)a3
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

- (void)traitCollectionDidChange:(id)a3
{
  _objc_retain(a3);
  _objc_retain(self);
  sub_10041B9C0(a3);
  _objc_release(self);
  _objc_release(a3);
}

- (_TtC10MobileMail31SearchSuggestionsViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  _objc_retain(a3);
  _objc_retain(a4);
  if (a3)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v4;
    _objc_release(a3);
    v5 = v6;
  }

  else
  {
    v5 = 0;
  }

  sub_10041E078(v5);
}

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  v12 = self;
  v13 = a3;
  v11 = a4;
  v10 = type metadata accessor for IndexPath();
  v7 = *(v10 - 8);
  v8 = v10 - 8;
  v6 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = __chkstk_darwin(v13);
  v9 = &v6 - v6;
  _objc_retain(v5);
  _objc_retain(v11);
  _objc_retain(self);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  sub_10041E1C8(v13, v9);
  (*(v7 + 8))(v9, v10);
  _objc_release(v11);
  _objc_release(v12);
  _objc_release(v13);
}

- (void)collectionView:(id)a3 didEndDisplayingCell:(id)a4 forItemAtIndexPath:(id)a5
{
  v14 = self;
  v16 = a3;
  v15 = a4;
  v13 = a5;
  v12 = type metadata accessor for IndexPath();
  v9 = *(v12 - 8);
  v10 = v12 - 8;
  v8 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = __chkstk_darwin(v16);
  v11 = &v7 - v8;
  _objc_retain(v6);
  _objc_retain(v15);
  _objc_retain(v13);
  _objc_retain(self);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  sub_10041F94C(v16);
  (*(v9 + 8))(v11, v12);
  _objc_release(v13);
  _objc_release(v14);
  _objc_release(v15);
  _objc_release(v16);
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

- (id)updateSuggestionsWithResult:(id)a3
{
  _objc_retain(a3);
  _objc_retain(self);
  sub_10041FDE0(a3);
  _objc_release(self);
  _objc_release(a3);
  sub_10040BD3C();
  sub_10025C9B0(&qword_1006DBCE8);
  sub_10040BDA0();
  v7.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

  return v7.super.isa;
}

- (id)searchSuggestionsForCategory:(id)a3
{
  _objc_retain(a3);
  _objc_retain(self);
  sub_100421450(a3);
  _objc_release(self);
  _objc_release(a3);
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

- (void)updateLayoutMargins:(UIEdgeInsets)a3
{
  _objc_retain(self);
  sub_100421620(a3.top, a3.left, a3.bottom, a3.right);
  _objc_release(self);
}

- (id)viewForKeyboardAvoidance:(id)a3
{
  _objc_retain(a3);
  _objc_retain(self);
  v7 = sub_100421758();
  _objc_release(self);
  _objc_release(a3);

  return v7;
}

- (id)transitionCoordinatorForKeyboardAvoidance:(id)a3
{
  _objc_retain(a3);
  _objc_retain(self);
  v7 = sub_100421820();
  _objc_release(self);
  _objc_release(a3);

  return v7;
}

- (void)keyboardAvoidance:(id)a3 adjustForFrameOverlap:(CGRect)a4
{
  _objc_retain(a3);
  _objc_retain(self);
  sub_1004218D4(a4.origin.x, a4.origin.y, a4.size.width, a4.size.height);
  _objc_release(self);
  _objc_release(a3);
}

- (void)shouldReloadSearchSuggestion:(id)a3
{
  _objc_retain(a3);
  _objc_retain(self);
  sub_100421B40(a3);
  _objc_release(self);
  _objc_release(a3);
}

- (void)didRemoveSearchSuggestion:(id)a3
{
  _objc_retain(a3);
  _objc_retain(self);
  sub_100421C1C(a3);
  _objc_release(self);
  _objc_release(a3);
}

- (void)didTapCheckInUrlFor:(id)a3
{
  _objc_retain(a3);
  _objc_retain(self);
  sub_100423CBC(a3);
  _objc_release(self);
  _objc_release(a3);
}

- (void)didTapViewMessageFor:(id)a3
{
  _objc_retain(a3);
  _objc_retain(self);
  sub_10042523C(a3);
  _objc_release(self);
  _objc_release(a3);
}

- (void)didTapMapAddressFor:(id)a3
{
  _objc_retain(a3);
  _objc_retain(self);
  sub_100425EDC(a3);
  _objc_release(self);
  _objc_release(a3);
}

@end