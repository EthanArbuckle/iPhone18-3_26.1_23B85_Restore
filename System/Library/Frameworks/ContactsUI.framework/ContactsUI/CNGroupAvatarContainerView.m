@interface CNGroupAvatarContainerView
- (CGSize)sizeThatFits:(CGSize)a3;
@end

@implementation CNGroupAvatarContainerView

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = [(CNGroupAvatarContainerView *)self underlyingContainerView];
  [v5 sizeThatFits:{width, height}];
  v7 = v6;
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
}

@end