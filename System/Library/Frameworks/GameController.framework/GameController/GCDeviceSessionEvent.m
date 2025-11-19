@interface GCDeviceSessionEvent
- (GCController)controller;
- (GCDeviceSessionEvent)init;
- (GCDeviceSessionEvent)initWithType:(unint64_t)a3 device:(id)a4;
- (GCKeyboard)keyboard;
- (GCMouse)mouse;
- (GCRacingWheel)racingWheel;
- (GCSpatialAccessory)spatialAccessory;
- (GCStylus)stylus;
- (id)debugDescription;
- (id)description;
@end

@implementation GCDeviceSessionEvent

- (GCDeviceSessionEvent)initWithType:(unint64_t)a3 device:(id)a4
{
  v6 = a4;
  v10.receiver = self;
  v10.super_class = GCDeviceSessionEvent;
  v7 = [(GCDeviceSessionEvent *)&v10 init];
  device = v7->_device;
  v7->_type = a3;
  v7->_device = v6;

  return v7;
}

- (GCDeviceSessionEvent)init
{
  [(GCDeviceSessionEvent *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (GCKeyboard)keyboard
{
  device = self->_device;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = self->_device;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (GCMouse)mouse
{
  device = self->_device;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = self->_device;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (GCController)controller
{
  device = self->_device;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = self->_device;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (GCRacingWheel)racingWheel
{
  device = self->_device;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = self->_device;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (GCSpatialAccessory)spatialAccessory
{
  device = self->_device;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = self->_device;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (GCStylus)stylus
{
  device = self->_device;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = self->_device;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)description
{
  v3 = [(GCDeviceSessionEvent *)self type];
  if (v3 > 99)
  {
    if (v3 == 100)
    {
      v8 = MEMORY[0x1E696AEC0];
      v6 = [(GCDeviceSessionEvent *)self device];
      v7 = [v6 description];
      [v8 stringWithFormat:@".deviceDidConnect(%@)", v7];
    }

    else
    {
      if (v3 != 101)
      {
LABEL_8:
        v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@".unknown(%zu)", self->_type];
        goto LABEL_12;
      }

      v5 = MEMORY[0x1E696AEC0];
      v6 = [(GCDeviceSessionEvent *)self device];
      v7 = [v6 description];
      [v5 stringWithFormat:@".deviceDidDisconnect(%@)", v7];
    }
    v4 = ;
  }

  else
  {
    if (v3 != 1)
    {
      if (v3 == 2)
      {
        v4 = @".invalidated";
        goto LABEL_12;
      }

      goto LABEL_8;
    }

    v4 = @".activated";
  }

LABEL_12:

  return v4;
}

- (id)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(GCDeviceSessionEvent *)self description];
  v7 = [v3 stringWithFormat:@"<%@ %p %@>", v5, self, v6];

  return v7;
}

@end