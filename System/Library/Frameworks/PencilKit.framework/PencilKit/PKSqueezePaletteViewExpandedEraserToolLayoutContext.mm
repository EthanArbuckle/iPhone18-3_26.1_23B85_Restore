@interface PKSqueezePaletteViewExpandedEraserToolLayoutContext
- (id)initWithDrawingTool:(void *)tool toolAngle:(double)angle previousLayout:;
@end

@implementation PKSqueezePaletteViewExpandedEraserToolLayoutContext

- (id)initWithDrawingTool:(void *)tool toolAngle:(double)angle previousLayout:
{
  v8 = a2;
  toolCopy = tool;
  if (self)
  {
    v12.receiver = self;
    v12.super_class = PKSqueezePaletteViewExpandedEraserToolLayoutContext;
    v10 = objc_msgSendSuper2(&v12, sel_init);
    self = v10;
    if (v10)
    {
      objc_storeStrong(v10 + 3, a2);
      *(self + 1) = angle;
      objc_storeStrong(self + 2, tool);
    }
  }

  return self;
}

@end