@interface MTROccupancySensingClusterOccupancyChangedEvent
- (MTROccupancySensingClusterOccupancyChangedEvent)init;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation MTROccupancySensingClusterOccupancyChangedEvent

- (MTROccupancySensingClusterOccupancyChangedEvent)init
{
  v6.receiver = self;
  v6.super_class = MTROccupancySensingClusterOccupancyChangedEvent;
  v2 = [(MTROccupancySensingClusterOccupancyChangedEvent *)&v6 init];
  v3 = v2;
  if (v2)
  {
    occupancy = v2->_occupancy;
    v2->_occupancy = &unk_284C3E588;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(MTROccupancySensingClusterOccupancyChangedEvent);
  v5 = [(MTROccupancySensingClusterOccupancyChangedEvent *)self occupancy];
  [(MTROccupancySensingClusterOccupancyChangedEvent *)v4 setOccupancy:v5];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: occupancy:%@ >", v5, self->_occupancy];;

  return v6;
}

@end