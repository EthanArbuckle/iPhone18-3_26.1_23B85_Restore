@interface ATXAudioRouteEvent
- (ATXAudioRouteEvent)initWithStartTime:(id)a3 endTime:(id)a4 connected:(BOOL)a5 identifier:(id)a6 portType:(id)a7 portName:(id)a8 routeChangeReason:(id)a9 type:(int)a10;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToATXAudioRouteEvent:(id)a3;
- (unint64_t)hash;
@end

@implementation ATXAudioRouteEvent

- (ATXAudioRouteEvent)initWithStartTime:(id)a3 endTime:(id)a4 connected:(BOOL)a5 identifier:(id)a6 portType:(id)a7 portName:(id)a8 routeChangeReason:(id)a9 type:(int)a10
{
  v17 = a3;
  v31 = a4;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v21 = a9;
  v32.receiver = self;
  v32.super_class = ATXAudioRouteEvent;
  v22 = [(ATXAudioRouteEvent *)&v32 init];
  v23 = v22;
  if (v22)
  {
    objc_storeStrong(&v22->_startTime, a3);
    objc_storeStrong(&v23->_endTime, a4);
    v23->_connected = a5;
    v24 = [v18 copy];
    identifier = v23->_identifier;
    v23->_identifier = v24;

    v26 = [v19 copy];
    portType = v23->_portType;
    v23->_portType = v26;

    v28 = [v20 copy];
    portName = v23->_portName;
    v23->_portName = v28;

    objc_storeStrong(&v23->_routeChangeReason, a9);
    v23->_type = a10;
  }

  return v23;
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
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(ATXAudioRouteEvent *)self isEqualToATXAudioRouteEvent:v5];
  }

  return v6;
}

- (BOOL)isEqualToATXAudioRouteEvent:(id)a3
{
  v4 = a3;
  if (self->_connected != *(v4 + 8))
  {
    goto LABEL_24;
  }

  v5 = self->_startTime;
  v6 = v5;
  if (v5 == v4[6])
  {
  }

  else
  {
    v7 = [(NSDate *)v5 isEqual:?];

    if ((v7 & 1) == 0)
    {
      goto LABEL_24;
    }
  }

  v8 = self->_endTime;
  v9 = v8;
  if (v8 == v4[7])
  {
  }

  else
  {
    v10 = [(NSDate *)v8 isEqual:?];

    if ((v10 & 1) == 0)
    {
      goto LABEL_24;
    }
  }

  v11 = self->_identifier;
  v12 = v11;
  if (v11 == v4[2])
  {
  }

  else
  {
    v13 = [(NSString *)v11 isEqual:?];

    if ((v13 & 1) == 0)
    {
      goto LABEL_24;
    }
  }

  v14 = self->_portName;
  v15 = v14;
  if (v14 == v4[4])
  {
  }

  else
  {
    v16 = [(NSString *)v14 isEqual:?];

    if ((v16 & 1) == 0)
    {
      goto LABEL_24;
    }
  }

  v17 = self->_portType;
  v18 = v17;
  if (v17 == v4[3])
  {
  }

  else
  {
    v19 = [(NSString *)v17 isEqual:?];

    if ((v19 & 1) == 0)
    {
      goto LABEL_24;
    }
  }

  v20 = self->_routeChangeReason;
  v21 = v20;
  if (v20 == v4[5])
  {

    goto LABEL_27;
  }

  v22 = [(NSNumber *)v20 isEqual:?];

  if (v22)
  {
LABEL_27:
    v23 = self->_type == *(v4 + 3);
    goto LABEL_25;
  }

LABEL_24:
  v23 = 0;
LABEL_25:

  return v23;
}

- (unint64_t)hash
{
  if ([(ATXAudioRouteEvent *)self connected])
  {
    v3 = 31;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(ATXAudioRouteEvent *)self startTime];
  v5 = [v4 hash] + v3;

  v6 = [(ATXAudioRouteEvent *)self endTime];
  v7 = [v6 hash] - v5 + 32 * v5;

  v8 = [(ATXAudioRouteEvent *)self identifier];
  v9 = [v8 hash] - v7 + 32 * v7;

  v10 = [(ATXAudioRouteEvent *)self portName];
  v11 = [v10 hash] - v9 + 32 * v9;

  v12 = [(ATXAudioRouteEvent *)self portType];
  v13 = [v12 hash] - v11 + 32 * v11;

  v14 = [(ATXAudioRouteEvent *)self routeChangeReason];
  v15 = [v14 hash] - v13 + 32 * v13;

  return 31 * v15 + [(ATXAudioRouteEvent *)self type];
}

@end