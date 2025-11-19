@interface ATXRingBuffer
- (ATXRingBuffer)initWithMaxSize:(unint64_t)a3;
- (id)toArray;
- (void)addObject:(id)a3;
@end

@implementation ATXRingBuffer

- (ATXRingBuffer)initWithMaxSize:(unint64_t)a3
{
  if (a3)
  {
    v10.receiver = self;
    v10.super_class = ATXRingBuffer;
    v4 = [(ATXRingBuffer *)&v10 init];
    v5 = v4;
    if (v4)
    {
      v4->_maxSize = a3;
      v6 = objc_opt_new();
      bufferArray = v5->_bufferArray;
      v5->_bufferArray = v6;

      v5->_readStartIndex = 0;
    }

    self = v5;
    v8 = self;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)addObject:(id)a3
{
  bufferArray = self->_bufferArray;
  v7 = a3;
  v5 = [(NSMutableArray *)bufferArray count];
  v6 = self->_bufferArray;
  if (v5 >= self->_maxSize)
  {
    [(NSMutableArray *)v6 setObject:v7 atIndexedSubscript:self->_readStartIndex];

    self->_readStartIndex = (self->_readStartIndex + 1) % self->_maxSize;
  }

  else
  {
    [(NSMutableArray *)v6 addObject:v7];
  }
}

- (id)toArray
{
  readStartIndex = self->_readStartIndex;
  v4 = [(NSMutableArray *)self->_bufferArray count];
  v5 = self->_readStartIndex;
  v6 = [(NSMutableArray *)self->_bufferArray subarrayWithRange:readStartIndex, v4 - v5];
  v7 = [(NSMutableArray *)self->_bufferArray subarrayWithRange:0, v5];
  v8 = [v6 arrayByAddingObjectsFromArray:v7];

  return v8;
}

@end