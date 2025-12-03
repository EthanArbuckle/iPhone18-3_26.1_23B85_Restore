@interface BaseControl
- (_TtC11Diagnostics11BaseControl)initWithCoder:(id)coder;
- (_TtC11Diagnostics11BaseControl)initWithFrame:(CGRect)frame;
@end

@implementation BaseControl

- (_TtC11Diagnostics11BaseControl)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v13.receiver = self;
  v13.super_class = type metadata accessor for BaseControl();
  height = [(BaseControl *)&v13 initWithFrame:x, y, width, height];
  v8 = *((swift_isaMask & height->super.super.super.super.isa) + 0x50);
  v9 = height;
  v10 = v8();
  v11 = (*((swift_isaMask & v9->super.super.super.super.isa) + 0x58))(v10);
  (*((swift_isaMask & v9->super.super.super.super.isa) + 0x60))(v11);

  return v9;
}

- (_TtC11Diagnostics11BaseControl)initWithCoder:(id)coder
{
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

@end