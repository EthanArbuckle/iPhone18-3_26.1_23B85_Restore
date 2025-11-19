@interface LocationPickerCollectionViewController
- (_TtC7Journal38LocationPickerCollectionViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4;
- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)onCancelButtonTapped;
- (void)updateViewConstraints;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewIsAppearing:(BOOL)a3;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation LocationPickerCollectionViewController

- (void)viewWillAppear:(BOOL)a3
{
  v3 = self;
  sub_1006DC168();
}

- (void)viewDidLoad
{
  v2 = self;
  sub_1006DC3A0();
}

- (void)viewIsAppearing:(BOOL)a3
{
  v4 = self;
  sub_1006DD318(a3);
}

- (void)viewDidAppear:(BOOL)a3
{
  v4 = self;
  sub_1006DDB0C(a3);
}

- (void)viewDidDisappear:(BOOL)a3
{
  v4 = self;
  sub_1006DDC40(a3);
}

- (void)onCancelButtonTapped
{
  v3 = self + OBJC_IVAR____TtC7Journal38LocationPickerCollectionViewController_pickerDelegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v4 = *(v3 + 1);
    swift_getObjectType();
    v5 = *(v4 + 16);
    v6 = self;
    v5();
    swift_unknownObjectRelease();
  }
}

- (void)updateViewConstraints
{
  v2 = self;
  sub_1006DFFE4();
}

- (_TtC7Journal38LocationPickerCollectionViewController)initWithNibName:(id)a3 bundle:(id)a4
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
  return sub_1006E6538(v5, v7, a4);
}

- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4
{
  v6 = a3;
  v7 = self;
  v8 = sub_1006EB03C(a4);

  return v8;
}

- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = a3;
  v11 = self;
  v12 = sub_1006E881C(v10, v9);

  (*(v7 + 8))(v9, v6);

  return v12;
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
  sub_1006EB17C();

  (*(v7 + 8))(v9, v6);
}

@end