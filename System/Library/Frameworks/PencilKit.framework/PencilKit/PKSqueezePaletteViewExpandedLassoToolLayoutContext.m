@interface PKSqueezePaletteViewExpandedLassoToolLayoutContext
- (id)initWithDrawingTool:(void *)a3 toolAngle:(void *)a4 barButtonItems:(double)a5 previousLayout:;
@end

@implementation PKSqueezePaletteViewExpandedLassoToolLayoutContext

- (id)initWithDrawingTool:(void *)a3 toolAngle:(void *)a4 barButtonItems:(double)a5 previousLayout:
{
  v10 = a2;
  v11 = a3;
  v12 = a4;
  if (a1)
  {
    v17.receiver = a1;
    v17.super_class = PKSqueezePaletteViewExpandedLassoToolLayoutContext;
    v13 = objc_msgSendSuper2(&v17, sel_init);
    a1 = v13;
    if (v13)
    {
      objc_storeStrong(v13 + 1, a2);
      *(a1 + 2) = a5;
      v14 = [v11 copy];
      v15 = a1[3];
      a1[3] = v14;

      objc_storeStrong(a1 + 4, a4);
    }
  }

  return a1;
}

@end