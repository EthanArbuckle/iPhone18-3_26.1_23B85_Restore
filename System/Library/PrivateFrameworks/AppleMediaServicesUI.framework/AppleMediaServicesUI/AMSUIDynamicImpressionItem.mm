@interface AMSUIDynamicImpressionItem
- (AMSUIDynamicImpressionItem)initWithFrame:(CGRect)frame impressionMetrics:(id)metrics;
- (CGRect)frame;
@end

@implementation AMSUIDynamicImpressionItem

- (AMSUIDynamicImpressionItem)initWithFrame:(CGRect)frame impressionMetrics:(id)metrics
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  metricsCopy = metrics;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2050000000;
  v10 = getAMSUIDDynamicImpressionItemClass_softClass;
  v18 = getAMSUIDDynamicImpressionItemClass_softClass;
  if (!getAMSUIDDynamicImpressionItemClass_softClass)
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __getAMSUIDDynamicImpressionItemClass_block_invoke;
    v14[3] = &unk_1E7F241B0;
    v14[4] = &v15;
    __getAMSUIDDynamicImpressionItemClass_block_invoke(v14);
    v10 = v16[3];
  }

  v11 = v10;
  _Block_object_dispose(&v15, 8);
  v12 = [[v10 alloc] initWithFrame:metricsCopy impressionMetrics:{x, y, width, height}];

  return v12;
}

- (CGRect)frame
{
  x = self->_frame.origin.x;
  y = self->_frame.origin.y;
  width = self->_frame.size.width;
  height = self->_frame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end