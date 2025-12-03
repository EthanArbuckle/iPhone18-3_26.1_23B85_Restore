@interface TickerViewController
- (CGSize)collectionView:(id)view layout:(id)layout sizeForItemAtIndexPath:(id)path;
- (UIEdgeInsets)collectionView:(id)view layout:(id)layout insetForSectionAtIndex:(int64_t)index;
- (_TtC11FTMInternal20TickerViewController)initWithNibName:(id)name bundle:(id)bundle;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
@end

@implementation TickerViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_1002060F0();
}

- (void)viewDidAppear:(BOOL)appear
{
  v3 = *(&self->super.super.super.isa + OBJC_IVAR____TtC11FTMInternal20TickerViewController_numberValue);
  selfCopy = self;
  sub_1002065E0(v3);
}

- (_TtC11FTMInternal20TickerViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (CGSize)collectionView:(id)view layout:(id)layout sizeForItemAtIndexPath:(id)path
{
  v8 = type metadata accessor for IndexPath();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  viewCopy = view;
  layoutCopy = layout;
  selfCopy = self;
  sub_10020730C();
  v17 = v16;
  v19 = v18;

  (*(v9 + 8))(v12, v8);
  v20 = v17;
  v21 = v19;
  result.height = v21;
  result.width = v20;
  return result;
}

- (UIEdgeInsets)collectionView:(id)view layout:(id)layout insetForSectionAtIndex:(int64_t)index
{
  v6 = *(&self->super.super.super.isa + OBJC_IVAR____TtC11FTMInternal20TickerViewController_stringValue);
  v7 = *&self->numericAlphabet[OBJC_IVAR____TtC11FTMInternal20TickerViewController_stringValue];
  viewCopy = view;
  selfCopy = self;

  v10 = String.count.getter();

  if (__OFSUB__(v10, 4))
  {
    __break(1u);
  }

  else
  {
    v15 = (v10 - 4) * 32.0 + 68.0;
    layer = [viewCopy layer];
    [layer frame];
    v18 = v17;

    v12 = (v18 - v15) * 0.5;
    v11 = 0.0;
    v13 = 0.0;
    v14 = v12;
  }

  result.right = v14;
  result.bottom = v13;
  result.left = v12;
  result.top = v11;
  return result;
}

- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section
{
  v4 = *(&self->super.super.super.isa + OBJC_IVAR____TtC11FTMInternal20TickerViewController_stringValue);
  v5 = *&self->numericAlphabet[OBJC_IVAR____TtC11FTMInternal20TickerViewController_stringValue];
  selfCopy = self;

  v7 = String.count.getter();

  return v7;
}

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  viewCopy = view;
  selfCopy = self;
  v13 = sub_100206D50(viewCopy);

  (*(v7 + 8))(v10, v6);

  return v13;
}

@end