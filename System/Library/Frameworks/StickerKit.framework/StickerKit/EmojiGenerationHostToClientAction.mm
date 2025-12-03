@interface EmojiGenerationHostToClientAction
- (_TtC10StickerKit33EmojiGenerationHostToClientAction)initWithInfo:(id)info timeout:(double)timeout forResponseOnQueue:(id)queue withHandler:(id)handler;
- (void)performActionForHostedWindowScene:(id)scene;
@end

@implementation EmojiGenerationHostToClientAction

- (void)performActionForHostedWindowScene:(id)scene
{
  sceneCopy = scene;
  selfCopy = self;
  sub_19A6E91A4(sceneCopy);
}

- (_TtC10StickerKit33EmojiGenerationHostToClientAction)initWithInfo:(id)info timeout:(double)timeout forResponseOnQueue:(id)queue withHandler:(id)handler
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
  return sub_19A6E9D98(info, queue, v9, v10, &block_descriptor_22, type metadata accessor for EmojiGenerationHostToClientAction, timeout);
}

@end