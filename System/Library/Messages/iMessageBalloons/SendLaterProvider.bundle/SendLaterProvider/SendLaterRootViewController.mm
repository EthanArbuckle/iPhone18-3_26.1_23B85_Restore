@interface SendLaterRootViewController
- (CKBrowserViewControllerSendDelegate)sendDelegate;
- (SendLaterRootViewController)initWithBalloonPlugin:(id)plugin dataSource:(id)source;
- (SendLaterRootViewController)initWithNibName:(id)name bundle:(id)bundle;
- (id)pluginContext;
- (void)dismiss;
- (void)pluginInfoSelectedDateDidChange:(id)change;
- (void)setBalloonPlugin:(id)plugin;
- (void)setBalloonPluginDataSource:(id)source;
- (void)setPluginContext:(id)context;
- (void)setPresentationViewController:(id)controller;
- (void)setSendDelegate:(id)delegate;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation SendLaterRootViewController

- (void)setPresentationViewController:(id)controller
{
  v4 = *(&self->super.super.super.isa + OBJC_IVAR___SendLaterRootViewController_presentationViewController);
  *(&self->super.super.super.isa + OBJC_IVAR___SendLaterRootViewController_presentationViewController) = controller;
  controllerCopy = controller;
}

- (CKBrowserViewControllerSendDelegate)sendDelegate
{
  v2 = *(&self->super.super.super.isa + OBJC_IVAR___SendLaterRootViewController_sendDelegate);
  v3 = swift_unknownObjectRetain();

  return v3;
}

- (void)setSendDelegate:(id)delegate
{
  v3 = *(&self->super.super.super.isa + OBJC_IVAR___SendLaterRootViewController_sendDelegate);
  *(&self->super.super.super.isa + OBJC_IVAR___SendLaterRootViewController_sendDelegate) = delegate;
  swift_unknownObjectRetain();

  swift_unknownObjectRelease();
}

- (void)setBalloonPlugin:(id)plugin
{
  v4 = *(&self->super.super.super.isa + OBJC_IVAR___SendLaterRootViewController_balloonPlugin);
  *(&self->super.super.super.isa + OBJC_IVAR___SendLaterRootViewController_balloonPlugin) = plugin;
  pluginCopy = plugin;
}

- (void)setBalloonPluginDataSource:(id)source
{
  v4 = *(&self->super.super.super.isa + OBJC_IVAR___SendLaterRootViewController_balloonPluginDataSource);
  *(&self->super.super.super.isa + OBJC_IVAR___SendLaterRootViewController_balloonPluginDataSource) = source;
  sourceCopy = source;
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

- (void)setPluginContext:(id)context
{
  if (context)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_8090();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v6, 0, sizeof(v6));
    selfCopy2 = self;
  }

  sub_1D80(v6);
}

- (SendLaterRootViewController)initWithBalloonPlugin:(id)plugin dataSource:(id)source
{
  pluginCopy = plugin;
  sourceCopy = source;
  v8 = [(SendLaterRootViewController *)self initWithBalloonPlugin:pluginCopy];

  if (v8)
  {

    v9 = *(&v8->super.super.super.isa + OBJC_IVAR___SendLaterRootViewController_balloonPluginDataSource);
    *(&v8->super.super.super.isa + OBJC_IVAR___SendLaterRootViewController_balloonPluginDataSource) = sourceCopy;
    sourceCopy = v9;
  }

  return v8;
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_220C();
}

- (void)viewDidLayoutSubviews
{
  selfCopy = self;
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

- (void)pluginInfoSelectedDateDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_36A0(changeCopy);
}

- (SendLaterRootViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end