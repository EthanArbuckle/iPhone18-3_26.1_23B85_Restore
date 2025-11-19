@interface SwipableCollectionViewLayout
- (UIEdgeInsets)swipeActionController:(id)a3 extraInsetsForItemAtIndexPath:(id)a4;
- (_TtC17SequoiaTranslator28SwipableCollectionViewLayout)initWithCoder:(id)a3;
- (_TtC17SequoiaTranslator28SwipableCollectionViewLayout)initWithSection:(id)a3;
- (_TtC17SequoiaTranslator28SwipableCollectionViewLayout)initWithSection:(id)a3 configuration:(id)a4;
- (_TtC17SequoiaTranslator28SwipableCollectionViewLayout)initWithSectionProvider:(id)a3;
- (_TtC17SequoiaTranslator28SwipableCollectionViewLayout)initWithSectionProvider:(id)a3 configuration:(id)a4;
- (id)gestureRecognizerViewForSwipeActionController:(id)a3;
- (id)itemContainerViewForSwipeActionController:(id)a3;
- (id)swipeActionController:(id)a3 indexPathForTouchLocation:(CGPoint)a4;
- (id)swipeActionController:(id)a3 leadingSwipeConfigurationForItemAtIndexPath:(id)a4;
- (int64_t)layoutDirectionForSwipeActionController:(id)a3;
- (void)invalidateLayoutWithContext:(id)a3;
@end

@implementation SwipableCollectionViewLayout

- (void)invalidateLayoutWithContext:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for SwipableCollectionViewLayout();
  v4 = a3;
  v5 = v7.receiver;
  [(SwipableCollectionViewLayout *)&v7 invalidateLayoutWithContext:v4];
  if ([v4 invalidateEverything])
  {
    v6 = sub_1002569CC();
    [v6 resetSwipedItemAnimated:0 completion:0];
  }
}

- (_TtC17SequoiaTranslator28SwipableCollectionViewLayout)initWithSection:(id)a3
{
  v4 = self + OBJC_IVAR____TtC17SequoiaTranslator28SwipableCollectionViewLayout_swipeDelegate;
  *v4 = 0u;
  *(v4 + 1) = 0u;
  *(v4 + 4) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC17SequoiaTranslator28SwipableCollectionViewLayout____lazy_storage___swipeController) = 0;
  v6.receiver = self;
  v6.super_class = type metadata accessor for SwipableCollectionViewLayout();
  return [(SwipableCollectionViewLayout *)&v6 initWithSection:a3];
}

- (_TtC17SequoiaTranslator28SwipableCollectionViewLayout)initWithSection:(id)a3 configuration:(id)a4
{
  v6 = self + OBJC_IVAR____TtC17SequoiaTranslator28SwipableCollectionViewLayout_swipeDelegate;
  *v6 = 0u;
  *(v6 + 1) = 0u;
  *(v6 + 4) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC17SequoiaTranslator28SwipableCollectionViewLayout____lazy_storage___swipeController) = 0;
  v8.receiver = self;
  v8.super_class = type metadata accessor for SwipableCollectionViewLayout();
  return [(SwipableCollectionViewLayout *)&v8 initWithSection:a3 configuration:a4];
}

- (_TtC17SequoiaTranslator28SwipableCollectionViewLayout)initWithSectionProvider:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = self + OBJC_IVAR____TtC17SequoiaTranslator28SwipableCollectionViewLayout_swipeDelegate;
  *v6 = 0u;
  *(v6 + 1) = 0u;
  *(v6 + 4) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC17SequoiaTranslator28SwipableCollectionViewLayout____lazy_storage___swipeController) = 0;
  aBlock[4] = sub_100257D20;
  aBlock[5] = v5;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1002A3A0C;
  aBlock[3] = &unk_10038B270;
  v7 = _Block_copy(aBlock);

  v10.receiver = self;
  v10.super_class = type metadata accessor for SwipableCollectionViewLayout();
  v8 = [(SwipableCollectionViewLayout *)&v10 initWithSectionProvider:v7];

  _Block_release(v7);
  return v8;
}

- (_TtC17SequoiaTranslator28SwipableCollectionViewLayout)initWithSectionProvider:(id)a3 configuration:(id)a4
{
  v6 = _Block_copy(a3);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v8 = self + OBJC_IVAR____TtC17SequoiaTranslator28SwipableCollectionViewLayout_swipeDelegate;
  *v8 = 0u;
  *(v8 + 1) = 0u;
  *(v8 + 4) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC17SequoiaTranslator28SwipableCollectionViewLayout____lazy_storage___swipeController) = 0;
  aBlock[4] = sub_100257CBC;
  aBlock[5] = v7;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1002A3A0C;
  aBlock[3] = &unk_10038B220;
  v9 = _Block_copy(aBlock);
  v10 = a4;

  v13.receiver = self;
  v13.super_class = type metadata accessor for SwipableCollectionViewLayout();
  v11 = [(SwipableCollectionViewLayout *)&v13 initWithSectionProvider:v9 configuration:v10];

  _Block_release(v9);
  return v11;
}

- (_TtC17SequoiaTranslator28SwipableCollectionViewLayout)initWithCoder:(id)a3
{
  v4 = self + OBJC_IVAR____TtC17SequoiaTranslator28SwipableCollectionViewLayout_swipeDelegate;
  *v4 = 0u;
  *(v4 + 1) = 0u;
  *(v4 + 4) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC17SequoiaTranslator28SwipableCollectionViewLayout____lazy_storage___swipeController) = 0;
  v8.receiver = self;
  v8.super_class = type metadata accessor for SwipableCollectionViewLayout();
  v5 = a3;
  v6 = [(SwipableCollectionViewLayout *)&v8 initWithCoder:v5];

  if (v6)
  {
  }

  return v6;
}

- (UIEdgeInsets)swipeActionController:(id)a3 extraInsetsForItemAtIndexPath:(id)a4
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = a3;
  v11 = self;
  sub_1002578A4();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;

  (*(v7 + 8))(v9, v6);
  v20 = v13;
  v21 = v15;
  v22 = v17;
  v23 = v19;
  result.right = v23;
  result.bottom = v22;
  result.left = v21;
  result.top = v20;
  return result;
}

- (id)gestureRecognizerViewForSwipeActionController:(id)a3
{
  v3 = self;
  v4 = [(SwipableCollectionViewLayout *)v3 collectionView];
  if (v4)
  {
    v5 = v4;
    [v4 endEditing:1];

    return v5;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

- (id)itemContainerViewForSwipeActionController:(id)a3
{
  v3 = self;
  v4 = [(SwipableCollectionViewLayout *)v3 collectionView];
  if (v4)
  {
    v5 = v4;

    return v5;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

- (id)swipeActionController:(id)a3 indexPathForTouchLocation:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v8 = type metadata accessor for IndexPath();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a3;
  v13 = self;
  sub_1002572D8(v11, x, y);

  v14.super.isa = IndexPath._bridgeToObjectiveC()().super.isa;
  (*(v9 + 8))(v11, v8);

  return v14.super.isa;
}

- (id)swipeActionController:(id)a3 leadingSwipeConfigurationForItemAtIndexPath:(id)a4
{
  v4 = type metadata accessor for IndexPath();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  (*(v5 + 8))(v7, v4);

  return 0;
}

- (int64_t)layoutDirectionForSwipeActionController:(id)a3
{
  v3 = self;
  v4 = [(SwipableCollectionViewLayout *)v3 collectionView];
  if (v4)
  {
    v5 = v4;
    v6 = [v4 traitCollection];
    v7 = [v6 layoutDirection];

    return v7;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

@end