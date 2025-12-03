@interface AVMutableValueTiming
+ (id)allocWithZone:(_NSZone *)zone;
- (void)setAnchorTimeStamp:(double)stamp;
- (void)setAnchorValue:(double)value;
- (void)setRate:(double)rate;
- (void)setValueTiming:(id)timing;
@end

@implementation AVMutableValueTiming

- (void)setRate:(double)rate
{
  v5 = objc_opt_class();

  AVRequestConcreteImplementation(self, a2, v5);
}

- (void)setAnchorTimeStamp:(double)stamp
{
  v5 = objc_opt_class();

  AVRequestConcreteImplementation(self, a2, v5);
}

- (void)setAnchorValue:(double)value
{
  v5 = objc_opt_class();

  AVRequestConcreteImplementation(self, a2, v5);
}

+ (id)allocWithZone:(_NSZone *)zone
{
  v5 = objc_opt_self();

  if (v5 == self)
  {

    return [(AVMutableValueTiming *)AVConcreteMutableValueTiming allocWithZone:zone];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = &OBJC_METACLASS___AVMutableValueTiming;
    return objc_msgSendSuper2(&v7, sel_allocWithZone_, zone);
  }
}

- (void)setValueTiming:(id)timing
{
  timingCopy = timing;
  [timingCopy anchorValue];
  [(AVMutableValueTiming *)self setAnchorValue:?];
  [timingCopy anchorTimeStamp];
  [(AVMutableValueTiming *)self setAnchorTimeStamp:?];
  [timingCopy rate];
  v6 = v5;

  [(AVMutableValueTiming *)self setRate:v6];
}

@end