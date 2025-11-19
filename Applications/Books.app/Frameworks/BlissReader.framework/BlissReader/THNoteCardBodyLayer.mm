@interface THNoteCardBodyLayer
- (CGSize)sizeThatFits:(CGSize)a3;
- (void)dealloc;
- (void)setLayoutContext:(id)a3;
- (void)sizeToFit;
@end

@implementation THNoteCardBodyLayer

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = THNoteCardBodyLayer;
  [(THNoteCardBodyLayer *)&v3 dealloc];
}

- (void)sizeToFit
{
  [(THNoteCardBodyLayer *)self bounds];
  [(THNoteCardBodyLayer *)self sizeThatFits:v3, v4];
  [(THNoteCardBodyLayer *)self frame];
  TSDRectWithOriginAndSize();

  [(THNoteCardBodyLayer *)self setFrame:?];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  [(THNoteCardBodyLayer *)self bounds:a3.width];
  v4 = v3;
  v6 = v5;
  result.height = v6;
  result.width = v4;
  return result;
}

- (void)setLayoutContext:(id)a3
{
  layoutContext = self->_layoutContext;
  if (layoutContext != a3)
  {

    self->_layoutContext = a3;

    [(THNoteCardBodyLayer *)self setNeedsLayout];
  }
}

@end