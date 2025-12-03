@interface AXUIFloatingViewPresenter
- (AXUIFloatingViewPresenter)initWithContainingView:(id)view alignedToEdge:(unint64_t)edge withinSafeArea:(BOOL)area;
- (AXUIFloatingViewPresenterDelegate)delegate;
- (void)_hideFloatingView;
- (void)_updateEdgeConstraints;
- (void)dismissFloatingView;
- (void)presentFloatingView:(id)view withDuration:(double)duration;
- (void)setAlignedEdge:(unint64_t)edge;
@end

@implementation AXUIFloatingViewPresenter

- (AXUIFloatingViewPresenter)initWithContainingView:(id)view alignedToEdge:(unint64_t)edge withinSafeArea:(BOOL)area
{
  viewCopy = view;
  v13.receiver = self;
  v13.super_class = AXUIFloatingViewPresenter;
  v10 = [(AXUIFloatingViewPresenter *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_containingView, view);
    v11->_alignedEdge = edge;
    v11->_withinSafeArea = area;
  }

  return v11;
}

- (void)_hideFloatingView
{
  floatingView = [(AXUIFloatingViewPresenter *)self floatingView];
  [(AXUIFloatingViewPresenter *)self setFloatingView:0];
  [(AXUIFloatingViewPresenter *)self setEdgeConstraints:0];
  if (floatingView)
  {
    delegate = [(AXUIFloatingViewPresenter *)self delegate];
    [delegate willDismissFloatingViewForPresenter:self];

    v5 = MEMORY[0x1E69DD250];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __46__AXUIFloatingViewPresenter__hideFloatingView__block_invoke;
    v8[3] = &unk_1E812DCA8;
    v9 = floatingView;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __46__AXUIFloatingViewPresenter__hideFloatingView__block_invoke_2;
    v6[3] = &unk_1E812E4D0;
    v7 = v9;
    [v5 animateWithDuration:v8 animations:v6 completion:0.3];
  }
}

- (void)presentFloatingView:(id)view withDuration:(double)duration
{
  v36[4] = *MEMORY[0x1E69E9840];
  viewCopy = view;
  [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:self selector:sel__hideFloatingView object:0];
  floatingView = [(AXUIFloatingViewPresenter *)self floatingView];
  if (floatingView && (v8 = floatingView, [(AXUIFloatingViewPresenter *)self floatingView], v9 = objc_claimAutoreleasedReturnValue(), v9, v8, v9 == viewCopy))
  {
    if (duration > 0.0)
    {
      [(AXUIFloatingViewPresenter *)self performSelector:sel__hideFloatingView withObject:0 afterDelay:duration];
    }
  }

  else
  {
    [(AXUIFloatingViewPresenter *)self _hideFloatingView];
    [viewCopy setTranslatesAutoresizingMaskIntoConstraints:0];
    containingView = [(AXUIFloatingViewPresenter *)self containingView];
    [containingView addSubview:viewCopy];

    [(AXUIFloatingViewPresenter *)self setFloatingView:viewCopy];
    v24 = MEMORY[0x1E696ACD8];
    floatingView2 = [(AXUIFloatingViewPresenter *)self floatingView];
    leadingAnchor = [floatingView2 leadingAnchor];
    containingView2 = [(AXUIFloatingViewPresenter *)self containingView];
    leadingAnchor2 = [containingView2 leadingAnchor];
    v29 = [leadingAnchor constraintGreaterThanOrEqualToAnchor:leadingAnchor2];
    v36[0] = v29;
    floatingView3 = [(AXUIFloatingViewPresenter *)self floatingView];
    trailingAnchor = [floatingView3 trailingAnchor];
    containingView3 = [(AXUIFloatingViewPresenter *)self containingView];
    trailingAnchor2 = [containingView3 trailingAnchor];
    v23 = [trailingAnchor constraintLessThanOrEqualToAnchor:trailingAnchor2];
    v36[1] = v23;
    floatingView4 = [(AXUIFloatingViewPresenter *)self floatingView];
    topAnchor = [floatingView4 topAnchor];
    containingView4 = [(AXUIFloatingViewPresenter *)self containingView];
    topAnchor2 = [containingView4 topAnchor];
    v12 = [topAnchor constraintGreaterThanOrEqualToAnchor:topAnchor2];
    v36[2] = v12;
    floatingView5 = [(AXUIFloatingViewPresenter *)self floatingView];
    bottomAnchor = [floatingView5 bottomAnchor];
    containingView5 = [(AXUIFloatingViewPresenter *)self containingView];
    bottomAnchor2 = [containingView5 bottomAnchor];
    v17 = [bottomAnchor constraintLessThanOrEqualToAnchor:bottomAnchor2];
    v36[3] = v17;
    v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v36 count:4];
    [v24 activateConstraints:v18];

    [(AXUIFloatingViewPresenter *)self _updateEdgeConstraints];
    floatingView6 = [(AXUIFloatingViewPresenter *)self floatingView];
    [floatingView6 setAlpha:0.0];

    v35[0] = MEMORY[0x1E69E9820];
    v35[1] = 3221225472;
    v35[2] = __62__AXUIFloatingViewPresenter_presentFloatingView_withDuration___block_invoke;
    v35[3] = &unk_1E812DCA8;
    v35[4] = self;
    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = __62__AXUIFloatingViewPresenter_presentFloatingView_withDuration___block_invoke_2;
    v34[3] = &unk_1E812E4F8;
    *&v34[5] = duration;
    v34[4] = self;
    [MEMORY[0x1E69DD250] animateWithDuration:v35 animations:v34 completion:0.3];
  }
}

void __62__AXUIFloatingViewPresenter_presentFloatingView_withDuration___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) floatingView];
  [v1 setAlpha:1.0];
}

uint64_t __62__AXUIFloatingViewPresenter_presentFloatingView_withDuration___block_invoke_2(uint64_t result)
{
  if (*(result + 40) > 0.0)
  {
    return [*(result + 32) performSelector:sel__hideFloatingView withObject:0 afterDelay:?];
  }

  return result;
}

- (void)dismissFloatingView
{
  [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:self selector:sel__hideFloatingView object:0];

  [(AXUIFloatingViewPresenter *)self _hideFloatingView];
}

- (void)setAlignedEdge:(unint64_t)edge
{
  if (self->_alignedEdge != edge)
  {
    self->_alignedEdge = edge;
    [(AXUIFloatingViewPresenter *)self _updateEdgeConstraints];
  }
}

- (void)_updateEdgeConstraints
{
  v29[2] = *MEMORY[0x1E69E9840];
  floatingView = [(AXUIFloatingViewPresenter *)self floatingView];

  if (floatingView)
  {
    edgeConstraints = [(AXUIFloatingViewPresenter *)self edgeConstraints];

    if (edgeConstraints)
    {
      v5 = MEMORY[0x1E696ACD8];
      edgeConstraints2 = [(AXUIFloatingViewPresenter *)self edgeConstraints];
      [v5 deactivateConstraints:edgeConstraints2];
    }

    withinSafeArea = [(AXUIFloatingViewPresenter *)self withinSafeArea];
    containingView = [(AXUIFloatingViewPresenter *)self containingView];
    v9 = containingView;
    if (withinSafeArea)
    {
      safeAreaLayoutGuide = [containingView safeAreaLayoutGuide];

      v9 = safeAreaLayoutGuide;
    }

    alignedEdge = [(AXUIFloatingViewPresenter *)self alignedEdge];
    floatingView2 = [(AXUIFloatingViewPresenter *)self floatingView];
    if (alignedEdge > 3)
    {
      if (alignedEdge == 4)
      {
        bottomAnchor = [floatingView2 bottomAnchor];
        bottomAnchor2 = [v9 bottomAnchor];
        v15 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
        v28[0] = v15;
        floatingView3 = [(AXUIFloatingViewPresenter *)self floatingView];
        centerXAnchor = [floatingView3 centerXAnchor];
        centerXAnchor2 = [v9 centerXAnchor];
        v19 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
        v28[1] = v19;
        v20 = v28;
        goto LABEL_16;
      }

      if (alignedEdge == 8)
      {
        bottomAnchor = [floatingView2 trailingAnchor];
        bottomAnchor2 = [v9 trailingAnchor];
        v15 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
        v26[0] = v15;
        floatingView3 = [(AXUIFloatingViewPresenter *)self floatingView];
        centerXAnchor = [floatingView3 centerYAnchor];
        centerXAnchor2 = [v9 centerYAnchor];
        v19 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
        v26[1] = v19;
        v20 = v26;
        goto LABEL_16;
      }
    }

    else
    {
      if (alignedEdge == 1)
      {
        bottomAnchor = [floatingView2 topAnchor];
        bottomAnchor2 = [v9 topAnchor];
        v15 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
        v29[0] = v15;
        floatingView3 = [(AXUIFloatingViewPresenter *)self floatingView];
        centerXAnchor = [floatingView3 centerXAnchor];
        centerXAnchor2 = [v9 centerXAnchor];
        v19 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
        v29[1] = v19;
        v20 = v29;
        goto LABEL_16;
      }

      if (alignedEdge == 2)
      {
        bottomAnchor = [floatingView2 leadingAnchor];
        bottomAnchor2 = [v9 leadingAnchor];
        v15 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
        v27[0] = v15;
        floatingView3 = [(AXUIFloatingViewPresenter *)self floatingView];
        centerXAnchor = [floatingView3 centerYAnchor];
        centerXAnchor2 = [v9 centerYAnchor];
        v19 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
        v27[1] = v19;
        v20 = v27;
LABEL_16:
        v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:2];
        [(AXUIFloatingViewPresenter *)self setEdgeConstraints:v21];

        v22 = MEMORY[0x1E696ACD8];
        edgeConstraints3 = [(AXUIFloatingViewPresenter *)self edgeConstraints];
        [v22 activateConstraints:edgeConstraints3];

        return;
      }
    }

    bottomAnchor = [floatingView2 centerXAnchor];
    bottomAnchor2 = [v9 centerXAnchor];
    v15 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v25[0] = v15;
    floatingView3 = [(AXUIFloatingViewPresenter *)self floatingView];
    centerXAnchor = [floatingView3 centerYAnchor];
    centerXAnchor2 = [v9 centerYAnchor];
    v19 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    v25[1] = v19;
    v20 = v25;
    goto LABEL_16;
  }
}

- (AXUIFloatingViewPresenterDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end