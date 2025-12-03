@interface StickerEffectEditorViewControllerConfigurationClientToHostAction
- (_TtC10StickerKit64StickerEffectEditorViewControllerConfigurationClientToHostAction)initWithInfo:(id)info timeout:(double)timeout forResponseOnQueue:(id)queue withHandler:(id)handler;
- (void)performActionForSceneController:(id)controller;
@end

@implementation StickerEffectEditorViewControllerConfigurationClientToHostAction

- (void)performActionForSceneController:(id)controller
{
  controllerCopy = controller;
  selfCopy = self;
  sub_19A744A20(controllerCopy);
}

- (_TtC10StickerKit64StickerEffectEditorViewControllerConfigurationClientToHostAction)initWithInfo:(id)info timeout:(double)timeout forResponseOnQueue:(id)queue withHandler:(id)handler
{
  v9 = _Block_copy(handler);
  if (v9)
  {
    v10 = swift_allocObject();
    *(v10 + 16) = v9;
    v9 = sub_19A66B5E0;
  }

  else
  {
    v10 = 0;
  }

  infoCopy = info;
  queueCopy = queue;
  return sub_19A74561C(info, queue, v9, v10, &block_descriptor_52_1, type metadata accessor for StickerEffectEditorViewControllerConfigurationClientToHostAction, timeout);
}

@end