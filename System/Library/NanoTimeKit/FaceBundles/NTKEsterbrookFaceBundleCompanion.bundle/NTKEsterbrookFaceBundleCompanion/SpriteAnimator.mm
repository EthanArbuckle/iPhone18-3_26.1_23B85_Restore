@interface SpriteAnimator
- (_TtC32NTKEsterbrookFaceBundleCompanion14SpriteAnimator)init;
- (void)dealloc;
- (void)displayLinkFired;
@end

@implementation SpriteAnimator

- (void)dealloc
{
  v3 = OBJC_IVAR____TtC32NTKEsterbrookFaceBundleCompanion14SpriteAnimator_displayLink;
  v4 = *(&self->super.isa + OBJC_IVAR____TtC32NTKEsterbrookFaceBundleCompanion14SpriteAnimator_displayLink);
  selfCopy = self;
  if (v4)
  {
    [v4 invalidate];
    v6 = *(&self->super.isa + v3);
    *(&self->super.isa + v3) = 0;
  }

  v7.receiver = self;
  v7.super_class = type metadata accessor for SpriteAnimator();
  [(SpriteAnimator *)&v7 dealloc];
}

- (void)displayLinkFired
{
  selfCopy = self;
  sub_23BE0F0B4();
}

- (_TtC32NTKEsterbrookFaceBundleCompanion14SpriteAnimator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end