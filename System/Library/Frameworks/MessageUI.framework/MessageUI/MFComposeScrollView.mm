@interface MFComposeScrollView
- (MFComposeScrollView)initWithFrame:(CGRect)frame;
- (void)didAddSubview:(id)subview;
- (void)disableSubview:(id)subview;
- (void)enableSubview:(id)subview;
- (void)setContentOffset:(CGPoint)offset animated:(BOOL)animated;
- (void)setSubviewsDisabled:(BOOL)disabled;
- (void)willRemoveSubview:(id)subview;
@end

@implementation MFComposeScrollView

- (MFComposeScrollView)initWithFrame:(CGRect)frame
{
  v7.receiver = self;
  v7.super_class = MFComposeScrollView;
  v3 = [(MFComposeScrollView *)&v7 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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

- (void)setSubviewsDisabled:(BOOL)disabled
{
  v14 = *MEMORY[0x1E69E9840];
  if (self->_subviewsDisabled != disabled)
  {
    self->_subviewsDisabled = disabled;
    v9 = 0u;
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    subviews = [(MFComposeScrollView *)self subviews];
    v5 = [subviews countByEnumeratingWithState:&v9 objects:v13 count:16];
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
            objc_enumerationMutation(subviews);
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
        v5 = [subviews countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v5);
    }
  }
}

- (void)disableSubview:(id)subview
{
  subviewCopy = subview;
  if ([subviewCopy isUserInteractionEnabled])
  {
    [(NSMutableSet *)self->_disabledSubviews addObject:subviewCopy];
    [subviewCopy setUserInteractionEnabled:0];
  }
}

- (void)enableSubview:(id)subview
{
  subviewCopy = subview;
  if ([(NSMutableSet *)self->_disabledSubviews containsObject:?])
  {
    [(NSMutableSet *)self->_disabledSubviews removeObject:subviewCopy];
    [subviewCopy setUserInteractionEnabled:1];
  }
}

- (void)didAddSubview:(id)subview
{
  subviewCopy = subview;
  v5.receiver = self;
  v5.super_class = MFComposeScrollView;
  [(MFComposeScrollView *)&v5 didAddSubview:subviewCopy];
  if (self->_subviewsDisabled)
  {
    [(MFComposeScrollView *)self disableSubview:subviewCopy];
  }
}

- (void)willRemoveSubview:(id)subview
{
  subviewCopy = subview;
  v5.receiver = self;
  v5.super_class = MFComposeScrollView;
  [(MFComposeScrollView *)&v5 willRemoveSubview:subviewCopy];
  if (self->_subviewsDisabled)
  {
    [(MFComposeScrollView *)self enableSubview:subviewCopy];
  }
}

- (void)setContentOffset:(CGPoint)offset animated:(BOOL)animated
{
  if (!self->_scrollBlocked)
  {
    v7 = v4;
    v8 = v5;
    v6.receiver = self;
    v6.super_class = MFComposeScrollView;
    [(MFComposeScrollView *)&v6 setContentOffset:animated animated:offset.x, offset.y];
  }
}

@end