@interface HorizontalPaidChannelHeaderView
- (void)buttonCaptionLabelTapped;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation HorizontalPaidChannelHeaderView

- (void)traitCollectionDidChange:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_165294(a3);
}

- (void)buttonCaptionLabelTapped
{
  v2 = self;
  sub_1677A0();
}

@end