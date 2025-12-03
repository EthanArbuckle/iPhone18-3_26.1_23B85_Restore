@interface TTRIReminderPrintPageRenderer
- (_TtC9Reminders29TTRIReminderPrintPageRenderer)init;
- (int64_t)numberOfPages;
- (void)drawContentForPageAtIndex:(int64_t)index inRect:(CGRect)rect;
- (void)drawFooterForPageAtIndex:(int64_t)index inRect:(CGRect)rect;
- (void)prepareForDrawingPages:(_NSRange)pages;
@end

@implementation TTRIReminderPrintPageRenderer

- (int64_t)numberOfPages
{
  selfCopy = self;
  v3 = sub_1005B8B88();

  return v3;
}

- (void)prepareForDrawingPages:(_NSRange)pages
{
  length = pages.length;
  location = pages.location;
  ObjectType = swift_getObjectType();
  v7 = self + OBJC_IVAR____TtC9Reminders29TTRIReminderPrintPageRenderer_pageRange;
  *v7 = location;
  *(v7 + 1) = length;
  v7[16] = 0;
  v8.receiver = self;
  v8.super_class = ObjectType;
  [(TTRIReminderPrintPageRenderer *)&v8 prepareForDrawingPages:location, length];
}

- (void)drawContentForPageAtIndex:(int64_t)index inRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v9.receiver = self;
  v9.super_class = swift_getObjectType();
  [(TTRIReminderPrintPageRenderer *)&v9 drawContentForPageAtIndex:index inRect:x, y, width, height];
}

- (void)drawFooterForPageAtIndex:(int64_t)index inRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  selfCopy = self;
  sub_1005B8FD4(index, x, y, width, height);
}

- (_TtC9Reminders29TTRIReminderPrintPageRenderer)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end