@interface ARWorldTrackingPoseData
- (ARWorldTrackingPoseData)initWithCoder:(id)coder;
- (ARWorldTrackingPoseData)initWithTimestamp:(double)timestamp;
- (BOOL)isEqual:(id)equal;
- (__n128)setCameraTransform:(__n128)transform;
- (double)setVisionCameraTransform:(uint64_t)transform;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ARWorldTrackingPoseData

- (ARWorldTrackingPoseData)initWithTimestamp:(double)timestamp
{
  v14.receiver = self;
  v14.super_class = ARWorldTrackingPoseData;
  v4 = [(ARWorldTrackingPoseData *)&v14 init];
  v5 = v4;
  if (v4)
  {
    v4->_timestamp = timestamp;
    v6 = MEMORY[0x1E69E9B18];
    v7 = *MEMORY[0x1E69E9B18];
    v8 = *(MEMORY[0x1E69E9B18] + 16);
    *v4->_anon_50 = *MEMORY[0x1E69E9B18];
    *&v4->_anon_50[16] = v8;
    v9 = *(v6 + 32);
    v10 = *(v6 + 48);
    *&v4->_anon_50[32] = v9;
    *&v4->_anon_50[48] = v10;
    *&v4[1].super.isa = v7;
    *&v4[1]._lastInertialTimestamp = v8;
    *&v4[1]._worldTrackingState = v9;
    *&v4[1]._currentlyActiveVideoFormat = v10;
    v4->_worldMappingStatus = 0;
    v11 = objc_opt_new();
    worldTrackingState = v5->_worldTrackingState;
    v5->_worldTrackingState = v11;

    [(ARWorldTrackingState *)v5->_worldTrackingState setState:0];
    [(ARWorldTrackingState *)v5->_worldTrackingState setReason:0];
  }

  return v5;
}

- (double)setVisionCameraTransform:(uint64_t)transform
{
  *(transform + 80) = a2;
  v33 = __invert_f4(a2);
  v21 = v33.columns[1];
  v23 = v33.columns[0];
  v17 = v33.columns[3];
  v19 = v33.columns[2];
  *v3.i64 = ARVisionToRenderingCoordinateTransform();
  v7 = 0;
  v25 = v23;
  v26 = v21;
  v27 = v19;
  v28 = v17;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  do
  {
    *(&v29 + v7) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v3, COERCE_FLOAT(*(&v25 + v7))), v4, *&v25.f32[v7 / 4], 1), v5, *(&v25 + v7), 2), v6, *(&v25 + v7), 3);
    v7 += 16;
  }

  while (v7 != 64);
  v22 = v30;
  v24 = v29;
  v18 = v32;
  v20 = v31;
  *v8.i64 = ARRenderingToVisionCameraCoordinateTransform();
  v9 = 0;
  v25 = v8;
  v26 = v10;
  v27 = v11;
  v28 = v12;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  do
  {
    *(&v29 + v9) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v24, COERCE_FLOAT(*(&v25 + v9))), v22, *&v25.f32[v9 / 4], 1), v20, *(&v25 + v9), 2), v18, *(&v25 + v9), 3);
    v9 += 16;
  }

  while (v9 != 64);
  result = *v29.i64;
  v14 = v30;
  v15 = v31;
  v16 = v32;
  *(transform + 144) = v29;
  *(transform + 160) = v14;
  *(transform + 176) = v15;
  *(transform + 192) = v16;
  return result;
}

- (ARWorldTrackingPoseData)initWithCoder:(id)coder
{
  coderCopy = coder;
  v22.receiver = self;
  v22.super_class = ARWorldTrackingPoseData;
  v5 = [(ARWorldTrackingPoseData *)&v22 init];
  if (v5)
  {
    [coderCopy decodeDoubleForKey:@"timestamp"];
    v5->_timestamp = v6;
    [coderCopy decodeDoubleForKey:@"lastInertialTimestamp"];
    v5->_lastInertialTimestamp = v7;
    [coderCopy decodeDoubleForKey:@"currentStateTimestamp"];
    v5->_currentStateTimestamp = v8;
    [coderCopy ar_decodeMatrix4x4ForKey:@"visionCameraTransform"];
    *v5->_anon_50 = v9;
    *&v5->_anon_50[16] = v10;
    *&v5->_anon_50[32] = v11;
    *&v5->_anon_50[48] = v12;
    [coderCopy ar_decodeMatrix4x4ForKey:@"cameraTransform"];
    *&v5[1].super.isa = v13;
    *&v5[1]._lastInertialTimestamp = v14;
    *&v5[1]._worldTrackingState = v15;
    *&v5[1]._currentlyActiveVideoFormat = v16;
    v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"worldTrackingState"];
    worldTrackingState = v5->_worldTrackingState;
    v5->_worldTrackingState = v17;

    v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"currentlyActiveVideoFormat"];
    currentlyActiveVideoFormat = v5->_currentlyActiveVideoFormat;
    v5->_currentlyActiveVideoFormat = v19;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  timestamp = self->_timestamp;
  coderCopy = coder;
  [coderCopy encodeDouble:@"timestamp" forKey:timestamp];
  [coderCopy encodeDouble:@"lastInertialTimestamp" forKey:self->_lastInertialTimestamp];
  [coderCopy encodeDouble:@"currentStateTimestamp" forKey:self->_currentStateTimestamp];
  [coderCopy ar_encodeMatrix4x4:@"visionCameraTransform" forKey:{*self->_anon_50, *&self->_anon_50[16], *&self->_anon_50[32], *&self->_anon_50[48]}];
  [coderCopy ar_encodeMatrix4x4:@"cameraTransform" forKey:{*&self[1].super.isa, self[1]._lastInertialTimestamp, *&self[1]._worldTrackingState, *&self[1]._currentlyActiveVideoFormat}];
  [coderCopy encodeObject:self->_worldTrackingState forKey:@"worldTrackingState"];
  [coderCopy encodeObject:self->_currentlyActiveVideoFormat forKey:@"currentlyActiveVideoFormat"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "initWithTimestamp:", self->_timestamp}];
  v6 = *&self[1]._currentlyActiveVideoFormat;
  v8 = *&self[1].super.isa;
  v7 = *&self[1]._lastInertialTimestamp;
  *(v5 + 176) = *&self[1]._worldTrackingState;
  *(v5 + 192) = v6;
  *(v5 + 144) = v8;
  *(v5 + 160) = v7;
  v9 = *self->_anon_50;
  v10 = *&self->_anon_50[16];
  v11 = *&self->_anon_50[48];
  *(v5 + 112) = *&self->_anon_50[32];
  *(v5 + 128) = v11;
  *(v5 + 80) = v9;
  *(v5 + 96) = v10;
  objc_storeStrong((v5 + 32), self->_worldTrackingState);
  *(v5 + 56) = self->_worldMappingStatus;
  v12 = [(ARVideoFormat *)self->_currentlyActiveVideoFormat copyWithZone:zone];
  v13 = *(v5 + 48);
  *(v5 + 48) = v12;

  v14 = [(ARLineCloud *)self->_lineCloud copyWithZone:zone];
  v15 = *(v5 + 40);
  *(v5 + 40) = v14;

  objc_storeStrong((v5 + 64), self->_slamState);
  *(v5 + 16) = self->_lastInertialTimestamp;
  *(v5 + 24) = self->_currentStateTimestamp;
  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    v6 = v5;
    v8 = vabdd_f64(self->_timestamp, *(v5 + 1)) < 2.22044605e-16 && vabdd_f64(self->_lastInertialTimestamp, *(v5 + 2)) < 2.22044605e-16 && vabdd_f64(self->_currentStateTimestamp, *(v5 + 3)) < 2.22044605e-16 && AREqualTransforms(*self->_anon_50, *&self->_anon_50[16], *&self->_anon_50[32], *&self->_anon_50[48], *(v5 + 5), *(v5 + 6), *(v5 + 7), *(v5 + 8)) && ((worldTrackingState = self->_worldTrackingState, worldTrackingState == v6[4]) || [(ARWorldTrackingState *)worldTrackingState isEqual:?]) && self->_worldMappingStatus == v6[7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (__n128)setCameraTransform:(__n128)transform
{
  result[9] = a2;
  result[10] = transform;
  result[11] = a4;
  result[12] = a5;
  return result;
}

@end