@interface CPChargingStationConnector
+ (NSArray)accNavParameters;
+ (NSDictionary)accNavParameterKeysIndexed;
+ (NSDictionary)accNavParametersIndexed;
- (CPChargingStationConnector)initWithCoder:(id)a3;
- (CPChargingStationConnector)initWithType:(unint64_t)a3 voltage:(id)a4 power:(id)a5;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CPChargingStationConnector

- (CPChargingStationConnector)initWithType:(unint64_t)a3 voltage:(id)a4 power:(id)a5
{
  v9 = a4;
  v10 = a5;
  v13.receiver = self;
  v13.super_class = CPChargingStationConnector;
  v11 = [(CPChargingStationConnector *)&v13 init];
  if (v11)
  {
    [CPAccNavUpdate resetUpdate:v11];
    v11->_type = a3;
    objc_storeStrong(&v11->_voltage, a4);
    objc_storeStrong(&v11->_power, a5);
  }

  return v11;
}

- (NSString)description
{
  v3 = objc_alloc_init(MEMORY[0x277CCAB18]);
  [v3 setUnitStyle:1];
  [v3 setUnitOptions:1];
  v4 = MEMORY[0x277CCACA8];
  v5 = NSStringFromCPChargingStationConnectorType([(CPChargingStationConnector *)self type]);
  v6 = [(CPChargingStationConnector *)self voltage];
  v7 = [v3 stringFromMeasurement:v6];
  v8 = [(CPChargingStationConnector *)self power];
  v9 = [v3 stringFromMeasurement:v8];
  v10 = [v4 stringWithFormat:@"(%@ %@ %@)", v5, v7, v9];

  return v10;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [CPChargingStationConnector alloc];
  v5 = [(CPChargingStationConnector *)self type];
  v6 = [(CPChargingStationConnector *)self voltage];
  v7 = [(CPChargingStationConnector *)self power];
  v8 = [(CPChargingStationConnector *)v4 initWithType:v5 voltage:v6 power:v7];

  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(CPChargingStationConnector *)self type];
  v6 = NSStringFromSelector(sel_type);
  [v4 encodeInteger:v5 forKey:v6];

  v7 = [(CPChargingStationConnector *)self voltage];
  v8 = NSStringFromSelector(sel_voltage);
  [v4 encodeObject:v7 forKey:v8];

  v10 = [(CPChargingStationConnector *)self power];
  v9 = NSStringFromSelector(sel_power);
  [v4 encodeObject:v10 forKey:v9];
}

- (CPChargingStationConnector)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_type);
  v6 = [v4 decodeIntegerForKey:v5];

  v7 = objc_opt_class();
  v8 = NSStringFromSelector(sel_voltage);
  v9 = [v4 decodeObjectOfClass:v7 forKey:v8];

  v10 = objc_opt_class();
  v11 = NSStringFromSelector(sel_power);
  v12 = [v4 decodeObjectOfClass:v10 forKey:v11];

  v13 = [(CPChargingStationConnector *)self initWithType:v6 voltage:v9 power:v12];
  return v13;
}

+ (NSArray)accNavParameters
{
  if (accNavParameters_onceToken != -1)
  {
    +[CPChargingStationConnector(CPAccNavUpdate) accNavParameters];
  }

  v3 = accNavParameters__accNavParameters;

  return v3;
}

void __62__CPChargingStationConnector_CPAccNavUpdate__accNavParameters__block_invoke()
{
  v23[3] = *MEMORY[0x277D85DE8];
  v17 = NSStringFromSelector(sel_type);
  v19 = [CPAccNavParamKey paramKey:0];
  v18 = [v19 copySettingEnumType:9];
  v22 = v18;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:&v22 count:1];
  v15 = [CPAccNavParam paramWithProperty:v17 keys:v16];
  v23[0] = v15;
  v13 = NSStringFromSelector(sel_voltage);
  v14 = [CPAccNavParamKey paramKey:1];
  v12 = [MEMORY[0x277CCADE8] volts];
  v0 = [v14 copySettingDimension:v12];
  v21 = v0;
  v1 = [MEMORY[0x277CBEA60] arrayWithObjects:&v21 count:1];
  v2 = [CPAccNavParam paramWithProperty:v13 keys:v1];
  v23[1] = v2;
  v3 = NSStringFromSelector(sel_power);
  v4 = [CPAccNavParamKey paramKey:2];
  v5 = [MEMORY[0x277CCAE30] watts];
  v6 = [v4 copySettingDimension:v5];
  v20 = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:&v20 count:1];
  v8 = [CPAccNavParam paramWithProperty:v3 keys:v7];
  v23[2] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:3];
  v10 = accNavParameters__accNavParameters;
  accNavParameters__accNavParameters = v9;

  v11 = *MEMORY[0x277D85DE8];
}

+ (NSDictionary)accNavParametersIndexed
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __69__CPChargingStationConnector_CPAccNavUpdate__accNavParametersIndexed__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (accNavParametersIndexed_onceToken != -1)
  {
    dispatch_once(&accNavParametersIndexed_onceToken, block);
  }

  v2 = accNavParametersIndexed__accNavParametersIndexed;

  return v2;
}

uint64_t __69__CPChargingStationConnector_CPAccNavUpdate__accNavParametersIndexed__block_invoke(uint64_t a1)
{
  accNavParametersIndexed__accNavParametersIndexed = [CPAccNavUpdate accNavParametersIndexedForUpdate:*(a1 + 32)];

  return MEMORY[0x2821F96F8]();
}

+ (NSDictionary)accNavParameterKeysIndexed
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __72__CPChargingStationConnector_CPAccNavUpdate__accNavParameterKeysIndexed__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (accNavParameterKeysIndexed_onceToken != -1)
  {
    dispatch_once(&accNavParameterKeysIndexed_onceToken, block);
  }

  v2 = accNavParameterKeysIndexed__accNavParameterKeysIndexed;

  return v2;
}

uint64_t __72__CPChargingStationConnector_CPAccNavUpdate__accNavParameterKeysIndexed__block_invoke(uint64_t a1)
{
  accNavParameterKeysIndexed__accNavParameterKeysIndexed = [CPAccNavUpdate accNavParameterKeysIndexedForUpdate:*(a1 + 32)];

  return MEMORY[0x2821F96F8]();
}

@end