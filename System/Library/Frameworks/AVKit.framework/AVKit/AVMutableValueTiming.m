@interface AVMutableValueTiming
+ (id)allocWithZone:(_NSZone *)a3;
- (void)setAnchorTimeStamp:(double)a3;
- (void)setAnchorValue:(double)a3;
- (void)setRate:(double)a3;
- (void)setValueTiming:(id)a3;
@end

@implementation AVMutableValueTiming

- (void)setRate:(double)a3
{
  v5 = objc_opt_class();

  AVRequestConcreteImplementation(self, a2, v5);
}

- (void)setAnchorTimeStamp:(double)a3
{
  v5 = objc_opt_class();

  AVRequestConcreteImplementation(self, a2, v5);
}

- (void)setAnchorValue:(double)a3
{
  v5 = objc_opt_class();

  AVRequestConcreteImplementation(self, a2, v5);
}

+ (id)allocWithZone:(_NSZone *)a3
{
  v5 = objc_opt_self();

  if (v5 == a1)
  {

    return [(AVMutableValueTiming *)AVConcreteMutableValueTiming allocWithZone:a3];
  }

  else
  {
    v7.receiver = a1;
    v7.super_class = &OBJC_METACLASS___AVMutableValueTiming;
    return objc_msgSendSuper2(&v7, sel_allocWithZone_, a3);
  }
}

- (void)setValueTiming:(id)a3
{
  v4 = a3;
  [v4 anchorValue];
  [(AVMutableValueTiming *)self setAnchorValue:?];
  [v4 anchorTimeStamp];
  [(AVMutableValueTiming *)self setAnchorTimeStamp:?];
  [v4 rate];
  v6 = v5;

  [(AVMutableValueTiming *)self setRate:v6];
}

@end