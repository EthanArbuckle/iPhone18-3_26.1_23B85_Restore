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
  sub_10031AFEC();
}

- (void)layoutSubviews
{
  v2 = self;
  sub_10031B2D8();
}

- (void)linkLabelTapped:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10031E00C();
}

- (void)traitCollectionDidChange:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_10031C59C(a3);
}

- (NSArray)accessibilityDetailItems
{
  v2 = self;
  sub_10031C708();

  v3.super.isa = sub_1007701AC().super.isa;

  return v3.super.isa;
}

- (BOOL)accessibilityIsSummaryExpandable
{
  v2 = self;
  v3 = sub_100318E24();

  return v3;
}

- (void)accessibilityLinkLabelTapped
{
  v2 = self;
  sub_10031E00C();
}

@end