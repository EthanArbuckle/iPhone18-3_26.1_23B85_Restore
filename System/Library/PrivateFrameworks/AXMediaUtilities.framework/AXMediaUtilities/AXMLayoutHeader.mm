@interface AXMLayoutHeader
+ (id)header:(id)header;
- (CGRect)frame;
- (CGRect)normalizedFrame;
@end

@implementation AXMLayoutHeader

+ (id)header:(id)header
{
  headerCopy = header;
  v4 = objc_alloc_init(AXMLayoutHeader);
  v5 = [MEMORY[0x1E695DF70] arrayWithObject:headerCopy];

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