@interface FileReviewingTableViewController
- (BOOL)hasSecondaryButton;
- (_TtC11Diagnostics32FileReviewingTableViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout;
- (_TtC11Diagnostics32FileReviewingTableViewController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation FileReviewingTableViewController

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  sub_100089FB4(appear);
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

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  viewCopy = view;
  selfCopy = self;
  v12 = sub_10008C688();

  (*(v7 + 8))(v9, v6);

  return v12;
}

- (_TtC11Diagnostics32FileReviewingTableViewController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout
{
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;
  if (!text)
  {
    v13 = 0;
    if (name)
    {
      goto LABEL_3;
    }

LABEL_5:
    v14 = 0;
    v16 = 0;
    return sub_10008C1A0(v9, v11, text, v13, v14, v16, layout);
  }

  text = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;
  if (!name)
  {
    goto LABEL_5;
  }

LABEL_3:
  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;
  return sub_10008C1A0(v9, v11, text, v13, v14, v16, layout);
}

- (_TtC11Diagnostics32FileReviewingTableViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout
{
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;
  if (text)
  {
    text = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  iconCopy = icon;
  return sub_10008C378(v9, v11, text, v13, icon, layout);
}

@end