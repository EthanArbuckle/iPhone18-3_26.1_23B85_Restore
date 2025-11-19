@interface SCNMTLBuffer
- (int64_t)decrementUsedCount;
- (void)contents;
- (void)dealloc;
- (void)incrementUsedCount;
@end

@implementation SCNMTLBuffer

- (void)contents
{
  if (!self->_buffer)
  {
    v3 = scn_default_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      [(SCNMTLBuffer *)v3 contents:v4];
    }
  }

  return ([(MTLBuffer *)self->_buffer contents]+ self->_offset);
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SCNMTLBuffer;
  [(SCNMTLBuffer *)&v3 dealloc];
}

- (void)incrementUsedCount
{
  v3 = [(SCNMTLBuffer *)self usedCount]+ 1;

  [(SCNMTLBuffer *)self setUsedCount:v3];
}

- (int64_t)decrementUsedCount
{
  [(SCNMTLBuffer *)self setUsedCount:[(SCNMTLBuffer *)self usedCount]- 1];

  return [(SCNMTLBuffer *)self usedCount];
}

@end