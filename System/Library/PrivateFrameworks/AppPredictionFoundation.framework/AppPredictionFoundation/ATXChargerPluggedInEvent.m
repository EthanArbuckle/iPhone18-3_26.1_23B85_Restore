@interface ATXChargerPluggedInEvent
- (ATXChargerPluggedInEvent)initWithStartTime:(id)a3 endTime:(id)a4 connected:(BOOL)a5 adapterType:(id)a6;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToATXChargerPluggedInEvent:(id)a3;
- (unint64_t)hash;
@end

@implementation ATXChargerPluggedInEvent

- (ATXChargerPluggedInEvent)initWithStartTime:(id)a3 endTime:(id)a4 connected:(BOOL)a5 adapterType:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a6;
  v17.receiver = self;
  v17.super_class = ATXChargerPluggedInEvent;
  v14 = [(ATXChargerPluggedInEvent *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_startTime, a3);
    objc_storeStrong(&v15->_endTime, a4);
    v15->_connected = a5;
    objc_storeStrong(&v15->_adapterType, a6);
  }

  return v15;
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
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(ATXChargerPluggedInEvent *)self isEqualToATXChargerPluggedInEvent:v5];
  }

  return v6;
}

- (BOOL)isEqualToATXChargerPluggedInEvent:(id)a3
{
  v4 = a3;
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
      goto LABEL_12;
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
      goto LABEL_12;
    }
  }

  if (self->_connected != *(v4 + 8))
  {
LABEL_12:
    v13 = 0;
    goto LABEL_15;
  }

  v11 = self->_adapterType;
  v12 = v11;
  if (v11 == v4[4])
  {
    v13 = 1;
  }

  else
  {
    v13 = [(NSNumber *)v11 isEqual:?];
  }

LABEL_15:
  return v13;
}

- (unint64_t)hash
{
  v3 = [(ATXChargerPluggedInEvent *)self startTime];
  v4 = [v3 hash];

  v5 = [(ATXChargerPluggedInEvent *)self endTime];
  v6 = [v5 hash] - v4 + 32 * v4;

  v7 = 31 * v6 + [(ATXChargerPluggedInEvent *)self connected];
  v8 = [(ATXChargerPluggedInEvent *)self adapterType];
  v9 = [v8 hash] - v7 + 32 * v7;

  return v9;
}

@end