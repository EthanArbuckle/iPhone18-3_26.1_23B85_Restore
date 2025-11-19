@interface CRLiOSMiniFormatterColorPaletteBuilder
- (void)colorPickerDidChangeSelectedColor:(id)a3;
- (void)colorPickerViewController:(id)a3 didSelectColor:(id)a4 continuously:(BOOL)a5;
- (void)colorPickerViewControllerDidFinish:(id)a3;
@end

@implementation CRLiOSMiniFormatterColorPaletteBuilder

- (void)colorPickerViewController:(id)a3 didSelectColor:(id)a4 continuously:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  v10 = self;
  sub_100C67FC4(v9, a5);
}

- (void)colorPickerViewControllerDidFinish:(id)a3
{
  v5 = self + OBJC_IVAR____TtC8Freeform26CRLiOSMiniFormatterBuilder_presenter;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v6 = *(v5 + 2);
    ObjectType = swift_getObjectType();
    v8 = *(v6 + 96);
    v9 = a3;
    v10 = self;
    if (v8(ObjectType, v6))
    {
      (*(v6 + 88))(ObjectType, v6);
    }

    (*(v6 + 40))(v9, ObjectType, v6);
    swift_unknownObjectRelease();
  }
}

- (void)colorPickerDidChangeSelectedColor:(id)a3
{
  v4 = a3;
  v8 = self;
  v5 = [v4 selectedColor];
  if (v5)
  {
    v6 = v5;
    v7 = [objc_allocWithZone(CRLColorFill) initWithUIColor:v5];
    sub_100C642F8(v7);
  }
}

@end