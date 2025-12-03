@interface MPSGraphListType
- (MPSGraphListType)initWithElementType:(id)type;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation MPSGraphListType

- (MPSGraphListType)initWithElementType:(id)type
{
  typeCopy = type;
  v9.receiver = self;
  v9.super_class = MPSGraphListType;
  v5 = [(MPSGraphListType *)&v9 init];
  v6 = [typeCopy copyWithZone:0];
  elementType = v5->_elementType;
  v5->_elementType = v6;

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [MPSGraphListType alloc];
  elementType = self->_elementType;

  return [(MPSGraphListType *)v4 initWithElementType:elementType];
}

@end