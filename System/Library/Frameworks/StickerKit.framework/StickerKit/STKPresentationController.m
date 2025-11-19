@interface STKPresentationController
- (_TtC10StickerKitP33_EA33ED8DB99C4DEC95D72ADC49E80F3125STKPresentationController)init;
- (void)_boundingPathMayHaveChangedForView:(id)a3 relativeToBoundsOriginOnly:(BOOL)a4;
- (void)presentationControllerDidDismiss:(id)a3;
@end

@implementation STKPresentationController

- (void)presentationControllerDidDismiss:(id)a3
{
  v5 = *(&self->super.isa + OBJC_IVAR____TtC10StickerKitP33_EA33ED8DB99C4DEC95D72ADC49E80F3125STKPresentationController_presentingWindow);
  if (v5)
  {
    v6 = a3;
    self;
    if (![v5 isHidden])
    {
      sub_19A6FF95C();
    }
  }

  else
  {
    v7 = a3;
    v8 = self;
  }

  v9 = [a3 presentedViewController];
  sub_19A6FFA9C(v9);
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

- (void)_boundingPathMayHaveChangedForView:(id)a3 relativeToBoundsOriginOnly:(BOOL)a4
{
  v6 = a3;
  v7 = self;
  sub_19A702774(a3);
}

@end