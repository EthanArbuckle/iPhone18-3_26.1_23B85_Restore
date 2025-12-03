@interface WDEDiagnosticFileProvider
- (id)exportDirectoryAndReturnError:(id *)error;
- (id)files;
@end

@implementation WDEDiagnosticFileProvider

- (id)files
{
  selfCopy = self;
  DiagnosticFileProvider.files()();

  v3.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v3.super.isa;
}

- (id)exportDirectoryAndReturnError:(id *)error
{
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  selfCopy = self;
  DiagnosticFileProvider.exportDirectory()(v7);

  URL._bridgeToObjectiveC()(v9);
  v11 = v10;
  (*(v5 + 8))(v7, v4);

  return v11;
}

@end