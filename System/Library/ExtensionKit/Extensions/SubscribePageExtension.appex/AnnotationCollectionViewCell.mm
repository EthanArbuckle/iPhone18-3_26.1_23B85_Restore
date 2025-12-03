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
  sub_100279094();
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_100279380();
}

- (void)linkLabelTapped:(id)tapped
{
  tappedCopy = tapped;
  selfCopy = self;
  sub_10027C9AC();
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_10027AEA4(change);
}

- (NSArray)accessibilityDetailItems
{
  selfCopy = self;
  sub_10027B010();

  v3.super.isa = sub_100753294().super.isa;

  return v3.super.isa;
}

- (BOOL)accessibilityIsSummaryExpandable
{
  selfCopy = self;
  v3 = sub_100279E58();

  return v3;
}

- (void)accessibilityLinkLabelTapped
{
  selfCopy = self;
  sub_10027C9AC();
}

@end