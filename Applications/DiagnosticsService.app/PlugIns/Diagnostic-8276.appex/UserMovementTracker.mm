@interface UserMovementTracker
- (id)init:(id)a3 noMovementAttitudeChangeMinThreshold:(double)a4 noMovementMinTimeSeconds:(double)a5 startMovementTrackingNow:(BOOL)a6;
- (void)dealloc;
- (void)handleNoUserMovement:(double)a3;
- (void)handleUserMovement;
- (void)initMembers:(id)a3 noMovementAttitudeChangeMinThreshold:(double)a4 noMovementMinTimeSeconds:(double)a5;
- (void)processAttitudeChange:(id)a3 timestamp:(double)a4;
- (void)processDeviceMotionUpdate:(id)a3 error:(id)a4;
- (void)startUserMotionTracking;
- (void)stopDeviceMotionTracking;
@end

@implementation UserMovementTracker

- (id)init:(id)a3 noMovementAttitudeChangeMinThreshold:(double)a4 noMovementMinTimeSeconds:(double)a5 startMovementTrackingNow:(BOOL)a6
{
  v6 = a6;
  v10 = a3;
  v15.receiver = self;
  v15.super_class = UserMovementTracker;
  v11 = [(UserMovementTracker *)&v15 init];
  v12 = v11;
  if (v11)
  {
    [(UserMovementTracker *)v11 initMembers:v10 noMovementAttitudeChangeMinThreshold:a4 noMovementMinTimeSeconds:a5];
    if (v6)
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

- (void)initMembers:(id)a3 noMovementAttitudeChangeMinThreshold:(double)a4 noMovementMinTimeSeconds:(double)a5
{
  v8 = a3;
  v13 = v8;
  if (v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = objc_opt_new();
  }

  m_cmMotionManager = self->m_cmMotionManager;
  self->m_cmMotionManager = v9;

  [(UserMovementTracker *)self setMovementState:0];
  self->m_noMovementAttitudeChangeMinThreshold = a4;
  self->m_noMovementMinTimeSeconds = a5;
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

- (void)processDeviceMotionUpdate:(id)a3 error:(id)a4
{
  v6 = a3;
  v8 = v6;
  if (a4)
  {
    [(UserMovementTracker *)self setMovementState:3];
  }

  else
  {
    v7 = [v6 attitude];
    [v8 timestamp];
    [(UserMovementTracker *)self processAttitudeChange:v7 timestamp:?];
  }
}

- (void)processAttitudeChange:(id)a3 timestamp:(double)a4
{
  v6 = a3;
  v7 = [[AttitudeInformation alloc] init:v6];

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
      [(UserMovementTracker *)self handleNoUserMovement:a4];
    }
  }

  m_lastAttitude = self->m_lastAttitude;
  self->m_lastAttitude = v7;
}

- (void)handleNoUserMovement:(double)a3
{
  if (!self->m_isNoMovementPhase)
  {
    [(UserMovementTracker *)self initializeNoMovementPhase:a3];
  }

  if ([(UserMovementTracker *)self movementState]!= 1 && a3 - self->m_noMovementStartTimestamp > self->m_noMovementMinTimeSeconds)
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