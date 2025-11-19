@interface DraggableUILabel
- (_TtC10StickerKit16DraggableUILabel)initWithFrame:(CGRect)a3;
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
- (void)touchesMoved:(id)a3 withEvent:(id)a4;
@end

@implementation DraggableUILabel

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  sub_19A5F5028(0, &qword_1EAFCCC08);
  sub_19A63D890();
  v6 = sub_19A7AB494();
  v7 = a4;
  v8 = self;
  sub_19A639B94(v6, a4);
}

- (void)touchesMoved:(id)a3 withEvent:(id)a4
{
  ObjectType = swift_getObjectType();
  sub_19A5F5028(0, &qword_1EAFCCC08);
  sub_19A63D890();
  v7 = sub_19A7AB494();
  v8 = self;
  v9 = a4;
  v10 = sub_19A7AB484();
  v13.receiver = v8;
  v13.super_class = ObjectType;
  [(DraggableUILabel *)&v13 touchesMoved:v10 withEvent:v9];

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    sub_19A63DC84(v7);
  }
}

- (_TtC10StickerKit16DraggableUILabel)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  ObjectType = swift_getObjectType();
  swift_unknownObjectWeakInit();
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC10StickerKit16DraggableUILabel_swiftUIFont) = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC10StickerKit16DraggableUILabel_fontDescriptor) = 0;
  v9 = (&self->super.super.super.super.isa + OBJC_IVAR____TtC10StickerKit16DraggableUILabel_usageSource);
  *v9 = 0;
  v9[1] = 0;
  v11.receiver = self;
  v11.super_class = ObjectType;
  return [(EmojiDraggableView *)&v11 initWithFrame:x, y, width, height];
}

@end