@interface PKSqueezePaletteViewExpandedColorsLayoutContext
- (id)initWithSelectedTool:(void *)a3 multicolorButton:(void *)a4 multicolorButtonAngle:(double)a5 previousLayout:;
@end

@implementation PKSqueezePaletteViewExpandedColorsLayoutContext

- (id)initWithSelectedTool:(void *)a3 multicolorButton:(void *)a4 multicolorButtonAngle:(double)a5 previousLayout:
{
  v10 = a2;
  v11 = a3;
  v12 = a4;
  if (a1)
  {
    v15.receiver = a1;
    v15.super_class = PKSqueezePaletteViewExpandedColorsLayoutContext;
    v13 = objc_msgSendSuper2(&v15, sel_init);
    a1 = v13;
    if (v13)
    {
      objc_storeStrong(v13 + 1, a2);
      objc_storeStrong(a1 + 2, a3);
      *(a1 + 3) = a5;
      objc_storeStrong(a1 + 4, a4);
    }
  }

  return a1;
}

@end