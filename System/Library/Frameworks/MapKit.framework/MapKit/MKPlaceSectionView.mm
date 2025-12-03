@interface MKPlaceSectionView
- (MKPlaceSectionView)initWithFrame:(CGRect)frame;
- (MKPlaceSectionViewDelegate)delegate;
- (id)rowAt:(CGPoint)at;
- (unint64_t)indexOfRowAt:(CGPoint)at;
- (void)_tappedRow:(id)row at:(unint64_t)at;
- (void)_touchesBeganForRow:(id)row at:(unint64_t)at;
- (void)_touchesCancelledForRow:(id)row at:(unint64_t)at;
- (void)_updateHairlineInsets;
- (void)_updateViewsAnimated:(BOOL)animated isNeedLayout:(BOOL)layout;
- (void)infoCardThemeChanged;
- (void)layoutMarginsDidChange;
- (void)layoutSubviews;
- (void)setFooterView:(id)view animated:(BOOL)animated;
- (void)setHeaderView:(id)view animated:(BOOL)animated;
- (void)setRowViews:(id)views animated:(BOOL)animated isNeedLayout:(BOOL)layout;
- (void)setShowsBottomHairline:(BOOL)hairline;
- (void)touchesBegan:(id)began withEvent:(id)event;
- (void)touchesCancelled:(id)cancelled withEvent:(id)event;
- (void)touchesEnded:(id)ended withEvent:(id)event;
@end

@implementation MKPlaceSectionView

- (MKPlaceSectionViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_updateViewsAnimated:(BOOL)animated isNeedLayout:(BOOL)layout
{
  layoutCopy = layout;
  animatedCopy = animated;
  if (self->_headerView)
  {
    v7 = [MEMORY[0x1E695E0F0] arrayByAddingObject:?];
  }

  else
  {
    v7 = MEMORY[0x1E695E0F0];
  }

  if (self->_rowViews)
  {
    v10 = v7;
    v8 = [v7 arrayByAddingObjectsFromArray:?];

    v7 = v8;
  }

  if (self->_footerView)
  {
    v11 = v7;
    v9 = [v7 arrayByAddingObject:?];

    v7 = v9;
  }

  v12 = v7;
  [(_MKStackView *)self setStackedSubviews:v7 animated:animatedCopy isNeedLayout:layoutCopy];
}

- (void)setFooterView:(id)view animated:(BOOL)animated
{
  animatedCopy = animated;
  viewCopy = view;
  if (self->_footerView != viewCopy)
  {
    v8 = viewCopy;
    objc_storeStrong(&self->_footerView, view);
    [(MKPlaceSectionView *)self _updateViewsAnimated:animatedCopy];
    viewCopy = v8;
  }
}

- (void)setRowViews:(id)views animated:(BOOL)animated isNeedLayout:(BOOL)layout
{
  layoutCopy = layout;
  animatedCopy = animated;
  viewsCopy = views;
  if (![(NSArray *)self->_rowViews isEqualToArray:?])
  {
    v8 = [viewsCopy copy];
    rowViews = self->_rowViews;
    self->_rowViews = v8;

    [(MKPlaceSectionView *)self _updateViewsAnimated:animatedCopy isNeedLayout:layoutCopy];
  }
}

- (void)setHeaderView:(id)view animated:(BOOL)animated
{
  animatedCopy = animated;
  viewCopy = view;
  if (self->_headerView != viewCopy)
  {
    v8 = viewCopy;
    objc_storeStrong(&self->_headerView, view);
    [(MKPlaceSectionView *)self _updateViewsAnimated:animatedCopy isNeedLayout:1];
    viewCopy = v8;
  }
}

- (void)touchesEnded:(id)ended withEvent:(id)event
{
  if (self->_trackingSelectForRow != 0x7FFFFFFFFFFFFFFFLL)
  {
    eventCopy = event;
    window = [(MKPlaceSectionView *)self window];
    v7 = [eventCopy touchesForWindow:window];

    anyObject = [v7 anyObject];

    [anyObject locationInView:self];
    v8 = [(MKPlaceSectionView *)self indexOfRowAt:?];
    if (v8 == self->_trackingSelectForRow)
    {
      v9 = v8;
      stackedSubviews = [(_MKStackView *)self stackedSubviews];
      v11 = [stackedSubviews count];

      if (v9 < v11)
      {
        stackedSubviews2 = [(_MKStackView *)self stackedSubviews];
        v13 = [stackedSubviews2 objectAtIndexedSubscript:self->_trackingSelectForRow];
        [(MKPlaceSectionView *)self _tappedRow:v13 at:self->_trackingSelectForRow];

        self->_trackingSelectForRow = 0x7FFFFFFFFFFFFFFFLL;
      }
    }
  }
}

- (void)touchesCancelled:(id)cancelled withEvent:(id)event
{
  trackingSelectForRow = self->_trackingSelectForRow;
  v6 = [(_MKStackView *)self stackedSubviews:cancelled];
  v7 = [v6 count];

  if (trackingSelectForRow < v7)
  {
    stackedSubviews = [(_MKStackView *)self stackedSubviews];
    v9 = [stackedSubviews objectAtIndexedSubscript:self->_trackingSelectForRow];
    [(MKPlaceSectionView *)self _touchesCancelledForRow:v9 at:self->_trackingSelectForRow];
  }

  self->_trackingSelectForRow = 0x7FFFFFFFFFFFFFFFLL;
}

- (void)touchesBegan:(id)began withEvent:(id)event
{
  eventCopy = event;
  window = [(MKPlaceSectionView *)self window];
  v7 = [eventCopy touchesForWindow:window];

  anyObject = [v7 anyObject];

  if ([anyObject tapCount] == 1)
  {
    [anyObject locationInView:self];
    v8 = [(MKPlaceSectionView *)self indexOfRowAt:?];
    self->_trackingSelectForRow = v8;
    stackedSubviews = [(_MKStackView *)self stackedSubviews];
    v10 = [stackedSubviews count];

    if (v8 < v10)
    {
      stackedSubviews2 = [(_MKStackView *)self stackedSubviews];
      v12 = [stackedSubviews2 objectAtIndexedSubscript:self->_trackingSelectForRow];
      [(MKPlaceSectionView *)self _touchesBeganForRow:v12 at:self->_trackingSelectForRow];
    }
  }
}

- (void)_touchesCancelledForRow:(id)row at:(unint64_t)at
{
  rowCopy = row;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [rowCopy setHighlighted:0];
  }
}

- (void)_touchesBeganForRow:(id)row at:(unint64_t)at
{
  rowCopy = row;
  if ([(MKPlaceSectionView *)self highlightsTouches])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [rowCopy setHighlighted:1];
    }
  }
}

- (void)_tappedRow:(id)row at:(unint64_t)at
{
  rowCopy = row;
  delegate = [(MKPlaceSectionView *)self delegate];

  if (delegate)
  {
    if (self->_headerView == rowCopy)
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      [(MKPlaceSectionItemView *)WeakRetained sectionView:self didSelectHeader:rowCopy];
    }

    else if (self->_footerView == rowCopy)
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      [(MKPlaceSectionItemView *)WeakRetained sectionView:self didSelectFooter:rowCopy];
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_12;
      }

      WeakRetained = rowCopy;
      if ([(MKPlaceSectionItemView *)WeakRetained isSelected])
      {
        [(MKPlaceSectionItemView *)WeakRetained setSelected:0 animated:1];
        v8 = objc_loadWeakRetained(&self->_delegate);
        [v8 sectionView:self didDeselectRow:WeakRetained atIndex:at - (self->_headerView != 0)];
      }

      else
      {
        v8 = objc_loadWeakRetained(&self->_delegate);
        [v8 sectionView:self didSelectRow:WeakRetained atIndex:at - (self->_headerView != 0)];
      }
    }
  }

LABEL_12:
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(MKPlaceSectionItemView *)rowCopy setHighlighted:0];
  }
}

- (id)rowAt:(CGPoint)at
{
  v4 = [(MKPlaceSectionView *)self indexOfRowAt:at.x, at.y];
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = 0;
  }

  else
  {
    v6 = v4;
    stackedSubviews = [(_MKStackView *)self stackedSubviews];
    v8 = [stackedSubviews objectAtIndexedSubscript:v6];

    if (v8 == self->_headerView)
    {
      v5 = 0;
    }

    else
    {
      v5 = v8;
    }
  }

  return v5;
}

- (unint64_t)indexOfRowAt:(CGPoint)at
{
  y = at.y;
  x = at.x;
  stackedSubviews = [(_MKStackView *)self stackedSubviews];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __35__MKPlaceSectionView_indexOfRowAt___block_invoke;
  v8[3] = &__block_descriptor_48_e23_B32__0__UIView_8Q16_B24l;
  *&v8[4] = x;
  *&v8[5] = y;
  v6 = [stackedSubviews indexOfObjectPassingTest:v8];

  return v6;
}

uint64_t __35__MKPlaceSectionView_indexOfRowAt___block_invoke(CGPoint *a1, void *a2, uint64_t a3, char *a4)
{
  [a2 frame];
  if (CGRectContainsPoint(v8, a1[2]))
  {
    v6 = 1;
    *a4 = 1;
  }

  else
  {
    v6 = *a4;
  }

  return v6 & 1;
}

- (void)setShowsBottomHairline:(BOOL)hairline
{
  if (self->_showsBottomHairline != hairline)
  {
    self->_showsBottomHairline = hairline;
    [(MKViewWithHairline *)self->_hairLineView setBottomHairlineHidden:!hairline];
  }
}

- (void)_updateHairlineInsets
{
  IsRightToLeft = MKApplicationLayoutDirectionIsRightToLeft();
  [(MKPlaceSectionView *)self layoutMargins];
  if (IsRightToLeft)
  {
    v6 = v5;
  }

  else
  {
    v6 = v4;
  }

  if (IsRightToLeft)
  {
    v7 = v4;
  }

  else
  {
    v7 = v5;
  }

  [(MKViewWithHairline *)self->_hairLineView setLeftHairlineInset:v6];
  hairLineView = self->_hairLineView;

  [(MKViewWithHairline *)hairLineView setRightHairlineInset:v7];
}

- (void)infoCardThemeChanged
{
  v5.receiver = self;
  v5.super_class = MKPlaceSectionView;
  [(UIView *)&v5 infoCardThemeChanged];
  mk_theme = [(UIView *)self mk_theme];
  separatorLineColor = [mk_theme separatorLineColor];
  [(MKViewWithHairline *)self->_hairLineView setHairlineColor:separatorLineColor];
}

- (void)layoutMarginsDidChange
{
  v3.receiver = self;
  v3.super_class = MKPlaceSectionView;
  [(MKPlaceSectionView *)&v3 layoutMarginsDidChange];
  [(MKPlaceSectionView *)self _updateHairlineInsets];
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = MKPlaceSectionView;
  [(MKPlaceSectionView *)&v3 layoutSubviews];
  [(MKPlaceSectionView *)self bounds];
  [(MKViewWithHairline *)self->_hairLineView setFrame:?];
  [(MKPlaceSectionView *)self _updateHairlineInsets];
}

- (MKPlaceSectionView)initWithFrame:(CGRect)frame
{
  v11.receiver = self;
  v11.super_class = MKPlaceSectionView;
  v3 = [(_MKStackView *)&v11 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    v3->_trackingSelectForRow = 0x7FFFFFFFFFFFFFFFLL;
    v3->_showsBottomHairline = 1;
    v5 = [MKViewWithHairline alloc];
    [(MKPlaceSectionView *)v4 bounds];
    v6 = [(MKViewWithHairline *)v5 initWithFrame:?];
    hairLineView = v4->_hairLineView;
    v4->_hairLineView = v6;

    [(_MKStackView *)v4 addSubview:v4->_hairLineView];
    mk_theme = [(UIView *)v4 mk_theme];
    separatorLineColor = [mk_theme separatorLineColor];
    [(MKViewWithHairline *)v4->_hairLineView setHairlineColor:separatorLineColor];
  }

  return v4;
}

@end