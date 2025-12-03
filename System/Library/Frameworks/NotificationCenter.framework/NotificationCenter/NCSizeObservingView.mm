@interface NCSizeObservingView
- (NCSizeObservingViewDelegate)delegate;
- (void)setBounds:(CGRect)bounds;
- (void)setDelegate:(id)delegate;
- (void)setFrame:(CGRect)frame;
@end

@implementation NCSizeObservingView

- (void)setDelegate:(id)delegate
{
  obj = delegate;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_delegate, obj);
    self->_delegateInterestedInSizeChanges = objc_opt_respondsToSelector() & 1;
  }
}

- (void)setBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  [(NCSizeObservingView *)self bounds];
  v9 = v8;
  v11 = v10;
  v16.receiver = self;
  v16.super_class = NCSizeObservingView;
  [(NCSizeObservingView *)&v16 setBounds:x, y, width, height];
  if (self->_delegateInterestedInSizeChanges)
  {
    [(NCSizeObservingView *)self bounds];
    if (v9 != v13 || v11 != v12)
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      [WeakRetained sizeObservingView:self didChangeSize:{v9, v11}];
    }
  }
}

- (void)setFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  [(NCSizeObservingView *)self bounds];
  v9 = v8;
  v11 = v10;
  v16.receiver = self;
  v16.super_class = NCSizeObservingView;
  [(NCSizeObservingView *)&v16 setFrame:x, y, width, height];
  if (self->_delegateInterestedInSizeChanges)
  {
    [(NCSizeObservingView *)self bounds];
    if (v9 != v13 || v11 != v12)
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      [WeakRetained sizeObservingView:self didChangeSize:{v9, v11}];
    }
  }
}

- (NCSizeObservingViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end