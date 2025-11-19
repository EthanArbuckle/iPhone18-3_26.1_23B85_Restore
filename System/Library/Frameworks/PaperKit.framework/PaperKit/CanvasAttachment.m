@interface CanvasAttachment
- (_TtC8PaperKit16CanvasAttachment)init;
- (void)setBoundingPath:(const CGPath *)a3;
@end

@implementation CanvasAttachment

- (void)setBoundingPath:(const CGPath *)a3
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC8PaperKit16CanvasAttachment_boundingPath);
  *(&self->super.isa + OBJC_IVAR____TtC8PaperKit16CanvasAttachment_boundingPath) = a3;
  v3 = a3;
}

- (_TtC8PaperKit16CanvasAttachment)init
{
  ObjectType = swift_getObjectType();
  *(&self->super.isa + OBJC_IVAR____TtC8PaperKit16CanvasAttachment_type) = 0;
  v4 = OBJC_IVAR____TtC8PaperKit16CanvasAttachment_boundingPath;
  *(&self->super.isa + v4) = CGPathCreateWithRect(*MEMORY[0x1E695F050], 0);
  v6.receiver = self;
  v6.super_class = ObjectType;
  return [(CanvasAttachment *)&v6 init];
}

@end