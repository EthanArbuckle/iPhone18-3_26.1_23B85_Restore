@interface SHHapticSpatialOffset
- (SHHapticSpatialOffset)initWithCoder:(id)a3;
- (SHHapticSpatialOffset)initWithTimestamp:(double)a3 offset:(double)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SHHapticSpatialOffset

- (SHHapticSpatialOffset)initWithTimestamp:(double)a3 offset:(double)a4
{
  v7.receiver = self;
  v7.super_class = SHHapticSpatialOffset;
  result = [(SHHapticSpatialOffset *)&v7 init];
  if (result)
  {
    result->_timestamp = a3;
    result->_offset = a4;
  }

  return result;
}

- (SHHapticSpatialOffset)initWithCoder:(id)a3
{
  v4 = a3;
  [v4 decodeDoubleForKey:@"SHHapticSpatialOffsetTimestampKey"];
  v6 = v5;
  [v4 decodeDoubleForKey:@"SHHapticSpatialOffsetKey"];
  v8 = v7;

  return [(SHHapticSpatialOffset *)self initWithTimestamp:v6 offset:v8];
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [(SHHapticSpatialOffset *)self timestamp];
  [v4 encodeDouble:@"SHHapticSpatialOffsetTimestampKey" forKey:?];
  [(SHHapticSpatialOffset *)self offset];
  [v4 encodeDouble:@"SHHapticSpatialOffsetKey" forKey:?];
}

@end