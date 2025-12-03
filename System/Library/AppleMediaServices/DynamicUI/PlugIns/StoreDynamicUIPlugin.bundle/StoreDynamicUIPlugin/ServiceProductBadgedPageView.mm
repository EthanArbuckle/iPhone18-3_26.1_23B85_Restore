@interface ServiceProductBadgedPageView
- (void)didTapOffer:(id)offer;
- (void)layoutSubviews;
- (void)scrollViewDidScroll:(id)scroll;
- (void)tintColorDidChange;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation ServiceProductBadgedPageView

- (void)layoutSubviews
{
  selfCopy = self;
  sub_FA8F4();
}

- (void)didTapOffer:(id)offer
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_13BF54();
  swift_unknownObjectRelease();
  sub_FB5E0(v5);

  sub_3C04(v5);
}

- (void)tintColorDidChange
{
  selfCopy = self;
  sub_FB6C0();
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_FB744(change);
}

- (void)scrollViewDidScroll:(id)scroll
{
  scrollCopy = scroll;
  selfCopy = self;
  sub_FBD98();
}

@end