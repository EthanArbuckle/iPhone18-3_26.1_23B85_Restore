@interface Document
- (NSString)localizedName;
- (_TtC17PreviewFoundation8Document)initWithFileURL:(id)a3;
- (void)closeWithCompletionHandler:(id)a3;
- (void)handleError:(id)a3 userInteractionPermitted:(BOOL)a4;
- (void)openWithCompletionHandler:(id)a3;
- (void)presentedItemDidMoveToURL:(id)a3;
@end

@implementation Document

- (void)closeWithCompletionHandler:(id)a3
{
  v5 = sub_1000FF5D8(&qword_10020D600);
  __chkstk_darwin(v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(a3);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_1001A98E0;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1001A98E8;
  v12[5] = v11;
  v13 = self;
  sub_100181CC8(0, 0, v7, &unk_1001A98F0, v12);
}

- (void)handleError:(id)a3 userInteractionPermitted:(BOOL)a4
{
  v7 = sub_1000FF5D8(&qword_10020D600);
  __chkstk_darwin(v7 - 8);
  v9 = &v16 - v8;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  type metadata accessor for MainActor();
  v11 = a3;
  v12 = self;
  v13 = v11;
  v14 = static MainActor.shared.getter();
  v15 = swift_allocObject();
  *(v15 + 16) = v14;
  *(v15 + 24) = &protocol witness table for MainActor;
  *(v15 + 32) = v13;
  *(v15 + 40) = v12;
  *(v15 + 48) = a4;
  sub_100128F38(0, 0, v9, &unk_1001A98D0, v15);
}

- (NSString)localizedName
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for Document(0);
  v2 = v5.receiver;
  v3 = [(Document *)&v5 localizedName];
  if (!v3)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v3 = String._bridgeToObjectiveC()();
  }

  return v3;
}

- (void)presentedItemDidMoveToURL:(id)a3
{
  v4 = sub_1000FF5D8(&qword_10020D600);
  __chkstk_darwin(v4 - 8);
  v6 = &v19 - v5;
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v19 - v12;
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v6, 1, 1, v14);
  (*(v8 + 16))(v10, v13, v7);
  type metadata accessor for MainActor();
  v15 = self;
  v16 = static MainActor.shared.getter();
  v17 = (*(v8 + 80) + 40) & ~*(v8 + 80);
  v18 = swift_allocObject();
  *(v18 + 2) = v16;
  *(v18 + 3) = &protocol witness table for MainActor;
  *(v18 + 4) = v15;
  (*(v8 + 32))(&v18[v17], v10, v7);
  sub_100128F38(0, 0, v6, &unk_1001A98C8, v18);

  (*(v8 + 8))(v13, v7);
}

- (void)openWithCompletionHandler:(id)a3
{
  v5 = sub_1000FF5D8(&qword_10020D600);
  __chkstk_darwin(v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(a3);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_1001A9888;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1001A9898;
  v12[5] = v11;
  v13 = self;
  sub_100181CC8(0, 0, v7, &unk_1001A98A8, v12);
}

- (_TtC17PreviewFoundation8Document)initWithFileURL:(id)a3
{
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = OBJC_IVAR____TtC17PreviewFoundation8Document_openingOptions;
  v9 = type metadata accessor for DocumentOpeningOptions();
  (*(*(v9 - 8) + 56))(self + v8, 1, 1, v9);
  *&self->stateDelegate[OBJC_IVAR____TtC17PreviewFoundation8Document_stateDelegate] = 0;
  swift_unknownObjectWeakInit();
  *&self->stateDelegate[OBJC_IVAR____TtC17PreviewFoundation8Document_delegate] = 0;
  swift_unknownObjectWeakInit();
  URL._bridgeToObjectiveC()(v10);
  v12 = v11;
  v13 = type metadata accessor for Document(0);
  v16.receiver = self;
  v16.super_class = v13;
  v14 = [(Document *)&v16 initWithFileURL:v12];

  (*(v5 + 8))(v7, v4);
  return v14;
}

@end