@interface ScannerViewController
- (_TtC18SharingViewService21ScannerViewController)initWithScannerEngine:(id)engine;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation ScannerViewController

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v7.receiver = self;
  v7.super_class = type metadata accessor for ScannerViewController();
  v4 = v7.receiver;
  [(ScannerViewController *)&v7 viewWillAppear:appearCopy];
  v5 = *&v4[OBJC_IVAR____TtC18SharingViewService21ScannerViewController_scannerEngineViewController + 8];
  ObjectType = swift_getObjectType();
  (*(v5 + 8))(ObjectType, v5);
  [v4 resetConfirmationRing];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v7.receiver = self;
  v7.super_class = type metadata accessor for ScannerViewController();
  v4 = v7.receiver;
  [(ScannerViewController *)&v7 viewDidDisappear:disappearCopy];
  v5 = *&v4[OBJC_IVAR____TtC18SharingViewService21ScannerViewController_scannerEngineViewController + 8];
  ObjectType = swift_getObjectType();
  (*(v5 + 16))(ObjectType, v5);
}

- (_TtC18SharingViewService21ScannerViewController)initWithScannerEngine:(id)engine
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end