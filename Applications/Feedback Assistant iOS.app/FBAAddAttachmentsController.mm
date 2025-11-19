@interface FBAAddAttachmentsController
+ (void)handleErrorAttachingWithAttachment:(id)a3 viewController:(id)a4 devicesDiagnosticsController:(id)a5 error:(id)a6;
- (BOOL)tableView:(id)a3 canHandleDropSession:(id)a4;
- (_TtC18Feedback_Assistant27FBAAddAttachmentsController)init;
- (_TtC18Feedback_Assistant27FBAAddAttachmentsController)initWithDelegate:(id)a3;
- (id)menuForController:(id)a3;
- (id)sheetForController:(id)a3 selectedIndexPath:(id)a4 sender:(id)a5;
- (id)tableView:(id)a3 dropSessionDidUpdate:(id)a4 withDestinationIndexPath:(id)a5;
- (void)documentPicker:(id)a3 didPickDocumentsAtURLs:(id)a4;
- (void)getFilesFromFileProviderBeforeTheyDisappearWithCoordinator:(id)a3;
@end

@implementation FBAAddAttachmentsController

- (_TtC18Feedback_Assistant27FBAAddAttachmentsController)initWithDelegate:(id)a3
{
  swift_unknownObjectWeakInit();
  v4 = OBJC_IVAR____TtC18Feedback_Assistant27FBAAddAttachmentsController____lazy_storage___temporaryDirectory;
  v5 = sub_100041AA0(&qword_100109790, &unk_1000C29E0);
  (*(*(v5 - 8) + 56))(self + v4, 1, 1, v5);
  swift_unknownObjectWeakAssign();
  v7.receiver = self;
  v7.super_class = type metadata accessor for FBAAddAttachmentsController();
  return [(FBAAddAttachmentsController *)&v7 init];
}

- (id)sheetForController:(id)a3 selectedIndexPath:(id)a4 sender:(id)a5
{
  v8 = type metadata accessor for IndexPath();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = a3;
  v14 = a5;
  v15 = self;
  v16 = sub_10004F504(v13, v12, a5);

  (*(v9 + 8))(v12, v8);

  return v16;
}

- (id)menuForController:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_10004F894(v4);

  return v6;
}

- (_TtC18Feedback_Assistant27FBAAddAttachmentsController)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)documentPicker:(id)a3 didPickDocumentsAtURLs:(id)a4
{
  type metadata accessor for URL();
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = a3;
  v8 = self;
  sub_100052E18(v6);
}

+ (void)handleErrorAttachingWithAttachment:(id)a3 viewController:(id)a4 devicesDiagnosticsController:(id)a5 error:(id)a6
{
  swift_getObjCClassMetadata();
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  sub_100050218(v10, v11, v12, v13);
}

- (BOOL)tableView:(id)a3 canHandleDropSession:(id)a4
{
  v6 = a3;
  swift_unknownObjectRetain();
  v7 = self;
  v8 = sub_100052F20(a4);

  swift_unknownObjectRelease();
  return v8 & 1;
}

- (id)tableView:(id)a3 dropSessionDidUpdate:(id)a4 withDestinationIndexPath:(id)a5
{
  v9 = sub_100041AA0(&qword_100109880, &qword_1000C2C98);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v19 - v11;
  if (a5)
  {
    static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = type metadata accessor for IndexPath();
    (*(*(v13 - 8) + 56))(v12, 0, 1, v13);
  }

  else
  {
    v14 = type metadata accessor for IndexPath();
    (*(*(v14 - 8) + 56))(v12, 1, 1, v14);
  }

  v15 = a3;
  swift_unknownObjectRetain();
  v16 = self;
  v17 = sub_100050A18(v15, a4, v12);

  swift_unknownObjectRelease();
  sub_1000454C8(v12, &qword_100109880, &qword_1000C2C98);

  return v17;
}

- (void)getFilesFromFileProviderBeforeTheyDisappearWithCoordinator:(id)a3
{
  swift_unknownObjectRetain();
  v5 = self;
  sub_100050D74(a3);
  swift_unknownObjectRelease();
}

@end