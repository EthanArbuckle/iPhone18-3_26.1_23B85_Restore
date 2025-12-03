@interface MTLRasterizationRateSampleArrayInternal
- (MTLRasterizationRateSampleArrayInternal)initWithData:(float *)data numElements:(unint64_t)elements;
- (id)objectAtIndexedSubscript:(unint64_t)subscript;
- (void)setObject:(id)object atIndexedSubscript:(unint64_t)subscript;
@end

@implementation MTLRasterizationRateSampleArrayInternal

- (MTLRasterizationRateSampleArrayInternal)initWithData:(float *)data numElements:(unint64_t)elements
{
  v7.receiver = self;
  v7.super_class = MTLRasterizationRateSampleArrayInternal;
  result = [(MTLRasterizationRateSampleArrayInternal *)&v7 init];
  if (result)
  {
    result->_data = data;
    result->_count = elements;
  }

  return result;
}

- (id)objectAtIndexedSubscript:(unint64_t)subscript
{
  v3 = 0.0;
  if (self->_count > subscript)
  {
    *&v3 = self->_data[subscript];
  }

  return [MEMORY[0x1E696AD98] numberWithFloat:v3];
}

- (void)setObject:(id)object atIndexedSubscript:(unint64_t)subscript
{
  if (self->_count > subscript)
  {
    [object floatValue];
    self->_data[subscript] = v6;
  }
}

@end