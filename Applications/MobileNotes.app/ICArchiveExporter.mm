@interface ICArchiveExporter
+ (ICArchiveExporter)exporterForHandoffToPages;
+ (ICArchiveExporter)exporterForMarkdown;
- (BOOL)removeArchiveAt:(id)at error:(id *)error;
- (id)createArchiveForObjects:(id)objects progress:(id)progress error:(id *)error;
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

- (id)createArchiveForObjects:(id)objects progress:(id)progress error:(id *)error
{
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000054A4(0, &qword_1006C1B60);
  v11 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  progressCopy = progress;
  selfCopy = self;
  sub_10042D194(v11, progressCopy, v10);

  URL._bridgeToObjectiveC()(v14);
  v16 = v15;
  (*(v8 + 8))(v10, v7);

  return v16;
}

- (BOOL)removeArchiveAt:(id)at error:(id *)error
{
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  sub_10041D36C(v8);
  (*(v6 + 8))(v8, v5);

  return 1;
}

@end