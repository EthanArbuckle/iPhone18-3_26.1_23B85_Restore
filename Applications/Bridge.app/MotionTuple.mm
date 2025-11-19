@interface MotionTuple
+ (id)motionWithX:(float)a3 andY:(float)a4 andZ:(float)a5;
@end

@implementation MotionTuple

+ (id)motionWithX:(float)a3 andY:(float)a4 andZ:(float)a5
{
  v8 = objc_alloc_init(MotionTuple);
  *&v9 = a3;
  [(MotionTuple *)v8 setX:v9];
  *&v10 = a4;
  [(MotionTuple *)v8 setY:v10];
  *&v11 = a5;
  [(MotionTuple *)v8 setZ:v11];

  return v8;
}

@end