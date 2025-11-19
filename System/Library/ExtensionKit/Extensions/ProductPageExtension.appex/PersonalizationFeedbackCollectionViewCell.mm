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
  sub_10070347C();
}

- (void)prepareForReuse
{
  v2 = self;
  sub_1007043AC();
}

- (void)feedbackButtonSelectedWithFeedbackOptioButton:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1007045D8();
}

- (void)didTapSubmitButton:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1007079C0();
}

@end