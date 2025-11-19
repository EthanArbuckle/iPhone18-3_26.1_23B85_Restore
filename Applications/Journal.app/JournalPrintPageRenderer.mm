@interface JournalPrintPageRenderer
- (CGRect)printableRect;
- (_TtC7Journal24JournalPrintPageRenderer)init;
@end

@implementation JournalPrintPageRenderer

- (CGRect)printableRect
{
  v11.receiver = self;
  v11.super_class = type metadata accessor for JournalPrintPageRenderer();
  v2 = v11.receiver;
  [(JournalPrintPageRenderer *)&v11 printableRect];
  v13 = CGRectInset(v12, 32.0, 32.0);
  x = v13.origin.x;
  y = v13.origin.y;
  width = v13.size.width;
  height = v13.size.height;

  v7 = x;
  v8 = y;
  v9 = width;
  v10 = height;
  result.size.height = v10;
  result.size.width = v9;
  result.origin.y = v8;
  result.origin.x = v7;
  return result;
}

- (_TtC7Journal24JournalPrintPageRenderer)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for JournalPrintPageRenderer();
  return [(JournalPrintPageRenderer *)&v3 init];
}

@end