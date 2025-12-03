@interface PKSqueezePaletteViewExpandedColorsLayoutContext
- (id)initWithSelectedTool:(void *)tool multicolorButton:(void *)button multicolorButtonAngle:(double)angle previousLayout:;
@end

@implementation PKSqueezePaletteViewExpandedColorsLayoutContext

- (id)initWithSelectedTool:(void *)tool multicolorButton:(void *)button multicolorButtonAngle:(double)angle previousLayout:
{
  v10 = a2;
  toolCopy = tool;
  buttonCopy = button;
  if (self)
  {
    v15.receiver = self;
    v15.super_class = PKSqueezePaletteViewExpandedColorsLayoutContext;
    v13 = objc_msgSendSuper2(&v15, sel_init);
    self = v13;
    if (v13)
    {
      objc_storeStrong(v13 + 1, a2);
      objc_storeStrong(self + 2, tool);
      *(self + 3) = angle;
      objc_storeStrong(self + 4, button);
    }
  }

  return self;
}

@end