@interface MTRClosureDimensionClusterDimensionStateStruct
- (MTRClosureDimensionClusterDimensionStateStruct)init;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation MTRClosureDimensionClusterDimensionStateStruct

- (MTRClosureDimensionClusterDimensionStateStruct)init
{
  v8.receiver = self;
  v8.super_class = MTRClosureDimensionClusterDimensionStateStruct;
  v2 = [(MTRClosureDimensionClusterDimensionStateStruct *)&v8 init];
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
  v4 = objc_alloc_init(MTRClosureDimensionClusterDimensionStateStruct);
  position = [(MTRClosureDimensionClusterDimensionStateStruct *)self position];
  [(MTRClosureDimensionClusterDimensionStateStruct *)v4 setPosition:position];

  latch = [(MTRClosureDimensionClusterDimensionStateStruct *)self latch];
  [(MTRClosureDimensionClusterDimensionStateStruct *)v4 setLatch:latch];

  speed = [(MTRClosureDimensionClusterDimensionStateStruct *)self speed];
  [(MTRClosureDimensionClusterDimensionStateStruct *)v4 setSpeed:speed];

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