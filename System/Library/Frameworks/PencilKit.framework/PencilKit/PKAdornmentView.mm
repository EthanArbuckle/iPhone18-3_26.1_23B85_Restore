@interface PKAdornmentView
+ (Class)classForSelectionType:(int64_t)type;
- (BOOL)containsPoint:(CGPoint)point forInputType:(int64_t)type;
- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event;
- (PKAdornmentView)initWithFrame:(CGRect)frame strokeSelection:(id)selection selectionController:(id)controller selectionType:(int64_t)type;
- (PKSelectionController)selectionController;
- (void)_hideStrokeSelectionImageView:(BOOL)view animated:(BOOL)animated;
- (void)_liftStrokesOutOfTiledView;
- (void)_putStrokesBackIntoTiledViewAnimated:(BOOL)animated;
- (void)setStrokeSelection:(id)selection;
- (void)setStrokeSelectionImage:(id)image;
@end

@implementation PKAdornmentView

- (PKAdornmentView)initWithFrame:(CGRect)frame strokeSelection:(id)selection selectionController:(id)controller selectionType:(int64_t)type
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  selectionCopy = selection;
  controllerCopy = controller;
  v27.receiver = self;
  v27.super_class = PKAdornmentView;
  height = [(PKAdornmentView *)&v27 initWithFrame:x, y, width, height];
  v17 = height;
  if (height)
  {
    objc_storeStrong(&height->_strokeSelection, selection);
    objc_storeWeak(&v17->_selectionController, controllerCopy);
    if ([PKAdornmentView classForSelectionType:type])
    {
      v18 = objc_alloc([PKAdornmentView classForSelectionType:type]);
      WeakRetained = objc_loadWeakRetained(&v17->_selectionController);
      v20 = [v18 initWithStrokeSelection:selectionCopy renderingDelegate:WeakRetained];
      selectionRenderer = v17->_selectionRenderer;
      v17->_selectionRenderer = v20;

      [(PKSelectionRendering *)v17->_selectionRenderer _setupSelectionAdornment];
      layer = [(PKAdornmentView *)v17 layer];
      adornmentLayer = [(PKSelectionRendering *)v17->_selectionRenderer adornmentLayer];
      [layer addSublayer:adornmentLayer];
    }

    v24 = objc_loadWeakRetained(&v17->_selectionController);
    strokeSelection = [(PKAdornmentView *)v17 strokeSelection];
    [(PKSelectionController *)v24 setImageOnSelectionViewForStrokeSelection:strokeSelection withCompletion:0];
  }

  return v17;
}

+ (Class)classForSelectionType:(int64_t)type
{
  if (type == 6)
  {
    v4 = 0;
  }

  else
  {
    v4 = objc_opt_class();
  }

  return v4;
}

- (BOOL)containsPoint:(CGPoint)point forInputType:(int64_t)type
{
  y = point.y;
  x = point.x;
  [(PKAdornmentView *)self bounds];
  v10 = x;
  v11 = y;

  return CGRectContainsPoint(*&v6, *&v10);
}

- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event
{
  y = inside.y;
  x = inside.x;
  eventCopy = event;
  [(PKAdornmentView *)self bounds];
  if (v9 < 44.0 || v8 < 44.0)
  {
    [(PKAdornmentView *)self bounds];
    UIRectGetCenter();
    UIRectCenteredAboutPoint();
    v15.x = x;
    v15.y = y;
    v13 = CGRectContainsPoint(v16, v15);
  }

  else
  {
    v11 = [eventCopy touchesForView:self];
    anyObject = [v11 anyObject];

    v13 = -[PKAdornmentView containsPoint:forInputType:](self, "containsPoint:forInputType:", [anyObject type] == 2, x, y);
  }

  return v13;
}

- (void)setStrokeSelection:(id)selection
{
  selectionCopy = selection;
  [(PKStrokeSelection *)selectionCopy setStrokeImageWithHighlight:self->_strokeSelectionImage];
  strokeSelection = self->_strokeSelection;
  self->_strokeSelection = selectionCopy;
}

- (void)setStrokeSelectionImage:(id)image
{
  imageCopy = image;
  objc_storeStrong(&self->_strokeSelectionImage, image);
  [(PKStrokeSelection *)self->_strokeSelection setStrokeImageWithHighlight:imageCopy];
  if (!self->_strokeSelectionImageView)
  {
    v5 = [PKImageView alloc];
    image = [(PKStrokeSelectionImage *)self->_strokeSelectionImage image];
    v7 = [(PKImageView *)v5 initWithImage:image];
    strokeSelectionImageView = self->_strokeSelectionImageView;
    self->_strokeSelectionImageView = v7;

    [(PKImageView *)self->_strokeSelectionImageView setOpaque:0];
    v9 = self->_strokeSelectionImageView;
    [(PKAdornmentView *)self bounds];
    [(PKImageView *)v9 setFrame:?];
    [(PKAdornmentView *)self addSubview:self->_strokeSelectionImageView];
    [(PKImageView *)self->_strokeSelectionImageView setHidden:1];
  }

  image2 = [imageCopy image];
  [(PKImageView *)self->_strokeSelectionImageView setImage:image2];

  addImage = [(PKStrokeSelectionImage *)self->_strokeSelectionImage addImage];
  [(PKImageView *)self->_strokeSelectionImageView setAddImage:addImage];

  mulImage = [(PKStrokeSelectionImage *)self->_strokeSelectionImage mulImage];
  [(PKImageView *)self->_strokeSelectionImageView setMulImage:mulImage];

  config = [imageCopy config];
  [config imageViewBounds];
  IsNull = CGRectIsNull(v19);

  if (!IsNull)
  {
    superview = [(PKAdornmentView *)self superview];
    config2 = [imageCopy config];
    [config2 imageViewBounds];
    [superview convertRect:self toView:?];
    [(PKImageView *)self->_strokeSelectionImageView setFrame:?];
  }
}

- (void)_liftStrokesOutOfTiledView
{
  self->_isInteracting = 1;
  WeakRetained = objc_loadWeakRetained(&self->_selectionController);
  strokeSelection = [(PKAdornmentView *)self strokeSelection];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __45__PKAdornmentView__liftStrokesOutOfTiledView__block_invoke;
  v5[3] = &unk_1E82D7148;
  v5[4] = self;
  [(PKSelectionController *)WeakRetained setImageOnSelectionViewForStrokeSelection:strokeSelection withCompletion:v5];
}

void __45__PKAdornmentView__liftStrokesOutOfTiledView__block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  if (*(v3 + 416) == 1)
  {
    v12[13] = v1;
    v12[14] = v2;
    WeakRetained = objc_loadWeakRetained((v3 + 432));
    v6 = [*(a1 + 32) strokeSelection];
    v7 = [v6 strokes];
    v8 = [v7 array];
    v9 = [PKStroke copyStrokes:v8 hidden:1];
    v10 = [*(a1 + 32) strokeSelection];
    v11 = [v10 drawing];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __45__PKAdornmentView__liftStrokesOutOfTiledView__block_invoke_2;
    v12[3] = &unk_1E82D7148;
    v12[4] = *(a1 + 32);
    [(PKSelectionController *)WeakRetained _setAdditionalStrokes:v9 inDrawing:v11 completion:v12];
  }
}

- (void)_putStrokesBackIntoTiledViewAnimated:(BOOL)animated
{
  self->_isInteracting = 0;
  WeakRetained = objc_loadWeakRetained(&self->_selectionController);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __56__PKAdornmentView__putStrokesBackIntoTiledViewAnimated___block_invoke;
  v5[3] = &unk_1E82D7148;
  v5[4] = self;
  [(PKSelectionController *)WeakRetained commitStrokesWithCompletion:v5];
}

- (void)_hideStrokeSelectionImageView:(BOOL)view animated:(BOOL)animated
{
  if (view)
  {
    if (animated)
    {
      v5 = MEMORY[0x1E69DD250];
      strokeSelectionImageView = self->_strokeSelectionImageView;
      selfCopy = self;
      v14 = MEMORY[0x1E69E9820];
      v15 = 3221225472;
      v16 = __58__PKAdornmentView__hideStrokeSelectionImageView_animated___block_invoke_3;
      v17 = &unk_1E82D7148;
      selfCopy2 = self;
      v9 = MEMORY[0x1E69E9820];
      v10 = 3221225472;
      v11 = __58__PKAdornmentView__hideStrokeSelectionImageView_animated___block_invoke_4;
      v12 = &unk_1E82D8F30;
      v7 = &v14;
      v8 = &v9;
LABEL_6:
      [v5 transitionWithView:strokeSelectionImageView duration:5242880 options:v7 animations:v8 completion:{0.0, v9, v10, v11, v12, selfCopy, v14, v15, v16, v17, selfCopy2}];
      return;
    }

    [(PKAdornmentView *)self hideStrokeImageView];
  }

  else
  {
    if (animated)
    {
      [(PKImageView *)self->_strokeSelectionImageView setHidden:0];
      [(PKImageView *)self->_strokeSelectionImageView setAlpha:0.0];
      v5 = MEMORY[0x1E69DD250];
      strokeSelectionImageView = self->_strokeSelectionImageView;
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __58__PKAdornmentView__hideStrokeSelectionImageView_animated___block_invoke;
      v20[3] = &unk_1E82D7148;
      v20[4] = self;
      v7 = v20;
      v8 = 0;
      goto LABEL_6;
    }

    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __58__PKAdornmentView__hideStrokeSelectionImageView_animated___block_invoke_2;
    v19[3] = &unk_1E82D7148;
    v19[4] = self;
    [MEMORY[0x1E69DD250] performWithoutAnimation:v19];
  }
}

uint64_t __58__PKAdornmentView__hideStrokeSelectionImageView_animated___block_invoke_2(uint64_t a1)
{
  [*(*(a1 + 32) + 408) setHidden:0];
  v2 = *(*(a1 + 32) + 408);

  return [v2 setAlpha:1.0];
}

- (PKSelectionController)selectionController
{
  WeakRetained = objc_loadWeakRetained(&self->_selectionController);

  return WeakRetained;
}

@end