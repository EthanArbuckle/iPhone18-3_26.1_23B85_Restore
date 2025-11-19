@interface BaseControl
- (_TtC11Diagnostics11BaseControl)initWithCoder:(id)a3;
- (_TtC11Diagnostics11BaseControl)initWithFrame:(CGRect)a3;
@end

@implementation BaseControl

- (_TtC11Diagnostics11BaseControl)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v13.receiver = self;
  v13.super_class = type metadata accessor for BaseControl();
  v7 = [(BaseControl *)&v13 initWithFrame:x, y, width, height];
  v8 = *((swift_isaMask & v7->super.super.super.super.isa) + 0x50);
  v9 = v7;
  v10 = v8();
  v11 = (*((swift_isaMask & v9->super.super.super.super.isa) + 0x58))(v10);
  (*((swift_isaMask & v9->super.super.super.super.isa) + 0x60))(v11);

  return v9;
}

- (_TtC11Diagnostics11BaseControl)initWithCoder:(id)a3
{
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

@end