@interface MTRClosureControlClusterOverallTargetStateStruct
- (MTRClosureControlClusterOverallTargetStateStruct)init;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation MTRClosureControlClusterOverallTargetStateStruct

- (MTRClosureControlClusterOverallTargetStateStruct)init
{
  v8.receiver = self;
  v8.super_class = MTRClosureControlClusterOverallTargetStateStruct;
  v2 = [(MTRClosureControlClusterOverallTargetStateStruct *)&v8 init];
  v3 = v2;
  if (v2)
  {
    position = v2->_position;
    v2->_position = 0;

    latch = v3->_latch;
    v3->_latch = 0;

    speed = v3->_speed;
    v3->_speed = 0;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MTRClosureControlClusterOverallTargetStateStruct);
  position = [(MTRClosureControlClusterOverallTargetStateStruct *)self position];
  [(MTRClosureControlClusterOverallTargetStateStruct *)v4 setPosition:position];

  latch = [(MTRClosureControlClusterOverallTargetStateStruct *)self latch];
  [(MTRClosureControlClusterOverallTargetStateStruct *)v4 setLatch:latch];

  speed = [(MTRClosureControlClusterOverallTargetStateStruct *)self speed];
  [(MTRClosureControlClusterOverallTargetStateStruct *)v4 setSpeed:speed];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: position:%@ latch:%@; speed:%@; >", v5, self->_position, self->_latch, self->_speed];;

  return v6;
}

@end