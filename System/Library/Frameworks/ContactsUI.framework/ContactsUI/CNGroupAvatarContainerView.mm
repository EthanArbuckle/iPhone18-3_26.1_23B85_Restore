@interface CNGroupAvatarContainerView
- (CGSize)sizeThatFits:(CGSize)fits;
@end

@implementation CNGroupAvatarContainerView

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  underlyingContainerView = [(CNGroupAvatarContainerView *)self underlyingContainerView];
  [underlyingContainerView sizeThatFits:{width, height}];
  v7 = v6;
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
}

@end