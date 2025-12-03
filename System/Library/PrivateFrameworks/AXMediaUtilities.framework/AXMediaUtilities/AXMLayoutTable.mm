@interface AXMLayoutTable
+ (id)region:(id)region row:(id)row;
- (CGRect)frame;
- (CGRect)normalizedFrame;
@end

@implementation AXMLayoutTable

+ (id)region:(id)region row:(id)row
{
  regionCopy = region;
  rowCopy = row;
  v7 = objc_alloc_init(AXMLayoutTable);
  header = v7->_header;
  v7->_header = regionCopy;
  v9 = regionCopy;

  v10 = [MEMORY[0x1E695DF70] arrayWithObject:rowCopy];

  rows = v7->_rows;
  v7->_rows = v10;

  array = [MEMORY[0x1E695DF70] array];
  columns = v7->_columns;
  v7->_columns = array;

  return v7;
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