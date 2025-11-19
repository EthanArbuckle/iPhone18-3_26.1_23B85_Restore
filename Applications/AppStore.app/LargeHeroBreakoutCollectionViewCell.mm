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
  sub_1003B00F0();
}

- (void)prepareForReuse
{
  v2 = self;
  sub_1003AD86C();
}

- (void)traitCollectionDidChange:(id)a3
{
  v6.receiver = self;
  v6.super_class = swift_getObjectType();
  v4 = a3;
  v5 = v6.receiver;
  [(LargeHeroBreakoutCollectionViewCell *)&v6 traitCollectionDidChange:v4];
  sub_1003AEAA0();
}

- (void)didTapActionButton
{
  v2 = *(*(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC8AppStore35LargeHeroBreakoutCollectionViewCell_detailsView) + OBJC_IVAR____TtC8AppStore19BreakoutDetailsView_callToActionButtonHandler);
  if (v2)
  {
    v4 = self;
    v3 = sub_10000827C(v2);
    v2(v3);
    sub_10001F63C(v2);
  }
}

- (void)applyLayoutAttributes:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1003B068C(v4);
}

@end