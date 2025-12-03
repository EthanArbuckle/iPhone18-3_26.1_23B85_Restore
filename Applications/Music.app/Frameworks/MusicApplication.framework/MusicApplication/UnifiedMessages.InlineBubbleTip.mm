@interface UnifiedMessages.InlineBubbleTip
- (_TtCE16MusicApplicationO9MusicCore15UnifiedMessages15InlineBubbleTip)initWithCoder:(id)coder;
- (_TtCE16MusicApplicationO9MusicCore15UnifiedMessages15InlineBubbleTip)initWithNibName:(id)name bundle:(id)bundle;
- (void)messageViewController:(id)controller didFailWithError:(id)error;
- (void)messageViewController:(id)controller didSelectActionWithDialogResult:(id)result;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation UnifiedMessages.InlineBubbleTip

- (_TtCE16MusicApplicationO9MusicCore15UnifiedMessages15InlineBubbleTip)initWithCoder:(id)coder
{
  v3 = (&self->super.super.super.isa + OBJC_IVAR____TtCE16MusicApplicationO9MusicCore15UnifiedMessages15InlineBubbleTip_handleUserDismissed);
  *v3 = 0;
  v3[1] = 0;
  result = sub_ABAFD0();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_4F7330();
}

- (void)viewDidLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  v2 = v3.receiver;
  [(UnifiedMessages.InlineBubbleTip *)&v3 viewDidLayoutSubviews];
  sub_4F7544();
}

- (void)messageViewController:(id)controller didSelectActionWithDialogResult:(id)result
{
  controllerCopy = controller;
  resultCopy = result;
  selfCopy = self;
  sub_4F7C34(resultCopy);
}

- (void)messageViewController:(id)controller didFailWithError:(id)error
{
  controllerCopy = controller;
  selfCopy = self;
  errorCopy = error;
  sub_4F8504(error);
}

- (_TtCE16MusicApplicationO9MusicCore15UnifiedMessages15InlineBubbleTip)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end