@interface ChargeModel
- (_TtC6Charge11ChargeModel)init;
- (void)carDidUpdate:(id)a3 receivedAllValues:(BOOL)a4;
- (void)carDidUpdateAccessories:(id)a3;
- (void)chargingRateService:(id)a3 didUpdateChargingSpeed:(id)a4;
- (void)chargingStatusService:(void *)a1 didUpdateChargingState:;
- (void)dimensionManager:(id)a3 didUpdateMeasurementSystem:(unint64_t)a4;
@end

@implementation ChargeModel

- (void)carDidUpdateAccessories:(id)a3
{
  v3 = self;
  sub_1000077DC(0xD000000000000020, 0x8000000100017B90, 0xD00000000000001BLL, 0x8000000100017BC0, 54);
  sub_100013D10();
}

- (void)carDidUpdate:(id)a3 receivedAllValues:(BOOL)a4
{
  v4 = a4;
  v5 = self;
  if (v4)
  {
    sub_1000077DC(0xD00000000000001FLL, 0x8000000100017B70, 0xD000000000000022, 0x8000000100017B40, 64);
    sub_100013D10();
  }

  else
  {
    sub_100007718(0xD000000000000020, 0x8000000100017B10, 0xD000000000000022, 0x8000000100017B40, 60);
  }
}

- (void)chargingStatusService:(void *)a1 didUpdateChargingState:
{
  v1 = a1;
  sub_1000144C8();
}

- (void)chargingRateService:(id)a3 didUpdateChargingSpeed:(id)a4
{
  v5 = sub_100005790(&qword_100027300, &qword_10001A848);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v11 - v7;
  if (a4)
  {
    sub_100005F24(0, &unk_100027310, NSUnitSpeed_ptr);
    static Measurement._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = sub_100005790(&qword_100027308, &qword_10001A850);
    (*(*(v9 - 8) + 56))(v8, 0, 1, v9);
  }

  else
  {
    v10 = sub_100005790(&qword_100027308, &qword_10001A850);
    (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
  }

  sub_100005EC4(v8, &qword_100027300, &qword_10001A848);
}

- (void)dimensionManager:(id)a3 didUpdateMeasurementSystem:(unint64_t)a4
{
  v4 = self;
  sub_100014618();
}

- (_TtC6Charge11ChargeModel)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end