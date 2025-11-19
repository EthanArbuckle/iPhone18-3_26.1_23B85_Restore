@interface TickerViewController
- (CGSize)collectionView:(id)a3 layout:(id)a4 sizeForItemAtIndexPath:(id)a5;
- (UIEdgeInsets)collectionView:(id)a3 layout:(id)a4 insetForSectionAtIndex:(int64_t)a5;
- (_TtC11FTMInternal20TickerViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4;
- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
@end

@implementation TickerViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_1002060F0();
}

- (void)viewDidAppear:(BOOL)a3
{
  v3 = *(&self->super.super.super.isa + OBJC_IVAR____TtC11FTMInternal20TickerViewController_numberValue);
  v4 = self;
  sub_1002065E0(v3);
}

- (_TtC11FTMInternal20TickerViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (CGSize)collectionView:(id)a3 layout:(id)a4 sizeForItemAtIndexPath:(id)a5
{
  v8 = type metadata accessor for IndexPath();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = a3;
  v14 = a4;
  v15 = self;
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

- (UIEdgeInsets)collectionView:(id)a3 layout:(id)a4 insetForSectionAtIndex:(int64_t)a5
{
  v6 = *(&self->super.super.super.isa + OBJC_IVAR____TtC11FTMInternal20TickerViewController_stringValue);
  v7 = *&self->numericAlphabet[OBJC_IVAR____TtC11FTMInternal20TickerViewController_stringValue];
  v8 = a3;
  v9 = self;

  v10 = String.count.getter();

  if (__OFSUB__(v10, 4))
  {
    __break(1u);
  }

  else
  {
    v15 = (v10 - 4) * 32.0 + 68.0;
    v16 = [v8 layer];
    [v16 frame];
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

- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4
{
  v4 = *(&self->super.super.super.isa + OBJC_IVAR____TtC11FTMInternal20TickerViewController_stringValue);
  v5 = *&self->numericAlphabet[OBJC_IVAR____TtC11FTMInternal20TickerViewController_stringValue];
  v6 = self;

  v7 = String.count.getter();

  return v7;
}

- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = a3;
  v12 = self;
  v13 = sub_100206D50(v11);

  (*(v7 + 8))(v10, v6);

  return v13;
}

@end