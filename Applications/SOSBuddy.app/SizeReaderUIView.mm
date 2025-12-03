@interface SizeReaderUIView
- (CGRect)frame;
- (_TtC8SOSBuddy16SizeReaderUIView)initWithCoder:(id)coder;
- (_TtC8SOSBuddy16SizeReaderUIView)initWithFrame:(CGRect)frame;
- (void)setFrame:(CGRect)frame;
@end

@implementation SizeReaderUIView

- (_TtC8SOSBuddy16SizeReaderUIView)initWithCoder:(id)coder
{
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (CGRect)frame
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for SizeReaderUIView();
  [(SizeReaderUIView *)&v6 frame];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (void)setFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for SizeReaderUIView();
  v7 = v8.receiver;
  [(SizeReaderUIView *)&v8 setFrame:x, y, width, height];
  sub_10014E364();
}

- (_TtC8SOSBuddy16SizeReaderUIView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end