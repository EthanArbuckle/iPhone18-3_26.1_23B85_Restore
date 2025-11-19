@interface AXMLayoutColumn
+ (id)column:(id)a3;
- (CGRect)frame;
- (CGRect)normalizedFrame;
@end

@implementation AXMLayoutColumn

+ (id)column:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(AXMLayoutColumn);
  v5 = [MEMORY[0x1E695DF70] arrayWithObject:v3];

  cells = v4->_cells;
  v4->_cells = v5;

  return v4;
}

- (CGRect)frame
{
  v3 = objc_opt_class();
  cells = self->_cells;

  [v3 boundingFrameForItems:cells];
  result.size.height = v8;
  result.size.width = v7;
  result.origin.y = v6;
  result.origin.x = v5;
  return result;
}

- (CGRect)normalizedFrame
{
  v3 = objc_opt_class();
  cells = self->_cells;

  [v3 normalizedBoundingFrameForItems:cells];
  result.size.height = v8;
  result.size.width = v7;
  result.origin.y = v6;
  result.origin.x = v5;
  return result;
}

@end