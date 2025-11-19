@interface FMAccessoryDiscoverySearchingCard
- (_TtC6FindMy33FMAccessoryDiscoverySearchingCard)initWithContentView:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)viewDidLoad;
@end

@implementation FMAccessoryDiscoverySearchingCard

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for FMAccessoryDiscoverySearchingCard();
  v2 = v3.receiver;
  [(FMAccessoryDiscoveryVideoCard *)&v3 viewDidLoad];
  sub_100290058();
}

- (void)traitCollectionDidChange:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_100290290(a3);
}

- (_TtC6FindMy33FMAccessoryDiscoverySearchingCard)initWithContentView:(id)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end