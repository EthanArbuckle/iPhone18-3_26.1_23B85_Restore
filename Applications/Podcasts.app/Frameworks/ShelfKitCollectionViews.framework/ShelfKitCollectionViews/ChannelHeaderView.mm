@interface ChannelHeaderView
- (void)buttonCaptionLabelTapped;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation ChannelHeaderView

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_15BC5C(change);
}

- (void)buttonCaptionLabelTapped
{
  selfCopy = self;
  sub_15EAF4();
}

@end