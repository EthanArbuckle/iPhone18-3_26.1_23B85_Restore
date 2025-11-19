@interface AXMLayoutReceipt
+ (id)region:(id)a3;
- (CGRect)frame;
- (CGRect)normalizedFrame;
@end

@implementation AXMLayoutReceipt

+ (id)region:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(AXMLayoutReceipt);
  v5 = [MEMORY[0x1E695DF70] arrayWithObject:v3];

  rows = v4->_rows;
  v4->_rows = v5;

  return v4;
}

- (CGRect)frame
{
  v3 = objc_opt_class();
  rows = self->_rows;

  [v3 boundingFrameForItems:rows];
  result.size.height = v8;
  result.size.width = v7;
  result.origin.y = v6;
  result.origin.x = v5;
  return result;
}

- (CGRect)normalizedFrame
{
  v3 = objc_opt_class();
  rows = self->_rows;

  [v3 normalizedBoundingFrameForItems:rows];
  result.size.height = v8;
  result.size.width = v7;
  result.origin.y = v6;
  result.origin.x = v5;
  return result;
}

@end