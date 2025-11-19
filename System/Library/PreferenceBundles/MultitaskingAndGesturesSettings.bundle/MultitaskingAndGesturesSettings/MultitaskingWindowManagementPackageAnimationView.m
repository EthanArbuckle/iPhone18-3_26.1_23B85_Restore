@interface MultitaskingWindowManagementPackageAnimationView
- (CGSize)sizeThatFits:(CGSize)a3;
- (_TtC31MultitaskingAndGesturesSettings48MultitaskingWindowManagementPackageAnimationView)initWithCoder:(id)a3;
- (_TtC31MultitaskingAndGesturesSettings48MultitaskingWindowManagementPackageAnimationView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation MultitaskingWindowManagementPackageAnimationView

- (_TtC31MultitaskingAndGesturesSettings48MultitaskingWindowManagementPackageAnimationView)initWithFrame:(CGRect)a3
{
  v3 = (&self->super.super.super.isa + OBJC_IVAR____TtC31MultitaskingAndGesturesSettings48MultitaskingWindowManagementPackageAnimationView_originalSize);
  *v3 = 0;
  v3[1] = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC31MultitaskingAndGesturesSettings48MultitaskingWindowManagementPackageAnimationView_stateController) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC31MultitaskingAndGesturesSettings48MultitaskingWindowManagementPackageAnimationView_package) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC31MultitaskingAndGesturesSettings48MultitaskingWindowManagementPackageAnimationView_packageLayer) = 0;
  result = sub_3D734();
  __break(1u);
  return result;
}

- (_TtC31MultitaskingAndGesturesSettings48MultitaskingWindowManagementPackageAnimationView)initWithCoder:(id)a3
{
  v3 = (&self->super.super.super.isa + OBJC_IVAR____TtC31MultitaskingAndGesturesSettings48MultitaskingWindowManagementPackageAnimationView_originalSize);
  *v3 = 0;
  v3[1] = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC31MultitaskingAndGesturesSettings48MultitaskingWindowManagementPackageAnimationView_stateController) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC31MultitaskingAndGesturesSettings48MultitaskingWindowManagementPackageAnimationView_package) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC31MultitaskingAndGesturesSettings48MultitaskingWindowManagementPackageAnimationView_packageLayer) = 0;
  result = sub_3D734();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v2 = self;
  sub_32328();
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = self;
  sub_31494(width, height);
  v7 = v6;
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
}

- (void)traitCollectionDidChange:(id)a3
{
  v8.receiver = self;
  v8.super_class = swift_getObjectType();
  v4 = a3;
  v5 = v8.receiver;
  [(MultitaskingWindowManagementPackageAnimationView *)&v8 traitCollectionDidChange:v4];
  v6 = [v5 traitCollection];
  v7 = [v6 hasDifferentColorAppearanceComparedToTraitCollection:v4];

  if (v7)
  {
    sub_31DB4();
  }
}

@end