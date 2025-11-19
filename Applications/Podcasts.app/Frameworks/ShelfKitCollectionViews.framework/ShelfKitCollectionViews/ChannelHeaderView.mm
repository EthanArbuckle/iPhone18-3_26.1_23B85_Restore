@interface ChannelHeaderView
- (void)buttonCaptionLabelTapped;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation ChannelHeaderView

- (void)traitCollectionDidChange:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_15BC5C(a3);
}

- (void)buttonCaptionLabelTapped
{
  v2 = self;
  sub_15EAF4();
}

@end