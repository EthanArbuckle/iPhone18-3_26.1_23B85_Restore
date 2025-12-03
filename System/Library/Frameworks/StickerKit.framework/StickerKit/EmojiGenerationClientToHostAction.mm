@interface EmojiGenerationClientToHostAction
- (_TtC10StickerKit33EmojiGenerationClientToHostAction)initWithInfo:(id)info timeout:(double)timeout forResponseOnQueue:(id)queue withHandler:(id)handler;
- (void)performActionForSceneController:(id)controller;
@end

@implementation EmojiGenerationClientToHostAction

- (void)performActionForSceneController:(id)controller
{
  controllerCopy = controller;
  selfCopy = self;
  sub_19A6E8310(controllerCopy);
}

- (_TtC10StickerKit33EmojiGenerationClientToHostAction)initWithInfo:(id)info timeout:(double)timeout forResponseOnQueue:(id)queue withHandler:(id)handler
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
  return EmojiGenerationClientToHostAction.init(info:timeout:forResponseOn:withHandler:)(info, queue, v9, v10, timeout);
}

@end