@interface CRLMutableStroke
+ (id)emptyStroke;
+ (id)stroke;
- (id)copyWithZone:(_NSZone *)zone;
- (void)setWidth:(double)width;
@end

@implementation CRLMutableStroke

- (void)setWidth:(double)width
{
  [(CRLStroke *)self i_setWidth:?];

  [(CRLStroke *)self i_setActualWidth:width];
}

+ (id)stroke
{
  v4.receiver = self;
  v4.super_class = &OBJC_METACLASS___CRLMutableStroke;
  v2 = objc_msgSendSuper2(&v4, "i_newStroke");

  return v2;
}

+ (id)emptyStroke
{
  v4.receiver = self;
  v4.super_class = &OBJC_METACLASS___CRLMutableStroke;
  v2 = objc_msgSendSuper2(&v4, "i_newEmptyStroke");

  return v2;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [CRLStroke alloc];
  color = [(CRLMutableStroke *)self color];
  [(CRLMutableStroke *)self width];
  v7 = v6;
  v8 = [(CRLMutableStroke *)self cap];
  join = [(CRLMutableStroke *)self join];
  pattern = [(CRLMutableStroke *)self pattern];
  [(CRLMutableStroke *)self miterLimit];
  v12 = [(CRLStroke *)v4 initWithColor:color width:v8 cap:join join:pattern pattern:v7 miterLimit:v11];

  [(CRLMutableStroke *)self actualWidth];
  [(CRLStroke *)v12 i_setActualWidth:?];
  return v12;
}

@end