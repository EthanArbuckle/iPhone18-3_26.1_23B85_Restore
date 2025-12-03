@interface CondensedSearchEditorialBackgroundView
- (_TtC20ProductPageExtension38CondensedSearchEditorialBackgroundView)initWithCoder:(id)coder;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation CondensedSearchEditorialBackgroundView

- (_TtC20ProductPageExtension38CondensedSearchEditorialBackgroundView)initWithCoder:(id)coder
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC20ProductPageExtension38CondensedSearchEditorialBackgroundView_isBorderHidden) = 0;
  result = sub_10077156C();
  __break(1u);
  return result;
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_1003EDF20(change);
}

@end