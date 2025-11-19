@interface _MTL4CounterHeap
- (_MTL4CounterHeap)init;
@end

@implementation _MTL4CounterHeap

- (_MTL4CounterHeap)init
{
  v3.receiver = self;
  v3.super_class = _MTL4CounterHeap;
  result = [(_MTL4CounterHeap *)&v3 init];
  result->_label = 0;
  result->_type = 0;
  result->_count = 0;
  return result;
}

@end