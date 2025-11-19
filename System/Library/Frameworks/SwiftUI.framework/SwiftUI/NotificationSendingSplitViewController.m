@interface NotificationSendingSplitViewController
- (_TtC7SwiftUI38NotificationSendingSplitViewController)initWithCoder:(id)a3;
- (_TtC7SwiftUI38NotificationSendingSplitViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (_TtC7SwiftUI38NotificationSendingSplitViewController)initWithStyle:(int64_t)a3;
- (void)showDetailViewController:(id)a3 sender:(id)a4;
@end

@implementation NotificationSendingSplitViewController

- (void)showDetailViewController:(id)a3 sender:(id)a4
{
  if (a4)
  {
    v6 = a3;
    v7 = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    v8 = a3;
    v9 = self;
  }

  NotificationSendingSplitViewController.showDetailViewController(_:sender:)(a3, v10);

  outlined destroy of Any?(v10);
}

- (_TtC7SwiftUI38NotificationSendingSplitViewController)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for NotificationSendingSplitViewController();
  v4 = a3;
  v5 = [(NotificationSendingSplitViewController *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

- (_TtC7SwiftUI38NotificationSendingSplitViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;
    v9 = a4;
    v10 = MEMORY[0x18D00C850](v6, v8);
  }

  else
  {
    v11 = a4;
    v10 = 0;
  }

  v14.receiver = self;
  v14.super_class = type metadata accessor for NotificationSendingSplitViewController();
  v12 = [(NotificationSendingSplitViewController *)&v14 initWithNibName:v10 bundle:a4];

  return v12;
}

- (_TtC7SwiftUI38NotificationSendingSplitViewController)initWithStyle:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for NotificationSendingSplitViewController();
  return [(NotificationSendingSplitViewController *)&v5 initWithStyle:a3];
}

@end