@interface FMAnnotationMenuButton
- (CGPoint)menuAttachmentPointForConfiguration:(id)a3;
- (_TtC6FindMy22FMAnnotationMenuButton)initWithCoder:(id)a3;
- (_TtC6FindMy22FMAnnotationMenuButton)initWithFrame:(CGRect)a3;
- (void)contextMenuInteraction:(id)a3 willEndForConfiguration:(id)a4 animator:(id)a5;
@end

@implementation FMAnnotationMenuButton

- (void)contextMenuInteraction:(id)a3 willEndForConfiguration:(id)a4 animator:(id)a5
{
  v13.receiver = self;
  v13.super_class = swift_getObjectType();
  v8 = a3;
  v9 = a4;
  v10 = v13.receiver;
  swift_unknownObjectRetain();
  [(FMAnnotationMenuButton *)&v13 contextMenuInteraction:v8 willEndForConfiguration:v9 animator:a5];
  v11 = *&v10[OBJC_IVAR____TtC6FindMy22FMAnnotationMenuButton_didEndInteraction];
  if (v11)
  {

    v11(v12);

    swift_unknownObjectRelease();
    sub_10001835C(v11);
  }

  else
  {

    swift_unknownObjectRelease();
  }
}

- (CGPoint)menuAttachmentPointForConfiguration:(id)a3
{
  v3 = self;
  [(FMAnnotationMenuButton *)v3 bounds];
  MidX = CGRectGetMidX(v8);

  v5 = 0.0;
  v6 = MidX;
  result.y = v5;
  result.x = v6;
  return result;
}

- (_TtC6FindMy22FMAnnotationMenuButton)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  ObjectType = swift_getObjectType();
  v9 = (&self->super.super.super.super.super.isa + OBJC_IVAR____TtC6FindMy22FMAnnotationMenuButton_didEndInteraction);
  *v9 = 0;
  v9[1] = 0;
  v11.receiver = self;
  v11.super_class = ObjectType;
  return [(FMAnnotationMenuButton *)&v11 initWithFrame:x, y, width, height];
}

- (_TtC6FindMy22FMAnnotationMenuButton)initWithCoder:(id)a3
{
  ObjectType = swift_getObjectType();
  v6 = (&self->super.super.super.super.super.isa + OBJC_IVAR____TtC6FindMy22FMAnnotationMenuButton_didEndInteraction);
  *v6 = 0;
  v6[1] = 0;
  v10.receiver = self;
  v10.super_class = ObjectType;
  v7 = a3;
  v8 = [(FMAnnotationMenuButton *)&v10 initWithCoder:v7];

  if (v8)
  {
  }

  return v8;
}

@end