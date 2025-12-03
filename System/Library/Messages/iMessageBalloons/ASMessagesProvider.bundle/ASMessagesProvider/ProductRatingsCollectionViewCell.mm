@interface ProductRatingsCollectionViewCell
- (CGSize)sizeThatFits:(CGSize)fits;
- (_TtC18ASMessagesProvider32ProductRatingsCollectionViewCell)initWithCoder:(id)coder;
- (_TtC18ASMessagesProvider32ProductRatingsCollectionViewCell)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
@end

@implementation ProductRatingsCollectionViewCell

- (_TtC18ASMessagesProvider32ProductRatingsCollectionViewCell)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  ObjectType = swift_getObjectType();
  v9 = OBJC_IVAR____TtC18ASMessagesProvider32ProductRatingsCollectionViewCell_itemLayoutContext;
  v10 = sub_75C840();
  (*(*(v10 - 8) + 56))(self + v9, 1, 1, v10);
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC18ASMessagesProvider32ProductRatingsCollectionViewCell_productRatingView) = 0;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC18ASMessagesProvider32ProductRatingsCollectionViewCell_productNoRatingsView) = 0;
  v14.receiver = self;
  v14.super_class = ObjectType;
  height = [(ProductRatingsCollectionViewCell *)&v14 initWithFrame:x, y, width, height];
  contentView = [(ProductRatingsCollectionViewCell *)height contentView];
  [contentView setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  return height;
}

- (_TtC18ASMessagesProvider32ProductRatingsCollectionViewCell)initWithCoder:(id)coder
{
  v4 = OBJC_IVAR____TtC18ASMessagesProvider32ProductRatingsCollectionViewCell_itemLayoutContext;
  v5 = sub_75C840();
  (*(*(v5 - 8) + 56))(self + v4, 1, 1, v5);
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC18ASMessagesProvider32ProductRatingsCollectionViewCell_productRatingView) = 0;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC18ASMessagesProvider32ProductRatingsCollectionViewCell_productNoRatingsView) = 0;
  result = sub_76A840();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_5DC094();
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  selfCopy = self;
  sub_5DC1C0();
  v5 = v4;
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

@end