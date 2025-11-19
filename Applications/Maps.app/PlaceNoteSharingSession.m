@interface PlaceNoteSharingSession
- (_TtC4Maps23PlaceNoteSharingSession)init;
- (_TtC4Maps23PlaceNoteSharingSession)initWithMapItem:(id)a3;
- (void)fetchNoteWithCompletion:(id)a3;
- (void)preload;
@end

@implementation PlaceNoteSharingSession

- (_TtC4Maps23PlaceNoteSharingSession)initWithMapItem:(id)a3
{
  v3 = a3;
  v4 = sub_1003C3484(v3);

  return v4;
}

- (void)preload
{
  v3 = sub_1000CE6B8(&unk_10190BA50);
  __chkstk_darwin(v3 - 8);
  v5 = &v9 - v4;
  v6 = type metadata accessor for TaskPriority();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = self;
  v8 = self;
  sub_10020AAE4(0, 0, v5, &unk_101202230, v7);
}

- (void)fetchNoteWithCompletion:(id)a3
{
  v5 = sub_1000CE6B8(&unk_10190BA50);
  __chkstk_darwin(v5 - 8);
  v7 = &v13 - v6;
  v8 = _Block_copy(a3);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = self;
  v11[5] = sub_1000DE4EC;
  v11[6] = v9;
  v12 = self;
  sub_10020AAE4(0, 0, v7, &unk_101202218, v11);
}

- (_TtC4Maps23PlaceNoteSharingSession)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end