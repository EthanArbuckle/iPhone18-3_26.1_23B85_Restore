@interface _MTLAllocation
- (_MTLAllocation)initWithAllocationType:(unint64_t)type;
@end

@implementation _MTLAllocation

- (_MTLAllocation)initWithAllocationType:(unint64_t)type
{
  v5.receiver = self;
  v5.super_class = _MTLAllocation;
  result = [(_MTLObjectWithLabel *)&v5 init];
  if (result)
  {
    result->_allocationType = type;
  }

  return result;
}

@end