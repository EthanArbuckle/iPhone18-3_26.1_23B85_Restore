@interface AvatarEditorClientToHostAction
- (_TtC10StickerKit30AvatarEditorClientToHostAction)init;
- (_TtC10StickerKit30AvatarEditorClientToHostAction)initWithCoder:(id)coder;
- (_TtC10StickerKit30AvatarEditorClientToHostAction)initWithInfo:(id)info responder:(id)responder;
- (_TtC10StickerKit30AvatarEditorClientToHostAction)initWithInfo:(id)info timeout:(double)timeout forResponseOnQueue:(id)queue withHandler:(id)handler;
- (_TtC10StickerKit30AvatarEditorClientToHostAction)initWithXPCDictionary:(id)dictionary;
- (void)performActionForSceneController:(id)controller;
@end

@implementation AvatarEditorClientToHostAction

- (void)performActionForSceneController:(id)controller
{
  controllerCopy = controller;
  selfCopy = self;
  sub_19A740B98(controllerCopy);
}

- (_TtC10StickerKit30AvatarEditorClientToHostAction)initWithInfo:(id)info responder:(id)responder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for AvatarEditorClientToHostAction();
  return [(AvatarEditorClientToHostAction *)&v7 initWithInfo:info responder:responder];
}

- (_TtC10StickerKit30AvatarEditorClientToHostAction)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for AvatarEditorClientToHostAction();
  return [(AvatarEditorClientToHostAction *)&v3 init];
}

- (_TtC10StickerKit30AvatarEditorClientToHostAction)initWithXPCDictionary:(id)dictionary
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for AvatarEditorClientToHostAction();
  swift_unknownObjectRetain();
  v4 = [(AvatarEditorClientToHostAction *)&v6 initWithXPCDictionary:dictionary];
  swift_unknownObjectRelease();
  if (v4)
  {
  }

  return v4;
}

- (_TtC10StickerKit30AvatarEditorClientToHostAction)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for AvatarEditorClientToHostAction();
  coderCopy = coder;
  v5 = [(AvatarEditorClientToHostAction *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

- (_TtC10StickerKit30AvatarEditorClientToHostAction)initWithInfo:(id)info timeout:(double)timeout forResponseOnQueue:(id)queue withHandler:(id)handler
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
  return sub_19A740F10(info, queue, v9, v10, timeout);
}

@end