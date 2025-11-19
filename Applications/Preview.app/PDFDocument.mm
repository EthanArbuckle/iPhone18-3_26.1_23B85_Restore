@interface PDFDocument
- (BOOL)loadFromContents:(id)a3 ofType:(id)a4 error:(id *)a5;
- (BOOL)writeContents:(id)a3 toURL:(id)a4 forSaveOperation:(int64_t)a5 originalContentsURL:(id)a6 error:(id *)a7;
- (_TtC17PreviewFoundation11PDFDocument)initWithFileURL:(id)a3;
@end

@implementation PDFDocument

- (BOOL)loadFromContents:(id)a3 ofType:(id)a4 error:(id *)a5
{
  swift_unknownObjectRetain();
  v7 = self;
  v8 = a4;
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  if (v8)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  sub_100186030(v10);
  sub_10010FA4C(v10);

  return 1;
}

- (BOOL)writeContents:(id)a3 toURL:(id)a4 forSaveOperation:(int64_t)a5 originalContentsURL:(id)a6 error:(id *)a7
{
  v10 = sub_1000FF5D8(&qword_10020DAA8);
  __chkstk_darwin(v10 - 8);
  v12 = &v25[-v11];
  v13 = type metadata accessor for URL();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v25[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v17);
  v19 = &v25[-v18];
  swift_unknownObjectRetain();
  v20 = a4;
  v21 = self;
  v22 = a6;
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  if (v22)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v14 + 32))(v12, v16, v13);
    v23 = 0;
  }

  else
  {
    v23 = 1;
  }

  (*(v14 + 56))(v12, v23, 1, v13);
  sub_100186260(v26, v19, v12);

  sub_100110174(v12, &qword_10020DAA8);
  (*(v14 + 8))(v19, v13);
  sub_10010FA4C(v26);
  return 1;
}

- (_TtC17PreviewFoundation11PDFDocument)initWithFileURL:(id)a3
{
  v3 = type metadata accessor for URL();
  __chkstk_darwin(v3 - 8);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  return sub_100185D44(v5);
}

@end