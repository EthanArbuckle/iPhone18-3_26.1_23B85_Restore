@interface PKTextInputDebugDrawingEntryCell
- (void)_updateDrawingView;
- (void)setDrawing:(id)a3;
@end

@implementation PKTextInputDebugDrawingEntryCell

- (void)setDrawing:(id)a3
{
  v5 = a3;
  if (self->_drawing != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_drawing, a3);
    [(PKTextInputDebugDrawingEntryCell *)self _updateDrawingView];
    v5 = v6;
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

    v6 = [(PKTextInputDebugDrawingEntryCell *)self contentView];
    [v6 addSubview:self->_drawingImageView];

    [(UIImageView *)self->_drawingImageView setTranslatesAutoresizingMaskIntoConstraints:0];
    LODWORD(v7) = 1148846080;
    [(UIImageView *)self->_drawingImageView setContentCompressionResistancePriority:1 forAxis:v7];
    v26 = MEMORY[0x1E696ACD8];
    v31 = [(UIImageView *)self->_drawingImageView leadingAnchor];
    v32 = [(PKTextInputDebugDrawingEntryCell *)self contentView];
    v30 = [v32 leadingAnchor];
    v29 = [v31 constraintEqualToAnchor:v30 constant:10.0];
    v33[0] = v29;
    v27 = [(UIImageView *)self->_drawingImageView trailingAnchor];
    v28 = [(PKTextInputDebugDrawingEntryCell *)self contentView];
    v25 = [v28 trailingAnchor];
    v24 = [v27 constraintLessThanOrEqualToAnchor:v25 constant:-10.0];
    v33[1] = v24;
    v23 = [(UIImageView *)self->_drawingImageView topAnchor];
    v8 = [(PKTextInputDebugDrawingEntryCell *)self contentView];
    v9 = [v8 topAnchor];
    v10 = [v23 constraintEqualToAnchor:v9 constant:10.0];
    v33[2] = v10;
    v11 = [(UIImageView *)self->_drawingImageView bottomAnchor];
    v12 = [(PKTextInputDebugDrawingEntryCell *)self contentView];
    v13 = [v12 bottomAnchor];
    v14 = [v11 constraintEqualToAnchor:v13 constant:-10.0];
    v33[3] = v14;
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:4];
    [v26 activateConstraints:v15];
  }

  v16 = [(PKTextInputDebugDrawingEntryCell *)self drawing];

  if (v16)
  {
    v17 = +[PKMetalUtility defaultDevice];
    if (v17)
    {
      v18 = [PKMetalResourceHandler sharedResourceHandlerWithDevice:v17];
      v19 = [(PKMetalResourceHandler *)v18 strokeRenderCache];
      [(PKLRUCache *)v19 removeAllObjects];
    }

    v20 = [(PKTextInputDebugDrawingEntryCell *)self drawing];
    v21 = [(PKTextInputDebugDrawingEntryCell *)self drawing];
    [v21 bounds];
    v22 = [v20 imageFromRect:? scale:?];
  }

  else
  {
    v22 = 0;
  }

  [(UIImageView *)self->_drawingImageView setImage:v22];
}

@end