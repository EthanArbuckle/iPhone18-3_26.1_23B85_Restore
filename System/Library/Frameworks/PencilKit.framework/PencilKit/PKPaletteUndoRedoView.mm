@interface PKPaletteUndoRedoView
- (CGSize)_buttonSize;
- (CGSize)intrinsicContentSize;
- (PKPaletteUndoRedoView)initWithFrame:(CGRect)frame;
- (PKPaletteUndoRedoViewDelegate)delegate;
- (void)_installRedoButton;
- (void)_installStackView;
- (void)_installUndoButton;
- (void)_updateUI;
- (void)handleRedo:(id)redo;
- (void)handleUndo:(id)undo;
- (void)setEdgeLocation:(unint64_t)location;
- (void)setInterItemSpacing:(double)spacing;
- (void)setScalingFactor:(double)factor;
@end

@implementation PKPaletteUndoRedoView

- (PKPaletteUndoRedoView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = PKPaletteUndoRedoView;
  v3 = [(PKPaletteUndoRedoView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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

  stackView = [(PKPaletteUndoRedoView *)self stackView];
  [stackView setTranslatesAutoresizingMaskIntoConstraints:0];

  stackView2 = [(PKPaletteUndoRedoView *)self stackView];
  [stackView2 setAlignment:3];

  stackView3 = [(PKPaletteUndoRedoView *)self stackView];
  [stackView3 setSemanticContentAttribute:2];

  stackView4 = [(PKPaletteUndoRedoView *)self stackView];
  [(PKPaletteUndoRedoView *)self addSubview:stackView4];

  v18 = MEMORY[0x1E696ACD8];
  stackView5 = [(PKPaletteUndoRedoView *)self stackView];
  topAnchor = [stackView5 topAnchor];
  topAnchor2 = [(PKPaletteUndoRedoView *)self topAnchor];
  v22 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v26[0] = v22;
  stackView6 = [(PKPaletteUndoRedoView *)self stackView];
  bottomAnchor = [stackView6 bottomAnchor];
  bottomAnchor2 = [(PKPaletteUndoRedoView *)self bottomAnchor];
  v8 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v26[1] = v8;
  stackView7 = [(PKPaletteUndoRedoView *)self stackView];
  leadingAnchor = [stackView7 leadingAnchor];
  leadingAnchor2 = [(PKPaletteUndoRedoView *)self leadingAnchor];
  v12 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v26[2] = v12;
  stackView8 = [(PKPaletteUndoRedoView *)self stackView];
  trailingAnchor = [stackView8 trailingAnchor];
  trailingAnchor2 = [(PKPaletteUndoRedoView *)self trailingAnchor];
  v16 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v26[3] = v16;
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:4];
  [v18 activateConstraints:v17];
}

- (void)_installUndoButton
{
  v19[2] = *MEMORY[0x1E69E9840];
  v3 = +[PKPaletteButton undoButton];
  [(PKPaletteUndoRedoView *)self setUndoButton:v3];

  undoButton = [(PKPaletteUndoRedoView *)self undoButton];
  [undoButton setTranslatesAutoresizingMaskIntoConstraints:0];

  undoButton2 = [(PKPaletteUndoRedoView *)self undoButton];
  [undoButton2 addTarget:self action:sel_handleUndo_ forControlEvents:64];

  stackView = [(PKPaletteUndoRedoView *)self stackView];
  undoButton3 = [(PKPaletteUndoRedoView *)self undoButton];
  [stackView addArrangedSubview:undoButton3];

  undoButton4 = [(PKPaletteUndoRedoView *)self undoButton];
  widthAnchor = [undoButton4 widthAnchor];
  v10 = [widthAnchor constraintEqualToConstant:0.0];
  undoButtonWidthConstraint = self->_undoButtonWidthConstraint;
  self->_undoButtonWidthConstraint = v10;

  undoButton5 = [(PKPaletteUndoRedoView *)self undoButton];
  heightAnchor = [undoButton5 heightAnchor];
  v14 = [heightAnchor constraintEqualToConstant:0.0];
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

  redoButton = [(PKPaletteUndoRedoView *)self redoButton];
  [redoButton setTranslatesAutoresizingMaskIntoConstraints:0];

  redoButton2 = [(PKPaletteUndoRedoView *)self redoButton];
  [redoButton2 addTarget:self action:sel_handleRedo_ forControlEvents:64];

  stackView = [(PKPaletteUndoRedoView *)self stackView];
  redoButton3 = [(PKPaletteUndoRedoView *)self redoButton];
  [stackView addArrangedSubview:redoButton3];

  redoButton4 = [(PKPaletteUndoRedoView *)self redoButton];
  widthAnchor = [redoButton4 widthAnchor];
  v10 = [widthAnchor constraintEqualToConstant:0.0];
  redoButtonWidthConstraint = self->_redoButtonWidthConstraint;
  self->_redoButtonWidthConstraint = v10;

  redoButton5 = [(PKPaletteUndoRedoView *)self redoButton];
  heightAnchor = [redoButton5 heightAnchor];
  v14 = [heightAnchor constraintEqualToConstant:0.0];
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
  traitCollection = [(PKPaletteUndoRedoView *)self traitCollection];
  window = [(PKPaletteUndoRedoView *)self window];
  windowScene = [window windowScene];
  v6 = PKUseCompactSize(traitCollection, windowScene);

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

- (void)setInterItemSpacing:(double)spacing
{
  interItemSpacing = self->_interItemSpacing;
  if (interItemSpacing != spacing && vabdd_f64(interItemSpacing, spacing) >= fabs(spacing * 0.000000999999997))
  {
    self->_interItemSpacing = spacing;
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
  stackView = [(PKPaletteUndoRedoView *)self stackView];
  [stackView setSpacing:v6];

  [(PKPaletteUndoRedoView *)self _buttonSize];
  v9 = v8;
  v11 = v10;
  undoButtonWidthConstraint = [(PKPaletteUndoRedoView *)self undoButtonWidthConstraint];
  [undoButtonWidthConstraint setConstant:v9];

  undoButtonHeightConstraint = [(PKPaletteUndoRedoView *)self undoButtonHeightConstraint];
  [undoButtonHeightConstraint setConstant:v11];

  redoButtonWidthConstraint = [(PKPaletteUndoRedoView *)self redoButtonWidthConstraint];
  [redoButtonWidthConstraint setConstant:v9];

  redoButtonHeightConstraint = [(PKPaletteUndoRedoView *)self redoButtonHeightConstraint];
  [redoButtonHeightConstraint setConstant:v11];

  isUndoEnabled = [(PKPaletteUndoRedoView *)self isUndoEnabled];
  undoButton = [(PKPaletteUndoRedoView *)self undoButton];
  [undoButton setEnabled:isUndoEnabled];

  isRedoEnabled = [(PKPaletteUndoRedoView *)self isRedoEnabled];
  redoButton = [(PKPaletteUndoRedoView *)self redoButton];
  [redoButton setEnabled:isRedoEnabled];
}

- (void)setScalingFactor:(double)factor
{
  scalingFactor = self->_scalingFactor;
  if (scalingFactor != factor && vabdd_f64(scalingFactor, factor) >= fabs(factor * 0.000000999999997))
  {
    self->_scalingFactor = factor;
    [(PKPaletteUndoRedoView *)self _updateUI];

    [(PKPaletteUndoRedoView *)self invalidateIntrinsicContentSize];
  }
}

- (void)handleUndo:(id)undo
{
  delegate = [(PKPaletteUndoRedoView *)self delegate];
  [delegate undoRedoViewDidTapUndo:self];
}

- (void)handleRedo:(id)redo
{
  delegate = [(PKPaletteUndoRedoView *)self delegate];
  [delegate undoRedoViewDidTapRedo:self];
}

- (void)setEdgeLocation:(unint64_t)location
{
  if (self->_edgeLocation != location)
  {
    self->_edgeLocation = location;
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