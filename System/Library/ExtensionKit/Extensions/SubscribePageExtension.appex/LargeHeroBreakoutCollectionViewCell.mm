@interface LargeHeroBreakoutCollectionViewCell
- (void)applyLayoutAttributes:(id)attributes;
- (void)didTapActionButton;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation LargeHeroBreakoutCollectionViewCell

- (void)layoutSubviews
{
  selfCopy = self;
  sub_1006B3B2C();
}

- (void)prepareForReuse
{
  selfCopy = self;
  sub_1006B2638();
}

- (void)traitCollectionDidChange:(id)change
{
  v6.receiver = self;
  v6.super_class = swift_getObjectType();
  changeCopy = change;
  v5 = v6.receiver;
  [(LargeHeroBreakoutCollectionViewCell *)&v6 traitCollectionDidChange:changeCopy];
  sub_1006B21C4();
}

- (void)didTapActionButton
{
  v2 = *(*(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC22SubscribePageExtension35LargeHeroBreakoutCollectionViewCell_detailsView) + OBJC_IVAR____TtC22SubscribePageExtension19BreakoutDetailsView_callToActionButtonHandler);
  if (v2)
  {
    selfCopy = self;
    v3 = sub_10001B5AC(v2);
    v2(v3);
    sub_1000164A8(v2);
  }
}

- (void)applyLayoutAttributes:(id)attributes
{
  attributesCopy = attributes;
  selfCopy = self;
  sub_1006B40C8(attributesCopy);
}

@end