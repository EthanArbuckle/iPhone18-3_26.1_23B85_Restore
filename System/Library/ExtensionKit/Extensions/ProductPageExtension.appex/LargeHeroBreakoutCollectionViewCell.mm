@interface LargeHeroBreakoutCollectionViewCell
- (void)applyLayoutAttributes:(id)a3;
- (void)didTapActionButton;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation LargeHeroBreakoutCollectionViewCell

- (void)layoutSubviews
{
  v2 = self;
  sub_10022B3E0();
}

- (void)prepareForReuse
{
  v2 = self;
  sub_100228B5C();
}

- (void)traitCollectionDidChange:(id)a3
{
  v6.receiver = self;
  v6.super_class = swift_getObjectType();
  v4 = a3;
  v5 = v6.receiver;
  [(LargeHeroBreakoutCollectionViewCell *)&v6 traitCollectionDidChange:v4];
  sub_100229568();
}

- (void)didTapActionButton
{
  v2 = *(*(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC20ProductPageExtension35LargeHeroBreakoutCollectionViewCell_detailsView) + OBJC_IVAR____TtC20ProductPageExtension19BreakoutDetailsView_callToActionButtonHandler);
  if (v2)
  {
    v4 = self;
    v3 = sub_10001CE50(v2);
    v2(v3);
    sub_1000167E0(v2);
  }
}

- (void)applyLayoutAttributes:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10022B97C(v4);
}

@end