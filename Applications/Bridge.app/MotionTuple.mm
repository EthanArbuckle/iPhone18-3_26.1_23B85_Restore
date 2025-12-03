@interface MotionTuple
+ (id)motionWithX:(float)x andY:(float)y andZ:(float)z;
@end

@implementation MotionTuple

+ (id)motionWithX:(float)x andY:(float)y andZ:(float)z
{
  v8 = objc_alloc_init(MotionTuple);
  *&v9 = x;
  [(MotionTuple *)v8 setX:v9];
  *&v10 = y;
  [(MotionTuple *)v8 setY:v10];
  *&v11 = z;
  [(MotionTuple *)v8 setZ:v11];

  return v8;
}

@end