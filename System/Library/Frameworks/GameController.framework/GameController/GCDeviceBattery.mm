@interface GCDeviceBattery
- (BOOL)isEqual:(id)equal;
- (GCDeviceBattery)initWithCoder:(id)coder;
- (GCDeviceBattery)initWithLevel:(float)level batteryState:(int64_t)state;
- (GCDeviceBattery)initWithLevel:(unsigned __int8)level isCharging:(BOOL)charging;
- (unint64_t)hash;
- (void)_setBatteryLevel:(float)level;
- (void)encodeWithCoder:(id)coder;
@end

@implementation GCDeviceBattery

- (GCDeviceBattery)initWithLevel:(float)level batteryState:(int64_t)state
{
  v10.receiver = self;
  v10.super_class = GCDeviceBattery;
  v6 = [(GCDeviceBattery *)&v10 init];
  v8 = v6;
  if (v6)
  {
    *&v7 = level;
    [(GCDeviceBattery *)v6 _setBatteryLevel:v7];
    [(GCDeviceBattery *)v8 _setBatteryState:state];
  }

  return v8;
}

- (GCDeviceBattery)initWithLevel:(unsigned __int8)level isCharging:(BOOL)charging
{
  chargingCopy = charging;
  levelCopy = level;
  v13.receiver = self;
  v13.super_class = GCDeviceBattery;
  v6 = [(GCDeviceBattery *)&v13 init];
  v8 = v6;
  if (v6)
  {
    *&v7 = levelCopy / 100.0;
    [(GCDeviceBattery *)v6 _setBatteryLevel:v7];
    batteryLevel = v8->_batteryLevel;
    if (batteryLevel >= 1.0 && !chargingCopy)
    {
      v11 = 2;
    }

    else if (batteryLevel <= 0.0)
    {
      v11 = -1;
    }

    else
    {
      v11 = chargingCopy;
    }

    [(GCDeviceBattery *)v8 _setBatteryState:v11];
  }

  return v8;
}

- (void)_setBatteryLevel:(float)level
{
  v3 = fmin(fmax(level, 0.0), 1.0);
  *&v3 = v3;
  [(GCDeviceBattery *)self setBatteryLevel:v3];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v9 = 1;
  }

  else
  {
    v11.receiver = self;
    v11.super_class = GCDeviceBattery;
    if ([(GCDeviceBattery *)&v11 isEqual:equalCopy]&& (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v5 = equalCopy;
      batteryState = self->_batteryState;
      if (batteryState == [(GCDeviceBattery *)v5 batteryState])
      {
        batteryLevel = self->_batteryLevel;
        [(GCDeviceBattery *)v5 batteryLevel];
        v9 = batteryLevel == v8;
      }

      else
      {
        v9 = 0;
      }
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (unint64_t)hash
{
  v3.receiver = self;
  v3.super_class = GCDeviceBattery;
  return [(GCDeviceBattery *)&v3 hash];
}

- (GCDeviceBattery)initWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = GCDeviceBattery;
  v5 = [(GCDeviceBattery *)&v8 init];
  if (v5)
  {
    [coderCopy decodeFloatForKey:@"batteryLevel"];
    v5->_batteryLevel = v6;
    v5->_batteryState = [coderCopy decodeIntForKey:@"batteryState"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  batteryLevel = self->_batteryLevel;
  coderCopy = coder;
  *&v5 = batteryLevel;
  [coderCopy encodeFloat:@"batteryLevel" forKey:v5];
  [coderCopy encodeInt:LODWORD(self->_batteryState) forKey:@"batteryState"];
}

@end