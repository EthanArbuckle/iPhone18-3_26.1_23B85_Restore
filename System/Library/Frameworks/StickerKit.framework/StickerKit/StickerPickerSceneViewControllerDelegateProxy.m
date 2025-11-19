@interface StickerPickerSceneViewControllerDelegateProxy
- (_TtC10StickerKitP33_FA83C3E8A3D22FA88BB215AEFD764D8A45StickerPickerSceneViewControllerDelegateProxy)init;
- (void)stickerPickerSceneDidRequestDismissal:(id)a3;
@end

@implementation StickerPickerSceneViewControllerDelegateProxy

- (void)stickerPickerSceneDidRequestDismissal:(id)a3
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    [Strong dismissViewControllerAnimated:1 completion:0];
  }
}

- (_TtC10StickerKitP33_FA83C3E8A3D22FA88BB215AEFD764D8A45StickerPickerSceneViewControllerDelegateProxy)init
{
  swift_unknownObjectWeakInit();
  v4.receiver = self;
  v4.super_class = type metadata accessor for StickerPickerSceneViewControllerDelegateProxy();
  return [(StickerPickerSceneViewControllerDelegateProxy *)&v4 init];
}

@end