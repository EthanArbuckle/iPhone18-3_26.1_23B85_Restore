@interface ATXBluetoothConnectedEvent
- (ATXBluetoothConnectedEvent)initWithStartTime:(id)time endTime:(id)endTime connected:(BOOL)connected deviceAddress:(id)address deviceName:(id)name deviceType:(int64_t)type;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToATXBluetoothConnectedEvent:(id)event;
- (unint64_t)hash;
@end

@implementation ATXBluetoothConnectedEvent

- (ATXBluetoothConnectedEvent)initWithStartTime:(id)time endTime:(id)endTime connected:(BOOL)connected deviceAddress:(id)address deviceName:(id)name deviceType:(int64_t)type
{
  timeCopy = time;
  endTimeCopy = endTime;
  addressCopy = address;
  nameCopy = name;
  v26.receiver = self;
  v26.super_class = ATXBluetoothConnectedEvent;
  v19 = [(ATXBluetoothConnectedEvent *)&v26 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_startTime, time);
    objc_storeStrong(&v20->_endTime, endTime);
    v20->_connected = connected;
    v21 = [addressCopy copy];
    deviceAddress = v20->_deviceAddress;
    v20->_deviceAddress = v21;

    v23 = [nameCopy copy];
    deviceName = v20->_deviceName;
    v20->_deviceName = v23;

    v20->_deviceType = type;
  }

  return v20;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(ATXBluetoothConnectedEvent *)self isEqualToATXBluetoothConnectedEvent:v5];
  }

  return v6;
}

- (BOOL)isEqualToATXBluetoothConnectedEvent:(id)event
{
  eventCopy = event;
  if (self->_connected != *(eventCopy + 8))
  {
    goto LABEL_16;
  }

  v5 = self->_startTime;
  v6 = v5;
  if (v5 == eventCopy[2])
  {
  }

  else
  {
    v7 = [(NSDate *)v5 isEqual:?];

    if ((v7 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  v8 = self->_endTime;
  v9 = v8;
  if (v8 == eventCopy[3])
  {
  }

  else
  {
    v10 = [(NSDate *)v8 isEqual:?];

    if ((v10 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  v11 = self->_deviceAddress;
  v12 = v11;
  if (v11 == eventCopy[4])
  {
  }

  else
  {
    v13 = [(NSString *)v11 isEqual:?];

    if ((v13 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  v14 = self->_deviceName;
  v15 = v14;
  if (v14 == eventCopy[5])
  {

    goto LABEL_19;
  }

  v16 = [(NSString *)v14 isEqual:?];

  if (v16)
  {
LABEL_19:
    v17 = self->_deviceType == eventCopy[6];
    goto LABEL_17;
  }

LABEL_16:
  v17 = 0;
LABEL_17:

  return v17;
}

- (unint64_t)hash
{
  if ([(ATXBluetoothConnectedEvent *)self connected])
  {
    v3 = 31;
  }

  else
  {
    v3 = 0;
  }

  startTime = [(ATXBluetoothConnectedEvent *)self startTime];
  v5 = [startTime hash] + v3;

  endTime = [(ATXBluetoothConnectedEvent *)self endTime];
  v7 = [endTime hash] - v5 + 32 * v5;

  deviceAddress = [(ATXBluetoothConnectedEvent *)self deviceAddress];
  v9 = [deviceAddress hash] - v7 + 32 * v7;

  deviceName = [(ATXBluetoothConnectedEvent *)self deviceName];
  v11 = [deviceName hash] - v9 + 32 * v9;

  return [(ATXBluetoothConnectedEvent *)self deviceType]- v11 + 32 * v11;
}

@end