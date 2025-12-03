@interface RenderBoxView
+ (Class)layerClass;
- (BOOL)isOpaque;
- (void)RBLayer:(id)layer draw:(id)draw;
- (void)dealloc;
- (void)didMoveToWindow;
- (void)setNeedsDisplay;
- (void)setOpaque:(BOOL)opaque;
@end

@implementation RenderBoxView

+ (Class)layerClass
{
  type metadata accessor for RenderBoxLayer();

  return swift_getObjCClassFromMetadata();
}

- (BOOL)isOpaque
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for RenderBoxView();
  return [(RenderBoxView *)&v3 isOpaque];
}

- (void)setOpaque:(BOOL)opaque
{
  opaqueCopy = opaque;
  selfCopy = self;
  layer = [(RenderBoxView *)selfCopy layer];
  [layer setOpaque_];

  v6.receiver = selfCopy;
  v6.super_class = type metadata accessor for RenderBoxView();
  [(RenderBoxView *)&v6 setOpaque:opaqueCopy];
}

- (void)setNeedsDisplay
{
  selfCopy = self;
  layer = [(RenderBoxView *)selfCopy layer];
  [layer setNeedsDisplay];
}

- (void)didMoveToWindow
{
  selfCopy = self;
  window = [(RenderBoxView *)selfCopy window];
  if (window)
  {
    v3 = window;
    layer = [(RenderBoxView *)selfCopy layer];
    screen = [v3 screen];
    [screen scale];
    v7 = v6;

    [layer setContentsScale_];
    [(RenderBoxView *)selfCopy setNeedsDisplay];
  }
}

- (void)RBLayer:(id)layer draw:(id)draw
{
  v5 = *((*MEMORY[0x1E69E7D40] & self->super.super.super.super.super.isa) + 0x60);
  drawCopy = draw;
  selfCopy = self;
  v5(drawCopy);
}

- (void)dealloc
{
  selfCopy = self;
  layer = [(RenderBoxView *)selfCopy layer];
  [layer waitUntilAsyncRenderingCompleted];

  v4.receiver = selfCopy;
  v4.super_class = type metadata accessor for RenderBoxView();
  [(RenderBoxView *)&v4 dealloc];
}

@end