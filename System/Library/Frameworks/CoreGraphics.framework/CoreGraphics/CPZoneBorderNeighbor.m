@interface CPZoneBorderNeighbor
- (CPZoneBorderNeighbor)init;
- (id)copyWithZone:(_NSZone *)a3;
- (id)initSuper;
- (void)dealloc;
- (void)setNeighborShape:(id)a3;
@end

@implementation CPZoneBorderNeighbor

- (void)setNeighborShape:(id)a3
{
  neighborShape = self->neighborShape;
  if (neighborShape != a3)
  {

    self->neighborShape = a3;
  }
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CPZoneBorderNeighbor;
  [(CPZoneBorderNeighbor *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v3 = CPCopyObject(self, a3);
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