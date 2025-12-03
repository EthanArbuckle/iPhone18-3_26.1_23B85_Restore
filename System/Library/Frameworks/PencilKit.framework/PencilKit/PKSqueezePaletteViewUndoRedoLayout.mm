@interface PKSqueezePaletteViewUndoRedoLayout
- (BOOL)_isLTR;
- (PKSqueezePaletteView)paletteView;
- (id)initWithUndoButton:(void *)button redoButton:(double)redoButton startAngle:;
- (uint64_t)_performRedoAction;
- (uint64_t)_performUndoAction;
- (uint64_t)_updateRedoButtonConstraints;
- (uint64_t)_updateUndoButtonConstraints;
- (void)handleLongPressGestureRecognizer:(void *)recognizer forButton:;
- (void)setupUI;
- (void)updateUI;
- (void)willTransitionToLayout:(id)layout;
@end

@implementation PKSqueezePaletteViewUndoRedoLayout

- (id)initWithUndoButton:(void *)button redoButton:(double)redoButton startAngle:
{
  v31[4] = *MEMORY[0x1E69E9840];
  v23 = a2;
  buttonCopy = button;
  if (self)
  {
    v30.receiver = self;
    v30.super_class = PKSqueezePaletteViewUndoRedoLayout;
    v8 = objc_msgSendSuper2(&v30, sel_init);
    self = v8;
    if (v8)
    {
      objc_storeStrong(v8 + 14, a2);
      objc_storeStrong(self + 15, button);
      *(self + 13) = redoButton;
      self[7] = PKSqueezePaletteButtonInterItemSpacing;
      objc_initWeak(&location, self);
      v27[0] = MEMORY[0x1E69E9820];
      v27[1] = 3221225472;
      v27[2] = __79__PKSqueezePaletteViewUndoRedoLayout_initWithUndoButton_redoButton_startAngle___block_invoke;
      v27[3] = &unk_1E82D69B8;
      objc_copyWeak(&v28, &location);
      [self[14] _set_pk_longSqueezeAction:v27];
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = __79__PKSqueezePaletteViewUndoRedoLayout_initWithUndoButton_redoButton_startAngle___block_invoke_2;
      v25[3] = &unk_1E82D69B8;
      objc_copyWeak(&v26, &location);
      [self[15] _set_pk_longSqueezeAction:v25];
      v9 = PKSqueezePaletteButtonSize();
      v11 = v10;
      v22 = MEMORY[0x1E696ACD8];
      heightAnchor = [self[14] heightAnchor];
      v13 = [heightAnchor constraintEqualToConstant:v9];
      v31[0] = v13;
      widthAnchor = [self[14] widthAnchor];
      v15 = [widthAnchor constraintEqualToConstant:v11];
      v31[1] = v15;
      heightAnchor2 = [self[15] heightAnchor];
      v17 = [heightAnchor2 constraintEqualToConstant:v9];
      v31[2] = v17;
      widthAnchor2 = [self[15] widthAnchor];
      v19 = [widthAnchor2 constraintEqualToConstant:v11];
      v31[3] = v19;
      v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:4];
      [v22 activateConstraints:v20];

      objc_destroyWeak(&v26);
      objc_destroyWeak(&v28);
      objc_destroyWeak(&location);
    }
  }

  return self;
}

void __79__PKSqueezePaletteViewUndoRedoLayout_initWithUndoButton_redoButton_startAngle___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [(PKSqueezePaletteViewUndoRedoLayout *)WeakRetained _performUndoAction];
}

- (uint64_t)_performUndoAction
{
  if (result)
  {
    v1 = result;
    WeakRetained = objc_loadWeakRetained((result + 88));
    [(PKSqueezePaletteView *)WeakRetained _didUndo];

    return [v1 updateUI];
  }

  return result;
}

void __79__PKSqueezePaletteViewUndoRedoLayout_initWithUndoButton_redoButton_startAngle___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [(PKSqueezePaletteViewUndoRedoLayout *)WeakRetained _performRedoAction];
}

- (uint64_t)_performRedoAction
{
  if (result)
  {
    v1 = result;
    WeakRetained = objc_loadWeakRetained((result + 88));
    [(PKSqueezePaletteView *)WeakRetained _didRedo];

    return [v1 updateUI];
  }

  return result;
}

- (void)handleLongPressGestureRecognizer:(void *)recognizer forButton:
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = a2;
  recognizerCopy = recognizer;
  if (self)
  {
    WeakRetained = objc_loadWeakRetained((self + 88));
    _undoCount = [(PKSqueezePaletteView *)WeakRetained _undoCount];

    v9 = objc_loadWeakRetained((self + 88));
    _redoCount = [(PKSqueezePaletteView *)v9 _redoCount];

    v11 = os_log_create("com.apple.pencilkit", "PencilSqueeze");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v22 = 138412802;
      v23 = v5;
      v24 = 2048;
      v25 = _undoCount;
      v26 = 2048;
      v27 = _redoCount;
      _os_log_impl(&dword_1C7CCA000, v11, OS_LOG_TYPE_DEFAULT, "Undo/redo button long press gesture recognizer handled: %@, undoCount: %lu, redoCount: %li", &v22, 0x20u);
    }

    if (_undoCount + _redoCount)
    {
      if ([v5 state] == 1 && (*(self + 64) & 1) == 0)
      {
        v14 = [[PKSqueezePaletteViewExpandedUndoRedoLayoutContext alloc] initWithSliderButton:recognizerCopy sliderButtonLongPressGestureRecognizer:v5 previousLayout:self];
        v15 = objc_loadWeakRetained((self + 88));
        v16 = v15;
        if (v15)
        {
          v17 = *(v15 + 70);
        }

        else
        {
          v17 = 0;
        }

        v18 = v17;
        _isLTR = [(PKSqueezePaletteViewUndoRedoLayout *)self _isLTR];
        v20 = [(PKSqueezePaletteViewLayoutFactory *)v18 makeExpandedUndoRedoLayoutWithContext:v14 isLTR:_isLTR];

        v21 = objc_loadWeakRetained((self + 88));
        [(PKSqueezePaletteView *)v21 setCurrentLayout:v20];

LABEL_15:
        goto LABEL_16;
      }

      if ([v5 state] == 3 && *(self + 64) == 1)
      {
        v12 = os_log_create("com.apple.pencilkit", "PencilSqueeze");
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v22) = 0;
          _os_log_impl(&dword_1C7CCA000, v12, OS_LOG_TYPE_DEFAULT, "Removing undo button long press gesture recognizer", &v22, 2u);
        }

        [*(self + 112) removeGestureRecognizer:*(self + 72)];
        [*(self + 120) removeGestureRecognizer:*(self + 80)];
        v13 = *(self + 72);
        *(self + 72) = 0;

        v14 = *(self + 80);
        *(self + 80) = 0;
        goto LABEL_15;
      }
    }
  }

LABEL_16:
}

- (BOOL)_isLTR
{
  if (!self)
  {
    return 0;
  }

  v1 = MEMORY[0x1E69DD250];
  WeakRetained = objc_loadWeakRetained((self + 88));
  v3 = [v1 userInterfaceLayoutDirectionForSemanticContentAttribute:{objc_msgSend(WeakRetained, "semanticContentAttribute")}] == 0;

  return v3;
}

- (uint64_t)_updateUndoButtonConstraints
{
  if (result)
  {
    v1 = result;
    WeakRetained = objc_loadWeakRetained((result + 88));
    v3 = WeakRetained;
    if (WeakRetained)
    {
      v4 = WeakRetained[62];
    }

    else
    {
      v4 = 0.0;
    }

    v5 = PKPointOnArc(*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8), v4, *(v1 + 40));
    v7 = v6;

    [*(v1 + 8) setConstant:v5];
    v8 = *(v1 + 16);

    return [v8 setConstant:v7];
  }

  return result;
}

- (uint64_t)_updateRedoButtonConstraints
{
  if (result)
  {
    v1 = result;
    WeakRetained = objc_loadWeakRetained((result + 88));
    v3 = WeakRetained;
    if (WeakRetained)
    {
      v4 = WeakRetained[62];
    }

    else
    {
      v4 = 0.0;
    }

    v5 = PKPointOnArc(*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8), v4, *(v1 + 48));
    v7 = v6;

    [*(v1 + 24) setConstant:v5];
    v8 = *(v1 + 32);

    return [v8 setConstant:v7];
  }

  return result;
}

- (void)setupUI
{
  v66[8] = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(&self->_paletteView);

  if (WeakRetained)
  {
    self->_didTransitionToExpandedLayout = 0;
    [(UIButton *)self->_undoButton setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIButton *)self->_redoButton setTranslatesAutoresizingMaskIntoConstraints:0];
    v4 = objc_loadWeakRetained(&self->_paletteView);
    v5 = v4;
    if (v4)
    {
      v6 = *(v4 + 69);
    }

    else
    {
      v6 = 0;
    }

    v7 = v6;
    [v7 addSubview:self->_undoButton];

    v8 = objc_loadWeakRetained(&self->_paletteView);
    v9 = v8;
    if (v8)
    {
      v10 = *(v8 + 69);
    }

    else
    {
      v10 = 0;
    }

    v11 = v10;
    [v11 addSubview:self->_redoButton];

    centerXAnchor = [(UIButton *)self->_undoButton centerXAnchor];
    v13 = objc_loadWeakRetained(&self->_paletteView);
    centerXAnchor2 = [v13 centerXAnchor];
    v15 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    undoButtonCenterXConstraint = self->_undoButtonCenterXConstraint;
    self->_undoButtonCenterXConstraint = v15;

    centerYAnchor = [(UIButton *)self->_undoButton centerYAnchor];
    v18 = objc_loadWeakRetained(&self->_paletteView);
    centerYAnchor2 = [v18 centerYAnchor];
    v20 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    undoButtonCenterYConstraint = self->_undoButtonCenterYConstraint;
    self->_undoButtonCenterYConstraint = v20;

    centerXAnchor3 = [(UIButton *)self->_redoButton centerXAnchor];
    v23 = objc_loadWeakRetained(&self->_paletteView);
    centerXAnchor4 = [v23 centerXAnchor];
    v25 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];
    redoButtonCenterXConstraint = self->_redoButtonCenterXConstraint;
    self->_redoButtonCenterXConstraint = v25;

    centerYAnchor3 = [(UIButton *)self->_redoButton centerYAnchor];
    v28 = objc_loadWeakRetained(&self->_paletteView);
    centerYAnchor4 = [v28 centerYAnchor];
    v30 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
    redoButtonCenterYConstraint = self->_redoButtonCenterYConstraint;
    self->_redoButtonCenterYConstraint = v30;

    v32 = PKSqueezePaletteButtonSize();
    v34 = v33;
    v35 = self->_undoButtonCenterYConstraint;
    v65 = MEMORY[0x1E696ACD8];
    v66[0] = self->_undoButtonCenterXConstraint;
    v66[1] = v35;
    heightAnchor = [(UIButton *)self->_undoButton heightAnchor];
    v37 = [heightAnchor constraintEqualToConstant:v32];
    v66[2] = v37;
    widthAnchor = [(UIButton *)self->_undoButton widthAnchor];
    v39 = [widthAnchor constraintEqualToConstant:v34];
    v40 = self->_redoButtonCenterXConstraint;
    v41 = self->_redoButtonCenterYConstraint;
    v66[3] = v39;
    v66[4] = v40;
    v66[5] = v41;
    heightAnchor2 = [(UIButton *)self->_redoButton heightAnchor];
    v43 = [heightAnchor2 constraintEqualToConstant:v32];
    v66[6] = v43;
    widthAnchor2 = [(UIButton *)self->_redoButton widthAnchor];
    v45 = [widthAnchor2 constraintEqualToConstant:v34];
    v66[7] = v45;
    v46 = [MEMORY[0x1E695DEC8] arrayWithObjects:v66 count:8];
    [v65 activateConstraints:v46];

    startAngle = self->_startAngle;
    v48 = objc_loadWeakRetained(&self->_delegate);
    LOBYTE(v37) = objc_opt_respondsToSelector();

    if (v37)
    {
      v49 = objc_loadWeakRetained(&self->_delegate);
      [v49 undoRedoLayoutStartAngle:self];
      startAngle = v50;
    }

    _isLTR = [(PKSqueezePaletteViewUndoRedoLayout *)self _isLTR];
    if (_isLTR)
    {
      v52 = 40;
    }

    else
    {
      v52 = 48;
    }

    if (_isLTR)
    {
      v53 = 48;
    }

    else
    {
      v53 = 40;
    }

    *(&self->super.isa + v52) = startAngle;
    v54 = v34 + self->_interItemSpace;
    v55 = objc_loadWeakRetained(&self->_paletteView);
    if (v55)
    {
      v56 = v55[62];
    }

    else
    {
      v56 = 0.0;
    }

    *(&self->super.isa + v53) = startAngle + v54 / v56;

    [(PKSqueezePaletteViewUndoRedoLayout *)self _updateUndoButtonConstraints];
    [(PKSqueezePaletteViewUndoRedoLayout *)self _updateRedoButtonConstraints];
    [(UIButton *)self->_undoButton addTarget:self action:sel__didTapUndoButton_ forControlEvents:64];
    [(UIButton *)self->_redoButton addTarget:self action:sel__didTapRedoButton_ forControlEvents:64];
    v57 = [objc_alloc(MEMORY[0x1E69DCC48]) initWithTarget:self action:sel__handleUndoButtonLongPressGestureRecognizer_];
    undoButtonLongPressGestureRecognizer = self->_undoButtonLongPressGestureRecognizer;
    self->_undoButtonLongPressGestureRecognizer = v57;

    [(UIButton *)self->_undoButton addGestureRecognizer:self->_undoButtonLongPressGestureRecognizer];
    v59 = [objc_alloc(MEMORY[0x1E69DCC48]) initWithTarget:self action:sel__handleRedoButtonLongPressGestureRecognizer_];
    redoButtonLongPressGestureRecognizer = self->_redoButtonLongPressGestureRecognizer;
    self->_redoButtonLongPressGestureRecognizer = v59;

    [(UIButton *)self->_redoButton addGestureRecognizer:self->_redoButtonLongPressGestureRecognizer];
    _isLTR2 = [(PKSqueezePaletteViewUndoRedoLayout *)self _isLTR];
    if (_isLTR2)
    {
      v62 = 40;
    }

    else
    {
      v62 = 48;
    }

    if (_isLTR2)
    {
      v63 = 48;
    }

    else
    {
      v63 = 40;
    }

    v64 = objc_loadWeakRetained(&self->_paletteView);
    [(PKSqueezePaletteView *)v64 updateUIStartAngle:1 endAngle:*(&self->super.isa + v62) clockwise:*(&self->super.isa + v63) animated:?];
  }
}

- (void)updateUI
{
  WeakRetained = objc_loadWeakRetained(&self->_paletteView);

  if (WeakRetained)
  {
    v4 = objc_loadWeakRetained(&self->_paletteView);
    _canUndo = [(PKSqueezePaletteView *)v4 _canUndo];

    [(UIButton *)self->_undoButton setEnabled:_canUndo];
    v6 = objc_loadWeakRetained(&self->_paletteView);
    _canRedo = [(PKSqueezePaletteView *)v6 _canRedo];

    [(UIButton *)self->_redoButton setEnabled:_canRedo];
    CGAffineTransformMakeRotation(&v12, self->_undoButtonAngle + 1.57079633);
    undoButton = self->_undoButton;
    v11 = v12;
    [(UIButton *)undoButton setTransform:&v11];
    CGAffineTransformMakeRotation(&v10, self->_redoButtonAngle + 1.57079633);
    redoButton = self->_redoButton;
    v11 = v10;
    [(UIButton *)redoButton setTransform:&v11];
    [(UIButton *)self->_redoButton _pk_show];
    [(UIButton *)self->_undoButton _pk_show];
  }
}

- (void)willTransitionToLayout:(id)layout
{
  v15 = *MEMORY[0x1E69E9840];
  layoutCopy = layout;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (layoutCopy)
    {
      v5 = layoutCopy[3];
      v6 = v5;
      if (v5)
      {
        v7 = *(v5 + 1);
        goto LABEL_5;
      }
    }

    else
    {
      v6 = 0;
    }

    v7 = 0;
LABEL_5:
    v8 = v7;

    redoButton = self->_redoButton;
    if (v8 != self->_undoButton)
    {
      if (v8 != redoButton)
      {
LABEL_9:

        goto LABEL_10;
      }

      redoButton = self->_undoButton;
    }

    [(UIButton *)redoButton _pk_hide];
    goto LABEL_9;
  }

LABEL_10:
  [(UIButton *)self->_undoButton removeTarget:self action:sel__didTapUndoButton_ forControlEvents:64];
  [(UIButton *)self->_redoButton removeTarget:self action:sel__didTapRedoButton_ forControlEvents:64];
  self->_didTransitionToExpandedLayout = 1;
  v10 = MEMORY[0x1E696ACD8];
  undoButtonCenterXConstraint = self->_undoButtonCenterXConstraint;
  v13 = *&self->_undoButtonCenterYConstraint;
  redoButtonCenterYConstraint = self->_redoButtonCenterYConstraint;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:&undoButtonCenterXConstraint count:4];
  [v10 deactivateConstraints:v11];
}

- (PKSqueezePaletteView)paletteView
{
  WeakRetained = objc_loadWeakRetained(&self->_paletteView);

  return WeakRetained;
}

@end