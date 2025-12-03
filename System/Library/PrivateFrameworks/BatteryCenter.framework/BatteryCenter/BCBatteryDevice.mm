@interface BCBatteryDevice
+ (id)batteryDeviceWithIdentifier:(id)identifier vendor:(int64_t)vendor productIdentifier:(int64_t)productIdentifier parts:(unint64_t)parts matchIdentifier:(id)matchIdentifier;
- (BCBatteryDevice)initWithCoder:(id)coder;
- (BCBatteryDevice)initWithIdentifier:(id)identifier vendor:(int64_t)vendor productIdentifier:(int64_t)productIdentifier parts:(unint64_t)parts matchIdentifier:(id)matchIdentifier;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)synthesizedRepresentativeDevice;
- (void)encodeWithCoder:(id)coder;
@end

@implementation BCBatteryDevice

- (id)description
{
  v41 = MEMORY[0x277CCACA8];
  v3 = objc_opt_class();
  fake = self->_fake;
  vendor = self->_vendor;
  v5 = @"Unknown";
  v6 = @"Beats";
  if (vendor != 2)
  {
    v6 = @"Unknown";
  }

  if (vendor == 1)
  {
    v7 = @"Apple";
  }

  else
  {
    v7 = v6;
  }

  productIdentifier = self->_productIdentifier;
  v40 = v3;
  parts = self->_parts;
  v9 = v7;
  v42 = BCStringFromParts(parts);
  identifier = self->_identifier;
  name = self->_name;
  matchIdentifier = self->_matchIdentifier;
  percentCharge = self->_percentCharge;
  groupName = self->_groupName;
  lowBattery = self->_lowBattery;
  v11 = NSStringFromBOOL();
  lowPowerModeActive = self->_lowPowerModeActive;
  v13 = NSStringFromBOOL();
  connected = self->_connected;
  v15 = NSStringFromBOOL();
  charging = self->_charging;
  v17 = NSStringFromBOOL();
  paused = self->_paused;
  v19 = NSStringFromBOOL();
  internal = self->_internal;
  v21 = NSStringFromBOOL();
  powerSource = self->_powerSource;
  v23 = NSStringFromBOOL();
  v24 = v23;
  v25 = self->_powerSourceState - 1;
  if (v25 <= 2)
  {
    v5 = off_278D05D40[v25];
  }

  v26 = self->_transportType - 1;
  if (v26 > 3)
  {
    v27 = @"Unknown";
  }

  else
  {
    v27 = off_278D05D58[v26];
  }

  v28 = self->_accessoryCategory - 1;
  if (v28 > 8)
  {
    v29 = @"Unknown";
  }

  else
  {
    v29 = off_278D05D78[v28];
  }

  v30 = @"**FAKE DEVICE**";
  if (!fake)
  {
    v30 = &stru_2853B08A0;
  }

  v31 = [v41 stringWithFormat:@"<%@: %p%@ vendor = %@; productIdentifier = %ld; parts = %@; identifier = %@; matchIdentifier = %@; name = %@; groupName =%@; percentCharge = %ld; lowBattery = %@; lowPowerModeActive = %@; connected = %@; charging = %@; paused = %@; internal = %@; powerSource = %@; poweredSoureState = %@; transportType = %@; accessoryIdentifier = %@; accessoryCategory = %@; modelNumber = %@; %@%@>", v40, self, v30, v9, productIdentifier, v42, identifier, matchIdentifier, name, groupName, percentCharge, v11, v13, v15, v17, v19, v21, v23, v5, v27, self->_accessoryIdentifier, v29, self->_modelNumber, &stru_2853B08A0, &stru_2853B08A0];;

  return v31;
}

+ (id)batteryDeviceWithIdentifier:(id)identifier vendor:(int64_t)vendor productIdentifier:(int64_t)productIdentifier parts:(unint64_t)parts matchIdentifier:(id)matchIdentifier
{
  matchIdentifierCopy = matchIdentifier;
  identifierCopy = identifier;
  v14 = [[self alloc] initWithIdentifier:identifierCopy vendor:vendor productIdentifier:productIdentifier parts:parts matchIdentifier:matchIdentifierCopy];

  return v14;
}

- (BCBatteryDevice)initWithIdentifier:(id)identifier vendor:(int64_t)vendor productIdentifier:(int64_t)productIdentifier parts:(unint64_t)parts matchIdentifier:(id)matchIdentifier
{
  identifierCopy = identifier;
  matchIdentifierCopy = matchIdentifier;
  v20.receiver = self;
  v20.super_class = BCBatteryDevice;
  v14 = [(BCBatteryDevice *)&v20 init];
  if (v14)
  {
    v15 = [identifierCopy copy];
    identifier = v14->_identifier;
    v14->_identifier = v15;

    v14->_vendor = vendor;
    v14->_productIdentifier = productIdentifier;
    v14->_parts = parts;
    v17 = [matchIdentifierCopy copy];
    matchIdentifier = v14->_matchIdentifier;
    v14->_matchIdentifier = v17;
  }

  return v14;
}

- (BCBatteryDevice)initWithCoder:(id)coder
{
  v23.receiver = self;
  v23.super_class = BCBatteryDevice;
  coderCopy = coder;
  v4 = [(BCBatteryDevice *)&v23 init];
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:{@"identifier", v23.receiver, v23.super_class}];
  v6 = [v5 copy];
  identifier = v4->_identifier;
  v4->_identifier = v6;

  v4->_vendor = [coderCopy decodeIntegerForKey:@"vendor"];
  v4->_productIdentifier = [coderCopy decodeIntegerForKey:@"productIdentifier"];
  v4->_parts = [coderCopy decodeIntegerForKey:@"parts"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"matchIdentifier"];
  v9 = [v8 copy];
  matchIdentifier = v4->_matchIdentifier;
  v4->_matchIdentifier = v9;

  v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"name"];
  v12 = [v11 copy];
  name = v4->_name;
  v4->_name = v12;

  v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"groupName"];
  v15 = [v14 copy];
  groupName = v4->_groupName;
  v4->_groupName = v15;

  v4->_percentCharge = [coderCopy decodeIntegerForKey:@"percentCharge"];
  v4->_connected = [coderCopy decodeBoolForKey:@"connected"];
  v4->_charging = [coderCopy decodeBoolForKey:@"charging"];
  v4->_paused = [coderCopy decodeBoolForKey:@"paused"];
  v4->_internal = [coderCopy decodeBoolForKey:@"internal"];
  v4->_powerSource = [coderCopy decodeBoolForKey:@"powerSource"];
  v4->_powerSourceState = [coderCopy decodeIntegerForKey:@"powerSourceState"];
  v4->_approximatesPercentCharge = [coderCopy decodeBoolForKey:@"approximatesPercentCharge"];
  v4->_transportType = [coderCopy decodeIntegerForKey:@"transportType"];
  v4->_fake = [coderCopy decodeBoolForKey:@"fake"];
  v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"accessoryIdentifier"];
  v18 = [v17 copy];
  accessoryIdentifier = v4->_accessoryIdentifier;
  v4->_accessoryIdentifier = v18;

  v4->_accessoryCategory = [coderCopy decodeIntegerForKey:@"accessoryCategory"];
  v4->_wirelesslyCharging = [coderCopy decodeBoolForKey:@"wirelesslyCharging"];
  v20 = [coderCopy decodeObjectForKey:@"modelNumber"];

  modelNumber = v4->_modelNumber;
  v4->_modelNumber = v20;

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  if ([(NSString *)self->_identifier length])
  {
    [coderCopy encodeObject:self->_identifier forKey:@"identifier"];
  }

  vendor = self->_vendor;
  if (vendor)
  {
    [coderCopy encodeInteger:vendor forKey:@"vendor"];
  }

  productIdentifier = self->_productIdentifier;
  if (productIdentifier)
  {
    [coderCopy encodeInteger:productIdentifier forKey:@"productIdentifier"];
  }

  parts = self->_parts;
  if (parts)
  {
    [coderCopy encodeInteger:parts forKey:@"parts"];
  }

  if ([(NSString *)self->_matchIdentifier length])
  {
    [coderCopy encodeObject:self->_matchIdentifier forKey:@"matchIdentifier"];
  }

  if ([(NSString *)self->_name length])
  {
    [coderCopy encodeObject:self->_name forKey:@"name"];
  }

  if ([(NSString *)self->_groupName length])
  {
    [coderCopy encodeObject:self->_groupName forKey:@"groupName"];
  }

  percentCharge = self->_percentCharge;
  if (percentCharge)
  {
    [coderCopy encodeInteger:percentCharge forKey:@"percentCharge"];
  }

  if (self->_connected)
  {
    [coderCopy encodeBool:1 forKey:@"connected"];
  }

  if (self->_charging)
  {
    [coderCopy encodeBool:1 forKey:@"charging"];
  }

  if (self->_paused)
  {
    [coderCopy encodeBool:1 forKey:@"paused"];
  }

  if (self->_internal)
  {
    [coderCopy encodeBool:1 forKey:@"internal"];
  }

  if (self->_powerSource)
  {
    [coderCopy encodeBool:1 forKey:@"powerSource"];
  }

  powerSourceState = self->_powerSourceState;
  if (powerSourceState)
  {
    [coderCopy encodeInteger:powerSourceState forKey:@"powerSourceState"];
  }

  if (self->_approximatesPercentCharge)
  {
    [coderCopy encodeBool:1 forKey:@"approximatesPercentCharge"];
  }

  transportType = self->_transportType;
  if (transportType)
  {
    [coderCopy encodeInteger:transportType forKey:@"transportType"];
  }

  if (self->_fake)
  {
    [coderCopy encodeBool:1 forKey:@"fake"];
  }

  if ([(NSString *)self->_accessoryIdentifier length])
  {
    [coderCopy encodeObject:self->_accessoryIdentifier forKey:@"accessoryIdentifier"];
  }

  accessoryCategory = self->_accessoryCategory;
  if (accessoryCategory)
  {
    [coderCopy encodeInteger:accessoryCategory forKey:@"accessoryCategory"];
  }

  if (self->_wirelesslyCharging)
  {
    [coderCopy encodeBool:1 forKey:@"wirelesslyCharging"];
  }

  if ([(NSString *)self->_modelNumber length])
  {
    [coderCopy encodeObject:self->_modelNumber forKey:@"modelNumber"];
  }

  MEMORY[0x2821F96F8]();
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[BCBatteryDevice allocWithZone:?]vendor:"initWithIdentifier:vendor:productIdentifier:parts:matchIdentifier:" productIdentifier:self->_identifier parts:self->_vendor matchIdentifier:self->_productIdentifier, self->_parts, self->_matchIdentifier];
  [(BCBatteryDevice *)v4 setIdentifier:self->_identifier];
  [(BCBatteryDevice *)v4 setName:self->_name];
  [(BCBatteryDevice *)v4 setGroupName:self->_groupName];
  [(BCBatteryDevice *)v4 setPercentCharge:self->_percentCharge];
  [(BCBatteryDevice *)v4 setConnected:self->_connected];
  [(BCBatteryDevice *)v4 setCharging:self->_charging];
  [(BCBatteryDevice *)v4 setPaused:self->_paused];
  [(BCBatteryDevice *)v4 setLowBattery:self->_lowBattery];
  [(BCBatteryDevice *)v4 setLowPowerModeActive:self->_lowPowerModeActive];
  [(BCBatteryDevice *)v4 setInternal:self->_internal];
  [(BCBatteryDevice *)v4 setPowerSource:self->_powerSource];
  [(BCBatteryDevice *)v4 setPowerSourceState:self->_powerSourceState];
  [(BCBatteryDevice *)v4 setApproximatesPercentCharge:self->_approximatesPercentCharge];
  [(BCBatteryDevice *)v4 setTransportType:self->_transportType];
  [(BCBatteryDevice *)v4 setFake:self->_fake];
  [(BCBatteryDevice *)v4 setAccessoryIdentifier:self->_accessoryIdentifier];
  [(BCBatteryDevice *)v4 setAccessoryCategory:self->_accessoryCategory];
  [(BCBatteryDevice *)v4 setWirelesslyCharging:self->_wirelesslyCharging];
  [(BCBatteryDevice *)v4 setModelNumber:self->_modelNumber];
  return v4;
}

- (id)synthesizedRepresentativeDevice
{
  v3 = [(BCBatteryDevice *)self copy];
  if ([(BCBatteryDevice *)self parts]== 1 || [(BCBatteryDevice *)self parts]== 2)
  {
    groupName = [v3 groupName];
    [v3 setName:groupName];

    [v3 setParts:3];
    v5 = MEMORY[0x277CCACA8];
    identifier = [(BCBatteryDevice *)self identifier];
    v7 = [v5 stringWithFormat:@"%@-synthesized", identifier];
    [v3 setIdentifier:v7];
  }

  return v3;
}

@end