@interface DetailHeader
- (CGRect)bounds;
- (CGRect)frame;
- (CGSize)sizeThatFits:(CGSize)fits;
- (NSString)accessibilityIsVisiblePlaylistTitle;
- (UIView)accessibilityArtworkEditingOverlayView;
- (void)layoutSubviews;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation DetailHeader

- (void)layoutSubviews
{
  selfCopy = self;
  sub_29D0B4();
}

- (CGRect)bounds
{
  sub_29DA28(self, a2, &selRef_bounds);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (CGRect)frame
{
  sub_29DA28(self, a2, &selRef_frame);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  selfCopy = self;
  sub_29DC80(width, height);
  v7 = v6;
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_29E210(change);
}

- (NSString)accessibilityIsVisiblePlaylistTitle
{
  sub_2A8FBC();

  swift_beginAccess();

  v2 = sub_AB9260();

  return v2;
}

- (UIView)accessibilityArtworkEditingOverlayView
{
  selfCopy = self;
  v3 = sub_29F560();

  return v3;
}

@end