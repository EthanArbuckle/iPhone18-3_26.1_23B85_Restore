@interface MTLMotionKeyframeData
+ (MTLMotionKeyframeData)data;
- (BOOL)isEqual:(id)equal;
- (MTLMotionKeyframeData)init;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)dealloc;
@end

@implementation MTLMotionKeyframeData

+ (MTLMotionKeyframeData)data
{
  v2 = objc_alloc_init(MTLMotionKeyframeData);

  return v2;
}

- (MTLMotionKeyframeData)init
{
  v3.receiver = self;
  v3.super_class = MTLMotionKeyframeData;
  result = [(MTLMotionKeyframeData *)&v3 init];
  if (result)
  {
    result->_buffer = 0;
    result->_offset = 0;
  }

  return result;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MTLMotionKeyframeData;
  [(MTLMotionKeyframeData *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(objc_opt_class());
  [v4 setBuffer:self->_buffer];
  [v4 setOffset:self->_offset];
  return v4;
}

- (BOOL)isEqual:(id)equal
{
  if (equal == self)
  {
    return 1;
  }

  Class = object_getClass(self);
  if (Class != object_getClass(equal))
  {
    return 0;
  }

  buffer = [(MTLMotionKeyframeData *)self buffer];
  if (buffer != [equal buffer])
  {
    return 0;
  }

  offset = [(MTLMotionKeyframeData *)self offset];
  return offset == [equal offset];
}

- (unint64_t)hash
{
  bzero(v4, 0x10uLL);
  v4[1] = -[MTLMotionKeyframeData offset](self, "offset", [-[MTLMotionKeyframeData buffer](self "buffer")]);
  return _MTLHashState(v4, 0x10uLL);
}

@end