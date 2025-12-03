@interface TripModel
- (_TtC4Trip9TripModel)init;
- (void)carDidUpdate:(id)update receivedAllValues:(BOOL)values;
- (void)carDidUpdateAccessories:(id)accessories;
- (void)dealloc;
@end

@implementation TripModel

- (void)dealloc
{
  v3 = objc_opt_self();
  selfCopy = self;
  defaultCenter = [v3 defaultCenter];
  if (qword_10005A3C8 != -1)
  {
    swift_once();
  }

  [defaultCenter removeObserver:static NSNotificationName.ClusterEvent];

  v6.receiver = selfCopy;
  v6.super_class = type metadata accessor for TripModel();
  [(TripModel *)&v6 dealloc];
}

- (void)carDidUpdateAccessories:(id)accessories
{
  accessoriesCopy = accessories;
  selfCopy = self;
  v5 = sub_100034CE8(0xD000000000000027, 0x80000001000431F0, 0xD00000000000001BLL, 0x80000001000431D0, 240);
  sub_10001BC14(v5);
}

- (void)carDidUpdate:(id)update receivedAllValues:(BOOL)values
{
  updateCopy = update;
  selfCopy = self;
  v6 = sub_100034CE8(0xD00000000000002ELL, 0x80000001000431A0, 0xD000000000000022, 0x8000000100043170, 245);
  sub_10001BC14(v6);
}

- (_TtC4Trip9TripModel)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end