@interface B389NFCStatusViewController
- (_TtC18SharingViewService27B389NFCStatusViewController)initWithMainController:(id)controller;
- (_TtC18SharingViewService27B389NFCStatusViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)_dismiss;
- (void)_dismissX;
- (void)contactPressed;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation B389NFCStatusViewController

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  sub_100029364(appear);
}

- (void)viewDidDisappear:(BOOL)disappear
{
  selfCopy = self;
  sub_10002C528(disappear);
}

- (void)contactPressed
{
  selfCopy = self;
  sub_10002C684();
}

- (void)_dismiss
{
  selfCopy = self;
  sub_10002DB84(0, 0);
}

- (void)_dismissX
{
  v2 = (&self->super.super.super.super.isa + OBJC_IVAR____TtC18SharingViewService27B389NFCStatusViewController_onDoneAction);
  v3 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC18SharingViewService27B389NFCStatusViewController_onDoneAction);
  *v2 = 0;
  v2[1] = 0;
  selfCopy = self;
  sub_100012050(v3);
  sub_10002DB84(0, 0);
}

- (_TtC18SharingViewService27B389NFCStatusViewController)initWithMainController:(id)controller
{
  controllerCopy = controller;
  v4 = sub_10002E9B8(controllerCopy);

  return v4;
}

- (_TtC18SharingViewService27B389NFCStatusViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  bundleCopy = bundle;
  return sub_10002DE44(v5, v7, bundle);
}

@end