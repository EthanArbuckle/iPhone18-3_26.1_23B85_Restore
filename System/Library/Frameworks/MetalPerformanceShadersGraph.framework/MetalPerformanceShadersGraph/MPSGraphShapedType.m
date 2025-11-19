@interface MPSGraphShapedType
- (BOOL)isEqualTo:(MPSGraphShapedType *)object;
- (MPSGraphShapedType)initWithShape:(MPSShape *)shape dataType:(MPSDataType)dataType;
- (id)copyWithZone:(_NSZone *)a3;
- (id)debugDescription;
@end

@implementation MPSGraphShapedType

- (MPSGraphShapedType)initWithShape:(MPSShape *)shape dataType:(MPSDataType)dataType
{
  v6 = shape;
  v11.receiver = self;
  v11.super_class = MPSGraphShapedType;
  v7 = [(MPSGraphShapedType *)&v11 init];
  v8 = [(MPSShape *)v6 copyWithZone:0];
  v9 = v7->_shape;
  v7->_shape = v8;

  v7->_dataType = dataType;
  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [MPSGraphShapedType alloc];
  shape = self->_shape;
  dataType = self->_dataType;

  return [(MPSGraphShapedType *)v4 initWithShape:shape dataType:dataType];
}

- (BOOL)isEqualTo:(MPSGraphShapedType *)object
{
  v4 = object;
  dataType = self->_dataType;
  if (dataType != [(MPSGraphShapedType *)v4 dataType])
  {
    goto LABEL_13;
  }

  if (self->_shape)
  {
    goto LABEL_3;
  }

  v17 = [(MPSGraphShapedType *)v4 shape];

  if (!v17)
  {
    LOBYTE(v6) = 1;
    goto LABEL_14;
  }

  if (self->_shape)
  {
    goto LABEL_3;
  }

  v18 = [(MPSGraphShapedType *)v4 shape];

  if (v18)
  {
    goto LABEL_13;
  }

  if (self->_shape)
  {
LABEL_3:
    v6 = [(MPSGraphShapedType *)v4 shape];

    if (!v6)
    {
      goto LABEL_14;
    }

    shape = self->_shape;
  }

  else
  {
    shape = 0;
  }

  v8 = [(NSArray *)shape count];
  v9 = [(MPSGraphShapedType *)v4 shape];
  v10 = [v9 count];

  if (v8 != v10)
  {
LABEL_13:
    LOBYTE(v6) = 0;
    goto LABEL_14;
  }

  v11 = 0;
  do
  {
    v12 = [(NSArray *)self->_shape count];
    LOBYTE(v6) = v11 >= v12;
    if (v11 >= v12)
    {
      break;
    }

    v13 = [(NSArray *)self->_shape objectAtIndexedSubscript:v11];
    v14 = [(MPSGraphShapedType *)v4 shape];
    v15 = [v14 objectAtIndexedSubscript:v11];
    v16 = [v13 isEqualToNumber:v15];

    ++v11;
  }

  while ((v16 & 1) != 0);
LABEL_14:

  return v6;
}

- (id)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = MPSGraphShapedType;
  v4 = [(MPSGraphShapedType *)&v8 debugDescription];
  v5 = [(NSArray *)self->_shape debugDescription];
  v6 = [v3 stringWithFormat:@"%@ : %@", v4, v5];

  return v6;
}

@end