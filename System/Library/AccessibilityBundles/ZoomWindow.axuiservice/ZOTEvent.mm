@interface ZOTEvent
+ (id)createEventFromEventRepresentation:(id)representation;
- (id)_initWithDeviceIdentifier:(unint64_t)identifier andEventRepresentation:(id)representation;
- (id)copyWithZone:(_NSZone *)zone;
- (unsigned)handEventType;
- (void)_addFingerInformation;
@end

@implementation ZOTEvent

+ (id)createEventFromEventRepresentation:(id)representation
{
  representationCopy = representation;
  v4 = [objc_allocWithZone(ZOTEvent) _initWithDeviceIdentifier:1 andEventRepresentation:representationCopy];

  return v4;
}

- (id)_initWithDeviceIdentifier:(unint64_t)identifier andEventRepresentation:(id)representation
{
  representationCopy = representation;
  v11.receiver = self;
  v11.super_class = ZOTEvent;
  v7 = [(ZOTEvent *)&v11 initWithDeviceIdentifier:identifier];
  v8 = v7;
  if (v7)
  {
    [(ZOTEvent *)v7 setRecord:representationCopy];
    [(ZOTEvent *)v8 _addFingerInformation];
    v9 = v8;
  }

  return v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [(AXEventRepresentation *)self->_record copyWithZone:?];
  v6 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "_initWithDeviceIdentifier:andEventRepresentation:", -[ZOTEvent deviceIdentifier](self, "deviceIdentifier"), v5}];

  return v6;
}

- (void)_addFingerInformation
{
  if ([(AXEventRepresentation *)self->_record type]!= 3001)
  {
    return;
  }

  handInfo = [(AXEventRepresentation *)self->_record handInfo];
  eventType = [handInfo eventType];
  v5 = eventType;
  self->_chordChanged = eventType == 5;
  self->_handTouched = eventType == 1;
  if (eventType == 1)
  {
    p_weCare = &self->_weCare;
    self->_weCare = 1;
LABEL_4:
    v7 = 1;
    goto LABEL_15;
  }

  v8 = 0x744u >> eventType;
  if (eventType > 0xA)
  {
    LOBYTE(v8) = 0;
  }

  if (self->_chordChanged)
  {
    v9 = 1;
  }

  else
  {
    v9 = v8;
  }

  p_weCare = &self->_weCare;
  self->_weCare = v9 & 1;
  if (eventType > 0xA || ((1 << eventType) & 0x640) == 0)
  {
    goto LABEL_4;
  }

  v7 = 0;
LABEL_15:
  isStylus = [handInfo isStylus];
  if (*p_weCare)
  {
    v12 = v5 == 9 ? isStylus : 0;
    v13 = v5 == 8 ? 0 : v7;
    if ((v13 & 1) != 0 || v12)
    {
      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      paths = [handInfo paths];
      v15 = [paths countByEnumeratingWithState:&v31 objects:v35 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = *v32;
        do
        {
          for (i = 0; i != v16; i = i + 1)
          {
            if (*v32 != v17)
            {
              objc_enumerationMutation(paths);
            }

            v19 = *(*(&v31 + 1) + 8 * i);
            if (([v19 pathProximity] & 2) != 0)
            {
              transducerType = [v19 transducerType];
              pathIndex = [v19 pathIndex];
              [v19 pathLocation];
              v23 = v22;
              v25 = v24;
              [v19 orbValue];
              v27 = v26;
              if (transducerType)
              {
                [(ZOTEvent *)self addFingerWithIdentifier:pathIndex location:v23 pressure:v25, v27];
              }

              else
              {
                [v19 altitude];
                v29 = v28;
                [v19 azimuth];
                [(ZOTEvent *)self addStylusWithIdentifier:pathIndex location:v23 pressure:v25 altitude:v27 azimuth:v29, v30];
              }
            }
          }

          v16 = [paths countByEnumeratingWithState:&v31 objects:v35 count:16];
        }

        while (v16);
      }
    }
  }
}

- (unsigned)handEventType
{
  handInfo = [(AXEventRepresentation *)self->_record handInfo];
  eventType = [handInfo eventType];

  return eventType;
}

@end