@interface ARCameraAlignmentData
- (ARCameraAlignmentData)init;
- (ARCameraAlignmentData)initWithCoder:(id)a3;
- (BOOL)isEqual:(id)a3;
- (__n128)setCameraTransform:(__n128)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ARCameraAlignmentData

- (ARCameraAlignmentData)init
{
  v6.receiver = self;
  v6.super_class = ARCameraAlignmentData;
  result = [(ARCameraAlignmentData *)&v6 init];
  if (result)
  {
    v3 = MEMORY[0x1E69E9B18];
    v4 = *(MEMORY[0x1E69E9B18] + 16);
    result[1] = *MEMORY[0x1E69E9B18];
    result[2] = v4;
    v5 = v3[3];
    result[3] = v3[2];
    result[4] = v5;
  }

  return result;
}

- (ARCameraAlignmentData)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = ARCameraAlignmentData;
  v5 = [(ARCameraAlignmentData *)&v12 init];
  if (v5)
  {
    [v4 decodeDoubleForKey:@"timestamp"];
    v5->_timestamp = v6;
    [v4 ar_decodeMatrix4x4ForKey:@"cameraTransform"];
    v5[1] = v7;
    v5[2] = v8;
    v5[3] = v9;
    v5[4] = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  timestamp = self->_timestamp;
  v5 = a3;
  [v5 encodeDouble:@"timestamp" forKey:timestamp];
  [v5 ar_encodeMatrix4x4:@"cameraTransform" forKey:{*&self[1].super.isa, *&self[2].super.isa, *&self[3].super.isa, *&self[4].super.isa}];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && vabdd_f64(self->_timestamp, *(v4 + 1)) < 2.22044605e-16)
  {
    v5 = AREqualTransforms(self[1], self[2], self[3], self[4], *(v4 + 1), *(v4 + 2), *(v4 + 3), *(v4 + 4));
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (__n128)setCameraTransform:(__n128)a3
{
  result[1] = a2;
  result[2] = a3;
  result[3] = a4;
  result[4] = a5;
  return result;
}

@end