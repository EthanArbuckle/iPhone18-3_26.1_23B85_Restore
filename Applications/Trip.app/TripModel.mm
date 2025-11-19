@interface TripModel
- (_TtC4Trip9TripModel)init;
- (void)carDidUpdate:(id)a3 receivedAllValues:(BOOL)a4;
- (void)carDidUpdateAccessories:(id)a3;
- (void)dealloc;
@end

@implementation TripModel

- (void)dealloc
{
  v3 = objc_opt_self();
  v4 = self;
  v5 = [v3 defaultCenter];
  if (qword_10005A3C8 != -1)
  {
    swift_once();
  }

  [v5 removeObserver:static NSNotificationName.ClusterEvent];

  v6.receiver = v4;
  v6.super_class = type metadata accessor for TripModel();
  [(TripModel *)&v6 dealloc];
}

- (void)carDidUpdateAccessories:(id)a3
{
  v4 = a3;
  v6 = self;
  v5 = sub_100034CE8(0xD000000000000027, 0x80000001000431F0, 0xD00000000000001BLL, 0x80000001000431D0, 240);
  sub_10001BC14(v5);
}

- (void)carDidUpdate:(id)a3 receivedAllValues:(BOOL)a4
{
  v5 = a3;
  v7 = self;
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