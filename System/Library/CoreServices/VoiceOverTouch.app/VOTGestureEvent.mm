@interface VOTGestureEvent
+ (id)gestureEventWithEventRepresentation:(id)representation;
- (BOOL)_eventMaskHasTouch;
- (BOOL)_isBogusTouchEvent;
- (BOOL)isCancelEvent;
- (BOOL)isDownEvent;
- (BOOL)isLiftEvent;
- (BOOL)isMovedEvent;
- (BOOL)isNonLiftingInRangeEvent;
- (BOOL)isStylusEvent;
- (id)_initWithDeviceIdentifier:(unint64_t)identifier andEventRepresentation:(id)representation;
- (id)description;
- (void)_addFingerInformation;
- (void)dealloc;
- (void)setEventRepresentation:(id)representation;
@end

@implementation VOTGestureEvent

+ (id)gestureEventWithEventRepresentation:(id)representation
{
  representationCopy = representation;
  if ([representationCopy type] == 3001)
  {
    v4 = [objc_allocWithZone(VOTGestureEvent) _initWithDeviceIdentifier:1 andEventRepresentation:representationCopy];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_initWithDeviceIdentifier:(unint64_t)identifier andEventRepresentation:(id)representation
{
  representationCopy = representation;
  v7 = [(VOTGestureEvent *)self initWithDeviceIdentifier:identifier];
  v8 = v7;
  if (v7)
  {
    [(VOTGestureEvent *)v7 setEventRepresentation:representationCopy];
    v9 = v8;
  }

  return v8;
}

- (void)dealloc
{
  [(VOTGestureEvent *)self setEventRepresentation:0];
  v3.receiver = self;
  v3.super_class = VOTGestureEvent;
  [(VOTGestureEvent *)&v3 dealloc];
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = VOTGestureEvent;
  v3 = [(VOTGestureEvent *)&v7 description];
  eventRepresentation = [(VOTGestureEvent *)self eventRepresentation];
  v5 = [NSString stringWithFormat:@"%@\nAXEventRep:%@", v3, eventRepresentation];

  return v5;
}

- (void)setEventRepresentation:(id)representation
{
  objc_storeStrong(&self->_eventRepresentation, representation);
  if (self->_eventRepresentation)
  {

    [(VOTGestureEvent *)self _addFingerInformation];
  }
}

- (BOOL)isCancelEvent
{
  handInfo = [(AXEventRepresentation *)self->_eventRepresentation handInfo];
  v3 = [handInfo eventType] == 8;

  return v3;
}

- (BOOL)isLiftEvent
{
  handInfo = [(AXEventRepresentation *)self->_eventRepresentation handInfo];
  eventType = [handInfo eventType];

  if (eventType == 6 || eventType == 10)
  {
    return 1;
  }

  if (eventType == 9)
  {
    return ![(VOTGestureEvent *)self isNonLiftingInRangeEvent];
  }

  return 0;
}

- (BOOL)_eventMaskHasTouch
{
  if (![(AXEventRepresentation *)self->_eventRepresentation creatorHIDEvent])
  {
    v4 = VOTLogEvent();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_10012A56C(self, v4);
    }

    goto LABEL_8;
  }

  if (IOHIDEventGetType() != 11)
  {
    v4 = VOTLogEvent();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_10012A4F4(self, v4);
    }

LABEL_8:

    LOBYTE(v3) = 0;
    return v3;
  }

  return (IOHIDEventGetIntegerValue() >> 1) & 1;
}

- (BOOL)_isBogusTouchEvent
{
  isStylusEvent = [(VOTGestureEvent *)self isStylusEvent];
  if (isStylusEvent)
  {
    handInfo = [(AXEventRepresentation *)self->_eventRepresentation handInfo];
    eventType = [handInfo eventType];

    if (eventType == 1)
    {
      LOBYTE(isStylusEvent) = ![(VOTGestureEvent *)self _eventMaskHasTouch];
    }

    else
    {
      LOBYTE(isStylusEvent) = 0;
    }
  }

  return isStylusEvent;
}

- (BOOL)isNonLiftingInRangeEvent
{
  handInfo = [(AXEventRepresentation *)self->_eventRepresentation handInfo];
  eventType = [handInfo eventType];

  if (eventType == 9)
  {
    return ![(VOTGestureEvent *)self _eventMaskHasTouch];
  }

  else
  {
    return 0;
  }
}

- (BOOL)isDownEvent
{
  handInfo = [(AXEventRepresentation *)self->_eventRepresentation handInfo];
  if ([handInfo eventType] == 1)
  {
    v4 = ![(VOTGestureEvent *)self _isBogusTouchEvent];
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

- (BOOL)isMovedEvent
{
  handInfo = [(AXEventRepresentation *)self->_eventRepresentation handInfo];
  if ([handInfo eventType] == 2)
  {
    _isBogusTouchEvent = 1;
  }

  else
  {
    _isBogusTouchEvent = [(VOTGestureEvent *)self _isBogusTouchEvent];
  }

  return _isBogusTouchEvent;
}

- (BOOL)isStylusEvent
{
  handInfo = [(AXEventRepresentation *)self->_eventRepresentation handInfo];
  isStylus = [handInfo isStylus];

  return isStylus;
}

- (void)_addFingerInformation
{
  if (![(VOTGestureEvent *)self isLiftEvent])
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    handInfo = [(AXEventRepresentation *)self->_eventRepresentation handInfo];
    pathsIncludingMayBeginEvents = [handInfo pathsIncludingMayBeginEvents];

    v5 = [pathsIncludingMayBeginEvents countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v22;
      do
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v22 != v7)
          {
            objc_enumerationMutation(pathsIncludingMayBeginEvents);
          }

          v9 = *(*(&v21 + 1) + 8 * i);
          if (([v9 pathProximity] & 2) != 0)
          {
            [v9 pathLocation];
            v11 = sub_1000517C4(v10);
            v13 = v12;
            transducerType = [v9 transducerType];
            pathIndex = [v9 pathIndex];
            [v9 orbValue];
            v17 = v16;
            if (transducerType)
            {
              [(VOTGestureEvent *)self addFingerWithIdentifier:pathIndex location:v11 pressure:v13, v17];
            }

            else
            {
              [v9 altitude];
              v19 = v18;
              [v9 azimuth];
              [(VOTGestureEvent *)self addStylusWithIdentifier:pathIndex location:v11 pressure:v13 altitude:v17 azimuth:v19, v20];
            }
          }
        }

        v6 = [pathsIncludingMayBeginEvents countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v6);
    }
  }
}

@end