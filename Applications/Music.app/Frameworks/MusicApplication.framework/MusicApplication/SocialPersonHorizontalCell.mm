@interface SocialPersonHorizontalCell
- (MPButton)accessibilityApproveButton;
- (MPButton)accessibilityDeclineButton;
- (void)layoutSubviews;
@end

@implementation SocialPersonHorizontalCell

- (void)layoutSubviews
{
  selfCopy = self;
  sub_B12AC();
}

- (MPButton)accessibilityApproveButton
{
  selfCopy = self;
  sub_B1958();
  v4 = v3;

  return v4;
}

- (MPButton)accessibilityDeclineButton
{
  selfCopy = self;
  sub_B1C94();
  v4 = v3;

  return v4;
}

@end