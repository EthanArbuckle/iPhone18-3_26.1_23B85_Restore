@interface ListTableView
- (ListTableView)initWithFrame:(CGRect)frame style:(int64_t)style;
- (void)layoutSubviews;
- (void)willMoveToWindow:(id)window;
@end

@implementation ListTableView

- (ListTableView)initWithFrame:(CGRect)frame style:(int64_t)style
{
  v7.receiver = self;
  v7.super_class = ListTableView;
  v4 = [(ListTableView *)&v7 initWithFrame:style style:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v5 = v4;
  if (v4)
  {
    [(ListTableView *)v4 setAutoresizingMask:18];
    [(ListTableView *)v5 setSeparatorStyle:0];
    [(ListTableView *)v5 _setMarginWidth:0.0];
    [(ListTableView *)v5 setSectionHeaderTopPadding:24.0];
    if (CalCanvasPocketEnabled())
    {
      [(ListTableView *)v5 _setPocketStyle:1 forEdge:1];
    }

    else
    {
      [(ListTableView *)v5 _setHiddenPocketEdges:1];
    }
  }

  return v5;
}

- (void)willMoveToWindow:(id)window
{
  windowCopy = window;
  v5.receiver = self;
  v5.super_class = ListTableView;
  [(ListTableView *)&v5 willMoveToWindow:windowCopy];
  if (windowCopy)
  {
    if (self->_layoutOnJoiningViewHierarchy)
    {
      EKUIPushFallbackSizingContextWithViewHierarchy();
      [(ListTableView *)self layoutSubviews];
      EKUIPopFallbackSizingContextWithViewHierarchy();
      self->_layoutOnJoiningViewHierarchy = 0;
    }

    objc_storeWeak(&self->_lastKnownWindow, windowCopy);
  }
}

- (void)layoutSubviews
{
  window = [(ListTableView *)self window];
  if (window)
  {

LABEL_4:
    WeakRetained = 0;
    goto LABEL_5;
  }

  if (EKUIHasFallbackSizingContext())
  {
    goto LABEL_4;
  }

  WeakRetained = objc_loadWeakRetained(&self->_lastKnownWindow);

  if (WeakRetained)
  {
    WeakRetained = objc_loadWeakRetained(&self->_lastKnownWindow);
    EKUIPushFallbackSizingContextWithViewHierarchy();
  }

  else
  {
    self->_layoutOnJoiningViewHierarchy = 1;
  }

LABEL_5:
  v5.receiver = self;
  v5.super_class = ListTableView;
  [(ListTableView *)&v5 layoutSubviews];
  if (WeakRetained)
  {
    EKUIPopFallbackSizingContextWithViewHierarchy();
  }
}

@end