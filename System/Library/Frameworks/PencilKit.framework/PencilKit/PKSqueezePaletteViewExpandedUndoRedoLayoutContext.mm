@interface PKSqueezePaletteViewExpandedUndoRedoLayoutContext
- (id)initWithSliderButton:(void *)button sliderButtonLongPressGestureRecognizer:(void *)recognizer previousLayout:;
@end

@implementation PKSqueezePaletteViewExpandedUndoRedoLayoutContext

- (id)initWithSliderButton:(void *)button sliderButtonLongPressGestureRecognizer:(void *)recognizer previousLayout:
{
  v8 = a2;
  buttonCopy = button;
  recognizerCopy = recognizer;
  if (self)
  {
    v13.receiver = self;
    v13.super_class = PKSqueezePaletteViewExpandedUndoRedoLayoutContext;
    v11 = objc_msgSendSuper2(&v13, sel_init);
    self = v11;
    if (v11)
    {
      objc_storeStrong(v11 + 1, a2);
      objc_storeStrong(self + 2, button);
      objc_storeStrong(self + 3, recognizer);
    }
  }

  return self;
}

@end