@interface EAREuclidNeighbor
- (EAREuclidNeighbor)initWithCoder:(id)coder;
- (EAREuclidNeighbor)initWithEuclidNeighbor:(id)neighbor;
- (void)encodeWithCoder:(id)coder;
@end

@implementation EAREuclidNeighbor

- (EAREuclidNeighbor)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = EAREuclidNeighbor;
  v5 = [(EAREuclidNeighbor *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"name"];
    name = v5->_name;
    v5->_name = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"distance"];
    distance = v5->_distance;
    v5->_distance = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  name = self->_name;
  coderCopy = coder;
  [coderCopy encodeObject:name forKey:@"name"];
  [coderCopy encodeObject:self->_distance forKey:@"distance"];
}

- (EAREuclidNeighbor)initWithEuclidNeighbor:(id)neighbor
{
  neighborCopy = neighbor;
  v11.receiver = self;
  v11.super_class = EAREuclidNeighbor;
  v5 = [(EAREuclidNeighbor *)&v11 init];
  if (v5)
  {
    name = [neighborCopy name];
    name = v5->_name;
    v5->_name = name;

    distance = [neighborCopy distance];
    distance = v5->_distance;
    v5->_distance = distance;
  }

  return v5;
}

@end