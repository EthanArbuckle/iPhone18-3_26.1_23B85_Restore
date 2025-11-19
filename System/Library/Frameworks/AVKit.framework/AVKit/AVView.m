@interface AVView
- (AVContentIntersectingDelegate)contentIntersectingDelegate;
- (AVView)initWithCoder:(id)a3;
- (AVView)initWithFrame:(CGRect)a3;
- (CGRect)contentIntersection;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (void)_commonInit;
- (void)_updateSubviewContentIntersectionsIfNeeded;
- (void)didAddSubview:(id)a3;
- (void)interruptActiveInteractions;
- (void)layoutSubviews;
- (void)setAutomaticallyUpdatesSubviewContentIntersections:(BOOL)a3;
- (void)setContentIntersection:(CGRect)a3;
- (void)setHidden:(BOOL)a3;
- (void)updateForContentIntersection;
- (void)willRemoveSubview:(id)a3;
@end

@implementation AVView

- (CGRect)contentIntersection
{
  x = self->_contentIntersection.origin.x;
  y = self->_contentIntersection.origin.y;
  width = self->_contentIntersection.size.width;
  height = self->_contentIntersection.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (AVContentIntersectingDelegate)contentIntersectingDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_contentIntersectingDelegate);

  return WeakRetained;
}

- (void)interruptActiveInteractions
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = self->_subviewsNeedingAVInterruptibleUpdate;
  v3 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v7 + 1) + 8 * v6++) interruptActiveInteractions];
      }

      while (v4 != v6);
      v4 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (void)updateForContentIntersection
{
  [(AVView *)self _updateSubviewContentIntersectionsIfNeeded];
  if (self)
  {
    [(AVView *)self bounds];
    v5 = (COERCE__INT64(fabs(v3 * v4)) - 0x10000000000000) >> 53;
    v6 = COERCE__INT64(v3 * v4) < 0 || v5 > 0x3FE;
    v7 = v6 && (COERCE__INT64(v3 * v4) - 1) > 0xFFFFFFFFFFFFELL;
    v8 = !v7 && self->_contentIntersection.size.height * self->_contentIntersection.size.width / (v3 * v4) > 0.8;
    if (self->_isOverVideo != v8)
    {
      self->_isOverVideo = v8;
      v9 = [(AVView *)self contentIntersectingDelegate];
      if (v9)
      {
        v10 = v9;
        [v9 viewIsOverVideoDidChange:self];
        v9 = v10;
      }
    }
  }
}

- (void)_updateSubviewContentIntersectionsIfNeeded
{
  v25 = *MEMORY[0x1E69E9840];
  if (a1 && *(a1 + 472) == 1)
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v2 = *(a1 + 456);
    v3 = [v2 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v21;
      do
      {
        v6 = 0;
        do
        {
          if (*v21 != v5)
          {
            objc_enumerationMutation(v2);
          }

          v7 = *(*(&v20 + 1) + 8 * v6);
          [a1 contentIntersection];
          v9 = v8;
          v11 = v10;
          v13 = v12;
          v15 = v14;
          [v7 frame];
          v28.origin.x = v16;
          v28.origin.y = v17;
          v28.size.width = v18;
          v28.size.height = v19;
          v26.origin.x = v9;
          v26.origin.y = v11;
          v26.size.width = v13;
          v26.size.height = v15;
          v27 = CGRectIntersection(v26, v28);
          [v7 convertRect:a1 fromView:{v27.origin.x, v27.origin.y, v27.size.width, v27.size.height}];
          [v7 setContentIntersection:?];

          ++v6;
        }

        while (v4 != v6);
        v4 = [v2 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v4);
    }
  }
}

- (void)setContentIntersection:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  p_contentIntersection = &self->_contentIntersection;
  if (!CGRectEqualToRect(self->_contentIntersection, a3))
  {
    p_contentIntersection->origin.x = x;
    p_contentIntersection->origin.y = y;
    p_contentIntersection->size.width = width;
    p_contentIntersection->size.height = height;

    [(AVView *)self updateForContentIntersection];
  }
}

- (void)setAutomaticallyUpdatesSubviewContentIntersections:(BOOL)a3
{
  if (self->_automaticallyUpdatesSubviewContentIntersections != a3)
  {
    self->_automaticallyUpdatesSubviewContentIntersections = a3;
    [(AVView *)self _updateSubviewContentIntersectionsIfNeeded];
  }
}

- (void)willRemoveSubview:(id)a3
{
  v5.receiver = self;
  v5.super_class = AVView;
  v4 = a3;
  [(AVView *)&v5 willRemoveSubview:v4];
  [(NSMutableArray *)self->_subviewsNeedingIntersectionUpdate removeObject:v4, v5.receiver, v5.super_class];
  [(NSMutableArray *)self->_subviewsNeedingAVInterruptibleUpdate removeObject:v4];
}

- (void)didAddSubview:(id)a3
{
  v4 = a3;
  v5.receiver = self;
  v5.super_class = AVView;
  [(AVView *)&v5 didAddSubview:v4];
  if (objc_opt_respondsToSelector())
  {
    [(NSMutableArray *)self->_subviewsNeedingIntersectionUpdate addObject:v4];
  }

  if (objc_opt_respondsToSelector())
  {
    [(NSMutableArray *)self->_subviewsNeedingAVInterruptibleUpdate addObject:v4];
  }
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = AVView;
  [(AVView *)&v3 layoutSubviews];
  [(AVView *)self _updateSubviewContentIntersectionsIfNeeded];
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  v7.receiver = self;
  v7.super_class = AVView;
  v5 = [(AVView *)&v7 hitTest:a4 withEvent:a3.x, a3.y];
  if ([(AVView *)self ignoresTouches]&& v5 == self)
  {

    v5 = 0;
  }

  return v5;
}

- (void)setHidden:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = AVView;
  [(AVView *)&v4 setHidden:a3];
  if ([(AVView *)self hasBackdropView])
  {
    [(UIView *)self avkit_needsUpdateBackdropCaptureViewHidden];
  }
}

- (AVView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = AVView;
  v3 = [(AVView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(AVView *)v3 _commonInit];
  }

  return v4;
}

- (AVView)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = AVView;
  v3 = [(AVView *)&v6 initWithCoder:a3];
  v4 = v3;
  if (v3)
  {
    [(AVView *)v3 _commonInit];
  }

  return v4;
}

- (void)_commonInit
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  subviewsNeedingIntersectionUpdate = self->_subviewsNeedingIntersectionUpdate;
  self->_subviewsNeedingIntersectionUpdate = v3;

  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  subviewsNeedingAVInterruptibleUpdate = self->_subviewsNeedingAVInterruptibleUpdate;
  self->_subviewsNeedingAVInterruptibleUpdate = v5;

  self->_automaticallyUpdatesSubviewContentIntersections = 0;
  v7 = *(MEMORY[0x1E695F050] + 16);
  self->_contentIntersection.origin = *MEMORY[0x1E695F050];
  self->_contentIntersection.size = v7;
}

@end