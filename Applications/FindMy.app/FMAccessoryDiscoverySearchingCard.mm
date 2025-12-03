@interface FMAccessoryDiscoverySearchingCard
- (_TtC6FindMy33FMAccessoryDiscoverySearchingCard)initWithContentView:(id)view;
- (void)traitCollectionDidChange:(id)change;
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

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_100290290(change);
}

- (_TtC6FindMy33FMAccessoryDiscoverySearchingCard)initWithContentView:(id)view
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end