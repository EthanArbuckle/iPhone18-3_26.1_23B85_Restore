@interface ToastContainerView
- (NSArray)interactions;
- (_TtC5Books18ToastContainerView)initWithFrame:(CGRect)frame;
@end

@implementation ToastContainerView

- (NSArray)interactions
{
  v2 = *(&self->super.super.super.isa + OBJC_IVAR____TtC5Books18ToastContainerView_containerView);
  selfCopy = self;
  isa = [v2 interactions];
  if (!isa)
  {
    sub_1001F1160(&qword_100ADAF30);
    sub_1007A25E4();
    isa = sub_1007A25D4().super.isa;
  }

  return isa;
}

- (_TtC5Books18ToastContainerView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end