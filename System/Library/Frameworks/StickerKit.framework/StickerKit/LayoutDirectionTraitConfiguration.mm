@interface LayoutDirectionTraitConfiguration
- (BOOL)isEqual:(id)equal;
- (_TtC10StickerKit33LayoutDirectionTraitConfiguration)init;
- (_TtC10StickerKit33LayoutDirectionTraitConfiguration)initWithBSXPCCoder:(id)coder;
- (void)encodeWithBSXPCCoder:(id)coder;
@end

@implementation LayoutDirectionTraitConfiguration

- (_TtC10StickerKit33LayoutDirectionTraitConfiguration)initWithBSXPCCoder:(id)coder
{
  ObjectType = swift_getObjectType();
  v6 = OBJC_IVAR____TtC10StickerKit33LayoutDirectionTraitConfiguration_layoutDirection;
  *(&self->super.isa + OBJC_IVAR____TtC10StickerKit33LayoutDirectionTraitConfiguration_layoutDirection) = -1;
  swift_unknownObjectRetain();
  v7 = sub_19A7AAFE4();
  decodeInt64ForKey_ = [coder decodeInt64ForKey_];

  swift_beginAccess();
  *(&self->super.isa + v6) = decodeInt64ForKey_;
  v11.receiver = self;
  v11.super_class = ObjectType;
  v9 = [(LayoutDirectionTraitConfiguration *)&v11 init];
  swift_unknownObjectRelease();
  return v9;
}

- (void)encodeWithBSXPCCoder:(id)coder
{
  v5 = OBJC_IVAR____TtC10StickerKit33LayoutDirectionTraitConfiguration_layoutDirection;
  swift_beginAccess();
  v6 = *(&self->super.isa + v5);
  swift_unknownObjectRetain();
  selfCopy = self;
  v8 = sub_19A7AAFE4();
  [coder encodeInt64:v6 forKey:v8];

  swift_unknownObjectRelease();
}

- (BOOL)isEqual:(id)equal
{
  if (equal)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_19A7ABB44();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    selfCopy2 = self;
  }

  v6 = LayoutDirectionTraitConfiguration.isEqual(_:)(v8);

  sub_19A612E20(v8);
  return v6;
}

- (_TtC10StickerKit33LayoutDirectionTraitConfiguration)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end