@interface StackAccessoryView
- (_TtC7JournalP33_9B36C547C0EE9335F6FDEF99DF185CB318StackAccessoryView)initWithCoder:(id)coder;
- (_TtC7JournalP33_9B36C547C0EE9335F6FDEF99DF185CB318StackAccessoryView)initWithFrame:(CGRect)frame;
@end

@implementation StackAccessoryView

- (_TtC7JournalP33_9B36C547C0EE9335F6FDEF99DF185CB318StackAccessoryView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for StackAccessoryView();
  return [(StackAccessoryView *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC7JournalP33_9B36C547C0EE9335F6FDEF99DF185CB318StackAccessoryView)initWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for StackAccessoryView();
  return [(StackAccessoryView *)&v5 initWithCoder:coder];
}

@end