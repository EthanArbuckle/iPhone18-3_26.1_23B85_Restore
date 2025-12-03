@interface SwipableCollectionViewLayout
- (UIEdgeInsets)swipeActionController:(id)controller extraInsetsForItemAtIndexPath:(id)path;
- (_TtC17SequoiaTranslator28SwipableCollectionViewLayout)initWithCoder:(id)coder;
- (_TtC17SequoiaTranslator28SwipableCollectionViewLayout)initWithSection:(id)section;
- (_TtC17SequoiaTranslator28SwipableCollectionViewLayout)initWithSection:(id)section configuration:(id)configuration;
- (_TtC17SequoiaTranslator28SwipableCollectionViewLayout)initWithSectionProvider:(id)provider;
- (_TtC17SequoiaTranslator28SwipableCollectionViewLayout)initWithSectionProvider:(id)provider configuration:(id)configuration;
- (id)gestureRecognizerViewForSwipeActionController:(id)controller;
- (id)itemContainerViewForSwipeActionController:(id)controller;
- (id)swipeActionController:(id)controller indexPathForTouchLocation:(CGPoint)location;
- (id)swipeActionController:(id)controller leadingSwipeConfigurationForItemAtIndexPath:(id)path;
- (int64_t)layoutDirectionForSwipeActionController:(id)controller;
- (void)invalidateLayoutWithContext:(id)context;
@end

@implementation SwipableCollectionViewLayout

- (void)invalidateLayoutWithContext:(id)context
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for SwipableCollectionViewLayout();
  contextCopy = context;
  v5 = v7.receiver;
  [(SwipableCollectionViewLayout *)&v7 invalidateLayoutWithContext:contextCopy];
  if ([contextCopy invalidateEverything])
  {
    v6 = sub_1002569CC();
    [v6 resetSwipedItemAnimated:0 completion:0];
  }
}

- (_TtC17SequoiaTranslator28SwipableCollectionViewLayout)initWithSection:(id)section
{
  v4 = self + OBJC_IVAR____TtC17SequoiaTranslator28SwipableCollectionViewLayout_swipeDelegate;
  *v4 = 0u;
  *(v4 + 1) = 0u;
  *(v4 + 4) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC17SequoiaTranslator28SwipableCollectionViewLayout____lazy_storage___swipeController) = 0;
  v6.receiver = self;
  v6.super_class = type metadata accessor for SwipableCollectionViewLayout();
  return [(SwipableCollectionViewLayout *)&v6 initWithSection:section];
}

- (_TtC17SequoiaTranslator28SwipableCollectionViewLayout)initWithSection:(id)section configuration:(id)configuration
{
  v6 = self + OBJC_IVAR____TtC17SequoiaTranslator28SwipableCollectionViewLayout_swipeDelegate;
  *v6 = 0u;
  *(v6 + 1) = 0u;
  *(v6 + 4) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC17SequoiaTranslator28SwipableCollectionViewLayout____lazy_storage___swipeController) = 0;
  v8.receiver = self;
  v8.super_class = type metadata accessor for SwipableCollectionViewLayout();
  return [(SwipableCollectionViewLayout *)&v8 initWithSection:section configuration:configuration];
}

- (_TtC17SequoiaTranslator28SwipableCollectionViewLayout)initWithSectionProvider:(id)provider
{
  v4 = _Block_copy(provider);
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

- (_TtC17SequoiaTranslator28SwipableCollectionViewLayout)initWithSectionProvider:(id)provider configuration:(id)configuration
{
  v6 = _Block_copy(provider);
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
  configurationCopy = configuration;

  v13.receiver = self;
  v13.super_class = type metadata accessor for SwipableCollectionViewLayout();
  v11 = [(SwipableCollectionViewLayout *)&v13 initWithSectionProvider:v9 configuration:configurationCopy];

  _Block_release(v9);
  return v11;
}

- (_TtC17SequoiaTranslator28SwipableCollectionViewLayout)initWithCoder:(id)coder
{
  v4 = self + OBJC_IVAR____TtC17SequoiaTranslator28SwipableCollectionViewLayout_swipeDelegate;
  *v4 = 0u;
  *(v4 + 1) = 0u;
  *(v4 + 4) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC17SequoiaTranslator28SwipableCollectionViewLayout____lazy_storage___swipeController) = 0;
  v8.receiver = self;
  v8.super_class = type metadata accessor for SwipableCollectionViewLayout();
  coderCopy = coder;
  v6 = [(SwipableCollectionViewLayout *)&v8 initWithCoder:coderCopy];

  if (v6)
  {
  }

  return v6;
}

- (UIEdgeInsets)swipeActionController:(id)controller extraInsetsForItemAtIndexPath:(id)path
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  controllerCopy = controller;
  selfCopy = self;
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

- (id)gestureRecognizerViewForSwipeActionController:(id)controller
{
  selfCopy = self;
  collectionView = [(SwipableCollectionViewLayout *)selfCopy collectionView];
  if (collectionView)
  {
    v5 = collectionView;
    [collectionView endEditing:1];

    return v5;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

- (id)itemContainerViewForSwipeActionController:(id)controller
{
  selfCopy = self;
  collectionView = [(SwipableCollectionViewLayout *)selfCopy collectionView];
  if (collectionView)
  {
    v5 = collectionView;

    return v5;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

- (id)swipeActionController:(id)controller indexPathForTouchLocation:(CGPoint)location
{
  y = location.y;
  x = location.x;
  v8 = type metadata accessor for IndexPath();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  controllerCopy = controller;
  selfCopy = self;
  sub_1002572D8(v11, x, y);

  v14.super.isa = IndexPath._bridgeToObjectiveC()().super.isa;
  (*(v9 + 8))(v11, v8);

  return v14.super.isa;
}

- (id)swipeActionController:(id)controller leadingSwipeConfigurationForItemAtIndexPath:(id)path
{
  v4 = type metadata accessor for IndexPath();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  (*(v5 + 8))(v7, v4);

  return 0;
}

- (int64_t)layoutDirectionForSwipeActionController:(id)controller
{
  selfCopy = self;
  collectionView = [(SwipableCollectionViewLayout *)selfCopy collectionView];
  if (collectionView)
  {
    v5 = collectionView;
    traitCollection = [collectionView traitCollection];
    layoutDirection = [traitCollection layoutDirection];

    return layoutDirection;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

@end