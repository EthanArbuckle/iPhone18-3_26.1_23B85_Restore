@interface _MKMarkerAnnotationBaseImageContent
- (_MKMarkerAnnotationBaseImageContent)initWithFillColor:(id)a3 strokeColor:(id)a4 strokeWidth:(double)a5 blendMode:(int)a6 baseImageType:(int64_t)a7;
@end

@implementation _MKMarkerAnnotationBaseImageContent

- (_MKMarkerAnnotationBaseImageContent)initWithFillColor:(id)a3 strokeColor:(id)a4 strokeWidth:(double)a5 blendMode:(int)a6 baseImageType:(int64_t)a7
{
  v13 = a3;
  v14 = a4;
  v18.receiver = self;
  v18.super_class = _MKMarkerAnnotationBaseImageContent;
  v15 = [(_MKMarkerAnnotationBaseImageContent *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_fillColor, a3);
    objc_storeStrong(&v16->_strokeColor, a4);
    v16->_strokeWidth = a5;
    v16->_blendMode = a6;
    v16->_baseImageType = a7;
  }

  return v16;
}

@end