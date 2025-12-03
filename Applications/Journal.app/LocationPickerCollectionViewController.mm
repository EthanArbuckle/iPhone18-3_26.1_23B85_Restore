@interface LocationPickerCollectionViewController
- (_TtC7Journal38LocationPickerCollectionViewController)initWithNibName:(id)name bundle:(id)bundle;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)onCancelButtonTapped;
- (void)updateViewConstraints;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewIsAppearing:(BOOL)appearing;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation LocationPickerCollectionViewController

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  sub_1006DC168();
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_1006DC3A0();
}

- (void)viewIsAppearing:(BOOL)appearing
{
  selfCopy = self;
  sub_1006DD318(appearing);
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  sub_1006DDB0C(appear);
}

- (void)viewDidDisappear:(BOOL)disappear
{
  selfCopy = self;
  sub_1006DDC40(disappear);
}

- (void)onCancelButtonTapped
{
  v3 = self + OBJC_IVAR____TtC7Journal38LocationPickerCollectionViewController_pickerDelegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v4 = *(v3 + 1);
    swift_getObjectType();
    v5 = *(v4 + 16);
    selfCopy = self;
    v5();
    swift_unknownObjectRelease();
  }
}

- (void)updateViewConstraints
{
  selfCopy = self;
  sub_1006DFFE4();
}

- (_TtC7Journal38LocationPickerCollectionViewController)initWithNibName:(id)name bundle:(id)bundle
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
  return sub_1006E6538(v5, v7, bundle);
}

- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section
{
  viewCopy = view;
  selfCopy = self;
  v8 = sub_1006EB03C(section);

  return v8;
}

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  viewCopy = view;
  selfCopy = self;
  v12 = sub_1006E881C(viewCopy, v9);

  (*(v7 + 8))(v9, v6);

  return v12;
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
  sub_1006EB17C();

  (*(v7 + 8))(v9, v6);
}

@end