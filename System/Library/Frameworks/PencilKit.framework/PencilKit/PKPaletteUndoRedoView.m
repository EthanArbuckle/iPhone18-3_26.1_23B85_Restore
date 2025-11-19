@interface PKPaletteUndoRedoView
- (CGSize)_buttonSize;
- (CGSize)intrinsicContentSize;
- (PKPaletteUndoRedoView)initWithFrame:(CGRect)a3;
- (PKPaletteUndoRedoViewDelegate)delegate;
- (void)_installRedoButton;
- (void)_installStackView;
- (void)_installUndoButton;
- (void)_updateUI;
- (void)handleRedo:(id)a3;
- (void)handleUndo:(id)a3;
- (void)setEdgeLocation:(unint64_t)a3;
- (void)setInterItemSpacing:(double)a3;
- (void)setScalingFactor:(double)a3;
@end

@implementation PKPaletteUndoRedoView

- (PKPaletteUndoRedoView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = PKPaletteUndoRedoView;
  v3 = [(PKPaletteUndoRedoView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v3->_scalingFactor = 1.0;
    v3->_interItemSpacing = 0.0;
    [(PKPaletteUndoRedoView *)v3 _installStackView];
    if ([(PKPaletteUndoRedoView *)v4 effectiveUserInterfaceLayoutDirection])
    {
      [(PKPaletteUndoRedoView *)v4 _installRedoButton];
      [(PKPaletteUndoRedoView *)v4 _installUndoButton];
    }

    else
    {
      [(PKPaletteUndoRedoView *)v4 _installUndoButton];
      [(PKPaletteUndoRedoView *)v4 _installRedoButton];
    }

    [(PKPaletteUndoRedoView *)v4 _updateUI];
  }

  return v4;
}

- (void)_installStackView
{
  v26[4] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E69DCF90]);
  [(PKPaletteUndoRedoView *)self setStackView:v3];

  v4 = [(PKPaletteUndoRedoView *)self stackView];
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];

  v5 = [(PKPaletteUndoRedoView *)self stackView];
  [v5 setAlignment:3];

  v6 = [(PKPaletteUndoRedoView *)self stackView];
  [v6 setSemanticContentAttribute:2];

  v7 = [(PKPaletteUndoRedoView *)self stackView];
  [(PKPaletteUndoRedoView *)self addSubview:v7];

  v18 = MEMORY[0x1E696ACD8];
  v25 = [(PKPaletteUndoRedoView *)self stackView];
  v24 = [v25 topAnchor];
  v23 = [(PKPaletteUndoRedoView *)self topAnchor];
  v22 = [v24 constraintEqualToAnchor:v23];
  v26[0] = v22;
  v21 = [(PKPaletteUndoRedoView *)self stackView];
  v20 = [v21 bottomAnchor];
  v19 = [(PKPaletteUndoRedoView *)self bottomAnchor];
  v8 = [v20 constraintEqualToAnchor:v19];
  v26[1] = v8;
  v9 = [(PKPaletteUndoRedoView *)self stackView];
  v10 = [v9 leadingAnchor];
  v11 = [(PKPaletteUndoRedoView *)self leadingAnchor];
  v12 = [v10 constraintEqualToAnchor:v11];
  v26[2] = v12;
  v13 = [(PKPaletteUndoRedoView *)self stackView];
  v14 = [v13 trailingAnchor];
  v15 = [(PKPaletteUndoRedoView *)self trailingAnchor];
  v16 = [v14 constraintEqualToAnchor:v15];
  v26[3] = v16;
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:4];
  [v18 activateConstraints:v17];
}

- (void)_installUndoButton
{
  v19[2] = *MEMORY[0x1E69E9840];
  v3 = +[PKPaletteButton undoButton];
  [(PKPaletteUndoRedoView *)self setUndoButton:v3];

  v4 = [(PKPaletteUndoRedoView *)self undoButton];
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];

  v5 = [(PKPaletteUndoRedoView *)self undoButton];
  [v5 addTarget:self action:sel_handleUndo_ forControlEvents:64];

  v6 = [(PKPaletteUndoRedoView *)self stackView];
  v7 = [(PKPaletteUndoRedoView *)self undoButton];
  [v6 addArrangedSubview:v7];

  v8 = [(PKPaletteUndoRedoView *)self undoButton];
  v9 = [v8 widthAnchor];
  v10 = [v9 constraintEqualToConstant:0.0];
  undoButtonWidthConstraint = self->_undoButtonWidthConstraint;
  self->_undoButtonWidthConstraint = v10;

  v12 = [(PKPaletteUndoRedoView *)self undoButton];
  v13 = [v12 heightAnchor];
  v14 = [v13 constraintEqualToConstant:0.0];
  undoButtonHeightConstraint = self->_undoButtonHeightConstraint;
  self->_undoButtonHeightConstraint = v14;

  v16 = MEMORY[0x1E696ACD8];
  v17 = self->_undoButtonHeightConstraint;
  v19[0] = self->_undoButtonWidthConstraint;
  v19[1] = v17;
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:2];
  [v16 activateConstraints:v18];
}

- (void)_installRedoButton
{
  v19[2] = *MEMORY[0x1E69E9840];
  v3 = +[PKPaletteButton redoButton];
  [(PKPaletteUndoRedoView *)self setRedoButton:v3];

  v4 = [(PKPaletteUndoRedoView *)self redoButton];
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];

  v5 = [(PKPaletteUndoRedoView *)self redoButton];
  [v5 addTarget:self action:sel_handleRedo_ forControlEvents:64];

  v6 = [(PKPaletteUndoRedoView *)self stackView];
  v7 = [(PKPaletteUndoRedoView *)self redoButton];
  [v6 addArrangedSubview:v7];

  v8 = [(PKPaletteUndoRedoView *)self redoButton];
  v9 = [v8 widthAnchor];
  v10 = [v9 constraintEqualToConstant:0.0];
  redoButtonWidthConstraint = self->_redoButtonWidthConstraint;
  self->_redoButtonWidthConstraint = v10;

  v12 = [(PKPaletteUndoRedoView *)self redoButton];
  v13 = [v12 heightAnchor];
  v14 = [v13 constraintEqualToConstant:0.0];
  redoButtonHeightConstraint = self->_redoButtonHeightConstraint;
  self->_redoButtonHeightConstraint = v14;

  v16 = MEMORY[0x1E696ACD8];
  v17 = self->_redoButtonHeightConstraint;
  v19[0] = self->_redoButtonWidthConstraint;
  v19[1] = v17;
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:2];
  [v16 activateConstraints:v18];
}

- (CGSize)_buttonSize
{
  v3 = [(PKPaletteUndoRedoView *)self traitCollection];
  v4 = [(PKPaletteUndoRedoView *)self window];
  v5 = [v4 windowScene];
  v6 = PKUseCompactSize(v3, v5);

  if (v6)
  {
    v7 = 28.0;
  }

  else
  {
    v7 = 36.0;
  }

  [(PKPaletteUndoRedoView *)self scalingFactor];
  v9 = v7 * v8;
  v10 = v9;
  result.height = v10;
  result.width = v9;
  return result;
}

- (void)setInterItemSpacing:(double)a3
{
  interItemSpacing = self->_interItemSpacing;
  if (interItemSpacing != a3 && vabdd_f64(interItemSpacing, a3) >= fabs(a3 * 0.000000999999997))
  {
    self->_interItemSpacing = a3;
    [(PKPaletteUndoRedoView *)self _updateUI];

    [(PKPaletteUndoRedoView *)self invalidateIntrinsicContentSize];
  }
}

- (void)_updateUI
{
  [(PKPaletteUndoRedoView *)self interItemSpacing];
  v4 = v3;
  [(PKPaletteUndoRedoView *)self scalingFactor];
  v6 = v4 * v5;
  v7 = [(PKPaletteUndoRedoView *)self stackView];
  [v7 setSpacing:v6];

  [(PKPaletteUndoRedoView *)self _buttonSize];
  v9 = v8;
  v11 = v10;
  v12 = [(PKPaletteUndoRedoView *)self undoButtonWidthConstraint];
  [v12 setConstant:v9];

  v13 = [(PKPaletteUndoRedoView *)self undoButtonHeightConstraint];
  [v13 setConstant:v11];

  v14 = [(PKPaletteUndoRedoView *)self redoButtonWidthConstraint];
  [v14 setConstant:v9];

  v15 = [(PKPaletteUndoRedoView *)self redoButtonHeightConstraint];
  [v15 setConstant:v11];

  v16 = [(PKPaletteUndoRedoView *)self isUndoEnabled];
  v17 = [(PKPaletteUndoRedoView *)self undoButton];
  [v17 setEnabled:v16];

  v18 = [(PKPaletteUndoRedoView *)self isRedoEnabled];
  v19 = [(PKPaletteUndoRedoView *)self redoButton];
  [v19 setEnabled:v18];
}

- (void)setScalingFactor:(double)a3
{
  scalingFactor = self->_scalingFactor;
  if (scalingFactor != a3 && vabdd_f64(scalingFactor, a3) >= fabs(a3 * 0.000000999999997))
  {
    self->_scalingFactor = a3;
    [(PKPaletteUndoRedoView *)self _updateUI];

    [(PKPaletteUndoRedoView *)self invalidateIntrinsicContentSize];
  }
}

- (void)handleUndo:(id)a3
{
  v4 = [(PKPaletteUndoRedoView *)self delegate];
  [v4 undoRedoViewDidTapUndo:self];
}

- (void)handleRedo:(id)a3
{
  v4 = [(PKPaletteUndoRedoView *)self delegate];
  [v4 undoRedoViewDidTapRedo:self];
}

- (void)setEdgeLocation:(unint64_t)a3
{
  if (self->_edgeLocation != a3)
  {
    self->_edgeLocation = a3;
    [(PKPaletteUndoRedoView *)self invalidateIntrinsicContentSize];
  }
}

- (CGSize)intrinsicContentSize
{
  [(PKPaletteUndoRedoView *)self _buttonSize];
  v4 = v3;
  v6 = v5;
  [(PKPaletteUndoRedoView *)self interItemSpacing];
  v8 = v7 + v4 * 2.0;
  [(PKPaletteUndoRedoView *)self scalingFactor];
  v10 = v8 * v9;
  [(PKPaletteUndoRedoView *)self scalingFactor];
  v12 = v6 * v11;
  v13 = v10;
  result.height = v12;
  result.width = v13;
  return result;
}

- (PKPaletteUndoRedoViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end