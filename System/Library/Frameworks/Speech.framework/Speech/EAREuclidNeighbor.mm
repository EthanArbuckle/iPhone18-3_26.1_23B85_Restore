@interface EAREuclidNeighbor
- (EAREuclidNeighbor)initWithCoder:(id)a3;
- (EAREuclidNeighbor)initWithEuclidNeighbor:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation EAREuclidNeighbor

- (EAREuclidNeighbor)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = EAREuclidNeighbor;
  v5 = [(EAREuclidNeighbor *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"name"];
    name = v5->_name;
    v5->_name = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"distance"];
    distance = v5->_distance;
    v5->_distance = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  name = self->_name;
  v5 = a3;
  [v5 encodeObject:name forKey:@"name"];
  [v5 encodeObject:self->_distance forKey:@"distance"];
}

- (EAREuclidNeighbor)initWithEuclidNeighbor:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = EAREuclidNeighbor;
  v5 = [(EAREuclidNeighbor *)&v11 init];
  if (v5)
  {
    v6 = [v4 name];
    name = v5->_name;
    v5->_name = v6;

    v8 = [v4 distance];
    distance = v5->_distance;
    v5->_distance = v8;
  }

  return v5;
}

@end