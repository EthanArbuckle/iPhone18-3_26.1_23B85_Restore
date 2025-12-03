@interface DraggableUILabel
- (_TtC10StickerKit16DraggableUILabel)initWithFrame:(CGRect)frame;
- (void)touchesBegan:(id)began withEvent:(id)event;
- (void)touchesMoved:(id)moved withEvent:(id)event;
@end

@implementation DraggableUILabel

- (void)touchesBegan:(id)began withEvent:(id)event
{
  sub_19A5F5028(0, &qword_1EAFCCC08);
  sub_19A63D890();
  v6 = sub_19A7AB494();
  eventCopy = event;
  selfCopy = self;
  sub_19A639B94(v6, event);
}

- (void)touchesMoved:(id)moved withEvent:(id)event
{
  ObjectType = swift_getObjectType();
  sub_19A5F5028(0, &qword_1EAFCCC08);
  sub_19A63D890();
  v7 = sub_19A7AB494();
  selfCopy = self;
  eventCopy = event;
  v10 = sub_19A7AB484();
  v13.receiver = selfCopy;
  v13.super_class = ObjectType;
  [(DraggableUILabel *)&v13 touchesMoved:v10 withEvent:eventCopy];

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    sub_19A63DC84(v7);
  }
}

- (_TtC10StickerKit16DraggableUILabel)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
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