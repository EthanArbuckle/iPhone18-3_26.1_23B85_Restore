@interface InvertedCollectionViewLayout
- (UIEdgeInsets)swipeActionController:(id)controller extraInsetsForItemAtIndexPath:(id)path;
- (_TtC17SequoiaTranslator28InvertedCollectionViewLayout)initWithCoder:(id)coder;
- (_TtC17SequoiaTranslator28InvertedCollectionViewLayout)initWithSection:(id)section;
- (_TtC17SequoiaTranslator28InvertedCollectionViewLayout)initWithSection:(id)section configuration:(id)configuration;
- (_TtC17SequoiaTranslator28InvertedCollectionViewLayout)initWithSectionProvider:(id)provider;
- (_TtC17SequoiaTranslator28InvertedCollectionViewLayout)initWithSectionProvider:(id)provider configuration:(id)configuration;
- (id)layoutAttributesForElementsInRect:(CGRect)rect;
- (id)layoutAttributesForItemAtIndexPath:(id)path;
- (id)swipeActionController:(id)controller indexPathForTouchLocation:(CGPoint)location;
- (id)swipeActionController:(id)controller leadingSwipeConfigurationForItemAtIndexPath:(id)path;
- (int64_t)layoutDirectionForSwipeActionController:(id)controller;
- (void)invalidateLayoutWithContext:(id)context;
@end

@implementation InvertedCollectionViewLayout

- (id)layoutAttributesForElementsInRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  selfCopy = self;
  v8 = sub_1001226F8(x, y, width, height);

  if (v8)
  {
    sub_10000A2CC(0, &qword_1003AA720);
    v9.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v9.super.isa = 0;
  }

  return v9.super.isa;
}

- (id)layoutAttributesForItemAtIndexPath:(id)path
{
  v4 = type metadata accessor for IndexPath();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  v9 = sub_100122BB8(v7);

  (*(v5 + 8))(v7, v4);

  return v9;
}

- (void)invalidateLayoutWithContext:(id)context
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for InvertedCollectionViewLayout();
  contextCopy = context;
  v5 = v7.receiver;
  [(InvertedCollectionViewLayout *)&v7 invalidateLayoutWithContext:contextCopy];
  if ([contextCopy invalidateEverything])
  {
    v6 = sub_10012267C();
    [v6 resetSwipedItemAnimated:0 completion:0];
  }
}

- (_TtC17SequoiaTranslator28InvertedCollectionViewLayout)initWithSection:(id)section
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC17SequoiaTranslator28InvertedCollectionViewLayout_cachedAttributes) = _swiftEmptyArrayStorage;
  v4 = self + OBJC_IVAR____TtC17SequoiaTranslator28InvertedCollectionViewLayout_swipeDelegate;
  *v4 = 0u;
  *(v4 + 1) = 0u;
  *(v4 + 4) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC17SequoiaTranslator28InvertedCollectionViewLayout____lazy_storage___swipeController) = 0;
  v6.receiver = self;
  v6.super_class = type metadata accessor for InvertedCollectionViewLayout();
  return [(InvertedCollectionViewLayout *)&v6 initWithSection:section];
}

- (_TtC17SequoiaTranslator28InvertedCollectionViewLayout)initWithSection:(id)section configuration:(id)configuration
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC17SequoiaTranslator28InvertedCollectionViewLayout_cachedAttributes) = _swiftEmptyArrayStorage;
  v6 = self + OBJC_IVAR____TtC17SequoiaTranslator28InvertedCollectionViewLayout_swipeDelegate;
  *v6 = 0u;
  *(v6 + 1) = 0u;
  *(v6 + 4) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC17SequoiaTranslator28InvertedCollectionViewLayout____lazy_storage___swipeController) = 0;
  v8.receiver = self;
  v8.super_class = type metadata accessor for InvertedCollectionViewLayout();
  return [(InvertedCollectionViewLayout *)&v8 initWithSection:section configuration:configuration];
}

- (_TtC17SequoiaTranslator28InvertedCollectionViewLayout)initWithSectionProvider:(id)provider
{
  v3 = _Block_copy(provider);
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  return sub_100123384(sub_10002094C, v4);
}

- (_TtC17SequoiaTranslator28InvertedCollectionViewLayout)initWithSectionProvider:(id)provider configuration:(id)configuration
{
  v5 = _Block_copy(provider);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  return sub_1001234E8(sub_100020880, v6, configuration);
}

- (_TtC17SequoiaTranslator28InvertedCollectionViewLayout)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC17SequoiaTranslator28InvertedCollectionViewLayout_cachedAttributes) = _swiftEmptyArrayStorage;
  v4 = self + OBJC_IVAR____TtC17SequoiaTranslator28InvertedCollectionViewLayout_swipeDelegate;
  *v4 = 0u;
  *(v4 + 1) = 0u;
  *(v4 + 4) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC17SequoiaTranslator28InvertedCollectionViewLayout____lazy_storage___swipeController) = 0;
  v8.receiver = self;
  v8.super_class = type metadata accessor for InvertedCollectionViewLayout();
  coderCopy = coder;
  v6 = [(InvertedCollectionViewLayout *)&v8 initWithCoder:coderCopy];

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
  sub_100124068();
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
  sub_1001239F0(v11, x, y);

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
  collectionView = [(InvertedCollectionViewLayout *)selfCopy collectionView];
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