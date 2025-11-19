@interface TUIImpressionAttributes
- (TUIImpressionAttributes)initWithData:(id)a3 size:(CGSize)a4 center:(CGPoint)a5 transform:(CGAffineTransform *)a6;
@end

@implementation TUIImpressionAttributes

- (TUIImpressionAttributes)initWithData:(id)a3 size:(CGSize)a4 center:(CGPoint)a5 transform:(CGAffineTransform *)a6
{
  y = a5.y;
  x = a5.x;
  height = a4.height;
  width = a4.width;
  v13 = a3;
  v19.receiver = self;
  v19.super_class = TUIImpressionAttributes;
  v14 = *&a6->c;
  v18[0] = *&a6->a;
  v18[1] = v14;
  v18[2] = *&a6->tx;
  v15 = [(TUIGeometryAttributes *)&v19 initWithSize:v18 center:width transform:height, x, y];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_data, a3);
  }

  return v16;
}

@end