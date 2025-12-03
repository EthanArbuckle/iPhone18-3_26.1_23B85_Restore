@interface NotificationSendingSplitViewController
- (_TtC7SwiftUI38NotificationSendingSplitViewController)initWithCoder:(id)coder;
- (_TtC7SwiftUI38NotificationSendingSplitViewController)initWithNibName:(id)name bundle:(id)bundle;
- (_TtC7SwiftUI38NotificationSendingSplitViewController)initWithStyle:(int64_t)style;
- (void)showDetailViewController:(id)controller sender:(id)sender;
@end

@implementation NotificationSendingSplitViewController

- (void)showDetailViewController:(id)controller sender:(id)sender
{
  if (sender)
  {
    controllerCopy = controller;
    selfCopy = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    controllerCopy2 = controller;
    selfCopy2 = self;
  }

  NotificationSendingSplitViewController.showDetailViewController(_:sender:)(controller, v10);

  outlined destroy of Any?(v10);
}

- (_TtC7SwiftUI38NotificationSendingSplitViewController)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for NotificationSendingSplitViewController();
  coderCopy = coder;
  v5 = [(NotificationSendingSplitViewController *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

- (_TtC7SwiftUI38NotificationSendingSplitViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;
    bundleCopy = bundle;
    v10 = MEMORY[0x18D00C850](v6, v8);
  }

  else
  {
    bundleCopy2 = bundle;
    v10 = 0;
  }

  v14.receiver = self;
  v14.super_class = type metadata accessor for NotificationSendingSplitViewController();
  v12 = [(NotificationSendingSplitViewController *)&v14 initWithNibName:v10 bundle:bundle];

  return v12;
}

- (_TtC7SwiftUI38NotificationSendingSplitViewController)initWithStyle:(int64_t)style
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for NotificationSendingSplitViewController();
  return [(NotificationSendingSplitViewController *)&v5 initWithStyle:style];
}

@end