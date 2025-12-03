@interface CircularProgressView
- (_TtC23ShelfKitCollectionViews20CircularProgressView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
- (void)tintColorDidChange;
- (void)traitCollectionDidChange:(id)change;
- (void)updateRotationAnimation;
@end

@implementation CircularProgressView

- (void)tintColorDidChange
{
  selfCopy = self;
  _s23ShelfKitCollectionViews20CircularProgressViewC18tintColorDidChangeyyF_0();
}

- (void)traitCollectionDidChange:(id)change
{
  v6.receiver = self;
  v6.super_class = swift_getObjectType();
  changeCopy = change;
  v5 = v6.receiver;
  [(CircularProgressView *)&v6 traitCollectionDidChange:changeCopy];
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

- (_TtC23ShelfKitCollectionViews20CircularProgressView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)updateRotationAnimation
{
  selfCopy = self;
  sub_199348();
}

@end