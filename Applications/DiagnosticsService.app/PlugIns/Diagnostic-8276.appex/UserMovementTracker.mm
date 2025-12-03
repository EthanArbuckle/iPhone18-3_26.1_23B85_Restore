@interface UserMovementTracker
- (id)init:(id)init noMovementAttitudeChangeMinThreshold:(double)threshold noMovementMinTimeSeconds:(double)seconds startMovementTrackingNow:(BOOL)now;
- (void)dealloc;
- (void)handleNoUserMovement:(double)movement;
- (void)handleUserMovement;
- (void)initMembers:(id)members noMovementAttitudeChangeMinThreshold:(double)threshold noMovementMinTimeSeconds:(double)seconds;
- (void)processAttitudeChange:(id)change timestamp:(double)timestamp;
- (void)processDeviceMotionUpdate:(id)update error:(id)error;
- (void)startUserMotionTracking;
- (void)stopDeviceMotionTracking;
@end

@implementation UserMovementTracker

- (id)init:(id)init noMovementAttitudeChangeMinThreshold:(double)threshold noMovementMinTimeSeconds:(double)seconds startMovementTrackingNow:(BOOL)now
{
  nowCopy = now;
  initCopy = init;
  v15.receiver = self;
  v15.super_class = UserMovementTracker;
  v11 = [(UserMovementTracker *)&v15 init];
  v12 = v11;
  if (v11)
  {
    [(UserMovementTracker *)v11 initMembers:initCopy noMovementAttitudeChangeMinThreshold:threshold noMovementMinTimeSeconds:seconds];
    if (nowCopy)
    {
      [(UserMovementTracker *)v12 startUserMotionTracking];
    }

    v13 = v12;
  }

  return v12;
}

- (void)dealloc
{
  [(UserMovementTracker *)self stopDeviceMotionTracking];
  v3.receiver = self;
  v3.super_class = UserMovementTracker;
  [(UserMovementTracker *)&v3 dealloc];
}

- (void)initMembers:(id)members noMovementAttitudeChangeMinThreshold:(double)threshold noMovementMinTimeSeconds:(double)seconds
{
  membersCopy = members;
  v13 = membersCopy;
  if (membersCopy)
  {
    v9 = membersCopy;
  }

  else
  {
    v9 = objc_opt_new();
  }

  m_cmMotionManager = self->m_cmMotionManager;
  self->m_cmMotionManager = v9;

  [(UserMovementTracker *)self setMovementState:0];
  self->m_noMovementAttitudeChangeMinThreshold = threshold;
  self->m_noMovementMinTimeSeconds = seconds;
  self->m_isNoMovementPhase = 0;
  v11 = objc_opt_new();
  m_operationQueue = self->m_operationQueue;
  self->m_operationQueue = v11;
}

- (void)startUserMotionTracking
{
  if ([(CMMotionManager *)self->m_cmMotionManager isDeviceMotionAvailable])
  {
    if (![(CMMotionManager *)self->m_cmMotionManager isDeviceMotionActive])
    {
      m_cmMotionManager = self->m_cmMotionManager;
      m_operationQueue = self->m_operationQueue;
      v5[0] = _NSConcreteStackBlock;
      v5[1] = 3221225472;
      v5[2] = sub_1000015C0;
      v5[3] = &unk_10002C9E0;
      v5[4] = self;
      [(CMMotionManager *)m_cmMotionManager startDeviceMotionUpdatesToQueue:m_operationQueue withHandler:v5];
      [(UserMovementTracker *)self frequencyToTimePeriod:2];
      [(CMMotionManager *)self->m_cmMotionManager setDeviceMotionUpdateInterval:?];
      [(UserMovementTracker *)self setMovementState:0];
    }
  }
}

- (void)stopDeviceMotionTracking
{
  m_cmMotionManager = self->m_cmMotionManager;
  if (m_cmMotionManager && [(CMMotionManager *)m_cmMotionManager isDeviceMotionActive])
  {
    [(CMMotionManager *)self->m_cmMotionManager stopDeviceMotionUpdates];

    [(UserMovementTracker *)self setMovementState:0];
  }
}

- (void)processDeviceMotionUpdate:(id)update error:(id)error
{
  updateCopy = update;
  v8 = updateCopy;
  if (error)
  {
    [(UserMovementTracker *)self setMovementState:3];
  }

  else
  {
    attitude = [updateCopy attitude];
    [v8 timestamp];
    [(UserMovementTracker *)self processAttitudeChange:attitude timestamp:?];
  }
}

- (void)processAttitudeChange:(id)change timestamp:(double)timestamp
{
  changeCopy = change;
  v7 = [[AttitudeInformation alloc] init:changeCopy];

  if (self->m_lastAttitude)
  {
    v8 = [(AttitudeInformation *)v7 subtract:?];
    [v8 l2Norm];
    if (v9 >= self->m_noMovementAttitudeChangeMinThreshold)
    {
      [(UserMovementTracker *)self handleUserMovement];
    }

    else
    {
      [(UserMovementTracker *)self handleNoUserMovement:timestamp];
    }
  }

  m_lastAttitude = self->m_lastAttitude;
  self->m_lastAttitude = v7;
}

- (void)handleNoUserMovement:(double)movement
{
  if (!self->m_isNoMovementPhase)
  {
    [(UserMovementTracker *)self initializeNoMovementPhase:movement];
  }

  if ([(UserMovementTracker *)self movementState]!= 1 && movement - self->m_noMovementStartTimestamp > self->m_noMovementMinTimeSeconds)
  {

    [(UserMovementTracker *)self setMovementState:1];
  }
}

- (void)handleUserMovement
{
  if (self->m_isNoMovementPhase)
  {
    self->m_isNoMovementPhase = 0;
    if ([(UserMovementTracker *)self movementState]!= 2)
    {

      [(UserMovementTracker *)self setMovementState:2];
    }
  }
}

@end