@interface MultitaskingWindowManagementPackageAnimationView
- (CGSize)sizeThatFits:(CGSize)fits;
- (_TtC31MultitaskingAndGesturesSettings48MultitaskingWindowManagementPackageAnimationView)initWithCoder:(id)coder;
- (_TtC31MultitaskingAndGesturesSettings48MultitaskingWindowManagementPackageAnimationView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation MultitaskingWindowManagementPackageAnimationView

- (_TtC31MultitaskingAndGesturesSettings48MultitaskingWindowManagementPackageAnimationView)initWithFrame:(CGRect)frame
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

- (_TtC31MultitaskingAndGesturesSettings48MultitaskingWindowManagementPackageAnimationView)initWithCoder:(id)coder
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
  selfCopy = self;
  sub_32328();
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  selfCopy = self;
  sub_31494(width, height);
  v7 = v6;
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
}

- (void)traitCollectionDidChange:(id)change
{
  v8.receiver = self;
  v8.super_class = swift_getObjectType();
  changeCopy = change;
  v5 = v8.receiver;
  [(MultitaskingWindowManagementPackageAnimationView *)&v8 traitCollectionDidChange:changeCopy];
  traitCollection = [v5 traitCollection];
  v7 = [traitCollection hasDifferentColorAppearanceComparedToTraitCollection:changeCopy];

  if (v7)
  {
    sub_31DB4();
  }
}

@end