@interface MPSGraphListType
- (MPSGraphListType)initWithElementType:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation MPSGraphListType

- (MPSGraphListType)initWithElementType:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = MPSGraphListType;
  v5 = [(MPSGraphListType *)&v9 init];
  v6 = [v4 copyWithZone:0];
  elementType = v5->_elementType;
  v5->_elementType = v6;

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [MPSGraphListType alloc];
  elementType = self->_elementType;

  return [(MPSGraphListType *)v4 initWithElementType:elementType];
}

@end