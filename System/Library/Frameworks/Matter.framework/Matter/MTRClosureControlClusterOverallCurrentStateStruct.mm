@interface MTRClosureControlClusterOverallCurrentStateStruct
- (MTRClosureControlClusterOverallCurrentStateStruct)init;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation MTRClosureControlClusterOverallCurrentStateStruct

- (MTRClosureControlClusterOverallCurrentStateStruct)init
{
  v9.receiver = self;
  v9.super_class = MTRClosureControlClusterOverallCurrentStateStruct;
  v2 = [(MTRClosureControlClusterOverallCurrentStateStruct *)&v9 init];
  v3 = v2;
  if (v2)
  {
    position = v2->_position;
    v2->_position = 0;

    latch = v3->_latch;
    v3->_latch = 0;

    speed = v3->_speed;
    v3->_speed = 0;

    secureState = v3->_secureState;
    v3->_secureState = 0;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MTRClosureControlClusterOverallCurrentStateStruct);
  position = [(MTRClosureControlClusterOverallCurrentStateStruct *)self position];
  [(MTRClosureControlClusterOverallCurrentStateStruct *)v4 setPosition:position];

  latch = [(MTRClosureControlClusterOverallCurrentStateStruct *)self latch];
  [(MTRClosureControlClusterOverallCurrentStateStruct *)v4 setLatch:latch];

  speed = [(MTRClosureControlClusterOverallCurrentStateStruct *)self speed];
  [(MTRClosureControlClusterOverallCurrentStateStruct *)v4 setSpeed:speed];

  secureState = [(MTRClosureControlClusterOverallCurrentStateStruct *)self secureState];
  [(MTRClosureControlClusterOverallCurrentStateStruct *)v4 setSecureState:secureState];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: position:%@ latch:%@; speed:%@; secureState:%@; >", v5, self->_position, self->_latch, self->_speed, self->_secureState];;

  return v6;
}

@end