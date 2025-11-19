@interface GKAgent
- (GKAgent)init;
- (GKAgent)initWithCoder:(id)a3;
- (__n128)steerForAlignment:(float)a3 maxDistance:(uint64_t)a4 maxAngle:(void *)a5;
- (__n128)steerForCohesion:(float)a3 maxDistance:(uint64_t)a4 maxAngle:(void *)a5;
- (__n128)steerForIntercept:(uint64_t)a3 maxPredictionTime:(void *)a4;
- (__n128)steerForSeparation:(float)a3 maxDistance:(uint64_t)a4 maxAngle:(void *)a5;
- (__n128)steerToAvoidAgents:(uint64_t)a3 timeBeforeCollisionToAvoid:(void *)a4;
- (__n128)steerToAvoidObstacles:(uint64_t)a3 timeBeforeCollisionToAvoid:(void *)a4;
- (__n128)steerToFollowPath:(uint64_t)a3 maxPredictionTime:(void *)a4 forward:(int)a5;
- (__n128)steerToStayOnPath:(void *)a3 maxPredictionTime:;
- (__n64)steerForFlee:(void *)a1;
- (__n64)steerForWander:(float)a3 speed:;
- (double)position3;
- (double)velocity3;
- (float)maxAcceleration;
- (float32x2_t)steerForSeek:(void *)a1;
- (float32x2_t)steerForTargetSpeed:(void *)a1;
- (id)delegate;
- (void)encodeWithCoder:(id)a3;
- (void)setMaxAcceleration:(float)maxAcceleration;
@end

@implementation GKAgent

- (GKAgent)init
{
  v11.receiver = self;
  v11.super_class = GKAgent;
  v2 = [(GKComponent *)&v11 init];
  p_vehicle = &v2->_vehicle;
  (*(v2->_vehicle._vptr$AbstractLocalSpace + 9))(&v2->_vehicle);
  *&v2->_vehicle.WanderSide = 0;
  v2->_vehicle.gaudyPursuitAnnotation = 0;
  (*(*p_vehicle + 168))(p_vehicle, 1.0);
  (*(*p_vehicle + 208))(p_vehicle, 0.0);
  (*(*p_vehicle + 184))(p_vehicle, 0.5);
  (*(*p_vehicle + 232))(p_vehicle, 1.0);
  v4 = (*(*p_vehicle + 248))(p_vehicle, 1.0);
  v4.i64[0] = _static_vec3_zero;
  v5 = dword_27DF48758;
  LODWORD(v2->_vehicle._smoothedPosition.z) = dword_27DF48758;
  *&v6 = v4.i64[0];
  *(&v6 + 1) = __PAIR64__(v4.u32[0], v5);
  *&v2->_vehicle._lastForward.x = v6;
  v7 = vuzp2q_s32(v4, vzip1q_s32(v4, v4));
  v8 = v7;
  v8.i32[1] = v5;
  v8.i32[3] = v7.i32[0];
  *&v2->_vehicle._lastPosition.y = v8;
  v2->_vehicle._curvature = 0.0;
  v2->_vehicle._smoothedCurvature = 0.0;
  v9 = _static_vec3_zero;
  LODWORD(v2->_vehicle._smoothedAcceleration.z) = dword_27DF48758;
  *&v2->_vehicle._smoothedAcceleration.x = v9;
  v2->_vehicle.m_rightHanded = 1;
  return v2;
}

- (GKAgent)initWithCoder:(id)a3
{
  v4 = a3;
  v22.receiver = self;
  v22.super_class = GKAgent;
  v5 = [(GKComponent *)&v22 initWithCoder:v4];
  v6 = v5;
  if (v5)
  {
    p_vehicle = &v5->_vehicle;
    (*(v5->_vehicle._vptr$AbstractLocalSpace + 9))(&v5->_vehicle);
    *&v6->_vehicle.WanderSide = 0;
    v6->_vehicle.gaudyPursuitAnnotation = 0;
    (*(p_vehicle->_vptr$AbstractLocalSpace + 21))(&v6->_vehicle, 1.0);
    (*(p_vehicle->_vptr$AbstractLocalSpace + 26))(&v6->_vehicle, 0.0);
    (*(p_vehicle->_vptr$AbstractLocalSpace + 23))(&v6->_vehicle, 0.5);
    (*(p_vehicle->_vptr$AbstractLocalSpace + 29))(&v6->_vehicle, 1.0);
    v8 = (*(p_vehicle->_vptr$AbstractLocalSpace + 31))(&v6->_vehicle, 1.0);
    v8.i64[0] = _static_vec3_zero;
    v9 = dword_27DF48758;
    *&v10 = _static_vec3_zero;
    *(&v10 + 1) = __PAIR64__(_static_vec3_zero, dword_27DF48758);
    LODWORD(v6->_vehicle._smoothedPosition.z) = dword_27DF48758;
    *&v6->_vehicle._lastForward.x = v10;
    v11 = vuzp2q_s32(v8, vzip1q_s32(v8, v8));
    v12 = v11;
    v12.i32[1] = v9;
    v12.i32[3] = v11.i32[0];
    *&v6->_vehicle._lastPosition.y = v12;
    v6->_vehicle._curvature = 0.0;
    v6->_vehicle._smoothedCurvature = 0.0;
    v13 = _static_vec3_zero;
    LODWORD(v6->_vehicle._smoothedAcceleration.z) = dword_27DF48758;
    *&v6->_vehicle._smoothedAcceleration.x = v13;
    [(GKAgent *)v6 setDelegate:0];
    [v4 decodeFloatForKey:@"mass"];
    [(GKAgent *)v6 setMass:?];
    [v4 decodeFloatForKey:@"radius"];
    [(GKAgent *)v6 setRadius:?];
    [v4 decodeFloatForKey:@"speed"];
    [(GKAgent *)v6 setSpeed:?];
    [v4 decodeFloatForKey:@"maxAcceleration"];
    [(GKAgent *)v6 setMaxAcceleration:?];
    [v4 decodeFloatForKey:@"maxSpeed"];
    [(GKAgent *)v6 setMaxSpeed:?];
    [v4 decodeFloatForKey:@"positionX"];
    v15 = v14;
    [v4 decodeFloatForKey:@"positionY"];
    v17 = v16;
    [v4 decodeFloatForKey:@"positionZ"];
    v19 = v18;
    v20 = [(GKAgent *)v6 vehicle];
    v20[11] = v15;
    v20[12] = v17;
    v20[13] = v19;
  }

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v7 = a3;
  [(GKAgent *)self mass];
  [v7 encodeFloat:@"mass" forKey:?];
  [(GKAgent *)self radius];
  [v7 encodeFloat:@"radius" forKey:?];
  [(GKAgent *)self speed];
  [v7 encodeFloat:@"speed" forKey:?];
  [(GKAgent *)self maxAcceleration];
  [v7 encodeFloat:@"maxAcceleration" forKey:?];
  [(GKAgent *)self maxSpeed];
  [v7 encodeFloat:@"maxSpeed" forKey:?];
  [(GKAgent *)self position3];
  [v7 encodeFloat:@"positionX" forKey:?];
  [(GKAgent *)self position3];
  LODWORD(v4) = HIDWORD(v4);
  [v7 encodeFloat:@"positionY" forKey:v4];
  [(GKAgent *)self position3];
  LODWORD(v6) = v5;
  [v7 encodeFloat:@"positionZ" forKey:v6];
}

- (float)maxAcceleration
{
  v3 = (*(self->_vehicle._vptr$AbstractLocalSpace + 28))(&self->_vehicle, a2);
  [(GKAgent *)self mass];
  return v3 / v4;
}

- (void)setMaxAcceleration:(float)maxAcceleration
{
  p_vehicle = &self->_vehicle;
  [(GKAgent *)self mass];
  v5.n128_f32[0] = v5.n128_f32[0] * maxAcceleration;
  v6 = *(p_vehicle->_vptr$AbstractLocalSpace + 29);

  v6(p_vehicle, v5);
}

- (double)position3
{
  v1 = a1 + 40;
  v2 = (*(*(a1 + 40) + 48))(a1 + 40);
  v6 = LODWORD(v2);
  (*(*v1 + 48))(v1);
  v5 = v3;
  (*(*v1 + 48))(v1);
  return COERCE_DOUBLE(__PAIR64__(v5, v6));
}

- (double)velocity3
{
  v1 = a1 + 40;
  v2 = (*(*(a1 + 40) + 192))(a1 + 40);
  v6 = LODWORD(v2);
  (*(*v1 + 192))(v1);
  v5 = v3;
  (*(*v1 + 192))(v1);
  return COERCE_DOUBLE(__PAIR64__(v5, v6));
}

- (float32x2_t)steerForSeek:(void *)a1
{
  v2 = [a1 vehicle];
  v3 = (*(*v2 + 48))(v2);
  v5 = v4;
  v6 = *&a2 - v3;
  if (v6 == 0.0)
  {
    v6 = 0.00000011921;
  }

  v10 = v6;
  v7.f32[0] = (*(*v2 + 192))(v2);
  v7.f32[1] = v5 + v8;
  return vsub_f32(__PAIR64__(HIDWORD(a2), LODWORD(v10)), v7);
}

- (__n64)steerForFlee:(void *)a1
{
  v2 = [a1 vehicle];
  v3 = (*(*v2 + 48))(v2);
  v5 = v4;
  v6 = v3 - *&a2;
  if (v6 == 0.0)
  {
    v7 = 0.00000011921;
  }

  else
  {
    v7 = v6;
  }

  result.n64_f32[0] = v7 - (*(*v2 + 192))(v2);
  result.n64_f32[1] = v5 - (*(&a2 + 1) + v8);
  return result;
}

- (__n128)steerToAvoidObstacles:(uint64_t)a3 timeBeforeCollisionToAvoid:(void *)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v6 = a4;
  __p = 0;
  v24 = 0;
  v25 = 0;
  v7 = [v6 count];
  if (v7)
  {
    if (!(v7 >> 61))
    {
      operator new();
    }

    _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE20__throw_length_errorB8ne200100Ev();
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = v6;
  if ([v8 countByEnumeratingWithState:&v19 objects:v26 count:16])
  {
    *v20;
    *v20;
    [**(&v19 + 1) obstacle];
    operator new();
  }

  v9 = [a1 vehicle];
  v10 = a2;
  OpenSteer::SteerLibraryMixin<OpenSteer::LocalSpaceMixin<OpenSteer::AbstractVehicle>>::steerToAvoidObstacles(v9, &__p, v10);
  v16 = v11;
  v17 = v13;
  v18 = v12;
  if (__p)
  {
    v24 = __p;
    operator delete(__p);
  }

  v14 = *MEMORY[0x277D85DE8];
  result.n128_u32[0] = v18;
  result.n128_u32[1] = v16;
  result.n128_u32[2] = v17;
  return result;
}

- (__n128)steerToAvoidAgents:(uint64_t)a3 timeBeforeCollisionToAvoid:(void *)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v6 = a4;
  __p = 0;
  v24 = 0;
  v25 = 0;
  v7 = [v6 count];
  if (v7)
  {
    if (!(v7 >> 61))
    {
      operator new();
    }

    _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE20__throw_length_errorB8ne200100Ev();
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = v6;
  if ([v8 countByEnumeratingWithState:&v19 objects:v26 count:16])
  {
    *v20;
    *v20;
    [**(&v19 + 1) vehicle];
    operator new();
  }

  v9 = [a1 vehicle];
  v10 = a2;
  OpenSteer::SteerLibraryMixin<OpenSteer::LocalSpaceMixin<OpenSteer::AbstractVehicle>>::steerToAvoidNeighbors(v9, &__p, v10);
  v16 = v11;
  v17 = v13;
  v18 = v12;
  if (__p)
  {
    v24 = __p;
    operator delete(__p);
  }

  v14 = *MEMORY[0x277D85DE8];
  result.n128_u32[0] = v18;
  result.n128_u32[1] = v16;
  result.n128_u32[2] = v17;
  return result;
}

- (__n128)steerForSeparation:(float)a3 maxDistance:(uint64_t)a4 maxAngle:(void *)a5
{
  v29 = *MEMORY[0x277D85DE8];
  v8 = a5;
  __p = 0;
  v26 = 0;
  v27 = 0;
  v9 = [v8 count];
  if (v9)
  {
    if (!(v9 >> 61))
    {
      operator new();
    }

    _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE20__throw_length_errorB8ne200100Ev();
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v10 = v8;
  if ([v10 countByEnumeratingWithState:&v21 objects:v28 count:16])
  {
    *v22;
    *v22;
    [**(&v21 + 1) vehicle];
    operator new();
  }

  v11 = [a1 vehicle];
  v12 = cosf(a3);
  v13 = OpenSteer::SteerLibraryMixin<OpenSteer::LocalSpaceMixin<OpenSteer::AbstractVehicle>>::steerForSeparation(v11, &__p, a2, v12);
  v18 = v14;
  v19 = v15;
  v20 = LODWORD(v13);
  if (__p)
  {
    v26 = __p;
    operator delete(__p);
  }

  v16 = *MEMORY[0x277D85DE8];
  result.n128_u32[0] = v20;
  result.n128_u32[1] = v18;
  result.n128_u32[2] = v19;
  return result;
}

- (__n128)steerForAlignment:(float)a3 maxDistance:(uint64_t)a4 maxAngle:(void *)a5
{
  v29 = *MEMORY[0x277D85DE8];
  v8 = a5;
  __p = 0;
  v26 = 0;
  v27 = 0;
  v9 = [v8 count];
  if (v9)
  {
    if (!(v9 >> 61))
    {
      operator new();
    }

    _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE20__throw_length_errorB8ne200100Ev();
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v10 = v8;
  if ([v10 countByEnumeratingWithState:&v21 objects:v28 count:16])
  {
    *v22;
    *v22;
    [**(&v21 + 1) vehicle];
    operator new();
  }

  v11 = [a1 vehicle];
  v12 = cosf(a3);
  v13 = OpenSteer::SteerLibraryMixin<OpenSteer::LocalSpaceMixin<OpenSteer::AbstractVehicle>>::steerForAlignment(v11, &__p, a2, v12);
  v18 = v14;
  v19 = v15;
  v20 = LODWORD(v13);
  if (__p)
  {
    v26 = __p;
    operator delete(__p);
  }

  v16 = *MEMORY[0x277D85DE8];
  result.n128_u32[0] = v20;
  result.n128_u32[1] = v18;
  result.n128_u32[2] = v19;
  return result;
}

- (__n128)steerForCohesion:(float)a3 maxDistance:(uint64_t)a4 maxAngle:(void *)a5
{
  v29 = *MEMORY[0x277D85DE8];
  v8 = a5;
  __p = 0;
  v26 = 0;
  v27 = 0;
  v9 = [v8 count];
  if (v9)
  {
    if (!(v9 >> 61))
    {
      operator new();
    }

    _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE20__throw_length_errorB8ne200100Ev();
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v10 = v8;
  if ([v10 countByEnumeratingWithState:&v21 objects:v28 count:16])
  {
    *v22;
    *v22;
    [**(&v21 + 1) vehicle];
    operator new();
  }

  v11 = [a1 vehicle];
  v12 = cosf(a3);
  v13 = OpenSteer::SteerLibraryMixin<OpenSteer::LocalSpaceMixin<OpenSteer::AbstractVehicle>>::steerForCohesion(v11, &__p, a2, v12);
  v18 = v14;
  v19 = v15;
  v20 = LODWORD(v13);
  if (__p)
  {
    v26 = __p;
    operator delete(__p);
  }

  v16 = *MEMORY[0x277D85DE8];
  result.n128_u32[0] = v20;
  result.n128_u32[1] = v18;
  result.n128_u32[2] = v19;
  return result;
}

- (float32x2_t)steerForTargetSpeed:(void *)a1
{
  v3 = [a1 vehicle];
  v4 = (*(*v3 + 224))(v3);
  v5 = a2 - (*(*v3 + 200))(v3);
  (*(*v3 + 32))(v3);
  v6 = fminf(v5, v4);
  v8.i32[1] = v7;
  if (v5 >= -v4)
  {
    v9 = v6;
  }

  else
  {
    v9 = -v4;
  }

  return vmul_n_f32(v8, v9);
}

- (__n64)steerForWander:(float)a3 speed:
{
  v5 = [a1 vehicle];
  v6 = a2;
  v7 = v6 * a3;
  v5[14] = fmaxf(fminf(v5[14] - (v7 - (vcvts_n_f32_s32(rand(), 0x1EuLL) * v7)), 1.0), -1.0);
  v5[15] = fmaxf(fminf(v5[15] - (v7 - (vcvts_n_f32_s32(rand(), 0x1EuLL) * v7)), 1.0), -1.0);
  v8 = (**v5)(v5);
  v9 = v5[14];
  v10 = v8 * v9;
  *&a2 = v11 * v9;
  v12 = (*(*v5 + 16))(v5);
  v13 = v5[15];
  result.n64_f32[0] = v10 + (v12 * v13);
  result.n64_f32[1] = *&a2 + (v14 * v13);
  return result;
}

- (__n128)steerForIntercept:(uint64_t)a3 maxPredictionTime:(void *)a4
{
  v6 = a4;
  v7 = [a1 vehicle];
  v8 = [v6 vehicle];
  v9 = a2;
  v10 = OpenSteer::SteerLibraryMixin<OpenSteer::LocalSpaceMixin<OpenSteer::AbstractVehicle>>::steerForPursuit(v7, v8, v9);
  v14 = v11;
  v15 = v12;
  v16 = LODWORD(v10);

  result.n128_u32[0] = v16;
  result.n128_u32[1] = v14;
  result.n128_u32[2] = v15;
  return result;
}

- (__n128)steerToFollowPath:(uint64_t)a3 maxPredictionTime:(void *)a4 forward:(int)a5
{
  v8 = a4;
  if (a5)
  {
    v9 = 1;
  }

  else
  {
    v9 = -1;
  }

  v10 = [a1 vehicle];
  v11 = [v8 pathway];
  v12 = a2;
  OpenSteer::SteerLibraryMixin<OpenSteer::LocalSpaceMixin<OpenSteer::AbstractVehicle>>::steerToFollowPath(v10, v9, v11, v12);
  v17 = v13;
  v18 = v15;
  v19 = v14;

  result.n128_u32[0] = v19;
  result.n128_u32[1] = v17;
  result.n128_u32[2] = v18;
  return result;
}

- (__n128)steerToStayOnPath:(void *)a3 maxPredictionTime:
{
  v4 = a3;
  v5 = OpenSteer::SteerLibraryMixin<OpenSteer::LocalSpaceMixin<OpenSteer::AbstractVehicle>>::steerToStayOnPath([a1 vehicle], objc_msgSend(v4, "pathway"));
  v9 = v6;
  v10 = v7;
  v11 = LODWORD(v5);

  result.n128_u32[0] = v11;
  result.n128_u32[1] = v9;
  result.n128_u32[2] = v10;
  return result;
}

- (id)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end