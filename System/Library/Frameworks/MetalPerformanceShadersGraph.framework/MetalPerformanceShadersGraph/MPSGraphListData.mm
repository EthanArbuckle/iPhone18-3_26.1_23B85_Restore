@interface MPSGraphListData
- (MPSGraphListData)initWithDevice:(id)device list:(id)list maxSize:(int64_t)size elementType:(id)type;
- (id)clonedList;
- (id)popBackElement;
@end

@implementation MPSGraphListData

- (MPSGraphListData)initWithDevice:(id)device list:(id)list maxSize:(int64_t)size elementType:(id)type
{
  deviceCopy = device;
  listCopy = list;
  typeCopy = type;
  v13 = [(MPSGraphTensorData *)self initEmptyWithShape:MEMORY[0x1E695E0F0] dataType:268435488 device:deviceCopy];
  v14 = [listCopy mutableCopy];
  list = v13->_list;
  v13->_list = v14;

  v13->_maxSize = size;
  elementType = v13->_elementType;
  v13->_elementType = typeCopy;

  return v13;
}

- (id)popBackElement
{
  lastObject = [(NSMutableArray *)self->_list lastObject];
  [(NSMutableArray *)self->_list removeLastObject];

  return lastObject;
}

- (id)clonedList
{
  v3 = [MPSGraphListData alloc];
  device = [(MPSGraphTensorData *)self device];
  v5 = [(MPSGraphListData *)v3 initWithDevice:device list:self->_list maxSize:self->_maxSize elementType:self->_elementType];

  return v5;
}

@end