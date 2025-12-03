@interface SocialProfileArtworkEditorLockupView
- (CGSize)sizeThatFits:(CGSize)fits;
- (void)layoutSubviews;
@end

@implementation SocialProfileArtworkEditorLockupView

- (void)layoutSubviews
{
  selfCopy = self;
  sub_4C8304();
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  if (fits.width > 128.0)
  {
    fits.width = 128.0;
  }

  v3 = fits.width + 32.0;
  v4 = v3;
  result.height = v4;
  result.width = v3;
  return result;
}

@end