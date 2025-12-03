@interface StickerSearchClientToHostAction
- (_TtC10StickerKit31StickerSearchClientToHostAction)initWithInfo:(id)info timeout:(double)timeout forResponseOnQueue:(id)queue withHandler:(id)handler;
- (void)performActionForSceneController:(id)controller;
@end

@implementation StickerSearchClientToHostAction

- (void)performActionForSceneController:(id)controller
{
  controllerCopy = controller;
  selfCopy = self;
  sub_19A6A9390(controllerCopy);
}

- (_TtC10StickerKit31StickerSearchClientToHostAction)initWithInfo:(id)info timeout:(double)timeout forResponseOnQueue:(id)queue withHandler:(id)handler
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
  return sub_19A6AA0B8(info, queue, v9, v10, &block_descriptor_33, type metadata accessor for StickerSearchClientToHostAction, timeout);
}

@end