@interface ServiceProductCardView
- (void)dismissButtonActionWithSender:(id)sender;
- (void)layoutSubviews;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation ServiceProductCardView

- (void)layoutSubviews
{
  selfCopy = self;
  sub_10639C();
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_10667C(change);
}

- (void)dismissButtonActionWithSender:(id)sender
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_13BF54();
  swift_unknownObjectRelease();
  sub_106BC4(v5);

  sub_3C04(v5);
}

@end