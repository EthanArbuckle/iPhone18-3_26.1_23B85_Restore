@interface SegmentedControlCollectionViewCell
- (_TtC18ASMessagesProvider34SegmentedControlCollectionViewCell)initWithCoder:(id)coder;
- (void)layoutSubviews;
@end

@implementation SegmentedControlCollectionViewCell

- (_TtC18ASMessagesProvider34SegmentedControlCollectionViewCell)initWithCoder:(id)coder
{
  v4 = OBJC_IVAR____TtC18ASMessagesProvider34SegmentedControlCollectionViewCell_itemLayoutContext;
  v5 = sub_75C840();
  (*(*(v5 - 8) + 56))(self + v4, 1, 1, v5);
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC18ASMessagesProvider34SegmentedControlCollectionViewCell_isFirstSetup) = 1;
  result = sub_76A840();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v10.receiver = self;
  v10.super_class = swift_getObjectType();
  v2 = v10.receiver;
  [(SegmentedControlCollectionViewCell *)&v10 layoutSubviews];
  sub_75D650();
  CGRectGetWidth(v11);
  v3 = OBJC_IVAR____TtC18ASMessagesProvider34SegmentedControlCollectionViewCell_segmentedControl;
  v4 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider34SegmentedControlCollectionViewCell_segmentedControl];
  sub_75D650();
  [v4 sizeThatFits:{v5, v6, v10.receiver, v10.super_class}];
  v7 = *&v2[v3];
  sub_75D650();
  v9 = v8;
  sub_75D650();
  [v7 setFrame:v9];
}

@end