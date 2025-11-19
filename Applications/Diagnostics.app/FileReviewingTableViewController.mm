@interface FileReviewingTableViewController
- (BOOL)hasSecondaryButton;
- (_TtC11Diagnostics32FileReviewingTableViewController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 contentLayout:(int64_t)a6;
- (_TtC11Diagnostics32FileReviewingTableViewController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 contentLayout:(int64_t)a6;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation FileReviewingTableViewController

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  sub_100089FB4(a3);
}

- (BOOL)hasSecondaryButton
{
  v2 = MobileGestalt_get_current_device();
  if (v2)
  {
    v3 = v2;
    containsCellularRadioCapability = MobileGestalt_get_containsCellularRadioCapability();

    LOBYTE(v2) = containsCellularRadioCapability;
  }

  else
  {
    __break(1u);
  }

  return v2;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = a3;
  v11 = self;
  v12 = sub_10008C688();

  (*(v7 + 8))(v9, v6);

  return v12;
}

- (_TtC11Diagnostics32FileReviewingTableViewController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 contentLayout:(int64_t)a6
{
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;
  if (!a4)
  {
    v13 = 0;
    if (a5)
    {
      goto LABEL_3;
    }

LABEL_5:
    v14 = 0;
    v16 = 0;
    return sub_10008C1A0(v9, v11, a4, v13, v14, v16, a6);
  }

  a4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;
  if (!a5)
  {
    goto LABEL_5;
  }

LABEL_3:
  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;
  return sub_10008C1A0(v9, v11, a4, v13, v14, v16, a6);
}

- (_TtC11Diagnostics32FileReviewingTableViewController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 contentLayout:(int64_t)a6
{
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;
  if (a4)
  {
    a4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  v14 = a5;
  return sub_10008C378(v9, v11, a4, v13, a5, a6);
}

@end