@interface LargeLockupCollectionViewCell
- (_TtC8AppStore29LargeLockupCollectionViewCell)initWithCoder:(id)coder;
- (void)layoutSubviews;
@end

@implementation LargeLockupCollectionViewCell

- (_TtC8AppStore29LargeLockupCollectionViewCell)initWithCoder:(id)coder
{
  v4 = OBJC_IVAR____TtC8AppStore29LargeLockupCollectionViewCell_itemLayoutContext;
  v5 = type metadata accessor for ItemLayoutContext();
  (*(*(v5 - 8) + 56))(self + v4, 1, 1, v5);
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC8AppStore29LargeLockupCollectionViewCell_avatarShowcase) = 0;
  v6 = (&self->super.super.super.super.super.isa + OBJC_IVAR____TtC8AppStore29LargeLockupCollectionViewCell_preferredArtworkSize);
  *v6 = 0;
  v6[1] = 0;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC8AppStore29LargeLockupCollectionViewCell_headingLabel) = 0;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC8AppStore29LargeLockupCollectionViewCell_tertiaryTitleLabel) = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_10020E240();
}

@end