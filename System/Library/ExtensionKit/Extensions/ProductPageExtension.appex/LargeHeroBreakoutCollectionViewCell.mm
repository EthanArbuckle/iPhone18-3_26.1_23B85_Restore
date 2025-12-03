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
  sub_10022B3E0();
}

- (void)prepareForReuse
{
  selfCopy = self;
  sub_100228B5C();
}

- (void)traitCollectionDidChange:(id)change
{
  v6.receiver = self;
  v6.super_class = swift_getObjectType();
  changeCopy = change;
  v5 = v6.receiver;
  [(LargeHeroBreakoutCollectionViewCell *)&v6 traitCollectionDidChange:changeCopy];
  sub_100229568();
}

- (void)didTapActionButton
{
  v2 = *(*(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC20ProductPageExtension35LargeHeroBreakoutCollectionViewCell_detailsView) + OBJC_IVAR____TtC20ProductPageExtension19BreakoutDetailsView_callToActionButtonHandler);
  if (v2)
  {
    selfCopy = self;
    v3 = sub_10001CE50(v2);
    v2(v3);
    sub_1000167E0(v2);
  }
}

- (void)applyLayoutAttributes:(id)attributes
{
  attributesCopy = attributes;
  selfCopy = self;
  sub_10022B97C(attributesCopy);
}

@end