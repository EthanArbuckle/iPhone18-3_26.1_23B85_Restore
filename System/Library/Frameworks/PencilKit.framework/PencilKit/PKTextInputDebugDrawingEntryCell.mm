@interface PKTextInputDebugDrawingEntryCell
- (void)_updateDrawingView;
- (void)setDrawing:(id)drawing;
@end

@implementation PKTextInputDebugDrawingEntryCell

- (void)setDrawing:(id)drawing
{
  drawingCopy = drawing;
  if (self->_drawing != drawingCopy)
  {
    v6 = drawingCopy;
    objc_storeStrong(&self->_drawing, drawing);
    [(PKTextInputDebugDrawingEntryCell *)self _updateDrawingView];
    drawingCopy = v6;
  }
}

- (void)_updateDrawingView
{
  v33[4] = *MEMORY[0x1E69E9840];
  if (!self->_drawingImageView)
  {
    v3 = objc_alloc(MEMORY[0x1E69DCAE0]);
    v4 = [v3 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    drawingImageView = self->_drawingImageView;
    self->_drawingImageView = v4;

    contentView = [(PKTextInputDebugDrawingEntryCell *)self contentView];
    [contentView addSubview:self->_drawingImageView];

    [(UIImageView *)self->_drawingImageView setTranslatesAutoresizingMaskIntoConstraints:0];
    LODWORD(v7) = 1148846080;
    [(UIImageView *)self->_drawingImageView setContentCompressionResistancePriority:1 forAxis:v7];
    v26 = MEMORY[0x1E696ACD8];
    leadingAnchor = [(UIImageView *)self->_drawingImageView leadingAnchor];
    contentView2 = [(PKTextInputDebugDrawingEntryCell *)self contentView];
    leadingAnchor2 = [contentView2 leadingAnchor];
    v29 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:10.0];
    v33[0] = v29;
    trailingAnchor = [(UIImageView *)self->_drawingImageView trailingAnchor];
    contentView3 = [(PKTextInputDebugDrawingEntryCell *)self contentView];
    trailingAnchor2 = [contentView3 trailingAnchor];
    v24 = [trailingAnchor constraintLessThanOrEqualToAnchor:trailingAnchor2 constant:-10.0];
    v33[1] = v24;
    topAnchor = [(UIImageView *)self->_drawingImageView topAnchor];
    contentView4 = [(PKTextInputDebugDrawingEntryCell *)self contentView];
    topAnchor2 = [contentView4 topAnchor];
    v10 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:10.0];
    v33[2] = v10;
    bottomAnchor = [(UIImageView *)self->_drawingImageView bottomAnchor];
    contentView5 = [(PKTextInputDebugDrawingEntryCell *)self contentView];
    bottomAnchor2 = [contentView5 bottomAnchor];
    v14 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-10.0];
    v33[3] = v14;
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:4];
    [v26 activateConstraints:v15];
  }

  drawing = [(PKTextInputDebugDrawingEntryCell *)self drawing];

  if (drawing)
  {
    v17 = +[PKMetalUtility defaultDevice];
    if (v17)
    {
      v18 = [PKMetalResourceHandler sharedResourceHandlerWithDevice:v17];
      strokeRenderCache = [(PKMetalResourceHandler *)v18 strokeRenderCache];
      [(PKLRUCache *)strokeRenderCache removeAllObjects];
    }

    drawing2 = [(PKTextInputDebugDrawingEntryCell *)self drawing];
    drawing3 = [(PKTextInputDebugDrawingEntryCell *)self drawing];
    [drawing3 bounds];
    v22 = [drawing2 imageFromRect:? scale:?];
  }

  else
  {
    v22 = 0;
  }

  [(UIImageView *)self->_drawingImageView setImage:v22];
}

@end