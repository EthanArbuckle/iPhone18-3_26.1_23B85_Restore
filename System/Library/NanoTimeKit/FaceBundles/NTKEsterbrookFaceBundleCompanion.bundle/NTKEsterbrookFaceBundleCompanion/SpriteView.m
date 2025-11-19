@interface SpriteView
- (_TtC32NTKEsterbrookFaceBundleCompanion10SpriteView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
- (void)setShowDebugHelpers:(BOOL)a3;
@end

@implementation SpriteView

- (void)setShowDebugHelpers:(BOOL)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC32NTKEsterbrookFaceBundleCompanion10SpriteView_showDebugHelpers) = a3;
  v3 = self;
  sub_23BE22BB8();
}

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for SpriteView();
  v2 = v5.receiver;
  [(SpriteView *)&v5 layoutSubviews];
  v3 = *&v2[OBJC_IVAR____TtC32NTKEsterbrookFaceBundleCompanion10SpriteView_spriteLayer];
  if (v3)
  {
    v4 = v3;
    [v2 bounds];
    [v4 setFrame_];
  }

  sub_23BE23890();
}

- (_TtC32NTKEsterbrookFaceBundleCompanion10SpriteView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end