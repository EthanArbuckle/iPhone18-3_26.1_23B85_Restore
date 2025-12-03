@interface FMSeparationNotificationWelcomeViewController
- (void)scrollViewDidScroll:(id)scroll;
- (void)secondaryAction;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLayoutSubviews;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation FMSeparationNotificationWelcomeViewController

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v8.receiver = self;
  v8.super_class = type metadata accessor for FMSeparationNotificationWelcomeViewController();
  v4 = v8.receiver;
  [(FMSeparationNotificationWelcomeViewController *)&v8 viewWillAppear:appearCopy];
  parentViewController = [v4 parentViewController];
  if (parentViewController)
  {
    v6 = parentViewController;
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      sub_100142550();
      v7 = v6;
    }

    else
    {
      v7 = v4;
      v4 = v6;
    }
  }
}

- (void)viewDidLayoutSubviews
{
  selfCopy = self;
  sub_1002F0938();
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  v7.receiver = self;
  v7.super_class = type metadata accessor for FMSeparationNotificationWelcomeViewController();
  v4 = v7.receiver;
  [(FMSeparationNotificationWelcomeViewController *)&v7 viewDidAppear:appearCopy];
  navigationItem = [v4 navigationItem];
  v6 = [objc_allocWithZone(UIBarButtonItem) initWithBarButtonSystemItem:1 target:v4 action:"cancelAction"];
  [navigationItem setLeftBarButtonItem:v6];
}

- (void)secondaryAction
{
  v2 = self + OBJC_IVAR____TtC6FindMy45FMSeparationNotificationWelcomeViewController_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v3 = *(v2 + 1);
    ObjectType = swift_getObjectType();
    v5 = *(v3 + 8);
    selfCopy = self;
    v5(ObjectType, v3);
    swift_unknownObjectRelease();
  }

  else
  {
    selfCopy2 = self;
  }

  [(FMSeparationNotificationWelcomeViewController *)self dismissViewControllerAnimated:1 completion:0];
}

- (void)scrollViewDidScroll:(id)scroll
{
  v3 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC6FindMy45FMSeparationNotificationWelcomeViewController_scrollHandler);
  if (v3)
  {
    scrollCopy = scroll;
    selfCopy = self;
    sub_100062900(v3);
    v3(scrollCopy);

    sub_10001835C(v3);
  }
}

@end