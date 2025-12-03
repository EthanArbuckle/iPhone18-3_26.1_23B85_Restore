@interface HorizontalPaidChannelHeaderView
- (void)buttonCaptionLabelTapped;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation HorizontalPaidChannelHeaderView

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_165294(change);
}

- (void)buttonCaptionLabelTapped
{
  selfCopy = self;
  sub_1677A0();
}

@end