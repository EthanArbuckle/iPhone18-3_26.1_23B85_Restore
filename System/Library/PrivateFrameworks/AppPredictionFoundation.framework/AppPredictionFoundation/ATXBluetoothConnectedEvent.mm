@interface ATXBluetoothConnectedEvent
- (ATXBluetoothConnectedEvent)initWithStartTime:(id)a3 endTime:(id)a4 connected:(BOOL)a5 deviceAddress:(id)a6 deviceName:(id)a7 deviceType:(int64_t)a8;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToATXBluetoothConnectedEvent:(id)a3;
- (unint64_t)hash;
@end

@implementation ATXBluetoothConnectedEvent

- (ATXBluetoothConnectedEvent)initWithStartTime:(id)a3 endTime:(id)a4 connected:(BOOL)a5 deviceAddress:(id)a6 deviceName:(id)a7 deviceType:(int64_t)a8
{
  v15 = a3;
  v16 = a4;
  v17 = a6;
  v18 = a7;
  v26.receiver = self;
  v26.super_class = ATXBluetoothConnectedEvent;
  v19 = [(ATXBluetoothConnectedEvent *)&v26 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_startTime, a3);
    objc_storeStrong(&v20->_endTime, a4);
    v20->_connected = a5;
    v21 = [v17 copy];
    deviceAddress = v20->_deviceAddress;
    v20->_deviceAddress = v21;

    v23 = [v18 copy];
    deviceName = v20->_deviceName;
    v20->_deviceName = v23;

    v20->_deviceType = a8;
  }

  return v20;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(ATXBluetoothConnectedEvent *)self isEqualToATXBluetoothConnectedEvent:v5];
  }

  return v6;
}

- (BOOL)isEqualToATXBluetoothConnectedEvent:(id)a3
{
  v4 = a3;
  if (self->_connected != *(v4 + 8))
  {
    goto LABEL_16;
  }

  v5 = self->_startTime;
  v6 = v5;
  if (v5 == v4[2])
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
  if (v8 == v4[3])
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
  if (v11 == v4[4])
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
  if (v14 == v4[5])
  {

    goto LABEL_19;
  }

  v16 = [(NSString *)v14 isEqual:?];

  if (v16)
  {
LABEL_19:
    v17 = self->_deviceType == v4[6];
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

  v4 = [(ATXBluetoothConnectedEvent *)self startTime];
  v5 = [v4 hash] + v3;

  v6 = [(ATXBluetoothConnectedEvent *)self endTime];
  v7 = [v6 hash] - v5 + 32 * v5;

  v8 = [(ATXBluetoothConnectedEvent *)self deviceAddress];
  v9 = [v8 hash] - v7 + 32 * v7;

  v10 = [(ATXBluetoothConnectedEvent *)self deviceName];
  v11 = [v10 hash] - v9 + 32 * v9;

  return [(ATXBluetoothConnectedEvent *)self deviceType]- v11 + 32 * v11;
}

@end