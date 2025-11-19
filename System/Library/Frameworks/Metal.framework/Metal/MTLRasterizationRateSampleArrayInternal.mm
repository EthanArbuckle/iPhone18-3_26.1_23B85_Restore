@interface MTLRasterizationRateSampleArrayInternal
- (MTLRasterizationRateSampleArrayInternal)initWithData:(float *)a3 numElements:(unint64_t)a4;
- (id)objectAtIndexedSubscript:(unint64_t)a3;
- (void)setObject:(id)a3 atIndexedSubscript:(unint64_t)a4;
@end

@implementation MTLRasterizationRateSampleArrayInternal

- (MTLRasterizationRateSampleArrayInternal)initWithData:(float *)a3 numElements:(unint64_t)a4
{
  v7.receiver = self;
  v7.super_class = MTLRasterizationRateSampleArrayInternal;
  result = [(MTLRasterizationRateSampleArrayInternal *)&v7 init];
  if (result)
  {
    result->_data = a3;
    result->_count = a4;
  }

  return result;
}

- (id)objectAtIndexedSubscript:(unint64_t)a3
{
  v3 = 0.0;
  if (self->_count > a3)
  {
    *&v3 = self->_data[a3];
  }

  return [MEMORY[0x1E696AD98] numberWithFloat:v3];
}

- (void)setObject:(id)a3 atIndexedSubscript:(unint64_t)a4
{
  if (self->_count > a4)
  {
    [a3 floatValue];
    self->_data[a4] = v6;
  }
}

@end