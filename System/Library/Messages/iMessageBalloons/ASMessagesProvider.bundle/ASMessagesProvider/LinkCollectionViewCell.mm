@interface LinkCollectionViewCell
- (_TtC18ASMessagesProvider22LinkCollectionViewCell)initWithCoder:(id)coder;
- (void)layoutSubviews;
- (void)prepareForReuse;
@end

@implementation LinkCollectionViewCell

- (_TtC18ASMessagesProvider22LinkCollectionViewCell)initWithCoder:(id)coder
{
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC18ASMessagesProvider22LinkCollectionViewCell____lazy_storage___standardLinkView) = 0;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC18ASMessagesProvider22LinkCollectionViewCell____lazy_storage___presentationLinkView) = 0;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC18ASMessagesProvider22LinkCollectionViewCell_currentLinkView) = 0;
  v4 = OBJC_IVAR____TtC18ASMessagesProvider22LinkCollectionViewCell_itemLayoutContext;
  v5 = sub_75C840();
  (*(*(v5 - 8) + 56))(self + v4, 1, 1, v5);
  result = sub_76A840();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_36D6E0();
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  v2 = v3.receiver;
  [(LinkCollectionViewCell *)&v3 prepareForReuse];
  sub_36D3A4(0);
}

@end