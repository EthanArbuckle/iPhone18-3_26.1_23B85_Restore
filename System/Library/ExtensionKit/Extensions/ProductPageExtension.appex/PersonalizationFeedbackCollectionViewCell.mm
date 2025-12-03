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
  sub_10070347C();
}

- (void)prepareForReuse
{
  selfCopy = self;
  sub_1007043AC();
}

- (void)feedbackButtonSelectedWithFeedbackOptioButton:(id)button
{
  buttonCopy = button;
  selfCopy = self;
  sub_1007045D8();
}

- (void)didTapSubmitButton:(id)button
{
  buttonCopy = button;
  selfCopy = self;
  sub_1007079C0();
}

@end