@interface RenderBoxView
+ (Class)layerClass;
- (BOOL)isOpaque;
- (void)RBLayer:(id)a3 draw:(id)a4;
- (void)dealloc;
- (void)didMoveToWindow;
- (void)setNeedsDisplay;
- (void)setOpaque:(BOOL)a3;
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

- (void)setOpaque:(BOOL)a3
{
  v3 = a3;
  v4 = self;
  v5 = [(RenderBoxView *)v4 layer];
  [v5 setOpaque_];

  v6.receiver = v4;
  v6.super_class = type metadata accessor for RenderBoxView();
  [(RenderBoxView *)&v6 setOpaque:v3];
}

- (void)setNeedsDisplay
{
  v3 = self;
  v2 = [(RenderBoxView *)v3 layer];
  [v2 setNeedsDisplay];
}

- (void)didMoveToWindow
{
  v8 = self;
  v2 = [(RenderBoxView *)v8 window];
  if (v2)
  {
    v3 = v2;
    v4 = [(RenderBoxView *)v8 layer];
    v5 = [v3 screen];
    [v5 scale];
    v7 = v6;

    [v4 setContentsScale_];
    [(RenderBoxView *)v8 setNeedsDisplay];
  }
}

- (void)RBLayer:(id)a3 draw:(id)a4
{
  v5 = *((*MEMORY[0x1E69E7D40] & self->super.super.super.super.super.isa) + 0x60);
  v6 = a4;
  v7 = self;
  v5(v6);
}

- (void)dealloc
{
  v2 = self;
  v3 = [(RenderBoxView *)v2 layer];
  [v3 waitUntilAsyncRenderingCompleted];

  v4.receiver = v2;
  v4.super_class = type metadata accessor for RenderBoxView();
  [(RenderBoxView *)&v4 dealloc];
}

@end