@interface AnnotationCollectionViewCell
- (BOOL)accessibilityIsSummaryExpandable;
- (NSArray)accessibilityDetailItems;
- (void)accessibilityLinkLabelTapped;
- (void)layoutSubviews;
- (void)linkLabelTapped:(id)a3;
- (void)prepareForReuse;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation AnnotationCollectionViewCell

- (void)prepareForReuse
{
  v2 = self;
  sub_1000B08EC();
}

- (void)layoutSubviews
{
  v2 = self;
  sub_1000B0BD8();
}

- (void)linkLabelTapped:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1000B38FC();
}

- (void)traitCollectionDidChange:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_1000B1E9C(a3);
}

- (NSArray)accessibilityDetailItems
{
  v2 = self;
  sub_1000B2008();

  v3.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v3.super.isa;
}

- (BOOL)accessibilityIsSummaryExpandable
{
  v2 = self;
  v3 = sub_1000AE724();

  return v3;
}

- (void)accessibilityLinkLabelTapped
{
  v2 = self;
  sub_1000B38FC();
}

@end