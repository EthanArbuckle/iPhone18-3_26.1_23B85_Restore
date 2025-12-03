@interface ARWorldTrackingState
- (ARWorldTrackingState)initWithCoder:(id)coder;
- (BOOL)isEqual:(id)equal;
- (__n128)setMajorRelocalizationCameraTransform:(__n128)transform;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ARWorldTrackingState

- (id)copyWithZone:(_NSZone *)zone
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
  v9 = [(NSArray *)self->_mergedSessionIdentifiers copyWithZone:zone];
  mergedSessionIdentifiers = v5->_mergedSessionIdentifiers;
  v5->_mergedSessionIdentifiers = v9;

  objc_storeStrong(&v5->_collaborationStats, self->_collaborationStats);
  v5->_numberOfCameraSwitches = self->_numberOfCameraSwitches;
  v5->_currentVIOMapSize = self->_currentVIOMapSize;
  v5->_reinitializationAttempts = self->_reinitializationAttempts;
  objc_storeStrong(&v5->_inertialState, self->_inertialState);
  return v5;
}

- (ARWorldTrackingState)initWithCoder:(id)coder
{
  coderCopy = coder;
  v19.receiver = self;
  v19.super_class = ARWorldTrackingState;
  v5 = [(ARWorldTrackingState *)&v19 init];
  if (v5)
  {
    v5->_state = [coderCopy decodeIntegerForKey:@"state"];
    v5->_reason = [coderCopy decodeIntegerForKey:@"reason"];
    v5->_majorRelocalization = [coderCopy decodeBoolForKey:@"majorRelocalization"];
    v5->_minorRelocalization = [coderCopy decodeBoolForKey:@"minorRelocalization"];
    v5->_poseGraphUpdated = [coderCopy decodeBoolForKey:@"poseGraphUpdated"];
    [coderCopy ar_decodeMatrix4x4ForKey:@"majorRelocalizationCameraTransform"];
    *&v5[1].super.isa = v6;
    *&v5[1]._state = v7;
    *&v5[1]._vioTrackingState = v8;
    *&v5[1]._originTimestamp = v9;
    v5->_vioTrackingState = [coderCopy decodeIntegerForKey:@"vioTrackingState"];
    [coderCopy decodeDoubleForKey:@"lastMajorRelocalizationTimestamp"];
    v5->_lastMajorRelocalizationTimestamp = v10;
    [coderCopy decodeDoubleForKey:@"originTimestamp"];
    v5->_originTimestamp = v11;
    [coderCopy decodeDoubleForKey:@"poseTimestamp"];
    v5->_poseTimestamp = v12;
    [coderCopy decodeDoubleForKey:@"numberOfCameraSwitches"];
    v5->_numberOfCameraSwitches = v13;
    [coderCopy decodeDoubleForKey:@"currentVIOMapSize"];
    v5->_currentVIOMapSize = v14;
    [coderCopy decodeDoubleForKey:@"reinitializationAttempts"];
    v5->_reinitializationAttempts = v15;
    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"inertialState"];
    inertialState = v5->_inertialState;
    v5->_inertialState = v16;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  state = self->_state;
  coderCopy = coder;
  [coderCopy encodeInteger:state forKey:@"state"];
  [coderCopy encodeInteger:self->_reason forKey:@"reason"];
  [coderCopy encodeBool:self->_majorRelocalization forKey:@"majorRelocalization"];
  [coderCopy encodeBool:self->_minorRelocalization forKey:@"minorRelocalization"];
  [coderCopy encodeBool:self->_poseGraphUpdated forKey:@"poseGraphUpdated"];
  [coderCopy ar_encodeMatrix4x4:@"majorRelocalizationCameraTransform" forKey:{*&self[1].super.isa, *&self[1]._state, *&self[1]._vioTrackingState, self[1]._originTimestamp}];
  [coderCopy encodeInteger:self->_vioTrackingState forKey:@"vioTrackingState"];
  [coderCopy encodeDouble:@"lastMajorRelocalizationTimestamp" forKey:self->_lastMajorRelocalizationTimestamp];
  [coderCopy encodeDouble:@"originTimestamp" forKey:self->_originTimestamp];
  [coderCopy encodeDouble:@"poseTimestamp" forKey:self->_poseTimestamp];
  [coderCopy encodeDouble:@"numberOfCameraSwitches" forKey:self->_numberOfCameraSwitches];
  [coderCopy encodeDouble:@"currentVIOMapSize" forKey:self->_currentVIOMapSize];
  [coderCopy encodeDouble:@"reinitializationAttempts" forKey:self->_reinitializationAttempts];
  [coderCopy encodeObject:self->_inertialState forKey:@"inertialState"];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    v6 = v5;
    v8 = self->_state == v5[1].i64[0] && self->_reason == v5[1].i64[1] && self->_majorRelocalization == v5->u8[8] && self->_minorRelocalization == v5->u8[9] && self->_poseGraphUpdated == v5->u8[10] && AREqualTransforms(*&self[1].super.isa, *&self[1]._state, *&self[1]._vioTrackingState, *&self[1]._originTimestamp, v5[7], v5[8], v5[9], v5[10]) && self->_vioTrackingState == v6[2].i64[0] && self->_numberOfCameraSwitches == v6[4].i64[1] && self->_currentVIOMapSize == v6[4].i64[0] && self->_reinitializationAttempts == v6[5].i64[0] && ((inertialState = self->_inertialState, inertialState == v6[6].i64[1]) || [(ARInertialState *)inertialState isEqual:?]) && vabdd_f64(self->_lastMajorRelocalizationTimestamp, *&v6[2].i64[1]) < 2.22044605e-16 && vabdd_f64(self->_originTimestamp, *v6[3].i64) < 2.22044605e-16 && vabdd_f64(self->_poseTimestamp, *&v6[3].i64[1]) < 2.22044605e-16;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (__n128)setMajorRelocalizationCameraTransform:(__n128)transform
{
  result[7] = a2;
  result[8] = transform;
  result[9] = a4;
  result[10] = a5;
  return result;
}

@end