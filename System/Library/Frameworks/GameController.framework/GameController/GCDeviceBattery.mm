@interface GCDeviceBattery
- (BOOL)isEqual:(id)a3;
- (GCDeviceBattery)initWithCoder:(id)a3;
- (GCDeviceBattery)initWithLevel:(float)a3 batteryState:(int64_t)a4;
- (GCDeviceBattery)initWithLevel:(unsigned __int8)a3 isCharging:(BOOL)a4;
- (unint64_t)hash;
- (void)_setBatteryLevel:(float)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation GCDeviceBattery

- (GCDeviceBattery)initWithLevel:(float)a3 batteryState:(int64_t)a4
{
  v10.receiver = self;
  v10.super_class = GCDeviceBattery;
  v6 = [(GCDeviceBattery *)&v10 init];
  v8 = v6;
  if (v6)
  {
    *&v7 = a3;
    [(GCDeviceBattery *)v6 _setBatteryLevel:v7];
    [(GCDeviceBattery *)v8 _setBatteryState:a4];
  }

  return v8;
}

- (GCDeviceBattery)initWithLevel:(unsigned __int8)a3 isCharging:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v13.receiver = self;
  v13.super_class = GCDeviceBattery;
  v6 = [(GCDeviceBattery *)&v13 init];
  v8 = v6;
  if (v6)
  {
    *&v7 = v5 / 100.0;
    [(GCDeviceBattery *)v6 _setBatteryLevel:v7];
    batteryLevel = v8->_batteryLevel;
    if (batteryLevel >= 1.0 && !v4)
    {
      v11 = 2;
    }

    else if (batteryLevel <= 0.0)
    {
      v11 = -1;
    }

    else
    {
      v11 = v4;
    }

    [(GCDeviceBattery *)v8 _setBatteryState:v11];
  }

  return v8;
}

- (void)_setBatteryLevel:(float)a3
{
  v3 = fmin(fmax(a3, 0.0), 1.0);
  *&v3 = v3;
  [(GCDeviceBattery *)self setBatteryLevel:v3];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v9 = 1;
  }

  else
  {
    v11.receiver = self;
    v11.super_class = GCDeviceBattery;
    if ([(GCDeviceBattery *)&v11 isEqual:v4]&& (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v5 = v4;
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

- (GCDeviceBattery)initWithCoder:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = GCDeviceBattery;
  v5 = [(GCDeviceBattery *)&v8 init];
  if (v5)
  {
    [v4 decodeFloatForKey:@"batteryLevel"];
    v5->_batteryLevel = v6;
    v5->_batteryState = [v4 decodeIntForKey:@"batteryState"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  batteryLevel = self->_batteryLevel;
  v6 = a3;
  *&v5 = batteryLevel;
  [v6 encodeFloat:@"batteryLevel" forKey:v5];
  [v6 encodeInt:LODWORD(self->_batteryState) forKey:@"batteryState"];
}

@end