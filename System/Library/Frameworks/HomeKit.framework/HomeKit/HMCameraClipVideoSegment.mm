@interface HMCameraClipVideoSegment
+ (id)shortDescription;
- (BOOL)isEqual:(id)equal;
- (HMCameraClipVideoSegment)initWithByteLength:(unint64_t)length byteOffset:(unint64_t)offset;
- (HMCameraClipVideoSegment)initWithCoder:(id)coder;
- (NSArray)attributeDescriptions;
- (NSString)shortDescription;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HMCameraClipVideoSegment

- (NSArray)attributeDescriptions
{
  v12[2] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E69A29C8]);
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[HMCameraClipVideoSegment byteLength](self, "byteLength")}];
  v5 = [v3 initWithName:@"Byte Length" value:v4];
  v12[0] = v5;
  v6 = objc_alloc(MEMORY[0x1E69A29C8]);
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[HMCameraClipVideoSegment byteOffset](self, "byteOffset")}];
  v8 = [v6 initWithName:@"Byte Offset" value:v7];
  v12[1] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:2];

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

- (NSString)shortDescription
{
  v2 = objc_opt_class();

  return [v2 shortDescription];
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:-[HMCameraClipVideoSegment byteLength](self forKey:{"byteLength"), @"HMCCVS.bl"}];
  [coderCopy encodeInteger:-[HMCameraClipVideoSegment byteOffset](self forKey:{"byteOffset"), @"HMCCVS.bo"}];
}

- (HMCameraClipVideoSegment)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeIntegerForKey:@"HMCCVS.bl"];
  v6 = [coderCopy decodeIntegerForKey:@"HMCCVS.bo"];

  return [(HMCameraClipVideoSegment *)self initWithByteLength:v5 byteOffset:v6];
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
  if (v6 && (v7 = -[HMCameraClipVideoSegment byteLength](self, "byteLength"), v7 == [v6 byteLength]))
  {
    byteOffset = [(HMCameraClipVideoSegment *)self byteOffset];
    v9 = byteOffset == [v6 byteOffset];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (HMCameraClipVideoSegment)initWithByteLength:(unint64_t)length byteOffset:(unint64_t)offset
{
  v7.receiver = self;
  v7.super_class = HMCameraClipVideoSegment;
  result = [(HMCameraClipVideoSegment *)&v7 init];
  if (result)
  {
    result->_byteLength = length;
    result->_byteOffset = offset;
  }

  return result;
}

+ (id)shortDescription
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

@end