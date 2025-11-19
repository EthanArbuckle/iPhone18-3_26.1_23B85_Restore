@interface VOTGestureEvent
+ (id)gestureEventWithEventRepresentation:(id)a3;
- (BOOL)_eventMaskHasTouch;
- (BOOL)_isBogusTouchEvent;
- (BOOL)isCancelEvent;
- (BOOL)isDownEvent;
- (BOOL)isLiftEvent;
- (BOOL)isMovedEvent;
- (BOOL)isNonLiftingInRangeEvent;
- (BOOL)isStylusEvent;
- (id)_initWithDeviceIdentifier:(unint64_t)a3 andEventRepresentation:(id)a4;
- (id)description;
- (void)_addFingerInformation;
- (void)dealloc;
- (void)setEventRepresentation:(id)a3;
@end

@implementation VOTGestureEvent

+ (id)gestureEventWithEventRepresentation:(id)a3
{
  v3 = a3;
  if ([v3 type] == 3001)
  {
    v4 = [objc_allocWithZone(VOTGestureEvent) _initWithDeviceIdentifier:1 andEventRepresentation:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_initWithDeviceIdentifier:(unint64_t)a3 andEventRepresentation:(id)a4
{
  v6 = a4;
  v7 = [(VOTGestureEvent *)self initWithDeviceIdentifier:a3];
  v8 = v7;
  if (v7)
  {
    [(VOTGestureEvent *)v7 setEventRepresentation:v6];
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
  v4 = [(VOTGestureEvent *)self eventRepresentation];
  v5 = [NSString stringWithFormat:@"%@\nAXEventRep:%@", v3, v4];

  return v5;
}

- (void)setEventRepresentation:(id)a3
{
  objc_storeStrong(&self->_eventRepresentation, a3);
  if (self->_eventRepresentation)
  {

    [(VOTGestureEvent *)self _addFingerInformation];
  }
}

- (BOOL)isCancelEvent
{
  v2 = [(AXEventRepresentation *)self->_eventRepresentation handInfo];
  v3 = [v2 eventType] == 8;

  return v3;
}

- (BOOL)isLiftEvent
{
  v3 = [(AXEventRepresentation *)self->_eventRepresentation handInfo];
  v4 = [v3 eventType];

  if (v4 == 6 || v4 == 10)
  {
    return 1;
  }

  if (v4 == 9)
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
  v3 = [(VOTGestureEvent *)self isStylusEvent];
  if (v3)
  {
    v4 = [(AXEventRepresentation *)self->_eventRepresentation handInfo];
    v5 = [v4 eventType];

    if (v5 == 1)
    {
      LOBYTE(v3) = ![(VOTGestureEvent *)self _eventMaskHasTouch];
    }

    else
    {
      LOBYTE(v3) = 0;
    }
  }

  return v3;
}

- (BOOL)isNonLiftingInRangeEvent
{
  v3 = [(AXEventRepresentation *)self->_eventRepresentation handInfo];
  v4 = [v3 eventType];

  if (v4 == 9)
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
  v3 = [(AXEventRepresentation *)self->_eventRepresentation handInfo];
  if ([v3 eventType] == 1)
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
  v3 = [(AXEventRepresentation *)self->_eventRepresentation handInfo];
  if ([v3 eventType] == 2)
  {
    v4 = 1;
  }

  else
  {
    v4 = [(VOTGestureEvent *)self _isBogusTouchEvent];
  }

  return v4;
}

- (BOOL)isStylusEvent
{
  v2 = [(AXEventRepresentation *)self->_eventRepresentation handInfo];
  v3 = [v2 isStylus];

  return v3;
}

- (void)_addFingerInformation
{
  if (![(VOTGestureEvent *)self isLiftEvent])
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v3 = [(AXEventRepresentation *)self->_eventRepresentation handInfo];
    v4 = [v3 pathsIncludingMayBeginEvents];

    v5 = [v4 countByEnumeratingWithState:&v21 objects:v25 count:16];
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
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v21 + 1) + 8 * i);
          if (([v9 pathProximity] & 2) != 0)
          {
            [v9 pathLocation];
            v11 = sub_1000517C4(v10);
            v13 = v12;
            v14 = [v9 transducerType];
            v15 = [v9 pathIndex];
            [v9 orbValue];
            v17 = v16;
            if (v14)
            {
              [(VOTGestureEvent *)self addFingerWithIdentifier:v15 location:v11 pressure:v13, v17];
            }

            else
            {
              [v9 altitude];
              v19 = v18;
              [v9 azimuth];
              [(VOTGestureEvent *)self addStylusWithIdentifier:v15 location:v11 pressure:v13 altitude:v17 azimuth:v19, v20];
            }
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v6);
    }
  }
}

@end