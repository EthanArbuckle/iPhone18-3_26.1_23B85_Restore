@interface PKSqueezePaletteViewExpandedOptionsLayoutContext
- (id)initMoreButtonAngle:(double)angle previousLayout:;
@end

@implementation PKSqueezePaletteViewExpandedOptionsLayoutContext

- (id)initMoreButtonAngle:(double)angle previousLayout:
{
  v6 = a2;
  if (self)
  {
    v9.receiver = self;
    v9.super_class = PKSqueezePaletteViewExpandedOptionsLayoutContext;
    v7 = objc_msgSendSuper2(&v9, sel_init);
    self = v7;
    if (v7)
    {
      *(v7 + 1) = angle;
      objc_storeStrong(v7 + 2, a2);
    }
  }

  return self;
}

@end