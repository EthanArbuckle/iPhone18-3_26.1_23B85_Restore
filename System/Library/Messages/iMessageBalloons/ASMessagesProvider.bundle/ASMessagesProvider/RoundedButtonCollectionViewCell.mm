@interface RoundedButtonCollectionViewCell
- (void)didTapButton:(id)button;
- (void)layoutSubviews;
@end

@implementation RoundedButtonCollectionViewCell

- (void)layoutSubviews
{
  selfCopy = self;
  sub_5BB43C();
}

- (void)didTapButton:(id)button
{
  buttonCopy = button;
  selfCopy = self;
  sub_5BBB78(buttonCopy);
}

@end