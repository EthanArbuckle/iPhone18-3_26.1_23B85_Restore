@interface RoundedButtonCollectionViewCell
- (void)didTapButton:(id)button;
- (void)layoutSubviews;
@end

@implementation RoundedButtonCollectionViewCell

- (void)layoutSubviews
{
  selfCopy = self;
  sub_100748690();
}

- (void)didTapButton:(id)button
{
  buttonCopy = button;
  selfCopy = self;
  sub_100748DCC(buttonCopy);
}

@end