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
  sub_1003B00F0();
}

- (void)prepareForReuse
{
  selfCopy = self;
  sub_1003AD86C();
}

- (void)traitCollectionDidChange:(id)change
{
  v6.receiver = self;
  v6.super_class = swift_getObjectType();
  changeCopy = change;
  v5 = v6.receiver;
  [(LargeHeroBreakoutCollectionViewCell *)&v6 traitCollectionDidChange:changeCopy];
  sub_1003AEAA0();
}

- (void)didTapActionButton
{
  v2 = *(*(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC8AppStore35LargeHeroBreakoutCollectionViewCell_detailsView) + OBJC_IVAR____TtC8AppStore19BreakoutDetailsView_callToActionButtonHandler);
  if (v2)
  {
    selfCopy = self;
    v3 = sub_10000827C(v2);
    v2(v3);
    sub_10001F63C(v2);
  }
}

- (void)applyLayoutAttributes:(id)attributes
{
  attributesCopy = attributes;
  selfCopy = self;
  sub_1003B068C(attributesCopy);
}

@end