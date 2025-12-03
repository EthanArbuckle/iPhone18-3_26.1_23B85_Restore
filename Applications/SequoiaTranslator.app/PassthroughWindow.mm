@interface PassthroughWindow
- (_TtC17SequoiaTranslator17PassthroughWindow)initWithCoder:(id)coder;
- (_TtC17SequoiaTranslator17PassthroughWindow)initWithFrame:(CGRect)frame;
- (_TtC17SequoiaTranslator17PassthroughWindow)initWithWindowScene:(id)scene;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
@end

@implementation PassthroughWindow

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  eventCopy = event;
  selfCopy = self;
  v10 = sub_1001A0B0C(event, x, y);

  return v10;
}

- (_TtC17SequoiaTranslator17PassthroughWindow)initWithWindowScene:(id)scene
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for PassthroughWindow();
  return [(PassthroughWindow *)&v5 initWithWindowScene:scene];
}

- (_TtC17SequoiaTranslator17PassthroughWindow)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for PassthroughWindow();
  return [(PassthroughWindow *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC17SequoiaTranslator17PassthroughWindow)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for PassthroughWindow();
  coderCopy = coder;
  v5 = [(PassthroughWindow *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end