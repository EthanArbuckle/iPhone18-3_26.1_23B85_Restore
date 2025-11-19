@interface MPSTriangleAccelerationStructure
- (MPSTriangleAccelerationStructure)initWithDevice:(id)a3;
- (MPSTriangleAccelerationStructure)initWithGroup:(id)a3;
- (void)setPolygonType:(unint64_t)a3;
@end

@implementation MPSTriangleAccelerationStructure

- (void)setPolygonType:(unint64_t)a3
{
  if (a3)
  {
    sub_239E24B08();
  }
}

- (MPSTriangleAccelerationStructure)initWithDevice:(id)a3
{
  v7.receiver = self;
  v7.super_class = MPSTriangleAccelerationStructure;
  v3 = [(MPSPolygonAccelerationStructure *)&v7 initWithDevice:a3];
  v4 = v3;
  if (v3)
  {
    v6.receiver = v3;
    v6.super_class = MPSTriangleAccelerationStructure;
    [(MPSPolygonAccelerationStructure *)&v6 setPolygonType:0];
  }

  return v4;
}

- (MPSTriangleAccelerationStructure)initWithGroup:(id)a3
{
  v7.receiver = self;
  v7.super_class = MPSTriangleAccelerationStructure;
  v3 = [(MPSPolygonAccelerationStructure *)&v7 initWithGroup:a3];
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