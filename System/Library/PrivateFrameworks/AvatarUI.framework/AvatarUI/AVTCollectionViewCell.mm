@interface AVTCollectionViewCell
- (void)setSubview:(id)subview;
@end

@implementation AVTCollectionViewCell

- (void)setSubview:(id)subview
{
  subviewCopy = subview;
  subview = self->_subview;
  if (subview != subviewCopy)
  {
    v11 = subviewCopy;
    superview = [(UIView *)subview superview];
    contentView = [(AVTCollectionViewCell *)self contentView];

    if (superview == contentView)
    {
      [(UIView *)self->_subview removeFromSuperview];
    }

    objc_storeStrong(&self->_subview, subview);
    contentView2 = [(AVTCollectionViewCell *)self contentView];
    [contentView2 bounds];
    [(UIView *)v11 setFrame:?];

    [(UIView *)v11 setAutoresizingMask:18];
    contentView3 = [(AVTCollectionViewCell *)self contentView];
    [contentView3 addSubview:v11];

    subviewCopy = v11;
  }

  MEMORY[0x1EEE66BB8](subview, subviewCopy);
}

@end