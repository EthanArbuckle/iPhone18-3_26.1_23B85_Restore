@interface CRLiOSMiniFormatterTextBuilder
- (void)fontPickerViewControllerDidCancel:(id)a3;
- (void)fontPickerViewControllerDidPickFont:(id)a3;
@end

@implementation CRLiOSMiniFormatterTextBuilder

- (void)fontPickerViewControllerDidPickFont:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100612218(v4);
}

- (void)fontPickerViewControllerDidCancel:(id)a3
{
  v5 = self + OBJC_IVAR____TtC8Freeform26CRLiOSMiniFormatterBuilder_presenter;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v6 = *(v5 + 2);
    v7 = a3;
    v9 = self;
    [v7 dismissViewControllerAnimated:1 completion:0];
    ObjectType = swift_getObjectType();
    (*(v6 + 40))(v7, ObjectType, v6);
    swift_unknownObjectRelease();
  }
}

@end