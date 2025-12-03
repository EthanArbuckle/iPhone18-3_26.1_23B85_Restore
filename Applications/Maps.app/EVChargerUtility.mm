@interface EVChargerUtility
+ (id)chargerStringForNonRealDataWithChargerNumber:(int64_t)number;
+ (id)realTimeEVChargerDisplayStringWithEvCharger:(id)charger mapDisplay:(BOOL)display;
+ (int)realTimeEVChargerStatusWithEvCharger:(id)charger;
- (_TtC4Maps16EVChargerUtility)init;
@end

@implementation EVChargerUtility

+ (int)realTimeEVChargerStatusWithEvCharger:(id)charger
{
  v4 = objc_opt_self();
  chargerCopy = charger;
  sharedSearchVirtualGarageManager = [v4 sharedSearchVirtualGarageManager];
  virtualGarage = [sharedSearchVirtualGarageManager virtualGarage];

  if (virtualGarage)
  {
    v8 = [objc_opt_self() getRealTimeEVChargerInfo:virtualGarage charger:chargerCopy];
    status = [v8 status];
  }

  else
  {
    status = [chargerCopy _realTimePlugAvailabilityStatus];
  }

  return status;
}

+ (id)chargerStringForNonRealDataWithChargerNumber:(int64_t)number
{
  sub_1004CE920(number);
  v3 = String._bridgeToObjectiveC()();

  return v3;
}

+ (id)realTimeEVChargerDisplayStringWithEvCharger:(id)charger mapDisplay:(BOOL)display
{
  chargerCopy = charger;
  sub_1004CE7A4(chargerCopy, display);

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