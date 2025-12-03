@interface CPElectricVehicleWaypoint
- (CPElectricVehicleWaypoint)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)power;
- (id)voltage;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CPElectricVehicleWaypoint

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x277CCAB18]);
  [v3 setUnitStyle:1];
  [v3 setUnitOptions:1];
  v15 = MEMORY[0x277CCACA8];
  v14 = objc_opt_class();
  connectors = [(CPElectricVehicleWaypoint *)self connectors];
  v5 = [connectors componentsJoinedByString:{@", "}];
  arrivalBatteryLevel = [(CPElectricVehicleWaypoint *)self arrivalBatteryLevel];
  v7 = [v3 stringFromMeasurement:arrivalBatteryLevel];
  departureBatteryLevel = [(CPElectricVehicleWaypoint *)self departureBatteryLevel];
  v9 = [v3 stringFromMeasurement:departureBatteryLevel];
  finalWaypointBatteryLevel = [(CPElectricVehicleWaypoint *)self finalWaypointBatteryLevel];
  v11 = [v3 stringFromMeasurement:finalWaypointBatteryLevel];
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
  connectors = [(CPElectricVehicleWaypoint *)self connectors];
  v5 = [connectors countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(connectors);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        voltage = [v9 voltage];
        v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v9, "type")}];
        [v3 setObject:voltage forKeyedSubscript:v11];
      }

      v6 = [connectors countByEnumeratingWithState:&v14 objects:v18 count:16];
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
  connectors = [(CPElectricVehicleWaypoint *)self connectors];
  v5 = [connectors countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(connectors);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        power = [v9 power];
        v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v9, "type")}];
        [v3 setObject:power forKeyedSubscript:v11];
      }

      v6 = [connectors countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  v12 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_opt_new();
  connectors = [(CPElectricVehicleWaypoint *)self connectors];
  [v4 setConnectors:connectors];

  arrivalBatteryLevel = [(CPElectricVehicleWaypoint *)self arrivalBatteryLevel];
  [v4 setArrivalBatteryLevel:arrivalBatteryLevel];

  departureBatteryLevel = [(CPElectricVehicleWaypoint *)self departureBatteryLevel];
  [v4 setDepartureBatteryLevel:departureBatteryLevel];

  finalWaypointBatteryLevel = [(CPElectricVehicleWaypoint *)self finalWaypointBatteryLevel];
  [v4 setFinalWaypointBatteryLevel:finalWaypointBatteryLevel];

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  connectors = [(CPElectricVehicleWaypoint *)self connectors];
  v6 = NSStringFromSelector(sel_connectors);
  [coderCopy encodeObject:connectors forKey:v6];

  arrivalBatteryLevel = [(CPElectricVehicleWaypoint *)self arrivalBatteryLevel];
  v8 = NSStringFromSelector(sel_arrivalBatteryLevel);
  [coderCopy encodeObject:arrivalBatteryLevel forKey:v8];

  departureBatteryLevel = [(CPElectricVehicleWaypoint *)self departureBatteryLevel];
  v10 = NSStringFromSelector(sel_departureBatteryLevel);
  [coderCopy encodeObject:departureBatteryLevel forKey:v10];

  finalWaypointBatteryLevel = [(CPElectricVehicleWaypoint *)self finalWaypointBatteryLevel];
  v11 = NSStringFromSelector(sel_finalWaypointBatteryLevel);
  [coderCopy encodeObject:finalWaypointBatteryLevel forKey:v11];
}

- (CPElectricVehicleWaypoint)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_opt_new();
  v6 = objc_opt_class();
  v7 = NSStringFromSelector(sel_connectors);
  v8 = [coderCopy decodeObjectOfClass:v6 forKey:v7];
  [(CPElectricVehicleWaypoint *)v5 setConnectors:v8];

  v9 = objc_opt_class();
  v10 = NSStringFromSelector(sel_arrivalBatteryLevel);
  v11 = [coderCopy decodeObjectOfClass:v9 forKey:v10];
  [(CPElectricVehicleWaypoint *)v5 setArrivalBatteryLevel:v11];

  v12 = objc_opt_class();
  v13 = NSStringFromSelector(sel_departureBatteryLevel);
  v14 = [coderCopy decodeObjectOfClass:v12 forKey:v13];
  [(CPElectricVehicleWaypoint *)v5 setDepartureBatteryLevel:v14];

  v15 = objc_opt_class();
  v16 = NSStringFromSelector(sel_finalWaypointBatteryLevel);
  v17 = [coderCopy decodeObjectOfClass:v15 forKey:v16];

  [(CPElectricVehicleWaypoint *)v5 setFinalWaypointBatteryLevel:v17];
  return v5;
}

@end