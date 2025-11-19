@interface WDEDiagnosticFileProvider
- (id)exportDirectoryAndReturnError:(id *)a3;
- (id)files;
@end

@implementation WDEDiagnosticFileProvider

- (id)files
{
  v2 = self;
  DiagnosticFileProvider.files()();

  v3.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v3.super.isa;
}

- (id)exportDirectoryAndReturnError:(id *)a3
{
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = self;
  DiagnosticFileProvider.exportDirectory()(v7);

  URL._bridgeToObjectiveC()(v9);
  v11 = v10;
  (*(v5 + 8))(v7, v4);

  return v11;
}

@end