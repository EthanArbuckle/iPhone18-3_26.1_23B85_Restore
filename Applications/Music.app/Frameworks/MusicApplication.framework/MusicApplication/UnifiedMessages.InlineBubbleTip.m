@interface UnifiedMessages.InlineBubbleTip
- (_TtCE16MusicApplicationO9MusicCore15UnifiedMessages15InlineBubbleTip)initWithCoder:(id)a3;
- (_TtCE16MusicApplicationO9MusicCore15UnifiedMessages15InlineBubbleTip)initWithNibName:(id)a3 bundle:(id)a4;
- (void)messageViewController:(id)a3 didFailWithError:(id)a4;
- (void)messageViewController:(id)a3 didSelectActionWithDialogResult:(id)a4;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation UnifiedMessages.InlineBubbleTip

- (_TtCE16MusicApplicationO9MusicCore15UnifiedMessages15InlineBubbleTip)initWithCoder:(id)a3
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
  v2 = self;
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

- (void)messageViewController:(id)a3 didSelectActionWithDialogResult:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_4F7C34(v7);
}

- (void)messageViewController:(id)a3 didFailWithError:(id)a4
{
  v6 = a3;
  v7 = self;
  v8 = a4;
  sub_4F8504(a4);
}

- (_TtCE16MusicApplicationO9MusicCore15UnifiedMessages15InlineBubbleTip)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end