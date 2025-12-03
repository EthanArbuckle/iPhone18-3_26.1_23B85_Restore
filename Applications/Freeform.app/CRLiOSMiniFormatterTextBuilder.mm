@interface CRLiOSMiniFormatterTextBuilder
- (void)fontPickerViewControllerDidCancel:(id)cancel;
- (void)fontPickerViewControllerDidPickFont:(id)font;
@end

@implementation CRLiOSMiniFormatterTextBuilder

- (void)fontPickerViewControllerDidPickFont:(id)font
{
  fontCopy = font;
  selfCopy = self;
  sub_100612218(fontCopy);
}

- (void)fontPickerViewControllerDidCancel:(id)cancel
{
  v5 = self + OBJC_IVAR____TtC8Freeform26CRLiOSMiniFormatterBuilder_presenter;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v6 = *(v5 + 2);
    cancelCopy = cancel;
    selfCopy = self;
    [cancelCopy dismissViewControllerAnimated:1 completion:0];
    ObjectType = swift_getObjectType();
    (*(v6 + 40))(cancelCopy, ObjectType, v6);
    swift_unknownObjectRelease();
  }
}

@end