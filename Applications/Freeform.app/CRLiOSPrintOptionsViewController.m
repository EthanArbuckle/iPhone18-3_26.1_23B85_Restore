@interface CRLiOSPrintOptionsViewController
- (NSString)summary;
- (_TtC8Freeform32CRLiOSPrintOptionsViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)setPrintInfo:(id)a3;
- (void)setSummary:(id)a3;
- (void)viewDidLoad;
@end

@implementation CRLiOSPrintOptionsViewController

- (void)setPrintInfo:(id)a3
{
  v4 = *(self + OBJC_IVAR____TtC8Freeform32CRLiOSPrintOptionsViewController_printInfo);
  *(self + OBJC_IVAR____TtC8Freeform32CRLiOSPrintOptionsViewController_printInfo) = a3;
  v3 = a3;
}

- (NSString)summary
{

  v2 = String._bridgeToObjectiveC()();

  return v2;
}

- (void)setSummary:(id)a3
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = (self + OBJC_IVAR____TtC8Freeform32CRLiOSPrintOptionsViewController_summary);
  *v5 = v4;
  v5[1] = v6;
}

- (void)viewDidLoad
{
  v2 = self;
  sub_100D43A78();
}

- (_TtC8Freeform32CRLiOSPrintOptionsViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end