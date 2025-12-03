@interface CASlotProxy
- (CASlotProxy)initWithName:(unsigned int)name;
- (Object)CA_copyRenderValue;
- (void)dealloc;
@end

@implementation CASlotProxy

- (Object)CA_copyRenderValue
{
  result = self->_proxy;
  if (result)
  {
    p_var1 = &result->var1;
    if (!atomic_fetch_add(&result->var1.var0.var0, 1u))
    {
      result = 0;
      atomic_fetch_add(&p_var1->var0.var0, 0xFFFFFFFF);
    }
  }

  return result;
}

- (void)dealloc
{
  v5 = *MEMORY[0x1E69E9840];
  proxy = self->_proxy;
  if (proxy && atomic_fetch_add(proxy + 2, 0xFFFFFFFF) == 1)
  {
    (*(*proxy + 16))(proxy, a2);
  }

  v4.receiver = self;
  v4.super_class = CASlotProxy;
  [(CASlotProxy *)&v4 dealloc];
}

- (CASlotProxy)initWithName:(unsigned int)name
{
  v8 = *MEMORY[0x1E69E9840];
  v7.receiver = self;
  v7.super_class = CASlotProxy;
  v4 = [(CASlotProxy *)&v7 init];
  if (v4)
  {
    if (x_malloc_get_zone::once != -1)
    {
      dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
    }

    v5 = malloc_type_zone_calloc(malloc_zone, 1uLL, 0x18uLL, 0xDEEC3011uLL);
    if (v5)
    {
      v5[2] = 1;
      v5[3] = 45;
      ++dword_1ED4EAAEC;
      *v5 = &unk_1EF204B60;
      *(v5 + 2) = name;
      v4->_proxy = v5;
    }

    else
    {
      v4->_proxy = 0;

      return 0;
    }
  }

  return v4;
}

@end