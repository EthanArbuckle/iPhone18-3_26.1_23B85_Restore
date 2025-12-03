@interface StickerPhotosCoordinator
- (void)dealloc;
- (void)presentationControllerDidDismiss:(id)dismiss;
- (void)presentationControllerWillDismiss:(id)dismiss;
@end

@implementation StickerPhotosCoordinator

- (void)dealloc
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC10StickerKit24StickerPhotosCoordinator_picker);
  *(&self->super.isa + OBJC_IVAR____TtC10StickerKit24StickerPhotosCoordinator_picker) = 0;
  selfCopy = self;

  v4.receiver = selfCopy;
  v4.super_class = type metadata accessor for StickerPhotosCoordinator();
  [(StickerPhotosCoordinator *)&v4 dealloc];
}

- (void)presentationControllerWillDismiss:(id)dismiss
{
  dismissCopy = dismiss;
  selfCopy = self;
  sub_19A6E0A68();
}

- (void)presentationControllerDidDismiss:(id)dismiss
{
  dismissCopy = dismiss;
  selfCopy = self;
  sub_19A6E0B34();
}

@end