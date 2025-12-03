@interface HMCameraClipVideoDataSegment
- (BOOL)isEqual:(id)equal;
- (HMCameraClipVideoDataSegment)initWithByteLength:(unint64_t)length byteOffset:(unint64_t)offset duration:(double)duration timeOffset:(double)timeOffset;
- (HMCameraClipVideoDataSegment)initWithCoder:(id)coder;
- (id)attributeDescriptions;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HMCameraClipVideoDataSegment

- (id)attributeDescriptions
{
  v19[2] = *MEMORY[0x1E69E9840];
  v18.receiver = self;
  v18.super_class = HMCameraClipVideoDataSegment;
  attributeDescriptions = [(HMCameraClipVideoSegment *)&v18 attributeDescriptions];
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
  v15 = [attributeDescriptions arrayByAddingObjectsFromArray:v14];

  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = HMCameraClipVideoDataSegment;
  coderCopy = coder;
  [(HMCameraClipVideoSegment *)&v5 encodeWithCoder:coderCopy];
  [(HMCameraClipVideoDataSegment *)self duration:v5.receiver];
  [coderCopy encodeDouble:@"HMCCVDS.ck.d" forKey:?];
  [(HMCameraClipVideoDataSegment *)self timeOffset];
  [coderCopy encodeDouble:@"HMCCVDS.ck.to" forKey:?];
}

- (HMCameraClipVideoDataSegment)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [[HMCameraClipVideoSegment alloc] initWithCoder:coderCopy];
  if (v5)
  {
    [coderCopy decodeDoubleForKey:@"HMCCVDS.ck.d"];
    v7 = v6;
    [coderCopy decodeDoubleForKey:@"HMCCVDS.ck.to"];
    self = [(HMCameraClipVideoDataSegment *)self initWithByteLength:[(HMCameraClipVideoSegment *)v5 byteLength] byteOffset:[(HMCameraClipVideoSegment *)v5 byteOffset] duration:v7 timeOffset:v8];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
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

- (HMCameraClipVideoDataSegment)initWithByteLength:(unint64_t)length byteOffset:(unint64_t)offset duration:(double)duration timeOffset:(double)timeOffset
{
  v9.receiver = self;
  v9.super_class = HMCameraClipVideoDataSegment;
  result = [(HMCameraClipVideoSegment *)&v9 initWithByteLength:length byteOffset:offset];
  if (result)
  {
    result->_duration = duration;
    result->_timeOffset = timeOffset;
  }

  return result;
}

@end