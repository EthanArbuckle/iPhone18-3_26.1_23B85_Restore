@interface CycleTimelineCollectionViewLayout
+ (Class)invalidationContextClass;
+ (Class)layoutAttributesClass;
- (CGPoint)targetContentOffsetForProposedContentOffset:(CGPoint)a3;
- (CGPoint)targetContentOffsetForProposedContentOffset:(CGPoint)a3 withScrollingVelocity:(CGPoint)a4;
- (CGSize)collectionViewContentSize;
- (NSString)description;
- (_TtC24MenstrualCyclesAppPlugin33CycleTimelineCollectionViewLayout)init;
- (id)invalidationContextForBoundsChange:(CGRect)a3;
- (id)layoutAttributesForElementsInRect:(CGRect)a3;
- (id)layoutAttributesForItemAtIndexPath:(id)a3;
- (void)invalidateLayoutWithContext:(id)a3;
- (void)prepareLayout;
@end

@implementation CycleTimelineCollectionViewLayout

- (NSString)description
{
  swift_getObjectType();
  v3 = self;
  v4 = sub_29E2C4AE4();
  MEMORY[0x29ED7FCC0](v4);

  MEMORY[0x29ED7FCC0](58, 0xE100000000000000);
  sub_29E2C4664();

  v5 = sub_29E2C33A4();

  return v5;
}

+ (Class)layoutAttributesClass
{
  type metadata accessor for CycleTimelineCollectionViewLayoutAttributes();

  return swift_getObjCClassFromMetadata();
}

+ (Class)invalidationContextClass
{
  type metadata accessor for CycleTimelineCollectionViewLayoutInvalidationContext();

  return swift_getObjCClassFromMetadata();
}

- (void)prepareLayout
{
  v2 = self;
  sub_29E2BA050();
}

- (CGSize)collectionViewContentSize
{
  v2 = *(&self->super.super.isa + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33CycleTimelineCollectionViewLayout_contentSize);
  v3 = *(&self->super._collectionView + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33CycleTimelineCollectionViewLayout_contentSize);
  if (*(&self->super._collectionViewBoundsSize.width + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33CycleTimelineCollectionViewLayout_contentSize))
  {
    v2 = 0.0;
    v3 = 0.0;
  }

  result.height = v3;
  result.width = v2;
  return result;
}

- (id)layoutAttributesForElementsInRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = self;
  v8 = sub_29E2BA69C(x, y, width, height);

  if (v8)
  {
    sub_29DF76F98();
    v9 = sub_29E2C3604();
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)layoutAttributesForItemAtIndexPath:(id)a3
{
  v4 = sub_29E2BCFB4();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E2BCF44();
  v8 = self;
  v9 = sub_29E2BAC68(v7);

  (*(v5 + 8))(v7, v4);

  return v9;
}

- (void)invalidateLayoutWithContext:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_29E2BB0B0(v4);
}

- (id)invalidationContextForBoundsChange:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = self;
  v8 = sub_29E2BB320(x, y, width, height);

  return v8;
}

- (CGPoint)targetContentOffsetForProposedContentOffset:(CGPoint)a3 withScrollingVelocity:(CGPoint)a4
{
  x = a3.x;
  v5 = self;
  v6 = sub_29E2BBB40(x);
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result.y = v10;
  result.x = v9;
  return result;
}

- (CGPoint)targetContentOffsetForProposedContentOffset:(CGPoint)a3
{
  [(CycleTimelineCollectionViewLayout *)self targetContentOffsetForProposedContentOffset:a3.x withScrollingVelocity:a3.y, 0.0, 0.0];
  result.y = v4;
  result.x = v3;
  return result;
}

- (_TtC24MenstrualCyclesAppPlugin33CycleTimelineCollectionViewLayout)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end