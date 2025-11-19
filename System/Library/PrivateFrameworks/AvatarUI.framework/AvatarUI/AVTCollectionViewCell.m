@interface AVTCollectionViewCell
- (void)setSubview:(id)a3;
@end

@implementation AVTCollectionViewCell

- (void)setSubview:(id)a3
{
  v5 = a3;
  subview = self->_subview;
  if (subview != v5)
  {
    v11 = v5;
    v7 = [(UIView *)subview superview];
    v8 = [(AVTCollectionViewCell *)self contentView];

    if (v7 == v8)
    {
      [(UIView *)self->_subview removeFromSuperview];
    }

    objc_storeStrong(&self->_subview, a3);
    v9 = [(AVTCollectionViewCell *)self contentView];
    [v9 bounds];
    [(UIView *)v11 setFrame:?];

    [(UIView *)v11 setAutoresizingMask:18];
    v10 = [(AVTCollectionViewCell *)self contentView];
    [v10 addSubview:v11];

    v5 = v11;
  }

  MEMORY[0x1EEE66BB8](subview, v5);
}

@end