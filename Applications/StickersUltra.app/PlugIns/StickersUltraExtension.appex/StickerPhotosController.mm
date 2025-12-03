@interface StickerPhotosController
- (void)dealloc;
- (void)presentationControllerDidDismiss:(id)dismiss;
- (void)presentationControllerWillDismiss:(id)dismiss;
@end

@implementation StickerPhotosController

- (void)dealloc
{
  v3 = OBJC_IVAR____TtC22StickersUltraExtension23StickerPhotosController_picker;
  swift_beginAccess();
  v4 = *(&self->super.isa + v3);
  *(&self->super.isa + v3) = 0;
  selfCopy = self;

  v6.receiver = selfCopy;
  v6.super_class = type metadata accessor for StickerPhotosController();
  [(StickerPhotosController *)&v6 dealloc];
}

- (void)presentationControllerWillDismiss:(id)dismiss
{
  selfCopy = self;
  sub_10003BC1C();
}

- (void)presentationControllerDidDismiss:(id)dismiss
{
  v3 = *((swift_isaMask & self->super.isa) + 0x78);
  selfCopy = self;
  if (v3())
  {
    v5 = v4;
    ObjectType = swift_getObjectType();
    (*(v5 + 8))(selfCopy, ObjectType, v5);
    swift_unknownObjectRelease();
  }
}

@end