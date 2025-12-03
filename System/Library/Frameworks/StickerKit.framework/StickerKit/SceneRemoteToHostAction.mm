@interface SceneRemoteToHostAction
- (_TtC10StickerKit23SceneRemoteToHostAction)initWithInfo:(id)info timeout:(double)timeout forResponseOnQueue:(id)queue withHandler:(id)handler;
@end

@implementation SceneRemoteToHostAction

- (_TtC10StickerKit23SceneRemoteToHostAction)initWithInfo:(id)info timeout:(double)timeout forResponseOnQueue:(id)queue withHandler:(id)handler
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
  return sub_19A716C98(info, queue, v9, v10, &block_descriptor_30, type metadata accessor for SceneRemoteToHostAction, timeout);
}

@end