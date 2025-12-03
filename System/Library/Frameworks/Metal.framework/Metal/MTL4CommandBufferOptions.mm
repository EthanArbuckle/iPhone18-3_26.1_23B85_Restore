@interface MTL4CommandBufferOptions
- (MTL4CommandBufferOptions)init;
- (id)copyWithZone:(_NSZone *)zone;
- (void)dealloc;
@end

@implementation MTL4CommandBufferOptions

- (MTL4CommandBufferOptions)init
{
  v4.receiver = self;
  v4.super_class = MTL4CommandBufferOptions;
  [(MTL4CommandBufferOptions *)&v4 init];
  return self;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MTL4CommandBufferOptions;
  [(MTL4CommandBufferOptions *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MTL4CommandBufferOptions);
  v4->_logState = self->_logState;
  return v4;
}

@end