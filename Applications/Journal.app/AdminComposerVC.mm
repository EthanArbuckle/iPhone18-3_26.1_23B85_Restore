@interface AdminComposerVC
- (_TtC7Journal15AdminComposerVC)initWithNibName:(id)a3 bundle:(id)a4;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)doRedo;
- (void)doSave;
- (void)doUndo;
- (void)save;
- (void)tableView:(id)a3 commitEditingStyle:(int64_t)a4 forRowAtIndexPath:(id)a5;
- (void)tableView:(id)a3 moveRowAtIndexPath:(id)a4 toIndexPath:(id)a5;
- (void)textViewDidChange:(id)a3;
- (void)viewDidLoad;
@end

@implementation AdminComposerVC

- (void)doUndo
{
  v2 = self;
  sub_100788518();
}

- (void)doRedo
{
  v2 = self;
  sub_100788518();
}

- (void)doSave
{
  v2 = self;
  sub_10074DBA4();
}

- (void)viewDidLoad
{
  v2 = self;
  sub_100788B40();
}

- (void)save
{
  v3 = sub_1000F24EC(&qword_100AD5170);
  __chkstk_darwin(v3 - 8);
  v5 = &v10 - v4;
  v6 = type metadata accessor for TaskPriority();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  type metadata accessor for MainActor();
  v7 = self;
  v8 = static MainActor.shared.getter();
  v9 = swift_allocObject();
  v9[2] = v8;
  v9[3] = &protocol witness table for MainActor;
  v9[4] = v7;
  sub_1003E9628(0, 0, v5, &unk_100967968, v9);
}

- (_TtC7Journal15AdminComposerVC)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4
{
  v5 = a3;
  v6 = self;
  sub_10078A514();
  v8 = v7;

  if (v8)
  {
    v9 = String._bridgeToObjectiveC()();
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v4 = *(&self->super.super.super.isa + OBJC_IVAR____TtC7Journal15AdminComposerVC_model);
  v5 = OBJC_IVAR____TtC7Journal14EntryViewModel_allAssets;
  swift_beginAccess();
  v6 = *(v4 + v5);
  if (v6 >> 62)
  {
    return _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    return *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
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
  v12 = sub_10078A5E8();

  (*(v7 + 8))(v9, v6);

  return v12;
}

- (void)tableView:(id)a3 commitEditingStyle:(int64_t)a4 forRowAtIndexPath:(id)a5
{
  v8 = type metadata accessor for IndexPath();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = a3;
  v13 = self;
  sub_10078B2DC(a4);

  (*(v9 + 8))(v11, v8);
}

- (void)tableView:(id)a3 moveRowAtIndexPath:(id)a4 toIndexPath:(id)a5
{
  v33 = self;
  v5 = sub_1000F24EC(&qword_100AD5170);
  __chkstk_darwin(v5 - 8);
  v7 = &v30 - v6;
  v32 = &v30 - v6;
  v8 = type metadata accessor for IndexPath();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v31 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v30 - v12;
  v30 = &v30 - v12;
  __chkstk_darwin(v14);
  v16 = &v30 - v15;
  __chkstk_darwin(v17);
  v19 = &v30 - v18;
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v20 = type metadata accessor for TaskPriority();
  (*(*(v20 - 8) + 56))(v7, 1, 1, v20);
  v21 = *(v9 + 16);
  v21(v13, v19, v8);
  v21(&v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v16, v8);
  type metadata accessor for MainActor();
  v22 = v33;
  v23 = static MainActor.shared.getter();
  v24 = *(v9 + 80);
  v25 = (v24 + 40) & ~v24;
  v26 = (v10 + v24 + v25) & ~v24;
  v27 = swift_allocObject();
  *(v27 + 2) = v23;
  *(v27 + 3) = &protocol witness table for MainActor;
  *(v27 + 4) = v22;
  v28 = *(v9 + 32);
  v28(&v27[v25], v30, v8);
  v28(&v27[v26], v31, v8);
  sub_1003E9628(0, 0, v32, &unk_100967948, v27);

  v29 = *(v9 + 8);
  v29(v16, v8);
  v29(v19, v8);
}

- (void)textViewDidChange:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100789CE0(v4);
}

@end