@interface FeaturedShowcaseCell
- (CGRect)bounds;
- (CGRect)frame;
- (NSString)accessibilityDescription;
- (NSString)accessibilityHeadline;
- (NSString)accessibilitySubtitle;
- (NSString)accessibilityTitle;
- (void)layoutSubviews;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation FeaturedShowcaseCell

- (void)traitCollectionDidChange:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_1E124C(a3);
}

- (CGRect)bounds
{
  sub_1E14A4(self, a2, &selRef_bounds);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (CGRect)frame
{
  sub_1E14A4(self, a2, &selRef_frame);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (void)layoutSubviews
{
  v2 = self;
  sub_1E16A4();
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

- (NSString)accessibilityDescription
{
  swift_beginAccess();
  swift_beginAccess();

  v2 = sub_AB9260();

  return v2;
}

@end