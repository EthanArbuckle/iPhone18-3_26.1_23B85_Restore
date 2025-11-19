@interface _MLCCPULayer
- (_MLCCPULayer)initWithDevice:(id)a3 deviceOps:(id)a4;
- (void)dealloc;
@end

@implementation _MLCCPULayer

- (_MLCCPULayer)initWithDevice:(id)a3 deviceOps:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = _MLCCPULayer;
  v9 = [(_MLCCPULayer *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_device, a3);
    v10->_filter = 0;
    v10->_secondaryFilter = 0;
    objc_storeStrong(&v10->_deviceOps, a4);
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