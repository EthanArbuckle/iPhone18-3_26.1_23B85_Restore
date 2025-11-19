@interface CircularProgressView
- (_TtC23ShelfKitCollectionViews20CircularProgressView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
- (void)tintColorDidChange;
- (void)traitCollectionDidChange:(id)a3;
- (void)updateRotationAnimation;
@end

@implementation CircularProgressView

- (void)tintColorDidChange
{
  v2 = self;
  _s23ShelfKitCollectionViews20CircularProgressViewC18tintColorDidChangeyyF_0();
}

- (void)traitCollectionDidChange:(id)a3
{
  v6.receiver = self;
  v6.super_class = swift_getObjectType();
  v4 = a3;
  v5 = v6.receiver;
  [(CircularProgressView *)&v6 traitCollectionDidChange:v4];
  _s23ShelfKitCollectionViews20CircularProgressViewC18tintColorDidChangeyyF_0();
  sub_198894();
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  v2 = v3.receiver;
  [(CircularProgressView *)&v3 layoutSubviews];
  sub_198894();
}

- (_TtC23ShelfKitCollectionViews20CircularProgressView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)updateRotationAnimation
{
  v2 = self;
  sub_199348();
}

@end