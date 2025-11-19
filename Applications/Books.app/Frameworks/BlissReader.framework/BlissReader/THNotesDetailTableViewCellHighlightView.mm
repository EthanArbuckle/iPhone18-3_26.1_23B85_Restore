@interface THNotesDetailTableViewCellHighlightView
- (CGSize)intrinsicContentSize;
- (void)dealloc;
- (void)p_updateLayersAnimated:(BOOL)a3;
- (void)populateWithHighlgihtLayer:(id)a3 editingHighlightLayer:(id)a4;
- (void)setEditing:(BOOL)a3 animated:(BOOL)a4;
@end

@implementation THNotesDetailTableViewCellHighlightView

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = THNotesDetailTableViewCellHighlightView;
  [(THNotesDetailTableViewCellHighlightView *)&v3 dealloc];
}

- (CGSize)intrinsicContentSize
{
  v9.receiver = self;
  v9.super_class = THNotesDetailTableViewCellHighlightView;
  [(THNotesDetailTableViewCellHighlightView *)&v9 intrinsicContentSize];
  v4 = v3;
  if (self->mEditing)
  {
    v5 = &OBJC_IVAR___THNotesDetailTableViewCellHighlightView_mEditingHighlightLayer;
  }

  else
  {
    v5 = &OBJC_IVAR___THNotesDetailTableViewCellHighlightView_mHighlightLayer;
  }

  [*(&self->super.super.super.isa + *v5) bounds];
  v7 = v6;
  v8 = v4;
  result.height = v7;
  result.width = v8;
  return result;
}

- (void)populateWithHighlgihtLayer:(id)a3 editingHighlightLayer:(id)a4
{
  self->mHighlightLayer = a3;
  [-[THNotesDetailTableViewCellHighlightView layer](self "layer")];
  self->mEditingHighlightLayer = a4;
  [-[THNotesDetailTableViewCellHighlightView layer](self "layer")];
  [(THNotesDetailTableViewCellHighlightView *)self p_updateLayersAnimated:0];

  [(THNotesDetailTableViewCellHighlightView *)self invalidateIntrinsicContentSize];
}

- (void)setEditing:(BOOL)a3 animated:(BOOL)a4
{
  if (self->mEditing != a3)
  {
    self->mEditing = a3;
    [(THNotesDetailTableViewCellHighlightView *)self p_updateLayersAnimated:a4];

    [(THNotesDetailTableViewCellHighlightView *)self invalidateIntrinsicContentSize];
  }
}

- (void)p_updateLayersAnimated:(BOOL)a3
{
  if (a3)
  {
    v5 = [CABasicAnimation animationWithKeyPath:@"opacity"];
    [(CABasicAnimation *)v5 setFromValue:[NSNumber numberWithFloat:0.0]];
    LODWORD(v6) = 1.0;
    [(CABasicAnimation *)v5 setToValue:[NSNumber numberWithFloat:v6]];
    [(CABasicAnimation *)v5 setDuration:0.25];
    v7 = [CABasicAnimation animationWithKeyPath:@"opacity"];
    LODWORD(v8) = 1.0;
    [(CABasicAnimation *)v7 setFromValue:[NSNumber numberWithFloat:v8]];
    [(CABasicAnimation *)v7 setToValue:[NSNumber numberWithFloat:0.0]];
    [(CABasicAnimation *)v7 setDuration:0.25];
    if (self->mEditing)
    {
      v9 = v7;
    }

    else
    {
      v9 = v5;
    }

    [(CALayer *)self->mHighlightLayer addAnimation:v9 forKey:@"opacity"];
    if (self->mEditing)
    {
      v10 = v5;
    }

    else
    {
      v10 = v7;
    }

    [(CALayer *)self->mEditingHighlightLayer addAnimation:v10 forKey:@"opacity"];
  }

  if (self->mEditing)
  {
    *&v3 = 0.0;
  }

  else
  {
    *&v3 = 1.0;
  }

  [(CALayer *)self->mHighlightLayer setOpacity:v3];
  if (self->mEditing)
  {
    *&v11 = 1.0;
  }

  else
  {
    *&v11 = 0.0;
  }

  mEditingHighlightLayer = self->mEditingHighlightLayer;

  [(CALayer *)mEditingHighlightLayer setOpacity:v11];
}

@end