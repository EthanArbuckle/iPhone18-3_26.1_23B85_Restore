@interface ATXAudioRouteEvent
- (ATXAudioRouteEvent)initWithStartTime:(id)time endTime:(id)endTime connected:(BOOL)connected identifier:(id)identifier portType:(id)type portName:(id)name routeChangeReason:(id)reason type:(int)self0;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToATXAudioRouteEvent:(id)event;
- (unint64_t)hash;
@end

@implementation ATXAudioRouteEvent

- (ATXAudioRouteEvent)initWithStartTime:(id)time endTime:(id)endTime connected:(BOOL)connected identifier:(id)identifier portType:(id)type portName:(id)name routeChangeReason:(id)reason type:(int)self0
{
  timeCopy = time;
  endTimeCopy = endTime;
  identifierCopy = identifier;
  typeCopy = type;
  nameCopy = name;
  reasonCopy = reason;
  v32.receiver = self;
  v32.super_class = ATXAudioRouteEvent;
  v22 = [(ATXAudioRouteEvent *)&v32 init];
  v23 = v22;
  if (v22)
  {
    objc_storeStrong(&v22->_startTime, time);
    objc_storeStrong(&v23->_endTime, endTime);
    v23->_connected = connected;
    v24 = [identifierCopy copy];
    identifier = v23->_identifier;
    v23->_identifier = v24;

    v26 = [typeCopy copy];
    portType = v23->_portType;
    v23->_portType = v26;

    v28 = [nameCopy copy];
    portName = v23->_portName;
    v23->_portName = v28;

    objc_storeStrong(&v23->_routeChangeReason, reason);
    v23->_type = a10;
  }

  return v23;
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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(ATXAudioRouteEvent *)self isEqualToATXAudioRouteEvent:v5];
  }

  return v6;
}

- (BOOL)isEqualToATXAudioRouteEvent:(id)event
{
  eventCopy = event;
  if (self->_connected != *(eventCopy + 8))
  {
    goto LABEL_24;
  }

  v5 = self->_startTime;
  v6 = v5;
  if (v5 == eventCopy[6])
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
  if (v8 == eventCopy[7])
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
  if (v11 == eventCopy[2])
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
  if (v14 == eventCopy[4])
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
  if (v17 == eventCopy[3])
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
  if (v20 == eventCopy[5])
  {

    goto LABEL_27;
  }

  v22 = [(NSNumber *)v20 isEqual:?];

  if (v22)
  {
LABEL_27:
    v23 = self->_type == *(eventCopy + 3);
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

  startTime = [(ATXAudioRouteEvent *)self startTime];
  v5 = [startTime hash] + v3;

  endTime = [(ATXAudioRouteEvent *)self endTime];
  v7 = [endTime hash] - v5 + 32 * v5;

  identifier = [(ATXAudioRouteEvent *)self identifier];
  v9 = [identifier hash] - v7 + 32 * v7;

  portName = [(ATXAudioRouteEvent *)self portName];
  v11 = [portName hash] - v9 + 32 * v9;

  portType = [(ATXAudioRouteEvent *)self portType];
  v13 = [portType hash] - v11 + 32 * v11;

  routeChangeReason = [(ATXAudioRouteEvent *)self routeChangeReason];
  v15 = [routeChangeReason hash] - v13 + 32 * v13;

  return 31 * v15 + [(ATXAudioRouteEvent *)self type];
}

@end