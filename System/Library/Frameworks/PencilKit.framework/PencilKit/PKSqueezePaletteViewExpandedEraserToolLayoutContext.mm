@interface PKSqueezePaletteViewExpandedEraserToolLayoutContext
- (id)initWithDrawingTool:(void *)a3 toolAngle:(double)a4 previousLayout:;
@end

@implementation PKSqueezePaletteViewExpandedEraserToolLayoutContext

- (id)initWithDrawingTool:(void *)a3 toolAngle:(double)a4 previousLayout:
{
  v8 = a2;
  v9 = a3;
  if (a1)
  {
    v12.receiver = a1;
    v12.super_class = PKSqueezePaletteViewExpandedEraserToolLayoutContext;
    v10 = objc_msgSendSuper2(&v12, sel_init);
    a1 = v10;
    if (v10)
    {
      objc_storeStrong(v10 + 3, a2);
      *(a1 + 1) = a4;
      objc_storeStrong(a1 + 2, a3);
    }
  }

  return a1;
}

@end