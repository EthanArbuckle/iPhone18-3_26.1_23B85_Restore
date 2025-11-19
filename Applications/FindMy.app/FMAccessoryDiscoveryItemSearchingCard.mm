@interface FMAccessoryDiscoveryItemSearchingCard
- (_TtC6FindMy37FMAccessoryDiscoveryItemSearchingCard)initWithContentView:(id)a3;
- (void)dealloc;
- (void)traitCollectionDidChange:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation FMAccessoryDiscoveryItemSearchingCard

- (void)dealloc
{
  v2 = self;

  v3 = dispatch thunk of FMIPAccessoryDiscoveryController.callbacks.modify();
  FMIPAccessoryDiscoveryController.Callbacks.detectedPairingAccessoryCallback.setter();
  v3(v5, 0);

  v4.receiver = v2;
  v4.super_class = type metadata accessor for FMAccessoryDiscoveryItemSearchingCard();
  [(FMAccessoryDiscoveryItemSearchingCard *)&v4 dealloc];
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for FMAccessoryDiscoveryItemSearchingCard();
  v2 = v5.receiver;
  [(FMAccessoryDiscoveryVideoCard *)&v5 viewDidLoad];
  swift_allocObject();
  swift_unknownObjectWeakInit();

  v3 = dispatch thunk of FMIPAccessoryDiscoveryController.callbacks.modify();
  FMIPAccessoryDiscoveryController.Callbacks.detectedPairingAccessoryCallback.setter();
  v3(&v4, 0);

  sub_1003F2F50();
  sub_1003F30C8();
}

- (void)viewDidAppear:(BOOL)a3
{
  v3 = a3;
  v7.receiver = self;
  v7.super_class = type metadata accessor for FMAccessoryDiscoveryItemSearchingCard();
  v4 = v7.receiver;
  [(FMAccessoryDiscoveryItemSearchingCard *)&v7 viewDidAppear:v3];
  v5 = *(*&v4[OBJC_IVAR____TtC6FindMy37FMAccessoryDiscoveryItemSearchingCard_viewModel] + 24);

  v6 = sub_1003F380C(v4, v5);

  *&v4[OBJC_IVAR____TtC6FindMy37FMAccessoryDiscoveryItemSearchingCard_deviceSubscription] = v6;

  sub_1003F25B8();
}

- (void)viewWillDisappear:(BOOL)a3
{
  v4 = self;
  sub_1003F1ED0(a3);
}

- (void)traitCollectionDidChange:(id)a3
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for FMAccessoryDiscoveryItemSearchingCard();
  v4 = a3;
  v5 = v6.receiver;
  [(FMAccessoryDiscoveryItemSearchingCard *)&v6 traitCollectionDidChange:v4];
  sub_1003F30C8();
}

- (_TtC6FindMy37FMAccessoryDiscoveryItemSearchingCard)initWithContentView:(id)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end