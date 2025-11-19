@interface IMTableView
- (IMTableView)initWithCoder:(id)a3;
- (IMTableView)initWithFrame:(CGRect)a3 style:(int64_t)a4;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (id)quickScroller;
- (int64_t)totalRowCount;
- (void)layoutSubviews;
- (void)quickScroll:(id)a3;
- (void)reloadData;
- (void)setContentOffset:(CGPoint)a3;
- (void)setEditing:(BOOL)a3 animated:(BOOL)a4;
- (void)updateQuickScroller;
@end

@implementation IMTableView

- (IMTableView)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = IMTableView;
  v3 = [(IMTableView *)&v6 initWithCoder:a3];
  v4 = v3;
  if (v3)
  {
    [(IMTableView *)v3 initCommon];
  }

  return v4;
}

- (IMTableView)initWithFrame:(CGRect)a3 style:(int64_t)a4
{
  v7.receiver = self;
  v7.super_class = IMTableView;
  v4 = [(IMTableView *)&v7 initWithFrame:a4 style:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v5 = v4;
  if (v4)
  {
    [(IMTableView *)v4 initCommon];
  }

  return v5;
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  quickScroller = self->_quickScroller;
  [(IMQuickScroller *)quickScroller convertPoint:self fromView:x, y];
  v9 = [(IMQuickScroller *)quickScroller hitTest:v7 withEvent:?];
  v10 = v9;
  if (v9 && v9 == self->_quickScroller)
  {
    [(IMTableView *)self setDelaysContentTouches:0];
    v11 = v10;
  }

  else
  {
    [(IMTableView *)self setDelaysContentTouches:1];
    v14.receiver = self;
    v14.super_class = IMTableView;
    v11 = [(IMTableView *)&v14 hitTest:v7 withEvent:x, y];
  }

  v12 = v11;

  return v12;
}

- (void)reloadData
{
  v3.receiver = self;
  v3.super_class = IMTableView;
  [(IMTableView *)&v3 reloadData];
  [(IMTableView *)self updateQuickScroller];
}

- (void)setEditing:(BOOL)a3 animated:(BOOL)a4
{
  v5.receiver = self;
  v5.super_class = IMTableView;
  [(IMTableView *)&v5 setEditing:a3 animated:a4];
  [(IMTableView *)self updateQuickScroller];
}

- (void)setContentOffset:(CGPoint)a3
{
  v4.receiver = self;
  v4.super_class = IMTableView;
  [(IMTableView *)&v4 setContentOffset:a3.x, a3.y];
  if (self->_quickScroller)
  {
    [(IMTableView *)self bringSubviewToFront:?];
  }
}

- (void)layoutSubviews
{
  v7.receiver = self;
  v7.super_class = IMTableView;
  [(IMTableView *)&v7 layoutSubviews];
  if (self->_quickScroller)
  {
    [(IMTableView *)self bounds];
    v4 = v3 + -32.0;
    [(IMTableView *)self contentOffset];
    v6 = v5;
    [(IMTableView *)self bounds];
    [(IMQuickScroller *)self->_quickScroller setFrame:v4, v6, 32.0];
    [(IMTableView *)self bringSubviewToFront:self->_quickScroller];
  }
}

- (int64_t)totalRowCount
{
  v3 = [(IMTableView *)self numberOfSections];
  if (v3 < 1)
  {
    return 0;
  }

  v4 = v3;
  v5 = 0;
  for (i = 0; i != v4; ++i)
  {
    v5 += [(IMTableView *)self numberOfRowsInSection:i];
  }

  return v5;
}

- (id)quickScroller
{
  quickScroller = self->_quickScroller;
  if (!quickScroller)
  {
    v4 = [[IMQuickScroller alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
    v5 = self->_quickScroller;
    self->_quickScroller = v4;

    [(IMQuickScroller *)self->_quickScroller setAutoresizingMask:17];
    [(IMQuickScroller *)self->_quickScroller addTarget:self action:"quickScroll:" forControlEvents:4096];
    quickScroller = self->_quickScroller;
  }

  return quickScroller;
}

- (void)quickScroll:(id)a3
{
  [a3 value];
  v5 = v4;
  [(IMTableView *)self contentOffset];
  v7 = v6;
  [(IMTableView *)self contentSize];
  v9 = v8;
  [(IMTableView *)self bounds];

  [(IMTableView *)self setContentOffset:0 animated:v7, (v9 - v10) * v5];
}

- (void)updateQuickScroller
{
  v3 = [(IMTableView *)self totalRowCount];
  v4 = [(IMTableView *)self quickScrollerMinimumDisplayRowCount];
  if (v3 < v4 || v4 == 0x7FFFFFFFFFFFFFFFLL || ([(IMTableView *)self isEditing]& 1) != 0 || v3 > [(IMTableView *)self sectionIndexMinimumDisplayRowCount])
  {
    quickScroller = self->_quickScroller;

    [(IMQuickScroller *)quickScroller removeFromSuperview];
  }

  else
  {
    v6 = [(IMQuickScroller *)self->_quickScroller superview];

    if (v6 != self)
    {
      v7 = [(IMTableView *)self quickScroller];
      [(IMTableView *)self addSubview:v7];
    }
  }
}

@end