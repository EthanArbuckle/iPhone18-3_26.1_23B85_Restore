@interface ObservableThermalController
- (_TtC12ClarityBoard27ObservableThermalController)init;
- (void)thermalLevelDidUpdate;
@end

@implementation ObservableThermalController

- (void)thermalLevelDidUpdate
{
  selfCopy = self;
  sub_1000AF66C();
}

- (_TtC12ClarityBoard27ObservableThermalController)init
{
  v3 = sub_10002B6CC(&qword_10032FF50);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v10 - v5;
  v7 = OBJC_IVAR____TtC12ClarityBoard27ObservableThermalController__thermalLevel;
  v12 = 2;
  Published.init(initialValue:)();
  (*(v4 + 32))(self + v7, v6, v3);
  v8 = type metadata accessor for ObservableThermalController();
  v11.receiver = self;
  v11.super_class = v8;
  return [(CLBThermalController *)&v11 init];
}

@end