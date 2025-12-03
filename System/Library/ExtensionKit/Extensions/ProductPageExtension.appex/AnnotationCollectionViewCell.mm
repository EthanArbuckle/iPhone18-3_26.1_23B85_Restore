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
  sub_10031AFEC();
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_10031B2D8();
}

- (void)linkLabelTapped:(id)tapped
{
  tappedCopy = tapped;
  selfCopy = self;
  sub_10031E00C();
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_10031C59C(change);
}

- (NSArray)accessibilityDetailItems
{
  selfCopy = self;
  sub_10031C708();

  v3.super.isa = sub_1007701AC().super.isa;

  return v3.super.isa;
}

- (BOOL)accessibilityIsSummaryExpandable
{
  selfCopy = self;
  v3 = sub_100318E24();

  return v3;
}

- (void)accessibilityLinkLabelTapped
{
  selfCopy = self;
  sub_10031E00C();
}

@end