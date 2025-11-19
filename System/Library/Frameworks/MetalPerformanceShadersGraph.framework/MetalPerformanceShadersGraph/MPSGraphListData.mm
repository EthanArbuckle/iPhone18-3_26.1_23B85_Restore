@interface MPSGraphListData
- (MPSGraphListData)initWithDevice:(id)a3 list:(id)a4 maxSize:(int64_t)a5 elementType:(id)a6;
- (id)clonedList;
- (id)popBackElement;
@end

@implementation MPSGraphListData

- (MPSGraphListData)initWithDevice:(id)a3 list:(id)a4 maxSize:(int64_t)a5 elementType:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = [(MPSGraphTensorData *)self initEmptyWithShape:MEMORY[0x1E695E0F0] dataType:268435488 device:v10];
  v14 = [v11 mutableCopy];
  list = v13->_list;
  v13->_list = v14;

  v13->_maxSize = a5;
  elementType = v13->_elementType;
  v13->_elementType = v12;

  return v13;
}

- (id)popBackElement
{
  v3 = [(NSMutableArray *)self->_list lastObject];
  [(NSMutableArray *)self->_list removeLastObject];

  return v3;
}

- (id)clonedList
{
  v3 = [MPSGraphListData alloc];
  v4 = [(MPSGraphTensorData *)self device];
  v5 = [(MPSGraphListData *)v3 initWithDevice:v4 list:self->_list maxSize:self->_maxSize elementType:self->_elementType];

  return v5;
}

@end