@interface STKPresentationController
- (_TtC10StickerKitP33_EA33ED8DB99C4DEC95D72ADC49E80F3125STKPresentationController)init;
- (void)_boundingPathMayHaveChangedForView:(id)view relativeToBoundsOriginOnly:(BOOL)only;
- (void)presentationControllerDidDismiss:(id)dismiss;
@end

@implementation STKPresentationController

- (void)presentationControllerDidDismiss:(id)dismiss
{
  v5 = *(&self->super.isa + OBJC_IVAR____TtC10StickerKitP33_EA33ED8DB99C4DEC95D72ADC49E80F3125STKPresentationController_presentingWindow);
  if (v5)
  {
    dismissCopy = dismiss;
    self;
    if (![v5 isHidden])
    {
      sub_19A6FF95C();
    }
  }

  else
  {
    dismissCopy2 = dismiss;
    selfCopy = self;
  }

  presentedViewController = [dismiss presentedViewController];
  sub_19A6FFA9C(presentedViewController);
}

- (_TtC10StickerKitP33_EA33ED8DB99C4DEC95D72ADC49E80F3125STKPresentationController)init
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR____TtC10StickerKitP33_EA33ED8DB99C4DEC95D72ADC49E80F3125STKPresentationController_presentingViewControllers;
  *(&self->super.isa + v4) = sub_19A69D8E0(MEMORY[0x1E69E7CC0]);
  *(&self->super.isa + OBJC_IVAR____TtC10StickerKitP33_EA33ED8DB99C4DEC95D72ADC49E80F3125STKPresentationController_presentingWindow) = 0;
  *(&self->super.isa + OBJC_IVAR____TtC10StickerKitP33_EA33ED8DB99C4DEC95D72ADC49E80F3125STKPresentationController_currentViewController) = 0;
  swift_unknownObjectWeakInit();
  v6.receiver = self;
  v6.super_class = ObjectType;
  return [(STKPresentationController *)&v6 init];
}

- (void)_boundingPathMayHaveChangedForView:(id)view relativeToBoundsOriginOnly:(BOOL)only
{
  viewCopy = view;
  selfCopy = self;
  sub_19A702774(view);
}

@end