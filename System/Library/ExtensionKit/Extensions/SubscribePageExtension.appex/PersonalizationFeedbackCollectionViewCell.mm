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
  sub_1001E3D30();
}

- (void)prepareForReuse
{
  v2 = self;
  sub_1001E4C60();
}

- (void)feedbackButtonSelectedWithFeedbackOptioButton:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1001E4E8C();
}

- (void)didTapSubmitButton:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1001E7110();
}

@end