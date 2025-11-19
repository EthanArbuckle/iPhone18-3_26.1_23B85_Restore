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
  sub_100279094();
}

- (void)layoutSubviews
{
  v2 = self;
  sub_100279380();
}

- (void)linkLabelTapped:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10027C9AC();
}

- (void)traitCollectionDidChange:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_10027AEA4(a3);
}

- (NSArray)accessibilityDetailItems
{
  v2 = self;
  sub_10027B010();

  v3.super.isa = sub_100753294().super.isa;

  return v3.super.isa;
}

- (BOOL)accessibilityIsSummaryExpandable
{
  v2 = self;
  v3 = sub_100279E58();

  return v3;
}

- (void)accessibilityLinkLabelTapped
{
  v2 = self;
  sub_10027C9AC();
}

@end