@interface CarEVChargingAvailabilityViewController
- (NSArray)focusOrderSubItems;
- (NSArray)preferredFocusEnvironments;
- (_TtC4Maps39CarEVChargingAvailabilityViewController)initWithCoder:(id)coder;
- (_TtC4Maps39CarEVChargingAvailabilityViewController)initWithNibName:(id)name bundle:(id)bundle;
- (_TtC4Maps39CarEVChargingAvailabilityViewController)initWithViewModal:(id)modal;
- (void)configureForModalPresentation;
- (void)evChargingViewModelDidUpdate:(id)update;
- (void)loadView;
- (void)viewDidLoad;
@end

@implementation CarEVChargingAvailabilityViewController

- (_TtC4Maps39CarEVChargingAvailabilityViewController)initWithViewModal:(id)modal
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC4Maps39CarEVChargingAvailabilityViewController_viewModal) = modal;
  v7.receiver = self;
  v7.super_class = type metadata accessor for CarEVChargingAvailabilityViewController();
  modalCopy = modal;
  v5 = [(CarEVChargingAvailabilityViewController *)&v7 initWithNibName:0 bundle:0];
  swift_unknownObjectWeakAssign();

  return v5;
}

- (_TtC4Maps39CarEVChargingAvailabilityViewController)initWithCoder:(id)coder
{
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)loadView
{
  type metadata accessor for CarEVChargingAvailabilityView();
  v3 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  selfCopy = self;
  v4 = [v3 init];
  [(CarEVChargingAvailabilityViewController *)selfCopy setView:v4];
}

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for CarEVChargingAvailabilityViewController();
  v2 = v6.receiver;
  [(CarEVChargingAvailabilityViewController *)&v6 viewDidLoad];
  view = [v2 view];
  if (view)
  {
    v4 = view;
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

- (void)evChargingViewModelDidUpdate:(id)update
{
  selfCopy = self;
  view = [(CarEVChargingAvailabilityViewController *)selfCopy view];
  if (view)
  {
    type metadata accessor for CarEVChargingAvailabilityView();
    if (swift_dynamicCastClass())
    {

      sub_100438078(v3);

      return;
    }

    v4 = view;
  }

  else
  {
    v4 = selfCopy;
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
  selfCopy = self;
  view = [(CarEVChargingAvailabilityViewController *)selfCopy view];
  if (view)
  {
    v3 = view;
    [view setDirectionalLayoutMargins:{16.0, 16.0, 16.0, 16.0}];
  }

  else
  {
    __break(1u);
  }
}

- (_TtC4Maps39CarEVChargingAvailabilityViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end