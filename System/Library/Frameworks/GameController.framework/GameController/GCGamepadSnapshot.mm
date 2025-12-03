@interface GCGamepadSnapshot
- (GCGamepadSnapshot)init;
- (GCGamepadSnapshot)initWithController:(GCController *)controller snapshotData:(NSData *)data;
- (NSData)snapshotData;
- (void)setSnapshotData:(NSData *)snapshotData;
@end

@implementation GCGamepadSnapshot

- (NSData)snapshotData
{
  v2 = [(NSData *)self->snapshotData copy];

  return v2;
}

- (void)setSnapshotData:(NSData *)snapshotData
{
  v4 = snapshotData;
  memset(&v14, 0, sizeof(v14));
  if (GCGamepadSnapShotDataV100FromNSData(&v14, v4))
  {
    v5 = [(NSData *)v4 copy];
    v6 = self->snapshotData;
    self->snapshotData = v5;

    dpad = [(GCGamepad *)self dpad];
    [(GCPhysicalInputProfile *)self setDpad:dpad x:v14.dpadX y:v14.dpadY];

    buttonA = [(GCGamepad *)self buttonA];
    [(GCPhysicalInputProfile *)self setButton:buttonA value:v14.buttonA];

    buttonB = [(GCGamepad *)self buttonB];
    [(GCPhysicalInputProfile *)self setButton:buttonB value:v14.buttonB];

    buttonX = [(GCGamepad *)self buttonX];
    [(GCPhysicalInputProfile *)self setButton:buttonX value:v14.buttonX];

    buttonY = [(GCGamepad *)self buttonY];
    [(GCPhysicalInputProfile *)self setButton:buttonY value:v14.buttonY];

    leftShoulder = [(GCGamepad *)self leftShoulder];
    [(GCPhysicalInputProfile *)self setButton:leftShoulder value:v14.leftShoulder];

    rightShoulder = [(GCGamepad *)self rightShoulder];
    [(GCPhysicalInputProfile *)self setButton:rightShoulder value:v14.rightShoulder];
  }
}

- (GCGamepadSnapshot)init
{
  v3.receiver = self;
  v3.super_class = GCGamepadSnapshot;
  return [(GCPhysicalInputProfile *)&v3 init];
}

- (GCGamepadSnapshot)initWithController:(GCController *)controller snapshotData:(NSData *)data
{
  v6 = controller;
  v7 = data;
  memset(&snapshotData, 0, sizeof(snapshotData));
  if (GCGamepadSnapShotDataV100FromNSData(&snapshotData, v7))
  {
    v12.receiver = self;
    v12.super_class = GCGamepadSnapshot;
    v8 = [(GCPhysicalInputProfile *)&v12 initWithController:v6];
    v9 = v8;
    if (v8)
    {
      [(GCGamepadSnapshot *)v8 setSnapshotData:v7];
    }

    self = v9;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

@end