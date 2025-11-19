@interface ICArchiveImportNoteFileParser
- (BOOL)canHandleFileURL:(id)a3;
- (NSArray)allowedContentTypes;
- (void)cancelParsing;
- (void)parseFileURL:(id)a3 newNoteBlock:(id)a4 updatedNoteBlock:(id)a5 errorBlock:(id)a6 completionBlock:(id)a7;
- (void)totalNotesFoundAtFileURL:(id)a3 completionBlock:(id)a4;
@end

@implementation ICArchiveImportNoteFileParser

- (NSArray)allowedContentTypes
{
  type metadata accessor for UTType();

  v2.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v2.super.isa;
}

- (BOOL)canHandleFileURL:(id)a3
{
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = self;
  v9 = sub_10024A554();

  (*(v5 + 8))(v7, v4);
  return v9 & 1;
}

- (void)totalNotesFoundAtFileURL:(id)a3 completionBlock:(id)a4
{
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = _Block_copy(a4);
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  v12 = self;
  sub_10024A748(v9, sub_1001C57D4, v11);

  (*(v7 + 8))(v9, v6);
}

- (void)parseFileURL:(id)a3 newNoteBlock:(id)a4 updatedNoteBlock:(id)a5 errorBlock:(id)a6 completionBlock:(id)a7
{
  v25 = type metadata accessor for URL();
  v12 = *(v25 - 8);
  __chkstk_darwin(v25);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = _Block_copy(a4);
  v16 = _Block_copy(a5);
  v17 = _Block_copy(a6);
  v18 = _Block_copy(a7);
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = swift_allocObject();
  *(v19 + 16) = v15;
  v20 = swift_allocObject();
  *(v20 + 16) = v16;
  v21 = swift_allocObject();
  *(v21 + 16) = v17;
  v22 = swift_allocObject();
  *(v22 + 16) = v18;
  v23 = self;
  sub_10024B368(v14, sub_10000F828, v19, sub_1001C57D4, v20, sub_10024C9E8, v21, sub_1001C57CC, v22);

  (*(v12 + 8))(v14, v25);
}

- (void)cancelParsing
{
  v2 = self;
  sub_10024C4A8();
}

@end