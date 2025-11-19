@interface AllMetricsViewCell
- (void)didTapActivityIndicator;
- (void)layoutSubviews;
- (void)setHighlighted:(BOOL)a3;
@end

@implementation AllMetricsViewCell

- (void)layoutSubviews
{
  v2 = self;
  sub_1001CE920();
}

- (void)didTapActivityIndicator
{
  v2 = [objc_allocWithZone(UIImpactFeedbackGenerator) initWithStyle:1];
  [v2 impactOccurred];
}

- (void)setHighlighted:(BOOL)a3
{
  v4 = self;
  sub_1001D2B8C(a3, type metadata accessor for AllMetricsViewCell, &unk_10031E340, sub_1001D3028, &unk_10031E358);
}

@end