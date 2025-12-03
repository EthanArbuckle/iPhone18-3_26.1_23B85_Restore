@interface AnnotationCollectionViewCell
- (BOOL)accessibilityIsSummaryExpandable;
- (NSArray)accessibilityDetailItems;
- (void)accessibilityLinkLabelTapped;
- (void)layoutSubviews;
- (void)linkLabelTapped:(id)tapped;
- (void)prepareForReuse;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation AnnotationCollectionViewCell

- (void)prepareForReuse
{
  selfCopy = self;
  sub_2EDB80();
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_2EF73C();
}

- (void)linkLabelTapped:(id)tapped
{
  tappedCopy = tapped;
  selfCopy = self;
  sub_2F2CC4();
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_2F1260(change);
}

- (NSArray)accessibilityDetailItems
{
  selfCopy = self;
  sub_2F13CC();

  v3.super.isa = sub_769450().super.isa;

  return v3.super.isa;
}

- (BOOL)accessibilityIsSummaryExpandable
{
  selfCopy = self;
  v3 = sub_2F0214();

  return v3;
}

- (void)accessibilityLinkLabelTapped
{
  selfCopy = self;
  sub_2F2CC4();
}

@end