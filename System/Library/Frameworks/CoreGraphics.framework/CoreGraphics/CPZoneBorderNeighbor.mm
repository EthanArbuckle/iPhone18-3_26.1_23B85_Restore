@interface CPZoneBorderNeighbor
- (CPZoneBorderNeighbor)init;
- (id)copyWithZone:(_NSZone *)zone;
- (id)initSuper;
- (void)dealloc;
- (void)setNeighborShape:(id)shape;
@end

@implementation CPZoneBorderNeighbor

- (void)setNeighborShape:(id)shape
{
  neighborShape = self->neighborShape;
  if (neighborShape != shape)
  {

    self->neighborShape = shape;
  }
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CPZoneBorderNeighbor;
  [(CPZoneBorderNeighbor *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v3 = CPCopyObject(self, zone);
  v4 = v3[1];
  return v3;
}

- (id)initSuper
{
  v3.receiver = self;
  v3.super_class = CPZoneBorderNeighbor;
  return [(CPZoneBorderNeighbor *)&v3 init];
}

- (CPZoneBorderNeighbor)init
{
  v3.receiver = self;
  v3.super_class = CPZoneBorderNeighbor;
  result = [(CPZoneBorderNeighbor *)&v3 init];
  if (result)
  {
    result->neighborShape = 0;
    result->shapeSide = 0;
  }

  return result;
}

@end