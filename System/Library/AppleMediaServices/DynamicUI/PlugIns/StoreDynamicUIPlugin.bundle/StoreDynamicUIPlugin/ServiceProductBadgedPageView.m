@interface ServiceProductBadgedPageView
- (void)didTapOffer:(id)a3;
- (void)layoutSubviews;
- (void)scrollViewDidScroll:(id)a3;
- (void)tintColorDidChange;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation ServiceProductBadgedPageView

- (void)layoutSubviews
{
  v2 = self;
  sub_FA8F4();
}

- (void)didTapOffer:(id)a3
{
  swift_unknownObjectRetain();
  v4 = self;
  sub_13BF54();
  swift_unknownObjectRelease();
  sub_FB5E0(v5);

  sub_3C04(v5);
}

- (void)tintColorDidChange
{
  v2 = self;
  sub_FB6C0();
}

- (void)traitCollectionDidChange:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_FB744(a3);
}

- (void)scrollViewDidScroll:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_FBD98();
}

@end