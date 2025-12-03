@interface CHPaletteViewControllerSizingDelegate
- (CGRect)bounds;
- (CGSize)size;
- (CHPaletteViewControllerSizingDelegate)init;
- (void)setView:(id)view;
@end

@implementation CHPaletteViewControllerSizingDelegate

- (void)setView:(id)view
{
  v4 = *(&self->super.isa + OBJC_IVAR___CHPaletteViewControllerSizingDelegate_view);
  *(&self->super.isa + OBJC_IVAR___CHPaletteViewControllerSizingDelegate_view) = view;
  viewCopy = view;
}

- (CGRect)bounds
{
  v2 = *(&self->super.isa + OBJC_IVAR___CHPaletteViewControllerSizingDelegate_view);
  if (v2)
  {
    [v2 bounds];
  }

  else
  {
    v3 = 0.0;
    v4 = 0.0;
    v5 = 0.0;
    v6 = 0.0;
  }

  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (CGSize)size
{
  v2 = *(&self->super.isa + OBJC_IVAR___CHPaletteViewControllerSizingDelegate_view);
  if (v2)
  {
    [v2 size];
  }

  else
  {
    v3 = 0.0;
    v4 = 0.0;
  }

  result.height = v4;
  result.width = v3;
  return result;
}

- (CHPaletteViewControllerSizingDelegate)init
{
  *(&self->super.isa + OBJC_IVAR___CHPaletteViewControllerSizingDelegate_view) = 0;
  v3.receiver = self;
  v3.super_class = type metadata accessor for PaletteViewControllerSizingDelegate();
  return [(CHPaletteViewControllerSizingDelegate *)&v3 init];
}

@end