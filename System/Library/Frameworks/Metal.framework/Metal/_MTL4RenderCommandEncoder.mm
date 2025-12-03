@interface _MTL4RenderCommandEncoder
- (_MTL4RenderCommandEncoder)initWithCommandAllocator:(id)allocator;
@end

@implementation _MTL4RenderCommandEncoder

- (_MTL4RenderCommandEncoder)initWithCommandAllocator:(id)allocator
{
  v4.receiver = self;
  v4.super_class = _MTL4RenderCommandEncoder;
  return [(_MTL4CommandEncoder *)&v4 initWithCommandAllocator:allocator];
}

@end