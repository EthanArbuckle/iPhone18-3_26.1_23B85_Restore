@interface GKAgent3D
- (GKAgent3D)init;
- (GKAgent3D)initWithCoder:(id)coder;
- (matrix_float3x3)rotation;
- (vector_float3)position;
- (vector_float3)velocity;
- (void)applyBrakingForce:(float)force deltaTime:(double)time;
- (void)encodeWithCoder:(id)coder;
- (void)setPosition:(vector_float3)position;
- (void)setRightHanded:(BOOL)rightHanded;
- (void)setRotation:(matrix_float3x3)rotation;
- (void)updateWithDeltaTime:(NSTimeInterval)seconds;
@end

@implementation GKAgent3D

- (GKAgent3D)init
{
  v3.receiver = self;
  v3.super_class = GKAgent3D;
  return [(GKAgent *)&v3 init];
}

- (GKAgent3D)initWithCoder:(id)coder
{
  coderCopy = coder;
  v19.receiver = self;
  v19.super_class = GKAgent3D;
  v5 = [(GKAgent *)&v19 initWithCoder:coderCopy];
  if (v5)
  {
    [coderCopy decodeFloatForKey:@"rotation00"];
    v18 = v6;
    [coderCopy decodeFloatForKey:@"rotation10"];
    v17 = v7;
    [coderCopy decodeFloatForKey:@"rotation20"];
    v16 = v8;
    [coderCopy decodeFloatForKey:@"rotation01"];
    v15 = v9;
    [coderCopy decodeFloatForKey:@"rotation11"];
    v14 = v10;
    [coderCopy decodeFloatForKey:@"rotation21"];
    v13 = v11;
    [coderCopy decodeFloatForKey:@"rotation02"];
    [coderCopy decodeFloatForKey:@"rotation12"];
    [coderCopy decodeFloatForKey:@"rotation22"];
    [(GKAgent3D *)v5 setRotation:COERCE_DOUBLE(__PAIR64__(v15, v18)), COERCE_DOUBLE(__PAIR64__(v14, v17)), COERCE_DOUBLE(__PAIR64__(v13, v16))];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [(GKAgent3D *)self rotation];
  [coderCopy encodeFloat:@"rotation00" forKey:?];
  [(GKAgent3D *)self rotation];
  LODWORD(v5) = v4;
  [coderCopy encodeFloat:@"rotation10" forKey:v5];
  [(GKAgent3D *)self rotation];
  LODWORD(v7) = v6;
  [coderCopy encodeFloat:@"rotation20" forKey:v7];
  [(GKAgent3D *)self rotation];
  LODWORD(v8) = HIDWORD(v8);
  [coderCopy encodeFloat:@"rotation01" forKey:v8];
  [(GKAgent3D *)self rotation];
  LODWORD(v10) = v9;
  [coderCopy encodeFloat:@"rotation11" forKey:v10];
  [(GKAgent3D *)self rotation];
  LODWORD(v12) = v11;
  [coderCopy encodeFloat:@"rotation21" forKey:v12];
  [(GKAgent3D *)self rotation];
  LODWORD(v14) = v13;
  [coderCopy encodeFloat:@"rotation02" forKey:v14];
  [(GKAgent3D *)self rotation];
  LODWORD(v16) = v15;
  [coderCopy encodeFloat:@"rotation12" forKey:v16];
  [(GKAgent3D *)self rotation];
  LODWORD(v18) = v17;
  [coderCopy encodeFloat:@"rotation22" forKey:v18];
}

- (vector_float3)position
{
  vehicle = [(GKAgent *)self vehicle];
  (*(*vehicle + 48))(vehicle);
  vehicle2 = [(GKAgent *)self vehicle];
  (*(*vehicle2 + 48))(vehicle2);
  vehicle3 = [(GKAgent *)self vehicle];
  v6 = (*(*vehicle3 + 48))(vehicle3);
  result.i64[1] = v7;
  result.i64[0] = v6;
  return result;
}

- (void)setPosition:(vector_float3)position
{
  v8 = v3;
  v4 = [(GKAgent *)self vehicle:position.i64[0]];
  v6.n128_u32[0] = v8.n128_u32[2];
  v5.n128_u32[0] = v8.n128_u32[1];
  v7 = *(*v4 + 56);

  v7(v8, v5, v6);
}

- (vector_float3)velocity
{
  vehicle = [(GKAgent *)self vehicle];
  (*(*vehicle + 192))(vehicle);
  vehicle2 = [(GKAgent *)self vehicle];
  (*(*vehicle2 + 192))(vehicle2);
  vehicle3 = [(GKAgent *)self vehicle];
  v6 = (*(*vehicle3 + 192))(vehicle3);
  result.i64[1] = v7;
  result.i64[0] = v6;
  return result;
}

- (void)setRightHanded:(BOOL)rightHanded
{
  *([(GKAgent *)self vehicle]+ 172) = rightHanded;
  vehicle = [(GKAgent *)self vehicle];
  (*(*vehicle + 72))(vehicle);
  *(vehicle + 7) = 0;
  vehicle[88] = 0;
  (*(*vehicle + 168))(vehicle, 1.0);
  (*(*vehicle + 208))(vehicle, 0.0);
  (*(*vehicle + 184))(vehicle, 0.5);
  (*(*vehicle + 232))(vehicle, 1.0);
  v5 = (*(*vehicle + 248))(vehicle, 1.0);
  v5.i64[0] = _static_vec3_zero;
  v6 = dword_27DF48758;
  *&v7 = _static_vec3_zero;
  *(&v7 + 1) = __PAIR64__(_static_vec3_zero, dword_27DF48758);
  *(vehicle + 38) = dword_27DF48758;
  *(vehicle + 120) = v7;
  v8 = vuzp2q_s32(v5, vzip1q_s32(v5, v5));
  v9 = v8;
  v9.i32[1] = v6;
  v9.i32[3] = v8.i32[0];
  *(vehicle + 136) = v9;
  *(vehicle + 29) = 0;
  *(vehicle + 39) = 0;
  v8.i32[0] = dword_27DF48758;
  *(vehicle + 20) = _static_vec3_zero;
  *(vehicle + 42) = v8.i32[0];
}

- (void)setRotation:(matrix_float3x3)rotation
{
  vehicle = [(GKAgent *)self vehicle];
  (*(*vehicle + 40))(vehicle, rotation.columns[0], rotation.columns[0].f32[1], rotation.columns[0].f32[2]);
  vehicle2 = [(GKAgent *)self vehicle];
  (*(*vehicle2 + 24))(vehicle2, rotation.columns[1], rotation.columns[1].f32[1], rotation.columns[1].f32[2]);
  vehicle3 = [(GKAgent *)self vehicle];
  v8.n128_u32[0] = rotation.columns[2].u32[2];
  v7.n128_u32[0] = rotation.columns[2].u32[1];
  v9 = *(*vehicle3 + 8);

  v9(rotation.columns[2], v7, v8);
}

- (matrix_float3x3)rotation
{
  vehicle = [(GKAgent *)self vehicle];
  *v4.i64 = (*(*vehicle + 32))(vehicle);
  v21 = v4;
  v20 = v5;
  v22 = v6;
  vehicle2 = [(GKAgent *)self vehicle];
  *v8.i64 = (*(*vehicle2 + 16))(vehicle2);
  v17 = v9;
  v18 = v8;
  v19 = v10;
  v11.i32[0] = (**[(GKAgent *)self vehicle])();
  v11.i32[1] = v12;
  v11.i32[2] = v13;
  v14 = v21;
  v14.i32[1] = v20;
  v14.i32[2] = v22;
  v15 = v18;
  v15.i32[1] = v17;
  v15.i32[2] = v19;
  v16 = v11;
  result.columns[2] = v16;
  result.columns[1] = v15;
  result.columns[0] = v14;
  return result;
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

  [(GKAgent3D *)self applySteeringForce:*&v31 deltaTime:seconds];
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