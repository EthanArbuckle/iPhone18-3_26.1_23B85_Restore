@interface _MTL4ComputeCommandEncoder
- (_MTL4ComputeCommandEncoder)initWithCommandAllocator:(id)a3;
@end

@implementation _MTL4ComputeCommandEncoder

- (_MTL4ComputeCommandEncoder)initWithCommandAllocator:(id)a3
{
  v4.receiver = self;
  v4.super_class = _MTL4ComputeCommandEncoder;
  return [(_MTL4CommandEncoder *)&v4 initWithCommandAllocator:a3];
}

@end