@interface BLSHPendingDirectRampDisplayMode
- (BLSHPendingDirectRampDisplayMode)initWithRampBeginDisplayMode:(int64_t)a3 targetDisplayMode:(int64_t)a4;
- (id)description;
- (id)updateOperation;
@end

@implementation BLSHPendingDirectRampDisplayMode

- (BLSHPendingDirectRampDisplayMode)initWithRampBeginDisplayMode:(int64_t)a3 targetDisplayMode:(int64_t)a4
{
  v6.receiver = self;
  v6.super_class = BLSHPendingDirectRampDisplayMode;
  result = [(BLSHPendingUpdateDisplayMode *)&v6 initWithCurrentDisplayMode:a3 targetDisplayMode:a4];
  if (result)
  {
    result->_rampBeginDisplayMode = a3;
    result->_readyToStart = 1;
  }

  return result;
}

- (id)updateOperation
{
  v3 = [(BLSHPendingTwoPhaseUpdateDisplayMode *)self previous];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [(BLSHPendingTwoPhaseUpdateDisplayMode *)self next];
  }

  v6 = v5;

  return v6;
}

- (id)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [(BLSHPendingTwoPhaseUpdateDisplayMode *)self previous];
  v5 = [(BLSHPendingTwoPhaseUpdateDisplayMode *)self isStarted];
  if (v4)
  {
    v6 = @"started";
  }

  else
  {
    v6 = @"bothStarted";
  }

  v7 = [v3 appendBool:v5 withName:v6];
  v8 = [v3 appendBool:-[BLSHPendingDirectRampDisplayMode isReadyToStart](self withName:{"isReadyToStart"), @"isReadyToStart"}];
  v9 = [v3 appendBool:-[BLSHPendingUpdateDisplayMode isCompleted](self withName:{"isCompleted"), @"completed"}];
  v10 = NSStringFromBLSBacklightDisplayMode(self->_rampBeginDisplayMode);
  [v3 appendString:v10 withName:@"begin"];

  v11 = NSStringFromBLSBacklightDisplayMode([(BLSHPendingUpdateDisplayMode *)self targetDisplayMode]);
  [v3 appendString:v11 withName:@"target"];

  v12 = [v3 appendTimeInterval:@"duration" withName:1 decomposeUnits:self->_duration];
  v13 = [v3 appendPointer:v4 withName:@"previous"];
  v14 = [(BLSHPendingTwoPhaseUpdateDisplayMode *)self next];
  v15 = [v3 appendObject:v14 withName:@"next"];

  v16 = [v3 build];

  return v16;
}

@end