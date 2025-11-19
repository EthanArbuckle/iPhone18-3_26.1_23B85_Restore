@interface StackAccessoryView
- (_TtC7JournalP33_9B36C547C0EE9335F6FDEF99DF185CB318StackAccessoryView)initWithCoder:(id)a3;
- (_TtC7JournalP33_9B36C547C0EE9335F6FDEF99DF185CB318StackAccessoryView)initWithFrame:(CGRect)a3;
@end

@implementation StackAccessoryView

- (_TtC7JournalP33_9B36C547C0EE9335F6FDEF99DF185CB318StackAccessoryView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for StackAccessoryView();
  return [(StackAccessoryView *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC7JournalP33_9B36C547C0EE9335F6FDEF99DF185CB318StackAccessoryView)initWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for StackAccessoryView();
  return [(StackAccessoryView *)&v5 initWithCoder:a3];
}

@end