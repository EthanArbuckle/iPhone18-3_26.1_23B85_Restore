@interface _MTL4ComputeCommandEncoder
- (_MTL4ComputeCommandEncoder)initWithCommandAllocator:(id)allocator;
@end

@implementation _MTL4ComputeCommandEncoder

- (_MTL4ComputeCommandEncoder)initWithCommandAllocator:(id)allocator
{
  v4.receiver = self;
  v4.super_class = _MTL4ComputeCommandEncoder;
  return [(_MTL4CommandEncoder *)&v4 initWithCommandAllocator:allocator];
}

@end