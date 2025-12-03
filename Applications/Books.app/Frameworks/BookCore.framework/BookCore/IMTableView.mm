@interface IMTableView
- (IMTableView)initWithCoder:(id)coder;
- (IMTableView)initWithFrame:(CGRect)frame style:(int64_t)style;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (id)quickScroller;
- (int64_t)totalRowCount;
- (void)layoutSubviews;
- (void)quickScroll:(id)scroll;
- (void)reloadData;
- (void)setContentOffset:(CGPoint)offset;
- (void)setEditing:(BOOL)editing animated:(BOOL)animated;
- (void)updateQuickScroller;
@end

@implementation IMTableView

- (IMTableView)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = IMTableView;
  v3 = [(IMTableView *)&v6 initWithCoder:coder];
  v4 = v3;
  if (v3)
  {
    [(IMTableView *)v3 initCommon];
  }

  return v4;
}

- (IMTableView)initWithFrame:(CGRect)frame style:(int64_t)style
{
  v7.receiver = self;
  v7.super_class = IMTableView;
  v4 = [(IMTableView *)&v7 initWithFrame:style style:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v5 = v4;
  if (v4)
  {
    [(IMTableView *)v4 initCommon];
  }

  return v5;
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  eventCopy = event;
  quickScroller = self->_quickScroller;
  [(IMQuickScroller *)quickScroller convertPoint:self fromView:x, y];
  v9 = [(IMQuickScroller *)quickScroller hitTest:eventCopy withEvent:?];
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
    v11 = [(IMTableView *)&v14 hitTest:eventCopy withEvent:x, y];
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

- (void)setEditing:(BOOL)editing animated:(BOOL)animated
{
  v5.receiver = self;
  v5.super_class = IMTableView;
  [(IMTableView *)&v5 setEditing:editing animated:animated];
  [(IMTableView *)self updateQuickScroller];
}

- (void)setContentOffset:(CGPoint)offset
{
  v4.receiver = self;
  v4.super_class = IMTableView;
  [(IMTableView *)&v4 setContentOffset:offset.x, offset.y];
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
  numberOfSections = [(IMTableView *)self numberOfSections];
  if (numberOfSections < 1)
  {
    return 0;
  }

  v4 = numberOfSections;
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

- (void)quickScroll:(id)scroll
{
  [scroll value];
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
  totalRowCount = [(IMTableView *)self totalRowCount];
  quickScrollerMinimumDisplayRowCount = [(IMTableView *)self quickScrollerMinimumDisplayRowCount];
  if (totalRowCount < quickScrollerMinimumDisplayRowCount || quickScrollerMinimumDisplayRowCount == 0x7FFFFFFFFFFFFFFFLL || ([(IMTableView *)self isEditing]& 1) != 0 || totalRowCount > [(IMTableView *)self sectionIndexMinimumDisplayRowCount])
  {
    quickScroller = self->_quickScroller;

    [(IMQuickScroller *)quickScroller removeFromSuperview];
  }

  else
  {
    superview = [(IMQuickScroller *)self->_quickScroller superview];

    if (superview != self)
    {
      quickScroller = [(IMTableView *)self quickScroller];
      [(IMTableView *)self addSubview:quickScroller];
    }
  }
}

@end