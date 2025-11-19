@interface ShowcaseCell
- (NSString)accessibilityHeadline;
- (NSString)accessibilitySubtitle;
- (NSString)accessibilityTitle;
- (void)layoutSubviews;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation ShowcaseCell

- (void)layoutSubviews
{
  v2 = self;
  sub_BAE44();
}

- (void)traitCollectionDidChange:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_BBD48(a3);
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