@interface SocialProfileArtworkEditorLockupView
- (CGSize)sizeThatFits:(CGSize)a3;
- (void)layoutSubviews;
@end

@implementation SocialProfileArtworkEditorLockupView

- (void)layoutSubviews
{
  v2 = self;
  sub_4C8304();
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  if (a3.width > 128.0)
  {
    a3.width = 128.0;
  }

  v3 = a3.width + 32.0;
  v4 = v3;
  result.height = v4;
  result.width = v3;
  return result;
}

@end