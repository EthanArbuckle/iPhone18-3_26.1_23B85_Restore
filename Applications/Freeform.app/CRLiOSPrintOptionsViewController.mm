@interface CRLiOSPrintOptionsViewController
- (NSString)summary;
- (_TtC8Freeform32CRLiOSPrintOptionsViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)setPrintInfo:(id)info;
- (void)setSummary:(id)summary;
- (void)viewDidLoad;
@end

@implementation CRLiOSPrintOptionsViewController

- (void)setPrintInfo:(id)info
{
  v4 = *(self + OBJC_IVAR____TtC8Freeform32CRLiOSPrintOptionsViewController_printInfo);
  *(self + OBJC_IVAR____TtC8Freeform32CRLiOSPrintOptionsViewController_printInfo) = info;
  infoCopy = info;
}

- (NSString)summary
{

  v2 = String._bridgeToObjectiveC()();

  return v2;
}

- (void)setSummary:(id)summary
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = (self + OBJC_IVAR____TtC8Freeform32CRLiOSPrintOptionsViewController_summary);
  *v5 = v4;
  v5[1] = v6;
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_100D43A78();
}

- (_TtC8Freeform32CRLiOSPrintOptionsViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end