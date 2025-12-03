@interface PKSqueezePaletteViewExpandedLassoToolLayoutContext
- (id)initWithDrawingTool:(void *)tool toolAngle:(void *)angle barButtonItems:(double)items previousLayout:;
@end

@implementation PKSqueezePaletteViewExpandedLassoToolLayoutContext

- (id)initWithDrawingTool:(void *)tool toolAngle:(void *)angle barButtonItems:(double)items previousLayout:
{
  v10 = a2;
  toolCopy = tool;
  angleCopy = angle;
  if (self)
  {
    v17.receiver = self;
    v17.super_class = PKSqueezePaletteViewExpandedLassoToolLayoutContext;
    v13 = objc_msgSendSuper2(&v17, sel_init);
    self = v13;
    if (v13)
    {
      objc_storeStrong(v13 + 1, a2);
      *(self + 2) = items;
      v14 = [toolCopy copy];
      v15 = self[3];
      self[3] = v14;

      objc_storeStrong(self + 4, angle);
    }
  }

  return self;
}

@end