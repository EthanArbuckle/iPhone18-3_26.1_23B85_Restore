@interface HMCameraClipVideoDataSegment
- (BOOL)isEqual:(id)a3;
- (HMCameraClipVideoDataSegment)initWithByteLength:(unint64_t)a3 byteOffset:(unint64_t)a4 duration:(double)a5 timeOffset:(double)a6;
- (HMCameraClipVideoDataSegment)initWithCoder:(id)a3;
- (id)attributeDescriptions;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HMCameraClipVideoDataSegment

- (id)attributeDescriptions
{
  v19[2] = *MEMORY[0x1E69E9840];
  v18.receiver = self;
  v18.super_class = HMCameraClipVideoDataSegment;
  v3 = [(HMCameraClipVideoSegment *)&v18 attributeDescriptions];
  v4 = objc_alloc(MEMORY[0x1E69A29C8]);
  v5 = MEMORY[0x1E696AEC0];
  [(HMCameraClipVideoDataSegment *)self duration];
  v7 = [v5 stringWithFormat:@"%.3f", v6];
  v8 = [v4 initWithName:@"Duration" value:v7];
  v19[0] = v8;
  v9 = objc_alloc(MEMORY[0x1E69A29C8]);
  v10 = MEMORY[0x1E696AEC0];
  [(HMCameraClipVideoDataSegment *)self timeOffset];
  v12 = [v10 stringWithFormat:@"%.3f", v11];
  v13 = [v9 initWithName:@"Time Offset" value:v12];
  v19[1] = v13;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:2];
  v15 = [v3 arrayByAddingObjectsFromArray:v14];

  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = HMCameraClipVideoDataSegment;
  v4 = a3;
  [(HMCameraClipVideoSegment *)&v5 encodeWithCoder:v4];
  [(HMCameraClipVideoDataSegment *)self duration:v5.receiver];
  [v4 encodeDouble:@"HMCCVDS.ck.d" forKey:?];
  [(HMCameraClipVideoDataSegment *)self timeOffset];
  [v4 encodeDouble:@"HMCCVDS.ck.to" forKey:?];
}

- (HMCameraClipVideoDataSegment)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [[HMCameraClipVideoSegment alloc] initWithCoder:v4];
  if (v5)
  {
    [v4 decodeDoubleForKey:@"HMCCVDS.ck.d"];
    v7 = v6;
    [v4 decodeDoubleForKey:@"HMCCVDS.ck.to"];
    self = [(HMCameraClipVideoDataSegment *)self initWithByteLength:[(HMCameraClipVideoSegment *)v5 byteLength] byteOffset:[(HMCameraClipVideoSegment *)v5 byteOffset] duration:v7 timeOffset:v8];
    v9 = self;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (unint64_t)hash
{
  v8.receiver = self;
  v8.super_class = HMCameraClipVideoDataSegment;
  v3 = [(HMCameraClipVideoSegment *)&v8 hash];
  [(HMCameraClipVideoDataSegment *)self duration];
  v5 = v3 ^ v4;
  [(HMCameraClipVideoDataSegment *)self timeOffset];
  return v5 ^ v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  if (v6 && (v15.receiver = self, v15.super_class = HMCameraClipVideoDataSegment, -[HMCameraClipVideoSegment isEqual:](&v15, sel_isEqual_, v6)) && (-[HMCameraClipVideoDataSegment duration](self, "duration"), v8 = v7, [v6 duration], v8 == v9))
  {
    [(HMCameraClipVideoDataSegment *)self timeOffset];
    v11 = v10;
    [v6 timeOffset];
    v13 = v11 == v12;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (HMCameraClipVideoDataSegment)initWithByteLength:(unint64_t)a3 byteOffset:(unint64_t)a4 duration:(double)a5 timeOffset:(double)a6
{
  v9.receiver = self;
  v9.super_class = HMCameraClipVideoDataSegment;
  result = [(HMCameraClipVideoSegment *)&v9 initWithByteLength:a3 byteOffset:a4];
  if (result)
  {
    result->_duration = a5;
    result->_timeOffset = a6;
  }

  return result;
}

@end