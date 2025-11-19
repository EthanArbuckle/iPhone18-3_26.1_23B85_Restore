@interface CarEVChargingAvailabilityViewController
- (NSArray)focusOrderSubItems;
- (NSArray)preferredFocusEnvironments;
- (_TtC4Maps39CarEVChargingAvailabilityViewController)initWithCoder:(id)a3;
- (_TtC4Maps39CarEVChargingAvailabilityViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (_TtC4Maps39CarEVChargingAvailabilityViewController)initWithViewModal:(id)a3;
- (void)configureForModalPresentation;
- (void)evChargingViewModelDidUpdate:(id)a3;
- (void)loadView;
- (void)viewDidLoad;
@end

@implementation CarEVChargingAvailabilityViewController

- (_TtC4Maps39CarEVChargingAvailabilityViewController)initWithViewModal:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC4Maps39CarEVChargingAvailabilityViewController_viewModal) = a3;
  v7.receiver = self;
  v7.super_class = type metadata accessor for CarEVChargingAvailabilityViewController();
  v4 = a3;
  v5 = [(CarEVChargingAvailabilityViewController *)&v7 initWithNibName:0 bundle:0];
  swift_unknownObjectWeakAssign();

  return v5;
}

- (_TtC4Maps39CarEVChargingAvailabilityViewController)initWithCoder:(id)a3
{
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)loadView
{
  type metadata accessor for CarEVChargingAvailabilityView();
  v3 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v5 = self;
  v4 = [v3 init];
  [(CarEVChargingAvailabilityViewController *)v5 setView:v4];
}

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for CarEVChargingAvailabilityViewController();
  v2 = v6.receiver;
  [(CarEVChargingAvailabilityViewController *)&v6 viewDidLoad];
  v3 = [v2 view];
  if (v3)
  {
    v4 = v3;
    type metadata accessor for CarEVChargingAvailabilityView();
    if (swift_dynamicCastClass())
    {

      sub_100438078(v5);
    }

    else
    {
    }
  }

  else
  {
  }
}

- (void)evChargingViewModelDidUpdate:(id)a3
{
  v6 = self;
  v5 = [(CarEVChargingAvailabilityViewController *)v6 view];
  if (v5)
  {
    type metadata accessor for CarEVChargingAvailabilityView();
    if (swift_dynamicCastClass())
    {

      sub_100438078(v3);

      return;
    }

    v4 = v5;
  }

  else
  {
    v4 = v6;
  }
}

- (NSArray)focusOrderSubItems
{
  sub_1000CE6B8(&qword_101914ED0);
  v2.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v2.super.isa;
}

- (NSArray)preferredFocusEnvironments
{
  sub_1000CE6B8(&unk_10190DFB0);
  v2.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v2.super.isa;
}

- (void)configureForModalPresentation
{
  v4 = self;
  v2 = [(CarEVChargingAvailabilityViewController *)v4 view];
  if (v2)
  {
    v3 = v2;
    [v2 setDirectionalLayoutMargins:{16.0, 16.0, 16.0, 16.0}];
  }

  else
  {
    __break(1u);
  }
}

- (_TtC4Maps39CarEVChargingAvailabilityViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end