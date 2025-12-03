@interface LinkCollectionViewCell
- (_TtC8AppStore22LinkCollectionViewCell)initWithCoder:(id)coder;
- (void)layoutSubviews;
- (void)prepareForReuse;
@end

@implementation LinkCollectionViewCell

- (_TtC8AppStore22LinkCollectionViewCell)initWithCoder:(id)coder
{
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC8AppStore22LinkCollectionViewCell____lazy_storage___standardLinkView) = 0;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC8AppStore22LinkCollectionViewCell____lazy_storage___presentationLinkView) = 0;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC8AppStore22LinkCollectionViewCell_currentLinkView) = 0;
  v4 = OBJC_IVAR____TtC8AppStore22LinkCollectionViewCell_itemLayoutContext;
  v5 = type metadata accessor for ItemLayoutContext();
  (*(*(v5 - 8) + 56))(self + v4, 1, 1, v5);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_100738C74();
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  v2 = v3.receiver;
  [(LinkCollectionViewCell *)&v3 prepareForReuse];
  sub_100738834(0);
}

@end