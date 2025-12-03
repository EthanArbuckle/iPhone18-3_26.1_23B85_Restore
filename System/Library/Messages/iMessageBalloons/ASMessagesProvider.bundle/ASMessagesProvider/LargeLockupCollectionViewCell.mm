@interface LargeLockupCollectionViewCell
- (_TtC18ASMessagesProvider29LargeLockupCollectionViewCell)initWithCoder:(id)coder;
- (void)layoutSubviews;
@end

@implementation LargeLockupCollectionViewCell

- (_TtC18ASMessagesProvider29LargeLockupCollectionViewCell)initWithCoder:(id)coder
{
  v4 = OBJC_IVAR____TtC18ASMessagesProvider29LargeLockupCollectionViewCell_itemLayoutContext;
  v5 = sub_75C840();
  (*(*(v5 - 8) + 56))(self + v4, 1, 1, v5);
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC18ASMessagesProvider29LargeLockupCollectionViewCell_avatarShowcase) = 0;
  v6 = (&self->super.super.super.super.super.isa + OBJC_IVAR____TtC18ASMessagesProvider29LargeLockupCollectionViewCell_preferredArtworkSize);
  *v6 = 0;
  v6[1] = 0;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC18ASMessagesProvider29LargeLockupCollectionViewCell_headingLabel) = 0;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC18ASMessagesProvider29LargeLockupCollectionViewCell_tertiaryTitleLabel) = 0;
  result = sub_76A840();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_29DE5C();
}

@end