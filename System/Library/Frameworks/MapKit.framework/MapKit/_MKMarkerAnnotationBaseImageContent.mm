@interface _MKMarkerAnnotationBaseImageContent
- (_MKMarkerAnnotationBaseImageContent)initWithFillColor:(id)color strokeColor:(id)strokeColor strokeWidth:(double)width blendMode:(int)mode baseImageType:(int64_t)type;
@end

@implementation _MKMarkerAnnotationBaseImageContent

- (_MKMarkerAnnotationBaseImageContent)initWithFillColor:(id)color strokeColor:(id)strokeColor strokeWidth:(double)width blendMode:(int)mode baseImageType:(int64_t)type
{
  colorCopy = color;
  strokeColorCopy = strokeColor;
  v18.receiver = self;
  v18.super_class = _MKMarkerAnnotationBaseImageContent;
  v15 = [(_MKMarkerAnnotationBaseImageContent *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_fillColor, color);
    objc_storeStrong(&v16->_strokeColor, strokeColor);
    v16->_strokeWidth = width;
    v16->_blendMode = mode;
    v16->_baseImageType = type;
  }

  return v16;
}

@end