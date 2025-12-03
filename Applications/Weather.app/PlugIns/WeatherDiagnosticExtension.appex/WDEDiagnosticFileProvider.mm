@interface WDEDiagnosticFileProvider
- (id)exportDirectoryAndReturnError:(id *)error;
- (id)files;
@end

@implementation WDEDiagnosticFileProvider

- (id)files
{
  selfCopy = self;
  DiagnosticFileProvider.files()();

  v3.super.isa = sub_1000043A4().super.isa;

  return v3.super.isa;
}

- (id)exportDirectoryAndReturnError:(id *)error
{
  v4 = sub_100004144();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  selfCopy = self;
  DiagnosticFileProvider.exportDirectory()(v8);

  sub_100004114(v10);
  v12 = v11;
  (*(v5 + 8))(v8, v4);

  return v12;
}

@end