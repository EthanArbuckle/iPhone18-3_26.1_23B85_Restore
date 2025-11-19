@interface ICArchiveExporter
+ (ICArchiveExporter)exporterForHandoffToPages;
+ (ICArchiveExporter)exporterForMarkdown;
- (BOOL)removeArchiveAt:(id)a3 error:(id *)a4;
- (id)createArchiveForObjects:(id)a3 progress:(id)a4 error:(id *)a5;
@end

@implementation ICArchiveExporter

+ (ICArchiveExporter)exporterForHandoffToPages
{
  sub_10042E0FC();

  return v2;
}

+ (ICArchiveExporter)exporterForMarkdown
{
  sub_10042E22C();

  return v2;
}

- (id)createArchiveForObjects:(id)a3 progress:(id)a4 error:(id *)a5
{
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000054A4(0, &qword_1006C1B60);
  v11 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = a4;
  v13 = self;
  sub_10042D194(v11, v12, v10);

  URL._bridgeToObjectiveC()(v14);
  v16 = v15;
  (*(v8 + 8))(v10, v7);

  return v16;
}

- (BOOL)removeArchiveAt:(id)a3 error:(id *)a4
{
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = self;
  sub_10041D36C(v8);
  (*(v6 + 8))(v8, v5);

  return 1;
}

@end