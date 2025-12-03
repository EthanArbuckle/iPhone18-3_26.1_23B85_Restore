@interface ContactsButtonDrawing
- (CGSize)drawingSize;
- (_TtC24ContactsButtonXPCService21ContactsButtonDrawing)init;
- (void)drawInContext:(CGContext *)context atPoint:(CGPoint)point;
@end

@implementation ContactsButtonDrawing

- (CGSize)drawingSize
{
  v3 = OBJC_IVAR____TtC24ContactsButtonXPCService21ContactsButtonDrawing_tag;
  v4 = (*(&self->super.isa + OBJC_IVAR____TtC24ContactsButtonXPCService21ContactsButtonDrawing_tag) + OBJC_IVAR____TtC24ContactsButtonXPCService21ContactsButtonSlotTag_frame);
  v5 = *v4;
  v6 = v4[1];
  v7 = v4[2];
  v8 = v4[3];
  selfCopy = self;
  v18.origin.x = v5;
  v18.origin.y = v6;
  v18.size.width = v7;
  v18.size.height = v8;
  Width = CGRectGetWidth(v18);
  Height = CGRectGetHeight(*(*(&self->super.isa + v3) + OBJC_IVAR____TtC24ContactsButtonXPCService21ContactsButtonSlotTag_frame));

  v12.n128_f64[0] = Width;
  v13.n128_f64[0] = Height;

  nullsub_2(v12, v13);
  result.height = v15;
  result.width = v14;
  return result;
}

- (void)drawInContext:(CGContext *)context atPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  contextCopy = context;
  selfCopy = self;
  sub_10000DE94(contextCopy, x, y);
}

- (_TtC24ContactsButtonXPCService21ContactsButtonDrawing)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end