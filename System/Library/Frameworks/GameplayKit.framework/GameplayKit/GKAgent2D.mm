@interface GKAgent2D
- (GKAgent2D)init;
- (GKAgent2D)initWithCoder:(id)a3;
- (float)rotation;
- (float2)position_;
- (float2)velocity_;
- (vector_float2)position;
- (vector_float2)velocity;
- (void)applyBrakingForce:(float)a3 deltaTime:(double)a4;
- (void)encodeWithCoder:(id)a3;
- (void)setPosition:(vector_float2)position;
- (void)setPosition_:(float2)a3;
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

- (GKAgent2D)initWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = GKAgent2D;
  v5 = [(GKAgent *)&v7 initWithCoder:v4];
  if (v5)
  {
    [v4 decodeFloatForKey:@"rotation"];
    [(GKAgent2D *)v5 setRotation:?];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [(GKAgent2D *)self rotation];
  [v4 encodeFloat:@"rotation" forKey:?];
}

- (vector_float2)position
{
  v3 = [(GKAgent *)self vehicle];
  v4 = (*(*v3 + 48))(v3);
  v8 = LODWORD(v4);
  v5 = [(GKAgent *)self vehicle];
  (*(*v5 + 48))(v5);
  return __PAIR64__(v6, v8);
}

- (vector_float2)velocity
{
  v3 = [(GKAgent *)self vehicle];
  v4 = (*(*v3 + 192))(v3);
  v8 = LODWORD(v4);
  v5 = [(GKAgent *)self vehicle];
  (*(*v5 + 192))(v5);
  return __PAIR64__(v6, v8);
}

- (void)setPosition:(vector_float2)position
{
  v3 = [(GKAgent *)self vehicle];
  *(v3 + 44) = position.u32[0];
  *(v3 + 13) = position.i32[1];
}

- (void)setPosition_:(float2)a3
{
  var1 = a3.var1;
  var0 = a3.var0;
  v5 = [(GKAgent *)self vehicle];
  *(v5 + 11) = var0;
  v5[12] = 0;
  *(v5 + 13) = var1;
}

- (float2)position_
{
  v3 = [(GKAgent *)self vehicle];
  v4 = (*(*v3 + 48))(v3);
  v5 = [(GKAgent *)self vehicle];
  (*(*v5 + 48))(v5);
  v7 = v6;
  v8 = v4;
  result.var1 = v7;
  result.var0 = v8;
  return result;
}

- (float2)velocity_
{
  v3 = [(GKAgent *)self vehicle];
  v4 = (*(*v3 + 192))(v3);
  v5 = [(GKAgent *)self vehicle];
  (*(*v5 + 192))(v5);
  v7 = v6;
  v8 = v4;
  result.var1 = v7;
  result.var0 = v8;
  return result;
}

- (float)rotation
{
  v3 = [(GKAgent *)self vehicle];
  v4 = (*(*v3 + 32))(v3);
  v12 = LODWORD(v4);
  v5 = [(GKAgent *)self vehicle];
  (*(*v5 + 32))(v5);
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
  v5 = [(GKAgent *)self vehicle];
  v5[8] = LODWORD(v4.__cosval);
  v5[9] = 0;
  v5[10] = LODWORD(v4.__sinval);
  v6 = [(GKAgent *)self vehicle];
  v7 = [(GKAgent *)self vehicle];
  v10[0] = (*(*v7 + 32))(v7);
  v10[1] = v8;
  v10[2] = v9;
  (*(*v6 + 120))(v6, v10);
}

- (void)updateWithDeltaTime:(NSTimeInterval)seconds
{
  v33 = [(GKAgent *)self delegate];
  if (v33)
  {
    v5 = [(GKAgent *)self delegate];
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      v34 = [(GKAgent *)self delegate];
      [v34 agentWillUpdate:self];
    }
  }

  v35 = [(GKAgent *)self behavior];
  [v35 getTotalForce:self agent:seconds];
  v31 = v7;

  [(GKAgent2D *)self applySteeringForce:*&v31 deltaTime:seconds];
  for (i = 0; ; ++i)
  {
    v36 = [(GKAgent *)self behavior];
    v9 = [v36 goalCount];

    if (v9 <= i)
    {
      break;
    }

    v10 = [(GKAgent *)self behavior];
    v37 = [v10 objectAtIndexedSubscript:i];

    v11 = [(GKAgent *)self behavior];
    [v11 weightForGoal:v37];
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
        v25 = [(GKAgent *)self vehicle];
        v26.n128_f32[0] = v24 + v20;
        v27.i32[0] = v31;
        v27.f32[1] = v16 - (v24 + v20);
        v28 = vcvt_f32_s32(vsub_s32(vcltz_f32(v27), vcgtz_f32(v27)));
        if (vmvn_s8(vceq_f32(vdup_lane_s32(v28, 1), v28)).u32[0])
        {
          v26.n128_f32[0] = v16;
        }

        (*(*v25 + 208))(v25, v26);
      }
    }
  }

  v38 = [(GKAgent *)self delegate];
  if (v38)
  {
    v29 = [(GKAgent *)self delegate];
    v30 = objc_opt_respondsToSelector();

    if (v30)
    {
      v39 = [(GKAgent *)self delegate];
      [v39 agentDidUpdate:self];
    }
  }
}

- (void)applyBrakingForce:(float)a3 deltaTime:(double)a4
{
  v6 = [(GKAgent *)self vehicle];

  v7 = a4;
  OpenSteer::SimpleVehicle::applyBrakingForce(v6, a3, v7);
}

@end