@interface FMAnnotationMenuButton
- (CGPoint)menuAttachmentPointForConfiguration:(id)configuration;
- (_TtC6FindMy22FMAnnotationMenuButton)initWithCoder:(id)coder;
- (_TtC6FindMy22FMAnnotationMenuButton)initWithFrame:(CGRect)frame;
- (void)contextMenuInteraction:(id)interaction willEndForConfiguration:(id)configuration animator:(id)animator;
@end

@implementation FMAnnotationMenuButton

- (void)contextMenuInteraction:(id)interaction willEndForConfiguration:(id)configuration animator:(id)animator
{
  v13.receiver = self;
  v13.super_class = swift_getObjectType();
  interactionCopy = interaction;
  configurationCopy = configuration;
  v10 = v13.receiver;
  swift_unknownObjectRetain();
  [(FMAnnotationMenuButton *)&v13 contextMenuInteraction:interactionCopy willEndForConfiguration:configurationCopy animator:animator];
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

- (CGPoint)menuAttachmentPointForConfiguration:(id)configuration
{
  selfCopy = self;
  [(FMAnnotationMenuButton *)selfCopy bounds];
  MidX = CGRectGetMidX(v8);

  v5 = 0.0;
  v6 = MidX;
  result.y = v5;
  result.x = v6;
  return result;
}

- (_TtC6FindMy22FMAnnotationMenuButton)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  ObjectType = swift_getObjectType();
  v9 = (&self->super.super.super.super.super.isa + OBJC_IVAR____TtC6FindMy22FMAnnotationMenuButton_didEndInteraction);
  *v9 = 0;
  v9[1] = 0;
  v11.receiver = self;
  v11.super_class = ObjectType;
  return [(FMAnnotationMenuButton *)&v11 initWithFrame:x, y, width, height];
}

- (_TtC6FindMy22FMAnnotationMenuButton)initWithCoder:(id)coder
{
  ObjectType = swift_getObjectType();
  v6 = (&self->super.super.super.super.super.isa + OBJC_IVAR____TtC6FindMy22FMAnnotationMenuButton_didEndInteraction);
  *v6 = 0;
  v6[1] = 0;
  v10.receiver = self;
  v10.super_class = ObjectType;
  coderCopy = coder;
  v8 = [(FMAnnotationMenuButton *)&v10 initWithCoder:coderCopy];

  if (v8)
  {
  }

  return v8;
}

@end