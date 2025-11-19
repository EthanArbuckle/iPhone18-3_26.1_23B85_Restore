@interface MFComposeScrollView
- (MFComposeScrollView)initWithFrame:(CGRect)a3;
- (void)didAddSubview:(id)a3;
- (void)disableSubview:(id)a3;
- (void)enableSubview:(id)a3;
- (void)setContentOffset:(CGPoint)a3 animated:(BOOL)a4;
- (void)setSubviewsDisabled:(BOOL)a3;
- (void)willRemoveSubview:(id)a3;
@end

@implementation MFComposeScrollView

- (MFComposeScrollView)initWithFrame:(CGRect)a3
{
  v7.receiver = self;
  v7.super_class = MFComposeScrollView;
  v3 = [(MFComposeScrollView *)&v7 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:3];
    disabledSubviews = v3->_disabledSubviews;
    v3->_disabledSubviews = v4;

    v3->_shouldScrollToFirstResponder = 1;
    [(MFComposeScrollView *)v3 setPreservesSuperviewLayoutMargins:1];
    [(MFComposeScrollView *)v3 setInsetsLayoutMarginsFromSafeArea:0];
  }

  return v3;
}

- (void)setSubviewsDisabled:(BOOL)a3
{
  v14 = *MEMORY[0x1E69E9840];
  if (self->_subviewsDisabled != a3)
  {
    self->_subviewsDisabled = a3;
    v9 = 0u;
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v4 = [(MFComposeScrollView *)self subviews];
    v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v5)
    {
      v6 = *v10;
      do
      {
        v7 = 0;
        do
        {
          if (*v10 != v6)
          {
            objc_enumerationMutation(v4);
          }

          v8 = *(*(&v9 + 1) + 8 * v7);
          if (self->_subviewsDisabled)
          {
            [(MFComposeScrollView *)self disableSubview:v8];
          }

          else
          {
            [(MFComposeScrollView *)self enableSubview:v8];
          }

          ++v7;
        }

        while (v5 != v7);
        v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v5);
    }
  }
}

- (void)disableSubview:(id)a3
{
  v4 = a3;
  if ([v4 isUserInteractionEnabled])
  {
    [(NSMutableSet *)self->_disabledSubviews addObject:v4];
    [v4 setUserInteractionEnabled:0];
  }
}

- (void)enableSubview:(id)a3
{
  v4 = a3;
  if ([(NSMutableSet *)self->_disabledSubviews containsObject:?])
  {
    [(NSMutableSet *)self->_disabledSubviews removeObject:v4];
    [v4 setUserInteractionEnabled:1];
  }
}

- (void)didAddSubview:(id)a3
{
  v4 = a3;
  v5.receiver = self;
  v5.super_class = MFComposeScrollView;
  [(MFComposeScrollView *)&v5 didAddSubview:v4];
  if (self->_subviewsDisabled)
  {
    [(MFComposeScrollView *)self disableSubview:v4];
  }
}

- (void)willRemoveSubview:(id)a3
{
  v4 = a3;
  v5.receiver = self;
  v5.super_class = MFComposeScrollView;
  [(MFComposeScrollView *)&v5 willRemoveSubview:v4];
  if (self->_subviewsDisabled)
  {
    [(MFComposeScrollView *)self enableSubview:v4];
  }
}

- (void)setContentOffset:(CGPoint)a3 animated:(BOOL)a4
{
  if (!self->_scrollBlocked)
  {
    v7 = v4;
    v8 = v5;
    v6.receiver = self;
    v6.super_class = MFComposeScrollView;
    [(MFComposeScrollView *)&v6 setContentOffset:a4 animated:a3.x, a3.y];
  }
}

@end