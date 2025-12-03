@interface CRLUSDItemImporter
+ (BOOL)protected_canImportFileAtURL:(id)l type:(id)type;
+ (NSArray)protected_supportedFileUTTypes;
- (NSError)error;
- (_TtC8Freeform18CRLUSDItemImporter)initWithURL:(id)l boardItemFactory:(id)factory;
- (void)cancel;
- (void)importBoardItemWithCompletionHandler:(id)handler;
@end

@implementation CRLUSDItemImporter

+ (NSArray)protected_supportedFileUTTypes
{
  supported3DFileUTTypes = [objc_opt_self() supported3DFileUTTypes];
  if (!supported3DFileUTTypes)
  {
    type metadata accessor for UTType();
    static Array._unconditionallyBridgeFromObjectiveC(_:)();
    isa = Array._bridgeToObjectiveC()().super.isa;

    supported3DFileUTTypes = isa;
  }

  return supported3DFileUTTypes;
}

+ (BOOL)protected_canImportFileAtURL:(id)l type:(id)type
{
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = sub_100BA246C();
  (*(v5 + 8))(v7, v4);
  return v8 & 1;
}

- (void)cancel
{
  if (*(&self->super.super.isa + OBJC_IVAR____TtC8Freeform18CRLUSDItemImporter_importBoardItemTask))
  {
    selfCopy = self;

    sub_1005B981C(&unk_1019F6B40);
    Task.cancel()();
  }
}

- (void)importBoardItemWithCompletionHandler:(id)handler
{
  v5 = sub_1005B981C(&qword_1019FB750);
  __chkstk_darwin(v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_10149D7F0;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1014938A0;
  v12[5] = v11;
  selfCopy = self;
  sub_10119D67C(0, 0, v7, &unk_101470870, v12);
}

- (NSError)error
{
  if (*(&self->super.super.isa + OBJC_IVAR____TtC8Freeform18CRLUSDItemImporter__error))
  {
    swift_errorRetain();
    v2 = _convertErrorToNSError(_:)();
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (_TtC8Freeform18CRLUSDItemImporter)initWithURL:(id)l boardItemFactory:(id)factory
{
  v5 = type metadata accessor for URL();
  __chkstk_darwin(v5 - 8);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  return sub_100BA1A5C(v7, factory);
}

@end