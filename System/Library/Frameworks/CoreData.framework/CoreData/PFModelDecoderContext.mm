@interface PFModelDecoderContext
+ (id)retainedContext;
- (void)dealloc;
@end

@implementation PFModelDecoderContext

+ (id)retainedContext
{
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v3 = *(StatusReg + 688);
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v3 = objc_alloc_init(self);
    v7.version = *MEMORY[0x1E695E9F8];
    *&v7.retain = *(MEMORY[0x1E695E9F8] + 8);
    v5 = *(MEMORY[0x1E695E9F8] + 24);
    v7.equal = 0;
    v7.hash = 0;
    v7.copyDescription = v5;
    v3[3] = CFSetCreateMutable(*MEMORY[0x1E695E480], 0, &v7);
    *(StatusReg + 688) = v3;
  }

  return v3;
}

- (void)dealloc
{
  self->model = 0;

  self->entity = 0;
  v3.receiver = self;
  v3.super_class = PFModelDecoderContext;
  [(PFModelDecoderContext *)&v3 dealloc];
  *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 688) = 0;
}

@end