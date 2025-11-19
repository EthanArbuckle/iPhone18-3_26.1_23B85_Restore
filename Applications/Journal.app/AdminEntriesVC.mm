@interface AdminEntriesVC
- (_TtC7Journal14AdminEntriesVC)initWithNibName:(id)a3 bundle:(id)a4;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 contextMenuConfigurationForRowAtIndexPath:(id)a4 point:(CGPoint)a5;
- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4;
- (int64_t)numberOfSectionsInTableView:(id)a3;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)addItem;
- (void)controller:(id)a3 didChangeObject:(id)a4 atIndexPath:(id)a5 forChangeType:(unint64_t)a6 newIndexPath:(id)a7;
- (void)controller:(id)a3 didChangeSection:(id)a4 atIndex:(int64_t)a5 forChangeType:(unint64_t)a6;
- (void)controllerDidChangeContent:(id)a3;
- (void)controllerWillChangeContent:(id)a3;
- (void)dealloc;
- (void)showActionSheet:(id)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewDidLoad;
@end

@implementation AdminEntriesVC

- (void)viewDidLoad
{
  v2 = self;
  sub_1004596CC();
}

- (void)dealloc
{
  v3 = objc_opt_self();
  v4 = self;
  v5 = [v3 defaultCenter];
  [v5 removeObserver:v4];

  v6.receiver = v4;
  v6.super_class = type metadata accessor for AdminEntriesVC();
  [(AdminEntriesVC *)&v6 dealloc];
}

- (void)showActionSheet:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100459BA8(v4);
}

- (void)addItem
{
  v2 = self;
  sub_10045C758();
}

- (_TtC7Journal14AdminEntriesVC)initWithNibName:(id)a3 bundle:(id)a4
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
  return sub_10045E620(v5, v7, a4);
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
  v12 = sub_1004645CC();

  (*(v7 + 8))(v9, v6);

  return v12;
}

- (int64_t)numberOfSectionsInTableView:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_100464758();

  return v6;
}

- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4
{
  v6 = a3;
  v7 = self;
  sub_100464814(a4);
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

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v6 = a3;
  v7 = self;
  v8 = sub_100464980(a4);

  return v8;
}

- (id)tableView:(id)a3 contextMenuConfigurationForRowAtIndexPath:(id)a4 point:(CGPoint)a5
{
  v7 = type metadata accessor for IndexPath();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = a3;
  v12 = self;
  v13 = sub_100464AD0();

  (*(v8 + 8))(v10, v7);

  return v13;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = a3;
  v11 = self;
  sub_1004653C8();

  (*(v7 + 8))(v9, v6);
}

- (void)controllerWillChangeContent:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100465594();
}

- (void)controller:(id)a3 didChangeSection:(id)a4 atIndex:(int64_t)a5 forChangeType:(unint64_t)a6
{
  v9 = a3;
  swift_unknownObjectRetain();
  v10 = self;
  sub_100465670(a5, a6);

  swift_unknownObjectRelease();
}

- (void)controller:(id)a3 didChangeObject:(id)a4 atIndexPath:(id)a5 forChangeType:(unint64_t)a6 newIndexPath:(id)a7
{
  v12 = sub_1000F24EC(&unk_100ADFB90);
  __chkstk_darwin(v12 - 8);
  v14 = &v26[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v15);
  v17 = &v26[-v16];
  v18 = a3;
  swift_unknownObjectRetain();
  v19 = self;
  v20 = a5;
  v21 = a7;
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  if (v20)
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

  if (v21)
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
  sub_1004658B0(v26, v17, a6, v14);

  sub_100004F84(v14, &unk_100ADFB90);
  sub_100004F84(v17, &unk_100ADFB90);
  sub_10000BA7C(v26);
}

- (void)controllerDidChangeContent:(id)a3
{
  v5 = self;
  v3 = [(AdminEntriesVC *)v5 tableView];
  if (v3)
  {
    v4 = v3;
    [v3 endUpdates];

    sub_10045DD14();
  }

  else
  {
    __break(1u);
  }
}

@end