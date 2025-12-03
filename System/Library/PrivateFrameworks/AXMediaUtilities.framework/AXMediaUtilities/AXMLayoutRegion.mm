@interface AXMLayoutRegion
+ (id)region:(id)region;
- (CGRect)frame;
- (CGRect)normalizedFrame;
@end

@implementation AXMLayoutRegion

+ (id)region:(id)region
{
  regionCopy = region;
  v4 = objc_alloc_init(AXMLayoutRegion);
  v5 = [MEMORY[0x1E695DF70] arrayWithObject:regionCopy];

  lines = v4->_lines;
  v4->_lines = v5;

  return v4;
}

- (CGRect)frame
{
  v3 = objc_opt_class();
  lines = self->_lines;

  [v3 boundingFrameForItems:lines];
  result.size.height = v8;
  result.size.width = v7;
  result.origin.y = v6;
  result.origin.x = v5;
  return result;
}

- (CGRect)normalizedFrame
{
  v3 = objc_opt_class();
  lines = self->_lines;

  [v3 normalizedBoundingFrameForItems:lines];
  result.size.height = v8;
  result.size.width = v7;
  result.origin.y = v6;
  result.origin.x = v5;
  return result;
}

@end