@interface CNVisualIdentityAvatarContainerView
- (CGSize)sizeThatFits:(CGSize)a3;
- (CNVisualIdentityAvatarContainerViewDelegate)delegate;
@end

@implementation CNVisualIdentityAvatarContainerView

- (CNVisualIdentityAvatarContainerViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = [(CNVisualIdentityAvatarContainerView *)self delegate];
  [v5 estimatedSizeThatFits:{width, height}];
  v7 = v6;
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
}

@end