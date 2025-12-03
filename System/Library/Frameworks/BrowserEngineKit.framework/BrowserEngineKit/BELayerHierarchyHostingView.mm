@interface BELayerHierarchyHostingView
- (BELayerHierarchyHandle)handle;
- (void)setHandle:(id)handle;
@end

@implementation BELayerHierarchyHostingView

- (BELayerHierarchyHandle)handle
{
  BSDispatchQueueAssertMain();
  handle = self->_handle;

  return handle;
}

- (void)setHandle:(id)handle
{
  handleCopy = handle;
  BSDispatchQueueAssertMain();
  v5 = self->_visibility;
  layer = [(BELayerHierarchyHostingView *)self layer];
  [layer setNeedsAuthoritativeHostingToken];
  _context = [(BELayerHierarchy *)handleCopy _context];
  if (_context)
  {
    _context2 = [(BELayerHierarchy *)self->_handle _context];
    [layer setHostingToken:_context];
    if (_context2 && (v9 = [_context2 pid], v9 == objc_msgSend(_context, "pid")))
    {
      v10 = v5;
    }

    else
    {
      v10 = [MEMORY[0x1E69DD830] interactionWithPID:objc_msgSend(_context environmentIdentifier:{"pid"), @"BEHostingVisibilitySink"}];
    }

    v11 = v10;
  }

  else
  {
    [layer setHostingToken:0];
    v11 = 0;
  }

  objc_storeStrong(&self->_handle, handle);
  if (v11 != v5)
  {
    objc_storeStrong(&self->_visibility, v11);
    if (v11)
    {
      [(BELayerHierarchyHostingView *)self addInteraction:v11];
    }

    if (v5)
    {
      [(BELayerHierarchyHostingView *)self removeInteraction:v5];
    }
  }
}

@end