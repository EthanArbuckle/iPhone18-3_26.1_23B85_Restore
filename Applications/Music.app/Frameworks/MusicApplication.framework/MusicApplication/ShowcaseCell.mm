@interface ShowcaseCell
- (NSString)accessibilityHeadline;
- (NSString)accessibilitySubtitle;
- (NSString)accessibilityTitle;
- (void)layoutSubviews;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation ShowcaseCell

- (void)layoutSubviews
{
  selfCopy = self;
  sub_BAE44();
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_BBD48(change);
}

- (NSString)accessibilityHeadline
{
  swift_beginAccess();
  swift_beginAccess();

  v2 = sub_AB9260();

  return v2;
}

- (NSString)accessibilityTitle
{
  swift_beginAccess();
  swift_beginAccess();

  v2 = sub_AB9260();

  return v2;
}

- (NSString)accessibilitySubtitle
{
  swift_beginAccess();
  swift_beginAccess();

  v2 = sub_AB9260();

  return v2;
}

@end