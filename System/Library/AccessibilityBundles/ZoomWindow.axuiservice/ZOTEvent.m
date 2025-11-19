@interface ZOTEvent
+ (id)createEventFromEventRepresentation:(id)a3;
- (id)_initWithDeviceIdentifier:(unint64_t)a3 andEventRepresentation:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (unsigned)handEventType;
- (void)_addFingerInformation;
@end

@implementation ZOTEvent

+ (id)createEventFromEventRepresentation:(id)a3
{
  v3 = a3;
  v4 = [objc_allocWithZone(ZOTEvent) _initWithDeviceIdentifier:1 andEventRepresentation:v3];

  return v4;
}

- (id)_initWithDeviceIdentifier:(unint64_t)a3 andEventRepresentation:(id)a4
{
  v6 = a4;
  v11.receiver = self;
  v11.super_class = ZOTEvent;
  v7 = [(ZOTEvent *)&v11 initWithDeviceIdentifier:a3];
  v8 = v7;
  if (v7)
  {
    [(ZOTEvent *)v7 setRecord:v6];
    [(ZOTEvent *)v8 _addFingerInformation];
    v9 = v8;
  }

  return v8;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [(AXEventRepresentation *)self->_record copyWithZone:?];
  v6 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "_initWithDeviceIdentifier:andEventRepresentation:", -[ZOTEvent deviceIdentifier](self, "deviceIdentifier"), v5}];

  return v6;
}

- (void)_addFingerInformation
{
  if ([(AXEventRepresentation *)self->_record type]!= 3001)
  {
    return;
  }

  v3 = [(AXEventRepresentation *)self->_record handInfo];
  v4 = [v3 eventType];
  v5 = v4;
  self->_chordChanged = v4 == 5;
  self->_handTouched = v4 == 1;
  if (v4 == 1)
  {
    p_weCare = &self->_weCare;
    self->_weCare = 1;
LABEL_4:
    v7 = 1;
    goto LABEL_15;
  }

  v8 = 0x744u >> v4;
  if (v4 > 0xA)
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
  if (v4 > 0xA || ((1 << v4) & 0x640) == 0)
  {
    goto LABEL_4;
  }

  v7 = 0;
LABEL_15:
  v11 = [v3 isStylus];
  if (*p_weCare)
  {
    v12 = v5 == 9 ? v11 : 0;
    v13 = v5 == 8 ? 0 : v7;
    if ((v13 & 1) != 0 || v12)
    {
      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      v14 = [v3 paths];
      v15 = [v14 countByEnumeratingWithState:&v31 objects:v35 count:16];
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
              objc_enumerationMutation(v14);
            }

            v19 = *(*(&v31 + 1) + 8 * i);
            if (([v19 pathProximity] & 2) != 0)
            {
              v20 = [v19 transducerType];
              v21 = [v19 pathIndex];
              [v19 pathLocation];
              v23 = v22;
              v25 = v24;
              [v19 orbValue];
              v27 = v26;
              if (v20)
              {
                [(ZOTEvent *)self addFingerWithIdentifier:v21 location:v23 pressure:v25, v27];
              }

              else
              {
                [v19 altitude];
                v29 = v28;
                [v19 azimuth];
                [(ZOTEvent *)self addStylusWithIdentifier:v21 location:v23 pressure:v25 altitude:v27 azimuth:v29, v30];
              }
            }
          }

          v16 = [v14 countByEnumeratingWithState:&v31 objects:v35 count:16];
        }

        while (v16);
      }
    }
  }
}

- (unsigned)handEventType
{
  v2 = [(AXEventRepresentation *)self->_record handInfo];
  v3 = [v2 eventType];

  return v3;
}

@end