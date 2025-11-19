@interface BELayerHierarchyHostingView
- (BELayerHierarchyHandle)handle;
- (void)setHandle:(id)a3;
@end

@implementation BELayerHierarchyHostingView

- (BELayerHierarchyHandle)handle
{
  BSDispatchQueueAssertMain();
  handle = self->_handle;

  return handle;
}

- (void)setHandle:(id)a3
{
  v12 = a3;
  BSDispatchQueueAssertMain();
  v5 = self->_visibility;
  v6 = [(BELayerHierarchyHostingView *)self layer];
  [v6 setNeedsAuthoritativeHostingToken];
  v7 = [(BELayerHierarchy *)v12 _context];
  if (v7)
  {
    v8 = [(BELayerHierarchy *)self->_handle _context];
    [v6 setHostingToken:v7];
    if (v8 && (v9 = [v8 pid], v9 == objc_msgSend(v7, "pid")))
    {
      v10 = v5;
    }

    else
    {
      v10 = [MEMORY[0x1E69DD830] interactionWithPID:objc_msgSend(v7 environmentIdentifier:{"pid"), @"BEHostingVisibilitySink"}];
    }

    v11 = v10;
  }

  else
  {
    [v6 setHostingToken:0];
    v11 = 0;
  }

  objc_storeStrong(&self->_handle, a3);
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