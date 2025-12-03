@interface StickerPhotosControllerClientToHostAction
- (_TtC10StickerKit41StickerPhotosControllerClientToHostAction)initWithInfo:(id)info timeout:(double)timeout forResponseOnQueue:(id)queue withHandler:(id)handler;
- (void)performActionForSceneController:(id)controller;
@end

@implementation StickerPhotosControllerClientToHostAction

- (void)performActionForSceneController:(id)controller
{
  controllerCopy = controller;
  selfCopy = self;
  sub_19A66A71C(controllerCopy);
}

- (_TtC10StickerKit41StickerPhotosControllerClientToHostAction)initWithInfo:(id)info timeout:(double)timeout forResponseOnQueue:(id)queue withHandler:(id)handler
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
  return sub_19A66AF68(info, queue, v9, v10, &block_descriptor_24, type metadata accessor for StickerPhotosControllerClientToHostAction, timeout);
}

@end