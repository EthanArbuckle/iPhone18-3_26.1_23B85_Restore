@interface LocationPickerEditController
- (_TtC7Journal28LocationPickerEditController)initWithCollectionViewLayout:(id)a3;
- (_TtC7Journal28LocationPickerEditController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)cancel;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)completerDidUpdateResults:(id)a3;
- (void)done;
- (void)loadView;
- (void)searchBar:(id)a3 textDidChange:(id)a4;
- (void)searchBarCancelButtonClicked:(id)a3;
- (void)viewDidLoad;
- (void)viewIsAppearing:(BOOL)a3;
@end

@implementation LocationPickerEditController

- (void)loadView
{
  v2 = self;
  sub_100826B4C();
}

- (void)viewDidLoad
{
  v2 = self;
  sub_100826D18();
}

- (void)viewIsAppearing:(BOOL)a3
{
  v3 = a3;
  v9.receiver = self;
  v9.super_class = type metadata accessor for LocationPickerEditController();
  v4 = v9.receiver;
  [(LocationPickerEditController *)&v9 viewIsAppearing:v3];
  v5 = [v4 traitCollection];
  v6 = [v5 userInterfaceIdiom];

  if (v6 == 5)
  {
    v7 = [v4 navigationController];
    if (v7)
    {
      v8 = v7;
      [v7 setToolbarHidden:0 animated:v3];
    }
  }
}

- (void)searchBar:(id)a3 textDidChange:(id)a4
{
  v5 = a3;
  v6 = self;
  sub_1008308A8(v5);
}

- (void)searchBarCancelButtonClicked:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10082CAA8(v4);
}

- (void)completerDidUpdateResults:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10082CBD0(v4);
}

- (_TtC7Journal28LocationPickerEditController)initWithCollectionViewLayout:(id)a3
{
  v3 = a3;
  v4 = sub_100830998(v3);

  return v4;
}

- (_TtC7Journal28LocationPickerEditController)initWithNibName:(id)a3 bundle:(id)a4
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
  return sub_10082D0B4(v5, v7, a4);
}

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = a3;
  v11 = self;
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
    v6 = self;
    v5();
    swift_unknownObjectRelease();
  }
}

- (void)done
{
  v2 = self;
  sub_10082F8E4();
}

@end