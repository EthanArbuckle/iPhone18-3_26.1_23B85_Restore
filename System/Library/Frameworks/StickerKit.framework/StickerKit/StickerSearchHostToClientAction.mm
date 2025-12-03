@interface StickerSearchHostToClientAction
- (_TtC10StickerKit31StickerSearchHostToClientAction)initWithInfo:(id)info timeout:(double)timeout forResponseOnQueue:(id)queue withHandler:(id)handler;
- (void)performActionForHostedWindowScene:(id)scene;
@end

@implementation StickerSearchHostToClientAction

- (void)performActionForHostedWindowScene:(id)scene
{
  sceneCopy = scene;
  selfCopy = self;
  sub_19A6A9944(sceneCopy);
}

- (_TtC10StickerKit31StickerSearchHostToClientAction)initWithInfo:(id)info timeout:(double)timeout forResponseOnQueue:(id)queue withHandler:(id)handler
{
  v9 = _Block_copy(handler);
  if (v9)
  {
    v10 = swift_allocObject();
    *(v10 + 16) = v9;
    v9 = sub_19A66B2F4;
  }

  else
  {
    v10 = 0;
  }

  infoCopy = info;
  queueCopy = queue;
  return sub_19A6AA0B8(info, queue, v9, v10, &block_descriptor_10, type metadata accessor for StickerSearchHostToClientAction, timeout);
}

@end