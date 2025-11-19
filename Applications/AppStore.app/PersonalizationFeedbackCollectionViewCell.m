@interface PersonalizationFeedbackCollectionViewCell
- (void)didTapSubmitButton:(id)a3;
- (void)feedbackButtonSelectedWithFeedbackOptioButton:(id)a3;
- (void)layoutSubviews;
- (void)prepareForReuse;
@end

@implementation PersonalizationFeedbackCollectionViewCell

- (void)layoutSubviews
{
  v2 = self;
  sub_100731F38();
}

- (void)prepareForReuse
{
  v2 = self;
  sub_100732E68();
}

- (void)feedbackButtonSelectedWithFeedbackOptioButton:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100733094();
}

- (void)didTapSubmitButton:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100736394();
}

@end