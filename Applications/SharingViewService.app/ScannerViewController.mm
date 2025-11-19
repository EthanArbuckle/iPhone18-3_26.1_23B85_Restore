@interface ScannerViewController
- (_TtC18SharingViewService21ScannerViewController)initWithScannerEngine:(id)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation ScannerViewController

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v7.receiver = self;
  v7.super_class = type metadata accessor for ScannerViewController();
  v4 = v7.receiver;
  [(ScannerViewController *)&v7 viewWillAppear:v3];
  v5 = *&v4[OBJC_IVAR____TtC18SharingViewService21ScannerViewController_scannerEngineViewController + 8];
  ObjectType = swift_getObjectType();
  (*(v5 + 8))(ObjectType, v5);
  [v4 resetConfirmationRing];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v3 = a3;
  v7.receiver = self;
  v7.super_class = type metadata accessor for ScannerViewController();
  v4 = v7.receiver;
  [(ScannerViewController *)&v7 viewDidDisappear:v3];
  v5 = *&v4[OBJC_IVAR____TtC18SharingViewService21ScannerViewController_scannerEngineViewController + 8];
  ObjectType = swift_getObjectType();
  (*(v5 + 16))(ObjectType, v5);
}

- (_TtC18SharingViewService21ScannerViewController)initWithScannerEngine:(id)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end