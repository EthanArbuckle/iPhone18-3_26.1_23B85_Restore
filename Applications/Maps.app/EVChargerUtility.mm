@interface EVChargerUtility
+ (id)chargerStringForNonRealDataWithChargerNumber:(int64_t)a3;
+ (id)realTimeEVChargerDisplayStringWithEvCharger:(id)a3 mapDisplay:(BOOL)a4;
+ (int)realTimeEVChargerStatusWithEvCharger:(id)a3;
- (_TtC4Maps16EVChargerUtility)init;
@end

@implementation EVChargerUtility

+ (int)realTimeEVChargerStatusWithEvCharger:(id)a3
{
  v4 = objc_opt_self();
  v5 = a3;
  v6 = [v4 sharedSearchVirtualGarageManager];
  v7 = [v6 virtualGarage];

  if (v7)
  {
    v8 = [objc_opt_self() getRealTimeEVChargerInfo:v7 charger:v5];
    v9 = [v8 status];
  }

  else
  {
    v9 = [v5 _realTimePlugAvailabilityStatus];
  }

  return v9;
}

+ (id)chargerStringForNonRealDataWithChargerNumber:(int64_t)a3
{
  sub_1004CE920(a3);
  v3 = String._bridgeToObjectiveC()();

  return v3;
}

+ (id)realTimeEVChargerDisplayStringWithEvCharger:(id)a3 mapDisplay:(BOOL)a4
{
  v5 = a3;
  sub_1004CE7A4(v5, a4);

  v6 = String._bridgeToObjectiveC()();

  return v6;
}

- (_TtC4Maps16EVChargerUtility)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for EVChargerUtility();
  return [(EVChargerUtility *)&v3 init];
}

@end