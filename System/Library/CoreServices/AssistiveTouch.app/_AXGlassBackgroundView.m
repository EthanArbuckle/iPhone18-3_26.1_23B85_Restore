@interface _AXGlassBackgroundView
- (_AXGlassBackgroundView)initWithCoder:(id)a3;
- (void)_updateGlassWithPath:(const CGPath *)a3;
@end

@implementation _AXGlassBackgroundView

- (void)_updateGlassWithPath:(const CGPath *)a3
{
  v4 = a3;
  v5 = self;
  Path.init(_:)();
  v9[0] = v6;
  v9[1] = v7;
  v10 = v8;
  (*((swift_isaMask & v5->super.super.super.isa) + 0x68))(v9);
}

- (_AXGlassBackgroundView)initWithCoder:(id)a3
{
  v4 = OBJC_IVAR____AXGlassBackgroundView_glassBackgroundHostingController;
  v5 = objc_allocWithZone(type metadata accessor for GlassBackgroundHostingController());
  *(&self->super.super.super.isa + v4) = UIHostingController.init(rootView:)();
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

@end