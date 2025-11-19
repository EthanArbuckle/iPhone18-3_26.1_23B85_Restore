@interface SendLaterRootViewController
- (CKBrowserViewControllerSendDelegate)sendDelegate;
- (SendLaterRootViewController)initWithBalloonPlugin:(id)a3 dataSource:(id)a4;
- (SendLaterRootViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (id)pluginContext;
- (void)dismiss;
- (void)pluginInfoSelectedDateDidChange:(id)a3;
- (void)setBalloonPlugin:(id)a3;
- (void)setBalloonPluginDataSource:(id)a3;
- (void)setPluginContext:(id)a3;
- (void)setPresentationViewController:(id)a3;
- (void)setSendDelegate:(id)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation SendLaterRootViewController

- (void)setPresentationViewController:(id)a3
{
  v4 = *(&self->super.super.super.isa + OBJC_IVAR___SendLaterRootViewController_presentationViewController);
  *(&self->super.super.super.isa + OBJC_IVAR___SendLaterRootViewController_presentationViewController) = a3;
  v3 = a3;
}

- (CKBrowserViewControllerSendDelegate)sendDelegate
{
  v2 = *(&self->super.super.super.isa + OBJC_IVAR___SendLaterRootViewController_sendDelegate);
  v3 = swift_unknownObjectRetain();

  return v3;
}

- (void)setSendDelegate:(id)a3
{
  v3 = *(&self->super.super.super.isa + OBJC_IVAR___SendLaterRootViewController_sendDelegate);
  *(&self->super.super.super.isa + OBJC_IVAR___SendLaterRootViewController_sendDelegate) = a3;
  swift_unknownObjectRetain();

  swift_unknownObjectRelease();
}

- (void)setBalloonPlugin:(id)a3
{
  v4 = *(&self->super.super.super.isa + OBJC_IVAR___SendLaterRootViewController_balloonPlugin);
  *(&self->super.super.super.isa + OBJC_IVAR___SendLaterRootViewController_balloonPlugin) = a3;
  v3 = a3;
}

- (void)setBalloonPluginDataSource:(id)a3
{
  v4 = *(&self->super.super.super.isa + OBJC_IVAR___SendLaterRootViewController_balloonPluginDataSource);
  *(&self->super.super.super.isa + OBJC_IVAR___SendLaterRootViewController_balloonPluginDataSource) = a3;
  v3 = a3;
}

- (id)pluginContext
{
  v2 = *(&self->super.super.super.isa + OBJC_IVAR___SendLaterRootViewController_context);
  if (v2)
  {
    v6 = *(&self->super.super.super.isa + OBJC_IVAR___SendLaterRootViewController_context);
    sub_8070();
    v3 = v2;
    v4 = sub_80F0();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setPluginContext:(id)a3
{
  if (a3)
  {
    v3 = self;
    swift_unknownObjectRetain();
    sub_8090();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v6, 0, sizeof(v6));
    v4 = self;
  }

  sub_1D80(v6);
}

- (SendLaterRootViewController)initWithBalloonPlugin:(id)a3 dataSource:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(SendLaterRootViewController *)self initWithBalloonPlugin:v6];

  if (v8)
  {

    v9 = *(&v8->super.super.super.isa + OBJC_IVAR___SendLaterRootViewController_balloonPluginDataSource);
    *(&v8->super.super.super.isa + OBJC_IVAR___SendLaterRootViewController_balloonPluginDataSource) = v7;
    v7 = v9;
  }

  return v8;
}

- (void)viewDidLoad
{
  v2 = self;
  sub_220C();
}

- (void)viewDidLayoutSubviews
{
  v2 = self;
  sub_2C50();
}

- (void)dismiss
{
  v2 = *(&self->super.super.super.isa + OBJC_IVAR___SendLaterRootViewController_sendDelegate);
  if (v2)
  {
    [v2 dismiss];
  }

  else
  {
    __break(1u);
  }
}

- (void)pluginInfoSelectedDateDidChange:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_36A0(v4);
}

- (SendLaterRootViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end