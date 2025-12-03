@interface SHHapticSpatialOffset
- (SHHapticSpatialOffset)initWithCoder:(id)coder;
- (SHHapticSpatialOffset)initWithTimestamp:(double)timestamp offset:(double)offset;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SHHapticSpatialOffset

- (SHHapticSpatialOffset)initWithTimestamp:(double)timestamp offset:(double)offset
{
  v7.receiver = self;
  v7.super_class = SHHapticSpatialOffset;
  result = [(SHHapticSpatialOffset *)&v7 init];
  if (result)
  {
    result->_timestamp = timestamp;
    result->_offset = offset;
  }

  return result;
}

- (SHHapticSpatialOffset)initWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy decodeDoubleForKey:@"SHHapticSpatialOffsetTimestampKey"];
  v6 = v5;
  [coderCopy decodeDoubleForKey:@"SHHapticSpatialOffsetKey"];
  v8 = v7;

  return [(SHHapticSpatialOffset *)self initWithTimestamp:v6 offset:v8];
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [(SHHapticSpatialOffset *)self timestamp];
  [coderCopy encodeDouble:@"SHHapticSpatialOffsetTimestampKey" forKey:?];
  [(SHHapticSpatialOffset *)self offset];
  [coderCopy encodeDouble:@"SHHapticSpatialOffsetKey" forKey:?];
}

@end