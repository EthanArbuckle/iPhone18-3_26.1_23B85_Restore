@interface B389NFCStatusViewController
- (_TtC18SharingViewService27B389NFCStatusViewController)initWithMainController:(id)a3;
- (_TtC18SharingViewService27B389NFCStatusViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)_dismiss;
- (void)_dismissX;
- (void)contactPressed;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation B389NFCStatusViewController

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  sub_100029364(a3);
}

- (void)viewDidDisappear:(BOOL)a3
{
  v4 = self;
  sub_10002C528(a3);
}

- (void)contactPressed
{
  v2 = self;
  sub_10002C684();
}

- (void)_dismiss
{
  v2 = self;
  sub_10002DB84(0, 0);
}

- (void)_dismissX
{
  v2 = (&self->super.super.super.super.isa + OBJC_IVAR____TtC18SharingViewService27B389NFCStatusViewController_onDoneAction);
  v3 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC18SharingViewService27B389NFCStatusViewController_onDoneAction);
  *v2 = 0;
  v2[1] = 0;
  v4 = self;
  sub_100012050(v3);
  sub_10002DB84(0, 0);
}

- (_TtC18SharingViewService27B389NFCStatusViewController)initWithMainController:(id)a3
{
  v3 = a3;
  v4 = sub_10002E9B8(v3);

  return v4;
}

- (_TtC18SharingViewService27B389NFCStatusViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a4;
  return sub_10002DE44(v5, v7, a4);
}

@end