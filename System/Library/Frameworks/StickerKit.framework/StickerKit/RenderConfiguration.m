@interface RenderConfiguration
- (BOOL)isEqual:(id)a3;
- (_TtC10StickerKit19RenderConfiguration)init;
- (_TtC10StickerKit19RenderConfiguration)initWithBSXPCCoder:(id)a3;
- (void)encodeWithBSXPCCoder:(id)a3;
@end

@implementation RenderConfiguration

- (_TtC10StickerKit19RenderConfiguration)initWithBSXPCCoder:(id)a3
{
  ObjectType = swift_getObjectType();
  swift_unknownObjectRetain();
  v6 = sub_19A7AAFE4();
  v7 = [a3 decodeBoolForKey_];

  *(&self->super.isa + OBJC_IVAR____TtC10StickerKit19RenderConfiguration_animatedBackground) = v7;
  v10.receiver = self;
  v10.super_class = ObjectType;
  v8 = [(RenderConfiguration *)&v10 init];
  swift_unknownObjectRelease();
  return v8;
}

- (void)encodeWithBSXPCCoder:(id)a3
{
  v5 = *(&self->super.isa + OBJC_IVAR____TtC10StickerKit19RenderConfiguration_animatedBackground);
  swift_unknownObjectRetain();
  v7 = self;
  v6 = sub_19A7AAFE4();
  [a3 encodeBool:v5 forKey:v6];

  swift_unknownObjectRelease();
}

- (BOOL)isEqual:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    sub_19A7ABB44();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    v5 = self;
  }

  v6 = sub_19A6A2FEC(v8);

  sub_19A612E20(v8);
  return v6 & 1;
}

- (_TtC10StickerKit19RenderConfiguration)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end