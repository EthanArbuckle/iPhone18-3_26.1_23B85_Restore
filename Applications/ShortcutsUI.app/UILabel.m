@interface UILabel
- (CGRect)imageGlyphBoundingFrame;
@end

@implementation UILabel

- (CGRect)imageGlyphBoundingFrame
{
  v3 = [(UILabel *)self text];
  [(UILabel *)self bounds];
  v5 = v4;
  v7 = v6;
  v8 = [(UILabel *)self _defaultAttributes];
  [v3 boundingRectWithSize:8 options:v8 attributes:0 context:{v5, v7}];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  [(UILabel *)self _firstBaselineOffsetFromTop];
  v18 = v17 - v12 - v16;
  v19 = v10;
  v20 = v14;
  v21 = v16;
  result.size.height = v21;
  result.size.width = v20;
  result.origin.y = v18;
  result.origin.x = v19;
  return result;
}

@end