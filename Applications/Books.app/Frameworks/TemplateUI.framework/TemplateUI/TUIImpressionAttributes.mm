@interface TUIImpressionAttributes
- (TUIImpressionAttributes)initWithData:(id)data size:(CGSize)size center:(CGPoint)center transform:(CGAffineTransform *)transform;
@end

@implementation TUIImpressionAttributes

- (TUIImpressionAttributes)initWithData:(id)data size:(CGSize)size center:(CGPoint)center transform:(CGAffineTransform *)transform
{
  y = center.y;
  x = center.x;
  height = size.height;
  width = size.width;
  dataCopy = data;
  v19.receiver = self;
  v19.super_class = TUIImpressionAttributes;
  v14 = *&transform->c;
  v18[0] = *&transform->a;
  v18[1] = v14;
  v18[2] = *&transform->tx;
  v15 = [(TUIGeometryAttributes *)&v19 initWithSize:v18 center:width transform:height, x, y];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_data, data);
  }

  return v16;
}

@end