@interface THNoteCardBodyLayer
- (CGSize)sizeThatFits:(CGSize)fits;
- (void)dealloc;
- (void)setLayoutContext:(id)context;
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

- (CGSize)sizeThatFits:(CGSize)fits
{
  [(THNoteCardBodyLayer *)self bounds:fits.width];
  v4 = v3;
  v6 = v5;
  result.height = v6;
  result.width = v4;
  return result;
}

- (void)setLayoutContext:(id)context
{
  layoutContext = self->_layoutContext;
  if (layoutContext != context)
  {

    self->_layoutContext = context;

    [(THNoteCardBodyLayer *)self setNeedsLayout];
  }
}

@end