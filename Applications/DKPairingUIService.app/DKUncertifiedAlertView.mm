@interface DKUncertifiedAlertView
- (_TtC18DKPairingUIService22DKUncertifiedAlertView)initWithCoder:(id)coder;
- (_TtC18DKPairingUIService22DKUncertifiedAlertView)initWithNibName:(id)name bundle:(id)bundle;
- (void)viewDidLoad;
@end

@implementation DKUncertifiedAlertView

- (_TtC18DKPairingUIService22DKUncertifiedAlertView)initWithCoder:(id)coder
{
  v4 = OBJC_IVAR____TtC18DKPairingUIService22DKUncertifiedAlertView_logger;
  Logger.init(subsystem:category:)();
  v5 = OBJC_IVAR____TtC18DKPairingUIService22DKUncertifiedAlertView_viewAlert;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC18DKPairingUIService22DKUncertifiedAlertView_viewAlert) = 0;
  v6 = type metadata accessor for Logger();
  (*(*(v6 - 8) + 8))(self + v4, v6);

  type metadata accessor for DKUncertifiedAlertView();
  v7 = *((swift_isaMask & self->super.super.super.isa) + 0x30);
  v8 = *((swift_isaMask & self->super.super.super.isa) + 0x34);
  swift_deallocPartialClassInstance();
  return 0;
}

- (void)viewDidLoad
{
  v2.receiver = self;
  v2.super_class = type metadata accessor for DKUncertifiedAlertView();
  [(DKUncertifiedAlertView *)&v2 viewDidLoad];
}

- (_TtC18DKPairingUIService22DKUncertifiedAlertView)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end