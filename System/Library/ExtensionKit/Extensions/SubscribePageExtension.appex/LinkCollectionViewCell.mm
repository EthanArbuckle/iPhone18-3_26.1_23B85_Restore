@interface LinkCollectionViewCell
- (_TtC22SubscribePageExtension22LinkCollectionViewCell)initWithCoder:(id)coder;
- (void)layoutSubviews;
- (void)prepareForReuse;
@end

@implementation LinkCollectionViewCell

- (_TtC22SubscribePageExtension22LinkCollectionViewCell)initWithCoder:(id)coder
{
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC22SubscribePageExtension22LinkCollectionViewCell____lazy_storage___standardLinkView) = 0;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC22SubscribePageExtension22LinkCollectionViewCell____lazy_storage___presentationLinkView) = 0;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC22SubscribePageExtension22LinkCollectionViewCell_currentLinkView) = 0;
  v4 = OBJC_IVAR____TtC22SubscribePageExtension22LinkCollectionViewCell_itemLayoutContext;
  v5 = sub_1007469A4();
  (*(*(v5 - 8) + 56))(self + v4, 1, 1, v5);
  result = sub_100754644();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_1006D0590();
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  v2 = v3.receiver;
  [(LinkCollectionViewCell *)&v3 prepareForReuse];
  sub_1006D0150(0);
}

@end