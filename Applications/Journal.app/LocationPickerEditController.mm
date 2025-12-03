@interface LocationPickerEditController
- (_TtC7Journal28LocationPickerEditController)initWithCollectionViewLayout:(id)layout;
- (_TtC7Journal28LocationPickerEditController)initWithNibName:(id)name bundle:(id)bundle;
- (void)cancel;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)completerDidUpdateResults:(id)results;
- (void)done;
- (void)loadView;
- (void)searchBar:(id)bar textDidChange:(id)change;
- (void)searchBarCancelButtonClicked:(id)clicked;
- (void)viewDidLoad;
- (void)viewIsAppearing:(BOOL)appearing;
@end

@implementation LocationPickerEditController

- (void)loadView
{
  selfCopy = self;
  sub_100826B4C();
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_100826D18();
}

- (void)viewIsAppearing:(BOOL)appearing
{
  appearingCopy = appearing;
  v9.receiver = self;
  v9.super_class = type metadata accessor for LocationPickerEditController();
  v4 = v9.receiver;
  [(LocationPickerEditController *)&v9 viewIsAppearing:appearingCopy];
  traitCollection = [v4 traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  if (userInterfaceIdiom == 5)
  {
    navigationController = [v4 navigationController];
    if (navigationController)
    {
      v8 = navigationController;
      [navigationController setToolbarHidden:0 animated:appearingCopy];
    }
  }
}

- (void)searchBar:(id)bar textDidChange:(id)change
{
  barCopy = bar;
  selfCopy = self;
  sub_1008308A8(barCopy);
}

- (void)searchBarCancelButtonClicked:(id)clicked
{
  clickedCopy = clicked;
  selfCopy = self;
  sub_10082CAA8(clickedCopy);
}

- (void)completerDidUpdateResults:(id)results
{
  resultsCopy = results;
  selfCopy = self;
  sub_10082CBD0(resultsCopy);
}

- (_TtC7Journal28LocationPickerEditController)initWithCollectionViewLayout:(id)layout
{
  layoutCopy = layout;
  v4 = sub_100830998(layoutCopy);

  return v4;
}

- (_TtC7Journal28LocationPickerEditController)initWithNibName:(id)name bundle:(id)bundle
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
  return sub_10082D0B4(v5, v7, bundle);
}

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  viewCopy = view;
  selfCopy = self;
  sub_100830B30();

  (*(v7 + 8))(v9, v6);
}

- (void)cancel
{
  v3 = self + OBJC_IVAR____TtC7Journal28LocationPickerEditController_pickerDelegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v4 = *(v3 + 1);
    swift_getObjectType();
    v5 = *(v4 + 8);
    selfCopy = self;
    v5();
    swift_unknownObjectRelease();
  }
}

- (void)done
{
  selfCopy = self;
  sub_10082F8E4();
}

@end