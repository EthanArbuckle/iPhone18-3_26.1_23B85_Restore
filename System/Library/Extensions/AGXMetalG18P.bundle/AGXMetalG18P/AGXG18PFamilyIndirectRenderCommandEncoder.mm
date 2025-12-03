@interface AGXG18PFamilyIndirectRenderCommandEncoder
- (AGXG18PFamilyIndirectRenderCommandEncoder)initWithBuffer:(id)buffer;
- (id)objectAtIndexedSubscript:(unint64_t)subscript;
- (void)dealloc;
@end

@implementation AGXG18PFamilyIndirectRenderCommandEncoder

- (id)objectAtIndexedSubscript:(unint64_t)subscript
{
  v3 = [[AGXG18PFamilyIndirectRenderCommand alloc] initWithEncoder:self->_impl withIndex:subscript];

  return v3;
}

- (void)dealloc
{
  impl = self->_impl;
  if (impl)
  {
    MEMORY[0x29ED520D0](impl, 0xA0C40E2D9BA3DLL);
  }

  v4.receiver = self;
  v4.super_class = AGXG18PFamilyIndirectRenderCommandEncoder;
  [(AGXG18PFamilyIndirectRenderCommandEncoder *)&v4 dealloc];
}

- (AGXG18PFamilyIndirectRenderCommandEncoder)initWithBuffer:(id)buffer
{
  v5.receiver = self;
  v5.super_class = AGXG18PFamilyIndirectRenderCommandEncoder;
  result = [(AGXG18PFamilyIndirectRenderCommandEncoder *)&v5 init];
  if (result)
  {
    v4 = result;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      operator new();
    }

    [(AGXG18PFamilyIndirectRenderCommandEncoder *)v4 dealloc];
    return 0;
  }

  return result;
}

@end