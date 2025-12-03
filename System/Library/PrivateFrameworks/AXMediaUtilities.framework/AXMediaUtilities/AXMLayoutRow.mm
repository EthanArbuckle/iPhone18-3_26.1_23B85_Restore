@interface AXMLayoutRow
+ (id)row:(id)row;
- (CGRect)frame;
- (CGRect)normalizedFrame;
@end

@implementation AXMLayoutRow

+ (id)row:(id)row
{
  rowCopy = row;
  v4 = objc_alloc_init(AXMLayoutRow);
  v5 = [MEMORY[0x1E695DF70] arrayWithObject:rowCopy];

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