@interface BLSHPendingDirectRampDisplayMode
- (BLSHPendingDirectRampDisplayMode)initWithRampBeginDisplayMode:(int64_t)mode targetDisplayMode:(int64_t)displayMode;
- (id)description;
- (id)updateOperation;
@end

@implementation BLSHPendingDirectRampDisplayMode

- (BLSHPendingDirectRampDisplayMode)initWithRampBeginDisplayMode:(int64_t)mode targetDisplayMode:(int64_t)displayMode
{
  v6.receiver = self;
  v6.super_class = BLSHPendingDirectRampDisplayMode;
  result = [(BLSHPendingUpdateDisplayMode *)&v6 initWithCurrentDisplayMode:mode targetDisplayMode:displayMode];
  if (result)
  {
    result->_rampBeginDisplayMode = mode;
    result->_readyToStart = 1;
  }

  return result;
}

- (id)updateOperation
{
  previous = [(BLSHPendingTwoPhaseUpdateDisplayMode *)self previous];
  v4 = previous;
  if (previous)
  {
    next = previous;
  }

  else
  {
    next = [(BLSHPendingTwoPhaseUpdateDisplayMode *)self next];
  }

  v6 = next;

  return v6;
}

- (id)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  previous = [(BLSHPendingTwoPhaseUpdateDisplayMode *)self previous];
  isStarted = [(BLSHPendingTwoPhaseUpdateDisplayMode *)self isStarted];
  if (previous)
  {
    v6 = @"started";
  }

  else
  {
    v6 = @"bothStarted";
  }

  v7 = [v3 appendBool:isStarted withName:v6];
  v8 = [v3 appendBool:-[BLSHPendingDirectRampDisplayMode isReadyToStart](self withName:{"isReadyToStart"), @"isReadyToStart"}];
  v9 = [v3 appendBool:-[BLSHPendingUpdateDisplayMode isCompleted](self withName:{"isCompleted"), @"completed"}];
  v10 = NSStringFromBLSBacklightDisplayMode(self->_rampBeginDisplayMode);
  [v3 appendString:v10 withName:@"begin"];

  v11 = NSStringFromBLSBacklightDisplayMode([(BLSHPendingUpdateDisplayMode *)self targetDisplayMode]);
  [v3 appendString:v11 withName:@"target"];

  v12 = [v3 appendTimeInterval:@"duration" withName:1 decomposeUnits:self->_duration];
  v13 = [v3 appendPointer:previous withName:@"previous"];
  next = [(BLSHPendingTwoPhaseUpdateDisplayMode *)self next];
  v15 = [v3 appendObject:next withName:@"next"];

  build = [v3 build];

  return build;
}

@end