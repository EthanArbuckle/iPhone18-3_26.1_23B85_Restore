@interface ShelfCollectionViewLayout
+ (Class)invalidationContextClass;
- (BOOL)shouldInvalidateLayoutForBoundsChange:(CGRect)change;
- (CGPoint)targetContentOffsetForProposedContentOffset:(CGPoint)offset withScrollingVelocity:(CGPoint)velocity;
- (CGSize)collectionViewContentSize;
- (_TtC16MusicApplication25ShelfCollectionViewLayout)initWithCoder:(id)coder;
- (id)invalidationContextForBoundsChange:(CGRect)change;
- (id)layoutAttributesForElementsInRect:(CGRect)rect;
- (id)layoutAttributesForItemAtIndexPath:(id)path;
- (id)layoutAttributesForSupplementaryViewOfKind:(id)kind atIndexPath:(id)path;
- (void)invalidateLayoutWithContext:(id)context;
- (void)music_collectionViewInheritedLayoutInsetsDidChange;
- (void)panGestureRecognizerStateDidChange:(id)change;
- (void)prepareLayout;
@end

@implementation ShelfCollectionViewLayout

- (CGSize)collectionViewContentSize
{
  v2 = *(&self->super.super.isa + OBJC_IVAR____TtC16MusicApplication25ShelfCollectionViewLayout_contentSize);
  v3 = *&self->scrollStyle[OBJC_IVAR____TtC16MusicApplication25ShelfCollectionViewLayout_contentSize];
  result.height = v3;
  result.width = v2;
  return result;
}

+ (Class)invalidationContextClass
{
  type metadata accessor for ShelfCollectionViewLayout.InvalidationContext();

  return swift_getObjCClassFromMetadata();
}

- (id)invalidationContextForBoundsChange:(CGRect)change
{
  height = change.size.height;
  width = change.size.width;
  y = change.origin.y;
  x = change.origin.x;
  selfCopy = self;
  v8 = ShelfCollectionViewLayout.invalidationContext(forBoundsChange:)(x, y, width, height);

  return v8;
}

- (void)invalidateLayoutWithContext:(id)context
{
  contextCopy = context;
  selfCopy = self;
  ShelfCollectionViewLayout.invalidateLayout(with:)(contextCopy);
}

- (id)layoutAttributesForElementsInRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v10 = _swiftEmptyArrayStorage;
  selfCopy = self;
  sub_335730(selfCopy, selfCopy, &v10, x, y, width, height);
  sub_335F5C(selfCopy, selfCopy, &v10, x, y, width, height);
  sub_336220(selfCopy, selfCopy, &v10, x, y, width, height);

  sub_13C80(0, &qword_E04510);
  v8.super.isa = sub_AB9740().super.isa;

  return v8.super.isa;
}

- (id)layoutAttributesForItemAtIndexPath:(id)path
{
  v5 = sub_AB3820();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB3790();
  pathCopy = path;
  selfCopy = self;
  v11 = ShelfCollectionViewLayout.layoutAttributesForItem(at:)(v8);

  (*(v6 + 8))(v8, v5);

  return v11;
}

- (id)layoutAttributesForSupplementaryViewOfKind:(id)kind atIndexPath:(id)path
{
  v7 = sub_AB3820();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_AB92A0();
  v13 = v12;
  sub_AB3790();
  kindCopy = kind;
  pathCopy = path;
  selfCopy = self;
  v17 = ShelfCollectionViewLayout.layoutAttributesForSupplementaryView(ofKind:at:)(v11, v13, v10);

  (*(v8 + 8))(v10, v7);

  return v17;
}

- (void)prepareLayout
{
  selfCopy = self;
  ShelfCollectionViewLayout.prepare()();
}

- (void)panGestureRecognizerStateDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_3235B8(changeCopy);
}

- (BOOL)shouldInvalidateLayoutForBoundsChange:(CGRect)change
{
  height = change.size.height;
  width = change.size.width;
  y = change.origin.y;
  x = change.origin.x;
  selfCopy = self;
  v8 = ShelfCollectionViewLayout.shouldInvalidateLayout(forBoundsChange:)(x, y, width, height);

  return v8 & 1;
}

- (CGPoint)targetContentOffsetForProposedContentOffset:(CGPoint)offset withScrollingVelocity:(CGPoint)velocity
{
  x = velocity.x;
  y = offset.y;
  v6 = offset.x;
  selfCopy = self;
  v8 = ShelfCollectionViewLayout.targetContentOffset(forProposedContentOffset:withScrollingVelocity:)(v6, y, x);
  v10 = v9;

  v11 = v8;
  v12 = v10;
  result.y = v12;
  result.x = v11;
  return result;
}

- (void)music_collectionViewInheritedLayoutInsetsDidChange
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for ShelfCollectionViewLayout();
  v2 = v3.receiver;
  [(ShelfCollectionViewLayout *)&v3 music_collectionViewInheritedLayoutInsetsDidChange];
  [v2 invalidateLayout];
}

- (_TtC16MusicApplication25ShelfCollectionViewLayout)initWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = sub_336C20(coderCopy);

  return v4;
}

@end