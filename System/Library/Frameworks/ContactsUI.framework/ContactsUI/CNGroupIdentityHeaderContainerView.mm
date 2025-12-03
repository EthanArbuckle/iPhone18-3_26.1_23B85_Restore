@interface CNGroupIdentityHeaderContainerView
- (CGSize)sizeThatFits:(CGSize)fits;
- (CNGroupIdentityHeaderContainerViewwDelegate)delegate;
@end

@implementation CNGroupIdentityHeaderContainerView

- (CNGroupIdentityHeaderContainerViewwDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  delegate = [(CNGroupIdentityHeaderContainerView *)self delegate];
  [delegate estimatedSizeThatFits:{width, height}];
  v7 = v6;
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
}

@end