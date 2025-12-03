@interface _AXGlassBackgroundView
- (_AXGlassBackgroundView)initWithCoder:(id)coder;
- (void)_updateGlassWithPath:(const CGPath *)path;
@end

@implementation _AXGlassBackgroundView

- (void)_updateGlassWithPath:(const CGPath *)path
{
  pathCopy = path;
  selfCopy = self;
  Path.init(_:)();
  v9[0] = v6;
  v9[1] = v7;
  v10 = v8;
  (*((swift_isaMask & selfCopy->super.super.super.isa) + 0x68))(v9);
}

- (_AXGlassBackgroundView)initWithCoder:(id)coder
{
  v4 = OBJC_IVAR____AXGlassBackgroundView_glassBackgroundHostingController;
  v5 = objc_allocWithZone(type metadata accessor for GlassBackgroundHostingController());
  *(&self->super.super.super.isa + v4) = UIHostingController.init(rootView:)();
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

@end