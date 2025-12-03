@interface CategoryClientToHostAction
- (_TtC10StickerKit26CategoryClientToHostAction)init;
- (_TtC10StickerKit26CategoryClientToHostAction)initWithCoder:(id)coder;
- (_TtC10StickerKit26CategoryClientToHostAction)initWithInfo:(id)info responder:(id)responder;
- (_TtC10StickerKit26CategoryClientToHostAction)initWithInfo:(id)info timeout:(double)timeout forResponseOnQueue:(id)queue withHandler:(id)handler;
- (_TtC10StickerKit26CategoryClientToHostAction)initWithXPCDictionary:(id)dictionary;
- (void)performActionForSceneController:(id)controller;
@end

@implementation CategoryClientToHostAction

- (void)performActionForSceneController:(id)controller
{
  controllerCopy = controller;
  selfCopy = self;
  sub_19A6A283C(controllerCopy);
}

- (_TtC10StickerKit26CategoryClientToHostAction)initWithInfo:(id)info responder:(id)responder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for CategoryClientToHostAction();
  return [(CategoryClientToHostAction *)&v7 initWithInfo:info responder:responder];
}

- (_TtC10StickerKit26CategoryClientToHostAction)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for CategoryClientToHostAction();
  return [(CategoryClientToHostAction *)&v3 init];
}

- (_TtC10StickerKit26CategoryClientToHostAction)initWithXPCDictionary:(id)dictionary
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for CategoryClientToHostAction();
  swift_unknownObjectRetain();
  v4 = [(CategoryClientToHostAction *)&v6 initWithXPCDictionary:dictionary];
  swift_unknownObjectRelease();
  if (v4)
  {
  }

  return v4;
}

- (_TtC10StickerKit26CategoryClientToHostAction)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for CategoryClientToHostAction();
  coderCopy = coder;
  v5 = [(CategoryClientToHostAction *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

- (_TtC10StickerKit26CategoryClientToHostAction)initWithInfo:(id)info timeout:(double)timeout forResponseOnQueue:(id)queue withHandler:(id)handler
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
  return sub_19A6A2C8C(info, queue, v9, v10, timeout);
}

@end