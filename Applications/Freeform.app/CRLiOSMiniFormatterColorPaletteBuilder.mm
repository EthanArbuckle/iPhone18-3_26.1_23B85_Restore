@interface CRLiOSMiniFormatterColorPaletteBuilder
- (void)colorPickerDidChangeSelectedColor:(id)color;
- (void)colorPickerViewController:(id)controller didSelectColor:(id)color continuously:(BOOL)continuously;
- (void)colorPickerViewControllerDidFinish:(id)finish;
@end

@implementation CRLiOSMiniFormatterColorPaletteBuilder

- (void)colorPickerViewController:(id)controller didSelectColor:(id)color continuously:(BOOL)continuously
{
  controllerCopy = controller;
  colorCopy = color;
  selfCopy = self;
  sub_100C67FC4(colorCopy, continuously);
}

- (void)colorPickerViewControllerDidFinish:(id)finish
{
  v5 = self + OBJC_IVAR____TtC8Freeform26CRLiOSMiniFormatterBuilder_presenter;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v6 = *(v5 + 2);
    ObjectType = swift_getObjectType();
    v8 = *(v6 + 96);
    finishCopy = finish;
    selfCopy = self;
    if (v8(ObjectType, v6))
    {
      (*(v6 + 88))(ObjectType, v6);
    }

    (*(v6 + 40))(finishCopy, ObjectType, v6);
    swift_unknownObjectRelease();
  }
}

- (void)colorPickerDidChangeSelectedColor:(id)color
{
  colorCopy = color;
  selfCopy = self;
  selectedColor = [colorCopy selectedColor];
  if (selectedColor)
  {
    v6 = selectedColor;
    v7 = [objc_allocWithZone(CRLColorFill) initWithUIColor:selectedColor];
    sub_100C642F8(v7);
  }
}

@end