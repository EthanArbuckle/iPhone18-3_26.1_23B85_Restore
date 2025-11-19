@interface FMSeparationNotificationWelcomeViewController
- (void)scrollViewDidScroll:(id)a3;
- (void)secondaryAction;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation FMSeparationNotificationWelcomeViewController

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v8.receiver = self;
  v8.super_class = type metadata accessor for FMSeparationNotificationWelcomeViewController();
  v4 = v8.receiver;
  [(FMSeparationNotificationWelcomeViewController *)&v8 viewWillAppear:v3];
  v5 = [v4 parentViewController];
  if (v5)
  {
    v6 = v5;
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
  v2 = self;
  sub_1002F0938();
}

- (void)viewDidAppear:(BOOL)a3
{
  v3 = a3;
  v7.receiver = self;
  v7.super_class = type metadata accessor for FMSeparationNotificationWelcomeViewController();
  v4 = v7.receiver;
  [(FMSeparationNotificationWelcomeViewController *)&v7 viewDidAppear:v3];
  v5 = [v4 navigationItem];
  v6 = [objc_allocWithZone(UIBarButtonItem) initWithBarButtonSystemItem:1 target:v4 action:"cancelAction"];
  [v5 setLeftBarButtonItem:v6];
}

- (void)secondaryAction
{
  v2 = self + OBJC_IVAR____TtC6FindMy45FMSeparationNotificationWelcomeViewController_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v3 = *(v2 + 1);
    ObjectType = swift_getObjectType();
    v5 = *(v3 + 8);
    v6 = self;
    v5(ObjectType, v3);
    swift_unknownObjectRelease();
  }

  else
  {
    v7 = self;
  }

  [(FMSeparationNotificationWelcomeViewController *)self dismissViewControllerAnimated:1 completion:0];
}

- (void)scrollViewDidScroll:(id)a3
{
  v3 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC6FindMy45FMSeparationNotificationWelcomeViewController_scrollHandler);
  if (v3)
  {
    v5 = a3;
    v6 = self;
    sub_100062900(v3);
    v3(v5);

    sub_10001835C(v3);
  }
}

@end