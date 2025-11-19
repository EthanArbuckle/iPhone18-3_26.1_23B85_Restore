@interface MKPlaceSectionView
- (MKPlaceSectionView)initWithFrame:(CGRect)a3;
- (MKPlaceSectionViewDelegate)delegate;
- (id)rowAt:(CGPoint)a3;
- (unint64_t)indexOfRowAt:(CGPoint)a3;
- (void)_tappedRow:(id)a3 at:(unint64_t)a4;
- (void)_touchesBeganForRow:(id)a3 at:(unint64_t)a4;
- (void)_touchesCancelledForRow:(id)a3 at:(unint64_t)a4;
- (void)_updateHairlineInsets;
- (void)_updateViewsAnimated:(BOOL)a3 isNeedLayout:(BOOL)a4;
- (void)infoCardThemeChanged;
- (void)layoutMarginsDidChange;
- (void)layoutSubviews;
- (void)setFooterView:(id)a3 animated:(BOOL)a4;
- (void)setHeaderView:(id)a3 animated:(BOOL)a4;
- (void)setRowViews:(id)a3 animated:(BOOL)a4 isNeedLayout:(BOOL)a5;
- (void)setShowsBottomHairline:(BOOL)a3;
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
- (void)touchesCancelled:(id)a3 withEvent:(id)a4;
- (void)touchesEnded:(id)a3 withEvent:(id)a4;
@end

@implementation MKPlaceSectionView

- (MKPlaceSectionViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_updateViewsAnimated:(BOOL)a3 isNeedLayout:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
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
  [(_MKStackView *)self setStackedSubviews:v7 animated:v5 isNeedLayout:v4];
}

- (void)setFooterView:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v7 = a3;
  if (self->_footerView != v7)
  {
    v8 = v7;
    objc_storeStrong(&self->_footerView, a3);
    [(MKPlaceSectionView *)self _updateViewsAnimated:v4];
    v7 = v8;
  }
}

- (void)setRowViews:(id)a3 animated:(BOOL)a4 isNeedLayout:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v10 = a3;
  if (![(NSArray *)self->_rowViews isEqualToArray:?])
  {
    v8 = [v10 copy];
    rowViews = self->_rowViews;
    self->_rowViews = v8;

    [(MKPlaceSectionView *)self _updateViewsAnimated:v6 isNeedLayout:v5];
  }
}

- (void)setHeaderView:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v7 = a3;
  if (self->_headerView != v7)
  {
    v8 = v7;
    objc_storeStrong(&self->_headerView, a3);
    [(MKPlaceSectionView *)self _updateViewsAnimated:v4 isNeedLayout:1];
    v7 = v8;
  }
}

- (void)touchesEnded:(id)a3 withEvent:(id)a4
{
  if (self->_trackingSelectForRow != 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = a4;
    v6 = [(MKPlaceSectionView *)self window];
    v7 = [v5 touchesForWindow:v6];

    v14 = [v7 anyObject];

    [v14 locationInView:self];
    v8 = [(MKPlaceSectionView *)self indexOfRowAt:?];
    if (v8 == self->_trackingSelectForRow)
    {
      v9 = v8;
      v10 = [(_MKStackView *)self stackedSubviews];
      v11 = [v10 count];

      if (v9 < v11)
      {
        v12 = [(_MKStackView *)self stackedSubviews];
        v13 = [v12 objectAtIndexedSubscript:self->_trackingSelectForRow];
        [(MKPlaceSectionView *)self _tappedRow:v13 at:self->_trackingSelectForRow];

        self->_trackingSelectForRow = 0x7FFFFFFFFFFFFFFFLL;
      }
    }
  }
}

- (void)touchesCancelled:(id)a3 withEvent:(id)a4
{
  trackingSelectForRow = self->_trackingSelectForRow;
  v6 = [(_MKStackView *)self stackedSubviews:a3];
  v7 = [v6 count];

  if (trackingSelectForRow < v7)
  {
    v8 = [(_MKStackView *)self stackedSubviews];
    v9 = [v8 objectAtIndexedSubscript:self->_trackingSelectForRow];
    [(MKPlaceSectionView *)self _touchesCancelledForRow:v9 at:self->_trackingSelectForRow];
  }

  self->_trackingSelectForRow = 0x7FFFFFFFFFFFFFFFLL;
}

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  v5 = a4;
  v6 = [(MKPlaceSectionView *)self window];
  v7 = [v5 touchesForWindow:v6];

  v13 = [v7 anyObject];

  if ([v13 tapCount] == 1)
  {
    [v13 locationInView:self];
    v8 = [(MKPlaceSectionView *)self indexOfRowAt:?];
    self->_trackingSelectForRow = v8;
    v9 = [(_MKStackView *)self stackedSubviews];
    v10 = [v9 count];

    if (v8 < v10)
    {
      v11 = [(_MKStackView *)self stackedSubviews];
      v12 = [v11 objectAtIndexedSubscript:self->_trackingSelectForRow];
      [(MKPlaceSectionView *)self _touchesBeganForRow:v12 at:self->_trackingSelectForRow];
    }
  }
}

- (void)_touchesCancelledForRow:(id)a3 at:(unint64_t)a4
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v4 setHighlighted:0];
  }
}

- (void)_touchesBeganForRow:(id)a3 at:(unint64_t)a4
{
  v5 = a3;
  if ([(MKPlaceSectionView *)self highlightsTouches])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v5 setHighlighted:1];
    }
  }
}

- (void)_tappedRow:(id)a3 at:(unint64_t)a4
{
  v9 = a3;
  v6 = [(MKPlaceSectionView *)self delegate];

  if (v6)
  {
    if (self->_headerView == v9)
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      [(MKPlaceSectionItemView *)WeakRetained sectionView:self didSelectHeader:v9];
    }

    else if (self->_footerView == v9)
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      [(MKPlaceSectionItemView *)WeakRetained sectionView:self didSelectFooter:v9];
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_12;
      }

      WeakRetained = v9;
      if ([(MKPlaceSectionItemView *)WeakRetained isSelected])
      {
        [(MKPlaceSectionItemView *)WeakRetained setSelected:0 animated:1];
        v8 = objc_loadWeakRetained(&self->_delegate);
        [v8 sectionView:self didDeselectRow:WeakRetained atIndex:a4 - (self->_headerView != 0)];
      }

      else
      {
        v8 = objc_loadWeakRetained(&self->_delegate);
        [v8 sectionView:self didSelectRow:WeakRetained atIndex:a4 - (self->_headerView != 0)];
      }
    }
  }

LABEL_12:
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(MKPlaceSectionItemView *)v9 setHighlighted:0];
  }
}

- (id)rowAt:(CGPoint)a3
{
  v4 = [(MKPlaceSectionView *)self indexOfRowAt:a3.x, a3.y];
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = 0;
  }

  else
  {
    v6 = v4;
    v7 = [(_MKStackView *)self stackedSubviews];
    v8 = [v7 objectAtIndexedSubscript:v6];

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

- (unint64_t)indexOfRowAt:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v5 = [(_MKStackView *)self stackedSubviews];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __35__MKPlaceSectionView_indexOfRowAt___block_invoke;
  v8[3] = &__block_descriptor_48_e23_B32__0__UIView_8Q16_B24l;
  *&v8[4] = x;
  *&v8[5] = y;
  v6 = [v5 indexOfObjectPassingTest:v8];

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

- (void)setShowsBottomHairline:(BOOL)a3
{
  if (self->_showsBottomHairline != a3)
  {
    self->_showsBottomHairline = a3;
    [(MKViewWithHairline *)self->_hairLineView setBottomHairlineHidden:!a3];
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
  v3 = [(UIView *)self mk_theme];
  v4 = [v3 separatorLineColor];
  [(MKViewWithHairline *)self->_hairLineView setHairlineColor:v4];
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

- (MKPlaceSectionView)initWithFrame:(CGRect)a3
{
  v11.receiver = self;
  v11.super_class = MKPlaceSectionView;
  v3 = [(_MKStackView *)&v11 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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
    v8 = [(UIView *)v4 mk_theme];
    v9 = [v8 separatorLineColor];
    [(MKViewWithHairline *)v4->_hairLineView setHairlineColor:v9];
  }

  return v4;
}

@end