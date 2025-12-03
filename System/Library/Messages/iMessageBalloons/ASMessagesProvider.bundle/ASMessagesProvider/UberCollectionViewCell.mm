@interface UberCollectionViewCell
- (_TtC18ASMessagesProvider22UberCollectionViewCell)initWithCoder:(id)coder;
- (_TtC18ASMessagesProvider22UberCollectionViewCell)initWithFrame:(CGRect)frame;
- (void)applyLayoutAttributes:(id)attributes;
- (void)layoutSubviews;
@end

@implementation UberCollectionViewCell

- (_TtC18ASMessagesProvider22UberCollectionViewCell)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  ObjectType = swift_getObjectType();
  v9 = OBJC_IVAR____TtC18ASMessagesProvider22UberCollectionViewCell_itemLayoutContext;
  v10 = sub_75C840();
  (*(*(v10 - 8) + 56))(self + v9, 1, 1, v10);
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC18ASMessagesProvider22UberCollectionViewCell_uberView) = 0;
  v18.receiver = self;
  v18.super_class = ObjectType;
  height = [(UberCollectionViewCell *)&v18 initWithFrame:x, y, width, height];
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v15 = height;
  [(UberCollectionViewCell *)v15 setLayoutMargins:UIEdgeInsetsZero.top, left, bottom, right];
  contentView = [(UberCollectionViewCell *)v15 contentView];
  [contentView setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];

  return v15;
}

- (_TtC18ASMessagesProvider22UberCollectionViewCell)initWithCoder:(id)coder
{
  v4 = OBJC_IVAR____TtC18ASMessagesProvider22UberCollectionViewCell_itemLayoutContext;
  v5 = sub_75C840();
  (*(*(v5 - 8) + 56))(self + v4, 1, 1, v5);
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC18ASMessagesProvider22UberCollectionViewCell_uberView) = 0;
  result = sub_76A840();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_1EB990();
}

- (void)applyLayoutAttributes:(id)attributes
{
  attributesCopy = attributes;
  selfCopy = self;
  sub_1EBAB4(attributesCopy);
}

@end