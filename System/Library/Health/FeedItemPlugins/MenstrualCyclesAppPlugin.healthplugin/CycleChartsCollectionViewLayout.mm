@interface CycleChartsCollectionViewLayout
- (CGPoint)targetContentOffsetForProposedContentOffset:(CGPoint)a3;
- (CGPoint)targetContentOffsetForProposedContentOffset:(CGPoint)a3 withScrollingVelocity:(CGPoint)a4;
- (CGSize)collectionViewContentSize;
- (id)layoutAttributesForElementsInRect:(CGRect)a3;
- (id)layoutAttributesForItemAtIndexPath:(id)a3;
- (id)layoutAttributesForSupplementaryViewOfKind:(id)a3 atIndexPath:(id)a4;
- (void)prepareLayout;
@end

@implementation CycleChartsCollectionViewLayout

- (CGSize)collectionViewContentSize
{
  v2 = *(&self->super.super.isa + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin31CycleChartsCollectionViewLayout_contentSize);
  v3 = *(&self->super._collectionView + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin31CycleChartsCollectionViewLayout_contentSize);
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
  v8 = sub_29DF7397C(x, y, width, height);

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
  v9 = sub_29DF748B4(v7);

  (*(v5 + 8))(v7, v4);

  return v9;
}

- (id)layoutAttributesForSupplementaryViewOfKind:(id)a3 atIndexPath:(id)a4
{
  v5 = sub_29E2BCFB4();
  v6 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
  v11 = v10;
  sub_29E2BCF44();
  v12 = self;
  v13 = sub_29DF75318(v9, v11, v8);

  (*(v6 + 8))(v8, v5);

  return v13;
}

- (CGPoint)targetContentOffsetForProposedContentOffset:(CGPoint)a3
{
  v3 = a3.x + *(&self->super.super.isa + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin31CycleChartsCollectionViewLayout_axisColumnWidthAdjustment);
  v4 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin31CycleChartsCollectionViewLayout_headerHeightAdjustment;
  v5 = a3.y + *(&self->super.super.isa + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin31CycleChartsCollectionViewLayout_headerHeightAdjustment);
  *(&self->super.super.isa + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin31CycleChartsCollectionViewLayout_axisColumnWidthAdjustment) = 0;
  *(&self->super.super.isa + v4) = 0;
  result.y = v5;
  result.x = v3;
  return result;
}

- (CGPoint)targetContentOffsetForProposedContentOffset:(CGPoint)a3 withScrollingVelocity:(CGPoint)a4
{
  y = a3.y;
  x = a3.x;
  v6 = self;
  sub_29DF76AEC(x, y);
  v8 = v7;
  v10 = v9;

  v11 = v8;
  v12 = v10;
  result.y = v12;
  result.x = v11;
  return result;
}

- (void)prepareLayout
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  v2 = v3.receiver;
  [(CycleChartsCollectionViewLayout *)&v3 prepareLayout];
  if ((v2[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin31CycleChartsCollectionViewLayout_pendingScrollToSectionIndex + 8] & 1) == 0)
  {
    sub_29DF76DDC(*&v2[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin31CycleChartsCollectionViewLayout_pendingScrollToSectionIndex]);
  }
}

@end