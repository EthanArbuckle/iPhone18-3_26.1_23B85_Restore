@interface _MTLAllocation
- (_MTLAllocation)initWithAllocationType:(unint64_t)a3;
@end

@implementation _MTLAllocation

- (_MTLAllocation)initWithAllocationType:(unint64_t)a3
{
  v5.receiver = self;
  v5.super_class = _MTLAllocation;
  result = [(_MTLObjectWithLabel *)&v5 init];
  if (result)
  {
    result->_allocationType = a3;
  }

  return result;
}

@end