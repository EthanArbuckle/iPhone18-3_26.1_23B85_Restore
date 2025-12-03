@interface AdminEntriesVC
- (_TtC7Journal14AdminEntriesVC)initWithNibName:(id)name bundle:(id)bundle;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view contextMenuConfigurationForRowAtIndexPath:(id)path point:(CGPoint)point;
- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section;
- (int64_t)numberOfSectionsInTableView:(id)view;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)addItem;
- (void)controller:(id)controller didChangeObject:(id)object atIndexPath:(id)path forChangeType:(unint64_t)type newIndexPath:(id)indexPath;
- (void)controller:(id)controller didChangeSection:(id)section atIndex:(int64_t)index forChangeType:(unint64_t)type;
- (void)controllerDidChangeContent:(id)content;
- (void)controllerWillChangeContent:(id)content;
- (void)dealloc;
- (void)showActionSheet:(id)sheet;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidLoad;
@end

@implementation AdminEntriesVC

- (void)viewDidLoad
{
  selfCopy = self;
  sub_1004596CC();
}

- (void)dealloc
{
  v3 = objc_opt_self();
  selfCopy = self;
  defaultCenter = [v3 defaultCenter];
  [defaultCenter removeObserver:selfCopy];

  v6.receiver = selfCopy;
  v6.super_class = type metadata accessor for AdminEntriesVC();
  [(AdminEntriesVC *)&v6 dealloc];
}

- (void)showActionSheet:(id)sheet
{
  sheetCopy = sheet;
  selfCopy = self;
  sub_100459BA8(sheetCopy);
}

- (void)addItem
{
  selfCopy = self;
  sub_10045C758();
}

- (_TtC7Journal14AdminEntriesVC)initWithNibName:(id)name bundle:(id)bundle
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
  return sub_10045E620(v5, v7, bundle);
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
  v12 = sub_1004645CC();

  (*(v7 + 8))(v9, v6);

  return v12;
}

- (int64_t)numberOfSectionsInTableView:(id)view
{
  viewCopy = view;
  selfCopy = self;
  v6 = sub_100464758();

  return v6;
}

- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section
{
  viewCopy = view;
  selfCopy = self;
  sub_100464814(section);
  v9 = v8;

  if (v9)
  {
    v10 = String._bridgeToObjectiveC()();
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  viewCopy = view;
  selfCopy = self;
  v8 = sub_100464980(section);

  return v8;
}

- (id)tableView:(id)view contextMenuConfigurationForRowAtIndexPath:(id)path point:(CGPoint)point
{
  v7 = type metadata accessor for IndexPath();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  viewCopy = view;
  selfCopy = self;
  v13 = sub_100464AD0();

  (*(v8 + 8))(v10, v7);

  return v13;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  viewCopy = view;
  selfCopy = self;
  sub_1004653C8();

  (*(v7 + 8))(v9, v6);
}

- (void)controllerWillChangeContent:(id)content
{
  contentCopy = content;
  selfCopy = self;
  sub_100465594();
}

- (void)controller:(id)controller didChangeSection:(id)section atIndex:(int64_t)index forChangeType:(unint64_t)type
{
  controllerCopy = controller;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_100465670(index, type);

  swift_unknownObjectRelease();
}

- (void)controller:(id)controller didChangeObject:(id)object atIndexPath:(id)path forChangeType:(unint64_t)type newIndexPath:(id)indexPath
{
  v12 = sub_1000F24EC(&unk_100ADFB90);
  __chkstk_darwin(v12 - 8);
  v14 = &v26[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v15);
  v17 = &v26[-v16];
  controllerCopy = controller;
  swift_unknownObjectRetain();
  selfCopy = self;
  pathCopy = path;
  indexPathCopy = indexPath;
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  if (pathCopy)
  {
    static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

    v22 = type metadata accessor for IndexPath();
    (*(*(v22 - 8) + 56))(v17, 0, 1, v22);
  }

  else
  {
    v23 = type metadata accessor for IndexPath();
    (*(*(v23 - 8) + 56))(v17, 1, 1, v23);
  }

  if (indexPathCopy)
  {
    static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

    v24 = 0;
  }

  else
  {
    v24 = 1;
  }

  v25 = type metadata accessor for IndexPath();
  (*(*(v25 - 8) + 56))(v14, v24, 1, v25);
  sub_1004658B0(v26, v17, type, v14);

  sub_100004F84(v14, &unk_100ADFB90);
  sub_100004F84(v17, &unk_100ADFB90);
  sub_10000BA7C(v26);
}

- (void)controllerDidChangeContent:(id)content
{
  selfCopy = self;
  tableView = [(AdminEntriesVC *)selfCopy tableView];
  if (tableView)
  {
    v4 = tableView;
    [tableView endUpdates];

    sub_10045DD14();
  }

  else
  {
    __break(1u);
  }
}

@end