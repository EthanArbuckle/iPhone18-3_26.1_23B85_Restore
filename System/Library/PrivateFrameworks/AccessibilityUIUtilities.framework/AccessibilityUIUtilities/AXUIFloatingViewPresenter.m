@interface AXUIFloatingViewPresenter
- (AXUIFloatingViewPresenter)initWithContainingView:(id)a3 alignedToEdge:(unint64_t)a4 withinSafeArea:(BOOL)a5;
- (AXUIFloatingViewPresenterDelegate)delegate;
- (void)_hideFloatingView;
- (void)_updateEdgeConstraints;
- (void)dismissFloatingView;
- (void)presentFloatingView:(id)a3 withDuration:(double)a4;
- (void)setAlignedEdge:(unint64_t)a3;
@end

@implementation AXUIFloatingViewPresenter

- (AXUIFloatingViewPresenter)initWithContainingView:(id)a3 alignedToEdge:(unint64_t)a4 withinSafeArea:(BOOL)a5
{
  v9 = a3;
  v13.receiver = self;
  v13.super_class = AXUIFloatingViewPresenter;
  v10 = [(AXUIFloatingViewPresenter *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_containingView, a3);
    v11->_alignedEdge = a4;
    v11->_withinSafeArea = a5;
  }

  return v11;
}

- (void)_hideFloatingView
{
  v3 = [(AXUIFloatingViewPresenter *)self floatingView];
  [(AXUIFloatingViewPresenter *)self setFloatingView:0];
  [(AXUIFloatingViewPresenter *)self setEdgeConstraints:0];
  if (v3)
  {
    v4 = [(AXUIFloatingViewPresenter *)self delegate];
    [v4 willDismissFloatingViewForPresenter:self];

    v5 = MEMORY[0x1E69DD250];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __46__AXUIFloatingViewPresenter__hideFloatingView__block_invoke;
    v8[3] = &unk_1E812DCA8;
    v9 = v3;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __46__AXUIFloatingViewPresenter__hideFloatingView__block_invoke_2;
    v6[3] = &unk_1E812E4D0;
    v7 = v9;
    [v5 animateWithDuration:v8 animations:v6 completion:0.3];
  }
}

- (void)presentFloatingView:(id)a3 withDuration:(double)a4
{
  v36[4] = *MEMORY[0x1E69E9840];
  v6 = a3;
  [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:self selector:sel__hideFloatingView object:0];
  v7 = [(AXUIFloatingViewPresenter *)self floatingView];
  if (v7 && (v8 = v7, [(AXUIFloatingViewPresenter *)self floatingView], v9 = objc_claimAutoreleasedReturnValue(), v9, v8, v9 == v6))
  {
    if (a4 > 0.0)
    {
      [(AXUIFloatingViewPresenter *)self performSelector:sel__hideFloatingView withObject:0 afterDelay:a4];
    }
  }

  else
  {
    [(AXUIFloatingViewPresenter *)self _hideFloatingView];
    [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
    v10 = [(AXUIFloatingViewPresenter *)self containingView];
    [v10 addSubview:v6];

    [(AXUIFloatingViewPresenter *)self setFloatingView:v6];
    v24 = MEMORY[0x1E696ACD8];
    v33 = [(AXUIFloatingViewPresenter *)self floatingView];
    v31 = [v33 leadingAnchor];
    v32 = [(AXUIFloatingViewPresenter *)self containingView];
    v30 = [v32 leadingAnchor];
    v29 = [v31 constraintGreaterThanOrEqualToAnchor:v30];
    v36[0] = v29;
    v28 = [(AXUIFloatingViewPresenter *)self floatingView];
    v26 = [v28 trailingAnchor];
    v27 = [(AXUIFloatingViewPresenter *)self containingView];
    v25 = [v27 trailingAnchor];
    v23 = [v26 constraintLessThanOrEqualToAnchor:v25];
    v36[1] = v23;
    v22 = [(AXUIFloatingViewPresenter *)self floatingView];
    v20 = [v22 topAnchor];
    v21 = [(AXUIFloatingViewPresenter *)self containingView];
    v11 = [v21 topAnchor];
    v12 = [v20 constraintGreaterThanOrEqualToAnchor:v11];
    v36[2] = v12;
    v13 = [(AXUIFloatingViewPresenter *)self floatingView];
    v14 = [v13 bottomAnchor];
    v15 = [(AXUIFloatingViewPresenter *)self containingView];
    v16 = [v15 bottomAnchor];
    v17 = [v14 constraintLessThanOrEqualToAnchor:v16];
    v36[3] = v17;
    v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v36 count:4];
    [v24 activateConstraints:v18];

    [(AXUIFloatingViewPresenter *)self _updateEdgeConstraints];
    v19 = [(AXUIFloatingViewPresenter *)self floatingView];
    [v19 setAlpha:0.0];

    v35[0] = MEMORY[0x1E69E9820];
    v35[1] = 3221225472;
    v35[2] = __62__AXUIFloatingViewPresenter_presentFloatingView_withDuration___block_invoke;
    v35[3] = &unk_1E812DCA8;
    v35[4] = self;
    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = __62__AXUIFloatingViewPresenter_presentFloatingView_withDuration___block_invoke_2;
    v34[3] = &unk_1E812E4F8;
    *&v34[5] = a4;
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

- (void)setAlignedEdge:(unint64_t)a3
{
  if (self->_alignedEdge != a3)
  {
    self->_alignedEdge = a3;
    [(AXUIFloatingViewPresenter *)self _updateEdgeConstraints];
  }
}

- (void)_updateEdgeConstraints
{
  v29[2] = *MEMORY[0x1E69E9840];
  v3 = [(AXUIFloatingViewPresenter *)self floatingView];

  if (v3)
  {
    v4 = [(AXUIFloatingViewPresenter *)self edgeConstraints];

    if (v4)
    {
      v5 = MEMORY[0x1E696ACD8];
      v6 = [(AXUIFloatingViewPresenter *)self edgeConstraints];
      [v5 deactivateConstraints:v6];
    }

    v7 = [(AXUIFloatingViewPresenter *)self withinSafeArea];
    v8 = [(AXUIFloatingViewPresenter *)self containingView];
    v9 = v8;
    if (v7)
    {
      v10 = [v8 safeAreaLayoutGuide];

      v9 = v10;
    }

    v11 = [(AXUIFloatingViewPresenter *)self alignedEdge];
    v12 = [(AXUIFloatingViewPresenter *)self floatingView];
    if (v11 > 3)
    {
      if (v11 == 4)
      {
        v13 = [v12 bottomAnchor];
        v14 = [v9 bottomAnchor];
        v15 = [v13 constraintEqualToAnchor:v14];
        v28[0] = v15;
        v16 = [(AXUIFloatingViewPresenter *)self floatingView];
        v17 = [v16 centerXAnchor];
        v18 = [v9 centerXAnchor];
        v19 = [v17 constraintEqualToAnchor:v18];
        v28[1] = v19;
        v20 = v28;
        goto LABEL_16;
      }

      if (v11 == 8)
      {
        v13 = [v12 trailingAnchor];
        v14 = [v9 trailingAnchor];
        v15 = [v13 constraintEqualToAnchor:v14];
        v26[0] = v15;
        v16 = [(AXUIFloatingViewPresenter *)self floatingView];
        v17 = [v16 centerYAnchor];
        v18 = [v9 centerYAnchor];
        v19 = [v17 constraintEqualToAnchor:v18];
        v26[1] = v19;
        v20 = v26;
        goto LABEL_16;
      }
    }

    else
    {
      if (v11 == 1)
      {
        v13 = [v12 topAnchor];
        v14 = [v9 topAnchor];
        v15 = [v13 constraintEqualToAnchor:v14];
        v29[0] = v15;
        v16 = [(AXUIFloatingViewPresenter *)self floatingView];
        v17 = [v16 centerXAnchor];
        v18 = [v9 centerXAnchor];
        v19 = [v17 constraintEqualToAnchor:v18];
        v29[1] = v19;
        v20 = v29;
        goto LABEL_16;
      }

      if (v11 == 2)
      {
        v13 = [v12 leadingAnchor];
        v14 = [v9 leadingAnchor];
        v15 = [v13 constraintEqualToAnchor:v14];
        v27[0] = v15;
        v16 = [(AXUIFloatingViewPresenter *)self floatingView];
        v17 = [v16 centerYAnchor];
        v18 = [v9 centerYAnchor];
        v19 = [v17 constraintEqualToAnchor:v18];
        v27[1] = v19;
        v20 = v27;
LABEL_16:
        v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:2];
        [(AXUIFloatingViewPresenter *)self setEdgeConstraints:v21];

        v22 = MEMORY[0x1E696ACD8];
        v23 = [(AXUIFloatingViewPresenter *)self edgeConstraints];
        [v22 activateConstraints:v23];

        return;
      }
    }

    v13 = [v12 centerXAnchor];
    v14 = [v9 centerXAnchor];
    v15 = [v13 constraintEqualToAnchor:v14];
    v25[0] = v15;
    v16 = [(AXUIFloatingViewPresenter *)self floatingView];
    v17 = [v16 centerYAnchor];
    v18 = [v9 centerYAnchor];
    v19 = [v17 constraintEqualToAnchor:v18];
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