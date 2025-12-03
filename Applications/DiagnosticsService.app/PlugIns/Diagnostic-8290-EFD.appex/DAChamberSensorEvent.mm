@interface DAChamberSensorEvent
- (BOOL)isEqual:(id)equal;
- (DAChamberSensorEvent)initWithSensorType:(int)type eventType:(int)eventType;
- (id)description;
- (unint64_t)hash;
@end

@implementation DAChamberSensorEvent

- (DAChamberSensorEvent)initWithSensorType:(int)type eventType:(int)eventType
{
  v7.receiver = self;
  v7.super_class = DAChamberSensorEvent;
  result = [(DAChamberSensorEvent *)&v7 init];
  if (result)
  {
    result->_sensorType = type;
    result->_eventType = eventType;
  }

  return result;
}

- (unint64_t)hash
{
  sensorType = [(DAChamberSensorEvent *)self sensorType];
  if (sensorType)
  {
    if (sensorType == 1)
    {
      v4 = @"kDAChamberWifiSensor";
    }

    else
    {
      [NSException raise:NSGenericException format:@"Unexpected DAChamberSensorType."];
      v4 = 0;
    }
  }

  else
  {
    v4 = @"kDAChamberALSSensor";
  }

  v5 = [(__CFString *)v4 hash];
  v6 = sensorEventTypeToString([(DAChamberSensorEvent *)self eventType]);
  v7 = [v6 hash];

  return v7 ^ v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (!equalCopy)
  {
    goto LABEL_6;
  }

  if (self == equalCopy)
  {
    v8 = 1;
    goto LABEL_8;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (v6 = [(DAChamberSensorEvent *)self sensorType], v6 == [(DAChamberSensorEvent *)v5 sensorType]))
  {
    eventType = [(DAChamberSensorEvent *)self eventType];
    v8 = eventType == [(DAChamberSensorEvent *)v5 eventType];
  }

  else
  {
LABEL_6:
    v8 = 0;
  }

LABEL_8:

  return v8;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  sensorType = [(DAChamberSensorEvent *)self sensorType];
  if (sensorType)
  {
    if (sensorType == 1)
    {
      v6 = @"kDAChamberWifiSensor";
    }

    else
    {
      [NSException raise:NSGenericException format:@"Unexpected DAChamberSensorType."];
      v6 = 0;
    }
  }

  else
  {
    v6 = @"kDAChamberALSSensor";
  }

  v7 = sensorEventTypeToString([(DAChamberSensorEvent *)self eventType]);
  v8 = [NSString stringWithFormat:@"<%@ %p:\n{ sensorType: %@\neventType: %@ }>", v4, self, v6, v7];;

  return v8;
}

@end