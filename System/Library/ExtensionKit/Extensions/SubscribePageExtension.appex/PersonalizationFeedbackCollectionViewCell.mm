@interface PersonalizationFeedbackCollectionViewCell
- (void)didTapSubmitButton:(id)button;
- (void)feedbackButtonSelectedWithFeedbackOptioButton:(id)button;
- (void)layoutSubviews;
- (void)prepareForReuse;
@end

@implementation PersonalizationFeedbackCollectionViewCell

- (void)layoutSubviews
{
  selfCopy = self;
  sub_1001E3D30();
}

- (void)prepareForReuse
{
  selfCopy = self;
  sub_1001E4C60();
}

- (void)feedbackButtonSelectedWithFeedbackOptioButton:(id)button
{
  buttonCopy = button;
  selfCopy = self;
  sub_1001E4E8C();
}

- (void)didTapSubmitButton:(id)button
{
  buttonCopy = button;
  selfCopy = self;
  sub_1001E7110();
}

@end