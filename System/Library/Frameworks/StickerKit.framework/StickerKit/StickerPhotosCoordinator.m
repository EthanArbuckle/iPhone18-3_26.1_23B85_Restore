@interface StickerPhotosCoordinator
- (void)dealloc;
- (void)presentationControllerDidDismiss:(id)a3;
- (void)presentationControllerWillDismiss:(id)a3;
@end

@implementation StickerPhotosCoordinator

- (void)dealloc
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC10StickerKit24StickerPhotosCoordinator_picker);
  *(&self->super.isa + OBJC_IVAR____TtC10StickerKit24StickerPhotosCoordinator_picker) = 0;
  v3 = self;

  v4.receiver = v3;
  v4.super_class = type metadata accessor for StickerPhotosCoordinator();
  [(StickerPhotosCoordinator *)&v4 dealloc];
}

- (void)presentationControllerWillDismiss:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_19A6E0A68();
}

- (void)presentationControllerDidDismiss:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_19A6E0B34();
}

@end