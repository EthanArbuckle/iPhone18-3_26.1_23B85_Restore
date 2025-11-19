@interface NIVisionInput
- (BOOL)isEqual:(id)a3;
- (NIVisionInput)initWithCoder:(id)a3;
- (NIVisionInput)initWithTimestamp:(__n128)a3 devicePose:(__n128)a4 trackingState:(__n128)a5 lightEstimate:(__n128)a6 majorRelocalization:(double)a7 minorRelocalization:(uint64_t)a8;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NIVisionInput

- (NIVisionInput)initWithTimestamp:(__n128)a3 devicePose:(__n128)a4 trackingState:(__n128)a5 lightEstimate:(__n128)a6 majorRelocalization:(double)a7 minorRelocalization:(uint64_t)a8
{
  v24.receiver = a1;
  v24.super_class = NIVisionInput;
  v16 = [(NIVisionInput *)&v24 init];
  v17 = v16;
  if (v16)
  {
    v16->_timestamp = a2;
    *&v16[1].super.isa = a3;
    *&v16[1]._timestamp = a4;
    *&v16[1]._lightEstimate = a5;
    *&v16[2].super.isa = a6;
    v16->_trackingState = a9;
    v16->_lightEstimate = a7;
    v16->_majorRelocalization = a10;
    v16->_minorRelocalization = a11;
    v18 = v16;
  }

  return v17;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  timestamp = self->_timestamp;
  trackingState = self->_trackingState;
  lightEstimate = self->_lightEstimate;
  majorRelocalization = self->_majorRelocalization;
  minorRelocalization = self->_minorRelocalization;
  v10 = *&self[1].super.isa;
  v11 = *&self[1]._timestamp;
  v12 = *&self[1]._lightEstimate;
  v13 = *&self[2].super.isa;

  return [v4 initWithTimestamp:trackingState devicePose:majorRelocalization trackingState:minorRelocalization lightEstimate:timestamp majorRelocalization:*&v10 minorRelocalization:{*&v11, *&v12, *&v13, lightEstimate}];
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeDouble:@"timestamp" forKey:self->_timestamp];
  [v4 encodeMatrix4x4:@"devicePose" forKey:{*&self[1].super.isa, self[1]._timestamp, self[1]._lightEstimate, *&self[2].super.isa}];
  [v4 encodeInteger:self->_trackingState forKey:@"trackingState"];
  [v4 encodeDouble:@"lightEstimate" forKey:self->_lightEstimate];
  [v4 encodeBool:self->_majorRelocalization forKey:@"majorRelocalization"];
  [v4 encodeBool:self->_minorRelocalization forKey:@"minorRelocalization"];
}

- (NIVisionInput)initWithCoder:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = NIVisionInput;
  v5 = [(NIVisionInput *)&v14 init];
  if (v5)
  {
    [v4 decodeDoubleForKey:@"timestamp"];
    v5->_timestamp = v6;
    [v4 decodeMatrix4x4ForKey:@"devicePose"];
    *&v5[1].super.isa = v7;
    *&v5[1]._timestamp = v8;
    *&v5[1]._lightEstimate = v9;
    *&v5[2].super.isa = v10;
    v5->_trackingState = [v4 decodeIntegerForKey:@"trackingState"];
    [v4 decodeDoubleForKey:@"lightEstimate"];
    v5->_lightEstimate = v11;
    v5->_majorRelocalization = [v4 decodeBoolForKey:@"majorRelocalization"];
    v5->_minorRelocalization = [v4 decodeBoolForKey:@"minorRelocalization"];
    v12 = v5;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = v5;
    if (v5 == self)
    {
      v23 = 1;
    }

    else
    {
      timestamp = self->_timestamp;
      [(NIVisionInput *)v5 timestamp];
      v9 = v8;
      v30 = *&self[1]._timestamp;
      v31 = *&self[1].super.isa;
      v32 = *&self[2].super.isa;
      v33 = *&self[1]._lightEstimate;
      [(NIVisionInput *)v6 devicePose];
      v26 = v11;
      v27 = v10;
      v28 = v13;
      v29 = v12;
      trackingState = self->_trackingState;
      v15 = [(NIVisionInput *)v6 trackingState];
      lightEstimate = self->_lightEstimate;
      [(NIVisionInput *)v6 lightEstimate];
      v18 = v17;
      majorRelocalization = self->_majorRelocalization;
      v20 = [(NIVisionInput *)v6 majorRelocalization];
      minorRelocalization = self->_minorRelocalization;
      v22 = [(NIVisionInput *)v6 minorRelocalization];
      v23 = 0;
      if (timestamp == v9 && (vminvq_u32(vandq_s8(vandq_s8(vceqq_f32(v31, v27), vceqq_f32(v30, v26)), vandq_s8(vceqq_f32(v33, v29), vceqq_f32(v32, v28)))) & 0x80000000) != 0 && trackingState == v15 && lightEstimate == v18)
      {
        v23 = majorRelocalization == v20 && v22 == minorRelocalization;
      }
    }
  }

  else
  {
    v23 = 0;
  }

  return v23;
}

- (unint64_t)hash
{
  v15 = [MEMORY[0x1E695DEF0] dataWithBytes:&self[1] length:64];
  v14 = [v15 hash];
  v3 = [MEMORY[0x1E696AD98] numberWithDouble:self->_timestamp];
  v4 = [v3 hash];
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:self->_trackingState];
  v6 = [v5 hash];
  v7 = [MEMORY[0x1E696AD98] numberWithDouble:self->_lightEstimate];
  v8 = [v7 hash];
  v9 = [MEMORY[0x1E696AD98] numberWithBool:self->_majorRelocalization];
  v10 = [v9 hash];
  v11 = [MEMORY[0x1E696AD98] numberWithBool:self->_minorRelocalization];
  v12 = v10 ^ [v11 hash];

  return v4 ^ v14 ^ v6 ^ v8 ^ v12;
}

@end