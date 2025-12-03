@interface GKAgent2D
- (GKAgent2D)init;
- (GKAgent2D)initWithCoder:(id)coder;
- (float)rotation;
- (float2)position_;
- (float2)velocity_;
- (vector_float2)position;
- (vector_float2)velocity;
- (void)applyBrakingForce:(float)force deltaTime:(double)time;
- (void)encodeWithCoder:(id)coder;
- (void)setPosition:(vector_float2)position;
- (void)setPosition_:(float2)position_;
- (void)setRotation:(float)rotation;
- (void)updateWithDeltaTime:(NSTimeInterval)seconds;
@end

@implementation GKAgent2D

- (GKAgent2D)init
{
  v3.receiver = self;
  v3.super_class = GKAgent2D;
  return [(GKAgent *)&v3 init];
}

- (GKAgent2D)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = GKAgent2D;
  v5 = [(GKAgent *)&v7 initWithCoder:coderCopy];
  if (v5)
  {
    [coderCopy decodeFloatForKey:@"rotation"];
    [(GKAgent2D *)v5 setRotation:?];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [(GKAgent2D *)self rotation];
  [coderCopy encodeFloat:@"rotation" forKey:?];
}

- (vector_float2)position
{
  vehicle = [(GKAgent *)self vehicle];
  v4 = (*(*vehicle + 48))(vehicle);
  v8 = LODWORD(v4);
  vehicle2 = [(GKAgent *)self vehicle];
  (*(*vehicle2 + 48))(vehicle2);
  return __PAIR64__(v6, v8);
}

- (vector_float2)velocity
{
  vehicle = [(GKAgent *)self vehicle];
  v4 = (*(*vehicle + 192))(vehicle);
  v8 = LODWORD(v4);
  vehicle2 = [(GKAgent *)self vehicle];
  (*(*vehicle2 + 192))(vehicle2);
  return __PAIR64__(v6, v8);
}

- (void)setPosition:(vector_float2)position
{
  vehicle = [(GKAgent *)self vehicle];
  *(vehicle + 44) = position.u32[0];
  *(vehicle + 13) = position.i32[1];
}

- (void)setPosition_:(float2)position_
{
  var1 = position_.var1;
  var0 = position_.var0;
  vehicle = [(GKAgent *)self vehicle];
  *(vehicle + 11) = var0;
  vehicle[12] = 0;
  *(vehicle + 13) = var1;
}

- (float2)position_
{
  vehicle = [(GKAgent *)self vehicle];
  v4 = (*(*vehicle + 48))(vehicle);
  vehicle2 = [(GKAgent *)self vehicle];
  (*(*vehicle2 + 48))(vehicle2);
  v7 = v6;
  v8 = v4;
  result.var1 = v7;
  result.var0 = v8;
  return result;
}

- (float2)velocity_
{
  vehicle = [(GKAgent *)self vehicle];
  v4 = (*(*vehicle + 192))(vehicle);
  vehicle2 = [(GKAgent *)self vehicle];
  (*(*vehicle2 + 192))(vehicle2);
  v7 = v6;
  v8 = v4;
  result.var1 = v7;
  result.var0 = v8;
  return result;
}

- (float)rotation
{
  vehicle = [(GKAgent *)self vehicle];
  v4 = (*(*vehicle + 32))(vehicle);
  v12 = LODWORD(v4);
  vehicle2 = [(GKAgent *)self vehicle];
  (*(*vehicle2 + 32))(vehicle2);
  v7 = vmul_f32(__PAIR64__(v6, v12), __PAIR64__(v6, v12));
  v7.i32[0] = vadd_f32(v7, vdup_lane_s32(v7, 1)).u32[0];
  v8 = vrsqrte_f32(v7.u32[0]);
  v9 = vmul_n_f32(__PAIR64__(v6, v12), vmul_f32(vrsqrts_f32(v7.u32[0], vmul_f32(v8, v8)), v8).f32[0]);
  result = atan2f(v9.f32[1], v9.f32[0]);
  if (result < 0.0)
  {
    return result + 6.28318531;
  }

  return result;
}

- (void)setRotation:(float)rotation
{
  v4 = __sincosf_stret(rotation);
  vehicle = [(GKAgent *)self vehicle];
  vehicle[8] = LODWORD(v4.__cosval);
  vehicle[9] = 0;
  vehicle[10] = LODWORD(v4.__sinval);
  vehicle2 = [(GKAgent *)self vehicle];
  vehicle3 = [(GKAgent *)self vehicle];
  v10[0] = (*(*vehicle3 + 32))(vehicle3);
  v10[1] = v8;
  v10[2] = v9;
  (*(*vehicle2 + 120))(vehicle2, v10);
}

- (void)updateWithDeltaTime:(NSTimeInterval)seconds
{
  delegate = [(GKAgent *)self delegate];
  if (delegate)
  {
    delegate2 = [(GKAgent *)self delegate];
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      delegate3 = [(GKAgent *)self delegate];
      [delegate3 agentWillUpdate:self];
    }
  }

  behavior = [(GKAgent *)self behavior];
  [behavior getTotalForce:self agent:seconds];
  v31 = v7;

  [(GKAgent2D *)self applySteeringForce:*&v31 deltaTime:seconds];
  for (i = 0; ; ++i)
  {
    behavior2 = [(GKAgent *)self behavior];
    goalCount = [behavior2 goalCount];

    if (goalCount <= i)
    {
      break;
    }

    behavior3 = [(GKAgent *)self behavior];
    v37 = [behavior3 objectAtIndexedSubscript:i];

    behavior4 = [(GKAgent *)self behavior];
    [behavior4 weightForGoal:v37];
    v13 = v12;

    if ([v37 isTargetSpeedGoal])
    {
      [v37 speed];
      if (v14 < 1.0)
      {
        [v37 speed];
        v16 = v15;
        [(GKAgent *)self speed];
        v18 = v17;
        [(GKAgent *)self maxAcceleration];
        *&v19 = v16 - v18;
        v32 = v19;
        v20 = v13 * seconds * (v16 - v18);
        if (fabsf(v20) > v21)
        {
          [(GKAgent *)self maxAcceleration];
          v20 = v22 * ((__PAIR64__(v20 > 0.0, LODWORD(v20)) - COERCE_UNSIGNED_INT(0.0)) >> 32);
        }

        [(GKAgent *)self speed];
        v24 = v23;
        vehicle = [(GKAgent *)self vehicle];
        v26.n128_f32[0] = v24 + v20;
        v27.i32[0] = v31;
        v27.f32[1] = v16 - (v24 + v20);
        v28 = vcvt_f32_s32(vsub_s32(vcltz_f32(v27), vcgtz_f32(v27)));
        if (vmvn_s8(vceq_f32(vdup_lane_s32(v28, 1), v28)).u32[0])
        {
          v26.n128_f32[0] = v16;
        }

        (*(*vehicle + 208))(vehicle, v26);
      }
    }
  }

  delegate4 = [(GKAgent *)self delegate];
  if (delegate4)
  {
    delegate5 = [(GKAgent *)self delegate];
    v30 = objc_opt_respondsToSelector();

    if (v30)
    {
      delegate6 = [(GKAgent *)self delegate];
      [delegate6 agentDidUpdate:self];
    }
  }
}

- (void)applyBrakingForce:(float)force deltaTime:(double)time
{
  vehicle = [(GKAgent *)self vehicle];

  timeCopy = time;
  OpenSteer::SimpleVehicle::applyBrakingForce(vehicle, force, timeCopy);
}

@end