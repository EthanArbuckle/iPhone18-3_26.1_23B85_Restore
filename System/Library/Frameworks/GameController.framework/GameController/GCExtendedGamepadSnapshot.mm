@interface GCExtendedGamepadSnapshot
- (GCExtendedGamepadSnapshot)init;
- (GCExtendedGamepadSnapshot)initWithController:(GCController *)controller snapshotData:(NSData *)data;
- (NSData)snapshotData;
- (void)setSnapshotData:(NSData *)snapshotData;
@end

@implementation GCExtendedGamepadSnapshot

- (NSData)snapshotData
{
  v2 = [(NSData *)self->snapshotData copy];

  return v2;
}

- (void)setSnapshotData:(NSData *)snapshotData
{
  v4 = snapshotData;
  memset(&v22, 0, sizeof(v22));
  if (GCExtendedGamepadSnapshotDataFromNSData(&v22, v4))
  {
    v5 = [(NSData *)v4 copy];
    v6 = self->snapshotData;
    self->snapshotData = v5;

    dpad = [(GCExtendedGamepad *)self dpad];
    [(GCPhysicalInputProfile *)self setDpad:dpad x:v22.dpadX y:v22.dpadY];

    buttonA = [(GCExtendedGamepad *)self buttonA];
    [(GCPhysicalInputProfile *)self setButton:buttonA value:v22.buttonA];

    buttonB = [(GCExtendedGamepad *)self buttonB];
    [(GCPhysicalInputProfile *)self setButton:buttonB value:v22.buttonB];

    buttonX = [(GCExtendedGamepad *)self buttonX];
    [(GCPhysicalInputProfile *)self setButton:buttonX value:v22.buttonX];

    buttonY = [(GCExtendedGamepad *)self buttonY];
    [(GCPhysicalInputProfile *)self setButton:buttonY value:v22.buttonY];

    leftThumbstick = [(GCExtendedGamepad *)self leftThumbstick];
    [(GCPhysicalInputProfile *)self setDpad:leftThumbstick x:v22.leftThumbstickX y:v22.leftThumbstickY];

    rightThumbstick = [(GCExtendedGamepad *)self rightThumbstick];
    [(GCPhysicalInputProfile *)self setDpad:rightThumbstick x:v22.rightThumbstickX y:v22.rightThumbstickY];

    leftShoulder = [(GCExtendedGamepad *)self leftShoulder];
    [(GCPhysicalInputProfile *)self setButton:leftShoulder value:v22.leftShoulder];

    rightShoulder = [(GCExtendedGamepad *)self rightShoulder];
    [(GCPhysicalInputProfile *)self setButton:rightShoulder value:v22.rightShoulder];

    leftTrigger = [(GCExtendedGamepad *)self leftTrigger];
    [(GCPhysicalInputProfile *)self setButton:leftTrigger value:v22.leftTrigger];

    rightTrigger = [(GCExtendedGamepad *)self rightTrigger];
    [(GCPhysicalInputProfile *)self setButton:rightTrigger value:v22.rightTrigger];

    if (v22.version >= 0x101u && v22.supportsClickableThumbsticks)
    {
      rightThumbstickButton = [(GCExtendedGamepad *)self rightThumbstickButton];
      LOBYTE(v19) = v22.rightThumbstickButton;
      [(GCPhysicalInputProfile *)self setButton:rightThumbstickButton value:v19];

      leftThumbstickButton = [(GCExtendedGamepad *)self leftThumbstickButton];
      LOBYTE(v21) = v22.leftThumbstickButton;
      [(GCPhysicalInputProfile *)self setButton:leftThumbstickButton value:v21];
    }
  }
}

- (GCExtendedGamepadSnapshot)init
{
  v3.receiver = self;
  v3.super_class = GCExtendedGamepadSnapshot;
  return [(GCPhysicalInputProfile *)&v3 init];
}

- (GCExtendedGamepadSnapshot)initWithController:(GCController *)controller snapshotData:(NSData *)data
{
  v6 = controller;
  v7 = data;
  v8 = v7;
  v47 = 0;
  if (v7)
  {
    [(NSData *)v7 getBytes:&v47 length:4];
    if (v47 > 0x100u)
    {
      memset(snapshotData, 0, 63);
      if (GCExtendedGamepadSnapshotDataFromNSData(snapshotData, v8))
      {
        v13 = snapshotData[60];
        v43 = 0u;
        v44 = 0u;
        v41 = 0u;
        v42 = 0u;
        v39 = 0u;
        v40 = 0u;
        v37 = 0u;
        v38 = 0u;
        v35 = 0u;
        v36 = 0u;
        v33 = 0u;
        v34 = 0u;
        v31 = 0u;
        v32 = 0u;
        v29 = 0u;
        v30 = 0u;
        v27 = 0u;
        v28 = 0u;
        v25 = 0u;
        v26 = 0u;
        v23 = 0u;
        v24 = 0u;
        v21 = 0u;
        v22 = 0u;
        v19 = 0u;
        v20 = 0u;
        v17 = 0u;
        v18 = 0u;
        memset(snapshotData, 0, sizeof(snapshotData));
        GCExtendedGamepadInitInfoMake(snapshotData);
        if (v13)
        {
          v45 = 257;
          v46 = 257;
        }

        goto LABEL_5;
      }

LABEL_13:
      selfCopy = 0;
      goto LABEL_14;
    }
  }

  memset(snapshotData, 0, 60);
  if (!GCExtendedGamepadSnapShotDataV100FromNSData(snapshotData, v8))
  {
    goto LABEL_13;
  }

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  memset(snapshotData, 0, sizeof(snapshotData));
  GCExtendedGamepadInitInfoMake(snapshotData);
LABEL_5:
  v15.receiver = self;
  v15.super_class = GCExtendedGamepadSnapshot;
  v9 = [(GCExtendedGamepad *)&v15 initWithController:v6 initInfo:snapshotData];
  v10 = v9;
  if (v9)
  {
    [(GCExtendedGamepadSnapshot *)v9 setSnapshotData:v8];
  }

  self = v10;
  for (i = 0; i != 1584; i += 72)
  {
    __destructor_8_s0_s48_s56_s64(&snapshotData[i]);
  }

  selfCopy = self;
LABEL_14:

  return selfCopy;
}

@end