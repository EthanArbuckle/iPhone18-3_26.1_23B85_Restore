@interface BadgeContainerView
- (CGRect)containerView:(id)view layoutFrameForArrangedSubview:(id)subview withProposedFrame:(CGRect)result;
- (_TtC9RemindersP33_867866E3C408EC8E125699C6A4109C4218BadgeContainerView)initWithArrangedSubviews:(id)subviews;
- (_TtC9RemindersP33_867866E3C408EC8E125699C6A4109C4218BadgeContainerView)initWithCoder:(id)coder;
@end

@implementation BadgeContainerView

- (_TtC9RemindersP33_867866E3C408EC8E125699C6A4109C4218BadgeContainerView)initWithCoder:(id)coder
{
  v3 = (&self->super + OBJC_IVAR____TtC9RemindersP33_867866E3C408EC8E125699C6A4109C4218BadgeContainerView_sharingIconView);
  v3[1] = 0;
  v3[2] = 0;
  *v3 = 0;
  *(&self->super + OBJC_IVAR____TtC9RemindersP33_867866E3C408EC8E125699C6A4109C4218BadgeContainerView____lazy_storage___badgeOvalClipMask) = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (_TtC9RemindersP33_867866E3C408EC8E125699C6A4109C4218BadgeContainerView)initWithArrangedSubviews:(id)subviews
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (CGRect)containerView:(id)view layoutFrameForArrangedSubview:(id)subview withProposedFrame:(CGRect)result
{
  v5 = *(&self->super + OBJC_IVAR____TtC9RemindersP33_867866E3C408EC8E125699C6A4109C4218BadgeContainerView_sharingIconView);
  if (v5)
  {
    if (v5 == subview)
    {
      result.origin.x = 18.0;
      result.origin.y = 18.0;
      result.size.width = 15.0;
      result.size.height = 15.0;
    }
  }

  return result;
}

@end