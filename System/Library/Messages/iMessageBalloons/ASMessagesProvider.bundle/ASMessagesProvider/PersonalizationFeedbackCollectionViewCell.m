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
  sub_6CDA9C();
}

- (void)prepareForReuse
{
  v2 = self;
  sub_6CE9CC();
}

- (void)feedbackButtonSelectedWithFeedbackOptioButton:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_6CEBF8();
}

- (void)didTapSubmitButton:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_6D1FE0();
}

@end