@interface CRLMutableStroke
+ (id)emptyStroke;
+ (id)stroke;
- (id)copyWithZone:(_NSZone *)a3;
- (void)setWidth:(double)a3;
@end

@implementation CRLMutableStroke

- (void)setWidth:(double)a3
{
  [(CRLStroke *)self i_setWidth:?];

  [(CRLStroke *)self i_setActualWidth:a3];
}

+ (id)stroke
{
  v4.receiver = a1;
  v4.super_class = &OBJC_METACLASS___CRLMutableStroke;
  v2 = objc_msgSendSuper2(&v4, "i_newStroke");

  return v2;
}

+ (id)emptyStroke
{
  v4.receiver = a1;
  v4.super_class = &OBJC_METACLASS___CRLMutableStroke;
  v2 = objc_msgSendSuper2(&v4, "i_newEmptyStroke");

  return v2;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [CRLStroke alloc];
  v5 = [(CRLMutableStroke *)self color];
  [(CRLMutableStroke *)self width];
  v7 = v6;
  v8 = [(CRLMutableStroke *)self cap];
  v9 = [(CRLMutableStroke *)self join];
  v10 = [(CRLMutableStroke *)self pattern];
  [(CRLMutableStroke *)self miterLimit];
  v12 = [(CRLStroke *)v4 initWithColor:v5 width:v8 cap:v9 join:v10 pattern:v7 miterLimit:v11];

  [(CRLMutableStroke *)self actualWidth];
  [(CRLStroke *)v12 i_setActualWidth:?];
  return v12;
}

@end