@interface MPSTriangleAccelerationStructure
- (MPSTriangleAccelerationStructure)initWithDevice:(id)device;
- (MPSTriangleAccelerationStructure)initWithGroup:(id)group;
- (void)setPolygonType:(unint64_t)type;
@end

@implementation MPSTriangleAccelerationStructure

- (void)setPolygonType:(unint64_t)type
{
  if (type)
  {
    sub_239E24B08();
  }
}

- (MPSTriangleAccelerationStructure)initWithDevice:(id)device
{
  v7.receiver = self;
  v7.super_class = MPSTriangleAccelerationStructure;
  v3 = [(MPSPolygonAccelerationStructure *)&v7 initWithDevice:device];
  v4 = v3;
  if (v3)
  {
    v6.receiver = v3;
    v6.super_class = MPSTriangleAccelerationStructure;
    [(MPSPolygonAccelerationStructure *)&v6 setPolygonType:0];
  }

  return v4;
}

- (MPSTriangleAccelerationStructure)initWithGroup:(id)group
{
  v7.receiver = self;
  v7.super_class = MPSTriangleAccelerationStructure;
  v3 = [(MPSPolygonAccelerationStructure *)&v7 initWithGroup:group];
  v4 = v3;
  if (v3)
  {
    v6.receiver = v3;
    v6.super_class = MPSTriangleAccelerationStructure;
    [(MPSPolygonAccelerationStructure *)&v6 setPolygonType:0];
  }

  return v4;
}

@end