@interface PKSqueezePaletteViewExpandedUndoRedoLayoutContext
- (id)initWithSliderButton:(void *)a3 sliderButtonLongPressGestureRecognizer:(void *)a4 previousLayout:;
@end

@implementation PKSqueezePaletteViewExpandedUndoRedoLayoutContext

- (id)initWithSliderButton:(void *)a3 sliderButtonLongPressGestureRecognizer:(void *)a4 previousLayout:
{
  v8 = a2;
  v9 = a3;
  v10 = a4;
  if (a1)
  {
    v13.receiver = a1;
    v13.super_class = PKSqueezePaletteViewExpandedUndoRedoLayoutContext;
    v11 = objc_msgSendSuper2(&v13, sel_init);
    a1 = v11;
    if (v11)
    {
      objc_storeStrong(v11 + 1, a2);
      objc_storeStrong(a1 + 2, a3);
      objc_storeStrong(a1 + 3, a4);
    }
  }

  return a1;
}

@end