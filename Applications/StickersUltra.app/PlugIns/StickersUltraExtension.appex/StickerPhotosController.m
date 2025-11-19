@interface StickerPhotosController
- (void)dealloc;
- (void)presentationControllerDidDismiss:(id)a3;
- (void)presentationControllerWillDismiss:(id)a3;
@end

@implementation StickerPhotosController

- (void)dealloc
{
  v3 = OBJC_IVAR____TtC22StickersUltraExtension23StickerPhotosController_picker;
  swift_beginAccess();
  v4 = *(&self->super.isa + v3);
  *(&self->super.isa + v3) = 0;
  v5 = self;

  v6.receiver = v5;
  v6.super_class = type metadata accessor for StickerPhotosController();
  [(StickerPhotosController *)&v6 dealloc];
}

- (void)presentationControllerWillDismiss:(id)a3
{
  v3 = self;
  sub_10003BC1C();
}

- (void)presentationControllerDidDismiss:(id)a3
{
  v3 = *((swift_isaMask & self->super.isa) + 0x78);
  v7 = self;
  if (v3())
  {
    v5 = v4;
    ObjectType = swift_getObjectType();
    (*(v5 + 8))(v7, ObjectType, v5);
    swift_unknownObjectRelease();
  }
}

@end