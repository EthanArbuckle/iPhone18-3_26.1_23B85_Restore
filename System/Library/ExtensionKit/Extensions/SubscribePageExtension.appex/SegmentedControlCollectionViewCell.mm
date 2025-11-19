@interface SegmentedControlCollectionViewCell
- (_TtC22SubscribePageExtension34SegmentedControlCollectionViewCell)initWithCoder:(id)a3;
- (void)layoutSubviews;
@end

@implementation SegmentedControlCollectionViewCell

- (_TtC22SubscribePageExtension34SegmentedControlCollectionViewCell)initWithCoder:(id)a3
{
  v4 = OBJC_IVAR____TtC22SubscribePageExtension34SegmentedControlCollectionViewCell_itemLayoutContext;
  v5 = sub_1007469A4();
  (*(*(v5 - 8) + 56))(self + v4, 1, 1, v5);
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC22SubscribePageExtension34SegmentedControlCollectionViewCell_isFirstSetup) = 1;
  result = sub_100754644();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v10.receiver = self;
  v10.super_class = swift_getObjectType();
  v2 = v10.receiver;
  [(SegmentedControlCollectionViewCell *)&v10 layoutSubviews];
  sub_1007477B4();
  CGRectGetWidth(v11);
  v3 = OBJC_IVAR____TtC22SubscribePageExtension34SegmentedControlCollectionViewCell_segmentedControl;
  v4 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension34SegmentedControlCollectionViewCell_segmentedControl];
  sub_1007477B4();
  [v4 sizeThatFits:{v5, v6, v10.receiver, v10.super_class}];
  v7 = *&v2[v3];
  sub_1007477B4();
  v9 = v8;
  sub_1007477B4();
  [v7 setFrame:v9];
}

@end