@interface RoundedButtonCollectionViewCell
- (void)didTapButton:(id)button;
- (void)layoutSubviews;
@end

@implementation RoundedButtonCollectionViewCell

- (void)layoutSubviews
{
  selfCopy = self;
  sub_1005C8894();
}

- (void)didTapButton:(id)button
{
  buttonCopy = button;
  selfCopy = self;
  sub_1005C8FC0(buttonCopy);
}

@end