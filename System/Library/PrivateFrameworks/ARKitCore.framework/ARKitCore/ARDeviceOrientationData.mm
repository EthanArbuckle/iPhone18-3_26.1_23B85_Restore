@interface ARDeviceOrientationData
+ (id)grabNextFromReader:(id)reader timestamp:(double *)timestamp;
- ($8452678F12DBC466148836A9D382CAFC)rotationMatrix;
- (ARDeviceOrientationData)init;
- (ARDeviceOrientationData)initWithCoder:(id)coder;
- (ARDeviceOrientationData)initWithDictionary:(id)dictionary;
- (ARDeviceOrientationData)initWithMetadataWrapper:(id)wrapper;
- (ARDeviceOrientationData)initWithMotionData:(id)data;
- (ARDeviceOrientationData)initWithTimestamp:(double)timestamp rotationMatrix:(id *)matrix;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (double)rotationMatrixENU;
- (id)copyWithZone:(_NSZone *)zone;
- (id)encodeToDictionary;
- (void)appendToWriter:(id)writer;
- (void)encodeWithCoder:(id)coder;
- (void)setDeviceMotion:(id)motion;
- (void)setRotationMatrix:(id *)matrix;
@end

@implementation ARDeviceOrientationData

- (void)setDeviceMotion:(id)motion
{
  motionCopy = motion;
  objc_storeStrong(&self->_deviceMotion, motion);
  [motionCopy timestamp];
  self->_timestamp = v6;
  attitude = [motionCopy attitude];
  v8 = attitude;
  if (attitude)
  {
    [attitude rotationMatrix];
  }

  else
  {
    v13 = 0.0;
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
  }

  *&self->_rotationMatrix.m13 = v10;
  *&self->_rotationMatrix.m22 = v11;
  *&self->_rotationMatrix.m31 = v12;
  self->_rotationMatrix.m33 = v13;
  *&self->_rotationMatrix.m11 = v9;
}

- (double)rotationMatrixENU
{
  v1 = *(self + 40);
  v2 = *(self + 72);
  v24 = *(self + 56);
  v25 = v2;
  v26 = *(self + 88);
  v22 = *(self + 24);
  v23 = v1;
  *&v3 = ARMatrix4x4FromCMRotationMatrix(v22.i64);
  v20 = v4;
  v21 = v3;
  v18 = v6;
  v19 = v5;
  *v7.i64 = ARIMUtoCameraCoordinateTransform();
  v11 = 0;
  v27 = v21;
  v28 = v20;
  v29 = v19;
  v30 = v18;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  do
  {
    *(&v22 + v11) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v7, COERCE_FLOAT(*(&v27 + v11))), v8, *(&v27 + v11), 1), v9, *(&v27 + v11), 2), v10, *(&v27 + v11), 3);
    v11 += 16;
  }

  while (v11 != 64);
  v12 = 0;
  v13 = v22;
  v14 = v23;
  v15 = v24;
  v16 = v25;
  v27 = xmmword_1C25C9140;
  v28 = xmmword_1C25C9150;
  v29 = xmmword_1C25C9160;
  v30 = xmmword_1C25C8560;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  do
  {
    *(&v22 + v12) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v13, COERCE_FLOAT(*(&v27 + v12))), v14, *(&v27 + v12), 1), v15, *(&v27 + v12), 2), v16, *(&v27 + v12), 3);
    v12 += 16;
  }

  while (v12 != 64);
  return *v22.i64;
}

- (ARDeviceOrientationData)init
{
  v4 = 0;
  memset(v3, 0, sizeof(v3));
  return [(ARDeviceOrientationData *)self initWithTimestamp:v3 rotationMatrix:0.0];
}

- (ARDeviceOrientationData)initWithTimestamp:(double)timestamp rotationMatrix:(id *)matrix
{
  v10.receiver = self;
  v10.super_class = ARDeviceOrientationData;
  result = [(ARDeviceOrientationData *)&v10 init];
  if (result)
  {
    result->_timestamp = timestamp;
    *&result->_rotationMatrix.m11 = *&matrix->var0;
    v7 = *&matrix->var2;
    v8 = *&matrix->var4;
    v9 = *&matrix->var6;
    result->_rotationMatrix.m33 = matrix->var8;
    *&result->_rotationMatrix.m31 = v9;
    *&result->_rotationMatrix.m22 = v8;
    *&result->_rotationMatrix.m13 = v7;
  }

  return result;
}

- (ARDeviceOrientationData)initWithMotionData:(id)data
{
  dataCopy = data;
  v8.receiver = self;
  v8.super_class = ARDeviceOrientationData;
  v5 = [(ARDeviceOrientationData *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(ARDeviceOrientationData *)v5 setDeviceMotion:dataCopy];
  }

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  deviceMotion = self->_deviceMotion;
  if (deviceMotion)
  {
    coderCopy = coder;
    [coderCopy encodeObject:deviceMotion forKey:@"deviceMotion"];
  }

  else
  {
    timestamp = self->_timestamp;
    coderCopy2 = coder;
    [coderCopy2 encodeDouble:@"timestamp" forKey:timestamp];
    v7 = *&self->_rotationMatrix.m13;
    v8 = *&self->_rotationMatrix.m31;
    v10[2] = *&self->_rotationMatrix.m22;
    v10[3] = v8;
    m33 = self->_rotationMatrix.m33;
    v10[0] = *&self->_rotationMatrix.m11;
    v10[1] = v7;
    [coderCopy2 ar_encodeCMRotationMatrix:v10 forKey:@"rotationMatrix"];
  }
}

- (ARDeviceOrientationData)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"deviceMotion"];
  if (v5)
  {
    v6 = [(ARDeviceOrientationData *)self initWithMotionData:v5];
  }

  else
  {
    [coderCopy decodeDoubleForKey:@"timestamp"];
    v8 = v7;
    v17 = 0;
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    if (coderCopy)
    {
      [coderCopy ar_decodeCMRotationMatrixForKey:@"rotationMatrix"];
    }

    v11[2] = v15;
    v11[3] = v16;
    v12 = v17;
    v11[0] = v13;
    v11[1] = v14;
    v6 = [(ARDeviceOrientationData *)self initWithTimestamp:v11 rotationMatrix:v8];
  }

  v9 = v6;

  return v9;
}

- (id)encodeToDictionary
{
  v8[1] = *MEMORY[0x1E69E9840];
  deviceMotion = self->_deviceMotion;
  if (deviceMotion)
  {
    v3 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:deviceMotion requiringSecureCoding:1 error:0];
    v4 = [v3 base64EncodedStringWithOptions:1];
    v7 = @"deviceMotion";
    v8[0] = v4;
    v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  }

  else
  {
    v5 = MEMORY[0x1E695E0F8];
  }

  return v5;
}

- (ARDeviceOrientationData)initWithDictionary:(id)dictionary
{
  v4 = [dictionary objectForKeyedSubscript:@"deviceMotion"];
  if (v4)
  {
    v5 = v4;
    v6 = [v4 stringByReplacingOccurrencesOfString:@"\n" withString:&stru_1F4208A80];

    v7 = [v6 stringByReplacingOccurrencesOfString:@"\r" withString:&stru_1F4208A80];

    v8 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v7 options:1];
    v9 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v8 error:0];
    if (v9)
    {
      self = [(ARDeviceOrientationData *)self initWithMotionData:v9];
      selfCopy = self;
    }

    else
    {
      selfCopy = 0;
    }
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (ARDeviceOrientationData)initWithMetadataWrapper:(id)wrapper
{
  v4 = [MEMORY[0x1E698BEB0] decodeCMDeviceMotion:wrapper];
  if (v4)
  {
    self = [(ARDeviceOrientationData *)self initWithMotionData:v4];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)appendToWriter:(id)writer
{
  writerCopy = writer;
  deviceMotion = [(ARDeviceOrientationData *)self deviceMotion];
  [writerCopy processDeviceMotionData:deviceMotion andAdditionalData:0];
}

+ (id)grabNextFromReader:(id)reader timestamp:(double *)timestamp
{
  v25 = *MEMORY[0x1E69E9840];
  readerCopy = reader;
  array = [MEMORY[0x1E695DF70] array];
  v7 = objc_autoreleasePoolPush();
  v8 = *(MEMORY[0x1E6960CA8] + 16);
  v21 = *MEMORY[0x1E6960CA8];
  v22 = v8;
  v23 = *(MEMORY[0x1E6960CA8] + 32);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v9 = [readerCopy grabNextCMDeviceMotion:&v21];
  v10 = [v9 countByEnumeratingWithState:&v17 objects:v24 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v18;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [objc_alloc(objc_opt_class()) initWithMotionData:*(*(&v17 + 1) + 8 * i)];
        [array addObject:v14];
      }

      v11 = [v9 countByEnumeratingWithState:&v17 objects:v24 count:16];
    }

    while (v11);
  }

  *&v16.value = v21;
  v16.epoch = v22;
  *timestamp = CMTimeGetSeconds(&v16);
  objc_autoreleasePoolPop(v7);

  return array;
}

- (id)copyWithZone:(_NSZone *)zone
{
  deviceMotion = self->_deviceMotion;
  v5 = [objc_opt_class() allocWithZone:zone];
  if (deviceMotion)
  {
    v6 = self->_deviceMotion;

    return [v5 initWithMotionData:v6];
  }

  else
  {
    timestamp = self->_timestamp;
    v9 = *&self->_rotationMatrix.m13;
    v10 = *&self->_rotationMatrix.m31;
    v11[2] = *&self->_rotationMatrix.m22;
    v11[3] = v10;
    m33 = self->_rotationMatrix.m33;
    v11[0] = *&self->_rotationMatrix.m11;
    v11[1] = v9;
    return [v5 initWithTimestamp:v11 rotationMatrix:timestamp];
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    v5 = equalCopy;
    if (vabdd_f64(self->_timestamp, *(v5 + 2)) >= 2.22044605e-16)
    {
      LOBYTE(v18) = 0;
    }

    else
    {
      v6 = *&self->_rotationMatrix.m13;
      v7 = *&self->_rotationMatrix.m31;
      v26 = *&self->_rotationMatrix.m22;
      v27 = v7;
      m33 = self->_rotationMatrix.m33;
      v24 = *&self->_rotationMatrix.m11;
      v25 = v6;
      *v8.i64 = ARMatrix4x4FromCMRotationMatrix(&v24);
      v20 = v8;
      v21 = v9;
      v22 = v10;
      v23 = v11;
      v12 = *(v5 + 56);
      v25 = *(v5 + 40);
      v26 = v12;
      v27 = *(v5 + 72);
      m33 = *(v5 + 11);
      v24 = *(v5 + 24);
      *v13.i64 = ARMatrix4x4FromCMRotationMatrix(&v24);
      v14 = vdupq_n_s32(0x25800000u);
      v18 = vminvq_u32(vandq_s8(vandq_s8(vcgeq_f32(v14, vabdq_f32(v20, v13)), vcgeq_f32(v14, vabdq_f32(v21, v15))), vandq_s8(vcgeq_f32(v14, vabdq_f32(v22, v16)), vcgeq_f32(v14, vabdq_f32(v23, v17))))) >> 31;
    }
  }

  else
  {
    LOBYTE(v18) = 0;
  }

  return v18;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AD60];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: %p", v5, self];

  [(ARDeviceOrientationData *)self timestamp];
  [v6 appendFormat:@" timestamp=%f", v7];
  deviceMotion = [(ARDeviceOrientationData *)self deviceMotion];
  attitude = [deviceMotion attitude];
  [attitude pitch];
  v11 = v10;
  deviceMotion2 = [(ARDeviceOrientationData *)self deviceMotion];
  attitude2 = [deviceMotion2 attitude];
  [attitude2 roll];
  v15 = v14;
  deviceMotion3 = [(ARDeviceOrientationData *)self deviceMotion];
  attitude3 = [deviceMotion3 attitude];
  [attitude3 yaw];
  [v6 appendFormat:@" pitch=%f roll=%f yaw=%f", v11, v15, v18];

  [v6 appendString:@">"];

  return v6;
}

- ($8452678F12DBC466148836A9D382CAFC)rotationMatrix
{
  v3 = *&self->var5;
  v4 = *&self[1].var0;
  *&retstr->var4 = *&self->var7;
  *&retstr->var6 = v4;
  retstr->var8 = self[1].var2;
  *&retstr->var0 = *&self->var3;
  *&retstr->var2 = v3;
  return self;
}

- (void)setRotationMatrix:(id *)matrix
{
  *&self->_rotationMatrix.m11 = *&matrix->var0;
  v3 = *&matrix->var2;
  v4 = *&matrix->var4;
  v5 = *&matrix->var6;
  self->_rotationMatrix.m33 = matrix->var8;
  *&self->_rotationMatrix.m31 = v5;
  *&self->_rotationMatrix.m22 = v4;
  *&self->_rotationMatrix.m13 = v3;
}

@end