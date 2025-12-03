@interface BaseView
- (_TtC11Diagnostics8BaseView)initWithCoder:(id)coder;
- (_TtC11Diagnostics8BaseView)initWithFrame:(CGRect)frame;
@end

@implementation BaseView

- (_TtC11Diagnostics8BaseView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v14.receiver = self;
  v14.super_class = type metadata accessor for BaseView();
  height = [(BaseView *)&v14 initWithFrame:x, y, width, height];
  v8 = *((swift_isaMask & height->super.super.super.isa) + 0x50);
  v9 = height;
  v10 = v8();
  v11 = (*((swift_isaMask & v9->super.super.super.isa) + 0x58))(v10);
  v12 = (*((swift_isaMask & v9->super.super.super.isa) + 0x60))(v11);
  (*((swift_isaMask & v9->super.super.super.isa) + 0x68))(v12);

  return v9;
}

- (_TtC11Diagnostics8BaseView)initWithCoder:(id)coder
{
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

@end