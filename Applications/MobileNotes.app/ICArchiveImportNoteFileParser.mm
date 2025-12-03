@interface ICArchiveImportNoteFileParser
- (BOOL)canHandleFileURL:(id)l;
- (NSArray)allowedContentTypes;
- (void)cancelParsing;
- (void)parseFileURL:(id)l newNoteBlock:(id)block updatedNoteBlock:(id)noteBlock errorBlock:(id)errorBlock completionBlock:(id)completionBlock;
- (void)totalNotesFoundAtFileURL:(id)l completionBlock:(id)block;
@end

@implementation ICArchiveImportNoteFileParser

- (NSArray)allowedContentTypes
{
  type metadata accessor for UTType();

  v2.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v2.super.isa;
}

- (BOOL)canHandleFileURL:(id)l
{
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  v9 = sub_10024A554();

  (*(v5 + 8))(v7, v4);
  return v9 & 1;
}

- (void)totalNotesFoundAtFileURL:(id)l completionBlock:(id)block
{
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = _Block_copy(block);
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  selfCopy = self;
  sub_10024A748(v9, sub_1001C57D4, v11);

  (*(v7 + 8))(v9, v6);
}

- (void)parseFileURL:(id)l newNoteBlock:(id)block updatedNoteBlock:(id)noteBlock errorBlock:(id)errorBlock completionBlock:(id)completionBlock
{
  v25 = type metadata accessor for URL();
  v12 = *(v25 - 8);
  __chkstk_darwin(v25);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = _Block_copy(block);
  v16 = _Block_copy(noteBlock);
  v17 = _Block_copy(errorBlock);
  v18 = _Block_copy(completionBlock);
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = swift_allocObject();
  *(v19 + 16) = v15;
  v20 = swift_allocObject();
  *(v20 + 16) = v16;
  v21 = swift_allocObject();
  *(v21 + 16) = v17;
  v22 = swift_allocObject();
  *(v22 + 16) = v18;
  selfCopy = self;
  sub_10024B368(v14, sub_10000F828, v19, sub_1001C57D4, v20, sub_10024C9E8, v21, sub_1001C57CC, v22);

  (*(v12 + 8))(v14, v25);
}

- (void)cancelParsing
{
  selfCopy = self;
  sub_10024C4A8();
}

@end