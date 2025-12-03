@interface _MLCCPULayer
- (_MLCCPULayer)initWithDevice:(id)device deviceOps:(id)ops;
- (void)dealloc;
@end

@implementation _MLCCPULayer

- (_MLCCPULayer)initWithDevice:(id)device deviceOps:(id)ops
{
  deviceCopy = device;
  opsCopy = ops;
  v12.receiver = self;
  v12.super_class = _MLCCPULayer;
  v9 = [(_MLCCPULayer *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_device, device);
    v10->_filter = 0;
    v10->_secondaryFilter = 0;
    objc_storeStrong(&v10->_deviceOps, ops);
  }

  return v10;
}

- (void)dealloc
{
  filter = self->_filter;
  if (filter)
  {
    BNNSFilterDestroy(filter);
    self->_filter = 0;
  }

  secondaryFilter = self->_secondaryFilter;
  if (secondaryFilter)
  {
    BNNSFilterDestroy(secondaryFilter);
    self->_secondaryFilter = 0;
  }

  v5.receiver = self;
  v5.super_class = _MLCCPULayer;
  [(_MLCCPULayer *)&v5 dealloc];
}

@end