@interface FMAccessoryPairingConfirmationCard
- (_TtC6FindMy34FMAccessoryPairingConfirmationCard)initWithContentView:(id)view;
- (id)mapView:(id)view viewForAnnotation:(id)annotation;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation FMAccessoryPairingConfirmationCard

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for FMAccessoryPairingConfirmationCard(0);
  v2 = v5.receiver;
  [(FMAccessoryPairingConfirmationCard *)&v5 viewDidLoad];
  v3 = *(*&v2[OBJC_IVAR____TtC6FindMy34FMAccessoryPairingConfirmationCard_viewModel] + 24);

  v4 = sub_1003F359C(v2, v3);

  *&v2[OBJC_IVAR____TtC6FindMy34FMAccessoryPairingConfirmationCard_subscription] = v4;

  sub_1001CCC30();
  sub_1001CC780();
  sub_1001CCD4C();
}

- (void)viewDidLayoutSubviews
{
  v2.receiver = self;
  v2.super_class = type metadata accessor for FMAccessoryPairingConfirmationCard(0);
  [(FMAccessoryPairingConfirmationCard *)&v2 viewDidLayoutSubviews];
}

- (_TtC6FindMy34FMAccessoryPairingConfirmationCard)initWithContentView:(id)view
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (id)mapView:(id)view viewForAnnotation:(id)annotation
{
  type metadata accessor for FMDiscoveredAccessoryAnnotation();
  if (swift_dynamicCastClass())
  {
    v6 = qword_1006AEB10;
    viewCopy = view;
    swift_unknownObjectRetain();
    if (v6 != -1)
    {
      swift_once();
    }

    v8 = String._bridgeToObjectiveC()();
    v9 = [viewCopy dequeueReusableAnnotationViewWithIdentifier:v8 forAnnotation:annotation];

    swift_unknownObjectRelease();
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end