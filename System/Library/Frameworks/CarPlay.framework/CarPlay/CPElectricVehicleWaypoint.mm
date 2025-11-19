@interface CPElectricVehicleWaypoint
- (CPElectricVehicleWaypoint)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)power;
- (id)voltage;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CPElectricVehicleWaypoint

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x277CCAB18]);
  [v3 setUnitStyle:1];
  [v3 setUnitOptions:1];
  v15 = MEMORY[0x277CCACA8];
  v14 = objc_opt_class();
  v4 = [(CPElectricVehicleWaypoint *)self connectors];
  v5 = [v4 componentsJoinedByString:{@", "}];
  v6 = [(CPElectricVehicleWaypoint *)self arrivalBatteryLevel];
  v7 = [v3 stringFromMeasurement:v6];
  v8 = [(CPElectricVehicleWaypoint *)self departureBatteryLevel];
  v9 = [v3 stringFromMeasurement:v8];
  v10 = [(CPElectricVehicleWaypoint *)self finalWaypointBatteryLevel];
  v11 = [v3 stringFromMeasurement:v10];
  v12 = [v15 stringWithFormat:@"<%@: %p connectors=[%@] batteryLevel(arrival=%@ departure=%@ finalWaypoint=%@)>>", v14, self, v5, v7, v9, v11];

  return v12;
}

- (id)voltage
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = [(CPElectricVehicleWaypoint *)self connectors];
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = [v9 voltage];
        v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v9, "type")}];
        [v3 setObject:v10 forKeyedSubscript:v11];
      }

      v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  v12 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)power
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = [(CPElectricVehicleWaypoint *)self connectors];
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = [v9 power];
        v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v9, "type")}];
        [v3 setObject:v10 forKeyedSubscript:v11];
      }

      v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  v12 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_opt_new();
  v5 = [(CPElectricVehicleWaypoint *)self connectors];
  [v4 setConnectors:v5];

  v6 = [(CPElectricVehicleWaypoint *)self arrivalBatteryLevel];
  [v4 setArrivalBatteryLevel:v6];

  v7 = [(CPElectricVehicleWaypoint *)self departureBatteryLevel];
  [v4 setDepartureBatteryLevel:v7];

  v8 = [(CPElectricVehicleWaypoint *)self finalWaypointBatteryLevel];
  [v4 setFinalWaypointBatteryLevel:v8];

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(CPElectricVehicleWaypoint *)self connectors];
  v6 = NSStringFromSelector(sel_connectors);
  [v4 encodeObject:v5 forKey:v6];

  v7 = [(CPElectricVehicleWaypoint *)self arrivalBatteryLevel];
  v8 = NSStringFromSelector(sel_arrivalBatteryLevel);
  [v4 encodeObject:v7 forKey:v8];

  v9 = [(CPElectricVehicleWaypoint *)self departureBatteryLevel];
  v10 = NSStringFromSelector(sel_departureBatteryLevel);
  [v4 encodeObject:v9 forKey:v10];

  v12 = [(CPElectricVehicleWaypoint *)self finalWaypointBatteryLevel];
  v11 = NSStringFromSelector(sel_finalWaypointBatteryLevel);
  [v4 encodeObject:v12 forKey:v11];
}

- (CPElectricVehicleWaypoint)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  v6 = objc_opt_class();
  v7 = NSStringFromSelector(sel_connectors);
  v8 = [v4 decodeObjectOfClass:v6 forKey:v7];
  [(CPElectricVehicleWaypoint *)v5 setConnectors:v8];

  v9 = objc_opt_class();
  v10 = NSStringFromSelector(sel_arrivalBatteryLevel);
  v11 = [v4 decodeObjectOfClass:v9 forKey:v10];
  [(CPElectricVehicleWaypoint *)v5 setArrivalBatteryLevel:v11];

  v12 = objc_opt_class();
  v13 = NSStringFromSelector(sel_departureBatteryLevel);
  v14 = [v4 decodeObjectOfClass:v12 forKey:v13];
  [(CPElectricVehicleWaypoint *)v5 setDepartureBatteryLevel:v14];

  v15 = objc_opt_class();
  v16 = NSStringFromSelector(sel_finalWaypointBatteryLevel);
  v17 = [v4 decodeObjectOfClass:v15 forKey:v16];

  [(CPElectricVehicleWaypoint *)v5 setFinalWaypointBatteryLevel:v17];
  return v5;
}

@end