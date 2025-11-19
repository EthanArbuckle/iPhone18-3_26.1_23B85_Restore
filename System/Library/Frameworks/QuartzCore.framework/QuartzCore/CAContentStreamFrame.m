@interface CAContentStreamFrame
- (CGRect)contentRect;
- (void)setContentRect:(CGRect)a3;
@end

@implementation CAContentStreamFrame

- (void)setContentRect:(CGRect)a3
{
  v4 = *MEMORY[0x1E69E9840];
  src = a3;
  objc_copyStruct(&self->_contentRect, &src, 32, 1, 0);
}

- (CGRect)contentRect
{
  dest[4] = *MEMORY[0x1E69E9840];
  objc_copyStruct(dest, &self->_contentRect, 32, 1, 0);
  v2 = *dest;
  v3 = *&dest[1];
  v4 = *&dest[2];
  v5 = *&dest[3];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

@end