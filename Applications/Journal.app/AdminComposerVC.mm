@interface AdminComposerVC
- (_TtC7Journal15AdminComposerVC)initWithNibName:(id)name bundle:(id)bundle;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)doRedo;
- (void)doSave;
- (void)doUndo;
- (void)save;
- (void)tableView:(id)view commitEditingStyle:(int64_t)style forRowAtIndexPath:(id)path;
- (void)tableView:(id)view moveRowAtIndexPath:(id)path toIndexPath:(id)indexPath;
- (void)textViewDidChange:(id)change;
- (void)viewDidLoad;
@end

@implementation AdminComposerVC

- (void)doUndo
{
  selfCopy = self;
  sub_100788518();
}

- (void)doRedo
{
  selfCopy = self;
  sub_100788518();
}

- (void)doSave
{
  selfCopy = self;
  sub_10074DBA4();
}

- (void)viewDidLoad
{
  selfCopy = self;
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
  selfCopy = self;
  v8 = static MainActor.shared.getter();
  v9 = swift_allocObject();
  v9[2] = v8;
  v9[3] = &protocol witness table for MainActor;
  v9[4] = selfCopy;
  sub_1003E9628(0, 0, v5, &unk_100967968, v9);
}

- (_TtC7Journal15AdminComposerVC)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section
{
  viewCopy = view;
  selfCopy = self;
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

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
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

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  viewCopy = view;
  selfCopy = self;
  v12 = sub_10078A5E8();

  (*(v7 + 8))(v9, v6);

  return v12;
}

- (void)tableView:(id)view commitEditingStyle:(int64_t)style forRowAtIndexPath:(id)path
{
  v8 = type metadata accessor for IndexPath();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  viewCopy = view;
  selfCopy = self;
  sub_10078B2DC(style);

  (*(v9 + 8))(v11, v8);
}

- (void)tableView:(id)view moveRowAtIndexPath:(id)path toIndexPath:(id)indexPath
{
  selfCopy = self;
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
  v22 = selfCopy;
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

- (void)textViewDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_100789CE0(changeCopy);
}

@end