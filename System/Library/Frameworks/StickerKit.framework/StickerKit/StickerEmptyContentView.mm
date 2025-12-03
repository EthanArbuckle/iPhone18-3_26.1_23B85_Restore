@interface StickerEmptyContentView
- (_TtC10StickerKit23StickerEmptyContentView)initWithCoder:(id)coder;
- (_TtC10StickerKit23StickerEmptyContentView)initWithFrame:(CGRect)frame;
@end

@implementation StickerEmptyContentView

- (_TtC10StickerKit23StickerEmptyContentView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  ObjectType = swift_getObjectType();
  *(&self->super.super.super.super._responderFlags + OBJC_IVAR____TtC10StickerKit23StickerEmptyContentView_delegate) = 0;
  swift_unknownObjectWeakInit();
  v13.receiver = self;
  v13.super_class = ObjectType;
  height = [(StickerEmptyContentView *)&v13 initWithFrame:x, y, width, height];
  v12[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCE9F8);
  v12[4] = sub_19A623714(&qword_1EAFCEA00, &qword_1EAFCE9F8);
  __swift_allocate_boxed_opaque_existential_1(v12);
  v9 = height;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCEA08);
  sub_19A623714(&qword_1EAFCEA10, &qword_1EAFCEA08);
  sub_19A7A9DE4();
  MEMORY[0x19A905C60](v12);

  return v9;
}

- (_TtC10StickerKit23StickerEmptyContentView)initWithCoder:(id)coder
{
  *(&self->super.super.super.super._responderFlags + OBJC_IVAR____TtC10StickerKit23StickerEmptyContentView_delegate) = 0;
  swift_unknownObjectWeakInit();
  result = sub_19A7ABE34();
  __break(1u);
  return result;
}

@end