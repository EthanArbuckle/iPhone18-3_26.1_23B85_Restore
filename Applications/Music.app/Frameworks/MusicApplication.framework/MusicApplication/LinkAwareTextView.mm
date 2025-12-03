@interface LinkAwareTextView
- (_TtC16MusicApplicationP33_01797031205E8C86105A2FFED1C5EC0917LinkAwareTextView)initWithCoder:(id)coder;
- (_TtC16MusicApplicationP33_01797031205E8C86105A2FFED1C5EC0917LinkAwareTextView)initWithFrame:(CGRect)frame textContainer:(id)container;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
@end

@implementation LinkAwareTextView

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  eventCopy = event;
  selfCopy = self;
  v9 = sub_4D282C(x, y);

  return v9;
}

- (_TtC16MusicApplicationP33_01797031205E8C86105A2FFED1C5EC0917LinkAwareTextView)initWithFrame:(CGRect)frame textContainer:(id)container
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v10.receiver = self;
  v10.super_class = type metadata accessor for LinkAwareTextView();
  return [(LinkAwareTextView *)&v10 initWithFrame:container textContainer:x, y, width, height];
}

- (_TtC16MusicApplicationP33_01797031205E8C86105A2FFED1C5EC0917LinkAwareTextView)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for LinkAwareTextView();
  coderCopy = coder;
  v5 = [(LinkAwareTextView *)&v7 initWithCoder:coderCopy];

  return v5;
}

@end