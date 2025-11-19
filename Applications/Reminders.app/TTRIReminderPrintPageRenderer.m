@interface TTRIReminderPrintPageRenderer
- (_TtC9Reminders29TTRIReminderPrintPageRenderer)init;
- (int64_t)numberOfPages;
- (void)drawContentForPageAtIndex:(int64_t)a3 inRect:(CGRect)a4;
- (void)drawFooterForPageAtIndex:(int64_t)a3 inRect:(CGRect)a4;
- (void)prepareForDrawingPages:(_NSRange)a3;
@end

@implementation TTRIReminderPrintPageRenderer

- (int64_t)numberOfPages
{
  v2 = self;
  v3 = sub_1005B8B88();

  return v3;
}

- (void)prepareForDrawingPages:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  ObjectType = swift_getObjectType();
  v7 = self + OBJC_IVAR____TtC9Reminders29TTRIReminderPrintPageRenderer_pageRange;
  *v7 = location;
  *(v7 + 1) = length;
  v7[16] = 0;
  v8.receiver = self;
  v8.super_class = ObjectType;
  [(TTRIReminderPrintPageRenderer *)&v8 prepareForDrawingPages:location, length];
}

- (void)drawContentForPageAtIndex:(int64_t)a3 inRect:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v9.receiver = self;
  v9.super_class = swift_getObjectType();
  [(TTRIReminderPrintPageRenderer *)&v9 drawContentForPageAtIndex:a3 inRect:x, y, width, height];
}

- (void)drawFooterForPageAtIndex:(int64_t)a3 inRect:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v9 = self;
  sub_1005B8FD4(a3, x, y, width, height);
}

- (_TtC9Reminders29TTRIReminderPrintPageRenderer)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end