@interface ARWorldTrackingState
- (ARWorldTrackingState)initWithCoder:(id)a3;
- (BOOL)isEqual:(id)a3;
- (__n128)setMajorRelocalizationCameraTransform:(__n128)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ARWorldTrackingState

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[ARWorldTrackingState allocWithZone:](ARWorldTrackingState init];
  v5->_state = self->_state;
  v5->_reason = self->_reason;
  v5->_majorRelocalization = self->_majorRelocalization;
  v5->_minorRelocalization = self->_minorRelocalization;
  v5->_poseGraphUpdated = self->_poseGraphUpdated;
  v6 = *&self[1].super.isa;
  v7 = *&self[1]._state;
  v8 = *&self[1]._originTimestamp;
  *&v5[1]._vioTrackingState = *&self[1]._vioTrackingState;
  *&v5[1]._originTimestamp = v8;
  *&v5[1].super.isa = v6;
  *&v5[1]._state = v7;
  v5->_vioTrackingState = self->_vioTrackingState;
  v5->_lastMajorRelocalizationTimestamp = self->_lastMajorRelocalizationTimestamp;
  v5->_originTimestamp = self->_originTimestamp;
  v5->_poseTimestamp = self->_poseTimestamp;
  v9 = [(NSArray *)self->_mergedSessionIdentifiers copyWithZone:a3];
  mergedSessionIdentifiers = v5->_mergedSessionIdentifiers;
  v5->_mergedSessionIdentifiers = v9;

  objc_storeStrong(&v5->_collaborationStats, self->_collaborationStats);
  v5->_numberOfCameraSwitches = self->_numberOfCameraSwitches;
  v5->_currentVIOMapSize = self->_currentVIOMapSize;
  v5->_reinitializationAttempts = self->_reinitializationAttempts;
  objc_storeStrong(&v5->_inertialState, self->_inertialState);
  return v5;
}

- (ARWorldTrackingState)initWithCoder:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = ARWorldTrackingState;
  v5 = [(ARWorldTrackingState *)&v19 init];
  if (v5)
  {
    v5->_state = [v4 decodeIntegerForKey:@"state"];
    v5->_reason = [v4 decodeIntegerForKey:@"reason"];
    v5->_majorRelocalization = [v4 decodeBoolForKey:@"majorRelocalization"];
    v5->_minorRelocalization = [v4 decodeBoolForKey:@"minorRelocalization"];
    v5->_poseGraphUpdated = [v4 decodeBoolForKey:@"poseGraphUpdated"];
    [v4 ar_decodeMatrix4x4ForKey:@"majorRelocalizationCameraTransform"];
    *&v5[1].super.isa = v6;
    *&v5[1]._state = v7;
    *&v5[1]._vioTrackingState = v8;
    *&v5[1]._originTimestamp = v9;
    v5->_vioTrackingState = [v4 decodeIntegerForKey:@"vioTrackingState"];
    [v4 decodeDoubleForKey:@"lastMajorRelocalizationTimestamp"];
    v5->_lastMajorRelocalizationTimestamp = v10;
    [v4 decodeDoubleForKey:@"originTimestamp"];
    v5->_originTimestamp = v11;
    [v4 decodeDoubleForKey:@"poseTimestamp"];
    v5->_poseTimestamp = v12;
    [v4 decodeDoubleForKey:@"numberOfCameraSwitches"];
    v5->_numberOfCameraSwitches = v13;
    [v4 decodeDoubleForKey:@"currentVIOMapSize"];
    v5->_currentVIOMapSize = v14;
    [v4 decodeDoubleForKey:@"reinitializationAttempts"];
    v5->_reinitializationAttempts = v15;
    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"inertialState"];
    inertialState = v5->_inertialState;
    v5->_inertialState = v16;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  state = self->_state;
  v5 = a3;
  [v5 encodeInteger:state forKey:@"state"];
  [v5 encodeInteger:self->_reason forKey:@"reason"];
  [v5 encodeBool:self->_majorRelocalization forKey:@"majorRelocalization"];
  [v5 encodeBool:self->_minorRelocalization forKey:@"minorRelocalization"];
  [v5 encodeBool:self->_poseGraphUpdated forKey:@"poseGraphUpdated"];
  [v5 ar_encodeMatrix4x4:@"majorRelocalizationCameraTransform" forKey:{*&self[1].super.isa, *&self[1]._state, *&self[1]._vioTrackingState, self[1]._originTimestamp}];
  [v5 encodeInteger:self->_vioTrackingState forKey:@"vioTrackingState"];
  [v5 encodeDouble:@"lastMajorRelocalizationTimestamp" forKey:self->_lastMajorRelocalizationTimestamp];
  [v5 encodeDouble:@"originTimestamp" forKey:self->_originTimestamp];
  [v5 encodeDouble:@"poseTimestamp" forKey:self->_poseTimestamp];
  [v5 encodeDouble:@"numberOfCameraSwitches" forKey:self->_numberOfCameraSwitches];
  [v5 encodeDouble:@"currentVIOMapSize" forKey:self->_currentVIOMapSize];
  [v5 encodeDouble:@"reinitializationAttempts" forKey:self->_reinitializationAttempts];
  [v5 encodeObject:self->_inertialState forKey:@"inertialState"];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = v5;
    v8 = self->_state == v5[1].i64[0] && self->_reason == v5[1].i64[1] && self->_majorRelocalization == v5->u8[8] && self->_minorRelocalization == v5->u8[9] && self->_poseGraphUpdated == v5->u8[10] && AREqualTransforms(*&self[1].super.isa, *&self[1]._state, *&self[1]._vioTrackingState, *&self[1]._originTimestamp, v5[7], v5[8], v5[9], v5[10]) && self->_vioTrackingState == v6[2].i64[0] && self->_numberOfCameraSwitches == v6[4].i64[1] && self->_currentVIOMapSize == v6[4].i64[0] && self->_reinitializationAttempts == v6[5].i64[0] && ((inertialState = self->_inertialState, inertialState == v6[6].i64[1]) || [(ARInertialState *)inertialState isEqual:?]) && vabdd_f64(self->_lastMajorRelocalizationTimestamp, *&v6[2].i64[1]) < 2.22044605e-16 && vabdd_f64(self->_originTimestamp, *v6[3].i64) < 2.22044605e-16 && vabdd_f64(self->_poseTimestamp, *&v6[3].i64[1]) < 2.22044605e-16;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (__n128)setMajorRelocalizationCameraTransform:(__n128)a3
{
  result[7] = a2;
  result[8] = a3;
  result[9] = a4;
  result[10] = a5;
  return result;
}

@end