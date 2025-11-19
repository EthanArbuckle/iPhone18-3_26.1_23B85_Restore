@interface AvatarEditorClientToHostAction
- (_TtC10StickerKit30AvatarEditorClientToHostAction)init;
- (_TtC10StickerKit30AvatarEditorClientToHostAction)initWithCoder:(id)a3;
- (_TtC10StickerKit30AvatarEditorClientToHostAction)initWithInfo:(id)a3 responder:(id)a4;
- (_TtC10StickerKit30AvatarEditorClientToHostAction)initWithInfo:(id)a3 timeout:(double)a4 forResponseOnQueue:(id)a5 withHandler:(id)a6;
- (_TtC10StickerKit30AvatarEditorClientToHostAction)initWithXPCDictionary:(id)a3;
- (void)performActionForSceneController:(id)a3;
@end

@implementation AvatarEditorClientToHostAction

- (void)performActionForSceneController:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_19A740B98(v4);
}

- (_TtC10StickerKit30AvatarEditorClientToHostAction)initWithInfo:(id)a3 responder:(id)a4
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for AvatarEditorClientToHostAction();
  return [(AvatarEditorClientToHostAction *)&v7 initWithInfo:a3 responder:a4];
}

- (_TtC10StickerKit30AvatarEditorClientToHostAction)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for AvatarEditorClientToHostAction();
  return [(AvatarEditorClientToHostAction *)&v3 init];
}

- (_TtC10StickerKit30AvatarEditorClientToHostAction)initWithXPCDictionary:(id)a3
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for AvatarEditorClientToHostAction();
  swift_unknownObjectRetain();
  v4 = [(AvatarEditorClientToHostAction *)&v6 initWithXPCDictionary:a3];
  swift_unknownObjectRelease();
  if (v4)
  {
  }

  return v4;
}

- (_TtC10StickerKit30AvatarEditorClientToHostAction)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for AvatarEditorClientToHostAction();
  v4 = a3;
  v5 = [(AvatarEditorClientToHostAction *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

- (_TtC10StickerKit30AvatarEditorClientToHostAction)initWithInfo:(id)a3 timeout:(double)a4 forResponseOnQueue:(id)a5 withHandler:(id)a6
{
  v9 = _Block_copy(a6);
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

  v11 = a3;
  v12 = a5;
  return sub_19A740F10(a3, a5, v9, v10, a4);
}

@end